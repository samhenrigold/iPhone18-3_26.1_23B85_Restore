uint64_t sub_1BBD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_CA10(&qword_37EB0, &unk_258B0);
  v34 = v4;
  result = sub_2181C();
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

        swift_unknownObjectRetain();
      }

      sub_2188C();
      sub_2168C();
      result = sub_218AC();
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

uint64_t sub_1BE80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_CA10(&qword_37EA8, &qword_25C20);
  v35 = v4;
  result = sub_2181C();
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2188C();
      sub_2168C();
      result = sub_218AC();
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
  return result;
}

void *sub_1C124()
{
  v1 = v0;
  sub_CA10(&qword_37EB0, &unk_258B0);
  v2 = *v0;
  v3 = sub_2180C();
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

        result = swift_unknownObjectRetain();
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

id sub_1C294()
{
  v1 = v0;
  sub_CA10(&qword_37EA8, &qword_25C20);
  v2 = *v0;
  v3 = sub_2180C();
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

id sub_1C5E8(id result)
{
  if (result)
  {
    v2 = result;
    v3 = objc_allocWithZone(CLKDeviceMetrics);
    v4 = v2;
    v5 = [v3 initWithDevice:v4 identitySizeClass:7];
    [v5 scaledValue:25.0];
    v7 = v6;
    [v5 scaledValue:34.0];
    v9 = v8;
    [v5 scaledValue:42.0];
    v11 = v10;
    [v5 scaledValue:0.0];
    v13 = v12;

    v14 = &v1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle32NTKExactitudesMiniClockHandsView_metrics];
    *v14 = v7;
    *(v14 + 1) = v9;
    *(v14 + 2) = v11;
    *(v14 + 3) = v13;
    v16.receiver = v1;
    v16.super_class = type metadata accessor for NTKExactitudesMiniClockHandsView();
    v15 = objc_msgSendSuper2(&v16, "initForDevice:", v4);

    if (v15)
    {
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C95C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  v7 = sub_1CA24(a4);

  return v7;
}

id sub_1CA24(SEL *a1)
{
  result = [v1 *a1];
  if (result)
  {
    v3 = result;
    result = [v1 device];
    if (result)
    {
      v4 = result;
      v5 = objc_allocWithZone(type metadata accessor for NTKExactitudesMiniClockHandView());
      v6 = v3;
      v7 = [v5 initWithConfiguration:v6 forDevice:v4 maskedShadow:0];

      v8 = objc_opt_self();
      v9 = v7;
      v10 = [v8 whiteColor];
      [v9 setColor:v10];

      [v9 anchorPointFromConfiguration];
      v12 = v11;
      v14 = v13;
      v15 = [v9 layer];
      [v15 setAnchorPoint:{v12, v14}];

      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1CB88()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for NTKExactitudesMiniClockHandsView();
  result = objc_msgSendSuper2(&v9, "hourHandConfiguration");
  if (result)
  {
    v2 = *&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle32NTKExactitudesMiniClockHandsView_metrics];
    v3 = result;
    [result pegRadius];
    v5 = v2 - v4;
    [v3 pegStrokeWidth];
    v7 = v5 - v6;
    [v3 armLength];
    [v3 setHandLength:v7 - v8];
    [v3 setOutlineOnly:1];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CC68()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for NTKExactitudesMiniClockHandsView();
  result = objc_msgSendSuper2(&v9, "minuteHandConfiguration");
  if (result)
  {
    v2 = *&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle32NTKExactitudesMiniClockHandsView_metrics + 8];
    v3 = result;
    [result pegRadius];
    v5 = v2 - v4;
    [v3 pegStrokeWidth];
    v7 = v5 - v6;
    [v3 armLength];
    [v3 setHandLength:v7 - v8];
    [v3 setOutlineOnly:1];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CD4C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  v7 = a4();

  return v7;
}

void sub_1CF44(uint64_t a1, uint64_t a2, void *a3, SEL *a4, double a5)
{
  v10 = [v5 *a4];
  if (v10)
  {
    v16 = v10;
    type metadata accessor for NTKExactitudesMiniClockHandView();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      [v11 setColor:a1];
      v13 = v16;
      [v12 setInlayColor:a2];
      *&v12[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayAlpha] = a5;
      v14 = *&v12[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayColor];
      *&v12[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayColor] = a3;
      v15 = a3;

      [v12 _layoutInlayLayer];
    }
  }
}

void sub_1D0B4(void *a1, double a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, void (*a8)(id, id, id, double))
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a1;
  a8(v14, v15, v16, a2);
}

id sub_1D1E0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NTKExactitudesMiniClockHandsView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1D248(void *a1, double a2)
{
  v5 = objc_allocWithZone(CLKDeviceMetrics);
  v6 = a1;
  v7 = [v5 initWithDevice:v6 identitySizeClass:7];
  [v7 scaledValue:25.0];
  v9 = v8;
  [v7 scaledValue:34.0];
  v11 = v10;
  [v7 scaledValue:42.0];
  v13 = v12;
  [v7 scaledValue:0.0];
  v15 = v14;

  v16 = &v2[OBJC_IVAR____TtC24NTKExactitudesFaceBundle32NTKExactitudesMiniClockHandsView_metrics];
  *v16 = v9;
  *(v16 + 1) = v11;
  *(v16 + 2) = v13;
  *(v16 + 3) = v15;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for NTKExactitudesMiniClockHandsView();
  return objc_msgSendSuper2(&v18, "initWithDiameter:forDevice:", v6, a2);
}

unint64_t ExactitudesDialView.DialState.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_1D36C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_1D394()
{
  result = qword_37EE8;
  if (!qword_37EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37EE8);
  }

  return result;
}

unint64_t sub_1D3EC()
{
  result = qword_37EF0;
  if (!qword_37EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37EF0);
  }

  return result;
}

unint64_t sub_1D444()
{
  result = qword_37EF8;
  if (!qword_37EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37EF8);
  }

  return result;
}

