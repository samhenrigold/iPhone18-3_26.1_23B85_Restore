void *sub_19650(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1DC4(&qword_54F58, &qword_38060);
  v4 = sub_1AC90();
  j__malloc_size(v4);
  sub_1A990();
  v4[2] = a1;
  v4[3] = (2 * v5) | 1;
  return v4;
}

char *sub_196C0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1A89C(a3, result);
  }

  return result;
}

char *sub_196E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1A89C(a3, result);
  }

  return result;
}

char *sub_19700(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1A89C(a3, result);
  }

  return result;
}

unint64_t sub_19734(uint64_t a1, uint64_t a2)
{
  sub_36A60();
  sub_36760();
  v4 = sub_36A80();

  return sub_198A4(a1, a2, v4);
}

unint64_t sub_197AC(uint64_t a1)
{
  sub_36A60();
  v2 = sub_36340();
  sub_36A70(v2);
  v3 = sub_36A80();

  return sub_19958(a1, v3);
}

unint64_t sub_1981C(uint64_t a1)
{
  v1 = a1;
  sub_36A60();
  sub_3493C(v1);
  sub_36760();

  v2 = sub_36A80();

  return sub_199FC(v1, v2);
}

unint64_t sub_198A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_36A20() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_19958(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_36340();
    if (v5 == sub_36340())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_199FC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x656E656353746573;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          break;
        case 2:
          v8 = 0xD000000000000010;
          v7 = 0x8000000000039B30;
          break;
        case 3:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000000039B50;
          break;
        case 4:
          v8 = 0xD000000000000013;
          v7 = 0x8000000000039B70;
          break;
        case 5:
          v8 = 0x65706D6554746573;
          v9 = 0x657275746172;
          goto LABEL_17;
        case 6:
          v8 = 0x6867697242746573;
          v7 = 0xED00007373656E74;
          break;
        case 7:
          v8 = 0x616D696C43746573;
          v9 = 0x65646F4D6574;
LABEL_17:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 8:
          v8 = 0x726F6C6F43746573;
          break;
        case 9:
          v8 = 0x70536E6146746573;
          v7 = 0xEB00000000646565;
          break;
        case 0xA:
          v8 = 0x746867694C6D6964;
          v7 = 0xE900000000000073;
          break;
        case 0xB:
          v8 = 0xD000000000000014;
          v7 = 0x8000000000039BD0;
          break;
        case 0xC:
          v8 = 0xD000000000000013;
          v7 = 0x8000000000039BF0;
          break;
        case 0xD:
          v8 = 0xD000000000000015;
          v7 = 0x8000000000039C10;
          break;
        case 0xE:
          v8 = 0xD000000000000012;
          v7 = 0x8000000000039C30;
          break;
        case 0xF:
          v8 = 0xD000000000000015;
          v7 = 0x8000000000039C50;
          break;
        case 0x10:
          v8 = 0xD000000000000019;
          v7 = 0x8000000000039C70;
          break;
        case 0x11:
          v8 = 0xD000000000000015;
          v7 = 0x8000000000039C90;
          break;
        case 0x12:
          v8 = 0xD000000000000011;
          v7 = 0x8000000000039CB0;
          break;
        default:
          v8 = 0xD000000000000010;
          v7 = 0x8000000000039B10;
          break;
      }

      v10 = 0xE800000000000000;
      v11 = 0x656E656353746573;
      switch(a1)
      {
        case 1:
          break;
        case 2:
          v11 = 0xD000000000000010;
          v10 = 0x8000000000039B30;
          break;
        case 3:
          v11 = 0xD00000000000001ALL;
          v10 = 0x8000000000039B50;
          break;
        case 4:
          v11 = 0xD000000000000013;
          v10 = 0x8000000000039B70;
          break;
        case 5:
          v11 = 0x65706D6554746573;
          v12 = 0x657275746172;
          goto LABEL_37;
        case 6:
          v11 = 0x6867697242746573;
          v10 = 0xED00007373656E74;
          break;
        case 7:
          v11 = 0x616D696C43746573;
          v12 = 0x65646F4D6574;
LABEL_37:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 8:
          v11 = 0x726F6C6F43746573;
          break;
        case 9:
          v11 = 0x70536E6146746573;
          v10 = 0xEB00000000646565;
          break;
        case 10:
          v11 = 0x746867694C6D6964;
          v10 = 0xE900000000000073;
          break;
        case 11:
          v11 = 0xD000000000000014;
          v10 = 0x8000000000039BD0;
          break;
        case 12:
          v11 = 0xD000000000000013;
          v10 = 0x8000000000039BF0;
          break;
        case 13:
          v11 = 0xD000000000000015;
          v10 = 0x8000000000039C10;
          break;
        case 14:
          v11 = 0xD000000000000012;
          v10 = 0x8000000000039C30;
          break;
        case 15:
          v11 = 0xD000000000000015;
          v10 = 0x8000000000039C50;
          break;
        case 16:
          v11 = 0xD000000000000019;
          v10 = 0x8000000000039C70;
          break;
        case 17:
          v11 = 0xD000000000000015;
          v10 = 0x8000000000039C90;
          break;
        case 18:
          v11 = 0xD000000000000011;
          v10 = 0x8000000000039CB0;
          break;
        default:
          v11 = 0xD000000000000010;
          v10 = 0x8000000000039B10;
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = sub_36A20();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_19F6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A23C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_19FA0(uint64_t result, uint64_t a2, char a3, char *a4)
{
  v7 = result;
  if (a3)
  {
    sub_1AAF4();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1AAE4();
    }
  }

  sub_1AAD4();
  if (v4)
  {
    sub_1DC4(&qword_557C0, &qword_38088);
    v11 = sub_1AC90();
    j__malloc_size(v11);
    sub_1A990();
    *(v11 + 2) = v5;
    *(v11 + 3) = 2 * v12;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v7)
  {
    if (v11 != a4 || &v14[8 * v5] <= v13)
    {
      memmove(v13, v14, 8 * v5);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v5);
  }
}

void sub_1A078(uint64_t result, uint64_t a2, char a3, char *a4)
{
  v7 = result;
  if (a3)
  {
    sub_1AAF4();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1AAE4();
    }
  }

  sub_1AAD4();
  if (v4)
  {
    sub_1DC4(&qword_557C8, &unk_38090);
    v11 = sub_1AC90();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v5;
    *(v11 + 3) = 2 * ((v12 - 32) / 2);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v7)
  {
    if (v11 != a4 || &v14[2 * v5] <= v13)
    {
      memmove(v13, v14, 2 * v5);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 2 * v5);
  }
}

void sub_1A16C(uint64_t result, uint64_t a2, char a3, char *a4)
{
  v7 = result;
  if (a3)
  {
    sub_1AAF4();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1AAE4();
    }
  }

  sub_1AAD4();
  if (v4)
  {
    sub_1DC4(v11, v12);
    v13 = sub_1AC90();
    j__malloc_size(v13);
    sub_1A990();
    *(v13 + 2) = v5;
    *(v13 + 3) = 2 * v14;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v13 != a4 || &v16[8 * v5] <= v15)
    {
      memmove(v15, v16, 8 * v5);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v5);
  }
}

char *sub_1A23C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DC4(&qword_55768, &qword_38040);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t (*sub_1A344(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  sub_1A900(a1, a2, a3);
  sub_3E7C();
  if (v4)
  {
  }

  else
  {
    sub_1AB48();
    v5 = sub_36930();
  }

  *v3 = v5;
  return sub_1A3AC;
}

uint64_t (*sub_1A3B4(uint64_t a1, uint64_t a2, uint64_t a3))(void *)
{
  sub_1A900(a1, a2, a3);
  sub_3E7C();
  if (v4)
  {
  }

  else
  {
    sub_1AB48();
    v5 = sub_36930();
  }

  *v3 = v5;
  return sub_1A858;
}

uint64_t sub_1A41C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC4(&qword_55748, &qword_38030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1A48C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v9 = 0;
    a3 = 0;
LABEL_18:
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
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1A574(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v9 = 0;
    a3 = 0;
LABEL_18:
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
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A668()
{
  result = qword_55778;
  if (!qword_55778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55778);
  }

  return result;
}

uint64_t sub_1A6FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1A708(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A750(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1A7AC()
{
  result = qword_557A8;
  if (!qword_557A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_557A8);
  }

  return result;
}

unint64_t sub_1A800()
{
  result = qword_557B8;
  if (!qword_557B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_557B8);
  }

  return result;
}

BOOL sub_1A860(uint64_t a1)
{

  return sub_15C38(a1, v1, &HomeDeviceType.rawValue.getter);
}

uint64_t (*sub_1A934(uint64_t a1, uint64_t a2))()
{
  *(v2 + 360) = a1;
  *(v2 + 368) = a2;
  return sub_174E8;
}

uint64_t sub_1A958(uint64_t a1)
{

  return sub_366F0();
}

uint64_t sub_1A974()
{
}

uint64_t sub_1A9C0(uint64_t a1, uint64_t a2)
{

  return sub_36A20();
}

uint64_t sub_1A9E8(uint64_t a1)
{

  return sub_3D4C(v1, 1, 1, a1);
}

uint64_t sub_1AA14()
{

  return sub_366C0();
}

uint64_t sub_1AA58(uint64_t a1)
{
  sub_3D4C(v1, 1, 1, a1);

  return sub_36610();
}

uint64_t sub_1AB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_36610();
}

uint64_t sub_1AB60()
{
}

uint64_t sub_1AB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
}

uint64_t sub_1AB90()
{

  return sub_36930();
}

uint64_t sub_1ABA8(uint64_t a1)
{

  return sub_36A20();
}

uint64_t sub_1ABCC(uint64_t a1, uint64_t a2)
{

  return sub_36760();
}

uint64_t sub_1ABF0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_36760();
}

uint64_t sub_1AC14()
{
  *(v0 + 336) = *v1;
  *(v0 + 344) = v1[1];

  return swift_getObjectType();
}

char *sub_1AC38@<X0>(unint64_t a1@<X8>)
{

  return sub_19F6C((a1 > 1), v1, 1);
}

uint64_t sub_1AC5C()
{

  return sub_36650();
}

uint64_t sub_1AC78()
{

  return swift_task_alloc();
}

uint64_t sub_1AC90()
{

  return swift_allocObject();
}

uint64_t sub_1ACA8()
{
}

void sub_1AD1C(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 - 110;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_36790(v3);
}

uint64_t sub_1AD3C()
{
}

uint64_t sub_1AD5C()
{

  return sub_36650();
}

uint64_t sub_1AD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return sub_36A20();
}

double sub_1AD94(uint64_t a1, double result)
{
  if (a1 == 3)
  {
    v2 = (result + -32.0) * 5.0 / 9.0;
  }

  else
  {
    if (a1 != 2)
    {
      return result;
    }

    v2 = result * 9.0 / 5.0 + 32.0;
  }

  return round(v2 * 10.0) / 10.0;
}

uint64_t sub_1ADF4()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_595B8);
  v1 = sub_1D8C(v0, qword_595B8);
  *v1 = sub_2866C();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1AE9C()
{
  sub_1DC4(&qword_55850, &qword_380F8);
  v0 = sub_35E20();
  sub_4E88();
  v2 = v1;
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_36F10;
  (*(v2 + 104))(v4 + v3, enum case for DeviceType.watch(_:), v0);
  return v4;
}

uint64_t sub_1AF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0xD000000000000010, 0x8000000000039B10);
  v8[3] = v4;
  v8[4] = sub_1B5F0(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator, &unk_37F90);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_1B074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = a1;
  v2 = sub_1DC4(&qword_55060, &qword_380E0);
  sub_4E88();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = v22 - v6;
  sub_1DC4(&qword_55848, &qword_380E8);
  v8 = (sub_1DC4(&qword_54FA0, &qword_380F0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  v25 = v11;
  *(v11 + 16) = xmmword_37390;
  v12 = v11 + v10;
  v13 = type metadata accessor for AccessoryTypeResolver();
  v14 = swift_allocObject();
  strcpy((v14 + 16), "accessoryType");
  *(v14 + 30) = -4864;
  v31 = v13;
  v32 = sub_1B5F0(&qword_55238, type metadata accessor for AccessoryTypeResolver, &unk_38CE0);
  v30[0] = v14;
  sub_1DC4(&qword_55078, &unk_373F0);
  v24 = sub_352A0;
  sub_35D10();
  *v12 = 0;
  sub_3BCC(v30, v12 + 8);
  *(v12 + 48) = 1;
  v15 = v8[12];
  v23 = *(v4 + 16);
  v23(v12 + v15, v7, v2);
  v22[2] = sub_362D0();
  sub_35D10();
  v16 = *(v4 + 8);
  v22[1] = v4 + 8;
  v16(v7, v2);
  sub_3D00(v30);
  v17 = v12 + v9;
  v18 = type metadata accessor for RoomNameResolver();
  v19 = swift_allocObject();
  *(v19 + 16) = 0x656D614E6D6F6F72;
  *(v19 + 24) = 0xE800000000000000;
  v31 = v18;
  v32 = sub_1B5F0(&qword_551B8, type metadata accessor for RoomNameResolver, &unk_38190);
  v30[0] = v19;
  sub_35D10();
  *v17 = 1;
  sub_3BCC(v30, v17 + 8);
  *(v17 + 48) = 1;
  v23(v17 + v8[12], v7, v2);
  sub_35D10();
  v16(v7, v2);
  sub_3D00(v30);
  v20 = v26;
  sub_4E08(v27, v26);
  v29 = v20;
  sub_1F794(sub_1B5D4, v28, v25);
  swift_setDeallocating();
  return sub_39D8();
}

uint64_t sub_1B490()
{
  sub_1DC4(&qword_55080, &unk_379E0);
  v0 = sub_35F40();
  sub_4E88();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_37390;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, enum case for DeliveryVehicle.siriHelp(_:), v0);
  v8(v7 + v4, enum case for DeliveryVehicle.assistantSuggestions(_:), v0);
  return v6;
}

uint64_t sub_1B5F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B638(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_1B658, 0, 0);
}

uint64_t sub_1B658()
{
  sub_1D48(*(v0 + 16), *(*(v0 + 16) + 24));
  *(v0 + 32) = sub_35FD0();
  *(v0 + 40) = v1;
  *(v0 + 48) = swift_getObjectType();
  v3 = sub_36830();

  return _swift_task_switch(sub_1B708, v3, v2);
}

uint64_t sub_1B708()
{
  v1 = sub_29700();
  v3 = v2;
  swift_unknownObjectRelease();
  *(v0 + 56) = v1;
  *(v0 + 64) = v3;

  return _swift_task_switch(sub_1B790, 0, 0);
}

uint64_t sub_1B790()
{
  v15 = v0;
  v1 = v0[8];
  if (v1)
  {
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v2 = v0[7];
    v3 = v0[3];
    v4 = sub_366C0();
    sub_1D8C(v4, static Log.suggestions);
    sub_36920(27);

    v14._countAndFlagsBits = 0xD000000000000013;
    v14._object = 0x8000000000039DF0;
    sub_36790(v3[1]);
    v17._countAndFlagsBits = 544175136;
    v17._object = 0xE400000000000000;
    sub_36790(v17);
    v18._countAndFlagsBits = v2;
    v18._object = v1;
    sub_36790(v18);
    v5._countAndFlagsBits = 0xD000000000000013;
    v6._object = 0x800000000003CCC0;
    v5._object = 0x8000000000039DF0;
    v6._countAndFlagsBits = 0xD000000000000077;
    Logger.debug(output:test:caller:)(v5, 0, v6);

    sub_1DC4(&qword_54E78, &unk_37010);
    v7 = swift_allocObject();
    *(v7 + 1) = xmmword_36F10;
    v7[7] = &type metadata for String;
    v7[4] = v2;
    v7[5] = v1;
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v8 = v0[3];
    v9 = sub_366C0();
    sub_1D8C(v9, static Log.suggestions);
    sub_36920(16);

    strcpy(&v14, "Couldn't find ");
    HIBYTE(v14._object) = -18;
    sub_36790(v8[1]);
    v10._countAndFlagsBits = 0xD00000000000003FLL;
    v11._object = 0x800000000003CCC0;
    v10._object = 0x800000000003C7F0;
    v11._countAndFlagsBits = 0xD000000000000077;
    Logger.warning(output:test:file:function:line:)(v14, 0, v11, v10, 18);

    v7 = _swiftEmptyArrayStorage;
  }

  v12 = v0[1];

  return v12(v7);
}

uint64_t sub_1BA28(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BA0;

  return sub_1B638(v4, a2);
}

