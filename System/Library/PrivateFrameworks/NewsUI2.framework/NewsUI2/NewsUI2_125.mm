void sub_2194AABE8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_21879F984(0, a2, a3, a4, a5);
  v8 = sub_219BF72C4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v29 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v8 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      v21 = sub_219BF6DC4();
      v22 = -1 << *(v9 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v29;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v6 = v9;
  }
}

void sub_2194AADF0(uint64_t a1)
{
  v2 = v1;
  v34 = sub_219BF1FE4();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2194B6EB4(0);
  v7 = sub_219BF72C4();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_218751238(&unk_27CC0F7E0, MEMORY[0x277D336F0], MEMORY[0x277D336F8]);
      v21 = sub_219BF52E4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void sub_2194AB100(uint64_t a1)
{
  v2 = v1;
  v34 = sub_219BDC104();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2194B5E24(0);
  v7 = sub_219BF72C4();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_218751238(&qword_280EE9BC8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
      v21 = sub_219BF52E4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void sub_2194AB410(uint64_t a1)
{
  v2 = v1;
  v34 = sub_219BEAAD4();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2194B6E20(0);
  v7 = sub_219BF72C4();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_218751238(&unk_27CC1AC10, MEMORY[0x277D31B20], MEMORY[0x277D31B28]);
      v21 = sub_219BF52E4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void *sub_2194AB720(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    sub_2194ADC8C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_2194AB7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for OfflineFeedManifest.Group(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_2194B7880(a4, &qword_27CC17238, type metadata accessor for OfflineFeedManifest.Group, MEMORY[0x277D84220], sub_2187E72D4);
  }

  if (v17 < 1)
  {
    return sub_2194B7880(a4, &qword_27CC17238, type metadata accessor for OfflineFeedManifest.Group, MEMORY[0x277D84220], sub_2187E72D4);
  }

  result = sub_2194B7980(a4, v15, type metadata accessor for OfflineFeedManifest.Group);
  if (v12 >= v17)
  {
    return sub_2194B7880(a4, &qword_27CC17238, type metadata accessor for OfflineFeedManifest.Group, MEMORY[0x277D84220], sub_2187E72D4);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2194ABA10(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_219BF7214();
  }

  return sub_219BF7364();
}

void sub_2194ABB00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SearchFilterItem(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v27 - v11;
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
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_2194B7980(*(a4 + 48) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for SearchFilterItem);
      v23 = v22;
      v24 = v30;
      sub_218754608(v23, v30, type metadata accessor for SearchFilterItem);
      sub_218754608(v24, a2, type metadata accessor for SearchFilterItem);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
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
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_2194ABD64(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_2194ABED4(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2194AC028(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_2194AC128(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
      v15 = *v14;
      LOBYTE(v14) = *(v14 + 8);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v14;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_2194AC28C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_2194AC3A8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        swift_unknownObjectRetain();
        goto LABEL_24;
      }

      ++v11;
      swift_unknownObjectRetain();
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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_2194AC514(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t *sub_2194AC7D8(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_219BF71C4();
  sub_2186C6148(0, a5, a6);
  sub_21879FA10(a7, a5, a6);
  result = sub_219BF5D94();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_219BF7244())
      {
        goto LABEL_30;
      }

      sub_2186C6148(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void sub_2194ACA08(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_219BE18D4();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
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
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
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
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
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
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_2194ACCAC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2194ACE00(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_2194ACF3C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v39 = a6;
  v40 = a7;
  v11 = a5(0);
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = a1;
    v36 = a3;
    v20 = 0;
    v34 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[7];
      v27 = v37;
      v28 = *(v38 + 72);
      sub_2194B7980(v26 + v28 * (v25 | (v20 << 6)), v37, v39);
      v29 = v27;
      v30 = v40;
      sub_218754608(v29, v15, v40);
      sub_218754608(v15, a2, v30);
      if (v22 == v36)
      {
        a4 = a1;
        a1 = v35;
        goto LABEL_23;
      }

      a2 += v28;
      v31 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v32 = v20 + 1;
    }

    else
    {
      v32 = v21;
    }

    v20 = v32 - 1;
    a1 = v35;
LABEL_23:
    v17 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_2194AD180(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_2194AD2D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE5A04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v4, v9);
      sub_219498044(v11, v7);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

uint64_t sub_2194AD438(uint64_t a1)
{
  v2 = sub_219BF10D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2194B607C(0);
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&qword_280E90970, MEMORY[0x277D33130], MEMORY[0x277D33138]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&qword_280E90968, MEMORY[0x277D33130], MEMORY[0x277D33140]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2194AD74C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2194B633C(0, &unk_280E8D620, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
    v3 = sub_219BF72E4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_219BF7AA4();

      sub_219BF5524();
      result = sub_219BF7AE4();
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
          result = sub_219BF78F4();
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
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2194AD8D4(uint64_t a1)
{
  v39 = type metadata accessor for SearchFilterItem(0);
  v2 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v33 - v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B79E8(0);
    v8 = sub_219BF72E4();
    v9 = 0;
    v10 = *(v2 + 80);
    v34 = v8 + 56;
    v35 = a1 + ((v10 + 32) & ~v10);
    v11 = *(v2 + 72);
    v33 = v7;
    while (1)
    {
      v37 = v9;
      v12 = v40;
      sub_2194B7980(v35 + v11 * v9, v40, type metadata accessor for SearchFilterItem);
      sub_219BF7AA4();
      v13 = *v12;
      v14 = *(v12 + 8);
      sub_219BF5524();
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = *(v12 + 32);
      MEMORY[0x21CECE850](v17);
      v36 = v15;
      v18 = v34;
      v41 = v16;
      sub_219BF5524();
      v19 = *(v39 + 24);
      sub_219BDBD34();
      sub_218751238(&qword_27CC1AD70, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      v38 = v19;
      sub_219BF52F4();
      v20 = sub_219BF7AE4();
      v21 = -1 << *(v8 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      v24 = *(v18 + 8 * (v22 >> 6));
      v25 = 1 << v22;
      if (((1 << v22) & v24) != 0)
      {
        break;
      }

LABEL_22:
      *(v18 + 8 * v23) = v24 | v25;
      result = sub_218754608(v40, *(v8 + 48) + v22 * v11, type metadata accessor for SearchFilterItem);
      v30 = *(v8 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        __break(1u);
        return result;
      }

      *(v8 + 16) = v32;
LABEL_4:
      v9 = v37 + 1;
      if (v37 + 1 == v33)
      {
        return v8;
      }
    }

    v26 = ~v21;
    v27 = v36;
    while (1)
    {
      sub_2194B7980(*(v8 + 48) + v22 * v11, v4, type metadata accessor for SearchFilterItem);
      v28 = *v4 == v13 && *(v4 + 1) == v14;
      if (!v28 && (sub_219BF78F4() & 1) == 0)
      {
        goto LABEL_8;
      }

      if (v4[32])
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v17)
      {
        goto LABEL_8;
      }

      if (*(v4 + 2) == v27 && *(v4 + 3) == v41 || (sub_219BF78F4()) && (sub_219BDBC94())
      {
        sub_2194B5710(v4, type metadata accessor for SearchFilterItem);
        sub_2194B5710(v40, type metadata accessor for SearchFilterItem);
        goto LABEL_4;
      }

LABEL_8:
      sub_2194B5710(v4, type metadata accessor for SearchFilterItem);
      v22 = (v22 + 1) & v26;
      v23 = v22 >> 6;
      v24 = *(v18 + 8 * (v22 >> 6));
      v25 = 1 << v22;
      if ((v24 & (1 << v22)) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2194ADC8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v29 = a4;
  v25 = a2;
  v26 = a1;
  v6 = type metadata accessor for SearchFilterItem(0);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    sub_2194B7980(*(v30 + 48) + *(v28 + 72) * v20, v8, type metadata accessor for SearchFilterItem);
    v21 = v29(v8);
    sub_2194B5710(v8, type metadata accessor for SearchFilterItem);
    if (v4)
    {
      return;
    }

    if ((v21 & 1) == 0)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:
        v23 = v30;

        sub_21987C46C(v26, v25, v27, v23);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_2194ADEA4(uint64_t a1, uint64_t (*a2)(char *))
{
  v30 = a2;
  v32 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for SearchFilterItem(0);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(a1 + 32);
  v8 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v25 = v8;
    v27 = &v25;
    MEMORY[0x28223BE20](v5);
    v26 = &v25 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v9);
    v28 = 0;
    v8 = 0;
    v31 = a1;
    v11 = *(a1 + 56);
    a1 += 56;
    v10 = v11;
    v12 = 1 << *(a1 - 24);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v10;
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v19 = v16 | (v8 << 6);
      sub_2194B7980(*(v31 + 48) + *(v29 + 72) * v19, v7, type metadata accessor for SearchFilterItem);
      v20 = v30(v7);
      sub_2194B5710(v7, type metadata accessor for SearchFilterItem);
      if (v2)
      {

        return swift_willThrow();
      }

      if ((v20 & 1) == 0)
      {
        *&v26[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
          return sub_21987C46C(v26, v25, v28, v31);
        }
      }
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return sub_21987C46C(v26, v25, v28, v31);
      }

      v18 = *(a1 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = sub_2194AB720(v23, v8, a1, v30);

  result = MEMORY[0x21CECF960](v23, -1, -1);
  if (!v2)
  {
    return v24;
  }

  return result;
}

unint64_t sub_2194AE1DC(uint64_t a1)
{
  sub_21872C1F4(0, &unk_27CC1AA50, type metadata accessor for CuratedMagazineFeedGroupKnobs, MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &qword_280E8D228, type metadata accessor for CuratedMagazineFeedGroupKnobs, MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &unk_27CC1AA50, type metadata accessor for CuratedMagazineFeedGroupKnobs, MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for CuratedMagazineFeedGroupKnobs(0);
      result = sub_218754608(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for CuratedMagazineFeedGroupKnobs);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AE414(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2194B7A7C();
    v3 = sub_219BF75B4();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_21870F700(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2194AE52C(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 16) == *(v2 + 16) && *(a1 + 24) == *(v2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_219BF78F4() & 1;
  }
}

unint64_t sub_2194AE5BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2194B4268(0);
    v3 = sub_219BF75B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_2188198D8(v6, v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AE724(uint64_t a1)
{
  sub_21872C1F4(0, &qword_280E8F7A0, MEMORY[0x277D32720], MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &qword_27CC1AA18, MEMORY[0x277D32720], MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &qword_280E8F7A0, MEMORY[0x277D32720], MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_219BEF814();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AE960(uint64_t a1)
{
  sub_21872C1F4(0, &qword_280E8F7F0, type metadata accessor for TagFeedModelPlaceholder, MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &unk_280E8D268, type metadata accessor for TagFeedModelPlaceholder, MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &qword_280E8F7F0, type metadata accessor for TagFeedModelPlaceholder, MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for TagFeedModelPlaceholder(0);
      result = sub_218754608(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for TagFeedModelPlaceholder);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AEC1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2194B4314(0);
    v3 = sub_219BF75B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_2194B7980(v4, &v13, sub_218A471D4);
      v5 = v13;
      v6 = v14;
      result = sub_21870F700(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2186CB1F0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AED40(uint64_t a1)
{
  sub_21872C1F4(0, &qword_280E8F800, MEMORY[0x277D34D40], MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &qword_280E8D308, MEMORY[0x277D34D40], MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &qword_280E8F800, MEMORY[0x277D34D40], MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_219BE3D44();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AEF9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2194B7D34(0, a2, a3, MEMORY[0x277D84460]);
    v5 = sub_219BF75B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21870F700(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AF0A8(uint64_t a1)
{
  sub_2194B5BF8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B5B4C(0);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B7980(v10, v6, sub_2194B5BF8);
      result = sub_2187A9070(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
      sub_218754608(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      v17 = v8[7];
      v18 = type metadata accessor for EngagementUpsellTriggerState(0);
      result = sub_218754608(v6 + v9, v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for EngagementUpsellTriggerState);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AF2AC(uint64_t a1)
{
  sub_21872C1F4(0, &qword_280E8F788, MEMORY[0x277D335C8], MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &unk_280E8D1E8, MEMORY[0x277D335C8], MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &qword_280E8F788, MEMORY[0x277D335C8], MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_219BF1D54();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AF4E8(uint64_t a1)
{
  sub_21872C1F4(0, &unk_280E8F810, MEMORY[0x277CC9578], MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &unk_280E8D350, MEMORY[0x277CC9578], MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &unk_280E8F810, MEMORY[0x277CC9578], MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_219BDBD34();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AF724(uint64_t a1)
{
  sub_21872C1F4(0, &unk_27CC1AA40, type metadata accessor for CuratedTagFeedGroupKnobs, MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &unk_280E8D258, type metadata accessor for CuratedTagFeedGroupKnobs, MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &unk_27CC1AA40, type metadata accessor for CuratedTagFeedGroupKnobs, MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for CuratedTagFeedGroupKnobs(0);
      result = sub_218754608(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for CuratedTagFeedGroupKnobs);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AF95C(uint64_t a1)
{
  sub_21872C1F4(0, &unk_27CC1AA20, type metadata accessor for SportsOnboardingTagFeedGroupKnobs, MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &unk_280E8D208, type metadata accessor for SportsOnboardingTagFeedGroupKnobs, MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &unk_27CC1AA20, type metadata accessor for SportsOnboardingTagFeedGroupKnobs, MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for SportsOnboardingTagFeedGroupKnobs(0);
      result = sub_218754608(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AFB94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2194B2834();
    v3 = sub_219BF75B4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_219320C04(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AFC64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2194B2774();
    v3 = sub_219BF75B4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_218B87528(v7, v8);
      result = sub_21870F700(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AFD8C(uint64_t a1)
{
  sub_21872C1F4(0, &qword_27CC1A8F8, MEMORY[0x277D325F0], MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &qword_27CC1A900, MEMORY[0x277D325F0], MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &qword_27CC1A8F8, MEMORY[0x277D325F0], MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_219BEF4C4();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194AFFC8(uint64_t a1)
{
  sub_21872C1F4(0, &qword_27CC1AC98, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs, MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &qword_27CC1ACA0, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs, MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &qword_27CC1AC98, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs, MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs(0);
      result = sub_218754608(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B0200(uint64_t a1)
{
  sub_21872C1F4(0, &qword_27CC1ACA8, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs, MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &qword_27CC1ACB0, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs, MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &qword_27CC1ACA8, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs, MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs(0);
      result = sub_218754608(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B0438(uint64_t a1)
{
  sub_21872C1F4(0, &unk_280E8F7B8, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs, MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &qword_27CC1AC90, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs, MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &unk_280E8F7B8, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs, MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs(0);
      result = sub_218754608(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B0670(uint64_t a1)
{
  sub_21872C1F4(0, &unk_280E8F7D8, type metadata accessor for CuratedTodayFeedGroupKnobs, MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &unk_280E8D240, type metadata accessor for CuratedTodayFeedGroupKnobs, MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &unk_280E8F7D8, type metadata accessor for CuratedTodayFeedGroupKnobs, MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for CuratedTodayFeedGroupKnobs(0);
      result = sub_218754608(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for CuratedTodayFeedGroupKnobs);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B08C8(uint64_t a1)
{
  sub_21872C1F4(0, &qword_27CC1AC50, MEMORY[0x277D33A08], MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &qword_27CC1AC48, MEMORY[0x277D33A08], MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &qword_27CC1AC50, MEMORY[0x277D33A08], MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_219BF28F4();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B0B04(uint64_t a1)
{
  sub_21872C1F4(0, &qword_280E8F790, MEMORY[0x277D32AC0], MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &qword_27CC1AAC8, MEMORY[0x277D32AC0], MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &qword_280E8F790, MEMORY[0x277D32AC0], MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_219BEFE14();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B0D40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2194B2894();
    v3 = sub_219BF75B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21870F700(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B0E30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2194B5620();
    v3 = sub_219BF75B4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21870F700(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B0F38(uint64_t a1)
{
  sub_21879D638(0, &qword_27CC1AAD0, MEMORY[0x277D6D240], MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B5FE0(0);
    v8 = sub_219BF75B4();
    v9 = &v6[*(v3 + 48)];
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    v12 = MEMORY[0x277D837D0];
    while (1)
    {
      sub_218819864(v10, v6, &qword_27CC1AAD0, MEMORY[0x277D6D240], v12, sub_21879D638);
      result = sub_21931F048(v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v8[6];
      v17 = sub_219BE5854();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6, v17);
      v18 = (v8[7] + 16 * v15);
      v19 = *(v9 + 1);
      *v18 = *v9;
      v18[1] = v19;
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B11E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2194B62A0(0);
    v3 = sub_219BF75B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21870F700(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B1310(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2194B2708(0, a2, a3, a4, sub_2186C6148);
    v6 = sub_219BF75B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      v11 = v10;
      result = sub_21870F700(v8, v9);
      if (v13)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v6[6] + 16 * result);
      *v14 = v8;
      v14[1] = v9;
      *(v6[7] + 8 * result) = v11;
      v15 = v6[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v6[2] = v17;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B141C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2194B55BC();
    v3 = sub_219BF75B4();
    v4 = a1 + 32;

    v5 = MEMORY[0x277D84F70];
    v6 = MEMORY[0x277D84030];
    while (1)
    {
      sub_218819864(v4, v15, &unk_280E8D750, v6, v5 + 8, sub_218831BDC);
      result = sub_21931EECC(v15);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 40 * result;
      v10 = v15[0];
      v11 = v15[1];
      *(v9 + 32) = v16;
      *v9 = v10;
      *(v9 + 16) = v11;
      result = sub_218751558(&v17, (v3[7] + 32 * result));
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B158C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2194B6804(0);
    v3 = sub_219BF75B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      v9 = v6;
      result = sub_21931F2C4(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v12 = (v3[7] + 16 * result);
      *v12 = v9;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B1684(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21930EEC4(0);
    v3 = sub_219BF75B4();

    for (i = (a1 + 64); ; i += 5)
    {
      v6 = *(i - 4);
      v5 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21931F2C4(v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      v12 = (v3[7] + 32 * result);
      *v12 = v5;
      v12[1] = v7;
      v12[2] = v8;
      v12[3] = v9;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B17A0(uint64_t a1)
{
  sub_21872C1F4(0, &qword_27CC1AD90, type metadata accessor for OfflineFeedManifest, &type metadata for OfflineFeedKind);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2187543A4(0, &unk_280E8D3E0, type metadata accessor for OfflineFeedManifest, sub_218754424, &type metadata for OfflineFeedKind);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &qword_27CC1AD90, type metadata accessor for OfflineFeedManifest, &type metadata for OfflineFeedKind);
      result = sub_2187539B8(*v6, *(v6 + 1));
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 16 * result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for OfflineFeedManifest(0);
      result = sub_218754608(&v6[v9], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for OfflineFeedManifest);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B19DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2194B6A7C();
    v3 = sub_219BF75B4();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = sub_21870F700(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v9;
      v14[3] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B1B0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2194B2708(0, a2, a3, a4, sub_2186D6710);
    v6 = sub_219BF75B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      swift_unknownObjectRetain();
      result = sub_21870F700(v8, v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v6[6] + 16 * result);
      *v13 = v8;
      v13[1] = v9;
      *(v6[7] + 8 * result) = v10;
      v14 = v6[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v6[2] = v16;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B1C58(uint64_t a1)
{
  sub_21872C1F4(0, &qword_280E8F770, MEMORY[0x277D34648], MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B7D34(0, &qword_27CC23180, MEMORY[0x277D34648], MEMORY[0x277D84460]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2194B77BC(v10, v6, &qword_280E8F770, MEMORY[0x277D34648], MEMORY[0x277D837D0]);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_219BF4C84();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2194B1EB0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2194B5AD0(0, a2, a3, a4);
    v6 = sub_219BF75B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = sub_21870F700(v8, v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v6[6] + 16 * result);
      *v13 = v8;
      v13[1] = v9;
      *(v6[7] + 8 * result) = v10;
      v14 = v6[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v6[2] = v16;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2194B1FF0(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_219497B60(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_2194B2070(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v3 += 16;
      sub_219498C40(v7, v4, v5);
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_2194B20D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for SearchFilterItem(0) - 8);
  v9 = *(v8 + 72);
  v10 = (((*(v8 + 80) + 32) & ~*(v8 + 80)) + a1 + 24);
  while (1)
  {
    v11 = *(v10 - 1) == a2 && *v10 == a3;
    if (v11 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    v10 = (v10 + v9);
    if (v3 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2194B21CC(uint64_t a1)
{
  v2 = sub_219BE5A04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2194B54F4(0);
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&qword_280EE5E20, MEMORY[0x277D31AD0], MEMORY[0x277D31AD8]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&unk_280EE5E10, MEMORY[0x277D31AD0], MEMORY[0x277D31AE0]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2194B24E0()
{
  if (!qword_27CC1A8B8)
  {
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A8B8);
    }
  }
}

uint64_t sub_2194B2540(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_21871AEC0(255, a2, a3, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2194B25A4(uint64_t a1)
{
  if (!qword_27CC1A8D0)
  {
    type metadata accessor for SearchFilterItem(255);
    sub_218751238(&unk_27CC0F930, type metadata accessor for SearchFilterItem, &protocol conformance descriptor for SearchFilterItem);
    v1 = sub_219BF5DA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1A8D0);
    }
  }
}

unint64_t sub_2194B263C()
{
  result = qword_27CC1A8E8;
  if (!qword_27CC1A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A8E8);
  }

  return result;
}

unint64_t sub_2194B2694()
{
  result = qword_27CC1A8F0;
  if (!qword_27CC1A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A8F0);
  }

  return result;
}

void sub_2194B2708(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF75C4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2194B2774()
{
  if (!qword_280E8D360)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D360);
    }
  }
}

void sub_2194B27D4()
{
  if (!qword_280E8FA30)
  {
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FA30);
    }
  }
}

void sub_2194B2834()
{
  if (!qword_280E8D028)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D028);
    }
  }
}

void sub_2194B2894()
{
  if (!qword_280E8D138)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D138);
    }
  }
}

uint64_t sub_2194B28F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for TagModel();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
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
  result = sub_219BF7214();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_219BF7214();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2194B2A30(uint64_t a1)
{
  v2 = sub_219BF3924();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2194B5CFC(0);
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&qword_280E90050, MEMORY[0x277D33FB8], MEMORY[0x277D33FC0]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&qword_280E90048, MEMORY[0x277D33FB8], MEMORY[0x277D33FC8]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2194B2D58(unint64_t result, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = v11 + 32 + 16 * result;
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
      v17 = (v12 + 16 * a3);
      v18 = (v11 + 32 + 16 * a2);
      v19 = 16 * v16;
      v20 = &v18[16 * v16];
      if (v17 != v18 || v17 >= v20)
      {
        memmove(v17, v18, v19);
      }

      v22 = *(v11 + 16);
      v13 = __OFADD__(v22, v14);
      v23 = v22 + v14;
      if (!v13)
      {
        *(v11 + 16) = v23;
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
    *(v12 + 8) = a5 & 1;
    sub_2194B5588(a4, a5 & 1);
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

uint64_t sub_2194B2E6C(uint64_t a1)
{
  v2 = sub_219BDBF74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2194B6584(0);
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&qword_27CC1AB40, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&qword_27CC1AB48, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2194B3180(uint64_t a1)
{
  v2 = sub_219BF0644();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2194B5D90(0);
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&unk_280E90EF0, MEMORY[0x277D32F00], MEMORY[0x277D32F08]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&unk_280E90EE0, MEMORY[0x277D32F00], MEMORY[0x277D32F10]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2194B3494(uint64_t a1)
{
  v2 = sub_219BF0FB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2194B7DA8(0);
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&qword_280E909C8, MEMORY[0x277D330A8], MEMORY[0x277D330B8]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&qword_27CC0F340, MEMORY[0x277D330A8], MEMORY[0x277D330C0]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2194B37D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2187F6AE4(0, a2, a3, a4, MEMORY[0x277D84098]);
    v6 = sub_219BF72E4();
    v7 = 0;
    v8 = v6 + 56;
    v9 = a1 + 32;
    while (1)
    {
      v13 = *(v9 + v7);
      sub_219BF7AA4();
      MEMORY[0x21CECE850](v13);
      result = sub_219BF7AE4();
      v15 = ~(-1 << *(v6 + 32));
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = *(v8 + 8 * v17);
      v19 = 1 << (result & v15);
      v20 = *(v6 + 48);
      if ((v19 & v18) != 0)
      {
        while (*(v20 + v16) != v13)
        {
          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v8 + 8 * (v16 >> 6));
          v19 = 1 << v16;
          if (((1 << v16) & v18) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v8 + 8 * v17) = v19 | v18;
        *(v20 + v16) = v13;
        v10 = *(v6 + 16);
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          __break(1u);
          return result;
        }

        *(v6 + 16) = v12;
      }

      if (++v7 == v4)
      {
        return v6;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2194B395C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2186C6148(0, &qword_280E8DAD8, 0x277D76338);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
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
  result = sub_219BF7214();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_219BF7214();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2194B3AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  sub_2187E72D4(0, a5, a6, MEMORY[0x277D6CF30]);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      result = v7[2];
      v17 = result - v9;
      if (!__OFSUB__(result, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_219BF7214();
    v17 = result - v9;
    if (!__OFSUB__(result, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        result = sub_219BF7214();
      }

      else
      {
        result = v7[2];
      }

      if (!__OFADD__(result, v13))
      {
        v7[2] = result + v13;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v6 > 0)
  {
    *v8 = v10;

    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_2194B3C08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2187F6AE4(0, a2, a3, a4, MEMORY[0x277D84098]);
    v6 = sub_219BF72E4();
    v7 = 0;
    v8 = v6 + 56;
    v31 = v4;
    v32 = a1 + 32;
    v30 = v6;
    while (1)
    {
      v33 = v7;
      v9 = (v32 + 32 * v7);
      v11 = *v9;
      v10 = v9[1];
      v12 = v9[2];
      v13 = *(v9 + 24);
      sub_219BF7AA4();

      sub_219BF5524();
      sub_219BF7AC4();
      if (v13 != 1)
      {
        MEMORY[0x21CECE850](v12);
      }

      result = sub_219BF7AE4();
      v15 = ~(-1 << *(v6 + 32));
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = *(v8 + 8 * v17);
      v19 = 1 << (result & v15);
      v20 = *(v6 + 48);
      if ((v19 & v18) != 0)
      {
        do
        {
          v21 = v20 + 32 * v16;
          result = *v21;
          v22 = *(v21 + 16);
          v23 = *(v21 + 24);
          v24 = *v21 == v11 && *(v21 + 8) == v10;
          if (v24 || (result = sub_219BF78F4(), (result & 1) != 0))
          {
            if (v23)
            {
              if (v13)
              {
                goto LABEL_3;
              }
            }

            else
            {
              if (v22 == v12)
              {
                v25 = v13;
              }

              else
              {
                v25 = 1;
              }

              if ((v25 & 1) == 0)
              {
LABEL_3:

                v6 = v30;
                v4 = v31;
                goto LABEL_4;
              }
            }
          }

          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v8 + 8 * (v16 >> 6));
          v19 = 1 << v16;
        }

        while ((v18 & (1 << v16)) != 0);
        v6 = v30;
        v4 = v31;
        v20 = *(v30 + 48);
      }

      *(v8 + 8 * v17) = v18 | v19;
      v26 = v20 + 32 * v16;
      *v26 = v11;
      *(v26 + 8) = v10;
      *(v26 + 16) = v12;
      *(v26 + 24) = v13;
      v27 = *(v6 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v6 + 16) = v29;
LABEL_4:
      v7 = v33 + 1;
      if (v33 + 1 == v4)
      {
        return v6;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_2194B3E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

void sub_2194B3F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  sub_2186D6710(0, a5, a6);
  swift_arrayDestroy();
  v15 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      v16 = v7[2];
      v17 = v16 - v9;
      if (!__OFSUB__(v16, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    v22 = sub_219BF7214();
    v17 = v22 - v9;
    if (!__OFSUB__(v22, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        v21 = sub_219BF7214();
      }

      else
      {
        v21 = v7[2];
      }

      if (!__OFADD__(v21, v13))
      {
        v7[2] = v21 + v13;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v6 > 0)
  {
    *v8 = v10;
    swift_unknownObjectRetain();
    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }
}

unint64_t sub_2194B40C0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  sub_2186C6148(0, &qword_280E8E770, 0x277D30E08);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_2194B41C8(uint64_t a1)
{
  if (!qword_280E8D050)
  {
    type metadata accessor for AttributeName(255);
    sub_218751238(&qword_280E8DC98, type metadata accessor for AttributeName, &unk_219C09A04);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D050);
    }
  }
}

void sub_2194B4268(uint64_t a1)
{
  if (!qword_280E8D058)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_218751238(&unk_280E8DE00, type metadata accessor for TraitKey, &unk_219C09A48);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D058);
    }
  }
}

void sub_2194B4314(uint64_t a1)
{
  if (!qword_280E8D2E8)
  {
    sub_2186C709C(255, &qword_280EE5A70, MEMORY[0x277D6D608], 1);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D2E8);
    }
  }
}

void sub_2194B4390(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2187F6AE4(0, &qword_280E8D698, sub_2194B74B0, &type metadata for TagFeedPoolServiceContent, MEMORY[0x277D84098]);
    v3 = sub_219BF72E4();
    v4 = 0;
    v5 = v3 + 56;
    v32 = a1 + 32;
    v31 = v1;
    while (1)
    {
      v6 = *(v32 + v4);
      v33 = v4 + 1;
      sub_219BF7AA4();
      sub_219BF5524();

      v7 = sub_219BF7AE4();
      v8 = ~(-1 << *(v3 + 32));
      v9 = v7 & v8;
      v10 = (v7 & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (v7 & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 > 5)
          {
            if (*(*(v3 + 48) + v9) > 8u)
            {
              if (v13 == 9)
              {
                v15 = 0xE700000000000000;
                v22 = 0x657069636572;
LABEL_55:
                v14 = v22 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
                if (v6 > 5)
                {
                  goto LABEL_16;
                }

                goto LABEL_56;
              }

              if (v13 == 10)
              {
                v14 = 0x676E69646E657274;
                v15 = 0xEF73657069636552;
                if (v6 > 5)
                {
                  goto LABEL_16;
                }
              }

              else
              {
                v14 = 0xD000000000000011;
                v15 = 0x8000000219CD6CE0;
                if (v6 > 5)
                {
                  goto LABEL_16;
                }
              }
            }

            else if (v13 == 6)
            {
              v14 = 0xD000000000000011;
              v15 = 0x8000000219CD6CA0;
              if (v6 > 5)
              {
                goto LABEL_16;
              }
            }

            else if (v13 == 7)
            {
              v14 = 0x6867696C68676968;
              v15 = 0xEA00000000007374;
              if (v6 > 5)
              {
                goto LABEL_16;
              }
            }

            else
            {
              v14 = 0x6165486C61636F6CLL;
              v15 = 0xEE0073656E696C64;
              if (v6 > 5)
              {
                goto LABEL_16;
              }
            }
          }

          else if (*(*(v3 + 48) + v9) > 2u)
          {
            if (v13 == 3)
            {
              v14 = 0xD000000000000019;
              v15 = 0x8000000219CD6C50;
              if (v6 > 5)
              {
                goto LABEL_16;
              }

              goto LABEL_56;
            }

            if (v13 == 4)
            {
              v15 = 0xE700000000000000;
              v22 = 0x656C7A7A7570;
              goto LABEL_55;
            }

            v14 = 0xD000000000000010;
            v15 = 0x8000000219CD6C80;
            if (v6 > 5)
            {
              goto LABEL_16;
            }
          }

          else if (*(*(v3 + 48) + v9))
          {
            if (v13 == 1)
            {
              v14 = 0x736575737369;
            }

            else
            {
              v14 = 0xD000000000000017;
            }

            if (v13 == 1)
            {
              v15 = 0xE600000000000000;
            }

            else
            {
              v15 = 0x8000000219CD6C30;
            }

            if (v6 > 5)
            {
LABEL_16:
              v16 = 0x676E69646E657274;
              if (v6 != 10)
              {
                v16 = 0xD000000000000011;
              }

              v17 = 0xEF73657069636552;
              if (v6 != 10)
              {
                v17 = 0x8000000219CD6CE0;
              }

              if (v6 == 9)
              {
                v16 = 0x73657069636572;
                v17 = 0xE700000000000000;
              }

              v18 = 0x6867696C68676968;
              if (v6 != 7)
              {
                v18 = 0x6165486C61636F6CLL;
              }

              v19 = 0xEE0073656E696C64;
              if (v6 == 7)
              {
                v19 = 0xEA00000000007374;
              }

              if (v6 == 6)
              {
                v18 = 0xD000000000000011;
                v19 = 0x8000000219CD6CA0;
              }

              if (v6 <= 8)
              {
                v20 = v18;
              }

              else
              {
                v20 = v16;
              }

              if (v6 <= 8)
              {
                v21 = v19;
              }

              else
              {
                v21 = v17;
              }

              if (v14 != v20)
              {
                goto LABEL_80;
              }

              goto LABEL_79;
            }
          }

          else
          {
            v14 = 0x6974724164656566;
            v15 = 0xEC00000073656C63;
            if (v6 > 5)
            {
              goto LABEL_16;
            }
          }

LABEL_56:
          if (v6 > 2)
          {
            v24 = 0x73656C7A7A7570;
            if (v6 != 4)
            {
              v24 = 0xD000000000000010;
            }

            v25 = 0x8000000219CD6C80;
            if (v6 == 4)
            {
              v25 = 0xE700000000000000;
            }

            if (v6 == 3)
            {
              v26 = 0xD000000000000019;
            }

            else
            {
              v26 = v24;
            }

            if (v6 == 3)
            {
              v21 = 0x8000000219CD6C50;
            }

            else
            {
              v21 = v25;
            }

            if (v14 != v26)
            {
              goto LABEL_80;
            }
          }

          else if (v6)
          {
            if (v6 == 1)
            {
              v23 = 0x736575737369;
            }

            else
            {
              v23 = 0xD000000000000017;
            }

            if (v6 == 1)
            {
              v21 = 0xE600000000000000;
            }

            else
            {
              v21 = 0x8000000219CD6C30;
            }

            if (v14 != v23)
            {
              goto LABEL_80;
            }
          }

          else
          {
            v21 = 0xEC00000073656C63;
            if (v14 != 0x6974724164656566)
            {
              goto LABEL_80;
            }
          }

LABEL_79:
          if (v15 == v21)
          {

            goto LABEL_4;
          }

LABEL_80:
          v27 = sub_219BF78F4();

          if (v27)
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
      v28 = *(v3 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      *(v3 + 16) = v30;
LABEL_4:
      v4 = v33;
      if (v33 == v31)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2194B4A10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2194B633C(0, &unk_27CC1AA60, MEMORY[0x277D83B88], MEMORY[0x277D83B98], MEMORY[0x277D84098]);
    v3 = sub_219BF72E4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_219BF7A94();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
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
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2194B4B48(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2194B4CA8()
{
  result = qword_27CC1A910;
  if (!qword_27CC1A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A910);
  }

  return result;
}

uint64_t sub_2194B4CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2194B4D64(uint64_t a1)
{
  v2 = sub_219BF1FE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2194B6EB4(0);
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&unk_27CC0F7E0, MEMORY[0x277D336F0], MEMORY[0x277D336F8]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&qword_27CC1AC40, MEMORY[0x277D336F0], MEMORY[0x277D33700]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

char *sub_2194B508C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  sub_2186C6148(0, a5, a6);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      result = v7[2];
      v17 = &result[-v9];
      if (!__OFSUB__(result, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_219BF7214();
    v17 = &result[-v9];
    if (!__OFSUB__(result, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        result = sub_219BF7214();
      }

      else
      {
        result = v7[2];
      }

      if (!__OFADD__(result, v13))
      {
        v7[2] = &result[v13];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v6 > 0)
  {
    *v8 = v10;
    result = v10;
    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_2194B51B0(uint64_t a1, uint64_t a2, void *a3, ValueMetadata *a4)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = a4;
  v7 = a3;
  v9 = *v5;
  v10 = (v9 + 32 + 48 * a1);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v7, v6);
  v13 = v7 - v6;
  if (v12)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = *(v9 + 16);
  v12 = __OFSUB__(v14, a2);
  v15 = v14 - a2;
  if (v12)
  {
    goto LABEL_19;
  }

  result = &v10[3 * v7];
  v16 = (v9 + 32 + 48 * a2);
  if (result != v16 || result >= &v16[48 * v15])
  {
    result = memmove(result, v16, 48 * v15);
  }

  v18 = *(v9 + 16);
  v12 = __OFADD__(v18, v13);
  v19 = v18 + v13;
  if (v12)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v19;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  v20 = *v4;
  v21 = v4[2];
  v10[1] = v4[1];
  v10[2] = v21;
  *v10 = v20;
  a3 = &unk_27CC1A920;
  a4 = &type metadata for RecipeCatalogFilterSection;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_218819864(v4, v22, a3, a4, MEMORY[0x277D84220], sub_21871AEC0);
    __break(1u);
    return result;
  }

  return sub_218819864(v4, v22, &unk_27CC1A920, &type metadata for RecipeCatalogFilterSection, MEMORY[0x277D84220], sub_21871AEC0);
}

void sub_2194B5324(uint64_t a1)
{
  if (!qword_27CC1A940)
  {
    sub_2187F6AE4(255, &unk_27CC1A948, sub_2194B53C4, &type metadata for PuzzleArchiveFilterOption, MEMORY[0x277D83B48]);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1A940);
    }
  }
}

unint64_t sub_2194B53C4()
{
  result = qword_280EBD6E0;
  if (!qword_280EBD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBD6E0);
  }

  return result;
}

void sub_2194B5418(uint64_t a1)
{
  if (!qword_27CC1A968)
  {
    sub_2186C6148(255, &qword_27CC1A960, 0x277D31230);
    sub_2187E72D4(255, &qword_27CC1A970, MEMORY[0x277D6D638], MEMORY[0x277D83940]);
    sub_21879FA10(&unk_27CC1A978, &qword_27CC1A960, 0x277D31230);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1A968);
    }
  }
}

void sub_2194B54F4(uint64_t a1)
{
  if (!qword_280E8D720)
  {
    sub_219BE5A04();
    sub_218751238(&qword_280EE5E20, MEMORY[0x277D31AD0], MEMORY[0x277D31AD8]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D720);
    }
  }
}

void sub_2194B5588(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v2 = a1;
  }
}

void sub_2194B55BC()
{
  if (!qword_280E8D020)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D020);
    }
  }
}

void sub_2194B5620()
{
  if (!qword_280E8D380)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D380);
    }
  }
}

void sub_2194B567C(uint64_t a1)
{
  if (!qword_27CC1A988)
  {
    type metadata accessor for AudioFeedTrack(255);
    sub_218751238(&unk_27CC1A990, type metadata accessor for AudioFeedTrack, &protocol conformance descriptor for AudioFeedTrack);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1A988);
    }
  }
}

uint64_t sub_2194B5710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2194B5770(uint64_t a1)
{
  if (!qword_280E8D040)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    sub_218751238(&unk_280E8DC50, type metadata accessor for OpenURLOptionsKey, &unk_219C098B0);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D040);
    }
  }
}

void sub_2194B5810()
{
  if (!qword_280E8D168)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D168);
    }
  }
}

void sub_2194B5870(uint64_t a1)
{
  if (!qword_27CC1A9C8)
  {
    sub_218A98884(255);
    _s4ItemCMa_0();
    sub_218A98990();
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1A9C8);
    }
  }
}

void sub_2194B58EC(uint64_t a1)
{
  if (!qword_27CC1A9F8)
  {
    sub_218A9DB94(255);
    sub_2186C6148(255, &qword_280E8DBF0, 0x277D75308);
    sub_2194B5978();
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1A9F8);
    }
  }
}

unint64_t sub_2194B5978()
{
  result = qword_27CC1AA08;
  if (!qword_27CC1AA08)
  {
    sub_218A9DB94(255);
    sub_218751238(&qword_280EE9BC8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
    sub_2194B5A4C(&qword_280E8F840, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AA08);
  }

  return result;
}

uint64_t sub_2194B5A4C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_21871AEC0(255, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2194B5AD0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_21871AEC0(255, a3, a4, MEMORY[0x277D83940]);
    v5 = sub_219BF75C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2194B5B4C(uint64_t a1)
{
  if (!qword_280E8D398)
  {
    type metadata accessor for EngagementUpsellTriggerGroupStateKey(255);
    type metadata accessor for EngagementUpsellTriggerState(255);
    sub_218751238(&qword_280E9BA30, type metadata accessor for EngagementUpsellTriggerGroupStateKey, &protocol conformance descriptor for EngagementUpsellTriggerGroupStateKey);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D398);
    }
  }
}

unint64_t sub_2194B5C2C()
{
  result = qword_280EC88F8;
  if (!qword_280EC88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC88F8);
  }

  return result;
}

void sub_2194B5C80(uint64_t a1)
{
  if (!qword_280E8D340)
  {
    sub_2186C709C(255, &qword_280EE8F50, MEMORY[0x277CEACE8], 1);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D340);
    }
  }
}

void sub_2194B5CFC(uint64_t a1)
{
  if (!qword_280E8D630)
  {
    sub_219BF3924();
    sub_218751238(&qword_280E90050, MEMORY[0x277D33FB8], MEMORY[0x277D33FC0]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D630);
    }
  }
}

void sub_2194B5D90(uint64_t a1)
{
  if (!qword_280E8D658)
  {
    sub_219BF0644();
    sub_218751238(&unk_280E90EF0, MEMORY[0x277D32F00], MEMORY[0x277D32F08]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D658);
    }
  }
}

void sub_2194B5E24(uint64_t a1)
{
  if (!qword_27CC1AA70)
  {
    sub_219BDC104();
    sub_218751238(&qword_280EE9BC8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1AA70);
    }
  }
}

void sub_2194B5EB8(uint64_t a1)
{
  if (!qword_27CC1AA88)
  {
    type metadata accessor for SportsHeadlineExposureTracker.Exposure(255);
    sub_218751238(&unk_27CC11500, type metadata accessor for SportsHeadlineExposureTracker.Exposure, &unk_219C32330);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1AA88);
    }
  }
}

void sub_2194B5F80()
{
  if (!qword_280E8D2C8)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D2C8);
    }
  }
}

void sub_2194B5FE0(uint64_t a1)
{
  if (!qword_27CC1AAD8)
  {
    sub_219BE5854();
    sub_218751238(&unk_27CC1AAE0, MEMORY[0x277D6D240], MEMORY[0x277D6D248]);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1AAD8);
    }
  }
}

void sub_2194B607C(uint64_t a1)
{
  if (!qword_280E8D648)
  {
    sub_219BF10D4();
    sub_218751238(&qword_280E90970, MEMORY[0x277D33130], MEMORY[0x277D33138]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D648);
    }
  }
}

void sub_2194B6110(uint64_t a1)
{
  if (!qword_27CC1AAF0)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    sub_218751238(&qword_27CC0A770, type metadata accessor for OpenExternalURLOptionsKey, &unk_219C0986C);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1AAF0);
    }
  }
}

void sub_2194B620C(uint64_t a1)
{
  if (!qword_280E8D640)
  {
    sub_219BF1E34();
    sub_218751238(&unk_280E905A0, MEMORY[0x277D33658], MEMORY[0x277D33660]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D640);
    }
  }
}

void sub_2194B62A0(uint64_t a1)
{
  if (!qword_280E8D140)
  {
    sub_2194B633C(255, &qword_280E8E9E0, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D83B48]);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D140);
    }
  }
}

void sub_2194B633C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_2194B63C4()
{
  if (!qword_27CC1AB10)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1AB10);
    }
  }
}

void sub_2194B6424()
{
  if (!qword_27CC1AB18)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1AB18);
    }
  }
}

void sub_2194B6484(uint64_t a1)
{
  if (!qword_27CC1AB20)
  {
    sub_2194B6518(255, &unk_27CC1AB28, &qword_27CC0F550, &protocol descriptor for RecipeBoxSearchEntityType, MEMORY[0x277D83940]);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1AB20);
    }
  }
}

void sub_2194B6518(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2194B6584(uint64_t a1)
{
  if (!qword_27CC1AB38)
  {
    sub_219BDBF74();
    sub_218751238(&qword_27CC1AB40, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1AB38);
    }
  }
}

void sub_2194B6618()
{
  if (!qword_27CC16910)
  {
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC16910);
    }
  }
}

void sub_2194B6674(uint64_t a1)
{
  if (!qword_280E8D390)
  {
    type metadata accessor for EngagementUpsellTriggerGroupStateKey(255);
    sub_218751238(&qword_280E9BA30, type metadata accessor for EngagementUpsellTriggerGroupStateKey, &protocol conformance descriptor for EngagementUpsellTriggerGroupStateKey);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D390);
    }
  }
}

void sub_2194B6710()
{
  if (!qword_27CC1AB58)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1AB58);
    }
  }
}

void sub_2194B6770()
{
  if (!qword_27CC1AB60)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1AB60);
    }
  }
}

void sub_2194B6804(uint64_t a1)
{
  if (!qword_280E8D3D0)
  {
    type metadata accessor for TagFeedServiceContext(255);
    sub_218751238(&unk_280EC9720, type metadata accessor for TagFeedServiceContext, &unk_219C7A2EC);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D3D0);
    }
  }
}

void sub_2194B68A0(uint64_t a1)
{
  if (!qword_280E8D3B0)
  {
    type metadata accessor for TagFeedServiceContext(255);
    sub_218831BDC(255, &qword_280E8F760, MEMORY[0x277D837D0], MEMORY[0x277D837D0]);
    sub_218751238(&unk_280EC9720, type metadata accessor for TagFeedServiceContext, &unk_219C7A2EC);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D3B0);
    }
  }
}

void sub_2194B6960(uint64_t a1)
{
  if (!qword_280E8D418)
  {
    sub_219BE3514();
    sub_2186C6148(255, &unk_280E8E590, 0x277CEE488);
    sub_218751238(&qword_280EE66A0, MEMORY[0x277D31550], MEMORY[0x277D31560]);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D418);
    }
  }
}

void sub_2194B6A1C()
{
  if (!qword_280E8D338)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D338);
    }
  }
}

void sub_2194B6A7C()
{
  if (!qword_280E8D230)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D230);
    }
  }
}

unint64_t sub_2194B6ADC()
{
  result = qword_280EA2D30[0];
  if (!qword_280EA2D30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA2D30);
  }

  return result;
}

unint64_t sub_2194B6B30()
{
  result = qword_280ED4D70;
  if (!qword_280ED4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED4D70);
  }

  return result;
}

unint64_t sub_2194B6B84()
{
  result = qword_27CC21F80;
  if (!qword_27CC21F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21F80);
  }

  return result;
}

void sub_2194B6BD8()
{
  if (!qword_27CC1ABA8)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1ABA8);
    }
  }
}

void sub_2194B6C38(uint64_t a1)
{
  if (!qword_27CC1ABB8)
  {
    type metadata accessor for SportsHighlights.SubsectionDescriptor(255);
    type metadata accessor for SportsHighlights(255);
    sub_218751238(&qword_27CC1ABC0, type metadata accessor for SportsHighlights.SubsectionDescriptor, &unk_219C63B48);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1ABB8);
    }
  }
}

