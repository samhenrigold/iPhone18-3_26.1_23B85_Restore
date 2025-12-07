unint64_t sub_258ED7260(unint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for FunnelEventMetadata(0);
  v4 = *(v29 - 8);
  result = MEMORY[0x28223BE20](v29, v5);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_258F0A9E0() + 1) & ~v9;
    v13 = *(v4 + 72);
    v30 = a2 + 64;
    do
    {
      v14 = v13;
      v15 = v13 * v10;
      v16 = a1;
      v17 = v31;
      sub_258EDA33C(*(a2 + 48) + v13 * v10, v31, type metadata accessor for FunnelEventMetadata);
      sub_258F0AE40();
      FunnelEventMetadata.hash(into:)(v32);
      v18 = sub_258F0AE90();
      v19 = v17;
      a1 = v16;
      result = sub_258EDA40C(v19, type metadata accessor for FunnelEventMetadata);
      v20 = v18 & v11;
      if (v16 >= v12)
      {
        if (v20 < v12)
        {
          v8 = v30;
          v13 = v14;
          goto LABEL_4;
        }

        v13 = v14;
        if (v16 >= v20)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = v14;
        if (v20 >= v12 || v16 >= v20)
        {
LABEL_11:
          v21 = *(a2 + 48);
          v22 = v13 * v16;
          result = v21 + v13 * v16;
          if (v13 * v16 < v15 || result >= v21 + v15 + v13)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v30;
          }

          else
          {
            v8 = v30;
            if (v22 != v15)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = *(a2 + 56);
          v24 = (v23 + 16 * a1);
          v25 = (v23 + 16 * v10);
          if (a1 != v10 || v24 >= v25 + 1)
          {
            *v24 = *v25;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v30;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

void sub_258ED7530(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_258E2E9B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_258ED5A6C(v16, a4 & 1);
      v11 = sub_258E2E9B4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_258F0ADC0();
        __break(1u);
_objc_release_x1:
        MEMORY[0x2821F96F8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_258ED88FC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
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

void sub_258ED76BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_258E2E9B4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_258ED6470(v18, a5 & 1);
      v13 = sub_258E2E9B4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_258F0ADC0();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_258ED8CB4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

unint64_t sub_258ED7850()
{
  result = qword_27F98A6D8;
  if (!qword_27F98A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A6D8);
  }

  return result;
}

uint64_t sub_258ED78A4(uint64_t a1)
{
  result = sub_258EDA2F4(&qword_27F98A6E0, type metadata accessor for SiriSegmentCohortCalculator, &unk_258F16018);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258ED78FC(uint64_t a1)
{
  result = sub_258EDA2F4(&qword_27F98A6E8, type metadata accessor for SiriSegmentCohortCalculator, &protocol conformance descriptor for SiriSegmentCohortCalculator);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258ED7954()
{
  result = qword_27F98A6F0;
  if (!qword_27F98A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A6F0);
  }

  return result;
}

uint64_t sub_258ED79A8(uint64_t *a1, int a2)
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

uint64_t sub_258ED79F0(uint64_t result, int a2, int a3)
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

void sub_258ED7A48(uint64_t a1)
{
  sub_258F0A370();
  if (v1 <= 0x3F)
  {
    sub_258DE3B74(319);
    if (v2 <= 0x3F)
    {
      sub_258F09A70();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of SiriSegmentCohortCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258ED7CD8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a4;
  v28 = a5;
  v6 = v5;
  v10 = sub_258F09A20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_258E2EED8(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_258ED8E48(v27, v28);
      goto LABEL_7;
    }

    sub_258ED5D10(v20, a3 & 1, v27, v28);
    v25 = sub_258E2EED8(a2);
    if ((v21 & 1) == (v26 & 1))
    {
      v17 = v25;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_258ED8284(v17, v14, a1, v23);
    }

LABEL_15:
    result = sub_258F0ADC0();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v23[7] + 8 * v17) = a1;
}

void sub_258ED7EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for FunnelEventMetadata(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_258E2F028(a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_258ED86C0(type metadata accessor for FunnelEventMetadata, &qword_27F98A708, &qword_258F16170, type metadata accessor for FunnelEventMetadata);
      goto LABEL_7;
    }

    sub_258ED674C(v19, a4 & 1);
    v25 = sub_258E2F028(a3);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v5;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_258EDA33C(a3, v13, type metadata accessor for FunnelEventMetadata);
      sub_258ED8110(v16, v13, a1, a2, v22, type metadata accessor for FunnelEventMetadata, type metadata accessor for FunnelEventMetadata);
      return;
    }

LABEL_15:
    sub_258F0ADC0();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v5;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = (v22[7] + 16 * v16);
  v28 = *v23;
  *v23 = a1;
  v23[1] = a2;

  v24 = v28;
}

unint64_t sub_258ED80C8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_258ED8110(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a5[6];
  v14 = a6(0);
  result = sub_258EDA3A4(a2, v13 + *(*(v14 - 8) + 72) * a1, a7);
  v16 = (a5[7] + 16 * a1);
  *v16 = a3;
  v16[1] = a4;
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

uint64_t sub_258ED81CC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for EventMetadata(0);
  result = sub_258EDA3A4(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for EventMetadata);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_258ED8284(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_258F09A20();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_258ED833C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B90, &unk_258F0D0F0);
  v2 = *v0;
  v3 = sub_258F0ABB0();
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
        sub_258DE4090(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_258DEB8B8(v25, (*(v4 + 56) + v22));
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

void sub_258ED84E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988BB0, &qword_258F0D110);
  v2 = *v0;
  v3 = sub_258F0ABB0();
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

void sub_258ED86C0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v33 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v4;
  v14 = sub_258F0ABB0();
  v15 = v14;
  if (*(v13 + 16))
  {
    v33 = v8;
    v16 = (v14 + 64);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || v16 >= v13 + 64 + 8 * v17)
    {
      memmove(v16, (v13 + 64), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = *(v13 + 64);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_17:
        v28 = v25 | (v19 << 6);
        v29 = *(v34 + 72) * v28;
        sub_258EDA33C(*(v13 + 48) + v29, v12, a4);
        v28 *= 16;
        v30 = *(v15 + 48);
        v35 = *(*(v13 + 56) + v28);
        sub_258EDA3A4(v12, v30 + v29, a4);
        v31 = v35;
        *(*(v15 + 56) + v28) = v35;
        v32 = v31;
      }

      while (v23);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v33;
        goto LABEL_21;
      }

      v27 = *(v13 + 64 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v15;
  }
}

id sub_258ED88FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B88, &unk_258F16160);
  v2 = *v0;
  v3 = sub_258F0ABB0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
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

void sub_258ED8A68()
{
  v1 = v0;
  v2 = type metadata accessor for EventMetadata(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A718, &unk_258F16188);
  v5 = *v0;
  v6 = sub_258F0ABB0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v27 = v5 + 64;
    v10 = 0;
    v11 = *(v5 + 16);
    v30 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_258EDA33C(*(v5 + 48) + v22, v28, type metadata accessor for EventMetadata);
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = v30;
        sub_258EDA3A4(v21, *(v30 + 48) + v22, type metadata accessor for EventMetadata);
        *(*(v24 + 56) + 8 * v20) = v23;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v26;
        v7 = v30;
        goto LABEL_18;
      }

      v19 = *(v27 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_258ED8CB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A710, &unk_258F16178);
  v2 = *v0;
  v3 = sub_258F0ABB0();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = (*(v4 + 48) + v17);
        v24 = v21[1];
        *v23 = v20;
        v23[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v24;
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

void sub_258ED8E48(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_258F09A20();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v6);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_258F0ABB0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v12)
    {
      memmove(v11, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }
}

void (*sub_258ED90C0(uint64_t *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for EventMetadata(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[8] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_258EDA33C(a2, v9, type metadata accessor for EventMetadata);
  v6[9] = sub_258EDA1C4(v6);
  v6[10] = sub_258ED964C(v6 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_258ED91BC;
}

void (*sub_258ED91D4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
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
  v7[8] = sub_258EDA1C4(v7);
  v7[9] = sub_258ED9900(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_258ED9280;
}

void sub_258ED9280(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_258ED92E0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_258F09A20();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_258EDA1EC(v6);
  v6[12] = sub_258ED9BCC(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_258ED941C;
}

void sub_258ED941C(uint64_t a1)
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

void (*sub_258ED94B4(uint64_t *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for FunnelEventMetadata(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[8] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_258EDA33C(a2, v9, type metadata accessor for FunnelEventMetadata);
  v6[9] = sub_258EDA1C4(v6);
  v6[10] = sub_258ED9EA0(v6 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_258ED95B0;
}

void sub_258ED95C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_258EDA40C(v6, a3);
  v5(v4, 0);
  free(v6);

  free(v4);
}

void (*sub_258ED964C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = *(type metadata accessor for EventMetadata(0) - 8);
  *(v10 + 24) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 32) = v12;
  v13 = *v4;
  v14 = sub_258E2EF70(a2);
  *(v10 + 48) = v15 & 1;
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
      sub_258ED8A68();
      v14 = v22;
      goto LABEL_14;
    }

    sub_258ED60EC(v19, a3 & 1);
    v14 = sub_258E2EF70(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_258F0ADC0();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 40) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v10 = v24;
  return sub_258ED97F8;
}

void sub_258ED97F8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[5];
    if ((*a1)[6])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[4];
      sub_258EDA33C(v1[1], v7, type metadata accessor for EventMetadata);
      sub_258ED81CC(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[6])
  {
    v5 = v1[5];
    v6 = *v1[2];
    sub_258EDA40C(*(v6 + 48) + *(v1[3] + 72) * v5, type metadata accessor for EventMetadata);
    sub_258ED6AD4(v5, v6);
  }

  v8 = v1[4];

  free(v8);

  free(v1);
}

void (*sub_258ED9900(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_258E2E9B4(a2, a3);
  *(v11 + 48) = v14 & 1;
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
      sub_258ED8CB4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_258ED6470(v18, a4 & 1);
    v13 = sub_258E2E9B4(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_258F0ADC0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v23 = (*(*v5 + 56) + 16 * v13);
    v24 = *v23;
    v25 = v23[1];
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  *v11 = v24;
  v11[1] = v25;
  return sub_258ED9A60;
}

void sub_258ED9A60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  LOBYTE(v5) = *(*a1 + 48);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v6 = v2[5];
    v7 = *v2[4];
    if ((*a1)[6])
    {
      goto LABEL_9;
    }

    v9 = v2[2];
    v8 = v2[3];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    v10 = 16 * v6;
    v11 = (v7[6] + v10);
    *v11 = v9;
    v11[1] = v8;
    v5 = (v7[7] + v10);
    *v5 = v4;
    v5[1] = v3;
    v12 = v7[2];
    v13 = __OFADD__(v12, 1);
    v3 = v12 + 1;
    if (!v13)
    {
LABEL_13:
      v7[2] = v3;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v5)
    {
      v15 = v2[5];
      v16 = *v2[4];
      sub_258EDA2A0(*(v16 + 48) + 16 * v15);
      sub_258ED6D90(v15, v16);
    }

    goto LABEL_14;
  }

  v6 = v2[5];
  v7 = *v2[4];
  if ((v5 & 1) == 0)
  {
    v18 = v2[2];
    v17 = v2[3];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    v19 = 16 * v6;
    v20 = (v7[6] + v19);
    *v20 = v18;
    v20[1] = v17;
    v21 = (v7[7] + v19);
    *v21 = v4;
    v21[1] = v3;
    v22 = v7[2];
    v13 = __OFADD__(v22, 1);
    v3 = v22 + 1;
    if (v13)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  v14 = (v7[7] + 16 * v6);
  *v14 = v4;
  v14[1] = v3;
LABEL_14:

  free(v2);
}

void (*sub_258ED9BCC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_258F09A20();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_258E2EED8(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_258ED8E48(&qword_27F988B68, &qword_258F0D0C8);
      v15 = v23;
      goto LABEL_14;
    }

    sub_258ED5D10(v20, a3 & 1, &qword_27F988B68, &qword_258F0D0C8);
    v15 = sub_258E2EED8(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_258F0ADC0();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_258ED9DA0;
}

void sub_258ED9DA0(uint64_t **a1)
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
      sub_258ED8284(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_258ED6F40(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

void (*sub_258ED9EA0(uint64_t *a1, uint64_t a2, char a3))(void ***a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 16) = a2;
  *(v9 + 24) = v4;
  v11 = *(type metadata accessor for FunnelEventMetadata(0) - 8);
  *(v10 + 32) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 40) = v12;
  v13 = *v4;
  v14 = sub_258E2F028(a2);
  *(v10 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_18;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_258ED86C0(type metadata accessor for FunnelEventMetadata, &qword_27F98A708, &qword_258F16170, type metadata accessor for FunnelEventMetadata);
      v14 = v22;
      goto LABEL_14;
    }

    sub_258ED674C(v19, a3 & 1);
    v14 = sub_258E2F028(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_18:
    result = sub_258F0ADC0();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v14;
  v24 = 0uLL;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 16 * v14);
  }

  *v10 = v24;
  return sub_258EDA084;
}

void sub_258EDA084(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  if (v2)
  {
    v4 = *v1[3];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(v4[7] + 16 * v5) = **a1;
    }

    else
    {
      v8 = v1[5];
      sub_258EDA33C(v1[2], v8, type metadata accessor for FunnelEventMetadata);
      sub_258ED8110(v5, v8, v2, v3, v4, type metadata accessor for FunnelEventMetadata, type metadata accessor for FunnelEventMetadata);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[3];
    sub_258EDA40C(*(v7 + 48) + *(v1[4] + 9) * v6, type metadata accessor for FunnelEventMetadata);
    sub_258ED7260(v6, v7);
  }

  v9 = v1[5];
  v10 = *v1;
  v11 = v1[1];
  sub_258EDA220(v2, v3);
  sub_258EDA260(v10, v11);
  free(v9);

  free(v1);
}

uint64_t (*sub_258EDA1C4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_258EDA46C;
}

uint64_t (*sub_258EDA1EC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_258EDA214;
}

double sub_258EDA220(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
  }

  return result;
}

void *sub_258EDA260(void *result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_258EDA2F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258EDA33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258EDA3A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258EDA40C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SiriSegmentCohortDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t SiriSegmentCohortDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258EDA58C(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: SiriSegmentCohortDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t SiriSegmentCohortDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriSegmentCohortDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258EDA768()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258EDA56C();
}

uint64_t type metadata accessor for SiriSegmentCohortDataProvider(uint64_t a1)
{
  result = qword_27F98A738;
  if (!qword_27F98A738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SiriSegmentCohortDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t SiriSegmentCohortMetrics.__allocating_init(defaults:logger:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SiriSegmentCohortMetrics.init(defaults:logger:)(a1, a2);
  return v4;
}

uint64_t sub_258EDAA04@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SiriSegmentCohortMetrics(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t SiriSegmentCohortMetrics.init(defaults:logger:)(void *a1, uint64_t a2)
{
  v111 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v107 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v108 = &v95 - v9;
  v102 = sub_258F09B00();
  v101 = *(v102 - 1);
  MEMORY[0x28223BE20](v102, v10);
  v99 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_258F09A20();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v12);
  v97 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258F0A370();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v106 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v115 = &v95 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v110 = (&v95 - v23);
  v24 = sub_258F09A70();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v104 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v95 - v30;
  v124 = v15;
  v32 = *(v15 + 16);
  v103 = OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_logger;
  v32(v2 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_logger, a2, v14);
  sub_258F09A60();
  v116 = v25;
  v33 = *(v25 + 32);
  v119 = v2;
  v112 = OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_oddId;
  v105 = v31;
  v117 = v24;
  v33(v2 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_oddId, v31, v24);
  v34 = sub_258F0A1F0();
  swift_allocObject();
  v35 = v111;
  v36 = sub_258F0A1E0();
  v122 = v34;
  v123 = MEMORY[0x277D04548];
  v121[0] = v36;
  v118 = a2;
  v37 = a2;
  v38 = v14;
  v114 = v15 + 16;
  v109 = v32;
  v32(v110, v37, v14);
  v39 = sub_258F09C20();
  swift_allocObject();
  v40 = v113;
  v41 = sub_258F09BE0();
  if (v40)
  {
    v42 = *(v124 + 8);
    v42(v118, v14);

    v43 = v119;
    v42(v119 + v103, v14);
    v116[1](&v112[v43], v117);
    type metadata accessor for SiriSegmentCohortMetrics(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v44 = v41;
    v96 = v35;
    v45 = v97;
    sub_258F0A090();
    v46 = v99;
    sub_258F09AC0();
    v113 = v44;
    sub_258F09C10();
    (*(v101 + 1))(v46, v102);
    v98[1](v45, v100);
    v47 = v115;
    v48 = v118;
    v49 = v109;
    v109(v115, v118, v38);
    type metadata accessor for SiriSegmentCohortDataProvider(0);
    v50 = swift_allocObject();
    v51 = *(v124 + 32);
    v103 = v124 + 32;
    v110 = v51;
    v51(v50 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortDataProvider_logger, v47, v38);
    v52 = v119;
    *(v119 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortDataProvider) = v50;
    v53 = v52;
    v54 = v49;
    v49(v47, v48, v38);
    v111 = 0;
    v55 = v116[2];
    v98 = v116 + 2;
    v56 = &v112[v53];
    v57 = v105;
    v58 = v117;
    (v55)(v105, v56, v117);
    v101 = v55;
    v112 = v96;

    v59 = v108;
    sub_258EDAA04(v108);
    v54(v106, v47, v38);
    v60 = v54;
    sub_258DECF90(v59, v107);
    (v55)(v104, v57, v58);
    sub_258F09F30();
    v100 = sub_258F09F20();
    v61 = v38;
    v62 = type metadata accessor for CAAnalyticsEventSubmitter();
    v63 = swift_allocObject();
    type metadata accessor for BiomeResultsWrapperFactory();
    v99 = swift_allocObject();
    v122 = v62;
    v123 = &off_286A2C648;
    v121[0] = v63;
    type metadata accessor for SiriSegmentCohortCalculator(0);
    v64 = swift_allocObject();
    v65 = __swift_mutable_project_boxed_opaque_existential_1(v121, v62);
    v102 = &v95;
    MEMORY[0x28223BE20](v65, v65);
    v67 = (&v95 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v68 + 16))(v67);
    v69 = *v67;
    v120[3] = v62;
    v120[4] = &off_286A2C648;
    v120[0] = v69;
    v70 = v106;
    v60(v64 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_logger, v106, v61);
    v71 = v107;
    sub_258DECF90(v107, v64 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlFileURL);
    v72 = (v64 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bookmarkService);
    v72[3] = v39;
    v72[4] = &off_286A2FA30;
    *v72 = v113;
    v73 = v104;
    v74 = v117;
    (v101)(v64 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_oddId, v104, v117);
    *(v64 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_defaults) = v112;
    *(v64 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_bugReporter) = v100;
    sub_258DE3FD8(v120, v64 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_analyticsEventSubmitter);
    *(v64 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_biomeResultsFactory) = v99;
    v75 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    *(v64 + OBJC_IVAR____TtC16MetricsFramework27SiriSegmentCohortCalculator_sqlDateFormatter) = v75;
    v76 = sub_258F0A4E0();
    [v75 setDateFormat_];

    v77 = v116[1];
    v77(v73, v74);
    sub_258DED000(v71);
    v78 = v124 + 8;
    v79 = *(v124 + 8);
    (v79)(v70, v61);
    v116 = v79;
    v124 = v78;
    sub_258DED000(v108);
    v77(v105, v74);
    v80 = v115;
    (v79)(v115, v61);
    __swift_destroy_boxed_opaque_existential_1Tm(v120);
    __swift_destroy_boxed_opaque_existential_1Tm(v121);
    *(v119 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortCalculator) = v64;
    v81 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v82 = [v81 Metrics];
    swift_unknownObjectRelease();
    v83 = [v82 OnDeviceDigestSegmentsCohorts];
    swift_unknownObjectRelease();
    v84 = [v83 source];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A768, &unk_258F16298);
    swift_allocObject();
    v85 = sub_258F09B80();
    v86 = v118;
    v87 = v109;
    v109(v80, v118, v61);
    type metadata accessor for SiriSegmentCohortBiomeReporter(0);
    v88 = swift_allocObject();
    *(v88 + 16) = v85;
    v89 = v110;
    v110(v88 + OBJC_IVAR____TtC16MetricsFramework30SiriSegmentCohortBiomeReporter_logger, v80, v61);
    v87(v80, v86, v61);

    v90 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, 0, 0);
    type metadata accessor for SiriSegmentCohortSELFReporter(0);
    v91 = swift_allocObject();
    *(v91 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents) = MEMORY[0x277D84F90];
    v89(v91 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger, v115, v61);
    v43 = v119;
    *(v91 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService) = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_258F0F6D0;
    *(v92 + 32) = v88;
    *(v92 + 40) = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A770, &qword_258F162A8);
    swift_allocObject();

    v121[0] = sub_258F09BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A778, qword_258F162B0);
    swift_allocObject();
    v93 = sub_258F09BC0();

    (v116)(v86, v61);
    *(v43 + OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_siriSegmentCohortReporter) = v93;
  }

  return v43;
}

uint64_t type metadata accessor for SiriSegmentCohortMetrics(uint64_t a1)
{
  result = qword_27F98A7A0;
  if (!qword_27F98A7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EDB8A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EDB8C8, 0, 0);
}

uint64_t sub_258EDB8C8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258EDA56C();
}

uint64_t sub_258EDB96C(_OWORD *a1)
{
  *(v2 + 48) = v1;
  v3 = a1[1];
  *(v2 + 56) = *a1;
  *(v2 + 72) = v3;
  return MEMORY[0x2822009F8](sub_258EDB998, 0, 0);
}

uint64_t sub_258EDB998()
{
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  v3 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_258EDBA64;

  return v3(v0 + 16);
}

uint64_t sub_258EDBA64()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258EDC784, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_258EDBB98(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EDBBB8, 0, 0);
}

uint64_t sub_258EDBBB8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED408;
  v2 = *(v0 + 16);

  return sub_258ED0E2C(v2);
}

uint64_t SiriSegmentCohortMetrics.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t SiriSegmentCohortMetrics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework24SiriSegmentCohortMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_258EDBE38(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EDBE5C, 0, 0);
}

uint64_t sub_258EDBE5C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258EDA56C();
}

uint64_t sub_258EDBF00(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EDBF24, 0, 0);
}

uint64_t sub_258EDBF24()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED984;
  v2 = *(v0 + 16);

  return sub_258ED0E2C(v2);
}

uint64_t sub_258EDBFC8(_OWORD *a1)
{
  *(v2 + 48) = *v1;
  v3 = a1[1];
  *(v2 + 56) = *a1;
  *(v2 + 72) = v3;
  return MEMORY[0x2822009F8](sub_258EDBFF8, 0, 0);
}

uint64_t sub_258EDBFF8()
{
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  v3 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_258EDC0C4;

  return v3(v0 + 16);
}

uint64_t sub_258EDC0C4()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258EDC1F8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_258EDC2AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriSegmentCohortMetrics(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258EDC2F8(uint64_t a1)
{
  result = sub_258F0A370();
  if (v2 <= 0x3F)
  {
    result = sub_258F09A70();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of SiriSegmentCohortMetrics.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of SiriSegmentCohortMetrics.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of SiriSegmentCohortMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258EDC840(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t dispatch thunk of SiriSegmentCohortReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t SiriSegmentCohortSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents) = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService) = a2;
  return v4;
}

uint64_t sub_258EDCB68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_258EDCBD0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_258EDCC18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SiriSegmentCohortSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents) = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService) = a2;
  return v2;
}