uint64_t sub_1BB28(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RoomNameResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BB68(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = v2;
  v4 = sub_1A8D0();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1BB90()
{
  v1 = v0[10];
  v2 = v1[3];
  v0[12] = v2;
  v0[13] = v1[4];
  v0[14] = sub_1D48(v1, v2);
  v0[15] = sub_35FD0();
  v0[16] = v3;
  v0[17] = swift_getObjectType();
  v5 = sub_36830();

  return _swift_task_switch(sub_1BC50, v5, v4);
}

uint64_t sub_1BC50()
{
  sub_116D0();
  *(v0 + 192) = sub_29884();
  swift_unknownObjectRelease();
  v1 = sub_1A8D0();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1BCBC()
{
  v2 = *(v0 + 192);
  if (v2 == 2)
  {
    *(v0 + 144) = sub_35FD0();
    *(v0 + 152) = v3;
    *(v0 + 160) = swift_getObjectType();
    v5 = sub_36830();

    return _swift_task_switch(sub_1BEAC, v5, v4);
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v6 = *(v0 + 88);
    v7 = sub_366C0();
    sub_1D8C(v7, static Log.suggestions);
    sub_36920(27);

    sub_1C6F0();
    sub_36790(v6[1]);
    sub_1C6B0();
    if (v2)
    {
      v8._countAndFlagsBits = 1702195828;
    }

    else
    {
      v8._countAndFlagsBits = 0x65736C6166;
    }

    if (v2)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    v8._object = v9;
    sub_36790(v8);

    sub_1C670(v1, "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationSiriSuggestions/Resolvers/IsSingleAccessoryOfTypeInHomeResolver.swift");

    sub_1DC4(&qword_54E78, &unk_37010);
    v10 = swift_allocObject();
    v11 = sub_1C698(v10, &type metadata for Bool, xmmword_36F10);

    return v12(v11);
  }
}

uint64_t sub_1BEAC()
{
  sub_116D0();
  v1 = sub_29A2C(*(v0 + 160), *(v0 + 152));
  v3 = v2;
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  swift_unknownObjectRelease();
  *(v0 + 193) = v3;
  v4 = sub_1A8D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1BF24()
{
  if (*(v0 + 193))
  {
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v1 = sub_366C0();
    sub_1D8C(v1, static Log.suggestions);
    v2._countAndFlagsBits = 0xD00000000000004ALL;
    v2._object = 0x800000000003CD90;
    v3._object = 0x800000000003CDE0;
    v3._countAndFlagsBits = 0xD00000000000008CLL;
    Logger.debug(output:test:caller:)(v2, 0, v3);
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v4 = *(v0 + 88);
    sub_1D8C(v1, static Log.suggestions);
    sub_1C6CC();

    sub_36790(v4[1]);
    sub_1C6B0();
    v15._countAndFlagsBits = 0x65736C6166;
    v15._object = 0xE500000000000000;
    sub_36790(v15);

    v5._countAndFlagsBits = 0xD000000000000013;
    v6._object = 0x800000000003CDE0;
    v5._object = 0x8000000000039DF0;
    v6._countAndFlagsBits = 0xD00000000000008CLL;
    Logger.debug(output:test:caller:)(v5, 0, v6);

    sub_1DC4(&qword_54E78, &unk_37010);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_36F10;
    *(v7 + 56) = &type metadata for Bool;
    *(v7 + 32) = 0;
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 88);
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    type metadata accessor for SuggestionEntityRetrieval();
    *(v0 + 168) = swift_initStackObject();

    *(v0 + 176) = sub_2DDB0(v11, v12);
    v13 = swift_task_alloc();
    *(v0 + 184) = v13;
    *v13 = v0;
    v13[1] = sub_1C1AC;

    return sub_301A4();
  }
}

uint64_t sub_1C1AC()
{
  sub_116D0();
  *(*v0 + 194) = v1;

  v2 = sub_1A8D0();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1C2C0()
{
  v2 = *(v0 + 194);
  if (qword_54D20 != -1)
  {
    sub_3E80(&qword_54D20);
  }

  v3 = *(v0 + 88);
  v4 = sub_366C0();
  sub_1D8C(v4, static Log.suggestions);
  sub_1C6CC();

  sub_1C6F0();
  sub_36790(v3[1]);
  v5 = 0xE400000000000000;
  sub_1C6B0();
  if (v2)
  {
    v6._countAndFlagsBits = 1702195828;
  }

  else
  {
    v6._countAndFlagsBits = 0x65736C6166;
  }

  if (!v2)
  {
    v5 = 0xE500000000000000;
  }

  v6._object = v5;
  sub_36790(v6);

  sub_1C670(v1, "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationSiriSuggestions/Resolvers/IsSingleAccessoryOfTypeInHomeResolver.swift");

  sub_1DC4(&qword_54E78, &unk_37010);
  v7 = swift_allocObject();
  v8 = sub_1C698(v7, &type metadata for Bool, xmmword_36F10);

  return v9(v8);
}

uint64_t sub_1C438(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C4D0;

  return sub_1BB68(v4, a2);
}

uint64_t sub_1C4D0()
{
  sub_116D0();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_1C630(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IsSingleAccessoryOfTypeInHomeResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C670(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2;

  v5._countAndFlagsBits = v3 + 121;
  v5._object = ((a2 - 32) | 0x8000000000000000);
  Logger.debug(output:test:caller:)(*&a1, 0, v5);
}

__n128 *sub_1C698@<X0>(__n128 *result@<X0>, unint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[3].n128_u64[1] = a2;
  result[2].n128_u8[0] = v3;
  return result;
}

void sub_1C6B0()
{
  v1._countAndFlagsBits = 544175136;
  v1._object = 0xE400000000000000;

  sub_36790(v1);
}

void sub_1C6CC()
{

  sub_36920(27);
}

uint64_t sub_1C704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[34] = a3;
  v4[35] = v3;
  v4[33] = a1;
  v4[36] = sub_1DC4(&qword_559B8, &qword_38298);
  v4[37] = swift_task_alloc();
  v5 = sub_36280();
  v4[38] = v5;
  v4[39] = *(v5 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = sub_1DC4(&qword_559C0, &qword_382A0);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = sub_1DC4(&qword_559C8, &qword_382A8);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();

  return _swift_task_switch(sub_1C8F4, 0, 0);
}

uint64_t sub_1C8F4()
{
  if (!sub_1E574(*(v0 + 264)))
  {
    if (qword_54D20 != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_39;
  }

  v1 = *(v0 + 264);
  sub_1D48(v1, v1[3]);
  v2 = sub_35E90();
  v3 = sub_1E924(v2);
  *(v0 + 440) = v3;

  if (!v3)
  {
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v72 = *(v0 + 264);
    v73 = sub_366C0();
    sub_1D8C(v73, static Log.suggestions);
    sub_1EFE0();
    sub_36920(29);

    sub_3ED0();
    sub_1D48(v72, v1[3]);
    sub_35E90();
    sub_1DC4(&qword_54F80, &qword_37160);
    v74 = sub_366E0();
    v76 = v75;

    v120._countAndFlagsBits = v74;
    v120._object = v76;
    sub_36790(v120);

    sub_1EF88();
    v71 = 27;
    goto LABEL_43;
  }

  if (qword_54D20 != -1)
  {
    sub_3E80(&qword_54D20);
  }

  v4 = sub_366C0();
  *(v0 + 448) = sub_1D8C(v4, static Log.suggestions);
  sub_1EFE0();
  sub_36920(21);

  sub_3ED0();
  *(v0 + 456) = sub_365B0();
  v116._countAndFlagsBits = sub_366E0();
  sub_36790(v116);

  sub_1EF88();
  Logger.debug(output:test:caller:)(v5, v6, v7);

  v8 = 0;
  v9 = *(v3 + 32);
  v10 = 1 << v9;
  *(v0 + 632) = v9;
  v11 = -1 << (1 << v9);
  if (v10 < 64)
  {
    v12 = ~v11;
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v3 + 64);
  *(v0 + 592) = enum case for SiriHintUseCase.dimLights(_:);
  *(v0 + 596) = enum case for SiriHintUseCase.getStateOfAirQuality(_:);
  *(v0 + 600) = enum case for SiriHintUseCase.getStateOfDoorLocks(_:);
  *(v0 + 604) = enum case for SiriHintUseCase.getStateOfGarageDoors(_:);
  *(v0 + 608) = enum case for SiriHintUseCase.getStateOfSecuritySystems(_:);
  *(v0 + 612) = enum case for SiriHintUseCase.getStateOfHumidity(_:);
  *(v0 + 616) = enum case for SiriHintUseCase.getStateOfLightsPower(_:);
  *(v0 + 620) = enum case for SiriHintUseCase.getStateOfTemperature(_:);
  *(v0 + 624) = enum case for SiriHintUseCase.getStateOfWindows(_:);
  *(v0 + 628) = enum case for Objective.discoverability(_:);
  while (1)
  {
    *(v0 + 464) = _swiftEmptyArrayStorage;
    if (!v13)
    {
      break;
    }

LABEL_15:
    *(v0 + 472) = v13;
    *(v0 + 480) = v8;
    v19 = *(v0 + 456);
    v20 = *(v0 + 424);
    v21 = *(v0 + 432);
    v22 = *(v0 + 416);
    v23 = *(v0 + 360);
    sub_1EFBC();
    v26 = *v24;
    v25 = v24[1];
    sub_1F014();
    v28 = v27;
    v29 = *(v23 + 48);
    sub_1F014();
    (*(v30 + 16))(v21 + v29);
    v31 = *(v23 + 48);
    *v20 = v26;
    *(v20 + 1) = v25;
    (*(v28 + 32))(&v20[v31], v21 + v29, v19);
    sub_11528(v20, v22, &qword_559C8, &qword_382A8);
    v32 = *(v23 + 48);

    sub_364F0();
    v33 = *(v28 + 8);
    v33(v22 + v32, v19);
    v34 = sub_36500();
    if (sub_3D74(v114, 1, v34) == 1)
    {
      goto LABEL_16;
    }

    v45 = *(v0 + 592);
    v46 = *(v0 + 344);
    sub_11528(*(v0 + 352), v46, &qword_559C0, &qword_382A0);
    v47 = *(v34 - 8);
    v48 = (*(v47 + 88))(v46, v34);
    if (v48 == v45)
    {
      v44 = 0xE900000000000073;
      sub_1F02C();
    }

    else if (v48 == *(v0 + 596))
    {
      v49 = 0xD000000000000014;
      v44 = 0x8000000000039BD0;
    }

    else
    {
      v44 = 0x8000000000039BF0;
      v49 = 0xD000000000000013;
      if (v48 != *(v0 + 600))
      {
        v49 = 0xD000000000000015;
        if (v48 == *(v0 + 604))
        {
          v44 = 0x8000000000039C10;
        }

        else if (v48 == *(v0 + 608))
        {
          v49 = 0xD000000000000019;
          v44 = 0x8000000000039C70;
        }

        else if (v48 == *(v0 + 612))
        {
          v49 = 0xD000000000000012;
          v44 = 0x8000000000039C30;
        }

        else if (v48 == *(v0 + 616))
        {
          v44 = 0x8000000000039C50;
        }

        else if (v48 == *(v0 + 620))
        {
          v44 = 0x8000000000039C90;
        }

        else
        {
          if (v48 != *(v0 + 624))
          {
            (*(v47 + 8))(*(v0 + 344), v34);
LABEL_16:
            v111 = *(v0 + 456);
            v36 = *(v0 + 416);
            v35 = *(v0 + 424);
            v37 = *(v0 + 360);
            v114 = *(v0 + 352);
            *(v0 + 152) = 0;
            *(v0 + 160) = 0xE000000000000000;
            sub_36920(29);

            *(v0 + 136) = 0xD00000000000001BLL;
            *(v0 + 144) = 0x800000000003CFC0;
            sub_11528(v35, v36, &qword_559C8, &qword_382A8);
            v38 = *(v37 + 48);
            sub_364F0();
            v33(v36 + v38, v111);
            v117._countAndFlagsBits = sub_36720();
            sub_36790(v117);

            sub_1EF88();
            Logger.warning(output:test:file:function:line:)(v39, v40, v41, v42, 64);

            sub_11590(v114, &qword_559C0, &qword_382A0);
            v43 = 0;
            v44 = 0;
            goto LABEL_36;
          }

          v49 = 0xD000000000000011;
          v44 = 0x8000000000039CB0;
        }
      }
    }

    v110 = v33;
    *(v0 + 488) = v49;
    *(v0 + 496) = v44;
    v50 = *(v0 + 628);
    v52 = *(v0 + 312);
    v51 = *(v0 + 320);
    v53 = v49;
    v54 = *(v0 + 304);
    v55 = *(v0 + 272);
    sub_11590(*(v0 + 352), &qword_559C0, &qword_382A0);
    v114 = v55[4];
    sub_1D48(v55, v55[3]);

    sub_366F0();
    (*(v52 + 104))(v51, v50, v54);
    v43 = v53;
    sub_36150();

    (*(v52 + 8))(v51, v54);
    v56 = *(v0 + 80);

    if (v56)
    {
      v79 = *(v0 + 424);
      v80 = *(v0 + 408);
      v81 = *(v0 + 360);
      sub_1EF58((v0 + 56), v0 + 16);
      sub_11528(v79, v80, &qword_559C8, &qword_382A8);

      v82 = *(v81 + 48);
      sub_36570();
      sub_1F008();
      if (v83)
      {
        (v33)(v80 + v82);
        v84 = sub_1F020();
      }

      else
      {
        (v33)(v80 + v82);
        v84 = sub_36330();
      }

      *(v0 + 633) = v85 & 1;
      *(v0 + 504) = v84;
      v86 = *(v0 + 400);
      v87 = *(v0 + 360);
      sub_11528(*(v0 + 424), v86, &qword_559C8, &qword_382A8);

      v88 = *(v87 + 48);
      sub_36570();
      sub_1F008();
      if (v89)
      {
        (v33)(v86 + v88);
        v90 = sub_1F020();
      }

      else
      {
        (v33)(v86 + v88);
        v90 = sub_36370();
      }

      *(v0 + 634) = v91 & 1;
      *(v0 + 512) = v90;
      v92 = *(v0 + 456);
      v94 = *(v0 + 416);
      v93 = *(v0 + 424);
      v96 = *(v0 + 384);
      v95 = *(v0 + 392);
      v112 = *(v0 + 376);
      v113 = *(v0 + 368);
      v97 = *(v0 + 360);
      sub_1D48((v0 + 16), *(v0 + 40));
      *(v0 + 520) = sub_35FD0();
      *(v0 + 528) = v98;
      *(v0 + 536) = swift_getObjectType();
      sub_11528(v93, v94, &qword_559C8, &qword_382A8);

      v99 = *(v97 + 48);
      *(v0 + 544) = sub_36560();
      *(v0 + 552) = v100;
      v110(v94 + v99, v92);
      sub_11528(v93, v95, &qword_559C8, &qword_382A8);

      v101 = *(v97 + 48);
      *(v0 + 560) = sub_365A0();
      *(v0 + 568) = v102;
      v110(v95 + v101, v92);
      sub_11528(v93, v96, &qword_559C8, &qword_382A8);

      v103 = *(v97 + 48);
      *(v0 + 576) = sub_36580();
      *(v0 + 584) = v104;
      v110(v96 + v103, v92);
      sub_11528(v93, v112, &qword_559C8, &qword_382A8);

      v105 = *(v97 + 48);
      *(v0 + 635) = sub_36590() & 1;
      v110(v112 + v105, v92);
      sub_11528(v93, v113, &qword_559C8, &qword_382A8);

      v106 = *(v97 + 48);
      *(v0 + 636) = sub_36550() & 1;
      v110(v113 + v106, v92);
      sub_36830();
      v107 = sub_1EF98();

      return _swift_task_switch(v107, v108, v109);
    }

    sub_11590(v0 + 56, &qword_559D0, &qword_382B0);
LABEL_36:
    v57 = *(v0 + 424);
    *(v0 + 184) = 0;
    *(v0 + 192) = 0xE000000000000000;
    sub_36920(44);

    *(v0 + 168) = 0xD00000000000002ALL;
    *(v0 + 176) = 0x800000000003CFE0;
    *(v0 + 200) = v43;
    *(v0 + 208) = v44;
    sub_1DC4(&qword_54F68, &qword_37150);
    v118._countAndFlagsBits = sub_36720();
    sub_36790(v118);

    sub_1EF88();
    Logger.warning(output:test:file:function:line:)(v58, v59, v60, v61, 90);

    sub_11590(v57, &qword_559C8, &qword_382A8);
    v8 = *(v0 + 480);
    v13 = (*(v0 + 472) - 1) & *(v0 + 472);
  }

  while (!__OFADD__(v8, 1))
  {
    v14 = sub_1EFF0();
    if (v17 == v18)
    {

      goto LABEL_44;
    }

    v13 = *(v14 + 8 * v16 + 64);
    v8 = v15 + 1;
    if (v13)
    {
      v8 = v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_57:
  sub_3E80(&qword_54D20);
LABEL_39:
  v62 = *(v0 + 264);
  v63 = sub_366C0();
  sub_1D8C(v63, static Log.suggestions);
  sub_1EFE0();
  sub_36920(38);

  sub_3ED0();
  sub_1D48(v62, v62[3]);
  sub_35E80();
  v119._countAndFlagsBits = sub_36720();
  sub_36790(v119);

  sub_1EF88();
  v71 = 22;
LABEL_43:
  Logger.warning(output:test:file:function:line:)(*&v64, v66, *&v67, *&v69, v71);

LABEL_44:

  v77 = *(v0 + 8);

  return v77(_swiftEmptyArrayStorage);
}

uint64_t sub_1D7BC()
{
  sub_29C7C(*(v0 + 504), *(v0 + 633), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 512), *(v0 + 634), *(v0 + 576), *(v0 + 584), *(v0 + 635), *(v0 + 636));
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1D8A0, 0, 0);
}

uint64_t sub_1D8A0()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  *(v0 + 232) = 0;
  *(v0 + 240) = 0xE000000000000000;
  sub_36920(41);
  v3 = *(v0 + 240);
  *(v0 + 216) = *(v0 + 232);
  *(v0 + 224) = v3;
  v120._countAndFlagsBits = 0xD000000000000016;
  v120._object = 0x800000000003D010;
  sub_36790(v120);
  v121._countAndFlagsBits = v2;
  v121._object = v1;
  sub_36790(v121);

  v122._countAndFlagsBits = 0x6F63206874697720;
  v122._object = 0xEF203A747865746ELL;
  sub_36790(v122);
  sub_1D48((v0 + 16), *(v0 + 40));
  *(v0 + 248) = sub_35FD0();
  v4 = v0 + 248;
  v5 = (v0 + 96);
  *(v0 + 256) = v6;
  sub_1DC4(&qword_559D8, &qword_382B8);
  sub_369A0();
  swift_unknownObjectRelease();
  v7._countAndFlagsBits = 0xD000000000000092;
  v7._object = 0x800000000003CEA0;
  Logger.debug(output:test:caller:)(*(v0 + 216), 0, v7);

  sub_3BCC(v0 + 16, v0 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v118 = *(v0 + 464);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_45:
    v118 = sub_313F8(0, *(v118 + 2) + 1, 1, v118);
  }

  v111 = (v4 - 192);
  v106 = v4;
  v4 = *(v118 + 2);
  v9 = *(v118 + 3);
  if (v4 >= v9 >> 1)
  {
    v118 = sub_313F8((v9 > 1), v4 + 1, 1, v118);
  }

  sub_11590(*(v0 + 424), &qword_559C8, &qword_382A8);
  *(v118 + 2) = v4 + 1;
  sub_1EF58(v5, &v118[40 * v4 + 32]);
  sub_3D00((v0 + 16));
  sub_3ED0();
  v101 = v11;
  v102 = v10;
  sub_3ED0();
  v103 = v12;
  v104 = v13;
  sub_3ED0();
  v105 = v14;
  sub_3ED0();
  v107 = v15;
  v108 = v16;
  sub_3ED0();
  v109 = v17;
  sub_3ED0();
  v112 = v18;
  v5 = "erator+Hints.swift";
  sub_3ED0();
  v114 = v19;
  while (1)
  {
    v21 = *(v0 + 472);
    v20 = *(v0 + 480);
    *(v0 + 464) = v118;
    v22 = (v21 - 1) & v21;
    if (!v22)
    {
      break;
    }

LABEL_11:
    *(v0 + 472) = v22;
    *(v0 + 480) = v20;
    v28 = *(v0 + 456);
    v30 = *(v0 + 424);
    v29 = *(v0 + 432);
    v31 = *(v0 + 416);
    v32 = *(v0 + 360);
    sub_1EFBC();
    v34 = *v33;
    v35 = v33[1];
    sub_1F014();
    v37 = v36;
    v38 = *(v32 + 48);
    sub_1F014();
    (*(v39 + 16))(v29 + v38);
    v40 = *(v32 + 48);
    *v30 = v34;
    *(v30 + 1) = v35;
    (*(v37 + 32))(&v30[v40], v29 + v38, v28);
    sub_11528(v30, v31, &qword_559C8, &qword_382A8);
    v41 = *(v32 + 48);

    sub_364F0();
    v42 = *(v37 + 8);
    v42(v31 + v41, v28);
    v43 = sub_36500();
    if (sub_3D74(v117, 1, v43) == 1)
    {
      goto LABEL_12;
    }

    v53 = *(v0 + 592);
    v54 = *(v0 + 344);
    sub_11528(*(v0 + 352), v54, &qword_559C0, &qword_382A0);
    v55 = *(v43 - 8);
    v56 = (*(v55 + 88))(v54, v43);
    if (v56 == v53)
    {
      v52 = 0xE900000000000073;
      sub_1F02C();
    }

    else if (v56 == *(v0 + 596))
    {
      v57 = 0xD000000000000014;
      v52 = v109;
    }

    else if (v56 == *(v0 + 600))
    {
      v57 = 0xD000000000000013;
      v52 = v107;
    }

    else
    {
      v57 = 0xD000000000000015;
      v52 = v108;
      if (v56 != *(v0 + 604))
      {
        if (v56 == *(v0 + 608))
        {
          v57 = 0xD000000000000019;
          v52 = v105;
        }

        else if (v56 == *(v0 + 612))
        {
          v57 = 0xD000000000000012;
          v52 = v103;
        }

        else
        {
          v52 = v104;
          if (v56 != *(v0 + 616))
          {
            v52 = v102;
            if (v56 != *(v0 + 620))
            {
              if (v56 != *(v0 + 624))
              {
                (*(v55 + 8))(*(v0 + 344), v43);
LABEL_12:
                v113 = *(v0 + 456);
                v117 = *(v0 + 448);
                v45 = *(v0 + 416);
                v44 = *(v0 + 424);
                v47 = *(v0 + 352);
                v46 = *(v0 + 360);
                *(v0 + 152) = 0;
                *(v0 + 160) = 0xE000000000000000;
                sub_36920(29);

                *(v0 + 136) = 0xD00000000000001BLL;
                *(v0 + 144) = v112;
                sub_11528(v44, v45, &qword_559C8, &qword_382A8);
                v48 = *(v46 + 48);
                sub_364F0();
                v42(v45 + v48, v113);
                v123._countAndFlagsBits = sub_36720();
                sub_36790(v123);

                v49._countAndFlagsBits = 0xD000000000000092;
                v49._object = 0x800000000003CEA0;
                v50._countAndFlagsBits = 0xD00000000000003DLL;
                v5 = "erator+Hints.swift";
                v50._object = 0x800000000003CF40;
                Logger.warning(output:test:file:function:line:)(*(v0 + 136), 0, v49, v50, 64);

                sub_11590(v47, &qword_559C0, &qword_382A0);
                v51 = 0;
                v52 = 0;
                goto LABEL_30;
              }

              v57 = 0xD000000000000011;
              v52 = v101;
            }
          }
        }
      }
    }

    v110 = v42;
    *(v0 + 488) = v57;
    *(v0 + 496) = v52;
    v58 = *(v0 + 628);
    v59 = v57;
    v61 = *(v0 + 312);
    v60 = *(v0 + 320);
    v62 = *(v0 + 304);
    v63 = *(v0 + 272);
    sub_11590(*(v0 + 352), &qword_559C0, &qword_382A0);
    v117 = v63[4];
    sub_1D48(v63, v63[3]);

    sub_366F0();
    (*(v61 + 104))(v60, v58, v62);
    v51 = v59;
    sub_36150();

    (*(v61 + 8))(v60, v62);
    v64 = *(v0 + 80);

    if (v64)
    {
      v70 = *(v0 + 424);
      v71 = *(v0 + 408);
      v72 = *(v0 + 360);
      sub_1EF58(v111, v0 + 16);
      sub_11528(v70, v71, &qword_559C8, &qword_382A8);

      v73 = *(v72 + 48);
      sub_36570();
      sub_1F008();
      if (v74)
      {
        v110(v71 + v73);
        v75 = sub_1F020();
      }

      else
      {
        v110(v71 + v73);
        v75 = sub_36330();
      }

      v106[385] = v76 & 1;
      *(v0 + 504) = v75;
      v77 = *(v0 + 400);
      v78 = *(v0 + 360);
      sub_11528(*(v0 + 424), v77, &qword_559C8, &qword_382A8);

      v79 = *(v78 + 48);
      sub_36570();
      sub_1F008();
      if (v80)
      {
        v110(v77 + v79);
        v81 = sub_1F020();
      }

      else
      {
        v110(v77 + v79);
        v81 = sub_36370();
      }

      v106[386] = v82 & 1;
      *(v0 + 512) = v81;
      v83 = *(v0 + 456);
      v84 = *(v0 + 416);
      v85 = *(v0 + 424);
      v86 = *(v0 + 384);
      v87 = *(v0 + 392);
      v115 = *(v0 + 376);
      v116 = *(v0 + 368);
      v88 = *(v0 + 360);
      sub_1D48((v0 + 16), *(v0 + 40));
      *(v0 + 520) = sub_35FD0();
      *(v0 + 528) = v89;
      *(v0 + 536) = swift_getObjectType();
      sub_11528(v85, v84, &qword_559C8, &qword_382A8);

      v90 = *(v88 + 48);
      *(v0 + 544) = sub_36560();
      *(v0 + 552) = v91;
      (v110)(v84 + v90, v83);
      sub_11528(v85, v87, &qword_559C8, &qword_382A8);

      v92 = *(v88 + 48);
      *(v0 + 560) = sub_365A0();
      *(v0 + 568) = v93;
      (v110)(v87 + v92, v83);
      sub_11528(v85, v86, &qword_559C8, &qword_382A8);

      v94 = *(v88 + 48);
      *(v0 + 576) = sub_36580();
      *(v0 + 584) = v95;
      (v110)(v86 + v94, v83);
      sub_11528(v85, v115, &qword_559C8, &qword_382A8);

      v96 = *(v88 + 48);
      v106[387] = sub_36590() & 1;
      (v110)(v115 + v96, v83);
      sub_11528(v85, v116, &qword_559C8, &qword_382A8);

      v97 = *(v88 + 48);
      v106[388] = sub_36550() & 1;
      (v110)(v116 + v97, v83);
      sub_36830();
      v98 = sub_1EF98();

      return _swift_task_switch(v98, v99, v100);
    }

    sub_11590(v111, &qword_559D0, &qword_382B0);
    v5 = "erator+Hints.swift";
LABEL_30:
    v4 = *(v0 + 448);
    v65 = *(v0 + 424);
    *(v0 + 184) = 0;
    *(v0 + 192) = 0xE000000000000000;
    sub_36920(44);

    *(v0 + 168) = 0xD00000000000002ALL;
    *(v0 + 176) = v114;
    *(v0 + 200) = v51;
    *(v0 + 208) = v52;
    sub_1DC4(&qword_54F68, &qword_37150);
    v124._countAndFlagsBits = sub_36720();
    sub_36790(v124);

    v66._countAndFlagsBits = 0xD000000000000092;
    v66._object = 0x800000000003CEA0;
    v67._countAndFlagsBits = 0xD00000000000003DLL;
    v67._object = 0x800000000003CF40;
    Logger.warning(output:test:file:function:line:)(*(v0 + 168), 0, v66, v67, 90);

    sub_11590(v65, &qword_559C8, &qword_382A8);
  }

  while (1)
  {
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    v23 = sub_1EFF0();
    if (v26 == v27)
    {
      break;
    }

    v22 = *(v23 + 8 * v25 + 64);
    v20 = v24 + 1;
    if (v22)
    {
      v20 = v25;
      goto LABEL_11;
    }
  }

  v68 = *(v0 + 8);

  return v68(v118);
}

BOOL sub_1E574(void *a1)
{
  v2 = sub_1DC4(&qword_559B8, &qword_38298);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_35E10();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  sub_1D48(a1, a1[3]);
  sub_35E80();
  v12 = sub_35FB0();
  if (sub_3D74(v4, 1, v12) == 1)
  {
    sub_11590(v4, &qword_559B8, &qword_38298);
  }

  else
  {
    v13 = *(v12 - 8);
    if ((*(v13 + 88))(v4, v12) == enum case for InteractionIntents.siriInteractionIntents(_:))
    {
      (*(v13 + 96))(v4, v12);
      sub_1DC4(&qword_559F8, &qword_382D8);

      (*(v6 + 32))(v11, v4, v5);
      (*(v6 + 16))(v9, v11, v5);
      if ((*(v6 + 88))(v9, v5) == enum case for SiriSuggestions.Intent.inIntent(_:))
      {
        (*(v6 + 96))(v9, v5);
        v14 = *v9;
        sub_362C0();
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          v16 = [v15 userTask];
          if (v16)
          {
            v17 = v16;
            [v16 taskType];

            v18 = sub_36350();
            v19 = sub_36350();

            (*(v6 + 8))(v11, v5);
            return v18 == v19;
          }
        }

        (*(v6 + 8))(v11, v5);
      }

      else
      {
        v21 = *(v6 + 8);
        v21(v11, v5);
        v21(v9, v5);
      }
    }

    else
    {
      (*(v13 + 8))(v4, v12);
    }
  }

  return 0;
}

unint64_t sub_1E924(uint64_t a1)
{
  v2 = sub_1DC4(&qword_559E0, &qword_382C0);
  __chkstk_darwin(v2 - 8);
  v4 = v50 - v3;
  v60 = sub_1DC4(&qword_559C8, &qword_382A8);
  __chkstk_darwin(v60);
  v59 = v50 - v5;
  v58 = sub_1DC4(&qword_559E8, &qword_382C8);
  __chkstk_darwin(v58);
  v57 = (v50 - v6);
  v7 = sub_365B0();
  v61 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v64 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v56 = v50 - v11;
  __chkstk_darwin(v10);
  v55 = v50 - v12;
  v63 = a1;
  if (*(a1 + 16))
  {
    sub_1DC4(&qword_559F0, &qword_382D0);
    v13 = sub_369E0();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  v14 = v63 + 64;
  v15 = 1 << *(v63 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v63 + 64);
  v18 = (v15 + 63) >> 6;
  v62 = (v61 + 32);
  v50[0] = v13 + 8;
  v50[1] = v61 + 40;

  v20 = 0;
  v53 = v4;
  v52 = v14;
  v51 = v18;
  v54 = v13;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_11:
      v22 = __clz(__rbit64(v17)) | (v21 << 6);
      v23 = (*(v63 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      sub_4E08(*(v63 + 56) + 48 * v22, v68);
      *&v67 = v24;
      *(&v67 + 1) = v25;
      v65[3] = v67;
      v66[0] = v68[0];
      v66[1] = v68[1];
      v66[2] = v68[2];
      v26 = v67;
      sub_1EF70(v66, v65);

      sub_1DC4(&qword_54F80, &qword_37160);
      if (!swift_dynamicCast())
      {
        break;
      }

      v17 &= v17 - 1;
      sub_3D4C(v4, 0, 1, v7);
      v27 = v4;
      v28 = *v62;
      v29 = v56;
      (*v62)(v56, v27, v7);
      v30 = *(v60 + 48);
      v31 = v7;
      v32 = v59;
      v28(&v59[v30], v29, v31);
      v33 = v58;
      v34 = *(v58 + 48);
      v35 = v57;
      *v57 = v26;
      v36 = &v32[v30];
      v7 = v31;
      v37 = v64;
      v13 = v54;
      v28(v35 + v34, v36, v31);
      v38 = *(v33 + 48);
      v39 = *v35;
      v40 = v35[1];
      v41 = v35 + v38;
      v42 = v55;
      v28(v55, v41, v7);
      v28(v37, v42, v7);
      result = sub_19734(v39, v40);
      v43 = result;
      if (v44)
      {
        v45 = (v13[6] + 16 * result);
        *v45 = v39;
        v45[1] = v40;

        result = (*(v61 + 40))(v13[7] + *(v61 + 72) * v43, v64, v7);
      }

      else
      {
        if (v13[2] >= v13[3])
        {
          goto LABEL_23;
        }

        *(v50[0] + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
        v46 = (v13[6] + 16 * result);
        *v46 = v39;
        v46[1] = v40;
        result = (v28)(v13[7] + *(v61 + 72) * result, v64, v7);
        v47 = v13[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_24;
        }

        v13[2] = v49;
      }

      v20 = v21;
      v4 = v53;
      v14 = v52;
      v18 = v51;
      if (!v17)
      {
        goto LABEL_8;
      }
    }

    sub_3D4C(v4, 1, 1, v7);
    sub_11590(v4, &qword_559E0, &qword_382C0);

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        return v13;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1EF58(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_1EF70(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1F040()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_595D0);
  v1 = sub_1D8C(v0, qword_595D0);
  *v1 = sub_286C8();
  v1[1] = v2;
  sub_21EE4();
  v4 = *(v3 + 104);

  return v4(v1);
}

uint64_t sub_1F0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = a1;
  v45 = sub_1DC4(&qword_55060, &qword_380E0);
  sub_21ED4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v39 - v5;
  sub_1DC4(&qword_55068, &unk_373E0);
  v7 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v8 = *v7;
  v41 = *(*v7 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v42 = v10;
  *(v10 + 16) = xmmword_37020;
  v11 = v10 + v9;
  HasTargetedMoreThanOneEntityResolver = type metadata accessor for HasTargetedMoreThanOneEntityResolver();
  v13 = swift_allocObject();
  *(v13 + 16) = 0xD00000000000001CLL;
  *(v13 + 24) = 0x8000000000039D30;
  v54 = HasTargetedMoreThanOneEntityResolver;
  v55 = sub_20BEC(&qword_55A78, type metadata accessor for HasTargetedMoreThanOneEntityResolver, &unk_36FE0);
  v53[0] = v13;
  sub_1DC4(&qword_55078, &unk_373F0);
  v40 = sub_352A0;
  sub_21FA8(sub_352A0, v14, (&type metadata for Any + 1));
  *v11 = 5;
  sub_3BCC(v53, v11 + 8);
  *(v11 + 48) = 1;
  v15 = v7[12];
  v50 = *(v3 + 16);
  v16 = v45;
  v50(v11 + v15, v6, v45);
  v49 = sub_362C0();
  v48 = sub_20BC0;
  sub_21FA8(sub_20BC0, v17, v49);
  v18 = *(v3 + 8);
  v46 = v3 + 8;
  v47 = v18;
  v18(v6, v16);
  sub_3D00(v53);
  v19 = v41;
  v20 = (v11 + v41);
  v21 = type metadata accessor for ContainerNameResolver();
  v22 = swift_allocObject();
  sub_21FE0();
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  v54 = v21;
  v55 = sub_20BEC(&qword_55A80, type metadata accessor for ContainerNameResolver, &unk_37C80);
  v53[0] = v22;
  sub_21FA8(sub_352A0, v26, (&type metadata for Any + 1));
  *v20 = 6;
  sub_3BCC(v53, (v20 + 8));
  v27 = sub_21FCC();
  v28 = v45;
  (v50)(v27);
  sub_21F84();
  v47(v6, v28);
  sub_3D00(v53);
  v29 = (v11 + 2 * v19);
  v30 = type metadata accessor for AccessoryNameResolver();
  v31 = swift_allocObject();
  sub_21FE0();
  *(v33 + 16) = v34;
  *(v33 + 24) = v32 + 7;
  v54 = v30;
  v55 = sub_20BEC(&qword_55240, type metadata accessor for AccessoryNameResolver, &unk_38890);
  v53[0] = v31;
  sub_21FA8(v40, v35, (&type metadata for Any + 1));
  *v29 = 2;
  sub_3BCC(v53, (v29 + 8));
  v36 = sub_21FCC();
  (v50)(v36);
  sub_21F84();
  v47(v6, v28);
  sub_3D00(v53);
  v37 = v43;
  sub_4E08(v44, v43);
  v52 = v37;
  sub_1F7BC(sub_20C34, v51, v42, &qword_54F98, qword_37170);
  swift_setDeallocating();
  return sub_39C4();
}

uint64_t sub_1F5D0()
{
  if ((sub_34BF4(&dword_0 + 3) & 1) == 0 || (sub_345E8(2, v0, v1) & 1) == 0)
  {
    return 0;
  }

  sub_34608(&dword_0 + 1);
  return v2 & 1;
}

uint64_t sub_1F61C()
{
  sub_1DC4(&qword_55080, &unk_379E0);
  v0 = sub_35F40();
  sub_21ED4();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_37390;
  v7 = v6 + v5;
  v8 = enum case for SiriHintsMode.display(_:);
  sub_35DC0();
  sub_3EC0();
  (*(v9 + 104))(v7, v8);
  v10 = *(v2 + 104);
  v10(v7, enum case for DeliveryVehicle.siriHints(_:), v0);
  v10(v7 + v4, enum case for DeliveryVehicle.assistantSuggestions(_:), v0);
  return v6;
}

uint64_t (*sub_1F7BC(uint64_t (*result)(unint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5))(unint64_t)
{
  v9 = result;
  v10 = 0;
  v11 = *(a3 + 16);
  do
  {
    if (v11 == v10)
    {
      break;
    }

    v12 = *(sub_1DC4(a4, a5) - 8);
    result = v9(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10++);
  }

  while (!v5);
  return result;
}

uint64_t sub_1FB1C(char *a1, void *a2)
{
  sub_20210(a1);
  v4 = a2[3];
  sub_1D48(a2, v4);
  sub_21ED4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_21F44();
  sub_21FF4();
  sub_21F0C();

  sub_3D9C(v9, &qword_55A88, &qword_38318);
  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1FE5C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1FF7C(a1, a3, a4, a5, a6);
  v8 = a2[3];
  sub_1D48(a2, v8);
  sub_21ED4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_21F44();
  sub_21FF4();
  sub_21F0C();

  sub_3D9C(v13, &qword_55A88, &qword_38318);
  return (*(v10 + 8))(v6, v8);
}

uint64_t sub_1FF7C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30[2] = a5;
  v30[3] = a3;
  v30[1] = a2;
  v6 = sub_1DC4(&qword_54F98, qword_37170);
  sub_21ED4();
  __chkstk_darwin(v7);
  v8 = sub_1DC4(&qword_55060, &qword_380E0);
  sub_21ED4();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  v14 = a1[49];
  sub_3434C(*a1);
  v32 = v15;
  v33 = v16;
  v31 = a1[48];
  if (v14 == 1)
  {
    (*(v10 + 16))(v13, &a1[*(v6 + 40)], v8);
    sub_21FC0();
    sub_21278(v17, v18, v19, v20);
    sub_21EB0();
  }

  else
  {
    sub_360B0();
    sub_21FC0();
    sub_21278(v25, v26, v27, v28);
  }

  swift_allocObject();
  sub_21FC0();
  sub_212EC(v21, v22, v23, v24);
  sub_20D74();
  sub_360A0();

  sub_36010();
  swift_allocObject();
  return sub_36000();
}

uint64_t sub_20210(char *a1)
{
  v2 = sub_1DC4(&qword_54FA0, &qword_380F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - v4;
  v6 = sub_1DC4(&qword_55060, &qword_380E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  v10 = a1[49];
  sub_3434C(*a1);
  v16[1] = v11;
  v16[2] = v12;
  if (v10 == 1)
  {
    (*(v7 + 16))(v9, &a1[*(v2 + 40)], v6);
  }

  else
  {
    sub_360B0();
  }

  sub_21278(a1, v5, &qword_54FA0, &qword_380F0);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_212EC(v5, v14 + v13, &qword_54FA0, &qword_380F0);
  sub_20D74();
  sub_360A0();

  sub_36010();
  swift_allocObject();
  return sub_36000();
}

uint64_t sub_204DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  sub_1DC4(&qword_55AA0, &unk_38340);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_21DFC, 0, 0);
}

uint64_t sub_2057C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  sub_1DC4(&qword_55AA0, &unk_38340);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_2061C, 0, 0);
}

uint64_t sub_2061C()
{
  v1 = *(v0 + 56);
  sub_362D0();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 64);
    sub_1DC4(&qword_54FA0, &qword_380F0);
    v5 = v1;
    sub_1DC4(&qword_55AA8, &qword_383F0);
    sub_35D20();
    sub_21EF0();
    v6();

    if (!v4)
    {
      sub_21F6C(v7, v8, v9, v10, v11, v12, v13, v14, v15, v34, v35, v16);
      if (v20)
      {
        sub_20DB8((v0 + 16), v3);
        v21 = enum case for IntentParameter.directAssignment(_:);
        v22 = sub_35F50();
        sub_3EC0();
        (*(v23 + 104))(v3, v21, v22);
        v24 = v3;
        v25 = 0;
      }

      else
      {
        v22 = sub_35F50();
        v24 = sub_21F38();
      }

      sub_3D4C(v24, v25, 1, v22);
      sub_35F50();
      v26 = sub_21F38();
      if (sub_3D74(v26, v27, v22) == 1)
      {
        sub_21EE4();
        (*(v28 + 104))();
        v29 = sub_21F38();
        if (sub_3D74(v29, v30, v22) != 1)
        {
          sub_3D9C(*(v0 + 72), &qword_55AA0, &unk_38340);
        }
      }

      else
      {
        sub_21EE4();
        (*(v31 + 32))();
      }
    }
  }

  else
  {
    v17 = *(v0 + 48);
    v18 = enum case for IntentParameter.ignore(_:);
    sub_35F50();
    sub_3EC0();
    (*(v19 + 104))(v17, v18);
  }

  sub_1AA4C();

  return v32();
}

uint64_t sub_20898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  sub_1DC4(&qword_55AA0, &unk_38340);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_20938, 0, 0);
}

uint64_t sub_20938()
{
  v1 = *(v0 + 56);
  sub_362C0();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 64);
    sub_1DC4(&qword_54F98, qword_37170);
    v5 = v1;
    sub_1DC4(&qword_55A90, &qword_38328);
    sub_35D20();
    sub_21EF0();
    v6();

    if (!v4)
    {
      sub_21F6C(v7, v8, v9, v10, v11, v12, v13, v14, v15, v34, v35, v16);
      if (v20)
      {
        sub_20DB8((v0 + 16), v3);
        v21 = enum case for IntentParameter.directAssignment(_:);
        v22 = sub_35F50();
        sub_3EC0();
        (*(v23 + 104))(v3, v21, v22);
        v24 = v3;
        v25 = 0;
      }

      else
      {
        v22 = sub_35F50();
        v24 = sub_21F38();
      }

      sub_3D4C(v24, v25, 1, v22);
      sub_35F50();
      v26 = sub_21F38();
      if (sub_3D74(v26, v27, v22) == 1)
      {
        sub_21EE4();
        (*(v28 + 104))();
        v29 = sub_21F38();
        if (sub_3D74(v29, v30, v22) != 1)
        {
          sub_3D9C(*(v0 + 72), &qword_55AA0, &unk_38340);
        }
      }

      else
      {
        sub_21EE4();
        (*(v31 + 32))();
      }
    }
  }

  else
  {
    v17 = *(v0 + 48);
    v18 = enum case for IntentParameter.ignore(_:);
    sub_35F50();
    sub_3EC0();
    (*(v19 + 104))(v17, v18);
  }

  sub_1AA4C();

  return v32();
}

double sub_20BB4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_20BEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CAC()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

unint64_t sub_20D74()
{
  result = qword_55A98;
  if (!qword_55A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_55A98);
  }

  return result;
}