uint64_t sub_1D4C8(uint64_t a1)
{
  v1 = *(a1 + 128);
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

uint64_t sub_1D4F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 304))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
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

uint64_t sub_1D550(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

__n128 sub_1D604(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D638(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
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

uint64_t sub_1D694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

double sub_1D918(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

void sub_1D9DC(char *a1, double a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *a5;
  v8 = a1;
  *&a1[v7] = a2;
}

char *sub_1DAF8(void *a1, void *a2, char a3)
{
  v7 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayColor;
  *&v3[v7] = [objc_opt_self() whiteColor];
  *&v3[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayAlpha] = 0x3FE0000000000000;
  *&v3[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayAlpha] = 0x3FF0000000000000;
  v8 = &v3[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayInsets];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = [objc_allocWithZone(CALayer) init];
  *&v3[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayLayer] = v9;
  v10 = [objc_allocWithZone(CALayer) init];
  *&v3[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayLayer] = v10;
  v26.receiver = v3;
  v26.super_class = type metadata accessor for NTKExactitudesHandView();
  result = objc_msgSendSuper2(&v26, "initWithConfiguration:forDevice:maskedShadow:", a1, a2, a3 & 1);
  if (result)
  {
    v12 = result;
    v13 = sub_1DDB8(a2);
    v14 = &v12[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayInsets];
    *v14 = v13;
    *(v14 + 1) = v15;
    *(v14 + 2) = v16;
    *(v14 + 3) = v17;
    v18 = [v12 layer];
    v19 = [v18 sublayers];

    if (v19 && ((sub_119D4(), v20 = sub_216BC(), v19, v20 >> 62) ? (v21 = sub_217FC()) : (v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8))), , v21 >= 1))
    {
      v22 = [v12 layer];
      [v22 insertSublayer:*&v12[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayLayer] atIndex:1];

      v23 = [v12 layer];
      v24 = *&v12[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayLayer];
      [v23 insertSublayer:v24 atIndex:1];
    }

    else
    {
      v25 = [v12 layer];
      [v25 addSublayer:*&v12[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayLayer]];

      v23 = [v12 layer];
      v24 = *&v12[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayLayer];
      [v23 addSublayer:v24];
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CGFloat sub_1DDB8(uint64_t a1)
{
  if ([v1 type])
  {
    return UIEdgeInsetsZero.top;
  }

  v4 = [objc_allocWithZone(CLKDeviceMetrics) initWithDevice:a1 identitySizeClass:7];
  [v4 scaledValue:7.0];
  v3 = v5 * 1.77;
  [v1 handWidth];
  [v1 pegStrokeWidth];
  [v1 pegRadius];
  [v1 pegStrokeWidth];
  [v1 armLength];

  return v3;
}

char *sub_1DFB4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayColor;
  *&v4[v9] = [objc_opt_self() whiteColor];
  *&v4[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayAlpha] = 0x3FE0000000000000;
  *&v4[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayAlpha] = 0x3FF0000000000000;
  v10 = &v4[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayInsets];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = [objc_allocWithZone(CALayer) init];
  *&v4[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayLayer] = v11;
  v12 = [objc_allocWithZone(CALayer) init];
  *&v4[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayLayer] = v12;
  v28.receiver = v4;
  v28.super_class = type metadata accessor for NTKExactitudesHandView();
  v13 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayLayer;
  v15 = *&v13[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayLayer];
  v16 = v13;
  v17 = v15;
  CALayer.disableLayerActions()();

  v18 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayLayer;
  v19 = *&v16[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayLayer];
  CALayer.disableLayerActions()();

  v20 = [v16 layer];
  v21 = [v20 sublayers];

  if (v21 && ((sub_119D4(), v22 = sub_216BC(), v21, v22 >> 62) ? (v23 = sub_217FC()) : (v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8))), , v23 >= 1))
  {
    v24 = [v16 layer];
    [v24 insertSublayer:*&v13[v14] atIndex:1];

    v25 = [v16 layer];
    [v25 insertSublayer:*&v16[v18] atIndex:1];
  }

  else
  {
    v26 = [v16 layer];
    [v26 addSublayer:*&v16[v18]];

    v25 = [v16 layer];
    [v25 addSublayer:*&v13[v14]];
  }

  return v16;
}

void sub_1E56C()
{
  v1 = [v0 configuration];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 type];

    if (!v3)
    {
      [v0 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [v0 inlayInsets];
      sub_1EB6C(v5, v7, v9, v11, v12, v13);
      v15 = v14;
      v16 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayLayer;
      [*&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayLayer] setBounds:{0.0, 0.0}];
      [*&v0[v16] setAlpha:*&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayAlpha]];
      v17 = *&v0[v16];
      CLKRectGetCenter();
      [v17 setPosition:?];

      [*&v0[v16] setCornerRadius:v15 * 0.5];
      v18 = [v0 inlayColor];
      if (!v18)
      {
        v18 = [objc_opt_self() whiteColor];
      }

      v19 = *&v0[v16];
      v20 = [v18 CGColor];
      [v19 setBackgroundColor:v20];

      [v0 bounds];
      sub_1EB6C(v21, v22, v23, v24, *&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayInsets], *&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayInsets + 8]);
      v26 = v25;
      v27 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayLayer;
      [*&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayLayer] setBounds:{0.0, 0.0}];
      v28 = *&v0[v27];
      CLKRectGetCenter();
      [v28 setPosition:?];

      [*&v0[v27] setCornerRadius:v26 * 0.5];
      [*&v0[v27] setAlpha:*&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayAlpha]];
      v29 = *&v0[v27];
      v30 = *&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayColor];
      v31 = v29;
      v32 = [v30 CGColor];
      [v31 setBackgroundColor:v32];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1EAB8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NTKExactitudesHandView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1EB88(uint64_t a1, double a2)
{
  v3 = v2;
  CLKInterpolateBetweenFloatsClipped();
  sub_CA10(&qword_38080, &qword_25C10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25170;
  *(inited + 32) = 1952999287;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = sub_215EC();
  v5 = sub_1EE74(inited);
  swift_setDeallocating();
  sub_1EF78(inited + 32);
  if ((*(v3 + 40) & 1) == 0)
  {
    isa = sub_215EC().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1ECFC(isa, 1684107879, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  }

  if ((*(v3 + 56) & 1) == 0)
  {
    v8 = sub_215EC().super.super.isa;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1ECFC(v8, 2054385775, 0xE400000000000000, v9);
  }

  return v5;
}

uint64_t sub_1ECFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B910(a2, a3);
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
      sub_1BE80(v16, a4 & 1);
      v11 = sub_1B910(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2187C();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_1C294();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
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

unint64_t sub_1EE74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_CA10(&qword_37EA8, &qword_25C20);
    v3 = sub_2182C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B910(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1EF78(uint64_t a1)
{
  v2 = sub_CA10(&qword_38088, &qword_25C18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1EFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_CA10(&qword_38090, &qword_25C28);
    v3 = sub_2182C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1F0E8(v4, &v11);
      v5 = v11;
      result = sub_1B988(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1F158(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1F0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_CA10(&qword_37AE8, &qword_25210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1F158(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1F168()
{
  v1 = [v0 configuration];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 type];

    if (!v3)
    {
      [v0 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [v0 inlayInsets];
      sub_1EB6C(v5, v7, v9, v11, v12, v13);
      v15 = v14;
      v16 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayLayer;
      [*&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayLayer] setBounds:{0.0, 0.0}];
      [*&v0[v16] setAlpha:*&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayAlpha]];
      v17 = *&v0[v16];
      CLKRectGetCenter();
      [v17 setPosition:?];

      [*&v0[v16] setCornerRadius:v15 * 0.5];
      v18 = [v0 inlayColor];
      if (!v18)
      {
        v18 = [objc_opt_self() whiteColor];
      }

      v19 = *&v0[v16];
      v20 = [v18 CGColor];
      [v19 setBackgroundColor:v20];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1F5FC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NTKExactitudesMiniClockHandView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id ExactitudesTickLayer.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_length] = 0;
  *&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_thickness] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

void *ExactitudesTickLayer.init(layer:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_length] = 0;
  *&v1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_thickness] = 0;
  sub_1AE9C(a1, a1[3]);
  v4 = sub_2184C();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithLayer:", v4);
  swift_unknownObjectRelease();
  sub_18E28(a1);
  return v5;
}

id ExactitudesTickLayer.bounds.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "bounds");
}

id ExactitudesTickLayer.bounds.setter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  ObjectType = swift_getObjectType();
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  Height = CGRectGetHeight(v19);
  v11 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_length;
  *&v4[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_length] = Height;
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  Width = CGRectGetWidth(v20);
  v13 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_thickness;
  *&v4[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_thickness] = Width;
  v14 = Width * 0.5 + Width * 0.5 + *&v4[v11];
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  MinX = CGRectGetMinX(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  v16 = CGRectGetMinY(v22) - *&v4[v13] * 0.5;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "setBounds:", MinX, v16, Width, v14);
}

void (*ExactitudesTickLayer.bounds.modify(objc_super **a1))(CGFloat **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[5].receiver = v1;
  ObjectType = swift_getObjectType();
  v4[5].super_class = ObjectType;
  v4[2].receiver = v1;
  v4[2].super_class = ObjectType;
  objc_msgSendSuper2(v4 + 2, "bounds");
  v4->receiver = v6;
  v4->super_class = v7;
  v4[1].receiver = v8;
  v4[1].super_class = v9;
  return sub_1FB70;
}

void sub_1FB70(CGFloat **a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 10);
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v20.origin.x = v5;
  v20.origin.y = v6;
  v20.size.width = v7;
  v20.size.height = v8;
  Height = CGRectGetHeight(v20);
  v10 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_length;
  *(v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_length) = Height;
  v21.origin.x = v5;
  v21.origin.y = v6;
  v21.size.width = v7;
  v21.size.height = v8;
  Width = CGRectGetWidth(v21);
  v12 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_thickness;
  *(v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_thickness) = Width;
  v13 = Width * 0.5 + Width * 0.5 + *(v4 + v10);
  v22.origin.x = v5;
  v22.origin.y = v6;
  v22.size.width = v7;
  v22.size.height = v8;
  MinX = CGRectGetMinX(v22);
  v23.origin.x = v5;
  v23.origin.y = v6;
  v23.size.width = v7;
  v23.size.height = v8;
  v15 = CGRectGetMinY(v23) - *(v4 + v12) * 0.5;
  v16 = v3[11];
  v17 = 8;
  if (a2)
  {
    v17 = 6;
  }

  v18 = 9;
  if (a2)
  {
    v18 = 7;
  }

  v3[v17] = v3[10];
  v3[v18] = v16;
  [(CGFloat *)&v3[v17] setBounds:MinX, v15, Width, v13];

  free(v3);
}

uint64_t sub_1FD48()
{
  v0 = sub_2161C();
  sub_1FE48(v0, qword_38CE8);
  sub_CD94(v0, qword_38CE8);
  return sub_2160C();
}

uint64_t sub_1FDC8()
{
  v0 = sub_2161C();
  sub_1FE48(v0, qword_38D00);
  sub_CD94(v0, qword_38D00);
  return sub_2160C();
}

uint64_t *sub_1FE48(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1FEAC()
{
  v0 = sub_2161C();
  sub_1FE48(v0, qword_38D18);
  sub_CD94(v0, qword_38D18);
  return sub_2160C();
}

uint64_t sub_1FF2C()
{
  v0 = sub_2161C();
  sub_1FE48(v0, qword_38D30);
  sub_CD94(v0, qword_38D30);
  return sub_2160C();
}

uint64_t sub_1FFB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 369))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1FFD8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 360) = 0;
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
    *(result + 368) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
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

  *(result + 369) = v3;
  return result;
}