void sub_2194B6CE4(uint64_t a1)
{
  if (!qword_280E8D3D8)
  {
    type metadata accessor for TagFeedServiceContext(255);
    sub_2187E72D4(255, &unk_280E8FE30, MEMORY[0x277D34410], MEMORY[0x277D83D88]);
    sub_218751238(&unk_280EC9720, type metadata accessor for TagFeedServiceContext, &unk_219C7A2EC);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D3D8);
    }
  }
}

void sub_2194B6DC0()
{
  if (!qword_280E8D2D8)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D2D8);
    }
  }
}

void sub_2194B6E20(uint64_t a1)
{
  if (!qword_27CC1AC20)
  {
    sub_219BEAAD4();
    sub_218751238(&unk_27CC1AC10, MEMORY[0x277D31B20], MEMORY[0x277D31B28]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1AC20);
    }
  }
}

void sub_2194B6EB4(uint64_t a1)
{
  if (!qword_27CC1AC30)
  {
    sub_219BF1FE4();
    sub_218751238(&unk_27CC0F7E0, MEMORY[0x277D336F0], MEMORY[0x277D336F8]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1AC30);
    }
  }
}

void sub_2194B6F48(uint64_t a1)
{
  if (!qword_27CC1AC58)
  {
    sub_2187F6AE4(255, &unk_27CC1A948, sub_2194B53C4, &type metadata for PuzzleArchiveFilterOption, MEMORY[0x277D83B48]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1AC58);
    }
  }
}