_OWORD *sub_20DB8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_20DC8()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

uint64_t sub_20E90()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

uint64_t sub_20F58()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

uint64_t sub_21020()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

uint64_t sub_210E8()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

uint64_t sub_211B0()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

uint64_t sub_21278(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22014(a1, a2, a3, a4);
  sub_3EC0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_212EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22014(a1, a2, a3, a4);
  sub_3EC0();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2133C()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54FA0, &qword_380F0);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_2057C(v4, v5, v6);
}

uint64_t sub_21404()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

uint64_t sub_214CC()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

uint64_t sub_21594()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

uint64_t sub_2165C()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

uint64_t sub_21724()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

uint64_t sub_217EC()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

uint64_t sub_218B4()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

uint64_t sub_2197C()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_20898(v4, v5, v6);
}

uint64_t sub_21A44()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_20898(v4, v5, v6);
}

uint64_t sub_21B0C()
{

  sub_1AA4C();

  return v0();
}

uint64_t sub_21BFC()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  sub_21EB0();
  v1 = swift_task_alloc();
  v2 = sub_21EA0(v1);
  *v2 = v3;
  v4 = sub_21E88(v2);

  return sub_204DC(v4, v5, v6);
}

uint64_t sub_21CC4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = (sub_1DC4(a1, a2) - 8);
  v8 = *(*v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(*v7 + 64);
  sub_3D00((v4 + v9 + 8));
  v11 = v7[12];
  sub_1DC4(&qword_55060, &qword_380E0);
  sub_3EC0();
  (*(v12 + 8))(v4 + v9 + v11);
  v13 = v7[13];
  sub_1DC4(a3, a4);
  sub_3EC0();
  (*(v14 + 8))(v4 + v9 + v13);

  return _swift_deallocObject(v4, v9 + v10, v8 | 7);
}

uint64_t sub_21F0C()
{

  return SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)(v3, v4, v5 - 120, v1, v0, v2);
}

void sub_21F44()
{
  v2 = *v0;

  sub_3434C(v2);
}

__n128 sub_21F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, __int128 a10, __n128 a12)
{
  result = a12;
  *(v12 + 16) = a10;
  *(v12 + 32) = a12;
  return result;
}

uint64_t sub_21F84()
{

  return sub_35D10();
}

uint64_t sub_21FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_35D10();
}

uint64_t sub_21FF4()
{

  return sub_3BCC(v0, v1 - 120);
}

uint64_t sub_22014(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DC4(a3, a4);
}

uint64_t sub_22034()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_595E8);
  v1 = sub_1D8C(v0, qword_595E8);
  *v1 = sub_286E4();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_220DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0x656E656353746573, 0xE800000000000000);
  v8[3] = v4;
  v8[4] = sub_22584(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator, &unk_37F90);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_221DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v3 = sub_1DC4(&qword_55060, &qword_380E0);
  sub_4E88();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  sub_1DC4(&qword_55068, &unk_373E0);
  v9 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_36F10;
  v12 = v11 + v10;
  v13 = type metadata accessor for SceneNameResolver();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x6D614E656E656373;
  *(v14 + 24) = 0xE900000000000065;
  v20[3] = v13;
  v20[4] = sub_22584(&qword_55B28, type metadata accessor for SceneNameResolver, &unk_38C20);
  v20[0] = v14;
  sub_1DC4(&qword_55078, &unk_373F0);
  sub_35D10();
  *v12 = 7;
  sub_3BCC(v20, v12 + 8);
  *(v12 + 48) = 1;
  (*(v5 + 16))(v12 + v9[12], v8, v3);
  sub_362C0();
  sub_35D10();
  (*(v5 + 8))(v8, v3);
  sub_3D00(v20);
  sub_4E08(v17, a2);
  v19 = a2;
  sub_1F76C(sub_22568, v18, v11);
  swift_setDeallocating();
  return sub_39C4();
}

uint64_t sub_224D4(void *a1)
{
  v1 = [a1 userTask];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v1 taskType];

  v3 = sub_36350();
  if (v3 != sub_36350())
  {
    return 0;
  }

  sub_34C9C(&dword_4 + 1);
  return v4 & 1;
}

uint64_t sub_22584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225CC()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_59600);
  v1 = sub_1D8C(v0, qword_59600);
  *v1 = sub_286F8();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_22674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0x616D696C43746573, 0xEE0065646F4D6574);
  v8[3] = v4;
  v8[4] = sub_22C44(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator, &unk_37F90);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_22780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = a1;
  v2 = sub_1DC4(&qword_55060, &qword_380E0);
  sub_4E88();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = v31 - v6;
  sub_1DC4(&qword_55068, &unk_373E0);
  v8 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v9 = *v8;
  v34 = *(*v8 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v35 = v11;
  *(v11 + 16) = xmmword_37390;
  v12 = v11 + v10;
  v13 = type metadata accessor for RoomNameResolver();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x656D614E6D6F6F72;
  *(v14 + 24) = 0xE800000000000000;
  v41 = v13;
  v42 = sub_22C44(&qword_551B8, type metadata accessor for RoomNameResolver, &unk_38190);
  v40[0] = v14;
  sub_1DC4(&qword_55078, &unk_373F0);
  v33 = sub_352A0;
  sub_35D10();
  *v12 = 1;
  sub_3BCC(v40, v12 + 8);
  *(v12 + 48) = 1;
  v15 = v8[12];
  v32 = *(v4 + 16);
  v31[0] = v2;
  v32(v12 + v15, v7, v2);
  v31[1] = sub_362C0();
  sub_35D10();
  v16 = *(v4 + 8);
  v16(v7, v2);
  sub_3D00(v40);
  v17 = v12 + v34;
  v18 = type metadata accessor for AttributeResolver();
  v19 = swift_allocObject();
  v27 = sub_2B290(v19, v20, v21, v22, v23, v24, v25, v26);
  v41 = v18;
  v42 = sub_22C44(&qword_55468, type metadata accessor for AttributeResolver, &unk_38AC0);
  v40[0] = v27;
  sub_35D10();
  *v17 = 8;
  sub_3BCC(v40, v17 + 8);
  *(v17 + 48) = 1;
  v28 = v31[0];
  v32(v17 + v8[12], v7, v31[0]);
  sub_35D10();
  v16(v7, v28);
  sub_3D00(v40);
  v29 = v36;
  sub_4E08(v37, v36);
  v39 = v29;
  sub_1F76C(sub_22C28, v38, v35);
  swift_setDeallocating();
  return sub_39C4();
}

BOOL sub_22B90(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_34664(&off_4F460, v4, v5, v6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA0;

  return sub_1C704(a1, a2, a3);
}

uint64_t sub_22D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22EC4;

  return sub_22C8C(a1, a2, a3);
}