uint64_t sub_258EDCD64(_OWORD *a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *(type metadata accessor for DeviceSegmentsCohorts(0) - 8);
  *(v2 + 56) = swift_task_alloc();
  v4 = a1[1];
  *(v2 + 64) = *a1;
  *(v2 + 80) = v4;

  return MEMORY[0x2822009F8](sub_258EDCE2C, 0, 0);
}

uint64_t sub_258EDCE2C(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 80);
  v3 = *(v2 + 16);
  *(v1 + 96) = v3;
  if (!v3)
  {
LABEL_18:
    v18 = *(v1 + 88);
    v19 = *(v1 + 40);
    v32 = *(v1 + 64);
    v33 = v2;
    v34 = v18;
    *(v1 + 176) = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
    v20 = sub_258EDE228(&v32);
    v21 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents;
    swift_beginAccess();
    *(v19 + v21) = v20;

    v22 = *(v19 + v21);
    *(v1 + 184) = v22;
    if (!(v22 >> 62))
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_20;
    }

LABEL_31:
    v23 = sub_258F0AA20();
LABEL_20:
    v24 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService;
    *(v1 + 192) = v23;
    *(v1 + 200) = v24;

    v25 = *(v1 + 184);
    if (!v23)
    {

      v31 = *(v1 + 8);

      return v31();
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x259C9E3B0](0);
    }

    else
    {
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        v13 = MEMORY[0x259C9E3B0](0);
LABEL_14:
        v14 = v13;
        *(v1 + 144) = v13;
        *(v1 + 152) = 1;
        v15 = *(v1 + 112);
        v16 = *(v1 + 40);
        v17 = swift_task_alloc();
        *(v1 + 160) = v17;
        *v17 = v1;
        v17[1] = sub_258EDD1E4;

        return sub_258EB5738(v14, v16 + v15);
      }

      v26 = *(v25 + 32);
    }

    *(v1 + 208) = v26;
    *(v1 + 216) = 1;
    v27 = *(v1 + 176);
    v28 = *(v1 + 40);
    v29 = v26;
    v30 = swift_task_alloc();
    *(v1 + 224) = v30;
    *v30 = v1;
    v30[1] = sub_258EDD6A0;

    return sub_258EB6184(v29, v28 + v27);
  }

  v4 = *(v1 + 48);
  v5 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
  *(v1 + 104) = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService;
  *(v1 + 112) = v5;
  *(v1 + 240) = *(v4 + 80);
  *(v1 + 120) = 0;
  if (!*(v2 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(v1 + 56);
    sub_258EDEBBC(v2 + ((*(v1 + 240) + 32) & ~*(v1 + 240)) + *(*(v1 + 48) + 72) * v6, v7, type metadata accessor for DeviceSegmentsCohorts);
    v8 = sub_258EDDB00();
    *(v1 + 128) = v8;
    sub_258EDEC24(v7, type metadata accessor for DeviceSegmentsCohorts);
    result = v8 >> 62 ? sub_258F0AA20() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 136) = result;
    v10 = *(v1 + 128);
    if (result)
    {
      break;
    }

    v11 = *(v1 + 120);
    v12 = *(v1 + 96);

    if (v11 + 1 == v12)
    {
      v2 = *(v1 + 80);
      goto LABEL_18;
    }

    v6 = *(v1 + 120) + 1;
    *(v1 + 120) = v6;
    v2 = *(v1 + 80);
    if (v6 >= *(v2 + 16))
    {
      goto LABEL_30;
    }
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v10 + 32);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_258EDD1E4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {

    v2 = sub_258EDD918;
  }

  else
  {
    v2 = sub_258EDD300;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_258EDD300()
{
  v32 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);

  if (v1 != v2)
  {
    v4 = *(v0 + 152);
LABEL_10:
    v11 = *(v0 + 128);
    if ((v11 & 0xC000000000000001) != 0)
    {
LABEL_30:
      v12 = MEMORY[0x259C9E3B0](v4);
    }

    else
    {
      if (v4 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        v22 = sub_258F0AA20();
        goto LABEL_19;
      }

      v12 = *(v11 + 8 * v4 + 32);
    }

    v13 = v12;
    *(v0 + 144) = v12;
    *(v0 + 152) = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      v14 = *(v0 + 112);
      v15 = *(v0 + 40);
      v16 = swift_task_alloc();
      *(v0 + 160) = v16;
      *v16 = v0;
      v16[1] = sub_258EDD1E4;

      sub_258EB5738(v13, v15 + v14);
      return;
    }

    __break(1u);
    goto LABEL_32;
  }

  while (1)
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 96);

    if (v3 + 1 == v4)
    {
      break;
    }

    v5 = *(v0 + 120) + 1;
    *(v0 + 120) = v5;
    v6 = *(v0 + 80);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v7 = *(v0 + 56);
    sub_258EDEBBC(v6 + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + *(*(v0 + 48) + 72) * v5, v7, type metadata accessor for DeviceSegmentsCohorts);
    v8 = sub_258EDDB00();
    *(v0 + 128) = v8;
    sub_258EDEC24(v7, type metadata accessor for DeviceSegmentsCohorts);
    if (v8 >> 62)
    {
      v10 = sub_258F0AA20();
      *(v0 + 136) = v10;
      if (v10)
      {
LABEL_8:
        v4 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 136) = v9;
      if (v9)
      {
        goto LABEL_8;
      }
    }
  }

  v17 = *(v0 + 40);
  v18 = *(v0 + 80);
  v31[0] = *(v0 + 64);
  v31[1] = v18;
  *(v0 + 176) = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
  v19 = sub_258EDE228(v31);
  v20 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents;
  swift_beginAccess();
  *(v17 + v20) = v19;

  v21 = *(v17 + v20);
  *(v0 + 184) = v21;
  if (v21 >> 62)
  {
    goto LABEL_33;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
  v23 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_reportingService;
  *(v0 + 192) = v22;
  *(v0 + 200) = v23;

  v24 = *(v0 + 184);
  if (v22)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x259C9E3B0](0);
    }

    else
    {
      if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v25 = *(v24 + 32);
    }

    *(v0 + 208) = v25;
    *(v0 + 216) = 1;
    v26 = *(v0 + 176);
    v27 = *(v0 + 40);
    v28 = v25;
    v29 = swift_task_alloc();
    *(v0 + 224) = v29;
    *v29 = v0;
    v29[1] = sub_258EDD6A0;

    sub_258EB6184(v28, v27 + v26);
  }

  else
  {

    v30 = *(v0 + 8);

    v30();
  }
}

uint64_t sub_258EDD6A0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {

    v2 = sub_258EDDA0C;
  }

  else
  {
    v2 = sub_258EDD7BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_258EDD7BC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);

  if (v1 == v2)
  {

    v3 = *(v0 + 8);

    v3();
    return;
  }

  v4 = *(v0 + 216);
  v5 = *(v0 + 184);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x259C9E3B0](*(v0 + 216));
  }

  else
  {
    if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v6 = *(v5 + 8 * v4 + 32);
  }

  v7 = v6;
  *(v0 + 208) = v6;
  *(v0 + 216) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(v0 + 176);
  v9 = *(v0 + 40);
  v10 = swift_task_alloc();
  *(v0 + 224) = v10;
  *v10 = v0;
  v10[1] = sub_258EDD6A0;

  sub_258EB6184(v7, v9 + v8);
}

uint64_t sub_258EDD918(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Unable to report event", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 144);

  swift_willThrow();

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_258EDDA0C(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Unable to report event", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 208);

  swift_willThrow();

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_258EDDB00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v53 - v4;
  v6 = type metadata accessor for EventMetadata(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x277D84F90];
  sub_258DE20C0(v1, v5, &qword_27F9894E0, &unk_258F106A0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_258DE2184(v5, &qword_27F9894E0, &unk_258F106A0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_258E3F8CC(v5, v10);
    v12 = type metadata accessor for DeviceSegmentsCohorts(0);
    v13 = *&v1[*(v12 + 20)];
    if (v13 && (v14 = [objc_allocWithZone(MEMORY[0x277D593E0]) init]) != 0)
    {
      v15 = v14;
      v54 = v12;
      v55 = v1;
      v57 = 1;
      v56 = v10;
      v16 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
      v53 = v15;
      [v15 setEventMetadata_];

      v17 = [objc_allocWithZone(MEMORY[0x277D592E8]) init];
      v18 = *(v13 + 16);
      if (v18)
      {
        v19 = (v13 + 44);
        do
        {
          v20 = *(v19 - 3);
          v21 = *(v19 - 8);
          v22 = *(v19 - 1);
          v23 = *v19;
          v24 = [objc_allocWithZone(MEMORY[0x277D592E0]) init];
          if (v24)
          {
            if (v21)
            {
              v25 = 0;
            }

            else
            {
              v25 = v20;
            }

            v26 = v24;
            [v24 setSegmentType_];
            if (v23)
            {
              v27 = 0;
            }

            else
            {
              v27 = v22;
            }

            [v26 setSegmentDataAvailabilityState_];
            v28 = v17;
            [v28 addSegments_];
          }

          v19 += 32;
          --v18;
        }

        while (v18);
      }

      v29 = v53;
      [v53 setDeviceSegmentsReported_];
      v30 = v29;
      MEMORY[0x259C9DF50]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_258F0A6D0();
      }

      sub_258F0A700();

      v11 = v59;
      v1 = v55;
      v10 = v56;
      v12 = v54;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v31 = *&v1[*(v12 + 24)];
    if (v31 && (v32 = [objc_allocWithZone(MEMORY[0x277D593E0]) init]) != 0)
    {
      v33 = v32;
      v58 = 1;
      v56 = v10;
      v34 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
      v55 = v33;
      [v33 setEventMetadata_];

      v35 = [objc_allocWithZone(MEMORY[0x277D592D8]) init];
      v36 = *(v31 + 16);
      if (v36)
      {
        v37 = (v31 + 48);
        do
        {
          v38 = *(v37 - 4);
          v39 = *(v37 - 12);
          v40 = *(v37 - 2);
          v41 = *(v37 - 4);
          v42 = *v37;
          v43 = objc_allocWithZone(MEMORY[0x277D592D0]);
          v44 = v42;
          v45 = [v43 0x2798CCB78];
          if (v45)
          {
            if (v39)
            {
              v46 = 0;
            }

            else
            {
              v46 = v38;
            }

            v47 = v45;
            [v45 setCohortType_];
            if (v41)
            {
              v48 = 0;
            }

            else
            {
              v48 = v40;
            }

            [v47 setCohortDataAvailabilityState_];
            [v47 setCohortInterval_];
            v49 = v35;
            [v49 addCohorts_];

            v44 = v47;
          }

          v37 += 3;

          --v36;
        }

        while (v36);
      }

      v50 = v55;
      [v55 setDeviceCohortsReported_];
      v51 = v50;
      MEMORY[0x259C9DF50]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_258F0A6D0();
      }

      sub_258F0A700();

      sub_258EDEC24(v56, type metadata accessor for EventMetadata);
      return v59;
    }

    else
    {
      sub_258EDEC24(v10, type metadata accessor for EventMetadata);
    }
  }

  return v11;
}

uint64_t sub_258EDE03C()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t SiriSegmentCohortSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SiriSegmentCohortSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258EDE228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v77 = &v69 - v8;
  v9 = sub_258F09A70();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v69 - v16;
  v18 = type metadata accessor for DeviceBatchData(0);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 24);
  v25 = *(v24 + 16);
  if (v25)
  {
    v79 = v17;
    v80 = v9;
    v74 = v20;
    v75 = v6;
    v70 = v14;
    v26 = v24 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v27 = (v10 + 48);
    v78 = (v10 + 32);
    v69 = MEMORY[0x277D84F90];
    v72 = (v10 + 8);
    v73 = (v10 + 48);
    v28 = 0x277D59000uLL;
    v83 = *(v21 + 72);
    v84 = MEMORY[0x277D84F90];
    v29 = &selRef_setSampledErrorAsset_;
    v30 = v77;
    v31 = v23;
    v71 = v23;
    while (1)
    {
      sub_258EDEBBC(v26, v31, type metadata accessor for DeviceBatchData);
      v32 = [objc_allocWithZone(*(v28 + 392)) v29[10]];
      if (v32)
      {
        v33 = v32;
        v34 = [objc_allocWithZone(MEMORY[0x277D59190]) v29[10]];
        if (v34)
        {
          v35 = v34;
          v36 = [objc_allocWithZone(MEMORY[0x277D59198]) v29[10]];
          if (!v36)
          {
            sub_258EDEC24(v31, type metadata accessor for DeviceBatchData);

LABEL_22:
            v29 = &selRef_setSampledErrorAsset_;
            goto LABEL_4;
          }

          v81 = v36;
          v82 = v35;
          sub_258DE20C0(v31, v30, &qword_27F988730, &unk_258F0F8E0);
          v37 = *v27;
          v38 = v30;
          v39 = v30;
          v40 = v80;
          if ((*v27)(v38, 1, v80) != 1)
          {
            v41 = v39;
            v42 = v40;
            v76 = *v78;
            v76(v79, v41, v40);
            v43 = v74;
            v44 = v31 + *(v74 + 20);
            v45 = v75;
            sub_258DE20C0(v44, v75, &qword_27F988730, &unk_258F0F8E0);
            if (v37(v45, 1, v42) == 1)
            {

              (*v72)(v79, v42);
              v46 = v71;
              sub_258EDEC24(v71, type metadata accessor for DeviceBatchData);
              sub_258DE2184(v45, &qword_27F988730, &unk_258F0F8E0);
              v30 = v77;
              v31 = v46;
            }

            else
            {
              v47 = v70;
              v48 = v42;
              v76(v70, v45, v42);
              v31 = v71;
              v49 = &v71[*(v43 + 24)];
              v50 = v82;
              if (v49[4] == 1)
              {

                v51 = *v72;
                (*v72)(v47, v48);
                v51(v79, v48);
                sub_258EDEC24(v31, type metadata accessor for DeviceBatchData);
                v30 = v77;
              }

              else
              {
                v52 = &v71[*(v43 + 28)];
                v30 = v77;
                if (v52[4] == 1)
                {

                  v53 = *v72;
                  v54 = v80;
                  (*v72)(v70, v80);
                  v53(v79, v54);
                  sub_258EDEC24(v31, type metadata accessor for DeviceBatchData);
                }

                else
                {
                  LODWORD(v69) = *v49;
                  LODWORD(v76) = *v52;
                  v55 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                  v56 = sub_258F09A50();
                  v57 = [v55 initWithNSUUID_];

                  [v50 setOdbatchId_];
                  v58 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                  v59 = sub_258F09A50();
                  v60 = [v58 initWithNSUUID_];

                  v61 = v81;
                  [v81 setOriginalClockId_];

                  [v61 setDaysWithTwoValidAssistantTurnsPerWeek_];
                  [v61 setDaysWithTwoAssistantSpeechRequestsPerWeek_];
                  [v33 setEventMetadata_];
                  [v33 setOdbatchDataReported_];
                  v62 = v33;
                  MEMORY[0x259C9DF50]();
                  v63 = v80;
                  if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_258F0A6D0();
                  }

                  sub_258F0A700();

                  v64 = *v72;
                  (*v72)(v70, v63);
                  v64(v79, v63);
                  sub_258EDEC24(v31, type metadata accessor for DeviceBatchData);
                  v69 = v84;
                }
              }
            }

            v27 = v73;
            v28 = 0x277D59000;
            goto LABEL_22;
          }

          sub_258EDEC24(v31, type metadata accessor for DeviceBatchData);

          sub_258DE2184(v39, &qword_27F988730, &unk_258F0F8E0);
          v28 = 0x277D59000;
          v29 = &selRef_setSampledErrorAsset_;
          v30 = v39;
        }

        else
        {
          sub_258EDEC24(v31, type metadata accessor for DeviceBatchData);
        }
      }

      else
      {
        sub_258EDEC24(v31, type metadata accessor for DeviceBatchData);
      }

LABEL_4:
      v26 += v83;
      if (!--v25)
      {
        return v69;
      }
    }
  }

  v66 = sub_258F0A350();
  v67 = sub_258F0A800();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_258DD8000, v66, v67, "No On-Device ODBATCH Data available", v68, 2u);
    MEMORY[0x259C9EF40](v68, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t type metadata accessor for SiriSegmentCohortSELFReporter(uint64_t a1)
{
  result = qword_27F98A7C0;
  if (!qword_27F98A7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EDEA68(uint64_t a1)
{
  result = sub_258F0A370();
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

uint64_t sub_258EDEBBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258EDEC24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258EDECA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A7D0, &qword_258F16580);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A7D8, &qword_258F16588);
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6, v8);
  v11 = v16 - v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  sub_258DE4090(a1 + 32, v17);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 2;
  }

  if (v12 == 1)
  {
    goto LABEL_10;
  }

  v14 = v16[2];
  v13 = v16[3];
  sub_258DE4090(a1 + 64, v17);
  if (swift_dynamicCast())
  {
    sub_258F09DE0();
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v11, v5, v6);
    v17[0] = v14;
    v17[1] = v13;
    sub_258EDEF94();
    sub_258EDEFE8();
    v15 = sub_258F0A470();
    (*(v7 + 8))(v11, v6);

    return v15 & 1;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_258EDEF2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A7D0, &qword_258F16580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258EDEF94()
{
  result = qword_27F98A7E0;
  if (!qword_27F98A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A7E0);
  }

  return result;
}

unint64_t sub_258EDEFE8()
{
  result = qword_27F98A7E8;
  if (!qword_27F98A7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F98A7D8, &qword_258F16588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A7E8);
  }

  return result;
}

uint64_t sub_258EDF04C(uint64_t result, void *a2)
{
  if (*(result + 16))
  {
    sub_258DE4090(result + 32, v17);
    v3 = MEMORY[0x277D837D0];
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C70, qword_258F11890);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_258F0B820;
        *(inited + 32) = sub_258F0A4F0();
        *(inited + 72) = v3;
        *(inited + 40) = v11;
        *(inited + 48) = 0xD00000000000002DLL;
        *(inited + 56) = 0x8000000258F1E9D0;
        sub_258DFBCE0(inited);
        swift_setDeallocating();
        sub_258DE2184(inited + 32, &qword_27F988B98, &unk_258F0D3A0);
        v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v7 = sub_258F0A4E0();
        v8 = sub_258F0A400();

        v9 = [v12 initWithDomain:v7 code:-1 userInfo:v8];
        goto LABEL_8;
      }

      return 0;
    }

    type metadata accessor for SiriUserDefinedFunctions();
    static SiriUserDefinedFunctions.getSiriResponseCategoryUdf(siriResponseId:)(v15, v16, v17);

    if (v17[0] == 21)
    {
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C70, qword_258F11890);
        v4 = swift_initStackObject();
        *(v4 + 16) = xmmword_258F0B820;
        *(v4 + 32) = sub_258F0A4F0();
        *(v4 + 72) = v3;
        *(v4 + 40) = v5;
        *(v4 + 48) = 0xD000000000000046;
        *(v4 + 56) = 0x8000000258F1EA00;
        sub_258DFBCE0(v4);
        swift_setDeallocating();
        sub_258DE2184(v4 + 32, &qword_27F988B98, &unk_258F0D3A0);
        v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v7 = sub_258F0A4E0();
        v8 = sub_258F0A400();

        v9 = [v6 initWithDomain:v7 code:1 userInfo:v8];
LABEL_8:
        v13 = v9;

        v14 = v13;
        result = 0;
        *a2 = v13;
        return result;
      }

      return 0;
    }

    return SiriReponseCategory.rawValue.getter()._countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static SiriUserDefinedFunctions.getSiriResponseCategoryUdf(siriResponseId:)(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v64 = a2;
  v65 = a1;
  v66 = a3;
  v68[4] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v61 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v61 - v13;
  type metadata accessor for SiriUserDefinedFunctions();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_258F0A4E0();
  v18 = sub_258F0A4E0();
  v19 = [v16 URLForResource:v17 withExtension:v18];

  if (v19)
  {
    sub_258F098B0();

    v20 = sub_258F098D0();
    (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  }

  else
  {
    v20 = sub_258F098D0();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  }

  sub_258E25BDC(v11, v14);
  sub_258F098D0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v14, 1, v20) == 1)
  {
    sub_258EDFC4C();
    v23 = swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  else
  {
    sub_258DECF90(v14, v7);
    if (v22(v7, 1, v20) == 1)
    {
      __break(1u);
      return;
    }

    v25 = sub_258F098E0();
    v27 = v26;
    (*(v21 + 8))(v7, v20);
    v28 = objc_opt_self();
    v29 = sub_258F098F0();
    v68[0] = 0;
    v30 = [v28 JSONObjectWithData:v29 options:0 error:v68];

    if (v30)
    {
      v31 = v68[0];
      sub_258F0A9C0();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A7F8, &qword_258F16590);
      if (swift_dynamicCast())
      {
        v62 = v25;
        v63 = v27;
        countAndFlagsBits = v67._countAndFlagsBits;
        v33 = *(v67._countAndFlagsBits + 16);
        if (v33)
        {
          for (i = 0; v33 != i; ++i)
          {
            if (i >= *(countAndFlagsBits + 16))
            {
              __break(1u);
            }

            v36 = *(countAndFlagsBits + 8 * i + 32);
            if (*(v36 + 16))
            {

              v37 = sub_258E2E9B4(0xD000000000000010, 0x8000000258F1CC50);
              if (v38)
              {
                sub_258DE4090(*(v36 + 56) + 32 * v37, v68);
                if (swift_dynamicCast())
                {
                  if (v67._countAndFlagsBits == v65 && v67._object == v64)
                  {

LABEL_33:

                    v54 = v62;
                    v53 = v63;
                    if (*(v36 + 16) && (v55 = sub_258E2E9B4(0xD00000000000001BLL, 0x8000000258F1E510), (v56 & 1) != 0))
                    {
                      sub_258DE4090(*(v36 + 56) + 32 * v55, v68);

                      if (swift_dynamicCast())
                      {
                        SiriReponseCategory.init(rawValue:)(v67);
                        v47 = v68[0];
                        v48 = v66;
                        if (LOBYTE(v68[0]) != 21)
                        {
                          sub_258DEB978(v54, v53);
                          sub_258DE2184(v14, &qword_27F988720, &qword_258F0B830);
                          goto LABEL_28;
                        }

LABEL_40:
                        v57 = sub_258F0A810();
                        sub_258EDFCA0();
                        v58 = sub_258F0A910();
                        if (os_log_type_enabled(v58, v57))
                        {
                          v59 = swift_slowAlloc();
                          v60 = swift_slowAlloc();
                          v68[0] = v60;
                          *v59 = 136315138;
                          *(v59 + 4) = sub_258DE3018(v65, v64, v68);
                          _os_log_impl(&dword_258DD8000, v58, v57, "Unable to find the SiriReponseCategory for %s", v59, 0xCu);
                          __swift_destroy_boxed_opaque_existential_1Tm(v60);
                          MEMORY[0x259C9EF40](v60, -1, -1);
                          MEMORY[0x259C9EF40](v59, -1, -1);
                        }

                        sub_258DEB978(v54, v53);

LABEL_32:
                        sub_258DE2184(v14, &qword_27F988720, &qword_258F0B830);
                        v47 = 20;
                        goto LABEL_28;
                      }
                    }

                    else
                    {
                    }

                    v48 = v66;
                    goto LABEL_40;
                  }

                  v35 = sub_258F0AD80();

                  if (v35)
                  {
                    goto LABEL_33;
                  }
                }
              }
            }
          }
        }

        v49 = sub_258F0A810();
        sub_258EDFCA0();
        v50 = sub_258F0A910();
        if (os_log_type_enabled(v50, v49))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v68[0] = v52;
          *v51 = 136315138;
          *(v51 + 4) = sub_258DE3018(v65, v64, v68);
          _os_log_impl(&dword_258DD8000, v50, v49, "Unable to find the %s in the mapping source", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          MEMORY[0x259C9EF40](v52, -1, -1);
          MEMORY[0x259C9EF40](v51, -1, -1);
        }

        sub_258DEB978(v62, v63);

        v48 = v66;
        goto LABEL_32;
      }

      sub_258EDFC4C();
      v23 = swift_allocError();
      *v40 = 2;
    }

    else
    {
      v39 = v68[0];
      v23 = sub_258F09890();
    }

    swift_willThrow();
    sub_258DEB978(v25, v27);
  }

  sub_258DE2184(v14, &qword_27F988720, &qword_258F0B830);
  v41 = sub_258F0A820();
  sub_258EDFCA0();
  v42 = sub_258F0A910();
  if (os_log_type_enabled(v42, v41))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    v45 = v23;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v43 + 4) = v46;
    *v44 = v46;
    _os_log_impl(&dword_258DD8000, v42, v41, "unexpected error throws: %@", v43, 0xCu);
    sub_258DE2184(v44, &qword_27F988C78, &qword_258F11A20);
    MEMORY[0x259C9EF40](v44, -1, -1);
    MEMORY[0x259C9EF40](v43, -1, -1);
  }

  else
  {
  }

  v47 = 21;
  v48 = v66;