void sub_2194B6FD8(uint64_t a1)
{
  if (!qword_27CC1AC60)
  {
    sub_2187F6AE4(255, &unk_27CC1A948, sub_2194B53C4, &type metadata for PuzzleArchiveFilterOption, MEMORY[0x277D83B48]);
    sub_2194B707C();
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1AC60);
    }
  }
}

unint64_t sub_2194B707C()
{
  result = qword_27CC1AC68;
  if (!qword_27CC1AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AC68);
  }

  return result;
}

void sub_2194B70D0()
{
  if (!qword_27CC1AC80)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1AC80);
    }
  }
}

unint64_t sub_2194B7130()
{
  result = qword_280EC7D70;
  if (!qword_280EC7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7D70);
  }

  return result;
}

unint64_t sub_2194B7184()
{
  result = qword_280ED1F70;
  if (!qword_280ED1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1F70);
  }

  return result;
}

unint64_t sub_2194B7200()
{
  result = qword_27CC1ACC0;
  if (!qword_27CC1ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1ACC0);
  }

  return result;
}

void sub_2194B7254(uint64_t a1)
{
  if (!qword_27CC1ACD0)
  {
    _s9DataStoreC10CaptureKeyVMa(255);
    sub_218751238(&qword_27CC0C310, _s9DataStoreC10CaptureKeyVMa, &unk_219C108C8);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1ACD0);
    }
  }
}

