void *sub_1000127D0()
{
  v1 = v0;
  sub_100006DB4(&qword_100038AE8, &qword_100027E70);
  v2 = *v0;
  v3 = sub_100026FC0();
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
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v19 = *(v4 + 56) + 16 * v14;
      *v19 = v18;
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

void *sub_100012930(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void sub_100012A9C(double *a1@<X1>, double *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_100011080(0x20000000000001uLL);
    v7 = v4 + v5 * vcvtd_n_f64_u64(v6, 0x35uLL);
    if (v6 == 0x20000000000000)
    {
      v7 = v3;
    }

    *a2 = v7;
  }
}

void sub_100012B18(float *a1@<X1>, float *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  if (COERCE_INT(fabs(v5)) > 2139095039)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_10001114C(0x1000001uLL);
    v7 = v4 + (v5 * vcvts_n_f32_u32(v6, 0x18uLL));
    if (v6 == 0x1000000)
    {
      v7 = v3;
    }

    *a2 = v7;
  }
}

unint64_t sub_100012B94@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v2 = *a1;
  result = *(*a1 + 16);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = sub_100011080(result);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result < *(v2 + 16))
  {
    *a2 = *(v2 + 8 * result + 32);
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100012BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *)@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  (*a2)(&v13);
  v12 = a4(v13 & ~(v13 >> 63), a1, v9, v10);
  a3(&v13, &v12);

  *a5 = v13;
  return result;
}

unint64_t sub_100012CA4@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v2 = *a1;
  result = *(*a1 + 16);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = sub_100011080(result);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result >= *(v2 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = v2 + 16 * result;
  v6 = *(v5 + 40);
  *a2 = *(v5 + 32);
  a2[1] = v6;
}

id sub_100012D18(uint64_t a1, void (**a2)(uint64_t *__return_ptr, uint64_t))
{
  v3 = *a2;
  sub_100009E28(0, &qword_100038ED0, MLFeatureValue_ptr);
  v3(&v5, a1);
  return sub_10001036C(v5);
}

id sub_100012DAC(uint64_t a1, void (**a2)(void **__return_ptr, uint64_t), SEL *a3)
{
  (*a2)(&v7, a1);
  v4 = v7;
  v5 = [objc_opt_self() *a3];

  return v5;
}

id sub_100012E14(uint64_t a1, void (**a2)(uint64_t *__return_ptr, uint64_t))
{
  (*a2)(&v5, a1);
  v2 = sub_100026C90();
  v3 = [objc_opt_self() featureValueWithString:v2];

  return v3;
}

id sub_100012E98(uint64_t a1, void (**a2)(uint64_t *__return_ptr, uint64_t))
{
  (*a2)(&v4, a1);
  v2 = [objc_opt_self() featureValueWithInt64:v4];

  return v2;
}

id sub_100012F00(uint64_t a1, void (**a2)(double *__return_ptr, uint64_t))
{
  (*a2)(&v4, a1);
  v2 = [objc_opt_self() featureValueWithDouble:v4];

  return v2;
}

uint64_t sub_100012F70(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v23 = a1;
    v5 = [a1 modelDescription];
    v6 = [v5 functionDescriptions];

    sub_100009E28(0, &qword_100038F88, MIOFunctionDescription_ptr);
    v7 = sub_100026DC0();

    if (v7 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100026FB0())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_100026F10();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 name];
        v14 = sub_100026CC0();
        v16 = v15;

        if (v14 == a2 && v16 == a3)
        {

LABEL_18:

          v19 = [v11 inputDescriptions];
          sub_100009E28(0, &qword_100038F80, MIOFeatureDescription_ptr);
          v20 = sub_100026DC0();

          goto LABEL_24;
        }

        v18 = sub_100027130();

        if (v18)
        {
          goto LABEL_18;
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:

    a1 = v23;
  }

  v21 = [a1 modelDescription];
  v19 = [v21 inputDescriptions];

  sub_100009E28(0, &qword_100038F80, MIOFeatureDescription_ptr);
  v20 = sub_100026DC0();
LABEL_24:

  return v20;
}

__CVBuffer *(*sub_1000131F0(void *a1))@<X0>(uint64_t a1@<X0>, __CVBuffer **a2@<X8>)
{
  result = [a1 constraint];
  if (result)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClassUnconditional();
    v3 = [v2 pixelFormatType];
    v4 = [v2 imageSize];
    v5 = [v4 pixelsWide];

    v6 = [v2 imageSize];
    v7 = [v6 pixelsHigh];

    sub_100006DB4(&qword_100038EF0, &qword_100029118);
    v8 = sub_100026DD0();
    *(v8 + 16) = 4;
    *(v8 + 32) = 0xFF00FF00FF00FF00;
    swift_unknownObjectRelease();
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = sub_100014B24;
    *(v11 + 32) = v9;
    *(v11 + 40) = sub_100014B30;
    *(v11 + 48) = v10;
    return sub_100014BB4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1000133AC(void *a1))()
{
  result = [a1 constraint];
  if (result)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClassUnconditional();
    v4 = [v3 shape];
    sub_100009E28(0, &qword_100038D40, NSNumber_ptr);
    v5 = sub_100026DC0();

    if (v5 >> 62)
    {
      v6 = sub_100026FB0();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = a1;
    v27 = v3;
    if (v6)
    {
      v28 = _swiftEmptyArrayStorage;
      v7 = &v28;
      v8 = sub_10000CF18(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        __break(1u);
        goto LABEL_30;
      }

      v9 = 0;
      v10 = v28;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v11 = sub_100026F10();
        }

        else
        {
          v11 = *(v5 + 8 * v9 + 32);
        }

        v12 = v11;
        v13 = [v11 integerValue];

        v28 = v10;
        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          sub_10000CF18((v14 > 1), v15 + 1, 1);
          v10 = v28;
        }

        ++v9;
        v10[2] = v15 + 1;
        v10[v15 + 4] = v13;
      }

      while (v6 != v9);
    }

    else
    {

      v10 = _swiftEmptyArrayStorage;
    }

    v7 = swift_allocObject();
    v7[2] = v10;
    v16 = [v27 dataType];
    if (v16 > 65599)
    {
      if (v16 == 65600)
      {
        swift_unknownObjectRelease();
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1000290B0;
        v18 = sub_100014DC0;
        v19 = sub_100015148;
        goto LABEL_26;
      }

      if (v16 == 131104)
      {
        swift_unknownObjectRelease();
        v17 = swift_allocObject();
        *(v17 + 16) = 0xFF00000000;
        v18 = sub_100014D30;
        v19 = sub_100014D00;
        goto LABEL_26;
      }

LABEL_22:
      v20 = [v26 name];
      v18 = sub_100026CC0();
      v22 = v21;

      sub_100014930();
      swift_allocError();
      *v23 = v18;
      *(v23 + 8) = v22;
      *(v23 + 16) = 1;
      swift_willThrow();
      swift_unknownObjectRelease();

      return v18;
    }

    if (v16 != 65552)
    {
      if (v16 == 65568)
      {
        swift_unknownObjectRelease();
        v17 = swift_allocObject();
        *(v17 + 16) = 0x3F80000000000000;
        v18 = sub_100014D68;
        v19 = sub_100015144;
LABEL_26:
        v24 = swift_allocObject();
        v24[2] = sub_1000150C4;
        v24[3] = v7;
        v24[4] = v19;
        v24[5] = v17;
        return v18;
      }

      goto LABEL_22;
    }

    v8 = sub_100026E50();
    if (qword_1000388E8 == -1)
    {
LABEL_24:
      sub_1000268E0(v8, &_mh_execute_header, qword_100039808, "using custom multiArrayGenerator (float16)", 42, 2, _swiftEmptyArrayStorage, v26);
      swift_unknownObjectRelease();
      v17 = swift_allocObject();
      *(v17 + 16) = 0x3F80000000000000;
      v18 = sub_100014D50;
      v19 = sub_100014D48;
      goto LABEL_26;
    }

LABEL_30:
    v25 = v8;
    swift_once();
    v8 = v25;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000138A4(void *a1))()
{
  result = [a1 constraint];
  if (result)
  {
    objc_opt_self();
    v4 = [swift_dynamicCastObjCClassUnconditional() keyType];
    if (v4 == 1)
    {
      sub_100006DB4(&qword_100038F78, &unk_100029160);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000290C0;
      sub_100026EE0();
      sub_100009E28(0, &qword_100038D40, NSNumber_ptr);
      *(inited + 72) = sub_100026E90(0.0);
      sub_100026EE0();
      v1 = sub_100014E58;
    }

    else
    {
      if (v4 != 3)
      {
        v7 = [a1 name];
        v8 = sub_100026CC0();
        v10 = v9;

        sub_100014930();
        swift_allocError();
        *v11 = v8;
        *(v11 + 8) = v10;
        *(v11 + 16) = 3;
        swift_willThrow();
        swift_unknownObjectRelease();
        return v1;
      }

      sub_100006DB4(&qword_100038F78, &unk_100029160);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000290C0;
      sub_100026EE0();
      sub_100009E28(0, &qword_100038D40, NSNumber_ptr);
      *(inited + 72) = sub_100026E90(0.0);
      sub_100026EE0();
      v1 = sub_1000150C4;
    }

    *(inited + 120) = sub_100026E90(1.0);
    v6 = sub_100008D38(inited);
    swift_setDeallocating();
    sub_100006DB4(&qword_100038AB8, &qword_100027E48);
    swift_arrayDestroy();
    swift_unknownObjectRelease();
    *(swift_allocObject() + 16) = v6;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100013BAC(void *a1))()
{
  result = [a1 constraint];
  if (result)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClassUnconditional();
    v4 = [v3 countRange];
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    v5 = [v3 valueDescription];
    v6 = [v5 type];
    v7 = sub_100015150;
    v8 = sub_100014F14;
    v9 = sub_10001084C;
    if (v6 == 3)
    {
      v10 = sub_100014EC4;
      v11 = &off_100034FE0;
    }

    else
    {
      if (v6 != 1)
      {
        v15 = [a1 name];
        v7 = sub_100026CC0();
        v17 = v16;

        sub_100014930();
        swift_allocError();
        *v18 = v7;
        *(v18 + 8) = v17;
        *(v18 + 16) = 2;
        swift_willThrow();
        swift_unknownObjectRelease();

        return v7;
      }

      v7 = sub_100014EC0;
      v8 = sub_100014E8C;
      v9 = sub_1000108B8;
      v10 = sub_100014E80;
      v11 = &off_100035030;
    }

    swift_unknownObjectRelease();

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v13 = swift_allocObject();
    v13[2] = sub_100014E74;
    v13[3] = v19;
    v13[4] = v10;
    v13[5] = v12;
    v13[6] = v9;
    v13[7] = 0;
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v13;
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100013E84(void *a1))@<X0>(uint64_t *a1@<X8>)
{
  v4 = [a1 type];
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 1:
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1000290E0;
        v2 = sub_10001514C;
        v9 = sub_100014B0C;
        v7 = sub_100014AE0;
        break;
      case 2:
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1000290B0;
        v2 = sub_10001514C;
        v9 = sub_100014B1C;
        v7 = sub_100014B14;
        break;
      case 3:
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1000290D0;
        *(v8 + 32) = 0xD00000000000003DLL;
        *(v8 + 40) = 0x800000010002C240;
        v2 = sub_10001514C;
        v9 = sub_100014AC8;
        v7 = sub_100014A98;
        break;
      default:
        goto LABEL_15;
    }

LABEL_22:
    v20 = swift_allocObject();
    *(v20 + 16) = v7;
    *(v20 + 24) = v8;
    v21 = swift_allocObject();
    *(v21 + 16) = v9;
    *(v21 + 24) = v20;
    return v2;
  }

  if (v4 <= 5)
  {
    if (v4 == 4)
    {
      v16 = sub_1000131F0(a1);
      if (v1)
      {
        return v2;
      }

      v7 = v16;
      v8 = v17;
      v2 = sub_10001514C;
      v9 = sub_100014A3C;
    }

    else
    {
      v5 = sub_1000133AC(a1);
      if (v1)
      {
        return v2;
      }

      v7 = v5;
      v8 = v6;
      v2 = sub_10001514C;
      v9 = sub_100014A18;
    }

    goto LABEL_22;
  }

  if (v4 == 6)
  {
    v18 = sub_1000138A4(a1);
    if (v1)
    {
      return v2;
    }

    v7 = v18;
    v8 = v19;
    v2 = sub_10001514C;
    v9 = sub_1000149D8;
    goto LABEL_22;
  }

  if (v4 == 7)
  {
    v10 = sub_100013BAC(a1);
    if (v1)
    {
      return v2;
    }

    v7 = v10;
    v8 = v11;
    v2 = sub_1000149A8;
    v9 = sub_100014984;
    goto LABEL_22;
  }

LABEL_15:
  v12 = [a1 name];
  v13 = sub_100026CC0();
  v2 = v14;

  sub_100014930();
  swift_allocError();
  *v15 = v13;
  *(v15 + 8) = v2;
  *(v15 + 16) = 0;
  swift_willThrow();
  return v2;
}

