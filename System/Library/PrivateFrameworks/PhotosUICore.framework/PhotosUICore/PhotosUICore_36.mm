void sub_1A40B1A9C(uint64_t a1)
{
  if (!qword_1EB131520)
  {
    sub_1A3C52C70(255, &qword_1EB126610, 0x1E696AD98);
    sub_1A3D92850();
    v1 = sub_1A524E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131520);
    }
  }
}

uint64_t sub_1A40B1BC0(char a1, unsigned int a2)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a2;
  }

  if (a2 >= 2u)
  {
    return v3;
  }

  else
  {
    return a1 & 1;
  }
}

uint64_t sub_1A40B1C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5243F74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5241F84();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1A5241FC4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A3C39450(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v15 = sub_1A3C2F228(a1), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(a2 + 56);
    v19 = sub_1A5244084();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v14, v18 + *(v20 + 72) * v17, v19);
    (*(v20 + 56))(v14, 0, 1, v19);
    return (*(v20 + 32))(a3, v14, v19);
  }

  else
  {
    v22 = sub_1A5244084();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v14, 1, 1, v22);
    sub_1A5241F74();
    sub_1A5241FA4();
    sub_1A5247B94();
    sub_1A5241F54();
    (*(v7 + 104))(v9, *MEMORY[0x1E69C2930], v6);
    sub_1A5244034();
    result = (*(v23 + 48))(v14, 1, v22);
    if (result != 1)
    {
      return sub_1A40B2F68(v14);
    }
  }

  return result;
}

uint64_t sub_1A40B1FC8(uint64_t a1, uint64_t a2)
{
  sub_1A3C39450(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5244084();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_1A40B20E0(v6, a2);
  return (*(v8 + 8))(a1, v7);
}

uint64_t sub_1A40B20E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A3C39450(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5244084();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1A40B2F68(a1);
    v14 = sub_1A3C2F228(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A40B2B58();
        v18 = v23;
      }

      v19.n128_f64[0] = (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1A40B2774(v16, v18, v19);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1A40B2F68(v8);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_1A40B2944(v13, a2, v20);
    *v3 = v23;
  }

  return result;
}

unint64_t sub_1A40B2308()
{
  result = sub_1A40B2DB4(MEMORY[0x1E69E7CC0]);
  qword_1EB189878 = result;
  return result;
}

void sub_1A40B2330(void *a1@<X8>)
{
  if (qword_1EB189870 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_1EB189878;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40B23A0()
{
  sub_1A40B2FC4();
  sub_1A5249244();
  return v1;
}

void sub_1A40B2418(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = sub_1A5244084();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A40B30A0(0);
  v37 = v4;
  v8 = sub_1A524E774();
  v9 = v8;
  if (*(v7 + 16))
  {
    v34 = v2;
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
    v35 = (v5 + 16);
    v36 = v5;
    v38 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v5 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        (*v38)(v39, v24, v40);
      }

      else
      {
        (*v35)(v39, v24, v40);
      }

      sub_1A524EC94();
      MEMORY[0x1A590A010](v22);
      v25 = sub_1A524ECE4();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      (*v38)((*(v9 + 56) + v23 * v17), v39, v40);
      ++*(v9 + 16);
      v5 = v36;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

unint64_t sub_1A40B2774(unint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1A524E244() + 1) & ~v6;
    while (1)
    {
      v10 = *(*(a2 + 48) + v7);
      sub_1A524EC94();
      MEMORY[0x1A590A010](v10);
      result = sub_1A524ECE4();
      v11 = result & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v11 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v4);
      v14 = (v12 + v7);
      if (v4 != v7 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1A5244084() - 8) + 72);
      v17 = v16 * v4;
      result = v15 + v16 * v4;
      v18 = v16 * v7;
      v19 = v15 + v16 * v7 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A40B2944(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A3C2F228(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1A40B2B58();
      goto LABEL_7;
    }

    sub_1A40B2418(v13, a3 & 1);
    v24 = sub_1A3C2F228(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1A5244084();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1A40B2AAC(v10, a2, a1, v16);
}

uint64_t sub_1A40B2AAC(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_1A5244084();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
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

void sub_1A40B2B58()
{
  v1 = v0;
  v27 = sub_1A5244084();
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40B30A0(0);
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25[0] = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v28 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v30 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + v18);
        v20 = v29;
        v21 = *(v29 + 72) * v18;
        v23 = v26;
        v22 = v27;
        (*(v29 + 16))(v26, *(v3 + 56) + v21, v27);
        v24 = v28;
        *(*(v28 + 48) + v18) = v19;
        (*(v20 + 32))(*(v24 + 56) + v21, v23, v22);
        v13 = v30;
      }

      while (v30);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25[0];
        v5 = v28;
        goto LABEL_21;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v30 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }
}

unint64_t sub_1A40B2DB4(uint64_t a1)
{
  sub_1A40B3160(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A40B30A0(0);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    while (1)
    {
      sub_1A40B31C8(v10, v6);
      v12 = *v6;
      result = sub_1A3C2F228(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1A5244084();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

uint64_t sub_1A40B2F68(uint64_t a1)
{
  sub_1A3C39450(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A40B2FC4()
{
  result = qword_1EB1897E0[0];
  if (!qword_1EB1897E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1897E0);
  }

  return result;
}

unint64_t sub_1A40B301C()
{
  result = qword_1EB12A520;
  if (!qword_1EB12A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A520);
  }

  return result;
}

void sub_1A40B30A0(uint64_t a1)
{
  if (!qword_1EB126478)
  {
    sub_1A5244084();
    sub_1A40B310C();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126478);
    }
  }
}

unint64_t sub_1A40B310C()
{
  result = qword_1EB12A528;
  if (!qword_1EB12A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A528);
  }

  return result;
}

void sub_1A40B3160(uint64_t a1)
{
  if (!qword_1EB12A518)
  {
    sub_1A5244084();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12A518);
    }
  }
}

uint64_t sub_1A40B31C8(uint64_t a1, uint64_t a2)
{
  sub_1A40B3160(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A40B322C()
{
  sub_1A40B4DD8(0, &unk_1ED741F20, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1A5246D14();
  __swift_allocate_value_buffer(v3, qword_1EB1EBB20);
  __swift_project_value_buffer(v3, qword_1EB1EBB20);
  sub_1A3C52C70(0, &unk_1EB131528, 0x1E69786C8);
  v4 = [swift_getObjCClassFromMetadata() representedType];
  sub_1A524C674();

  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_1A5246BE4();
}

void sub_1A40B3388(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v32 = a2;
  v39 = a1;
  v4 = sub_1A524BEE4();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1A5246F24();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524D464();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v11);
  v31 = sub_1A524BF64();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  v45 = v14;
  *(v14 + 16) = MEMORY[0x1E69E7CC0];
  v43 = dispatch_group_create();
  v44 = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v38 = "leDisplayAssetViewModel>8";
  sub_1A524BF14();
  aBlock = v15;
  sub_1A3D75A78(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v16 = MEMORY[0x1E69E8030];
  sub_1A40B4DD8(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C2A8A4(&qword_1EB126E30, &qword_1EB126E40, v16);
  sub_1A524E224();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8090], v7);
  v38 = v13;
  v44 = sub_1A524D4B4();
  sub_1A40B4DD8(0, &qword_1EB1202D0, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  v17 = sub_1A5246D14();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1A52F8E10;
  if (qword_1EB1A5090 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v17, qword_1EB1EBB20);
  (*(v18 + 16))(v20 + v19, v21, v17);
  v22 = sub_1A524BAF4();

  v23 = [objc_opt_self() supportedTypes];
  sub_1A524CA34();

  v24 = sub_1A524BAF4();

  if (v22 >> 62)
  {
    v25 = sub_1A524E2B4();
  }

  else
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v41;
  v26 = v42;
  v28 = v40;
  if (v25 >= 1)
  {
    v29 = sub_1A3C38A40();
    (*(v26 + 16))(v27, v29, v28);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v24 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
LABEL_9:
      sub_1A40B4E3C(v24, v36, v37);
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_9;
  }
}

double sub_1A40B3E1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = a3;
  v9 = sub_1A524BEE4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A524BF64();
  v13 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a4;
  v16[4] = a2;
  v16[5] = a5;
  aBlock[4] = sub_1A40B5140;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_21_1;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v18 = a2;
  v19 = a5;
  sub_1A524BF14();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1A3D75A78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v20 = MEMORY[0x1E69E7F60];
  sub_1A40B4DD8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A8A4(&qword_1EB12B1B0, &qword_1EB12B1C0, v20);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v23);

  return result;
}

void sub_1A40B411C(uint64_t a1, uint64_t a2, void *a3, NSObject *a4)
{
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    swift_beginAccess();
    v12 = swift_unknownObjectRetain();
    MEMORY[0x1A5907D70](v12);
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    swift_endAccess();
  }

  else if (a3)
  {
    v13 = a3;
    v14 = sub_1A3C38A40();
    (*(v9 + 16))(v11, v14, v8);
    v15 = a3;
    v16 = sub_1A5246F04();
    v17 = sub_1A524D244();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = a3;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1A3C1C000, v16, v17, "[LemonadeImportManager] failed to load object: %@", v18, 0xCu);
      sub_1A3CB65E4(v19);
      MEMORY[0x1A590EEC0](v19, -1, -1);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v11, v8);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1A40B43B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v10);
  swift_beginAccess();
  v11 = *(a1 + 16);
  if (v11 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
LABEL_3:
      objc_opt_self();
      swift_beginAccess();
      sub_1A3C52C70(0, &unk_1EB131528, 0x1E69786C8);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_3;
  }

  if (a5 >> 62)
  {
    result = sub_1A524E2B4();
    if (result >= 1)
    {
LABEL_7:
      sub_1A40B4E3C(a5, a3, a4);
    }
  }

  else
  {
    result = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 1)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void sub_1A40B47F0(char a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524BEE4();
  v46 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && a3)
  {
    v41 = v19;
    v42 = v18;

    v43 = a4;
    v23 = a3(v22);
    if (v23)
    {
      v24 = v23;
      sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
      v40 = sub_1A524D474();
      v25 = swift_allocObject();
      v26 = v45;
      v25[2] = v44;
      v25[3] = v26;
      v25[4] = v24;
      aBlock[4] = sub_1A40B5154;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_36;
      v27 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A3D75A78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v28 = MEMORY[0x1E69E7F60];
      sub_1A40B4DD8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C2A8A4(&qword_1EB12B1B0, &qword_1EB12B1C0, v28);
      sub_1A524E224();
      v29 = v40;
      MEMORY[0x1A5908800](0, v21, v16, v27);
      sub_1A3C33378(a3, v43);
      _Block_release(v27);
      swift_unknownObjectRelease();

      (*(v46 + 8))(v16, v14);
      (*(v41 + 8))(v21, v42);
      return;
    }

    sub_1A3C33378(a3, v43);
  }

  if (a2)
  {
    v30 = a2;
    v31 = sub_1A3C38A40();
    (*(v11 + 16))(v13, v31, v10);
    v32 = a2;
    v33 = sub_1A5246F04();
    v34 = sub_1A524D244();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = a2;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&dword_1A3C1C000, v33, v34, "[LemonadeImportManager] failed to import assets: %@", v35, 0xCu);
      sub_1A3CB65E4(v36);
      MEMORY[0x1A590EEC0](v36, -1, -1);
      MEMORY[0x1A590EEC0](v35, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v13, v10);
  }
}

void sub_1A40B4D00(uint64_t a1, uint64_t a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1A3F6FD58;
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  v6(a2, a3, v7, v8);
  sub_1A3C33378(v7, v8);
}

void sub_1A40B4DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A40B4E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A3C38A40();
  (*(v4 + 16))(v6, v7, v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40B5154()
{
  v1 = *(v0 + 16);
  v2 = swift_dynamicCastObjCProtocolUnconditional();
  return v1(v2);
}

void sub_1A40B51E0(uint64_t a1@<X8>)
{
  v36[1] = *MEMORY[0x1E69E9840];
  sub_1A3C4BFD0(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 8) = 1;
  v8 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider(0);
  v9 = v8[6];
  v10 = *MEMORY[0x1E69C2418];
  v11 = sub_1A5243334();
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v34 = v8[7];
  v12 = sub_1A3C47918();
  v14 = v13;
  v15 = sub_1A3C47918();
  v17 = v16;
  v18 = sub_1A3C4ED50(v15);
  v35 = 1;
  *v7 = xmmword_1A5317AE0;
  v7[16] = 1;
  *(v7 + 3) = 2;
  v7[32] = 1;
  *(v7 + 5) = v12;
  *(v7 + 6) = v14;
  *(v7 + 7) = v15;
  *(v7 + 8) = v17;
  *(v7 + 72) = xmmword_1A5317AF0;
  v7[88] = 0;
  v7[89] = v18;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4ED54(v4);
  sub_1A3C52D78(v7, 0, v4, v34 + a1);
  *(a1 + v8[8]) = 1;
  v19 = objc_opt_self();
  v36[0] = 0;
  v20 = [v19 openPhotoLibraryWithWellKnownIdentifier:3 error:v36];
  v21 = v36[0];
  if (v20)
  {
    *a1 = v20;

    v22 = v21;
  }

  else
  {
    v34 = v36[0];
    v23 = v36[0];
    v24 = sub_1A5240B84();

    swift_willThrow();
    if (qword_1EB1A50A0 != -1)
    {
      swift_once();
    }

    v25 = sub_1A5246F24();
    __swift_project_value_buffer(v25, qword_1EB1A50A8);
    v26 = v24;
    v27 = sub_1A5246F04();
    v28 = sub_1A524D244();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_1A3C1C000, v27, v28, "Unable to open syndication library: %@", v29, 0xCu);
      sub_1A3CB65E4(v30);
      MEMORY[0x1A590EEC0](v30, -1, -1);
      MEMORY[0x1A590EEC0](v29, -1, -1);
    }

    else
    {
    }

    *a1 = 0;
  }
}

uint64_t sub_1A40B55D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeSharedWithYouGridCell(0);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v7 = (v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A40B6AD8(0, &qword_1EB131598, MEMORY[0x1E697F948], v5);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  if (shouldUseNewCollectionsLayout()())
  {
    v31 = a1;

    sub_1A5242744();
    v30[0] = *(v30[2] + 16);

    sub_1A40B64F0(0);
    v12 = v11;
    v13 = sub_1A40B6B48(&qword_1EB1315A8, sub_1A40B64F0, MEMORY[0x1E69C1F88]);
    v30[1] = a2;
    v14 = v13;
    v15 = MEMORY[0x1E6981E70];
    v16 = MEMORY[0x1E6981E60];
    v17 = sub_1A41F7694();
    v18 = sub_1A43C9BB4();
    v20 = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = v20;
    v22 = sub_1A43C9BD0();
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v31, 0x6567617373656DLL, 0xE700000000000000, 0, 0, v30[0], 1, sub_1A3F8B548, v32, v17, v21, v22, v15, v12, v16, v14);
    v23 = v32[5];
    *(v10 + 4) = v32[4];
    *(v10 + 5) = v23;
    v10[96] = v33;
    v24 = v32[1];
    *v10 = v32[0];
    *(v10 + 1) = v24;
    v25 = v32[3];
    *(v10 + 2) = v32[2];
    *(v10 + 3) = v25;
    swift_storeEnumTagMultiPayload();
    sub_1A40B6440(0, v26);
    sub_1A40B6B48(&qword_1EB1315B0, sub_1A40B6440, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    sub_1A40B6B48(&qword_1EB1315B8, type metadata accessor for LemonadeSharedWithYouGridCell, &unk_1A530BF60);
    return sub_1A5249744();
  }

  else
  {
    sub_1A5242744();
    v28 = *(*&v32[0] + 16);

    sub_1A3F99110(v28, v7);
    sub_1A40B6620(v7, v10, type metadata accessor for LemonadeSharedWithYouGridCell);
    swift_storeEnumTagMultiPayload();
    sub_1A40B6440(0, v29);
    sub_1A40B6B48(&qword_1EB1315B0, sub_1A40B6440, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    sub_1A40B6B48(&qword_1EB1315B8, type metadata accessor for LemonadeSharedWithYouGridCell, &unk_1A530BF60);
    sub_1A5249744();
    return sub_1A40B6688(v7);
  }
}

uint64_t sub_1A40B59E8@<X0>(void *a1@<X8>)
{
  if (*v1)
  {
    v3 = *v1;
    v4 = PXContentSyndicationAssetsFetchResultForPhotoLibrary(v3, 0, 0);
    v5 = objc_opt_self();
    sub_1A3C38BD4(0xD000000000000028);
    v6 = sub_1A524C634();

    v7 = [v5 transientAssetCollectionWithAssetFetchResult:v4 title:v6];

    *(swift_allocObject() + 16) = v3;
    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(a1);
  }

  v8 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, 0, 1, v8);
}

uint64_t sub_1A40B5B64@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 px_isContentSyndicationVirtualCollection])
  {
    if (*v2)
    {
      v4 = *v2;
      v5 = PXContentSyndicationAssetsFetchResultForPhotoLibrary(v4, 0, 0);
      v6 = objc_opt_self();
      sub_1A3C38BD4(0xD000000000000028);
      v7 = sub_1A524C634();

      v8 = [v6 transientAssetCollectionWithAssetFetchResult:v5 title:v7];

      *(swift_allocObject() + 16) = v4;
      LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(a2);
    }

    v14 = type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    v10 = *(*(v14 - 8) + 56);
    v12 = a2;
    v13 = 0;
    v11 = v14;
  }

  else
  {
    v9 = type metadata accessor for LemonadeNavigationDestination(0);
    v10 = *(*(v9 - 8) + 56);
    v11 = v9;
    v12 = a2;
    v13 = 1;
  }

  return v10(v12, v13, 1, v11);
}