LABEL_28:
  *v48 = v47;
}

unint64_t sub_258EDFC4C()
{
  result = qword_27F98A7F0;
  if (!qword_27F98A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A7F0);
  }

  return result;
}

unint64_t sub_258EDFCA0()
{
  result = qword_27F988A08;
  if (!qword_27F988A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F988A08);
  }

  return result;
}

uint64_t sub_258EDFD08(uint64_t result, void *a2)
{
  if (*(result + 16))
  {
    sub_258DE4090(result + 32, v14);
    v3 = MEMORY[0x277D837D0];
    if (swift_dynamicCast())
    {
      v4 = _s16MetricsFramework24SiriUserDefinedFunctionsC09convertToC13ResponseIdUdf03rawI0SSSgSS_tFZ_0(v12, v13);

      return v4;
    }

    else if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C70, qword_258F11890);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_258F0B820;
      *(inited + 32) = sub_258F0A4F0();
      *(inited + 72) = v3;
      *(inited + 40) = v6;
      *(inited + 48) = 0xD000000000000018;
      *(inited + 56) = 0x8000000258F1E930;
      sub_258DFBCE0(inited);
      swift_setDeallocating();
      sub_258DE2184(inited + 32, &qword_27F988B98, &unk_258F0D3A0);
      v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v8 = sub_258F0A4E0();
      v9 = sub_258F0A400();

      v10 = [v7 initWithDomain:v8 code:-1 userInfo:v9];

      v11 = v10;
      result = 0;
      *a2 = v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258EDFF04(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_258F0A5D0();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x2821FBD18](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v1);
  }

  return result;
}

uint64_t MetricsUtilityError.hashValue.getter()
{
  v1 = *v0;
  sub_258F0AE40();
  MEMORY[0x259C9E710](v1);
  return sub_258F0AE90();
}

id sub_258EE002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_258F0A4E0();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_258F09890();

    swift_willThrow();
  }

  return v6;
}

uint64_t _s16MetricsFramework24SiriUserDefinedFunctionsC09convertToC13ResponseIdUdf03rawI0SSSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A438, &unk_258F166C0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v45 - v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v7 = sub_258EE002C(0xD000000000000021, 0x8000000258F1E950, 0);
  v8 = sub_258F0A4E0();
  v9 = sub_258F0A5C0();
  v10 = sub_258F0A4E0();
  v11 = &selRef_setSampledErrorAsset_;
  v12 = [v7 stringByReplacingMatchesInString:v8 options:0 range:0 withTemplate:{v9, v10}];

  v13 = sub_258F0A4F0();
  v15 = v14;

  *&v47 = v13;
  *(&v47 + 1) = v15;
  sub_258DEF388();

  v16 = sub_258F0A9B0();

  v17 = *(v16 + 16);
  v46 = v7;
  if (v17 < 3)
  {

LABEL_7:
    v30 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v31 = sub_258EE002C(0x2E5D3A2E5C245C5BLL, 0xEA0000000000242ALL, 0);
    v32 = sub_258F0A4E0();
    v33 = sub_258F0A5C0();

    v34 = sub_258F0A4E0();
    v35 = [v31 v11[287]];

    v36 = sub_258F0A4F0();
    v38 = v37;

    *&v47 = v36;
    *(&v47 + 1) = v38;
    *&v54 = v36;
    *(&v54 + 1) = v38;
    v52 = 0xD000000000000010;
    v53 = 0x8000000258F1E9B0;
    sub_258EDEF94();
    sub_258EE0718();
    if (sub_258F0A460())
    {
      v39 = sub_258F0A5C0();
      sub_258EDFF04(v39);
      v40 = *(&v47 + 1);
      v36 = v47;
      v54 = v47;
      v52 = 95;
      v53 = 0xE100000000000000;
      v41 = sub_258F09AA0();
      (*(*(v41 - 8) + 56))(v5, 1, 1, v41);

      sub_258F0A980();
      v43 = v42;
      sub_258DE2184(v5, &qword_27F98A438, &unk_258F166C0);

      if ((v43 & 1) == 0)
      {
        v54 = __PAIR128__(v40, v36);
        v52 = 95;
        v53 = 0xE100000000000000;
        v50 = 35;
        v51 = 0xE100000000000000;
        v36 = sub_258F0A970();

        return v36;
      }
    }

    else
    {
    }

    return v36;
  }

  if (!*(v16 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = *(v16 + 32);
  v19 = *(v16 + 40);
  v21 = *(v16 + 48);
  v20 = *(v16 + 56);
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;

  v22 = sub_258F0A5C0();
  v23 = sub_258F0A940();
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  MEMORY[0x259C9DE50](v25);
  *&v47 = v18;
  *(&v47 + 1) = v19;
  v48 = v21;
  v49 = v20;
  sub_258EE076C();
  sub_258F0A5E0();
  *&v47 = 35;
  *(&v47 + 1) = 0xE100000000000000;
  sub_258F0A5E0();

  if (*(v16 + 16) >= 2uLL)
  {
    v27 = *(&v54 + 1);
    v26 = v54;
    v45 = *(v16 + 64);
    v29 = *(v16 + 80);
    v28 = *(v16 + 88);

    v54 = __PAIR128__(v27, v26);
    v47 = v45;
    v48 = v29;
    v49 = v28;
    sub_258F0A5E0();

    v7 = v46;
    v11 = &selRef_setSampledErrorAsset_;
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_258EE069C()
{
  result = qword_27F98A800;
  if (!qword_27F98A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A800);
  }

  return result;
}

unint64_t sub_258EE0718()
{
  result = qword_27F98A808;
  if (!qword_27F98A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A808);
  }

  return result;
}

unint64_t sub_258EE076C()
{
  result = qword_27F98A810;
  if (!qword_27F98A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A810);
  }

  return result;
}

id SpeakerIdManifestResult.speakerIdSelectionEvents.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t SpeakerIdManifestResult.speakerIdManifestEvents.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SpeakerIdManifestCalculator.__allocating_init(defaults:logger:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F0A370();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = type metadata accessor for SamplingUtils();
  v10 = type metadata accessor for CAAnalyticsEventSubmitter();
  v11 = swift_allocObject();
  v22[3] = v10;
  v22[4] = &off_286A2C648;
  v22[0] = v11;
  type metadata accessor for SpeakerIdManifestCalculator(0);
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v22, v10);
  MEMORY[0x28223BE20](v13, v13);
  v15 = (&v22[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v18 = (v12 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_analyticsEventSubmitter);
  v18[3] = v10;
  v18[4] = &off_286A2C648;
  *v18 = v17;
  sub_258F09AE0();
  *(v12 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_defaults) = a1;
  (*(v5 + 32))(v12 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_logger, v8, v4);
  v19 = (v12 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_samplingUtils);
  *v19 = v9;
  v19[1] = &protocol witness table for SamplingUtils;
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  (*(v5 + 8))(a2, v4);
  return v12;
}

uint64_t type metadata accessor for SpeakerIdManifestCalculator(uint64_t a1)
{
  result = qword_27F98A840;
  if (!qword_27F98A840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EE0B30(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_258EE0B50, 0, 0);
}

uint64_t sub_258EE0B50(uint64_t a1)
{
  v78 = v1;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdManifestCalculator: Sampling Calculator invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v1[7];

  v6 = *(v5 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_samplingUtils);
  v7 = *(v5 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_samplingUtils + 8);
  v8 = (*(v7 + 72))(v6, v7);
  if (!v9)
  {
    v34 = sub_258F0A350();
    v35 = sub_258F0A820();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_258DD8000, v34, v35, "SpeakerIdSelectionCalculator: Unable to retrieve the siri language.", v36, 2u);
      MEMORY[0x259C9EF40](v36, -1, -1);
    }

    v37 = 0;
    v38 = &unk_286A299A8;
    goto LABEL_44;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_258F0A350();
  v13 = sub_258F0A810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v76 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_258DE3018(v10, v11, &v76);
    _os_log_impl(&dword_258DD8000, v12, v13, "#SpeakerIdManifestCalculator: locale: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x259C9EF40](v15, -1, -1);
    MEMORY[0x259C9EF40](v14, -1, -1);
  }

  if ((*(v7 + 8))(v10, v11, v6, v7) != 1)
  {

    v39 = sub_258F0A350();
    v40 = sub_258F0A810();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_258DD8000, v39, v40, "#SpeakerIdManifestCalculator: SSREnrollmentSelectionStatus is not samplingSelectionCollecting", v41, 2u);
      MEMORY[0x259C9EF40](v41, -1, -1);
    }

    v37 = 0;
    v38 = &unk_286A29980;
    goto LABEL_44;
  }

  v16 = (*(v7 + 16))(v10, v11, v6, v7);
  if (!v17)
  {

    v42 = sub_258F0A350();
    v43 = sub_258F0A820();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_258DD8000, v42, v43, "SpeakerIdSelectionCalculator: Unable to retrieve the enrollmentId.", v44, 2u);
      MEMORY[0x259C9EF40](v44, -1, -1);
    }

    v37 = 0;
    v38 = &unk_286A29958;
    goto LABEL_44;
  }

  v18 = v16;
  v19 = v17;
  v74 = v11;
  v73 = v10;
  v76 = v16;
  v77 = v17;

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0x6F697463656C6553, 0xED0000657461446ELL);

  v70 = v76;
  v71 = v77;

  v20 = sub_258EE1918(v18, v19);
  v75 = v1;
  v1[5] = v20;
  v21 = v20;
  v22 = sub_258F0A350();
  v23 = sub_258F0A810();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = *(v21 + 16);
    _os_log_impl(&dword_258DD8000, v22, v23, "#SpeakerIdManifestCalculator: Current Sample Count: %ld", v24, 0xCu);
    MEMORY[0x259C9EF40](v24, -1, -1);
  }

  v72 = v21;
  v25 = v1[7];

  v76 = v18;
  v77 = v19;

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD00000000000001DLL, 0x8000000258F1D6E0);

  v26 = *(v25 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_defaults);
  v27 = (*(v7 + 128))(v76, v77, v26, v6, v7);

  v28 = sub_258F0A350();
  v29 = v18;
  v30 = sub_258F0A810();

  if (os_log_type_enabled(v28, v30))
  {
    v31 = swift_slowAlloc();
    v32 = v27;
    v33 = swift_slowAlloc();
    v76 = v33;
    *v31 = 134218242;
    *(v31 + 4) = v32;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_258DE3018(v29, v19, &v76);
    _os_log_impl(&dword_258DD8000, v28, v30, "#SpeakerIdManifestCalculator: samplesUploadedCount: %ld for enrollmentId: %s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x259C9EF40](v33, -1, -1);
    MEMORY[0x259C9EF40](v31, -1, -1);

    v27 = v32;
  }

  else
  {
  }

  v45 = (*(v7 + 112))(v26, v6, v7);
  result = (*(v7 + 120))(v26, v6, v7);
  v47 = *(v72 + 16);
  v69 = v27;
  v48 = __OFADD__(v27, v47);
  v49 = v27 + v47;
  if (v48)
  {
    __break(1u);
    goto LABEL_50;
  }

  v50 = result;
  v51 = (*(v7 + 104))(v70, v71, v26, v6, v7);

  if ((v51 & 1) == 0)
  {
    sub_258EE3048(v29, v19, v73, v74);
  }

  if (v49 >= v45)
  {

    v48 = __OFSUB__(v49, v45);
    v57 = v49 - v45;
    if (!v48)
    {
      swift_beginAccess();
      v56 = sub_258EE3818(v29, v19, v75 + 5, v57);
      swift_endAccess();
      sub_258EE3048(v29, v19, v73, v74);

      v37 = 0;
      goto LABEL_41;
    }

LABEL_50:
    __break(1u);
    return result;
  }

  if (*(v72 + 16) >= v50)
  {
    if (v69)
    {

      v56 = sub_258EE1714(v29, v19, v72, v69);

      v58 = sub_258F0A350();
      v59 = sub_258F0A810();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_258DD8000, v58, v59, "#SpeakerIdManifestCalculator: Created ODSAMPLECOLLECTIONSTATUS_INTERMEDIATE_RESULT event", v60, 2u);
        MEMORY[0x259C9EF40](v60, -1, -1);
      }

      v37 = 0;
      goto LABEL_41;
    }

    (*(v7 + 152))(v26, v6, v7);
    if ((*(v7 + 160))(v6, v7))
    {

      v56 = sub_258EE1714(v29, v19, v72, 0);

      v37 = sub_258EE2484(1);
      v61 = sub_258F0A350();
      v62 = sub_258F0A810();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_258DD8000, v61, v62, "#SpeakerIdManifestCalculator: Created ODSAMPLECOLLECTIONSTATUS_INTERMEDIATE_RESULT event for first time", v63, 2u);
        MEMORY[0x259C9EF40](v63, -1, -1);
      }

      goto LABEL_41;
    }

    sub_258EE3048(v29, v19, v73, v74);

    sub_258EE3270(v29, v19);

    v52 = sub_258F0A350();
    v53 = sub_258F0A810();
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_30;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "#SpeakerIdManifestCalculator: user is not selected, mark enrollment selection as finished";
    goto LABEL_29;
  }

  swift_bridgeObjectRelease_n();

  v52 = sub_258F0A350();
  v53 = sub_258F0A810();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "#SpeakerIdManifestCalculator: Not uploading until we have the privacy approved minimal count.";
LABEL_29:
    _os_log_impl(&dword_258DD8000, v52, v53, v55, v54, 2u);
    MEMORY[0x259C9EF40](v54, -1, -1);
  }

LABEL_30:

  v37 = 0;
  v56 = 0;
LABEL_41:
  v64 = sub_258F0A350();
  v65 = sub_258F0A810();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_258DD8000, v64, v65, "#SpeakerIdManifestCalculator: Sampling Calculator Completed", v66, 2u);
    MEMORY[0x259C9EF40](v66, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A820, &qword_258F166D8);
  v38 = swift_allocObject();
  v38[1] = xmmword_258F0B820;
  *(v38 + 4) = v56;
  v1 = v75;

LABEL_44:
  v67 = v1[6];
  *v67 = v37;
  v67[1] = v38;
  v68 = v1[1];

  return v68();
}

NSObject *sub_258EE1714(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_258EE2700(a1, a2, a3, 1u);
  v16 = a1;
  v17 = a2;

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD00000000000001DLL, 0x8000000258F1D6E0);

  v11 = *(a3 + 16);
  if (__OFADD__(a4, v11))
  {
    __break(1u);
  }

  else
  {
    _s16MetricsFramework13SamplingUtilsC23setManifestCurrentCount6forKey_2inySS_SiSo14NSUserDefaultsCtFZ_0(v16, v17, a4 + v11, *(v4 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_defaults));

    v12 = sub_258F0A350();
    v13 = sub_258F0A810();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315650;
      *(v14 + 4) = sub_258DE3018(a1, a2, &v16);
      *(v14 + 12) = 2048;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2048;
      *(v14 + 24) = *(a3 + 16);

      _os_log_impl(&dword_258DD8000, v12, v13, "#SpeakerIdManifestCalculator: set manifest event manifestCurrentCount for %s to %ld + %ld", v14, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x259C9EF40](v15, -1, -1);
      MEMORY[0x259C9EF40](v14, -1, -1);
    }

    else
    {
    }

    sub_258EE3270(a1, a2);
    return v9;
  }

  return result;
}

uint64_t sub_258EE1918(unint64_t a1, void (*a2)(char *, char *, char *))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v68 - v7;
  v79 = sub_258F09A70();
  v86 = *(v79 - 8);
  v10 = MEMORY[0x28223BE20](v79, v9);
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = MEMORY[0x28223BE20](v14, v15);
  MEMORY[0x28223BE20](v16, v17);
  v89 = v68 - v20;
  v21 = MEMORY[0x277D84FA0];
  if (a2)
  {
    v73 = v19;
    v74 = v18;
    v22 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v23 = [v22 OnDeviceAnalytics];
    swift_unknownObjectRelease();
    v24 = [v23 SpeakerIdSampling];
    swift_unknownObjectRelease();
    v25 = [v24 publisher];

    v26 = swift_allocObject();
    *(v26 + 16) = MEMORY[0x277D84F90];
    v91 = (v26 + 16);
    v97 = nullsub_1;
    v98 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v94 = 1107296256;
    v95 = sub_258E0915C;
    v96 = &block_descriptor_16_0;
    v27 = _Block_copy(&aBlock);
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v2;
    v97 = sub_258EE4E50;
    v98 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v94 = 1107296256;
    v29 = v26;
    v95 = sub_258E0289C;
    v96 = &block_descriptor_22_0;
    v30 = _Block_copy(&aBlock);

    v69 = v25;
    v31 = [v25 sinkWithCompletion:v27 receiveInput:v30];
    _Block_release(v30);
    _Block_release(v27);

    v32 = sub_258F0A350();
    v33 = sub_258F0A810();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      aBlock = v90;
      *v34 = 134218242;
      v35 = v91;
      swift_beginAccess();
      if (*v35 >> 62)
      {
        v36 = sub_258F0AA20();
      }

      else
      {
        v36 = *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v37 = MEMORY[0x277D84FA0];
      *(v34 + 4) = v36;

      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_258DE3018(a1, a2, &aBlock);
      _os_log_impl(&dword_258DD8000, v32, v33, "#SpeakerIdManifestCalculator: Fetched %ld samples with enrollmentId: %s", v34, 0x16u);
      v38 = v90;
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      MEMORY[0x259C9EF40](v38, -1, -1);
      MEMORY[0x259C9EF40](v34, -1, -1);
    }

    else
    {

      v37 = MEMORY[0x277D84FA0];
      v35 = v91;
    }

    swift_beginAccess();
    v39 = *v35;
    v92 = v37;
    if (v39 >> 62)
    {
      goto LABEL_50;
    }

    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

    v75 = v40;
    if (v40)
    {
      v68[1] = v29;
      v41 = 0;
      v83 = v39 & 0xC000000000000001;
      v82 = v39 & 0xFFFFFFFFFFFFFF8;
      v81 = v39 + 32;
      v87 = (v86 + 32);
      v88 = (v86 + 48);
      v77 = a1;
      v85 = v8;
      v76 = v39;
      v29 = v75;
      v78 = a2;
      v72 = v12;
      v71 = v86 + 16;
      v70 = (v86 + 8);
      while (1)
      {
        if (v83)
        {
          v42 = MEMORY[0x259C9E3B0](v41, v39);
          v43 = __OFADD__(v41++, 1);
          if (v43)
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v41 >= *(v82 + 16))
          {
            goto LABEL_49;
          }

          v42 = *(v81 + 8 * v41);
          v43 = __OFADD__(v41++, 1);
          if (v43)
          {
LABEL_43:
            __break(1u);
LABEL_44:
            v21 = v92;
            goto LABEL_46;
          }
        }

        v84 = v42;
        v44 = [v42 enrollmentIdentifier];
        if (v44)
        {
          v45 = v44;
          v46 = sub_258F0A4F0();
          v48 = v47;

          if (v46 == a1 && v48 == a2)
          {
          }

          else
          {
            v50 = sub_258F0AD80();

            if ((v50 & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v80 = v41;
          v51 = [v84 onDeviceSampleIdentifiers];
          v52 = sub_258F0A6B0();

          v53 = *(v52 + 16);
          if (v53)
          {
            a1 = 0;
            v39 = v52 + 40;
            v91 = MEMORY[0x277D84F90];
            v12 = v79;
            while (a1 < *(v52 + 16))
            {
              a2 = *(v39 - 8);

              sub_258F09A30();

              if ((*v88)(v8, 1, v12) == 1)
              {
                sub_258DE2184(v8, &qword_27F988730, &unk_258F0F8E0);
              }

              else
              {
                a2 = *v87;
                (*v87)(v89, v8, v12);
                v54 = v91;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v54 = sub_258DE26A4(0, v54[2] + 1, 1, v54);
                }

                v55 = v54;
                v56 = v54[2];
                v91 = v55;
                v57 = v55[3];
                if (v56 >= v57 >> 1)
                {
                  v91 = sub_258DE26A4((v57 > 1), v56 + 1, 1, v91);
                }

                v58 = v91;
                v91[2] = v56 + 1;
                a2(&v58[((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v56], v89, v12);
                v8 = v85;
              }

              ++a1;
              v39 += 16;
              if (v53 == a1)
              {
                goto LABEL_37;
              }
            }

            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            v40 = sub_258F0AA20();
            goto LABEL_9;
          }

          v91 = MEMORY[0x277D84F90];
LABEL_37:

          v59 = v91[2];
          if (v59)
          {
            v60 = v91 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
            v90 = *(v86 + 72);
            v61 = *(v86 + 16);
            v12 = v72;
            v62 = v74;
            v63 = v73;
            v64 = v79;
            v65 = v70;
            do
            {
              v61(v63, v60, v64);
              v61(v12, v63, v64);
              sub_258E05C6C(v62, v12);
              v66 = *v65;
              (*v65)(v62, v64);
              v66(v63, v64);
              v60 += v90;
              --v59;
            }

            while (v59);

            a2 = v78;
            a1 = v77;
            v8 = v85;
            v39 = v76;
            v29 = v75;
          }

          else
          {

            a2 = v78;
            a1 = v77;
            v39 = v76;
          }

          v41 = v80;
        }

LABEL_13:

        if (v41 == v29)
        {
          goto LABEL_44;
        }
      }
    }

    v21 = MEMORY[0x277D84FA0];
LABEL_46:
  }

  return v21;
}

void sub_258EE22D8(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = v4;
    MEMORY[0x259C9DF50]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_258F0A6D0();
    }

    sub_258F0A700();
    swift_endAccess();
    v6 = v5;
    v7 = sub_258F0A350();
    v8 = sub_258F0A810();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v4;
      v11 = v6;
      _os_log_impl(&dword_258DD8000, v7, v8, "#SpeakerIdManifestCalculator: Current eventBody: %@ from BiomeStream", v9, 0xCu);
      sub_258DE2184(v10, &qword_27F988C78, &qword_258F11A20);
      MEMORY[0x259C9EF40](v10, -1, -1);
      MEMORY[0x259C9EF40](v9, -1, -1);
      v6 = v7;
      v7 = v11;
    }
  }
}