uint64_t sub_20078(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
      swift_beginAccess();
      memcpy(__dst, (v1 + v4), 0x172uLL);
      if (sub_CE08(__dst) != 1 && (__dst[18] & 1) == 0)
      {
        return __dst[17];
      }
    }

    else
    {
      v6 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
      swift_beginAccess();
      memcpy(__dst, (v1 + v6), 0x172uLL);
      if (sub_CE08(__dst) != 1 && (__dst[23] & 1) == 0)
      {
        return __dst[22];
      }
    }
  }

  else if (a1)
  {
    v5 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
    swift_beginAccess();
    memcpy(__dst, (v1 + v5), 0x172uLL);
    if (sub_CE08(__dst) != 1 && (__dst[13] & 1) == 0)
    {
      return __dst[12];
    }
  }

  else
  {
    v2 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
    swift_beginAccess();
    memcpy(__dst, (v1 + v2), 0x172uLL);
    if (sub_CE08(__dst) != 1)
    {
      return __dst[9];
    }
  }

  return 0;
}

uint64_t sub_201F0(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
      swift_beginAccess();
      memcpy(__dst, (v1 + v4), 0x172uLL);
      if (sub_CE08(__dst) != 1 && (__dst[38] & 1) == 0)
      {
        return __dst[37];
      }
    }

    else
    {
      v6 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
      swift_beginAccess();
      memcpy(__dst, (v1 + v6), 0x172uLL);
      if (sub_CE08(__dst) != 1 && (__dst[43] & 1) == 0)
      {
        return __dst[42];
      }
    }
  }

  else if (a1)
  {
    v5 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
    swift_beginAccess();
    memcpy(__dst, (v1 + v5), 0x172uLL);
    if (sub_CE08(__dst) != 1 && (__dst[33] & 1) == 0)
    {
      return __dst[32];
    }
  }

  else
  {
    v2 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
    swift_beginAccess();
    memcpy(__dst, (v1 + v2), 0x172uLL);
    if (sub_CE08(__dst) != 1 && (__dst[28] & 1) == 0)
    {
      return __dst[27];
    }
  }

  return 0;
}

