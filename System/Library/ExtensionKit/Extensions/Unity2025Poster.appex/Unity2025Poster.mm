__n128 sub_100001BB0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100001BC4(uint64_t a1, int a2)
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

uint64_t sub_100001C0C(uint64_t result, int a2, int a3)
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

uint64_t sub_100001C78()
{
  v0 = sub_100012E54();
  sub_100002444(v0, qword_100023B40);
  sub_1000024A8(v0, qword_100023B40);
  return sub_100012E44();
}

void sub_100001CF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7974696E75;
  v5 = 0xE300000000000000;
  v6 = 6579570;
  v7 = 0xE500000000000000;
  v8 = 0x6E65657267;
  if (v2 != 4)
  {
    v8 = 1684828007;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6B63616C62;
  if (v2 != 1)
  {
    v9 = 0x6D61657263;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

id sub_100001D98(void *a1)
{
  v2 = v1;
  v27[0] = 0;
  v4 = [objc_msgSend(a1 "sourceContents")];
  swift_unknownObjectRelease();
  v5 = v27[0];
  if (v4)
  {
    v6 = sub_100012F84();
    v7 = v5;
  }

  else
  {
    v8 = v27[0];
    sub_100012B54();

    swift_willThrow();

    v6 = sub_100003F08(&_swiftEmptyArrayStorage);
  }

  *&v25 = 0xD000000000000011;
  *(&v25 + 1) = 0x8000000100015130;
  sub_100013214();
  v9 = *v2;
  v10 = v2[1];
  v26 = &type metadata for String;
  *&v25 = v9;
  *(&v25 + 1) = v10;
  sub_1000046E0(&v25, v24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100002D9C(v24, v27, isUniquelyReferenced_nonNull_native);
  sub_1000046F0(v27);
  *&v25 = 0xD000000000000012;
  *(&v25 + 1) = 0x8000000100015150;
  sub_100013214();
  v12 = v2[2];
  v13 = v2[3];
  v26 = &type metadata for String;
  *&v25 = v12;
  *(&v25 + 1) = v13;
  sub_1000046E0(&v25, v24);

  v14 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v6;
  sub_100002D9C(v24, v27, v14);
  sub_1000046F0(v27);
  strcpy(&v25, "lookIdentifier");
  HIBYTE(v25) = -18;
  sub_100013214();
  v15 = v2[5];
  if (v15)
  {
    v16 = v2[4];
    v26 = &type metadata for String;
    *&v25 = v16;
    *(&v25 + 1) = v15;
    sub_1000046E0(&v25, v24);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v6;
    sub_100002D9C(v24, v27, v17);
  }

  else
  {
    sub_100010000(v27, &v25);
    sub_100004900(&v25, &qword_1000231C8, &qword_100014580);
  }

  sub_1000046F0(v27);
  v18 = [a1 targetConfiguration];
  isa = sub_100012F74().super.isa;

  v27[0] = 0;
  v20 = [v18 storeUserInfo:isa error:v27];

  if (v20)
  {
    return v27[0];
  }

  v22 = v27[0];
  sub_100012B54();

  return swift_willThrow();
}

void sub_100002138(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1 < 2u)
    {
      v1 = [objc_opt_self() blackColor];

      v2 = v1;
      return;
    }

    goto LABEL_10;
  }

  if (a1 == 3)
  {
LABEL_12:
    v7 = sub_100012FE4();
    v8 = [objc_opt_self() colorNamed:v7];

    if (v8)
    {
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (a1 == 4)
  {
    v3 = sub_100012FE4();
    v4 = [objc_opt_self() colorNamed:v3];

    if (v4)
    {
      return;
    }

    __break(1u);
LABEL_10:
    v5 = sub_100012FE4();
    v6 = [objc_opt_self() colorNamed:v5];

    if (v6)
    {
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_14:
  v9 = sub_100012FE4();
  v10 = [objc_opt_self() colorNamed:v9];

  if (!v10)
  {
    __break(1u);
  }
}

double sub_1000022EC()
{
  v5 = 0.0;
  v6 = 0.0;
  v4 = 0;
  [v0 getRed:&v6 green:&v5 blue:&v4 alpha:0];
  *&v1 = v6;
  *&v2 = v5;
  return COERCE_DOUBLE(__PAIR64__(v2, v1));
}

id sub_100002380(double a1)
{
  v5 = 0.0;
  v6 = 0.0;
  v4 = 0.0;
  [v1 getHue:&v6 saturation:&v5 brightness:&v4 alpha:0];
  return [objc_allocWithZone(UIColor) initWithHue:v6 saturation:v5 brightness:v4 - a1 alpha:1.0];
}

uint64_t *sub_100002444(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000024A8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000024E0(void *a1, uint64_t *a2)
{
  v2 = sub_100012FF4();
  v4 = v3;
  if (v2 == sub_100012FF4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000133E4();
  }

  return v7 & 1;
}

uint64_t sub_100002568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100012FF4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002594(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004698(&qword_1000230D8, &unk_100014560);
  result = sub_1000133A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1000046E0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100004744(v23, &v36);
        sub_1000047EC(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1000131F4(*(v7 + 40));
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1000046E0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100002860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004698(&qword_1000231C0, &qword_100014578);
  v37 = v4;
  result = sub_1000133A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 48 * v20);
      v23 = v22[1];
      v24 = v22[3];
      v39 = v22[2];
      v40 = *v22;
      v25 = v22[5];
      v38 = v22[4];
      if ((v37 & 1) == 0)
      {

        v26 = v21;
      }

      result = sub_1000131A4(*(v7 + 40));
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
      v16 = (*(v7 + 56) + 48 * v15);
      *v16 = v40;
      v16[1] = v23;
      v16[2] = v39;
      v16[3] = v24;
      v16[4] = v38;
      v16[5] = v25;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

uint64_t sub_100002B34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100004698(a3, a4);
  result = sub_1000133A4();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v4;
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
      }

      result = sub_1000131A4(*(v9 + 40));
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

_OWORD *sub_100002D9C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100012270(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10000345C();
      goto LABEL_7;
    }

    sub_100002594(v13, a3 & 1);
    v19 = sub_100012270(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100004744(a2, v21);
      return sub_1000033E0(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_100013404();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_1000047A0(v17);

  return sub_1000046E0(a1, v17);
}

uint64_t sub_100002EE8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000122B4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100002B34(v13, a3 & 1, &unk_100023990, &qword_100014570);
      v8 = sub_1000122B4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000048B8(0, &unk_1000231B0, PREditor_ptr);
        sub_100013404();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_1000037C0(&unk_100023990, &qword_100014570);
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    *(v18[7] + 8 * v8) = a1;
    v20 = v18[2];
    v12 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v12)
    {
      v18[2] = v21;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  *(v18[7] + 8 * v8) = a1;
}

uint64_t sub_100003088(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000122B4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100002860(v13, a3 & 1);
      v8 = sub_1000122B4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000048B8(0, &unk_1000231B0, PREditor_ptr);
        sub_100013404();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100003614();
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    v22 = (v18[7] + 48 * v8);
    v23 = a1[1];
    *v22 = *a1;
    v22[1] = v23;
    v22[2] = a1[2];
    v24 = v18[2];
    v12 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v12)
    {
      v18[2] = v25;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  v19 = (v18[7] + 48 * v8);
  v20 = a1[1];
  *v19 = *a1;
  v19[1] = v20;
  v19[2] = a1[2];
}

uint64_t sub_100003240(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100012304(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100002B34(v13, a3 & 1, &unk_100023900, &qword_100015000);
      v8 = sub_100012304(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000048B8(0, &unk_1000230E0, PRRenderer_ptr);
        sub_100013404();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_1000037C0(&unk_100023900, &qword_100015000);
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    *(v18[7] + 8 * v8) = a1;
    v20 = v18[2];
    v12 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v12)
    {
      v18[2] = v21;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  *(v18[7] + 8 * v8) = a1;
}

_OWORD *sub_1000033E0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000046E0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_10000345C()
{
  v1 = v0;
  sub_100004698(&qword_1000230D8, &unk_100014560);
  v2 = *v0;
  v3 = sub_100013394();
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
        v18 = 40 * v17;
        sub_100004744(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1000047EC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000046E0(v22, (*(v4 + 56) + v17));
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

void *sub_100003614()
{
  v1 = v0;
  sub_100004698(&qword_1000231C0, &qword_100014578);
  v2 = *v0;
  v3 = sub_100013394();
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
        v19 = (*(v2 + 56) + 48 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v25 = v19[4];
        v24 = v19[5];
        *(*(v4 + 48) + 8 * v17) = v18;
        v26 = (*(v4 + 56) + 48 * v17);
        *v26 = v20;
        v26[1] = v21;
        v26[2] = v22;
        v26[3] = v23;
        v26[4] = v25;
        v26[5] = v24;

        v27 = v18;
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

void *sub_1000037C0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100004698(a1, a2);
  v4 = *v2;
  v5 = sub_100013394();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
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

  return result;
}

uint64_t sub_100003914@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100012BB4();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = &OBJC_PROTOCOL___PRPosterRenderingEnvironment;
  v6 = swift_dynamicCastObjCProtocolConditional();
  if (v6)
  {
    v7 = &selRef_contents;
  }

  else
  {
    v45 = &OBJC_PROTOCOL___PRPosterEditingEnvironment;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (!v6)
    {
      swift_unknownObjectRelease();
      v38 = 0;
      goto LABEL_9;
    }

    v7 = &selRef_sourceContents;
  }

  v8 = [v6 *v7];
  swift_unknownObjectRelease();
  v43[0] = 0;
  v9 = [v8 loadUserInfoWithError:{v43, v8}];
  v10 = v43[0];
  if (v9)
  {
    v11 = v9;
    v12 = sub_100012F84();
    v13 = v10;

    goto LABEL_10;
  }

  v14 = v43[0];
  sub_100012B54();

  swift_willThrow();

LABEL_9:
  v12 = sub_100003F08(&_swiftEmptyArrayStorage);
LABEL_10:
  if (qword_100022FC0 != -1)
  {
    swift_once();
  }

  v15 = sub_100012E54();
  sub_1000024A8(v15, qword_100023B40);

  v16 = sub_100012E34();
  v17 = sub_100013114();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v43[0] = v19;
    *v18 = 136315138;
    v20 = sub_100012F94();
    v22 = sub_100007474(v20, v21, v43);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "\nloaded user info: %s\n\n", v18, 0xCu);
    sub_1000047A0(v19);
  }

  v41 = 0xD000000000000011;
  v42 = 0x8000000100015130;
  sub_100013214();
  if (!*(v12 + 16) || (v23 = sub_100012270(v43), (v24 & 1) == 0))
  {
    sub_1000046F0(v43);
    goto LABEL_19;
  }

  sub_1000047EC(*(v12 + 56) + 32 * v23, v44);
  sub_1000046F0(v43);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    sub_100012BA4();
    v25 = sub_100012B94();
    v26 = v27;
    (*(v39 + 8))(v5, v40);
    goto LABEL_20;
  }

  v25 = v41;
  v26 = v42;
LABEL_20:
  v41 = 0xD000000000000012;
  v42 = 0x8000000100015150;
  sub_100013214();
  if (!*(v12 + 16) || (v28 = sub_100012270(v43), (v29 & 1) == 0))
  {
    sub_1000046F0(v43);
    goto LABEL_25;
  }

  sub_1000047EC(*(v12 + 56) + 32 * v28, v44);
  sub_1000046F0(v43);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    sub_100012BA4();
    v30 = sub_100012B94();
    v31 = v32;
    (*(v39 + 8))(v5, v40);
    goto LABEL_26;
  }

  v30 = v41;
  v31 = v42;
LABEL_26:
  strcpy(v44, "lookIdentifier");
  v44[15] = -18;
  sub_100013214();
  if (*(v12 + 16) && (v33 = sub_100012270(v43), (v34 & 1) != 0))
  {
    sub_1000047EC(*(v12 + 56) + 32 * v33, v44);
    swift_unknownObjectRelease();
    sub_1000046F0(v43);

    result = swift_dynamicCast();
    v36 = v41;
    v37 = v42;
    if (!result)
    {
      v36 = 0;
      v37 = 0;
    }
  }

  else
  {

    swift_unknownObjectRelease();
    result = sub_1000046F0(v43);
    v36 = 0;
    v37 = 0;
  }

  *a2 = v25;
  a2[1] = v26;
  a2[2] = v30;
  a2[3] = v31;
  a2[4] = v36;
  a2[5] = v37;
  return result;
}

unint64_t sub_100003EBC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10001CCE8;
  v6._object = a2;
  v4 = sub_1000133D4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100003F08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004698(&qword_1000230D8, &unk_100014560);
    v3 = sub_1000133C4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100004848(v4, v13);
      result = sub_100012270(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000046E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000404C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004698(&qword_1000231C0, &qword_100014578);
    v3 = sub_1000133C4();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      v12 = v5;

      result = sub_1000122B4(v12);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v12;
      v15 = (v3[7] + 48 * result);
      *v15 = v6;
      v15[1] = v7;
      v15[2] = v8;
      v15[3] = v9;
      v15[4] = v10;
      v15[5] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000041B0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100004698(a2, a3);
    v7 = sub_1000133C4();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1000042A8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012BB4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004698(&qword_1000230C8, &qword_100014550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000144F0;
  v29[0] = 0xD000000000000011;
  v29[1] = 0x8000000100015130;
  sub_100013214();
  sub_100012BA4();
  v11 = sub_100012B94();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v11;
  *(inited + 80) = v13;
  v14 = sub_100003F08(inited);
  swift_setDeallocating();
  sub_100004900(inited + 32, &qword_1000230D0, &qword_100014558);
  if (a3)
  {
    strcpy(&v27, "lookIdentifier");
    HIBYTE(v27) = -18;

    sub_100013214();
    v28 = &type metadata for String;
    *&v27 = a2;
    *(&v27 + 1) = a3;
    sub_1000046E0(&v27, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[2] = v14;
    sub_100002D9C(v26, v29, isUniquelyReferenced_nonNull_native);
    sub_1000046F0(v29);
  }

  isa = sub_100012F74().super.isa;

  v29[0] = 0;
  v17 = [a1 storeUserInfo:isa error:v29];

  v18 = v29[0];
  if (v17)
  {

    v19 = v18;
  }

  else
  {
    v25[1] = v29[0];
    v20 = v29[0];
    sub_100012B54();

    swift_willThrow();
    if (qword_100022FC0 != -1)
    {
      swift_once();
    }

    v21 = sub_100012E54();
    sub_1000024A8(v21, qword_100023B40);
    v22 = sub_100012E34();
    v23 = sub_100013124();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "couldn’t store descriptor user info", v24, 2u);
    }
  }
}

uint64_t sub_100004698(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_1000046E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000047A0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000047EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004698(&qword_1000230D0, &qword_100014558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000048B8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100004900(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004698(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004960(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 sub_100004994(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000049A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000049C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void type metadata accessor for Rotation3D()
{
  if (!qword_1000231D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000231D0);
    }
  }
}

void sub_100004A3C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_100023300 = v1 == 1;
}

void sub_100004AA4(uint64_t a1)
{
  v83 = sub_100004698(&qword_100023478, &qword_100014BD0);
  __chkstk_darwin(v83);
  v86 = v71 - v2;
  v3 = sub_100012D94();
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = __chkstk_darwin(v3);
  v82 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v81 = v71 - v6;
  v7 = sub_100012DD4();
  v78 = *(v7 - 8);
  v79 = v7;
  v8 = __chkstk_darwin(v7);
  v77 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = v71 - v10;
  v11 = sub_100012DF4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v71 - v16;
  v18 = sub_100012E24();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  sub_100012C34();
  sub_100012E04();
  v75 = *(v19 + 8);
  v75(v21, v18);
  v22 = *(v12 + 104);
  v74 = enum case for WakeState.ScreenState.off(_:);
  v73 = v22;
  v22(v15);
  sub_100009670();
  LOBYTE(a1) = sub_100012FB4();
  v23 = *(v12 + 8);
  v23(v15, v11);
  v23(v17, v11);
  if ((a1 & 1) == 0)
  {
    v72 = v18;
    v24 = OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_wallpaperState;
    swift_beginAccess();
    v71[1] = v24;
    sub_100012C34();
    swift_endAccess();
    sub_100012E04();
    v75(v21, v72);
    v73(v15, v74, v11);
    v25 = sub_100012DE4();
    v23(v15, v11);
    v23(v17, v11);
    if (v25)
    {
      swift_beginAccess();
      v26 = sub_100012C64();
      swift_endAccess();
      if ((v26 & 1) == 0)
      {
        v27 = v87;
        v28 = *(v87 + 40);

        v28(v29);

        if (qword_100022FC0 != -1)
        {
          swift_once();
        }

        v30 = sub_100012E54();
        sub_1000024A8(v30, qword_100023B40);
        v31 = sub_100012E34();
        v32 = sub_100013114();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "no AOD, screen off", v33, 2u);
        }

        v34 = OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_state;
        v35 = *(v27 + OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_state);
        if (v35 >= 0)
        {
          v36 = BYTE1(v35);
        }

        else
        {
          v36 = v35;
        }

        *(v27 + v34) = sub_100005474(v36) | 0x8000;
        sub_100005BFC();
      }
    }
  }

  v37 = v87;
  if ((*(v87 + 32) & 1) == 0)
  {
    v38 = v76;
    sub_100012C44();
    v39 = v81;
    sub_100012DA4();
    v40 = *(v78 + 8);
    v41 = v38;
    v42 = v79;
    v40(v41, v79);
    swift_beginAccess();
    v43 = v77;
    sub_100012C44();
    swift_endAccess();
    v44 = v82;
    sub_100012DA4();
    v40(v43, v42);
    v45 = v84;
    v46 = *(v83 + 48);
    v47 = *(v84 + 32);
    v48 = v86;
    v49 = v39;
    v50 = v85;
    v47(v86, v49, v85);
    v47((v48 + v46), v44, v50);
    v51 = *(v45 + 88);
    v52 = v51(v48, v50);
    v53 = enum case for UnlockState.ScreenState.unlocked(_:);
    if (v52 == enum case for UnlockState.ScreenState.unlocked(_:))
    {
      if (v51(v48 + v46, v50) == enum case for UnlockState.ScreenState.transitioning(_:))
      {
        v54 = *(v37 + 40);

        v54(v55);

        if (qword_100022FC0 != -1)
        {
          swift_once();
        }

        v56 = sub_100012E54();
        sub_1000024A8(v56, qword_100023B40);
        v57 = sub_100012E34();
        v58 = sub_100013114();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v57, v58, "starting lock transition", v59, 2u);
        }

        v60 = OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_state;
        v61 = *(v37 + OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_state);
        if ((v61 & 0x8000u) == 0)
        {
          v62 = v61 >> 8;
        }

        else
        {
          v62 = *(v37 + OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_state);
        }

        *(v37 + v60) = v62 | (sub_100005474(v62) << 8);
        sub_100005BFC();
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v52 == enum case for UnlockState.ScreenState.transitioning(_:))
    {
      v63 = v51(v48 + v46, v50);
      if (v63 == enum case for UnlockState.ScreenState.locked(_:))
      {
        v64 = *(v37 + OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_state);
        if (v64 >= 0)
        {
          LOBYTE(v64) = HIBYTE(*(v37 + OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_state));
        }

        *(v37 + OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_state) = v64 | 0x8000;
        sub_100005BFC();
        if (qword_100022FC0 != -1)
        {
          swift_once();
        }

        v65 = sub_100012E54();
        sub_1000024A8(v65, qword_100023B40);
        v66 = sub_100012E34();
        v67 = sub_100013114();
        if (!os_log_type_enabled(v66, v67))
        {
          goto LABEL_37;
        }

        v68 = swift_slowAlloc();
        *v68 = 0;
        v69 = "finished lock transition";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v66, v67, v69, v68, 2u);

LABEL_37:

LABEL_38:
        (*(v45 + 8))(v48, v50);
        return;
      }

      if (v63 == v53)
      {
        *(v37 + OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_state + 1) = 0x80;
        sub_100005BFC();
        if (qword_100022FC0 != -1)
        {
          swift_once();
        }

        v70 = sub_100012E54();
        sub_1000024A8(v70, qword_100023B40);
        v66 = sub_100012E34();
        v67 = sub_100013114();
        if (!os_log_type_enabled(v66, v67))
        {
          goto LABEL_37;
        }

        v68 = swift_slowAlloc();
        *v68 = 0;
        v69 = "finished unlock transition";
        goto LABEL_36;
      }
    }

LABEL_39:
    sub_1000096C8(v48);
  }
}

uint64_t sub_100005474(uint64_t a1)
{
  if (qword_100022FD0 != -1)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v2 = off_100023308;
    v3 = *(off_100023308 + 2);

    if (!v3)
    {
      v6 = &_swiftEmptyArrayStorage;
      goto LABEL_84;
    }

    v4 = 0;
    v5 = 0x327974696E75;
    v6 = &_swiftEmptyArrayStorage;
LABEL_4:
    v24 = v6;
LABEL_7:
    if (v4 < v2[2])
    {
      break;
    }

    __break(1u);
LABEL_90:
    swift_once();
  }

  v7 = v4;
  v8 = *(v2 + v4++ + 32);
  v9 = 0xE600000000000000;
  v10 = v5;
  switch(a1)
  {
    case 1:
      v9 = 0xE90000000000004ELL;
      v10 = 0x64657265746E6563;
      break;
    case 2:
      v9 = 0xE800000000000000;
      v10 = 0x59707565736F6C63;
      break;
    case 3:
      v9 = 0xE800000000000000;
      v10 = 0x54707565736F6C63;
      break;
    case 4:
      v9 = 0xE90000000000004ELL;
      goto LABEL_29;
    case 5:
      v9 = 0xE800000000000000;
      v10 = 0x4E707565736F6C63;
      break;
    case 6:
      v10 = 0x54707565736F6C63;
      goto LABEL_25;
    case 7:
      v10 = 0x4E707565736F6C63;
LABEL_25:
      v9 = 0xE900000000000032;
      break;
    case 8:
      v9 = 0xE800000000000000;
LABEL_29:
      v10 = 0x55707565736F6C63;
      break;
    case 9:
      v9 = 0xE500000000000000;
      v10 = 0x7974696E75;
      break;
    case 10:
      v10 = 0x6964654D64617069;
      v9 = 0xEA00000000006D75;
      break;
    case 11:
      v9 = 0xE900000000000079;
      goto LABEL_18;
    case 12:
      v10 = 0x314E64617069;
      break;
    case 13:
      v10 = 0x74696E5564617069;
      v9 = 0xEA00000000003279;
      break;
    case 14:
      v9 = 0xEA00000000003379;
      goto LABEL_18;
    case 15:
      v9 = 0xEA00000000003479;
LABEL_18:
      v10 = 0x74696E5564617069;
      break;
    case 16:
      v10 = 0x736F6C4364617069;
      v9 = 0xEC00000031707565;
      break;
    case 17:
      v10 = 0x736F6C4364617069;
      v9 = 0xEC00000032707565;
      break;
    case 18:
      v10 = 0x6863724164617069;
      v9 = 0xEB00000000317365;
      break;
    case 19:
      v9 = 0xEB00000000327365;
      v10 = 0x6863724164617069;
      break;
    default:
      break;
  }

  v11 = 0xE600000000000000;
  v12 = v5;
  switch(v8)
  {
    case 1:
      v11 = 0xE90000000000004ELL;
      if (v10 == 0x64657265746E6563)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    case 2:
      v11 = 0xE800000000000000;
      if (v10 != 0x59707565736F6C63)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    case 3:
      v11 = 0xE800000000000000;
      if (v10 != 0x54707565736F6C63)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    case 4:
      v11 = 0xE90000000000004ELL;
      if (v10 != 0x55707565736F6C63)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    case 5:
      v11 = 0xE800000000000000;
      if (v10 != 0x4E707565736F6C63)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    case 6:
      v14 = 0x54707565736F6C63;
      goto LABEL_58;
    case 7:
      v14 = 0x4E707565736F6C63;
LABEL_58:
      v11 = 0xE900000000000032;
      if (v10 != v14)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    case 8:
      v11 = 0xE800000000000000;
      v5 = 0x55707565736F6C63;
      goto LABEL_66;
    case 9:
      v11 = 0xE500000000000000;
      if (v10 != 0x7974696E75)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    case 10:
      v15 = 0x6964654D64617069;
      v16 = 28021;
      goto LABEL_63;
    case 11:
      v11 = 0xE900000000000079;
      goto LABEL_46;
    case 12:
      if (v10 != 0x314E64617069)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    case 13:
      v15 = 0x74696E5564617069;
      v16 = 12921;
LABEL_63:
      v11 = v16 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v10 != v15)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    case 14:
      v11 = 0xEA00000000003379;
      goto LABEL_46;
    case 15:
      v11 = 0xEA00000000003479;
LABEL_46:
      if (v10 != 0x74696E5564617069)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    case 16:
      v13 = 829453669;
      goto LABEL_52;
    case 17:
      v13 = 846230885;
LABEL_52:
      v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v10 != 0x736F6C4364617069)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    case 18:
      v11 = 0xEB00000000317365;
      if (v10 != 0x6863724164617069)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    case 19:
      v11 = 0xEB00000000327365;
      if (v10 != 0x6863724164617069)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    default:
LABEL_66:
      if (v10 != v5)
      {
        goto LABEL_68;
      }

LABEL_67:
      if (v9 == v11)
      {

LABEL_6:
        v5 = v12;
        if (v3 == v4)
        {
          v6 = v24;
          goto LABEL_84;
        }

        goto LABEL_7;
      }

LABEL_68:
      v17 = sub_1000133E4();

      if (v17)
      {
        goto LABEL_6;
      }

      if (qword_100022FE0 != -1)
      {
        swift_once();
      }

      v18 = qword_100023318;
      if (sub_100006D58(a1, qword_100023318) & 1) != 0 && (sub_100006D58(v8, v18))
      {
        goto LABEL_6;
      }

      v6 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100007AB8(0, v24[2] + 1, 1);
        v6 = v24;
      }

      v5 = v12;
      v20 = v6[2];
      v19 = v6[3];
      if (v20 >= v19 >> 1)
      {
        sub_100007AB8((v19 > 1), v20 + 1, 1);
        v5 = v12;
        v6 = v24;
      }

      v4 = v7 + 1;
      v6[2] = v20 + 1;
      *(v6 + v20 + 32) = v8;
      if (v3 - 1 != v7)
      {
        goto LABEL_4;
      }

LABEL_84:

      v21 = v6[2];
      if (v21)
      {
        v22 = sub_100007A2C(v21);
        if ((v22 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v22 < v6[2])
        {
          a1 = *(v6 + v22 + 32);
          goto LABEL_88;
        }

        __break(1u);
        JUMPOUT(0x100005B5CLL);
      }

LABEL_88:

      return a1;
  }
}

void sub_100005BFC()
{
  v1 = v0;
  if (qword_100022FC0 != -1)
  {
    swift_once();
  }

  v2 = sub_100012E54();
  sub_1000024A8(v2, qword_100023B40);

  v3 = sub_100012E34();
  v4 = sub_100013114();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_100013014();
    v9 = sub_100007474(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_1000047A0(v6);
  }

  v10 = *(v1 + OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_state);
  if (v10 < 0)
  {
    v11 = *(v1 + 16);
    v12 = *(v1 + 24);
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_1000080B0(v10, v11, v12);
    }
  }
}

uint64_t sub_100005D98()
{

  v1 = OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_wallpaperState;
  v2 = sub_100012CC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t _s6CameraCMa(uint64_t a1)
{
  result = qword_100023350;
  if (!qword_100023350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005E98(uint64_t a1)
{
  result = sub_100012CC4();
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

uint64_t _s6CameraC5StateOwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 65473 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65473 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65473;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65473;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65473;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 15) | (2 * ((*a1 >> 10) & 0x18 | (*a1 >> 5)))) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *_s6CameraC5StateOwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65473 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65473 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 16) + 1;
    *result = a2 - 63;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = (((-a2 & 0x30) << 9) - (a2 << 15)) & 0xFF1F | (32 * ((-a2 >> 1) & 7));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100006118(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000613C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 68))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000615C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
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

  *(result + 68) = v3;
  return result;
}