id sub_258EE2484(char a1)
{
  v3 = sub_258F0A370();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
  if (!v8)
  {
    v16 = sub_258F0A350();
    v17 = sub_258F0A820();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_258DD8000, v16, v17, "#SpeakerIdManifestCalculator: Failed to generate selection event", v18, 2u);
      MEMORY[0x259C9EF40](v18, -1, -1);
    }

    return 0;
  }

  v9 = v8;
  result = [objc_allocWithZone(MEMORY[0x277D59538]) init];
  if (result)
  {
    v11 = result;
    [result setIsDeviceSelected_];
    [v9 setSpeakerIdModelDeviceSelected_];

    sub_258DEB8C8(0, &qword_27F98A858, 0x277D59530);
    (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_logger, v3);
    v12 = sub_258EF1CE4(v7);
    [v9 setEventMetadata_];

    v13 = sub_258F0A350();
    v14 = sub_258F0A810();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_258DD8000, v13, v14, "#SpeakerIdManifestCalculator: Created ODSAMPLESiriSchemaODSAMPLEClientEvent for the device selection", v15, 2u);
      MEMORY[0x259C9EF40](v15, -1, -1);
    }

    return v9;
  }

  __break(1u);
  return result;
}

NSObject *sub_258EE2700(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_258F0A370();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a3 + 16))
  {
    v16 = sub_258F0A350();
    v23 = sub_258F0A810();
    if (os_log_type_enabled(v16, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "#SpeakerIdManifestCalculator: input sampleIds being empty, will not be genreating manifest event";
LABEL_10:
      _os_log_impl(&dword_258DD8000, v16, v23, v25, v24, 2u);
      MEMORY[0x259C9EF40](v24, -1, -1);
    }

LABEL_14:

    return 0;
  }

  v15 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
  if (!v15)
  {
    v16 = sub_258F0A350();
    v23 = sub_258F0A820();
    if (os_log_type_enabled(v16, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "#SpeakerIdManifestCalculator: Failed to generate event";
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v16 = v15;
  if (!a2)
  {
    v26 = sub_258F0A350();
    v27 = sub_258F0A820();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_258DD8000, v26, v27, "#SpeakerIdManifestCalculator: enrollmentId being nil", v28, 2u);
      MEMORY[0x259C9EF40](v28, -1, -1);
    }

    goto LABEL_14;
  }

  v47 = a4;
  v17 = *(v5 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_defaults);
  v49[0] = a1;
  v49[1] = a2;

  MEMORY[0x259C9DEB0](0xD000000000000014, 0x8000000258F1D6C0);
  v18 = sub_258F0A4E0();
  v48 = a1;
  v19 = v18;

  v20 = [v17 stringForKey_];

  v21 = &unk_27F98A000;
  if (v20)
  {
    v48 = sub_258F0A4F0();
    a2 = v22;
LABEL_17:

    goto LABEL_18;
  }

  v20 = sub_258F0A350();
  v29 = sub_258F0A840();
  if (!os_log_type_enabled(v20, v29))
  {
    goto LABEL_17;
  }

  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v46 = v20;
  v32 = v31;
  v49[0] = v31;
  *v30 = 136315138;
  *(v30 + 4) = sub_258DE3018(v48, a2, v49);
  v33 = v29;
  v34 = v46;
  _os_log_impl(&dword_258DD8000, v46, v33, "#SpeakerIdManifestCalculator: userSamplingId is not written into plist for legacy code, using enrollmentId: %s", v30, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  MEMORY[0x259C9EF40](v32, -1, -1);
  v35 = v30;
  v21 = &unk_27F98A000;
  MEMORY[0x259C9EF40](v35, -1, -1);

LABEL_18:
  sub_258DEB8C8(0, &qword_27F98A850, 0x277D59540);
  v36 = v21[484];
  v37 = *(v11 + 16);
  v37(v14, v5 + v36, v10);

  sub_258EE2C00(v48, a2, a3, v47, v14);
  v39 = v38;
  [v16 setSpeakerIdModelSampleManifestReported:v38];

  sub_258DEB8C8(0, &qword_27F98A858, 0x277D59530);
  v37(v14, v5 + v36, v10);
  v40 = sub_258EF1CE4(v14);
  [v16 setEventMetadata:v40];

  v41 = sub_258F0A350();
  v42 = sub_258F0A810();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_258DD8000, v41, v42, "#SpeakerIdManifestCalculator: Created ODSAMPLESiriSchemaODSAMPLEClientEvent for the device", v43, 2u);
    MEMORY[0x259C9EF40](v43, -1, -1);
  }

  return v16;
}

void sub_258EE2C00(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v45 = a2;
  v46 = a5;
  v44 = a4;
  v42[1] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v43 = v42 - v8;
  v49 = sub_258F09A70();
  v9 = *(v49 - 8);
  v11 = MEMORY[0x28223BE20](v49, v10);
  v42[0] = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v42 - v14;
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (v16)
  {
    v17 = a3;
    v20 = *(a3 + 56);
    v19 = a3 + 56;
    v18 = v20;
    v21 = 1 << *(v19 - 24);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v18;
    v24 = (v21 + 63) >> 6;
    v47 = v9 + 16;
    v48 = v9 + 8;
    v50 = v16;
    v25 = 0;
    if (v23)
    {
      while (1)
      {
        v26 = v25;
LABEL_10:
        v27 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v28 = v49;
        (*(v9 + 16))(v15, *(v17 + 48) + *(v9 + 72) * (v27 | (v26 << 6)), v49);
        v29 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v30 = sub_258F09A50();
        (*(v9 + 8))(v15, v28);
        v31 = [v29 initWithNSUUID_];

        [v50 addOdsampleIds_];
        if (!v23)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v26 >= v24)
      {
        break;
      }

      v23 = *(v19 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_10;
      }
    }

    v32 = v50;
    [v50 setCollectionStatus_];

    if (v45)
    {
      v33 = v43;
      sub_258F09A30();

      v34 = v49;
      if ((*(v9 + 48))(v33, 1, v49) == 1)
      {
        v35 = sub_258F0A370();
        (*(*(v35 - 8) + 8))(v46, v35);
        sub_258DE2184(v33, &qword_27F988730, &unk_258F0F8E0);
      }

      else
      {
        v37 = v42[0];
        (*(v9 + 32))(v42[0], v33, v34);
        v38 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v39 = sub_258F09A50();
        v40 = [v38 initWithNSUUID_];

        [v50 setUserSamplingId_];
        v41 = sub_258F0A370();
        (*(*(v41 - 8) + 8))(v46, v41);
        (*(v9 + 8))(v37, v34);
      }
    }

    else
    {
      v36 = sub_258F0A370();
      (*(*(v36 - 8) + 8))(v46, v36);
    }
  }

  else
  {
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_258EE3048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v20 = a4;
  v9 = sub_258F09A20();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_defaults);
  v21 = a1;
  v22 = a2;

  MEMORY[0x259C9DEB0](0xD000000000000014, 0x8000000258F1D6C0);
  v15 = sub_258F0A4E0();

  [v14 setValue:0 forKey:v15];

  v16 = *(v4 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_samplingUtils);
  v17 = *(v5 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_samplingUtils + 8);
  (*(v17 + 48))(a3, v20, v16, v17);
  sub_258F09A10();
  (*(v17 + 88))(v13, v16, v17);
  (*(v10 + 8))(v13, v9);
  v21 = a1;
  v22 = a2;

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD00000000000001DLL, 0x8000000258F1D6E0);

  _s16MetricsFramework13SamplingUtilsC23setManifestCurrentCount6forKey_2inySS_SiSo14NSUserDefaultsCtFZ_0(v21, v22, 0, v14);
}

void sub_258EE3270(uint64_t a1, unint64_t a2)
{
  if (a2)
  {

    v4 = sub_258F0A350();
    v5 = sub_258F0A810();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_258DE3018(a1, a2, aBlock);
      _os_log_impl(&dword_258DD8000, v4, v5, "#SpeakerIdManifestCalculator: Pruning the uploaded samples for enrollmentId %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x259C9EF40](v7, -1, -1);
      MEMORY[0x259C9EF40](v6, -1, -1);
    }

    v8 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v9 = [v8 OnDeviceAnalytics];
    swift_unknownObjectRelease();
    v10 = [v9 SpeakerIdSampling];
    swift_unknownObjectRelease();
    v11 = [v10 pruner];
    v12 = sub_258F0A4E0();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_258EE4040;
    *(v14 + 24) = v13;
    aBlock[4] = sub_258EE4048;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_258EE37BC;
    aBlock[3] = &block_descriptor_7;
    v15 = _Block_copy(aBlock);

    [v11 deleteWithPolicy:v12 eventsPassingTest:v15];

    _Block_release(v15);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {

      v16 = sub_258F0A350();
      v17 = sub_258F0A810();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_258DE3018(a1, a2, aBlock);
        _os_log_impl(&dword_258DD8000, v16, v17, "#SpeakerIdManifestCalculator: Biome Samples Event pruning for enrollmentId %s completed", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x259C9EF40](v19, -1, -1);
        MEMORY[0x259C9EF40](v18, -1, -1);
      }
    }
  }

  else
  {
    oslog = sub_258F0A350();
    v20 = sub_258F0A820();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_258DD8000, oslog, v20, "#SpeakerIdManifestCalculator: Unable to prune the samples for the invalid enrollmentId", v21, 2u);
      MEMORY[0x259C9EF40](v21, -1, -1);
    }
  }
}

uint64_t sub_258EE36F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v6 = [a1 eventBody]) != 0 && (v7 = v6, v8 = objc_msgSend(v6, sel_enrollmentIdentifier), v7, v8))
  {
    v9 = sub_258F0A4F0();
    v11 = v10;

    if (v9 == a3 && v11 == a4)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_258F0AD80();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_258EE37BC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

NSObject *sub_258EE3818(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v8 = *a3;

    sub_258EE4C60(a4, v8, &v17);

    sub_258EE408C(&v17);
    v25 = v17;
    v26 = v18;
    sub_258DE2184(&v25, &qword_27F98A860, &qword_258F16850);
    v23 = v19;
    v24 = v20;
    sub_258DE2184(&v23, &qword_27F98A860, &qword_258F16850);
    v22 = v21;
    sub_258DE2184(&v22, &qword_27F98A868, &qword_258F16858);
    v9 = sub_258F0A350();
    v10 = sub_258F0A810();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = a4;
      _os_log_impl(&dword_258DD8000, v9, v10, "#SpeakerIdManifestCalculator: SpeakerIdManifestCalculator we have more than allowed samples, Dropping : %ld samples", v11, 0xCu);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }
  }

  v12 = sub_258EE2700(a1, a2, *a3, 2u);
  sub_258EE3270(a1, a2);
  v13 = sub_258F0A350();
  v14 = sub_258F0A810();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_258DD8000, v13, v14, "#SpeakerIdManifestCalculator: Created ODSAMPLECOLLECTIONSTATUS_COMPLETED event", v15, 2u);
    MEMORY[0x259C9EF40](v15, -1, -1);
  }

  return v12;
}

uint64_t SpeakerIdManifestCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_analyticsEventSubmitter));
  return v0;
}

uint64_t SpeakerIdManifestCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_analyticsEventSubmitter));

  return swift_deallocClassInstance();
}

uint64_t sub_258EE3C5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EE0B30(a1);
}

uint64_t sub_258EE3CF8(uint64_t a1)
{
  result = sub_258EE4E08(&qword_27F98A828, type metadata accessor for SpeakerIdManifestCalculator, &protocol conformance descriptor for SpeakerIdManifestCalculator);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258EE3D50()
{
  result = qword_27F98A830;
  if (!qword_27F98A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A830);
  }

  return result;
}

unint64_t sub_258EE3DA4()
{
  result = qword_27F98A838;
  if (!qword_27F98A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A838);
  }

  return result;
}