void sub_2194B72F0(uint64_t a1)
{
  if (!qword_27CC1ACE8)
  {
    sub_219BE4B94();
    sub_2194B73B8(255, &qword_27CC1ACF0, MEMORY[0x277D834F8]);
    sub_218751238(&qword_27CC1AD10, MEMORY[0x277D34968], MEMORY[0x277D34970]);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1ACE8);
    }
  }
}

void sub_2194B73B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    sub_2187E72D4(255, &unk_27CC13240, MEMORY[0x277D34998], MEMORY[0x277D83940]);
    v7 = v6;
    v8 = sub_218C8A914();
    v9 = a3(a1, v7, MEMORY[0x277D83B88], v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2194B745C()
{
  result = qword_27CC1AD28;
  if (!qword_27CC1AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AD28);
  }

  return result;
}

unint64_t sub_2194B74B0()
{
  result = qword_280EBCDB0;
  if (!qword_280EBCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDB0);
  }

  return result;
}

unint64_t sub_2194B7504()
{
  result = qword_27CC1AD50;
  if (!qword_27CC1AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AD50);
  }

  return result;
}

unint64_t sub_2194B7558()
{
  result = qword_27CC1AD58;
  if (!qword_27CC1AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AD58);
  }

  return result;
}

unint64_t sub_2194B75AC()
{
  result = qword_280ED7F28;
  if (!qword_280ED7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED7F28);
  }

  return result;
}