uint64_t sub_1000061AC(char a1)
{
  result = 0x327974696E75;
  switch(a1)
  {
    case 1:
      result = 0x64657265746E6563;
      break;
    case 2:
      result = 0x59707565736F6C63;
      break;
    case 3:
      result = 0x54707565736F6C63;
      break;
    case 4:
      result = 0x55707565736F6C63;
      break;
    case 5:
      result = 0x4E707565736F6C63;
      break;
    case 6:
      result = 0x54707565736F6C63;
      break;
    case 7:
      result = 0x4E707565736F6C63;
      break;
    case 8:
      result = 0x55707565736F6C63;
      break;
    case 9:
      result = 0x7974696E75;
      break;
    case 10:
      result = 0x6964654D64617069;
      break;
    case 11:
      result = 0x74696E5564617069;
      break;
    case 12:
      result = 0x314E64617069;
      break;
    case 13:
      result = 0x74696E5564617069;
      break;
    case 14:
      result = 0x74696E5564617069;
      break;
    case 15:
      result = 0x74696E5564617069;
      break;
    case 16:
    case 17:
      result = 0x736F6C4364617069;
      break;
    case 18:
      result = 0x6863724164617069;
      break;
    case 19:
      result = 0x6863724164617069;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100006430(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000061AC(*a1);
  v5 = v4;
  if (v3 == sub_1000061AC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000133E4();
  }

  return v8 & 1;
}

Swift::Int sub_1000064B8()
{
  v1 = *v0;
  sub_100013414();
  sub_1000061AC(v1);
  sub_100013034();

  return sub_100013424();
}

uint64_t sub_10000651C(uint64_t a1)
{
  sub_1000061AC(*v1);
  sub_100013034();
}

Swift::Int sub_100006570(uint64_t a1)
{
  v2 = *v1;
  sub_100013414();
  sub_1000061AC(v2);
  sub_100013034();

  return sub_100013424();
}

unint64_t sub_1000065D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100007E60(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100006600@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000061AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_10000663C()
{
  v1 = sub_100012DD4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32[-2] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100012E24();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32[-2] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012C34();
  sub_100012E14();
  (*(v6 + 8))(v8, v5);
  sub_100012C44();
  sub_100012DC4();
  v10 = v9;
  (*(v2 + 8))(v4, v1);
  if ((*(v0 + 132) & 1) == 0)
  {
    v31 = *(v0 + 64);
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 120);
    v17 = *(v0 + 112);
    goto LABEL_12;
  }

  v11 = *(v0 + OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_state);
  if (*(v0 + 32) == 1)
  {
    if (v11 >= 0)
    {
      LOBYTE(v11) = HIBYTE(*(v0 + OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_state));
    }

    v12 = 0.0;
    goto LABEL_10;
  }

  v18 = v10;
  if (v11 < 0)
  {
    v12 = v18;
LABEL_10:
    sub_1000081C4(v11, &v34, v12);
    goto LABEL_11;
  }

  v19 = HIBYTE(*(v0 + OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_state));
  sub_1000081C4(v11, v32, v18);
  sub_1000081C4(v19, v33, v18);
  v20.n128_f32[0] = 1.0 - v18;
  sub_100006938(v33, &v34, v20);
LABEL_11:
  v31 = v34;
  v15 = v35;
  v17 = v38;
  v16 = v39;
  v14 = v36;
  v13 = v37;
LABEL_12:
  if (qword_100022FC8 != -1)
  {
    swift_once();
  }

  v21 = 1.0;
  if (byte_100023300 == 1)
  {
    sub_100012C84();
    v21 = ((1.0 - v22) * 0.35) + 1.0;
  }

  sub_100012C74();
  HIDWORD(v23) = DWORD1(v31);
  v40 = v31;
  *&v23 = v15 * v21;
  v41 = v15 * v21;
  v42 = v14;
  v43 = v13;
  v44 = v17;
  v45 = v16;
  v46 = LODWORD(v24);
  sub_100006AD8(v24, v23, v25, v26, v27, v28, v29, v30);
}

float sub_100006938@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v24 = a3;
  v6 = sub_1000130F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = vsubq_f32(*a1, *v3);
  v11 = vmuls_lane_f32(v24.n128_f32[0], v10, 2);
  v10.i64[0] = vaddq_f32(*v3, vmulq_n_f32(v10, v24.n128_f32[0])).u64[0];
  v10.f32[2] = COERCE_FLOAT(*(v3 + 8)) + v11;
  v10.i32[3] = 0;
  v23 = v10;
  v12 = *(v3 + 16) + ((*(a1 + 16) - *(v3 + 16)) * v24.n128_f32[0]);
  v13 = *(v3 + 32);
  v21 = *(v3 + 48);
  v22 = v13;
  v14 = *(a1 + 32);
  v20[0] = *(a1 + 48);
  v20[1] = v14;
  (*(v7 + 104))(v9, enum case for SPRotation3D.SlerpPath.shortest(_:), v6);
  sub_1000130E4();
  v21 = v16;
  v22 = v15;
  (*(v7 + 8))(v9, v6);
  result = *(v3 + 64) + ((*(a1 + 64) - *(v3 + 64)) * v24.n128_f32[0]);
  v18 = v22;
  *a2 = v23;
  *(a2 + 16) = v12;
  v19 = v21;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *(a2 + 64) = result;
  return result;
}

double sub_100006AD8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, __n128 a8)
{
  v9 = *(v8 + 32);
  v10 = *(v8 + 56);
  v23.f64[0] = *(v8 + 48);
  v23.f64[1] = v10;
  v22 = v9;
  sub_10000940C(&v22, v24, a8);
  sub_1000094B0(v24, &v22, v24[1], v24[3], v24[5]);
  v11 = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v23);
  __asm { FMOV            V5.4S, #1.0 }

  v17 = *(v8 + 64);
  if (v17 != 0.0)
  {
    v21 = v11;
    v18 = __sincosf_stret(v17);
    LODWORD(v19) = HIDWORD(v18);
    *(&v19 + 1) = -*&v18;
    v11.i64[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v21.f32[0]), v18, *v21.f32, 1), xmmword_1000148A0, v21, 2), xmmword_1000148B0, v21, 3).u64[0];
  }

  return *v11.i64;
}

