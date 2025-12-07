uint64_t sub_1DD7221AC()
{
  sub_1DD6E1F54();
  sub_1DD721088();
  sub_1DD6DDF40();

  return v0();
}

uint64_t sub_1DD722220()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1DD722240, v2, 0);
}

uint64_t sub_1DD722240()
{
  sub_1DD6E1F54();
  sub_1DD721260();
  sub_1DD6DDF40();

  return v0();
}

uint64_t sub_1DD7222B4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DD7222D4, v3, 0);
}

uint64_t sub_1DD7222D4()
{
  sub_1DD6E1F54();
  sub_1DD721064(*(v0 + 16));
  sub_1DD6DDF40();

  return v1();
}

uint64_t sub_1DD722348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD7223B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD722428()
{
  result = qword_1EE015D90;
  if (!qword_1EE015D90)
  {
    sub_1DD874820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015D90);
  }

  return result;
}

uint64_t sub_1DD722480(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DD878A30;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DD7224E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1DD710A9C(&qword_1ECD0E548, &off_1DD878B18);
  result = sub_1DD875670();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_1DD722480(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_1DD875B10();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

BOOL sub_1DD722708(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1DD875B10();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_1DD7227D8(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

unint64_t sub_1DD7227D8(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD7224E4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1DD722A1C(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_1DD875B10();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DD7228DC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1DD875A70();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_1DD7228DC()
{
  v1 = v0;
  sub_1DD710A9C(&qword_1ECD0E548, &off_1DD878B18);
  v2 = *v0;
  v3 = sub_1DD875660();
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

uint64_t sub_1DD722A1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1DD710A9C(&qword_1ECD0E548, &off_1DD878B18);
  result = sub_1DD875670();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_1DD875B10();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD722C08(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1DD875B10();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v7) == a1)
    {
      break;
    }

    v5 = v7 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v12 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DD7228DC();
    v10 = v12;
  }

  v8 = *(*(v10 + 48) + 8 * v7);
  sub_1DD722CF4(v7);
  *v2 = v12;
  return v8;
}

unint64_t sub_1DD722CF4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DD875610();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1DD875B10() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1DD722E6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1DD6DE1C4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD722ECC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1DD6DE1C4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1DD722F2C()
{
  result = qword_1ECD0E550;
  if (!qword_1ECD0E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E550);
  }

  return result;
}

uint64_t sub_1DD722F80(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1DD6DE1C4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t ClientApplicationID.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ClientApplicationID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DD875A30();
  }
}

uint64_t sub_1DD723098(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD723124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD723098(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD723150(uint64_t a1)
{
  v2 = sub_1DD7232FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD72318C(uint64_t a1)
{
  v2 = sub_1DD7232FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientApplicationID.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E558, &qword_1DD878B20);
  sub_1DD6DDEAC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD7232FC();
  sub_1DD875BB0();
  sub_1DD875970();
  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1DD7232FC()
{
  result = qword_1ECD0E560;
  if (!qword_1ECD0E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E560);
  }

  return result;
}

uint64_t ClientApplicationID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  return sub_1DD875B60();
}

void *ClientApplicationID.init(from:)(void *a1)
{
  v3 = sub_1DD710A9C(&qword_1ECD0E568, &qword_1DD878B28);
  sub_1DD6DDEAC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = sub_1DD6DF224(a1, a1[3]);
  sub_1DD7232FC();
  sub_1DD875B90();
  if (!v1)
  {
    v9 = sub_1DD875870();
    (*(v5 + 8))(v8, v3);
  }

  sub_1DD6E1EC8(a1);
  return v9;
}

uint64_t sub_1DD723504(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1DD875B20();
  ClientApplicationID.hash(into:)(v5, v2, v3);
  return sub_1DD875B60();
}

unint64_t sub_1DD723550()
{
  result = qword_1ECD0E570;
  if (!qword_1ECD0E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E570);
  }

  return result;
}

void *sub_1DD7235B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = ClientApplicationID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientApplicationID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD7236C8()
{
  result = qword_1ECD0E578;
  if (!qword_1ECD0E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E578);
  }

  return result;
}

unint64_t sub_1DD723720()
{
  result = qword_1ECD0E580;
  if (!qword_1ECD0E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E580);
  }

  return result;
}

unint64_t sub_1DD723778()
{
  result = qword_1ECD0E588;
  if (!qword_1ECD0E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E588);
  }

  return result;
}

uint64_t ClientGroupID.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ClientGroupID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DD875A30();
  }
}

uint64_t sub_1DD723878(uint64_t a1)
{
  v2 = sub_1DD723A24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7238B4(uint64_t a1)
{
  v2 = sub_1DD723A24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientGroupID.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E590, &qword_1DD878D70);
  sub_1DD6DDEAC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD723A24();
  sub_1DD875BB0();
  sub_1DD875970();
  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1DD723A24()
{
  result = qword_1ECD0E598;
  if (!qword_1ECD0E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E598);
  }

  return result;
}

uint64_t ClientGroupID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  return sub_1DD875B60();
}

void *ClientGroupID.init(from:)(void *a1)
{
  v3 = sub_1DD710A9C(&qword_1ECD0E5A0, &qword_1DD878D78);
  sub_1DD6DDEAC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = sub_1DD6DF224(a1, a1[3]);
  sub_1DD723A24();
  sub_1DD875B90();
  if (!v1)
  {
    v9 = sub_1DD875870();
    (*(v5 + 8))(v8, v3);
  }

  sub_1DD6E1EC8(a1);
  return v9;
}

uint64_t sub_1DD723C2C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1DD875B20();
  ClientGroupID.hash(into:)(v5, v2, v3);
  return sub_1DD875B60();
}

unint64_t sub_1DD723C78()
{
  result = qword_1ECD0E5A8;
  if (!qword_1ECD0E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5A8);
  }

  return result;
}

void *sub_1DD723CE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = ClientGroupID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientGroupID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD723DF0()
{
  result = qword_1ECD0E5B0;
  if (!qword_1ECD0E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5B0);
  }

  return result;
}

unint64_t sub_1DD723E48()
{
  result = qword_1ECD0E5B8;
  if (!qword_1ECD0E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5B8);
  }

  return result;
}

unint64_t sub_1DD723EA0()
{
  result = qword_1ECD0E5C0;
  if (!qword_1ECD0E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5C0);
  }

  return result;
}

uint64_t ClientIdentityPack.clientApplicationId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ClientIdentityPack.clientGroupId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static ClientIdentityPack.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1DD875A30(), result = 0, (v13 & 1) != 0))
  {
    if (a4)
    {
      if (a8)
      {
        v15 = a3 == a7 && a4 == a8;
        if (v15 || (sub_1DD875A30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD7240B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001DD8B4A10 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7247746E65696C63 && a2 == 0xED0000644970756FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD724190(char a1)
{
  sub_1DD875B20();
  MEMORY[0x1E12B5570](a1 & 1);
  return sub_1DD875B60();
}

uint64_t sub_1DD7241D8(char a1)
{
  if (a1)
  {
    return 0x7247746E65696C63;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1DD724230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7240B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD724258@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD724188();
  *a1 = result;
  return result;
}

uint64_t sub_1DD724280(uint64_t a1)
{
  v2 = sub_1DD72446C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7242BC(uint64_t a1)
{
  v2 = sub_1DD72446C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientIdentityPack.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v9 = sub_1DD710A9C(&qword_1ECD0E5C8, &qword_1DD878FC0);
  sub_1DD6DDEAC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD72446C();
  sub_1DD875BB0();
  v18 = a2;
  v19 = a3;
  v20 = 0;
  sub_1DD7244C0();
  sub_1DD6DF2B8();
  sub_1DD8759D0();
  if (!v5)
  {
    v18 = v16;
    v19 = v17;
    v20 = 1;
    sub_1DD724514();
    sub_1DD6DF2B8();
    sub_1DD875960();
  }

  return (*(v11 + 8))(v14, v9);
}

unint64_t sub_1DD72446C()
{
  result = qword_1ECD0E5D0;
  if (!qword_1ECD0E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5D0);
  }

  return result;
}

unint64_t sub_1DD7244C0()
{
  result = qword_1ECD0E5D8;
  if (!qword_1ECD0E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5D8);
  }

  return result;
}

unint64_t sub_1DD724514()
{
  result = qword_1ECD0E5E0;
  if (!qword_1ECD0E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5E0);
  }

  return result;
}

uint64_t ClientIdentityPack.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  if (!a5)
  {
    return sub_1DD875B40();
  }

  sub_1DD875B40();

  return _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t ClientIdentityPack.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD875B40();
  if (a4)
  {
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1DD875B60();
}

uint64_t ClientIdentityPack.init(from:)(void *a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E5E8, &qword_1DD878FC8);
  sub_1DD6DDEAC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD72446C();
  sub_1DD875B90();
  v11 = 0;
  sub_1DD7248C4();
  sub_1DD6E1330();
  sub_1DD8758D0();
  v9 = v12;
  v11 = 1;
  sub_1DD724918();
  sub_1DD6E1330();
  sub_1DD875860();
  (*(v4 + 8))(v7, v2);
  sub_1DD6E1EC8(a1);
  return v9;
}

uint64_t sub_1DD72483C(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD875B40();
  if (v2)
  {
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1DD875B60();
}

unint64_t sub_1DD7248C4()
{
  result = qword_1ECD0E5F0;
  if (!qword_1ECD0E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5F0);
  }

  return result;
}

unint64_t sub_1DD724918()
{
  result = qword_1ECD0E5F8;
  if (!qword_1ECD0E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5F8);
  }

  return result;
}

unint64_t sub_1DD724970()
{
  result = qword_1ECD0E600;
  if (!qword_1ECD0E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E600);
  }

  return result;
}

uint64_t sub_1DD7249E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ClientIdentityPack.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

__n128 sub_1DD724A30(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD724A3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD724A7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for ClientIdentityPack.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD724BAC()
{
  result = qword_1ECD0E608;
  if (!qword_1ECD0E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E608);
  }

  return result;
}

unint64_t sub_1DD724C04()
{
  result = qword_1ECD0E610;
  if (!qword_1ECD0E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E610);
  }

  return result;
}

unint64_t sub_1DD724C5C()
{
  result = qword_1ECD0E618;
  if (!qword_1ECD0E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E618);
  }

  return result;
}

uint64_t ClientSessionID.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ClientSessionID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DD875A30();
  }
}

uint64_t sub_1DD724D5C(uint64_t a1)
{
  v2 = sub_1DD724F08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD724D98(uint64_t a1)
{
  v2 = sub_1DD724F08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientSessionID.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E620, &qword_1DD879220);
  sub_1DD6DDEAC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD724F08();
  sub_1DD875BB0();
  sub_1DD875970();
  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1DD724F08()
{
  result = qword_1ECD0E628;
  if (!qword_1ECD0E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E628);
  }

  return result;
}

uint64_t ClientSessionID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  return sub_1DD875B60();
}

void *ClientSessionID.init(from:)(void *a1)
{
  v3 = sub_1DD710A9C(&qword_1ECD0E630, &qword_1DD879228);
  sub_1DD6DDEAC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = sub_1DD6DF224(a1, a1[3]);
  sub_1DD724F08();
  sub_1DD875B90();
  if (!v1)
  {
    v9 = sub_1DD875870();
    (*(v5 + 8))(v8, v3);
  }

  sub_1DD6E1EC8(a1);
  return v9;
}

uint64_t sub_1DD725110(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1DD875B20();
  ClientSessionID.hash(into:)(v5, v2, v3);
  return sub_1DD875B60();
}

unint64_t sub_1DD72515C()
{
  result = qword_1ECD0E638;
  if (!qword_1ECD0E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E638);
  }

  return result;
}

void *sub_1DD7251C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = ClientSessionID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientSessionID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD7252D4()
{
  result = qword_1ECD0E640;
  if (!qword_1ECD0E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E640);
  }

  return result;
}

unint64_t sub_1DD72532C()
{
  result = qword_1ECD0E648;
  if (!qword_1ECD0E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E648);
  }

  return result;
}

unint64_t sub_1DD725384()
{
  result = qword_1ECD0E650;
  if (!qword_1ECD0E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E650);
  }

  return result;
}