void sub_2194B7600(uint64_t a1)
{
  if (!qword_280E8EA78)
  {
    sub_2191A1E58(255);
    sub_218788800();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8EA78);
    }
  }
}

unint64_t sub_2194B7674()
{
  result = qword_280EB7A88;
  if (!qword_280EB7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB7A88);
  }

  return result;
}

void sub_2194B76C8()
{
  if (!qword_27CC1AD78)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1AD78);
    }
  }
}

void sub_2194B7728(uint64_t a1)
{
  if (!qword_27CC1AD80)
  {
    sub_218B58CA4(255);
    sub_218751238(&qword_280EE5B50, sub_218B58CA4, MEMORY[0x277D6D400]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1AD80);
    }
  }
}

uint64_t sub_2194B77BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_21872C1F4(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_2194B782C()
{
  result = qword_280ECFCD0;
  if (!qword_280ECFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECFCD0);
  }

  return result;
}

uint64_t sub_2194B7880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_2194B78E0(uint64_t a1)
{
  if (!qword_27CC1AD98)
  {
    sub_219BE2CB4();
    sub_218751238(&qword_27CC1ADA0, MEMORY[0x277D6CEA0], MEMORY[0x277D6CEA8]);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1AD98);
    }
  }
}

uint64_t sub_2194B7980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2194B79E8(uint64_t a1)
{
  if (!qword_27CC1ADB0)
  {
    type metadata accessor for SearchFilterItem(255);
    sub_218751238(&unk_27CC0F930, type metadata accessor for SearchFilterItem, &protocol conformance descriptor for SearchFilterItem);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1ADB0);
    }
  }
}