uint64_t sub_100006C6C()
{
  if (qword_100022FC8 != -1)
  {
    result = swift_once();
  }

  if (byte_100023300)
  {
    v0 = &off_10001CF98;
  }

  else
  {
    v0 = &off_10001CFC8;
  }

  off_100023308 = v0;
  return result;
}

uint64_t sub_100006CDC()
{
  if (qword_100022FC8 != -1)
  {
    result = swift_once();
  }

  if (byte_100023300)
  {
    v0 = 11;
  }

  else
  {
    v0 = 9;
  }

  byte_100023310 = v0;
  return result;
}

uint64_t sub_100006D58(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_100013414();
    sub_1000061AC(a1);
    sub_100013034();

    v4 = sub_100013424();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xE600000000000000;
        v9 = 0x327974696E75;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v8 = 0xE90000000000004ELL;
            v9 = 0x64657265746E6563;
            break;
          case 2:
            v8 = 0xE800000000000000;
            v9 = 0x59707565736F6C63;
            break;
          case 3:
            v8 = 0xE800000000000000;
            v9 = 0x54707565736F6C63;
            break;
          case 4:
            v8 = 0xE90000000000004ELL;
            goto LABEL_24;
          case 5:
            v8 = 0xE800000000000000;
            v9 = 0x4E707565736F6C63;
            break;
          case 6:
            v9 = 0x54707565736F6C63;
            goto LABEL_20;
          case 7:
            v9 = 0x4E707565736F6C63;
LABEL_20:
            v8 = 0xE900000000000032;
            break;
          case 8:
            v8 = 0xE800000000000000;
LABEL_24:
            v9 = 0x55707565736F6C63;
            break;
          case 9:
            v8 = 0xE500000000000000;
            v9 = 0x7974696E75;
            break;
          case 0xA:
            v9 = 0x6964654D64617069;
            v8 = 0xEA00000000006D75;
            break;
          case 0xB:
            v8 = 0xE900000000000079;
            v9 = 0x74696E5564617069;
            break;
          case 0xC:
            v9 = 0x314E64617069;
            break;
          case 0xD:
            v9 = 0x74696E5564617069;
            v8 = 0xEA00000000003279;
            break;
          case 0xE:
            v8 = 0xEA00000000003379;
            v9 = 0x74696E5564617069;
            break;
          case 0xF:
            v8 = 0xEA00000000003479;
            v9 = 0x74696E5564617069;
            break;
          case 0x10:
            v9 = 0x736F6C4364617069;
            v8 = 0xEC00000031707565;
            break;
          case 0x11:
            v9 = 0x736F6C4364617069;
            v8 = 0xEC00000032707565;
            break;
          case 0x12:
            v9 = 0x6863724164617069;
            v8 = 0xEB00000000317365;
            break;
          case 0x13:
            v8 = 0xEB00000000327365;
            v9 = 0x6863724164617069;
            break;
          default:
            break;
        }

        v10 = 0xE600000000000000;
        v11 = 0x327974696E75;
        switch(a1)
        {
          case 1:
            v10 = 0xE90000000000004ELL;
            if (v9 == 0x64657265746E6563)
            {
              goto LABEL_62;
            }

            goto LABEL_63;
          case 2:
            v10 = 0xE800000000000000;
            if (v9 != 0x59707565736F6C63)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          case 3:
            v10 = 0xE800000000000000;
            if (v9 != 0x54707565736F6C63)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          case 4:
            v10 = 0xE90000000000004ELL;
            if (v9 != 0x55707565736F6C63)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          case 5:
            v10 = 0xE800000000000000;
            if (v9 != 0x4E707565736F6C63)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          case 6:
            v13 = 0x54707565736F6C63;
            goto LABEL_53;
          case 7:
            v13 = 0x4E707565736F6C63;
LABEL_53:
            v10 = 0xE900000000000032;
            if (v9 != v13)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          case 8:
            v10 = 0xE800000000000000;
            v11 = 0x55707565736F6C63;
            goto LABEL_61;
          case 9:
            v10 = 0xE500000000000000;
            if (v9 != 0x7974696E75)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          case 10:
            v14 = 0x6964654D64617069;
            v15 = 28021;
            goto LABEL_58;
          case 11:
            v10 = 0xE900000000000079;
            goto LABEL_41;
          case 12:
            if (v9 != 0x314E64617069)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          case 13:
            v14 = 0x74696E5564617069;
            v15 = 12921;
LABEL_58:
            v10 = v15 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
            if (v9 != v14)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          case 14:
            v10 = 0xEA00000000003379;
            goto LABEL_41;
          case 15:
            v10 = 0xEA00000000003479;
LABEL_41:
            if (v9 != 0x74696E5564617069)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          case 16:
            v12 = 829453669;
            goto LABEL_47;
          case 17:
            v12 = 846230885;
LABEL_47:
            v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v9 != 0x736F6C4364617069)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          case 18:
            v10 = 0xEB00000000317365;
            if (v9 != 0x6863724164617069)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          case 19:
            v10 = 0xEB00000000327365;
            if (v9 != 0x6863724164617069)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          default:
LABEL_61:
            if (v9 != v11)
            {
              goto LABEL_63;
            }

LABEL_62:
            if (v8 == v10)
            {

              v16 = 1;
              return v16 & 1;
            }