uint64_t sub_1A40B5D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    v4 = *(a1 + 16);
    v5 = *v2;
    v11 = PXContentSyndicationAssetsFetchResultForPhotoLibrary(v5, 0, 6);
    v12 = 1;
    v6 = v4;
    v7 = v11;
    v8 = sub_1A3C5A374();
    sub_1A41DF298(v6, &v11, 1, 1, v8 & 1, 0, 0, v13);

    v9 = v13[1];
    *a2 = v13[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v14;
    type metadata accessor for LemonadeNavigationDestination(0);
  }

  else
  {
    type metadata accessor for LemonadeNavigationDestination(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A40B5E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1A5243334();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_1A40B5F2C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*v1)
  {
    v6 = *v1;
    sub_1A3CB8F68();
    v4 = swift_allocObject();
    v3 = v6;
    *(v4 + 16) = xmmword_1A52F9790;
    *(v4 + 32) = v6;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v4;

  return v3;
}

uint64_t sub_1A40B5FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A40B6B90(&unk_1EB1315D0, &qword_1EB12A7E0, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);

  return sub_1A4201830(a1, a2, a3, v6);
}

uint64_t sub_1A40B6064(uint64_t *a1)
{
  v2 = type metadata accessor for LemonadeNavigationDestination(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40B5D28(*a1, v5);
  sub_1A3C4BFD0(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52F8E10;
  sub_1A40B671C(v5, v7 + v6);
  return v7;
}

unint64_t sub_1A40B619C(uint64_t a1)
{
  v2 = sub_1A40B6B48(&qword_1EB1294E0, type metadata accessor for LemonadeSharedWithYouGridShelfProvider, &unk_1A5317B18);

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A40B6214()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1A50A8);
  v1 = __swift_project_value_buffer(v0, qword_1EB1A50A8);
  v2 = sub_1A45319B8();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1A40B62AC(unint64_t result, uint64_t a2, __n128 a3)
{
  if (result >> 62)
  {
    v6 = result;
    v7 = sub_1A524E2B4();
    result = v6;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1A3C4B8A8(0, &qword_1EB129F98, &qword_1EB126660, 0x1E6978630, type metadata accessor for PhotoKitItemListManager);
    v8 = *(a2 + 16);
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    v9 = v8;
    sub_1A43FD8EC();
    return PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v9, 0, v10);
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, result, a3);
LABEL_6:
    v5 = v4;
    type metadata accessor for SharedWithYouAssetsItemListManager(0);
    sub_1A3D723B8(v5, *(a2 + 16), *(a2 + 24), 6, 0);
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(result + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1A40B6440(uint64_t a1, __n128 a2)
{
  if (!qword_1EB1315A0)
  {
    sub_1A40B64F0(255);
    v4 = v3;
    v5 = sub_1A40B6B48(&qword_1EB1315A8, sub_1A40B64F0, MEMORY[0x1E69C1F88]);
    v8[0] = MEMORY[0x1E6981E70];
    v8[1] = v4;
    v8[2] = MEMORY[0x1E6981E60];
    v8[3] = v5;
    v6 = type metadata accessor for LemonadeMaterialTitleCell(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB1315A0);
    }
  }
}

void sub_1A40B64F0(uint64_t a1)
{
  if (!qword_1EB1291E8)
  {
    sub_1A3C4B8A8(255, &qword_1EB12A7E0, &qword_1EB126660, 0x1E6978630, type metadata accessor for PhotoKitItem);
    sub_1A40B6B90(&qword_1EB12A7E8, &qword_1EB12A7E0, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for <> PhotoKitItem<A>);
    sub_1A40B6B90(&qword_1EB125C58, &qword_1EB12A7E0, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);
    sub_1A40B6B90(&unk_1EB12A7F0, &qword_1EB12A7E0, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);
    v1 = sub_1A5242754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1291E8);
    }
  }
}