uint64_t sub_258EE3E10(uint64_t a1)
{
  result = sub_258F0A370();
  if (v2 <= 0x3F)
  {
    result = sub_258F09B00();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdManifestCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_258EE408C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v23 - v5;
  v27 = sub_258F09A70();
  MEMORY[0x28223BE20](v27, v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v12 = *a1;
    v11 = *(a1 + 8);
    v13 = *(a1 + 16);
    v33 = *(a1 + 24);
    v34 = *(a1 + 40);
    v14 = v33;
    v26 = v34;
    v15 = *(a1 + 48);
    v32 = v13;
    v16 = *(a1 + 32);
    v24 = *(a1 + 24);
    v25 = v8;
    v23 = v16;
    v31 = v34;
    sub_258EE4D80(v12, v11, v13);
    v28 = v11;
    v29 = v12;
    sub_258EE4D80(v12, v11, v13);
    sub_258EE4D8C(&v33, v30);

    if (v13 & 1) != 0 || (v26)
    {
LABEL_11:
      __break(1u);
LABEL_12:
      v22 = v31;
      sub_258EE4DFC(v29, v28, v32);
      sub_258EE4DFC(v24, v23, v22);

      sub_258EE4DFC(v14, v13, 0);
    }

    else
    {
      v17 = (v25 + 8);
      v13 = v28;
      v18 = v29;
      while (v13 == DWORD2(v14))
      {
        if (v18 == v14)
        {
          goto LABEL_12;
        }

        if (v18 < v29)
        {
          goto LABEL_15;
        }

        if (DWORD2(v14) != v28)
        {
          goto LABEL_16;
        }

        if (v18 >= v14)
        {
          goto LABEL_17;
        }

        sub_258EE4BA0(v18, v13, v15, v10);
        v18 = sub_258EE4B18(v18, v13, 0, v15);
        v13 = v19;
        v21 = v20;
        sub_258EE4320(v10, v6);
        (*v17)(v10, v27);
        sub_258DE2184(v6, &qword_27F988730, &unk_258F0F8E0);
        if (v21)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }
  }
}

uint64_t sub_258EE4320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_258F09A70();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_258EE4E08(&qword_27F988CC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v32 = a1;
  v11 = sub_258F0A440();
  v12 = v10 + 56;
  v30 = v10 + 56;
  v31 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v16(v9, *(v31 + 48) + v19 * v14, v5);
      sub_258EE4E08(&qword_27F988CD0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v20 = sub_258F0A4B0();
      (*(v17 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_258E07370();
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19 * v14, v5);
    sub_258EE45C8(v14);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

uint64_t sub_258EE45C8(int64_t a1)
{
  v3 = sub_258F09A70();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = sub_258F0A9E0();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v15 = v13;
      v16 = (v14 + 1) & v13;
      v36 = *(v4 + 16);
      v37 = v4 + 16;
      v17 = *(v4 + 72);
      v34 = (v4 + 8);
      v35 = v10;
      v18 = v17;
      do
      {
        v19 = v18;
        v20 = v18 * v12;
        v36(v8, *(v9 + 48) + v18 * v12, v3);
        v21 = v9;
        v22 = v16;
        v23 = v15;
        v24 = v21;
        sub_258EE4E08(&qword_27F988CC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v25 = sub_258F0A440();
        (*v34)(v8, v3);
        v26 = v25 & v23;
        v15 = v23;
        v16 = v22;
        if (a1 >= v22)
        {
          if (v26 >= v22 && a1 >= v26)
          {
LABEL_16:
            v9 = v24;
            v29 = *(v24 + 48);
            v18 = v19;
            v30 = v19 * a1;
            if (v19 * a1 < v20 || v29 + v19 * a1 >= (v29 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v30 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v26 >= v22 || a1 >= v26)
        {
          goto LABEL_16;
        }

        v9 = v24;
        v18 = v19;
LABEL_5:
        v12 = (v12 + 1) & v15;
        v10 = v35;
      }

      while (((*(v35 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v31 = *(v9 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v33;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t sub_258EE48D0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_258EE4D80(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if (result < 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_258EE4A34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_258F0A9D0();
  v7 = 1 << *(a2 + 32);
  if (v7 < v6)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a2 + 36);
  v9 = *(a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  if (*a1 < v6)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = *(a1 + 32);
  if (v8 != v10)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 24);
  if (v7 < v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

uint64_t sub_258EE4B18(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      return sub_258F0A9F0();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_258EE4BA0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_258F09A70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_258EE4C60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_258F0A9D0();
    v7 = *(a2 + 36);
    v8 = -1 << *(a2 + 32);
    v9 = sub_258EE48D0(v6, v7, 0, a1, -v8, *(a2 + 36), 0, a2);
    v11 = v10;
    v13 = v12;
    v14 = v12;
    v15 = sub_258F0A9D0();
    if (v14 == 255)
    {
      v16 = -v8;
    }

    else
    {
      v16 = v9;
    }

    if (v14 == 255)
    {
      v17 = v7;
    }

    else
    {
      v17 = v11;
    }

    if (v14 != 255 && (v13 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= v15)
      {
        v22[0] = v15;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        sub_258EE4A34(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

double sub_258EE4D80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_258EE4D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A860, &qword_258F16850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EE4DFC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_258EE4E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SpeakerIdManifestDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t SpeakerIdManifestDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258EE4F7C(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: SpeakerIdManifestDataRecord", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t SpeakerIdManifestDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SpeakerIdManifestDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258EE5158()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258EE4F5C();
}

uint64_t type metadata accessor for SpeakerIdManifestDataProvider(uint64_t a1)
{
  result = qword_27F98A878;
  if (!qword_27F98A878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdManifestDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t sub_258EE53B8()
{
  sub_258EB875C();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258EE5460(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t SpeakerIdManifestSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + 16) = a2;
  return v4;
}

uint64_t SpeakerIdManifestSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_258EE5688(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_258EE56B0, 0, 0);
}

void sub_258EE56B0(uint64_t a1)
{
  v56 = v1;
  v2 = v1[2];
  v3 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger;
  v1[5] = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger;
  v4 = sub_258F0A350();
  v5 = sub_258F0A810();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_258DD8000, v4, v5, "#SpeakerIdManifestSELFReporter: Reporter invoked", v6, 2u);
    MEMORY[0x259C9EF40](v6, -1, -1);
  }

  v7 = v1[3];

  v8 = v7;

  v9 = sub_258F0A350();
  v10 = sub_258F0A810();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[4];
  if (v11)
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(v12 + 16);

    _os_log_impl(&dword_258DD8000, v9, v10, "#SpeakerIdManifestSELFReporter: result %ld", v13, 0xCu);
    MEMORY[0x259C9EF40](v13, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  v14 = v8;

  v15 = sub_258F0A350();
  v16 = sub_258F0A810();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v1[4];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v55 = v19;
    *v18 = 136315138;

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A890, &unk_258F17380);
    v21 = MEMORY[0x259C9DF80](v17, v20);
    v54 = v16;
    v22 = v14;
    v23 = v3;
    v25 = v24;

    v26 = sub_258DE3018(v21, v25, &v55);
    v3 = v23;
    v14 = v22;

    *(v18 + 4) = v26;
    _os_log_impl(&dword_258DD8000, v15, v54, "#SpeakerIdManifestSELFReporter: result.selection %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x259C9EF40](v19, -1, -1);
    MEMORY[0x259C9EF40](v18, -1, -1);
  }

  v27 = v14;

  v28 = sub_258F0A350();
  v29 = sub_258F0A810();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = v1[3];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v27;
    *v32 = v30;
    v33 = v27;
    _os_log_impl(&dword_258DD8000, v28, v29, "#SpeakerIdManifestSELFReporter: result.speakerIdSelectionEvents %@", v31, 0xCu);
    sub_258EB8CAC(v32);
    MEMORY[0x259C9EF40](v32, -1, -1);
    MEMORY[0x259C9EF40](v31, -1, -1);
  }

  v34 = v1[3];

  if (v34)
  {
    v35 = v27;
    v36 = swift_task_alloc();
    v1[6] = v36;
    *v36 = v1;
    v36[1] = sub_258EE5CAC;
    v37 = v2 + v3;
    v38 = v35;
LABEL_12:

    sub_258EB6B24(v38, v37);
  }

  else
  {
    v39 = sub_258F0A350();
    v40 = sub_258F0A800();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_258DD8000, v39, v40, "#SpeakerIdManifestSELFReporter: DeviceSelectionEvent is nil", v41, 2u);
      MEMORY[0x259C9EF40](v41, -1, -1);
    }

    v42 = *(v1[4] + 16);
    v1[8] = v42;
    if (v42)
    {
      v43 = 0;
      while (1)
      {
        v1[9] = v43;
        v44 = v1[4];
        if (v43 >= *(v44 + 16))
        {
          break;
        }

        v45 = *(v44 + 8 * v43 + 32);
        v1[10] = v45;
        v46 = v1[5];
        v47 = v1[2];
        if (v45)
        {
          v52 = v45;
          v53 = swift_task_alloc();
          v1[11] = v53;
          *v53 = v1;
          v53[1] = sub_258EE5F90;
          v37 = v47 + v46;
          v38 = v52;
          goto LABEL_12;
        }

        v48 = sub_258F0A350();
        v49 = sub_258F0A800();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_258DD8000, v48, v49, "#SpeakerIdManifestSELFReporter: SpeakerId Sampling Manifest Event is nil", v50, 2u);
          MEMORY[0x259C9EF40](v50, -1, -1);
        }

        v43 = v1[9] + 1;
        if (v43 == v1[8])
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_24:
      v51 = v1[1];

      v51();
    }
  }
}

uint64_t sub_258EE5CAC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_258EE6278;
  }

  else
  {
    v2 = sub_258EE5DC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_258EE5DC0()
{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      *(v0 + 72) = v2;
      v3 = *(v0 + 32);
      if (v2 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v4 = *(v3 + 8 * v2 + 32);
      *(v0 + 80) = v4;
      v5 = *(v0 + 40);
      v6 = *(v0 + 16);
      if (v4)
      {
        break;
      }

      v7 = sub_258F0A350();
      v8 = sub_258F0A800();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_258DD8000, v7, v8, "#SpeakerIdManifestSELFReporter: SpeakerId Sampling Manifest Event is nil", v9, 2u);
        MEMORY[0x259C9EF40](v9, -1, -1);
      }

      v2 = *(v0 + 72) + 1;
      if (v2 == *(v0 + 64))
      {
        goto LABEL_8;
      }
    }

    v11 = v4;
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *v12 = v0;
    v12[1] = sub_258EE5F90;

    sub_258EB6B24(v11, v6 + v5);
  }

  else
  {
LABEL_8:
    v10 = *(v0 + 8);

    v10();
  }
}

uint64_t sub_258EE5F90()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_258EE6360;
  }

  else
  {

    v3 = sub_258EE60AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_258EE60AC()
{
  v1 = *(v0 + 72) + 1;
  if (v1 == *(v0 + 64))
  {
LABEL_2:
    v2 = *(v0 + 8);

    v2();
  }

  else
  {
    while (1)
    {
      *(v0 + 72) = v1;
      v3 = *(v0 + 32);
      if (v1 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v4 = *(v3 + 8 * v1 + 32);
      *(v0 + 80) = v4;
      v5 = *(v0 + 40);
      v6 = *(v0 + 16);
      if (v4)
      {
        break;
      }

      v7 = sub_258F0A350();
      v8 = sub_258F0A800();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_258DD8000, v7, v8, "#SpeakerIdManifestSELFReporter: SpeakerId Sampling Manifest Event is nil", v9, 2u);
        MEMORY[0x259C9EF40](v9, -1, -1);
      }

      v1 = *(v0 + 72) + 1;
      if (v1 == *(v0 + 64))
      {
        goto LABEL_2;
      }
    }

    v10 = v4;
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = sub_258EE5F90;

    sub_258EB6B24(v10, v6 + v5);
  }
}

uint64_t sub_258EE6278()
{
  v1 = sub_258F0A350();
  v2 = sub_258F0A820();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "#SpeakerIdManifestSELFReporter: Unable to report SpeakerId Selection Events", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  swift_willThrow();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_258EE6360()
{
  v1 = sub_258F0A350();
  v2 = sub_258F0A820();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "#SpeakerIdManifestSELFReporter: Unable to report SpeakerId Sampling Manifest Events", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  v4 = *(v0 + 80);

  swift_willThrow();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_258EE6454()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t SpeakerIdManifestSELFReporter.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SpeakerIdManifestSELFReporter.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of SpeakerIdManifestReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t type metadata accessor for SpeakerIdManifestSELFReporter(uint64_t a1)
{
  result = qword_27F98A898;
  if (!qword_27F98A898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SpeakerIdSamplingBiomeReporter.__allocating_init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSamplingBiomeReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  return v4;
}

uint64_t SpeakerIdSamplingBiomeReporter.init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSamplingBiomeReporter_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_258EE68C0(uint64_t a1)
{
  v2[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v2[3] = swift_task_alloc();
  v4 = sub_258F09A20();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v5 = type metadata accessor for SpeakerIdSamplingData(0);
  v2[7] = v5;
  v2[8] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *(a1 + 16);
  v2[9] = v6;
  v2[10] = v7;

  return MEMORY[0x2822009F8](sub_258EE6A1C, 0, 0);
}

uint64_t sub_258EE6A1C(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Reporter invoked: SpeakerIdSamplingBiomeReporter", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v1[10];

  v6 = *(v5 + 16);
  if (v6)
  {
    v8 = v1[7];
    v7 = v1[8];
    v34 = v8;
    v9 = v1[10] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v32 = (v1[5] + 8);
    v33 = *(v7 + 72);
    do
    {
      v15 = v1[9];
      v16 = v1[3];
      sub_258EE73AC(v9, v15);
      sub_258F099D0();
      sub_258E3A540(v15 + *(v8 + 120), v16);
      v17 = sub_258F09A70();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {
        sub_258E3A4D8(v1[3]);
      }

      else
      {
        v19 = v1[3];
        v20 = sub_258F09A40();
        v22 = v21;
        (*(v18 + 8))(v19, v17);
        v23 = sub_258DE2990(0, 1, 1, MEMORY[0x277D84F90]);
        v25 = *(v23 + 2);
        v24 = *(v23 + 3);
        if (v25 >= v24 >> 1)
        {
          v23 = sub_258DE2990((v24 > 1), v25 + 1, 1, v23);
        }

        *(v23 + 2) = v25 + 1;
        v26 = &v23[16 * v25];
        *(v26 + 4) = v20;
        *(v26 + 5) = v22;
      }

      v27 = *(v1[9] + *(v8 + 112) + 8);
      v28 = sub_258F099A0();
      v29 = sub_258F0A6A0();

      if (v27)
      {
        v10 = sub_258F0A4E0();
      }

      else
      {
        v10 = 0;
      }

      v11 = v1[9];
      v12 = v1[6];
      v13 = v1[4];
      v14 = [objc_allocWithZone(MEMORY[0x277CF15D8]) initWithTimestamp:v28 onDeviceSampleIdentifiers:v29 enrollmentIdentifier:v10];

      (*v32)(v12, v13);
      sub_258F09B90();

      sub_258EE7410(v11);
      v9 += v33;
      --v6;
      v8 = v34;
    }

    while (v6);
  }

  v30 = v1[1];

  return v30();
}

id static SpeakerIdSamplingBiomeReporter.createBiomeEvent(result:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v29 - v8;
  v10 = sub_258F09A20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258F099D0();
  v15 = type metadata accessor for SpeakerIdSamplingData(0);
  sub_258E3A540(a1 + *(v15 + 120), v9);
  v16 = sub_258F09A70();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v9, 1, v16) == 1)
  {
    sub_258E3A4D8(v9);
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v30 = sub_258F09A40();
    v20 = v19;
    (*(v17 + 8))(v9, v16);
    v18 = sub_258DE2990(0, 1, 1, MEMORY[0x277D84F90]);
    v22 = *(v18 + 2);
    v21 = *(v18 + 3);
    if (v22 >= v21 >> 1)
    {
      v18 = sub_258DE2990((v21 > 1), v22 + 1, 1, v18);
    }

    *(v18 + 2) = v22 + 1;
    v23 = &v18[16 * v22];
    *(v23 + 4) = v30;
    *(v23 + 5) = v20;
  }

  (*(v11 + 16))(v5, v14, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  v24 = (a1 + *(v15 + 112));
  v25 = *v24;
  v26 = v24[1];
  objc_allocWithZone(MEMORY[0x277CF15D8]);

  v27 = sub_258EE7258(v5, v18, v25, v26);
  (*(v11 + 8))(v14, v10);
  return v27;
}

uint64_t sub_258EE70C8()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSamplingBiomeReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t SpeakerIdSamplingBiomeReporter.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSamplingBiomeReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SpeakerIdSamplingBiomeReporter.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSamplingBiomeReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_258EE7258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_258F09A20();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(a1, 1, v8) != 1)
  {
    v10 = sub_258F099A0();
    (*(v9 + 8))(a1, v8);
  }

  v11 = sub_258F0A6A0();

  if (a4)
  {
    v12 = sub_258F0A4E0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 initWithTimestamp:v10 onDeviceSampleIdentifiers:v11 enrollmentIdentifier:v12];

  return v13;
}

uint64_t sub_258EE73AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeakerIdSamplingData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EE7410(uint64_t a1)
{
  v2 = type metadata accessor for SpeakerIdSamplingData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SpeakerIdSamplingBiomeReporter(uint64_t a1)
{
  result = qword_27F98A8B0;
  if (!qword_27F98A8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_258EE74EC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D5A950]) init];
  sub_258F0AA80();
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v3 = sub_258E2EA2C(v13);
  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v3, v14);
  sub_258E0F590(v13);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  sub_258F0AA80();
  if (*(a1 + 16) && (v5 = sub_258E2EA2C(v13), (v6 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v5, v14);
    sub_258E0F590(v13);
    if (swift_dynamicCast())
    {
      v7 = v2;
      LODWORD(v8) = 1769234796;
      [v7 setLatitude:v8];
      LODWORD(v9) = 1735290732;
      [v7 setLongitude:v9];
      goto LABEL_11;
    }
  }

  else
  {
LABEL_8:
    sub_258E0F590(v13);
  }

LABEL_9:
  v7 = sub_258F0A350();
  v10 = sub_258F0A810();
  if (os_log_type_enabled(v7, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_258DD8000, v7, v10, "#SpeakerIdSamplingCalculator: Unable to fetch location for the current request", v11, 2u);
    MEMORY[0x259C9EF40](v11, -1, -1);
  }

LABEL_11:

  return v2;
}

uint64_t SpeakerIdSamplingResults.eventStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SpeakerIdSamplingResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SpeakerIdSamplingResults.SpeakerIdSamplingData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SpeakerIdSamplingCalculator.__allocating_init(defaults:logger:sqlFileURL:bookmarkService:samplingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_defaults) = a1;
  v13 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v14 = sub_258F0A370();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v12 + v13, a2, v14);
  sub_258DE20C0(a3, v12 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v16 = (v12 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bookmarkService);
  v16[3] = sub_258F09C20();
  v16[4] = &off_286A2FA30;
  *v16 = a4;
  v17 = (v12 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_samplingUtils);
  *v17 = a5;
  v17[1] = a6;
  v18 = type metadata accessor for CAAnalyticsEventSubmitter();
  v19 = swift_allocObject();
  v20 = (v12 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_analyticsEventSubmitter);
  v20[3] = v18;
  v20[4] = &off_286A2C648;
  *v20 = v19;
  sub_258F09F30();
  v21 = sub_258F09F20();
  sub_258DE2184(a3, &qword_27F988720, &qword_258F0B830);
  (*(v15 + 8))(a2, v14);
  *(v12 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bugReporter) = v21;
  type metadata accessor for BiomeResultsWrapperFactory();
  *(v12 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_biomeResultsFactory) = swift_allocObject();
  return v12;
}

uint64_t SpeakerIdSamplingCalculator.init(defaults:logger:sqlFileURL:bookmarkService:samplingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  *(v7 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_defaults) = a1;
  v13 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v14 = sub_258F0A370();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v7 + v13, a2, v14);
  sub_258DE20C0(a3, v7 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v16 = (v7 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bookmarkService);
  v16[3] = sub_258F09C20();
  v16[4] = &off_286A2FA30;
  *v16 = a4;
  v17 = (v7 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_samplingUtils);
  *v17 = a5;
  v17[1] = a6;
  v18 = type metadata accessor for CAAnalyticsEventSubmitter();
  v19 = swift_allocObject();
  v20 = (v7 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_analyticsEventSubmitter);
  v20[3] = v18;
  v20[4] = &off_286A2C648;
  *v20 = v19;
  sub_258F09F30();
  v21 = sub_258F09F20();
  sub_258DE2184(a3, &qword_27F988720, &qword_258F0B830);
  (*(v15 + 8))(a2, v14);
  *(v7 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bugReporter) = v21;
  type metadata accessor for BiomeResultsWrapperFactory();
  *(v7 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_biomeResultsFactory) = swift_allocObject();
  return v7;
}

uint64_t sub_258EE7B98(uint64_t a1)
{
  v2[238] = v1;
  v2[237] = a1;
  v3 = type metadata accessor for SpeakerIdSamplingData(0);
  v2[239] = v3;
  v2[240] = *(v3 - 8);
  v2[241] = swift_task_alloc();
  v2[242] = swift_task_alloc();
  v4 = sub_258F09A70();
  v2[243] = v4;
  v2[244] = *(v4 - 8);
  v2[245] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v2[246] = swift_task_alloc();
  v2[247] = swift_task_alloc();
  v2[248] = swift_task_alloc();
  v2[249] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8C8, &qword_258F16AA8);
  v2[250] = swift_task_alloc();
  v2[251] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v2[252] = swift_task_alloc();
  v2[253] = swift_task_alloc();
  v2[254] = swift_task_alloc();
  v2[255] = swift_task_alloc();
  v2[256] = swift_task_alloc();
  v2[257] = swift_task_alloc();
  v2[258] = swift_task_alloc();
  v2[259] = swift_task_alloc();
  v5 = sub_258F09B00();
  v2[260] = v5;
  v2[261] = *(v5 - 8);
  v2[262] = swift_task_alloc();
  v6 = sub_258F09A20();
  v2[263] = v6;
  v2[264] = *(v6 - 8);
  v2[265] = swift_task_alloc();
  v2[266] = swift_task_alloc();
  v2[267] = swift_task_alloc();
  v2[268] = swift_task_alloc();
  v2[269] = swift_task_alloc();
  v2[270] = swift_task_alloc();
  v2[271] = swift_task_alloc();
  v2[272] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EE7EFC, 0, 0);
}

void sub_258EE7EFC(uint64_t a1)
{
  v350 = v1;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Sampling Calculator invoked: SpeakerIdSamplingCalculator", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 2176);
  v6 = *(v1 + 2112);
  v7 = *(v1 + 2104);
  v8 = *(v1 + 2096);
  v9 = *(v1 + 2088);
  v10 = *(v1 + 2080);
  v11 = *(v1 + 1904);

  sub_258F09AC0();
  sub_258F09BB0();
  (*(v9 + 8))(v8, v10);
  v12 = sub_258F09B70();
  v322 = *(v6 + 8);
  v322(v5, v7);
  v13 = *(v11 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_samplingUtils);
  v14 = *(v11 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_samplingUtils + 8);
  v15 = (*(v14 + 72))(v13, v14);
  if (!v16)
  {
    v320 = v12;
    v29 = sub_258F0A350();
    v30 = sub_258F0A820();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_258DD8000, v29, v30, "SpeakerIdSelectionCalculator: Unable to retrieve the siri language.", v31, 2u);
      MEMORY[0x259C9EF40](v31, -1, -1);
    }

    goto LABEL_12;
  }

  v17 = v15;
  v18 = v16;
  v326 = (*(v14 + 16))(v15, v16, v13, v14);
  v19 = v14;
  v21 = v20;
  v323 = v19;
  if ((*(v19 + 8))(v17, v18, v13) != 1)
  {
    v320 = v12;

LABEL_12:
    v32 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v319 = v17;
  v325 = v21;
  v321 = v18;
  v22 = sub_258F0A350();
  v23 = sub_258F0A810();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_258DD8000, v22, v23, "SQL calculator invoked: SpeakerIdSamplingCalculator", v24, 2u);
    MEMORY[0x259C9EF40](v24, -1, -1);
  }

  v25 = *(v1 + 2112);
  v26 = *(v1 + 2104);
  v27 = *(v1 + 2072);

  v28 = *(v25 + 56);
  v28(v27, 1, 1, v26);
  sub_258DE03B0();
  v36 = sub_258DE069C();
  v327 = v28;
  v320 = v12;
  v37 = *(v1 + 1904);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
  sub_258F0A190();
  *(swift_allocObject() + 16) = xmmword_258F0B820;
  v38 = sub_258F0A1B0();
  v40 = v39;
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  *(v41 + 24) = v40;
  sub_258F0A160();
  v42 = *(v37 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_defaults);
  v306 = v36;
  v43 = sub_258F0A4E0();
  v44 = [v42 BOOLForKey_];

  v45 = sub_258F0A350();
  v46 = sub_258F0A810();
  v47 = os_log_type_enabled(v45, v46);
  if (v44)
  {
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v348 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_258DE3018(0xD000000000000011, 0x8000000258F1A720, &v348);
      _os_log_impl(&dword_258DD8000, v45, v46, "%s: Include current date data for aggregation.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x259C9EF40](v49, -1, -1);
      MEMORY[0x259C9EF40](v48, -1, -1);
    }

    v50 = v306;
  }

  else
  {
    if (v47)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v348 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_258DE3018(0xD000000000000011, 0x8000000258F1A720, &v348);
      _os_log_impl(&dword_258DD8000, v45, v46, "%s: current date data NOT included for aggregation.", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x259C9EF40](v52, -1, -1);
      MEMORY[0x259C9EF40](v51, -1, -1);
    }

    v50 = v306;
    v53 = v306;
  }

  sub_258F0A050();

  v54 = sub_258F0A010();
  v55 = sub_258F0A040();

  type metadata accessor for BiomeResultsWrapper();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  _s16MetricsFramework13SamplingUtilsC03getC16CountPerDayLimit4fromSiSo14NSUserDefaultsC_tFZ_0(v42);
  if (!v325)
  {

    v69 = sub_258F0A350();
    v70 = sub_258F0A820();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_258DD8000, v69, v70, "#SpeakerIdSamplingCalculator: enrollmentId is nil", v71, 2u);
      MEMORY[0x259C9EF40](v71, -1, -1);
    }

    v72 = *(v1 + 2072);

    sub_258DE2184(v72, &qword_27F988728, &unk_258F0B840);
    goto LABEL_12;
  }

  v304 = v56;
  v345 = v57;
  v58 = *(v1 + 2112);
  v59 = *(v1 + 2104);
  v60 = *(v1 + 2064);
  type metadata accessor for SamplingUtils();
  v348 = v326;
  v349 = v325;

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0x6F697463656C6553, 0xED0000657461446ELL);

  v61 = v349;
  v343 = v348;
  static SamplingUtils.getDeviceSelectionDate(forKey:defaults:)(v42, v60);
  v62 = *(v58 + 48);
  if (v62(v60, 1, v59) == 1)
  {
    v63 = *(v1 + 2064);

    sub_258DE2184(v63, &qword_27F988728, &unk_258F0B840);

    v64 = sub_258F0A350();
    v65 = sub_258F0A820();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v348 = v67;
      *v66 = 136315138;
      v68 = sub_258DE3018(v343, v61, &v348);

      *(v66 + 4) = v68;
      _os_log_impl(&dword_258DD8000, v64, v65, "#SpeakerIdSamplingCalculator: samplingStartDate for device selection key: %s is nil", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x259C9EF40](v67, -1, -1);
      MEMORY[0x259C9EF40](v66, -1, -1);
    }

    else
    {
    }

    sub_258DE2184(*(v1 + 2072), &qword_27F988728, &unk_258F0B840);
    goto LABEL_12;
  }

  v317 = v62;
  v73 = *(v1 + 2168);
  v74 = *(v1 + 2112);
  v75 = *(v1 + 2104);
  v76 = *(v1 + 2064);

  v77 = *(v74 + 32);
  v77(v73, v76, v75);

  v78 = sub_258EEB624(v345, v55, v73, v319, v321);

  sub_258DFD060(v304, 0);
  v316 = v77;
  v79 = 0;
  v337 = (v1 + 1088);
  v338 = (v1 + 1056);
  v335 = (v1 + 1248);
  v336 = (v1 + 1184);
  v80 = *(v1 + 1952);
  v324 = *(v1 + 1920);
  v81 = v78 + 64;
  v82 = -1;
  v83 = -1 << *(v78 + 32);
  if (-v83 < 64)
  {
    v82 = ~(-1 << -v83);
  }

  v84 = v82 & *(v78 + 64);
  v305 = (63 - v83) >> 6;
  v307 = *(v1 + 2112);
  v314 = (v307 + 16);
  v340 = (v80 + 56);
  v318 = (v80 + 48);
  v312 = (v80 + 8);
  v313 = (v80 + 16);
  v344 = MEMORY[0x277D84F90];
  v308 = v78 + 64;
  v309 = v78;
  while (1)
  {
    if (v84)
    {
      v311 = v79;
      v87 = v79;
      goto LABEL_47;
    }

    v88 = v305 <= v79 + 1 ? v79 + 1 : v305;
    v89 = v88 - 1;
    do
    {
      v87 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        __break(1u);
        return;
      }

      if (v87 >= v305)
      {
        v280 = *(v1 + 2000);
        v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
        (*(*(v281 - 8) + 56))(v280, 1, 1, v281);
        v310 = 0;
        v311 = v89;
        goto LABEL_48;
      }

      v84 = *(v81 + 8 * v87);
      ++v79;
    }

    while (!v84);
    v311 = v87;
LABEL_47:
    v90 = *(v1 + 2176);
    v91 = *(v1 + 2104);
    v92 = *(v1 + 2000);
    v310 = (v84 - 1) & v84;
    v93 = __clz(__rbit64(v84)) | (v87 << 6);
    (*(v307 + 16))(v90, *(v78 + 48) + *(v307 + 72) * v93, v91);
    v94 = *(*(v78 + 56) + 8 * v93);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
    v96 = *(v95 + 48);
    v316(v92, v90, v91);
    *(v92 + v96) = v94;
    (*(*(v95 - 8) + 56))(v92, 0, 1, v95);

LABEL_48:
    v97 = *(v1 + 2008);
    sub_258E2EAD8(*(v1 + 2000), v97, &qword_27F98A8C8, &qword_258F16AA8);
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
    if ((*(*(v98 - 8) + 48))(v97, 1, v98) == 1)
    {
      break;
    }

    v99 = *(v1 + 2160);
    v100 = *(v1 + 2152);
    v101 = *(v1 + 2104);
    v315 = *(*(v1 + 2008) + *(v98 + 48));
    (v316)(v99);
    v102 = *v314;
    (*v314)(v100, v99, v101);
    v103 = sub_258F0A350();
    v104 = sub_258F0A810();
    v105 = os_log_type_enabled(v103, v104);
    v106 = *(v1 + 2152);
    v107 = *(v1 + 2104);
    if (v105)
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v348 = v109;
      *v108 = 136315138;
      sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v110 = sub_258F0AD60();
      v112 = v111;
      v322(v106, v107);
      v113 = sub_258DE3018(v110, v112, &v348);

      *(v108 + 4) = v113;
      _os_log_impl(&dword_258DD8000, v103, v104, "#SpeakerIdSamplingCalculator: processing for date %s", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v109);
      MEMORY[0x259C9EF40](v109, -1, -1);
      MEMORY[0x259C9EF40](v108, -1, -1);
    }

    else
    {

      v322(v106, v107);
    }

    v114 = *(v1 + 2104);
    v115 = *(v1 + 2056);
    sub_258DE20C0(*(v1 + 2072), v115, &qword_27F988728, &unk_258F0B840);
    LODWORD(v114) = v317(v115, 1, v114);
    sub_258DE2184(v115, &qword_27F988728, &unk_258F0B840);
    if (v114 == 1)
    {
      goto LABEL_58;
    }

    v116 = *(v1 + 2104);
    v117 = *(v1 + 2048);
    sub_258DE20C0(*(v1 + 2072), v117, &qword_27F988728, &unk_258F0B840);
    v118 = v317(v117, 1, v116);
    v119 = *(v1 + 2104);
    v120 = *(v1 + 2048);
    if (v118 == 1)
    {
      sub_258F09970();
      if (v317(v120, 1, v119) != 1)
      {
        sub_258DE2184(*(v1 + 2048), &qword_27F988728, &unk_258F0B840);
      }
    }

    else
    {
      v316(*(v1 + 2144), *(v1 + 2048), *(v1 + 2104));
    }

    v121 = *(v1 + 2144);
    v122 = *(v1 + 2104);
    v123 = sub_258F099B0();
    v322(v121, v122);
    if (v123)
    {
LABEL_58:
      v124 = *(v1 + 2160);
      v125 = *(v1 + 2136);
      v126 = *(v1 + 2104);
      v127 = *(v1 + 2072);
      sub_258DE2184(v127, &qword_27F988728, &unk_258F0B840);
      v102(v127, v124, v126);
      v327(v127, 0, 1, v126);
      v102(v125, v124, v126);
      v128 = sub_258F0A350();
      v129 = sub_258F0A810();
      v130 = os_log_type_enabled(v128, v129);
      v131 = *(v1 + 2136);
      v132 = *(v1 + 2104);
      if (v130)
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v348 = v134;
        *v133 = 136315138;
        sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v135 = sub_258F0AD60();
        v137 = v136;
        v322(v131, v132);
        v138 = sub_258DE3018(v135, v137, &v348);

        *(v133 + 4) = v138;
        _os_log_impl(&dword_258DD8000, v128, v129, "#SpeakerIdSamplingCalculator: mostRecentDate %s", v133, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v134);
        MEMORY[0x259C9EF40](v134, -1, -1);
        MEMORY[0x259C9EF40](v133, -1, -1);
      }

      else
      {

        v322(v131, v132);
      }
    }

    v139 = *(v315 + 16);
    if (v139)
    {
      v140 = (v315 + 32);
      while (1)
      {
        v341 = v140;
        v342 = v139;
        v141 = *v140;

        v142 = sub_258F0A350();
        v143 = sub_258F0A810();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v348 = v145;
          *v144 = 136315138;
          v146 = sub_258F0A420();
          v148 = sub_258DE3018(v146, v147, &v348);

          *(v144 + 4) = v148;
          _os_log_impl(&dword_258DD8000, v142, v143, "#SpeakerIdSamplingCalculator: Current Sample %s", v144, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v145);
          MEMORY[0x259C9EF40](v145, -1, -1);
          MEMORY[0x259C9EF40](v144, -1, -1);
        }

        v327(*(v1 + 2040), 1, 1, *(v1 + 2104));
        *(v1 + 1640) = 0xD000000000000017;
        *(v1 + 1648) = 0x8000000258F1EC00;
        sub_258F0AA80();
        if (*(v141 + 16) && (v149 = sub_258E2EA2C(v1 + 56), (v150 & 1) != 0))
        {
          sub_258DE4090(*(v141 + 56) + 32 * v149, v1 + 736);
        }

        else
        {
          *(v1 + 736) = 0u;
          *(v1 + 752) = 0u;
        }

        sub_258E0F590(v1 + 56);
        if (!*(v1 + 760))
        {
          break;
        }

        sub_258E76E10();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_76;
        }

        v151 = *(v1 + 2104);
        v152 = *(v1 + 2040);
        v153 = *(v1 + 2032);
        v154 = *(v1 + 1888);
        v346 = [v154 unsignedLongLongValue];
        sub_258F099D0();

        sub_258DE2184(v152, &qword_27F988728, &unk_258F0B840);
        v327(v153, 0, 1, v151);
        sub_258E2EAD8(v153, v152, &qword_27F988728, &unk_258F0B840);