uint64_t ClientSessionIdentityPack.clientSessionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ClientSessionIdentityPack.clientSessionId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ClientSessionIdentityPack.clientApplicationId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ClientSessionIdentityPack.clientApplicationId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ClientSessionIdentityPack.clientGroupId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ClientSessionIdentityPack.clientGroupId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ClientSessionIdentityPack.description.getter()
{
  v5 = 0x7C444953433CLL;
  v6 = 0xE600000000000000;
  MEMORY[0x1E12B4C10](*v0, *(v0 + 8));
  MEMORY[0x1E12B4C10](124, 0xE100000000000000);
  MEMORY[0x1E12B4C10](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E12B4C10](124, 0xE100000000000000);
  v7 = *(v0 + 32);
  if (*(&v7 + 1))
  {
    v1 = v7;
  }

  else
  {
    v1 = 7104878;
  }

  if (*(&v7 + 1))
  {
    v2 = *(&v7 + 1);
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  sub_1DD72564C(&v7, &v4);
  MEMORY[0x1E12B4C10](v1, v2);

  MEMORY[0x1E12B4C10](62, 0xE100000000000000);
  return v5;
}

uint64_t sub_1DD72564C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E658, &qword_1DD879470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ClientSessionIdentityPack.clientIdentityPack.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static ClientSessionIdentityPack.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1DD875A30() & 1) != 0)
    {
      v6 = a1[5];
      v7 = a2[5];
      if (v6)
      {
        if (v7)
        {
          v8 = a1[4] == a2[4] && v6 == v7;
          if (v8 || (sub_1DD875A30() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD7257B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001DD8B4A10 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7247746E65696C63 && a2 == 0xED0000644970756FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD7258D8(char a1)
{
  if (!a1)
  {
    return 0x6553746E65696C63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x7247746E65696C63;
}

uint64_t sub_1DD72595C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7257B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD725984(uint64_t a1)
{
  v2 = sub_1DD725B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7259C0(uint64_t a1)
{
  v2 = sub_1DD725B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientSessionIdentityPack.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1DD710A9C(&qword_1ECD0E660, &qword_1DD879478);
  sub_1DD6DDEAC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD725B94();
  sub_1DD875BB0();
  v14 = *v3;
  v13 = 0;
  sub_1DD725BE8();
  sub_1DD6DF2D0();
  sub_1DD8759D0();
  if (!v2)
  {
    v14 = v3[1];
    v13 = 1;
    sub_1DD7244C0();
    sub_1DD6DF2D0();
    sub_1DD8759D0();
    v14 = v3[2];
    v13 = 2;
    sub_1DD724514();
    sub_1DD6DF2D0();
    sub_1DD875960();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1DD725B94()
{
  result = qword_1ECD0E668;
  if (!qword_1ECD0E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E668);
  }

  return result;
}

unint64_t sub_1DD725BE8()
{
  result = qword_1ECD0E670;
  if (!qword_1ECD0E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E670);
  }

  return result;
}

uint64_t ClientSessionIdentityPack.hash(into:)(uint64_t a1)
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  if (!*(v1 + 40))
  {
    return sub_1DD875B40();
  }

  sub_1DD875B40();

  return _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t ClientSessionIdentityPack.hashValue.getter()
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  if (*(v0 + 40))
  {
    sub_1DD875B40();
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1DD875B40();
  }

  return sub_1DD875B60();
}

uint64_t ClientSessionIdentityPack.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DD710A9C(&qword_1ECD0E678, &qword_1DD879480);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD725B94();
  sub_1DD875B90();
  if (v2)
  {
    return sub_1DD6E1EC8(a1);
  }

  sub_1DD725FC0();
  sub_1DD6E134C();
  sub_1DD8758D0();
  sub_1DD7248C4();
  sub_1DD6E134C();
  sub_1DD8758D0();
  sub_1DD724918();
  sub_1DD6E134C();
  sub_1DD875860();
  v6 = sub_1DD6DEA2C();
  v7(v6);
  result = sub_1DD6E1EC8(a1);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v9;
  a2[5] = v10;
  return result;
}

uint64_t sub_1DD725F84(uint64_t a1)
{
  sub_1DD875B20();
  ClientSessionIdentityPack.hash(into:)(v2);
  return sub_1DD875B60();
}

unint64_t sub_1DD725FC0()
{
  result = qword_1ECD0E680;
  if (!qword_1ECD0E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E680);
  }

  return result;
}

unint64_t sub_1DD726018()
{
  result = qword_1ECD0E688;
  if (!qword_1ECD0E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E688);
  }

  return result;
}

double sub_1DD726070@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  ClientSessionIdentityPack.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1DD7260D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD726110(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ClientSessionIdentityPack.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD72624C()
{
  result = qword_1ECD0E690;
  if (!qword_1ECD0E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E690);
  }

  return result;
}

unint64_t sub_1DD7262A4()
{
  result = qword_1ECD0E698;
  if (!qword_1ECD0E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E698);
  }

  return result;
}

unint64_t sub_1DD7262FC()
{
  result = qword_1ECD0E6A0;
  if (!qword_1ECD0E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E6A0);
  }

  return result;
}

uint64_t EventID.value.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DD874820();
  sub_1DD6DE1C4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t EventID.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD874820();
  sub_1DD6DE1C4();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

{
  v4 = sub_1DD874820();
  sub_1DD6DDEAC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE4A8();
  v10 = v9 - v8;
  v11 = type metadata accessor for EventID(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE4A8();
  v15 = v14 - v13;
  if (sub_1DD6E5ED0(a1, 1, v4) == 1)
  {
    sub_1DD7265F0(a1);

    return sub_1DD6E5E68(a2, 1, 1, v11);
  }

  else
  {
    v17 = *(v6 + 32);
    v17(v10, a1, v4);
    v17(v15, v10, v4);
    sub_1DD726658(v15, a2);
    return sub_1DD6E5E68(a2, 0, 1, v11);
  }
}

uint64_t type metadata accessor for EventID(uint64_t a1)
{
  result = qword_1ECD0E6C8;
  if (!qword_1ECD0E6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD7265F0(uint64_t a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD726658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD7266C0(uint64_t a1)
{
  v2 = sub_1DD726894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7266FC(uint64_t a1)
{
  v2 = sub_1DD726894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventID.encode(to:)(void *a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E6A8, &qword_1DD8796E8);
  sub_1DD6DDEAC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD726894();
  sub_1DD875BB0();
  sub_1DD874820();
  sub_1DD6E1364();
  sub_1DD6E1D64(v8, v9, MEMORY[0x1E69695B0]);
  sub_1DD8759D0();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1DD726894()
{
  result = qword_1ECD0E6B0;
  if (!qword_1ECD0E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E6B0);
  }

  return result;
}

uint64_t EventID.hash(into:)(uint64_t a1)
{
  sub_1DD874820();
  sub_1DD6E1364();
  sub_1DD6E1D64(v1, v2, MEMORY[0x1E69695B8]);

  return sub_1DD8750C0();
}

uint64_t EventID.hashValue.getter()
{
  sub_1DD875B20();
  sub_1DD874820();
  sub_1DD6E1364();
  sub_1DD6E1D64(v0, v1, MEMORY[0x1E69695B8]);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t EventID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1DD874820();
  sub_1DD6DDEAC();
  v24 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  v27 = v8 - v7;
  v9 = sub_1DD710A9C(&qword_1ECD0E6B8, &qword_1DD8796F0);
  sub_1DD6DDEAC();
  v25 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for EventID(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1DD6DE4A8();
  v17 = v16 - v15;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD726894();
  sub_1DD875B90();
  if (!v2)
  {
    v18 = v24;
    v19 = v26;
    sub_1DD6E1364();
    sub_1DD6E1D64(v20, v21, MEMORY[0x1E69695D0]);
    sub_1DD8758D0();
    (*(v25 + 8))(v13, v9);
    (*(v18 + 32))(v17, v27, v4);
    sub_1DD726658(v17, v19);
  }

  return sub_1DD6E1EC8(a1);
}

uint64_t sub_1DD726C2C(uint64_t a1)
{
  sub_1DD875B20();
  EventID.hash(into:)(v2);
  return sub_1DD875B60();
}

uint64_t sub_1DD726D0C(uint64_t a1)
{
  result = sub_1DD874820();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD726E28()
{
  result = qword_1ECD0E6D8;
  if (!qword_1ECD0E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E6D8);
  }

  return result;
}

unint64_t sub_1DD726E80()
{
  result = qword_1ECD0E6E0;
  if (!qword_1ECD0E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E6E0);
  }

  return result;
}

unint64_t sub_1DD726ED8()
{
  result = qword_1ECD0E6E8;
  if (!qword_1ECD0E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E6E8);
  }

  return result;
}

uint64_t SessionClientID.value.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DD874820();
  sub_1DD6DE1C4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t SessionClientID.value.setter(uint64_t a1)
{
  sub_1DD874820();
  sub_1DD6DE1C4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t SessionClientID.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD874820();
  sub_1DD6DE1C4();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t sub_1DD727074(uint64_t a1)
{
  v2 = sub_1DD727248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7270B0(uint64_t a1)
{
  v2 = sub_1DD727248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SessionClientID.encode(to:)(void *a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E6F0, &qword_1DD8798E0);
  sub_1DD6DDEAC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD727248();
  sub_1DD875BB0();
  sub_1DD874820();
  sub_1DD6E137C();
  sub_1DD6E1DAC(v8, v9, MEMORY[0x1E69695B0]);
  sub_1DD8759D0();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1DD727248()
{
  result = qword_1ECD0E6F8;
  if (!qword_1ECD0E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E6F8);
  }

  return result;
}

uint64_t SessionClientID.hash(into:)(uint64_t a1)
{
  sub_1DD874820();
  sub_1DD6E137C();
  sub_1DD6E1DAC(v1, v2, MEMORY[0x1E69695B8]);

  return sub_1DD8750C0();
}

uint64_t SessionClientID.hashValue.getter()
{
  sub_1DD875B20();
  sub_1DD874820();
  sub_1DD6E137C();
  sub_1DD6E1DAC(v0, v1, MEMORY[0x1E69695B8]);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t SessionClientID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1DD874820();
  sub_1DD6DDEAC();
  v22 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DD710A9C(&qword_1ECD0E700, &qword_1DD8798E8);
  sub_1DD6DDEAC();
  v23 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for SessionClientID(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD727248();
  sub_1DD875B90();
  if (!v2)
  {
    v16 = v22;
    v17 = v24;
    sub_1DD6E137C();
    sub_1DD6E1DAC(v18, v19, MEMORY[0x1E69695D0]);
    sub_1DD8758D0();
    (*(v23 + 8))(v12, v8);
    (*(v16 + 32))(v15, v25, v4);
    sub_1DD7275F0(v15, v17);
  }

  return sub_1DD6E1EC8(a1);
}

uint64_t sub_1DD7275F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionClientID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SessionClientID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD7277A4()
{
  result = qword_1ECD0E708;
  if (!qword_1ECD0E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E708);
  }

  return result;
}

unint64_t sub_1DD7277FC()
{
  result = qword_1ECD0E710;
  if (!qword_1ECD0E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E710);
  }

  return result;
}

unint64_t sub_1DD727854()
{
  result = qword_1ECD0E718;
  if (!qword_1ECD0E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E718);
  }

  return result;
}

uint64_t SessionID.value.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DD874820();
  sub_1DD6DE1C4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t SessionID.value.setter(uint64_t a1)
{
  sub_1DD874820();
  sub_1DD6DE1C4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t sub_1DD727994(uint64_t a1)
{
  v2 = sub_1DD727B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7279D0(uint64_t a1)
{
  v2 = sub_1DD727B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SessionID.encode(to:)(void *a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E720, &qword_1DD879B10);
  sub_1DD6DDEAC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD727B68();
  sub_1DD875BB0();
  sub_1DD874820();
  sub_1DD6E1394();
  sub_1DD6E1DF4(v8, v9, MEMORY[0x1E69695B0]);
  sub_1DD8759D0();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1DD727B68()
{
  result = qword_1ECD0E728;
  if (!qword_1ECD0E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E728);
  }

  return result;
}

uint64_t SessionID.hashValue.getter()
{
  sub_1DD875B20();
  sub_1DD874820();
  sub_1DD6E1394();
  sub_1DD6E1DF4(v0, v1, MEMORY[0x1E69695B8]);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t SessionID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1DD874820();
  sub_1DD6DDEAC();
  v22 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DD710A9C(&qword_1ECD0E730, &qword_1DD879B18);
  sub_1DD6DDEAC();
  v23 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for SessionID(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD727B68();
  sub_1DD875B90();
  if (!v2)
  {
    v16 = v22;
    v17 = v24;
    sub_1DD6E1394();
    sub_1DD6E1DF4(v18, v19, MEMORY[0x1E69695D0]);
    sub_1DD8758D0();
    (*(v23 + 8))(v12, v8);
    (*(v16 + 32))(v15, v25, v4);
    sub_1DD6F1C3C(v15, v17);
  }

  return sub_1DD6E1EC8(a1);
}

uint64_t sub_1DD727E9C(uint64_t a1)
{
  sub_1DD875B20();
  SessionID.hash(into:)(v2);
  return sub_1DD875B60();
}

_BYTE *storeEnumTagSinglePayload for SessionID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD728008()
{
  result = qword_1ECD0E738;
  if (!qword_1ECD0E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E738);
  }

  return result;
}

unint64_t sub_1DD728060()
{
  result = qword_1ECD0E740;
  if (!qword_1ECD0E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E740);
  }

  return result;
}

unint64_t sub_1DD7280B8()
{
  result = qword_1ECD0E748;
  if (!qword_1ECD0E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E748);
  }

  return result;
}

uint64_t sub_1DD728148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionID(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1DD7281CC(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

double SessionIdentityPack.clientIdentity.getter@<D0>(void *a1@<X8>)
{
  type metadata accessor for SessionIdentityPack(0);
  sub_1DD6E0508();
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  *a1 = *v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;

  return result;
}

__n128 SessionIdentityPack.clientIdentity.setter()
{
  v2 = sub_1DD6DE290();
  type metadata accessor for SessionIdentityPack(v2);
  sub_1DD6DE29C();

  v3 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v3;
  result = *(v0 + 32);
  *(v1 + 32) = result;
  return result;
}

void (*SessionIdentityPack.clientIdentity.modify())()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SessionIdentityPack(v0);
  return nullsub_1;
}

uint64_t static SessionIdentityPack.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    type metadata accessor for SessionIdentityPack(0);
    sub_1DD6E0508();
    v4 = v3[2];
    v10[1] = v3[1];
    v10[2] = v4;
    v10[0] = *v3;
    v6 = (a2 + *(v5 + 20));
    v7 = v6[2];
    v11[1] = v6[1];
    v11[2] = v7;
    v11[0] = *v6;
    v8 = static ClientSessionIdentityPack.== infix(_:_:)(v10, v11);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1DD728380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xEE00797469746E65)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD728458(char a1)
{
  if (a1)
  {
    return 0x6449746E65696C63;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_1DD7284A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD728380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7284D0(uint64_t a1)
{
  v2 = sub_1DD728710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD72850C(uint64_t a1)
{
  v2 = sub_1DD728710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SessionIdentityPack.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1DD710A9C(&qword_1ECD0E750, &qword_1DD879D30);
  sub_1DD6DDEAC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD728710();
  sub_1DD875BB0();
  LOBYTE(v18) = 0;
  type metadata accessor for SessionID(0);
  sub_1DD6E13AC();
  sub_1DD7291B4(v11, v12, &protocol conformance descriptor for SessionID);
  sub_1DD8759D0();
  if (!v2)
  {
    v13 = (v3 + *(type metadata accessor for SessionIdentityPack(0) + 20));
    v14 = *(v13 + 2);
    v15 = *(v13 + 3);
    v18 = *v13;
    v19 = v14;
    v20 = v15;
    v21 = v13[2];
    v17[15] = 1;
    sub_1DD728764();
    sub_1DD8759D0();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1DD728710()
{
  result = qword_1ECD0E758;
  if (!qword_1ECD0E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E758);
  }

  return result;
}

unint64_t sub_1DD728764()
{
  result = qword_1ECD0E768;
  if (!qword_1ECD0E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E768);
  }

  return result;
}

uint64_t SessionIdentityPack.hash(into:)()
{
  sub_1DD6DE290();
  sub_1DD874820();
  sub_1DD7291B4(&qword_1EE015D90, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1DD6E5F58();
  sub_1DD8750C0();
  type metadata accessor for SessionIdentityPack(0);
  sub_1DD6E0508();
  v1 = *(v0 + 40);
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD6DDEFC();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  if (!v1)
  {
    return sub_1DD875B40();
  }

  sub_1DD875B40();
  sub_1DD6E5F58();

  return _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t SessionIdentityPack.hashValue.getter()
{
  sub_1DD875B20();
  SessionIdentityPack.hash(into:)();
  return sub_1DD875B60();
}

uint64_t SessionIdentityPack.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  type metadata accessor for SessionID(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD710A9C(&qword_1ECD0E770, &qword_1DD879D38);
  sub_1DD6DDEAC();
  v24 = v7;
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for SessionIdentityPack(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD728710();
  sub_1DD875B90();
  if (v2)
  {
    return sub_1DD6E1EC8(a1);
  }

  v14 = v24;
  v15 = v13;
  LOBYTE(v27) = 0;
  sub_1DD6E13AC();
  sub_1DD7291B4(v16, v17, &protocol conformance descriptor for SessionID);
  v18 = v25;
  sub_1DD8758D0();
  sub_1DD6F1C3C(v26, v15);
  v31 = 1;
  sub_1DD728C1C();
  sub_1DD8758D0();
  (*(v14 + 8))(v9, v18);
  v19 = v28;
  v20 = v29;
  v21 = v15 + *(v10 + 20);
  *v21 = v27;
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  *(v21 + 32) = v30;
  sub_1DD728C70(v15, v23, type metadata accessor for SessionIdentityPack);
  sub_1DD6E1EC8(a1);
  return sub_1DD728CCC();
}

uint64_t sub_1DD728BE0(uint64_t a1)
{
  sub_1DD875B20();
  SessionIdentityPack.hash(into:)();
  return sub_1DD875B60();
}

unint64_t sub_1DD728C1C()
{
  result = qword_1ECD0E780;
  if (!qword_1ECD0E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E780);
  }

  return result;
}

uint64_t sub_1DD728C70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1DD6DE1C4();
  v4 = sub_1DD6DDEFC();
  v5(v4);
  return a2;
}

uint64_t sub_1DD728CCC()
{
  v1 = sub_1DD6DE290();
  v2(v1);
  sub_1DD6DE1C4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t SessionIdentityPack.clientSessionId.setter()
{
  sub_1DD6E69F8();
  sub_1DD6DE29C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SessionIdentityPack.clientSessionId.modify()
{
  v1 = sub_1DD7281CC(0x28uLL);
  v2 = sub_1DD6ED588(v1);
  sub_1DD6E0A18(v2);
  v5 = *v3;
  v4 = v3[1];
  v0[3] = v4;
  *v0 = v5;
  v0[1] = v4;

  return sub_1DD6E5F58();
}

void sub_1DD728E38()
{
  sub_1DD6DF2E8();
  if (v5)
  {
    v6 = (v4 + v3);

    *v6 = v2;
    v6[1] = v1;
  }

  else
  {

    v7 = (v4 + v3);
    *v7 = v2;
    v7[1] = v1;
  }

  free(v0);
}

uint64_t SessionIdentityPack.clientApplicationId.setter()
{
  sub_1DD6E69F8();
  sub_1DD6DE29C();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SessionIdentityPack.clientApplicationId.modify()
{
  v1 = sub_1DD7281CC(0x28uLL);
  v2 = sub_1DD6ED588(v1);
  sub_1DD6E0A18(v2);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v0[3] = v4;
  *v0 = v5;
  v0[1] = v4;

  return sub_1DD6E5F58();
}

void sub_1DD728F94()
{
  sub_1DD6DF2E8();
  if (v5)
  {
    v6 = v4 + v3;

    *(v6 + 16) = v2;
    *(v6 + 24) = v1;
  }

  else
  {

    v7 = v4 + v3;
    *(v7 + 16) = v2;
    *(v7 + 24) = v1;
  }

  free(v0);
}

uint64_t SessionIdentityPack.clientGroupId.setter()
{
  sub_1DD6E69F8();
  sub_1DD6DE29C();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SessionIdentityPack.clientGroupId.modify()
{
  v1 = sub_1DD7281CC(0x28uLL);
  v2 = sub_1DD6ED588(v1);
  sub_1DD6E0A18(v2);
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v0[3] = v4;
  *v0 = v5;
  v0[1] = v4;

  return sub_1DD6E5F58();
}

void sub_1DD7290F0()
{
  sub_1DD6DF2E8();
  if (v5)
  {
    v6 = v4 + v3;

    *(v6 + 32) = v2;
    *(v6 + 40) = v1;
  }

  else
  {

    v7 = v4 + v3;
    *(v7 + 32) = v2;
    *(v7 + 40) = v1;
  }

  free(v0);
}

uint64_t sub_1DD7291B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD729224(uint64_t a1)
{
  result = type metadata accessor for SessionID(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionIdentityPack.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD729378()
{
  result = qword_1ECD0E790;
  if (!qword_1ECD0E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E790);
  }

  return result;
}

unint64_t sub_1DD7293D0()
{
  result = qword_1ECD0E798;
  if (!qword_1ECD0E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E798);
  }

  return result;
}

unint64_t sub_1DD729428()
{
  result = qword_1ECD0E7A0;
  if (!qword_1ECD0E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E7A0);
  }

  return result;
}

uint64_t SnippetStreamingContextID.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DD874820();
  sub_1DD6DE1C4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t SnippetStreamingContextID.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD874820();
  sub_1DD6DE1C4();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t sub_1DD729544(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7295D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD729544(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD729604(uint64_t a1)
{
  v2 = sub_1DD7297D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD729640(uint64_t a1)
{
  v2 = sub_1DD7297D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SnippetStreamingContextID.encode(to:)(void *a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E7A8, &qword_1DD879F70);
  sub_1DD6DDEAC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD7297D8();
  sub_1DD875BB0();
  sub_1DD874820();
  sub_1DD6E13C4();
  sub_1DD6E1E3C(v8, v9, MEMORY[0x1E69695B0]);
  sub_1DD8759D0();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1DD7297D8()
{
  result = qword_1ECD0E7B0;
  if (!qword_1ECD0E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E7B0);
  }

  return result;
}

uint64_t SnippetStreamingContextID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1DD874820();
  sub_1DD6DDEAC();
  v22 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DD710A9C(&qword_1ECD0E7B8, &qword_1DD879F78);
  sub_1DD6DDEAC();
  v23 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for SnippetStreamingContextID(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD7297D8();
  sub_1DD875B90();
  if (!v2)
  {
    v16 = v22;
    v17 = v24;
    sub_1DD6E13C4();
    sub_1DD6E1E3C(v18, v19, MEMORY[0x1E69695D0]);
    sub_1DD8758D0();
    (*(v23 + 8))(v12, v8);
    (*(v16 + 32))(v15, v25, v4);
    sub_1DD729AD8(v15, v17);
  }

  return sub_1DD6E1EC8(a1);
}

uint64_t type metadata accessor for SnippetStreamingContextID(uint64_t a1)
{
  result = qword_1EE0151F8;
  if (!qword_1EE0151F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD729AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetStreamingContextID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD729B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  SnippetStreamingContextID.init(rawValue:)(a1, a3);

  return sub_1DD6E5E68(a3, 0, 1, a2);
}

uint64_t sub_1DD729B84@<X0>(uint64_t a1@<X8>)
{
  sub_1DD874820();
  sub_1DD6DE1C4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

_BYTE *storeEnumTagSinglePayload for SnippetStreamingContextID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD729D44()
{
  result = qword_1ECD0E7C0;
  if (!qword_1ECD0E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E7C0);
  }

  return result;
}

unint64_t sub_1DD729D9C()
{
  result = qword_1ECD0E7C8;
  if (!qword_1ECD0E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E7C8);
  }

  return result;
}

unint64_t sub_1DD729DF4()
{
  result = qword_1ECD0E7D0;
  if (!qword_1ECD0E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E7D0);
  }

  return result;
}

uint64_t static Preferences.subscript.getter@<X0>(uint64_t a3@<X8>)
{
  v4 = swift_readAtKeyPath();
  sub_1DD6E0540();
  (*(v5 + 16))(a3);
  return v4(&v7, 0);
}

uint64_t static Preferences.subscript.setter(uint64_t a1, uint64_t a2)
{
  sub_1DD6DF290();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6E490C();
  v3();
  swift_setAtWritableKeyPath();

  v4 = sub_1DD6E58E0();
  return v5(v4);
}

void (*static Preferences.subscript.modify(void *a1, void *a2))(uint64_t **a1, uint64_t a2)
{
  v4 = sub_1DD7281CC(0x28uLL);
  *a1 = v4;
  *v4 = a2;
  v4[1] = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  sub_1DD6DF290();
  *(v5 + 16) = v6;
  v8 = *(v7 + 64);
  v4[3] = sub_1DD7281CC(v8);
  v9 = sub_1DD7281CC(v8);
  sub_1DD6FAC58(v9);
  static Preferences.subscript.getter(v10);
  return sub_1DD72A110;
}

{
  v4 = sub_1DD7281CC(0x28uLL);
  *a1 = v4;
  *v4 = a2;
  v4[1] = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  sub_1DD6DF290();
  *(v5 + 16) = v6;
  v8 = *(v7 + 64);
  v4[3] = sub_1DD7281CC(v8);
  v9 = sub_1DD7281CC(v8);
  sub_1DD6FAC58(v9);
  static Preferences.subscript.getter(v10);
  return sub_1DD72F0B4;
}

uint64_t IntelligenceFlowPreferences.plannerType.getter()
{
  v1 = memcpy(__dst, v0, sizeof(__dst));
  if (__dst[7])
  {
    sub_1DD6FABE4();
  }

  else if (__dst[9] && (sub_1DD6E95A0(v1, __dst[9], v2, v3, v4, v5, v6, v7, v20, v21, v22, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8]), v8))
  {
    sub_1DD730E98();
  }

  else
  {
    v9 = sub_1DD72F2EC();
    if ((v9 & 1) != 0 || (sub_1DD730CE0(), v9 = v17(), !v22))
    {
      sub_1DD6E372C(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21, v22, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5]);
      sub_1DD730EA4(v18);
    }

    else
    {
      sub_1DD6E4198();
    }
  }

  return sub_1DD6E58E0();
}

uint64_t sub_1DD72A1C8()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 56);
    if (v3 && (v4 = sub_1DD72F6D0(*(v0 + 48), v3, v0)) != 0)
    {
      v1 = v4;
    }

    else if ((sub_1DD72F1E0() & 1) != 0 || ((*(v0 + 16))(&v6), (v1 = v6) == 0))
    {
      v1 = *(v2 + 32);

      swift_bridgeObjectRelease_n();
    }

    else
    {
    }
  }

  return v1;
}

uint64_t sub_1DD72A280(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = *(v1 + 72);
    if (v5)
    {
      v4 = sub_1DD72F7F0(*(v1 + 64), v5, v1);
      if (v6 != 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = 0;
    }

    if (sub_1DD72F2EC())
    {
      v7 = 0;
    }

    else
    {
      (*(v1 + 16))(v10);
      v7 = v10[0];
      if (v10[1] != 1)
      {
LABEL_10:
        sub_1DD730C58(v4, 1);
        v4 = v7;
        goto LABEL_11;
      }
    }

    v8 = *(v1 + 32);

    sub_1DD730C58(v7, 1);
    v7 = v8;
    goto LABEL_10;
  }

LABEL_11:
  sub_1DD730C6C(v2, v3);
  return v4;
}

uint64_t IntelligenceFlowPreferences.$plannerType.getter()
{
  sub_1DD6E5D84();
  sub_1DD6E4050(v1);
  v2 = sub_1DD6E4050(v0);
  return sub_1DD700D24(v2, v3, &qword_1ECD0E7D8, &qword_1DD87A230, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

void *IntelligenceFlowPreferences.$plannerType.setter()
{
  sub_1DD6E1F60();
  sub_1DD6E4050(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD7029B4(v0);
}

uint64_t IntelligenceFlowPreferences.$plannerType.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD6E4050(v3);
  v4 = sub_1DD6E4050((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD6E9A48();
}

void sub_1DD72A474(void **a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = *a1;
  if (a2)
  {
    v10 = v9[66];
    memcpy(v9 + 44, v9 + 11, 0x58uLL);
    sub_1DD6E4050(v9 + 33);
    sub_1DD730620((v9 + 44), (v9 + 55), &qword_1ECD0E7D8, &qword_1DD87A230);
    sub_1DD6EE7DC((v9 + 33), &qword_1ECD0E7D8, &qword_1DD87A230);
    memcpy(v10, v9 + 44, 0x58uLL);
    sub_1DD6E887C();
    sub_1DD6EE7DC((v9 + 22), &qword_1ECD0E7D8, &qword_1DD87A230);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v11);
    sub_1DD6E4050(v9 + 22);
    sub_1DD6EE7DC((v9 + 22), &qword_1ECD0E7D8, &qword_1DD87A230);
    memcpy(v8, __src, 0x58uLL);
  }

  free(v9);
}

__n128 IntelligenceFlowPreferences.$shouldWriteToShortcutsDatabase.setter(uint64_t a1)
{
  v3 = *(v1 + 104);
  v8[0] = *(v1 + 88);
  v8[1] = v3;
  v4 = *(v1 + 136);
  v8[2] = *(v1 + 120);
  v8[3] = v4;
  sub_1DD6EE7DC(v8, &qword_1ECD0E7E8, &qword_1DD87A240);
  v5 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v1 + 120) = result;
  *(v1 + 136) = v7;
  return result;
}

uint64_t IntelligenceFlowPreferences.$shouldWriteToShortcutsDatabase.modify()
{
  v1 = sub_1DD6E3818();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6E26C8(v2);
  v4 = sub_1DD6E17BC(v3, *(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 136));
  v5 = sub_1DD6E0C9C(v4, *(v0 + 136), *(v0 + 120), *(v0 + 104), *(v0 + 88));
  sub_1DD730620(v5, &v5[8], &qword_1ECD0E7E8, &qword_1DD87A240);
  return sub_1DD6F09EC();
}

void sub_1DD72A7AC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 384);
    sub_1DD6E07FC();
    v4 = *(v3 + 104);
    v5 = *(v3 + 136);
    v6 = *(v3 + 88);
    *(v2 + 224) = *(v3 + 120);
    *(v2 + 240) = v5;
    *(v2 + 192) = v6;
    *(v2 + 208) = v4;
    sub_1DD6ED240();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v7, v8, v9);
    v10 = sub_1DD6FF8C4();
    *(v3 + 88) = v11;
    *(v3 + 136) = v12;
    *(v3 + 120) = v10;
    *(v3 + 104) = v13;
    sub_1DD6E0514();
  }

  else
  {
    v14 = *(v2 + 384);
    sub_1DD6E0A28();
    v15 = *(v14 + 104);
    v16 = *(v14 + 136);
    v17 = *(v14 + 88);
    *(v2 + 160) = *(v14 + 120);
    *(v2 + 176) = v16;
    *(v2 + 128) = v17;
    *(v2 + 144) = v15;
    sub_1DD6EE7DC(v2 + 128, &qword_1ECD0E7E8, &qword_1DD87A240);
    *(v14 + 88) = v18;
    *(v14 + 104) = v19;
    *(v14 + 120) = v20;
    *(v14 + 136) = v21;
  }

  free(v2);
}

uint64_t IntelligenceFlowPreferences.$entityResolutionThreshold.getter()
{
  sub_1DD6EFF44();
  v2 = sub_1DD6F9B7C(v1);
  v3 = sub_1DD6FAD94(v2, (v0 + 152));
  return sub_1DD730D4C(v3, v4, &qword_1ECD0E7F0, &qword_1DD87A248, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

void *sub_1DD72A9F0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DD730620(__dst, &v2, &qword_1ECD0E7F0, &qword_1DD87A248);
  return IntelligenceFlowPreferences.$entityResolutionThreshold.setter();
}

void *IntelligenceFlowPreferences.$entityResolutionThreshold.setter()
{
  sub_1DD6FA6A4();
  sub_1DD6F9B7C(v1);
  sub_1DD6EE7DC(&v3, &qword_1ECD0E7F0, &qword_1DD87A248);
  return sub_1DD730E28((v0 + 152));
}

uint64_t IntelligenceFlowPreferences.$entityResolutionThreshold.modify()
{
  v2 = sub_1DD6FF790();
  v3 = sub_1DD7281CC(v2);
  v4 = sub_1DD6ED460(v3);
  v4[60] = v0;
  sub_1DD6F9B7C(v4);
  v5 = sub_1DD6F9B7C((v1 + 80));
  sub_1DD730E10(v5, v6, &qword_1ECD0E7F0, &qword_1DD87A248);
  return sub_1DD700BE4();
}

void sub_1DD72AB0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E650C();
    memcpy((v10 + 240), (v9 + 152), 0x50uLL);
    sub_1DD6E7130();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E4278((v9 + 152));
    sub_1DD6DFEE8();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6C50(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD6F9B7C((v10 + 160));
    sub_1DD6EE7DC(v10 + 160, &qword_1ECD0E7F0, &qword_1DD87A248);
    sub_1DD730E40((v8 + 152), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

uint64_t sub_1DD72AD18()
{
  sub_1DD6DEA3C();
  sub_1DD730CC8(v2, v3, &qword_1ECD0E7E8, &qword_1DD87A240, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16);
  return v0(v1);
}

__n128 IntelligenceFlowPreferences.$shouldShuffleTools.setter(uint64_t a1)
{
  v3 = *(v1 + 248);
  v8[0] = *(v1 + 232);
  v8[1] = v3;
  v4 = *(v1 + 280);
  v8[2] = *(v1 + 264);
  v8[3] = v4;
  sub_1DD6EE7DC(v8, &qword_1ECD0E7E8, &qword_1DD87A240);
  v5 = *(a1 + 16);
  *(v1 + 232) = *a1;
  *(v1 + 248) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v1 + 264) = result;
  *(v1 + 280) = v7;
  return result;
}

uint64_t IntelligenceFlowPreferences.$shouldShuffleTools.modify()
{
  v1 = sub_1DD6E3818();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6E26C8(v2);
  v4 = sub_1DD730C9C(v3, v0 + 232, *(v0 + 232), *(v0 + 248));
  v7 = sub_1DD6E0C9C(v5, v4, v6, *(v0 + 248), *(v0 + 232));
  sub_1DD730620(v7, &v7[8], &qword_1ECD0E7E8, &qword_1DD87A240);
  return sub_1DD6F09EC();
}

void sub_1DD72AE6C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 384);
    sub_1DD6E07FC();
    v4 = *(v3 + 248);
    v5 = *(v3 + 280);
    v6 = *(v3 + 232);
    *(v2 + 224) = *(v3 + 264);
    *(v2 + 240) = v5;
    *(v2 + 192) = v6;
    *(v2 + 208) = v4;
    sub_1DD6ED240();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v7, v8, v9);
    v10 = sub_1DD6FF8C4();
    *(v3 + 232) = v11;
    *(v3 + 264) = v10;
    *(v3 + 280) = v12;
    *(v3 + 248) = v13;
    sub_1DD6E0514();
  }

  else
  {
    v14 = *(v2 + 384);
    sub_1DD6E0A28();
    v15 = *(v14 + 248);
    v16 = *(v14 + 280);
    v17 = *(v14 + 232);
    *(v2 + 160) = *(v14 + 264);
    *(v2 + 176) = v16;
    *(v2 + 128) = v17;
    *(v2 + 144) = v15;
    sub_1DD6EE7DC(v2 + 128, &qword_1ECD0E7E8, &qword_1DD87A240);
    *(v14 + 232) = v18;
    *(v14 + 248) = v19;
    *(v14 + 264) = v20;
    *(v14 + 280) = v21;
  }

  free(v2);
}

uint64_t IntelligenceFlowPreferences.appleConnectDawToken.getter()
{
  v0 = sub_1DD730DE0(&v22);
  if (v29)
  {
    sub_1DD6FABE4();
  }

  else if (v31 && (sub_1DD6E95A0(v0, v31, v1, v2, v3, v4, v5, v6, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30), v7))
  {
    sub_1DD730E98();
  }

  else
  {
    v8 = sub_1DD72F2EC();
    if ((v8 & 1) != 0 || (sub_1DD730CE0(), v8 = v16(), !v21))
    {
      sub_1DD6E372C(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_1DD730EA4(v17);
    }

    else
    {
      sub_1DD6E4198();
    }
  }

  return sub_1DD6E58E0();
}

uint64_t IntelligenceFlowPreferences.$appleConnectDawToken.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD730DE0(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 296));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E7D8, &qword_1DD87A230, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1DD72B040()
{
  sub_1DD6DEA3C();
  v2 = memcpy(__dst, v1, sizeof(__dst));
  sub_1DD700D24(v2, v3, &qword_1ECD0E7D8, &qword_1DD87A230, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  return v0(v1);
}

void *IntelligenceFlowPreferences.$appleConnectDawToken.setter()
{
  sub_1DD6E1F60();
  sub_1DD730DE0(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD7029B4((v0 + 296));
}

uint64_t IntelligenceFlowPreferences.$appleConnectDawToken.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD730DE0(v3);
  v4 = sub_1DD730DE0((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD6E9A48();
}

void sub_1DD72B158(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 296), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 296));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD730DE0((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E7D8, &qword_1DD87A230);
    sub_1DD6ED760((v8 + 296), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$toolBoxAllowedGlobalTools.getter@<X0>(void *a1@<X8>)
{
  sub_1DD6E5C88(v19);
  v3 = memcpy(a1, (v1 + 384), 0x48uLL);
  return sub_1DD730EBC(v3, v4, &qword_1ECD0E7F8, &qword_1DD87A250, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

void *IntelligenceFlowPreferences.$toolBoxAllowedGlobalTools.setter()
{
  sub_1DD6E1F60();
  sub_1DD6E5C88(v2);
  sub_1DD6EE7DC(v4, &qword_1ECD0E7F8, &qword_1DD87A250);
  return memcpy((v1 + 384), v0, 0x48uLL);
}

void (*IntelligenceFlowPreferences.$toolBoxAllowedGlobalTools.modify())(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v2 = sub_1DD7281CC(0x1B8uLL);
  v3 = sub_1DD6ED460(v2);
  v3[54] = v0;
  sub_1DD6E5C88(v3);
  sub_1DD6E5C88((v1 + 72));
  sub_1DD730620(v1, v1 + 144, &qword_1ECD0E7F8, &qword_1DD87A250);
  return sub_1DD72B378;
}

void sub_1DD72B378(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E60B4();
    memcpy((v10 + 216), (v9 + 384), 0x48uLL);
    sub_1DD6E1BD0();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    memcpy((v9 + 384), (v10 + 288), 0x48uLL);
    sub_1DD6EE838();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6320(a1, a2, a3, a4, a5, a6, a7, a8, v17);
    sub_1DD6E5C88((v10 + 144));
    sub_1DD6EE7DC(v10 + 144, &qword_1ECD0E7F8, &qword_1DD87A250);
    memcpy((v8 + 384), __src, 0x48uLL);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$toolBoxAllowedLocalTools.getter@<X0>(void *a1@<X8>)
{
  sub_1DD6FE198(v19);
  v3 = memcpy(a1, (v1 + 456), 0x48uLL);
  return sub_1DD730EBC(v3, v4, &qword_1ECD0E7F8, &qword_1DD87A250, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1DD72B4D4()
{
  sub_1DD6DEA3C();
  v2 = memcpy(__dst, v1, sizeof(__dst));
  sub_1DD730EBC(v2, v3, &qword_1ECD0E7F8, &qword_1DD87A250, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17);
  return v0(v1);
}

void *IntelligenceFlowPreferences.$toolBoxAllowedLocalTools.setter()
{
  sub_1DD6E1F60();
  sub_1DD6FE198(v2);
  sub_1DD6EE7DC(v4, &qword_1ECD0E7F8, &qword_1DD87A250);
  return memcpy((v1 + 456), v0, 0x48uLL);
}

void (*IntelligenceFlowPreferences.$toolBoxAllowedLocalTools.modify())(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v2 = sub_1DD7281CC(0x1B8uLL);
  v3 = sub_1DD6ED460(v2);
  v3[54] = v0;
  sub_1DD6FE198(v3);
  sub_1DD6FE198((v1 + 72));
  sub_1DD730620(v1, v1 + 144, &qword_1ECD0E7F8, &qword_1DD87A250);
  return sub_1DD72B608;
}

void sub_1DD72B608(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E60B4();
    memcpy((v10 + 216), (v9 + 456), 0x48uLL);
    sub_1DD6E1BD0();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    memcpy((v9 + 456), (v10 + 288), 0x48uLL);
    sub_1DD6EE838();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6320(a1, a2, a3, a4, a5, a6, a7, a8, v17);
    sub_1DD6FE198((v10 + 144));
    sub_1DD6EE7DC(v10 + 144, &qword_1ECD0E7F8, &qword_1DD87A250);
    memcpy((v8 + 456), __src, 0x48uLL);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$selectedToolBoxAllowList.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD730D64(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 528));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E800, &qword_1DD87A258, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *IntelligenceFlowPreferences.$selectedToolBoxAllowList.setter()
{
  sub_1DD6E1F60();
  sub_1DD730D64(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD7029B4((v0 + 528));
}

uint64_t IntelligenceFlowPreferences.$selectedToolBoxAllowList.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD730D64(v3);
  v4 = sub_1DD730D64((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD6E9A48();
}

void sub_1DD72B810(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 528), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 528));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD730D64((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E800, &qword_1DD87A258);
    sub_1DD6ED760((v8 + 528), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

double IntelligenceFlowPreferences.$disableToolBoxAllowList.setter()
{
  sub_1DD702E64();
  sub_1DD6EE7DC(&v1, &qword_1ECD0E7E8, &qword_1DD87A240);
  *&result = sub_1DD730E58().n128_u64[0];
  return result;
}

uint64_t IntelligenceFlowPreferences.$disableToolBoxAllowList.modify()
{
  v1 = sub_1DD6E3818();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6E26C8(v2);
  v4 = sub_1DD730C9C(v3, v0 + 616, *(v0 + 616), *(v0 + 632));
  v8 = sub_1DD6E0C9C(v6, v4, v7, v5[1], *v5);
  sub_1DD730620(v8, &v8[8], &qword_1ECD0E7E8, &qword_1DD87A240);
  return sub_1DD6F09EC();
}

void sub_1DD72BAD8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = (v2[48] + 616);
    sub_1DD6E07FC();
    sub_1DD6FAD2C(v3[2], v3[3], v3[1], *v3);
    sub_1DD6ED240();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v4, v5, v6);
    v3[2] = sub_1DD6FF8C4();
    v3[3] = v7;
    *v3 = v9;
    v3[1] = v8;
    sub_1DD6E0514();
  }

  else
  {
    v10 = (v2[48] + 616);
    sub_1DD6E0A28();
    sub_1DD730E6C(v10[2], v10[3], v10[1], *v10);
    v11 = sub_1DD6EE7DC((v2 + 16), &qword_1ECD0E7E8, &qword_1DD87A240);
    sub_1DD730E84(v11, v12, v13, v14, v15, v16, v17, v18, v19, v21, v22, v20, v23);
  }

  free(v2);
}

uint64_t IntelligenceFlowPreferences.$selectedToolUtterancesOverride.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD730D04(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 680));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E800, &qword_1DD87A258, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1DD72BC1C()
{
  sub_1DD6DEA3C();
  v2 = memcpy(__dst, v1, sizeof(__dst));
  sub_1DD700D24(v2, v3, &qword_1ECD0E800, &qword_1DD87A258, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  return v0(v1);
}

void *IntelligenceFlowPreferences.$selectedToolUtterancesOverride.setter()
{
  sub_1DD6E1F60();
  sub_1DD730D04(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD7029B4((v0 + 680));
}

uint64_t IntelligenceFlowPreferences.$selectedToolUtterancesOverride.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD730D04(v3);
  v4 = sub_1DD730D04((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD6E9A48();
}

void sub_1DD72BD34(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 680), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 680));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD730D04((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E800, &qword_1DD87A258);
    sub_1DD6ED760((v8 + 680), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

__n128 IntelligenceFlowPreferences.$inputValidation.setter(uint64_t a1)
{
  v3 = v1[49];
  v8[0] = v1[48];
  v8[1] = v3;
  v4 = v1[51];
  v8[2] = v1[50];
  v8[3] = v4;
  sub_1DD6EE7DC(v8, &qword_1ECD0E7E8, &qword_1DD87A240);
  v5 = *(a1 + 16);
  v1[48] = *a1;
  v1[49] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[50] = result;
  v1[51] = v7;
  return result;
}

uint64_t IntelligenceFlowPreferences.$inputValidation.modify()
{
  v1 = sub_1DD6E3818();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6E26C8(v2);
  v4 = sub_1DD6E17BC(v3, v0[48], v0[49], v0[50], v0[51]);
  v5 = sub_1DD6E0C9C(v4, v0[51], v0[50], v0[49], v0[48]);
  sub_1DD730620(v5, &v5[8], &qword_1ECD0E7E8, &qword_1DD87A240);
  return sub_1DD6F09EC();
}

void sub_1DD72C00C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[48];
    sub_1DD6E07FC();
    sub_1DD6FAD2C(v3[50], v3[51], v3[49], v3[48]);
    sub_1DD6ED240();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v4, v5, v6);
    v3[50] = sub_1DD6FF8C4();
    v3[51] = v7;
    v3[48] = v9;
    v3[49] = v8;
    sub_1DD6E0514();
  }

  else
  {
    v10 = v2[48];
    sub_1DD6E0A28();
    sub_1DD730E6C(v10[50], v10[51], v10[49], v10[48]);
    sub_1DD6EE7DC((v2 + 16), &qword_1ECD0E7E8, &qword_1DD87A240);
    v10[48] = v11;
    v10[49] = v12;
    v10[50] = v13;
    v10[51] = v14;
  }

  free(v2);
}

__n128 IntelligenceFlowPreferences.$bypassTranscriptWriteRedaction.setter(uint64_t a1)
{
  v3 = v1[53];
  v8[0] = v1[52];
  v8[1] = v3;
  v4 = v1[55];
  v8[2] = v1[54];
  v8[3] = v4;
  sub_1DD6EE7DC(v8, &qword_1ECD0E7E8, &qword_1DD87A240);
  v5 = *(a1 + 16);
  v1[52] = *a1;
  v1[53] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[54] = result;
  v1[55] = v7;
  return result;
}

uint64_t IntelligenceFlowPreferences.$bypassTranscriptWriteRedaction.modify()
{
  v1 = sub_1DD6E3818();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6E26C8(v2);
  v4 = sub_1DD6E17BC(v3, v0[52], v0[53], v0[54], v0[55]);
  v5 = sub_1DD6E0C9C(v4, v0[55], v0[54], v0[53], v0[52]);
  sub_1DD730620(v5, &v5[8], &qword_1ECD0E7E8, &qword_1DD87A240);
  return sub_1DD6F09EC();
}

void sub_1DD72C1F4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[48];
    sub_1DD6E07FC();
    sub_1DD6FAD2C(v3[54], v3[55], v3[53], v3[52]);
    sub_1DD6ED240();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v4, v5, v6);
    v3[54] = sub_1DD6FF8C4();
    v3[55] = v7;
    v3[52] = v9;
    v3[53] = v8;
    sub_1DD6E0514();
  }

  else
  {
    v10 = v2[48];
    sub_1DD6E0A28();
    sub_1DD730E6C(v10[54], v10[55], v10[53], v10[52]);
    sub_1DD6EE7DC((v2 + 16), &qword_1ECD0E7E8, &qword_1DD87A240);
    v10[52] = v11;
    v10[53] = v12;
    v10[54] = v13;
    v10[55] = v14;
  }

  free(v2);
}

uint64_t IntelligenceFlowPreferences.$sbertDimensionSize.getter()
{
  sub_1DD6EFF44();
  v2 = sub_1DD700B58(v1);
  v3 = sub_1DD6FAD94(v2, (v0 + 896));
  return sub_1DD730D4C(v3, v4, &qword_1ECD0E808, &qword_1DD87A260, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

void *IntelligenceFlowPreferences.$sbertDimensionSize.setter()
{
  sub_1DD6FA6A4();
  sub_1DD700B58(v1);
  sub_1DD6EE7DC(&v3, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD730E28((v0 + 896));
}

uint64_t IntelligenceFlowPreferences.$sbertDimensionSize.modify()
{
  v2 = sub_1DD6FF790();
  v3 = sub_1DD7281CC(v2);
  v4 = sub_1DD6ED460(v3);
  v4[60] = v0;
  sub_1DD700B58(v4);
  v5 = sub_1DD700B58((v1 + 80));
  sub_1DD730E10(v5, v6, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD700BE4();
}

void sub_1DD72C4C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E650C();
    memcpy((v10 + 240), (v9 + 896), 0x50uLL);
    sub_1DD6E7130();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E4278((v9 + 896));
    sub_1DD6DFEE8();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6C50(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD700B58((v10 + 160));
    sub_1DD6EE7DC(v10 + 160, &qword_1ECD0E808, &qword_1DD87A260);
    sub_1DD730E40((v8 + 896), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.sbertTokenizerLocale.getter()
{
  v0 = sub_1DD730DB0(&v22);
  if (v29)
  {
    sub_1DD6FABE4();
  }

  else if (v31 && (sub_1DD6E95A0(v0, v31, v1, v2, v3, v4, v5, v6, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30), v7))
  {
    sub_1DD730E98();
  }

  else
  {
    v8 = sub_1DD72F2EC();
    if ((v8 & 1) != 0 || (sub_1DD730CE0(), v8 = v16(), !v21))
    {
      sub_1DD6E372C(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_1DD730EA4(v17);
    }

    else
    {
      sub_1DD6E4198();
    }
  }

  return sub_1DD6E58E0();
}

uint64_t IntelligenceFlowPreferences.$sbertTokenizerLocale.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD730DB0(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 976));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E7D8, &qword_1DD87A230, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *IntelligenceFlowPreferences.$sbertTokenizerLocale.setter()
{
  sub_1DD6E1F60();
  sub_1DD730DB0(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD7029B4((v0 + 976));
}

uint64_t IntelligenceFlowPreferences.$sbertTokenizerLocale.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD730DB0(v3);
  v4 = sub_1DD730DB0((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD6E9A48();
}

void sub_1DD72C720(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 976), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 976));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD730DB0((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E7D8, &qword_1DD87A230);
    sub_1DD6ED760((v8 + 976), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

unint64_t IntelligenceFlowPreferences.uiControlPlanOverrideRankThreshold.getter()
{
  v0 = sub_1DD730D98(&v12);
  if (v17)
  {
    if (!v19 || (v0 = sub_1DD72FC88(v18, v19, &v12), (v0 & 0x10000000000) != 0))
    {
      v12(&v11, v0);
      sub_1DD703248();
      if (v2)
      {
        if (qword_1EE015238 != -1)
        {
          sub_1DD6DF2FC(&qword_1EE015238);
        }

        v3 = sub_1DD874CD0();
        sub_1DD6DEB80(v3, qword_1EE015240);
        sub_1DD6ED37C();
        sub_1DD6E13DC();
        v7 = sub_1DD6DF59C(v4, v5, &qword_1DD87A238, v6);
        v8 = *(sub_1DD6E5250(v7) + 16);

        if (v8 == 1)
        {
          goto LABEL_12;
        }
      }

      sub_1DD730CE0();
      v9();
      if ((v11 & 0x10000000000) != 0)
      {
LABEL_12:
        LODWORD(v0) = v13;
        LOBYTE(v1) = v14;
      }

      else
      {
        v0 = v11 | (BYTE4(v11) << 32);
        v1 = HIDWORD(v0) & 1;
      }
    }

    else
    {
      v1 = HIDWORD(v0) & 1;
    }
  }

  else
  {
    LODWORD(v0) = v15;
    LOBYTE(v1) = v16 & 1;
  }

  return v0 | (v1 << 32);
}

uint64_t IntelligenceFlowPreferences.$uiControlPlanOverrideRankThreshold.getter@<X0>(void *a1@<X8>)
{
  sub_1DD730D98(v19);
  v3 = memcpy(a1, (v1 + 1064), 0x48uLL);
  return sub_1DD730EBC(v3, v4, &qword_1ECD0E810, &qword_1DD87A268, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

void *sub_1DD72C97C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DD730620(__dst, &v2, &qword_1ECD0E810, &qword_1DD87A268);
  return IntelligenceFlowPreferences.$uiControlPlanOverrideRankThreshold.setter();
}

void *IntelligenceFlowPreferences.$uiControlPlanOverrideRankThreshold.setter()
{
  sub_1DD6E1F60();
  sub_1DD730D98(v2);
  sub_1DD6EE7DC(v4, &qword_1ECD0E810, &qword_1DD87A268);
  return memcpy((v1 + 1064), v0, 0x48uLL);
}

void (*IntelligenceFlowPreferences.$uiControlPlanOverrideRankThreshold.modify())(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v2 = sub_1DD7281CC(0x1B8uLL);
  v3 = sub_1DD6ED460(v2);
  v3[54] = v0;
  sub_1DD730D98(v3);
  sub_1DD730D98((v1 + 72));
  sub_1DD730620(v1, v1 + 144, &qword_1ECD0E810, &qword_1DD87A268);
  return sub_1DD72CAB0;
}

void sub_1DD72CAB0(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E60B4();
    memcpy((v10 + 216), (v9 + 1064), 0x48uLL);
    sub_1DD6E1BD0();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    memcpy((v9 + 1064), (v10 + 288), 0x48uLL);
    sub_1DD6EE838();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6320(a1, a2, a3, a4, a5, a6, a7, a8, v17);
    sub_1DD730D98((v10 + 144));
    sub_1DD6EE7DC(v10 + 144, &qword_1ECD0E810, &qword_1DD87A268);
    memcpy((v8 + 1064), __src, 0x48uLL);
  }

  free(v10);
}

void IntelligenceFlowPreferences.uiControlToolRetrievalMatchThreshold.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, uint64_t a12, void *(*a13)(uint64_t *__return_ptr), uint64_t a14, void (*a15)(uint64_t *__return_ptr, void *), uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1DD730EFC();
  a31 = v32;
  a32 = v33;
  sub_1DD701394(&a13);
  if (a21)
  {
    sub_1DD6F44A4();
    if (!v34 || (sub_1DD730158(a22, v34, &a13), (v35 & 0x100) != 0))
    {
      v36 = a13(&a9);
      if (a9 != 1)
      {
        goto LABEL_8;
      }

      if (qword_1EE015238 != -1)
      {
        sub_1DD6DF2FC(&qword_1EE015238);
      }

      v37 = sub_1DD874CD0();
      sub_1DD6DEB80(v37, qword_1EE015240);
      sub_1DD6ED37C();
      sub_1DD6E13DC();
      v41 = sub_1DD6DF59C(v38, v39, &qword_1DD87A238, v40);
      v42 = *(sub_1DD6E5250(v41) + 16);

      if (v42 != 1)
      {
LABEL_8:
        a15(&a9, v36);
      }
    }
  }

  sub_1DD730EE8();
}

uint64_t IntelligenceFlowPreferences.$uiControlToolRetrievalMatchThreshold.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD701394(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 1136));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E818, &qword_1DD87A270, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *sub_1DD72CCEC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DD730620(__dst, &v2, &qword_1ECD0E818, &qword_1DD87A270);
  return IntelligenceFlowPreferences.$uiControlToolRetrievalMatchThreshold.setter();
}

void *IntelligenceFlowPreferences.$uiControlToolRetrievalMatchThreshold.setter()
{
  sub_1DD6E1F60();
  sub_1DD701394(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E818, &qword_1DD87A270);
  return sub_1DD7029B4((v0 + 1136));
}

uint64_t IntelligenceFlowPreferences.$uiControlToolRetrievalMatchThreshold.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD701394(v3);
  v4 = sub_1DD701394((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E818, &qword_1DD87A270);
  return sub_1DD6E9A48();
}

void sub_1DD72CE04(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 1136), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 1136));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD701394((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E818, &qword_1DD87A270);
    sub_1DD6ED760((v8 + 1136), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

double IntelligenceFlowPreferences.$uiControlCommandEmbeddingInFocus.setter()
{
  sub_1DD702E64();
  sub_1DD6EE7DC(&v1, &qword_1ECD0E7E8, &qword_1DD87A240);
  *&result = sub_1DD730E58().n128_u64[0];
  return result;
}

uint64_t IntelligenceFlowPreferences.$uiControlCommandEmbeddingInFocus.modify()
{
  v1 = sub_1DD6E3818();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6E26C8(v2);
  v4 = sub_1DD730C9C(v3, v0 + 1224, *(v0 + 1224), *(v0 + 1240));
  v8 = sub_1DD6E0C9C(v6, v4, v7, v5[1], *v5);
  sub_1DD730620(v8, &v8[8], &qword_1ECD0E7E8, &qword_1DD87A240);
  return sub_1DD6F09EC();
}

void sub_1DD72D0CC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = (v2[48] + 1224);
    sub_1DD6E07FC();
    sub_1DD6FAD2C(v3[2], v3[3], v3[1], *v3);
    sub_1DD6ED240();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v4, v5, v6);
    v3[2] = sub_1DD6FF8C4();
    v3[3] = v7;
    *v3 = v9;
    v3[1] = v8;
    sub_1DD6E0514();
  }

  else
  {
    v10 = (v2[48] + 1224);
    sub_1DD6E0A28();
    sub_1DD730E6C(v10[2], v10[3], v10[1], *v10);
    v11 = sub_1DD6EE7DC((v2 + 16), &qword_1ECD0E7E8, &qword_1DD87A240);
    sub_1DD730E84(v11, v12, v13, v14, v15, v16, v17, v18, v19, v21, v22, v20, v23);
  }

  free(v2);
}

uint64_t IntelligenceFlowPreferences.$uiControlCommandEmbeddingChoice.getter()
{
  sub_1DD6EFF44();
  v2 = sub_1DD730D34(v1);
  v3 = sub_1DD6FAD94(v2, (v0 + 1288));
  return sub_1DD730D4C(v3, v4, &qword_1ECD0E808, &qword_1DD87A260, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1DD72D2DC()
{
  sub_1DD6DEA3C();
  v2 = memcpy(__dst, v1, sizeof(__dst));
  sub_1DD730D4C(v2, v3, &qword_1ECD0E808, &qword_1DD87A260, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
  return v0(v1);
}

void *IntelligenceFlowPreferences.$uiControlCommandEmbeddingChoice.setter()
{
  sub_1DD6FA6A4();
  sub_1DD730D34(v1);
  sub_1DD6EE7DC(&v3, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD730E28((v0 + 1288));
}

uint64_t IntelligenceFlowPreferences.$uiControlCommandEmbeddingChoice.modify()
{
  v2 = sub_1DD6FF790();
  v3 = sub_1DD7281CC(v2);
  v4 = sub_1DD6ED460(v3);
  v4[60] = v0;
  sub_1DD730D34(v4);
  v5 = sub_1DD730D34((v1 + 80));
  sub_1DD730E10(v5, v6, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD700BE4();
}

void sub_1DD72D3F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E650C();
    memcpy((v10 + 240), (v9 + 1288), 0x50uLL);
    sub_1DD6E7130();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E4278((v9 + 1288));
    sub_1DD6DFEE8();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6C50(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD730D34((v10 + 160));
    sub_1DD6EE7DC(v10 + 160, &qword_1ECD0E808, &qword_1DD87A260);
    sub_1DD730E40((v8 + 1288), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$uiControlCommandHierarchyEmbedSeparator.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD730D1C(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 1368));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E800, &qword_1DD87A258, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *IntelligenceFlowPreferences.$uiControlCommandHierarchyEmbedSeparator.setter()
{
  sub_1DD6E1F60();
  sub_1DD730D1C(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD7029B4((v0 + 1368));
}

uint64_t IntelligenceFlowPreferences.$uiControlCommandHierarchyEmbedSeparator.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD730D1C(v3);
  v4 = sub_1DD730D1C((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD6E9A48();
}

void sub_1DD72D5F0(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 1368), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 1368));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD730D1C((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E800, &qword_1DD87A258);
    sub_1DD6ED760((v8 + 1368), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

__n128 IntelligenceFlowPreferences.$shouldDisableSearchPlusActConfirmation.setter(uint64_t a1)
{
  v3 = v1[92];
  v8[0] = v1[91];
  v8[1] = v3;
  v4 = v1[94];
  v8[2] = v1[93];
  v8[3] = v4;
  sub_1DD6EE7DC(v8, &qword_1ECD0E7E8, &qword_1DD87A240);
  v5 = *(a1 + 16);
  v1[91] = *a1;
  v1[92] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[93] = result;
  v1[94] = v7;
  return result;
}

uint64_t IntelligenceFlowPreferences.$shouldDisableSearchPlusActConfirmation.modify()
{
  v1 = sub_1DD6E3818();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6E26C8(v2);
  v4 = sub_1DD6E17BC(v3, v0[91], v0[92], v0[93], v0[94]);
  v5 = sub_1DD6E0C9C(v4, v0[94], v0[93], v0[92], v0[91]);
  sub_1DD730620(v5, &v5[8], &qword_1ECD0E7E8, &qword_1DD87A240);
  return sub_1DD6F09EC();
}

void sub_1DD72D8F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 384);
    sub_1DD6E07FC();
    v4 = v3[92];
    v5 = v3[94];
    v6 = v3[91];
    *(v2 + 224) = v3[93];
    *(v2 + 240) = v5;
    *(v2 + 192) = v6;
    *(v2 + 208) = v4;
    sub_1DD6ED240();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v7, v8, v9);
    v10 = sub_1DD6FF8C4();
    v3[91] = v11;
    v3[94] = v12;
    v3[93] = v10;
    v3[92] = v13;
    sub_1DD6E0514();
  }

  else
  {
    v14 = *(v2 + 384);
    sub_1DD6E0A28();
    v15 = v14[92];
    v16 = v14[94];
    v17 = v14[91];
    *(v2 + 160) = v14[93];
    *(v2 + 176) = v16;
    *(v2 + 128) = v17;
    *(v2 + 144) = v15;
    sub_1DD6EE7DC(v2 + 128, &qword_1ECD0E7E8, &qword_1DD87A240);
    v14[91] = v18;
    v14[92] = v19;
    v14[93] = v20;
    v14[94] = v21;
  }

  free(v2);
}

uint64_t IntelligenceFlowPreferences.$planOverridesDelayDurationInMs.getter()
{
  sub_1DD6EFF44();
  v2 = sub_1DD6E722C(v1);
  v3 = sub_1DD6FAD94(v2, (v0 + 1520));
  return sub_1DD730D4C(v3, v4, &qword_1ECD0E808, &qword_1DD87A260, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

void *IntelligenceFlowPreferences.$planOverridesDelayDurationInMs.setter()
{
  sub_1DD6FA6A4();
  sub_1DD6E722C(v1);
  sub_1DD6EE7DC(&v3, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD730E28((v0 + 1520));
}

uint64_t IntelligenceFlowPreferences.$planOverridesDelayDurationInMs.modify()
{
  v2 = sub_1DD6FF790();
  v3 = sub_1DD7281CC(v2);
  v4 = sub_1DD6ED460(v3);
  v4[60] = v0;
  sub_1DD6E722C(v4);
  v5 = sub_1DD6E722C((v1 + 80));
  sub_1DD730E10(v5, v6, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD700BE4();
}

void sub_1DD72DAF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E650C();
    memcpy((v10 + 240), (v9 + 1520), 0x50uLL);
    sub_1DD6E7130();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E4278((v9 + 1520));
    sub_1DD6DFEE8();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6C50(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD6E722C((v10 + 160));
    sub_1DD6EE7DC(v10 + 160, &qword_1ECD0E808, &qword_1DD87A260);
    sub_1DD730E40((v8 + 1520), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$planOverridesDelayDurationVariationInMs.getter()
{
  sub_1DD6EFF44();
  v2 = sub_1DD730DF8(v1);
  v3 = sub_1DD6FAD94(v2, (v0 + 1600));
  return sub_1DD730D4C(v3, v4, &qword_1ECD0E808, &qword_1DD87A260, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

void *IntelligenceFlowPreferences.$planOverridesDelayDurationVariationInMs.setter()
{
  sub_1DD6FA6A4();
  sub_1DD730DF8(v1);
  sub_1DD6EE7DC(&v3, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD730E28((v0 + 1600));
}

uint64_t IntelligenceFlowPreferences.$planOverridesDelayDurationVariationInMs.modify()
{
  v2 = sub_1DD6FF790();
  v3 = sub_1DD7281CC(v2);
  v4 = sub_1DD6ED460(v3);
  v4[60] = v0;
  sub_1DD730DF8(v4);
  v5 = sub_1DD730DF8((v1 + 80));
  sub_1DD730E10(v5, v6, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD700BE4();
}

void sub_1DD72DCB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E650C();
    memcpy((v10 + 240), (v9 + 1600), 0x50uLL);
    sub_1DD6E7130();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E4278((v9 + 1600));
    sub_1DD6DFEE8();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6C50(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD730DF8((v10 + 160));
    sub_1DD6EE7DC(v10 + 160, &qword_1ECD0E808, &qword_1DD87A260);
    sub_1DD730E40((v8 + 1600), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.agenticPlannerRoutingScheme.getter()
{
  v0 = sub_1DD730DC8(&v22);
  if (v29)
  {
    sub_1DD6FABE4();
  }

  else if (v31 && (sub_1DD6E95A0(v0, v31, v1, v2, v3, v4, v5, v6, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30), v7))
  {
    sub_1DD730E98();
  }

  else
  {
    v8 = sub_1DD72F2EC();
    if ((v8 & 1) != 0 || (sub_1DD730CE0(), v8 = v16(), !v21))
    {
      sub_1DD6E372C(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_1DD730EA4(v17);
    }

    else
    {
      sub_1DD6E4198();
    }
  }

  return sub_1DD6E58E0();
}

uint64_t IntelligenceFlowPreferences.$agenticPlannerRoutingScheme.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD730DC8(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 1680));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E7D8, &qword_1DD87A230, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *IntelligenceFlowPreferences.$agenticPlannerRoutingScheme.setter()
{
  sub_1DD6E1F60();
  sub_1DD730DC8(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD7029B4((v0 + 1680));
}

uint64_t IntelligenceFlowPreferences.$agenticPlannerRoutingScheme.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD730DC8(v3);
  v4 = sub_1DD730DC8((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD6E9A48();
}

void sub_1DD72DF14(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 1680), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 1680));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD730DC8((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E7D8, &qword_1DD87A230);
    sub_1DD6ED760((v8 + 1680), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$agenticPlannerZincUrl.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD6E5CF8(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 1768));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E800, &qword_1DD87A258, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *IntelligenceFlowPreferences.$agenticPlannerZincUrl.setter()
{
  sub_1DD6E1F60();
  sub_1DD6E5CF8(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD7029B4((v0 + 1768));
}

uint64_t IntelligenceFlowPreferences.$agenticPlannerZincUrl.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD6E5CF8(v3);
  v4 = sub_1DD6E5CF8((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD6E9A48();
}

void sub_1DD72E10C(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 1768), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 1768));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD6E5CF8((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E800, &qword_1DD87A258);
    sub_1DD6ED760((v8 + 1768), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$requestDateTime.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD6F9A58(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 1856));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E800, &qword_1DD87A258, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *IntelligenceFlowPreferences.$requestDateTime.setter()
{
  sub_1DD6E1F60();
  sub_1DD6F9A58(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD7029B4((v0 + 1856));
}

uint64_t IntelligenceFlowPreferences.$requestDateTime.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD6F9A58(v3);
  v4 = sub_1DD6F9A58((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD6E9A48();
}

void sub_1DD72E304(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 1856), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 1856));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD6F9A58((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E800, &qword_1DD87A258);
    sub_1DD6ED760((v8 + 1856), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

void *sub_1DD72E3C8@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + 944;
  strcpy((a1 + 32), "agenticPlanner");
  *(a1 + 47) = -18;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_1DD87A1B0;
  if (qword_1EE015BD8 != -1)
  {
    swift_once();
  }

  *(a1 + 80) = qword_1EE015BE0;
  *(a1 + 16) = sub_1DD730C20;
  *(a1 + 24) = 0;
  *a1 = sub_1DD7109F8;
  *(a1 + 8) = 0;
  sub_1DD730E78();
  *(a1 + 120) = 512;
  *(a1 + 128) = 0xD000000000000018;
  *(a1 + 136) = v3;
  *(a1 + 144) = v4;
  *(a1 + 104) = sub_1DD724258;
  *(a1 + 112) = 0;
  *(a1 + 88) = sub_1DD7109F8;
  *(a1 + 96) = 0;
  sub_1DD6F37E8();
  *(a1 + 184) = 0x3FFE666666666666;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1;
  *(a1 + 208) = v5 + 7;
  *(a1 + 216) = v6;
  *(a1 + 224) = v7;
  *(a1 + 232) = v8;
  *(a1 + 168) = sub_1DD730BA0;
  *(a1 + 176) = 0;
  *(a1 + 152) = sub_1DD7109F8;
  *(a1 + 160) = 0;
  sub_1DD6F37E8();
  *(a1 + 264) = v9;
  *(a1 + 272) = v10;
  *(a1 + 280) = v11;
  *(a1 + 248) = v12;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  sub_1DD6F37E8();
  *(a1 + 328) = 0;
  *(a1 + 336) = 0xE000000000000000;
  *(a1 + 344) = 0u;
  *(a1 + 360) = v13 + 2;
  *(a1 + 368) = v14;
  *(a1 + 376) = v15;
  *(a1 + 312) = v16;
  *(a1 + 320) = 0;
  *(a1 + 288) = v15;
  *(a1 + 296) = v17;
  *(a1 + 304) = 0;
  sub_1DD6F37E8();
  v18 = MEMORY[0x1E69E7CC0];
  *(a1 + 416) = MEMORY[0x1E69E7CC0];
  *(a1 + 424) = 0;
  *(a1 + 432) = v20;
  *(a1 + 440) = v19;
  *(a1 + 400) = sub_1DD730BF8;
  *(a1 + 408) = 0;
  *(a1 + 384) = sub_1DD7109F8;
  *(a1 + 392) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = v18;
  *(a1 + 496) = xmmword_1DD87A1C0;
  *(a1 + 512) = 0x80000001DD8B4AD0;
  *(a1 + 520) = v21;
  *(a1 + 464) = 0;
  *(a1 + 472) = sub_1DD730BF8;
  *(a1 + 448) = v21;
  *(a1 + 456) = sub_1DD7109F8;
  sub_1DD6F37E8();
  *(a1 + 576) = 0;
  *(a1 + 560) = v22;
  *(a1 + 584) = v23;
  *(a1 + 592) = v24;
  *(a1 + 600) = v25;
  *(a1 + 608) = v26;
  *(a1 + 544) = sub_1DD730BD0;
  *(a1 + 552) = 0;
  *(a1 + 528) = sub_1DD7109F8;
  *(a1 + 536) = 0;
  *(a1 + 648) = v27;
  *(a1 + 656) = v28 | 5;
  *(a1 + 664) = 0x80000001DD8B4B10;
  *(a1 + 672) = v26;
  *(a1 + 632) = v29;
  *(a1 + 640) = 0;
  *(a1 + 616) = v30;
  *(a1 + 624) = 0;
  *(a1 + 728) = 0;
  *(a1 + 712) = v22;
  *(a1 + 736) = xmmword_1DD87A1D0;
  *(a1 + 752) = 0x80000001DD8B4B30;
  *(a1 + 760) = v26;
  *(a1 + 696) = sub_1DD730BD0;
  *(a1 + 704) = 0;
  *(a1 + 680) = sub_1DD7109F8;
  *(a1 + 688) = 0;
  *(a1 + 800) = v27;
  *(a1 + 808) = 0x6C61567475706E49;
  *(a1 + 816) = 0xEF6E6F6974616469;
  *(a1 + 824) = v26;
  *(a1 + 784) = v29;
  *(a1 + 792) = 0;
  *(a1 + 768) = v30;
  *(a1 + 776) = 0;
  *(a1 + 864) = v27;
  *(a1 + 872) = v28 | 0xC;
  *(a1 + 880) = 0x80000001DD8B4B50;
  *(a1 + 888) = v26;
  *(a1 + 848) = v29;
  *(a1 + 856) = 0;
  *(a1 + 832) = v30;
  *(a1 + 840) = 0;
  *(a1 + 928) = xmmword_1DD87A1E0;
  *v2 = v23;
  *(a1 + 952) = v28;
  *(a1 + 960) = 0x80000001DD8B4B70;
  *(a1 + 968) = v26;
  *(a1 + 912) = sub_1DD730BA0;
  *(a1 + 920) = 0;
  *(a1 + 896) = sub_1DD7109F8;
  *(a1 + 904) = 0;
  *(a1 + 1008) = 0x6873696C676E65;
  *(a1 + 1016) = 0xE700000000000000;
  *(a1 + 1024) = v22;
  *(a1 + 1040) = v31;
  *(a1 + 1048) = 0x80000001DD8B4B90;
  *(a1 + 1056) = v26;
  *(a1 + 992) = v32;
  *(a1 + 1000) = 0;
  *(a1 + 976) = v33;
  *(a1 + 984) = 0;
  *(a1 + 1096) = 0;
  *(v2 + 156) = v23;
  *(v2 + 160) = 0;
  *(v2 + 164) = 256;
  *(a1 + 1112) = v28 + 16;
  *(a1 + 1120) = 0x80000001DD8B4BB0;
  *(a1 + 1128) = v26;
  *(a1 + 1080) = sub_1DD730B68;
  *(a1 + 1088) = 0;
  *(a1 + 1064) = sub_1DD7109F8;
  *(a1 + 1072) = 0;
  *(a1 + 1168) = 0;
  *(v2 + 232) = v23;
  *(a1 + 1184) = 0;
  *(a1 + 1192) = 0;
  *(v2 + 249) = v23;
  *(a1 + 1200) = v28 + 18;
  *(a1 + 1208) = 0x80000001DD8B4BE0;
  *(a1 + 1216) = v26;
  *(a1 + 1152) = sub_1DD730B34;
  *(a1 + 1160) = 0;
  *(a1 + 1136) = sub_1DD7109F8;
  *(a1 + 1144) = 0;
  *(a1 + 1256) = 513;
  *(a1 + 1264) = v28 + 14;
  *(a1 + 1272) = 0x80000001DD8B4C10;
  *(a1 + 1280) = v26;
  *(a1 + 1240) = v29;
  *(a1 + 1248) = 0;
  *(a1 + 1224) = v30;
  *(a1 + 1232) = 0;
  *(a1 + 1320) = v22;
  *(v2 + 392) = v23;
  *(a1 + 1344) = v28 | 0xD;
  *(a1 + 1352) = 0x80000001DD8B4C40;
  *(a1 + 1360) = v26;
  *(a1 + 1304) = sub_1DD730BA0;
  *(a1 + 1312) = 0;
  *(a1 + 1288) = sub_1DD7109F8;
  *(a1 + 1296) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1400) = v22;
  *(a1 + 1424) = xmmword_1DD87A1F0;
  *(a1 + 1440) = 0x80000001DD8B4C60;
  *(a1 + 1448) = v26;
  *(a1 + 1384) = sub_1DD730BD0;
  *(a1 + 1392) = 0;
  *(a1 + 1368) = sub_1DD7109F8;
  *(a1 + 1376) = 0;
  *(a1 + 1488) = v27;
  *(a1 + 1496) = v28 + 14;
  *(a1 + 1504) = 0x80000001DD8B4C90;
  *(a1 + 1512) = v26;
  *(a1 + 1472) = v29;
  *(a1 + 1480) = 0;
  *(a1 + 1456) = v30;
  *(a1 + 1464) = 0;
  sub_1DD730E78();
  *(a1 + 1552) = v34;
  *(v2 + 624) = v35;
  *(a1 + 1576) = v36;
  *(a1 + 1584) = v37;
  *(a1 + 1592) = v38;
  *(a1 + 1536) = v39;
  *(a1 + 1544) = 0;
  *(a1 + 1520) = v40;
  *(a1 + 1528) = 0;
  sub_1DD730E78();
  *(a1 + 1632) = xmmword_1DD87A200;
  *(v2 + 704) = v41;
  *(a1 + 1656) = v42 + 21;
  *(a1 + 1664) = v43;
  *(a1 + 1672) = v44;
  *(a1 + 1616) = v45;
  *(a1 + 1624) = 0;
  *(a1 + 1600) = v46;
  *(a1 + 1608) = 0;
  sub_1DD730E78();
  strcpy((a1 + 1712), "full-ondevice");
  *(a1 + 1726) = -4864;
  *(a1 + 1728) = v47;
  *(a1 + 1744) = v48 + 11;
  *(a1 + 1752) = v49;
  *(a1 + 1760) = v50;
  *(a1 + 1696) = v51;
  *(a1 + 1704) = 0;
  *(a1 + 1680) = v52;
  *(a1 + 1688) = 0;
  *(a1 + 1816) = 0;
  *(a1 + 1800) = v47;
  *(a1 + 1824) = xmmword_1DD87A210;
  *(a1 + 1840) = 0x80000001DD8B4D30;
  *(a1 + 1848) = v50;
  *(a1 + 1784) = v53;
  *(a1 + 1792) = 0;
  *(a1 + 1768) = v54;
  *(a1 + 1776) = 0;
  *(a1 + 1904) = 0;
  *(a1 + 1888) = v47;
  *(a1 + 1912) = v55;
  *(a1 + 1920) = xmmword_1DD87A220;
  *(a1 + 1936) = v50;
  *(a1 + 1872) = v53;
  *(a1 + 1880) = 0;
  *(a1 + 1856) = v54;
  *(a1 + 1864) = 0;
  v56 = v50;

  return v56;
}

IntelligenceFlow::SbertTokenizerLocale_optional __swiftcall SbertTokenizerLocale.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD8757F0();

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

  *v2 = v5;
  return result;
}

uint64_t SbertTokenizerLocale.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E696C69746C756DLL;
  }

  else
  {
    return 0x6873696C676E65;
  }
}

uint64_t sub_1DD72EC30@<X0>(uint64_t *a1@<X8>)
{
  result = SbertTokenizerLocale.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static Preferences.subscript.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_1EE015B18 != -1)
  {
    sub_1DD6E6A14(&qword_1EE015B18);
  }

  swift_beginAccess();
  v3 = swift_readAtKeyPath();
  sub_1DD6E0540();
  (*(v4 + 16))(a2);
  v3(v6, 0);
  return swift_endAccess();
}

uint64_t sub_1DD72ED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v11 - v8, v6);

  v9 = sub_1DD6E58E0();
  return a5(v9);
}

uint64_t static Preferences.subscript.setter(uint64_t a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  sub_1DD6DF290();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  if (qword_1EE015B18 != -1)
  {
    sub_1DD6E6A14(&qword_1EE015B18);
  }

  (*(v5 + 16))(v8, a1, v3);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();

  return (*(v5 + 8))(a1, v3);
}

void sub_1DD72F0CC(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    v9 = *v4;
    v10 = sub_1DD6E58E0();
    v11(v10);

    a3(v5, v9);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v12 = *v4;

    a3(v6, v12);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1DD72F1E0()
{
  (*v0)(&v4);
  if (v4 != 1)
  {
    return 0;
  }

  if (qword_1EE015238 != -1)
  {
    swift_once();
  }

  v1 = sub_1DD874CD0();
  sub_1DD6E1224(v1, qword_1EE015240);
  sub_1DD710A9C(&qword_1ECD0E7E0, &qword_1DD87A238);
  sub_1DD6DF59C(qword_1EE015530, &qword_1ECD0E7E0, &qword_1DD87A238, &unk_1DD87A9C4);
  v2 = *(sub_1DD874CB0() + 16);

  return v2;
}

uint64_t sub_1DD72F2EC()
{
  (*v0)(&v8);
  sub_1DD6E61B8();
  if (!v1)
  {
    return 0;
  }

  if (qword_1EE015238 != -1)
  {
    sub_1DD6DF2FC(&qword_1EE015238);
  }

  v2 = sub_1DD874CD0();
  sub_1DD6DEB80(v2, qword_1EE015240);
  sub_1DD710A9C(&qword_1ECD0E7E0, &qword_1DD87A238);
  sub_1DD6E13DC();
  sub_1DD6DF59C(v3, v4, &qword_1DD87A238, v5);
  v6 = *(sub_1DD874CB0() + 16);

  return v6;
}

uint64_t sub_1DD72F3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  if (!v3)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_9:
    sub_1DD6EE7DC(&v11, &qword_1ECD0E838, &unk_1DD87AA30);
    return 0;
  }

  v4 = sub_1DD875110();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_9;
  }

  sub_1DD6EE7DC(&v11, &qword_1ECD0E838, &unk_1DD87AA30);
  v6 = sub_1DD875110();
  v7 = [v3 stringForKey_];

  if (v7)
  {
    sub_1DD875140();
  }

  sub_1DD710A9C(&qword_1ECD0E848, &qword_1DD87A870);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD72F55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  if (!v3)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_10:
    sub_1DD6EE7DC(&v10, &qword_1ECD0E838, &unk_1DD87AA30);
    return 0;
  }

  v4 = sub_1DD875110();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_10;
  }

  sub_1DD6EE7DC(&v10, &qword_1ECD0E838, &unk_1DD87AA30);
  v6 = sub_1DD875110();
  [v3 doubleForKey_];

  sub_1DD710A9C(&qword_1ECD0E840, &unk_1DD87A840);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD72F6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 64);
  if (!v3)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_10:
    sub_1DD6EE7DC(&v7, &qword_1ECD0E838, &unk_1DD87AA30);
    return 0;
  }

  v4 = sub_1DD875110();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v7 = v9;
  v8 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_10;
  }

  sub_1DD730C48(&v7, &v9);
  sub_1DD730C48(&v9, &v7);
  sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD72F7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = *(a3 + 80);
  if (!v10)
  {
    v36 = 0u;
    v37 = 0u;
LABEL_9:
    sub_1DD6EE7DC(&v36, &qword_1ECD0E838, &unk_1DD87AA30);
    return 0;
  }

  v11 = sub_1DD875110();
  v12 = [v10 objectForKey_];

  if (v12)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v36 = v38;
  v37 = v39;
  if (!*(&v39 + 1))
  {
    goto LABEL_9;
  }

  sub_1DD730C48(&v36, &v38);
  sub_1DD710A9C(&qword_1ECD0E848, &qword_1DD87A870);
  if (swift_dynamicCastMetatype())
  {
    v13 = sub_1DD875110();
    v14 = [v10 BOOLForKey_];

    sub_1DD6E1EC8(&v38);
    LOBYTE(v36) = v14;
    v15 = qword_1ECD0E860;
    v16 = &unk_1DD87A860;
LABEL_16:
    sub_1DD710A9C(v15, v16);
    goto LABEL_17;
  }

  if (swift_dynamicCastMetatype())
  {
    v18 = sub_1DD875110();
    v19 = [v10 integerForKey_];

    sub_1DD6E1EC8(&v38);
    *&v36 = v19;
    BYTE8(v36) = 0;
    v15 = &qword_1ECD0E858;
    v16 = &qword_1DD88A080;
    goto LABEL_16;
  }

  if (swift_dynamicCastMetatype())
  {
    v20 = sub_1DD875110();
    [v10 floatForKey_];
    v22 = v21;

    sub_1DD6E1EC8(&v38);
    LODWORD(v36) = v22;
    BYTE4(v36) = 0;
    v15 = &qword_1ECD0E850;
    v16 = &unk_1DD87A850;
    goto LABEL_16;
  }

  if (swift_dynamicCastMetatype())
  {
    v23 = sub_1DD875110();
    [v10 doubleForKey_];
    v25 = v24;

    sub_1DD6E1EC8(&v38);
    *&v36 = v25;
    BYTE8(v36) = 0;
    v15 = &qword_1ECD0E840;
    v16 = &unk_1DD87A840;
    goto LABEL_16;
  }

  v26 = sub_1DD874740();
  if (swift_dynamicCastMetatype())
  {
    v27 = sub_1DD875110();
    v28 = [v10 URLForKey_];

    if (v28)
    {
      sub_1DD874700();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    sub_1DD6E1EC8(&v38);
    sub_1DD6E5E68(v6, v29, 1, v26);
    sub_1DD6FB7B4(v6, v9);
  }

  else
  {
    if (swift_dynamicCastMetatype())
    {
      v30 = sub_1DD875110();
      v31 = [v10 stringForKey_];

      if (v31)
      {
        v32 = sub_1DD875140();
        v34 = v33;

        sub_1DD6E1EC8(&v38);
        *&v35 = v32;
        *(&v35 + 1) = v34;
      }

      else
      {
        sub_1DD6E1EC8(&v38);
        return 0;
      }

      return v35;
    }

    sub_1DD730C48(&v38, &v36);
  }

LABEL_17:
  if ((swift_dynamicCast() & 1) == 0)
  {
    return xmmword_1DD878A30;
  }

  return v35;
}

unint64_t sub_1DD72FC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = *(a3 + 64);
  if (v10)
  {
    v11 = sub_1DD875110();
    v12 = [v10 objectForKey_];

    if (v12)
    {
      sub_1DD8755F0();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    v41 = v43;
    v42 = v44;
    if (*(&v44 + 1))
    {
      sub_1DD730C48(&v41, &v43);
      sub_1DD710A9C(&qword_1ECD0E850, &unk_1DD87A850);
      if (swift_dynamicCastMetatype())
      {
        v13 = sub_1DD875110();
        v14 = [v10 BOOLForKey_];

        sub_1DD6E1EC8(&v43);
        LOBYTE(v41) = v14;
        v15 = qword_1ECD0E860;
        v16 = &unk_1DD87A860;
        goto LABEL_12;
      }

      if (swift_dynamicCastMetatype())
      {
        v19 = sub_1DD875110();
        v20 = [v10 integerForKey_];

        sub_1DD6E1EC8(&v43);
        *&v41 = v20;
        BYTE8(v41) = 0;
        v15 = &qword_1ECD0E858;
        v16 = &qword_1DD88A080;
        goto LABEL_12;
      }

      if (swift_dynamicCastMetatype())
      {
        v23 = sub_1DD875110();
        [v10 floatForKey_];
        v25 = v24;

        sub_1DD6E1EC8(&v43);
        v18 = 0;
        v40 = 0;
        v39 = v25;
      }

      else
      {
        if (swift_dynamicCastMetatype())
        {
          v26 = sub_1DD875110();
          [v10 doubleForKey_];
          v28 = v27;

          sub_1DD6E1EC8(&v43);
          *&v41 = v28;
          BYTE8(v41) = 0;
          v15 = &qword_1ECD0E840;
          v16 = &unk_1DD87A840;
          goto LABEL_12;
        }

        v29 = sub_1DD874740();
        if (!swift_dynamicCastMetatype())
        {
          if (!swift_dynamicCastMetatype())
          {
            sub_1DD730C48(&v43, &v41);
            goto LABEL_13;
          }

          v33 = sub_1DD875110();
          v34 = [v10 stringForKey_];

          if (v34)
          {
            v35 = sub_1DD875140();
            v37 = v36;
          }

          else
          {
            v35 = 0;
            v37 = 0;
          }

          sub_1DD6E1EC8(&v43);
          *&v41 = v35;
          *(&v41 + 1) = v37;
          v15 = &qword_1ECD0E848;
          v16 = &qword_1DD87A870;
LABEL_12:
          sub_1DD710A9C(v15, v16);
LABEL_13:
          v21 = swift_dynamicCast();
          if ((v21 & 1) == 0)
          {
            v40 = 0;
            v39 = 0;
          }

          v18 = v21 ^ 1;
          goto LABEL_16;
        }

        v30 = sub_1DD875110();
        v31 = [v10 URLForKey_];

        if (v31)
        {
          sub_1DD874700();

          v32 = 0;
        }

        else
        {
          v32 = 1;
        }

        sub_1DD6E1EC8(&v43);
        sub_1DD6E5E68(v6, v32, 1, v29);
        sub_1DD6FB7B4(v6, v9);
        if (swift_dynamicCast())
        {
          v18 = 0;
        }

        else
        {
          v40 = 0;
          v39 = 0;
          v18 = 1;
        }
      }

LABEL_16:
      v17 = v39 | (v40 << 32);
      goto LABEL_17;
    }
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  sub_1DD6EE7DC(&v41, &qword_1ECD0E838, &unk_1DD87AA30);
  v17 = 0;
  v18 = 1;
LABEL_17:
  LOBYTE(v43) = v18;
  return v17 | (v18 << 40);
}

uint64_t sub_1DD730158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = *(a3 + 80);
  if (!v10)
  {
    v37 = 0u;
    v38 = 0u;
LABEL_9:
    sub_1DD6EE7DC(&v37, &qword_1ECD0E838, &unk_1DD87AA30);
    return 0;
  }

  v11 = sub_1DD875110();
  v12 = [v10 objectForKey_];

  if (v12)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v37 = v39;
  v38 = v40;
  if (!*(&v40 + 1))
  {
    goto LABEL_9;
  }

  sub_1DD730C48(&v37, &v39);
  sub_1DD710A9C(&qword_1ECD0E840, &unk_1DD87A840);
  if (swift_dynamicCastMetatype())
  {
    v13 = sub_1DD875110();
    v14 = [v10 BOOLForKey_];

    sub_1DD6E1EC8(&v39);
    LOBYTE(v37) = v14;
    v15 = qword_1ECD0E860;
    v16 = &unk_1DD87A860;
    goto LABEL_14;
  }

  if (swift_dynamicCastMetatype())
  {
    v18 = sub_1DD875110();
    v19 = [v10 integerForKey_];

    sub_1DD6E1EC8(&v39);
    *&v37 = v19;
    BYTE8(v37) = 0;
    v15 = &qword_1ECD0E858;
    v16 = &qword_1DD88A080;
    goto LABEL_14;
  }

  if (swift_dynamicCastMetatype())
  {
    v20 = sub_1DD875110();
    [v10 floatForKey_];
    v22 = v21;

    sub_1DD6E1EC8(&v39);
    LODWORD(v37) = v22;
    BYTE4(v37) = 0;
    v15 = &qword_1ECD0E850;
    v16 = &unk_1DD87A850;
    goto LABEL_14;
  }

  if (!swift_dynamicCastMetatype())
  {
    v26 = sub_1DD874740();
    if (swift_dynamicCastMetatype())
    {
      v27 = sub_1DD875110();
      v28 = [v10 URLForKey_];

      if (v28)
      {
        sub_1DD874700();

        v29 = 0;
      }

      else
      {
        v29 = 1;
      }

      sub_1DD6E1EC8(&v39);
      sub_1DD6E5E68(v6, v29, 1, v26);
      sub_1DD6FB7B4(v6, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v35 = 0;
        v36 = 0;
      }

      return v35;
    }

    if (!swift_dynamicCastMetatype())
    {
      sub_1DD730C48(&v39, &v37);
LABEL_15:
      if ((swift_dynamicCast() & 1) == 0)
      {
        v35 = 0;
        v36 = 0;
      }

      return v35;
    }

    v30 = sub_1DD875110();
    v31 = [v10 stringForKey_];

    if (v31)
    {
      v32 = sub_1DD875140();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    sub_1DD6E1EC8(&v39);
    *&v37 = v32;
    *(&v37 + 1) = v34;
    v15 = &qword_1ECD0E848;
    v16 = &qword_1DD87A870;
LABEL_14:
    sub_1DD710A9C(v15, v16);
    goto LABEL_15;
  }

  v23 = sub_1DD875110();
  [v10 doubleForKey_];
  v25 = v24;

  sub_1DD6E1EC8(&v39);
  v35 = v25;
  v36 = 0;
  return v35;
}

uint64_t sub_1DD730620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1DD710A9C(a3, a4);
  sub_1DD6E0540();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1DD730688()
{
  result = qword_1ECD0E820;
  if (!qword_1ECD0E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E820);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Preferences(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DD7307D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 1944))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD730810(uint64_t result, int a2, int a3)
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
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1944) = 1;
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

    *(result + 1944) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SbertTokenizerLocale(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD730B34@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DD72F1A8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
  return result;
}

uint64_t sub_1DD730B68@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DD72F1BC();
  *a1 = result;
  *(a1 + 4) = BYTE4(result);
  *(a1 + 5) = BYTE5(result) & 1;
  return result;
}

uint64_t sub_1DD730BA0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DD71095C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1DD730BD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD71095C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD730BF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD72F1D8();
  *a1 = result;
  return result;
}

uint64_t sub_1DD730C20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD6F09E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_OWORD *sub_1DD730C48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DD730C58(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double sub_1DD730C6C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void *sub_1DD730C80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);

  return memcpy(v9, __srca, 0x58uLL);
}

__n128 sub_1DD730C9C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = a3;
  *(a1 + 16) = a4;
  return *(a2 + 48);
}

uint64_t sub_1DD730CB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DD730620(v4, v4 + 176, a3, a4);
}

uint64_t sub_1DD730CC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_1DD730620(va, &a9, a3, a4);
}

void *sub_1DD730D04(void *a1)
{

  return memcpy(a1, (v1 + 680), 0x58uLL);
}

void *sub_1DD730D1C(void *a1)
{

  return memcpy(a1, (v1 + 1368), 0x58uLL);
}

void *sub_1DD730D34(void *a1)
{

  return memcpy(a1, (v1 + 1288), 0x50uLL);
}

uint64_t sub_1DD730D4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return sub_1DD730620(va, &a9, a3, a4);
}

void *sub_1DD730D64(void *a1)
{

  return memcpy(a1, (v1 + 528), 0x58uLL);
}

void *sub_1DD730D7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  return memcpy(v9, __srca, 0x48uLL);
}

void *sub_1DD730D98(void *a1)
{

  return memcpy(a1, (v1 + 1064), 0x48uLL);
}

void *sub_1DD730DB0(void *a1)
{

  return memcpy(a1, (v1 + 976), 0x58uLL);
}

void *sub_1DD730DC8(void *a1)
{

  return memcpy(a1, (v1 + 1680), 0x58uLL);
}

void *sub_1DD730DE0(void *a1)
{

  return memcpy(a1, (v1 + 296), 0x58uLL);
}

void *sub_1DD730DF8(void *a1)
{

  return memcpy(a1, (v1 + 1600), 0x50uLL);
}

uint64_t sub_1DD730E10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DD730620(v4, v4 + 160, a3, a4);
}

void *sub_1DD730E28(void *a1)
{

  return memcpy(a1, v1, 0x50uLL);
}

void *sub_1DD730E40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(a1, &a9, 0x50uLL);
}

__n128 sub_1DD730E58()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v4;
  return result;
}

void sub_1DD730E6C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[8] = a4;
  v4[9] = a3;
}

__n128 sub_1DD730E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, __int128 a9, __int128 a10, __n128 a12, __int128 a13)
{
  *v13 = a9;
  v13[1] = a10;
  result = a12;
  v13[2] = a12;
  v13[3] = a13;
  return result;
}

uint64_t sub_1DD730EA4(__n128 a1)
{

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1DD730EBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return sub_1DD730620(va, &a9, a3, a4);
}

uint64_t Preference.projectedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1DD6DF290();
  v9 = v5;
  (*(v6 + 8))(v2);
  v7 = *(v9 + 32);

  return v7(v2, a1, a2);
}

uint64_t static NSUserDefaults.makeIntelligenceFlowUserDefaults()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1DD7322D8(0xD00000000000001ALL, 0x80000001DD8B4D50);
  if (!result)
  {
    result = sub_1DD8757A0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD7310F4()
{
  v0 = sub_1DD874CD0();
  sub_1DD732C90(v0, qword_1EE015240);
  sub_1DD6E1224(v0, qword_1EE015240);
  return sub_1DD874CC0();
}

uint64_t Preference.overridenTestPreference.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  sub_1DD8755C0();
  sub_1DD6E0540();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t Preference.overridenTestPreference.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  sub_1DD8755C0();
  sub_1DD6E0540();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_1DD73124C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Preference(0, *(a3 + a4 - 24), *(a3 + a4 - 16), *(a3 + a4 - 8));
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v5, v6);
  return Preference.projectedValue.setter(v8, v5);
}

void (*Preference.projectedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = sub_1DD7281CC(0x28uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  sub_1DD6DF290();
  v7 = v6;
  *(v8 + 16) = v6;
  v10 = *(v9 + 64);
  v5[3] = sub_1DD7281CC(v10);
  v5[4] = sub_1DD7281CC(v10);
  (*(v7 + 16))();
  return sub_1DD731408;
}

void sub_1DD731408(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[2];
    v6 = *v2;
    v7 = sub_1DD6E0810();
    v8(v7);
    Preference.projectedValue.setter(v3, v6);
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    Preference.projectedValue.setter((*a1)[4], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Preference.init(userDefaultsKey:defaultFromResourceFile:fallbackDefault:injectedResourceModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *x8_0@<X8>, uint64_t a9)
{
  sub_1DD6DF290();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE4A8();
  v21 = v20 - v19;
  v22 = swift_allocObject();
  v22[2] = a7;
  v22[3] = a8;
  v22[4] = a9;
  v22[5] = a3;
  (*(v17 + 16))(v21, a4, a8);
  Preference.init(userDefaultsKey:defaultFromResourceFile:fallbackDefault:injectedResourceModel:)(a1, a2, sub_1DD73233C, v22, v21, a5, a6, a7, x8_0, a8, a9);
  return (*(v17 + 8))(a4, a8);
}

uint64_t sub_1DD73160C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[7] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  swift_getAssociatedTypeWitness();
  sub_1DD8755C0();
  sub_1DD875BC0();
  sub_1DD8755C0();
  return sub_1DD6F1DD8(sub_1DD732C5C, v10, MEMORY[0x1E69E73E0], a4, v8, a6);
}

uint64_t Preference.init(userDefaultsKey:defaultFromResourceFile:fallbackDefault:injectedResourceModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = type metadata accessor for Preference(0, a8, a10, a11);
  sub_1DD6E5E68(&a9[v18[13]], 1, 1, a10);
  v19 = &a9[v18[14]];
  *v19 = a1;
  *(v19 + 1) = a2;
  *&a9[v18[15]] = (*(a11 + 24))(a8, a11);
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  result = (*(*(a10 - 8) + 32))(&a9[v18[12]], a5, a10);
  *a9 = a6;
  *(a9 + 1) = a7;
  return result;
}

uint64_t sub_1DD7317E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1DD8755C0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  (*v2)(v12);
  if (sub_1DD6E5ED0(v14, 1, AssociatedTypeWitness) == 1)
  {
    static PreferencesDomain.otaResource.getter(v10);
    if (sub_1DD6E5ED0(v10, 1, AssociatedTypeWitness) == 1)
    {
      (*(v4 + 32))(v5, v4);
      if (sub_1DD6E5ED0(v10, 1, AssociatedTypeWitness) != 1)
      {
        (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
      (*(*(AssociatedTypeWitness - 8) + 32))(a2, v10, AssociatedTypeWitness);
      sub_1DD6E5E68(a2, 0, 1, AssociatedTypeWitness);
    }

    result = sub_1DD6E5ED0(v14, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v8 + 8))(v14, v7);
    }
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 32))(a2, v14, AssociatedTypeWitness);
    return sub_1DD6E5E68(a2, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1DD731AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = sub_1DD8755C0();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1, v9);
  v13 = type metadata accessor for Preference(0, v5, v6, v7);
  return Preference.userDefaultsValue.setter(v11, v13);
}

uint64_t Preference.userDefaultsValue.setter(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v40 = sub_1DD874ED0();
  sub_1DD6DF290();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  v9 = v8 - v7;
  v10 = *(a2 + 24);
  sub_1DD8755C0();
  sub_1DD6DF290();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v39 - v14;
  sub_1DD6DF290();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE4A8();
  v21 = v20 - v19;
  v22 = *(v2 + *(a2 + 60));
  if (v22 && (v23 = (v2 + *(a2 + 56)), v23[1]))
  {
    v24 = v18;
    v39[1] = *v23;
    v40 = v17;
    v25 = v41;
    (*(v12 + 16))(v15, v41, v17);
    if (sub_1DD6E5ED0(v15, 1, v10) == 1)
    {
      v26 = *(v12 + 8);
      v27 = v22;
      v28 = v40;
      v26(v15, v40);
      Preference.removeUserDefault()();

      return (v26)(v25, v28);
    }

    else
    {
      v34 = v24;
      (*(v24 + 32))(v21, v15, v10);
      v35 = v22;
      v36 = v25;
      v37 = sub_1DD875A20();
      v38 = sub_1DD875110();
      [v35 setObject:v37 forKey:v38];
      swift_unknownObjectRelease();

      (*(v12 + 8))(v36, v40);
      return (*(v34 + 8))(v21, v10);
    }
  }

  else
  {
    v30 = v17;
    sub_1DD874C00();
    v31 = sub_1DD874EC0();
    v32 = sub_1DD8754E0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DD6DC000, v31, v32, "Failed to set user default", v33, 2u);
      MEMORY[0x1E12B5DE0](v33, -1, -1);
    }

    (*(v12 + 8))(v41, v30);
    return (*(v5 + 8))(v9, v40);
  }
}