uint64_t sub_22E84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeAutomationGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall Logger.debug(output:test:caller:)(Swift::String output, Swift::Bool test, Swift::String caller)
{
  countAndFlagsBits = caller._countAndFlagsBits;
  object = output._object;
  v20 = output._countAndFlagsBits;
  v23 = 46;
  v24 = 0xE100000000000000;
  v22 = &v23;
  v5 = sub_242AC(sub_3BAC, v21, caller._countAndFlagsBits, caller._object);
  if (v6)
  {
    sub_24414();
    sub_24430();
    v5 = sub_36780();
  }

  v7 = v5;
  v23 = 47;
  v24 = 0xE100000000000000;
  __chkstk_darwin(v5);
  sub_24430();
  sub_242AC(v8, v9, v10, v11);
  v13 = v12;

  v14 = sub_366B0();
  v15 = sub_36860();

  v16 = os_log_type_enabled(v14, v15);
  if (v13)
  {
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136446466;
LABEL_8:
      sub_24430();
      sub_367C0();
      sub_36730();
      sub_24500();
      v19 = sub_23D3C(countAndFlagsBits, v7, &v23);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_23D3C(v20, object, &v23);
      _os_log_impl(&dword_0, v14, v15, "%{public}s: %s", v17, 0x16u);
      swift_arrayDestroy();
      sub_2449C(v18);
      sub_2449C(v17);
    }

LABEL_9:

    return;
  }

  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v23 = v18;
  *v17 = 136446466;
  sub_24430();
  if (v7 >> 14 >= sub_36780() >> 14)
  {
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t *Log.OSLogs.suggestions.unsafeMutableAddressor()
{
  if (qword_54D30 != -1)
  {
    swift_once();
  }

  return &static Log.OSLogs.suggestions;
}

uint64_t *Log.OSLogs.general.unsafeMutableAddressor()
{
  if (qword_54D28 != -1)
  {
    swift_once();
  }

  return &static Log.OSLogs.general;
}

uint64_t sub_232A0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_366C0();

  return sub_1D8C(v4, a2);
}

uint64_t sub_23348(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_366C0();
  sub_486C(v8, a2);
  sub_1D8C(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_366D0();
}

uint64_t sub_233FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_366C0();
  v7 = sub_1D8C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_23500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_243D0();
  result = sub_368A0();
  *a4 = result;
  return result;
}

id sub_2358C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