LABEL_63:
            v16 = sub_1000133E4();

            if (v16)
            {
              return v16 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v16 & 1;
            }

            break;
        }
      }
    }
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1000073A4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100007418(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100007474(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100007474(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007540(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000047EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000047A0(v11);
  return v7;
}

unint64_t sub_100007540(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000764C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100013254();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000764C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100007698(a1, a2);
  sub_1000077C8(&off_10001CFF8);
  return v3;
}

char *sub_100007698(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000078B4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100013254();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100013054();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000078B4(v10, 0);
        result = sub_100013224();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000077C8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100007928(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000078B4(uint64_t a1, uint64_t a2)
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

  sub_100004698(&qword_100023490, &qword_100014BE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007928(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004698(&qword_100023490, &qword_100014BE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100007A1C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_100007A2C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100007AB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007B18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007AD8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007C0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100007AF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007D18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007B18(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004698(&qword_100023488, &qword_100014BD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_100007C0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004698(&qword_100023498, &qword_100014BE8);
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

void *sub_100007D18(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004698(&qword_1000234A0, &unk_100014BF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004698(&qword_1000238F0, &qword_100014FF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100007E60(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000133F4();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100007EB4(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  sub_100013234(19);

  v15._countAndFlagsBits = a1;
  v15._object = a2;
  sub_100013044(v15);
  v5 = sub_100012FE4();

  v6 = [v4 stringForKey:{v5, 0xD000000000000011, 0x80000001000152B0}];

  if (!v6 || (v7 = sub_100012FF4(), v9 = v8, v6, result = sub_100007E60(v7, v9), result == 20))
  {
    if (qword_100022FC0 != -1)
    {
      swift_once();
    }

    v11 = sub_100012E54();
    sub_1000024A8(v11, qword_100023B40);
    v12 = sub_100012E34();
    v13 = sub_100013114();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "did not find cameraIdentifier in defaults, choosing hero", v14, 2u);
    }

    if (qword_100022FD8 != -1)
    {
      swift_once();
    }

    return byte_100023310;
  }

  return result;
}

void sub_1000080B0(char a1, uint64_t a2, void *a3)
{
  v6 = [objc_opt_self() standardUserDefaults];
  sub_1000061AC(a1);
  v7 = sub_100012FE4();

  sub_100013234(19);

  v10._countAndFlagsBits = a2;
  v10._object = a3;
  sub_100013044(v10);
  v8 = sub_100012FE4();

  [v6 setObject:v7 forKey:v8];
}

float sub_1000081C4@<S0>(char a1@<W0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = sub_100013154();
  switch(a1)
  {
    case 1:
      v174.radians = sub_1000094EC(56.8289604);
      v175.radians = sub_1000094EC(73.532402);
      v176.radians = sub_1000094EC(122.778015);
      sub_100013104(v177, v174, v175, v176, v6);
      v301 = v178;
      v302 = v179;
      LODWORD(v303[0].f64[0]) = v180;
      sub_100009508(&v301, v307);
      v305 = xmmword_100014AE0;
      v306 = 1142684019;
      v308 = 0;
      v181.radians = sub_1000094EC(139.638397);
      v182.radians = sub_1000094EC(61.4826088);
      v183.radians = sub_1000094EC(-134.258057);
      v184 = sub_100013154();
      sub_100013104(v185, v181, v182, v183, v184);
      v295 = v186;
      v296 = v187;
      LODWORD(v297) = v188;
      sub_100009508(&v295, v303);
      v22 = xmmword_100014AF0;
      v301 = xmmword_100014AF0;
      v23 = 1123231477;
      break;
    case 2:
      v99.radians = sub_1000094EC(174.538498);
      v100.radians = sub_1000094EC(83.8009033);
      v101.radians = sub_1000094EC(-139.017426);
      sub_100013104(v102, v99, v100, v101, v6);
      v301 = v103;
      v302 = v104;
      LODWORD(v303[0].f64[0]) = v105;
      sub_100009508(&v301, v307);
      v305 = xmmword_100014AC0;
      v306 = 1141233445;
      v308 = 0;
      v106.radians = sub_1000094EC(-178.997025);
      v107.radians = sub_1000094EC(69.7653198);
      v108.radians = sub_1000094EC(-110.319145);
      v109 = sub_100013154();
      sub_100013104(v110, v106, v107, v108, v109);
      v295 = v111;
      v296 = v112;
      LODWORD(v297) = v113;
      sub_100009508(&v295, v303);
      v22 = xmmword_100014AD0;
      v301 = xmmword_100014AD0;
      v23 = 1134028969;
      break;
    case 3:
      v144.radians = sub_1000094EC(119.176758);
      v145.radians = sub_1000094EC(68.7315521);
      v146.radians = sub_1000094EC(172.83078);
      sub_100013104(v147, v144, v145, v146, v6);
      v301 = v148;
      v302 = v149;
      LODWORD(v303[0].f64[0]) = v150;
      sub_100009508(&v301, v307);
      v305 = xmmword_100014AA0;
      v306 = 1138188195;
      v308 = 0;
      v151.radians = sub_1000094EC(126.006264);
      v152.radians = sub_1000094EC(55.8731918);
      v153.radians = sub_1000094EC(-172.47522);
      v154 = sub_100013154();
      sub_100013104(v155, v151, v152, v153, v154);
      v295 = v156;
      v296 = v157;
      LODWORD(v297) = v158;
      sub_100009508(&v295, v303);
      v22 = xmmword_100014AB0;
      v301 = xmmword_100014AB0;
      v23 = 1129881567;
      break;
    case 4:
    case 5:
      v7.radians = sub_1000094EC(-177.866226);
      v8.radians = sub_1000094EC(83.6491852);
      v9.radians = sub_1000094EC(-120.597565);
      sub_100013104(v10, v7, v8, v9, v6);
      v301 = v11;
      v302 = v12;
      LODWORD(v303[0].f64[0]) = v13;
      sub_100009508(&v301, v307);
      v305 = xmmword_100014A80;
      v306 = 1140451705;
      v308 = 0;
      v14.radians = sub_1000094EC(160.284698);
      v15.radians = sub_1000094EC(50.3570671);
      v16.radians = sub_1000094EC(-131.766174);
      v17 = sub_100013154();
      sub_100013104(v18, v14, v15, v16, v17);
      v295 = v19;
      v296 = v20;
      LODWORD(v297) = v21;
      sub_100009508(&v295, v303);
      v22 = xmmword_100014A90;
      v301 = xmmword_100014A90;
      v23 = 1126102972;
      break;
    case 6:
      v217.radians = sub_1000094EC(-172.988831);
      v218.radians = sub_1000094EC(59.8771248);
      v219.radians = sub_1000094EC(-121.187599);
      sub_100013104(v220, v217, v218, v219, v6);
      v301 = v221;
      v302 = v222;
      LODWORD(v303[0].f64[0]) = v223;
      sub_100009508(&v301, v307);
      v305 = xmmword_100014A60;
      v306 = 1137094819;
      v308 = 0;
      v224.radians = sub_1000094EC(-151.658081);
      v225.radians = sub_1000094EC(42.1231041);
      v226.radians = sub_1000094EC(-138.263519);
      v227 = sub_100013154();
      sub_100013104(v228, v224, v225, v226, v227);
      v295 = v229;
      v296 = v230;
      LODWORD(v297) = v231;
      sub_100009508(&v295, v303);
      v22 = xmmword_100014A70;
      v301 = xmmword_100014A70;
      v23 = 1130679684;
      break;
    case 7:
      v129.radians = sub_1000094EC(-134.483643);
      v130.radians = sub_1000094EC(50.2313652);
      v131.radians = sub_1000094EC(-81.579277);
      sub_100013104(v132, v129, v130, v131, v6);
      v301 = v133;
      v302 = v134;
      LODWORD(v303[0].f64[0]) = v135;
      sub_100009508(&v301, v307);
      v305 = xmmword_100014A40;
      v306 = 1141116565;
      v308 = 0;
      v136.radians = sub_1000094EC(-143.695862);
      v137.radians = sub_1000094EC(43.077755);
      v138.radians = sub_1000094EC(-84.349144);
      v139 = sub_100013154();
      sub_100013104(v140, v136, v137, v138, v139);
      v295 = v141;
      v296 = v142;
      LODWORD(v297) = v143;
      sub_100009508(&v295, v303);
      v22 = xmmword_100014A50;
      v301 = xmmword_100014A50;
      v23 = 1129654841;
      break;
    case 8:
      v260.radians = sub_1000094EC(-14205.3965);
      v261.radians = sub_1000094EC(83.4248886);
      v262.radians = sub_1000094EC(-148.699402);
      sub_100013104(v263, v260, v261, v262, v6);
      v301 = v264;
      v302 = v265;
      LODWORD(v303[0].f64[0]) = v266;
      sub_100009508(&v301, v307);
      v305 = xmmword_100014A20;
      v306 = 1138531810;
      v308 = 0;
      v267.radians = sub_1000094EC(-89.3314209);
      v268.radians = sub_1000094EC(50.9461899);
      v269.radians = sub_1000094EC(-84.7341537);
      v270 = sub_100013154();
      sub_100013104(v271, v267, v268, v269, v270);
      v295 = v272;
      v296 = v273;
      LODWORD(v297) = v274;
      sub_100009508(&v295, v303);
      v22 = xmmword_100014A30;
      v301 = xmmword_100014A30;
      v23 = 1135053303;
      break;
    case 9:
      v84.radians = sub_1000094EC(138.057953);
      v85.radians = sub_1000094EC(85.1771851);
      v86.radians = sub_1000094EC(64.8984451);
      sub_100013104(v87, v84, v85, v86, v6);
      v301 = v88;
      v302 = v89;
      LODWORD(v303[0].f64[0]) = v90;
      sub_100009508(&v301, v307);
      v305 = xmmword_100014A00;
      v306 = 1146720293;
      v308 = 0;
      v91.radians = sub_1000094EC(-158.026566);
      v92.radians = sub_1000094EC(56.2168007);
      v93.radians = sub_1000094EC(178.12674);
      v94 = sub_100013154();
      sub_100013104(v95, v91, v92, v93, v94);
      v295 = v96;
      v296 = v97;
      LODWORD(v297) = v98;
      sub_100009508(&v295, v303);
      v22 = xmmword_100014A10;
      v301 = xmmword_100014A10;
      v23 = 1134693519;
      break;
    case 10:
      v245.radians = sub_1000094EC(-176.890274);
      v246.radians = sub_1000094EC(82.4601974);
      v247.radians = sub_1000094EC(-148.703781);
      sub_100013104(v248, v245, v246, v247, v6);
      v301 = v249;
      v302 = v250;
      LODWORD(v303[0].f64[0]) = v251;
      sub_100009508(&v301, v307);
      v305 = xmmword_1000149E0;
      v306 = 1137554886;
      v308 = 0;
      v252.radians = sub_1000094EC(94.1863861);
      v253.radians = sub_1000094EC(71.76931);
      v254.radians = sub_1000094EC(152.199509);
      v255 = sub_100013154();
      sub_100013104(v256, v252, v253, v254, v255);
      v295 = v257;
      v296 = v258;
      LODWORD(v297) = v259;
      sub_100009508(&v295, v303);
      v22 = xmmword_1000149F0;
      v301 = xmmword_1000149F0;
      v23 = 1127923884;
      break;
    case 11:
      v54.radians = sub_1000094EC(-72.7447662);
      v55.radians = sub_1000094EC(81.1028748);
      v56.radians = sub_1000094EC(-51.2786827);
      sub_100013104(v57, v54, v55, v56, v6);
      v301 = v58;
      v302 = v59;
      LODWORD(v303[0].f64[0]) = v60;
      sub_100009508(&v301, v307);
      v305 = xmmword_1000149C0;
      v306 = 1143455975;
      v308 = 0;
      v61.radians = sub_1000094EC(-179.072693);
      v62.radians = sub_1000094EC(70.8835526);
      v63.radians = sub_1000094EC(173.638901);
      v64 = sub_100013154();
      sub_100013104(v65, v61, v62, v63, v64);
      v295 = v66;
      v296 = v67;
      LODWORD(v297) = v68;
      sub_100009508(&v295, v303);
      v22 = xmmword_1000149D0;
      v301 = xmmword_1000149D0;
      v23 = 1127152348;
      break;
    case 12:
      v69.radians = sub_1000094EC(138.777451);
      v70.radians = sub_1000094EC(79.2608719);
      v71.radians = sub_1000094EC(128.616455);
      sub_100013104(v72, v69, v70, v71, v6);
      v301 = v73;
      v302 = v74;
      LODWORD(v303[0].f64[0]) = v75;
      sub_100009508(&v301, v307);
      v305 = xmmword_1000149A0;
      v306 = 1130941155;
      v308 = 0;
      v76.radians = sub_1000094EC(-142.353592);
      v77.radians = sub_1000094EC(36.6367989);
      v78.radians = sub_1000094EC(-149.053284);
      v79 = sub_100013154();
      sub_100013104(v80, v76, v77, v78, v79);
      v295 = v81;
      v296 = v82;
      LODWORD(v297) = v83;
      sub_100009508(&v295, v303);
      v22 = xmmword_1000149B0;
      v301 = xmmword_1000149B0;
      v23 = 1124296961;
      break;
    case 13:
      v202.radians = sub_1000094EC(-157.348877);
      v203.radians = sub_1000094EC(67.5018997);
      v204.radians = sub_1000094EC(-119.354576);
      sub_100013104(v205, v202, v203, v204, v6);
      v301 = v206;
      v302 = v207;
      LODWORD(v303[0].f64[0]) = v208;
      sub_100009508(&v301, v307);
      v305 = xmmword_100014980;
      v306 = 1136514724;
      v308 = 0;
      v209.radians = sub_1000094EC(-27.6107216);
      v210.radians = sub_1000094EC(80.4715805);
      v211.radians = sub_1000094EC(7.50085831);
      v212 = sub_100013154();
      sub_100013104(v213, v209, v210, v211, v212);
      v295 = v214;
      v296 = v215;
      LODWORD(v297) = v216;
      sub_100009508(&v295, v303);
      v22 = xmmword_100014990;
      v301 = xmmword_100014990;
      v23 = 1132606792;
      break;
    case 14:
      v39.radians = sub_1000094EC(133.82489);
      v40.radians = sub_1000094EC(85.9180298);
      v41.radians = sub_1000094EC(152.045425);
      sub_100013104(v42, v39, v40, v41, v6);
      v301 = v43;
      v302 = v44;
      LODWORD(v303[0].f64[0]) = v45;
      sub_100009508(&v301, v307);
      v305 = xmmword_100014960;
      v306 = 1141530643;
      v308 = 0;
      v46.radians = sub_1000094EC(-107.398994);
      v47.radians = sub_1000094EC(49.9522514);
      v48.radians = sub_1000094EC(-61.5740662);
      v49 = sub_100013154();
      sub_100013104(v50, v46, v47, v48, v49);
      v295 = v51;
      v296 = v52;
      LODWORD(v297) = v53;
      sub_100009508(&v295, v303);
      v22 = xmmword_100014970;
      v301 = xmmword_100014970;
      v23 = 1130926574;
      break;
    case 15:
      v114.radians = sub_1000094EC(-172.477325);
      v115.radians = sub_1000094EC(84.5102386);
      v116.radians = sub_1000094EC(-153.357498);
      sub_100013104(v117, v114, v115, v116, v6);
      v301 = v118;
      v302 = v119;
      LODWORD(v303[0].f64[0]) = v120;
      sub_100009508(&v301, v307);
      v305 = xmmword_1000148E0;
      v306 = 1140487532;
      v308 = 0;
      v121.radians = sub_1000094EC(-165.976242);
      v122.radians = sub_1000094EC(66.9779129);
      v123.radians = sub_1000094EC(-167.495712);
      v124 = sub_100013154();
      sub_100013104(v125, v121, v122, v123, v124);
      v295 = v126;
      v296 = v127;
      LODWORD(v297) = v128;
      sub_100009508(&v295, v303);
      v22 = xmmword_1000148F0;
      v301 = xmmword_1000148F0;
      v23 = 1127929902;
      break;
    case 16:
      v24.radians = sub_1000094EC(-124.417244);
      v25.radians = sub_1000094EC(39.6585464);
      v26.radians = sub_1000094EC(-85.2038727);
      sub_100013104(v27, v24, v25, v26, v6);
      v301 = v28;
      v302 = v29;
      LODWORD(v303[0].f64[0]) = v30;
      sub_100009508(&v301, v307);
      v305 = xmmword_100014940;
      v306 = 1126107906;
      v308 = 0;
      v31.radians = sub_1000094EC(-118.505836);
      v32.radians = sub_1000094EC(31.2586136);
      v33.radians = sub_1000094EC(-147.682419);
      v34 = sub_100013154();
      sub_100013104(v35, v31, v32, v33, v34);
      v295 = v36;
      v296 = v37;
      LODWORD(v297) = v38;
      sub_100009508(&v295, v303);
      v22 = xmmword_100014950;
      v301 = xmmword_100014950;
      v23 = 1120950260;
      break;
    case 17:
      v189.radians = sub_1000094EC(-125.030479);
      v190.radians = sub_1000094EC(52.3110352);
      v191.radians = sub_1000094EC(-140.614609);
      sub_100013104(v192, v189, v190, v191, v6);
      v301 = v193;
      v302 = v194;
      LODWORD(v303[0].f64[0]) = v195;
      sub_100009508(&v301, v307);
      v305 = xmmword_1000148C0;
      v306 = 1128311788;
      v308 = 0;
      v196.radians = sub_1000094EC(-141.176132);
      v197 = sub_100013154();
      sub_100013104(v198, v189, v190, v196, v197);
      v295 = v199;
      v296 = v200;
      LODWORD(v297) = v201;
      sub_100009508(&v295, v303);
      v22 = xmmword_1000148D0;
      v301 = xmmword_1000148D0;
      v23 = 1133744212;
      break;
    case 18:
      v232.radians = sub_1000094EC(-136.523987);
      v233.radians = sub_1000094EC(36.0046616);
      v234.radians = sub_1000094EC(-87.2186203);
      sub_100013104(v235, v232, v233, v234, v6);
      v301 = v236;
      v302 = v237;
      LODWORD(v303[0].f64[0]) = v238;
      sub_100009508(&v301, v307);
      v305 = xmmword_100014920;
      v306 = 1127455705;
      v308 = 0;
      v239.radians = sub_1000094EC(-137.953094);
      v240 = sub_100013154();
      sub_100013104(v241, v232, v233, v239, v240);
      v295 = v242;
      v296 = v243;
      LODWORD(v297) = v244;
      sub_100009508(&v295, v303);
      v22 = xmmword_100014930;
      v301 = xmmword_100014930;
      v23 = 1124543546;
      break;
    case 19:
      v275.radians = sub_1000094EC(-147.017639);
      v276.radians = sub_1000094EC(57.3724403);
      v277.radians = sub_1000094EC(-85.8829269);
      sub_100013104(v278, v275, v276, v277, v6);
      v301 = v279;
      v302 = v280;
      LODWORD(v303[0].f64[0]) = v281;
      sub_100009508(&v301, v307);
      v305 = xmmword_100014900;
      v306 = 1128250216;
      v308 = 0;
      v282.radians = sub_1000094EC(-94.7247238);
      v283.radians = sub_1000094EC(42.0284882);
      v284.radians = sub_1000094EC(-36.5755348);
      v285 = sub_100013154();
      sub_100013104(v286, v282, v283, v284, v285);
      v295 = v287;
      v296 = v288;
      LODWORD(v297) = v289;
      sub_100009508(&v295, v303);
      v22 = xmmword_100014910;
      v301 = xmmword_100014910;
      v23 = 1128268422;
      break;
    default:
      v159.radians = sub_1000094EC(207.528976);
      v160.radians = sub_1000094EC(86.5899658);
      v161.radians = sub_1000094EC(278.626007);
      sub_100013104(v162, v159, v160, v161, v6);
      v301 = v163;
      v302 = v164;
      LODWORD(v303[0].f64[0]) = v165;
      sub_100009508(&v301, v307);
      v305 = xmmword_100014B00;
      v306 = 1145486116;
      v308 = 0;
      v166.radians = sub_1000094EC(146.020508);
      v167.radians = sub_1000094EC(63.3351402);
      v168.radians = sub_1000094EC(151.217804);
      v169 = sub_100013154();
      sub_100013104(v170, v166, v167, v168, v169);
      v295 = v171;
      v296 = v172;
      LODWORD(v297) = v173;
      sub_100009508(&v295, v303);
      v22 = xmmword_100014B10;
      v301 = xmmword_100014B10;
      v23 = 1127700702;
      break;
  }

  LODWORD(v302) = v23;
  v304 = 0;
  v22.n128_f32[0] = a3;
  sub_100006938(&v301, &v295, v22);
  result = *&v296;
  v291 = v297;
  v292 = v298;
  v293 = v299;
  v294 = v300;
  *a2 = v295;
  *(a2 + 16) = result;
  *(a2 + 48) = v292;
  *(a2 + 56) = v293;
  *(a2 + 32) = v291;
  *(a2 + 64) = v294;
  return result;
}

double sub_10000940C@<D0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q7>)
{
  _Q0 = *a1;
  _Q2 = a1[1];
  _D1 = a1->f64[1];
  _D5 = _Q2.f64[1];
  __asm { FMLA            D3, D5, V2.D[1] }

  v13 = vmuld_lane_f64(_Q2.f64[0], _Q2, 1);
  v14.f64[0] = vmuld_lane_f64(_D1, _Q2, 1);
  *&v3 = -(v14.f64[0] - a1->f64[0] * _Q2.f64[0]) - (v14.f64[0] - a1->f64[0] * _Q2.f64[0]);
  *(&_Q3 + 1) = v13 + a1->f64[0] * _D1 + v13 + a1->f64[0] * _D1;
  *&v15 = -(v13 - a1->f64[0] * _D1) - (v13 - a1->f64[0] * _D1);
  __asm
  {
    FMLA            D4, D1, V0.D[1]
    FMLA            D4, D5, V2.D[1]
  }

  a3.n128_f64[0] = vmuld_lane_f64(a1->f64[0], _Q2, 1);
  a3.n128_f64[0] = a3.n128_f64[0] + _D1 * _Q2.f64[0] + a3.n128_f64[0] + _D1 * _Q2.f64[0];
  *(&v15 + 1) = _D4 - _Q0.f64[0] * _Q0.f64[0];
  v14.f64[1] = -(a1->f64[0] * _Q2.f64[1]);
  v18 = vmlaq_n_f64(v14, *a1, _Q2.f64[0]);
  *a2 = _Q3;
  *(a2 + 16) = v3;
  __asm { FMLS            D2, D1, V0.D[1] }

  *(a2 + 32) = v15;
  *(a2 + 48) = a3;
  *(a2 + 64) = vaddq_f64(v18, v18);
  *(a2 + 80) = _Q2;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  result = 0.0;
  *(a2 + 112) = 0u;
  return result;
}

__n128 sub_1000094B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>, __n128 a4@<Q3>, __n128 a5@<Q5>)
{
  result = *a1;
  a3.n128_u64[0] = *(a1 + 16);
  v6 = *(a1 + 32);
  a4.n128_u64[0] = *(a1 + 48);
  v7 = *(a1 + 64);
  a5.n128_u64[0] = *(a1 + 80);
  v8 = *(a1 + 96);
  __asm { FMOV            V7.2D, #1.0 }

  *&_Q7 = *(a1 + 112);
  *a2 = *a1;
  *(a2 + 16) = a3;
  *(a2 + 32) = v6;
  *(a2 + 48) = a4;
  *(a2 + 64) = v7;
  *(a2 + 80) = a5;
  *(a2 + 96) = v8;
  *(a2 + 112) = _Q7;
  return result;
}

void sub_100009508(uint64_t a1@<X0>, float64x2_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  __asm { FMOV            V2.2D, #0.5 }

  xa = vmulq_f64(*a1, _Q2);
  v23 = *&vmulq_f64(*(a1 + 16), _Q2);
  v20 = _simd_cos_d2(xa);
  v19 = _simd_cos_d2(v23);
  x = _simd_sin_d2(xa);
  v9 = _simd_sin_d2(v23);
  if (v3 == 2)
  {
    *&v16.f64[0] = v9.i64[0];
    v16.f64[1] = -*v9.i64;
    v17 = vmulq_f64(vzip1q_s64(v20, x), v16);
    v18 = vdupq_lane_s64(v9.i64[0], 0);
    v18.f64[0] = -v19.f64[0];
    v14 = vmlaq_f64(vmulq_f64(v17, vzip2q_s64(x, v20)), vzip2q_s64(v20, x), vmulq_f64(vzip1q_s64(v19, v20), vzip1q_s64(x, v19)));
    v15 = vmlaq_f64(vmulq_f64(vmulq_f64(vextq_s8(x, x, 8uLL), x), v18), vzip1q_s64(v9, v19), vmulq_f64(vextq_s8(v20, v20, 8uLL), v20));
  }

  else
  {
    if (v3 != 1)
    {
      v15 = unk_100014D10;
      *a2 = xmmword_100014D00;
      goto LABEL_7;
    }

    v10.f64[0] = v19.f64[0];
    v10.f64[1] = x.f64[1];
    v11 = vdupq_lane_s64(v9.i64[0], 0);
    v12.f64[1] = v11.f64[1];
    v12.f64[0] = -x.f64[0];
    *&v13.f64[0] = v9.i64[0];
    v13.f64[1] = v20.f64[1];
    v11.f64[0] = -v20.f64[0];
    v14 = vmlaq_f64(vmulq_f64(vmulq_f64(vextq_s8(x, x, 8uLL), v13), v11), vzip1q_s64(x, v19), vmulq_f64(vextq_s8(v20, v20, 8uLL), v10));
    v15 = vmlaq_f64(vmulq_f64(vmulq_laneq_f64(v12, x, 1), vzip1q_s64(v19, x)), vzip1q_s64(v9, v20), vmulq_f64(v20, vextq_s8(v20, v19, 8uLL)));
  }

  *a2 = v14;
LABEL_7:
  a2[1] = v15;
}

unint64_t sub_100009670()
{
  result = qword_100023480;
  if (!qword_100023480)
  {
    sub_100012DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023480);
  }

  return result;
}

uint64_t sub_1000096C8(uint64_t a1)
{
  v2 = sub_100004698(&qword_100023478, &qword_100014BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s6CameraC10IdentifierOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6CameraC10IdentifierOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000098A4()
{
  result = qword_1000234A8;
  if (!qword_1000234A8)
  {
    sub_100009908(&qword_1000234B0, qword_100014C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000234A8);
  }

  return result;
}

uint64_t sub_100009908(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100009954()
{
  result = qword_1000234B8;
  if (!qword_1000234B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000234B8);
  }

  return result;
}

uint64_t sub_1000099A8()
{

  return _swift_deallocClassInstance(v0, 149, 15);
}

void sub_100009A1C()
{
  v0 = kCGColorSpaceSRGB;
  v1 = CGColorSpaceCreateWithName(v0);

  qword_100023B60 = v1;
}

uint64_t sub_100009A60()
{
  v0 = sub_100004698(&unk_1000236C0, &qword_100014E28);
  sub_100002444(v0, qword_100023B68);
  v1 = sub_1000024A8(v0, qword_100023B68);
  v2 = sub_100012D84();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

void sub_100009B00(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void, void, void))
{
  v61 = a4;
  v62 = a2;
  v5 = sub_100012CC4();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = __chkstk_darwin(v5);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = &v53 - v8;
  *&v60 = sub_100012C94();
  v9 = *(v60 - 8);
  __chkstk_darwin(v60);
  v11 = (&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_100012DD4();
  v12 = *(v59 - 8);
  __chkstk_darwin(v59);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100012E24();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012C34();
  sub_100012E14();
  v20 = v19;
  (*(v16 + 8))(v18, v15);
  v21 = v60;
  sub_100012C44();
  sub_100012DB4();
  v23 = v22;
  (*(v12 + 8))(v14, v59);
  v59 = a1;
  sub_100012CA4();
  if ((*(v9 + 88))(v11, v21) != enum case for WallpaperMetalCoordination.WallpaperState.Look.constant(_:))
  {
    goto LABEL_15;
  }

  (*(v9 + 96))(v11, v21);
  v24 = sub_100003EBC(*v11, v11[1]);
  if (v24 == 6)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  v26 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v27 = [objc_allocWithZone(MTLRenderPassDepthAttachmentDescriptor) init];
  [v27 setLoadAction:2];
  [v27 setStoreAction:0];
  v28 = v61;
  [v27 setTexture:{sub_10000A1F0(v62, v61)}];

  swift_unknownObjectRelease();
  [v26 setDepthAttachment:v27];

  v29 = [v26 colorAttachments];
  v30 = [v29 objectAtIndexedSubscript:0];

  if (!v30)
  {
    __break(1u);
LABEL_15:
    sub_100013374();
    __break(1u);
    return;
  }

  v31 = v20;
  v32 = 1.0 - v23;
  v33 = v30;
  [v33 setLoadAction:2];
  [v33 setStoreAction:2];
  sub_100002138(v25);
  v35 = v34;
  if ((1.0 - v31) > v32)
  {
    v36 = 1.0 - v31;
  }

  else
  {
    v36 = v32;
  }

  v37 = sub_100002380((v36 * 0.2));

  *&v38 = sub_1000022EC();
  v60 = v38;

  [v33 setClearColor:{*&v60, *(&v60 + 1), *(&v60 + 2), 1.0}];
  v39 = v62;
  [v33 setTexture:{sub_10000B97C(v62, v28)}];
  swift_unknownObjectRelease();
  [v33 setResolveTexture:v39];

  v40 = [v28 renderCommandEncoderWithDescriptor:v26];
  if (v40)
  {
    v41 = v59;
    if ((sub_100012C54() & 1) == 0)
    {
      v42 = *(v57 + 40);
      v43 = v55;
      v44 = v56;
      v61 = *(v55 + 16);
      LODWORD(v62) = v25;
      (v61)(v58, v41, v56);
      v45 = OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_wallpaperState;
      swift_beginAccess();
      v46 = v54;
      (v61)(v54, v42 + v45, v44);
      swift_beginAccess();
      v47 = v58;
      (*(v43 + 24))(v42 + v45, v58, v44);
      swift_endAccess();
      sub_100004AA4(v46);
      v48 = *(v43 + 8);
      v48(v46, v44);
      v25 = v62;
      v48(v47, v44);
    }

    sub_10000663C();
    sub_10000A308(v40, v25, v31, v32, v49, v50, v51, v52);
    [v40 endEncoding];
    swift_unknownObjectRelease();
  }
}

id sub_10000A1F0(void *a1, void *a2)
{
  v3 = [objc_opt_self() texture2DDescriptorWithPixelFormat:252 width:objc_msgSend(a1 height:"width") mipmapped:objc_msgSend(a1, "height"), 0];
  [v3 setTextureType:4];
  [v3 setSampleCount:4];
  [v3 setUsage:4];
  [v3 setStorageMode:3];
  v4 = [objc_msgSend(a2 "device")];

  swift_unknownObjectRelease();
  return v4;
}

void sub_10000A308(void *a1, uint64_t a2, float a3, float a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v9 = v8;
  v10 = a2;
  [a1 setRenderPipelineState:*(v8 + 24)];
  [a1 setDepthStencilState:*(v8 + 32)];
  v65 = a1;
  [a1 setCullMode:0];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  if (a3 > a4)
  {
    v14 = a3;
  }

  else
  {
    v14 = a4;
  }

  *&v77 = (v14 * 0.5) + 0.5;
  if ((v10 - 1) >= 2u)
  {
    v16 = sub_100012FE4();
    v15 = [objc_opt_self() colorNamed:v16];

    if (!v15)
    {
      __break(1u);
      goto LABEL_49;
    }
  }

  else
  {
    v15 = [objc_opt_self() whiteColor];
  }

  v17 = 1.0 - a3;
  if ((1.0 - a3) <= a4)
  {
    v17 = a4;
  }

  v18 = (v17 * 0.2);
  v19 = sub_100002380(v18);

  *&v20 = sub_1000022EC();
  v62 = v20;

  v78 = v62;
  if ((v10 - 1) < 2u)
  {
    v21 = sub_100012FE4();
    v22 = [objc_opt_self() colorNamed:v21];

    if (v22)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v23 = sub_100012FE4();
  v22 = [objc_opt_self() colorNamed:v23];

  if (!v22)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_13:
  v24 = sub_100002380(v18);

  *&v25 = sub_1000022EC();
  v63 = v25;

  v79 = v63;
  if ((v10 - 1) < 2u)
  {
    v26 = sub_100012FE4();
    v27 = [objc_opt_self() colorNamed:v26];

    if (v27)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v28 = sub_100012FE4();
  v27 = [objc_opt_self() colorNamed:v28];

  if (!v27)
  {
LABEL_50:
    __break(1u);
    return;
  }

LABEL_17:
  v29 = sub_100002380(v18);

  *&v30 = sub_1000022EC();
  v64 = v30;

  v80 = v64;
  sub_10000B1C0(v10, v74, a3);
  v75 = v74[0];
  v76 = v74[1];
  [a1 setFragmentBytes:&v75 length:96 atIndex:0];
  v31 = [objc_opt_self() currentDevice];
  v32 = [v31 userInterfaceIdiom];

  v33 = *(v9 + 40);
  v34 = 15.0;
  if (v32 == 1)
  {
    v34 = 15.0 / v33;
  }

  v35 = sub_1000094EC(v34);
  sub_10000BAEC(&v66, v35, v33);
  v36 = vcvt_hight_f32_f64(vcvt_f32_f64(v66), v67);
  v37 = vcvt_hight_f32_f64(vcvt_f32_f64(v68), v69);
  v38 = vcvt_hight_f32_f64(vcvt_f32_f64(v70), v71);
  v39 = vcvt_hight_f32_f64(vcvt_f32_f64(v72), v73);
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  v66 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, a5.f32[0]), v37, *a5.f32, 1), v38, a5, 2), v39, a5, 3);
  v67 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, a6.f32[0]), v37, *a6.f32, 1), v38, a6, 2), v39, a6, 3);
  v68 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, a7.f32[0]), v37, *a7.f32, 1), v38, a7, 2), v39, a7, 3);
  v69 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, a8.f32[0]), v37, *a8.f32, 1), v38, a8, 2), v39, a8, 3);
  [a1 setVertexBytes:&v66 length:112 atIndex:1];
  v56 = *(v9 + 16);
  if (v56 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100013384())
  {
    v41 = 0;
    while (1)
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v42 = sub_100013244();
      }

      else
      {
        if (v41 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v42 = *(v56 + 32 + 8 * v41);
      }

      v43 = v42;
      if (__OFADD__(v41++, 1))
      {
        break;
      }

      v45 = [v42 vertexBuffers];
      sub_1000048B8(0, &qword_100023688, MTKMeshBuffer_ptr);
      v46 = sub_100013084();

      if ((v46 & 0xC000000000000001) != 0)
      {
        v47 = sub_100013244();
      }

      else
      {
        if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v47 = *(v46 + 32);
      }

      v48 = v47;

      v60 = v48;
      [v65 setVertexBuffer:objc_msgSend(v48 offset:"buffer") atIndex:{objc_msgSend(v48, "offset"), 0}];
      swift_unknownObjectRelease();
      v49 = [v43 submeshes];
      sub_1000048B8(0, &qword_100023690, MTKSubmesh_ptr);
      v50 = sub_100013084();

      if (v50 >> 62)
      {
        v51 = sub_100013384();
        if (!v51)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v51)
        {
          goto LABEL_22;
        }
      }

      if (v51 < 1)
      {
        goto LABEL_44;
      }

      v52 = 0;
      do
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v53 = sub_100013244();
        }

        else
        {
          v53 = *(v50 + 8 * v52 + 32);
        }

        v54 = v53;
        ++v52;
        v55 = [v53 indexBuffer];
        [v65 drawIndexedPrimitives:objc_msgSend(v54 indexCount:"primitiveType") indexType:objc_msgSend(v54 indexBuffer:"indexCount") indexBufferOffset:{objc_msgSend(v54, "indexType"), objc_msgSend(v55, "buffer"), objc_msgSend(v55, "offset")}];

        swift_unknownObjectRelease();
      }

      while (v51 != v52);