Swift::Void __swiftcall Preference.removeUserDefault()()
{
  v2 = v0;
  v3 = sub_1DD874ED0();
  sub_1DD6DF290();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  v9 = v8 - v7;
  v10 = *(v1 + *(v2 + 60));
  if (v10 && *(v1 + *(v2 + 56) + 8))
  {
    v11 = v10;
    v15 = sub_1DD875110();
    [v11 removeObjectForKey_];
  }

  else
  {
    sub_1DD874C00();
    v12 = sub_1DD874EC0();
    v13 = sub_1DD8754E0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DD6DC000, v12, v13, "Failed to remove user default", v14, 2u);
      MEMORY[0x1E12B5DE0](v14, -1, -1);
    }

    (*(v5 + 8))(v9, v3);
  }
}

void (*Preference.userDefaultsValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = sub_1DD7281CC(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = sub_1DD8755C0();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = sub_1DD7281CC(v8);
  v9 = sub_1DD7281CC(v8);
  v5[5] = v9;
  Preference.userDefaultsValue.getter(a2, v9);
  return sub_1DD7321F0;
}

void sub_1DD7321F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    v8 = sub_1DD6E0810();
    v9(v8);
    Preference.userDefaultsValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Preference.userDefaultsValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1DD7322A8()
{
  sub_1DD732B04();
  result = static NSUserDefaults.makeIntelligenceFlowUserDefaults()();
  qword_1EE015BE0 = result;
  return result;
}

id sub_1DD7322D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD875110();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_1DD732390(uint64_t a1)
{
  result = sub_1DD8755C0();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD732424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *initializeBufferWithCopyOfBuffer for MachIdentityToken(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for MachIdentityToken(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for MachIdentityToken(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1DD732514(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD732554(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD7325B0(uint64_t a1)
{
  v1 = sub_1DD732A14();
  if (v2 <= 0x3F)
  {
    v1 = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      v1 = sub_1DD8755C0();
      if (v4 <= 0x3F)
      {
        sub_1DD732A5C();
        v1 = v5;
        if (v6 <= 0x3F)
        {
          sub_1DD732AAC(319);
          v1 = v7;
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1DD73269C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = 7;
  if (!v6)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_28:
    if ((v6 & 0x80000000) != 0)
    {
      return sub_1DD6E5ED0((((result + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8, v6, v4);
    }

    else
    {
      v18 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v10 = ((((v9 + *(*(v4 - 8) + 64) + ((*(*(v4 - 8) + 64) + v8 + ((v8 + 32) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v11 = a2 - v7;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_28;
        }

LABEL_24:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v7 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_28;
    }
  }

  return result;
}

void sub_1DD73280C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = 7;
  if (!v8)
  {
    v11 = 8;
  }

  v12 = ((((v11 + *(*(v6 - 8) + 64) + ((*(*(v6 - 8) + 64) + v10 + ((v10 + 32) & ~v10)) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((((v11 + *(*(v6 - 8) + 64) + ((*(*(v6 - 8) + 64) + v10 + ((v10 + 32) & ~v10)) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          if ((v8 & 0x80000000) != 0)
          {
            v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

            sub_1DD6E5E68(v20, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *a1 = v19;
          }
        }

        break;
    }
  }

  else
  {
    if (((((v11 + *(*(v6 - 8) + 64) + ((*(*(v6 - 8) + 64) + v10 + ((v10 + 32) & ~v10)) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((((v11 + *(*(v6 - 8) + 64) + ((*(*(v6 - 8) + 64) + v10 + ((v10 + 32) & ~v10)) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v18 = ~v9 + a2;
      bzero(a1, v12);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1DD732A14()
{
  result = qword_1EE013980;
  if (!qword_1EE013980)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE013980);
  }

  return result;
}

void sub_1DD732A5C()
{
  if (!qword_1EE018D28)
  {
    v0 = sub_1DD8755C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE018D28);
    }
  }
}

void sub_1DD732AAC(uint64_t a1)
{
  if (!qword_1EE013998)
  {
    sub_1DD732B04();
    v1 = sub_1DD8755C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE013998);
    }
  }
}

unint64_t sub_1DD732B04()
{
  result = qword_1EE0139A0;
  if (!qword_1EE0139A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0139A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowPreferencesDomain(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD732C04()
{
  result = qword_1EE013A98;
  if (!qword_1EE013A98)
  {
    sub_1DD874C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE013A98);
  }

  return result;
}

uint64_t *sub_1DD732C90(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1DD732CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for WeakValue(0, *(a2 + a3 - 8), a3, a5);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t WeakValue.value.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakValue.value.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1DD732E40;
}

uint64_t sub_1DD732E40(void *a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1DD732E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for MessagePayload.ActionWillExecute.PromptSelection.SelectedInDisambiguation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MessagePayload.ActionWillExecute.PromptSelection.SelectedInDisambiguation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_1DD732F1C(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1DD6E0EC8();

    sub_1DD874CF0();
    if (v2)
    {
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD732FEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  sub_1DD7330A4(a4, a5, a6, a7, sub_1DD6E6440, v14, a1);
}

void sub_1DD7330A4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a4;
  if (a2 >> 60 == 15)
  {
    v11 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = sub_1DD874750();
  if (v10)
  {
LABEL_5:
    v10 = sub_1DD875110();
  }

LABEL_6:
  v13[4] = a5;
  v13[5] = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DD6E1B38;
  v13[3] = &unk_1F58D0150;
  v12 = _Block_copy(v13);

  [a7 refreshWithContextTypes:v11 interactionId:v10 with:v12];
  _Block_release(v12);
}

uint64_t sub_1DD7331B4(uint64_t result)
{
  if (*(v1 + 16))
  {
    MEMORY[0x1EEE9AC00](result);

    sub_1DD874CF0();

    if (!v2)
    {
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD733268(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  sub_1DD733318(a4, a5, a6, sub_1DD701008, v12, a1);
}

void sub_1DD733318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_1DD874750();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DD700F5C;
  v12[3] = &unk_1F58D0100;
  v11 = _Block_copy(v12);

  [a6 retrieveContextValuesWithContextTypes:v10 timeout:a3 with:v11];
  _Block_release(v11);
}

uint64_t sub_1DD733494()
{
  sub_1DD710A9C(&qword_1ECD0E8F8, &qword_1DD87ABC8);
  v0 = sub_1DD874B20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AAA0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69A9058], v0);
  v6(v5 + v2, *MEMORY[0x1E69A8FD8], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69A8FF0], v0);
  result = (v6)(v5 + 3 * v2, *MEMORY[0x1E69A9000], v0);
  qword_1EE0267D0 = v4;
  return result;
}

uint64_t QueryDecoration.__allocating_init()()
{
  v0 = swift_allocObject();
  QueryDecoration.init()();
  return v0;
}

uint64_t sub_1DD733620()
{
  sub_1DD6DDF4C();
  sub_1DD6E6A34();
  sub_1DD6DE4FC();
  *v4 = v3;
  v5 = *v2;
  sub_1DD6E04EC();
  *v6 = v5;
  *(v7 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD733740, 0, 0);
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(v0);
  }
}

uint64_t QueryDecoration.queryDecorationCollection(qdInput:crossAPIAssociationKey:timeout:)(uint64_t a1, void *a2)
{
  v3[4] = a1;
  v3[5] = v2;
  v4 = a2[1];
  v3[6] = *a2;
  v3[7] = v4;
  return sub_1DD6E13F8();
}

uint64_t sub_1DD733774()
{
  sub_1DD6DDF4C();
  sub_1DD6E5278();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = sub_1DD6ED5BC(v1);

  return sub_1DD85F1DC(v2, v3);
}

uint64_t sub_1DD7337FC()
{
  sub_1DD6DDF4C();
  sub_1DD6E6A34();
  sub_1DD6DE4FC();
  *v4 = v3;
  v5 = *v2;
  sub_1DD6E04EC();
  *v6 = v5;
  *(v7 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD734CAC, 0, 0);
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(v0);
  }
}

uint64_t QueryDecoration.cacheRemoteDeviceState(remoteState:crossAPIAssociationKey:timeout:)(uint64_t a1, void *a2)
{
  v3[4] = a1;
  v3[5] = v2;
  v4 = a2[1];
  v3[6] = *a2;
  v3[7] = v4;
  return sub_1DD6E13F8();
}

uint64_t sub_1DD733938()
{
  sub_1DD6DDF4C();
  sub_1DD6E5278();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = sub_1DD6ED5BC(v1);

  return sub_1DD85F584(v2, v3);
}

uint64_t sub_1DD7339C0()
{
  sub_1DD6DDF4C();
  sub_1DD6DE4FC();
  *v3 = v2;
  v4 = *v1;
  sub_1DD6E04EC();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD733740, 0, 0);
  }

  else
  {
    v7 = *(v4 + 8);

    return v7();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> QueryDecoration.collectRequestCandidates()()
{
  v0 = sub_1DD874E40();
  sub_1DD6DDEAC();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = sub_1DD874E60();
  sub_1DD6DDEAC();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  sub_1DD874B50();
  sub_1DD874B50();
  sub_1DD874E50();
  sub_1DD874E20();
  v34 = *(v10 + 8);
  v34(v13, v8);
  v17 = sub_1DD874E50();
  v18 = sub_1DD875530();
  if (sub_1DD8755B0())
  {
    v19 = swift_slowAlloc();
    v33 = v0;
    v20 = v19;
    *v19 = 0;
    v21 = sub_1DD874E30();
    _os_signpost_emit_with_name_impl(&dword_1DD6DC000, v17, v18, v21, "QueryDecoration.collectRequestCandidates", "", v20, 2u);
    v22 = v20;
    v0 = v33;
    MEMORY[0x1E12B5DE0](v22, -1, -1);
  }

  (*(v2 + 16))(v35, v7, v0);
  sub_1DD874EA0();
  sub_1DD6DE2C8();
  swift_allocObject();
  v23 = sub_1DD874E90();
  (*(v2 + 8))(v7, v0);
  v34(v16, v8);
  if (qword_1EE015668 != -1)
  {
    sub_1DD6E0A48();
    swift_once();
  }

  v37 = qword_1EE0267D0;

  sub_1DD710A9C(&qword_1ECD0E8E8, &qword_1DD87AAC8);
  sub_1DD734A8C();
  v24 = v36;
  sub_1DD8745F0();

  if (!v24)
  {
    v25 = sub_1DD6DDEDC();
    sub_1DD710E74(v25, v26);
    v27 = sub_1DD6DDEDC();
    sub_1DD732F1C(v27);
    v28 = sub_1DD6DDEDC();
    sub_1DD6E6658(v28, v29);
    v30 = sub_1DD6DDEDC();
    sub_1DD6E6658(v30, v31);
  }

  sub_1DD734338(v23, "QueryDecoration.collectRequestCandidates");
}

uint64_t QueryDecoration.retrieveRequestCandidates(timeout:)()
{
  sub_1DD6DDF4C();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 120) = v3;
  *(v1 + 32) = v4;
  v5 = sub_1DD874E40();
  *(v1 + 56) = v5;
  *(v1 + 64) = *(v5 - 8);
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  v6 = sub_1DD874E60();
  *(v1 + 88) = v6;
  *(v1 + 96) = *(v6 - 8);
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD733F98, 0, 0);
}

uint64_t sub_1DD733F98(uint64_t a1)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  sub_1DD874B50();
  sub_1DD874B50();
  sub_1DD874E50();
  sub_1DD874E20();
  v26 = *(v4 + 8);
  v26(v2, v3);
  v5 = sub_1DD874E50();
  v6 = sub_1DD875530();
  if (sub_1DD8755B0())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_1DD874E30();
    _os_signpost_emit_with_name_impl(&dword_1DD6DC000, v5, v6, v8, "QueryDecoration.retrieveRequestCandidates", "", v7, 2u);
    MEMORY[0x1E12B5DE0](v7, -1, -1);
  }

  v9 = *(v1 + 112);
  v11 = *(v1 + 80);
  v10 = *(v1 + 88);
  v13 = *(v1 + 64);
  v12 = *(v1 + 72);
  v14 = *(v1 + 56);

  (*(v13 + 16))(v12, v11, v14);
  sub_1DD874EA0();
  sub_1DD6DE2C8();
  swift_allocObject();
  v15 = sub_1DD874E90();
  (*(v13 + 8))(v11, v14);
  v26(v9, v10);
  if (qword_1EE015668 != -1)
  {
    sub_1DD6E0A48();
    swift_once();
  }

  *(v1 + 16) = qword_1EE0267D0;

  sub_1DD710A9C(&qword_1ECD0E8E8, &qword_1DD87AAC8);
  sub_1DD734A8C();
  sub_1DD8745F0();
  v16 = *(v1 + 120);

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_1DD8753F0();
  }

  v18 = sub_1DD6DDEDC();
  v19 = sub_1DD7331B4(v18);
  v21 = v20;

  sub_1DD710A9C(&qword_1ECD0E8F0, &qword_1DD87AAD8);
  sub_1DD734B40();
  sub_1DD8745C0();
  sub_1DD874BB0();
  sub_1DD6E6658(v19, v21);
  v23 = sub_1DD6DDEDC();
  sub_1DD6E6658(v23, v24);
  sub_1DD734338(v15, "QueryDecoration.retrieveRequestCandidates");

  v25 = *(v1 + 8);

  return v25();
}

uint64_t sub_1DD734338(uint64_t a1, const char *a2)
{
  v2 = sub_1DD874E70();
  sub_1DD6DDEAC();
  v27 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v7 = v6 - v5;
  v29 = sub_1DD874E40();
  sub_1DD6DDEAC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE4A8();
  v13 = v12 - v11;
  v14 = sub_1DD874E60();
  sub_1DD6DDEAC();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE4A8();
  v20 = v19 - v18;
  sub_1DD874B50();
  v21 = sub_1DD874E50();
  sub_1DD874E80();
  v26 = sub_1DD875520();
  if (sub_1DD8755B0())
  {

    sub_1DD874EB0();

    if ((*(v27 + 88))(v7, v2) == *MEMORY[0x1E69E93E8])
    {
      v22 = "[Error] Interval already ended";
    }

    else
    {
      (*(v27 + 8))(v7, v2);
      v22 = "";
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_1DD874E30();
    _os_signpost_emit_with_name_impl(&dword_1DD6DC000, v21, v26, v24, a2, v22, v23, 2u);
    MEMORY[0x1E12B5DE0](v23, -1, -1);
  }

  (*(v9 + 8))(v13, v29);
  return (*(v16 + 8))(v20, v14);
}

uint64_t sub_1DD7345E8(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD734690;

  return QueryDecoration.queryDecorationCollection(qdInput:crossAPIAssociationKey:)(a1, a2);
}

uint64_t sub_1DD734690()
{
  sub_1DD6DDF4C();
  sub_1DD6E6A34();
  v3 = *v2;
  sub_1DD6E04EC();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DD73477C(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD734CB4;

  return QueryDecoration.queryDecorationCollection(qdInput:crossAPIAssociationKey:timeout:)(a1, a2);
}

uint64_t sub_1DD734824(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD7348CC;

  return QueryDecoration.cacheRemoteDeviceState(remoteState:crossAPIAssociationKey:timeout:)(a1, a2);
}

uint64_t sub_1DD7348CC()
{
  sub_1DD6DDF4C();
  v1 = *v0;
  sub_1DD6E04EC();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DD7349D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD734CA8;

  return QueryDecoration.retrieveRequestCandidates(timeout:)();
}

unint64_t sub_1DD734A8C()
{
  result = qword_1EE0139C8;
  if (!qword_1EE0139C8)
  {
    sub_1DD717E88(&qword_1ECD0E8E8, &qword_1DD87AAC8);
    sub_1DD6E5180(&qword_1EE013AC8, MEMORY[0x1E69A9090], MEMORY[0x1E69A9098]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0139C8);
  }

  return result;
}

unint64_t sub_1DD734B40()
{
  result = qword_1EE0139C0;
  if (!qword_1EE0139C0)
  {
    sub_1DD717E88(&qword_1ECD0E8F0, &qword_1DD87AAD8);
    sub_1DD6E5180(&qword_1EE013AC0, MEMORY[0x1E69A90D0], MEMORY[0x1E69A90E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0139C0);
  }

  return result;
}

uint64_t dispatch thunk of QueryDecorationProtocol.queryDecorationCollection(qdInput:crossAPIAssociationKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD6E5228();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = sub_1DD6E04FC(v9);
  *v10 = v11;
  v10[1] = sub_1DD734DDC;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1DD734DDC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of QueryDecorationProtocol.queryDecorationCollection(qdInput:crossAPIAssociationKey:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DD6DF33C(a1, a2, a3, a4, a5, a6);
  sub_1DD6E5228();
  v6 = swift_task_alloc();
  v7 = sub_1DD6E04FC(v6);
  *v7 = v8;
  v9 = sub_1DD6E1408(v7);

  return v10(v9);
}

uint64_t dispatch thunk of QueryDecorationProtocol.cacheRemoteDeviceState(remoteState:crossAPIAssociationKey:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DD6DF33C(a1, a2, a3, a4, a5, a6);
  sub_1DD6E5228();
  v6 = swift_task_alloc();
  v7 = sub_1DD6E04FC(v6);
  *v7 = v8;
  v9 = sub_1DD6E1408(v7);

  return v10(v9);
}

uint64_t sub_1DD7350E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of QueryDecorationProtocol.retrieveRequestCandidates(timeout:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(a5 + 40) + **(a5 + 40));
  v10 = swift_task_alloc();
  v11 = sub_1DD6E04FC(v10);
  *v11 = v12;
  v11[1] = sub_1DD735340;

  return v14(a1, a2, a3 & 1, a4, a5);
}

uint64_t sub_1DD73538C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6574656D61726170;
  }

  else
  {
    v3 = 0x74616469646E6163;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE900000000000072;
  }

  if (a2)
  {
    v5 = 0x6574656D61726170;
  }

  else
  {
    v5 = 0x74616469646E6163;
  }

  if (a2)
  {
    v6 = 0xE900000000000072;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DD735424(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x647261646E617473;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x647261646E617473;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x796D6D7564;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x676E6974736574;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 7169123;
      break;
    case 4:
      v5 = 0x506369746E656761;
      v3 = 0xEE0072656E6E616CLL;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x796D6D7564;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x676E6974736574;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 7169123;
      break;
    case 4:
      v2 = 0x506369746E656761;
      v6 = 0xEE0072656E6E616CLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD735594(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E696C69746C756DLL;
  }

  else
  {
    v3 = 0x6873696C676E65;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEC0000006C617567;
  }

  if (a2)
  {
    v5 = 0x6E696C69746C756DLL;
  }

  else
  {
    v5 = 0x6873696C676E65;
  }

  if (a2)
  {
    v6 = 0xEC0000006C617567;
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
    v8 = sub_1DD6E6A44(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DD735630(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6574656D61726170;
  v3 = 0xEA00000000007372;
  v4 = a1;
  v5 = 0x6574656D61726170;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x676F6C616964;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C6175736976;
      break;
    case 3:
      v5 = 0x6574616C706D6574;
      v3 = 0xEA00000000006449;
      break;
    case 4:
      v5 = 0xD000000000000010;
      v3 = 0x80000001DD8B3E50;
      break;
    case 5:
      v3 = 0x80000001DD8B3E70;
      v5 = 0xD000000000000015;
      break;
    case 6:
      v3 = 0x80000001DD8B3E90;
      v5 = 0xD000000000000016;
      break;
    default:
      break;
  }

  v6 = 0xEA00000000007372;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x676F6C616964;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C6175736976;
      break;
    case 3:
      v2 = 0x6574616C706D6574;
      v6 = 0xEA00000000006449;
      break;
    case 4:
      v2 = 0xD000000000000010;
      v6 = 0x80000001DD8B3E50;
      break;
    case 5:
      v6 = 0x80000001DD8B3E70;
      v2 = 0xD000000000000015;
      break;
    case 6:
      v6 = 0x80000001DD8B3E90;
      v2 = 0xD000000000000016;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD735818(unsigned __int8 a1, char a2)
{
  v2 = 0xEE006C6176656972;
  v3 = 0x7465725F6C6F6F74;
  v4 = a1;
  v5 = 0x7465725F6C6F6F74;
  v6 = 0xEE006C6176656972;
  switch(v4)
  {
    case 1:
      v6 = 0x80000001DD8B3CE0;
      v5 = 0xD00000000000001DLL;
      break;
    case 2:
      v6 = 0x80000001DD8B3D00;
      v5 = 0xD00000000000001BLL;
      break;
    case 3:
      v6 = 0x80000001DD8B3D20;
      v5 = 0xD00000000000001ALL;
      break;
    case 4:
      break;
    case 5:
      v6 = 0x80000001DD8B3D50;
      v5 = 0xD000000000000017;
      break;
    default:
      v6 = 0x80000001DD8B3CC0;
      v5 = 0xD000000000000011;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000001DD8B3CE0;
      v3 = 0xD00000000000001DLL;
      break;
    case 2:
      v2 = 0x80000001DD8B3D00;
      v3 = 0xD00000000000001BLL;
      break;
    case 3:
      v2 = 0x80000001DD8B3D20;
      v3 = 0xD00000000000001ALL;
      break;
    case 4:
      break;
    case 5:
      v2 = 0x80000001DD8B3D50;
      v3 = 0xD000000000000017;
      break;
    default:
      v2 = 0x80000001DD8B3CC0;
      v3 = 0xD000000000000011;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD875A30();
  }

  return v8 & 1;
}

uint64_t sub_1DD7359B8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7961727261;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7961727261;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x6C616E6F6974706FLL;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x7463656A626FLL;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1836412517;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x6C616E6F6974706FLL;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x7463656A626FLL;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1836412517;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD735ADC(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x7972657571;
  }

  else
  {
    v3 = 0x6E6F69746361;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x7972657571;
  }

  else
  {
    v5 = 0x6E6F69746361;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DD735B68(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000656761;
  v3 = 0x75676E616C2E6561;
  v4 = a1;
  v5 = 0x75676E616C2E6561;
  v6 = 0xEB00000000656761;
  switch(v4)
  {
    case 1:
      v5 = 0x75676E616C2E6669;
      goto LABEL_6;
    case 2:
      v5 = 0x75676E616C2E6772;
      goto LABEL_6;
    case 3:
      v5 = 0x75676E616C2E6C6ELL;
LABEL_6:
      v6 = 0xEB00000000656761;
      break;
    case 4:
      v5 = 0x73697373612E6C6ELL;
      v6 = 0xEC000000746E6174;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x75676E616C2E6669;
      break;
    case 2:
      v3 = 0x75676E616C2E6772;
      break;
    case 3:
      v3 = 0x75676E616C2E6C6ELL;
      break;
    case 4:
      v3 = 0x73697373612E6C6ELL;
      v2 = 0xEC000000746E6174;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD875A30();
  }

  return v8 & 1;
}

uint64_t sub_1DD735CB0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000014;
  v3 = "anguage";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (v4 == 1)
    {
      v6 = "com.apple.if.planner";
    }

    else
    {
      v6 = "com.apple.if.planner.overrides";
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    v6 = "anguage";
  }

  if (a2)
  {
    v3 = "com.apple.if.planner";
    v2 = a2 == 1 ? 0xD00000000000001ELL : 0xD00000000000001CLL;
    if (a2 != 1)
    {
      v3 = "com.apple.if.planner.overrides";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD6E6A44(v5, a2, v2);
  }

  return v8 & 1;
}