uint64_t sub_1A40B6620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40B6688(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeSharedWithYouGridCell(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A40B66E4()
{
  ResultForPhotoLibrary = PXContentSyndicationAssetsFetchResultForPhotoLibrary(*(v0 + 16), 0, 0);

  return ResultForPhotoLibrary;
}

uint64_t sub_1A40B671C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A40B6780(uint64_t a1)
{
  result = sub_1A40B6B48(&qword_1EB1294E8, type metadata accessor for LemonadeSharedWithYouGridShelfProvider, &unk_1A5317B34);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A40B6848()
{
  result = qword_1EB126E58;
  if (!qword_1EB126E58)
  {
    sub_1A3C4B8A8(255, &qword_1EB126E60, &qword_1EB126BF0, 0x1E69789A8, MEMORY[0x1E69E62F8]);
    sub_1A3C5B630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126E58);
  }

  return result;
}

unint64_t sub_1A40B69DC(__n128 a1)
{
  result = qword_1EB1315C0;
  if (!qword_1EB1315C0)
  {
    sub_1A40B6AD8(255, &qword_1EB1315C8, MEMORY[0x1E697F960], a1);
    sub_1A40B6B48(&qword_1EB1315B0, sub_1A40B6440, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    sub_1A40B6B48(&qword_1EB1315B8, type metadata accessor for LemonadeSharedWithYouGridCell, &unk_1A530BF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1315C0);
  }

  return result;
}

void sub_1A40B6AD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), __n128 a4)
{
  if (!*a2)
  {
    sub_1A40B6440(255, a4);
    v8 = v7;
    v9 = type metadata accessor for LemonadeSharedWithYouGridCell(255);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A40B6B48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A40B6B90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C4B8A8(255, a2, &qword_1EB126660, 0x1E6978630, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1A40B6BEC()
{
  v0 = sub_1A40C3B40(&unk_1A5317BC8, &qword_1EB1315E8);
  v1 = v0;
  return v0;
}

void sub_1A40B6C28(void *a1)
{
  if (a1)
  {
    v1 = [a1 customTitle];
    if (v1)
    {
      v2 = v1;
      sub_1A524C674();
    }
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40B6DA8(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5._object = 0x80000001A53C6D80;
  v5._countAndFlagsBits = 0xD00000000000002DLL;
  v6 = LemonadeLocalizedPeopleAndPetsTitle(for:key:)(*(v1 + qword_1EB131728), v5);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = *((v4 & v3) + 0x50);
  v8[3] = v7;
  v8[4] = a1;
  v9 = a1;

  v10 = sub_1A3C47918();
  v12 = v11;
  v13 = sub_1A3C47918();
  sub_1A479BE9C(v10, v12, v13, v14, sub_1A40C7374, v8, v6._countAndFlagsBits, v6._object, v23, 0xD00000000000002ELL, 0x80000001A53C6DB0);

  sub_1A3C39848(0, &qword_1EB130C28, &type metadata for LemonadeCollectionCustomizationActionItem, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  v16 = v23[2];
  v17 = v23[4];
  v18 = v23[5];
  v15[5] = v23[3];
  v15[6] = v17;
  v15[7] = v18;
  v19 = v23[0];
  v20 = v23[1];
  v15[1] = xmmword_1A52F8E10;
  v15[2] = v19;
  v15[3] = v20;
  v15[4] = v16;
  sub_1A404A04C(v23, v22);
  sub_1A40BAAF8(v15);
  return sub_1A404A0A8(v23);
}

void sub_1A40B6F80()
{
  v0 = sub_1A40C3B40(&unk_1A5317BC8, &qword_1EB1315E8);
  if (v0)
  {
    v3 = v0;
    sub_1A40B8E58();
    if ((v1 & 1) == 0)
    {
      swift_getObjectType();
      sub_1A4943D64();
      v2 = v3;
      sub_1A40B82B0(&v4);
    }
  }
}

id sub_1A40B7264@<X0>(void *a1@<X8>)
{
  v2 = sub_1A40C3B40(&unk_1A5317BC8, &qword_1EB1315E8);
  *a1 = v2;

  return v2;
}

void sub_1A40B72B0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A40B72E0(v1);
}

void sub_1A40B72E0(void *a1)
{
  v3 = *(v1 + qword_1EB1315E8);
  v7[6] = a1;
  v7[7] = v3;
  sub_1A524DF24();
  v7[5] = swift_getWitnessTable();
  swift_getWitnessTable();
  v4 = sub_1A524C594();
  if (v4)
  {
    sub_1A40C3278(a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v7[2] = v1;
    v7[3] = a1;
    sub_1A40B74E0(v6, sub_1A40C34E4, v7, MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1A40B746C(uint64_t a1)
{
  swift_getObjectType();
  swift_getWitnessTable();
  return sub_1A52415D4();
}

uint64_t sub_1A40B74E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  swift_getWitnessTable();
  return sub_1A52415C4();
}

double (*sub_1A40B758C(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4 = *(v1 + qword_1EB1315E8);
  *a1 = v4;
  v5 = v4;
  return sub_1A40B76B8;
}

double sub_1A40B76B8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A40C3278(v2);

    v2 = v3;
  }

  else
  {
    sub_1A40C3278(*a1);
  }

  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();

  return result;
}

uint64_t sub_1A40B77A4()
{
  v0 = sub_1A40C3B40(&unk_1A5317BC8, &qword_1EB1315E8);
  if (!v0)
  {
    return 0;
  }

  v1 = [v0 localIdentifier];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A40B787C()
{
  v1 = qword_1EB1315F8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A40B78C0(char a1)
{
  v3 = qword_1EB1315F8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1A40B79D0(_BYTE *a1@<X8>)
{
  v3 = qword_1EB131608;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A40B7A24(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB131608;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_1A40B7AD4()
{
  v1 = qword_1EB131610;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A40B7B18(char a1)
{
  v3 = qword_1EB131610;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1A40B7C88(uint64_t a1)
{
  v3 = qword_1EB131628;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_1A40B7DB4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB131630);
  swift_beginAccess();
  v6 = v5[1];
  v11[9] = *v5;
  v11[10] = v6;
  v11[7] = a1;
  v11[8] = a2;
  v7 = sub_1A524C594();
  if (v7)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[2] = v2;
    v11[3] = a1;
    v11[4] = a2;
    sub_1A40B74E0(v10, sub_1A40C35B4, v11, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

void sub_1A40B7F20()
{
  v0 = sub_1A40C39F8(&unk_1A5317C70, &qword_1EB131648);
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v3 = sub_1A40C3B40(&unk_1A5317BC8, &qword_1EB1315E8);
    if (v3)
    {
      v4 = [v3 customTitle];
      if (v4)
      {
        v5 = v4;
        sub_1A524C674();
      }
    }
  }

  sub_1A40B82B0(&v6);
}

void sub_1A40B82B0(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  v4 = (v1 + qword_1EB131638);
  v5 = *(v1 + qword_1EB131638 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 4);
  v8 = *(v4 + 5);
  v9 = *v4;
  *a1 = *v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v10 = v9;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A40B8374(uint64_t *a1)
{
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  sub_1A40B74E0(KeyPath, sub_1A40C3628, &v6, MEMORY[0x1E69E7CA8] + 8);
  v13 = *a1;
  sub_1A40C7260(&v13, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E6720]);
  v12 = *(a1 + 1);
  sub_1A40C71A8(&v12, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1A3C39848);
  v11 = a1[4];
  v4 = MEMORY[0x1E69E62F8];
  sub_1A40C7260(&v11, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);
  v10 = a1[5];
  sub_1A40C7260(&v10, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, v4);

  return result;
}

void sub_1A40B8510(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB131648);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_1A40B7F20();
}

uint64_t (*sub_1A40B8574(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A40B85D8;
}

void sub_1A40B8604(uint64_t a1@<X3>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  *a3 = sub_1A40C39F8(a1, a2);
  a3[1] = v4;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A40B86AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v2 + qword_1EB131648);
  swift_beginAccess();
  v7 = v6[1];
  v12[9] = *v6;
  v12[10] = v7;
  v12[7] = a1;
  v12[8] = a2;
  v8 = sub_1A524C594();
  if (v8)
  {
    sub_1A40B8510(a1, a2);
  }

  MEMORY[0x1EEE9AC00](v8);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v12[2] = v3;
  v12[3] = a1;
  v12[4] = a2;
  sub_1A40B74E0(v10, sub_1A40C3864, v12, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t (*sub_1A40B881C(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A40B8574(v4);
  return sub_1A40B899C;
}

uint64_t sub_1A40B89A8()
{
  v1 = qword_1EB131650;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1A40B8A1C()
{
  v0 = sub_1A40C3C10(&unk_1A5317CA8, &qword_1EB131658);
  v1 = v0;
  return v0;
}

id sub_1A40B8A58@<X0>(void *a1@<X8>)
{
  v2 = sub_1A40C3C10(&unk_1A5317CA8, &qword_1EB131658);
  *a1 = v2;

  return v2;
}

void sub_1A40B8AA4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A40B8AD4(v1);
}

void sub_1A40B8AD4(void *a1)
{
  v3 = qword_1EB131658;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v9[5] = a1;
  v9[6] = v4;
  sub_1A40C37FC(0, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E69E6720]);
  sub_1A3EBA4B8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    sub_1A40B74E0(v8, sub_1A40C38B0, v9, MEMORY[0x1E69E7CA8] + 8);
  }
}

double (*sub_1A40B8C5C(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[3] = v1;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40B8D8C;
}

uint64_t (*sub_1A40B8D98(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A40B8DFC;
}

uint64_t sub_1A40B8E14(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1A40B8E58()
{
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  v2 = v0 + qword_1EB131670;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1A40B8EEC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A40B8E58();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

double sub_1A40B8F54(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = (v4 + qword_1EB131670);
  swift_beginAccess();
  v9 = *(v8 + 16);
  v21 = *v8;
  v22 = v9;
  v18 = a1;
  v19 = a2;
  v10 = a3 & 1;
  v20 = a3 & 1;
  sub_1A3C68B88(0, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
  sub_1A3EBA740();
  v11 = sub_1A524C594();
  if (v11)
  {
    v12 = v4 + qword_1EB131670;
    swift_beginAccess();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = v10;
    sub_1A40B6F80();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v16[2] = v4;
    v16[3] = a1;
    v16[4] = a2;
    v17 = a3 & 1;
    sub_1A40B74E0(v15, sub_1A40C391C, v16, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t (*sub_1A40B9134(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A40B8D98(v4);
  return sub_1A40B92B4;
}

void sub_1A40B92C0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v3);
}

void sub_1A40B93A4(_BYTE *a1@<X8>)
{
  v3 = qword_1EB131680;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A40B93F8(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB131680;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_1A40B94A8()
{
  v1 = qword_1EB131690;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A40B94EC(char a1)
{
  v3 = qword_1EB131690;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A40B95B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A40B959C();
  *a1 = result & 1;
  return result;
}

double (*sub_1A40B962C(void *a1))(uint64_t a1)
{
  a1[3] = v1;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40B975C;
}

double sub_1A40B975C(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_endAccess();
  return sub_1A40BC418(v1, &unk_1A5317D18);
}

uint64_t sub_1A40B9790()
{
  v1 = qword_1EB1316A0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A40B97D4(char a1)
{
  v3 = qword_1EB1316A0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A40B9884()
{
  v1 = qword_1EB1316A8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A40B98C8(uint64_t a1)
{
  v3 = qword_1EB1316A8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A40B9978()
{
  v0 = sub_1A40C39F8(&unk_1A5317D50, &qword_1EB1316B0);

  return v0;
}

double sub_1A40B99C0@<D0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_1A40C39F8(&unk_1A5317D50, &qword_1EB1316B0);
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  *a1 = sub_1A3C7146C;
  a1[1] = v5;

  return result;
}

double sub_1A40B9A48(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_1A40B9AB8(sub_1A3D6069C, v3);
}

double sub_1A40B9AB8(uint64_t a1, uint64_t a2)
{
  v11 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  sub_1A40B74E0(KeyPath, sub_1A40C3A88, &v7, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

double (*sub_1A40B9B6C(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[3] = v1;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40B9C9C;
}

void sub_1A40B9D08(uint64_t a1)
{
  v2 = sub_1A523FBB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v7;
  if (*(a1 + 16))
  {
    v10 = *(v3 + 16);
    v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v10(&v21 - v7, a1 + v11, v2, v8);
    v12 = sub_1A40C3B40(&unk_1A5317D88, &qword_1EB1316C0);
    if (*(v12 + 16))
    {
      (v10)(v5, v12 + v11, v2);
      v13 = sub_1A523FB64();
      v15 = v14;
      v16 = *(v3 + 8);
      v16(v5, v2);
      v17 = sub_1A523FB64();
      if (v15)
      {
        if (v18)
        {
          if (v13 == v17 && v15 == v18)
          {

LABEL_17:

            v16(v9, v2);
            return;
          }

          v20 = sub_1A524EAB4();

          if (v20)
          {
            goto LABEL_17;
          }
        }

LABEL_14:
        sub_1A40B9F88(v13, v15);

        (*(v3 + 8))(v9, v2);
        return;
      }
    }

    else
    {
      sub_1A523FB64();
      v13 = 0;
    }

    if (!v18)
    {
      (*(v3 + 8))(v9, v2);
      return;
    }

    v15 = 0;
    goto LABEL_14;
  }
}

void sub_1A40B9F50()
{
  sub_1A40C3B40(&unk_1A5317D88, &qword_1EB1316C0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40B9F88(uint64_t a1, uint64_t a2)
{
  v12[3] = a1;
  v12[2] = *MEMORY[0x1E69E7D40] & *v2;
  v4 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A524BF64();
  v13 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A524BEF4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v12[1] = v5;
    (*(v7 + 104))(v9, *MEMORY[0x1E69E7F88], v6);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v10 = sub_1A524D244();
  v13 = *sub_1A3CAA3FC();
  sub_1A5246DF4(v10, &dword_1A3C1C000, v13, "Not changing social group key asset because localIdentifier is nil", 66, 2, MEMORY[0x1E69E7CC0]);
  v11 = v13;
}

void sub_1A40BA464(uint64_t *a1@<X8>)
{
  *a1 = sub_1A40C3B40(&unk_1A5317D88, &qword_1EB1316C0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A40BA4DC(uint64_t a1)
{
  v3 = *(v1 + qword_1EB1316C0);
  v9[6] = a1;
  v9[7] = v3;
  sub_1A3C68B88(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v4 = sub_1A524C594();
  if (v4)
  {
    v5 = *(v1 + qword_1EB1316C0);
    *(v1 + qword_1EB1316C0) = a1;
    sub_1A40B9D08(v5);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    sub_1A40B74E0(v8, sub_1A40C3BB8, v9, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

void sub_1A40BA66C(void *a1)
{
  a1[1] = v1;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  *a1 = *(v1 + qword_1EB1316C0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A40BA798(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + qword_1EB1316C0);
  *(v2 + qword_1EB1316C0) = *a1;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A40B9D08(v3);

  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();

  return result;
}

uint64_t sub_1A40BA894()
{
  v1 = qword_1EB1316D0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A40BA8D8(char a1)
{
  v3 = qword_1EB1316D0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1A40BAA48()
{
  sub_1A40C3C10(&unk_1A5317DC0, &qword_1EB1316E8);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40BAA80(uint64_t *a1@<X8>)
{
  *a1 = sub_1A40C3C10(&unk_1A5317DC0, &qword_1EB1316E8);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A40BAAF8(uint64_t a1)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_1A40B74E0(KeyPath, sub_1A40C3C9C, &v5, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

double (*sub_1A40BABA4(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[3] = v1;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40BACD4;
}

uint64_t sub_1A40BACF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A40BACE0();
  *a1 = result;
  return result;
}

double sub_1A40BAD48(uint64_t a1)
{
  v3 = qword_1EB1316F0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v9[5] = a1;
  v9[6] = v4;
  v5 = sub_1A524C594();
  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    sub_1A40B74E0(v8, sub_1A40C3D08, v9, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

double (*sub_1A40BAE94(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[3] = v1;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40BAFC4;
}

uint64_t sub_1A40BAFE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A40BAFD0();
  *a1 = result & 1;
  return result;
}

double sub_1A40BB060(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v8 = *a2;
  swift_beginAccess();
  v16 = *(v6 + v8);
  v15 = a1;
  v9 = sub_1A524C594();
  if (v9)
  {
    *(v6 + v8) = a1 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[2] = v6;
    v14 = a1 & 1;
    sub_1A40B74E0(v12, a4, v13, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

double (*sub_1A40BB1B0(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[3] = v1;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40BB2E0;
}

uint64_t sub_1A40BB2EC()
{
  v1 = qword_1EB131700;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A40BB330(char a1)
{
  v3 = qword_1EB131700;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A40BB3E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_1A3C784D4(v7, v8);
}

uint64_t sub_1A40BB4B0(uint64_t a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  v5 = *a2;
  swift_beginAccess();
  return *(v2 + v5);
}

uint64_t sub_1A40BB53C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A40BB49C();
  *a1 = result & 1;
  return result;
}

double (*sub_1A40BB5B8(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[3] = v1;
  swift_getObjectType();
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40BB6E8;
}

double sub_1A40BB6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_endAccess();
  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();

  return result;
}

uint64_t sub_1A40BB7B4(unint64_t a1, unint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1A59097F0](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x1A59097F0](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_1A524DBF4();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_1A524DBF4();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v6 = sub_1A524E2B4();
  }

  result = sub_1A524E2B4();
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

void sub_1A40BBC34()
{
  v1 = *(v0 + qword_1EB131748);
  if (v1)
  {
    v2 = [v1 fetchedObjects];
    if (v2)
    {
      v3 = v2;
      sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
      v4 = sub_1A524CA34();

      v7[6] = v4;
      MEMORY[0x1EEE9AC00](v5);
      v7[2] = v0;
      sub_1A40C37FC(0, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);
      Array.remove(where:)(sub_1A40C79E8, v7, v6);

      sub_1A40B82B0(&v8);
    }
  }

  sub_1A40B82B0(&v8);
}

void sub_1A40BBF88()
{
  v1 = *v0;
  v2 = v0[4];
  os_unfair_lock_lock((v2 + 24));
  [*(v2 + 16) cancel];
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  os_unfair_lock_unlock((v2 + 24));
  v4 = v0[5];
  os_unfair_lock_lock((v4 + 24));
  if (*(v4 + 16))
  {
    sub_1A524CD94();
  }

  *(v4 + 16) = 0;

  os_unfair_lock_unlock((v4 + 24));
  v5 = v0[2];
  MEMORY[0x1EEE9AC00](v6);
  type metadata accessor for LemonadeCollectionCustomizationSocialGroupModel.KeyAssetSelector.KeyAssetInfo(255, *(v1 + 80), v7, v8);
  sub_1A524DF24();
  v9 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v10));
  sub_1A40C7944((v5 + v9));
  os_unfair_lock_unlock((v5 + v10));
}

void sub_1A40BC0FC(uint64_t a1)
{
  sub_1A3C68B88(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = *(v1 + 32);
  os_unfair_lock_lock((v6 + 24));
  sub_1A40C7008((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));
  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A40BC2CC(_OWORD *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v6[0] = *a1;
  v6[1] = v1;
  v6[2] = v2;
  v7 = *&v6[0];
  v8 = *(a1 + 8);
  v9 = v2;
  sub_1A40C52E8(&v7, v5, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E6720]);
  sub_1A40C7134(&v8, v5, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1A3C39848);
  v3 = MEMORY[0x1E69E62F8];
  sub_1A40C52E8(&v9, v5, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);
  sub_1A40C52E8(&v9 + 8, v5, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, v3);
  return sub_1A40B8374(v6);
}

double sub_1A40BC418(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();

  return result;
}

uint64_t sub_1A40BC544(id a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_getObjectType();
  v12 = qword_1EB1315E8;
  *(v7 + qword_1EB1315E8) = 0;
  v13 = (v7 + qword_1EB1315F0);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(v7 + qword_1EB1315F8) = 1;
  v14 = (v7 + qword_1EB131600);
  *v14 = sub_1A3C38BD4(0xD000000000000042);
  v14[1] = v15;
  v16 = a4;
  *(v7 + qword_1EB131608) = 0;
  *(v7 + qword_1EB131610) = 1;
  v17 = MEMORY[0x1E69E7CC0];
  *(v7 + qword_1EB131618) = MEMORY[0x1E69E7CC0];
  v18 = (v7 + qword_1EB131620);
  *v18 = 0;
  v18[1] = 0;
  *(v7 + qword_1EB131628) = 0;
  v19 = (v7 + qword_1EB131630);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v7 + qword_1EB131648);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  *(v7 + qword_1EB131650) = 0;
  *(v7 + qword_1EB131658) = 0;
  v21 = v7 + qword_1EB131670;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  *(v7 + qword_1EB131680) = 0;
  *(v7 + qword_1EB131688) = 0;
  *(v7 + qword_1EB131690) = 0;
  *(v7 + qword_1EB131698) = 0;
  *(v7 + qword_1EB1316A0) = 1;
  *(v7 + qword_1EB1316A8) = 0;
  v22 = (v7 + qword_1EB1316B0);
  *v22 = PXDisplayCollectionDetailedCountsMake;
  v22[1] = 0;
  *(v7 + qword_1EB1316B8) = v17;
  *(v7 + qword_1EB1316C0) = v17;
  *(v7 + qword_1EB1316D0) = 1;
  v23 = (v7 + qword_1EB1316D8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v7 + qword_1EB1316E0);
  *v24 = sub_1A3C38BD4(0xD00000000000002DLL);
  v24[1] = v25;
  *(v7 + qword_1EB1316E8) = v17;
  v26 = qword_1EB1316F8;
  *(v7 + qword_1EB1316F8) = 0;
  *(v7 + qword_1EB131700) = 1;
  v27 = (v7 + qword_1EB131708);
  *v27 = 0;
  v27[1] = 0;
  *(v7 + qword_1EB1315E0) = 0;
  *(v7 + qword_1EB131710) = 0;
  *(v7 + qword_1EB131718) = 0;
  *(v7 + qword_1EB131720) = 0;
  sub_1A5241604();
  if (v16)
  {
    v28 = *(v7 + v12);
    swift_unknownObjectRetain();
    v29 = a1;

    *(v7 + v12) = a1;
    *(v7 + qword_1EB131728) = a3;
    *(v7 + qword_1EB131730) = v16;
    v30 = (v7 + qword_1EB131738);
    *v30 = a5;
    v30[1] = a6;
    swift_unknownObjectRetain();
    v49 = a3;
    sub_1A3C66EE8(a5, a6);
    v31 = a1;
    if (!a1)
    {
      v40 = 0;
      v35 = v29;
LABEL_6:
      *(v7 + qword_1EB1316F0) = a1;
      *(v7 + v26) = v40 != 0;
      v41 = v7 + qword_1EB131638;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      *v41 = 0;
      *(v41 + 24) = 0;
      *(v41 + 25) = *v50;
      *(v41 + 28) = *&v50[3];
      *(v41 + 32) = a2;
      *(v41 + 40) = MEMORY[0x1E69E7CC0];
      type metadata accessor for PhotoKitSocialGroupActionManager();
      if (v40)
      {
        sub_1A3C39848(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1A52F9790;
        *(v42 + 32) = v35;
        v43 = v35;
        v44 = v49;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v45 = v49;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v32 = v29;
    v33 = [v32 photoLibrary];
    if (v33)
    {
      v34 = v33;
      v35 = v29;
      v36 = [v33 librarySpecificFetchOptions];

      [v36 setFetchLimit_];
      [v36 setShouldPrefetchCount_];
      sub_1A5244714();
      v37 = v32;
      v38 = v36;
      v39 = sub_1A5244704();

      a1 = [v39 count];
      v40 = v31;
      goto LABEL_6;
    }

    __break(1u);
    __break(1u);
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t *sub_1A40BCDC4(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *v2;
  memset(v10, 0, sizeof(v10));
  type metadata accessor for LemonadeCollectionCustomizationSocialGroupModel.KeyAssetSelector.KeyAssetInfo(255, *(v3 + 80), v4, v5);
  v6 = sub_1A524DF24();
  v2[2] = sub_1A3C6D790(v10, v6);
  sub_1A40C7818(0);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  v2[4] = v7;
  sub_1A40C78AC(0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = 0;
  v2[5] = v8;
  v2[6] = 1;
  v2[3] = a1;
  return v2;
}

void sub_1A40BCE8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    KeyPath = swift_getKeyPath();
    sub_1A40B746C(KeyPath);

    MEMORY[0x1EEE9AC00](v6);
    swift_getKeyPath();
    type metadata accessor for LemonadeCollectionCustomizationSocialGroupModel(255, a2, v7, v8);
    swift_getWitnessTable();
    sub_1A52415F4();

    v9 = qword_1EB131698;
    swift_beginAccess();
    v4[v9] = (v4[v9] & 1) == 0;
    sub_1A40BC418(v4, &unk_1A5317D18);
  }
}

void sub_1A40BD000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v8);
  if ((*(a1 + 32) & 1) == 0)
  {
    v15 = *(a1 + 8);
    v16 = *(a1 + 16);
    v17 = *(a1 + 24);
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    sub_1A524D474();
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a2;
    *(v18 + 32) = v6;
    *(v18 + 40) = v15 & 1;
    *(v18 + 48) = v16;
    *(v18 + 56) = v17;
    aBlock[4] = sub_1A40C8314;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_178_0;
    _Block_copy(aBlock);

    v19 = v6;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = sub_1A524D244();
  v10 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v10, v9))
  {
    v20 = v10;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_1A3F2DBC0();
    swift_allocError();
    *v13 = v6;
    sub_1A3F2DC14(v6);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1A3C1C000, v20, v9, "Not able to load social group key asset with error: %@", v11, 0xCu);
    sub_1A40C7260(v12, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    MEMORY[0x1A590EEC0](v12, -1, -1);
    MEMORY[0x1A590EEC0](v11, -1, -1);
  }
}

void sub_1A40BD498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1A40C3B40(&unk_1A5317BC8, &qword_1EB1315E8);
    v11 = v10;

    if (v10)
    {
      v12 = [v11 photoLibrary];
      if (v12)
      {
        v13 = [v12 librarySpecificFetchOptions];
        objc_opt_self();
        sub_1A3C39848(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1A52F8E10;
        *(v14 + 32) = a2;
        *(v14 + 40) = a3;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }
  }

  v15 = sub_1A524D244();
  v16 = *sub_1A3CAA3FC();
  sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Not changing social group key asset because collection or photoLibrary is nil", 77, 2, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1A40BD9F0(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    return 0;
  }

  if (!a1)
  {
    return sub_1A3C38BD4(0xD00000000000002FLL);
  }

  v6 = objc_opt_self();
  v7 = a1;
  v8 = [v6 titleStringForPeople_];
  v9 = sub_1A524C674();

  return v9;
}

double sub_1A40BDAB8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A524C3E4();
  }

  v6 = a3;
  v7 = a1;
  sub_1A40C5A10();

  return result;
}

uint64_t sub_1A40BDB50(int a1, void *a2, void *a3)
{
  v22 = a1;
  v21 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = sub_1A524BEE4();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A524BF64();
  v10 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v13 = sub_1A524D474();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = *((v6 & v21) + 0x50);
  *(v15 + 24) = v14;
  *(v15 + 32) = v22;
  *(v15 + 40) = a2;
  *(v15 + 48) = a3;
  aBlock[4] = sub_1A40C5B08;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_96;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  v18 = a3;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A40C6CFC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v19 = MEMORY[0x1E69E7F60];
  sub_1A3C68B88(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AD14(&qword_1EB12B1B0, &qword_1EB12B1C0, v19, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v12, v9, v16);
  _Block_release(v16);

  (*(v24 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v23);
}

void sub_1A40BDED8(uint64_t a1, char a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1A40BE5C4(a2 & 1, a3);
    if (a4)
    {
      v9 = a4;
      v10 = [v9 fetchedObjects];
      if (v10)
      {
        v11 = v10;
        sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
        v12 = sub_1A524CA34();

        if (v12 >> 62)
        {
          v13 = sub_1A524E2B4();
          if (v13)
          {
LABEL_6:
            v18 = v9;
            v19 = v12;
            v14 = *&v8[qword_1EB131748];
            if (v14)
            {
              MEMORY[0x1EEE9AC00](v13);
              v17 = v14;
              sub_1A40C37FC(0, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);
              _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
            }

            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v13)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
      }
    }

    v15 = *&v8[qword_1EB131710];
    *&v8[qword_1EB131710] = 0;

    v16 = *&v8[qword_1EB131718];
    *&v8[qword_1EB131718] = 0;
  }
}

void sub_1A40BE5C4(char a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v6);
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      aBlock[0] = a2;
      v7 = a2;
      sub_1A3DBD9A0();
      sub_1A3C52C70(0, &qword_1EB12C740, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        v8 = v17[0];
        v9 = [v17[0] userInfo];
        v10 = sub_1A524C3E4();

        if (*(v10 + 16) && (v11 = sub_1A3C5DCA4(0xD000000000000012, 0x80000001A53C6CA0), (v12 & 1) != 0))
        {
          sub_1A3C2F0BC(*(v10 + 56) + 32 * v11, v17);

          sub_1A3C2F0BC(v17, aBlock);
          if (swift_dynamicCast())
          {
            aBlock[0] = v3;
            swift_getWitnessTable();
            sub_1A524EA44();
            sub_1A5246EF4();
          }

          v13 = *(v3 + qword_1EB131730);
          aBlock[4] = sub_1A40BEAFC;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1A3D35A90;
          aBlock[3] = &block_descriptor_113;
          v14 = _Block_copy(aBlock);

          v15 = [v13 presentAlertWithConfigurationHandler_];

          _Block_release(v14);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v17);
          if (swift_isEscapingClosureAtFileLocation())
          {
            __break(1u);
          }
        }

        else
        {
        }
      }
    }
  }
}

void sub_1A40BE9DC(void *a1)
{
  sub_1A3C38BD4(0xD000000000000036);
  v2 = sub_1A524C634();

  [a1 setTitle_];

  sub_1A3C38BD4(0xD000000000000038);
  v3 = sub_1A524C634();

  [a1 setMessage_];

  sub_1A3C38BD4(0xD000000000000033);
  v4 = sub_1A524C634();

  [a1 addActionWithTitle:v4 style:0 action:0];
}

uint64_t sub_1A40BEB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1A40C5B18(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40C5D48(0, &qword_1EB131838, sub_1A40C5B18, MEMORY[0x1E697E5C8]);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  *v8 = sub_1A5249584();
  *(v8 + 1) = 0x4018000000000000;
  v8[16] = 0;
  sub_1A40C65B0(0);
  sub_1A40BED7C(v3, *(a1 + 16), &v8[*(v19 + 44)]);
  if (*v3 >> 62)
  {
    v20 = sub_1A524E2B4();
  }

  else
  {
    v20 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  sub_1A3CDAA18(v8, v15);
  *&v15[*(v10 + 36)] = v21;
  sub_1A3CDAA7C(v15, v18);
  v22 = MEMORY[0x1E697E5C8];
  sub_1A40C6D44(v18, v12, &qword_1EB131838, sub_1A40C5B18, MEMORY[0x1E697E5C8], sub_1A40C5D48);
  *a2 = 0x4034000000000000;
  *(a2 + 8) = 0;
  sub_1A40C6648(0);
  sub_1A40C6D44(v12, a2 + *(v23 + 48), &qword_1EB131838, sub_1A40C5B18, v22, sub_1A40C5D48);
  sub_1A40C6E40(v18, &qword_1EB131838, sub_1A40C5B18, v22, sub_1A40C5D48);
  return sub_1A40C6E40(v12, &qword_1EB131838, sub_1A40C5B18, v22, sub_1A40C5D48);
}

uint64_t sub_1A40BED7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v90 = a2;
  v98 = a1;
  v96 = a3;
  v91 = sub_1A5249944();
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BB64();
  v83 = *(v4 - 8);
  v84 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v82 = (&v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = sub_1A40C5C90;
  v94 = sub_1A3E42C88;
  sub_1A40C6000(0, &qword_1EB131780, sub_1A40C5C90, sub_1A3E42C88);
  v92 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6 - 8);
  v93 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v99 = &v81 - v9;
  v112 = sub_1A3C38BD4(0xD00000000000002FLL);
  v113 = v10;
  sub_1A3D5F9DC();
  v11 = sub_1A524A464();
  v13 = v12;
  v15 = v14;
  sub_1A524A214();
  v16 = sub_1A524A3C4();
  v18 = v17;
  v20 = v19;

  sub_1A3E04DF4(v11, v13, v15 & 1);

  v21 = sub_1A524A3A4();
  v23 = v22;
  v25 = v24;
  sub_1A3E04DF4(v16, v18, v20 & 1);

  LODWORD(v112) = sub_1A5249A14();
  v85 = sub_1A524A374();
  v87 = v26;
  v88 = v27;
  LOBYTE(v16) = v28;
  sub_1A3E04DF4(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v86 = sub_1A524A054();
  sub_1A5247BC4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v100 = v16 & 1;
  LOBYTE(v112) = v16 & 1;
  LOBYTE(v107) = 0;
  sub_1A3C68B88(0, &qword_1EB131870, MEMORY[0x1E697D750], MEMORY[0x1E69E6F90]);
  sub_1A524BB74();
  *(swift_allocObject() + 16) = xmmword_1A52FF950;
  v97 = xmmword_1A5317B80;
  v37 = v82;
  v38 = v83;
  *v82 = xmmword_1A5317B80;
  v39 = *MEMORY[0x1E697D748];
  v40 = *(v38 + 104);
  v41 = v84;
  v40(v37, v39, v84);
  sub_1A524BB84();
  *v37 = v97;
  v40(v37, v39, v41);
  sub_1A524BB84();
  *v37 = v97;
  v40(v37, v39, v41);
  sub_1A524BB84();
  v102 = v90;
  v103 = v98;
  sub_1A5249574();
  LODWORD(v112) = 0;
  sub_1A40C6CFC(&qword_1EB122340, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1A524EE64();
  sub_1A40C5E10(0);
  sub_1A40C63C4();
  v42 = v99;
  sub_1A524BD94();
  LOBYTE(v21) = sub_1A524A064();
  sub_1A5247BC4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_1A40C5D48(0, &qword_1EB131790, sub_1A40C5DAC, MEMORY[0x1E697E5E0]);
  v52 = v42 + *(v51 + 36);
  *v52 = v21;
  *(v52 + 8) = v44;
  *(v52 + 16) = v46;
  *(v52 + 24) = v48;
  *(v52 + 32) = v50;
  *(v52 + 40) = 0;
  v53 = [objc_opt_self() systemBackgroundColor];
  v54 = sub_1A524B284();
  LOBYTE(v39) = sub_1A524A064();
  sub_1A40C5C90(0);
  v56 = v42 + *(v55 + 36);
  *v56 = v54;
  *(v56 + 8) = v39;
  v57 = (v42 + *(v92 + 44));
  v58 = *(sub_1A5248A14() + 20);
  v59 = *MEMORY[0x1E697F468];
  v60 = sub_1A52494A4();
  (*(*(v60 - 8) + 104))(&v57[v58], v59, v60);
  __asm { FMOV            V0.2D, #20.0 }

  *v57 = _Q0;
  sub_1A3E42C88(0);
  *&v57[*(v66 + 36)] = 256;
  v68 = v93;
  v67 = v94;
  v69 = v95;
  sub_1A40C6D44(v42, v93, &qword_1EB131780, v95, v94, sub_1A40C6000);
  v70 = v85;
  v72 = v87;
  v71 = v88;
  *&v107 = v85;
  *(&v107 + 1) = v87;
  LOBYTE(v108) = v100;
  *(&v108 + 1) = *v106;
  DWORD1(v108) = *&v106[3];
  *(&v108 + 1) = v88;
  *&v109 = KeyPath;
  BYTE8(v109) = 0;
  HIDWORD(v109) = *&v105[3];
  *(&v109 + 9) = *v105;
  LOBYTE(v41) = v86;
  LOBYTE(v110) = v86;
  DWORD1(v110) = *&v104[3];
  *(&v110 + 1) = *v104;
  *(&v110 + 1) = v30;
  *&v111[0] = v32;
  *(&v111[0] + 1) = v34;
  *&v111[1] = v36;
  BYTE8(v111[1]) = 0;
  v73 = v108;
  v74 = v96;
  *v96 = v107;
  v74[1] = v73;
  v75 = v109;
  v76 = v110;
  v77 = v111[0];
  *(v74 + 73) = *(v111 + 9);
  v74[3] = v76;
  v74[4] = v77;
  v74[2] = v75;
  v78 = v74;
  sub_1A40C5BCC(0);
  sub_1A40C6D44(v68, v78 + *(v79 + 48), &qword_1EB131780, v69, v67, sub_1A40C6000);
  sub_1A40C6DB8(&v107, &v112);
  sub_1A40C6E40(v99, &qword_1EB131780, v69, v67, sub_1A40C6000);
  sub_1A40C6E40(v68, &qword_1EB131780, v69, v67, sub_1A40C6000);
  v112 = v70;
  v113 = v72;
  v114 = v100;
  *v115 = *v106;
  *&v115[3] = *&v106[3];
  v116 = v71;
  v117 = KeyPath;
  v118 = 0;
  *v119 = *v105;
  *&v119[3] = *&v105[3];
  v120 = v41;
  *&v121[3] = *&v104[3];
  *v121 = *v104;
  v122 = v30;
  v123 = v32;
  v124 = v34;
  v125 = v36;
  v126 = 0;
  return sub_1A40C6EA0(&v112);
}

uint64_t sub_1A40BF5F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v37 = a1;
  v41 = a5;
  sub_1A3C68B88(0, &qword_1EB124D70, MEMORY[0x1E69C2540], MEMORY[0x1E69E6720]);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  sub_1A40C6074(0, v8);
  v40 = v11;
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40C37FC(0, &qword_1EB125C30, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItem);
  v52[0] = 2;
  v13 = a2;
  sub_1A3C6C180(&v50);
  v48 = v50;
  v49 = v51;
  v14 = sub_1A42011B0();
  sub_1A3C6C18C(&v46);
  v44 = v46;
  v45 = v47;
  v15 = sub_1A3C5A374();
  v16 = sub_1A3C30368();
  v17 = sub_1A3C5A374();
  v18 = sub_1A3C5A374();
  v19 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v48, 0, v14, 0, 1, &v44, v15 & 1, v52, &v42, v16, v17 & 1, v18 & 1, v19 & 1, 0);
  v20 = sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
  v22 = sub_1A3F6298C(v20, v21);
  PhotoKitItem.__allocating_init(value:options:metadata:)(v13, &v42, v22);
  v42 = v23;
  sub_1A40C61BC(0);
  swift_allocObject();
  sub_1A5242994();
  v24 = 0;
  v25 = 0;
  if (*(a3 + 8))
  {
    v50 = *a3;
    v25 = swift_allocObject();
    *(v25 + 16) = v36;
    v26 = *(a3 + 16);
    *(v25 + 24) = *a3;
    *(v25 + 40) = v26;
    *(v25 + 56) = *(a3 + 32);
    *(v25 + 64) = v13;
    v27 = v13;
    sub_1A40C52E8(&v50, &v42, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);

    v24 = sub_1A40C6F34;
  }

  v28 = *MEMORY[0x1E69C2538];
  v29 = sub_1A5243624();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v10, v28, v29);
  (*(v30 + 56))(v10, 0, 1, v29);
  swift_retain_n();
  sub_1A3C66EE8(v24, v25);
  sub_1A40C6344(0);
  sub_1A40C6CFC(&qword_1EB1317F0, sub_1A40C61BC, MEMORY[0x1E69C2010]);
  sub_1A40C6CFC(&qword_1EB1317F8, sub_1A40C61BC, MEMORY[0x1E69C2038]);
  sub_1A40C6CFC(&qword_1EB131800, sub_1A40C61BC, MEMORY[0x1E69C2018]);
  v31 = sub_1A3C36888();
  v42 = &type metadata for LemonadePeopleShelfProvider;
  v43 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v38;
  sub_1A5242504();
  v42 = 0x5F6E6F73726550;
  v43 = 0xE700000000000000;
  v48 = v37;
  v33 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v33);

  sub_1A40C6CFC(&qword_1EB131828, sub_1A40C6074, MEMORY[0x1E69C1E70]);
  v34 = v40;
  sub_1A524AA94();

  sub_1A3C784D4(v24, v25);

  return (*(v39 + 8))(v32, v34);
}

uint64_t sub_1A40BFC04@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5243624();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5242954();
  v6 = v10[1];
  (*(v3 + 104))(v5, *MEMORY[0x1E69C2538], v2);
  sub_1A3C36888();
  v7 = sub_1A3C30368();
  v8 = sub_1A3C5A374();
  sub_1A414D324(v6, v5, v7 & 1, v8 & 1, a1);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A40BFD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = *a5;

  return MEMORY[0x1EEE6DFA0](sub_1A40BFE54, 0, 0);
}

uint64_t sub_1A40BFE54(__n128 a1)
{
  v89 = v1;
  v88 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 24);
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = *(v1 + 24);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v4 = sub_1A524E2B4();
  v5 = *(v1 + 24);
  v86 = v1;
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v1 = 0;
  v6 = v2 & 0xC000000000000001;
  v7 = v5 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 = v1;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1A59097F0](v2, *(v86 + 24), a1);
      }

      else
      {
        if (v2 >= *(v3 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v7 + 8 * v2);
      }

      v10 = v9;
      v1 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = [v9 uuid];
      if (v11)
      {
        break;
      }

      ++v2;
      if (v1 == v4)
      {
        goto LABEL_23;
      }
    }

    v12 = v11;
    v13 = sub_1A524C674();
    v85 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A3D3D914(0, *(v8 + 2) + 1, 1, v8);
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    if (v16 >= v15 >> 1)
    {
      v8 = sub_1A3D3D914((v15 > 1), v16 + 1, 1, v8);
    }

    *(v8 + 2) = v16 + 1;
    v17 = &v8[16 * v16];
    *(v17 + 4) = v13;
    *(v17 + 5) = v85;
  }

  while (v1 != v4);
LABEL_23:
  v18 = v86;
  v19 = *(v86 + 32);
  sub_1A3C4467C(v8);

  v20 = *(v19 + 32);
  os_unfair_lock_lock((v20 + 24));
  v21 = 0;
  sub_1A40C7208((v20 + 16), &v87);
  os_unfair_lock_unlock((v20 + 24));
  v22 = *(v86 + 32);
  v23 = objc_opt_self();
  v24 = sub_1A524CF34();
  v25 = *(v22 + 24);
  v26 = [v25 px_standardLibrarySpecificFetchOptions];
  *(v86 + 16) = 0;
  v27 = [v23 fetchExclusiveSocialGroupAssetsForPersons:v24 options:v26 error:v86 + 16];

  v28 = *(v86 + 16);
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v30 = v28;
    v31 = sub_1A5240B84();

    v21 = v31;
    swift_willThrow();
    v32 = sub_1A524D244();
    v33 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = v33;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = v31;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&dword_1A3C1C000, v34, v32, "Error fetching exclusive social group assets: %@", v35, 0xCu);
      sub_1A40C7260(v36, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
      MEMORY[0x1A590EEC0](v36, -1, -1);
      v18 = v86;
      MEMORY[0x1A590EEC0](v35, -1, -1);
    }

    else
    {
    }

    v29 = 0;
  }

  v39 = v27;
  os_unfair_lock_lock((v20 + 24));
  [*(v20 + 16) resignCurrent];
  os_unfair_lock_unlock((v20 + 24));
  if (!v29)
  {
    goto LABEL_50;
  }

  v40 = [v29 fetchedObjects];

  if (!v40)
  {

LABEL_50:

    goto LABEL_60;
  }

  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v41 = sub_1A524CA34();

  if (v41 >> 62)
  {
LABEL_53:
    v42 = sub_1A524E2B4();
    v83 = v25;
    v84 = v39;
    if (v42)
    {
LABEL_33:
      v81 = v21;
      v43 = 0;
      v25 = (v41 & 0xC000000000000001);
      v21 = MEMORY[0x1E69E7CC0];
      do
      {
        v44 = v43;
        while (1)
        {
          if (v25)
          {
            v45 = MEMORY[0x1A59097F0](v44, v41);
          }

          else
          {
            if (v44 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_52;
            }

            v45 = *(v41 + 8 * v44 + 32);
          }

          v46 = v45;
          v43 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          v47 = [v45 uuid];
          if (v47)
          {
            break;
          }

          ++v44;
          if (v43 == v42)
          {
            goto LABEL_55;
          }
        }

        v48 = v47;
        v49 = sub_1A524C674();
        v82 = v50;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1A3D3D914(0, *(v21 + 2) + 1, 1, v21);
        }

        v39 = *(v21 + 2);
        v51 = *(v21 + 3);
        if (v39 >= v51 >> 1)
        {
          v21 = sub_1A3D3D914((v51 > 1), v39 + 1, 1, v21);
        }

        *(v21 + 2) = v39 + 1;
        v52 = &v21[16 * v39];
        *(v52 + 4) = v49;
        *(v52 + 5) = v82;
      }

      while (v43 != v42);
      goto LABEL_55;
    }
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v83 = v25;
    v84 = v39;
    if (v42)
    {
      goto LABEL_33;
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_55:

  sub_1A3C4467C(v21);

  v53 = sub_1A524CF34();

  v54 = sub_1A524CF34();

  v18 = v86;
  *(v86 + 16) = 0;
  v55 = [v83 keyAssetUUIDOfSocialGroupWithPersonUUIDs:v53 candidateAssetUUIDs:v54 error:v86 + 16];

  v56 = *(v86 + 16);
  if (v55)
  {
    v57 = *(v86 + 32);
    v58 = *(v86 + 40);
    v59 = *(v86 + 24);
    v60 = sub_1A524C674();
    v62 = v61;
    v63 = v56;

    v64 = *(v57 + 16);
    v65 = swift_task_alloc();
    v66 = *(v58 + 80);
    v65[2] = v66;
    v65[3] = v60;
    v65[4] = v62;
    v65[5] = v59;
    type metadata accessor for LemonadeCollectionCustomizationSocialGroupModel.KeyAssetSelector.KeyAssetInfo(255, v66, v67, v68);
    sub_1A524DF24();
    v69 = *(*v64 + *MEMORY[0x1E69E6B68] + 16);
    os_unfair_lock_lock((v64 + ((*(*v64 + 48) + 3) & 0x1FFFFFFFCLL)));
    sub_1A40C72BC((v64 + v69));
  }

  v70 = v56;
  v71 = sub_1A5240B84();

  swift_willThrow();
  v72 = sub_1A524D244();
  v73 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v73, v72))
  {
    v74 = v73;
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v75 = 138412290;
    v77 = v71;
    v78 = _swift_stdlib_bridgeErrorToNSError();
    *(v75 + 4) = v78;
    *v76 = v78;
    _os_log_impl(&dword_1A3C1C000, v74, v72, "Error selecting social group key asset: %@", v75, 0xCu);
    sub_1A40C7260(v76, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    MEMORY[0x1A590EEC0](v76, -1, -1);
    MEMORY[0x1A590EEC0](v75, -1, -1);
  }

  else
  {
  }

LABEL_60:
  v79 = *(v18 + 8);

  return v79();
}

uint64_t sub_1A40C070C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A40C0784(uint64_t a1)
{

  sub_1A3C784D4(*(a1 + qword_1EB131620), *(a1 + qword_1EB131620 + 8));

  sub_1A3C784D4(*(a1 + qword_1EB1316D8), *(a1 + qword_1EB1316D8 + 8));

  sub_1A3C784D4(*(a1 + qword_1EB131708), *(a1 + qword_1EB131708 + 8));
  v2 = *(a1 + qword_1EB131638);

  swift_unknownObjectRelease();
  sub_1A3C784D4(*(a1 + qword_1EB131738), *(a1 + qword_1EB131738 + 8));

  v3 = qword_1EB1A50C0;
  v4 = sub_1A5241614();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

id sub_1A40C09F0@<X0>(void *a1@<X8>)
{
  v2 = sub_1A40C3B40(&unk_1A5317BC8, &qword_1EB1315E8);
  *a1 = v2;

  return v2;
}

void (*sub_1A40C0A64(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A40B758C(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C0B8C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40B781C(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C0C4C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40B7910(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C0D30(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40B7970(v2);
  return sub_1A3E658B0;
}

uint64_t sub_1A40C0DA4()
{
  v0 = sub_1A40C39F8(&unk_1A5317D50, &qword_1EB1316B0);

  return v0;
}

void (*sub_1A40C0E14(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A40B9B6C(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C0ED4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40B7B68(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C1004(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A40B881C(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C10D4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40B7A74(v2);
  return sub_1A3E658B0;
}

void sub_1A40C1148()
{
  sub_1A40C352C();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A40C11A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40B7BC8(v2);
  return sub_1A3E658B0;
}

uint64_t sub_1A40C121C()
{
  v0 = sub_1A4048638(&qword_1EB131620);
  sub_1A3C66EE8(v0, v1);
  return v0;
}

void (*sub_1A40C1288(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40B7C28(v2);
  return sub_1A3E658B0;
}

void *sub_1A40C12FC()
{
  v0 = sub_1A40C3570();
  v1 = v0;
  return v0;
}

void (*sub_1A40C1350(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40B7CE0(v2);
  return sub_1A3E658B0;
}

void *sub_1A40C1418()
{
  v0 = sub_1A40C3C10(&unk_1A5317CA8, &qword_1EB131658);
  v1 = v0;
  return v0;
}

void (*sub_1A40C147C(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A40B8C5C(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C1540(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A40B9134(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C1610(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40B9448(v2);
  return sub_1A3E658B0;
}

void sub_1A40C1684()
{
  sub_1A40C3994();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A40C1704(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40B953C(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C17E8(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A40B962C(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C18A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40B9824(v2);
  return sub_1A3E658B0;
}

void sub_1A40C191C()
{
  sub_1A40C3AFC();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A40C197C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40B9CA8(v2);
  return sub_1A3E658B0;
}

void sub_1A40C19F0()
{
  sub_1A40C3B40(&unk_1A5317D88, &qword_1EB1316C0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40C1A58(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  sub_1A40BA66C(v2);
}

void (*sub_1A40C1B14(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40B9918(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C1BD4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40BA928(v2);
  return sub_1A3E62A10;
}

uint64_t sub_1A40C1C48()
{
  v0 = sub_1A4048638(&qword_1EB1316D8);
  sub_1A3C66EE8(v0, v1);
  return v0;
}

void (*sub_1A40C1CB4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40BA988(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C1D98(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40BA9E8(v2);
  return sub_1A3E658B0;
}

void sub_1A40C1E0C()
{
  sub_1A40C3C10(&unk_1A5317DC0, &qword_1EB1316E8);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A40C1E74(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A40BABA4(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C1F78(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A40BAE94(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C205C(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A40BB1B0(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C211C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40BB380(v2);
  return sub_1A3E658B0;
}

uint64_t sub_1A40C2190()
{
  v0 = sub_1A4048638(&qword_1EB131708);
  sub_1A3C66EE8(v0, v1);
  return v0;
}

void (*sub_1A40C21FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40BB43C(v2);
  return sub_1A3E658B0;
}

void (*sub_1A40C22E0(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A40BB5B8(v2);
  return sub_1A3E658B0;
}

uint64_t sub_1A40C2398@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A40B77A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A40C23C4(uint64_t (*a1)(id *), __n128 a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v16 = a4 & 0xC000000000000001;
      v7 = a4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v16)
        {
          v8 = a4;
          v9 = MEMORY[0x1A59097F0](v6, a4, a2);
        }

        else
        {
          if (v6 >= *(v7 + 16))
          {
            goto LABEL_14;
          }

          v8 = a4;
          v9 = *(a4 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v18 = v9;
        v12 = a1(&v18);

        if (!v4 && (v12 & 1) == 0)
        {
          ++v6;
          a4 = v8;
          if (v11 != v5)
          {
            continue;
          }
        }

        return v12 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v13 = a4;
      v14 = sub_1A524E2B4();
      a4 = v13;
      v5 = v14;
    }

    while (v14);
  }

  v12 = 0;
  return v12 & 1;
}

unint64_t sub_1A40C24EC(unint64_t result, __n128 a2)
{
  v2 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = v2 & 0xC000000000000001;
    v8 = (MEMORY[0x1E69E7CC0] + 32);
    v9 = v2 & 0xFFFFFFFFFFFFFF8;
    v28 = v2 & 0xC000000000000001;
    v29 = v2;
    v27 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v7)
      {
        result = MEMORY[0x1A59097F0](v5, v2, a2);
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *(v9 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1A524E2B4();
          v3 = result;
          goto LABEL_3;
        }

        result = *(v2 + 8 * v5 + 32);
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v6)
      {
        v11 = v4[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v3;
        v13 = result;
        v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        sub_1A3C68B88(0, &qword_1EB131878, sub_1A40C5F84, MEMORY[0x1E69E6F90]);
        v16 = swift_allocObject();
        v17 = _swift_stdlib_malloc_size(v16);
        v18 = v17 - 32;
        if (v17 < 32)
        {
          v18 = v17 - 17;
        }

        v19 = v18 >> 4;
        v16[2] = v15;
        v16[3] = 2 * (v18 >> 4);
        v20 = (v16 + 4);
        v21 = v4[3] >> 1;
        if (v4[2])
        {
          v22 = v4 + 4;
          if (v16 != v4 || v20 >= v22 + 16 * v21)
          {
            memmove(v16 + 4, v22, 16 * v21);
          }

          v4[2] = 0;
        }

        v8 = (v20 + 16 * v21);
        v6 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

        v4 = v16;
        result = v13;
        v3 = v12;
        v7 = v28;
        v2 = v29;
        v9 = v27;
      }

      v23 = __OFSUB__(v6--, 1);
      if (v23)
      {
        goto LABEL_33;
      }

      *v8 = v5;
      v8[1] = result;
      v8 += 2;
      ++v5;
      if (v10 == v3)
      {
        goto LABEL_28;
      }
    }
  }

  v6 = 0;
LABEL_28:
  v24 = v4[3];
  if (v24 < 2)
  {
    return v4;
  }

  v25 = v24 >> 1;
  v23 = __OFSUB__(v25, v6);
  v26 = v25 - v6;
  if (!v23)
  {
    v4[2] = v26;
    return v4;
  }

  __break(1u);
  return result;
}

void sub_1A40C2720(uint64_t *a1)
{
  v2 = (v1 + qword_1EB131638);
  v3 = *(v1 + qword_1EB131638);
  v13 = *(v1 + qword_1EB131638 + 8);
  v4 = *(v1 + qword_1EB131638 + 32);
  v5 = *(v1 + qword_1EB131638 + 40);
  v14 = v3;
  v12[1] = v5;
  v12[2] = v4;
  v12[0] = *a1;
  v11 = *(a1 + 1);
  v6 = a1[4];
  v9 = a1[5];
  v10 = v6;
  v7 = *(a1 + 2);
  v2[1] = *(a1 + 1);
  v2[2] = v7;
  *v2 = *a1;
  sub_1A40C52E8(v12, &v15, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E6720]);
  sub_1A40C7134(&v11, &v15, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1A3C39848);
  v8 = MEMORY[0x1E69E62F8];
  sub_1A40C52E8(&v10, &v15, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);
  sub_1A40C52E8(&v9, &v15, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, v8);
  sub_1A40BBC34();
}

void sub_1A40C3278(void *a1)
{
  v7 = *(v1 + qword_1EB1315E8);
  *(v1 + qword_1EB1315E8) = a1;
  v2 = a1;
  if (!v7 || sub_1A40C3B40(&unk_1A5317BC8, &qword_1EB1315E8))
  {
    v3 = sub_1A40C3B40(&unk_1A5317BC8, &qword_1EB1315E8);
    v4 = v3;
    sub_1A40B6C28(v3);
  }

  v5 = sub_1A524D264();
  v6 = *sub_1A3CAA3FC();
  sub_1A5246DF4(v5, &dword_1A3C1C000, v6, "Nil social group set in the group customization model. Dismissing.", 66, 2, MEMORY[0x1E69E7CC0]);

  sub_1A40BB060(1, &qword_1EB1315E0, &unk_1A5317B90, sub_1A40C2700);
}

void sub_1A40C34E4()
{
  v1 = *(v0 + 24);
  v2 = v1;
  sub_1A40C3278(v1);
}

uint64_t sub_1A40C352C()
{
  v1 = qword_1EB131618;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A40C3570()
{
  v1 = qword_1EB131628;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A40C35B4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + qword_1EB131630);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40C3628()
{
  v1 = *(v0 + 24);
  v8 = *v1;
  v7 = *(v1 + 8);
  v2 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = v2;
  sub_1A40C52E8(&v8, v4, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E6720]);
  sub_1A40C7134(&v7, v4, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1A3C39848);
  v3 = MEMORY[0x1E69E62F8];
  sub_1A40C52E8(&v6, v4, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);
  sub_1A40C52E8(&v5, v4, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, v3);
  sub_1A40C2720(v1);
}

void sub_1A40C37FC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A40C38B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = qword_1EB131658;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

void sub_1A40C391C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + qword_1EB131670;
  swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  sub_1A40B6F80();
}

uint64_t sub_1A40C3994()
{
  v1 = qword_1EB131688;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A40C39F8(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  v5 = v2 + *a2;
  swift_beginAccess();
  return *v5;
}

void sub_1A40C3A88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + qword_1EB1316B0);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_1A40C3AFC()
{
  v1 = qword_1EB1316B8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A40C3B40(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  return *(v2 + *a2);
}

uint64_t sub_1A40C3C10(uint64_t a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1A40B746C(KeyPath);

  v5 = *a2;
  swift_beginAccess();
  return *(v2 + v5);
}

void sub_1A40C3C9C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = qword_1EB1316E8;
  swift_beginAccess();
  *(v2 + v3) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40C3D08()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = qword_1EB1316F0;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

void sub_1A40C3D80(void (*a1)(void, void, __n128), uint64_t a2)
{
  v4 = (v2 + qword_1EB131708);
  swift_beginAccess();
  if (*v4)
  {

    if (sub_1A40C3B40(&unk_1A5317BC8, &qword_1EB1315E8))
    {
      sub_1A468093C();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A4680930();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (a1)
  {
    (a1)(0, 0);
  }
}

void sub_1A40C4A9C(void *a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1A40B82B0(&v1);
  }
}

uint64_t sub_1A40C52E8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1A40C37FC(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_1A40C537C(unint64_t a1, void *a2, __n128 a3)
{
  if (a1 >> 62)
  {
LABEL_22:
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = sub_1A524E2B4();
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v21 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1A59097F0](v4, a1, a3);
    }

    else
    {
      if (v4 >= *(v19 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = [v5 localIdentifier];
    v8 = sub_1A524C674();
    v10 = v9;

    v11 = [a2 localIdentifier];
    v12 = sub_1A524C674();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {
      break;
    }

    v16 = sub_1A524EAB4();

    if (v16)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_21;
    }
  }

  return v4;
}

unint64_t sub_1A40C5518(unint64_t *a1, void *a2, __n128 a3)
{
  v6 = a2;
  v8 = *a1;
  result = sub_1A40C537C(*a1, a2, a3);
  if (v3)
  {
    return result;
  }

  if (v10)
  {
    if (v8 >> 62)
    {
      return sub_1A524E2B4();
    }

    return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = a1;
  v36 = result;
  v11 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v8 >> 62)
    {
      if (v11 == sub_1A524E2B4())
      {
        return v36;
      }
    }

    else if (v11 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v36;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1A59097F0](v11, v8);
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v13 = *(v8 + 8 * v11 + 32);
LABEL_17:
    v5 = v13;
    v14 = [v13 localIdentifier];
    v15 = sub_1A524C674();
    v17 = v16;

    v4 = v6;
    v18 = [v6 localIdentifier];
    v19 = sub_1A524C674();
    v21 = v20;

    if (v15 == v19 && v17 == v21)
    {
LABEL_8:

LABEL_9:
      v6 = v4;
      goto LABEL_10;
    }

    v22 = sub_1A524EAB4();

    if (v22)
    {
      goto LABEL_9;
    }

    v6 = v4;
    if (v36 != v11)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1A59097F0](v36, v8);
        v24 = MEMORY[0x1A59097F0](v11, v8);
      }

      else
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v25 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36 >= v25)
        {
          goto LABEL_53;
        }

        if (v11 >= v25)
        {
          goto LABEL_54;
        }

        v26 = *(v8 + 32 + 8 * v11);
        v23 = *(v8 + 32 + 8 * v36);
        v24 = v26;
      }

      v27 = v24;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
      {
        v8 = sub_1A3E2AE98(v8, v28);
        v29 = (v8 >> 62) & 1;
      }

      else
      {
        LODWORD(v29) = 0;
      }

      v30 = v8 & 0xFFFFFFFFFFFFFF8;
      v31 = *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20);
      *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20) = v27;

      if ((v8 & 0x8000000000000000) != 0 || v29)
      {
        v8 = sub_1A3E2AE98(v8, v32);
        v30 = v8 & 0xFFFFFFFFFFFFFF8;
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v36;
        }
      }

      else if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v11 >= *(v30 + 16))
      {
        goto LABEL_51;
      }

      v33 = v30 + 8 * v11;
      v34 = *(v33 + 32);
      *(v33 + 32) = v23;

      *v35 = v8;
    }

    v12 = __OFADD__(v36++, 1);
    if (v12)
    {
      goto LABEL_50;
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return sub_1A524E2B4();
}

uint64_t sub_1A40C5828(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1A524E2B4();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1A524E2B4();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A40C5938(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v6 = a1;
    v7 = *v5;
    v8 = *v5 >> 62;
    if (!v8)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1A524E2B4();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v11 = sub_1A524E2B4();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (v12)
  {
    goto LABEL_18;
  }

  sub_1A3D5C1C8(result, 1);

  return sub_1A40C5828(v6, v4, 0, v13);
}

void sub_1A40C5A10()
{
  v0 = sub_1A40C3B40(&unk_1A5317BC8, &qword_1EB1315E8);
  if (v0)
  {
    v4 = v0;
    v1 = sub_1A524DC34();
    if (v1)
    {
      v2 = v1;
      sub_1A40B72E0([v1 objectAfterChanges]);

      v3 = v2;
    }

    else
    {
      v3 = v4;
    }
  }
}

void sub_1A40C5B18(uint64_t a1)
{
  if (!qword_1EB131760)
  {
    sub_1A3C68B88(255, &qword_1EB131768, sub_1A40C5BCC, MEMORY[0x1E6981F40]);
    sub_1A40C654C(&qword_1EB131830, &qword_1EB131768, sub_1A40C5BCC);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131760);
    }
  }
}

void sub_1A40C5BCC(uint64_t a1)
{
  if (!qword_1EB131770)
  {
    sub_1A40C5D48(255, &qword_1EB131778, sub_1A3EC43B0, MEMORY[0x1E697E5E0]);
    sub_1A40C6000(255, &qword_1EB131780, sub_1A40C5C90, sub_1A3E42C88);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB131770);
    }
  }
}

void sub_1A40C5C90(uint64_t a1)
{
  if (!qword_1EB131788)
  {
    sub_1A40C5D48(255, &qword_1EB131790, sub_1A40C5DAC, MEMORY[0x1E697E5E0]);
    sub_1A40C7320(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131788);
    }
  }
}

void sub_1A40C5D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A40C5DAC(uint64_t a1)
{
  if (!qword_1EB131798)
  {
    sub_1A40C5E10(255);
    sub_1A40C63C4();
    v1 = sub_1A524BDA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131798);
    }
  }
}

void sub_1A40C5E10(uint64_t a1)
{
  if (!qword_1EB1317A0)
  {
    sub_1A3C68B88(255, &qword_1EB1317A8, sub_1A40C5F84, MEMORY[0x1E69E62F8]);
    sub_1A3C52C70(255, &qword_1EB1265C0, 0x1E6978980);
    sub_1A40C6000(255, &qword_1EB1317B8, sub_1A40C6074, MEMORY[0x1E697CBE8]);
    sub_1A3C9AD14(&qword_1EB131808, &qword_1EB1317A8, sub_1A40C5F84, MEMORY[0x1E69E6338]);
    sub_1A3C3A220(&qword_1EB131810, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E81B8]);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1317A0);
    }
  }
}

void sub_1A40C5F84(uint64_t a1)
{
  if (!qword_1EB1317B0)
  {
    sub_1A3C52C70(255, &qword_1EB1265C0, 0x1E6978980);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1317B0);
    }
  }
}

void sub_1A40C6000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A40C6074(uint64_t a1, __n128 a2)
{
  if (!qword_1EB1317C0)
  {
    sub_1A40C61BC(255);
    sub_1A40C6344(255);
    sub_1A40C6CFC(&qword_1EB1317F0, sub_1A40C61BC, MEMORY[0x1E69C2010]);
    sub_1A40C6CFC(&qword_1EB1317F8, sub_1A40C61BC, MEMORY[0x1E69C2038]);
    sub_1A40C6CFC(&qword_1EB131800, sub_1A40C61BC, MEMORY[0x1E69C2018]);
    sub_1A3C36888();
    swift_getOpaqueTypeConformance2();
    v2 = sub_1A52424F4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1317C0);
    }
  }
}

void sub_1A40C61BC(uint64_t a1)
{
  if (!qword_1EB1317C8)
  {
    sub_1A40C37FC(255, &qword_1EB125C30, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItem);
    sub_1A40C62EC(&qword_1EB1317D8, &qword_1EB125C30, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for <> PhotoKitItem<A>);
    sub_1A40C62EC(&qword_1EB1317E0, &qword_1EB125C30, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);
    sub_1A40C62EC(&qword_1EB1317E8, &qword_1EB125C30, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);
    v1 = sub_1A5242984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1317C8);
    }
  }
}

uint64_t sub_1A40C62EC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A40C37FC(255, a2, &qword_1EB1265C0, 0x1E6978980, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A40C6344(uint64_t a1)
{
  if (!qword_1EB125960)
  {
    sub_1A3C36888();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB125960);
    }
  }
}

unint64_t sub_1A40C63C4()
{
  result = qword_1EB131818;
  if (!qword_1EB131818)
  {
    sub_1A40C5E10(255);
    sub_1A40C643C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131818);
  }

  return result;
}

unint64_t sub_1A40C643C()
{
  result = qword_1EB131820;
  if (!qword_1EB131820)
  {
    sub_1A40C6000(255, &qword_1EB1317B8, sub_1A40C6074, MEMORY[0x1E697CBE8]);
    sub_1A40C6CFC(&qword_1EB131828, sub_1A40C6074, MEMORY[0x1E69C1E70]);
    sub_1A40C6CFC(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131820);
  }

  return result;
}

uint64_t sub_1A40C654C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C68B88(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A40C65B0(uint64_t a1)
{
  if (!qword_1EB131840)
  {
    sub_1A3C68B88(255, &qword_1EB131768, sub_1A40C5BCC, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131840);
    }
  }
}

void sub_1A40C6648(uint64_t a1)
{
  if (!qword_1EB131848)
  {
    sub_1A40C5D48(255, &qword_1EB131838, sub_1A40C5B18, MEMORY[0x1E697E5C8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB131848);
    }
  }
}

uint64_t sub_1A40C6764(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A40C67BC(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1A40C691C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A40C6958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A40C69A0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1A40C6A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A40C6AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A40C6AFC(__n128 a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1A40C24EC(*v3, a1);
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *(v4 + 24) = *v3;
  *(v4 + 40) = v6;
  *(v4 + 56) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A40C6F20;
  *(v7 + 24) = v4;
  sub_1A3C68B88(0, &qword_1EB1317A8, sub_1A40C5F84, MEMORY[0x1E69E62F8]);
  sub_1A40C6000(0, &qword_1EB1317B8, sub_1A40C6074, MEMORY[0x1E697CBE8]);
  sub_1A3C9AD14(&qword_1EB131808, &qword_1EB1317A8, sub_1A40C5F84, MEMORY[0x1E69E6338]);
  sub_1A3C3A220(&qword_1EB131810, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E81B8]);
  sub_1A40C643C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40C6CFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A40C6D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A40C6DB8(uint64_t a1, uint64_t a2)
{
  sub_1A40C5D48(0, &qword_1EB131778, sub_1A3EC43B0, MEMORY[0x1E697E5E0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A40C6E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A40C6EA0(uint64_t a1)
{
  sub_1A40C5D48(0, &qword_1EB131778, sub_1A3EC43B0, MEMORY[0x1E697E5E0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A40C6F60(uint64_t *a1, __n128 a2)
{
  v3 = *(v2 + 16);
  v6 = *a1;
  v5[2] = &v6;
  return sub_1A40C23C4(sub_1A40C6FEC, a2, v5, v3) & 1;
}

id sub_1A40C7008(id *a1)
{
  result = [objc_opt_self() progressWithTotalUnitCount_];
  *a1 = result;
  return result;
}

uint64_t sub_1A40C7060()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A40BFD9C(v4, v5, v6, v2, v3);
}

double sub_1A40C70F8(void *a1)
{

  *a1 = v1;

  return result;
}

uint64_t sub_1A40C7134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A40C71A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

id *sub_1A40C7208@<X0>(id *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    result = [*result becomeCurrentWithPendingUnitCount_];
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t sub_1A40C7260(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A40C37FC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A40C72BC(uint64_t *a1)
{
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  sub_1A3DAECB8(*a1, a1[1], a1[2]);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40C7320(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A40C7374()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_1EB131740);
    sub_1A4680924();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A40C75F8(uint64_t a1, void *a2)
{
  v4 = a1;
  v5 = *(v2 + 24);
  if (a2 || (a1 & 1) == 0)
  {
    v6 = sub_1A524D244();
    v7 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = v7;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v9 = 67109634;
      *(v9 + 4) = v4 & 1;
      *(v9 + 8) = 2112;
      if (a2)
      {
        v11 = a2;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v9 + 10) = v12;
      *v10 = v13;
      *(v9 + 18) = 2080;
      if (v5)
      {
        v14 = [v5 localIdentifier];
        sub_1A524C674();
      }

      sub_1A3C39848(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v15 = sub_1A524C714();
      sub_1A3C2EF94(v15, v16, &v17);
    }
  }
}

void sub_1A40C7818(uint64_t a1)
{
  if (!qword_1EB131880)
  {
    sub_1A40C37FC(255, &qword_1EB131888, &qword_1EB131890, 0x1E696AE38, MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1A524E4E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131880);
    }
  }
}

void sub_1A40C78AC(uint64_t a1)
{
  if (!qword_1EB131898)
  {
    sub_1A3C68B88(255, &qword_1EB1318A0, sub_1A3CB59B4, MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1A524E4E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131898);
    }
  }
}

void sub_1A40C7944(uint64_t *a1)
{
  sub_1A3DAECB8(*a1, a1[1], a1[2]);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1A40C7CB4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  sub_1A40C7F38(v3, v2, v4);
}

uint64_t objectdestroy_143Tm_1()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

void sub_1A40C7D54(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v7 = a1;
  v8 = *(v4 + 32);
  v9 = *(v4 + 48);
  if (a2)
  {
    v10 = sub_1A524D244();
  }

  else
  {
    v10 = sub_1A524D224();
  }

  v11 = v10;
  v12 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v12, v11))
  {
    v21 = v8;
    v13 = v12;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 67109378;
    *(v14 + 4) = v7 & 1;
    *(v14 + 8) = 2112;
    if (a2)
    {
      v16 = a2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    *(v14 + 10) = v17;
    *v15 = v18;
    _os_log_impl(&dword_1A3C1C000, v13, v11, a3, v14, 0x12u);
    sub_1A40C7260(v15, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    MEMORY[0x1A590EEC0](v15, -1, -1);
    MEMORY[0x1A590EEC0](v14, -1, -1);

    v8 = v21;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = *&Strong[*a4];
    *&Strong[*a4] = 0;
  }

  if (v7)
  {
    v8();
  }

  if (v9)
  {
    v9(v7 & 1, 0);
  }
}

void sub_1A40C7F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A40C7F88()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1A40B82B0(&v0);
  }
}

void sub_1A40C8314()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v1;
    sub_1A40B8AD4(v1);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1A3C68B88(0, &qword_1EB12E380, MEMORY[0x1E6985D18], MEMORY[0x1E69E6F90]);
    sub_1A523FBB4();
    *(swift_allocObject() + 16) = xmmword_1A52F8E10;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

id PXRemoveFromBookmarksAction.init(objects:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithObjects_];
  swift_unknownObjectRelease();
  return v1;
}

id PXRemoveFromBookmarksAction.init(objects:)(void *a1)
{
  v2 = v1;
  v4 = swift_unknownObjectRetain();
  v5 = sub_1A3F9ECF0(v4);
  swift_unknownObjectRelease();
  *&v2[OBJC_IVAR___PXRemoveFromBookmarksAction_bookmarks] = v5;
  if ([a1 firstObject])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (*(&v22 + 1))
  {
    sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
    if (swift_dynamicCast())
    {
      v6 = v20;
      result = [v20 photoLibrary];
      if (result)
      {
        v8 = result;
        v19.receiver = v2;
        v19.super_class = PXRemoveFromBookmarksAction;
        v9 = objc_msgSendSuper2(&v19, sel_initWithPhotoLibrary_, result);

        swift_unknownObjectRelease();
        return v9;
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  else
  {
    sub_1A3C35B00(v23);
  }

  if (qword_1EB1A54E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1A5246F24();
  __swift_project_value_buffer(v10, qword_1EB1A54E8);
  v11 = sub_1A524D244();
  swift_unknownObjectRetain();
  v12 = sub_1A5246F04();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    *&v23[0] = swift_slowAlloc();
    *v13 = 136315138;
    v14 = [a1 description];
    v15 = sub_1A524C674();
    v17 = v16;

    sub_1A3C2EF94(v15, v17, v23);
  }

  swift_unknownObjectRelease();

  type metadata accessor for PXRemoveFromBookmarksAction(v18);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1A40C884C(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(v6 + 24);
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    do
    {
      sub_1A3C58DE8(v12, v9, type metadata accessor for LemonadeBookmark);
      v14 = v9[16];
      sub_1A3C58DE8(&v9[v11], v4, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      sub_1A3C58334(v9, type metadata accessor for LemonadeBookmark);
      sub_1A42E16DC(v14, v4);
      sub_1A3C58334(v4, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      v12 += v13;
      --v10;
    }

    while (v10);
  }
}

void sub_1A40C8B74(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v3 = *(type metadata accessor for LemonadeBookmark(0) - 8);
    v4 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    do
    {
      sub_1A42E0F5C(v4);
      v4 += v5;
      --v1;
    }

    while (v1);
  }
}

void sub_1A40C8C40(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = _Block_copy(aBlock);
  _Block_copy(v12);
  sub_1A40C8E1C(a1, v12, a4, a5, a6, a7);
}

void sub_1A40C8D94()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1A54E8);
  __swift_project_value_buffer(v0, qword_1EB1A54E8);
  sub_1A5246EF4();
}

uint64_t objectdestroyTm_22()
{

  return swift_deallocObject();
}

void sub_1A40C8F9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A40CB82C(&qword_1EB129598, type metadata accessor for SharedAlbumsActivityItemListManager, &unk_1A53182D8);

  sub_1A5245714();
}

void sub_1A40C9060()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A40CB82C(&qword_1EB129598, type metadata accessor for SharedAlbumsActivityItemListManager, &unk_1A53182D8);

  sub_1A5245714();
}

void sub_1A40C9138(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A40CB82C(&qword_1EB129598, type metadata accessor for SharedAlbumsActivityItemListManager, &unk_1A53182D8);

  sub_1A5245724();
}

uint64_t type metadata accessor for SharedAlbumsActivityItemListManager(uint64_t a1)
{
  result = qword_1EB17A4F8;
  if (!qword_1EB17A4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1A40C928C(void *a1)
{
  [a1 setEntryFilter_];

  return [a1 setFetchLimit_];
}

void sub_1A40C9344(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A40CB35C(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v42 - v9;
  sub_1A40CB3C4(0);
  v47 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40CB6A4(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v50 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = sub_1A52413E4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v51 = &v42 - v26;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v44 = v12;
    v45 = v6;
    v46 = a2;
    v27 = sub_1A52414C4();
    v28 = MEMORY[0x1E6969B50];
    v29 = sub_1A40CB82C(&qword_1EB12AF60, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    sub_1A524D034();
    sub_1A524CFD4();
    sub_1A40CB82C(&unk_1EB12AF70, v28, MEMORY[0x1E6969B68]);
    sub_1A524C4E4();
    v30 = *(v19 + 8);
    v30(v21, v18);
    v43 = v30;
    v30(v24, v18);
    v31 = v50;
    sub_1A40CB6FC(v17, v50, sub_1A40CB6A4);
    if ((*(v19 + 48))(v31, 1, v18) == 1)
    {
      v32 = v51;
      sub_1A524CFD4();
      sub_1A40CB764(v31, sub_1A40CB6A4);
    }

    else
    {
      v32 = v51;
      (*(v19 + 32))(v51, v31, v18);
    }

    sub_1A524D034();
    sub_1A40CB82C(&qword_1EB1318D0, MEMORY[0x1E6969B18], MEMORY[0x1E6969B20]);
    if (sub_1A524C544())
    {
      v50 = v2;
      v51 = v29;
      v33 = *(v19 + 32);
      v34 = v48;
      v33(v48, v32, v18);
      v35 = v45;
      v33((v34 + *(v45 + 48)), v24, v18);
      v36 = v49;
      sub_1A40CB63C(v34, v49, sub_1A40CB35C);
      v37 = *(v35 + 48);
      v38 = v44;
      v33(v44, v36, v18);
      v39 = v36 + v37;
      v40 = v43;
      v43(v39, v18);
      sub_1A40CB6FC(v34, v36, sub_1A40CB35C);
      v33((v38 + *(v47 + 36)), (v36 + *(v35 + 48)), v18);
      v40(v36, v18);
      v41 = v50;
      sub_1A524D0B4();
      (*(*(v27 - 8) + 8))(v41, v27);
      sub_1A40CB764(v38, sub_1A40CB3C4);
      return;
    }
  }

  __break(1u);
}

unint64_t sub_1A40C98CC(uint64_t a1, __n128 a2)
{
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v21 = a1;
    v22 = sub_1A524E2B4();
    if (v22)
    {
      v23 = v22;
      v2 = sub_1A40C9D70(v22, 0);
      sub_1A40C9DEC(v2 + 32, v23, v21, v24);
      v26 = v25;

      if (v26 != v23)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v2 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v3 = *(v2 + 16);
        v4 = v3 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_1A524E2B4();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v3 = a1;
    v4 = a1 / 2;
LABEL_6:
    if (v3 + 1 < 3)
    {
      return v2;
    }

    v6 = -v4;
    v7 = 4;
    while (1)
    {
      v8 = v3 - (v7 - 3);
      if (__OFSUB__(v3, v7 - 3))
      {
        break;
      }

      a1 = v7 - 4;
      if (v7 - 4 != v8)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1A59097F0](a2);
          v12 = MEMORY[0x1A59097F0](v3 - (v7 - 3), v2);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v9)
          {
            goto LABEL_32;
          }

          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          v10 = *(v2 + 8 * v8 + 32);
          v11 = *(v2 + 8 * v7);
          v12 = v10;
        }

        v13 = v12;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_1A3E2AE98(v2, v14);
          v15 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v16 = v2 & 0xFFFFFFFFFFFFFF8;
        v17 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v7);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v7) = v13;

        if ((v2 & 0x8000000000000000) != 0 || v15)
        {
          a1 = sub_1A3E2AE98(v2, v18);
          v2 = a1;
          v16 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v8 >= *(v16 + 16))
        {
          goto LABEL_34;
        }

        v19 = v16 + 8 * v8;
        v20 = *(v19 + 32);
        *(v19 + 32) = v11;
      }

      ++v7;
      if (v6 + v7 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_1A40C9ADC()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore35SharedAlbumsActivityItemListManager__itemList;
  sub_1A40CB06C(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1A40C9BB8@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore35SharedAlbumsActivityItemListManager_observable);
  *a1 = v2;
  return v2;
}

void sub_1A40C9BD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A40CB82C(&qword_1EB129598, type metadata accessor for SharedAlbumsActivityItemListManager, &unk_1A53182D8);

  sub_1A5245714();
}

double sub_1A40C9CA4()
{
  swift_beginAccess();

  return result;
}

void sub_1A40C9CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A40CB82C(&qword_1EB129598, type metadata accessor for SharedAlbumsActivityItemListManager, &unk_1A53182D8);

  sub_1A5245C54();
}

void *sub_1A40C9D70(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A3CB8F68();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

uint64_t sub_1A40C9DEC(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1A524E2B4();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_1A524E2B4();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1A40CB7C4(0);
          sub_1A40CB82C(&qword_1EB131900, sub_1A40CB7C4, MEMORY[0x1E69E6340]);
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A3D5C268(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
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
        sub_1A3C52C70(0, &qword_1EB120A18, off_1E771DDA0);
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

void sub_1A40CAF14(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  v13[4] = sub_1A40CB304;
  v13[5] = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1A3D7692C;
  v13[3] = &block_descriptor_98;
  v7 = _Block_copy(v13);
  v8 = a1;

  v9 = [v4 scheduledTimerWithTimeInterval:0 repeats:v7 block:1.0];
  _Block_release(v7);
  v10 = OBJC_IVAR____TtC12PhotosUICore35SharedAlbumsActivityItemListManager_sectionInfoChangeCoalescingTimer;
  v11 = *(v2 + OBJC_IVAR____TtC12PhotosUICore35SharedAlbumsActivityItemListManager_sectionInfoChangeCoalescingTimer);
  if (v11)
  {
    [v11 invalidate];
    v12 = *(v2 + v10);
  }

  else
  {
    v12 = 0;
  }

  *(v2 + v10) = v9;
}

void sub_1A40CB06C(uint64_t a1)
{
  if (!qword_1EB1318B0)
  {
    type metadata accessor for SharedAlbumsActivityItemListManager(255);
    type metadata accessor for SharedAlbumsActivityItemList(255);
    sub_1A40CB82C(&qword_1EB129598, type metadata accessor for SharedAlbumsActivityItemListManager, &unk_1A53182D8);
    sub_1A5245764();
  }
}

void sub_1A40CB240(uint64_t a1)
{
  sub_1A40CB06C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1A40CB304()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A40C9F98();
  }

  return result;
}

void sub_1A40CB35C(uint64_t a1)
{
  if (!qword_1EB1318C0)
  {
    sub_1A52413E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1318C0);
    }
  }
}

void sub_1A40CB3C4(uint64_t a1)
{
  if (!qword_1EB1318C8)
  {
    sub_1A52413E4();
    sub_1A40CB82C(&qword_1EB1318D0, MEMORY[0x1E6969B18], MEMORY[0x1E6969B20]);
    v1 = sub_1A524D104();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1318C8);
    }
  }
}

void sub_1A40CB458(uint64_t a1, double a2)
{
  if (!qword_1EB1318D8)
  {
    sub_1A40CB4EC(255);
    sub_1A40CB82C(&qword_1EB1318E8, sub_1A40CB4EC, MEMORY[0x1E69E74F8]);
    v2 = sub_1A524E684();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1318D8);
    }
  }
}

void sub_1A40CB4EC(uint64_t a1)
{
  if (!qword_1EB1318E0)
  {
    sub_1A52414C4();
    sub_1A40CB82C(&qword_1EB12AF60, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    v1 = sub_1A524EC64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1318E0);
    }
  }
}

void sub_1A40CB580()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A40CB82C(&qword_1EB129598, type metadata accessor for SharedAlbumsActivityItemListManager, &unk_1A53182D8);

  sub_1A5245724();
}

uint64_t sub_1A40CB63C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A40CB6A4(uint64_t a1)
{
  if (!qword_1EB1318F0)
  {
    sub_1A52413E4();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1318F0);
    }
  }
}

uint64_t sub_1A40CB6FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40CB764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A40CB7C4(uint64_t a1)
{
  if (!qword_1EB1318F8)
  {
    sub_1A3C52C70(255, &qword_1EB120A18, off_1E771DDA0);
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1318F8);
    }
  }
}

uint64_t sub_1A40CB82C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A40CB880()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40CB8F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

double sub_1A40CB940(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 512))(KeyPath, sub_1A40D2C88, v6, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

double sub_1A40CB9F0(uint64_t a1)
{
  swift_getKeyPath();
  (*(*v1 + 512))();

  return result;
}

void *sub_1A40CBAB0()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__textChecker);
  v2 = v1;
  return v1;
}

id sub_1A40CBB24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 504))();

  v4 = *(v3 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__textChecker);
  *a2 = v4;

  return v4;
}

void sub_1A40CBBB4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A40CBBE4(v1);
}

void sub_1A40CBBE4(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__textChecker;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__textChecker);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 512))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB131920, 0x1E69DD080);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

uint64_t sub_1A40CBD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1A40D217C(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

double sub_1A40CBDD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__resultProcessingTask;
  if (!*(v1 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__resultProcessingTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 512))(v6);

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);

  v4 = sub_1A524CD74();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

double sub_1A40CBF50(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__currentQueryID;
  if ((*(v1 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__currentQueryID + 4) & 1) == 0)
  {
    if ((a1 & 0x100000000) != 0 || *v2 != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v2 = a1;
    *(v2 + 4) = BYTE4(a1) & 1;
    return result;
  }

  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 512))(v4);

  return result;
}

double sub_1A40CC1A0()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  return result;
}

double sub_1A40CC21C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 504))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__resultProcessingTask);

  return result;
}

unint64_t sub_1A40CC2D8()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__currentQueryID) | (*(v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__currentQueryID + 4) << 32);
}

void sub_1A40CC360(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 504))();

  v4 = *(v3 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__currentQueryID + 4);
  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__currentQueryID);
  *(a2 + 4) = v4;
}

void sub_1A40CC42C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v32 = a4;
  v8 = sub_1A5246F24();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v28 = v9;
  v29 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A52414C4();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1A52404F4();
  v12 = *(v11 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*v4 + 416);
  v33 = v4;
  v16(v13);
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [ObjCClassFromMetadata sharedInstance];
  v18 = [v17 autocompleteSuggestionsMode];

  if (v18 == 1)
  {
    v25 = a3;
    aBlock = a1;
    v35 = a2;
    sub_1A52404C4();
    sub_1A3D5F9DC();
    v19 = sub_1A524DF74();
    (*(v12 + 8))(v15, v11);
    if (*(v19 + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    KeyPath = swift_getKeyPath();
    v21.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v22 = v33;
    v23 = MEMORY[0x1E69E7CC0];
    *(&v24 - 2) = v33;
    *(&v24 - 1) = v23;
    (*(*v22 + 512))(v21);

    if (v25)
    {
      v25(0);
    }
  }

  else if (a3)
  {
    a3(0);
  }
}

double sub_1A40CCD28(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v50[3] = a8;
  v50[1] = a7;
  sub_1A3C5646C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v50[2] = v50 - v17;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v38 = a5;
      v19 = sub_1A5246F04();
      v20 = sub_1A524D264();

      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_23;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138739971;
      *(v21 + 4) = v38;
      *v22 = v38;
      v39 = v38;
      v24 = "Cancelled searching for %{sensitive}@";
      goto LABEL_16;
    }

    if (a2 == 3)
    {
      v50[0] = a1;
      v25 = a5;
      v26 = a3;
      v19 = sub_1A5246F04();
      v27 = sub_1A524D244();

      if (os_log_type_enabled(v19, v27))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138740227;
        *(v21 + 4) = v25;
        *v22 = v25;
        *(v21 + 12) = 2112;
        v28 = v25;
        if (a3)
        {
          v29 = a3;
          v30 = _swift_stdlib_bridgeErrorToNSError();
          v31 = v30;
        }

        else
        {
          v30 = 0;
          v31 = 0;
        }

        *(v21 + 14) = v30;
        v22[1] = v31;
        v40 = "Failed searching for %{sensitive}@ with error: %@";
        goto LABEL_21;
      }

LABEL_13:
      a1 = v50[0];
      goto LABEL_23;
    }

LABEL_10:
    v50[0] = a1;
    v32 = a5;
    v33 = a3;
    v19 = sub_1A5246F04();
    v27 = sub_1A524D244();

    if (os_log_type_enabled(v19, v27))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138740227;
      *(v21 + 4) = v32;
      *v22 = v32;
      *(v21 + 12) = 2112;
      v34 = v32;
      if (a3)
      {
        v35 = a3;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        v37 = v36;
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      *(v21 + 14) = v36;
      v22[1] = v37;
      v40 = "Unknown status for searching %{sensitive}@ with error: %@";
LABEL_21:
      _os_log_impl(&dword_1A3C1C000, v19, v27, v40, v21, 0x16u);
      sub_1A40D277C(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      a1 = v50[0];
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  if (a2 != 1)
  {
    goto LABEL_10;
  }

  v18 = a5;
  v19 = sub_1A5246F04();
  v20 = sub_1A524D224();

  if (!os_log_type_enabled(v19, v20))
  {
    goto LABEL_23;
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  *v21 = 138739971;
  *(v21 + 4) = v18;
  *v22 = v18;
  v23 = v18;
  v24 = "Successfully searched for %{sensitive}@";
LABEL_16:
  _os_log_impl(&dword_1A3C1C000, v19, v20, v24, v21, 0xCu);
  sub_1A3CB65E4(v22);
LABEL_22:
  MEMORY[0x1A590EEC0](v22, -1, -1);
  MEMORY[0x1A590EEC0](v21, -1, -1);
LABEL_23:

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v43 = Strong + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__currentQueryID;
    if (*(Strong + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__currentQueryID + 4) != 1)
    {
      v44 = Strong;
      KeyPath = swift_getKeyPath();
      v46.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      v50[-2] = v44;
      LODWORD(v50[-1]) = 0;
      BYTE4(v50[-1]) = 1;
      (*(*v44 + 512))(v46);

      if (a2 == 2)
      {
        return result;
      }

LABEL_29:
      v47 = [a1 searchSuggestions];
      if (v47)
      {
        v48 = v47;
        sub_1A3C52C70(0, &qword_1EB1209D8, 0x1E6978A98);
        sub_1A524CA34();
      }

      v49 = a5;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    *v43 = 0;
    *(v43 + 4) = 1;
  }

  if (a2 != 2)
  {
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1A40CD684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A40CD6C0, 0, 0);
}

uint64_t sub_1A40CD6C0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_1A40CD800;
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = *(v0 + 48);

    return sub_1A40CDD00(v7, v5, v6, v3, v4);
  }

  else
  {
    *(v0 + 128) = sub_1A524CDC4() & 1;
    sub_1A524CC54();
    *(v0 + 120) = sub_1A524CC44();
    v10 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A40CD9B8, v10, v9);
  }
}

uint64_t sub_1A40CD800()
{

  return MEMORY[0x1EEE6DFA0](sub_1A40CD918, 0, 0);
}

uint64_t sub_1A40CD918()
{
  *(v0 + 128) = sub_1A524CDC4() & 1;
  sub_1A524CC54();
  *(v0 + 120) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40CD9B8, v2, v1);
}

uint64_t sub_1A40CD9B8()
{
  v1 = *(v0 + 88);

  if (v1)
  {
    (*(v0 + 88))((*(v0 + 128) & 1) == 0);
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_1A40CDA3C()
{
  v0 = MEMORY[0x1E69E6530];
  sub_1A3C4D594(0, &qword_1EB1261E0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A52FC9F0;
  *(v1 + 32) = xmmword_1A52FCA10;
  sub_1A52414C4();
  sub_1A40D2B54(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_1A3C4D594(0, &qword_1EB126E90, v0, MEMORY[0x1E69E62F8]);
  sub_1A40D2B9C();
  sub_1A524E224();
  if ([objc_opt_self() isMemoryCreationLocationAutocompleteEnabled])
  {
    sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
    v2 = [swift_getObjCClassFromMetadata() sharedInstance];
    v3 = [v2 locationAutocompleteSuggestionsMode];

    if (v3)
    {
      sub_1A5241484();
    }
  }
}

void sub_1A40CDBCC()
{
  swift_getKeyPath();
  v1 = (*v0 + 504);
  v2 = *v1;
  (*v1)();

  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__resultProcessingTask))
  {
    sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);

    sub_1A524CD94();
  }

  swift_getKeyPath();
  v2();

  if ((*(v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__currentQueryID + 4) & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__currentQueryID);
    v4 = v0[5];

    [v4 cancelQueryWithQueryId_];
  }
}

uint64_t sub_1A40CDD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_1A52411C4();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = MEMORY[0x1E69E6720];
  sub_1A3C5646C(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  v6[21] = swift_task_alloc();
  v9 = sub_1A5241264();
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();
  v10 = sub_1A5241284();
  v6[25] = v10;
  v6[26] = *(v10 - 8);
  v6[27] = swift_task_alloc();
  sub_1A3C5646C(0, &qword_1EB12AF88, MEMORY[0x1E6969610], v8);
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A40CDF2C, 0, 0);
}

uint64_t sub_1A40CDF2C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 96);
  if (v7 >> 62)
  {
    v10 = sub_1A524E2B4();
    if (sub_1A524E2B4() < 0)
    {
      __break(1u);
    }

    if (v10 >= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = v10;
    }

    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 3;
    }

    v8 = sub_1A524E2B4();
    if (v8 >= v12)
    {
LABEL_6:
      if ((v7 & 0xC000000000000001) != 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8 >= v9)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return MEMORY[0x1EEE2A5B8](v8, a3, a4, a5, a6);
}

void sub_1A40CE494(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1A40CE5D4, 0, 0);
  }
}

void sub_1A40CE5D4()
{
  v0[10] = v0[32];
  v0[34] = sub_1A524CC54();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40CE67C()
{
  v1 = v0[17];

  KeyPath = swift_getKeyPath();
  v3 = *v1;
  v4 = *(*v1 + 504);
  v0[36] = v4;
  v0[37] = (v3 + 504) & 0xFFFFFFFFFFFFLL | 0x2AD000000000000;
  v4(KeyPath);

  v5 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__textChecker;
  v0[38] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__textChecker;
  if (!*(v1 + v5))
  {
    sub_1A40CBBE4([objc_allocWithZone(MEMORY[0x1E69DD080]) init]);
  }

  return MEMORY[0x1EEE6DFA0](sub_1A40CE778, 0, 0);
}

uint64_t sub_1A40CE778(__n128 a1)
{
  v2 = *(v1 + 256);
  if (v2 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= 1)
  {
    sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
    v4 = [swift_getObjCClassFromMetadata() sharedInstance];
    v5 = [v4 autocompleteSuggestionsMode];

    if (v5 == 1)
    {
      v6 = *(v1 + 216);
      v7 = *(v1 + 224);
      v8 = *(v1 + 200);
      v9 = *(v1 + 208);
      v11 = *(v1 + 184);
      v10 = *(v1 + 192);
      v12 = *(v1 + 176);
      sub_1A5241244();
      sub_1A5241274();
      (*(v9 + 8))(v6, v8);
      sub_1A5241254();
      (*(v11 + 8))(v10, v12);
      v13 = sub_1A5241214();
      v14 = *(v13 - 8);
      v15 = (*(v14 + 48))(v7, 1, v13);
      v16 = *(v1 + 224);
      if (v15 == 1)
      {
        sub_1A40D2AA0(*(v1 + 224), &qword_1EB12AF88, MEMORY[0x1E6969610]);
      }

      else
      {
        v17 = *(v1 + 200);
        v18 = *(v1 + 208);
        v19 = *(v1 + 168);
        v21 = *(v1 + 120);
        v20 = *(v1 + 128);
        v35 = *(v1 + 104);
        *(v1 + 312) = sub_1A5241204();
        *(v1 + 320) = v22;
        (*(v14 + 8))(v16, v13);
        *(v1 + 16) = v35;
        *(v1 + 32) = v21;
        *(v1 + 40) = v20;
        (*(v18 + 56))(v19, 1, 1, v17);
        sub_1A3D5F9DC();
        v23 = sub_1A524E014();
        v25 = v24;
        v27 = v26;
        sub_1A40D2AA0(v19, &qword_1EB126008, MEMORY[0x1E6969770]);
        if ((v27 & 1) == 0)
        {
          *(v1 + 48) = v23;
          v33 = *(v1 + 104);
          v34 = *(v1 + 112);
          *(v1 + 56) = v25;
          *(v1 + 64) = v33;
          *(v1 + 72) = v34;
          sub_1A3F97B00();
          sub_1A40D2B54(&qword_1EB12F5D0, sub_1A3F97B00, MEMORY[0x1E69E66D8]);
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }
    }
  }

  v28 = sub_1A524CDC4();
  *(v1 + 392) = *(v1 + 80);
  if (v28)
  {

    v29 = *(v1 + 8);

    return v29();
  }

  else
  {
    *(v1 + 400) = sub_1A524CC44();
    v32 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A40CF4D4, v32, v31);
  }
}

uint64_t sub_1A40CEBBC()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[17];

  swift_getKeyPath();
  v2();

  v4 = *(v3 + v1);
  v0[44] = v4;
  v5 = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A40CEC6C, 0, 0);
}

uint64_t sub_1A40CEC6C()
{
  if (!v0[44])
  {

    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      sub_1A524E554();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A40D0394(MEMORY[0x1E69E7CC0], v3);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v0[45] = sub_1A524C634();
  v0[46] = sub_1A524C634();

  v0[47] = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40CF074, v2, v1);
}

uint64_t sub_1A40CF074()
{
  v1 = v0[46];
  v3 = v0[44];
  v2 = v0[45];
  v5 = v0[41];
  v4 = v0[42];

  v0[48] = [v3 completionsForPartialWordRange:v5 inString:v4 language:{v2, v1}];

  return MEMORY[0x1EEE6DFA0](sub_1A40CF12C, 0, 0);
}

void sub_1A40CF12C(__n128 a1)
{
  v2 = *(v1 + 384);
  if (v2)
  {
    v3 = sub_1A524CA34();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (*(v3 + 16))
  {
    sub_1A524E554();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A40D0394(MEMORY[0x1E69E7CC0], a1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40CF4D4()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 136);

  KeyPath = swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  (*(*v2 + 512))(KeyPath, sub_1A40D2C88, v4, MEMORY[0x1E69E7CA8] + 8);

  return MEMORY[0x1EEE6DFA0](sub_1A40CF5EC, 0, 0);
}

uint64_t sub_1A40CF5EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A40CF67C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v5 = sub_1A52411C4();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[6] = v6;
  v3[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A40CF744, 0, 0);
}

uint64_t sub_1A40CF744()
{
  v1 = [*(v0 + 56) personUUIDs];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A524CA34();

    if (v3[2])
    {
      *(v0 + 64) = v3[4];
      *(v0 + 72) = v3[5];
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v4 = [*(v0 + 56) nextTokenSuggestions];
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = v4;
  sub_1A3C52C70(0, &qword_1EB1209D8, 0x1E6978A98);
  v6 = sub_1A524CA34();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_17:

    goto LABEL_18;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1A59097F0](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;

  v10 = [v9 text];
  v11 = sub_1A524C674();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

LABEL_18:
    v9 = [*(v0 + 56) text];
    v29 = sub_1A524C674();
    v31 = v32;
    goto LABEL_19;
  }

  v15 = *(v0 + 56);
  v16 = sub_1A524C634();
  v17 = PXMemoryCreationLocalizedString(v16);

  sub_1A524C674();
  sub_1A3E072BC(0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1A52FC9F0;
  v19 = [v15 text];
  v20 = sub_1A524C674();
  v22 = v21;

  v23 = MEMORY[0x1E69E6158];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v24 = sub_1A3D710E8();
  *(v18 + 64) = v24;
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  v25 = [v9 text];
  v26 = sub_1A524C674();
  v28 = v27;

  *(v18 + 96) = v23;
  *(v18 + 104) = v24;
  *(v18 + 72) = v26;
  *(v18 + 80) = v28;
  v29 = sub_1A524C6C4();
  v31 = v30;

LABEL_19:
  v34 = *(v0 + 48);
  v33 = *(v0 + 56);
  v35 = *(v0 + 32);
  v36 = *(v0 + 40);

  type metadata accessor for GenerativeStoryPredictiveSuggestion(0, v37);
  sub_1A52411B4();
  v38 = sub_1A5241164();
  v40 = v39;
  (*(v36 + 8))(v34, v35);
  v41 = [v33 matchRangeOfSearchText];
  **(v0 + 16) = sub_1A3FDB8A0(v38, v40, v29, v31, v41, v42, 0, v33);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1A40CFC14(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A40CFD14, 0, 0);
}

uint64_t sub_1A40CFD14(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);
  if (v3)
  {
    v4 = *(v2 + 56);
    *(v2 + 96) = type metadata accessor for GenerativeStoryPredictiveSuggestion(0, a2);
    *(v2 + 104) = sub_1A45B02A4();
    *(v2 + 112) = v5;
    *(v2 + 120) = [v4 matchRangeOfSearchText];
    *(v2 + 128) = v6;
    v7 = swift_task_alloc();
    *(v2 + 136) = v7;
    *v7 = v2;
    v7[1] = sub_1A40D0120;

    return sub_1A40D0484(v3);
  }

  v9 = [*(v2 + 56) nextTokenSuggestions];
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v9;
  sub_1A3C52C70(0, &qword_1EB1209D8, 0x1E6978A98);
  v11 = sub_1A524CA34();

  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_17:

    goto LABEL_18;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1A59097F0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = [v13 text];
  v15 = sub_1A524C674();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

LABEL_18:
    v13 = [*(v2 + 56) text];
    v33 = sub_1A524C674();
    v35 = v36;
    goto LABEL_19;
  }

  v19 = *(v2 + 56);
  v20 = sub_1A524C634();
  v21 = PXMemoryCreationLocalizedString(v20);

  sub_1A524C674();
  sub_1A3E072BC(0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A52FC9F0;
  v23 = [v19 text];
  v24 = sub_1A524C674();
  v26 = v25;

  v27 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v28 = sub_1A3D710E8();
  *(v22 + 64) = v28;
  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  v29 = [v13 text];
  v30 = sub_1A524C674();
  v32 = v31;

  *(v22 + 96) = v27;
  *(v22 + 104) = v28;
  *(v22 + 72) = v30;
  *(v22 + 80) = v32;
  v33 = sub_1A524C6C4();
  v35 = v34;

LABEL_19:
  v38 = *(v2 + 48);
  v37 = *(v2 + 56);
  v39 = *(v2 + 32);
  v40 = *(v2 + 40);

  type metadata accessor for GenerativeStoryPredictiveSuggestion(0, v41);
  sub_1A52411B4();
  v42 = sub_1A5241164();
  v44 = v43;
  (*(v40 + 8))(v38, v39);
  v45 = [v37 matchRangeOfSearchText];
  **(v2 + 16) = sub_1A3FDB8A0(v42, v44, v33, v35, v45, v46, 0, v37);

  v47 = *(v2 + 8);

  return v47();
}

uint64_t sub_1A40D0120(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A40D0220, 0, 0);
}

void sub_1A40D0220()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  sub_1A3C4D594(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F8E10;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E6978A98]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40D0394(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v5 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v4);
    v7 = v5 + v4;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1A524E2B4();
  v6 = __OFADD__(v15, v4);
  v7 = v15 + v4;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(v7, 1);
  v8 = *v2;
  v9 = *v2 & 0xFFFFFFFFFFFFFF8;
  sub_1A40D1EE8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1, v10);
  v12 = v11;

  if (v12 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v8;
    return;
  }

  v13 = *(v9 + 16);
  v6 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v6)
  {
    *(v9 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1A40D0484(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A40D04A4, 0, 0);
}

uint64_t sub_1A40D04A4()
{
  v1 = [*(v0 + 40) uuid];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A524C674();
    v5 = v4;

    *(v0 + 56) = v3;
    *(v0 + 64) = v5;
    *(v0 + 72) = objc_opt_self();
    *(v0 + 80) = sub_1A524CC54();
    *(v0 + 88) = sub_1A524CC44();
    v7 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A40D05BC, v7, v6);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1A40D05BC()
{
  v1 = *(v0 + 72);

  *(v0 + 96) = [v1 px_mainScreen];

  return MEMORY[0x1EEE6DFA0](sub_1A40D0644, 0, 0);
}

uint64_t sub_1A40D0644(__n128 a1)
{
  *(v1 + 104) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40D06D0, v3, v2);
}

uint64_t sub_1A40D06D0()
{
  v1 = *(v0 + 96);

  [v1 scale];
  *(v0 + 112) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A40D0750, 0, 0);
}

uint64_t sub_1A40D0750(__n128 a1)
{
  *(v1 + 120) = OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel_suggestionImagesCache;
  *(v1 + 128) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40D07E8, v3, v2);
}

uint64_t sub_1A40D07E8()
{
  v1 = v0[15];
  v2 = v0[6];

  v0[17] = *(v2 + v1);

  return MEMORY[0x1EEE6DFA0](sub_1A40D085C, 0, 0);
}

uint64_t sub_1A40D085C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = v0[7];
  v0[3] = v3;
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  (*(*v1 + 136))(v0 + 2, sub_1A40D26A4, v5);

  v6 = v0[4];
  v7 = v0[1];

  return v7(v6);
}

void sub_1A40D094C(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v4 = [objc_allocWithZone(PXPeopleFaceCropFetchOptions) initWithPerson:a1 targetSize:20.0 displayScale:{20.0, a3}];
  [v4 setCornerStyle_];
  [v4 setIsSynchronous_];
  [v4 setShouldCacheResult_];
  [v4 setDeliveryMode_];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = [objc_opt_self() sharedManager];
  aBlock[4] = sub_1A3EE0BC0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A4044608;
  aBlock[3] = &block_descriptor_42_0;
  v7 = _Block_copy(aBlock);

  [v6 requestFaceCropForOptions:v4 resultHandler:v7];
  _Block_release(v7);

  swift_beginAccess();
  v8 = *(v5 + 16);
  if (v8)
  {
    v21 = *(v5 + 16);
    type metadata accessor for PXGraphicsImageRenderer();
    v9 = v8;
    v10 = sub_1A4A048F0(20.0, 20.0);
    MEMORY[0x1EEE9AC00](v10);
    v19[2] = &v21;
    __asm { FMOV            V0.2D, #20.0 }

    v20 = _Q0;
    sub_1A4A04928(sub_1A40D26B0, v19);
    v17 = v16;

    v18 = v21;
  }

  else
  {

    v17 = 0;
  }

  *a2 = v17;
}

void sub_1A40D0BC0()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40D0C4C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 504))();

  v4 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__cachedPersonsByUUID;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40D0D18(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A40D0D3C, 0, 0);
}

uint64_t sub_1A40D0D3C()
{
  v1 = [*(v0[14] + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel_photoLibrary) librarySpecificFetchOptions];
  v0[15] = v1;
  v2 = [objc_opt_self() px_defaultDetectionTypes];
  if (!v2)
  {
    sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
    sub_1A524CA34();
    v2 = sub_1A524CA14();
  }

  [v1 setIncludedDetectionTypes_];

  v0[16] = sub_1A524CC54();
  v0[17] = sub_1A524CC44();
  v4 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40D0E84, v4, v3);
}

void sub_1A40D0E84()
{
  v1 = *(v0 + 112);

  KeyPath = swift_getKeyPath();
  (*(*v1 + 504))(KeyPath);

  v3 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__cachedPersonsByUUID;
  swift_beginAccess();
  *(v0 + 144) = *(v1 + v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40D0F6C()
{
  if (*(v0[18] + 16) && (v1 = sub_1A3C5DCA4(v0[12], v0[13]), (v2 & 1) != 0))
  {
    v3 = v0[15];
    v4 = *(*(v0[18] + 56) + 8 * v1);

    v19 = v0[1];

    return v19(v4);
  }

  else
  {

    sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = sub_1A524C634();
    v7 = [ObjCClassFromMetadata localIdentifierWithUUID_];

    if (!v7 || (v8 = v0[15], v9 = sub_1A524C674(), v11 = v10, v7, v12 = objc_opt_self(), sub_1A3C4D594(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]), v13 = swift_allocObject(), *(v13 + 16) = xmmword_1A52F8E10, *(v13 + 32) = v9, *(v13 + 40) = v11, v14 = sub_1A524CA14(), , v15 = [v12 fetchPersonsWithLocalIdentifiers:v14 options:v8], v14, v16 = objc_msgSend(v15, sel_firstObject), v0[19] = v16, v15, !v16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    swift_weakInit();
    v0[20] = sub_1A524CC44();
    v18 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A40D12C0, v18, v17);
  }
}

uint64_t sub_1A40D12C0()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1A40D14F4, 0, 0);
}

uint64_t sub_1A40D14F4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A40D1698()
{

  sub_1A3C6B94C(v0 + 24);

  v1 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1A40D17A0()
{
  sub_1A40D1698();

  return swift_deallocClassInstance();
}

void sub_1A40D17F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A40D2948(0);
  v35 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
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
    v14 = v6 + 64;
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
      if ((v35 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v25 = sub_1A524ECE4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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
}

void sub_1A40D1A90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A40D17F8(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A40D1C08();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v24 = (v21[6] + 16 * v11);
    *v24 = a2;
    v24[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v22 = v21[7];
  v23 = *(v22 + 8 * v11);
  *(v22 + 8 * v11) = a1;
}

void sub_1A40D1C08()
{
  v1 = v0;
  sub_1A40D2948(0);
  v2 = *v0;
  v3 = sub_1A524E764();
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

void sub_1A40D1D68(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v2 = 1 << *(a1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    if ((v3 & *(a1 + 64)) != 0)
    {
LABEL_10:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v4 = 0;
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v5 >= ((v2 + 63) >> 6))
      {
        return;
      }

      ++v4;
      if (*(a1 + 64 + 8 * v5))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1A40D1EE8(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1A524E2B4();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_1A524E2B4();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1A3C5646C(0, &qword_1EB131910, type metadata accessor for GenerativeStoryPredictiveSuggestion, MEMORY[0x1E69E62F8]);
          sub_1A40D2868();
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A3E5C4E4(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
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
        type metadata accessor for GenerativeStoryPredictiveSuggestion(0, a2);
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

unint64_t sub_1A40D2084(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A40D2948(0);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A40D217C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel_logger;
  v9 = sub_1A3C4A780();
  v10 = sub_1A5246F24();
  (*(*(v10 - 8) + 16))(v4 + v8, v9, v10);
  *(v4 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel_suggestionLimitToFetch) = 5;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel_suggestionLimitToDisplay) = 3;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel_peopleAndPetSuggestionMinMatchPercent) = 50;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel_locationSuggestionMinMatchPercent) = 30;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__textChecker) = 0;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__resultProcessingTask) = 0;
  v11 = v4 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__currentQueryID;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel_suggestionImagesCache;
  sub_1A40D2310(0);
  *(v4 + v12) = LRUCache.__allocating_init(countLimit:)(0, 1);
  *(v4 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__cachedPersonsByUUID) = sub_1A40D2084(v7);
  sub_1A5241604();
  *(v4 + 32) = a2;
  swift_unknownObjectUnownedInit();
  *(v4 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel_photoLibrary) = a3;
  *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E6978A68]) initWithPhotoLibrary_];
  return v4;
}

void sub_1A40D2310(uint64_t a1)
{
  if (!qword_1EB124FE8)
  {
    sub_1A40D277C(255, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E69E6720]);
    v3 = type metadata accessor for LRUCache(a1, MEMORY[0x1E69E6158], v2, MEMORY[0x1E69E6168]);
    if (!v4)
    {
      atomic_store(v3, &qword_1EB124FE8);
    }
  }
}

double sub_1A40D23A4(void *a1, uint64_t a2, void *a3)
{
  v7 = *(sub_1A5246F24() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1A40CCD28(a1, a2, a3, v3 + v8, *(v3 + v9), *(v3 + v10), *(v3 + v11), *(v3 + v11 + 8), *(v3 + v12), *(v3 + v12 + 8), *(v3 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t type metadata accessor for GenerativeStoryPredictionViewModel(uint64_t a1)
{
  result = qword_1EB1614F0;
  if (!qword_1EB1614F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A40D2504(uint64_t a1)
{
  result = sub_1A5246F24();
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1A40D2638()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__cachedPersonsByUUID;
  swift_beginAccess();
  *(v2 + v3) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40D26D0(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A3D60150;

  return sub_1A40CF67C(a1, a2, v2);
}

void sub_1A40D277C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A40D27E4()
{
  result = qword_1EB120C38;
  if (!qword_1EB120C38)
  {
    sub_1A40D277C(255, &unk_1EB120C40, &qword_1EB1209D8, 0x1E6978A98, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120C38);
  }

  return result;
}

unint64_t sub_1A40D2868()
{
  result = qword_1EB131918;
  if (!qword_1EB131918)
  {
    sub_1A3C5646C(255, &qword_1EB131910, type metadata accessor for GenerativeStoryPredictiveSuggestion, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131918);
  }

  return result;
}

void sub_1A40D2908()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__textChecker);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__textChecker) = v2;
  v4 = v2;
}

void sub_1A40D2948(uint64_t a1)
{
  if (!qword_1EB131928)
  {
    sub_1A3C52C70(255, &qword_1EB1265C0, 0x1E6978980);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131928);
    }
  }
}

uint64_t sub_1A40D29C0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A40CD684(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A40D2AA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C5646C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A40D2B10()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__resultProcessingTask) = *(v0 + 24);
}

uint64_t sub_1A40D2B54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A40D2B9C()
{
  result = qword_1EB126E80;
  if (!qword_1EB126E80)
  {
    sub_1A3C4D594(255, &qword_1EB126E90, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126E80);
  }

  return result;
}

void sub_1A40D2C18()
{
  v1 = *(v0 + 28);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore34GenerativeStoryPredictionViewModel__currentQueryID;
  *v2 = *(v0 + 24);
  *(v2 + 4) = v1;
}

uint64_t sub_1A40D2CEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE500000000000000;
    v11 = 0x6F6F436469766976;
    v12 = 0xE800000000000000;
    if (a1 == 2)
    {
      v12 = 0xE90000000000006CLL;
    }

    else
    {
      v11 = 0x636974616D617264;
    }

    v13 = 0x7261576469766976;
    if (a1)
    {
      v10 = 0xE90000000000006DLL;
    }

    else
    {
      v13 = 0x6469766976;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1869508461;
    v5 = 0x6F747265766C6973;
    v6 = 0xEA0000000000656ELL;
    if (a1 != 7)
    {
      v5 = 1919512430;
      v6 = 0xE400000000000000;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0xEC0000006D726157;
    if (a1 != 4)
    {
      v7 = 0xEC0000006C6F6F43;
    }

    if (a1 <= 5u)
    {
      v8 = 0x636974616D617264;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE90000000000006CLL;
        if (v8 != 0x6F6F436469766976)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v14 = 0xE800000000000000;
        if (v8 != 0x636974616D617264)
        {
          goto LABEL_53;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE90000000000006DLL;
      if (v8 != 0x7261576469766976)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      if (v8 != 0x6469766976)
      {
        goto LABEL_53;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 1836212567;
    }

    else
    {
      v15 = 1819242307;
    }

    v14 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v8 != 0x636974616D617264)
    {
      goto LABEL_53;
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE400000000000000;
    if (v8 != 1869508461)
    {
      goto LABEL_53;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xEA0000000000656ELL;
    if (v8 != 0x6F747265766C6973)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v14 = 0xE400000000000000;
    if (v8 != 1919512430)
    {
      goto LABEL_53;
    }
  }

  if (v9 != v14)
  {
LABEL_53:
    v16 = sub_1A524EAB4();
    goto LABEL_54;
  }

  v16 = 1;
LABEL_54:

  return v16 & 1;
}

uint64_t PhotoStyleElement.name.getter()
{
  v1 = v0 + OBJC_IVAR___PXPhotoStyleElement_semanticStyle;
  swift_beginAccess();
  if (*(v1 + 8) || (v2 = v0 + OBJC_IVAR___PXPhotoStyleElement_legacyFilter, swift_beginAccess(), *(v2 + 8)))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}