LABEL_22:

      if (v41 == i)
      {
        return;
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
    ;
  }
}

uint64_t sub_10000AAC8()
{
  if (qword_100022FE8 != -1)
  {
    swift_once();
  }

  v0 = qword_100023B60;
  v1 = qword_100023B60;
  return v0;
}

uint64_t sub_10000AB2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100022FF0 != -1)
  {
    swift_once();
  }

  v2 = sub_100004698(&unk_1000236C0, &qword_100014E28);
  v3 = sub_1000024A8(v2, qword_100023B68);

  return sub_10000BB64(v3, a1);
}

uint64_t sub_10000ABB0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  result = sub_10000B798(a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    *a1 = result;
  }

  return result;
}

id sub_10000AC00(void *a1, MDLVertexDescriptor *a2, id a3)
{
  v6 = [a1 newDefaultLibrary];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
    v9 = MTKMetalVertexDescriptorFromModelIO(a2);
    [v8 setVertexDescriptor:v9];

    v10 = sub_100012FE4();
    v11 = [v7 newFunctionWithName:v10];

    [v8 setVertexFunction:v11];
    swift_unknownObjectRelease();
    v12 = sub_100012FE4();
    v13 = [v7 newFunctionWithName:v12];

    [v8 setFragmentFunction:v13];
    swift_unknownObjectRelease();
    v14 = [v8 colorAttachments];
    v15 = [v14 objectAtIndexedSubscript:0];

    if (!v15)
    {
      __break(1u);
    }

    [v15 setPixelFormat:a3];

    [v8 setDepthAttachmentPixelFormat:252];
    [v8 setRasterSampleCount:4];
    v21 = 0;
    v16 = [a1 newRenderPipelineStateWithDescriptor:v8 error:&v21];
    a3 = v21;
    if (v16)
    {
      v17 = v16;
      v18 = v21;
      swift_unknownObjectRelease();

      return v17;
    }
  }

  else
  {
    sub_100013374();
    __break(1u);
  }

  v20 = a3;
  sub_100012B54();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10000AEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012B84();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v25[-v9];
  v11 = [objc_opt_self() mainBundle];
  v12 = sub_100012FE4();
  v13 = sub_100012FE4();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (v14)
  {
    sub_100012B74();

    (*(v5 + 32))(v10, v8, v4);
    v15 = [objc_allocWithZone(MTKMeshBufferAllocator) initWithDevice:a1];
    v16 = objc_allocWithZone(MDLAsset);
    v17 = v15;
    sub_100012B64(v18);
    v20 = v19;
    v21 = [v16 initWithURL:v19 vertexDescriptor:a2 bufferAllocator:v17];

    sub_1000048B8(0, &qword_1000236B8, MTKMesh_ptr);
    sub_100013184();
    v23 = v22;
    (*(v5 + 8))(v10, v4);

    return v23;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000B154()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 48, 7);
}