void sub_23690(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t (*a7)(void *), uint64_t a8, uint64_t (*a9)(void))
{
  v11 = 0x65725F7261646172;
  v42 = 46;
  v43 = 0xE100000000000000;
  if (a3)
  {
    v12 = 0xEF202D2074726F70;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v41 = &v42;
  if ((a3 & 1) == 0)
  {
    v11 = 0;
  }

  v38 = v11;
  v13 = sub_242AC(a7, v40, a5, a6);
  if (v14)
  {
    sub_24414();
    sub_24430();
    v13 = sub_36780();
  }

  v39 = v13;
  v42 = 47;
  v43 = 0xE100000000000000;
  __chkstk_darwin(v13);
  sub_24430();
  sub_242AC(v15, v16, v17, v18);
  v20 = v19;

  v21 = a2;

  v22 = sub_366B0();
  v23 = a9();

  v24 = os_log_type_enabled(v22, v23);
  if (v20)
  {
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v42 = v26;
      *v25 = 136315650;
      v27 = sub_23D3C(v38, v12, &v42);

      *(v25 + 4) = v27;
      *(v25 + 12) = 2082;
      sub_24430();
      sub_367C0();
      sub_36730();
      sub_24500();
      v28 = sub_23D3C(a5, v12, &v42);

      *(v25 + 14) = v28;
      *(v25 + 22) = 2080;
      *(v25 + 24) = sub_23D3C(a1, v21, &v42);
      _os_log_impl(&dword_0, v22, v23, "%s%{public}s: %s", v25, 0x20u);
      swift_arrayDestroy();
      sub_2449C(v26);
      v29 = v25;
LABEL_14:
      sub_2449C(v29);
LABEL_16:

      return;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!v24)
  {
    goto LABEL_15;
  }

  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v42 = v31;
  *v30 = 136315650;
  v32 = sub_23D3C(v38, v12, &v42);

  *(v30 + 4) = v32;
  *(v30 + 12) = 2082;
  sub_24430();
  if (v39 >> 14 >= sub_36780() >> 14)
  {
    sub_24430();
    sub_367C0();
    v33 = sub_36730();
    v35 = v34;

    v36 = sub_23D3C(v33, v35, &v42);

    *(v30 + 14) = v36;
    *(v30 + 22) = 2080;
    *(v30 + 24) = sub_23D3C(a1, v21, &v42);
    _os_log_impl(&dword_0, v22, v23, "%s%{public}s: %s", v30, 0x20u);
    swift_arrayDestroy();
    sub_2449C(v31);
    v29 = v30;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_23A60(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *))
{
  v123[0] = 47;
  v123[1] = 0xE100000000000000;
  v121 = v123;
  sub_242AC(a9, v120, a4, a5);
  v14 = v13;

  v15 = sub_366B0();
  v16 = sub_36870();

  v17 = os_log_type_enabled(v15, v16);
  if (v14)
  {
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v123[0] = v19;
      v27 = sub_2443C(4.8154e-34, v19, v20, v21, v22, v23, v24, v25, v26, v94, v101, v109, a1, v120[0], v120[1], v121, v122);
      *(v18 + 4) = v27;
      v35 = sub_244DC(v27, v28, v29, v30, v31, v32, v33, v34, v95, v102, a8, v116, v120[0], v120[1], v121, v122);
      *(v18 + 24) = sub_24474(v35, v36, v37, v38, v39, v40, v41, v42, v96, v103, v110, v117, v120[0], v120[1], v121, v122);
      *(v18 + 32) = a8;
      sub_24414();
      sub_24430();
      sub_367C0();
      sub_36730();
      sub_24500();
      v43 = sub_23D3C(a4, a2, v123);

      *(v18 + 34) = v43;
      sub_2451C(v44, v45, v46, v47, v48, v49, v50, v51, v97, v104, v111);
      sub_24530(&dword_0, v52, v53, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld");
      swift_arrayDestroy();
      v54 = v19;
LABEL_9:
      sub_2449C(v54);
      sub_2449C(v18);
    }

LABEL_10:

    return;
  }

  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = swift_slowAlloc();
  v123[0] = swift_slowAlloc();
  v62 = sub_2443C(4.8154e-34, v123[0], v55, v56, v57, v58, v59, v60, v61, v94, v123[0], a8, a1, v120[0], v120[1], v121, v122);
  *(v18 + 4) = v62;
  v70 = sub_244DC(v62, v63, v64, v65, v66, v67, v68, v69, v98, v105, v112, v118, v120[0], v120[1], v121, v122);
  *(v18 + 24) = sub_24474(v70, v71, v72, v73, v74, v75, v76, v77, v99, v106, v113, v119, v120[0], v120[1], v121, v122);
  *(v18 + 32) = a8;
  sub_24430();
  v78 = sub_36780();
  v79 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v79 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v79 >= v78 >> 14)
  {
    sub_24430();
    sub_367C0();
    v80 = sub_36730();
    v82 = v81;

    v83 = sub_23D3C(v80, v82, v123);

    *(v18 + 34) = v83;
    sub_2451C(v84, v85, v86, v87, v88, v89, v90, v91, v100, v107, v114);
    sub_24530(&dword_0, v92, v93, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld");
    swift_arrayDestroy();
    v54 = v108;
    goto LABEL_9;
  }

  __break(1u);
}

unint64_t sub_23D3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23E00(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1A750(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_3D00(v11);
  return v7;
}

unint64_t sub_23E00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23F00(a5, a6);
    *a1 = v9;
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
    result = sub_36950();
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

void *sub_23F00(uint64_t a1, unint64_t a2)
{
  v3 = sub_23F4C(a1, a2);
  sub_24064(&off_4D128);
  return v3;
}

void *sub_23F4C(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_367A0())
  {
    result = sub_24148(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_36910();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_36950();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_24064(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_241B8(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24148(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1DC4(&qword_55C60, &unk_38650);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_241B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DC4(&qword_55C60, &unk_38650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_242AC(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_36770();
    v13[0] = sub_367B0();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

unint64_t sub_243D0()
{
  result = qword_55C58;
  if (!qword_55C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_55C58);
  }

  return result;
}

unint64_t sub_2443C(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  *v17 = a1;

  return sub_23D3C(0x65725F7261646172, 0xEF202D2074726F70, va);
}

unint64_t sub_24474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v16 + 14) = a1;
  *(v16 + 22) = 2080;

  return sub_23D3C(a12, v17, va);
}

uint64_t sub_2449C(uint64_t a1)
{
}

unint64_t sub_244DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v16 + 12) = 2082;

  return sub_23D3C(v18, v17, va);
}

uint64_t sub_24500()
{
}

void sub_24530(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x34u);
}

uint64_t sub_24704()
{
  sub_35E50();
  swift_allocObject();
  result = sub_35E60();
  qword_59658 = result;
  return result;
}

uint64_t sub_24764()
{
  v0 = sub_1DC4(&qword_55388, &unk_37950);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v22 - v4;
  v6 = sub_35CE0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  sub_364C0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v15 = [v14 resourceURL];

  if (v15)
  {
    sub_35CB0();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  sub_3D4C(v3, v16, 1, v6);
  sub_26764(v3, v5);
  if (sub_3D74(v5, 1, v6) == 1)
  {
    result = sub_11590(v5, &qword_55388, &unk_37950);
    v18 = 0x800000000003D1E0;
    v19 = 0xD00000000000004DLL;
  }

  else
  {
    sub_35CA0();
    v20 = *(v7 + 8);
    v20(v5, v6);
    sub_35C90();
    v20(v12, v6);
    v19 = sub_35CC0(1);
    v18 = v21;
    result = (v20)(v10, v6);
  }

  qword_59660 = v19;
  *algn_59668 = v18;
  return result;
}

uint64_t sub_24A0C()
{
  qword_59688 = sub_36540();
  unk_59690 = &protocol witness table for FeatureFlagProvider;
  sub_3C30(qword_59670);
  return sub_36530();
}

uint64_t sub_24A4C(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  sub_1DC4(&qword_55770, &unk_38050);
  v2[24] = swift_task_alloc();
  v3 = sub_366A0();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_24B44, 0, 0);
}

uint64_t sub_24B44()
{
  if (qword_54D30 != -1)
  {
    swift_once();
  }

  v0[28] = static Log.OSLogs.suggestions;
  sub_36620();
  sub_36640();
  if (qword_54D48 != -1)
  {
    swift_once();
  }

  v1 = qword_59688;
  v2 = sub_1D48(qword_59670, qword_59688);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  LOBYTE(v2) = sub_36520();
  (*(v3 + 8))(v4, v1);

  if (v2)
  {
    if (qword_54D38 != -1)
    {
      swift_once();
    }

    v5 = v0[22];
    v6 = qword_59658;
    v0[5] = sub_35E50();
    v0[6] = sub_2671C(&qword_55D00, &type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
    v0[2] = v6;

    v19 = (v5 + *v5);
    v7 = swift_task_alloc();
    v0[29] = v7;
    *v7 = v0;
    v7[1] = sub_24FA0;

    return v19(v0 + 2);
  }

  else
  {
    if (qword_54D20 != -1)
    {
      swift_once();
    }

    v10 = v0[26];
    v9 = v0[27];
    v12 = v0[24];
    v11 = v0[25];
    v13 = sub_366C0();
    sub_1D8C(v13, static Log.suggestions);
    v14._countAndFlagsBits = 0xD000000000000031;
    v14._object = 0x800000000003D0E0;
    v15._countAndFlagsBits = 0xD000000000000081;
    v15._object = 0x800000000003D120;
    v16._object = 0x800000000003D1B0;
    v16._countAndFlagsBits = 0xD000000000000027;
    Logger.warning(output:test:file:function:line:)(v14, 0, v15, v16, 38);
    sub_36620();
    v17 = sub_36650();
    sub_1A9E8(v17);
    sub_36610();
    sub_11590(v12, &qword_55770, &unk_38050);
    (*(v10 + 8))(v9, v11);

    v18 = v0[1];

    return v18(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_24FA0(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 240) = a1;

  sub_3D00((v2 + 16));

  return _swift_task_switch(sub_250A8, 0, 0);
}

uint64_t sub_250A8()
{
  v1 = type metadata accessor for HomeAutomationGenerator();
  v2 = swift_allocObject();
  *(v0 + 80) = v1;
  v3 = sub_2671C(&qword_55D08, type metadata accessor for HomeAutomationGenerator, &unk_385E0);
  *(v0 + 56) = v2;
  *(v0 + 88) = v3;
  sub_361B0();

  sub_3D00((v0 + 56));
  if (qword_54D00 != -1)
  {
    swift_once();
  }

  v4 = sub_35ED0();
  sub_1D8C(v4, qword_595D0);
  v5 = swift_task_alloc();
  *(v5 + 16) = &type metadata for DimLightsSuggestion;
  *(v5 + 24) = &off_55A00;
  sub_26910();
  sub_361C0();

  if (qword_54CD8 != -1)
  {
    v6 = swift_once();
  }

  v7 = sub_267D8(v6, qword_59548);
  *(v7 + 16) = &type metadata for GetStateOfAirQuality;
  *(v7 + 24) = &off_552C8;
  sub_361C0();

  if (qword_54D60 != -1)
  {
    v8 = swift_once();
  }

  v9 = sub_267D8(v8, qword_596B8);
  *(v9 + 16) = &type metadata for GetStateOfDoorLocks;
  *(v9 + 24) = &off_56018;
  sub_26850(0xD000000000000013);

  if (qword_54CD0 != -1)
  {
    v10 = swift_once();
  }

  v11 = sub_267D8(v10, qword_59530);
  *(v11 + 16) = &type metadata for GetStateOfGarageDoors;
  *(v11 + 24) = &off_55250;
  sub_2681C();

  if (qword_54CB8 != -1)
  {
    v12 = swift_once();
  }

  v13 = sub_267D8(v12, qword_594E8);
  *(v13 + 16) = &type metadata for GetStateOfHumidity;
  *(v13 + 24) = &off_550C8;
  sub_26850(0xD000000000000012);

  if (qword_54CC0 != -1)
  {
    v14 = swift_once();
  }

  v15 = sub_267D8(v14, qword_59500);
  *(v15 + 16) = &type metadata for GetStateOfLightsPower;
  *(v15 + 24) = &off_55140;
  sub_2681C();

  if (qword_54D68 != -1)
  {
    v16 = swift_once();
  }

  v17 = sub_267D8(v16, qword_596D0);
  *(v17 + 16) = &type metadata for GetStateOfSecuritySystems;
  *(v17 + 24) = &off_56150;
  sub_26850(0xD000000000000019);

  if (qword_54CE8 != -1)
  {
    v18 = swift_once();
  }

  v19 = sub_267D8(v18, qword_59588);
  *(v19 + 16) = &type metadata for GetStateOfTemperature;
  *(v19 + 24) = &off_55568;
  sub_2681C();

  if (qword_54CB0 != -1)
  {
    v20 = swift_once();
  }

  v21 = sub_267D8(v20, qword_594D0);
  *(v21 + 16) = &type metadata for GetStateOfWindows;
  *(v21 + 24) = &off_54FE8;
  sub_26850(0xD000000000000011);

  if (qword_54CF8 != -1)
  {
    v22 = swift_once();
  }

  v23 = sub_267D8(v22, qword_595B8);
  *(v23 + 16) = &type metadata for CreateAutomationSuggestion;
  *(v23 + 24) = &off_557D0;
  sub_2686C(0xD000000000000010);

  if (qword_54D08 != -1)
  {
    v24 = swift_once();
  }

  v25 = sub_267D8(v24, qword_595E8);
  *(v25 + 16) = &type metadata for SetSceneSuggestion;
  *(v25 + 24) = &off_55AB0;
  v26 = sub_26888();
  sub_2686C(v26 | 0x656E656353740000);

  if (qword_54D78 != -1)
  {
    v27 = swift_once();
  }

  v28 = sub_267D8(v27, qword_59700);
  *(v28 + 16) = &type metadata for SetTemperatureSuggestion;
  *(v28 + 24) = &off_563B0;
  v29 = sub_26888();
  v30 = sub_26894(v29);
  sub_2686C(v30);

  if (qword_54CC8 != -1)
  {
    v31 = swift_once();
  }

  v32 = sub_267D8(v31, qword_59518);
  *(v32 + 16) = &type metadata for OpenCloseSecureAccessoriesSuggestion;
  *(v32 + 24) = &off_551C0;
  sub_2686C(0xD00000000000001ALL);

  if (qword_54D70 != -1)
  {
    v33 = swift_once();
  }

  v34 = sub_267D8(v33, qword_596E8);
  *(v34 + 16) = &type metadata for PowerAccessoriesSuggestion;
  *(v34 + 24) = &off_561C8;
  sub_2686C(0xD000000000000010);

  if (qword_54CF0 != -1)
  {
    v35 = swift_once();
  }

  v36 = sub_267D8(v35, qword_595A0);
  *(v36 + 16) = &type metadata for SetBrightnessSuggestion;
  *(v36 + 24) = &off_55620;
  v37 = sub_26888();
  v38 = sub_268B4(v37);
  sub_26850(v38);

  if (qword_54D10 != -1)
  {
    v39 = swift_once();
  }

  v40 = sub_267D8(v39, qword_59600);
  *(v40 + 16) = &type metadata for SetClimateModeSuggestion;
  *(v40 + 24) = &off_55B30;
  v41 = sub_26888();
  v42 = sub_268D4(v41);
  sub_26850(v42);

  if (qword_54CE0 != -1)
  {
    v43 = swift_once();
  }

  v44 = sub_267D8(v43, qword_59570);
  *(v44 + 16) = &type metadata for SetColorSuggestion;
  *(v44 + 24) = &off_553F0;
  v45 = sub_26888();
  sub_26850(v45 | 0x726F6C6F43740000);

  if (qword_54D80 != -1)
  {
    v46 = swift_once();
  }

  v47 = sub_267D8(v46, qword_59718);
  *(v47 + 16) = &type metadata for SetFanSpeedSuggestion;
  *(v47 + 24) = &off_56590;
  v48 = sub_26888();
  v49 = sub_268F4(v48);
  sub_26850(v49);

  if (qword_54D50 != -1)
  {
    v50 = swift_once();
  }

  v51 = sub_267D8(v50, qword_59698);
  *(v51 + 16) = &type metadata for GetStateSmokeSensorSuggestion;
  *(v51 + 24) = &off_55F88;
  sub_361C0();

  if (qword_54CA8 != -1)
  {
    swift_once();
  }

  v52 = *(v0 + 216);
  v53 = *(v0 + 208);
  v62 = *(v0 + 200);
  v54 = *(v0 + 192);
  v55 = qword_594C8;
  sub_1DC4(&qword_55D10, &qword_386D0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_36F10;
  v57 = type metadata accessor for HomeAutomationSignalExtractor();
  *(v56 + 56) = v57;
  *(v56 + 64) = sub_2671C(&qword_55D18, type metadata accessor for HomeAutomationSignalExtractor, &unk_370D0);
  *(v56 + 32) = v55;

  sub_361A0();

  *(v0 + 160) = v57;
  *(v0 + 168) = sub_2671C(&qword_54F38, type metadata accessor for HomeAutomationSignalExtractor, &unk_370A0);
  *(v0 + 136) = v55;

  sub_36190();

  sub_3D00((v0 + 136));
  sub_361D0();

  sub_1DC4(&qword_55D20, &unk_386D8);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_36F10;
  sub_1EF58((v0 + 96), v58 + 32);

  sub_36620();
  v59 = sub_36650();
  sub_1A9E8(v59);
  sub_36610();
  sub_11590(v54, &qword_55770, &unk_38050);
  (*(v53 + 8))(v52, v62);

  v60 = *(v0 + 8);

  return v60(v58);
}

uint64_t sub_25DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DC4(&qword_55D28, &unk_386E8);
  __chkstk_darwin(v6 - 8);
  v39 = (&v37 - v7);
  v8 = sub_360C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 24);
  v41 = *(a1 + 32);
  v40 = a1;
  sub_1D48(a1, v12);
  (*(a3 + 48))(a2, a3);
  *v11 = (*(a3 + 64))(a2, a3);
  (*(v9 + 104))(v11, enum case for SignalContextProperties.deliveryVehicle(_:), v8);
  *v62 = v12;
  *&v62[8] = v41;
  sub_3C30(&v61);
  sub_35DB0();

  (*(v9 + 8))(v11, v8);
  v13 = *&v62[16];
  v41 = *v62;
  sub_1D48(&v61, *v62);
  (*(a3 + 56))(a2, a3);
  v59 = v41;
  v60 = v13;
  sub_3C30(v58);
  sub_36100();

  v14 = v60;
  v41 = v59;
  sub_1D48(v58, v59);
  (*(a3 + 32))(a2, a3);
  v56 = v41;
  v57 = v14;
  sub_3C30(v55);
  sub_36110();

  v15 = v57;
  v41 = v56;
  sub_1D48(v55, v56);
  if (qword_54D40 != -1)
  {
    swift_once();
  }

  v53 = v41;
  v54 = v15;
  sub_3C30(v52);
  sub_360E0();
  v16 = v54;
  v37 = v53;
  *&v38 = sub_1D48(v52, v53);
  sub_1DC4(&qword_55080, &unk_379E0);
  v17 = sub_35F40();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v41 = xmmword_36F10;
  *(v20 + 16) = xmmword_36F10;
  v21 = enum case for SiriHintsMode.spoken(_:);
  v22 = sub_35DC0();
  (*(*(v22 - 8) + 104))(v20 + v19, v21, v22);
  (*(v18 + 104))(v20 + v19, enum case for DeliveryVehicle.siriHints(_:), v17);
  v50 = v37;
  v51 = v16;
  sub_3C30(v49);
  sub_36130();

  v23 = v51;
  v38 = v50;
  sub_1D48(v49, v50);
  sub_1DC4(&qword_55D30, &qword_386F8);
  sub_36020();
  *(swift_allocObject() + 16) = v41;
  sub_36040();
  v47 = v38;
  v48 = v23;
  sub_3C30(v46);
  sub_36120();

  v24 = v48;
  v41 = v47;
  sub_1D48(v46, v47);
  sub_34DE8(a2, a3, v42);
  v44 = v41;
  v45 = v24;
  sub_3C30(v43);
  sub_360D0();
  sub_3D00(v42);
  v25 = v44;
  *&v38 = v45;
  v26 = sub_1D48(v43, v44);
  *&v41 = &v37;
  v27 = *(v25 - 8);
  __chkstk_darwin(v26);
  v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v39;
  *v39 = 0x6C7070612E6D6F63;
  *(v30 + 8) = 0xEE00656D6F482E65;
  v31 = enum case for Image.appIcon(_:);
  v32 = sub_361E0();
  (*(*(v32 - 8) + 104))(v30, v31, v32);
  sub_3D4C(v30, 0, 1, v32);
  v33 = sub_36060();
  swift_allocObject();
  v34 = sub_36050();
  v42[3] = v33;
  v42[4] = &protocol witness table for StaticIconUrlProvider;
  v42[0] = v34;
  sub_360F0();
  (*(v27 + 8))(v29, v25);
  sub_3D00(v42);
  sub_3D00(v43);
  sub_3D00(v46);
  sub_3D00(v49);
  sub_3D00(v52);
  sub_3D00(v55);
  sub_3D00(v58);
  sub_3D00(&v61);
  v35 = v40;
  sub_1EF70(v40, &v61);
  (*(a3 + 72))(&v61, a2, a3);
  sub_3D00(&v61);
  sub_1EF70(v35, &v61);
  (*(a3 + 80))(&v61, a2, a3);
  return sub_3D00(&v61);
}

uint64_t sub_26678(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA0;

  return sub_24A4C(a1, a2);
}

uint64_t sub_2671C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26764(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC4(&qword_55388, &unk_37950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267D8(uint64_t a1, uint64_t a2)
{
  sub_1D8C(v2, a2);

  return swift_task_alloc();
}

uint64_t sub_2681C()
{

  return sub_361C0();
}

uint64_t sub_26850(uint64_t a1)
{

  return sub_361C0();
}

uint64_t sub_2686C(uint64_t a1)
{

  return sub_361C0();
}

uint64_t sub_2692C(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  return _swift_task_switch(sub_2694C, 0, 0);
}

uint64_t sub_2694C()
{
  sub_1D48(*(v0 + 32), *(*(v0 + 32) + 24));
  *(v0 + 48) = sub_35FD0();
  *(v0 + 56) = v1;
  *(v0 + 64) = swift_getObjectType();
  v3 = sub_36830();

  return _swift_task_switch(sub_269FC, v3, v2);
}

uint64_t sub_269FC()
{
  v1 = sub_2A05C(*(v0 + 64), *(v0 + 56));
  v3 = v2;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  swift_unknownObjectRelease();
  *(v0 + 72) = v3;

  return _swift_task_switch(sub_26A80, 0, 0);
}

uint64_t sub_26A80()
{
  if (*(v0 + 72))
  {
    if (qword_54D20 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 40);
    v2 = sub_366C0();
    sub_1D8C(v2, static Log.suggestions);
    sub_36920(31);

    sub_36790(v1[1]);
    v3._countAndFlagsBits = 0xD00000000000001DLL;
    v4._countAndFlagsBits = 0xD000000000000074;
    v4._object = 0x800000000003D230;
    v5._countAndFlagsBits = 0xD00000000000003FLL;
    v5._object = 0x800000000003C7F0;
    v3._object = 0x800000000003D3D0;
    Logger.warning(output:test:file:function:line:)(v3, 0, v4, v5, 58);

LABEL_5:
    v6 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = *(v0 + 16);
    sub_36470();
    swift_allocObject();
    sub_36460();
    switch(v7)
    {
      case 2:
        v8 = *(*(v0 + 40) + 40);
        goto LABEL_13;
      case 5:
        v11 = *(*(v0 + 40) + 32);
        if (!*(v11 + 16))
        {
          goto LABEL_16;
        }

        v12 = *(v11 + 32);
        sub_1DC4(&qword_54E78, &unk_37010);
        v6 = swift_allocObject();
        *(v6 + 1) = xmmword_36F10;
        HueSemantic.rawValue.getter(v12);
        v6[7] = &type metadata for String;
        v6[4] = v13;
        v6[5] = v14;
        goto LABEL_17;
      case 6:
        if (!*(*(*(v0 + 40) + 48) + 16))
        {
          goto LABEL_21;
        }

        sub_363B0();
        v9 = sub_363A0();
        v10 = HomeAttributeValue.localizedValue.getter();

        sub_364B0();
        [v10 doubleValue];
        [v10 unit];
        sub_275FC();
        sub_364A0();
        sub_36440();

        goto LABEL_15;
      case 11:
        v8 = *(*(v0 + 40) + 56);
LABEL_13:
        if (!*(v8 + 16))
        {
LABEL_21:

          goto LABEL_5;
        }

        sub_364B0();
        sub_275FC();
        sub_364A0();
        sub_36440();
LABEL_15:

LABEL_16:
        sub_1DC4(&qword_54E78, &unk_37010);
        v6 = swift_allocObject();
        *(v6 + 1) = xmmword_36F10;
        v15 = sub_36450();
        v6[7] = sub_36480();
        v6[4] = v15;
LABEL_17:

        break;
      default:
        goto LABEL_16;
    }
  }

  v16 = *(v0 + 8);

  return v16(v6);
}

id HomeAttributeValue.localizedValue.getter()
{
  v0 = sub_1DC4(&qword_55D38, &qword_38700);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - v2;
  v4 = [objc_allocWithZone(NSMeasurementFormatter) init];
  v5 = [objc_opt_self() celsius];
  sub_272A4();
  sub_35C80();
  v6 = sub_35C70();
  v8 = v7;
  (*(v1 + 8))(v3, v0, v6);
  v9 = [v4 stringFromMeasurement:v8];

  v10 = sub_36710();
  v12 = v11;

  v27 = v10;
  v28 = v12;
  v25 = 67;
  v26 = 0xE100000000000000;
  sub_272E8();
  v13 = sub_368B0();

  [v24 unit];
  v14 = sub_36390();
  if (v14 != sub_36390() && (([v24 unit], v17 = sub_36390(), v17 == sub_36390()) || (objc_msgSend(v24, "unit"), v18 = sub_36390(), v18 == sub_36390())))
  {
    [v24 doubleValue];
    if (v13)
    {
      sub_1AD94(3, v19);
      if (qword_54D18 != -1)
      {
        sub_275B4(&qword_54D18);
      }

      v20 = sub_366C0();
      sub_1D8C(v20, static Log.general);
      sub_27614();
      sub_36920(49);
      sub_27634("Converted value: ");
      [v24 doubleValue];
      sub_36840();
      v30._countAndFlagsBits = 0xD00000000000001CLL;
      v30._object = 0x800000000003D2F0;
      sub_36790(v30);
      sub_27654();
      sub_275D4(v27, "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationSiriSuggestions/Resolvers/ValueResolver.swift");

      sub_363B0();
    }

    else
    {
      sub_1AD94(2, v19);
      if (qword_54D18 != -1)
      {
        sub_275B4(&qword_54D18);
      }

      v21 = sub_366C0();
      sub_1D8C(v21, static Log.general);
      sub_27614();
      sub_36920(52);
      sub_27634("Converted value: ");
      [v24 doubleValue];
      sub_36840();
      v31._countAndFlagsBits = 0xD00000000000001FLL;
      v31._object = 0x800000000003D2D0;
      sub_36790(v31);
      sub_27654();
      sub_275D4(v27, "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationSiriSuggestions/Resolvers/ValueResolver.swift");

      sub_363B0();
    }

    v22 = sub_363A0();

    return v22;
  }

  else
  {

    v15 = v24;

    return v15;
  }
}

unint64_t sub_272A4()
{
  result = qword_55D40;
  if (!qword_55D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_55D40);
  }

  return result;
}

unint64_t sub_272E8()
{
  result = qword_55D48;
  if (!qword_55D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55D48);
  }

  return result;
}

uint64_t sub_2733C()
{

  return v0;
}

uint64_t sub_2737C()
{
  sub_2733C();

  return _swift_deallocClassInstance(v0, 64, 7);
}

void *sub_273D4()
{
  v0[2] = 0x65756C6176;
  v0[3] = 0xE500000000000000;
  sub_27628();
  sub_31868(v1, v2, v3, v4, v5, v6, v7, v8);
  v0[4] = v34;
  sub_27628();
  sub_31754(v9, v10, v11, v12, v13, v14, v15, v16);
  v0[5] = v34;
  sub_27628();
  sub_31754(v17, v18, v19, v20, v21, v22, v23, v24);
  v0[6] = v34;
  sub_27628();
  sub_31754(v25, v26, v27, v28, v29, v30, v31, v32);
  v0[7] = v34;
  return v0;
}

uint64_t sub_27474(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BA0;

  return sub_2692C(v4, a2);
}

uint64_t sub_27574(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ValueResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275B4(uint64_t a1)
{

  return swift_once();
}

void sub_275D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2;

  v5._countAndFlagsBits = v3 + 99;
  v5._object = ((a2 - 32) | 0x8000000000000000);
  Logger.debug(output:test:caller:)(*&a1, 0, v5);
}

void sub_27634(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000011;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_36790(v2);
}

uint64_t sub_27654()
{

  return sub_36840();
}

uint64_t sub_27674(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_27694, 0, 0);
}

uint64_t sub_27694()
{
  sub_1D48(*(v0 + 16), *(*(v0 + 16) + 24));
  *(v0 + 32) = sub_35FD0();
  *(v0 + 40) = v1;
  *(v0 + 48) = swift_getObjectType();
  v3 = sub_36830();

  return _swift_task_switch(sub_27744, v3, v2);
}

uint64_t sub_27744()
{
  v1 = sub_2A2C8();
  v3 = v2;
  swift_unknownObjectRelease();
  *(v0 + 56) = v1;
  *(v0 + 64) = v3;

  return _swift_task_switch(sub_277CC, 0, 0);
}

uint64_t sub_277CC()
{
  v15 = v0;
  v1 = v0[8];
  if (v1)
  {
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v2 = v0[7];
    v3 = v0[3];
    v4 = sub_366C0();
    sub_1D8C(v4, static Log.suggestions);
    sub_36920(27);

    v14._countAndFlagsBits = 0xD000000000000013;
    v14._object = 0x8000000000039DF0;
    sub_36790(v3[1]);
    v17._countAndFlagsBits = 544175136;
    v17._object = 0xE400000000000000;
    sub_36790(v17);

    v18._countAndFlagsBits = v2;
    v18._object = v1;
    sub_36790(v18);

    v5._countAndFlagsBits = 0xD000000000000013;
    v6._object = 0x800000000003D430;
    v5._object = 0x8000000000039DF0;
    v6._countAndFlagsBits = 0xD00000000000007CLL;
    Logger.debug(output:test:caller:)(v5, 0, v6);

    sub_1DC4(&qword_54E78, &unk_37010);
    v7 = swift_allocObject();
    *(v7 + 1) = xmmword_36F10;
    v7[7] = &type metadata for String;
    v7[4] = v2;
    v7[5] = v1;
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v8 = v0[3];
    v9 = sub_366C0();
    sub_1D8C(v9, static Log.suggestions);
    sub_36920(16);

    strcpy(&v14, "Couldn't find ");
    HIBYTE(v14._object) = -18;
    sub_36790(v8[1]);
    v10._countAndFlagsBits = 0xD00000000000003FLL;
    v11._object = 0x800000000003D430;
    v10._object = 0x800000000003C7F0;
    v11._countAndFlagsBits = 0xD00000000000007CLL;
    Logger.warning(output:test:file:function:line:)(v14, 0, v11, v10, 18);

    v7 = _swiftEmptyArrayStorage;
  }

  v12 = v0[1];

  return v12(v7);
}

uint64_t sub_27A74(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BA0;

  return sub_27674(v4, a2);
}

uint64_t sub_27B74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessoryNameResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27BB4(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = v2;
  return _swift_task_switch(sub_27BD4, 0, 0);
}

uint64_t sub_27BD4()
{
  sub_1D48(*(v0 + 80), *(*(v0 + 80) + 24));
  *(v0 + 96) = sub_35FD0();
  *(v0 + 104) = v1;
  *(v0 + 112) = swift_getObjectType();
  v3 = sub_36830();

  return _swift_task_switch(sub_27C84, v3, v2);
}

uint64_t sub_27C84()
{
  v1 = sub_29A2C(*(v0 + 112), *(v0 + 104));
  v3 = v2;
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  swift_unknownObjectRelease();
  *(v0 + 168) = v3;

  return _swift_task_switch(sub_27D08, 0, 0);
}

uint64_t sub_27D08()
{
  if (*(v0 + 168))
  {
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v1 = *(v0 + 88);
    v2 = sub_366C0();
    sub_1D8C(v2, static Log.suggestions);
    sub_36920(33);

    sub_36790(v1[1]);
    v3._countAndFlagsBits = 0xD00000000000001FLL;
    v4._countAndFlagsBits = 0xD00000000000007CLL;
    v4._object = 0x800000000003D520;
    v5._countAndFlagsBits = 0xD00000000000003FLL;
    v5._object = 0x800000000003C7F0;
    v3._object = 0x800000000003D500;
    Logger.warning(output:test:file:function:line:)(v3, 0, v4, v5, 19);

    v6 = *(v0 + 8);

    return v6(_swiftEmptyArrayStorage);
  }

  else
  {
    v8 = *(v0 + 88);
    v9 = *(v8 + 16);
    *(v0 + 120) = v9;
    v10 = *(v8 + 24);
    *(v0 + 128) = v10;
    type metadata accessor for SuggestionEntityRetrieval();
    *(v0 + 136) = swift_initStackObject();

    *(v0 + 144) = sub_2DDB0(v9, v10);
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_27F08;

    return sub_304F4();
  }
}

uint64_t sub_27F08(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_28028, 0, 0);
}

uint64_t sub_28028()
{
  v1 = v0[20];
  if (*(v1 + 16) < 2uLL)
  {

    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v8 = sub_366C0();
    sub_1D8C(v8, static Log.suggestions);
    v9._countAndFlagsBits = 0xD00000000000001DLL;
    v9._object = 0x800000000003D5A0;
    v10._object = 0x800000000003D520;
    v10._countAndFlagsBits = 0xD00000000000007CLL;
    Logger.debug(output:test:caller:)(v9, 0, v10);
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
      v1 = v0[20];
    }

    v3 = v0[15];
    v2 = v0[16];
    v4 = sub_366C0();
    sub_1D8C(v4, static Log.suggestions);
    sub_36920(27);

    v14._countAndFlagsBits = v3;
    v14._object = v2;
    sub_36790(v14);
    v15._countAndFlagsBits = 544175136;
    v15._object = 0xE400000000000000;
    sub_36790(v15);
    v16._countAndFlagsBits = sub_36810();
    sub_36790(v16);

    v5._countAndFlagsBits = 0xD000000000000013;
    v6._object = 0x800000000003D520;
    v5._object = 0x8000000000039DF0;
    v6._countAndFlagsBits = 0xD00000000000007CLL;
    Logger.debug(output:test:caller:)(v5, 0, v6);

    sub_1DC4(&qword_54E78, &unk_37010);
    v7 = swift_allocObject();
    *(v7 + 1) = xmmword_36F10;
    v7[7] = sub_1DC4(&qword_55F80, &unk_38990);
    v7[4] = v1;
  }

  v11 = v0[1];

  return v11(v7);
}

uint64_t sub_28294(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BA0;

  return sub_27BB4(v4, a2);
}

uint64_t sub_28394(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SameTypeMultipleRoomsResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_283D4()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_28430()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_2848C()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_284E8()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_28544()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_285A0()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_28610()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_2866C()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_2871C(uint64_t a1)
{
  sub_28FC8();

  sub_28FA0();
  v3._countAndFlagsBits = sub_36750();
  sub_28FF0(v3);

  return v2;
}

uint64_t sub_2877C()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_287D8()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_28834()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_28890()
{
  sub_36920(17);

  v1._countAndFlagsBits = sub_36750();
  sub_36790(v1);

  return 0x67677553656D6F48;
}

uint64_t sub_28928()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_59698);
  v1 = sub_1D8C(v0, qword_59698);
  *v1 = sub_28890();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_289C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0xD000000000000013, 0x8000000000039B70);
  v8[3] = v4;
  v8[4] = sub_28F58(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator, &unk_37F90);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_28AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC4(&qword_55060, &qword_380E0);
  sub_4E88();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v17[-v8];
  sub_1DC4(&qword_55068, &unk_373E0);
  v10 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_36F10;
  v13 = v12 + v11;
  v14 = type metadata accessor for AccessoryTypeResolver();
  v15 = swift_allocObject();
  strcpy((v15 + 16), "accessoryType");
  *(v15 + 30) = -4864;
  v19[3] = v14;
  v19[4] = sub_28F58(&qword_55238, type metadata accessor for AccessoryTypeResolver, &unk_38CE0);
  v19[0] = v15;
  sub_1DC4(&qword_55078, &unk_373F0);
  sub_35D10();
  *v13 = 0;
  sub_3BCC(v19, v13 + 8);
  *(v13 + 48) = 1;
  (*(v6 + 16))(v13 + v10[12], v9, v4);
  sub_362C0();
  sub_35D10();
  (*(v6 + 8))(v9, v4);
  sub_3D00(v19);
  sub_4E08(a1, a2);
  v18 = a2;
  sub_1F76C(sub_28F3C, v17, v12);
  swift_setDeallocating();
  return sub_39C4();
}

unint64_t sub_28DC0(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_345E8(31, v4, v5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_28E48()
{
  sub_1DC4(&qword_55080, &unk_379E0);
  v0 = sub_35F40();
  sub_4E88();
  v2 = v1;
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_36F10;
  (*(v2 + 104))(v4 + v3, enum case for DeliveryVehicle.siriHelp(_:), v0);
  return v4;
}

uint64_t sub_28F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_28FC8()
{

  sub_36920(17);
}

void sub_28FF0(Swift::String a1)
{

  sub_36790(a1);
}

uint64_t sub_29008()
{
  sub_21EBC();
  if (qword_54D58 != -1)
  {
    sub_2A5D0(&qword_54D58);
  }

  sub_35EC0();
  sub_2A6F0();

  sub_36260();
  v0 = sub_3D00(v12);
  if (v14)
  {
    if (sub_2A604(v0))
    {
      v1 = LOBYTE(v12[0]);
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    sub_2A510(v13);
    v1 = 2;
  }

  if (qword_54D20 != -1)
  {
    sub_3E80(&qword_54D20);
  }

  v2 = sub_366C0();
  sub_1D8C(v2, static Log.suggestions);
  sub_2A624();
  sub_36920(42);

  sub_3ED0();
  v12[0] = 0xD000000000000028;
  v12[1] = v3;
  v13[0] = v1;
  v4 = sub_1DC4(&qword_56000, &qword_389E0);
  v15._countAndFlagsBits = sub_2A780(v4, v5, v6, v7, v8, v9, v10);
  sub_36790(v15);

  sub_2A7F4(v12[0], 0xD000000000000073, "getedMoreThanOneEntity: ");

  return v1;
}

uint64_t sub_291B0()
{
  sub_21EBC();
  if (qword_54D58 != -1)
  {
    sub_2A5D0(&qword_54D58);
  }

  sub_35EC0();
  sub_2A6F0();

  sub_2A798();
  sub_2A648(v1, v2, 0x656D614E72, v3);
  v4 = sub_3D00(&v14);
  if (v16)
  {
    sub_2A604(v4);
    sub_2A6E0();
  }

  else
  {
    sub_2A510(v15);
    v0 = 0;
  }

  if (qword_54D20 != -1)
  {
    sub_3E80(&qword_54D20);
  }

  v5 = sub_366C0();
  sub_1D8C(v5, static Log.suggestions);
  sub_2A624();
  sub_36920(27);

  sub_3ED0();
  sub_2A6A0();
  v6 = sub_1DC4(&qword_54F68, &qword_37150);
  v17._countAndFlagsBits = sub_2A780(v6, v7, v8, v9, v10, v11, v12);
  sub_36790(v17);

  sub_2A6C0(v14, 115, "getedMoreThanOneEntity: ");

  return v0;
}

uint64_t sub_29334()
{
  sub_2A7AC();
  if (qword_54D20 != -1)
  {
    sub_3E80(&qword_54D20);
  }

  v0 = sub_366C0();
  sub_1D8C(v0, static Log.suggestions);
  sub_2A75C();

  sub_3ED0();
  v19[1] = v1;
  v22._countAndFlagsBits = sub_365E0();
  sub_36790(v22);

  sub_2A814(0xD00000000000001DLL, 0xD000000000000073, "getedMoreThanOneEntity: ");

  if (qword_54D58 != -1)
  {
    sub_2A5D0(&qword_54D58);
  }

  sub_2A7C0();
  v2 = qword_596B0;
  v3 = sub_35EC0();
  v20 = v3;
  v21 = &protocol witness table for DefaultOwner;
  v19[0] = v2;

  swift_retain_n();
  v18 = &type metadata for String;
  v16 = sub_365F0();
  v17 = v4;
  sub_2A680(v19, v4, 0xED0000656D614E79, &v16);
  sub_3D00(&v16);
  sub_3D00(v19);
  v20 = v3;
  v21 = &protocol witness table for DefaultOwner;
  v19[0] = v2;
  v18 = sub_1DC4(&qword_54F68, &qword_37150);
  if (sub_36600())
  {
    v5 = sub_365F0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v16 = v5;
  v17 = v7;
  sub_2A66C();
  sub_2A7C0();
  sub_2A680(v8, v9, v10, v11);
  sub_3D00(&v16);
  sub_3D00(v19);
  v20 = v3;
  v21 = &protocol witness table for DefaultOwner;
  v19[0] = v2;
  v12 = sub_36680();
  v18 = &type metadata for HomeDeviceType;
  v16 = v12;
  sub_2A634();
  sub_2A680(v19, v13, v14, &v16);
  sub_3D00(&v16);
  return sub_3D00(v19);
}

uint64_t sub_29568()
{
  sub_2A7AC();
  if (qword_54D20 != -1)
  {
    sub_3E80(&qword_54D20);
  }

  v1 = sub_366C0();
  sub_1D8C(v1, static Log.suggestions);
  sub_2A75C();

  sub_3ED0();
  v8[1] = v2;
  v9._countAndFlagsBits = sub_36360();
  sub_36790(v9);

  sub_2A814(0xD00000000000001DLL, 0xD000000000000073, "getedMoreThanOneEntity: ");

  v3 = sub_36380();
  v4 = sub_36380();
  if (qword_54D58 != -1)
  {
    sub_2A5D0(&qword_54D58);
  }

  if (v3 == v4)
  {
    v0 = 5;
  }

  v5 = qword_596B0;
  v8[3] = sub_35EC0();
  v8[4] = &protocol witness table for DefaultOwner;
  v8[0] = v5;
  v7[3] = &type metadata for HomeAttributeType;
  v7[0] = v0;

  sub_36270();
  sub_3D00(v7);
  return sub_3D00(v8);
}

uint64_t sub_29700()
{
  sub_21EBC();
  if (qword_54D58 != -1)
  {
    sub_2A5D0(&qword_54D58);
  }

  sub_35EC0();
  sub_2A6F0();

  sub_2A5F0();
  sub_2A648(v1, v2, 0x6D6F6F5279, v3);
  v4 = sub_3D00(&v14);
  if (v16)
  {
    sub_2A604(v4);
    sub_2A6E0();
  }

  else
  {
    sub_2A510(v15);
    v0 = 0;
  }

  if (qword_54D20 != -1)
  {
    sub_3E80(&qword_54D20);
  }

  v5 = sub_366C0();
  sub_1D8C(v5, static Log.suggestions);
  sub_2A624();
  sub_36920(28);

  sub_3ED0();
  sub_2A6A0();
  v6 = sub_1DC4(&qword_54F68, &qword_37150);
  v17._countAndFlagsBits = sub_2A780(v6, v7, v8, v9, v10, v11, v12);
  sub_36790(v17);

  sub_2A6C0(v14, 115, "getedMoreThanOneEntity: ");

  return v0;
}

uint64_t sub_29884()
{
  sub_21EBC();
  if (qword_54D58 != -1)
  {
    sub_2A5D0(&qword_54D58);
  }

  sub_35EC0();
  sub_2A6F0();

  sub_36260();
  v0 = sub_3D00(v12);
  if (v14)
  {
    if (sub_2A604(v0))
    {
      v1 = LOBYTE(v12[0]);
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    sub_2A510(v13);
    v1 = 2;
  }

  if (qword_54D20 != -1)
  {
    sub_3E80(&qword_54D20);
  }

  v2 = sub_366C0();
  sub_1D8C(v2, static Log.suggestions);
  sub_2A624();
  sub_36920(43);

  sub_3ED0();
  v12[0] = 0xD000000000000029;
  v12[1] = v3;
  v13[0] = v1;
  v4 = sub_1DC4(&qword_56000, &qword_389E0);
  v15._countAndFlagsBits = sub_2A780(v4, v5, v6, v7, v8, v9, v10);
  sub_36790(v15);

  sub_2A7F4(v12[0], 0xD000000000000073, "getedMoreThanOneEntity: ");

  return v1;
}

uint64_t sub_29A2C(uint64_t a1, uint64_t a2)
{
  sub_366C0();
  sub_2A72C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_2A6FC();
  if (qword_54D58 != -1)
  {
    sub_2A5D0(&qword_54D58);
  }

  v7 = qword_596B0;
  v17 = sub_35EC0();
  v18 = &protocol witness table for DefaultOwner;
  v15 = v7;

  sub_2A5F0();
  sub_2A634();
  sub_36260();
  sub_3D00(&v15);
  if (v21)
  {
    if (swift_dynamicCast())
    {
      v8 = 0;
      v9 = v15;
      goto LABEL_8;
    }
  }

  else
  {
    sub_2A510(&v19);
  }

  v9 = 0;
  v8 = 1;
LABEL_8:
  if (qword_54D20 != -1)
  {
    sub_3E80(&qword_54D20);
  }

  sub_1D8C(v2, static Log.suggestions);
  v10 = sub_2A714();
  v11(v10);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_36920(28);

  sub_3ED0();
  v15 = 0xD00000000000001ALL;
  v16 = v13;
  if ((v8 & 1) == 0)
  {
    v12 = sub_36340();
  }

  v19 = v12;
  v20 = v8;
  sub_1DC4(&qword_56010, &qword_389E8);
  v22._countAndFlagsBits = sub_36720();
  sub_36790(v22);

  sub_2A7D4(v15, 0xD000000000000073, "getedMoreThanOneEntity: ");

  (*(v5 + 8))(v3, v2);
  return v9;
}

uint64_t sub_29C7C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, char a11, char a12)
{
  if ((a2 & 1) == 0)
  {
    if (qword_54D58 != -1)
    {
      sub_2A5D0(&qword_54D58);
    }

    v16 = qword_596B0;
    v47 = sub_35EC0();
    v48 = &protocol witness table for DefaultOwner;
    v46[0] = v16;
    v45 = &type metadata for HomeDeviceType;
    v43 = a1;

    sub_2A634();
    sub_2A5F0();
    sub_2A744(v17, v18, v19, v20);
    sub_3D00(&v43);
    sub_3D00(v46);
  }

  if (a4)
  {
    v21 = qword_54D58;

    if (v21 != -1)
    {
      sub_2A5D0(&qword_54D58);
    }

    v22 = qword_596B0;
    v47 = sub_35EC0();
    v48 = &protocol witness table for DefaultOwner;
    v45 = &type metadata for String;
    v46[0] = v22;
    v43 = a3;
    v44 = a4;

    sub_2A5F0();
    sub_2A744(v23, v24, v25, v26);
    sub_3D00(&v43);
    sub_3D00(v46);
  }

  if (a6)
  {
    v27 = qword_54D58;

    if (v27 != -1)
    {
      sub_2A5D0(&qword_54D58);
    }

    v28 = qword_596B0;
    v47 = sub_35EC0();
    v48 = &protocol witness table for DefaultOwner;
    v45 = &type metadata for String;
    v46[0] = v28;
    v43 = a5;
    v44 = a6;

    sub_2A66C();
    sub_2A5F0();
    sub_2A744(v29, v30, v31, v32);
    sub_3D00(&v43);
    sub_3D00(v46);
  }

  if ((a8 & 1) == 0)
  {
    if (qword_54D58 != -1)
    {
      sub_2A5D0(&qword_54D58);
    }

    v33 = qword_596B0;
    v47 = sub_35EC0();
    v48 = &protocol witness table for DefaultOwner;
    v46[0] = v33;
    v45 = &type metadata for HomeAttributeType;
    v43 = a7;

    sub_2A744(v46, 0xD000000000000012, 0x800000000003D6B0, &v43);
    sub_3D00(&v43);
    sub_3D00(v46);
  }

  if (a10)
  {
    v34 = qword_54D58;

    if (v34 != -1)
    {
      sub_2A5D0(&qword_54D58);
    }

    v35 = qword_596B0;
    v47 = sub_35EC0();
    v48 = &protocol witness table for DefaultOwner;
    v45 = &type metadata for String;
    v46[0] = v35;
    v43 = a9;
    v44 = a10;

    sub_2A798();
    sub_2A744(v46, v36, 0xED0000656D614E72, &v43);
    sub_3D00(&v43);
    sub_3D00(v46);
  }

  if (qword_54D58 != -1)
  {
    sub_2A5D0(&qword_54D58);
  }

  v37 = qword_596B0;
  v38 = sub_35EC0();
  v47 = v38;
  v48 = &protocol witness table for DefaultOwner;
  v46[0] = v37;
  v45 = &type metadata for Bool;
  LOBYTE(v43) = a11 & 1;
  swift_retain_n();
  sub_2A744(v46, 0xD00000000000001CLL, 0x8000000000039D30, &v43);
  sub_3D00(&v43);
  sub_3D00(v46);
  v47 = v38;
  v48 = &protocol witness table for DefaultOwner;
  v45 = &type metadata for Bool;
  v46[0] = v37;
  LOBYTE(v43) = a12 & 1;
  sub_2A744(v46, 0xD00000000000001DLL, 0x8000000000039CF0, &v43);
  sub_3D00(&v43);
  return sub_3D00(v46);
}

uint64_t sub_2A05C(uint64_t a1, uint64_t a2)
{
  sub_366C0();
  sub_2A72C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_2A6FC();
  if (qword_54D58 != -1)
  {
    sub_2A5D0(&qword_54D58);
  }

  v7 = qword_596B0;
  v17 = sub_35EC0();
  v18 = &protocol witness table for DefaultOwner;
  v15 = v7;

  sub_36260();
  sub_3D00(&v15);
  if (v21)
  {
    if (swift_dynamicCast())
    {
      v8 = 0;
      v9 = v15;
      goto LABEL_8;
    }
  }

  else
  {
    sub_2A510(&v19);
  }

  v9 = 0;
  v8 = 1;
LABEL_8:
  if (qword_54D20 != -1)
  {
    sub_3E80(&qword_54D20);
  }

  sub_1D8C(v2, static Log.suggestions);
  v10 = sub_2A714();
  v11(v10);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_36920(42);

  sub_3ED0();
  v15 = 0xD000000000000028;
  v16 = v13;
  if ((v8 & 1) == 0)
  {
    v12 = sub_36380();
  }

  v19 = v12;
  v20 = v8;
  sub_1DC4(&qword_56010, &qword_389E8);
  v22._countAndFlagsBits = sub_36720();
  sub_36790(v22);

  sub_2A7D4(v15, 0xD000000000000073, "getedMoreThanOneEntity: ");

  (*(v5 + 8))(v3, v2);
  return v9;
}

uint64_t sub_2A2C8()
{
  sub_21EBC();
  if (qword_54D58 != -1)
  {
    sub_2A5D0(&qword_54D58);
  }

  sub_35EC0();
  sub_2A6F0();

  sub_2A5F0();
  sub_2A648(v1, v2, 0x656D614E79, v3);
  v4 = sub_3D00(&v14);
  if (v16)
  {
    sub_2A604(v4);
    sub_2A6E0();
  }

  else
  {
    sub_2A510(v15);
    v0 = 0;
  }

  if (qword_54D20 != -1)
  {
    sub_3E80(&qword_54D20);
  }

  v5 = sub_366C0();
  sub_1D8C(v5, static Log.suggestions);
  sub_2A624();
  sub_36920(28);

  sub_3ED0();
  sub_2A6A0();
  v6 = sub_1DC4(&qword_54F68, &qword_37150);
  v17._countAndFlagsBits = sub_2A780(v6, v7, v8, v9, v10, v11, v12);
  sub_36790(v17);

  sub_2A6C0(v14, 115, "getedMoreThanOneEntity: ");

  return v0;
}

uint64_t sub_2A44C()
{
  v0 = sub_36030();
  v3[3] = v0;
  v3[4] = sub_2A578();
  v1 = sub_3C30(v3);
  (*(*(v0 - 8) + 104))(v1, enum case for CoreSuggestionGroups.domain(_:), v0);
  sub_35EC0();
  swift_allocObject();
  result = sub_35EB0();
  qword_596B0 = result;
  return result;
}

uint64_t sub_2A510(uint64_t a1)
{
  v2 = sub_1DC4(&qword_55078, &unk_373F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2A578()
{
  result = qword_56008;
  if (!qword_56008)
  {
    sub_36030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56008);
  }

  return result;
}

uint64_t sub_2A5D0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2A604(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

void *sub_2A648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_36260();
}

uint64_t sub_2A680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_36270();
}

uint64_t sub_2A6A0()
{
}

void sub_2A6C0(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = v3;

  v5 = a3 | 0x8000000000000000;
  Logger.debug(output:test:caller:)(*&a1, 0, *&a2);
}

uint64_t sub_2A744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_36270();
}

void sub_2A75C()
{

  sub_36920(31);
}

uint64_t sub_2A780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_36720();
}

void sub_2A7D4(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = v3;

  v5 = a3 | 0x8000000000000000;
  Logger.debug(output:test:caller:)(*&a1, 0, *&a2);
}

void sub_2A7F4(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = v3;

  v5 = a3 | 0x8000000000000000;
  Logger.debug(output:test:caller:)(*&a1, 0, *&a2);
}

void sub_2A814(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = v3;

  v5 = a3 | 0x8000000000000000;
  Logger.debug(output:test:caller:)(*&a1, 0, *&a2);
}

uint64_t sub_2A834()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_596B8);
  v1 = sub_1D8C(v0, qword_596B8);
  *v1 = sub_2877C();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_2A8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC4(&qword_55060, &qword_380E0);
  sub_4E88();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v17[-v8];
  sub_1DC4(&qword_55068, &unk_373E0);
  v10 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_36F10;
  v13 = v12 + v11;
  IsSingleAccessoryOfTypeInHomeResolver = type metadata accessor for IsSingleAccessoryOfTypeInHomeResolver();
  v15 = swift_allocObject();
  *(v15 + 16) = 0xD00000000000001DLL;
  *(v15 + 24) = 0x8000000000039CF0;
  v19[3] = IsSingleAccessoryOfTypeInHomeResolver;
  v19[4] = sub_4DB0();
  v19[0] = v15;
  sub_1DC4(&qword_55078, &unk_373F0);
  sub_35D10();
  *v13 = 3;
  sub_3BCC(v19, v13 + 8);
  *(v13 + 48) = 1;
  (*(v6 + 16))(v13 + v10[12], v9, v4);
  sub_362C0();
  sub_35D10();
  (*(v6 + 8))(v9, v4);
  sub_3D00(v19);
  sub_4E08(a1, a2);
  v18 = a2;
  sub_1F76C(sub_2AC40, v17, v12);
  swift_setDeallocating();
  return sub_39C4();
}

uint64_t sub_2ABA4(void *a1)
{
  v1 = [a1 userTask];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v1 taskType];

  v3 = sub_36350();
  if (v3 != sub_36350() || (sub_345E8(8, v4, v5) & 1) == 0)
  {
    return 0;
  }

  sub_34608(&dword_C + 1);
  return v6 & 1;
}