void sub_2194B7A7C()
{
  if (!qword_27CC1ADB8)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1ADB8);
    }
  }
}

void sub_2194B7B44(uint64_t a1)
{
  if (!qword_27CC1ADF0)
  {
    sub_2187E72D4(255, &qword_27CC1ADF8, sub_218C4014C, MEMORY[0x277D83940]);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1ADF0);
    }
  }
}

void sub_2194B7BDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2194B7C58(uint64_t a1)
{
  if (!qword_27CC1AE48)
  {
    type metadata accessor for SportsDateHeader();
    sub_2194B7D34(255, &qword_27CC1AE50, type metadata accessor for SportsScores, MEMORY[0x277D834F8]);
    sub_218751238(&qword_27CC1A5D8, type metadata accessor for SportsDateHeader, &unk_219C180CC);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1AE48);
    }
  }
}

void sub_2194B7D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2194B7DA8(uint64_t a1)
{
  if (!qword_280E8D650)
  {
    sub_219BF0FB4();
    sub_218751238(&qword_280E909C8, MEMORY[0x277D330A8], MEMORY[0x277D330B8]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D650);
    }
  }
}

uint64_t sub_2194B7E6C(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_2194B97A4(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v40 - v5;
  sub_2194B97A4(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v40 - v7;
  sub_2194B97A4(0, &qword_27CC19C10, sub_2193C9AA8, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v40 - v9;
  sub_2194B9824(0, &qword_27CC19C20, MEMORY[0x277D31C68]);
  v42 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = &v40 - v12;
  v13 = sub_219BF2AB4();
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x28223BE20](v13);
  v52 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F97D4(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BEF554();
  v50 = *(v18 - 8);
  v51 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  v24 = type metadata accessor for TagsSearchMoreFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + OBJC_IVAR____TtC7NewsUI230TagsSearchMoreFeedGroupEmitter_formatService + 24);
  v44 = *(a1 + OBJC_IVAR____TtC7NewsUI230TagsSearchMoreFeedGroupEmitter_formatService + 32);
  v45 = v27;
  v47 = __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI230TagsSearchMoreFeedGroupEmitter_formatService), v27);
  sub_21872F21C(0);
  sub_219BEDD14();
  sub_219BEDCC4();
  v28 = v46;
  sub_219BEDCC4();
  v29 = sub_219BEE5D4();
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
  (*(v11 + 16))(v41, v49, v42);
  sub_2193C9AA8(0);
  (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
  v31 = sub_219BF35D4();
  (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
  v55 = 2;
  sub_2194B9824(0, &qword_27CC19C28, MEMORY[0x277D33F88]);
  swift_allocObject();
  sub_219BF38E4();
  v32 = sub_219BF2774();
  (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
  v33 = qword_27CC08540;
  *MEMORY[0x277D30B98];
  if (v33 != -1)
  {
    swift_once();
  }

  qword_27CCD8A08;
  v34 = v52;
  sub_219BF2A84();
  v35 = sub_218F0AF50(v26, 1936154996, 0xE400000000000000, v23, v20, MEMORY[0x277D84F90], v17, v34, v45, v44);
  (*(v53 + 8))(v34, v54);
  sub_2193C9B64(v17, sub_2186F97D4);
  v36 = v51;
  v37 = *(v50 + 8);
  v37(v20, v51);
  v37(v23, v36);
  v38 = sub_219BF1934();
  (*(*(v38 - 8) + 8))(v26, v38);
  return v35;
}

uint64_t sub_2194B8590(uint64_t a1)
{
  v2 = sub_219BED8D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup, v6, v2);
  v10[3] = v7;
  v10[0] = v8;
  sub_2194B97A4(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2194B8704(uint64_t a1)
{
  type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
  sub_219BE3204();

  v2 = sub_219BE2E54();
  sub_2193C96EC(0);
  sub_219BE2F64();

  v3 = swift_allocObject();
  *(v3 + 16) = sub_2194B9648;
  *(v3 + 24) = v1;

  v4 = sub_219BE2E54();
  sub_2194B9664(0);
  sub_219BE2F64();

  v5 = sub_219BE2E54();
  sub_2193C97A0(0);
  sub_219BE2F64();

  v6 = sub_219BE2E54();
  v7 = sub_219BE3054();

  return v7;
}

uint64_t sub_2194B88BC(uint64_t a1, uint64_t a2)
{
  sub_2194B9664(0);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BDBD64();
  v8 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TagsSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v40);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v13);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  if (v17 >> 6 > 1)
  {
    if (v17 >> 6 == 2)
    {
      v19 = *(a2 + 8);
      v20 = *(a2 + 16);
      v18 = *a2;
      v38 = v16;
      v37 = v17;
      sub_2189651EC(v18, v19, v20, v16, v17);
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      v38 = 1;
      v37 = 1;
    }
  }

  else
  {
    v37 = *(a2 + 32);
    v38 = v16;
    v18 = MEMORY[0x277D84F90];
  }

  if (v18 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_8;
    }

LABEL_10:

    v33 = sub_219BEEDD4();
    sub_21872F334(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D323A8], v33);
    swift_willThrow();
    return v33;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_219BDBD54();
  v21 = sub_219BDBD44();
  v36[0] = v7;
  v36[1] = v2;
  v22 = v21;
  v24 = v23;
  (*(v8 + 8))(v10, v39);
  v25 = OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup;
  v39 = v13;
  v26 = v40;
  v27 = *(v40 + 20);
  v28 = sub_219BED8D4();
  (*(*(v28 - 8) + 16))(&v12[v27], a1 + v25, v28);
  *v12 = v22;
  *(v12 + 1) = v24;
  *&v12[*(v26 + 24)] = v18;
  sub_2194B96D4(0);
  v30 = &v15[*(v29 + 48)];
  sub_2194B9740(v12, v15);
  *v30 = v38;
  v30[8] = v37 & 1;
  swift_storeEnumTagMultiPayload();
  v31 = type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
  v32 = (v36[0] + *(v41 + 48));
  sub_2193C98B0(v15, v36[0], type metadata accessor for SearchMoreFeedGroup);
  *v32 = a1;
  v32[3] = v31;
  sub_2194B97A4(0, &qword_27CC1AE98, sub_2194B9664, MEMORY[0x277D6CF30]);
  swift_allocObject();

  v33 = sub_219BE3014();
  sub_2193C9B64(v15, type metadata accessor for SearchMoreFeedGroup);
  return v33;
}

uint64_t sub_2194B8D40(uint64_t a1)
{
  sub_2193C97A0(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194B9664(0);
  v6 = *(v5 + 48);
  sub_2193C98B0(a1, v4, type metadata accessor for SearchMoreFeedGroup);
  sub_2193C98B0(a1 + v6, &v4[v6], sub_21880702C);
  swift_storeEnumTagMultiPayload();
  sub_2194B97A4(0, &qword_27CC19BF8, sub_2193C97A0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2194B8E78(uint64_t a1)
{
  sub_2193C97A0(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000024, 0x8000000219D22630);
  v9 = a1;
  sub_218A450F0();
  sub_219BF7484();
  v5 = v8;
  *v4 = v7;
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_2194B97A4(0, &qword_27CC19BF8, sub_2193C97A0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2194B8FD0()
{
  v1 = OBJC_IVAR____TtC7NewsUI230TagsSearchMoreFeedGroupEmitter_config;
  sub_21872F21C(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI230TagsSearchMoreFeedGroupEmitter_formatService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TagsSearchMoreFeedGroupEmitter(uint64_t a1)
{
  result = qword_27CC1AE68;
  if (!qword_27CC1AE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2194B90D0(uint64_t a1)
{
  sub_21872F21C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2194B9168(uint64_t a1)
{
  sub_219BED8D4();
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_21880702C();
  v2 = sub_219BE2F64();

  return v2;
}

uint64_t sub_2194B9234@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI230TagsSearchMoreFeedGroupEmitter_config;
  sub_21872F21C(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for SearchMoreFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2194B9300@<X0>(uint64_t *a2@<X8>)
{
  sub_2194B97A4(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_21872F21C(0);
  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2193C9B64(inited + 32, sub_2188317B0);
  sub_2194B98C0(0);
  a2[3] = v6;
  a2[4] = sub_21872F334(&qword_27CC1AEA8, sub_2194B98C0, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2194B9474(uint64_t a1)
{
  sub_21872F334(&qword_27CC1AE88, type metadata accessor for TagsSearchMoreFeedGroupEmitter, &unk_219C81AA0);

  return sub_219BE2324();
}

void sub_2194B9664(uint64_t a1)
{
  if (!qword_27CC19C00)
  {
    type metadata accessor for SearchMoreFeedGroup(255);
    sub_21880702C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC19C00);
    }
  }
}

void sub_2194B96D4(uint64_t a1)
{
  if (!qword_27CC0D1D0)
  {
    type metadata accessor for TagsSearchMoreFeedGroup(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0D1D0);
    }
  }
}

uint64_t sub_2194B9740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagsSearchMoreFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2194B97A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2194B9824(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SearchMoreFeedServiceConfig(255);
    v7 = sub_21872F334(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig, &unk_219C731D0);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_2194B98F4(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_219BEC124();

  return result;
}

uint64_t sub_2194B9AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a3;
  v67 = a4;
  v64 = a1;
  v5 = type metadata accessor for MyMagazinesModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = &v58 - v8;
  v9 = sub_219BEF2A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v58 - v14;
  v16 = sub_219BEF974();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MyMagazinesLayoutModel(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F5C0(0);
  sub_219BE75E4();
  (*(v17 + 32))(v19, v22, v16);
  v65 = v4;
  v23 = v10;
  swift_getObjectType();
  sub_219BEED04();
  (*(v10 + 16))(v12, v15, v9);
  if ((*(v10 + 88))(v12, v9) == *MEMORY[0x277D32528])
  {
    v60 = v19;
    v61 = v15;
    v66 = v17;
    v67 = v16;
    v24 = *(v10 + 96);
    v59 = v9;
    v24(v12, v9);
    v25 = *v12;
    sub_218953F20(0);
    v58 = v26;
    v27 = v62;
    sub_219BE5FC4();
    v28 = *v27;
    v29 = *(v27 + 2);
    sub_218B7E1D0(0);
    v31 = *(v30 + 48);
    v32 = [v28 identifier];
    v33 = sub_219BF5414();
    v35 = v34;

    v36 = sub_219BF0744();
    (*(*(v36 - 8) + 8))(&v27[v31], v36);
    v37 = sub_219BE7314();
    v38 = *(v65 + 40);
    ObjectType = swift_getObjectType();
    (*(v38 + 32))(v33, v35, ObjectType, v38);

    sub_2194BA4AC(qword_280EDE170, type metadata accessor for IssueDownload, &protocol conformance descriptor for IssueDownload);
    sub_219BF19C4();

    v40 = v63;
    sub_219BE5FC4();
    v41 = sub_218DFD630();
    sub_2194BA448(v40);
    v42 = sub_219BE7314();
    v43 = sub_219BF19B4();

    if (v41)
    {
      [v43 setShowsMenuAsPrimaryAction_];

      v44 = sub_219BE7314();
      v45 = sub_219BF19B4();

      sub_21897C0DC();
      v46 = sub_219BF6BF4();
      [v45 setMenu_];

      v47 = sub_219BE7314();
      v48 = sub_219BF19B4();

      v49 = sub_219BE5984();
      [v48 setActivityItemsConfiguration_];

      v50 = sub_219BE7314();
      v51 = sub_219BF19B4();

      v52 = swift_allocObject();
      swift_weakInit();
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *(v53 + 24) = v41;

      sub_219BF2CC4();

      (*(v23 + 8))(v61, v59);
      (*(v66 + 8))(v60, v67);
    }

    else
    {
      [v43 setHidden_];

      (*(v23 + 8))(v61, v59);
      (*(v66 + 8))(v60, v67);
    }
  }

  else
  {
    v54 = sub_219BEF294();
    v55 = *(v10 + 8);
    v55(v15, v9);
    (*(v17 + 8))(v19, v16);
    v56 = v9;
    v25 = v54;
    v55(v12, v56);
  }

  return v25;
}

uint64_t sub_2194BA174(void *a1, uint64_t a2)
{
  v3 = sub_219BE89F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = Strong;
  (*(v4 + 104))(v6, *MEMORY[0x277D6E0F8], v3);
  v9 = *(v8 + 64);
  v13[3] = sub_219BDD274();
  v13[4] = sub_2194BA4AC(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v13[0] = v9;
  v14 = 0u;
  v15 = 0u;
  v16 = 1;
  sub_219BE8314();
  swift_allocObject();

  v10 = a1;
  sub_219BE82F4();
  swift_unknownObjectRetain();
  v11 = sub_219BE5994();

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_2194BA418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_2194B9AD8(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_2194BA448(uint64_t a1)
{
  v2 = type metadata accessor for MyMagazinesModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2194BA4AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ChannelEngagementLayoutOptions(uint64_t a1)
{
  result = qword_27CC1AEB0;
  if (!qword_27CC1AEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2194BA568(uint64_t a1)
{
  result = sub_219BE8164();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2194BA5D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2194BA688(uint64_t a1)
{
  v3 = type metadata accessor for MyMagazinesBuildBlueprintModifier(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = *v1;
  sub_219136F68(0);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  sub_218718690(v9 + 16, &v8[v3[5]]);
  v11 = *(v9 + 56);
  v12 = v3[6];
  v16 = *(v9 + 64);
  v13 = v16;
  *&v8[v12] = v11;
  *&v8[v3[7]] = v13;
  sub_2194BA82C(v8, v5);
  sub_2194BA890(0);
  swift_allocObject();
  sub_2194BA948(&unk_27CC1AEC0, type metadata accessor for MyMagazinesBuildBlueprintModifier, &unk_219C57068);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = sub_219BE6E64();
  sub_2194BA990(v8);
  return v14;
}

uint64_t sub_2194BA82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesBuildBlueprintModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2194BA890(uint64_t a1)
{
  if (!qword_27CC21F70)
  {
    type metadata accessor for MyMagazinesModel(255);
    sub_218B7DFD4();
    sub_2194BA948(&qword_27CC0B160, type metadata accessor for MyMagazinesModel, &unk_219C3BA30);
    v1 = sub_219BE6E74();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC21F70);
    }
  }
}

uint64_t sub_2194BA948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2194BA990(uint64_t a1)
{
  v2 = type metadata accessor for MyMagazinesBuildBlueprintModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2194BA9EC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AudioFeedTrack(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrackData = type metadata accessor for AudioState.UpNextTrackData(0);
  MEMORY[0x28223BE20](TrackData);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AudioState(0);
  sub_218736280(a1 + *(v11 + 24), v10, type metadata accessor for AudioState.UpNextTrackData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = MEMORY[0x277D84F90];
  if (EnumCaseMultiPayload)
  {
    v14 = MEMORY[0x277D84F90];
    if (EnumCaseMultiPayload == 1)
    {
      sub_218C162E4(v10, v7);
      sub_2194BAF94(0, &unk_280E8BC50, type metadata accessor for AudioFeedTrack, MEMORY[0x277D84560]);
      v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_219C09BA0;
      sub_218C162E4(v7, v14 + v15);
    }

    v16 = *(v14 + 16);
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_9:

    v19 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v14 = *v10;
  v16 = *(*v10 + 16);
  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_5:
  v21 = a2;
  v22 = v13;
  sub_219BF73F4();
  v17 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v18 = *(v5 + 72);
  do
  {
    sub_218736280(v17, v7, type metadata accessor for AudioFeedTrack);
    swift_unknownObjectRetain();
    sub_218EB8BCC(v7);
    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    sub_219BF73E4();
    v17 += v18;
    --v16;
  }

  while (v16);

  v19 = v22;
  a2 = v21;
LABEL_10:
  *a2 = v19;
}

uint64_t sub_2194BAC9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AudioFeedTrack(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for AudioState(0);
  v9 = *(a1 + *(result + 28));
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v15 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v12 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_218736280(v12, v7, type metadata accessor for AudioFeedTrack);
      swift_unknownObjectRetain();
      sub_218EB8BCC(v7);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      result = sub_219BF73E4();
      v12 += v13;
      --v10;
    }

    while (v10);
    v11 = v15;
  }

  *a2 = v11;
  return result;
}

uint64_t sub_2194BAE10()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2194BAE50(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = off_282A88840;
  type metadata accessor for AudioDataManager();
  v4();
  v5 = sub_219BE2CC4();
  sub_2194BAF94(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  v6 = sub_219BE2F74();

  v7 = sub_219BE2CC4();
  v8 = sub_219BE2F74();

  v9 = [*(v3 + 32) sortedListenedArticleIDs];
  v10 = sub_219BF5924();

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
}

void sub_2194BAF94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static ChannelPickerNewsPlusCategoryModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_219BF78F4();
  }
}

uint64_t ChannelPickerNewsPlusCategoryModel.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ChannelPickerNewsPlusCategoryModel.hashValue.getter()
{
  sub_219BF7AA4();
  sub_2194BB118();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2194BB0CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2194BB4EC();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

unint64_t sub_2194BB118()
{
  result = qword_27CC1AED0;
  if (!qword_27CC1AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AED0);
  }

  return result;
}

uint64_t sub_2194BB16C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_219BF78F4();
  }
}

uint64_t ChannelPickerNewsPlusCategoryModel.description.getter()
{
  v1 = v0;
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_219BF7314();
  v9 = 0;
  v10 = 0xE000000000000000;
  MEMORY[0x21CECC330](0xD000000000000029, 0x8000000219D22740);
  MEMORY[0x21CECC330](*v1, v1[1]);
  MEMORY[0x21CECC330](0x69746E656469202CLL, 0xED00003D72656966);
  MEMORY[0x21CECC330](v1[2], v1[3]);
  MEMORY[0x21CECC330](0x72556E6F6369202CLL, 0xEC0000003D78316CLL);
  sub_218AB7A30((v0 + 4), v7);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v2 = sub_219BE64B4();
    v4 = v3;
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_2189A70A0(v7);
    v4 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x21CECC330](v2, v4);

  MEMORY[0x21CECC330](0x646F4D676174202CLL, 0xEC0000003D736C65);
  v5 = MEMORY[0x21CECC6D0](v0[19], MEMORY[0x277D837D0]);
  MEMORY[0x21CECC330](v5);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return v9;
}

unint64_t sub_2194BB344()
{
  result = qword_27CC1AED8;
  if (!qword_27CC1AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AED8);
  }

  return result;
}

unint64_t sub_2194BB39C()
{
  result = qword_27CC1AEE0;
  if (!qword_27CC1AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AEE0);
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_2194BB428(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_2194BB470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2194BB4EC()
{
  result = qword_27CC1AEE8;
  if (!qword_27CC1AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AEE8);
  }

  return result;
}

void sub_2194BB554(uint64_t a1)
{
  if (!qword_280E92240)
  {
    type metadata accessor for PuzzleArchiveTagFeedGroupConfigData(255);
    sub_2194BB620(&unk_280E9CBC0, type metadata accessor for PuzzleArchiveTagFeedGroupConfigData, &unk_219C09D6C);
    sub_2194BB620(&qword_280E9CBD0, type metadata accessor for PuzzleArchiveTagFeedGroupConfigData, &unk_219C09D44);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92240);
    }
  }
}

uint64_t sub_2194BB620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PuzzleArchiveTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA58D0;
  if (!qword_280EA58D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2194BB6C8(uint64_t a1)
{
  sub_2194BB554(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PuzzleArchiveTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_218C5D8B8();
      if (v3 <= 0x3F)
      {
        sub_219BDC084();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2194BB784()
{
  sub_2194BDA90(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2194BB804(uint64_t a1)
{
  v3 = type metadata accessor for PuzzleArchiveTagFeedGroupEmitter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v7 = sub_219BE2E54();
  sub_2194BDA90(0, &qword_280E8ECA0, sub_21873FA4C, MEMORY[0x277D83940]);
  sub_219BE2F64();

  sub_2194BDBB0(v1, v6, type metadata accessor for PuzzleArchiveTagFeedGroupEmitter);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19[1] = v8 + v5;
  v9 = (v8 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_2194BC8A4(v6, v10 + v8);
  *(v10 + v9) = a1;

  v11 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v12 = v19[0];
  sub_2194BDBB0(v19[0], v6, type metadata accessor for PuzzleArchiveTagFeedGroupEmitter);
  v13 = swift_allocObject();
  sub_2194BC8A4(v6, v13 + v8);
  *(v13 + v9) = a1;

  v14 = sub_219BE2E54();
  sub_218A59C84(0);
  sub_219BE2F64();

  sub_2194BDBB0(v12, v6, type metadata accessor for PuzzleArchiveTagFeedGroupEmitter);
  v15 = swift_allocObject();
  sub_2194BC8A4(v6, v15 + v8);
  v16 = sub_219BE2E54();
  v17 = sub_219BE3064();

  return v17;
}

uint64_t sub_2194BBB28@<X0>(unint64_t *a1@<X8>)
{
  sub_2194BB554(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x8000000000000006;
  return result;
}

uint64_t sub_2194BBBA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for PuzzleArchiveTagFeedGroupKnobs(0);
  a2[4] = sub_2194BB620(&qword_280EABAA0, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs, &unk_219CBFE80);
  a2[5] = sub_2194BB620(&qword_27CC1AF18, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs, &unk_219CBFE58);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2194BDBB0(v2 + v4, boxed_opaque_existential_1, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
}

uint64_t sub_2194BBC70(uint64_t a1)
{
  type metadata accessor for PuzzleArchiveTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  v1 = sub_219BEE964();
  sub_2194BDA90(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  sub_2194BDB14(0, &qword_280E91240, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v6 + v5) = sub_219BEFB94();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D32308], v3);
  sub_2191EDA0C(v6);
  return v1;
}

uint64_t sub_2194BBE40()
{
  sub_2194BB554(0);

  return sub_219BEDCA4();
}

uint64_t sub_2194BBE6C@<X0>(uint64_t *a2@<X8>)
{
  sub_2194BDA90(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2194BB554(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A80EBC(inited + 32, sub_2188317B0);
  sub_2194BDC18(0);
  a2[3] = v6;
  a2[4] = sub_2194BB620(&qword_27CC1AF28, sub_2194BDC18, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2194BBFF0(uint64_t a1)
{
  sub_2194BB620(&unk_27CC1AF00, type metadata accessor for PuzzleArchiveTagFeedGroupEmitter, &unk_219C8201C);

  return sub_219BE2324();
}

void sub_2194BC1E0(unint64_t *a1, int64_t a2, uint64_t a3)
{
  v6 = sub_219BF2034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_219BF0BD4();
  v9 = *(v56 - 8);
  v10 = MEMORY[0x28223BE20](v56);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *a1 >> 62;
  if (!v14)
  {
    if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_42:
    v30 = sub_219BEEDD4();
    sub_2194BB620(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    v32 = v44;
    v33 = MEMORY[0x277D323A8];
    goto LABEL_43;
  }

  if (!sub_219BF7214())
  {
    goto LABEL_42;
  }

LABEL_3:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, v13, v10);
    swift_unknownObjectRelease();
  }

  else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_46;
  }

  v48 = v7;
  v49 = v6;
  v51 = type metadata accessor for PuzzleArchiveTagFeedGroupEmitter(0);
  v15 = *(v51 + 20);
  v53 = a2;
  v16 = a2 + v15;
  type metadata accessor for PuzzleArchiveTagFeedGroupKnobs(0);
  v50 = v16;
  v52 = a3;
  sub_219BEF134();
  sub_219BEF524();
  v17 = *(v9 + 8);
  v17(v12, v56);
  a3 = v57;
  if (v14)
  {
    v18 = sub_219BF7214();
    if (v18 >= a3)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18 < v57)
  {
LABEL_26:
    v30 = sub_219BEEDD4();
    sub_2194BB620(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    v32 = v31;
    *v31 = a3;
    v31[1] = v18;
    v33 = MEMORY[0x277D32400];
LABEL_43:
    (*(*(v30 - 8) + 104))(v32, *v33, v30);
    swift_willThrow();
    return;
  }

LABEL_7:
  sub_219BEF134();
  sub_219BEF524();
  v19 = (v17)(v12, v56);
  a2 = v57;
  MEMORY[0x28223BE20](v19);
  *(&v47 - 2) = v20;

  v57 = sub_219759108(v21);
  v22 = v55;
  sub_21994F0A4(sub_2194BDAF4, (&v47 - 4));
  v13 = v22;
  if (!v22)
  {
    v23 = v57;
    if (v57 < 0 || (v57 & 0x4000000000000000) != 0)
    {
      goto LABEL_47;
    }

    v24 = v23;
    sub_219BF7924();
    sub_21873FA4C();
    while (1)
    {

      if ((a2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      sub_21873FA4C();

      v24 = sub_219BF7534();
    }

    if (!(v24 >> 62))
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25 >= a2)
      {
        v26 = a2;
      }

      else
      {
        v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a2)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      if (v25 >= v27)
      {
        goto LABEL_20;
      }

      goto LABEL_58;
    }

    v45 = sub_219BF7214();
    if ((sub_219BF7214() & 0x8000000000000000) == 0)
    {
      if (v45 >= a2)
      {
        v46 = a2;
      }

      else
      {
        v46 = v45;
      }

      if (v45 < 0)
      {
        v46 = a2;
      }

      if (a2)
      {
        v27 = v46;
      }

      else
      {
        v27 = 0;
      }

      if (sub_219BF7214() >= v27)
      {
LABEL_20:
        if ((v24 & 0xC000000000000001) != 0 && v27)
        {
          sub_21873FA4C();

          v28 = 0;
          do
          {
            v29 = v28 + 1;
            sub_219BF7334();
            v28 = v29;
          }

          while (v27 != v29);
        }

        else
        {
        }

        v56 = v13;

        if (v24 >> 62)
        {
          v13 = sub_219BF7564();
          v12 = v34;
          a3 = v35;
          v27 = v36;

          if (v27)
          {
            goto LABEL_33;
          }
        }

        else
        {
          a3 = 0;
          v13 = v24 & 0xFFFFFFFFFFFFFF8;
          v12 = ((v24 & 0xFFFFFFFFFFFFFF8) + 32);
          v27 = (2 * v27) | 1;
          if (v27)
          {
LABEL_33:
            sub_219BF7934();
            swift_unknownObjectRetain_n();
            v42 = swift_dynamicCastClass();
            if (!v42)
            {
              swift_unknownObjectRelease();
              v42 = MEMORY[0x277D84F90];
            }

            v43 = *(v42 + 16);

            if (!__OFSUB__(v27 >> 1, a3))
            {
              if (v43 == (v27 >> 1) - a3)
              {
                v38 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                v39 = v48;
                v40 = v52;
                v41 = v54;
                if (v38)
                {
LABEL_40:
                  sub_2194BC9A0(v38, v41);

                  sub_2194BCE24(v40, v41);
                  (*(v39 + 8))(v41, v49);
                  return;
                }

                v38 = MEMORY[0x277D84F90];
LABEL_39:
                swift_unknownObjectRelease();
                goto LABEL_40;
              }

              goto LABEL_60;
            }

LABEL_59:
            __break(1u);
LABEL_60:
            swift_unknownObjectRelease_n();
          }
        }

        sub_218B67410(v13, v12, a3, v27);
        v38 = v37;
        v39 = v48;
        v40 = v52;
        v41 = v54;
        goto LABEL_39;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    __break(1u);
  }

  __break(1u);
}