float sub_10000B1C0@<S0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = 6.0;
  if (a1 < 3u)
  {
    v6 = 10.0;
  }

  v7 = 1.0 / (22.0 - (v6 * a3));
  if (a1 == 3)
  {

    goto LABEL_7;
  }

  v8 = sub_1000133E4();

  v9 = 0.0;
  if (v8)
  {
LABEL_7:
    v9 = v7 * a3;
  }

  if (a1 > 4u)
  {

    goto LABEL_12;
  }

  v10 = sub_1000133E4();

  v11 = 0.0;
  if (v10)
  {
LABEL_12:
    v11 = v7 * a3;
  }

  if (a1 == 4)
  {

LABEL_16:
    v13 = v7 * a3;
    goto LABEL_17;
  }

  v12 = sub_1000133E4();

  v13 = 0.0;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_17:
  v14 = (v7 + (v7 + v9)) + v11;
  v15 = (v7 + v14) + v13;
  *a2 = 1036831949;
  *(a2 + 16) = 1058642330;
  *(a2 + 4) = (v7 + v9) + 0.1;
  *(a2 + 8) = v14 + 0.1;
  *(a2 + 12) = v15 + 0.1;
  result = v15 + 0.6;
  *(a2 + 20) = (v7 + v9) + 0.6;
  *(a2 + 24) = v14 + 0.6;
  *(a2 + 28) = result;
  return result;
}

id sub_10000B4B0(void *a1, void *a2, float a3)
{
  v4 = v3;
  v7 = [objc_allocWithZone(MDLVertexDescriptor) init];
  sub_100004698(&qword_100023698, &qword_100014E20);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100014D20;
  v9 = [objc_allocWithZone(MDLVertexAttribute) initWithName:MDLVertexAttributePosition format:786435 offset:0 bufferIndex:0];
  v10 = sub_1000048B8(0, &qword_1000236A0, MDLVertexAttribute_ptr);
  *(v8 + 56) = v10;
  *(v8 + 32) = v9;
  v11 = [objc_allocWithZone(MDLVertexAttribute) initWithName:MDLVertexAttributeNormal format:786435 offset:12 bufferIndex:0];
  *(v8 + 88) = v10;
  *(v8 + 64) = v11;
  v12 = [objc_allocWithZone(MDLVertexAttribute) initWithName:MDLVertexAttributeTextureCoordinate format:786434 offset:24 bufferIndex:0];
  *(v8 + 120) = v10;
  *(v8 + 96) = v12;
  sub_1000048B8(0, &qword_1000236A8, NSMutableArray_ptr);
  v13 = sub_100013194();
  [(MDLVertexDescriptor *)v7 setAttributes:v13];

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000144F0;
  v15 = [objc_allocWithZone(MDLVertexBufferLayout) initWithStride:32];
  *(v14 + 56) = sub_1000048B8(0, &qword_1000236B0, MDLVertexBufferLayout_ptr);
  *(v14 + 32) = v15;
  v16 = sub_100013194();
  [(MDLVertexDescriptor *)v7 setLayouts:v16];

  *(v4 + 24) = sub_10000AC00(a1, v7, a2);
  v17 = [objc_allocWithZone(MTLDepthStencilDescriptor) init];
  [v17 setDepthCompareFunction:1];
  [v17 setDepthWriteEnabled:1];
  result = [a1 newDepthStencilStateWithDescriptor:v17];
  if (result)
  {
    v19 = result;

    *(v4 + 32) = v19;
    v20 = sub_10000AEC8(a1, v7);

    *(v4 + 16) = v20;
    *(v4 + 40) = a3;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000B798(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _s8RendererCMa();
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  *(v11 + 56) = nullsub_1;
  *(v11 + 64) = 0;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 144) = 0;
  *(v11 + 148) = 1;
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  _s6CameraCMa(0);
  v12 = swift_allocObject();
  *(v12 + 32) = 0;
  *(v12 + 40) = nullsub_1;
  *(v12 + 48) = 0;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0;
  *(v12 + 132) = 1;

  sub_100012CB4();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  LOBYTE(a2) = sub_100007EB4(a2, a3);

  *(v12 + OBJC_IVAR____TtCCO15Unity2025Poster15Unity2025Poster8Renderer6Camera_state) = a2 | 0x8000;
  *(v11 + 40) = v12;
  _s8RendererC12MeshRendererCMa();
  swift_allocObject();
  v13 = sub_10000B4B0(a1, 0x50, a4 / a5);
  if (v16)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v13;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v11 + 32) = v14;
  }

  return v11;
}

id sub_10000B97C(void *a1, void *a2)
{
  v3 = [objc_opt_self() texture2DDescriptorWithPixelFormat:80 width:objc_msgSend(a1 height:"width") mipmapped:objc_msgSend(a1, "height"), 0];
  [v3 setPixelFormat:80];
  [v3 setSampleCount:4];
  [v3 setTextureType:4];
  [v3 setUsage:4];
  v4 = [objc_msgSend(a2 "device")];
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  [v3 setStorageMode:v5];
  v6 = [objc_msgSend(a2 "device")];

  swift_unknownObjectRelease();
  return v6;
}

double sub_10000BAEC@<D0>(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = tan(a2 * 0.5);
  *&v6 = 0;
  *(&v6 + 1) = 1.0 / v5;
  *a1 = COERCE_UNSIGNED_INT64(1.0 / v5 / a3);
  a1[1] = 0u;
  a1[2] = v6;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = xmmword_100014D30;
  result = -0.500083347;
  a1[6] = 0u;
  a1[7] = xmmword_100014D40;
  return result;
}