uint64_t sub_2AC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[6] = a2;
  sub_1DC4(&qword_553E0, &qword_37990);
  v4[9] = swift_task_alloc();
  v5 = sub_35D70();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_2AD58, 0, 0);
}

uint64_t sub_2AD58()
{
  sub_1D48(*(v0 + 48), *(*(v0 + 48) + 24));
  *(v0 + 104) = sub_35FD0();
  *(v0 + 112) = v1;
  *(v0 + 120) = swift_getObjectType();
  v3 = sub_36830();

  return _swift_task_switch(sub_2AE08, v3, v2);
}

uint64_t sub_2AE08()
{
  v1 = sub_2A05C(*(v0 + 120), *(v0 + 112));
  v3 = v2;
  swift_unknownObjectRelease();
  *(v0 + 128) = v1;
  *(v0 + 136) = v3;

  return _swift_task_switch(sub_2AE94, 0, 0);
}

uint64_t sub_2AE94()
{
  if (*(v0 + 136))
  {
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v1 = *(v0 + 64);
    v2 = sub_366C0();
    sub_1D8C(v2, static Log.suggestions);
    sub_2A624();
    sub_36920(19);
    *(v0 + 16) = v25;
    *(v0 + 24) = v26;
    v28._countAndFlagsBits = 0x74276E646C756F43;
    v28._object = 0xEE0020646E696620;
    sub_36790(v28);
    sub_36790(v1[1]);
    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    sub_36790(v29);
    sub_1DC4(&qword_56148, &qword_38AF8);
    sub_369A0();
    sub_2B444();
    v10 = 27;
LABEL_9:
    Logger.warning(output:test:file:function:line:)(*&v3, v5, *&v6, *&v8, v10);

    v14 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  sub_364E0();
  if (sub_3D74(v11, 1, v12) == 1)
  {
    sub_120EC(*(v0 + 72));
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v13 = sub_366C0();
    sub_1D8C(v13, static Log.suggestions);
    sub_2A624();
    sub_36920(35);

    v30._countAndFlagsBits = sub_36360();
    sub_36790(v30);

    sub_2B444();
    v10 = 31;
    goto LABEL_9;
  }

  (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 72), *(v0 + 80));
  if (qword_54D20 != -1)
  {
    sub_3E80(&qword_54D20);
  }

  v16 = *(v0 + 88);
  v15 = *(v0 + 96);
  v17 = *(v0 + 80);
  v18 = *(v0 + 64);
  v19 = sub_366C0();
  sub_1D8C(v19, static Log.suggestions);
  sub_2A624();
  sub_36920(27);
  *(v0 + 32) = v25;
  *(v0 + 40) = v26;
  v31._countAndFlagsBits = 0xD000000000000013;
  v31._object = 0x8000000000039DF0;
  sub_36790(v31);
  sub_36790(v18[1]);
  v32._countAndFlagsBits = 544175136;
  v32._object = 0xE400000000000000;
  sub_36790(v32);
  sub_369A0();
  v20._object = 0x800000000003D810;
  v20._countAndFlagsBits = 0xD000000000000078;
  Logger.debug(output:test:caller:)(*(v0 + 32), 0, v20);

  sub_1DC4(&qword_54E78, &unk_37010);
  v14 = swift_allocObject();
  *(v14 + 1) = xmmword_36F10;
  v21 = sub_35D60();
  v14[7] = &type metadata for String;
  v14[4] = v21;
  v14[5] = v22;
  (*(v16 + 8))(v15, v17);
LABEL_13:

  v23 = *(v0 + 8);

  return v23(v14);
}

void *sub_2B290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = 0x7475626972747461;
  v8[3] = 0xE900000000000065;
  sub_3173C(a1, a2, a3, a4, a5, a6, a7, a8);
  v8[4] = &off_4E508;
  return v8;
}

uint64_t sub_2B2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BA0;

  return sub_2AC5C(v6, a2, a3);
}

uint64_t sub_2B404(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttributeResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2B468()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_596D0);
  v1 = sub_1D8C(v0, qword_596D0);
  *v1 = sub_287D8();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

unint64_t sub_2B510(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_345E8(13, v4, v5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2B59C(uint64_t a1)
{
  result = sub_2C18C(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_2C1CC(result, v3, 0, a1);
  }
}

uint64_t sub_2B618()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_596E8);
  v1 = sub_1D8C(v0, qword_596E8);
  *v1 = sub_28834();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_2B6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0xD000000000000010, 0x8000000000039B30);
  v8[3] = v4;
  v8[4] = sub_2C21C(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator, &unk_37F90);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_2B7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = a1;
  v2 = sub_1DC4(&qword_55060, &qword_380E0);
  sub_4E88();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  sub_1DC4(&qword_55068, &unk_373E0);
  v8 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v33 = *(*v8 + 72);
  v10 = v33;
  v11 = swift_allocObject();
  v36 = v11;
  *(v11 + 16) = xmmword_37020;
  v12 = v11 + v9;
  v13 = type metadata accessor for AccessoryTypeResolver();
  v14 = swift_allocObject();
  strcpy((v14 + 16), "accessoryType");
  *(v14 + 30) = -4864;
  v44 = v13;
  v45 = sub_2C21C(&qword_55238, type metadata accessor for AccessoryTypeResolver, &unk_38CE0);
  v43[0] = v14;
  sub_1DC4(&qword_55078, &unk_373F0);
  v34 = sub_352A0;
  sub_6E54(sub_352A0, v15, (&type metadata for Any + 1));
  *v12 = 0;
  sub_3BCC(v43, v12 + 8);
  *(v12 + 48) = 257;
  v16 = v8[12];
  v40 = *(v4 + 16);
  v32 = v2;
  v40(v12 + v16, v7, v2);
  v35 = sub_362C0();
  sub_6E54(sub_2C0D4, v17, v35);
  v18 = *(v4 + 8);
  v39 = v4 + 8;
  v18(v7, v2);
  v19 = v18;
  sub_3D00(v43);
  v20 = v12 + v10;
  v21 = type metadata accessor for RoomNameResolver();
  v22 = swift_allocObject();
  *(v22 + 16) = 0x656D614E6D6F6F72;
  *(v22 + 24) = 0xE800000000000000;
  v44 = v21;
  v45 = sub_2C21C(&qword_551B8, type metadata accessor for RoomNameResolver, &unk_38190);
  v43[0] = v22;
  sub_6E54(sub_352A0, v23, (&type metadata for Any + 1));
  *v20 = 1;
  sub_3BCC(v43, v20 + 8);
  *(v20 + 48) = 257;
  v24 = v32;
  v40(v20 + v8[12], v7, v32);
  sub_35D10();
  v19(v7, v24);
  sub_3D00(v43);
  v25 = v12 + 2 * v33;
  v26 = type metadata accessor for SameTypeMultipleRoomsResolver();
  v27 = swift_allocObject();
  *(v27 + 16) = 0xD000000000000015;
  *(v27 + 24) = 0x8000000000039D10;
  v44 = v26;
  v45 = sub_2C21C(&qword_56240, type metadata accessor for SameTypeMultipleRoomsResolver, &unk_38958);
  v43[0] = v27;
  sub_6E54(v34, v28, (&type metadata for Any + 1));
  *v25 = 4;
  sub_3BCC(v43, v25 + 8);
  *(v25 + 48) = 0;
  v40(v25 + v8[12], v7, v24);
  sub_35D10();
  v19(v7, v24);
  sub_3D00(v43);
  v29 = v37;
  sub_4E08(v38, v37);
  v42 = v29;
  sub_1F76C(sub_2C100, v41, v36);
  swift_setDeallocating();
  return sub_39C4();
}

uint64_t sub_2BD14@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_1DC4(&qword_553E0, &qword_37990);
  __chkstk_darwin(v2);
  v4 = &v16[-v3];
  v5 = sub_1DC4(&qword_56248, &qword_38B88);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v16[-v9];
  v11 = sub_362A0();
  sub_2B59C(v11);
  v13 = v12;

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    sub_364D0();
    v14 = 0;
  }

  sub_3D4C(v10, v14, 1, v2);
  sub_11528(v10, v8, &qword_56248, &qword_38B88);
  if (sub_3D74(v8, 1, v2) == 1)
  {
    result = sub_11590(v10, &qword_56248, &qword_38B88);
    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    sub_2C11C(v8, v4);
    sub_2BF0C(v4, a1);
    sub_11590(v4, &qword_553E0, &qword_37990);
    return sub_11590(v10, &qword_56248, &qword_38B88);
  }

  return result;
}

uint64_t sub_2BF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC4(&qword_553E0, &qword_37990);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_11528(a1, &v11 - v5, &qword_553E0, &qword_37990);
  v7 = sub_35D70();
  if (sub_3D74(v6, 1, v7) == 1)
  {
    result = sub_11590(v6, &qword_553E0, &qword_37990);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v9 = sub_35D60();
    *(a2 + 24) = &type metadata for String;
    *a2 = v9;
    *(a2 + 8) = v10;
    return (*(*(v7 - 8) + 8))(v6, v7);
  }

  return result;
}

unint64_t sub_2C040(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_345E8(27, v4, v5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC4(&qword_553E0, &qword_37990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2C1CC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2C21C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2C284()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v0[9] = v2;
  v3 = *(v1 + 24);
  v0[10] = v3;
  type metadata accessor for SuggestionEntityRetrieval();
  v0[11] = swift_initStackObject();

  v0[12] = sub_2DDB0(v2, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_2C364;

  return sub_2FC84();
}

uint64_t sub_2C364(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_2C484, 0, 0);
}

uint64_t sub_2C484(uint64_t a1)
{
  v19 = v1;
  if (v1[14])
  {
    v2 = sub_365F0();
    v4 = v3;

    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v6 = v1[9];
    v5 = v1[10];
    v7 = sub_366C0();
    sub_1D8C(v7, static Log.suggestions);
    sub_36920(27);

    v18._countAndFlagsBits = 0xD000000000000013;
    v18._object = 0x8000000000039DF0;
    v21._countAndFlagsBits = v6;
    v21._object = v5;
    sub_36790(v21);
    v22._countAndFlagsBits = 544175136;
    v22._object = 0xE400000000000000;
    sub_36790(v22);
    v23._countAndFlagsBits = v2;
    v23._object = v4;
    sub_36790(v23);
    v8._countAndFlagsBits = 0xD000000000000013;
    v9._object = 0x800000000003D900;
    v8._object = 0x8000000000039DF0;
    v9._countAndFlagsBits = 0xD000000000000078;
    Logger.debug(output:test:caller:)(v8, 0, v9);

    sub_1DC4(&qword_54E78, &unk_37010);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_36F10;
    v10[7] = &type metadata for String;
    v10[4] = v2;
    v10[5] = v4;
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v12 = v1[9];
    v11 = v1[10];
    v13 = sub_366C0();
    sub_1D8C(v13, static Log.suggestions);
    sub_36920(16);

    strcpy(&v18, "Couldn't find ");
    HIBYTE(v18._object) = -18;
    v24._countAndFlagsBits = v12;
    v24._object = v11;
    sub_36790(v24);
    v14._countAndFlagsBits = 0xD00000000000003FLL;
    v15._object = 0x800000000003D900;
    v14._object = 0x800000000003C7F0;
    v15._countAndFlagsBits = 0xD000000000000078;
    Logger.warning(output:test:file:function:line:)(v18, 0, v15, v14, 18);

    v10 = _swiftEmptyArrayStorage;
  }

  v16 = v1[1];

  return v16(v10);
}

uint64_t sub_2C734()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BA0;

  return sub_2C264();
}

uint64_t sub_2C82C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SceneNameResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2C86C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  sub_1DC4(&qword_553E0, &qword_37990);
  v3[6] = swift_task_alloc();
  v4 = sub_35D70();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_2C964, 0, 0);
}