LABEL_77:
        v155 = *(v1 + 1984);
        v156 = *(v1 + 1944);
        v157 = *v340;
        (*v340)(*(v1 + 1992), 1, 1, v156);
        v339 = v157;
        v157(v155, 1, 1, v156);
        *(v1 + 1496) = 0x5F74736575716572;
        *(v1 + 1504) = 0xEA00000000006469;
        sub_258F0AA80();
        if (*(v141 + 16) && (v158 = sub_258E2EA2C(v1 + 176), (v159 & 1) != 0))
        {
          sub_258DE4090(*(v141 + 56) + 32 * v158, v1 + 864);
        }

        else
        {
          *(v1 + 864) = 0u;
          *(v1 + 880) = 0u;
        }

        sub_258E0F590(v1 + 176);
        if (!*(v1 + 888))
        {
          sub_258DE2184(v1 + 864, &qword_27F989868, &unk_258F12D70);
LABEL_88:
          v174 = sub_258EEF518(v141);
          v334 = sub_258EEF5F8(v141);
          *(v1 + 1864) = 0x615F6E6F69746F6DLL;
          *(v1 + 1872) = 0xEF79746976697463;
          sub_258F0AA80();
          if (*(v141 + 16) && (v175 = sub_258E2EA2C(v1 + 296), (v176 & 1) != 0))
          {
            sub_258DE4090(*(v141 + 56) + 32 * v175, v336);
          }

          else
          {
            *v336 = 0u;
            *(v1 + 1200) = 0u;
          }

          sub_258E0F590(v1 + 296);
          if (*(v1 + 1208))
          {
            if (swift_dynamicCast())
            {
              v177 = sub_258F0A4E0();

              v178 = v177;
              if ([v178 isEqualToString:@"ORCHMOTIONACTIVITY_UNKNOWN"])
              {
                v332 = 0;
              }

              else
              {
                if ([v178 isEqualToString:@"ORCHMOTIONACTIVITY_MOVING"])
                {
                  v195 = 1;
                }

                else if ([v178 isEqualToString:@"ORCHMOTIONACTIVITY_STATIONARY"])
                {
                  v195 = 2;
                }

                else if ([v178 isEqualToString:@"ORCHMOTIONACTIVITY_IN_VEHICLE_MOVING"])
                {
                  v195 = 3;
                }

                else if ([v178 isEqualToString:@"ORCHMOTIONACTIVITY_IN_VEHICLE_STATIC"])
                {
                  v195 = 4;
                }

                else if ([v178 isEqualToString:@"ORCHMOTIONACTIVITY_IN_VEHICLE_STATIONARY"])
                {
                  v195 = 5;
                }

                else
                {
                  v195 = 0;
                }

                v332 = v195;
              }

LABEL_121:
              *(v1 + 1480) = 0x6F635F6F69647561;
              *(v1 + 1488) = 0xEB00000000636564;
              sub_258F0AA80();
              if (*(v141 + 16) && (v206 = sub_258E2EA2C(v1 + 416), (v207 & 1) != 0))
              {
                sub_258DE4090(*(v141 + 56) + 32 * v206, v335);
              }

              else
              {
                *v335 = 0u;
                *(v1 + 1264) = 0u;
              }

              sub_258E0F590(v1 + 416);
              if (*(v1 + 1272))
              {
                if (swift_dynamicCast())
                {
                  v208 = sub_258F0A4E0();

                  v209 = v208;
                  if ([v209 isEqualToString:@"MHASRAUDIOCODEC_UNKNOWN"])
                  {
                    v330 = 0;
                  }

                  else
                  {
                    if ([v209 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_8000HZ_VALUE"])
                    {
                      v210 = 1;
                    }

                    else if ([v209 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_11025HZ_VALUE"])
                    {
                      v210 = 2;
                    }

                    else if ([v209 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_16000HZ_VALUE"])
                    {
                      v210 = 3;
                    }

                    else if ([v209 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_22050HZ_VALUE"])
                    {
                      v210 = 4;
                    }

                    else if ([v209 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_32000HZ_VALUE"])
                    {
                      v210 = 5;
                    }

                    else if ([v209 isEqualToString:@"MHASRAUDIOCODEC_SPEEX_NB_QUALITY7_VALUE"])
                    {
                      v210 = 6;
                    }

                    else if ([v209 isEqualToString:@"MHASRAUDIOCODEC_SPEEX_WB_QUALITY8_VALUE"])
                    {
                      v210 = 7;
                    }

                    else if ([v209 isEqualToString:@"MHASRAUDIOCODEC_ALAC_MONO_8000HZ_VALUE"])
                    {
                      v210 = 8;
                    }

                    else if ([v209 isEqualToString:@"MHASRAUDIOCODEC_ALAC_MONO_16000HZ_VALUE"])
                    {
                      v210 = 9;
                    }

                    else if ([v209 isEqualToString:@"MHASRAUDIOCODEC_OPUS_MONO_8000HZ_VALUE"])
                    {
                      v210 = 10;
                    }

                    else if ([v209 isEqualToString:@"MHASRAUDIOCODEC_OPUS_MONO_16000HZ_VALUE"])
                    {
                      v210 = 11;
                    }

                    else
                    {
                      v210 = 0;
                    }

                    v330 = v210;
                  }

LABEL_156:
                  strcpy((v1 + 1544), "audio_source");
                  *(v1 + 1557) = 0;
                  *(v1 + 1558) = -5120;
                  sub_258F0AA80();
                  if (*(v141 + 16) && (v211 = sub_258E2EA2C(v1 + 536), (v212 & 1) != 0))
                  {
                    sub_258DE4090(*(v141 + 56) + 32 * v211, v338);
                  }

                  else
                  {
                    *v338 = 0u;
                    *(v1 + 1072) = 0u;
                  }

                  sub_258E0F590(v1 + 536);
                  if (*(v1 + 1080))
                  {
                    if (swift_dynamicCast())
                    {
                      v213 = sub_258F0A4E0();

                      v214 = v213;
                      if ([v214 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_UNKNOWN"])
                      {
                        v329 = 0;
                      }

                      else
                      {
                        if ([v214 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_LINEIN"])
                        {
                          v215 = 1;
                        }

                        else if ([v214 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_BUILTIN_MIC"])
                        {
                          v215 = 2;
                        }

                        else if ([v214 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_WIREDHEADSET_MIC"])
                        {
                          v215 = 3;
                        }

                        else if ([v214 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_BLUETOOTH_HANDSFREE_DEVICE"])
                        {
                          v215 = 4;
                        }

                        else if ([v214 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_USB_AUDIO"])
                        {
                          v215 = 5;
                        }

                        else if ([v214 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_CAR_AUDIO"])
                        {
                          v215 = 6;
                        }

                        else if ([v214 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_BLUETOOTH_DOAP_DEVICE"])
                        {
                          v215 = 7;
                        }

                        else if ([v214 isEqualToString:@"MHASSISTANTDAEMONAUDIOSOURCE_ENHANCED_CARPLAY_DEVICE"])
                        {
                          v215 = 8;
                        }

                        else
                        {
                          v215 = 0;
                        }

                        v329 = v215;
                      }

LABEL_185:
                      *(v1 + 1592) = 0x6B7361745F727361;
                      *(v1 + 1600) = 0xE800000000000000;
                      sub_258F0AA80();
                      if (*(v141 + 16) && (v216 = sub_258E2EA2C(v1 + 656), (v217 & 1) != 0))
                      {
                        sub_258DE4090(*(v141 + 56) + 32 * v216, v1 + 960);
                      }

                      else
                      {
                        *(v1 + 960) = 0u;
                        *(v1 + 976) = 0u;
                      }

                      sub_258E0F590(v1 + 656);
                      if (*(v1 + 984))
                      {
                        if (swift_dynamicCast())
                        {
                          v218 = sub_258F0A4E0();

                          v219 = v218;
                          if ([v219 isEqualToString:@"ASRDATAPACKTASK_UNKNOWN"])
                          {
                            v220 = 0;
                          }

                          else if ([v219 isEqualToString:@"ASRDATAPACKTASK_SEARCH_OR_MESSAGING"])
                          {
                            v220 = 1;
                          }

                          else if ([v219 isEqualToString:@"ASRDATAPACKTASK_DICTATION"])
                          {
                            v220 = 2;
                          }

                          else if ([v219 isEqualToString:@"ASRDATAPACKTASK_WEB_SEARCH"])
                          {
                            v220 = 3;
                          }

                          else if ([v219 isEqualToString:@"ASRDATAPACKTASK_TSHOT"])
                          {
                            v220 = 4;
                          }

                          else if ([v219 isEqualToString:@"ASRDATAPACKTASK_SIRI_DICTATION"])
                          {
                            v220 = 5;
                          }

                          else if ([v219 isEqualToString:@"ASRDATAPACKTASK_DICTATION_WITH_VOICE_COMMAND"])
                          {
                            v220 = 6;
                          }

                          else if ([v219 isEqualToString:@"ASRDATAPACKTASK_BETO"])
                          {
                            v220 = 7;
                          }

                          else if ([v219 isEqualToString:@"ASRDATAPACKTASK_BETO_DICTATION"])
                          {
                            v220 = 8;
                          }

                          else
                          {
                            v220 = 0;
                          }

                          goto LABEL_213;
                        }
                      }

                      else
                      {
                        sub_258DE2184(v1 + 960, &qword_27F989868, &unk_258F12D70);
                      }

                      v220 = 0;
LABEL_213:
                      *(v1 + 1624) = 0xD000000000000015;
                      *(v1 + 1632) = 0x8000000258F1EC20;
                      sub_258F0AA80();
                      if (*(v141 + 16) && (v221 = sub_258E2EA2C(v1 + 16), (v222 & 1) != 0))
                      {
                        sub_258DE4090(*(v141 + 56) + 32 * v221, v337);
                      }

                      else
                      {
                        *v337 = 0u;
                        *(v1 + 1104) = 0u;
                      }

                      sub_258E0F590(v1 + 16);
                      if (*(v1 + 1112))
                      {
                        if (swift_dynamicCast())
                        {
                          v223 = sub_258F0A4E0();

                          v224 = v223;
                          if ([v224 isEqualToString:@"ORCHREQUESTCANCELLATIONREASON_UNKNOWN"])
                          {
                            v225 = 0;
                          }

                          else if ([v224 isEqualToString:@"ORCHREQUESTCANCELLATIONREASON_MITIGATED"])
                          {
                            v225 = 1;
                          }

                          else if ([v224 isEqualToString:@"ORCHREQUESTCANCELLATIONREASON_CANCEL_COMMAND"])
                          {
                            v225 = 2;
                          }

                          else
                          {
                            v225 = 0;
                          }

LABEL_229:
                          strcpy((v1 + 1576), "trigger_phrase");
                          *(v1 + 1591) = -18;
                          sub_258F0AA80();
                          if (*(v141 + 16))
                          {
                            v226 = sub_258E2EA2C(v1 + 696);
                            v227 = v346;
                            if (v228)
                            {
                              sub_258DE4090(*(v141 + 56) + 32 * v226, v1 + 832);
                            }

                            else
                            {
                              *(v1 + 832) = 0u;
                              *(v1 + 848) = 0u;
                            }
                          }

                          else
                          {
                            *(v1 + 832) = 0u;
                            *(v1 + 848) = 0u;
                            v227 = v346;
                          }

                          sub_258E0F590(v1 + 696);
                          if (*(v1 + 856))
                          {
                            if (swift_dynamicCast())
                            {
                              v229 = _s16MetricsFramework13SamplingUtilsC24getSISchemaTriggerPhrase3forSo0fgH0VSS_tFZ_0(*(v1 + 1832), *(v1 + 1840));

LABEL_239:
                              v328 = sub_258EE74EC(v141);
                              type metadata accessor for SpeakerIdSamplingDataBuilderImpl(0);
                              swift_allocObject();
                              v230 = sub_258EF13A8();
                              v231 = (v230 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_enrollmentId);
                              *v231 = v326;
                              v231[1] = v325;

                              *(v230 + 24) = v227;
                              *(v230 + 32) = 0;
                              *(v1 + 1560) = 0x745F656369766564;
                              *(v1 + 1568) = 0xEB00000000657079;

                              sub_258F0AA80();
                              sub_258E262F8(v1 + 616, v141, (v1 + 928));
                              sub_258E0F590(v1 + 616);
                              if (*(v1 + 952))
                              {
                                v232 = swift_dynamicCast();
                                v233 = *(v1 + 1816);
                                v234 = *(v1 + 1824);
                                if (!v232)
                                {
                                  v233 = 0;
                                  v234 = 0;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v1 + 928, &qword_27F989868, &unk_258F12D70);
                                v233 = 0;
                                v234 = 0;
                              }

                              *(v230 + 40) = v233;
                              *(v230 + 48) = v234;

                              strcpy((v1 + 1528), "system_build");
                              *(v1 + 1541) = 0;
                              *(v1 + 1542) = -5120;
                              sub_258F0AA80();
                              sub_258E262F8(v1 + 576, v141, (v1 + 992));
                              sub_258E0F590(v1 + 576);
                              if (*(v1 + 1016))
                              {
                                v235 = swift_dynamicCast();
                                v236 = *(v1 + 1800);
                                v237 = *(v1 + 1808);
                                if (!v235)
                                {
                                  v236 = 0;
                                  v237 = 0;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v1 + 992, &qword_27F989868, &unk_258F12D70);
                                v236 = 0;
                                v237 = 0;
                              }

                              *(v230 + 56) = v236;
                              *(v230 + 64) = v237;

                              v238 = *(v230 + 104);
                              *(v230 + 104) = v174;

                              *(v1 + 1512) = 0xD000000000000019;
                              *(v1 + 1520) = 0x8000000258F1EC40;
                              v347 = v174;
                              sub_258F0AA80();
                              sub_258E262F8(v1 + 496, v141, (v1 + 1024));
                              sub_258E0F590(v1 + 496);
                              if (*(v1 + 1048))
                              {
                                v239 = swift_dynamicCast();
                                v240 = *(v1 + 1784);
                                v241 = *(v1 + 1792);
                                if (!v239)
                                {
                                  v240 = 0;
                                  v241 = 0;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v1 + 1024, &qword_27F989868, &unk_258F12D70);
                                v240 = 0;
                                v241 = 0;
                              }

                              *(v230 + 72) = v240;
                              *(v230 + 80) = v241;

                              *(v1 + 1448) = 0xD00000000000001ALL;
                              *(v1 + 1456) = 0x8000000258F1EC60;
                              sub_258F0AA80();
                              sub_258E262F8(v1 + 456, v141, (v1 + 1120));
                              sub_258E0F590(v1 + 456);
                              if (*(v1 + 1144))
                              {
                                v242 = swift_dynamicCast();
                                v243 = *(v1 + 1768);
                                v244 = *(v1 + 1776);
                                if (!v242)
                                {
                                  v243 = 0;
                                  v244 = 0;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v1 + 1120, &qword_27F989868, &unk_258F12D70);
                                v243 = 0;
                                v244 = 0;
                              }

                              *(v230 + 88) = v243;
                              *(v230 + 96) = v244;

                              *(v230 + 112) = v334;
                              *(v230 + 116) = BYTE4(v334) & 1;
                              *(v230 + 120) = v332;
                              *(v230 + 124) = 0;
                              *(v1 + 1432) = 0xD000000000000012;
                              *(v1 + 1440) = 0x8000000258F1EC80;
                              sub_258F0AA80();
                              sub_258E262F8(v1 + 376, v141, (v1 + 1216));
                              sub_258E0F590(v1 + 376);
                              if (*(v1 + 1240))
                              {
                                v245 = swift_dynamicCast();
                                v246 = *(v1 + 2184);
                                if (!v245)
                                {
                                  v246 = 2;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v1 + 1216, &qword_27F989868, &unk_258F12D70);
                                v246 = 2;
                              }

                              *(v230 + 125) = v246;
                              *(v1 + 1416) = 0xD000000000000010;
                              *(v1 + 1424) = 0x8000000258F1ECA0;
                              sub_258F0AA80();
                              sub_258E262F8(v1 + 336, v141, (v1 + 768));
                              sub_258E0F590(v1 + 336);
                              if (*(v1 + 792))
                              {
                                v247 = swift_dynamicCast();
                                v248 = *(v1 + 2185);
                                if (!v247)
                                {
                                  v248 = 2;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v1 + 768, &qword_27F989868, &unk_258F12D70);
                                v248 = 2;
                              }

                              *(v230 + 126) = v248;
                              *(v1 + 1464) = 0xD000000000000012;
                              *(v1 + 1472) = 0x8000000258F1ECC0;
                              sub_258F0AA80();
                              sub_258E262F8(v1 + 256, v141, (v1 + 1280));
                              sub_258E0F590(v1 + 256);
                              if (*(v1 + 1304))
                              {
                                v249 = swift_dynamicCast();
                                v250 = *(v1 + 2186);
                                if (!v249)
                                {
                                  v250 = 2;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v1 + 1280, &qword_27F989868, &unk_258F12D70);
                                v250 = 2;
                              }

                              *(v230 + 127) = v250;
                              *(v230 + 128) = v330;
                              *(v230 + 132) = 0;
                              *(v230 + 136) = v329;
                              *(v230 + 140) = 0;
                              *(v230 + 144) = v220;
                              *(v230 + 148) = 0;
                              *(v1 + 1384) = 0xD000000000000019;
                              *(v1 + 1392) = 0x8000000258F1ECE0;
                              sub_258F0AA80();
                              sub_258E262F8(v1 + 216, v141, (v1 + 1152));
                              sub_258E0F590(v1 + 216);
                              if (*(v1 + 1176))
                              {
                                v251 = swift_dynamicCast();
                                v252 = *(v1 + 1880);
                                if (!v251)
                                {
                                  v252 = 0;
                                }

                                v253 = v251 ^ 1;
                              }

                              else
                              {
                                sub_258DE2184(v1 + 1152, &qword_27F989868, &unk_258F12D70);
                                v252 = 0;
                                v253 = 1;
                              }

                              v254 = *(v1 + 1992);
                              v255 = *(v1 + 1984);
                              v256 = *(v1 + 1976);
                              v257 = *(v1 + 1968);
                              v258 = *(v1 + 1944);
                              *(v230 + 152) = v252;
                              *(v230 + 160) = v253;
                              *(v230 + 224) = v225;
                              *(v230 + 228) = 0;
                              v259 = v230 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_triggerPhrase;
                              *v259 = v229;
                              *(v259 + 4) = 0;
                              sub_258DE20C0(v255, v256, &qword_27F988730, &unk_258F0F8E0);
                              v260 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_audioId;
                              swift_beginAccess();
                              sub_258EF0230(v256, v230 + v260);
                              swift_endAccess();
                              v261 = *(v230 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_location);
                              *(v230 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_location) = v328;

                              v262 = v328;
                              sub_258F09A60();
                              v339(v256, 0, 1, v258);
                              sub_258E2EAD8(v256, v257, &qword_27F988730, &unk_258F0F8E0);
                              v263 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_sampleId;
                              swift_beginAccess();
                              sub_258EF0230(v257, v230 + v263);
                              swift_endAccess();
                              sub_258DE20C0(v254, v256, &qword_27F988730, &unk_258F0F8E0);
                              v264 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_requestId;
                              swift_beginAccess();
                              sub_258EF0230(v256, v230 + v264);
                              swift_endAccess();
                              strcpy((v1 + 1608), "post_itn_1best");
                              *(v1 + 1623) = -18;
                              sub_258F0AA80();
                              sub_258E262F8(v1 + 136, v141, (v1 + 896));
                              sub_258E0F590(v1 + 136);
                              if (*(v1 + 920))
                              {
                                v265 = swift_dynamicCast();
                                v266 = *(v1 + 1688);
                                v267 = *(v1 + 1696);
                                if (!v265)
                                {
                                  v266 = 0;
                                  v267 = 0;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v1 + 896, &qword_27F989868, &unk_258F12D70);
                                v266 = 0;
                                v267 = 0;
                              }

                              *(v230 + 168) = v266;
                              *(v230 + 176) = v267;

                              *(v1 + 1656) = 0x616D6F645F627573;
                              *(v1 + 1664) = 0xEA00000000006E69;
                              sub_258F0AA80();
                              sub_258E262F8(v1 + 96, v141, (v1 + 800));

                              sub_258E0F590(v1 + 96);
                              if (*(v1 + 824))
                              {
                                v268 = swift_dynamicCast();
                                v269 = *(v1 + 1672);
                                v270 = *(v1 + 1680);
                                if (!v268)
                                {
                                  v269 = 0;
                                  v270 = 0;
                                }
                              }

                              else
                              {
                                sub_258DE2184(v1 + 800, &qword_27F989868, &unk_258F12D70);
                                v269 = 0;
                                v270 = 0;
                              }

                              v271 = *(v1 + 1936);
                              v272 = *(v1 + 1928);
                              *(v230 + 184) = v269;
                              *(v230 + 192) = v270;

                              sub_258EF07B8(v271);

                              sub_258EE73AC(v271, v272);
                              v273 = v344;
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                v273 = sub_258DE2D68(0, v344[2] + 1, 1, v344);
                              }

                              v275 = v273[2];
                              v274 = v273[3];
                              if (v275 >= v274 >> 1)
                              {
                                v344 = sub_258DE2D68((v274 > 1), v275 + 1, 1, v273);
                              }

                              else
                              {
                                v344 = v273;
                              }

                              v276 = *(v1 + 2040);
                              v277 = *(v1 + 1992);
                              v278 = *(v1 + 1936);
                              v279 = *(v1 + 1928);

                              sub_258EE7410(v278);
                              sub_258DE2184(v277, &qword_27F988730, &unk_258F0F8E0);
                              sub_258DE2184(v276, &qword_27F988728, &unk_258F0B840);
                              v344[2] = v275 + 1;
                              sub_258EF02A0(v279, v344 + ((*(v324 + 80) + 32) & ~*(v324 + 80)) + *(v324 + 72) * v275);
                              goto LABEL_65;
                            }
                          }

                          else
                          {
                            sub_258DE2184(v1 + 832, &qword_27F989868, &unk_258F12D70);
                          }

                          v229 = 0;
                          goto LABEL_239;
                        }
                      }

                      else
                      {
                        sub_258DE2184(v337, &qword_27F989868, &unk_258F12D70);
                      }

                      v225 = 0;
                      goto LABEL_229;
                    }
                  }

                  else
                  {
                    sub_258DE2184(v338, &qword_27F989868, &unk_258F12D70);
                  }

                  v329 = 0;
                  goto LABEL_185;
                }
              }

              else
              {
                sub_258DE2184(v335, &qword_27F989868, &unk_258F12D70);
              }

              v330 = 0;
              goto LABEL_156;
            }
          }

          else
          {
            sub_258DE2184(v336, &qword_27F989868, &unk_258F12D70);
          }

          v332 = 0;
          goto LABEL_121;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_88;
        }

        v160 = *(v1 + 1992);
        v161 = *(v1 + 1984);
        v162 = *(v1 + 1976);
        v163 = *(v1 + 1704);
        v164 = *(v1 + 1712);
        sub_258F09A30();
        sub_258DE2184(v160, &qword_27F988730, &unk_258F0F8E0);
        sub_258E2EAD8(v162, v160, &qword_27F988730, &unk_258F0F8E0);
        v165 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970_];
        (*(v323 + 96))(v163, v164, v319, v321, v165);

        sub_258EF0230(v162, v161);

        v166 = sub_258F0A350();
        v167 = sub_258F0A810();

        v333 = v163;
        if (os_log_type_enabled(v166, v167))
        {
          v168 = swift_slowAlloc();
          v169 = swift_slowAlloc();
          v331 = swift_slowAlloc();
          v348 = v331;
          *v168 = 136315906;
          *(v168 + 4) = sub_258DE3018(v163, v164, &v348);
          *(v168 + 12) = 2080;
          *(v168 + 14) = sub_258DE3018(v319, v321, &v348);
          *(v168 + 22) = 2112;
          v170 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970_];
          *(v168 + 24) = v170;
          *v169 = v170;
          *(v168 + 32) = 2048;
          *(v168 + 34) = v346;
          _os_log_impl(&dword_258DD8000, v166, v167, "#SpeakerIdSamplingCalculator: SpeakerIdSamplingCalculator requestIdString: %s, siriLanguage: %s, date: %@ startDatestampInDaysSince1970: %llu)", v168, 0x2Au);
          sub_258DE2184(v169, &qword_27F988C78, &qword_258F11A20);
          MEMORY[0x259C9EF40](v169, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x259C9EF40](v331, -1, -1);
          MEMORY[0x259C9EF40](v168, -1, -1);
        }

        v171 = v164;
        v172 = *(v1 + 1984);
        v173 = *(v1 + 1944);
        if ((*v318)(v172, 1, v173))
        {
        }

        else
        {
          v179 = *(v1 + 2104);
          v180 = *(v1 + 2040);
          v181 = *(v1 + 2024);
          v182 = *(v1 + 1960);
          (*v313)(v182, v172, v173);
          v183 = sub_258F09A40();
          v185 = v184;
          (*v312)(v182, v173);
          sub_258DE20C0(v180, v181, &qword_27F988728, &unk_258F0B840);
          if (v317(v181, 1, v179) == 1)
          {
            v186 = *(v1 + 2024);

            sub_258DE2184(v186, &qword_27F988728, &unk_258F0B840);
          }

          else
          {
            v196 = *(v1 + 2128);
            v316(v196, *(v1 + 2024), *(v1 + 2104));
            v197 = (*(v323 + 80))(v333, v171, v183, v185, v196);

            if (v197)
            {

              v198 = sub_258F0A350();
              v199 = sub_258F0A810();

              v200 = os_log_type_enabled(v198, v199);
              v201 = *(v1 + 2128);
              v202 = *(v1 + 2104);
              if (v200)
              {
                v203 = swift_slowAlloc();
                v204 = swift_slowAlloc();
                v348 = v204;
                *v203 = 136315138;
                v205 = sub_258DE3018(v333, v171, &v348);

                *(v203 + 4) = v205;
                _os_log_impl(&dword_258DD8000, v198, v199, "#SpeakerIdSamplingCalculator: upload: %s audio to server succeed", v203, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v204);
                MEMORY[0x259C9EF40](v204, -1, -1);
                MEMORY[0x259C9EF40](v203, -1, -1);
              }

              else
              {
              }

              v322(v201, v202);
              goto LABEL_88;
            }

            v322(*(v1 + 2128), *(v1 + 2104));
          }
        }

        v187 = sub_258F0A350();
        v188 = sub_258F0A810();

        v189 = os_log_type_enabled(v187, v188);
        v190 = *(v1 + 2040);
        v191 = *(v1 + 1992);
        if (v189)
        {
          v192 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          v348 = v193;
          *v192 = 136315138;
          v194 = sub_258DE3018(v333, v171, &v348);

          *(v192 + 4) = v194;
          _os_log_impl(&dword_258DD8000, v187, v188, "#SpeakerIdSamplingCalculator: Unable to submit request: %s to upload audio, skipping current sample.", v192, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v193);
          MEMORY[0x259C9EF40](v193, -1, -1);
          MEMORY[0x259C9EF40](v192, -1, -1);
        }

        else
        {
        }

        sub_258DE2184(v191, &qword_27F988730, &unk_258F0F8E0);
        sub_258DE2184(v190, &qword_27F988728, &unk_258F0B840);
LABEL_65:
        sub_258DE2184(*(v1 + 1984), &qword_27F988730, &unk_258F0F8E0);
        v140 = v341 + 1;
        v139 = v342 - 1;
        if (v342 == 1)
        {
          goto LABEL_36;
        }
      }

      sub_258DE2184(v1 + 736, &qword_27F989868, &unk_258F12D70);
LABEL_76:
      v346 = 0;
      goto LABEL_77;
    }

LABEL_36:
    v85 = *(v1 + 2160);
    v86 = *(v1 + 2104);

    v322(v85, v86);
    v81 = v308;
    v78 = v309;
    v84 = v310;
    v79 = v311;
  }

  v282 = *(v1 + 2104);
  v283 = *(v1 + 2072);
  v284 = *(v1 + 2016);

  sub_258DE20C0(v283, v284, &qword_27F988728, &unk_258F0B840);
  if (v317(v284, 1, v282) == 1)
  {
    sub_258DE2184(*(v1 + 2016), &qword_27F988728, &unk_258F0B840);
  }

  else
  {
    v285 = *(v1 + 2120);
    v286 = *(v1 + 2104);
    v316(v285, *(v1 + 2016), v286);
    (*(v323 + 88))(v285);
    v322(v285, v286);
  }

  v287 = sub_258F0A350();
  v288 = sub_258F0A810();
  if (os_log_type_enabled(v287, v288))
  {
    v289 = swift_slowAlloc();
    *v289 = 134217984;
    *(v289 + 4) = v344[2];
    _os_log_impl(&dword_258DD8000, v287, v288, "#SpeakerIdSamplingCalculator: SQL calculator completed: SpeakerIdSamplingCalculator query yielded %ld results", v289, 0xCu);
    MEMORY[0x259C9EF40](v289, -1, -1);
  }

  v290 = sub_258F0A350();
  v291 = sub_258F0A810();
  v292 = os_log_type_enabled(v290, v291);
  v293 = *(v1 + 2168);
  v294 = *(v1 + 2104);
  v295 = *(v1 + 2072);
  if (v292)
  {
    v296 = *(v1 + 1912);
    v297 = swift_slowAlloc();
    v298 = swift_slowAlloc();
    *v297 = 136315138;
    v348 = v298;

    v300 = MEMORY[0x259C9DF80](v299, v296);
    v302 = v301;

    v303 = sub_258DE3018(v300, v302, &v348);

    *(v297 + 4) = v303;
    _os_log_impl(&dword_258DD8000, v290, v291, "#SpeakerIdSamplingCalculator: output %s", v297, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v298);
    MEMORY[0x259C9EF40](v298, -1, -1);
    MEMORY[0x259C9EF40](v297, -1, -1);
  }

  v322(v293, v294);
  sub_258DE2184(v295, &qword_27F988728, &unk_258F0B840);
  v32 = v344;
LABEL_13:
  v33 = MEMORY[0x277D84F90];
  v34 = *(v1 + 1896);
  *v34 = v320;
  v34[1] = v33;
  v34[2] = v32;

  v35 = *(v1 + 8);

  v35();
}

uint64_t sub_258EEB624(unint64_t a1, int64_t a2, char *a3, void (**a4)(char *, uint64_t, uint64_t), unint64_t a5)
{
  v167 = a4;
  v143 = a3;
  v166 = a2;
  v137 = a1;
  v7 = sub_258F09AF0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v158 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_258F09B00();
  v11 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v12);
  v14 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v129 - v17;
  v140 = sub_258F09A20();
  v149 = *(v140 - 8);
  v20 = MEMORY[0x28223BE20](v140, v19);
  v136 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v129 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v134 = &v129 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v142 = &v129 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v164 = &v129 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v144 = &v129 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8C8, &qword_258F16AA8);
  v39 = MEMORY[0x28223BE20](v37 - 8, v38);
  v162 = &v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v161 = &v129 - v42;
  v163 = v5;
  v138 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v43 = sub_258F0A350();
  v44 = sub_258F0A810();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = v25;
    v46 = a5;
    v47 = v11;
    v48 = v43;
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_258DD8000, v48, v44, "#SpeakerIdSamplingCalculator: randomRowsForEachDate", v49, 2u);
    v50 = v49;
    v43 = v48;
    v11 = v47;
    a5 = v46;
    v25 = v45;
    MEMORY[0x259C9EF40](v50, -1, -1);
  }

  v51 = sub_258EED418(v166);
  v52 = sub_258EEC45C(v167, a5, v51);

  result = sub_258DFC258(MEMORY[0x277D84F90]);
  v139 = result;
  v55 = 0;
  v56 = *(v52 + 64);
  v141 = v52 + 64;
  v148 = v52;
  v57 = 1 << *(v52 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & v56;
  v157 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_defaults;
  v60 = (v57 + 63) >> 6;
  v147 = (v149 + 16);
  v167 = (v149 + 32);
  v156 = *MEMORY[0x277CC9968];
  v155 = (v8 + 104);
  v152 = (v11 + 8);
  v153 = (v8 + 8);
  v151 = (v149 + 48);
  v160 = (v149 + 8);
  *&v54 = 136315394;
  v133 = v54;
  v159 = v7;
  v145 = v14;
  v150 = v60;
  v135 = v25;
  v146 = v18;
  while (1)
  {
    v61 = v55;
    v62 = v140;
    if (!v59)
    {
      break;
    }

    while (1)
    {
      while (1)
      {
        v63 = v61;
LABEL_16:
        v65 = __clz(__rbit64(v59));
        v59 &= v59 - 1;
        v66 = v65 | (v63 << 6);
        v67 = v148;
        v68 = v149;
        v69 = v144;
        (*(v149 + 16))(v144, *(v148 + 48) + *(v149 + 72) * v66, v62);
        v70 = *(*(v67 + 56) + 8 * v66);
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
        v72 = *(v71 + 48);
        v73 = *(v68 + 32);
        v74 = v162;
        v73(v162, v69, v62);
        *&v74[v72] = v70;
        (*(*(v71 - 8) + 56))(v74, 0, 1, v71);

        v166 = v63;
        v14 = v145;
        v18 = v146;
LABEL_17:
        v75 = v74;
        v76 = v161;
        sub_258E2EAD8(v75, v161, &qword_27F98A8C8, &qword_258F16AA8);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
        v78 = (*(*(v77 - 8) + 48))(v76, 1, v77);
        v79 = v164;
        if (v78 == 1)
        {

          v120 = sub_258F0A350();
          v121 = sub_258F0A810();
          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            v168 = v123;
            *v122 = 136315138;
            v124 = v139;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A908, &unk_258F16C98);
            sub_258EF0768(&qword_27F989518, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
            v125 = sub_258F0A420();
            v127 = v126;

            v128 = sub_258DE3018(v125, v127, &v168);

            *(v122 + 4) = v128;
            _os_log_impl(&dword_258DD8000, v120, v121, "#SpeakerIdSamplingCalculator: randomRowsForEachDate rows: %s", v122, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v123);
            MEMORY[0x259C9EF40](v123, -1, -1);
            MEMORY[0x259C9EF40](v122, -1, -1);
          }

          else
          {

            return v139;
          }

          return v124;
        }

        v80 = v18;
        v165 = *(v76 + *(v77 + 48));
        v81 = *v167;
        (*v167)(v164, v76, v62);
        _s16MetricsFramework13SamplingUtilsC03getC30CycleDaysLimitForUserSelection4fromSiSo14NSUserDefaultsC_tFZ_0(*(v163 + v157));
        v83 = v82;
        sub_258F09AE0();
        v84 = v14;
        v85 = v158;
        v86 = v159;
        result = (*v155)(v158, v156, v159);
        if (v83 == 0x8000000000000000)
        {
          goto LABEL_44;
        }

        sub_258F09AD0();
        (*v153)(v85, v86);
        (*v152)(v84, v154);
        v14 = v84;
        if ((*v151)(v80, 1, v62) != 1)
        {
          break;
        }

        (*v160)(v79, v62);
        result = sub_258DE2184(v80, &qword_27F988728, &unk_258F0B840);
        v61 = v166;
        v18 = v80;
        v60 = v150;
        if (!v59)
        {
          goto LABEL_10;
        }
      }

      v87 = v142;
      v81(v142, v80, v62);
      sub_258EF0768(&qword_27F989870, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v88 = sub_258F0A4A0();
      v89 = *v160;
      (*v160)(v87, v62);
      if ((v88 & 1) == 0)
      {
        break;
      }

      v18 = v80;
      v89(v164, v62);

      v61 = v166;
      v60 = v150;
      if (!v59)
      {
        goto LABEL_10;
      }
    }

    v91 = *v147;
    v92 = v134;
    (*v147)(v134, v164, v62);
    v93 = v62;
    v94 = v135;
    v91(v135, v143, v93);
    v95 = sub_258F0A350();
    v96 = sub_258F0A810();
    v97 = os_log_type_enabled(v95, v96);
    v132 = v91;
    if (v97)
    {
      v98 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v168 = v130;
      *v98 = v133;
      sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v131 = v96;
      v129 = sub_258F0AD60();
      v100 = v99;
      v89(v92, v93);
      v129 = sub_258DE3018(v129, v100, &v168);

      *(v98 + 4) = v129;
      *(v98 + 12) = 2080;
      v101 = sub_258F0AD60();
      v103 = v102;
      v89(v94, v93);
      v104 = sub_258DE3018(v101, v103, &v168);

      *(v98 + 14) = v104;
      _os_log_impl(&dword_258DD8000, v95, v131, "#SpeakerIdSamplingCalculator: date picked: %s is within collection cycle of collectingDate: %s", v98, 0x16u);
      v105 = v130;
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v105, -1, -1);
      MEMORY[0x259C9EF40](v98, -1, -1);
    }

    else
    {

      v89(v94, v93);
      v89(v92, v93);
    }

    v106 = v136;
    v107 = v165;
    v132(v136, v164, v93);
    v168 = v107;

    sub_258EEF3A4();
    v108 = v168;
    v109 = *(v107 + 16);

    v110 = v137;
    if ((v137 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    if (v109 < v137)
    {
      v110 = v109;
    }

    v111 = *(v108 + 16);
    if (v111 >= v110)
    {
      v112 = v110;
    }

    else
    {
      v112 = *(v108 + 16);
    }

    if (v110)
    {
      v113 = v112;
    }

    else
    {
      v113 = 0;
    }

    if (v111 != v113)
    {
      sub_258EEF20C(v108, v108 + 32, 0, (2 * v113) | 1);
      v119 = v118;

      v108 = v119;
    }

    v18 = v146;
    v114 = v139;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v168 = v114;
    sub_258ED7CC4(v108, v106, isUniquelyReferenced_nonNull_native);
    v116 = v106;
    v117 = v140;
    v89(v116, v140);
    v139 = v168;
    result = (v89)(v164, v117);
    v60 = v150;
    v55 = v166;
  }

LABEL_10:
  if (v60 <= v61 + 1)
  {
    v64 = v61 + 1;
  }

  else
  {
    v64 = v60;
  }

  while (1)
  {
    v63 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v63 >= v60)
    {
      v166 = v64 - 1;
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
      v74 = v162;
      (*(*(v90 - 8) + 56))(v162, 1, 1, v90);
      v59 = 0;
      goto LABEL_17;
    }

    v59 = *(v141 + 8 * v63);
    ++v61;
    if (v59)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

unint64_t sub_258EEC45C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v142 = a1;
  v6 = sub_258F09A20();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v132 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v133 = &v131 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v148 = &v131 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v159 = &v131 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v137 = &v131 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8C8, &qword_258F16AA8);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v144 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v143 = &v131 - v27;
  v134 = sub_258DFC258(MEMORY[0x277D84F90]);
  v28 = *(a3 + 64);
  v135 = a3 + 64;
  v29 = 1 << *(a3 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v150 = v3;
  v141 = v3 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_samplingUtils;
  v149 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v145 = (v29 + 63) >> 6;
  v157 = (v7 + 16);
  v152 = (v7 + 32);
  v138 = v7;
  v158 = (v7 + 8);
  v139 = a3;

  v32 = 0;
  v33 = 0;
  *&v34 = 136315394;
  v131 = v34;
  *&v34 = 136315650;
  v136 = v34;
  v151 = v6;
  v140 = a2;
LABEL_4:
  while (1)
  {
    v35 = v32;
    v36 = v145;
    if (!v31)
    {
      break;
    }

    while (1)
    {
      v37 = a2;
      v38 = v35;
LABEL_13:
      v155 = (v31 - 1) & v31;
      v40 = __clz(__rbit64(v31)) | (v38 << 6);
      v41 = v139;
      v42 = v138;
      v43 = v137;
      (*(v138 + 16))(v137, *(v139 + 48) + *(v138 + 72) * v40, v6);
      v44 = *(*(v41 + 56) + 8 * v40);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
      v46 = v6;
      v47 = *(v45 + 48);
      v48 = *(v42 + 32);
      v49 = v144;
      v48(v144, v43, v46);
      *(v49 + v47) = v44;
      (*(*(v45 - 8) + 56))(v49, 0, 1, v45);

      v154 = v38;
LABEL_14:
      v50 = v143;
      sub_258E2EAD8(v49, v143, &qword_27F98A8C8, &qword_258F16AA8);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
      if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
      {

        return v134;
      }

      v52 = *(v50 + *(v51 + 48));
      v53 = v159;
      v6 = v151;
      (*v152)(v159, v50, v151);
      a2 = v37;
      v54 = (*(*(v141 + 8) + 144))(v142, v37, v53);
      if (!v54)
      {
        break;
      }

      v55 = v54;
      v56 = *(v52 + 16);
      v153 = v52;
      if (v56)
      {
        v57 = (v52 + 32);
        v160 = MEMORY[0x277D84F90];
        do
        {
          v58 = *v57;
          v161 = 0x5F74736575716572;
          v162 = 0xEA00000000006469;

          sub_258F0AA80();
          if (*(v58 + 16) && (v59 = sub_258E2EA2C(v163), (v60 & 1) != 0))
          {
            sub_258DE4090(*(v58 + 56) + 32 * v59, v164);
            sub_258E0F590(v163);
            v61 = swift_dynamicCast();
            if (v61)
            {
              v63 = v161;
              v64 = v162;
              v163[0] = v161;
              v163[1] = v162;
              MEMORY[0x28223BE20](v61, v62);
              *(&v131 - 2) = v163;
              if (sub_258EEF2F8(sub_258EF0710, (&v131 - 2), v55))
              {

                v65 = v160;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v65 = sub_258DE2C0C(0, v65[2] + 1, 1, v65);
                }

                v67 = v65[2];
                v66 = v65[3];
                v160 = v65;
                if (v67 >= v66 >> 1)
                {
                  v160 = sub_258DE2C0C((v66 > 1), v67 + 1, 1, v160);
                }

                v68 = v160;
                v160[2] = v67 + 1;
                v68[v67 + 4] = v58;
              }

              else
              {

                v69 = v148;
                (*v157)(v148, v159, v6);

                v70 = v6;
                v71 = sub_258F0A350();
                v72 = sub_258F0A840();

                LODWORD(v156) = v72;
                if (os_log_type_enabled(v71, v72))
                {
                  v73 = swift_slowAlloc();
                  v147 = v33;
                  v74 = v73;
                  v146 = swift_slowAlloc();
                  v163[0] = v146;
                  *v74 = v136;
                  v75 = sub_258DE3018(v63, v64, v163);

                  *(v74 + 4) = v75;
                  *(v74 + 12) = 2080;
                  v76 = MEMORY[0x259C9DF80](v55, MEMORY[0x277D837D0]);
                  v78 = sub_258DE3018(v76, v77, v163);

                  *(v74 + 14) = v78;
                  *(v74 + 22) = 2080;
                  sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
                  v79 = v151;
                  v80 = sub_258F0AD60();
                  v82 = v81;
                  (*v158)(v69, v79);
                  v83 = sub_258DE3018(v80, v82, v163);

                  *(v74 + 24) = v83;
                  _os_log_impl(&dword_258DD8000, v71, v156, "#SpeakerIdSamplingCalculator: Canot get requestId: %s in activeRequests: %s for date: %s", v74, 0x20u);
                  v84 = v146;
                  swift_arrayDestroy();
                  MEMORY[0x259C9EF40](v84, -1, -1);
                  v33 = v147;
                  MEMORY[0x259C9EF40](v74, -1, -1);

                  v6 = v79;
                }

                else
                {

                  (*v158)(v69, v70);
                  v6 = v70;
                }
              }
            }

            else
            {
            }
          }

          else
          {

            sub_258E0F590(v163);
          }

          ++v57;
          --v56;
        }

        while (v56);
      }

      else
      {
        v160 = MEMORY[0x277D84F90];
      }

      if (v160[2])
      {
        v98 = *v157;
        v99 = v133;
        (*v157)(v133, v159, v6);
        v100 = v134;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v163[0] = v100;
        v102 = sub_258E2EED8(v99);
        v104 = *(v100 + 16);
        v105 = (v103 & 1) == 0;
        v106 = __OFADD__(v104, v105);
        v107 = v104 + v105;
        a2 = v140;
        if (v106)
        {
          goto LABEL_66;
        }

        v108 = v103;
        if (*(v100 + 24) >= v107)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v129 = v102;
            sub_258ED8E34();
            v102 = v129;
          }
        }

        else
        {
          sub_258ED6738(v107, isUniquelyReferenced_nonNull_native);
          v102 = sub_258E2EED8(v133);
          if ((v108 & 1) != (v109 & 1))
          {
            goto LABEL_69;
          }
        }

        v6 = v151;
        v134 = v163[0];
        if (v108)
        {
          *(*(v163[0] + 56) + 8 * v102) = v160;
        }

        else
        {
          *(v163[0] + 8 * (v102 >> 6) + 64) |= 1 << v102;
          v123 = v102;
          v98((*(v134 + 48) + *(v138 + 72) * v102), v133, v6);
          v124 = v134;
          *(*(v134 + 56) + 8 * v123) = v160;
          v125 = *(v124 + 16);
          v106 = __OFADD__(v125, 1);
          v126 = v125 + 1;
          if (v106)
          {
            goto LABEL_68;
          }

          *(v124 + 16) = v126;
        }

        v127 = *v158;
        (*v158)(v133, v6);
        v127(v159, v6);
        v32 = v154;
        v31 = v155;
        goto LABEL_4;
      }

      (*v158)(v159, v6);

      v35 = v154;
      v31 = v155;
      a2 = v140;
      v36 = v145;
      if (!v155)
      {
        goto LABEL_6;
      }
    }

    v86 = *v157;
    v87 = v132;
    (*v157)(v132, v159, v6);

    v88 = sub_258F0A350();
    v89 = sub_258F0A810();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = v87;
      v91 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v163[0] = v156;
      *v91 = v131;
      *(v91 + 4) = sub_258DE3018(v142, a2, v163);
      *(v91 + 12) = 2080;
      sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v92 = sub_258F0AD60();
      v147 = v86;
      v93 = a2;
      v95 = v94;
      v160 = *v158;
      (v160)(v90, v6);
      v96 = sub_258DE3018(v92, v95, v163);
      a2 = v93;
      v86 = v147;

      *(v91 + 14) = v96;
      _os_log_impl(&dword_258DD8000, v88, v89, "#SpeakerIdSamplingCalculator: Cannot get active requests for locale: %s and date: %s, using the row from sql", v91, 0x16u);
      v97 = v156;
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v97, -1, -1);
      MEMORY[0x259C9EF40](v91, -1, -1);
    }

    else
    {

      v160 = *v158;
      (v160)(v87, v6);
    }

    v31 = v155;
    v110 = v134;
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v163[0] = v110;
    v112 = sub_258E2EED8(v159);
    v114 = *(v110 + 16);
    v115 = (v113 & 1) == 0;
    v106 = __OFADD__(v114, v115);
    v116 = v114 + v115;
    if (v106)
    {
      goto LABEL_65;
    }

    v117 = v113;
    if (*(v110 + 24) >= v116)
    {
      if ((v111 & 1) == 0)
      {
        v128 = v112;
        sub_258ED8E34();
        v112 = v128;
      }
    }

    else
    {
      sub_258ED6738(v116, v111);
      v112 = sub_258E2EED8(v159);
      if ((v117 & 1) != (v118 & 1))
      {
        goto LABEL_69;
      }
    }

    v6 = v151;
    v134 = v163[0];
    if (v117)
    {
      *(*(v163[0] + 56) + 8 * v112) = v52;
    }

    else
    {
      *(v163[0] + 8 * (v112 >> 6) + 64) |= 1 << v112;
      v119 = v112;
      v86((*(v134 + 48) + *(v138 + 72) * v112), v159, v6);
      v120 = v134;
      *(*(v134 + 56) + 8 * v119) = v52;
      v121 = *(v120 + 16);
      v106 = __OFADD__(v121, 1);
      v122 = v121 + 1;
      if (v106)
      {
        goto LABEL_67;
      }

      *(v120 + 16) = v122;
    }

    (v160)(v159, v6);
    v32 = v154;
  }

LABEL_6:
  if (v36 <= v35 + 1)
  {
    v39 = v35 + 1;
  }

  else
  {
    v39 = v36;
  }

  while (1)
  {
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v38 >= v36)
    {
      v37 = a2;
      v154 = v39 - 1;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A8D0, &qword_258F16AB0);
      v49 = v144;
      (*(*(v85 - 8) + 56))(v144, 1, 1, v85);
      v155 = 0;
      goto LABEL_14;
    }

    v31 = *(v135 + 8 * v38);
    ++v35;
    if (v31)
    {
      v37 = a2;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  result = sub_258F0ADC0();
  __break(1u);
  return result;
}

unint64_t sub_258EED418(uint64_t a1)
{
  v2 = v1;
  v236 = sub_258F09A20();
  v4 = *(v236 - 8);
  v6 = MEMORY[0x28223BE20](v236, v5);
  v8 = &v216 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v224 = &v216 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v222 = &v216 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v225 = &v216 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v221 = &v216 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v216 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v216 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v229 = &v216 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = &v216 - v34;
  v37 = MEMORY[0x28223BE20](v33, v36);
  v241 = &v216 - v38;
  MEMORY[0x28223BE20](v37, v39);
  v234 = &v216 - v40;
  v250 = sub_258DFC258(MEMORY[0x277D84F90]);
  v242 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v41 = sub_258F0A350();
  v42 = sub_258F0A810();
  v43 = os_log_type_enabled(v41, v42);
  v237 = v35;
  if (v43)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_258DD8000, v41, v42, "#SpeakerIdSamplingCalculator: groupRowsByDate", v44, 2u);
    v45 = v44;
    v35 = v237;
    MEMORY[0x259C9EF40](v45, -1, -1);
  }

  if (sub_258F0A070())
  {
    v227 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_defaults;
    v243 = 0x8000000258F1EC00;
    v239 = (v4 + 16);
    v240 = (v4 + 8);
    v219 = "dSamplingBiomeReporter";
    *&v46 = 136315138;
    v223 = v46;
    *&v46 = 136315394;
    v228 = v46;
    v220 = xmmword_258F0B820;
    v231 = v2;
    v218 = v8;
    v232 = v24;
    v233 = v28;
    v226 = a1;
    do
    {
      v47 = sub_258F0A060();
      if (v47)
      {
        v48 = v47;
        v245[0] = 0xD000000000000017;
        v245[1] = v243;
        sub_258F0AA80();
        if (*(v48 + 16) && (v49 = sub_258E2EA2C(&v246), (v50 & 1) != 0))
        {
          sub_258DE4090(*(v48 + 56) + 32 * v49, &v248);
          sub_258E0F590(&v246);
          sub_258E76E10();
          if (swift_dynamicCast())
          {
            v51 = v245[0];

            v52 = sub_258F0A350();
            v53 = sub_258F0A810();

            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v246 = v55;
              *v54 = v223;
              v56 = sub_258F0A420();
              v58 = sub_258DE3018(v56, v57, &v246);
              v28 = v233;

              *(v54 + 4) = v58;
              v24 = v232;
              _os_log_impl(&dword_258DD8000, v52, v53, "#SpeakerIdSamplingCalculator: groupRowsByDate current row %s", v54, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v55);
              v59 = v55;
              v2 = v231;
              MEMORY[0x259C9EF40](v59, -1, -1);
              v60 = v54;
              v35 = v237;
              MEMORY[0x259C9EF40](v60, -1, -1);
            }

            v230 = v51;
            [v51 unsignedLongLongValue];
            v61 = v234;
            sub_258F099D0();
            type metadata accessor for SamplingUtils();
            static SamplingUtils.convertGMTDateToLocalStartOfDay(date:)(v61, v241);
            v62 = v229;
            sub_258F09B50();
            static SamplingUtils.convertGMTDateToLocalStartOfDay(date:)(v62, v35);
            v63 = *v240;
            v64 = v62;
            v65 = v236;
            (*v240)(v64, v236);
            v235 = *v239;
            (v235)(v28, v61, v65);

            v66 = sub_258F0A350();
            v67 = sub_258F0A810();

            v68 = os_log_type_enabled(v66, v67);
            v238 = v63;
            if (v68)
            {
              v69 = swift_slowAlloc();
              v70 = v28;
              v71 = v65;
              v72 = swift_slowAlloc();
              v244 = v72;
              *v69 = v228;
              sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
              v73 = sub_258F0AD60();
              v74 = v71;
              v75 = v73;
              v77 = v76;
              v63(v70, v74);
              v78 = sub_258DE3018(v75, v77, &v244);

              *(v69 + 4) = v78;
              *(v69 + 12) = 2080;
              v248 = 0x5F74736575716572;
              v249 = 0xEA00000000006469;
              sub_258F0AA80();
              if (*(v48 + 16) && (v79 = sub_258E2EA2C(&v246), (v80 & 1) != 0))
              {
                sub_258DE4090(*(v48 + 56) + 32 * v79, &v248);
                sub_258E0F590(&v246);
                v81 = swift_dynamicCast();
                v82 = v245[0];
                v83 = v245[1];
                if (!v81)
                {
                  v82 = 0;
                  v83 = 0;
                }
              }

              else
              {
                sub_258E0F590(&v246);
                v82 = 0;
                v83 = 0;
              }

              v246 = v82;
              v247 = v83;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
              v84 = sub_258F0A550();
              v86 = sub_258DE3018(v84, v85, &v244);

              *(v69 + 14) = v86;
              _os_log_impl(&dword_258DD8000, v66, v67, "event date: %s with requestId: %s", v69, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x259C9EF40](v72, -1, -1);
              MEMORY[0x259C9EF40](v69, -1, -1);

              v2 = v231;
              v24 = v232;
              v65 = v236;
            }

            else
            {

              v63(v28, v65);
            }

            (v235)(v24, v241, v65);

            v87 = sub_258F0A350();
            v88 = sub_258F0A810();

            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              v244 = v90;
              *v89 = v228;
              sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
              v91 = sub_258F0AD60();
              v92 = v24;
              v94 = v93;
              v238(v92, v65);
              v95 = sub_258DE3018(v91, v94, &v244);

              *(v89 + 4) = v95;
              *(v89 + 12) = 2080;
              v248 = 0x5F74736575716572;
              v249 = 0xEA00000000006469;
              sub_258F0AA80();
              if (*(v48 + 16) && (v96 = sub_258E2EA2C(&v246), (v97 & 1) != 0))
              {
                sub_258DE4090(*(v48 + 56) + 32 * v96, &v248);
                sub_258E0F590(&v246);
                v98 = swift_dynamicCast();
                v99 = v245[0];
                v100 = v245[1];
                if (!v98)
                {
                  v99 = 0;
                  v100 = 0;
                }
              }

              else
              {
                sub_258E0F590(&v246);
                v99 = 0;
                v100 = 0;
              }

              v246 = v99;
              v247 = v100;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
              v101 = sub_258F0A550();
              v103 = sub_258DE3018(v101, v102, &v244);

              *(v89 + 14) = v103;
              _os_log_impl(&dword_258DD8000, v87, v88, "event startOfDate: %s with requestId: %s", v89, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x259C9EF40](v90, -1, -1);
              MEMORY[0x259C9EF40](v89, -1, -1);

              v2 = v231;
            }

            else
            {

              v238(v24, v65);
            }

            v35 = v237;
            v104 = *(v2 + v227);
            v105 = _s16MetricsFramework13SamplingUtilsC19getBypassSatTrigger8defaultsSbSo14NSUserDefaultsC_tFZ_0(v104);
            v28 = v233;
            if ((v105 & 1) == 0)
            {
              strcpy(v245, "sat_triggered");
              HIWORD(v245[1]) = -4864;
              sub_258F0AA80();
              if (!*(v48 + 16) || (v123 = sub_258E2EA2C(&v246), (v124 & 1) == 0))
              {
                sub_258E0F590(&v246);
LABEL_51:
                v136 = v225;
                v137 = v241;
                (v235)(v225, v241, v65);

                v138 = sub_258F0A350();
                v139 = sub_258F0A810();

                if (os_log_type_enabled(v138, v139))
                {
                  v140 = swift_slowAlloc();
                  v141 = swift_slowAlloc();
                  v244 = v141;
                  *v140 = v228;
                  v248 = 0x5F74736575716572;
                  v249 = 0xEA00000000006469;
                  sub_258F0AA80();
                  v142 = *(v48 + 16);
                  LODWORD(v235) = v139;
                  if (v142 && (v143 = sub_258E2EA2C(&v246), (v144 & 1) != 0))
                  {
                    sub_258DE4090(*(v48 + 56) + 32 * v143, &v248);
                    sub_258E0F590(&v246);

                    v145 = swift_dynamicCast();
                    v146 = v245[0];
                    v147 = v245[1];
                    if (!v145)
                    {
                      v146 = 0;
                      v147 = 0;
                    }
                  }

                  else
                  {

                    sub_258E0F590(&v246);
                    v146 = 0;
                    v147 = 0;
                  }

                  v157 = v238;
                  v246 = v146;
                  v247 = v147;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
                  v158 = sub_258F0A550();
                  v160 = sub_258DE3018(v158, v159, &v244);

                  *(v140 + 4) = v160;
                  *(v140 + 12) = 2080;
                  sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
                  v161 = v225;
                  v162 = v236;
                  v163 = sub_258F0AD60();
                  v165 = v164;
                  v157(v161, v162);
                  v166 = sub_258DE3018(v163, v165, &v244);

                  *(v140 + 14) = v166;
                  _os_log_impl(&dword_258DD8000, v138, v235, "#SpeakerIdSamplingCalculator: skipping grouping for %s for %s because sat_triggered can't be found", v140, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x259C9EF40](v141, -1, -1);
                  MEMORY[0x259C9EF40](v140, -1, -1);

                  v35 = v237;
                  v157(v237, v162);
                  v157(v241, v162);
                  v157(v234, v162);
LABEL_62:
                  v2 = v231;
                }

                else
                {

                  v154 = v65;
                  v155 = v65;
                  v156 = v238;
                  v238(v136, v154);
                  v156(v35, v155);
                  v156(v137, v155);
                  v156(v234, v155);
                }

                v24 = v232;
                v28 = v233;
                continue;
              }

              sub_258DE4090(*(v48 + 56) + 32 * v123, &v248);
              sub_258E0F590(&v246);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_51;
              }

              if ((v245[0] & 1) == 0)
              {
                v125 = v221;
                v126 = v241;
                (v235)(v221, v241, v65);

                v127 = sub_258F0A350();
                v128 = sub_258F0A810();

                if (os_log_type_enabled(v127, v128))
                {
                  v235 = v127;
                  v129 = swift_slowAlloc();
                  v130 = swift_slowAlloc();
                  v244 = v130;
                  *v129 = v228;
                  v248 = 0x5F74736575716572;
                  v249 = 0xEA00000000006469;
                  sub_258F0AA80();
                  if (*(v48 + 16) && (v131 = sub_258E2EA2C(&v246), (v132 & 1) != 0))
                  {
                    sub_258DE4090(*(v48 + 56) + 32 * v131, &v248);
                    sub_258E0F590(&v246);

                    v133 = swift_dynamicCast();
                    v134 = v245[0];
                    v135 = v245[1];
                    if (!v133)
                    {
                      v134 = 0;
                      v135 = 0;
                    }
                  }

                  else
                  {

                    sub_258E0F590(&v246);
                    v134 = 0;
                    v135 = 0;
                  }

                  v246 = v134;
                  v247 = v135;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
                  v196 = sub_258F0A550();
                  v198 = sub_258DE3018(v196, v197, &v244);

                  *(v129 + 4) = v198;
                  *(v129 + 12) = 2080;
                  sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
                  v199 = v221;
                  v200 = v236;
                  v201 = sub_258F0AD60();
                  v203 = v202;
                  v204 = v238;
                  v238(v199, v200);
                  v205 = sub_258DE3018(v201, v203, &v244);

                  *(v129 + 14) = v205;
                  v206 = v235;
                  _os_log_impl(&dword_258DD8000, v235, v128, "#SpeakerIdSamplingCalculator: skipping grouping for %s for %s because request is not sat triggered", v129, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x259C9EF40](v130, -1, -1);
                  MEMORY[0x259C9EF40](v129, -1, -1);

                  v204(v35, v200);
                  v204(v241, v200);
                  v204(v234, v200);
                  goto LABEL_62;
                }

                v192 = v125;
                v193 = v65;
                v194 = v65;
                v195 = v238;
                v238(v192, v193);
                v195(v35, v194);
                v195(v126, v194);
                v195(v234, v194);
                v2 = v231;
                goto LABEL_58;
              }
            }

            if ((sub_258F099F0() & 1) != 0 && (v106 = sub_258F0A4E0(), v107 = [v104 BOOLForKey_], v106, (v107 & 1) == 0))
            {

              v167 = v222;
              v168 = v235;
              (v235)(v222, v35, v65);
              v169 = v224;
              v170 = v241;
              (v168)(v224, v241, v65);
              v171 = sub_258F0A350();
              v172 = sub_258F0A810();
              if (os_log_type_enabled(v171, v172))
              {
                v173 = v167;
                v174 = swift_slowAlloc();
                v235 = swift_slowAlloc();
                v246 = v235;
                *v174 = v228;
                sub_258EF0768(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
                v217 = v171;
                v175 = sub_258F0AD60();
                v177 = v176;
                v178 = v238;
                v238(v173, v65);
                v179 = sub_258DE3018(v175, v177, &v246);
                v28 = v233;

                *(v174 + 4) = v179;
                *(v174 + 12) = 2080;
                v180 = v224;
                v181 = sub_258F0AD60();
                v183 = v182;
                v178(v180, v65);
                v184 = sub_258DE3018(v181, v183, &v246);

                *(v174 + 14) = v184;
                v185 = v217;
                _os_log_impl(&dword_258DD8000, v217, v172, "#SpeakerIdSamplingCalculator: skipping grouping data for today: %s for event date: %s", v174, 0x16u);
                v186 = v235;
                swift_arrayDestroy();
                v2 = v231;
                MEMORY[0x259C9EF40](v186, -1, -1);
                MEMORY[0x259C9EF40](v174, -1, -1);

                v187 = v237;
                v178(v237, v65);
                v178(v241, v65);
                v178(v234, v65);
                v24 = v232;
                v35 = v187;
                continue;
              }

              v188 = v169;
              v189 = v65;
              v151 = v65;
              v152 = v238;
              v238(v188, v189);
              v152(v167, v151);
              v152(v35, v151);
              v153 = v170;
            }

            else
            {
              v108 = v250;
              v109 = v241;
              if (*(v250 + 16))
              {
                sub_258E2EED8(v241);
                if (v110)
                {
                  v111 = v218;
                  (v235)(v218, v109, v65);
                  v112 = v65;
                  v113 = v111;
                  v115 = sub_258ED048C(&v246);
                  v116 = *v114;
                  if (*v114)
                  {
                    v117 = v114;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *v117 = v116;
                    v24 = v232;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v116 = sub_258DE2C0C(0, v116[2] + 1, 1, v116);
                      *v117 = v116;
                    }

                    v120 = v116[2];
                    v119 = v116[3];
                    if (v120 >= v119 >> 1)
                    {
                      v116 = sub_258DE2C0C((v119 > 1), v120 + 1, 1, v116);
                      *v117 = v116;
                    }

                    v116[2] = v120 + 1;
                    v116[v120 + 4] = v48;
                    (v115)(&v246, 0);

                    v121 = v236;
                    v122 = v238;
                    v238(v218, v236);
                    v35 = v237;
                    v122(v237, v121);
                    v122(v241, v121);
                    v122(v234, v121);
                    v2 = v231;
                    continue;
                  }

                  (v115)(&v246, 0);

                  v190 = v113;
                  v191 = v238;
                  v238(v190, v112);
                  v35 = v237;
                  v191(v237, v112);
                  v191(v109, v112);
                  v191(v234, v112);
                  goto LABEL_58;
                }
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988890, &unk_258F0C040);
              v148 = swift_allocObject();
              *(v148 + 16) = v220;
              *(v148 + 32) = v48;
              v149 = swift_isUniquelyReferenced_nonNull_native();
              v246 = v108;
              sub_258ED7CC4(v148, v109, v149);

              v250 = v246;
              v150 = v65;
              v151 = v65;
              v152 = v238;
              v238(v35, v150);
              v153 = v109;
            }

            v152(v153, v151);
            v152(v234, v151);
LABEL_58:
            v24 = v232;
            continue;
          }
        }

        else
        {

          sub_258E0F590(&v246);
        }
      }
    }

    while ((sub_258F0A070() & 1) != 0);
  }

  v207 = sub_258F0A350();
  v208 = sub_258F0A810();
  if (os_log_type_enabled(v207, v208))
  {
    v209 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v246 = v210;
    *v209 = 136315138;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A908, &unk_258F16C98);
    sub_258EF0768(&qword_27F989518, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    v211 = sub_258F0A420();
    v213 = v212;

    v214 = sub_258DE3018(v211, v213, &v246);

    *(v209 + 4) = v214;
    _os_log_impl(&dword_258DD8000, v207, v208, "#SpeakerIdSamplingCalculator: groupRowsByDate results %s", v209, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v210);
    MEMORY[0x259C9EF40](v210, -1, -1);
    MEMORY[0x259C9EF40](v209, -1, -1);
  }

  swift_beginAccess();
  return v250;
}