void *sub_100014280(unint64_t a1, void *a2)
{
  isUniquelyReferenced_nonNull_native = v2;
  v5 = a1;
  if (a1 >> 62)
  {
LABEL_30:
    v6 = sub_100026FB0();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v35 = v5 & 0xFFFFFFFFFFFFFF8;
      v36 = v5 & 0xC000000000000001;
      v8 = &_swiftEmptyDictionarySingleton;
      v33 = v5;
      v34 = a2;
      v32 = v6;
      while (1)
      {
        if (v36)
        {
          v10 = sub_100026F10();
        }

        else
        {
          if (v7 >= *(v35 + 16))
          {
            goto LABEL_27;
          }

          v10 = *(v5 + 8 * v7 + 32);
        }

        v11 = v10;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v38 = v7 + 1;
        v12 = [v10 name];
        v13 = sub_100026CC0();
        v15 = v14;

        if (a2[2])
        {
          sub_100010C04(v13, v15);
        }

        v39 = v11;
        v16 = sub_100013E84(v11);
        if (isUniquelyReferenced_nonNull_native)
        {

          return v8;
        }

        v18 = v16;
        v37 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v8;
        a2 = v8;
        v20 = sub_100010C04(v13, v15);
        v21 = v8[2];
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_28;
        }

        v5 = v19;
        if (v8[3] >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v19)
            {
              goto LABEL_4;
            }
          }

          else
          {
            a2 = &v40;
            sub_1000124E4();
            if (v5)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_100011CF4(v23, isUniquelyReferenced_nonNull_native);
          a2 = v40;
          v24 = sub_100010C04(v13, v15);
          if ((v5 & 1) != (v25 & 1))
          {
            result = sub_100027140();
            __break(1u);
            return result;
          }

          v20 = v24;
          if (v5)
          {
LABEL_4:

            v8 = v40;
            v9 = (v40[7] + 16 * v20);
            *v9 = v18;
            v9[1] = v37;

            goto LABEL_5;
          }
        }

        v8 = v40;
        v40[(v20 >> 6) + 8] |= 1 << v20;
        v26 = (v8[6] + 16 * v20);
        *v26 = v13;
        v26[1] = v15;
        v27 = (v8[7] + 16 * v20);
        *v27 = v18;
        v27[1] = v37;

        v28 = v8[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_29;
        }

        v8[2] = v30;
LABEL_5:
        ++v7;
        v5 = v33;
        isUniquelyReferenced_nonNull_native = 0;
        a2 = v34;
        if (v38 == v32)
        {
          return v8;
        }
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

void sub_100014558(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = sub_100026870();
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  v13 = objc_allocWithZone(MIOModel);
  v14 = sub_100010A34(v11);
  if (!v4)
  {
    v15 = v14;
    v16 = sub_100012F70(v14, a2, a3);
    v17 = v15;
    v18 = sub_100014280(v16, a4);

    *(swift_allocObject() + 16) = v18;
  }
}

uint64_t sub_1000146D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100014710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100010474(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

void *sub_100014744(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  if (!v5)
  {
    return a1;
  }

  v6 = a3;
  v7 = (a2 + 40);
  while (*(v6 + 16))
  {
    v11 = *(v7 - 1);
    v10 = *v7;

    v12 = sub_100010C04(v11, v10);
    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }

    v14 = *(*(v6 + 56) + 16 * v12);

    v14(&v32, a4);

    v15 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = a1;
    v17 = sub_100010C04(v11, v10);
    v19 = a1[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_20;
    }

    v23 = v18;
    if (a1[3] < v22)
    {
      sub_100011FAC(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_100010C04(v11, v10);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      a1 = v32;
      if (v23)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v28 = v17;
    sub_100012664();
    v17 = v28;
    a1 = v32;
    if (v23)
    {
LABEL_3:
      v8 = a1[7];
      v9 = *(v8 + 8 * v17);
      *(v8 + 8 * v17) = v15;

      goto LABEL_4;
    }

LABEL_13:
    a1[(v17 >> 6) + 8] |= 1 << v17;
    v25 = (a1[6] + 16 * v17);
    *v25 = v11;
    v25[1] = v10;
    *(a1[7] + 8 * v17) = v15;
    v26 = a1[2];
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v21)
    {
      goto LABEL_21;
    }

    a1[2] = v27;
LABEL_4:
    v7 += 2;
    --v5;
    v6 = a3;
    if (!v5)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_100027140();
  __break(1u);
  return result;
}

unint64_t sub_100014930()
{
  result = qword_100038EE8;
  if (!qword_100038EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038EE8);
  }

  return result;
}

uint64_t sub_1000149A8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1000149E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014A60()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100014A98@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_10000B100(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_100014AE0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_10000F920(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

__n128 sub_100014B24@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

void *sub_100014B30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10000F6F8(*(v2 + 16), a1);
  *a2 = result;
  return result;
}

uint64_t sub_100014B74()
{

  return _swift_deallocObject(v0, 56, 7);
}

__CVBuffer *sub_100014BB4@<X0>(uint64_t a1@<X0>, __CVBuffer **a2@<X8>)
{
  v4 = *(v2 + 32);
  v6[0] = *(v2 + 16);
  v6[1] = v4;
  v7 = *(v2 + 48);
  result = sub_10000F9B4(a1, v6);
  *a2 = result;
  return result;
}

unint64_t sub_100014BF8()
{
  result = qword_100038F08;
  if (!qword_100038F08)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038F08);
  }

  return result;
}

uint64_t sub_100014D00@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10000FB8C(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_100014D80()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014DD8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, v3[2], v3[3], v3[4], v3[5]);
  *a3 = result;
  return result;
}

uint64_t sub_100014E10(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006F18(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014ECC()
{

  return _swift_deallocObject(v0, 64, 7);
}

void *sub_100014F48@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  return result;
}

__n128 sub_100014FB4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100014FC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100015010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_100015070()
{
  result = qword_100038F90;
  if (!qword_100038F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038F90);
  }

  return result;
}

uint64_t sub_100015154(char *a1, uint64_t a2)
{
  v69 = sub_100026C10();
  v4 = *(v69 - 8);
  v5 = __chkstk_darwin(v69);
  v68 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v67 = &v54 - v7;
  v8 = sub_100026C40();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = &v54 - v12;
  v76 = sub_100026AC0();
  v87 = *(v76 - 8);
  v13 = __chkstk_darwin(v76);
  v75 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v74 = &v54 - v15;
  v16 = sub_100026C50();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v88 = &v54 - v21;
  v22 = sub_100026C20();
  v23 = sub_100026C30();
  v24 = *(v23 + 16);
  if (v24)
  {
    v54 = v22;
    v62 = v8;
    v78 = a2;
    v55 = a1;
    v91 = _swiftEmptyArrayStorage;
    v84 = v24;
    sub_10000CE80(0, v24, 0);
    v25 = v9;
    v26 = 0;
    v27 = v4;
    v28 = v91;
    v83 = v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v81 = v17 + 88;
    v82 = v17 + 16;
    v80 = enum case for MLModelStructure.neuralNetwork(_:);
    v73 = enum case for MLModelStructure.program(_:);
    v66 = enum case for MLModelStructure.pipeline(_:);
    v77 = (v17 + 96);
    v58 = (v25 + 32);
    v57 = (v25 + 16);
    v61 = (v25 + 8);
    v65 = (v27 + 32);
    v64 = (v27 + 16);
    v63 = (v27 + 8);
    v72 = (v87 + 32);
    v56 = enum case for MLModelStructure.unsupported(_:);
    v71 = (v87 + 16);
    v70 = (v87 + 8);
    v79 = (v17 + 8);
    v86 = v20;
    v87 = v17;
    v85 = v23;
    while (v26 < *(v23 + 16))
    {
      v29 = *(v17 + 16);
      v30 = v88;
      v29(v88, v83 + *(v17 + 72) * v26, v16);
      v29(v20, v30, v16);
      v31 = (*(v17 + 88))(v20, v16);
      if (v31 == v80)
      {
        (*v77)(v20, v16);
        v32 = v74;
        v33 = v76;
        (*v72)(v74, v20, v76);
        v34 = v75;
        (*v71)(v75, v32, v33);
        v35 = v78;

        v36 = sub_1000166CC(v34, v35);
        (*v70)(v32, v33);
        v37 = 0;
        v38 = 0;
      }

      else if (v31 == v73)
      {
        (*v77)(v20, v16);
        v39 = v67;
        v40 = v69;
        (*v65)(v67, v20, v69);
        v41 = v68;
        (*v64)(v68, v39, v40);
        v42 = sub_100026C00();
        v43 = v78;

        v36 = sub_100018648(v42, v43);

        v44 = *v63;
        (*v63)(v41, v40);
        v44(v39, v40);
        v37 = 0;
        v38 = 1;
      }

      else if (v31 == v66)
      {
        (*v77)(v20, v16);
        v45 = v59;
        v46 = v62;
        (*v58)(v59, v20, v62);
        v47 = v60;
        (*v57)(v60, v45, v46);
        v48 = v78;

        v36 = sub_100015154(v47, v48);
        v37 = v49;
        (*v61)(v45, v46);
        v38 = 2;
      }

      else
      {
        if (v31 != v56)
        {
          goto LABEL_19;
        }

        v37 = 0;
        v38 = 3;
        v36 = 1;
      }

      (*v79)(v88, v16);
      v91 = v28;
      v51 = v28[2];
      v50 = v28[3];
      if (v51 >= v50 >> 1)
      {
        sub_10000CE80((v50 > 1), v51 + 1, 1);
        v28 = v91;
      }

      ++v26;
      v28[2] = v51 + 1;
      v52 = &v28[3 * v51];
      v52[4] = v36;
      v52[5] = v37;
      *(v52 + 48) = v38;
      v23 = v85;
      v20 = v86;
      v17 = v87;
      if (v84 == v26)
      {

        (*v61)(v55, v62);
        return v54;
      }
    }

    __break(1u);
LABEL_19:
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_100026F00(19);
    v92._object = 0x800000010002C3B0;
    v92._countAndFlagsBits = 0xD000000000000011;
    sub_100026D60(v92);
    sub_100026F90();
    result = sub_100026FA0();
    __break(1u);
  }

  else
  {

    (*(v9 + 8))(a1, v8);
    return v22;
  }

  return result;
}