uint64_t sub_2C964()
{
  sub_1D48(*(v0 + 32), *(*(v0 + 32) + 24));
  *(v0 + 80) = sub_35FD0();
  *(v0 + 88) = v1;
  *(v0 + 96) = swift_getObjectType();
  v3 = sub_36830();

  return _swift_task_switch(sub_2CA14, v3, v2);
}

uint64_t sub_2CA14()
{
  v1 = sub_29A2C(*(v0 + 96), *(v0 + 88));
  v3 = v2;
  swift_unknownObjectRelease();
  *(v0 + 104) = v1;
  *(v0 + 112) = v3;

  return _swift_task_switch(sub_2CAA0, 0, 0);
}

uint64_t sub_2CAA0()
{
  if (*(v0 + 112))
  {
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v1 = *(v0 + 40);
    v2 = sub_366C0();
    sub_1D8C(v2, static Log.suggestions);
    sub_2A624();
    sub_36920(16);

    sub_36790(v1[1]);
    sub_2CF94();
    v10 = 18;
LABEL_9:
    Logger.warning(output:test:file:function:line:)(*&v3, v5, *&v6, *&v8, v10);

    v14 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  sub_364D0();
  if (sub_3D74(v11, 1, v12) == 1)
  {
    sub_120EC(*(v0 + 48));
    if (qword_54D20 != -1)
    {
      sub_3E80(&qword_54D20);
    }

    v13 = sub_366C0();
    sub_1D8C(v13, static Log.suggestions);
    sub_2A624();
    sub_36920(35);

    v28._countAndFlagsBits = sub_36320();
    sub_36790(v28);

    sub_2CF94();
    v10 = 23;
    goto LABEL_9;
  }

  (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 48), *(v0 + 56));
  if (qword_54D20 != -1)
  {
    sub_3E80(&qword_54D20);
  }

  v16 = *(v0 + 64);
  v15 = *(v0 + 72);
  v17 = *(v0 + 56);
  v18 = *(v0 + 40);
  v19 = sub_366C0();
  sub_1D8C(v19, static Log.suggestions);
  sub_2A624();
  sub_36920(27);
  *(v0 + 16) = v25;
  *(v0 + 24) = v26;
  v29._countAndFlagsBits = 0xD000000000000013;
  v29._object = 0x8000000000039DF0;
  sub_36790(v29);
  sub_36790(v18[1]);
  v30._countAndFlagsBits = 544175136;
  v30._object = 0xE400000000000000;
  sub_36790(v30);
  sub_369A0();
  v20._object = 0x800000000003D9C0;
  v20._countAndFlagsBits = 0xD00000000000007CLL;
  Logger.debug(output:test:caller:)(*(v0 + 16), 0, v20);

  sub_1DC4(&qword_54E78, &unk_37010);
  v14 = swift_allocObject();
  *(v14 + 1) = xmmword_36F10;
  v21 = sub_35D60();
  v14[7] = &type metadata for String;
  v14[4] = v21;
  v14[5] = v22;
  (*(v16 + 8))(v15, v17);
LABEL_13:

  v23 = *(v0 + 8);

  return v23(v14);
}

uint64_t sub_2CE54(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BA0;

  return sub_2C86C(v4, a2);
}

uint64_t sub_2CF54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessoryTypeResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2CFB8()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_59700);
  v1 = sub_1D8C(v0, qword_59700);
  *v1 = &unk_38D10;
  v1[1] = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_2D054(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_14958;

  return sub_2D0F4(a1, a2);
}

uint64_t sub_2D0F4(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  sub_1DC4(&qword_553E0, &qword_37990);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_35D90();
  v2[28] = swift_task_alloc();
  sub_1DC4(&qword_55388, &unk_37950);
  v2[29] = swift_task_alloc();
  v3 = sub_35CF0();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_2D25C, 0, 0);
}

uint64_t sub_2D25C()
{
  v1 = *(v0 + 200);
  sub_1D48(v1, v1[3]);
  v2 = sub_35F70();
  sub_162C8(v2, (v0 + 16), 0x656D614E6D6F6F72, 0xE800000000000000);

  if (*(v0 + 40))
  {
    if (sub_15C08(v0 + 160, v0 + 16, v3, &type metadata for String))
    {
      v4 = *(v0 + 168);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_11590(v0 + 16, &qword_55078, &unk_373F0);
    v4 = 0;
  }

  v5 = sub_35F70();
  sub_162C8(v5, (v0 + 48), 0x7475626972747461, 0xE900000000000065);

  if (*(v0 + 72))
  {
    if (sub_15C08(v0 + 144, v0 + 48, v6, &type metadata for String))
    {
      v7 = *(v0 + 152);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_11590(v0 + 48, &qword_55078, &unk_373F0);
    v7 = 0;
  }

  v8 = sub_35F70();
  sub_162C8(v8, (v0 + 80), 0x65756C6176, 0xE500000000000000);

  if (!*(v0 + 104))
  {
    sub_11590(v0 + 80, &qword_55078, &unk_373F0);
LABEL_18:
    v11 = 0;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    goto LABEL_19;
  }

  v9 = sub_36480();
  if ((sub_15C08(v0 + 184, v0 + 80, v10, v9) & 1) == 0)
  {
    goto LABEL_18;
  }

  v11 = *(v0 + 184);
  sub_1D48(*(v0 + 200), v1[3]);

  sub_35F80();
  sub_36430();

  if (!v11)
  {
    goto LABEL_18;
  }

  sub_36420();

  if (!*(v0 + 136))
  {
LABEL_19:
    sub_11590(v0 + 112, &qword_55078, &unk_373F0);
    goto LABEL_20;
  }

  v12 = sub_364B0();
  if (sub_15C08(v0 + 176, v0 + 112, v13, v12))
  {
    v14 = *(v0 + 176);
    sub_1D48(*(v0 + 200), v1[3]);

    sub_35F80();
    sub_36490();

    goto LABEL_21;
  }

LABEL_20:
  v14 = 0;
LABEL_21:
  *(v0 + 264) = v11;
  *(v0 + 272) = v14;
  if (qword_54D40 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 224);
  v15 = *(v0 + 232);
  v17 = *(v0 + 200);
  sub_35CD0();
  sub_1D48(v17, v1[3]);
  v18 = sub_35F80();
  sub_35D80();
  type metadata accessor for HomeSuggestionCATs(0);
  swift_allocObject();
  *(v0 + 280) = HomeSuggestionCATs.init(templateDir:options:globals:)(v15, v16, v18);
  if (v4)
  {
    sub_36740();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v0 + 216);
  v21 = sub_35D70();
  v22 = 1;
  sub_3D4C(v20, v19, 1, v21);
  if (v7)
  {
    sub_36740();

    v22 = 0;
  }

  sub_3D4C(*(v0 + 208), v22, 1, v21);
  v23 = swift_task_alloc();
  *(v0 + 288) = v23;
  *v23 = v0;
  v23[1] = sub_15050;

  return sub_10FD8();
}

uint64_t sub_2D708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0x65706D6554746573, 0xEE00657275746172);
  v8[3] = v4;
  v8[4] = sub_12154(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator, &unk_37F90);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_2D814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = a1;
  v2 = sub_1DC4(&qword_55060, &qword_380E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - v4;
  sub_1DC4(&qword_55068, &unk_373E0);
  v6 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v7 = *v6;
  v45 = *(*v6 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v46 = v9;
  *(v9 + 16) = xmmword_37020;
  v10 = v9 + v8;
  v11 = type metadata accessor for RoomNameResolver();
  v12 = swift_allocObject();
  *(v12 + 16) = 0x656D614E6D6F6F72;
  *(v12 + 24) = 0xE800000000000000;
  v56 = v11;
  v57 = sub_12154(&qword_551B8, type metadata accessor for RoomNameResolver, &unk_38190);
  v55[0] = v12;
  sub_1DC4(&qword_55078, &unk_373F0);
  v43 = sub_352A0;
  sub_1219C(sub_352A0, v13, (&type metadata for Any + 1));
  *v10 = 1;
  sub_3BCC(v55, v10 + 8);
  *(v10 + 48) = 1;
  v14 = v6[12];
  v44 = *(v3 + 16);
  v42 = v2;
  v44(v10 + v14, v5, v2);
  v52 = sub_362C0();
  v51 = sub_20BC0;
  sub_1219C(sub_20BC0, v15, v52);
  v16 = *(v3 + 8);
  v49 = v3 + 8;
  v50 = v16;
  v16(v5, v2);
  sub_3D00(v55);
  v17 = v45;
  v18 = v10 + v45;
  v19 = type metadata accessor for AttributeResolver();
  v20 = swift_allocObject();
  v28 = sub_2B290(v20, v21, v22, v23, v24, v25, v26, v27);
  v56 = v19;
  v57 = sub_12154(&qword_55468, type metadata accessor for AttributeResolver, &unk_38AC0);
  v55[0] = v28;
  sub_1219C(sub_352A0, v29, (&type metadata for Any + 1));
  *v18 = 8;
  sub_3BCC(v55, v18 + 8);
  *(v18 + 48) = 1;
  v30 = v42;
  v31 = v44;
  v44(v18 + v6[12], v5, v42);
  sub_1219C(v51, v32, v52);
  v33 = v30;
  v50(v5, v30);
  sub_3D00(v55);
  v34 = v10 + 2 * v17;
  v35 = type metadata accessor for ValueResolver();
  swift_allocObject();
  v36 = sub_273D4();
  v56 = v35;
  v57 = sub_12154(&qword_55470, type metadata accessor for ValueResolver, &unk_387C8);
  v55[0] = v36;
  sub_1219C(v43, v37, (&type metadata for Any + 1));
  *v34 = 9;
  sub_3BCC(v55, v34 + 8);
  *(v34 + 48) = 0;
  v31(v34 + v6[12], v5, v33);
  sub_1219C(v51, v38, v52);
  v50(v5, v33);
  sub_3D00(v55);
  v39 = v47;
  sub_4E08(v48, v47);
  v54 = v39;
  sub_1F76C(sub_2DD94, v53, v46);
  swift_setDeallocating();
  return sub_39C4();
}

unint64_t sub_2DD00(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_345E8(6, v4, v5) & 1;
  }

  else
  {
    return 0;
  }
}

void *sub_2DDB0(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;

  sub_36920(29);

  sub_3ED0();
  v7 = v5;
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  sub_36790(v8);

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  sub_36790(v9);
  v2[4] = 0xD00000000000001ALL;
  v2[5] = v7;
  return v2;
}

uint64_t sub_2DE78()
{
  sub_116D0();
  if (qword_54CA8 != -1)
  {
    swift_once();
  }

  v1 = qword_594C8;
  *(v0 + 16) = qword_594C8;

  return _swift_task_switch(sub_2DF0C, v1, 0);
}

uint64_t sub_2DF0C()
{
  sub_116D0();
  *(v0 + 24) = *(*(v0 + 16) + 112);

  return _swift_task_switch(sub_2DF7C, 0, 0);
}

uint64_t sub_2DF7C()
{
  if (*(v0 + 24))
  {
    if (qword_54D20 != -1)
    {
      sub_33224();
      swift_once();
    }

    v1 = sub_366C0();
    sub_1D8C(v1, static Log.suggestions);
    sub_36920(45);

    v2 = sub_365F0();
    v4 = v3;

    v17._countAndFlagsBits = v2;
    v17._object = v4;
    sub_36790(v17);

    v18._countAndFlagsBits = 0xD00000000000001FLL;
    v18._object = 0x800000000003DF80;
    sub_36790(v18);
    sub_33254();
    Logger.debug(output:test:caller:)(v5, v6, v7);
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_33224();
      swift_once();
    }

    v8 = sub_366C0();
    sub_333B0(v8, static Log.suggestions);
    sub_33254();
    v9._object = 0xE900000000000029;
    Logger.warning(output:test:file:function:line:)(v10, v11, v12, v9, 35);
  }

  sub_332EC();
  v14 = *(v0 + 24);

  return v13(v14);
}

uint64_t sub_2E170()
{
  sub_116D0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  sub_3335C(v3);

  return sub_2DE5C();
}

uint64_t sub_2E1F8()
{
  sub_116D0();
  sub_1AA08();
  sub_1AAB4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = sub_1A8D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_2E2E0()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 16);
    v2 = sub_362E0();
    v3 = sub_309A8(v1, v2, 0, 1);
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_33224();
      swift_once();
    }

    v4 = sub_366C0();
    sub_333B0(v4, static Log.suggestions);
    sub_332B8();
    v5._countAndFlagsBits = 0xD000000000000027;
    Logger.warning(output:test:file:function:line:)(v6, v7, v8, v5, 47);
    v3 = 0;
  }

  sub_332EC();

  return v9(v3);
}

uint64_t sub_2E418()
{
  sub_116D0();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_366C0();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[22] = v4;
  *v4 = v1;
  v4[1] = sub_2E568;

  return sub_2DE5C();
}

uint64_t sub_2E568()
{
  sub_116D0();
  sub_1AAB4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = v3;

  return _swift_task_switch(sub_2E688, 0, 0);
}

void sub_2E688()
{
  v254 = v0;
  v1 = &HasTargetedMoreThanOneEntityResolver;
  if (!v0[23])
  {
    goto LABEL_96;
  }

  v2 = v0[12];
  v3 = *(v2 + 64);
  v232 = v2 + 64;
  v235 = v0[13];
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & v3;
  v231 = (63 - v5) >> 6;
  sub_3ED0();
  v234 = v7;
  v244 = (v8 + 8);
  v245 = v9;
  v233 = 0x800000000003DD60;
  v226 = 0x800000000003DDE0;
  v227 = "supportedAttributes: ";
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v236 = v2;
LABEL_5:
  v242 = v2;
  while (1)
  {
    if (v6)
    {
      goto LABEL_12;
    }

    sub_33368();
    do
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      if (v12 >= v231)
      {
        v122 = v247;

        if (!*(v2 + 16))
        {
          if (qword_54D20 != -1)
          {
            sub_33224();
            swift_once();
          }

          sub_333B0(v122[14], static Log.suggestions);
          v184 = *(v235 + 32);
          v183 = *(v235 + 40);

          sub_332C8();
          v186._countAndFlagsBits = v185 + 31;
          v186._object = 0x800000000003DEE0;
          v187._countAndFlagsBits = v184;
          v187._object = v183;
          Logger.debug(output:test:caller:)(v186, 1, v187);

          goto LABEL_137;
        }

        v0 = (v2 + 64);
        v123 = -1;
        v124 = -1 << *(v2 + 32);
        if (-v124 < 64)
        {
          v123 = ~(-1 << -v124);
        }

        v125 = v123 & *(v2 + 64);
        v126 = (63 - v124) >> 6;
        swift_bridgeObjectRetain_n();
        v127 = 0;
        v128 = _swiftEmptyArrayStorage;
        do
        {
          while (1)
          {
            if (v125)
            {
              goto LABEL_82;
            }

            do
            {
              v129 = v127 + 1;
              if (__OFADD__(v127, 1))
              {
                goto LABEL_145;
              }

              if (v129 >= v126)
              {

                if (qword_54D20 != -1)
                {
                  sub_33224();
                  swift_once();
                }

                v142 = v247[18];
                v143 = sub_1D8C(v247[14], static Log.suggestions);
                v144 = *v245;
                v248 = v143;
                v246 = v144;
                v144(v142);
                v252 = 0;
                v253 = 0xE000000000000000;
                sub_36920(32);

                sub_3ED0();
                v252 = 0xD00000000000001ELL;
                v253 = v145;
                v146 = v128[2];
                if (v146)
                {
                  v251 = _swiftEmptyArrayStorage;
                  sub_33390();
                  v147 = v251;
                  v148 = v128 + 4;
                  do
                  {
                    ++v148;
                    v149 = sub_36360();
                    v151 = v150;
                    v251 = v147;
                    v153 = v147[2];
                    v152 = v147[3];
                    if (v153 >= v152 >> 1)
                    {
                      v155 = sub_33298(v152);
                      sub_19F6C(v155, v153 + 1, 1);
                      v147 = v251;
                    }

                    v147[2] = v153 + 1;
                    v154 = &v147[2 * v153];
                    v154[4] = v149;
                    v154[5] = v151;
                    --v146;
                  }

                  while (v146);
                }

                v157 = v247[17];
                v156 = v247[18];
                v158 = v247[14];
                v159 = sub_36810();
                v161 = v160;

                v259._countAndFlagsBits = v159;
                v259._object = v161;
                sub_36790(v259);

                v163 = *(v235 + 32);
                v162 = *(v235 + 40);

                sub_33278();
                Logger.debug(output:test:caller:)(v164, v165, v166);

                v249 = *v244;
                (v249)(v156, v158);
                v167 = sub_30DF0(v128);
                v169 = v168;

                (v246)(v157, v248, v158);
                v252 = 0;
                v253 = 0xE000000000000000;
                sub_36920(58);
                sub_33288();
                v260._countAndFlagsBits = v170 - 12;
                v260._object = (v171 | 0x8000000000000000);
                sub_36790(v260);
                v172 = sub_332D4();
                if ((v169 & 1) == 0)
                {
                  v172 = sub_36360();
                }

                v0 = v247;
                v174 = v247[17];
                v175 = v247[14];
                v247[4] = v172;
                v0[5] = v173;
                v176 = sub_1DC4(&qword_54F68, &qword_37150);
                v261._countAndFlagsBits = sub_36720();
                sub_36790(v261);

                sub_33288();
                v262._countAndFlagsBits = v177 - 4;
                v262._object = (v178 | 0x8000000000000000);
                sub_36790(v262);

                sub_33278();
                Logger.debug(output:test:caller:)(v179, v180, v181);

                (v249)(v174, v175);
                v243 = v176;
                if (v169)
                {
                  v182 = 0;
                }

                else
                {
                  v240 = v163;
                  v188 = v0[12];
                  v189 = -1;
                  v190 = -1 << *(v236 + 32);
                  if (-v190 < 64)
                  {
                    v189 = ~(-1 << -v190);
                  }

                  v191 = v189 & *(v236 + 64);
                  v192 = (63 - v190) >> 6;

                  v193 = 0;
                  v241 = _swiftEmptyArrayStorage;
                  sub_33368();
                  while (v191)
                  {
LABEL_121:
                    v196 = __clz(__rbit64(v191));
                    v191 &= v191 - 1;
                    v197 = (v193 << 9) | (8 * v196);
                    v198 = *(*(v236 + 48) + v197);
                    v199 = *(*(v188 + 56) + v197);

                    v200 = sub_15C20(v167, v199);

                    sub_33368();
                    if (v200)
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v241 = sub_312F8(0, v241[2] + 1, 1, v241, &qword_55760, &qword_38038, sub_1A854);
                      }

                      v202 = v241[2];
                      v201 = v241[3];
                      v194 = v232;
                      if (v202 >= v201 >> 1)
                      {
                        sub_312F8((v201 > 1), v202 + 1, 1, v241, &qword_55760, &qword_38038, sub_1A854);
                        sub_33368();
                        v241 = v204;
                      }

                      v203 = v241;
                      v241[2] = v202 + 1;
                      v203[v202 + 4] = v198;
                    }
                  }

                  v0 = v247;
                  while (1)
                  {
                    v195 = v193 + 1;
                    if (__OFADD__(v193, 1))
                    {
                      goto LABEL_146;
                    }

                    if (v195 >= v192)
                    {
                      break;
                    }

                    v191 = *(v194 + 8 * v195);
                    ++v193;
                    if (v191)
                    {
                      v193 = v195;
                      goto LABEL_121;
                    }
                  }

                  sub_362E0();
                  v205 = sub_332E0();
                  v182 = sub_309A8(v205, v206, v167, 0);

                  v163 = v240;
                }

                (v246)(v0[16], v248, v0[14]);
                sub_332A8();
                sub_36920(90);
                v263._object = 0x800000000003DE80;
                v263._countAndFlagsBits = 0xD000000000000024;
                sub_36790(v263);
                v207 = sub_332D4();
                if ((v169 & 1) == 0)
                {
                  v207 = sub_36360();
                }

                v0[6] = v207;
                v0[7] = v208;
                v264._countAndFlagsBits = sub_36720();
                sub_36790(v264);

                sub_33288();
                v265._countAndFlagsBits = v209 + 3;
                v265._object = (v210 | 0x8000000000000000);
                sub_36790(v265);
                if (v182)
                {
                  v211 = sub_365E0();
                }

                else
                {
                  v211 = sub_332D4();
                }

                v0[8] = v211;
                v0[9] = v212;
                v266._countAndFlagsBits = sub_36720();
                sub_36790(v266);

                v267._countAndFlagsBits = 0x3A65707974202D20;
                v267._object = 0xE900000000000020;
                sub_36790(v267);
                v213 = v163;
                if (v182)
                {
                  sub_36680();
                  v214 = sub_36320();
                }

                else
                {
                  v214 = sub_332D4();
                }

                v216 = v0[16];
                v217 = v0[14];
                v0[10] = v214;
                v0[11] = v215;
                v268._countAndFlagsBits = sub_36720();
                sub_36790(v268);

                v218 = v252;
                v219 = v253;

                v220._countAndFlagsBits = v218;
                v220._object = v219;
                v221._countAndFlagsBits = v213;
                v221._object = v162;
                Logger.debug(output:test:caller:)(v220, 1, v221);

                (v249)(v216, v217);

LABEL_137:

                sub_33374();

                __asm { BRAA            X4, X16 }
              }

              v125 = v0[v129];
              ++v127;
            }

            while (!v125);
            v127 = v129;
LABEL_82:
            v130 = *(*(v242 + 56) + ((v127 << 9) | (8 * __clz(__rbit64(v125)))));
            v131 = *(v130 + 16);
            v132 = v128[2];
            v133 = v132 + v131;
            if (__OFADD__(v132, v131))
            {
              goto LABEL_147;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v133 > v128[3] >> 1)
            {
              if (v132 <= v133)
              {
                v135 = v132 + v131;
              }

              else
              {
                v135 = v132;
              }

              v128 = sub_312F8(isUniquelyReferenced_nonNull_native, v135, 1, v128, &qword_55788, &qword_38E30, sub_1A854);
            }

            v125 &= v125 - 1;
            if (!*(v130 + 16))
            {
              break;
            }

            v136 = v128[2];
            if ((v128[3] >> 1) - v136 < v131)
            {
              goto LABEL_149;
            }

            memcpy(&v128[v136 + 4], (v130 + 32), 8 * v131);

            if (v131)
            {
              v137 = v128[2];
              v67 = __OFADD__(v137, v131);
              v138 = v137 + v131;
              if (v67)
              {
                goto LABEL_152;
              }

              v128[2] = v138;
            }
          }
        }

        while (!v131);
        __break(1u);
LABEL_96:
        if (v1[46].ivars == -1)
        {
LABEL_97:
          sub_333B0(v0[14], static Log.suggestions);
          v139._countAndFlagsBits = 0xD000000000000037;
          v139._object = 0x800000000003DCA0;
          v140._countAndFlagsBits = 0xD000000000000076;
          v140._object = 0x800000000003DB30;
          v141._countAndFlagsBits = 0xD000000000000040;
          v141._object = 0x800000000003DCE0;
          Logger.warning(output:test:file:function:line:)(v139, 0, v140, v141, 59);
          goto LABEL_137;
        }

LABEL_153:
        sub_33224();
        swift_once();
        goto LABEL_97;
      }

      v6 = *(v11 + 8 * v12);
      ++v10;
    }

    while (!v6);
    v10 = v12;