void ExactitudesDialView.updateDial(for:)(double a1)
{
  v3 = *&v1[OBJC_IVAR___NTKExactitudesDialView_rootLayer];
  v4 = [v1 layer];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  CGRectGetMidX(v24);
  v13 = [v1 layer];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v25.origin.x = v15;
  v25.origin.y = v17;
  v25.size.width = v19;
  v25.size.height = v21;
  CGRectGetMidY(v25);
  sub_FDF8();
  CLKInterpolateBetweenPoints();
  [v3 setPosition:?];
  sub_204E8(a1);
  sub_20660(a1);
  sub_207A4(*&v1[OBJC_IVAR___NTKExactitudesDialView_numeralsLayer], 0, a1);
  v22 = *&v1[OBJC_IVAR___NTKExactitudesDialView_expandedNumeralsLayer];

  sub_207A4(v22, 1, a1);
}

void sub_204E8(double a1)
{
  v3 = *(v1 + OBJC_IVAR___NTKExactitudesDialView_ringLayer);
  sub_E120(0);
  sub_E120(1);
  CLKInterpolateBetweenSizes();
  [v3 bounds];
  [v3 setBounds:?];
  sub_E120(0);
  sub_E120(1);
  CLKInterpolateBetweenRects();
  v8 = [objc_opt_self() bezierPathWithOvalInRect:{v4, v5, v6, v7, *&a1}];
  v9 = [v8 CGPath];

  [v3 setPath:v9];
}