uint64_t sub_10000BB64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004698(&unk_1000236C0, &qword_100014E28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10000BBD4(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    *&v15 = *a1;
    *(&v15 + 1) = v4;
    v16 = v6;
    v17 = v5;
    v18 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_100003088(&v15, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v14;
  }

  else
  {
    v8 = sub_1000122B4(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      *&v15 = *v3;
      if (!v11)
      {
        sub_100003614();
        v12 = v15;
      }

      sub_100010864(v10, v12);

      *v3 = v12;
    }

    else
    {
    }
  }
}

uint64_t sub_10000BD1C(void *a1, uint64_t a2)
{
  v3 = v2;
  v41 = sub_100012D04();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  swift_unknownObjectRetain();
  v43 = a2;
  sub_100003914(&v46);
  v8 = v47;
  v7 = v48;
  v50 = v49;
  v51[0] = v46;
  v9 = OBJC_IVAR____TtC15Unity2025Poster17EditingController_configurations;
  swift_beginAccess();
  v10 = a1;
  sub_10000D1E4(v51, v44);

  sub_10000D240(&v50, v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44[0] = *(v3 + v9);
  *(v3 + v9) = 0x8000000000000000;
  sub_100003088(&v46, v10, isUniquelyReferenced_nonNull_native);

  *(v3 + v9) = v44[0];
  swift_endAccess();
  v45 = v51[0];

  v52._countAndFlagsBits = 44;
  v52._object = 0xE100000000000000;
  sub_100013044(v52);
  v53._countAndFlagsBits = v8;
  v53._object = v7;
  sub_100013044(v53);
  sub_10000D2B0(v51);

  sub_100004900(&v50, &qword_100023768, ">\r");
  v38 = *(&v45 + 1);
  v39 = v45;
  v34 = v10;
  v35 = v3;
  v37 = sub_10000C318(v10);
  v36 = v12;
  *&v45 = &_swiftEmptyArrayStorage;
  sub_100007AD8(0, 6, 0);
  v13 = 0;
  v14 = v45;
  do
  {
    v15 = *(&off_10001D080 + v13 + 32);
    if (v15 == 4)
    {
      v16 = 0x6E65657267;
    }

    else
    {
      v16 = 1684828007;
    }

    if (v15 == 4)
    {
      v17 = 0xE500000000000000;
    }

    else
    {
      v17 = 0xE400000000000000;
    }

    if (v15 == 3)
    {
      v16 = 6579570;
      v17 = 0xE300000000000000;
    }

    if (v15 == 1)
    {
      v18 = 0x6B63616C62;
    }

    else
    {
      v18 = 0x6D61657263;
    }

    if (!*(&off_10001D080 + v13 + 32))
    {
      v18 = 0x7974696E75;
    }

    if (*(&off_10001D080 + v13 + 32) <= 2u)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    if (*(&off_10001D080 + v13 + 32) <= 2u)
    {
      v20 = 0xE500000000000000;
    }

    else
    {
      v20 = v17;
    }

    *&v45 = v14;
    v22 = *(v14 + 16);
    v21 = *(v14 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_100007AD8((v21 > 1), v22 + 1, 1);
      v14 = v45;
    }

    ++v13;
    *(v14 + 16) = v22 + 1;
    v23 = v14 + 16 * v22;
    *(v23 + 32) = v19;
    *(v23 + 40) = v20;
  }

  while (v13 != 6);
  _s8RendererCMa();
  sub_10000D304();
  v24 = v41;
  v25 = v42;
  *v42 = v14;
  (*(v40 + 104))(v25, enum case for WallpaperMetalCoordination.EditingCoordinator.LookSelectionStyle.paged(_:), v24);
  sub_100012D24();
  swift_allocObject();
  swift_unknownObjectRetain();
  v26 = sub_100012CE4();
  v27 = OBJC_IVAR____TtC15Unity2025Poster17EditingController_coordinators;
  v28 = v35;
  swift_beginAccess();
  v29 = *(v28 + v27);
  if ((v29 & 0xC000000000000001) == 0)
  {

    goto LABEL_31;
  }

  if (v29 < 0)
  {
    v30 = *(v28 + v27);
  }

  else
  {
    v30 = v29 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_100013314();
  if (!__OFADD__(result, 1))
  {
    *(v28 + v27) = sub_100010258(v30, result + 1);
LABEL_31:
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v44[0] = *(v28 + v27);
    sub_100002EE8(v26, v34, v32);
    *(v28 + v27) = v44[0];
    swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_10000C318(void *a1)
{
  v4 = sub_10000CF58();
  v5 = OBJC_IVAR____TtC15Unity2025Poster17EditingController_configurations;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_1000122B4(a1);
    if (v8)
    {
      v9 = (*(v6 + 56) + 48 * v7);
      v2 = v9[3];
      v10 = v9[4];
      v11 = v9[5];

      v12 = v4 >> 62;
      if (!v11)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v18 = [a1 environment];
  swift_getObjectType();
  sub_100003914(v30);
  v10 = v30[4];
  v11 = v31;
  v12 = v4 >> 62;
  if (!v31)
  {
LABEL_4:

    v13 = v4 & 0xFFFFFFFFFFFFFF8;
    if (!v12)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_12:

  v19 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v12)
  {
LABEL_35:
    v29 = v19;
    v20 = sub_100013384();
  }

  else
  {
    v29 = v4 & 0xFFFFFFFFFFFFFF8;
    v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 0;
  while (v20 != v21)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v22 = sub_100013244();
    }

    else
    {
      v19 = *(v29 + 16);
      if (v21 >= v19)
      {
        goto LABEL_34;
      }

      v22 = *(v4 + 8 * v21 + 32);
    }

    v2 = v22;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v23 = [v22 identifier];
    v24 = sub_100012FF4();
    v26 = v25;

    if (v24 == v10 && v11 == v26)
    {
      goto LABEL_30;
    }

    v28 = sub_1000133E4();

    ++v21;
    if (v28)
    {
      goto LABEL_31;
    }
  }

  v13 = v4 & 0xFFFFFFFFFFFFFF8;
  if (!v12)
  {
LABEL_5:
    result = *(v13 + 16);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_29:
    __break(1u);
LABEL_30:

LABEL_31:

    return v10;
  }

LABEL_28:
  result = sub_100013384();
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_6:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v15 = sub_100013244();
    goto LABEL_9;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v4 + 32);
LABEL_9:
    v16 = v15;

    v17 = [v16 identifier];

    v10 = sub_100012FF4();
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000C9F4(void *a1, void *a2, void *a3)
{
  v7 = OBJC_IVAR____TtC15Unity2025Poster17EditingController_coordinators;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = sub_10000DEFC(a1, v8);

  if (v9)
  {
    v11 = [a2 backgroundView];
    v12 = [a3 identifier];
    sub_100012FF4();

    sub_100012CF4();
  }

  return result;
}

id sub_10000CEB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10000CF58()
{
  v0 = sub_100012BD4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100012FC4();
  __chkstk_darwin(v1 - 8);
  sub_100013284();
  v2 = 0;
  do
  {
    ++v2;
    sub_100012FD4();
    sub_100012BC4();
    sub_100013004();
    v3 = objc_allocWithZone(PREditingLook);
    v4 = sub_100012FE4();

    v5 = sub_100012FE4();

    [v3 initWithIdentifier:v4 displayName:v5];

    sub_100013264();
    sub_100013294();
    sub_1000132A4();
    sub_100013274();
  }

  while (v2 != 6);
  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10000D240(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004698(&qword_100023768, ">\r");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000D304()
{
  result = qword_100023770;
  if (!qword_100023770)
  {
    _s8RendererCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023770);
  }

  return result;
}

BOOL sub_10000D35C(void *a1)
{
  v1 = [a1 timeFontIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100012FF4();
  v5 = v4;
  if (v3 == sub_100012FF4() && v5 == v6)
  {

LABEL_16:

    goto LABEL_17;
  }

  v8 = sub_1000133E4();

  if (v8)
  {
LABEL_17:

    return 1;
  }

  v9 = sub_100012FF4();
  v11 = v10;
  if (v9 == sub_100012FF4() && v11 == v12)
  {

    goto LABEL_16;
  }

  v14 = sub_1000133E4();
  v15 = v2;

  if (v14)
  {
    goto LABEL_17;
  }

  v16 = sub_100012FF4();
  v18 = v17;
  if (v16 == sub_100012FF4() && v18 == v19)
  {

LABEL_20:

    return 1;
  }

  v21 = sub_1000133E4();
  v22 = v15;

  if (v21)
  {
    goto LABEL_20;
  }

  v23 = sub_100012FF4();
  v25 = v24;
  if (v23 == sub_100012FF4() && v25 == v26)
  {

    return 1;
  }

  v27 = sub_1000133E4();

  return (v27 & 1) != 0;
}

uint64_t sub_10000D5CC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC15Unity2025Poster17EditingController_configurations;
  swift_beginAccess();
  if (*(*(a2 + v6) + 16))
  {

    sub_1000122B4(a1);
    if (v7)
    {

      v8 = [a1 currentLook];
      v9 = [v8 identifier];

      sub_100012FF4();
      sub_100001D98([a1 environment]);

      swift_unknownObjectRelease();
      return (*(a3 + 16))(a3);
    }
  }

  if (qword_100022FC0 != -1)
  {
    swift_once();
  }

  v10 = sub_100012E54();
  sub_1000024A8(v10, qword_100023B40);
  v11 = sub_100012E34();
  v12 = sub_100013124();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "no configuration identifier available, this wallpaper may forget things", v13, 2u);
  }

  return (*(a3 + 16))(a3);
}

unint64_t sub_10000D948()
{
  result = qword_100023780;
  if (!qword_100023780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100023780);
  }

  return result;
}

uint64_t sub_10000D994@<X0>(uint64_t *a1@<X8>)
{
  sub_100012F54();
  swift_allocObject();
  sub_100012F64();
  sub_100012F24();
  swift_allocObject();

  sub_100012F34();
  sub_100004698(&qword_1000237B0, &qword_100014F18);
  sub_100012BF4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100014E80;
  sub_10000DE30(&qword_1000237B8, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_100012BE4();
  sub_10000DE30(&qword_1000237C0, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_100012BE4();

  *a1 = v2;
  return result;
}

id sub_10000DBF0(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_10000DC30()
{
  [objc_allocWithZone(type metadata accessor for UpdateController()) init];
  sub_100004698(&qword_1000237A0, qword_100014E90);
  swift_allocObject();
  sub_100012F44();
  sub_10000DEAC(&qword_1000237A8, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_100012C24();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000DD94();
  sub_10000DEAC(&qword_100023798, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_100012C04();
  return 0;
}

unint64_t sub_10000DD94()
{
  result = qword_100023790;
  if (!qword_100023790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023790);
  }

  return result;
}

uint64_t sub_10000DE30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000DEAC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100009908(&qword_1000237A0, qword_100014E90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000DF28(void *a1, uint64_t a2, void (*a3)(void *), uint64_t (*a4)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_100013344();

    if (v6)
    {
      a4(0);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    a3(a1);
    if (v8)
    {
    }
  }

  return 0;
}

unint64_t *sub_10000DFEC(uint64_t a1)
{
  v1 = a1;
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_100013314();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v32 = &_swiftEmptyArrayStorage;
    sub_100007AF8(0, v2 & ~(v2 >> 63), 0);
    v26 = &_swiftEmptyArrayStorage;
    if (v25)
    {
      result = sub_1000132B4();
    }

    else
    {
      result = sub_1000131C4();
      v4 = *(v1 + 36);
    }

    v29 = result;
    v30 = v4;
    v31 = v25 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v24 = v2;
      while (v5 < v2)
      {
        v12 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_24;
        }

        v13 = v29;
        v14 = v30;
        v15 = v31;
        v16 = v1;
        sub_100010DBC(v29, v30, v31, v1);
        sub_100012D64();

        v17 = v26;
        v32 = v26;
        v19 = v26[2];
        v18 = v26[3];
        if (v19 >= v18 >> 1)
        {
          result = sub_100007AF8((v18 > 1), v19 + 1, 1);
          v17 = v32;
        }

        v17[2] = v19 + 1;
        v20 = &v17[5 * v19];
        v21 = v27[0];
        v22 = v27[1];
        v20[8] = v28;
        *(v20 + 2) = v21;
        *(v20 + 3) = v22;
        v26 = v17;
        if (v25)
        {
          if (!v15)
          {
            goto LABEL_26;
          }

          v1 = v16;
          if (sub_1000132E4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v24;
          sub_100004698(&qword_100023988, &unk_100015040);
          v23 = sub_100012FA4();
          sub_100013364();
          result = v23(v27, 0);
        }

        else
        {
          v1 = v16;
          sub_100010C58(v13, v14, v15, v16);
          v7 = v6;
          v9 = v8;
          v11 = v10;
          result = sub_100011090(v13, v14, v15);
          v29 = v7;
          v30 = v9;
          v31 = v11 & 1;
          v2 = v24;
        }

        ++v5;
        if (v12 == v2)
        {
          sub_100011090(v29, v30, v31);
          return v26;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_10000E294()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100012EB4();

  return v1;
}

char *sub_10000E308()
{
  v1 = sub_100004698(&qword_100023910, &qword_100015008);
  __chkstk_darwin(v1 - 8);
  v55 = &v42 - v2;
  v3 = sub_100004698(&qword_100023918, &qword_100015010);
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  __chkstk_darwin(v3);
  v6 = &v42 - v5;
  v7 = sub_100004698(&qword_100023920, &qword_100015018);
  v8 = *(v7 - 8);
  v50 = v7;
  v51 = v8;
  __chkstk_darwin(v7);
  v43 = &v42 - v9;
  v10 = sub_100013164();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100004698(&qword_100023928, &qword_100015020);
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v15 = &v42 - v14;
  v49 = sub_100004698(&qword_100023930, &qword_100015028);
  v52 = *(v49 - 8);
  __chkstk_darwin(v49);
  v42 = &v42 - v16;
  v17 = sub_100004698(&qword_100023938, &qword_100015030);
  v18 = *(v17 - 8);
  v53 = v17;
  v54 = v18;
  __chkstk_darwin(v17);
  v45 = &v42 - v19;
  v20 = sub_100004698(&qword_100023940, &qword_100015038);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v42 - v22;
  v24 = OBJC_IVAR____TtC15Unity2025Poster17DrawingController__coordinators;
  v56 = sub_100004188(&_swiftEmptyArrayStorage);
  sub_100004698(&qword_100023878, qword_100014F58);
  sub_100012E84();
  (*(v21 + 32))(&v0[v24], v23, v20);
  *&v0[OBJC_IVAR____TtC15Unity2025Poster17DrawingController_cancellables] = &_swiftEmptySetSingleton;
  v25 = type metadata accessor for DrawingController(0);
  v57.receiver = v0;
  v57.super_class = v25;
  v26 = objc_msgSendSuper2(&v57, "init");
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 defaultCenter];
  sub_100013174();

  sub_100010F20(&qword_100023948, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_100012EE4();
  (*(v11 + 8))(v13, v10);
  swift_beginAccess();
  sub_100012E94();
  swift_endAccess();
  sub_100010FD8(&qword_100023950, &qword_100023918, &qword_100015010, &protocol conformance descriptor for Published<A>.Publisher);
  v30 = v43;
  v31 = v47;
  sub_100012EE4();
  (*(v48 + 8))(v6, v31);
  sub_100010FD8(&qword_100023958, &qword_100023928, &qword_100015020, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_100010FD8(&qword_100023960, &qword_100023920, &qword_100015018, &protocol conformance descriptor for Publishers.Map<A, B>);
  v32 = v42;
  v33 = v44;
  v34 = v50;
  sub_100012EF4();
  (*(v51 + 8))(v30, v34);
  (*(v46 + 8))(v15, v33);
  sub_1000048B8(0, &qword_100023968, OS_dispatch_queue_ptr);
  v35 = sub_100013144();
  v56 = v35;
  v36 = sub_100013134();
  v37 = v55;
  (*(*(v36 - 8) + 56))(v55, 1, 1, v36);
  sub_100010FD8(&qword_100023970, &qword_100023930, &qword_100015028, &protocol conformance descriptor for Publishers.Merge<A, B>);
  sub_100010F68();
  v38 = v45;
  v39 = v49;
  sub_100012F04();
  sub_100004900(v37, &qword_100023910, &qword_100015008);

  (*(v52 + 8))(v32, v39);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100010FD8(&qword_100023980, &qword_100023938, &qword_100015030, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v40 = v53;
  sub_100012F14();

  (*(v54 + 8))(v38, v40);
  swift_beginAccess();
  sub_100012E64();
  swift_endAccess();

  return v28;
}

void *sub_10000EBDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100012EB4();

    v4 = sub_10000DFEC(v9[0]);

    v5 = v4[2];
    if (v5)
    {
      v6 = (v4 + 4);
      do
      {
        sub_100011020(v6, v9);
        if (v9[3])
        {
          sub_100004698(&qword_1000238F8, &qword_100014FF8);
          _s8RendererCMa();
          if (swift_dynamicCast())
          {
            IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
            *(v8 + 48) = IsReduceMotionEnabled;
            *(*(v8 + 40) + 32) = IsReduceMotionEnabled;
          }
        }

        else
        {
          sub_100004900(v9, &qword_1000238F0, &qword_100014FF0);
        }

        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

id sub_10000ED8C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for DrawingController(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for DrawingController(uint64_t a1)
{
  result = qword_100023860;
  if (!qword_100023860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000EF6C(void *a1, uint64_t a2)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_100003914(v38);
  if (v40)
  {
    v4 = v39;
  }

  else
  {
    v4 = 0;
  }

  if (v40)
  {
    v5 = v40;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100010BC0;
  *(v7 + 24) = v6;
  v36 = sub_100010BD8;
  v37 = v7;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v34 = sub_10000F6E0;
  v35 = &unk_10001D408;
  v8 = _Block_copy(&aBlock);

  [a1 updatePreferences:v8];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    swift_once();
    v12 = sub_100012E54();
    sub_1000024A8(v12, qword_100023B40);
    swift_errorRetain();
    v13 = sub_100012E34();
    v14 = sub_100013124();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "couldn’t set up coordinator: %{public}@", v15, 0xCu);
      sub_100004900(v16, &qword_100023880, &unk_100014E70);
    }

    else
    {
    }

    if (!a2)
    {
    }
  }

  else
  {
    v41 = v38[0];
    aBlock = v38[0];

    v42._countAndFlagsBits = 44;
    v42._object = 0xE100000000000000;
    sub_100013044(v42);
    sub_100013044(v38[1]);
    sub_10000D2B0(&v41);

    _s8RendererCMa();
    sub_100010F20(&qword_100023770, _s8RendererCMa, &unk_100014DD0);
    sub_100012D74();
    swift_allocObject();
    swift_unknownObjectRetain();
    v9 = sub_100012D44();

    v10 = [a1 backgroundView];
    v11 = [a1 floatingView];
    sub_100012D54();

    swift_getKeyPath();
    swift_getKeyPath();

    v18 = sub_100012EA4();
    v20 = v18;
    v21 = v19;
    v22 = *v19;
    if ((*v19 & 0xC000000000000001) != 0)
    {
      if (v22 < 0)
      {
        v23 = *v19;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFFFFFFFF8;
      }

      v24 = sub_100013314();
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        return;
      }

      *v21 = sub_10001048C(v23, v24 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v21;
    sub_100003240(v9, a1, isUniquelyReferenced_nonNull_native);
    *v21 = v32;
    v20(&aBlock, 0);

    sub_100012D64();
    if (v35)
    {
      sub_100004698(&qword_1000238F8, &qword_100014FF8);
      if (swift_dynamicCast())
      {
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v32[7] = sub_100010C50;
        v32[8] = v26;

        v27 = v32[5];
        *(v27 + 40) = sub_100010C50;
        *(v27 + 48) = v26;

        return;
      }
    }

    else
    {
      sub_100004900(&aBlock, &qword_1000238F0, &qword_100014FF0);
    }

    if (qword_100022FC0 != -1)
    {
      swift_once();
    }

    v28 = sub_100012E54();
    sub_1000024A8(v28, qword_100023B40);
    v29 = sub_100012E34();
    v30 = sub_100013124();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "couldn't attach renderer", v31, 2u);
    }
  }
}

void sub_10000F634(void *a1, uint64_t a2, uint64_t a3, void *a4)
{

  v7 = sub_100003EBC(a3, a4);
  if (v7 == 6)
  {
    v8 = [objc_opt_self() blackColor];
  }

  else
  {
    sub_100002138(v7);
  }

  v9 = v8;
  [a1 setPreferredProminentColor:?];
}

uint64_t sub_10000F6E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  return swift_unknownObjectRelease();
}

void sub_10000F748(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong noteContentSignificantlyChanged];
  }
}

void sub_10000F824(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100012EB4();

  v5 = sub_10000DF28(a1, v11, sub_100012304, &type metadata accessor for WallpaperMetalCoordination.RenderingCoordinator);

  if (v5)
  {
    v6 = [a3 animationSettings];
    sub_100012D34();
  }

  else
  {
    if (qword_100022FC0 != -1)
    {
      swift_once();
    }

    v7 = sub_100012E54();
    sub_1000024A8(v7, qword_100023B40);
    v8 = sub_100012E34();
    v9 = sub_100013124();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "no renderer to update", v10, 2u);
    }
  }
}

void sub_10000FCE0(uint64_t a1)
{
  sub_10000FD7C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000FD7C(uint64_t a1)
{
  if (!qword_100023870)
  {
    sub_100009908(&qword_100023878, qword_100014F58);
    v1 = sub_100012ED4();
    if (!v2)
    {
      atomic_store(v1, &qword_100023870);
    }
  }
}

uint64_t sub_10000FDEC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DrawingController(0);
  result = sub_100012E74();
  *a2 = result;
  return result;
}

uint64_t sub_10000FE2C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100012EB4();

  *a2 = v4;
  return result;
}

uint64_t sub_10000FEB0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_100012EC4();
}

uint64_t sub_10000FF2C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_10000FF8C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

double sub_100010000@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_100012270(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000345C();
      v9 = v11;
    }

    sub_1000046F0(*(v9 + 48) + 40 * v7);
    sub_1000046E0((*(v9 + 56) + 32 * v7), a2);
    sub_1000106C0(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1000100E4(void *a1, uint64_t (*a2)(void *, uint64_t (*)(void), uint64_t, uint64_t (*)(uint64_t, uint64_t)), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = v4;
  v7 = *v4;
  if ((*v4 & 0xC000000000000001) == 0)
  {
    v13 = a3;
    v18 = a2(a1, a2, a3, a4);
    if (v19)
    {
      v7 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v4;
      v23 = *v4;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v17 = *(*(v21 + 56) + 8 * v7);
        sub_1000109FC(v7, v21);
        *v6 = v21;
        return v17;
      }

LABEL_14:
      (v13)();
      v21 = v23;
      goto LABEL_10;
    }

    return 0;
  }

  if (v7 < 0)
  {
    v9 = *v4;
  }

  else
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v10 = a1;
  v11 = sub_100013344();

  if (!v11)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v12 = sub_100013314();
  v13 = a4(v9, v12);

  v14 = (a2)(v10);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(*(v13 + 56) + 8 * v14);
  sub_1000109FC(v14, v13);

  *v6 = v13;
  return v17;
}

Swift::Int sub_100010258(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004698(&unk_100023990, &qword_100014570);
    v2 = sub_1000133B4();
    v19 = v2;
    sub_1000132C4();
    v3 = sub_100013354();
    if (v3)
    {
      v4 = v3;
      sub_1000048B8(0, &unk_1000231B0, PREditor_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100012D24();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10000284C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1000131A4(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_100013354();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10001048C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004698(&unk_100023900, &qword_100015000);
    v2 = sub_1000133B4();
    v19 = v2;
    sub_1000132C4();
    v3 = sub_100013354();
    if (v3)
    {
      v4 = v3;
      sub_1000048B8(0, &unk_1000230E0, PRRenderer_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100012D74();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100002B20(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1000131A4(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_100013354();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_1000106C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000131D4() + 1) & ~v5;
    do
    {
      sub_100004744(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1000131F4(*(a2 + 40));
      result = sub_1000046F0(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100010864(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000131D4() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = sub_1000131A4(v11);

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 48 * v3);
          v22 = (v20 + 48 * v6);
          if (v3 != v6 || v21 >= v22 + 3)
          {
            v9 = *v22;
            v10 = v22[2];
            v21[1] = v22[1];
            v21[2] = v10;
            *v21 = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

void sub_1000109FC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000131D4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1000131A4(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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
}

uint64_t sub_100010B88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010C18()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100010C58(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_1000132F4() == *(a4 + 36))
    {
      sub_100013304();
      sub_1000048B8(0, &unk_1000230E0, PRRenderer_ptr);
      swift_dynamicCast();
      sub_100012304(v6);
      v5 = v4;

      if (v5)
      {
        sub_1000132D4();
        sub_100013324();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1000131E4();
}

void sub_100010DBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_100013334();
      sub_100012D74();
      swift_dynamicCast();
      return;
    }

    goto LABEL_19;
  }

  if (a3)
  {
    if (sub_1000132F4() == *(a4 + 36))
    {
      sub_100013304();
      sub_1000048B8(0, &unk_1000230E0, PRRenderer_ptr);
      swift_dynamicCast();
      sub_100012304(v6);
      v5 = v4;

      if (v5)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 64) >> a1) & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_12:
}

uint64_t sub_100010F20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100010F68()
{
  result = qword_100023978;
  if (!qword_100023978)
  {
    sub_1000048B8(255, &qword_100023968, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023978);
  }

  return result;
}

uint64_t sub_100010FD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100009908(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011020(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004698(&qword_1000238F0, &qword_100014FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011090(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100011230(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_1000048B8(0, &qword_100023A90, PRPosterDescriptor_ptr);
  v7 = sub_100012F84();
  v4[6] = v7;
  v8 = a2;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[7] = v10;
  *v10 = v4;
  v10[1] = sub_100011348;

  return sub_100012618(v7);
}

uint64_t sub_100011348(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_100012B44();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    isa = sub_100013074().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id sub_100011548(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UpdateController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000115A0()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000115F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000116B0;

  return sub_100011230(v2, v3, v5, v4);
}

uint64_t sub_1000116B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000117A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100012B0C;

  return v6();
}

uint64_t sub_100011890()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100012B0C;

  return sub_1000117A4(v2, v3, v4);
}

uint64_t sub_100011950(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000116B0;

  return v7();
}

uint64_t sub_100011A38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100011A78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100012B0C;

  return sub_100011950(a1, v4, v5, v6);
}

uint64_t sub_100011B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004698(&qword_100023A88, &qword_100015088);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100011E00(a3, v23 - v10);
  v12 = sub_1000130D4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100011E70(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000130C4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1000130B4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_100013024() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100011E70(a3);

    return v21;
  }

LABEL_8:
  sub_100011E70(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100011E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004698(&qword_100023A88, &qword_100015088);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011E70(uint64_t a1)
{
  v2 = sub_100004698(&qword_100023A88, &qword_100015088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011ED8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100011FD0;

  return v6(a1);
}

uint64_t sub_100011FD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000120C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012100(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012B0C;

  return sub_100011ED8(a1, v4);
}

uint64_t sub_1000121B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116B0;

  return sub_100011ED8(a1, v4);
}

unint64_t sub_100012270(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000131F4(*(v2 + 40));

  return sub_1000123CC(a1, v4);
}

unint64_t sub_1000122B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000131A4(*(v2 + 40));
  return sub_100012494(a1, v4, &unk_1000231B0, PREditor_ptr);
}

unint64_t sub_100012304(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000131A4(*(v2 + 40));
  return sub_100012494(a1, v4, &unk_1000230E0, PRRenderer_ptr);
}

unint64_t sub_100012354(uint64_t a1, uint64_t a2)
{
  sub_100013414();
  sub_100013034();
  v4 = sub_100013424();

  return sub_100012560(a1, a2, v4);
}

unint64_t sub_1000123CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100004744(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100013204();
      sub_1000046F0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100012494(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1000048B8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1000131B4();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100012560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000133E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100012638()
{
  v42 = v0;
  v41 = &_swiftEmptyArrayStorage;
  sub_100007AD8(0, 6, 0);
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v3 = 0x7974696E75;
  do
  {
    v4 = *(&off_10001D0A8 + v1 + 32);
    if (v4 == 4)
    {
      v5 = 0x6E65657267;
    }

    else
    {
      v5 = 1684828007;
    }

    if (v4 == 4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v4 == 3)
    {
      v5 = 6579570;
      v6 = 0xE300000000000000;
    }

    if (v4 == 1)
    {
      v7 = 0x6B63616C62;
    }

    else
    {
      v7 = 0x6D61657263;
    }

    if (!*(&off_10001D0A8 + v1 + 32))
    {
      v7 = v3;
    }

    if (*(&off_10001D0A8 + v1 + 32) <= 2u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (*(&off_10001D0A8 + v1 + 32) <= 2u)
    {
      v9 = 0xE500000000000000;
    }

    else
    {
      v9 = v6;
    }

    v41 = v2;
    v11 = v2[2];
    v10 = v2[3];
    if (v11 >= v10 >> 1)
    {
      v13 = v3;
      sub_100007AD8((v10 > 1), v11 + 1, 1);
      v3 = v13;
      v2 = v41;
    }

    ++v1;
    v2[2] = v11 + 1;
    v12 = &v2[2 * v11];
    v12[4] = v8;
    v12[5] = v9;
  }

  while (v1 != 6);
  v14 = v11 + 1;
  v15 = v2 + 5;
  v16 = &off_100022000;
  v17 = *(v40 + 16);
  v39 = PRTimeFontIdentifierSoft;
  v38 = v17;
  do
  {
    v18 = *(v15 - 1);
    v19 = *v15;
    v20 = *(v17 + 16);

    if (v20 && (v21 = sub_100012354(v18, v19), (v22 & 1) != 0))
    {
      v23 = v21;

      v24 = *(*(v17 + 56) + 8 * v23);
    }

    else
    {
      if (v16[504] != -1)
      {
        swift_once();
      }

      v25 = sub_100012E54();
      sub_1000024A8(v25, qword_100023B40);

      v26 = sub_100012E34();
      v27 = sub_100013114();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = v16;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v41 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_100007474(v18, v19, &v41);
        _os_log_impl(&_mh_execute_header, v26, v27, "building new descriptor for “%s”", v29, 0xCu);
        sub_1000047A0(v30);

        v16 = v28;
        v17 = v38;
      }

      v31 = sub_100012FE4();
      v32 = [objc_opt_self() mutableDescriptorWithIdentifier:v31];

      sub_100004698(&qword_100023A98, qword_1000150E0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100015050;
      *(v33 + 32) = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:v39];
      sub_1000048B8(0, &qword_100023AA0, PRTimeFontConfiguration_ptr);
      isa = sub_100013074().super.isa;

      [v32 setPreferredTimeFontConfigurations:isa];

      sub_1000042A8(v32, v18, v19);

      v24 = v32;
    }

    v35 = v24;
    sub_100013064();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100013094();
    }

    sub_1000130A4();

    v15 += 2;
    --v14;
  }

  while (v14);

  v36 = *(v40 + 8);

  return v36(&_swiftEmptyArrayStorage);
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}