void *sub_100015A30(uint64_t a1)
{
  v109 = sub_100026950();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v96[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = sub_100026970();
  v101 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v96[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100006DB4(&qword_100038FA0, &qword_100029318);
  __chkstk_darwin(v4 - 8);
  v6 = &v96[-v5];
  v7 = sub_100026920();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v122 = &v96[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v96[-v12];
  __chkstk_darwin(v11);
  v15 = &v96[-v14];
  v127 = sub_100026A50();
  v16 = *(v127 - 8);
  v17 = __chkstk_darwin(v127);
  v120 = &v96[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v136 = &v96[-v20];
  v21 = __chkstk_darwin(v19);
  v23 = &v96[-v22];
  v24 = __chkstk_darwin(v21);
  v135 = &v96[-v25];
  __chkstk_darwin(v24);
  v117 = &v96[-v26];
  v27 = sub_100026990();
  v28 = *(v27 + 16);
  v123 = v16;
  v124 = v6;
  v125 = a1;
  v126 = v7;
  v121 = v13;
  v128 = v15;
  if (v28)
  {
    v119 = v8;
    v138 = _swiftEmptyArrayStorage;
    v29 = v27;
    sub_10000CEA0(0, v28, 0);
    v30 = v138;
    v32 = *(v16 + 16);
    v31 = v16 + 16;
    v33 = *(v31 + 64);
    v118 = v29;
    v34 = &v29[(v33 + 32) & ~v33];
    v132 = *(v31 + 56);
    v133 = v32;
    v131 = (v31 + 16);
    v35 = (v31 + 72);
    v137 = enum case for MLComputeDevice.cpu(_:);
    LODWORD(v130) = enum case for MLComputeDevice.gpu(_:);
    LODWORD(v129) = enum case for MLComputeDevice.neuralEngine(_:);
    v134 = v31;
    v36 = (v31 - 8);
    v37 = v127;
    do
    {
      v38 = v135;
      (v133)(v135, v34, v37);
      (*v131)(v23, v38, v37);
      v39 = (*v35)(v23, v37);
      if (v39 == v129)
      {
        v40 = 2;
      }

      else
      {
        v40 = 3;
      }

      if (v39 == v130)
      {
        v40 = 1;
      }

      if (v39 == v137)
      {
        v41 = 0;
      }

      else
      {
        v41 = v40;
      }

      (*v36)(v23, v37);
      v138 = v30;
      v43 = v30[2];
      v42 = v30[3];
      if (v43 >= v42 >> 1)
      {
        sub_10000CEA0((v42 > 1), v43 + 1, 1);
        v37 = v127;
        v30 = v138;
      }

      v30[2] = v43 + 1;
      *(v30 + v43 + 32) = v41;
      v34 += v132;
      --v28;
    }

    while (v28);
    v98 = v30;

    v6 = v124;
    a1 = v125;
    v7 = v126;
    v44 = v123;
    v45 = v137;
    v8 = v119;
  }

  else
  {

    v45 = enum case for MLComputeDevice.cpu(_:);
    v98 = _swiftEmptyArrayStorage;
    v44 = v16;
  }

  v46 = v117;
  sub_100026980();
  v47 = v127;
  v118 = *(v44 + 88);
  v119 = v44 + 88;
  v48 = v118(v46, v127);
  if (v48 == v45)
  {
    v97 = 0;
  }

  else
  {
    if (v48 == enum case for MLComputeDevice.gpu(_:))
    {
      v49 = 1;
    }

    else if (v48 == enum case for MLComputeDevice.neuralEngine(_:))
    {
      v49 = 2;
    }

    else
    {
      v49 = 3;
    }

    v97 = v49;
  }

  v134 = *(v44 + 8);
  v135 = (v44 + 8);
  v134(v46, v47);
  v133 = sub_100008EC8(_swiftEmptyArrayStorage);
  v50 = sub_100026A40();
  v132 = *(v50 + 16);
  if (!v132)
  {
LABEL_55:

    v94 = sub_1000269A0();
    (*(*(v94 - 8) + 8))(a1, v94);
    return v98;
  }

  v137 = v45;
  v51 = 0;
  v131 = (v50 + ((*(v44 + 80) + 32) & ~*(v44 + 80)));
  v52 = v44 + 16;
  v130 = (v8 + 48);
  v117 = (v8 + 32);
  v116 = enum case for MLComputeDevice.gpu(_:);
  v115 = enum case for MLComputeDevice.neuralEngine(_:);
  v114 = (v8 + 16);
  v113 = (v8 + 88);
  v112 = enum case for MLComputePlan.DeviceUsage.SupportState.unsupported(_:);
  v104 = enum case for MLComputePlan.DeviceUsage.SupportState.supported(_:);
  v100 = (v107 + 13);
  ++v107;
  v129 = (v8 + 8);
  v103 = (v8 + 96);
  v99 = enum case for MLComputePlan.DeviceUsage.Reason.Category.unsupported(_:);
  v102 = (v101 + 4);
  ++v101;
  v53 = v50;
  v111 = v50;
  v110 = v44 + 16;
  while (v51 < *(v53 + 16))
  {
    v54 = &v131[*(v44 + 72) * v51];
    v55 = v44;
    v56 = *(v44 + 16);
    v57 = v136;
    v58 = v52;
    v56(v136, v54, v47);
    sub_100026930();
    if ((*v130)(v6, 1, v7) == 1)
    {
      v134(v57, v47);
      sub_10000A350(v6, &qword_100038FA0, &qword_100029318);
      v52 = v58;
      v44 = v55;
      goto LABEL_27;
    }

    v59 = v128;
    (*v117)(v128, v6, v7);
    v60 = v120;
    v56(v120, v57, v47);
    v61 = v118(v60, v47);
    if (v61 == v115)
    {
      v62 = 2;
    }

    else
    {
      v62 = 3;
    }

    if (v61 == v116)
    {
      v62 = 1;
    }

    if (v61 == v137)
    {
      v63 = 0;
    }

    else
    {
      v63 = v62;
    }

    v134(v60, v47);
    v64 = *v114;
    v65 = v121;
    (*v114)(v121, v59, v7);
    v66 = v122;
    v64(v122, v65, v7);
    v67 = (*v113)(v66, v7);
    if (v67 == v112)
    {
      (*v103)(v66, v7);
      v68 = v105;
      v69 = v66;
      v70 = v106;
      (*v102)(v105, v69, v106);
      v71 = v108;
      sub_100026960();
      v72 = sub_100026940();
      (*v107)(v71, v109);
      (*v101)(v68, v70);
      v73 = *v129;
      (*v129)(v65, v7);
LABEL_43:
      v74 = 0;
      goto LABEL_44;
    }

    if (v67 != v104)
    {
      v75 = v108;
      v76 = v109;
      (*v100)(v108, v99, v109);
      v72 = sub_100026940();
      (*v107)(v75, v76);
      v73 = *v129;
      (*v129)(v65, v7);
      v73(v66, v7);
      goto LABEL_43;
    }

    v73 = *v129;
    (*v129)(v65, v7);
    v72 = 0;
    v74 = 1;
LABEL_44:
    v77 = v133;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v138 = v77;
    v79 = sub_100010D44(v63);
    v81 = v77[2];
    v82 = (v80 & 1) == 0;
    v83 = __OFADD__(v81, v82);
    v84 = v81 + v82;
    if (v83)
    {
      goto LABEL_57;
    }

    v85 = v80;
    v86 = v72;
    if (v77[3] >= v84)
    {
      v47 = v127;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v93 = v79;
        sub_1000127D0();
        v47 = v127;
        v79 = v93;
      }
    }

    else
    {
      sub_100012250(v84, isUniquelyReferenced_nonNull_native);
      v79 = sub_100010D44(v63);
      if ((v85 & 1) != (v87 & 1))
      {
        goto LABEL_59;
      }

      v47 = v127;
    }

    v53 = v111;
    v88 = v138;
    v133 = v138;
    if (v85)
    {
      v89 = v138[7] + 16 * v79;
      *v89 = v86;
      *(v89 + 8) = v74;
      v7 = v126;
      v73(v128, v126);
      v134(v136, v47);
    }

    else
    {
      v138[(v79 >> 6) + 8] |= 1 << v79;
      *(v88[6] + v79) = v63;
      v90 = v88[7] + 16 * v79;
      *v90 = v86;
      *(v90 + 8) = v74;
      v7 = v126;
      v73(v128, v126);
      v134(v136, v47);
      v91 = v88[2];
      v83 = __OFADD__(v91, 1);
      v92 = v91 + 1;
      if (v83)
      {
        goto LABEL_58;
      }

      v88[2] = v92;
    }

    v6 = v124;
    a1 = v125;
    v44 = v123;
    v52 = v110;
LABEL_27:
    if (v132 == ++v51)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_100027140();
  __break(1u);
  return result;
}

void *sub_1000166CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006DB4(&qword_100038F98, &qword_100029310);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - v5;
  v7 = sub_1000269A0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v54 - v11;
  v12 = sub_100026AA0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v70 = &v54 - v17;
  v18 = sub_100026AB0();
  v19 = *(v18 + 16);
  if (v19)
  {
    v55 = a1;
    v78 = _swiftEmptyArrayStorage;
    sub_10000CE60(0, v19, 0);
    v77 = v78;
    v21 = *(v13 + 16);
    v20 = v13 + 16;
    v65 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v54 = v18;
    v23 = v8;
    v24 = v18 + v22;
    v58 = (v23 + 32);
    v63 = *(v20 + 56);
    v64 = (v23 + 48);
    v57 = (v23 + 16);
    v56 = (v23 + 8);
    v62 = (v20 - 8);
    v68 = v6;
    v69 = a2;
    v66 = v12;
    v67 = v7;
    v25 = v70;
    v59 = v20;
    do
    {
      v26 = v65;
      v65(v25, v24, v12);
      v26(v16, v25, v12);

      v27 = sub_100026A80();
      v75 = v28;
      v76 = v27;
      v29 = sub_100026A90();
      v73 = v30;
      v74 = v29;
      v72 = sub_100026A60();
      v71 = sub_100026A70();
      sub_1000269B0();
      if ((*v64)(v6, 1, v7) == 1)
      {

        v31 = *v62;
        (*v62)(v16, v12);
        v32 = v70;
        v31(v70, v12);
        sub_10000A350(v6, &qword_100038F98, &qword_100029310);
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v25 = v32;
      }

      else
      {
        v36 = v12;
        v37 = v60;
        (*v58)(v60, v6, v7);
        v38 = v61;
        (*v57)(v61, v37, v7);
        v33 = sub_100015A30(v38);
        v40 = v39;
        v35 = v41;

        (*v56)(v37, v7);
        v42 = *v62;
        (*v62)(v16, v36);
        v43 = v70;
        v42(v70, v36);
        v34 = v40;
        v25 = v43;
      }

      v44 = v77;
      v78 = v77;
      v46 = v77[2];
      v45 = v77[3];
      if (v46 >= v45 >> 1)
      {
        sub_10000CE60((v45 > 1), v46 + 1, 1);
        v25 = v70;
        v44 = v78;
      }

      v44[2] = v46 + 1;
      v77 = v44;
      v47 = &v44[9 * v46];
      v48 = v75;
      v47[4] = v76;
      v47[5] = v48;
      v49 = v73;
      v47[6] = v74;
      v47[7] = v49;
      v50 = v71;
      v47[8] = v72;
      v47[9] = v50;
      v47[10] = v33;
      v47[11] = v34;
      v47[12] = v35;
      v24 += v63;
      --v19;
      v6 = v68;
      v12 = v66;
      v7 = v67;
    }

    while (v19);
    v51 = sub_100026AC0();
    (*(*(v51 - 8) + 8))(v55, v51);

    return v77;
  }

  else
  {

    v53 = sub_100026AC0();
    (*(*(v53 - 8) + 8))(a1, v53);
    return _swiftEmptyArrayStorage;
  }
}

void *sub_100016C48(uint64_t a1)
{
  v2 = sub_100026B40();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = sub_100026B50();
  v10 = *(v9 + 16);
  if (v10)
  {
    v25 = a1;
    v37 = _swiftEmptyArrayStorage;
    sub_10000CF38(0, v10, 0);
    v11 = 0;
    v12 = v37;
    v31 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v29 = v3 + 88;
    v30 = v3 + 16;
    v28 = enum case for MLModelStructure.Program.Binding.value(_:);
    v27 = enum case for MLModelStructure.Program.Binding.name(_:);
    v13 = (v3 + 8);
    v26 = (v3 + 96);
    v33 = v9;
    v34 = v8;
    v32 = v10;
    while (v11 < *(v9 + 16))
    {
      v14 = *(v3 + 16);
      v14(v8, v31 + *(v3 + 72) * v11, v2);
      v14(v6, v8, v2);
      v15 = (*(v3 + 88))(v6, v2);
      if (v15 == v28)
      {
        v16 = *v13;
        (*v13)(v8, v2);
        v16(v6, v2);
        v17 = 0;
        v18 = 0;
      }

      else
      {
        if (v15 != v27)
        {
          goto LABEL_15;
        }

        (*v13)(v8, v2);
        (*v26)(v6, v2);
        v17 = *v6;
        v18 = *(v6 + 1);
      }

      v37 = v12;
      v20 = v12[2];
      v19 = v12[3];
      if (v20 >= v19 >> 1)
      {
        sub_10000CF38((v19 > 1), v20 + 1, 1);
        v12 = v37;
      }

      ++v11;
      v12[2] = v20 + 1;
      v21 = &v12[2 * v20];
      v21[4] = v17;
      v21[5] = v18;
      v9 = v33;
      v8 = v34;
      if (v32 == v11)
      {
        v22 = sub_100026B60();
        (*(*(v22 - 8) + 8))(v25, v22);

        return v12;
      }
    }

    __break(1u);
LABEL_15:
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_100026F00(18);
    v38._object = 0x800000010002C3D0;
    v38._countAndFlagsBits = 0xD000000000000010;
    sub_100026D60(v38);
    sub_100026F90();
    result = sub_100026FA0();
    __break(1u);
  }

  else
  {

    v23 = sub_100026B60();
    (*(*(v23 - 8) + 8))(a1, v23);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100017028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v133 = a2;
  v132 = a3;
  v4 = sub_100006DB4(&qword_100038FB0, &qword_100029328);
  __chkstk_darwin(v4 - 8);
  v129 = &v118 - v5;
  v131 = sub_100026A00();
  v130 = *(v131 - 8);
  v6 = __chkstk_darwin(v131);
  v122 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v121 = &v118 - v8;
  v155 = sub_100026B30();
  v157 = *(v155 - 8);
  v9 = __chkstk_darwin(v155);
  v154 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v153 = &v118 - v11;
  v12 = sub_100006DB4(&qword_100038F98, &qword_100029310);
  __chkstk_darwin(v12 - 8);
  v124 = &v118 - v13;
  v126 = sub_1000269A0();
  v125 = *(v126 - 8);
  v14 = __chkstk_darwin(v126);
  v119 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = &v118 - v16;
  v152 = sub_100026BF0();
  v123 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_100026AF0();
  v156 = *(v150 - 8);
  v18 = __chkstk_darwin(v150);
  v149 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v148 = &v118 - v20;
  v141 = sub_100026B60();
  v21 = *(v141 - 8);
  v22 = __chkstk_darwin(v141);
  v139 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v138 = &v118 - v24;
  v128 = sub_100026BA0();
  v127 = v25;
  v134 = a1;
  v26 = sub_100026BC0();
  sub_100006DB4(&qword_100038FB8, &qword_100029330);
  result = sub_100026FC0();
  v142 = v26;
  v143 = result;
  v28 = 0;
  v29 = v26 + 64;
  v30 = 1 << *(v26 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v26 + 64);
  v33 = (v30 + 63) >> 6;
  v137 = v21 + 16;
  v140 = v21;
  v136 = v21 + 8;
  v135 = result + 64;
  v34 = v139;
  if (v32)
  {
    while (1)
    {
      v35 = __clz(__rbit64(v32));
      v144 = (v32 - 1) & v32;
LABEL_10:
      v38 = v35 | (v28 << 6);
      v146 = 16 * v38;
      v39 = v141;
      v40 = *(v142 + 56);
      v41 = (*(v142 + 48) + 16 * v38);
      v43 = *v41;
      v42 = v41[1];
      v147 = v43;
      v145 = v42;
      v44 = v140;
      v45 = *(v140 + 16);
      v46 = v138;
      v45(v138, v40 + *(v140 + 72) * v38, v141);
      v45(v34, v46, v39);
      v47 = v145;

      v48 = sub_100016C48(v34);
      result = (*(v44 + 8))(v46, v39);
      *(v135 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      v49 = v143;
      v50 = (*(v143 + 48) + v146);
      *v50 = v147;
      v50[1] = v47;
      *(*(v49 + 56) + 8 * v38) = v48;
      v51 = *(v49 + 16);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        break;
      }

      *(v49 + 16) = v53;
      v32 = v144;
      if (!v144)
      {
        goto LABEL_5;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_5:
    v36 = v28;
    while (1)
    {
      v28 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v28 >= v33)
      {
        break;
      }

      v37 = *(v29 + 8 * v28);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v144 = (v37 - 1) & v37;
        goto LABEL_10;
      }
    }

    v54 = v134;
    v55 = sub_100026BD0();
    v56 = *(v55 + 16);
    if (v56)
    {
      v158 = _swiftEmptyArrayStorage;
      sub_10000CF78(0, v56, 0);
      v57 = v158;
      v58 = *(v156 + 2);
      v59 = *(v156 + 80);
      v144 = v55;
      v60 = v55 + ((v59 + 32) & ~v59);
      v146 = *(v156 + 9);
      v147 = v58;
      v145 = (v123 + 8);
      v156 = (v156 + 16);
      v61 = (v156 - 8);
      do
      {
        v63 = v147;
        v62 = v148;
        v64 = v150;
        v147(v148, v60, v150);
        v65 = v149;
        v63(v149, v62, v64);
        v66 = sub_100026AD0();
        v68 = v67;
        v69 = v151;
        sub_100026AE0();
        (*v145)(v69, v152);
        v70 = *v61;
        (*v61)(v65, v64);
        v70(v62, v64);
        v158 = v57;
        v72 = v57[2];
        v71 = v57[3];
        if (v72 >= v71 >> 1)
        {
          sub_10000CF78((v71 > 1), v72 + 1, 1);
          v57 = v158;
        }

        v57[2] = v72 + 1;
        v73 = &v57[2 * v72];
        v73[4] = v66;
        v73[5] = v68;
        v60 += v146;
        --v56;
      }

      while (v56);
      v151 = v57;

      v54 = v134;
    }

    else
    {

      v151 = _swiftEmptyArrayStorage;
    }

    v74 = sub_100026BB0();
    v75 = *(v74 + 16);
    if (v75)
    {
      v158 = _swiftEmptyArrayStorage;
      sub_10000CFB0(0, v75, 0);
      v76 = v158;
      v156 = v157[2];
      v157 += 2;
      v77 = *(v157 + 64);
      v150 = v74;
      v78 = v74 + ((v77 + 32) & ~v77);
      v152 = v157[7];
      v79 = (v157 - 1);
      v80 = v133;
      do
      {
        v81 = v153;
        v82 = v155;
        v83 = v156;
        v156(v153, v78, v155);
        v84 = v154;
        v83(v154, v81, v82);

        v85 = sub_100017CDC(v84, v80);
        v87 = v86;
        v89 = v88;
        (*v79)(v81, v82);
        v158 = v76;
        v91 = v76[2];
        v90 = v76[3];
        if (v91 >= v90 >> 1)
        {
          sub_10000CFB0((v90 > 1), v91 + 1, 1);
          v80 = v133;
          v76 = v158;
        }

        v76[2] = v91 + 1;
        v92 = &v76[3 * v91];
        v92[4] = v85;
        v92[5] = v87;
        v92[6] = v89;
        v78 += v152;
        --v75;
      }

      while (v75);
      v157 = v76;

      v54 = v134;
    }

    else
    {

      v157 = _swiftEmptyArrayStorage;
    }

    v93 = v124;
    sub_1000269C0();
    v94 = v125;
    v95 = v126;
    v96 = (*(v125 + 48))(v93, 1, v126);
    v97 = v131;
    v98 = v130;
    v99 = v129;
    if (v96 == 1)
    {
      sub_10000A350(v93, &qword_100038F98, &qword_100029310);
      v156 = 0;
      v100 = 0;
      v101 = 0;
    }

    else
    {
      v102 = v120;
      (*(v94 + 32))(v120, v93, v95);
      v103 = v119;
      (*(v94 + 16))(v119, v102, v95);
      v156 = sub_100015A30(v103);
      LOBYTE(v103) = v104;
      v101 = v105;
      (*(v94 + 8))(v102, v95);
      v100 = v103;
    }

    sub_1000269D0();
    v106 = (*(v98 + 48))(v99, 1, v97);
    if (v106 == 1)
    {
      v107 = sub_100026BE0();
      (*(*(v107 - 8) + 8))(v54, v107);

      result = sub_10000A350(v99, &qword_100038FB0, &qword_100029328);
      v108 = 0;
    }

    else
    {
      v109 = v121;
      (*(v98 + 32))(v121, v99, v97);
      v110 = v122;
      (*(v98 + 16))(v122, v109, v97);
      sub_1000269F0();
      v108 = v111;

      v112 = sub_100026BE0();
      (*(*(v112 - 8) + 8))(v54, v112);
      v113 = *(v98 + 8);
      v113(v110, v97);
      result = (v113)(v109, v97);
    }

    LOBYTE(v158) = v106 == 1;
    v114 = v132;
    v115 = v127;
    *v132 = v128;
    v114[1] = v115;
    v116 = v151;
    v114[2] = v143;
    v114[3] = v116;
    v117 = v156;
    v114[4] = v157;
    v114[5] = v117;
    v114[6] = v100;
    v114[7] = v101;
    v114[8] = v108;
    *(v114 + 72) = v106 == 1;
  }

  return result;
}

char *sub_100017CDC(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = sub_100026BE0();
  v4 = *(v3 - 8);
  v70 = v3;
  v71 = v4;
  v5 = __chkstk_darwin(v3);
  v69 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = &v56 - v7;
  v67 = sub_100026BF0();
  v8 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100026AF0();
  v10 = *(v64 - 8);
  v11 = __chkstk_darwin(v64);
  v63 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v65 = &v56 - v13;
  v14 = sub_100026B20();
  v15 = *(v14 + 16);
  v58 = a1;
  if (v15)
  {
    *&v73[0] = _swiftEmptyArrayStorage;
    sub_10000CF78(0, v15, 0);
    v16 = *&v73[0];
    v18 = *(v10 + 16);
    v17 = v10 + 16;
    v61 = v18;
    v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v56 = v14;
    v20 = v14 + v19;
    v60 = *(v17 + 56);
    v59 = (v8 + 8);
    v21 = (v17 - 8);
    v62 = v17;
    v22 = v65;
    do
    {
      v23 = v64;
      v24 = v61;
      v61(v22, v20, v64);
      v25 = v63;
      v24(v63, v22, v23);
      v26 = sub_100026AD0();
      v28 = v27;
      v29 = v66;
      sub_100026AE0();
      (*v59)(v29, v67);
      v30 = *v21;
      (*v21)(v25, v23);
      v30(v22, v23);
      *&v73[0] = v16;
      v32 = v16[2];
      v31 = v16[3];
      v33 = v16;
      if (v32 >= v31 >> 1)
      {
        sub_10000CF78((v31 > 1), v32 + 1, 1);
        v33 = *&v73[0];
      }

      v33[2] = v32 + 1;
      v34 = &v33[2 * v32];
      v34[4] = v26;
      v34[5] = v28;
      v20 += v60;
      --v15;
      v16 = v33;
    }

    while (v15);

    a1 = v58;
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v35 = sub_100026B10();
  v36 = sub_100026B00();
  v37 = *(v36 + 16);
  if (v37)
  {
    v65 = v35;
    v66 = v16;
    v72 = _swiftEmptyArrayStorage;
    sub_10000CF58(0, v37, 0);
    v38 = v72;
    v39 = *(v71 + 16);
    v40 = *(v71 + 80);
    v64 = v36;
    v41 = v36 + ((v40 + 32) & ~v40);
    v67 = *(v71 + 72);
    v71 += 16;
    v42 = (v71 - 8);
    v43 = v57;
    v44 = v68;
    do
    {
      v45 = v70;
      v39(v44, v41, v70);
      v46 = v69;
      v39(v69, v44, v45);

      sub_100017028(v46, v43, v73);
      (*v42)(v44, v45);
      v72 = v38;
      v48 = v38[2];
      v47 = v38[3];
      if (v48 >= v47 >> 1)
      {
        sub_10000CF58((v47 > 1), v48 + 1, 1);
        v43 = v57;
        v38 = v72;
      }

      v38[2] = v48 + 1;
      v49 = &v38[10 * v48];
      v49[2] = v73[0];
      v50 = v73[1];
      v51 = v73[2];
      v52 = v74[0];
      *(v49 + 89) = *(v74 + 9);
      v49[4] = v51;
      v49[5] = v52;
      v49[3] = v50;
      v41 += v67;
      --v37;
    }

    while (v37);
    v53 = sub_100026B30();
    (*(*(v53 - 8) + 8))(v58, v53);

    return v66;
  }

  else
  {

    v54 = sub_100026B30();
    (*(*(v54 - 8) + 8))(a1, v54);
  }

  return v16;
}

void *sub_1000182A8(uint64_t a1, uint64_t a2)
{
  v47 = sub_100026BF0();
  v4 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100026AF0();
  v6 = *(v45 - 8);
  v7 = __chkstk_darwin(v45);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v35 - v9;
  v10 = sub_100026B30();
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100026B80();
  v14 = *(v13 + 16);
  if (v14)
  {
    v36 = v12;
    v37 = a2;
    v38 = a1;
    v48 = _swiftEmptyArrayStorage;
    sub_10000CF78(0, v14, 0);
    v15 = v48;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v18 = *(v16 + 64);
    v35 = v13;
    v19 = v13 + ((v18 + 32) & ~v18);
    v40 = *(v16 + 56);
    v41 = v17;
    v39 = (v4 + 8);
    v20 = (v16 - 8);
    v42 = v16;
    do
    {
      v22 = v44;
      v21 = v45;
      v23 = v41;
      v41(v44, v19, v45);
      v24 = v43;
      v23(v43, v22, v21);
      v25 = sub_100026AD0();
      v27 = v26;
      v28 = v46;
      sub_100026AE0();
      (*v39)(v28, v47);
      v29 = *v20;
      (*v20)(v24, v21);
      v29(v22, v21);
      v48 = v15;
      v31 = v15[2];
      v30 = v15[3];
      if (v31 >= v30 >> 1)
      {
        sub_10000CF78((v30 > 1), v31 + 1, 1);
        v15 = v48;
      }

      v15[2] = v31 + 1;
      v32 = &v15[2 * v31];
      v32[4] = v25;
      v32[5] = v27;
      v19 += v40;
      --v14;
    }

    while (v14);

    a2 = v37;
    a1 = v38;
    v12 = v36;
  }

  else
  {

    v15 = _swiftEmptyArrayStorage;
  }

  sub_100026B70();
  sub_100017CDC(v12, a2);
  v33 = sub_100026B90();
  (*(*(v33 - 8) + 8))(a1, v33);
  return v15;
}

uint64_t sub_100018648(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v51 = sub_100026B90();
  v3 = *(v51 - 8);
  v4 = __chkstk_darwin(v51);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v41 - v6;
  sub_100006DB4(&qword_100038FA8, &qword_100029320);
  result = sub_100026FC0();
  v8 = 0;
  v52 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v42 = (v12 + 63) >> 6;
  v43 = v10;
  v50 = v3;
  v45 = v3 + 8;
  v46 = v3 + 16;
  v44 = result + 64;
  v47 = result;
  v15 = v51;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v54 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v56 = 16 * v19;
      v20 = *(v52 + 56);
      v21 = (*(v52 + 48) + 16 * v19);
      v22 = v21[1];
      v57 = *v21;
      v23 = v50;
      v24 = *(v50 + 16);
      v25 = v48;
      v24(v48, v20 + *(v50 + 72) * v19, v15);
      v26 = v49;
      v24(v49, v25, v15);
      v27 = v22;

      v28 = v53;

      v29 = sub_1000182A8(v26, v28);
      v31 = v30;
      v33 = v32;
      v55 = v34;
      (*(v23 + 8))(v25, v15);
      *(v44 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v47;
      v35 = (*(v47 + 48) + v56);
      *v35 = v57;
      v35[1] = v27;
      v36 = (*(result + 56) + 32 * v19);
      *v36 = v29;
      v36[1] = v31;
      v37 = v55;
      v36[2] = v33;
      v36[3] = v37;
      v38 = *(result + 16);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        break;
      }

      *(result + 16) = v40;
      v14 = v54;
      if (!v54)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v42)
      {
        return result;
      }

      v18 = *(v43 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v54 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100018930(uint64_t a1)
{
  v2 = sub_100026C10();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = __chkstk_darwin(v2);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v42 = &v39 - v5;
  v6 = sub_100026C40();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = __chkstk_darwin(v6);
  v39 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v39 - v9;
  v11 = sub_100026AC0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = sub_100026C50();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v39 - v23;
  sub_1000269E0();
  v25 = (*(v19 + 88))(v24, v18);
  if (v25 == enum case for MLModelStructure.neuralNetwork(_:))
  {
    (*(v19 + 96))(v24, v18);
    (*(v12 + 32))(v17, v24, v11);
    (*(v12 + 16))(v15, v17, v11);

    v26 = sub_1000166CC(v15, a1);
    (*(v12 + 8))(v17, v11);
    return v26;
  }

  if (v25 == enum case for MLModelStructure.program(_:))
  {
    (*(v19 + 96))(v24, v18);
    v27 = v44;
    v28 = v42;
    v29 = v24;
    v30 = v45;
    (*(v44 + 32))(v42, v29, v45);
    v31 = v43;
    (*(v27 + 16))(v43, v28, v30);
    v32 = sub_100026C00();

    v26 = sub_100018648(v32, a1);

    v33 = *(v27 + 8);
    v33(v31, v30);
    v33(v28, v30);
    return v26;
  }

  v34 = a1;
  if (v25 == enum case for MLModelStructure.pipeline(_:))
  {
    (*(v19 + 96))(v24, v18);
    v36 = v40;
    v35 = v41;
    (*(v40 + 32))(v10, v24, v41);
    v37 = v39;
    (*(v36 + 16))(v39, v10, v35);

    v26 = sub_100015154(v37, v34);
    (*(v36 + 8))(v10, v35);
    return v26;
  }

  if (v25 == enum case for MLModelStructure.unsupported(_:))
  {
    return 1;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_100026F00(26);
  v48._object = 0x800000010002C390;
  v48._countAndFlagsBits = 0xD000000000000018;
  sub_100026D60(v48);
  sub_1000269E0();
  sub_100026F90();
  (*(v19 + 8))(v22, v18);
  result = sub_100026FA0();
  __break(1u);
  return result;
}

uint64_t sub_100018F30()
{
  v38 = sub_100026870();
  v0 = *(v38 - 8);
  v1 = __chkstk_darwin(v38);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v31 - v3;
  v5 = sub_100026800();
  v6 = *(v5 + 16);
  if (v6 <= 3)
  {

    v7 = sub_100026E50();
    if (qword_1000388E8 != -1)
    {
LABEL_19:
      swift_once();
    }

    v8 = qword_100039808;
    sub_100006DB4(&qword_1000389F8, &unk_10002B960);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100027C10;
    v10 = sub_100026860();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100007E88();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_1000268E0(v7, &_mh_execute_header, v8, "Symlink failure code 1: %@", 26, 2, v9);

    return 0;
  }

  v32 = v0;
  type metadata accessor for ModelLocation(0);
  sub_100025CD8(v4);
  v36 = v4;
  v7 = sub_100026800();
  v14 = *(v5 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v6 - 1;
    v17 = (v32 + 8);
    v34 = (v32 + 32);
    v35 = v16;
    v18 = v5 + 40;
    v33 = (v32 + 8);
    while (1)
    {
      if (v15 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v15 >= *(v7 + 16))
      {
        v23 = v5;
        if (v35 == v15)
        {
          sub_100026D10();

          v39._countAndFlagsBits = 0x616B6361706C6D2ELL;
          v39._object = 0xEA00000000006567;
          sub_100026D70(v39);
          v17 = v33;
        }

        else
        {
        }

        v19 = v37;
        v20 = v36;
        sub_100026840();

        v21 = *v17;
        v22 = v38;
        (*v17)(v20, v38);
        (*v34)(v20, v19, v22);
        v5 = v23;
        if ((sub_100019724() & 1) == 0)
        {
          break;
        }
      }

      ++v15;
      v18 += 16;
      if (v14 == v15)
      {
        goto LABEL_14;
      }
    }

    v24 = sub_100026E50();
    if (qword_1000388E8 != -1)
    {
      swift_once();
    }

    v25 = qword_100039808;
    sub_100006DB4(&qword_1000389F8, &unk_10002B960);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100027C10;
    v27 = v36;
    v28 = sub_100026860();
    v30 = v29;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100007E88();
    *(v26 + 32) = v28;
    *(v26 + 40) = v30;
    sub_1000268E0(v24, &_mh_execute_header, v25, "Symlink failure code 3: %@", 26, 2, v26);

    v21(v27, v38);
    return 0;
  }

LABEL_14:

  (*(v32 + 8))(v36, v38);
  return 1;
}

uint64_t sub_100019380()
{
  v0 = sub_100006DB4(&qword_100038FC0, &qword_100029338);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = sub_100026870();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000267F0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_100019724() & 1) == 0)
  {
    return 0;
  }

  v28 = v4;
  v11 = [objc_opt_self() defaultManager];
  sub_100006DB4(&qword_100038FC8, &qword_100029340);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000290C0;
  *(v12 + 32) = NSURLIsRegularFileKey;
  *(v12 + 40) = NSURLIsDirectoryKey;
  v13 = NSURLIsRegularFileKey;
  v14 = NSURLIsDirectoryKey;
  v15 = sub_100026E30();

  if (!v15)
  {

    return 0;
  }

  v25 = v11;
  v26 = v8;
  v27 = v7;
  v24 = v15;
  sub_100026E20();
  sub_1000267E0();
  if (v29)
  {
    v16 = (v28 + 56);
    v17 = (v28 + 32);
    v18 = (v28 + 8);
    do
    {
      v19 = swift_dynamicCast();
      v20 = *v16;
      if (v19)
      {
        v20(v2, 0, 1, v3);
        (*v17)(v6, v2, v3);
        v21 = sub_100019724();
        (*v18)(v6, v3);
        if ((v21 & 1) == 0)
        {
          (*(v26 + 8))(v10, v27);

          return 0;
        }
      }

      else
      {
        v20(v2, 1, 1, v3);
        sub_10000A350(v2, &qword_100038FC0, &qword_100029338);
      }

      sub_1000267E0();
    }

    while (v29);
  }

  (*(v26 + 8))(v10, v27);

  return 1;
}

uint64_t sub_100019724()
{
  v0 = sub_100006DB4(&qword_100038FD0, &qword_100029348);
  v1 = __chkstk_darwin(v0 - 8);
  v30 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v5 = &v30 - v4;
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  v8 = sub_100026E50();
  if (qword_1000388E8 != -1)
  {
    swift_once();
  }

  v9 = qword_100039808;
  v33 = sub_100006DB4(&qword_1000389F8, &unk_10002B960);
  v10 = swift_allocObject();
  v32 = xmmword_100027C10;
  *(v10 + 16) = xmmword_100027C10;
  v11 = sub_100026860();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v31 = sub_100007E88();
  *(v10 + 64) = v31;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v34 = v9;
  sub_1000268E0(v8, &_mh_execute_header, v9, "Checking %@ is not a symlink", 28, 2, v10);

  sub_100006DB4(&qword_100038FC8, &qword_100029340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000290C0;
  *(inited + 32) = NSURLIsRegularFileKey;
  *(inited + 40) = NSURLIsDirectoryKey;
  v15 = NSURLIsRegularFileKey;
  v16 = NSURLIsDirectoryKey;
  sub_100019B8C(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  sub_100026810();

  v17 = sub_1000267C0();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v7, 0, 1, v17);
  sub_100019D80(v7, v5);
  v19 = *(v18 + 48);
  if (v19(v5, 1, v17) == 1)
  {
    goto LABEL_4;
  }

  v20 = sub_1000267B0();
  v21 = *(v18 + 8);
  v21(v5, v17);
  if (v20 == 2)
  {
    goto LABEL_6;
  }

  v5 = v30;
  sub_100019D80(v7, v30);
  if (v19(v5, 1, v17) == 1)
  {
LABEL_4:
    sub_10000A350(v5, &qword_100038FD0, &qword_100029348);
  }

  else
  {
    v29 = sub_1000267A0();
    v21(v5, v17);
    if (v29 != 2)
    {
      sub_10000A350(v7, &qword_100038FD0, &qword_100029348);
      v27 = v20 | v29;
      return v27 & 1;
    }
  }

LABEL_6:
  v22 = sub_100026E50();
  v23 = swift_allocObject();
  *(v23 + 16) = v32;
  v24 = sub_100026860();
  v25 = v31;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = v25;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  sub_1000268E0(v22, &_mh_execute_header, v34, "Symlink found: %@", 17, 2, v23);

  sub_10000A350(v7, &qword_100038FD0, &qword_100029348);
  v27 = 0;
  return v27 & 1;
}

void *sub_100019B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006DB4(&qword_100038FD8, &unk_100029350);
    v3 = sub_100026EF0();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_100026CC0();
      sub_1000271A0();
      v27 = v7;
      sub_100026D30();
      v8 = sub_1000271C0();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_100026CC0();
        v18 = v17;
        if (v16 == sub_100026CC0() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_100027130();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100019D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006DB4(&qword_100038FD0, &qword_100029348);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019DF0()
{
  v1 = 0x73656C706D6173;
  if (*v0 != 1)
  {
    v1 = 0x617265704F6D756ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

uint64_t sub_100019E5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001A32C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100019E90(uint64_t a1)
{
  v2 = sub_10001A144();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100019ECC(uint64_t a1)
{
  v2 = sub_10001A144();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100019F08()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100019F64(void *a1)
{
  v3 = v1;
  v5 = sub_100006DB4(&qword_1000390F0, &qword_1000293B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100006DFC(a1, a1[3]);
  sub_10001A144();
  sub_1000271E0();
  v12 = 0;
  sub_1000270A0();
  if (!v2)
  {
    v11 = *(v3 + 32);
    v10[15] = 1;
    sub_100006DB4(&qword_100038F18, &qword_1000293C0);
    sub_10001A198();
    sub_1000270F0();
    v10[14] = 2;
    sub_100027100();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10001A144()
{
  result = qword_1000390F8;
  if (!qword_1000390F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000390F8);
  }

  return result;
}

unint64_t sub_10001A198()
{
  result = qword_100039100;
  if (!qword_100039100)
  {
    sub_100006F18(&qword_100038F18, &qword_1000293C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039100);
  }

  return result;
}

unint64_t sub_10001A228()
{
  result = qword_100039108;
  if (!qword_100039108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039108);
  }

  return result;
}

unint64_t sub_10001A280()
{
  result = qword_100039110;
  if (!qword_100039110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039110);
  }

  return result;
}

unint64_t sub_10001A2D8()
{
  result = qword_100039118;
  if (!qword_100039118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039118);
  }

  return result;
}

uint64_t sub_10001A32C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656C706D6173 && a2 == 0xE700000000000000 || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617265704F6D756ELL && a2 == 0xED0000736E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_100027130();

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

uint64_t sub_10001A454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10001A49C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A4E8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10001A500(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001A524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_10001A56C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A5D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001A620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10001A674(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10001A68C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 sub_10001A6EC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001A6F8(uint64_t *a1, int a2)
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

uint64_t sub_10001A740(uint64_t result, int a2, int a3)
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

__n128 sub_10001A7A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001A7C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10001A80C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A870(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10001A8BC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t _s11DeviceUsageV12SupportStateOwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s11DeviceUsageV12SupportStateOwet(uint64_t a1, int a2)
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

uint64_t _s11DeviceUsageV12SupportStateOwst(uint64_t result, int a2, int a3)
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

uint64_t sub_10001A970(uint64_t a1)
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

uint64_t sub_10001A98C(uint64_t result, int a2)
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

uint64_t sub_10001A9BC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10001A9E4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100006DB4(&qword_1000391B0, &qword_100029BC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100006DFC(a1, a1[3]);
  sub_10001F2AC();
  sub_1000271E0();
  v12 = 0;
  sub_1000270C0();
  if (!v3)
  {
    v11 = 1;
    sub_10001F354();
    sub_1000270F0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10001AB60(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = a2;
  v4 = sub_100006DB4(&qword_1000392A8, &qword_100029C10);
  v18 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = sub_100006DB4(&qword_1000392B0, &qword_100029C18);
  v16 = *(v7 - 8);
  v17 = v7;
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = sub_100006DB4(&qword_1000392B8, &qword_100029C20);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  sub_100006DFC(a1, a1[3]);
  sub_100020E74();
  sub_1000271E0();
  if (v20)
  {
    v22 = 1;
    sub_100020EC8();
    sub_100027080();
    sub_1000270C0();
    (*(v18 + 8))(v6, v4);
  }

  else
  {
    v21 = 0;
    sub_100020F1C();
    sub_100027080();
    sub_100020FC4();
    v15 = v17;
    sub_1000270F0();
    (*(v16 + 8))(v9, v15);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10001AE84(void *a1, uint64_t a2)
{
  v4 = sub_100006DB4(&qword_100039348, &qword_100029C58);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100006DFC(a1, a1[3]);
  sub_100021288();
  sub_1000271E0();
  v9[1] = a2;
  sub_100006DB4(&qword_100039330, &qword_100029C50);
  sub_1000213B4();
  sub_1000270F0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10001AFE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a4;
  v16 = a5;
  v9 = sub_100006DB4(&qword_1000393B0, &qword_100029C80);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_100006DFC(a1, a1[3]);
  sub_1000217C8();
  sub_1000271E0();
  v17 = a2;
  v20 = 0;
  sub_100006DB4(&qword_1000391E8, &qword_100029BD8);
  sub_100020C1C();
  sub_1000270F0();
  if (!v5)
  {
    v17 = a3;
    v18 = v15;
    v19 = v16;
    v20 = 1;
    sub_100020D78();
    sub_1000270F0();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10001B198(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = sub_100006DB4(&qword_100039300, &qword_100029C40);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_100006DFC(a1, a1[3]);
  sub_100021018();
  sub_1000271E0();
  v15 = a2;
  v14 = 0;
  sub_100006DB4(&qword_1000391E8, &qword_100029BD8);
  sub_100020C1C();
  sub_1000270F0();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    sub_100006DB4(&qword_1000392D8, &qword_100029C30);
    sub_100021144(&qword_100039308, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000270F0();
    v15 = a4;
    v14 = 2;
    sub_100006DB4(&qword_1000392E8, &qword_100029C38);
    sub_1000211B0();
    sub_1000270F0();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10001B3D4(void *a1)
{
  v3 = v1;
  v5 = sub_100006DB4(&qword_100039228, &qword_100029BE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100006DFC(a1, a1[3]);
  sub_10002079C();
  sub_1000271E0();
  LOBYTE(v10) = 0;
  sub_1000270C0();
  if (!v2)
  {
    *&v10 = *(v3 + 16);
    v12 = 1;
    sub_100006DB4(&qword_1000391D0, &qword_100029BD0);
    sub_100020B44(&qword_100039230, sub_100020BC8, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_1000270F0();
    *&v10 = *(v3 + 24);
    v12 = 2;
    sub_100006DB4(&qword_1000391E8, &qword_100029BD8);
    sub_100020C1C();
    sub_1000270F0();
    *&v10 = *(v3 + 32);
    v12 = 3;
    sub_100006DB4(&qword_100039200, &qword_100029BE0);
    sub_100020CF4();
    sub_1000270F0();
    v10 = *(v3 + 40);
    v11 = *(v3 + 56);
    v12 = 4;
    sub_100020DCC();
    sub_1000270B0();
    *&v10 = *(v3 + 64);
    BYTE8(v10) = *(v3 + 72);
    v12 = 5;
    sub_100020E20();
    sub_1000270B0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10001B6D4(void *a1, uint64_t a2)
{
  v4 = sub_100006DB4(&qword_100039388, &qword_100029C70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100006DFC(a1, a1[3]);
  sub_100021648();
  sub_1000271E0();
  v9[1] = a2;
  sub_100006DB4(&qword_100039370, &qword_100029C68);
  sub_10002169C(&qword_100039390, sub_100021774, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  sub_1000270F0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10001B868(void *a1)
{
  v3 = v1;
  v5 = sub_100006DB4(&qword_100039408, &qword_100029CA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100006DFC(a1, a1[3]);
  sub_1000221F4();
  sub_1000271E0();
  LOBYTE(v10) = 0;
  sub_1000270C0();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_1000270C0();
    *&v10 = *(v3 + 32);
    v12 = 2;
    sub_100006DB4(&qword_1000392D8, &qword_100029C30);
    sub_100021144(&qword_100039308, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000270F0();
    *&v10 = *(v3 + 40);
    v12 = 3;
    sub_1000270F0();
    v10 = *(v3 + 48);
    v11 = *(v3 + 64);
    v12 = 4;
    sub_100020DCC();
    sub_1000270B0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10001BAFC(void *a1, uint64_t a2)
{
  v4 = sub_100006DB4(&qword_1000393E0, &qword_100029C98);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100006DFC(a1, a1[3]);
  sub_100021FF0();
  sub_1000271E0();
  v9[1] = a2;
  sub_100006DB4(&qword_1000393C8, &qword_100029C90);
  sub_10002211C();
  sub_1000270F0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10001BC58(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100006DB4(&qword_1000396E0, &qword_10002B490);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_100006DFC(a1, a1[3]);
  sub_1000254AC();
  sub_1000271E0();
  v14 = a2;
  v13 = 0;
  sub_100006DB4(&qword_1000392D8, &qword_100029C30);
  sub_100021144(&qword_100039308, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1000270F0();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_100006DB4(&qword_1000396F0, &qword_10002B498);
    sub_100025500();
    sub_1000270F0();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10001BE3C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v40 = a4;
  v39 = a3;
  v42 = a2;
  v5 = sub_100006DB4(&qword_100039120, &qword_100029B88);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = &v28 - v6;
  v7 = sub_100006DB4(&qword_100039128, &qword_100029B90);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v29 = &v28 - v8;
  v9 = sub_100006DB4(&qword_100039130, &qword_100029B98);
  v37 = *(v9 - 8);
  v38 = v9;
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_100006DB4(&qword_100039138, &qword_100029BA0);
  v36 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = sub_100006DB4(&qword_100039140, &qword_100029BA8);
  v35 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v43 = sub_100006DB4(&qword_100039148, &qword_100029BB0);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v19 = &v28 - v18;
  sub_100006DFC(a1, a1[3]);
  sub_10001E9F0();
  sub_1000271E0();
  if (v40 <= 1u)
  {
    if (v40)
    {
      LOBYTE(v44) = 1;
      sub_10001EB94();
      v20 = v43;
      sub_100027080();
      v44 = v42;
      sub_10001EBE8();
      sub_1000270F0();
      (*(v36 + 8))(v14, v12);
    }

    else
    {
      LOBYTE(v44) = 0;
      sub_10001EC3C();
      v20 = v43;
      sub_100027080();
      v44 = v42;
      sub_10001EC90();
      sub_1000270F0();
      (*(v35 + 8))(v17, v15);
    }

    return (*(v41 + 8))(v19, v20);
  }

  if (v40 == 2)
  {
    LOBYTE(v44) = 2;
    sub_10001EAEC();
    v20 = v43;
    sub_100027080();
    v44 = v42;
    v45 = v39;
    sub_10001EB40();
    v21 = v38;
    sub_1000270F0();
    (*(v37 + 8))(v11, v21);
    return (*(v41 + 8))(v19, v20);
  }

  v23 = (v41 + 8);
  if (v42 | v39)
  {
    LOBYTE(v44) = 4;
    sub_10001EA44();
    v24 = v32;
    v25 = v43;
    sub_100027080();
    v27 = v33;
    v26 = v34;
  }

  else
  {
    LOBYTE(v44) = 3;
    sub_10001EA98();
    v24 = v29;
    v25 = v43;
    sub_100027080();
    v27 = v30;
    v26 = v31;
  }

  (*(v27 + 8))(v24, v26);
  return (*v23)(v19, v25);
}

uint64_t sub_10001C438(void *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v17 = a2;
  v4 = sub_100006DB4(&qword_100039498, &qword_100029CE8);
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v16 = sub_100006DB4(&qword_1000394A0, &qword_100029CF0);
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v16 - v8;
  v10 = sub_100006DB4(&qword_1000394A8, &qword_100029CF8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  sub_100006DFC(a1, a1[3]);
  sub_100023A6C();
  sub_1000271E0();
  if (v21)
  {
    v22 = 0;
    sub_100023B68();
    sub_100027080();
    (*(v7 + 8))(v9, v16);
  }

  else
  {
    v23 = 1;
    sub_100023AC0();
    sub_100027080();
    v20 = v17;
    sub_100023BBC();
    v15 = v19;
    sub_1000270F0();
    (*(v18 + 8))(v6, v15);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10001C744(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v14 = a3;
  v8 = sub_100006DB4(&qword_100039448, &qword_100029CC8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_100006DFC(a1, a1[3]);
  sub_100023808();
  sub_1000271E0();
  v16 = a2;
  v15 = 0;
  sub_100006DB4(&qword_1000389C0, &qword_100027DE8);
  sub_100006E94();
  sub_1000270F0();
  if (!v4)
  {
    LOBYTE(v16) = v14;
    v15 = 1;
    sub_100006F60();
    sub_1000270F0();
    v16 = a4;
    v15 = 2;
    sub_100006DB4(&qword_100039430, &qword_100029CC0);
    sub_100023988(&qword_100039450, sub_100006F60, sub_100023A18, &protocol conformance descriptor for <> [A : B]);
    sub_1000270F0();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10001C98C(uint64_t a1)
{
  v2 = sub_100025584();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001C9C8(uint64_t a1)
{
  v2 = sub_100025584();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001CA48(uint64_t a1)
{
  v2 = sub_10002562C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001CA84(uint64_t a1)
{
  v2 = sub_10002562C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001CB2C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_100006DB4(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_100006DFC(a1, a1[3]);
  a6();
  sub_1000271E0();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10001CC4C()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_10001CC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_100027130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100027130();

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

uint64_t sub_10001CD4C(uint64_t a1)
{
  v2 = sub_10001F2AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001CD88(uint64_t a1)
{
  v2 = sub_10001F2AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001CDC4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001F0C8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10001CE0C()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_10001CE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_100027130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100027130();

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

uint64_t sub_10001CF14(uint64_t a1)
{
  v2 = sub_100020E74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001CF50(uint64_t a1)
{
  v2 = sub_100020E74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001CFA4(uint64_t a1)
{
  v2 = sub_100020EC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001CFE0(uint64_t a1)
{
  v2 = sub_100020EC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D01C(uint64_t a1)
{
  v2 = sub_100020F1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D058(uint64_t a1)
{
  v2 = sub_100020F1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10001D094@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001F3A8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10001D0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73676E69646E6962 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100027130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001D17C(uint64_t a1)
{
  v2 = sub_100021288();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D1B8(uint64_t a1)
{
  v2 = sub_100021288();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10001D1F4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001F88C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001D23C()
{
  if (*v0)
  {
    return 0x6B636F6C62;
  }

  else
  {
    return 0x737475706E69;
  }
}

uint64_t sub_10001D270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737475706E69 && a2 == 0xE600000000000000;
  if (v6 || (sub_100027130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B636F6C62 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100027130();

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

uint64_t sub_10001D344(uint64_t a1)
{
  v2 = sub_1000217C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D380(uint64_t a1)
{
  v2 = sub_1000217C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D3BC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001FA10(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10001D40C()
{
  v1 = 0x614E74757074756FLL;
  if (*v0 != 1)
  {
    v1 = 0x6F6974617265706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737475706E69;
  }
}

uint64_t sub_10001D470@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001FC18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001D498(uint64_t a1)
{
  v2 = sub_100021018();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D4D4(uint64_t a1)
{
  v2 = sub_100021018();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D510@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001FD38(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_10001D560()
{
  v1 = *v0;
  v2 = 0x726F74617265706FLL;
  v3 = 0x736B636F6C62;
  v4 = 0x7355656369766564;
  if (v1 != 4)
  {
    v4 = 1953722211;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x737475706E69;
  if (v1 != 1)
  {
    v5 = 0x7374757074756FLL;
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

uint64_t sub_10001D61C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001FFF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001D644(uint64_t a1)
{
  v2 = sub_10002079C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D680(uint64_t a1)
{
  v2 = sub_10002079C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10001D6BC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000201F4(a2, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 57) = *(v7 + 9);
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10001D73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6974636E7566 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100027130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001D7CC(uint64_t a1)
{
  v2 = sub_100021648();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D808(uint64_t a1)
{
  v2 = sub_100021648();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10001D844@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002148C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001D88C()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6D614E7475706E69;
  v4 = 0x614E74757074756FLL;
  if (v1 != 3)
  {
    v4 = 0x7355656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t sub_10001D92C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002181C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001D954(uint64_t a1)
{
  v2 = sub_1000221F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D990(uint64_t a1)
{
  v2 = sub_1000221F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10001D9CC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000219DC(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10001DA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726579616CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100027130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001DAD0(uint64_t a1)
{
  v2 = sub_100021FF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DB0C(uint64_t a1)
{
  v2 = sub_100021FF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10001DB48@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100021E6C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001DBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6C65646F4D627573 && a2 == 0xED000073656D614ELL;
  if (v5 || (sub_100027130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C65646F4D627573 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100027130();

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

uint64_t sub_10001DCAC(uint64_t a1)
{
  v2 = sub_1000254AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DCE8(uint64_t a1)
{
  v2 = sub_1000254AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001DD24@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000222B0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10001DD6C()
{
  v1 = *v0;
  v2 = 0x654E6C617275656ELL;
  v3 = 0x656E696C65706970;
  v4 = 0x7974706D65;
  if (v1 != 3)
  {
    v4 = 0x726F707075736E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6172676F7270;
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

uint64_t sub_10001DE18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000224E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001DE4C(uint64_t a1)
{
  v2 = sub_10001E9F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DE88(uint64_t a1)
{
  v2 = sub_10001E9F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001DEC4(uint64_t a1)
{
  v2 = sub_10001EA98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DF00(uint64_t a1)
{
  v2 = sub_10001EA98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001DF3C(uint64_t a1)
{
  v2 = sub_10001EC3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DF78(uint64_t a1)
{
  v2 = sub_10001EC3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001DFB4(uint64_t a1)
{
  v2 = sub_10001EAEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DFF0(uint64_t a1)
{
  v2 = sub_10001EAEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E02C(uint64_t a1)
{
  v2 = sub_10001EB94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E068(uint64_t a1)
{
  v2 = sub_10001EB94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E0A4(uint64_t a1)
{
  v2 = sub_10001EA44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E0E0(uint64_t a1)
{
  v2 = sub_10001EA44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E11C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10002269C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_10001E16C()
{
  if (*v0)
  {
    return 0x726F707075736E75;
  }

  else
  {
    return 0x6574726F70707573;
  }
}

uint64_t sub_10001E1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574726F70707573 && a2 == 0xE900000000000064;
  if (v6 || (sub_100027130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F707075736E75 && a2 == 0xEB00000000646574)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100027130();

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

uint64_t sub_10001E29C(uint64_t a1)
{
  v2 = sub_100023A6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E2D8(uint64_t a1)
{
  v2 = sub_100023A6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E314(uint64_t a1)
{
  v2 = sub_100023B68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E350(uint64_t a1)
{
  v2 = sub_100023B68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100027130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001E40C(uint64_t a1)
{
  v2 = sub_100023AC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E448(uint64_t a1)
{
  v2 = sub_100023AC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10001E484@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100022F60(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_10001E4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010002C4F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_100027130();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10001E588(uint64_t a1)
{
  v2 = sub_100025680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E5C4(uint64_t a1)
{
  v2 = sub_100025680();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E600@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100006DB4(&qword_100039738, &qword_10002B4C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100006DFC(a1, a1[3]);
  sub_100025680();
  sub_1000271D0();
  if (v2)
  {
    return sub_10000E764(a1);
  }

  v9 = sub_100027050();
  (*(v6 + 8))(v8, v5);
  result = sub_10000E764(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_10001E760(void *a1)
{
  v2 = sub_100006DB4(&qword_100039748, &qword_10002B4C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100006DFC(a1, a1[3]);
  sub_100025680();
  sub_1000271E0();
  sub_1000270E0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_10001E898()
{
  v1 = 0x6572726566657270;
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
    return 0x6574726F70707573;
  }
}

uint64_t sub_10001E8F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100023424(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001E920(uint64_t a1)
{
  v2 = sub_100023808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E95C(uint64_t a1)
{
  v2 = sub_100023808();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E998@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100023554(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_10001E9F0()
{
  result = qword_100039150;
  if (!qword_100039150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039150);
  }

  return result;
}

unint64_t sub_10001EA44()
{
  result = qword_100039158;
  if (!qword_100039158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039158);
  }

  return result;
}

unint64_t sub_10001EA98()
{
  result = qword_100039160;
  if (!qword_100039160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039160);
  }

  return result;
}

unint64_t sub_10001EAEC()
{
  result = qword_100039168;
  if (!qword_100039168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039168);
  }

  return result;
}

unint64_t sub_10001EB40()
{
  result = qword_100039170;
  if (!qword_100039170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039170);
  }

  return result;
}

unint64_t sub_10001EB94()
{
  result = qword_100039178;
  if (!qword_100039178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039178);
  }

  return result;
}

unint64_t sub_10001EBE8()
{
  result = qword_100039180;
  if (!qword_100039180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039180);
  }

  return result;
}

unint64_t sub_10001EC3C()
{
  result = qword_100039188;
  if (!qword_100039188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039188);
  }

  return result;
}

unint64_t sub_10001EC90()
{
  result = qword_100039190;
  if (!qword_100039190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039190);
  }

  return result;
}

uint64_t sub_10001ECF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746867696577 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100027130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001ED7C(uint64_t a1)
{
  v2 = sub_1000255D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001EDB8(uint64_t a1)
{
  v2 = sub_1000255D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001EDF4@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_100006DB4(&qword_100039710, &qword_10002B4A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100006DFC(a1, a1[3]);
  sub_1000255D8();
  sub_1000271D0();
  if (v2)
  {
    return sub_10000E764(a1);
  }

  sub_100027040();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  result = sub_10000E764(a1);
  *a2 = v10;
  return result;
}

uint64_t sub_10001EF5C(void *a1)
{
  v2 = sub_100006DB4(&qword_100039720, &qword_10002B4B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100006DFC(a1, a1[3]);
  sub_1000255D8();
  sub_1000271E0();
  sub_1000270D0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10001F094()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001F0C8(void *a1)
{
  v3 = sub_100006DB4(&qword_100039198, &qword_100029BB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_10001F2AC();
  sub_1000271D0();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_100027030();
    v9[14] = 1;
    sub_10001F300();
    sub_100027060();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000E764(a1);
  return v7;
}

unint64_t sub_10001F2AC()
{
  result = qword_1000391A0;
  if (!qword_1000391A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000391A0);
  }

  return result;
}

unint64_t sub_10001F300()
{
  result = qword_1000391A8;
  if (!qword_1000391A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000391A8);
  }

  return result;
}

unint64_t sub_10001F354()
{
  result = qword_1000391B8;
  if (!qword_1000391B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000391B8);
  }

  return result;
}

void *sub_10001F3A8(void *a1)
{
  v2 = sub_100006DB4(&qword_100039270, &qword_100029BF0);
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = &v24 - v3;
  v5 = sub_100006DB4(&qword_100039278, &qword_100029BF8);
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_100006DB4(&qword_100039280, &unk_100029C00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = a1[3];
  v29 = a1;
  v13 = sub_100006DFC(a1, v12);
  sub_100020E74();
  v14 = v28;
  sub_1000271D0();
  if (!v14)
  {
    v24 = v5;
    v15 = v27;
    v28 = v9;
    v16 = sub_100027070();
    v17 = v8;
    if (*(v16 + 16) == 1)
    {
      v18 = v28;
      if (*(v16 + 32))
      {
        v31 = 1;
        sub_100020EC8();
        sub_100027000();
        v13 = sub_100027030();
        (*(v26 + 8))(v4, v15);
        (*(v18 + 8))(v11, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        sub_100020F1C();
        sub_100027000();
        sub_100020F70();
        v23 = v24;
        sub_100027060();
        (*(v25 + 8))(v7, v23);
        (*(v18 + 8))(v11, v17);
        swift_unknownObjectRelease();
        v13 = 0;
      }
    }

    else
    {
      v13 = v11;
      v19 = sub_100026F30();
      swift_allocError();
      v21 = v20;
      sub_100006DB4(&qword_100038E68, &qword_100028CB0);
      *v21 = &_s14ModelStructureO7ProgramV7BindingON;
      sub_100027010();
      sub_100026F20();
      (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
      swift_willThrow();
      (*(v28 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  sub_10000E764(v29);
  return v13;
}

void *sub_10001F88C(void *a1)
{
  v3 = sub_100006DB4(&qword_100039320, &qword_100029C48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100006DFC(a1, a1[3]);
  sub_100021288();
  sub_1000271D0();
  if (v1)
  {
    sub_10000E764(a1);
  }

  else
  {
    sub_100006DB4(&qword_100039330, &qword_100029C50);
    sub_1000212DC();
    sub_100027060();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000E764(a1);
  }

  return v7;
}

uint64_t sub_10001FA10(void *a1)
{
  v2 = sub_100006DB4(&qword_1000393A0, &qword_100029C78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100006DFC(a1, a1[3]);
  sub_1000217C8();
  sub_1000271D0();
  sub_100006DB4(&qword_1000391E8, &qword_100029BD8);
  v9 = 0;
  sub_100020884();
  sub_100027060();
  v7 = v8;
  v9 = 1;
  sub_1000209E0();
  sub_100027060();
  (*(v3 + 8))(v5, v2);
  sub_10000E764(a1);
  return v7;
}

uint64_t sub_10001FC18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737475706E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E74757074756FLL && a2 == 0xEB0000000073656DLL || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEA0000000000736ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_100027130();

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

uint64_t sub_10001FD38(void *a1)
{
  v2 = sub_100006DB4(&qword_1000392C8, &qword_100029C28);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100006DFC(a1, a1[3]);
  sub_100021018();
  sub_1000271D0();
  sub_100006DB4(&qword_1000391E8, &qword_100029BD8);
  v9 = 0;
  sub_100020884();
  sub_100027060();
  v7 = v10;
  sub_100006DB4(&qword_1000392D8, &qword_100029C30);
  v9 = 1;
  sub_100021144(&qword_1000392E0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_100027060();
  sub_100006DB4(&qword_1000392E8, &qword_100029C38);
  v9 = 2;
  sub_10002106C();
  sub_100027060();
  (*(v3 + 8))(v5, v2);
  sub_10000E764(a1);
  return v7;
}

uint64_t sub_10001FFF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F74617265706FLL && a2 == 0xEC000000656D614ELL;
  if (v4 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737475706E69 && a2 == 0xE600000000000000 || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7374757074756FLL && a2 == 0xE700000000000000 || (sub_100027130() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736B636F6C62 && a2 == 0xE600000000000000 || (sub_100027130() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7355656369766564 && a2 == 0xEB00000000656761 || (sub_100027130() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1953722211 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_100027130();

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

uint64_t sub_1000201F4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100006DB4(&qword_1000391C0, &qword_100029BC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_100006DFC(a1, a1[3]);
  sub_10002079C();
  sub_1000271D0();
  if (v2)
  {
    return sub_10000E764(a1);
  }

  LOBYTE(v30) = 0;
  v9 = sub_100027030();
  v11 = v10;
  sub_100006DB4(&qword_1000391D0, &qword_100029BD0);
  LOBYTE(v26) = 1;
  sub_100020B44(&qword_1000391D8, sub_100020830, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  sub_100027060();
  v25 = v30;
  sub_100006DB4(&qword_1000391E8, &qword_100029BD8);
  LOBYTE(v26) = 2;
  sub_100020884();
  sub_100027060();
  v23 = v30;
  sub_100006DB4(&qword_100039200, &qword_100029BE0);
  LOBYTE(v26) = 3;
  sub_10002095C();
  v22 = 0;
  sub_100027060();
  v20 = v30;
  LOBYTE(v26) = 4;
  sub_100020A34();
  sub_100027020();
  v24 = v30;
  v21 = v31;
  v19 = v32;
  v43 = 5;
  sub_100020A88();
  sub_100027020();
  (*(v6 + 8))(v8, v5);
  v22 = v40;
  v12 = v41;
  v42 = v41;
  *&v26 = v9;
  v13 = v25;
  *(&v26 + 1) = v11;
  *&v27 = v25;
  v14 = v23;
  v15 = v20;
  *(&v27 + 1) = v23;
  *&v28 = v20;
  *(&v28 + 1) = v24;
  *v29 = v21;
  *&v29[8] = v19;
  *&v29[16] = v40;
  v29[24] = v41;
  sub_100020ADC(&v26, &v30);
  sub_10000E764(a1);
  v30 = v9;
  v31 = v11;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v24;
  v36 = v21;
  v37 = v19;
  v38 = v22;
  v39 = v12;
  result = sub_100020B14(&v30);
  v17 = *v29;
  a2[2] = v28;
  a2[3] = v17;
  *(a2 + 57) = *&v29[9];
  v18 = v27;
  *a2 = v26;
  a2[1] = v18;
  return result;
}

unint64_t sub_10002079C()
{
  result = qword_1000391C8;
  if (!qword_1000391C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000391C8);
  }

  return result;
}

uint64_t sub_1000207F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100020830()
{
  result = qword_1000391E0;
  if (!qword_1000391E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000391E0);
  }

  return result;
}

unint64_t sub_100020884()
{
  result = qword_1000391F0;
  if (!qword_1000391F0)
  {
    sub_100006F18(&qword_1000391E8, &qword_100029BD8);
    sub_100020908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000391F0);
  }

  return result;
}

unint64_t sub_100020908()
{
  result = qword_1000391F8;
  if (!qword_1000391F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000391F8);
  }

  return result;
}

unint64_t sub_10002095C()
{
  result = qword_100039208;
  if (!qword_100039208)
  {
    sub_100006F18(&qword_100039200, &qword_100029BE0);
    sub_1000209E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039208);
  }

  return result;
}

unint64_t sub_1000209E0()
{
  result = qword_100039210;
  if (!qword_100039210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039210);
  }

  return result;
}

unint64_t sub_100020A34()
{
  result = qword_100039218;
  if (!qword_100039218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039218);
  }

  return result;
}

unint64_t sub_100020A88()
{
  result = qword_100039220;
  if (!qword_100039220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039220);
  }

  return result;
}

uint64_t sub_100020B44(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006F18(&qword_1000391D0, &qword_100029BD0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100020BC8()
{
  result = qword_100039238;
  if (!qword_100039238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039238);
  }

  return result;
}

unint64_t sub_100020C1C()
{
  result = qword_100039240;
  if (!qword_100039240)
  {
    sub_100006F18(&qword_1000391E8, &qword_100029BD8);
    sub_100020CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039240);
  }

  return result;
}

unint64_t sub_100020CA0()
{
  result = qword_100039248;
  if (!qword_100039248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039248);
  }

  return result;
}

unint64_t sub_100020CF4()
{
  result = qword_100039250;
  if (!qword_100039250)
  {
    sub_100006F18(&qword_100039200, &qword_100029BE0);
    sub_100020D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039250);
  }

  return result;
}

unint64_t sub_100020D78()
{
  result = qword_100039258;
  if (!qword_100039258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039258);
  }

  return result;
}

unint64_t sub_100020DCC()
{
  result = qword_100039260;
  if (!qword_100039260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039260);
  }

  return result;
}

unint64_t sub_100020E20()
{
  result = qword_100039268;
  if (!qword_100039268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039268);
  }

  return result;
}

unint64_t sub_100020E74()
{
  result = qword_100039288;
  if (!qword_100039288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039288);
  }

  return result;
}

unint64_t sub_100020EC8()
{
  result = qword_100039290;
  if (!qword_100039290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039290);
  }

  return result;
}

unint64_t sub_100020F1C()
{
  result = qword_100039298;
  if (!qword_100039298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039298);
  }

  return result;
}

unint64_t sub_100020F70()
{
  result = qword_1000392A0;
  if (!qword_1000392A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000392A0);
  }

  return result;
}

unint64_t sub_100020FC4()
{
  result = qword_1000392C0;
  if (!qword_1000392C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000392C0);
  }

  return result;
}

unint64_t sub_100021018()
{
  result = qword_1000392D0;
  if (!qword_1000392D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000392D0);
  }

  return result;
}

unint64_t sub_10002106C()
{
  result = qword_1000392F0;
  if (!qword_1000392F0)
  {
    sub_100006F18(&qword_1000392E8, &qword_100029C38);
    sub_1000210F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000392F0);
  }

  return result;
}

unint64_t sub_1000210F0()
{
  result = qword_1000392F8;
  if (!qword_1000392F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000392F8);
  }

  return result;
}

uint64_t sub_100021144(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006F18(&qword_1000392D8, &qword_100029C30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000211B0()
{
  result = qword_100039310;
  if (!qword_100039310)
  {
    sub_100006F18(&qword_1000392E8, &qword_100029C38);
    sub_100021234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039310);
  }

  return result;
}

unint64_t sub_100021234()
{
  result = qword_100039318;
  if (!qword_100039318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039318);
  }

  return result;
}

unint64_t sub_100021288()
{
  result = qword_100039328;
  if (!qword_100039328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039328);
  }

  return result;
}

unint64_t sub_1000212DC()
{
  result = qword_100039338;
  if (!qword_100039338)
  {
    sub_100006F18(&qword_100039330, &qword_100029C50);
    sub_100021360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039338);
  }

  return result;
}

unint64_t sub_100021360()
{
  result = qword_100039340;
  if (!qword_100039340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039340);
  }

  return result;
}

unint64_t sub_1000213B4()
{
  result = qword_100039350;
  if (!qword_100039350)
  {
    sub_100006F18(&qword_100039330, &qword_100029C50);
    sub_100021438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039350);
  }

  return result;
}

unint64_t sub_100021438()
{
  result = qword_100039358;
  if (!qword_100039358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039358);
  }

  return result;
}

void *sub_10002148C(void *a1)
{
  v3 = sub_100006DB4(&qword_100039360, &qword_100029C60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100006DFC(a1, a1[3]);
  sub_100021648();
  sub_1000271D0();
  if (v1)
  {
    sub_10000E764(a1);
  }

  else
  {
    sub_100006DB4(&qword_100039370, &qword_100029C68);
    sub_10002169C(&qword_100039378, sub_100021720, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_100027060();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000E764(a1);
  }

  return v7;
}

unint64_t sub_100021648()
{
  result = qword_100039368;
  if (!qword_100039368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039368);
  }

  return result;
}

uint64_t sub_10002169C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006F18(&qword_100039370, &qword_100029C68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100021720()
{
  result = qword_100039380;
  if (!qword_100039380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039380);
  }

  return result;
}

unint64_t sub_100021774()
{
  result = qword_100039398;
  if (!qword_100039398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039398);
  }

  return result;
}

unint64_t sub_1000217C8()
{
  result = qword_1000393A8;
  if (!qword_1000393A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000393A8);
  }

  return result;
}

uint64_t sub_10002181C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E7475706E69 && a2 == 0xEA00000000007365 || (sub_100027130() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E74757074756FLL && a2 == 0xEB0000000073656DLL || (sub_100027130() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7355656369766564 && a2 == 0xEB00000000656761)
  {

    return 4;
  }

  else
  {
    v6 = sub_100027130();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000219DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100006DB4(&qword_1000393F8, &qword_100029CA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_100006DFC(a1, a1[3]);
  sub_1000221F4();
  sub_1000271D0();
  if (v2)
  {
    return sub_10000E764(a1);
  }

  LOBYTE(v39[0]) = 0;
  v9 = sub_100027030();
  v11 = v10;
  v32 = v9;
  LOBYTE(v39[0]) = 1;
  v12 = sub_100027030();
  v33 = v13;
  v29 = v12;
  v31 = v11;
  sub_100006DB4(&qword_1000392D8, &qword_100029C30);
  LOBYTE(v34) = 2;
  v30 = sub_100021144(&qword_1000392E0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_100027060();
  v28 = v39[0];
  LOBYTE(v34) = 3;
  sub_100027060();
  v30 = v39[0];
  v42 = 4;
  sub_100020A34();
  sub_100027020();
  v14 = v31;
  (*(v6 + 8))(v8, v5);
  v27 = v40;
  v15 = v14;
  v26 = *(&v40 + 1);
  v25 = v41;
  v16 = v32;
  *&v34 = v32;
  *(&v34 + 1) = v14;
  v17 = v29;
  v18 = v33;
  *&v35 = v29;
  *(&v35 + 1) = v33;
  v19 = v28;
  v20 = v30;
  *&v36 = v28;
  *(&v36 + 1) = v30;
  v37 = v40;
  v38 = v41;
  sub_100022248(&v34, v39);
  sub_10000E764(a1);
  v39[0] = v16;
  v39[1] = v15;
  v39[2] = v17;
  v39[3] = v18;
  v39[4] = v19;
  v39[5] = v20;
  v39[6] = v27;
  v39[7] = v26;
  v39[8] = v25;
  result = sub_100022280(v39);
  v22 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v22;
  *(a2 + 64) = v38;
  v23 = v35;
  *a2 = v34;
  *(a2 + 16) = v23;
  return result;
}

void *sub_100021E6C(void *a1)
{
  v3 = sub_100006DB4(&qword_1000393B8, &qword_100029C88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100006DFC(a1, a1[3]);
  sub_100021FF0();
  sub_1000271D0();
  if (v1)
  {
    sub_10000E764(a1);
  }

  else
  {
    sub_100006DB4(&qword_1000393C8, &qword_100029C90);
    sub_100022044();
    sub_100027060();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000E764(a1);
  }

  return v7;
}

unint64_t sub_100021FF0()
{
  result = qword_1000393C0;
  if (!qword_1000393C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000393C0);
  }

  return result;
}

unint64_t sub_100022044()
{
  result = qword_1000393D0;
  if (!qword_1000393D0)
  {
    sub_100006F18(&qword_1000393C8, &qword_100029C90);
    sub_1000220C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000393D0);
  }

  return result;
}

unint64_t sub_1000220C8()
{
  result = qword_1000393D8;
  if (!qword_1000393D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000393D8);
  }

  return result;
}

unint64_t sub_10002211C()
{
  result = qword_1000393E8;
  if (!qword_1000393E8)
  {
    sub_100006F18(&qword_1000393C8, &qword_100029C90);
    sub_1000221A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000393E8);
  }

  return result;
}

unint64_t sub_1000221A0()
{
  result = qword_1000393F0;
  if (!qword_1000393F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000393F0);
  }

  return result;
}

unint64_t sub_1000221F4()
{
  result = qword_100039400;
  if (!qword_100039400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039400);
  }

  return result;
}

uint64_t sub_1000222B0(void *a1)
{
  v2 = sub_100006DB4(&qword_100039750, &qword_10002B4D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100006DFC(a1, a1[3]);
  sub_1000254AC();
  sub_1000271D0();
  sub_100006DB4(&qword_1000392D8, &qword_100029C30);
  HIBYTE(v8) = 0;
  sub_100021144(&qword_1000392E0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_100027060();
  v7 = v9;
  sub_100006DB4(&qword_1000396F0, &qword_10002B498);
  HIBYTE(v8) = 1;
  sub_1000256D4();
  sub_100027060();
  (*(v3 + 8))(v5, v2);
  sub_10000E764(a1);
  return v7;
}

uint64_t sub_1000224E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654E6C617275656ELL && a2 == 0xED00006B726F7774;
  if (v4 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6172676F7270 && a2 == 0xE700000000000000 || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C65706970 && a2 == 0xE800000000000000 || (sub_100027130() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974706D65 && a2 == 0xE500000000000000 || (sub_100027130() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F707075736E75 && a2 == 0xEB00000000646574)
  {

    return 4;
  }

  else
  {
    v6 = sub_100027130();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10002269C(void *a1)
{
  v49 = sub_100006DB4(&qword_1000394B8, &qword_100029D00);
  v42 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = &v40 - v2;
  v45 = sub_100006DB4(&qword_1000394C0, &qword_100029D08);
  v48 = *(v45 - 8);
  __chkstk_darwin(v45);
  v52 = &v40 - v3;
  v4 = sub_100006DB4(&qword_1000394C8, &qword_100029D10);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  __chkstk_darwin(v4);
  v51 = &v40 - v6;
  v7 = sub_100006DB4(&qword_1000394D0, &qword_100029D18);
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = sub_100006DB4(&qword_1000394D8, &qword_100029D20);
  v41 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v13 = sub_100006DB4(&qword_1000394E0, &qword_100029D28);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = a1[3];
  v55 = a1;
  v18 = sub_100006DFC(a1, v17);
  sub_10001E9F0();
  v19 = v53;
  sub_1000271D0();
  if (!v19)
  {
    v20 = v12;
    v40 = v10;
    v22 = v51;
    v21 = v52;
    v53 = v16;
    v23 = sub_100027070();
    v24 = *(v23 + 16);
    if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 5) : (v26 = 1), v26))
    {
      v27 = sub_100026F30();
      swift_allocError();
      v29 = v28;
      sub_100006DB4(&qword_100038E68, &qword_100028CB0);
      *v29 = &_s14ModelStructureON;
      v18 = v53;
      sub_100027010();
      sub_100026F20();
      (*(*(v27 - 8) + 104))(v29, enum case for DecodingError.typeMismatch(_:), v27);
      swift_willThrow();
      (*(v14 + 8))(v18, v13);
      swift_unknownObjectRelease();
    }

    else if (*(v23 + 32) <= 1u)
    {
      v31 = v14;
      if (*(v23 + 32))
      {
        LOBYTE(v54) = 1;
        sub_10001EB94();
        v36 = v53;
        sub_100027000();
        sub_100023C64();
        v37 = v44;
        sub_100027060();
        (*(v43 + 8))(v9, v37);
        (*(v31 + 8))(v36, v13);
      }

      else
      {
        LOBYTE(v54) = 0;
        sub_10001EC3C();
        v32 = v53;
        sub_100027000();
        sub_100023CB8();
        v39 = v40;
        sub_100027060();
        (*(v41 + 8))(v20, v39);
        (*(v31 + 8))(v32, v13);
      }

      swift_unknownObjectRelease();
      v18 = v54;
    }

    else if (v25 == 2)
    {
      LOBYTE(v54) = 2;
      sub_10001EAEC();
      v33 = v53;
      sub_100027000();
      sub_100023C10();
      v34 = v46;
      sub_100027060();
      (*(v47 + 8))(v22, v34);
      (*(v14 + 8))(v33, v13);
      swift_unknownObjectRelease();
      v18 = v54;
    }

    else
    {
      v30 = v53;
      if (v25 == 3)
      {
        LOBYTE(v54) = 3;
        sub_10001EA98();
        sub_100027000();
        (*(v48 + 8))(v21, v45);
        (*(v14 + 8))(v30, v13);
        swift_unknownObjectRelease();
        v18 = 0;
      }

      else
      {
        LOBYTE(v54) = 4;
        sub_10001EA44();
        v35 = v50;
        sub_100027000();
        (*(v42 + 8))(v35, v49);
        (*(v14 + 8))(v30, v13);
        swift_unknownObjectRelease();
        v18 = 1;
      }
    }
  }

  sub_10000E764(v55);
  return v18;
}

void *sub_100022F60(void *a1)
{
  v2 = sub_100006DB4(&qword_100039460, &qword_100029CD0);
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  v6 = sub_100006DB4(&qword_100039468, &qword_100029CD8);
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_100006DB4(&qword_100039470, &qword_100029CE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = a1[3];
  v35 = a1;
  v14 = sub_100006DFC(a1, v13);
  sub_100023A6C();
  v15 = v34;
  sub_1000271D0();
  if (!v15)
  {
    v16 = v33;
    v30 = v6;
    v34 = v10;
    v17 = sub_100027070();
    v18 = v9;
    if (*(v17 + 16) == 1)
    {
      v37 = *(v17 + 32);
      if (v37)
      {
        v39 = 1;
        sub_100023AC0();
        v19 = v5;
        sub_100027000();
        v20 = v34;
        sub_100023B14();
        v27 = v19;
        v28 = v31;
        sub_100027060();
        (*(v32 + 8))(v27, v28);
        (*(v20 + 8))(v12, v18);
        swift_unknownObjectRelease();
        v14 = v36;
      }

      else
      {
        v38 = 0;
        sub_100023B68();
        v24 = v12;
        sub_100027000();
        v25 = v34;
        (*(v16 + 8))(v8, v30);
        (*(v25 + 8))(v24, v9);
        swift_unknownObjectRelease();
        v14 = 0;
      }
    }

    else
    {
      v21 = sub_100026F30();
      swift_allocError();
      v23 = v22;
      sub_100006DB4(&qword_100038E68, &qword_100028CB0);
      *v23 = &_s11DeviceUsageV12SupportStateON;
      v14 = v12;
      sub_100027010();
      sub_100026F20();
      (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
      swift_willThrow();
      (*(v34 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }
  }

  sub_10000E764(v35);
  return v14;
}

uint64_t sub_100023424(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574726F70707573 && a2 == 0xE900000000000064;
  if (v4 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xE900000000000064 || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010002C4D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_100027130();

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

uint64_t sub_100023554(void *a1)
{
  v2 = sub_100006DB4(&qword_100039410, &unk_100029CB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100006DFC(a1, a1[3]);
  sub_100023808();
  sub_1000271D0();
  sub_100006DB4(&qword_1000389C0, &qword_100027DE8);
  HIBYTE(v8) = 0;
  sub_10002385C();
  sub_100027060();
  v7 = v9;
  HIBYTE(v8) = 1;
  sub_1000238E0();
  sub_100027060();
  sub_100006DB4(&qword_100039430, &qword_100029CC0);
  HIBYTE(v8) = 2;
  sub_100023988(&qword_100039438, sub_1000238E0, sub_100023934, &protocol conformance descriptor for <> [A : B]);
  sub_100027060();
  (*(v3 + 8))(v5, v2);
  sub_10000E764(a1);
  return v7;
}

unint64_t sub_100023808()
{
  result = qword_100039418;
  if (!qword_100039418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039418);
  }

  return result;
}

unint64_t sub_10002385C()
{
  result = qword_100039420;
  if (!qword_100039420)
  {
    sub_100006F18(&qword_1000389C0, &qword_100027DE8);
    sub_1000238E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039420);
  }

  return result;
}

unint64_t sub_1000238E0()
{
  result = qword_100039428;
  if (!qword_100039428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039428);
  }

  return result;
}

unint64_t sub_100023934()
{
  result = qword_100039440;
  if (!qword_100039440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039440);
  }

  return result;
}

uint64_t sub_100023988(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006F18(&qword_100039430, &qword_100029CC0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100023A18()
{
  result = qword_100039458;
  if (!qword_100039458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039458);
  }

  return result;
}

unint64_t sub_100023A6C()
{
  result = qword_100039478;
  if (!qword_100039478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039478);
  }

  return result;
}

unint64_t sub_100023AC0()
{
  result = qword_100039480;
  if (!qword_100039480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039480);
  }

  return result;
}

unint64_t sub_100023B14()
{
  result = qword_100039488;
  if (!qword_100039488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039488);
  }

  return result;
}

unint64_t sub_100023B68()
{
  result = qword_100039490;
  if (!qword_100039490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039490);
  }

  return result;
}

unint64_t sub_100023BBC()
{
  result = qword_1000394B0;
  if (!qword_1000394B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000394B0);
  }

  return result;
}

unint64_t sub_100023C10()
{
  result = qword_1000394E8;
  if (!qword_1000394E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000394E8);
  }

  return result;
}

unint64_t sub_100023C64()
{
  result = qword_1000394F0;
  if (!qword_1000394F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000394F0);
  }

  return result;
}

unint64_t sub_100023CB8()
{
  result = qword_1000394F8;
  if (!qword_1000394F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000394F8);
  }

  return result;
}

uint64_t sub_100023E18(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100023EAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100024010()
{
  result = qword_100039500;
  if (!qword_100039500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039500);
  }

  return result;
}

unint64_t sub_100024068()
{
  result = qword_100039508;
  if (!qword_100039508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039508);
  }

  return result;
}

unint64_t sub_1000240C0()
{
  result = qword_100039510;
  if (!qword_100039510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039510);
  }

  return result;
}

unint64_t sub_100024118()
{
  result = qword_100039518;
  if (!qword_100039518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039518);
  }

  return result;
}

unint64_t sub_100024170()
{
  result = qword_100039520;
  if (!qword_100039520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039520);
  }

  return result;
}

unint64_t sub_1000241C8()
{
  result = qword_100039528;
  if (!qword_100039528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039528);
  }

  return result;
}

unint64_t sub_100024220()
{
  result = qword_100039530;
  if (!qword_100039530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039530);
  }

  return result;
}

unint64_t sub_100024278()
{
  result = qword_100039538;
  if (!qword_100039538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039538);
  }

  return result;
}

unint64_t sub_1000242D0()
{
  result = qword_100039540;
  if (!qword_100039540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039540);
  }

  return result;
}

unint64_t sub_100024328()
{
  result = qword_100039548;
  if (!qword_100039548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039548);
  }

  return result;
}

unint64_t sub_100024380()
{
  result = qword_100039550;
  if (!qword_100039550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039550);
  }

  return result;
}

unint64_t sub_1000243D8()
{
  result = qword_100039558;
  if (!qword_100039558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039558);
  }

  return result;
}

unint64_t sub_100024430()
{
  result = qword_100039560;
  if (!qword_100039560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039560);
  }

  return result;
}

unint64_t sub_100024488()
{
  result = qword_100039568;
  if (!qword_100039568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039568);
  }

  return result;
}

unint64_t sub_1000244E0()
{
  result = qword_100039570;
  if (!qword_100039570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039570);
  }

  return result;
}

unint64_t sub_100024538()
{
  result = qword_100039578;
  if (!qword_100039578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039578);
  }

  return result;
}

unint64_t sub_100024590()
{
  result = qword_100039580;
  if (!qword_100039580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039580);
  }

  return result;
}

unint64_t sub_1000245E8()
{
  result = qword_100039588;
  if (!qword_100039588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039588);
  }

  return result;
}

unint64_t sub_100024640()
{
  result = qword_100039590;
  if (!qword_100039590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039590);
  }

  return result;
}

unint64_t sub_100024698()
{
  result = qword_100039598;
  if (!qword_100039598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039598);
  }

  return result;
}

unint64_t sub_1000246F0()
{
  result = qword_1000395A0;
  if (!qword_1000395A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395A0);
  }

  return result;
}

unint64_t sub_100024748()
{
  result = qword_1000395A8;
  if (!qword_1000395A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395A8);
  }

  return result;
}

unint64_t sub_1000247A0()
{
  result = qword_1000395B0;
  if (!qword_1000395B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395B0);
  }

  return result;
}

unint64_t sub_1000247F8()
{
  result = qword_1000395B8;
  if (!qword_1000395B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395B8);
  }

  return result;
}

unint64_t sub_100024850()
{
  result = qword_1000395C0;
  if (!qword_1000395C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395C0);
  }

  return result;
}

unint64_t sub_1000248A8()
{
  result = qword_1000395C8;
  if (!qword_1000395C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395C8);
  }

  return result;
}

unint64_t sub_100024900()
{
  result = qword_1000395D0;
  if (!qword_1000395D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395D0);
  }

  return result;
}

unint64_t sub_100024958()
{
  result = qword_1000395D8;
  if (!qword_1000395D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395D8);
  }

  return result;
}

unint64_t sub_1000249B0()
{
  result = qword_1000395E0;
  if (!qword_1000395E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395E0);
  }

  return result;
}

unint64_t sub_100024A08()
{
  result = qword_1000395E8;
  if (!qword_1000395E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395E8);
  }

  return result;
}

unint64_t sub_100024A60()
{
  result = qword_1000395F0;
  if (!qword_1000395F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395F0);
  }

  return result;
}

unint64_t sub_100024AB8()
{
  result = qword_1000395F8;
  if (!qword_1000395F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395F8);
  }

  return result;
}

unint64_t sub_100024B10()
{
  result = qword_100039600;
  if (!qword_100039600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039600);
  }

  return result;
}

unint64_t sub_100024B68()
{
  result = qword_100039608;
  if (!qword_100039608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039608);
  }

  return result;
}

unint64_t sub_100024BC0()
{
  result = qword_100039610;
  if (!qword_100039610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039610);
  }

  return result;
}

unint64_t sub_100024C18()
{
  result = qword_100039618;
  if (!qword_100039618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039618);
  }

  return result;
}

unint64_t sub_100024C70()
{
  result = qword_100039620;
  if (!qword_100039620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039620);
  }

  return result;
}

unint64_t sub_100024CC8()
{
  result = qword_100039628;
  if (!qword_100039628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039628);
  }

  return result;
}

unint64_t sub_100024D20()
{
  result = qword_100039630;
  if (!qword_100039630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039630);
  }

  return result;
}

unint64_t sub_100024D78()
{
  result = qword_100039638;
  if (!qword_100039638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039638);
  }

  return result;
}

unint64_t sub_100024DD0()
{
  result = qword_100039640;
  if (!qword_100039640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039640);
  }

  return result;
}

unint64_t sub_100024E28()
{
  result = qword_100039648;
  if (!qword_100039648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039648);
  }

  return result;
}

unint64_t sub_100024E80()
{
  result = qword_100039650;
  if (!qword_100039650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039650);
  }

  return result;
}

unint64_t sub_100024ED8()
{
  result = qword_100039658;
  if (!qword_100039658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039658);
  }

  return result;
}

unint64_t sub_100024F30()
{
  result = qword_100039660;
  if (!qword_100039660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039660);
  }

  return result;
}

unint64_t sub_100024F88()
{
  result = qword_100039668;
  if (!qword_100039668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039668);
  }

  return result;
}

unint64_t sub_100024FE0()
{
  result = qword_100039670;
  if (!qword_100039670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039670);
  }

  return result;
}

unint64_t sub_100025038()
{
  result = qword_100039678;
  if (!qword_100039678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039678);
  }

  return result;
}

unint64_t sub_100025090()
{
  result = qword_100039680;
  if (!qword_100039680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039680);
  }

  return result;
}

unint64_t sub_1000250E8()
{
  result = qword_100039688;
  if (!qword_100039688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039688);
  }

  return result;
}

unint64_t sub_100025140()
{
  result = qword_100039690;
  if (!qword_100039690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039690);
  }

  return result;
}

unint64_t sub_100025198()
{
  result = qword_100039698;
  if (!qword_100039698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039698);
  }

  return result;
}

unint64_t sub_1000251F0()
{
  result = qword_1000396A0;
  if (!qword_1000396A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396A0);
  }

  return result;
}

unint64_t sub_100025248()
{
  result = qword_1000396A8;
  if (!qword_1000396A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396A8);
  }

  return result;
}

unint64_t sub_1000252A0()
{
  result = qword_1000396B0;
  if (!qword_1000396B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396B0);
  }

  return result;
}

unint64_t sub_1000252F8()
{
  result = qword_1000396B8;
  if (!qword_1000396B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396B8);
  }

  return result;
}

unint64_t sub_100025350()
{
  result = qword_1000396C0;
  if (!qword_1000396C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396C0);
  }

  return result;
}

unint64_t sub_1000253A8()
{
  result = qword_1000396C8;
  if (!qword_1000396C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396C8);
  }

  return result;
}

unint64_t sub_100025400()
{
  result = qword_1000396D0;
  if (!qword_1000396D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396D0);
  }

  return result;
}

unint64_t sub_100025458()
{
  result = qword_1000396D8;
  if (!qword_1000396D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396D8);
  }

  return result;
}

unint64_t sub_1000254AC()
{
  result = qword_1000396E8;
  if (!qword_1000396E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396E8);
  }

  return result;
}

unint64_t sub_100025500()
{
  result = qword_1000396F8;
  if (!qword_1000396F8)
  {
    sub_100006F18(&qword_1000396F0, &qword_10002B498);
    sub_100006FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396F8);
  }

  return result;
}

unint64_t sub_100025584()
{
  result = qword_100039708;
  if (!qword_100039708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039708);
  }

  return result;
}

unint64_t sub_1000255D8()
{
  result = qword_100039718;
  if (!qword_100039718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039718);
  }

  return result;
}

unint64_t sub_10002562C()
{
  result = qword_100039730;
  if (!qword_100039730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039730);
  }

  return result;
}

unint64_t sub_100025680()
{
  result = qword_100039740;
  if (!qword_100039740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039740);
  }

  return result;
}

unint64_t sub_1000256D4()
{
  result = qword_100039758;
  if (!qword_100039758)
  {
    sub_100006F18(&qword_1000396F0, &qword_10002B498);
    sub_100025758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039758);
  }

  return result;
}

unint64_t sub_100025758()
{
  result = qword_100039760;
  if (!qword_100039760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039760);
  }

  return result;
}

unint64_t sub_100025800()
{
  result = qword_100039768;
  if (!qword_100039768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039768);
  }

  return result;
}

unint64_t sub_100025858()
{
  result = qword_100039770;
  if (!qword_100039770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039770);
  }

  return result;
}

unint64_t sub_1000258B0()
{
  result = qword_100039778;
  if (!qword_100039778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039778);
  }

  return result;
}

unint64_t sub_100025908()
{
  result = qword_100039780;
  if (!qword_100039780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039780);
  }

  return result;
}

unint64_t sub_100025960()
{
  result = qword_100039788;
  if (!qword_100039788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039788);
  }

  return result;
}

unint64_t sub_1000259B8()
{
  result = qword_100039790;
  if (!qword_100039790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039790);
  }

  return result;
}

unint64_t sub_100025A10()
{
  result = qword_100039798;
  if (!qword_100039798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039798);
  }

  return result;
}

unint64_t sub_100025A68()
{
  result = qword_1000397A0;
  if (!qword_1000397A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397A0);
  }

  return result;
}

unint64_t sub_100025AC0()
{
  result = qword_1000397A8;
  if (!qword_1000397A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397A8);
  }

  return result;
}

unint64_t sub_100025B18()
{
  result = qword_1000397B0;
  if (!qword_1000397B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397B0);
  }

  return result;
}

unint64_t sub_100025B70()
{
  result = qword_1000397B8;
  if (!qword_1000397B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397B8);
  }

  return result;
}

unint64_t sub_100025BC8()
{
  result = qword_1000397C0;
  if (!qword_1000397C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397C0);
  }

  return result;
}

unint64_t sub_100025C20()
{
  result = qword_1000397C8;
  if (!qword_1000397C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397C8);
  }

  return result;
}

uint64_t sub_100025CD8@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = sub_100026870();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v19 - v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 temporaryDirectory];

  sub_100026850();
  v10 = sub_100026E50();
  if (qword_1000388E8 != -1)
  {
    swift_once();
  }

  v11 = qword_100039808;
  sub_100006DB4(&qword_1000389F8, &unk_10002B960);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100027C10;
  v13 = sub_100026860();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100007E88();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_1000268E0(v10, &_mh_execute_header, v11, "PerfRunner: prefix is %@", 24, 2, v12);

  if (sub_100026860() == 0x706D742F7261762FLL && v16 == 0xE800000000000000)
  {

LABEL_7:
    sub_100026820();
    (*(v2 + 8))(v7, v1);
    (*(v2 + 32))(v7, v5, v1);
    goto LABEL_8;
  }

  v17 = sub_100027130();

  if (v17)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_100026840();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_100026108()
{
  v0 = sub_100026870();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  sub_100025CD8(&v15 - v5);
  sub_100026880();
  sub_100026840();

  sub_100026D10();
  v16._countAndFlagsBits = 0x616B6361706C6D2ELL;
  v16._object = 0xEA00000000006567;
  sub_100026D70(v16);

  sub_100026840();
  v7 = sub_100026E50();
  if (qword_1000388E8 != -1)
  {
    swift_once();
  }

  v8 = qword_100039808;
  sub_100006DB4(&qword_1000389F8, &unk_10002B960);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100027C10;
  v10 = sub_100026860();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100007E88();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_1000268E0(v7, &_mh_execute_header, v8, "PerfRunner: Actual model path on disk: %@", 41, 2, v9);

  v13 = *(v1 + 8);
  v13(v4, v0);
  return (v13)(v6, v0);
}

id sub_1000263A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelLocation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ModelLocation(uint64_t a1)
{
  result = qword_1000397F8;
  if (!qword_1000397F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000264B4(uint64_t a1, uint64_t a2)
{
  result = sub_1000268A0();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}