LABEL_12:
    v13 = v247[12];
    v240 = (v6 - 1) & v6;
    v14 = *(*(v236 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v6)))));
    v246 = sub_1632C(v14, v13);
    v15 = sub_362E0();
    v252 = _swiftEmptyArrayStorage;
    v16 = sub_3E5C(v15);
    v17 = 0;
    v248 = v14;
LABEL_13:
    if (v16 != v17)
    {
      break;
    }

    v18 = v252;
    if (qword_54D20 != -1)
    {
      sub_33224();
      swift_once();
    }

    v19 = v247[21];
    v20 = v247[14];
    v21 = sub_1D8C(v20, static Log.suggestions);
    v252 = 0;
    v253 = 0xE000000000000000;
    sub_36920(17);

    v252 = 0x6574726F70707573;
    v253 = 0xEF203A6570795464;
    v255._countAndFlagsBits = sub_36320();
    sub_36790(v255);

    v22 = v252;
    v23 = v253;
    v0 = *(v235 + 40);
    v243 = *(v235 + 32);
    v24 = v243;

    v25._countAndFlagsBits = v22;
    v25._object = v23;
    v26._countAndFlagsBits = v24;
    v26._object = v0;
    Logger.debug(output:test:caller:)(v25, 1, v26);
    v239 = v0;

    v27 = *v245;
    v241 = v21;
    v238 = v27;
    (v27)(v19, v21, v20);
    v252 = 0;
    v253 = 0xE000000000000000;
    sub_36920(38);

    sub_332C8();
    v252 = v28;
    v253 = v234;
    v29 = sub_3E5C(v18);
    v249 = v18;
    if (v29)
    {
      v30 = v29;
      v251 = _swiftEmptyArrayStorage;
      sub_19F6C(0, v29 & ~(v29 >> 63), 0);
      if (v30 < 0)
      {
        goto LABEL_148;
      }

      v31 = 0;
      v32 = v251;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          sub_36930();
        }

        else
        {
        }

        v33 = sub_365E0();
        v35 = v34;

        v251 = v32;
        v37 = v32[2];
        v36 = v32[3];
        if (v37 >= v36 >> 1)
        {
          v39 = sub_33298(v36);
          sub_19F6C(v39, v37 + 1, 1);
          v32 = v251;
        }

        ++v31;
        v32[2] = v37 + 1;
        v38 = &v32[2 * v37];
        v38[4] = v33;
        v38[5] = v35;
      }

      while (v30 != v31);
    }

    v40 = v239;
    v42 = v247[20];
    v41 = v247[21];
    v43 = v247[14];
    v44 = sub_36810();
    v46 = v45;

    v256._countAndFlagsBits = v44;
    v256._object = v46;
    sub_36790(v256);

    v47 = v252;
    v48 = v253;

    v49._countAndFlagsBits = v47;
    v49._object = v48;
    v50 = v243;
    v51._countAndFlagsBits = v243;
    v51._object = v40;
    Logger.debug(output:test:caller:)(v49, 1, v51);

    v52 = *v244;
    (*v244)(v41, v43);
    (v238)(v42, v241, v43);
    sub_332A8();
    sub_36920(23);

    sub_332C8();
    v252 = v53 - 15;
    v253 = v233;
    v0 = v248;
    if (v246)
    {
      v2 = v242;
      if (*(v246 + 16))
      {
        v54 = sub_36360();
      }

      else
      {
        v54 = sub_332D4();
      }
    }

    else
    {
      v54 = 0;
      v55 = 1;
      v2 = v242;
    }

    v56 = v247;
    v57 = v247[20];
    v58 = v247[14];
    v247[2] = v54;
    v56[3] = v55;
    sub_1DC4(&qword_56548, &qword_38E18);
    v257._countAndFlagsBits = sub_36720();
    sub_36790(v257);

    sub_33278();
    Logger.debug(output:test:caller:)(v59, v60, v61);

    v52(v57, v58);
    v62 = sub_3E5C(v249);
    if (v62)
    {
      if (v246)
      {
        v64 = v62;
        v65 = 0;
        v250 = _swiftEmptyArrayStorage;
        v230 = v249 & 0xC000000000000001;
        v228 = v249 + 32;
        v229 = (v246 + 32);
        v66 = v225;
        while (v65 != v64)
        {
          if (v230)
          {
            sub_36930();
          }

          else
          {
            if (v65 >= *(v249 + 16))
            {
              goto LABEL_151;
            }
          }

          v67 = __OFADD__(v65++, 1);
          if (v67)
          {
            goto LABEL_150;
          }

          v68 = sub_36660();
          sub_33124();
          v69 = sub_36850();
          v251 = v69;
          v70 = *(v68 + 16);
          if (v70)
          {
            v71 = 32;
            do
            {
              sub_31E18(&v252, *(v68 + v71));
              v71 += 8;
              --v70;
            }

            while (v70);

            v72 = v251;
          }

          else
          {
            v72 = v69;
          }

          v73 = v246;
          v251 = sub_36850();
          v74 = *(v73 + 16);
          for (i = v229; v74; --v74)
          {
            v76 = *i++;
            sub_31E18(&v252, v76);
          }

          v77 = *(v72 + 32);
          v78 = v77 & 0x3F;
          v66 = ((1 << v77) + 63) >> 6;

          if (v78 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
          {
            __chkstk_darwin(isStackAllocationSafe);
            sub_31DB4(0, v66, &v224 - ((8 * v66 + 15) & 0x3FFFFFFFFFFFFFF0));
            sub_33348();
            v84 = sub_32210(v80, v81, v82, v83);

            if (v66)
            {
              goto LABEL_142;
            }

            swift_bridgeObjectRelease_n();
          }

          else
          {
            swift_slowAlloc();

            sub_33348();
            v89 = sub_32180(v85, v86, v87, v88);
            if (v66)
            {

              goto LABEL_143;
            }

            v84 = v89;
          }

          v0 = v248;
          sub_31090(v84);
          v50 = v243;
        }

        v225 = v66;
        v97 = v247[19];
        v98 = v247[14];

        sub_33178();
        v99 = sub_36820();

        (v238)(v97, v241, v98);
        sub_332A8();
        sub_36920(37);

        sub_332C8();
        v252 = v100 - 1;
        v253 = v226;
        v101 = *(v99 + 16);
        if (v101)
        {
          v251 = _swiftEmptyArrayStorage;
          sub_33390();
          v102 = v251;
          v103 = v99 + 32;
          do
          {
            v103 += 8;
            v104 = sub_36360();
            v106 = v105;
            v251 = v102;
            v108 = v102[2];
            v107 = v102[3];
            if (v108 >= v107 >> 1)
            {
              v110 = sub_33298(v107);
              sub_19F6C(v110, v108 + 1, 1);
              v102 = v251;
            }

            v102[2] = v108 + 1;
            v109 = &v102[2 * v108];
            v109[4] = v104;
            v109[5] = v106;
            --v101;
          }

          while (v101);
          v0 = v248;
          v50 = v243;
        }

        v111 = v247[19];
        v112 = v247[14];
        v113 = sub_36810();
        v115 = v114;

        v258._countAndFlagsBits = v113;
        v258._object = v115;
        sub_36790(v258);

        v116 = v252;
        v117 = v253;
        v118 = v239;

        v119._countAndFlagsBits = v116;
        v119._object = v117;
        v120._countAndFlagsBits = v50;
        v120._object = v118;
        Logger.debug(output:test:caller:)(v119, 1, v120);

        v52(v111, v112);
        v121 = v242;
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v252 = v121;
        v96 = v99;
      }

      else
      {

        sub_332C8();
        v93._countAndFlagsBits = v92 + 44;
        v93._object = (v227 | 0x8000000000000000);
        v94._countAndFlagsBits = v50;
        v94._object = v40;
        Logger.debug(output:test:caller:)(v93, 0, v94);

        v95 = swift_isUniquelyReferenced_nonNull_native();
        v252 = v2;
        v96 = _swiftEmptyArrayStorage;
      }

      sub_31C4C(v96, v0, v95);
      v2 = v252;
      v6 = v240;
      goto LABEL_5;
    }

    sub_197AC(v0);
    v6 = v240;
    if (v63)
    {
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v252 = v2;
      v91 = *(v2 + 24);
      sub_1DC4(&qword_56560, &unk_38E20);
      sub_369B0(v90, v91);
      v2 = v252;
      v0 = sub_1DC4(&qword_557A0, &qword_38078);
      sub_1A7AC();
      sub_369C0();

      goto LABEL_5;
    }
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    sub_36930();
  }

  else
  {
    if (v17 >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_141;
    }
  }

  if (!__OFADD__(v17, 1))
  {
    if (sub_36670())
    {
      sub_36960();
      sub_36980();
      sub_36990();
      sub_36970();
    }

    else
    {
    }

    ++v17;
    goto LABEL_13;
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:

  swift_willThrow();

LABEL_143:
  sub_33374();
}

uint64_t sub_2FC84()
{
  sub_116D0();
  *(v1 + 24) = v0;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  sub_3335C(v2);

  return sub_2DE5C();
}

uint64_t sub_2FD0C()
{
  sub_116D0();
  sub_1AA08();
  sub_1AAB4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = sub_1A8D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_2FDF4()
{
  v5 = *(v0 + 40);
  if (!v5)
  {
    if (qword_54D20 != -1)
    {
LABEL_33:
      sub_33224();
      swift_once();
    }

    v11 = sub_366C0();
    sub_333B0(v11, static Log.suggestions);
    sub_33328();
    sub_33254();
    v12._object = 0xE700000000000000;
    Logger.warning(output:test:file:function:line:)(v13, v14, v15, v12, 129);
    goto LABEL_27;
  }

  v6 = sub_36300();
  sub_3E5C(v6);
  sub_33264();
  while (v1 != v2)
  {
    if (v3)
    {
      sub_36930();
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_32;
      }

      sub_332F8();
    }

    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v7 = sub_365C0();
    if (v7 >> 62)
    {
      v8 = sub_369D0();
    }

    else
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }

    if (v8)
    {
      sub_36960();
      sub_36980();
      sub_332E0();
      sub_36990();
      sub_36970();
    }

    else
    {
    }

    ++v2;
  }

  if (!sub_3E5C(_swiftEmptyArrayStorage))
  {

    if (qword_54D20 != -1)
    {
      sub_33224();
      swift_once();
    }

    v16 = sub_366C0();
    sub_1D8C(v16, static Log.suggestions);
    sub_36920(34);

    sub_3ED0();
    *(v0 + 16) = v5;
    sub_36310();
    sub_330B8();
    v24._countAndFlagsBits = sub_36A10();
    sub_36790(v24);

    sub_33328();
    sub_33254();
    v17._object = 0xE700000000000000;
    Logger.warning(output:test:file:function:line:)(v18, v19, v20, v17, 135);

LABEL_27:
    v10 = 0;
    goto LABEL_28;
  }

  v9 = sub_30E8C(_swiftEmptyArrayStorage, sub_1A85C, sub_32EF4, sub_33220);

  if (!sub_3E5C(v9))
  {

    goto LABEL_27;
  }

  sub_3E7C();
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = sub_36930();
  }

  else
  {
    v10 = *(v9 + 32);
  }

LABEL_28:
  sub_332EC();

  return v21(v10);
}

uint64_t sub_301A4()
{
  sub_116D0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_3335C(v2);

  return sub_2DE5C();
}

uint64_t sub_3022C()
{
  sub_116D0();
  sub_1AA08();
  sub_1AAB4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = sub_1A8D0();

  return _swift_task_switch(v4, v5, v6);
}

void sub_30314(uint64_t a1)
{
  if (!*(v1 + 32))
  {
    if (qword_54D20 != -1)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v6 = sub_362E0();
  sub_3E5C(v6);
  sub_33264();
  while (v2 != v3)
  {
    if (v4)
    {
      sub_36930();
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_20;
      }

      sub_332F8();
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_33224();
      swift_once();
LABEL_15:
      v7 = sub_366C0();
      sub_333B0(v7, static Log.suggestions);
      sub_332B8();
      v8._countAndFlagsBits = 0xD00000000000001FLL;
      Logger.warning(output:test:file:function:line:)(v9, v10, v11, v8, 144);
LABEL_16:
      sub_332EC();
      sub_33374();

      __asm { BRAA            X2, X16 }
    }

    if (sub_36670())
    {
      sub_36960();
      sub_36980();
      sub_332E0();
      sub_36990();
      sub_36970();
    }

    else
    {
    }

    ++v3;
  }

  sub_3E5C(_swiftEmptyArrayStorage);

  goto LABEL_16;
}

uint64_t sub_304F4()
{
  sub_116D0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_3335C(v2);

  return sub_2DE5C();
}

uint64_t sub_3057C()
{
  sub_116D0();
  sub_1AA08();
  sub_1AAB4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = sub_1A8D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_30664(uint64_t a1)
{
  if (*(v1 + 32))
  {
    v6 = sub_362E0();
    sub_3E5C(v6);
    sub_33264();
    while (v2 != v3)
    {
      if (v4)
      {
        sub_36930();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_37;
        }

        sub_332F8();
      }

      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (sub_36670())
      {
        sub_36960();
        sub_36980();
        sub_332E0();
        sub_36990();
        sub_36970();
      }

      else
      {
      }

      ++v3;
    }

    if (sub_3E5C(_swiftEmptyArrayStorage) <= 1)
    {

      goto LABEL_31;
    }

    v7 = sub_3E5C(_swiftEmptyArrayStorage);
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    while (v7 != v8)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        sub_36930();
      }

      else
      {
        if (v8 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_39;
        }
      }

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_38;
      }

      if (sub_36600())
      {
        v11 = sub_365F0();
        v13 = v12;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_31510(0, *(v9 + 2) + 1, 1, v9);
        }

        v15 = *(v9 + 2);
        v14 = *(v9 + 3);
        if (v15 >= v14 >> 1)
        {
          v9 = sub_31510((v14 > 1), v15 + 1, 1, v9);
        }

        *(v9 + 2) = v15 + 1;
        v16 = &v9[16 * v15];
        *(v16 + 4) = v11;
        *(v16 + 5) = v13;
        v8 = v10;
      }

      else
      {

        ++v8;
      }
    }

    v22 = sub_36820();
  }

  else
  {
    if (qword_54D20 != -1)
    {
LABEL_40:
      sub_33224();
      swift_once();
    }

    v17 = sub_366C0();
    sub_333B0(v17, static Log.suggestions);
    sub_332B8();
    v18._countAndFlagsBits = 0xD00000000000001CLL;
    Logger.warning(output:test:file:function:line:)(v19, v20, v21, v18, 154);
LABEL_31:
    v22 = _swiftEmptyArrayStorage;
  }

  sub_332EC();

  return v23(v22);
}

uint64_t sub_309A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_30E4C(a1, sub_330A4);
  v9 = a1;
  v29 = *(a1 + 16);
  if (!v29)
  {

    if (a4)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  v26 = a3;
  v27 = v5;
  v10 = sub_3E5C(a2);
  v11 = 0;
  v28 = v9;
  while (2)
  {
    if (v11 >= *(v9 + 16))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      v24 = sub_36930();
      goto LABEL_38;
    }

    v12 = 0;
    ++v11;
    while (v10 != v12)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        sub_36930();
      }

      else
      {
        if (v12 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_42;
        }
      }

      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (sub_36670())
      {
        sub_36960();
        sub_36980();
        sub_36990();
        sub_36970();
      }

      else
      {
      }

      ++v12;
    }

    if (sub_3E5C(_swiftEmptyArrayStorage))
    {

      if (qword_54D20 != -1)
      {
        sub_33224();
        swift_once();
      }

      v13 = sub_366C0();
      sub_1D8C(v13, static Log.suggestions);
      sub_36920(38);

      sub_3ED0();
      v30 = v14;
      v31._countAndFlagsBits = sub_36320();
      sub_36790(v31);

      v15 = *(v27 + 32);
      v16 = *(v27 + 40);

      v17._countAndFlagsBits = 0xD000000000000024;
      v17._object = v30;
      v18._countAndFlagsBits = v15;
      v18._object = v16;
      Logger.debug(output:test:caller:)(v17, 0, v18);
    }

    else
    {

      v9 = v28;
      if (v11 != v29)
      {
        continue;
      }
    }

    break;
  }

  a3 = v26;
  if ((a4 & 1) == 0)
  {
LABEL_24:
    v19 = sub_3E5C(_swiftEmptyArrayStorage);
    for (i = 0; v19 != i; ++i)
    {
      sub_3E7C();
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        sub_36930();
      }

      else
      {
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_43;
      }

      v21 = sub_36660();
      v22 = sub_15C20(a3, v21);

      if (v22)
      {
        sub_36960();
        sub_36980();
        sub_332E0();
        sub_36990();
        sub_36970();
      }

      else
      {
      }
    }
  }

LABEL_35:
  v23 = sub_30E8C(_swiftEmptyArrayStorage, sub_1A85C, sub_32D80, sub_33220);

  if (!sub_3E5C(v23))
  {

    return 0;
  }

  sub_3E7C();
  if ((v23 & 0xC000000000000001) != 0)
  {
    goto LABEL_45;
  }

  v24 = *(v23 + 32);

LABEL_38:

  return v24;
}

uint64_t sub_30DF0(uint64_t a1)
{
  sub_30E4C(a1, sub_33068);
  if (*(a1 + 16))
  {
    v1 = *(a1 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void *sub_30E8C(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_369D0();
    if (v7)
    {
      v17 = v7;
      v6 = a2(v7, 0);

      a3(v6 + 4, v17, a1);
      v19 = v18;

      if (v19 == v17)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_3;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFF8);

LABEL_3:
  sub_31AB4(v7, a4, v8, v9, v10, v11, v12, v13);
  return v6;
}

uint64_t sub_30F5C()
{

  return v0;
}

uint64_t sub_30F84()
{
  sub_30F5C();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_30FE4(unint64_t a1)
{
  v3 = sub_3E5C(a1);
  v4 = sub_3E5C(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_31610(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_32C0C(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_31090(uint64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_316B0(v5 + v4, 1);
  v1 = *v2;
  v6 = *(*v2 + 16);
  v7 = (*(*v2 + 24) >> 1) - v6;
  result = sub_1A48C(v37, (*v2 + 8 * v6 + 32), v7, v3);
  if (result < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v12 = v1[2];
    v13 = __OFADD__(v12, result);
    v14 = result + v12;
    if (v13)
    {
      __break(1u);
      goto LABEL_15;
    }

    v1[2] = v14;
  }

  if (result == v7)
  {
LABEL_12:
    v3 = v1[2];
    result = v37[0];
    v9 = v37[1];
    v10 = v38;
    v11 = v39;
    if (v40)
    {
      v15 = (v40 - 1) & v40;
      v16 = __clz(__rbit64(v40)) | (v39 << 6);
      v17 = (v38 + 64) >> 6;
LABEL_20:
      v21 = *(result[6] + 8 * v16);
      v22 = &qword_55788;
      while (1)
      {
        v23 = v1[3];
        v24 = v23 >> 1;
        if ((v23 >> 1) < v3 + 1)
        {
          v35 = result;
          v36 = v17;
          v33 = v10;
          v34 = v9;
          v31 = v15;
          v32 = v11;
          v28 = v1;
          v29 = v22;
          v30 = sub_312F8((v23 > 1), v3 + 1, 1, v28, v22, &qword_38E30, sub_1A854);
          v15 = v31;
          v11 = v32;
          v22 = v29;
          v10 = v33;
          v9 = v34;
          v1 = v30;
          result = v35;
          v17 = v36;
          v24 = v1[3] >> 1;
        }

        if (v3 < v24)
        {
          break;
        }

        v25 = v11;
LABEL_34:
        v1[2] = v3;
        v11 = v25;
      }

      while (1)
      {
        v1[v3++ + 4] = v21;
        if (!v15)
        {
          break;
        }

        v25 = v11;
LABEL_31:
        v27 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v21 = *(result[6] + ((v25 << 9) | (8 * v27)));
        if (v3 >= v24)
        {
          goto LABEL_34;
        }
      }

      v26 = v11;
      while (1)
      {
        v25 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v25 >= v17)
        {
          result = sub_1A65C(result);
          v1[2] = v3;
          goto LABEL_9;
        }

        v15 = *(v9 + 8 * v25);
        ++v26;
        if (v15)
        {
          v11 = v25;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      return result;
    }

LABEL_15:
    v17 = (v10 + 64) >> 6;
    v18 = v11;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_38;
      }

      if (v19 >= v17)
      {
        goto LABEL_8;
      }

      v20 = *(v9 + 8 * v19);
      ++v18;
      if (v20)
      {
        v15 = (v20 - 1) & v20;
        v16 = __clz(__rbit64(v20)) | (v19 << 6);
        v11 = v19;
        goto LABEL_20;
      }
    }
  }

  result = v37[0];
LABEL_8:
  result = sub_1A65C(result);
LABEL_9:
  *v2 = v1;
  return result;
}