void sub_20660(double a1)
{
  v3 = [*(v1 + OBJC_IVAR___NTKExactitudesDialView_ticksRootLayer) sublayers];
  if (v3)
  {
    v4 = v3;
    sub_119D4();
    v5 = sub_216BC();

    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      if (!v6)
      {
        goto LABEL_14;
      }

      goto LABEL_4;
    }
  }

  v6 = sub_217FC();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_2177C();
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    type metadata accessor for ExactitudesDialSlice();
    if (swift_dynamicCastClass())
    {
      ExactitudesDialSlice.updateTicks(for:)(a1);
    }
  }

LABEL_14:
}

void sub_207A4(void *a1, char a2, double a3)
{
  v5 = [a1 sublayers];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  sub_119D4();
  v7 = sub_216BC();

  if (v7 >> 62)
  {
LABEL_46:
    v8 = sub_217FC();
  }

  else
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v9 = v3 + OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  if (!v8)
  {
LABEL_42:

    return;
  }

  v10 = 0;
  v3 = v7 & 0xC000000000000001;
  while (1)
  {
    if (v3)
    {
      v11 = sub_2177C();
    }

    else
    {
      if (v10 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_45;
      }

      v11 = *(v7 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v14 = *(v9 + 136);
    if (a2)
    {
      v15 = *(v9 + 256);
      v74 = *(v9 + 240);
      v75 = v15;
      v76 = *(v9 + 272);
      v16 = *(v9 + 192);
      v70 = *(v9 + 176);
      v71 = v16;
      v17 = *(v9 + 224);
      v72 = *(v9 + 208);
      v73 = v17;
      v18 = *(v9 + 160);
      v68 = *(v9 + 144);
      v69 = v18;
      if (sub_CDE4(&v68) == 1)
      {
        goto LABEL_48;
      }

      if (!v76)
      {
        v30 = *(v9 + 256);
        v74 = *(v9 + 240);
        v75 = v30;
        v31 = *(v9 + 272);
        v32 = *(v9 + 192);
        v70 = *(v9 + 176);
        v71 = v32;
        v33 = *(v9 + 224);
        v72 = *(v9 + 208);
        v73 = v33;
        v34 = *(v9 + 160);
        v68 = *(v9 + 144);
        v69 = v34;
        v76 = v31;
        goto LABEL_25;
      }

      v19 = *(v76 + 16);
      if (v19)
      {
LABEL_18:
        __sincos_stret(6.28318531 / v19 * v13 + -1.57079633);
      }
    }

    else
    {
      if (!v14)
      {
        v25 = *(v9 + 256);
        v74 = *(v9 + 240);
        v75 = v25;
        v26 = *(v9 + 272);
        v27 = *(v9 + 192);
        v70 = *(v9 + 176);
        v71 = v27;
        v28 = *(v9 + 224);
        v72 = *(v9 + 208);
        v73 = v28;
        v29 = *(v9 + 160);
        v68 = *(v9 + 144);
        v69 = v29;
        v76 = v26;
        goto LABEL_31;
      }

      v19 = *(v14 + 16);
      if (v19)
      {
        goto LABEL_18;
      }
    }

    v20 = *(v9 + 256);
    v74 = *(v9 + 240);
    v75 = v20;
    v76 = *(v9 + 272);
    v21 = *(v9 + 192);
    v70 = *(v9 + 176);
    v71 = v21;
    v22 = *(v9 + 224);
    v72 = *(v9 + 208);
    v73 = v22;
    v23 = *(v9 + 160);
    v68 = *(v9 + 144);
    v69 = v23;
    if ((a2 & 1) == 0)
    {
      if (!v14)
      {
        goto LABEL_31;
      }

      v24 = *(v14 + 16);
      if (!v24)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

LABEL_25:
    v65 = v74;
    v66 = v75;
    v67 = v76;
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v64 = v73;
    v59 = v68;
    v60 = v69;
    if (sub_CDE4(&v59) == 1)
    {
      break;
    }

    if (!v67)
    {
      goto LABEL_31;
    }

    v24 = *(v67 + 16);
    if (!v24)
    {
      goto LABEL_31;
    }

LABEL_28:
    v35 = *(v9 + 256);
    v65 = *(v9 + 240);
    v66 = v35;
    v67 = *(v9 + 272);
    v36 = *(v9 + 192);
    v61 = *(v9 + 176);
    v62 = v36;
    v37 = *(v9 + 224);
    v63 = *(v9 + 208);
    v64 = v37;
    v38 = *(v9 + 160);
    v59 = *(v9 + 144);
    v60 = v38;
    if (sub_CDE4(&v59) == 1)
    {
      goto LABEL_50;
    }

    v39 = *(v9 + 256);
    *&v53.m41 = *(v9 + 240);
    *&v53.m43 = v39;
    v54 = *(v9 + 272);
    v40 = *(v9 + 192);
    *&v53.m21 = *(v9 + 176);
    *&v53.m23 = v40;
    v41 = *(v9 + 224);
    *&v53.m31 = *(v9 + 208);
    *&v53.m33 = v41;
    v42 = *(v9 + 160);
    *&v53.m11 = *(v9 + 144);
    *&v53.m13 = v42;
    if (sub_CDE4(&v53) == 1)
    {
      goto LABEL_49;
    }

    __sincos_stret(6.28318531 / v24 * v13 + -1.57079633);
LABEL_31:
    CLKInterpolateBetweenPoints();
    [v12 setPosition:?];
    v43 = *(v9 + 256);
    v65 = *(v9 + 240);
    v66 = v43;
    v67 = *(v9 + 272);
    v44 = *(v9 + 192);
    v61 = *(v9 + 176);
    v62 = v44;
    v45 = *(v9 + 224);
    v63 = *(v9 + 208);
    v64 = v45;
    v46 = *(v9 + 160);
    v59 = *(v9 + 144);
    v60 = v46;
    if (sub_CDE4(&v59) != 1)
    {
      v47 = *(v9 + 272);
      if (v47)
      {
        if (a2)
        {
          v48 = *(v47 + 16);
          CLKInterpolateBetweenFloatsClipped();
          [v12 setAlpha:?];
          CLKInterpolateBetweenFloatsClipped();
          CGAffineTransformMakeScale(&v53, v49, v49);
          *&m.m11 = *&v53.m11;
          *&m.m13 = *&v53.m13;
          *&m.m21 = *&v53.m21;
          CATransform3DMakeAffineTransform(&v53, &m);
          v50 = 6.28318531 / v48 * v13 + -1.57079633;
          if (v50 >= 3.14159265 || v50 <= 0.0)
          {
            v52 = 1.57079633;
          }

          else
          {
            v52 = -1.57079633;
          }

          CATransform3DMakeRotation(&v57, v50 + v52, 0.0, 0.0, 1.0);
          a = v53;
          b = v57;
          CATransform3DConcat(&m, &a, &b);
          a = m;
          [v12 setTransform:&a];
        }
      }
    }

    ++v10;
    if (v13 == v8)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_20D54(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NTKExactitudesFaceView _loadSnapshotContentViews]";
  sub_86F4(&dword_0, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_20DCC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NTKExactitudesFaceView _applyDataMode]";
  sub_86F4(&dword_0, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_20E44(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NTKExactitudesFaceView _applyDataMode]";
  sub_86F4(&dword_0, a1, a3, "%s: data mode = SWITCHER", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_20EBC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NTKExactitudesFaceView _applyDataMode]";
  sub_86F4(&dword_0, a1, a3, "%s: data mode = INACTIVE", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_20F34(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NTKExactitudesFaceView _applyDataMode]";
  sub_86F4(&dword_0, a1, a3, "%s: data mode = LIVE", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_20FAC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NTKExactitudesFaceView _startClockUpdates]";
  sub_86F4(&dword_0, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_21024(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NTKExactitudesFaceView _stopClockUpdates]";
  sub_86F4(&dword_0, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_2109C(void *a1, uint64_t a2)
{
  v2 = [a1 _stringForStyle:a2];
  LODWORD(v9) = 136315394;
  *(&v9 + 4) = "[NTKExactitudesFaceView _applyOption:forCustomEditMode:slot:]";
  sub_8730();
  sub_8710(&dword_0, v3, v4, "SNEPO %s: setting Style to: %@", v5, v6, v7, v8, v9, DWORD2(v9));
}

void sub_21134(void *a1, uint64_t a2)
{
  v3 = [a1 _stringForStyle:a2];
  v4 = [a1 _stringForStyle:a1[7]];
  LODWORD(v11) = 138412546;
  *(&v11 + 4) = v3;
  sub_8730();
  sub_8710(&dword_0, v5, v6, "SNEPO styles are the same. to/from: %@, _style: %@", v7, v8, v9, v10, v11, DWORD2(v11));
}

void sub_211F0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "SNEPO fromStyle:%@, toStyle: %@", &v3, 0x16u);
}

void sub_21278(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NTKExactitudesFaceView _transitionDialsInEditorFromStyle:toStyle:fraction:]";
  sub_86F4(&dword_0, a1, a3, "SNEPO %s: no dial transitions have been made, the logic of this method may be broken", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_21334(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NTKExactitudesFaceView _transitionDialsInEditorFromStyle:toStyle:fraction:]";
  sub_86F4(&dword_0, a1, a3, "SNEPO %s: fromStyle expected to be ExpandedI or ExpandedII, wrong value provided", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_213F0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NTKExactitudesFaceView _transitionDialsInEditorFromStyle:toStyle:fraction:]";
  sub_86F4(&dword_0, a1, a3, "SNEPO %s: toStyle expected to be Closed or ExpandedI, wrong value provided", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_21468(void *a1, uint64_t a2)
{
  v2 = [a1 _stringForStyle:a2];
  LODWORD(v9) = 136315394;
  *(&v9 + 4) = "[NTKExactitudesFaceView _setDialStyle:]";
  sub_8730();
  sub_8710(&dword_0, v3, v4, "SNEPO %s: dial style changed to %@", v5, v6, v7, v8, v9, DWORD2(v9));
}

void sub_21500(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[NTKExactitudesFaceView _prepareForSnapshotting]";
  sub_86F4(&dword_0, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}