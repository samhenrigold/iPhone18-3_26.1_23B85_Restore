uint64_t sub_10006B864(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v36 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v45 = a2 + 56;
  v37 = v6;
  v38 = result;
  v40 = a2;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
    v7 = __clz(__rbit64(v5));
    v39 = (v5 - 1) & v5;
LABEL_13:
    v10 = *(result + 48) + 24 * (v7 | (v2 << 6));
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 17);
    v15 = *(v10 + 18);
    v16 = *(v10 + 19);
    v17 = a2;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v44 = v13;
    Hasher._combine(_:)(v13);
    v43 = v14;
    Hasher._combine(_:)(v14);
    v42 = v15;
    Hasher._combine(_:)(v15);
    v41 = v16;
    Hasher._combine(_:)(v16);
    v18 = Hasher._finalize()();
    v26 = -1 << *(v17 + 32);
    v27 = v18 & ~v26;
    if (((*(v45 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
LABEL_27:
      v11, v19, v20, v21, v22, v23, v24, v25;
      return 0;
    }

    v28 = ~v26;
    v29 = *(v40 + 48);
    while (1)
    {
      v30 = v29 + 24 * v27;
      v19 = *(v30 + 8);
      v31 = *(v30 + 16);
      v32 = *(v30 + 17);
      v33 = *(v30 + 19);
      v34 = v42 ^ *(v30 + 18);
      if (*v30 != v12 || v19 != v11)
      {
        break;
      }

      if (((v44 ^ v31 | v43 ^ v32 | v34) & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_17:
      v27 = (v27 + 1) & v28;
      if (((*(v45 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if ((v44 ^ v31) & 1 | ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0) | ((v43 ^ v32) | v34) & 1)
    {
      goto LABEL_17;
    }

LABEL_16:
    if ((v41 ^ v33))
    {
      goto LABEL_17;
    }

    v11, v19, v20, v21, v22, v23, v24, v25;
    v6 = v37;
    result = v38;
    v5 = v39;
    a2 = v40;
  }

  while (v39);
LABEL_8:
  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v36 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v39 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_10006BAFC(__int128 *a1, uint64_t a2)
{
  Hasher._finalize()();
  v26 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  for (i = 0; v6; v8 = v18 ^ v27)
  {
    v27 = v8;
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(v26 + 48) + 24 * (v11 | (v10 << 6));
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 17);
    v16 = *(v12 + 18);
    v17 = *(v12 + 19);
    Hasher.init(_seed:)();

    String.hash(into:)();
    Hasher._combine(_:)(v14);
    Hasher._combine(_:)(v15);
    Hasher._combine(_:)(v16);
    Hasher._combine(_:)(v17);
    v18 = Hasher._finalize()();
    v13, v19, v20, v21, v22, v23, v24, v25;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      Hasher._combine(_:)(v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      v27 = v8;
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10006BCA4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10006B864(a1[6], *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[8];
  v7 = *(a2 + 64);
  if (!v6)
  {
    if (v7)
    {
      return 0;
    }

    goto LABEL_27;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 18);
  v9 = *(a2 + 72);
  if (a1[7] == *(a2 + 56) && v6 == v7)
  {
    result = 0;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v12 = v8 ^ v9;
  if (((v8 ^ v9) & 1) == 0 && ((v12 >> 8) & 1) == 0 && (v12 & 0x10000) == 0 && (v12 & 0x1000000) == 0)
  {
LABEL_27:
    v13 = a1[11];
    v14 = *(a2 + 88);
    if (v13)
    {
      if (v14)
      {
        v15 = a1[10];
        v16 = *(a1 + 24);
        v17 = *(a2 + 80);
        v18 = *(a2 + 96);
        if (v15 == v17 && v13 == v14)
        {
          v19 = v16 ^ v18;
          if (((v16 ^ v18) & 1) != 0 || ((v19 >> 8) & 1) != 0 || (v19 & 0x10000) != 0 || (v19 & 0x1000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }

          v20 = v16 ^ v18;
          if (((v16 ^ v18) & 1) != 0 || ((v20 >> 8) & 1) != 0 || (v20 & 0x10000) != 0 || (v20 & 0x1000000) != 0)
          {
            return 0;
          }
        }

        return 1;
      }
    }

    else if (!v14)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10006BE4C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 72);
  if (v8 >> 62)
  {
    if (v8 >> 62 == 1)
    {
      if (*(a2 + 72) >> 62 != 1)
      {
        goto LABEL_16;
      }
    }

    else if (*(a2 + 72) >> 62 != 2)
    {
      goto LABEL_16;
    }

    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = *(a2 + 32);
    if (v3 == *a2 && v4 == *(a2 + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v5 == v16 && v7 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_10006B864(v6, v18))
    {
      v15 = 1;
      return v15 & 1;
    }

LABEL_16:
    v15 = 0;
    return v15 & 1;
  }

  v9 = *(a1 + 96);
  v25[0] = v3;
  v25[1] = v4;
  v25[2] = v5;
  v25[3] = v7;
  v26 = *(a1 + 40);
  v27 = *(a1 + 56);
  v25[4] = v6;
  v28 = v8 & 0x3FFFFFFFFFFFFFFFLL;
  v29 = *(a1 + 80);
  v10 = *(a2 + 72);
  v30 = v9;
  if (v10 >> 62)
  {
    goto LABEL_16;
  }

  v11 = *(a2 + 96);
  v12 = *(a2 + 64);
  v13 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v13;
  v14 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v14;
  v21 = v12;
  v22 = v10;
  v23 = *(a2 + 80);
  v24 = v11;
  v15 = sub_10006BCA4(v25, v20);
  return v15 & 1;
}

__n128 sub_10006BFC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10006BFD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_10006C020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10006C070(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10006C084(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10006C0CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10006C128()
{
  result = qword_100175028;
  if (!qword_100175028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175028);
  }

  return result;
}

unint64_t sub_10006C180()
{
  result = qword_100175030;
  if (!qword_100175030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175030);
  }

  return result;
}

uint64_t sub_10006C214(uint64_t a1, uint64_t (*a2)(__n128), uint64_t *a3)
{
  v5 = type metadata accessor for Font.Leading();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v7);
  (*(v6 + 104))(v9, enum case for Font.Leading.tight(_:), v5);
  v10 = Font.leading(_:)();

  result = (*(v6 + 8))(v9, v5);
  *a3 = v10;
  return result;
}

uint64_t sub_10006C32C()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v1);
  result = Color.init(_:red:green:blue:opacity:)();
  qword_10017F260 = result;
  return result;
}

void sub_10006C40C(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 16);
  if (v8)
  {
    aBlock = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = (a5 + 40);
    v11 = v8;
    do
    {
      v13 = *(v10 - 1);
      if (!*v10 || *v10 == 1)
      {
        v12 = v13;
      }

      else
      {
        v14 = type metadata accessor for ZoomEffect();
        v15 = objc_allocWithZone(v14);
        *&v15[OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect_magnitude] = v13;
        v28.receiver = v15;
        v28.super_class = v14;
        objc_msgSendSuper2(&v28, "init");
      }

      v10 += 16;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v11;
    }

    while (v11);
    sub_10006D038();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v17 = [objc_opt_self() effectCombiningEffects:isa];
  }

  else
  {
    v17 = 0;
  }

  v18 = [a1 effect];
  if (v18)
  {
    v19 = v18;
    if (v17)
    {
      sub_10006D038();
      v20 = v17;
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {

        return;
      }
    }

    else
    {
    }
  }

  else if (!v17)
  {
    return;
  }

  if (v8)
  {
    a3 = a2;
  }

  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v17;
  v33 = sub_10006D0C4;
  v34 = v23;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100106B40;
  v32 = &unk_10015F228;
  v24 = _Block_copy(&aBlock);
  v25 = v17;
  v26 = a1;

  v33 = nullsub_1;
  v34 = 0;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100005C38;
  v32 = &unk_10015F250;
  v27 = _Block_copy(&aBlock);
  [v22 _animateUsingSpringWithDuration:0 delay:v24 options:v27 mass:1.0 stiffness:a3 damping:2.0 initialVelocity:630.0 animations:50.0 completion:0.0];

  _Block_release(v27);
  _Block_release(v24);
}

id sub_10006C738()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

uint64_t sub_10006C780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006D0EC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10006C7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006D0EC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10006C848(uint64_t a1)
{
  sub_10006D0EC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

BOOL sub_10006C980(uint64_t a1)
{
  sub_10006CE14(a1, v5);
  if (v6)
  {
    type metadata accessor for ZoomEffect();
    if (swift_dynamicCast())
    {
      v2 = *&v4[OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect_magnitude];

      return v2 == *(v1 + OBJC_IVAR____TtC9AirDropUIP33_770A69880D158B2CCABA56C42FC2E35A10ZoomEffect_magnitude);
    }
  }

  else
  {
    sub_10006CDAC(v5);
  }

  return 0;
}

void sub_10006CC40(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v3 = [v6 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    [v4 setZoom:0.0];
    v5 = v3;
  }

  else
  {
    v5 = v6;
    v6 = v3;
  }
}

id sub_10006CD48(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10006CDAC(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_1001746C0, &qword_10011A510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006CE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_1001746C0, &qword_10011A510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006CE90(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10006CEA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10006CEEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10006CF48(uint64_t *a1, int a2)
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

uint64_t sub_10006CF90(uint64_t result, int a2, int a3)
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

unint64_t sub_10006CFE4()
{
  result = qword_100175098;
  if (!qword_100175098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175098);
  }

  return result;
}

unint64_t sub_10006D038()
{
  result = qword_1001750A0;
  if (!qword_1001750A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001750A0);
  }

  return result;
}

uint64_t sub_10006D084()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006D0D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10006D0EC()
{
  result = qword_1001750A8;
  if (!qword_1001750A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001750A8);
  }

  return result;
}

void sub_10006D150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_10000E474(0, v1, 0);
    v3 = v2 + 56;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v35 = v2 + 64;
    v36 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      v37 = v5;
      v38 = *(v2 + 36);
      v8 = v2;
      v9 = *(*(v2 + 48) + 24 * v4 + 8);

      v10 = String._bridgeToObjectiveC()();
      v11 = TUCopyIDSCanonicalAddressForDestinationID();

      if (!v11)
      {
        goto LABEL_26;
      }

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v13;
      v9, v13, v14, v15, v16, v17, v18, v19;

      v26 = *_swiftEmptyArrayStorage.connection;
      v25 = *_swiftEmptyArrayStorage.airdropClient;
      if (v26 >= v25 >> 1)
      {
        sub_10000E474((v25 > 1), v26 + 1, 1);
      }

      *_swiftEmptyArrayStorage.connection = v26 + 1;
      v27 = &_swiftEmptyArrayStorage + 16 * v26;
      *(v27 + 4) = v12;
      *(v27 + 5) = v39;
      v6 = 1 << *(v8 + 32);
      if (v4 >= v6)
      {
        goto LABEL_23;
      }

      v28 = *(v3 + 8 * v7);
      if ((v28 & (1 << v4)) == 0)
      {
        goto LABEL_24;
      }

      v2 = v8;
      if (v38 != *(v8 + 36))
      {
        goto LABEL_25;
      }

      v29 = v28 & (-2 << (v4 & 0x3F));
      if (v29)
      {
        v6 = __clz(__rbit64(v29)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v7 << 6;
        v31 = v7 + 1;
        v32 = (v35 + 8 * v7);
        while (v31 < (v6 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_100047AC0(v4, v38, 0, v20, v21, v22, v23, v24);
            v6 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        sub_100047AC0(v4, v38, 0, v20, v21, v22, v23, v24);
      }

LABEL_4:
      v5 = v37 + 1;
      v4 = v6;
      if (v37 + 1 == v36)
      {
        return;
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
  }
}

NSString *sub_10006D3BC()
{
  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001191F0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 descriptorForRequiredKeysForStyle:1];
  *(v0 + 40) = [v1 descriptorForRequiredKeysForStyle:0];
  *(v0 + 48) = CNContactPhoneNumbersKey;
  *(v0 + 56) = CNContactEmailAddressesKey;
  qword_1001750B0 = v0;
  v2 = CNContactPhoneNumbersKey;

  return CNContactEmailAddressesKey;
}

void sub_10006D4A0(uint64_t a1@<X0>, _TtC9AirDropUI33AirDropTransferSessionsController *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = String._bridgeToObjectiveC()();
  if (qword_1001721C8 != -1)
  {
    swift_once();
  }

  sub_1000077C8(&qword_1001751C8, qword_10011E190);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v10 = [v4 contactForIdentifier:v8 keysToFetch:isa];

  if (v10)
  {
    sub_1000713F8(v10, v36);
    v34 = v36[1];
    v35 = v36[0];
    v32 = v36[3];
    v33 = v36[2];
    v30 = v36[5];
    v31 = v36[4];
    v11 = v37;

    v13 = v30;
    v12 = v31;
    v15 = v32;
    v14 = v33;
    v17 = v34;
    v16 = v35;
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100007D20(v18, qword_10017F350);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    a2, v21, v22, v23, v24, v25, v26, v27;
    if (os_log_type_enabled(v19, v20))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v36[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_10003E81C(a1, a2, v36);
      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to fetch contact with identifier: %s", v28, 0xCu);
      sub_100007920(v29);
    }

    v11 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a3 = v16;
  *(a3 + 16) = v17;
  *(a3 + 32) = v14;
  *(a3 + 48) = v15;
  *(a3 + 64) = v12;
  *(a3 + 80) = v13;
  *(a3 + 96) = v11;
}

__n128 sub_10006D6F4@<Q0>(uint64_t a1@<X0>, _TtC9AirDropUI33AirDropTransferSessionsController *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10006D4A0(a1, a2, v7);
  v4 = v7[5];
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v4;
  *(a3 + 96) = v8;
  v5 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v5;
  result = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = result;
  return result;
}

void sub_10006D754(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 48);
  v4 = a1;
  sub_100070EA0(v3, v4);
  v6 = v5;

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100007D20(v7, qword_10017F350);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v6, v10, v11, v12, v13, v14, v15, v16;
  if (os_log_type_enabled(v8, v9))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v92 = v18;
    *v17 = 136315138;
    v19 = Array.description.getter();
    v21 = v20;
    v22 = sub_10003E81C(v19, v20, &v92);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "Updated resolved IDS capabilities for handles: %s", v17, 0xCu);
    sub_100007920(v18);
  }

  v30 = *v6->connection;
  v31 = &v6->airdropClient[1];
  v32 = v30 + 1;
  do
  {
    if (!--v32)
    {
      v35 = 0;
      v36 = 0;
      v42 = 0;
      goto LABEL_16;
    }

    v33 = v31 + 24;
    v34 = v31[25];
    v31 += 24;
  }

  while (v34 != 1);
  v35 = *(v33 - 17);
  v36 = *(v33 - 9);
  v37 = *(v33 - 1);
  v38 = *v33;
  v39 = v33[2];
  if (v38)
  {
    v40 = 256;
  }

  else
  {
    v40 = 0;
  }

  if (v39)
  {
    v41 = 0x1000000;
  }

  else
  {
    v41 = 0;
  }

  v42 = v40 | v37 | v41 | 0x10000;

LABEL_16:
  airdropClient = v6->airdropClient;
  v44 = v30 + 1;
  do
  {
    if (!--v44)
    {
      v48 = 0;
      v47 = 0;
      v55 = 0;
      goto LABEL_27;
    }

    v45 = airdropClient + 24;
    v46 = airdropClient[25];
    airdropClient += 24;
  }

  while (v46 != 1);
  v48 = *(v45 - 2);
  v47 = *(v45 - 1);
  v49 = *v45;
  v50 = v45[2];
  v51 = v45[3];
  if (v50)
  {
    v52 = 0x10000;
  }

  else
  {
    v52 = 0;
  }

  v53 = v52 | v49;
  if (v51)
  {
    v54 = 0x1000000;
  }

  else
  {
    v54 = 0;
  }

  v55 = v53 | v54 | 0x100;

LABEL_27:
  v56 = sub_1000905CC(v6);
  v3, v57, v58, v59, v60, v61, v62, v63;
  v6, v64, v65, v66, v67, v68, v69, v70;
  *(v2 + 48) = v56;
  if (v36)
  {

    v47, v78, v79, v80, v81, v82, v83, v84;
    v48 = v35;
    v47 = v36;
    v55 = v42;
  }

  *(v2 + 64), v71, v72, v73, v74, v75, v76, v77;
  *(v2 + 56) = v48;
  *(v2 + 64) = v47;
  *(v2 + 72) = v55;
  *(v2 + 88), v85, v86, v87, v88, v89, v90, v91;
  *(v2 + 80) = v35;
  *(v2 + 88) = v36;
  *(v2 + 96) = v42;
}

void sub_10006DA2C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];

  v7 = String._bridgeToObjectiveC()();
  v8 = TUCopyIDSCanonicalAddressForDestinationID();

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    sub_1000077C8(&qword_100172A80, &unk_1001187D0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001186F0;
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;

    isa = Array._bridgeToObjectiveC()().super.isa;
    v12, v14, v15, v16, v17, v18, v19, v20;
    v53 = [a2 isFaceTimeVideoAvailableForAnyDestinationInDestinations:isa];

    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1001186F0;
    *(v21 + 32) = v9;
    *(v21 + 40) = v11;

    v22 = Array._bridgeToObjectiveC()().super.isa;
    v21, v23, v24, v25, v26, v27, v28, v29;
    v30 = [a2 isFaceTimeMultiwayAvailableForAnyDestinationInDestinations:v22];

    sub_1000194DC();
    v31 = static NSUserDefaults.airdrop.getter();
    LOBYTE(v22) = SFAirDropUserDefaults.boopToCollaborateEnabled.getter();

    if (v22)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1001186F0;
      *(v32 + 32) = v9;
      *(v32 + 40) = v11;

      v33 = Array._bridgeToObjectiveC()().super.isa;
      v32, v34, v35, v36, v37, v38, v39, v40;
      v41 = [a2 isiMessageAvailableForAnyDestinationInDestinations:v33];
    }

    else
    {
      v41 = 0;
    }

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001186F0;
    *(inited + 32) = v9;
    v43 = inited + 32;
    *(inited + 40) = v11;
    v44 = sub_10008FFA4(inited);
    swift_setDeallocating();
    sub_1000712B0(v43);
    v45 = Set._bridgeToObjectiveC()().super.isa;
    v44, v46, v47, v48, v49, v50, v51, v52;
    LOBYTE(v43) = [a2 isAVLessSharePlayCapableForAnyDestinationInDestinations:v45];

    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v53;
    *(a3 + 17) = v30;
    *(a3 + 18) = v43;
    *(a3 + 19) = v41;
  }

  else
  {
    __break(1u);
  }
}

void sub_10006DCD0(uint64_t a1, void *a2, uint64_t a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4, void *a5)
{
  v88 = a1;
  v9 = sub_1000077C8(&qword_1001751A8, &qword_10011CCF8);
  v85 = *(v9 - 8);
  v83 = *(v85 + 64);
  __chkstk_darwin(v9);
  v84 = &v78 - v10;
  v11 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v11 - 8);
  v86 = &v78 - v12;
  v82 = sub_1000077C8(&qword_1001751B0, &qword_10011CD00);
  v13 = *(v82 - 8);
  __chkstk_darwin(v82);
  v15 = &v78 - v14;
  v16 = a2[3];
  v17 = a2[4];
  sub_1000078DC(a2, v16);
  v18 = *(v17 + 8);
  v81 = a3;
  v87 = a4;
  v18(&v97, a3, a4, v16, v17);
  if (*(&v97 + 1))
  {
    v19 = *v100;
    v80 = v97;
    v103 = v98;
    v104 = v99;
    v101 = *&v100[8];
    v102[0] = *&v100[24];
    v92 = v98;
    v93 = v99;
    *(v102 + 12) = *&v100[36];
    v91 = v97;
    *v94 = *v100;
    *&v94[8] = *&v100[8];
    *&v94[24] = *&v100[24];
    *&v94[36] = *&v100[36];
    v79 = *(&v97 + 1);
    v96 = *&v100[48];
    v95[5] = *&v100[32];
    v95[4] = *&v100[16];
    v95[3] = *v100;
    v95[2] = v99;
    v95[1] = v98;
    v95[0] = v97;
    sub_100070BB4(v95, v89);
    sub_10006D754(a5);
    v89[4] = *&v94[16];
    v89[5] = *&v94[32];
    v90 = *&v94[48];
    v89[0] = v91;
    v89[1] = v92;
    v89[2] = v93;
    v89[3] = *v94;
    v20 = v9;
    v78 = a5;
    v21 = v88;
    AsyncStream.Continuation.yield(_:)();
    (*(v13 + 8))(v15, v82);
    v22 = v86;
    static TaskPriority.userInitiated.getter();
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
    v24 = v84;
    v25 = v85;
    (*(v85 + 16))(v84, v21, v20);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = (v83 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    (*(v25 + 32))(v28 + v26, v24, v20);
    v29 = v28 + v27;
    v30 = v79;
    *v29 = v80;
    *(v29 + 8) = v30;
    v31 = v104;
    *(v29 + 16) = v103;
    *(v29 + 32) = v31;
    *(v29 + 48) = v19;
    *(v29 + 56) = v101;
    *(v29 + 72) = v102[0];
    *(v29 + 84) = *(v102 + 12);
    v32 = v78;
    *(v28 + ((v27 + 107) & 0xFFFFFFFFFFFFFFF8)) = v78;
    sub_100007BA4(&v97, v89, &qword_100174488, &qword_10011B208);
    v33 = v32;
    sub_10006EAC8(0, 0, v22, &unk_10011CD10, v28);
    sub_1000159AC(v22, &qword_100172F50, &qword_10011E500);

    AsyncStream.Continuation.onTermination.setter();
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100007D20(v34, qword_10017F350);
    v35 = v87;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v35, v38, v39, v40, v41, v42, v43, v44;
    if (os_log_type_enabled(v36, v37))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v89[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_10003E81C(v81, v35, v89);
      _os_log_impl(&_mh_execute_header, v36, v37, "Attempting to resolve IDS capabilities for contact with identifier: %s", v45, 0xCu);
      sub_100007920(v46);
    }

    sub_10006D150(v19);
    v48 = v47;
    v49 = sub_1000906B8(v47);
    v48, v50, v51, v52, v53, v54, v55, v56;
    isa = Set._bridgeToObjectiveC()().super.isa;
    v49, v58, v59, v60, v61, v62, v63, v64;
    [v33 beginQueryWithDestinations:isa];

    sub_1000159AC(&v97, &qword_100174488, &qword_10011B208);
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_100007D20(v65, qword_10017F350);
    v66 = v87;

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    v66, v69, v70, v71, v72, v73, v74, v75;
    if (os_log_type_enabled(v67, v68))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v95[0] = v77;
      *v76 = 136315138;
      *(v76 + 4) = sub_10003E81C(v81, v66, v95);
      _os_log_impl(&_mh_execute_header, v67, v68, "Could not find contact details for contact identifier: %s", v76, 0xCu);
      sub_100007920(v77);
    }

    AsyncStream.Continuation.finish()();
  }
}

uint64_t sub_10006E468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[29] = a4;
  v7 = sub_1000077C8(&qword_1001751B0, &qword_10011CD00);
  v6[32] = v7;
  v6[33] = *(v7 - 8);
  v6[34] = swift_task_alloc();
  sub_1000077C8(&qword_1001751B8, &qword_10011CD28);
  v6[35] = swift_task_alloc();
  v8 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v6[36] = v8;
  v6[37] = *(v8 - 8);
  v6[38] = swift_task_alloc();

  return _swift_task_switch(sub_10006E5CC, 0, 0);
}

uint64_t sub_10006E5CC()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = sub_100071258();
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_10006E6CC;
  v4 = v0[35];
  v5 = v0[36];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_10006E6CC()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_10006EA3C;
  }

  else
  {
    v2 = sub_10006E7E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006E7FC()
{
  v1 = *(v0 + 280);
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 240);
    v18 = *(v9 + 64);
    v19 = *(v9 + 80);
    v20 = *(v9 + 96);
    v14 = *v9;
    v15 = *(v9 + 16);
    v16 = *(v9 + 32);
    v17 = *(v9 + 48);
    sub_100070BB4(v9, v0 + 16);
    sub_10006D754(v8);
    *(v0 + 168) = v17;
    *(v0 + 184) = v18;
    *(v0 + 200) = v19;
    *(v0 + 216) = v20;
    *(v0 + 120) = v14;
    *(v0 + 136) = v15;
    *(v0 + 152) = v16;
    sub_1000077C8(&qword_1001751A8, &qword_10011CCF8);
    AsyncStream.Continuation.yield(_:)();
    (*(v6 + 8))(v5, v7);
    sub_1000159AC(v1, &qword_1001751B8, &qword_10011CD28);
    v10 = sub_100071258();
    v11 = swift_task_alloc();
    *(v0 + 312) = v11;
    *v11 = v0;
    v11[1] = sub_10006E6CC;
    v12 = *(v0 + 280);
    v13 = *(v0 + 288);

    return dispatch thunk of AsyncIteratorProtocol.next()(v12, v13, v10);
  }
}

uint64_t sub_10006EA3C()
{
  *(v0 + 224) = *(v0 + 320);
  sub_1000077C8(&qword_100175E10, &unk_100118BB0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10006EAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100007BA4(a3, v25 - v10, &qword_100172F50, &qword_10011E500);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000159AC(v11, &qword_100172F50, &qword_10011E500);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10006ED88(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v3[18] = swift_task_alloc();
  v4 = sub_1000077C8(&qword_100175188, &qword_10011CCD0);
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_10006EE9C, 0, 0);
}

uint64_t sub_10006EE9C()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v0[23] = v6;
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v3;

  v7 = swift_task_alloc();
  v0[24] = v7;
  v8 = sub_1000077C8(&qword_100174488, &qword_10011B208);
  *v7 = v0;
  v7[1] = sub_10006F000;
  v9 = v0[22];
  v10 = v0[18];

  return withOperationTimeout<A>(_:priority:operation:)(v9, 5000000000000000000, 0, v10, &unk_10011CD38, v6, v8);
}

uint64_t sub_10006F000()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    sub_1000159AC(*(v2 + 144), &qword_100172F50, &qword_10011E500);

    return _swift_task_switch(sub_10006F158, 0, 0);
  }
}

uint64_t sub_10006F158()
{
  v38 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  (*(v3 + 16))(v1, *(v0 + 176), v2);
  v4 = (*(v3 + 88))(v1, v2);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  if (v4 == enum case for OperationTimeoutResult.success<A>(_:))
  {
    (*(v5 + 96))(*(v0 + 168), v7);
    v8 = *v6;
    v9 = v6[2];
    *(v0 + 32) = v6[1];
    *(v0 + 48) = v9;
    *(v0 + 16) = v8;
    v10 = v6[3];
    v11 = v6[4];
    v12 = v6[5];
    *(v0 + 112) = *(v6 + 24);
    *(v0 + 80) = v11;
    *(v0 + 96) = v12;
    *(v0 + 64) = v10;
    if (*(v0 + 24))
    {
      v14 = *(v0 + 72);
      v13 = *(v0 + 80);
      v15 = *(v0 + 88);

      sub_1000159AC(v0 + 16, &qword_100174488, &qword_10011B208);
      if (v13)
      {
        (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
        goto LABEL_11;
      }
    }
  }

  else
  {
    (*(v5 + 8))(*(v0 + 168), v7);
  }

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 128);
  v17 = type metadata accessor for Logger();
  sub_100007D20(v17, qword_10017F350);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v16, v20, v21, v22, v23, v24, v25, v26;
  v27 = os_log_type_enabled(v18, v19);
  v28 = *(v0 + 176);
  v29 = *(v0 + 152);
  v30 = *(v0 + 160);
  if (v27)
  {
    v32 = *(v0 + 120);
    v31 = *(v0 + 128);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_10003E81C(v32, v31, &v37);
    _os_log_impl(&_mh_execute_header, v18, v19, "Timed out attempting to resolve a FaceTime-able handle for contact with identifier: %s", v33, 0xCu);
    sub_100007920(v34);
  }

  (*(v30 + 8))(v28, v29);
  v14 = 0;
  v13 = 0;
  v15 = 0;
LABEL_11:

  v35 = *(v0 + 8);

  return v35(v14, v13, v15);
}

uint64_t sub_10006F430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[46] = a3;
  v4[47] = a4;
  v4[44] = a1;
  v4[45] = a2;
  v5 = sub_1000077C8(&qword_100174480, &qword_10011B200);
  v4[48] = v5;
  v4[49] = *(v5 - 8);
  v4[50] = swift_task_alloc();
  v6 = sub_1000077C8(&unk_100174470, &unk_10011B1E0);
  v4[51] = v6;
  v4[52] = *(v6 - 8);
  v4[53] = swift_task_alloc();
  v7 = sub_1000077C8(&qword_100175190, &qword_10011CCF0);
  v4[54] = v7;
  v4[55] = *(v7 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();

  return _swift_task_switch(sub_10006F5DC, 0, 0);
}

uint64_t sub_10006F5DC()
{
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[52];
  v5 = v0[53];
  v6 = v0[51];
  v17 = v0[56];
  v7 = v0[46];
  v8 = v0[47];
  v9 = v0[45];
  *v5 = 1;
  (*(v4 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v6);
  sub_100007878(v9 + 16, (v0 + 39));
  v10 = *(v9 + 56);
  v11 = swift_task_alloc();
  v11[2] = v0 + 39;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v10;
  AsyncStream.init(_:bufferingPolicy:_:)();

  v12 = sub_100007920(v0 + 39);
  (*(v3 + 16))(v17, v1, v2, v12);
  sub_1000199C8(&qword_100175198, &qword_100175190, &qword_10011CCF0, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v13 = sub_1000199C8(&qword_1001751A0, &qword_100174480, &qword_10011B200, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v14 = swift_task_alloc();
  v0[58] = v14;
  *v14 = v0;
  v14[1] = sub_10006F7E0;
  v15 = v0[48];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v15, v13);
}

uint64_t sub_10006F7E0()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[49];
    v3 = v2[50];
    v5 = v2[48];

    (*(v4 + 8))(v3, v5);
    v6 = nullsub_1;
  }

  else
  {
    v6 = sub_10006F920;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10006F920()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 80);
  *(v0 + 256) = *(v0 + 64);
  *(v0 + 272) = v3;
  *(v0 + 288) = *(v0 + 96);
  *(v0 + 304) = *(v0 + 112);
  v4 = *(v0 + 48);
  *(v0 + 224) = *(v0 + 32);
  *(v0 + 240) = v4;
  if (!v1)
  {
    v28 = *(v0 + 456);
    v29 = *(v0 + 432);
    v30 = *(v0 + 440);
    v31 = *(v0 + 352);
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
    (*(v30 + 8))(v28, v29);
    *v31 = v2;
    *(v31 + 8) = 0;
    v32 = *(v0 + 240);
    *(v31 + 16) = *(v0 + 224);
    *(v31 + 32) = v32;
    v33 = *(v0 + 256);
    v34 = *(v0 + 272);
    v35 = *(v0 + 288);
    *(v31 + 96) = *(v0 + 304);
    *(v31 + 64) = v34;
    *(v31 + 80) = v35;
    *(v31 + 48) = v33;
    goto LABEL_5;
  }

  v5 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v5;
  v6 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  v7 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v7;
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 152) = v6;

  if (v8)
  {
    v16 = *(v0 + 456);
    v17 = *(v0 + 432);
    v18 = *(v0 + 440);
    v20 = *(v0 + 392);
    v19 = *(v0 + 400);
    v21 = *(v0 + 384);
    v22 = *(v0 + 352);
    v8, v9, v10, v11, v12, v13, v14, v15;
    (*(v20 + 8))(v19, v21);
    (*(v18 + 8))(v16, v17);
    v23 = *(v0 + 120);
    v24 = *(v0 + 152);
    *(v22 + 16) = *(v0 + 136);
    *(v22 + 32) = v24;
    *v22 = v23;
    v25 = *(v0 + 168);
    v26 = *(v0 + 184);
    v27 = *(v0 + 200);
    *(v22 + 96) = *(v0 + 216);
    *(v22 + 64) = v26;
    *(v22 + 80) = v27;
    *(v22 + 48) = v25;
LABEL_5:

    v36 = *(v0 + 8);

    return v36();
  }

  sub_1000159AC(v0 + 120, &qword_100174488, &qword_10011B208);
  v38 = sub_1000199C8(&qword_1001751A0, &qword_100174480, &qword_10011B200, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v39 = swift_task_alloc();
  *(v0 + 464) = v39;
  *v39 = v0;
  v39[1] = sub_10006F7E0;
  v40 = *(v0 + 384);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v40, v38);
}

uint64_t sub_10006FBD0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v3[18] = swift_task_alloc();
  v4 = sub_1000077C8(&qword_100175188, &qword_10011CCD0);
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_10006FCE4, 0, 0);
}

uint64_t sub_10006FCE4()
{
  sub_1000194DC();
  v1 = static NSUserDefaults.airdrop.getter();
  v2 = SFAirDropUserDefaults.boopToCollaborateEnabled.getter();

  if (v2)
  {
    v3 = v0[17];
    v4 = v0[18];
    v6 = v0[15];
    v5 = v0[16];
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v0[23] = v8;
    v8[2] = v3;
    v8[3] = v6;
    v8[4] = v5;

    v9 = swift_task_alloc();
    v0[24] = v9;
    v10 = sub_1000077C8(&qword_100174488, &qword_10011B208);
    *v9 = v0;
    v9[1] = sub_10006FEC8;
    v11 = v0[22];
    v12 = v0[18];

    return withOperationTimeout<A>(_:priority:operation:)(v11, 5000000000000000000, 0, v12, &unk_10011CCE0, v8, v10);
  }

  else
  {

    v13 = v0[1];

    return v13(0, 0, 0);
  }
}

uint64_t sub_10006FEC8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    sub_1000159AC(*(v2 + 144), &qword_100172F50, &qword_10011E500);

    return _swift_task_switch(sub_100070020, 0, 0);
  }
}

uint64_t sub_100070020()
{
  v38 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  (*(v3 + 16))(v1, *(v0 + 176), v2);
  v4 = (*(v3 + 88))(v1, v2);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  if (v4 == enum case for OperationTimeoutResult.success<A>(_:))
  {
    (*(v5 + 96))(*(v0 + 168), v7);
    v8 = *v6;
    v9 = v6[2];
    *(v0 + 32) = v6[1];
    *(v0 + 48) = v9;
    *(v0 + 16) = v8;
    v10 = v6[3];
    v11 = v6[4];
    v12 = v6[5];
    *(v0 + 112) = *(v6 + 24);
    *(v0 + 80) = v11;
    *(v0 + 96) = v12;
    *(v0 + 64) = v10;
    if (*(v0 + 24))
    {
      v14 = *(v0 + 96);
      v13 = *(v0 + 104);
      v15 = *(v0 + 112);

      sub_1000159AC(v0 + 16, &qword_100174488, &qword_10011B208);
      if (v13)
      {
        (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
        goto LABEL_11;
      }
    }
  }

  else
  {
    (*(v5 + 8))(*(v0 + 168), v7);
  }

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 128);
  v17 = type metadata accessor for Logger();
  sub_100007D20(v17, qword_10017F350);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v16, v20, v21, v22, v23, v24, v25, v26;
  v27 = os_log_type_enabled(v18, v19);
  v28 = *(v0 + 176);
  v29 = *(v0 + 152);
  v30 = *(v0 + 160);
  if (v27)
  {
    v32 = *(v0 + 120);
    v31 = *(v0 + 128);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_10003E81C(v32, v31, &v37);
    _os_log_impl(&_mh_execute_header, v18, v19, "Timed out attempting to resolve a iMessageHandle-able handle for contact with identifier: %s", v33, 0xCu);
    sub_100007920(v34);
  }

  (*(v30 + 8))(v28, v29);
  v14 = 0;
  v13 = 0;
  v15 = 0;
LABEL_11:

  v35 = *(v0 + 8);

  return v35(v14, v13, v15);
}

uint64_t sub_1000702F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[46] = a3;
  v4[47] = a4;
  v4[44] = a1;
  v4[45] = a2;
  v5 = sub_1000077C8(&qword_100174480, &qword_10011B200);
  v4[48] = v5;
  v4[49] = *(v5 - 8);
  v4[50] = swift_task_alloc();
  v6 = sub_1000077C8(&unk_100174470, &unk_10011B1E0);
  v4[51] = v6;
  v4[52] = *(v6 - 8);
  v4[53] = swift_task_alloc();
  v7 = sub_1000077C8(&qword_100175190, &qword_10011CCF0);
  v4[54] = v7;
  v4[55] = *(v7 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();

  return _swift_task_switch(sub_1000704A4, 0, 0);
}

uint64_t sub_1000704A4()
{
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[52];
  v5 = v0[53];
  v6 = v0[51];
  v17 = v0[56];
  v7 = v0[46];
  v8 = v0[47];
  v9 = v0[45];
  *v5 = 1;
  (*(v4 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v6);
  sub_100007878(v9 + 16, (v0 + 39));
  v10 = *(v9 + 56);
  v11 = swift_task_alloc();
  v11[2] = v0 + 39;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v10;
  AsyncStream.init(_:bufferingPolicy:_:)();

  v12 = sub_100007920(v0 + 39);
  (*(v3 + 16))(v17, v1, v2, v12);
  sub_1000199C8(&qword_100175198, &qword_100175190, &qword_10011CCF0, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v13 = sub_1000199C8(&qword_1001751A0, &qword_100174480, &qword_10011B200, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v14 = swift_task_alloc();
  v0[58] = v14;
  *v14 = v0;
  v14[1] = sub_1000706A8;
  v15 = v0[48];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v15, v13);
}

uint64_t sub_1000706A8()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[49];
    v3 = v2[50];
    v5 = v2[48];

    (*(v4 + 8))(v3, v5);
    v6 = j_nullsub_1;
  }

  else
  {
    v6 = sub_1000707E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000707E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 80);
  *(v0 + 256) = *(v0 + 64);
  *(v0 + 272) = v3;
  *(v0 + 288) = *(v0 + 96);
  *(v0 + 304) = *(v0 + 112);
  v4 = *(v0 + 48);
  *(v0 + 224) = *(v0 + 32);
  *(v0 + 240) = v4;
  if (!v1)
  {
    v28 = *(v0 + 456);
    v29 = *(v0 + 432);
    v30 = *(v0 + 440);
    v31 = *(v0 + 352);
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
    (*(v30 + 8))(v28, v29);
    *v31 = v2;
    *(v31 + 8) = 0;
    v32 = *(v0 + 240);
    *(v31 + 16) = *(v0 + 224);
    *(v31 + 32) = v32;
    v33 = *(v0 + 256);
    v34 = *(v0 + 272);
    v35 = *(v0 + 288);
    *(v31 + 96) = *(v0 + 304);
    *(v31 + 64) = v34;
    *(v31 + 80) = v35;
    *(v31 + 48) = v33;
    goto LABEL_5;
  }

  v5 = *(v0 + 80);
  *(v0 + 200) = *(v0 + 96);
  v6 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  *(v0 + 184) = v5;
  v7 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v7;
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 152) = v6;

  if (v8)
  {
    v16 = *(v0 + 456);
    v17 = *(v0 + 432);
    v18 = *(v0 + 440);
    v20 = *(v0 + 392);
    v19 = *(v0 + 400);
    v21 = *(v0 + 384);
    v22 = *(v0 + 352);
    v8, v9, v10, v11, v12, v13, v14, v15;
    (*(v20 + 8))(v19, v21);
    (*(v18 + 8))(v16, v17);
    v23 = *(v0 + 120);
    v24 = *(v0 + 152);
    *(v22 + 16) = *(v0 + 136);
    *(v22 + 32) = v24;
    *v22 = v23;
    v25 = *(v0 + 168);
    v26 = *(v0 + 184);
    v27 = *(v0 + 200);
    *(v22 + 96) = *(v0 + 216);
    *(v22 + 64) = v26;
    *(v22 + 80) = v27;
    *(v22 + 48) = v25;
LABEL_5:

    v36 = *(v0 + 8);

    return v36();
  }

  sub_1000159AC(v0 + 120, &qword_100174488, &qword_10011B208);
  v38 = sub_1000199C8(&qword_1001751A0, &qword_100174480, &qword_10011B200, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v39 = swift_task_alloc();
  *(v0 + 464) = v39;
  *v39 = v0;
  v39[1] = sub_1000706A8;
  v40 = *(v0 + 384);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v40, v38);
}

uint64_t sub_100070A98()
{
  sub_100007920((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_100070B00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_1000702F8(a1, v4, v5, v6);
}

uint64_t sub_100070C10()
{
  v1 = sub_1000077C8(&qword_1001751A8, &qword_10011CCF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 107) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5 + 8), v7, v8, v9, v10, v11, v12, v13;
  *(v0 + v5 + 24), v14, v15, v16, v17, v18, v19, v20;
  *(v0 + v5 + 40), v21, v22, v23, v24, v25, v26, v27;
  *(v0 + v5 + 48), v28, v29, v30, v31, v32, v33, v34;
  *(v0 + v5 + 64), v35, v36, v37, v38, v39, v40, v41;
  *(v0 + v5 + 88), v42, v43, v44, v45, v46, v47, v48;

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100070D38(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000077C8(&qword_1001751A8, &qword_10011CCF8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + ((v7 + 107) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000BCF0;

  return sub_10006E468(a1, v8, v9, v1 + v6, v1 + v7, v10);
}

void sub_100070EA0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v74 = &_swiftEmptyArrayStorage;
    sub_10000E4F4(0, v4, 0);
    v6 = &_swiftEmptyArrayStorage;
    v7 = v5 + 56;
    v8 = _HashTable.startBucket.getter();
    v9 = 0;
    v58 = v5 + 64;
    v59 = v4;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v61 = v9;
      v62 = *(v5 + 36);
      v12 = v5;
      v13 = *(v5 + 48) + 24 * v8;
      v14 = *v13;
      v3 = *(v13 + 8);
      v15 = *(v13 + 16);
      v16 = *(v13 + 17);
      v17 = *(v13 + 18);
      LOBYTE(v13) = *(v13 + 19);
      v63[0] = v14;
      v63[1] = v3;
      v64 = v15;
      v65 = v16;
      v66 = v17;
      v67 = v13;

      sub_10006DA2C(v63, a2, &v68);
      if (v2)
      {
        goto LABEL_26;
      }

      v3, v18, v19, v20, v21, v22, v23, v24;
      v30 = v68;
      v31 = v69;
      v32 = v70;
      v33 = v71;
      v34 = v72;
      v35 = v73;
      v74 = v6;
      v37 = *v6->connection;
      v36 = *v6->airdropClient;
      if (v37 >= v36 >> 1)
      {
        v56 = v69;
        v57 = v68;
        v54 = v72;
        v55 = v70;
        v53 = v73;
        sub_10000E4F4((v36 > 1), v37 + 1, 1);
        v35 = v53;
        v34 = v54;
        v32 = v55;
        v31 = v56;
        v30 = v57;
        v6 = v74;
      }

      *v6->connection = v37 + 1;
      v38 = v6 + 24 * v37;
      *(v38 + 4) = v30;
      *(v38 + 5) = v31;
      v38[48] = v32;
      v38[49] = v33;
      v38[50] = v34;
      v38[51] = v35;
      v3 = (1 << *(v12 + 32));
      if (v8 >= v3)
      {
        goto LABEL_23;
      }

      v39 = *(v7 + 8 * v11);
      if ((v39 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v5 = v12;
      if (v62 != *(v12 + 36))
      {
        goto LABEL_25;
      }

      v40 = v39 & (-2 << (v8 & 0x3F));
      if (v40)
      {
        v3 = (__clz(__rbit64(v40)) | v8 & 0x7FFFFFFFFFFFFFC0);
        v10 = v59;
      }

      else
      {
        v41 = v11 << 6;
        v42 = v11 + 1;
        v10 = v59;
        v43 = (v58 + 8 * v11);
        while (v42 < &v3->nearbySharingInteractionCoordinator[7] >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            sub_100047AC0(v8, v62, 0, v25, v26, v27, v28, v29);
            v3 = (__clz(__rbit64(v44)) + v41);
            goto LABEL_4;
          }
        }

        sub_100047AC0(v8, v62, 0, v25, v26, v27, v28, v29);
      }

LABEL_4:
      v2 = 0;
      v9 = v61 + 1;
      v8 = v3;
      if (v61 + 1 == v10)
      {
        return;
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

    v3, v46, v47, v48, v49, v50, v51, v52;
    __break(1u);
  }
}

uint64_t sub_100071168()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000711A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000167E4;

  return sub_10003E520(a1, v4);
}

unint64_t sub_100071258()
{
  result = qword_1001751C0;
  if (!qword_1001751C0)
  {
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001751C0);
  }

  return result;
}

uint64_t sub_100071304()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100071344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BCF0;

  return sub_10006F430(a1, v4, v5, v6);
}

void sub_1000713F8(_TtC9AirDropUI33AirDropTransferSessionsController *a1@<X0>, void *a2@<X8>)
{
  v4 = [(AirDropTransferSessionsController *)a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [(AirDropTransferSessionsController *)a1 givenName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [(AirDropTransferSessionsController *)a1 displayName];
  if (!v12)
  {
    v12 = [(AirDropTransferSessionsController *)a1 givenName];
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v80 = a1;
  v17 = [(AirDropTransferSessionsController *)a1 emailAddresses];
  sub_1000077C8(&qword_1001751D0, &unk_10011CD50);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
LABEL_36:
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v5;
  v78 = a2;
  v72 = v9;
  v74 = v7;
  v68 = v14;
  v70 = v11;
  v66 = v16;
  if (!v26)
  {
    v18, v19, v20, v21, v22, v23, v24, v25;
    v16 = &_swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  sub_10000E4F4(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    a2 = 0;
    v16 = &_swiftEmptyArrayStorage;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v18 + 8 * a2 + 32);
      }

      v28 = v27;
      v29 = [v27 value];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v40 = *_swiftEmptyArrayStorage.connection;
      v39 = *_swiftEmptyArrayStorage.airdropClient;
      if (v40 >= v39 >> 1)
      {
        sub_10000E4F4((v39 > 1), v40 + 1, 1);
      }

      a2 = a2 + 1;
      *_swiftEmptyArrayStorage.connection = v40 + 1;
      v41 = &_swiftEmptyArrayStorage + 24 * v40;
      *(v41 + 4) = v5;
      *(v41 + 5) = v31;
      *(v41 + 12) = 0;
    }

    while (v26 != a2);
    v18, v32, v33, v34, v35, v36, v37, v38;
LABEL_16:
    v42 = [(AirDropTransferSessionsController *)v80 phoneNumbers:v66];
    v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = v43 & 0xFFFFFFFFFFFFFF8;
    if (v43 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (v11)
      {
LABEL_18:
        v14 = 0;
        v7 = v43 & 0xC000000000000001;
        v80 = &_swiftEmptyArrayStorage;
        do
        {
          v18 = v14;
          while (1)
          {
            if (v7)
            {
              v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v18 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_35;
              }

              v51 = *(v43 + 8 * v18 + 32);
            }

            a2 = v51;
            v14 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            v52 = [v51 value];
            v5 = [v52 unformattedInternationalStringValue];

            if (v5)
            {
              break;
            }

            ++v18;
            if (v14 == v11)
            {
              goto LABEL_39;
            }
          }

          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_1000A5AD0(0, *v80->connection + 1, 1, v80, v47, v48, v49, v50);
          }

          v5 = *v80->connection;
          v56 = *v80->airdropClient;
          a2 = (v5 + 1);
          if (v5 >= v56 >> 1)
          {
            v80 = sub_1000A5AD0((v56 > 1), v5 + 1, 1, v80, v47, v48, v49, v50);
          }

          *v80->connection = a2;
          v57 = v80 + 24 * v5;
          *(v57 + 4) = v53;
          *(v57 + 5) = v55;
          *(v57 + 12) = 0;
        }

        while (v14 != v11);
        goto LABEL_39;
      }
    }

    else
    {
      v11 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_18;
      }
    }

    v80 = &_swiftEmptyArrayStorage;
LABEL_39:
    v43, v44, v45, v46, v47, v48, v49, v50;
    sub_1000A5CD0(v80);
    v58 = sub_1000905CC(&_swiftEmptyArrayStorage);
    &_swiftEmptyArrayStorage, v59, v60, v61, v62, v63, v64, v65;
    *v79 = v77;
    *(v79 + 8) = v75;
    *(v79 + 16) = v73;
    *(v79 + 24) = v71;
    *(v79 + 32) = v69;
    *(v79 + 40) = v67;
    *(v79 + 48) = v58;
    *(v79 + 56) = 0;
    *(v79 + 64) = 0;
    *(v79 + 72) = 0;
    *(v79 + 80) = 0;
    *(v79 + 88) = 0;
    *(v79 + 96) = 0;
    return;
  }

  __break(1u);
}

uint64_t sub_10007189C()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_1001751D8);
  v1 = sub_100007D20(v0, qword_1001751D8);
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F338);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100071964@<X0>(char *a1@<X0>, uint64_t (**a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a4;
  v7 = type metadata accessor for TapGesture();
  v8 = *(v7 - 8);
  v67 = v7;
  v68 = v8;
  __chkstk_darwin(v7);
  v65 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000077C8(&qword_1001751F0, &qword_10011CE00);
  v11 = *(v10 - 8);
  v69 = v10;
  v70 = v11;
  __chkstk_darwin(v10);
  v66 = &v55 - v12;
  v72 = sub_1000077C8(&qword_1001751F8, &qword_10011CE08);
  __chkstk_darwin(v72);
  v14 = &v55 - v13;
  v15 = sub_1000077C8(&qword_100175200, &qword_10011CE10);
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  __chkstk_darwin(v15 - 8);
  v58 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  v20 = a1;
  sub_100071E5C(a2, &v73);
  v22 = v73;
  v21 = v74;
  v63 = v76;
  v64 = v75;
  v61 = v78;
  v62 = v77;
  v60 = v79;
  v73 = v75;
  v74 = v76;
  v75 = v77;
  v76 = v78;
  LOBYTE(v77) = v79;
  v23 = sub_10007236C(v20, a2);
  v57 = v19;
  v56 = v20;
  sub_100072984(a2, v19);
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0x4028000000000000;
  v14[16] = 0;
  v24 = sub_1000077C8(&qword_100175208, &unk_10011CE18);
  sub_100073190(v20, a2, a3, v22, v21, &v73, v23, &v14[*(v24 + 44)]);
  v23, v25, v26, v27, v28, v29, v30, v31;
  v21, v32, v33, v34, v35, v36, v37, v38;
  if (a3)
  {
    v39 = 0x402E000000000000;
  }

  else
  {
    v39 = 0x4030000000000000;
  }

  if (a3)
  {
    v40 = 0x4036000000000000;
  }

  else
  {
    v40 = 0x4030000000000000;
  }

  if (a3)
  {
    v41 = 0x4031000000000000;
  }

  else
  {
    v41 = 0x4030000000000000;
  }

  v42 = static Edge.Set.all.getter();
  v43 = &v14[*(v72 + 36)];
  *v43 = v42;
  *(v43 + 1) = v39;
  *(v43 + 2) = v40;
  *(v43 + 3) = v39;
  *(v43 + 4) = v41;
  v43[40] = 0;
  v44 = v65;
  TapGesture.init(count:)();
  v45 = v58;
  sub_100007BA4(v19, v58, &qword_100175200, &qword_10011CE10);
  v46 = (*(v59 + 80) + 33) & ~*(v59 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v56;
  *(v47 + 24) = a2;
  *(v47 + 32) = a3;
  sub_100021A84(v45, v47 + v46, &qword_100175200, &qword_10011CE10);

  v48 = v66;
  v49 = v67;
  Gesture.onEnded(_:)();

  (*(v68 + 8))(v44, v49);
  static GestureMask.all.getter();
  sub_100077BA8();
  sub_1000199C8(&qword_100175228, &qword_1001751F0, &qword_10011CE00, &protocol conformance descriptor for _EndedGesture<A>);
  v50 = v69;
  View.gesture<A>(_:including:)();
  sub_10004BB08(v64, v63, v62, v61, v60, v51, v52, v53);
  (*(v70 + 8))(v48, v50);
  sub_1000159AC(v14, &qword_1001751F8, &qword_10011CE08);
  return sub_1000159AC(v57, &qword_100175200, &qword_10011CE10);
}

uint64_t sub_100071E5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v57 = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000077C8(&qword_100173CA8, &unk_10011A310);
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  v10 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v53 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v11 + 88))(v13, v10) != enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
  {
    (*(v11 + 8))(v13, v10);
LABEL_6:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v36 = String.init(localized:table:bundle:locale:comment:)();
    v37 = v52;
    v39 = *(v57 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
    v38 = *(v57 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);

    v51 = 0;
    v50 = 64;
    goto LABEL_7;
  }

  (*(v11 + 96))(v13, v10);
  v18 = sub_1000077C8(&qword_100173078, &unk_100118F60);
  *&v13[v18[12]], v19, v20, v21, v22, v23, v24, v25;
  *&v13[v18[16]], v26, v27, v28, v29, v30, v31, v32;
  (*(v15 + 32))(v17, &v13[v18[20]], v14);
  v33 = type metadata accessor for SFAirDropReceive.ItemDestination();
  (*(*(v33 - 8) + 8))(v13, v33);
  SFAirDrop.PermissionRequest.style.getter();
  (*(v15 + 8))(v17, v14);
  v35 = v53;
  v34 = v54;
  if ((*(v53 + 88))(v9, v54) != enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
  {
    (*(v35 + 8))(v9, v34);
    goto LABEL_6;
  }

  (*(v35 + 96))(v9, v34);
  v36 = *v9;
  v37 = *(v9 + 1);
  v39 = *(v9 + 2);
  v38 = *(v9 + 3);
  *(v9 + 4), v40, v41, v42, v43, v44, v45, v46;
  v47 = *(sub_1000077C8(&qword_100173CC0, qword_10011D010) + 80);
  v48 = type metadata accessor for SFAirDrop.DeclineAction();
  result = (*(*(v48 - 8) + 8))(&v9[v47], v48);
  v50 = 0;
  v51 = 1;
LABEL_7:
  *a2 = v36;
  *(a2 + 8) = v37;
  *(a2 + 16) = v39;
  *(a2 + 24) = v38;
  *(a2 + 32) = 0;
  *(a2 + 40) = v51;
  *(a2 + 48) = v50;
  return result;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10007236C(uint64_t a1, uint64_t (**a2)(char *, char *, uint64_t))
{
  v82 = a2;
  v81 = sub_1000077C8(&unk_100172F90, &qword_100118CE0);
  v2 = *(v81 - 8);
  __chkstk_darwin(v81);
  v83 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v80 = &v73 - v5;
  v6 = sub_1000077C8(&qword_100173CA8, &unk_10011A310);
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v8 = (&v73 - v7);
  v9 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v10 + 88))(v12, v9) != enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
  {
    (*(v10 + 8))(v12, v9);
    return &_swiftEmptyArrayStorage;
  }

  (*(v10 + 96))(v12, v9);
  v17 = sub_1000077C8(&qword_100173078, &unk_100118F60);
  *&v12[v17[12]], v18, v19, v20, v21, v22, v23, v24;
  *&v12[v17[16]], v25, v26, v27, v28, v29, v30, v31;
  (*(v14 + 32))(v16, &v12[v17[20]], v13);
  v32 = type metadata accessor for SFAirDropReceive.ItemDestination();
  (*(*(v32 - 8) + 8))(v12, v32);
  SFAirDrop.PermissionRequest.style.getter();
  v34 = v78;
  v33 = v79;
  if ((*(v78 + 88))(v8, v79) != enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
  {
    (*(v14 + 8))(v16, v13);
    (*(v34 + 8))(v8, v33);
    return &_swiftEmptyArrayStorage;
  }

  v74 = v16;
  v75 = v14;
  v76 = v13;
  (*(v34 + 96))(v8, v33);
  v8[1], v35, v36, v37, v38, v39, v40, v41;
  v8[3], v42, v43, v44, v45, v46, v47, v48;
  v49 = v8[4];
  v50 = *(sub_1000077C8(&qword_100173CC0, qword_10011D010) + 80);
  v51 = type metadata accessor for SFAirDrop.DeclineAction();
  result = (*(*(v51 - 8) + 8))(v8 + v50, v51);
  v53 = *v49->connection;
  if (!v53)
  {
    v55 = &_swiftEmptyArrayStorage;
LABEL_18:
    (*(v75 + 8))(v74, v76);
    v49, v66, v67, v68, v69, v70, v71, v72;
    return v55;
  }

  v54 = 0;
  v82 = (v2 + 32);
  v77 = (v2 + 8);
  v55 = &_swiftEmptyArrayStorage;
  v57 = v80;
  v56 = v81;
  v78 = v2 + 16;
  v79 = v49;
  while (v54 < *v49->connection)
  {
    v58 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v59 = *(v2 + 72);
    (*(v2 + 16))(v57, v49 + v58 + v59 * v54, v56);
    if (SFAirDrop.AcceptAction.hidden.getter())
    {
      result = (*v77)(v57, v56);
    }

    else
    {
      v60 = v2;
      v61 = *v82;
      (*v82)(v83, v57, v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000E454(0, *v55->connection + 1, 1);
        v55 = v84;
      }

      v64 = *v55->connection;
      v63 = *v55->airdropClient;
      if (v64 >= v63 >> 1)
      {
        sub_10000E454((v63 > 1), v64 + 1, 1);
        v55 = v84;
      }

      *v55->connection = v64 + 1;
      v65 = v55 + v58 + v64 * v59;
      v56 = v81;
      result = v61(v65, v83, v81);
      v2 = v60;
      v49 = v79;
      v57 = v80;
    }

    if (v53 == ++v54)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100072984@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v96 = a1;
  v92 = a2;
  v94 = sub_1000077C8(&unk_100172F90, &qword_100118CE0);
  v98 = *(v94 - 8);
  __chkstk_darwin(v94);
  v3 = &v81 - v2;
  v97 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v88 = *(v97 - 8);
  v93 = v88;
  __chkstk_darwin(v97);
  v86 = &v81 - v4;
  v5 = sub_1000077C8(&qword_100175200, &qword_10011CE10);
  __chkstk_darwin(v5 - 8);
  v87 = &v81 - v6;
  v95 = sub_1000077C8(&qword_100173CA8, &unk_10011A310);
  v91 = *(v95 - 8);
  __chkstk_darwin(v95);
  v8 = &v81 - v7;
  v9 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v81 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v10 + 88))(v12, v9) != enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
  {
    (*(v10 + 8))(v12, v9);
    return (v93[7])(v92, 1, 1, v97);
  }

  (*(v10 + 96))(v12, v9);
  v17 = sub_1000077C8(&qword_100173078, &unk_100118F60);
  *&v12[v17[12]], v18, v19, v20, v21, v22, v23, v24;
  *&v12[v17[16]], v25, v26, v27, v28, v29, v30, v31;
  (*(v14 + 32))(v16, &v12[v17[20]], v13);
  v32 = type metadata accessor for SFAirDropReceive.ItemDestination();
  (*(*(v32 - 8) + 8))(v12, v32);
  SFAirDrop.PermissionRequest.style.getter();
  v33 = v91;
  v34 = v95;
  if ((v91[11])(v8, v95) != enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
  {
    (*(v14 + 8))(v16, v13);
    (v33[1])(v8, v34);
    return (v93[7])(v92, 1, 1, v97);
  }

  v83 = v16;
  v84 = v14;
  v85 = v13;
  (v33[12])(v8, v34);
  *(v8 + 1), v35, v36, v37, v38, v39, v40, v41;
  *(v8 + 3), v42, v43, v44, v45, v46, v47, v48;
  v49 = *(v8 + 4);
  v50 = *(sub_1000077C8(&qword_100173CC0, qword_10011D010) + 80);
  v51 = type metadata accessor for SFAirDrop.DeclineAction();
  v52 = &v8[v50];
  v53 = v49;
  (*(*(v51 - 8) + 8))(v52, v51);
  v54 = v93[7];
  v93 += 7;
  v82 = v54;
  result = (v54)(v87, 1, 1, v97);
  v63 = *v49->connection;
  v64 = v94;
  v65 = v86;
  if (v63)
  {
    v66 = 0;
    v67 = v53 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    LODWORD(v96) = enum case for SFAirDrop.AcceptAction.single<A>(_:);
    v89 = (v98 + 96);
    v90 = (v98 + 8);
    v91 = (v88 + 4);
    ++v88;
    while (v66 < *v53->connection)
    {
      v68 = v98;
      (*(v98 + 16))(v3, &v67[*(v98 + 72) * v66], v64);
      v69 = (*(v68 + 88))(v3, v64);
      if (v69 == v96)
      {
        (*v89)(v3, v64);
        v95 = *(sub_1000077C8(&qword_100173CC8, &qword_10011A330) + 48);
        v70 = *v91;
        v71 = v97;
        (*v91)(v65, v3, v97);
        v72 = type metadata accessor for UUID();
        (*(*(v72 - 8) + 8))(&v3[v95], v72);
        if (SFAirDrop.AcceptAction.Single.hidden.getter())
        {
          v53, v73, v74, v75, v76, v77, v78, v79;
          v80 = v87;
          sub_1000159AC(v87, &qword_100175200, &qword_10011CE10);
          (*(v84 + 8))(v83, v85);
          v70(v80, v65, v71);
          (v82)(v80, 0, 1, v71);
          return sub_100021A84(v87, v92, &qword_100175200, &qword_10011CE10);
        }

        result = (*v88)(v65, v71);
        v64 = v94;
      }

      else
      {
        result = (*v90)(v3, v64);
      }

      if (v63 == ++v66)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v53, v56, v57, v58, v59, v60, v61, v62;
    (*(v84 + 8))(v83, v85);
    return sub_100021A84(v87, v92, &qword_100175200, &qword_10011CE10);
  }

  return result;
}

void sub_100073190(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v55 = a7;
  v57 = a6;
  v58 = a4;
  v59 = a5;
  v69 = a3;
  v70 = a1;
  v62 = a8;
  v9 = sub_1000077C8(&qword_100175230, &qword_10011CE98);
  v64 = *(v9 - 8);
  v65 = v9;
  __chkstk_darwin(v9);
  v54 = (&v53 - v10);
  v11 = sub_1000077C8(&qword_100175238, &unk_10011CEA0);
  __chkstk_darwin(v11 - 8);
  v68 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = sub_1000077C8(&qword_100174100, &qword_10011AD08);
  __chkstk_darwin(v16 - 8);
  v66 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v71 = (&v53 - v19);
  v20 = type metadata accessor for DeviceLockState();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v53 - v25;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v27 = enum case for DeviceLockState.unlocked(_:);
  v56 = *(v21 + 104);
  v56(v23);
  v28 = static DeviceLockState.== infix(_:_:)();
  v29 = *(v21 + 8);
  v29(v23, v20);
  v29(v26, v20);
  v67 = v15;
  if (v28)
  {
    type metadata accessor for AirDropTransferSession(0);
    sub_100078434(&qword_100173460, type metadata accessor for AirDropTransferSession, &unk_10011D344);
    v63 = ObservedObject.init(wrappedValue:)();
    v30 = v69;
    v60 = v69 & 1;
    v61 = v31;
  }

  else
  {

    v63 = 0;
    v60 = 0;
    v61 = 0;
    v30 = v69;
  }

  v32 = static HorizontalAlignment.leading.getter();
  v33 = v71;
  *v71 = v32;
  v33[1] = 0;
  *(v33 + 16) = 0;
  v34 = sub_1000077C8(&qword_100174108, &qword_10011CEB0);
  sub_100073884(v30 & 1, v58, v59, v57, v33 + *(v34 + 44));
  swift_getKeyPath();
  swift_getKeyPath();
  v59 = a2;
  static Published.subscript.getter();

  (v56)(v23, v27, v20);
  v35 = static DeviceLockState.== infix(_:_:)();
  v29(v23, v20);
  v29(v26, v20);
  if (v35)
  {
    v36 = v55;
    v37 = v67;
    v38 = v65;
    if (*(v55 + 16))
    {
      v39 = *(sub_1000077C8(&unk_100172F90, &qword_100118CE0) - 8);
      v40 = v36 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v41 = v54;
      sub_100073D40(v40, 1, v70, v59, v69 & 1, v54);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v42 = (v41 + *(v38 + 36));
      v43 = v73;
      *v42 = v72;
      v42[1] = v43;
      v42[2] = v74;
      sub_1000781A8(v41, v37);
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }
  }

  else
  {
    v44 = 1;
    v37 = v67;
    v38 = v65;
  }

  (*(v64 + 56))(v37, v44, 1, v38);
  v45 = v71;
  v46 = v66;
  sub_100007BA4(v71, v66, &qword_100174100, &qword_10011AD08);
  v47 = v68;
  sub_100007BA4(v37, v68, &qword_100175238, &unk_10011CEA0);
  v49 = v62;
  v48 = v63;
  v51 = v60;
  v50 = v61;
  *v62 = v63;
  v49[1] = v50;
  v49[3] = 0;
  v49[4] = 0;
  v49[2] = v51;
  *(v49 + 40) = 0;
  v52 = sub_1000077C8(&qword_100175240, &unk_10011CEB8);
  sub_100007BA4(v46, v49 + *(v52 + 48), &qword_100174100, &qword_10011AD08);
  sub_100007BA4(v47, v49 + *(v52 + 64), &qword_100175238, &unk_10011CEA0);
  sub_10004DC44(v48, v50, v51, 0, 0);
  sub_10004DCA8(v48, v50, v51, 0, 0);
  sub_1000159AC(v37, &qword_100175238, &unk_10011CEA0);
  sub_1000159AC(v45, &qword_100174100, &qword_10011AD08);
  sub_1000159AC(v47, &qword_100175238, &unk_10011CEA0);
  sub_1000159AC(v46, &qword_100174100, &qword_10011AD08);
  sub_10004DCA8(v48, v50, v51, 0, 0);
}

uint64_t sub_100073884@<X0>(char a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v46 = a3;
  v44 = a2;
  v38 = type metadata accessor for Font.TextStyle();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AirDropDescriptionView(0);
  __chkstk_darwin(v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000077C8(&qword_100174138, &unk_10011AE80);
  __chkstk_darwin(v45);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  if (a1)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v42 = 0;
    v43 = v50;
    v41 = v52;
    v40 = v54;
    v39 = v55;
    v49 = 1;
    v48 = v51;
    v47 = v53;
    v22 = 1;
    v36 = v51;
    v37 = v53;
    LOBYTE(v56[0]) = 0;
  }

  else
  {
    v43 = 0;
    v41 = 0;
    v40 = 0;
    v39 = 0;
    v37 = 0;
    v36 = 0;
    v22 = 0;
    v42 = 1;
  }

  *&v56[0] = 0x402C000000000000;
  (*(v8 + 104))(v10, enum case for Font.TextStyle.subheadline(_:), v38);
  sub_10004A578();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v23 = &v13[v11[5]];
  v24 = v46;
  *v23 = v44;
  v23[1] = v24;
  v25 = &v13[v11[6]];
  v26 = *(a4 + 16);
  *v25 = *a4;
  *(v25 + 1) = v26;
  v25[32] = *(a4 + 32);
  *&v13[v11[7]] = 0x3FE0000000000000;

  sub_100078D60(a4, v56);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10004DDC8(v13, v18);
  v27 = &v18[*(v45 + 36)];
  v28 = v56[5];
  *(v27 + 4) = v56[4];
  *(v27 + 5) = v28;
  *(v27 + 6) = v56[6];
  v29 = v56[1];
  *v27 = v56[0];
  *(v27 + 1) = v29;
  v30 = v56[3];
  *(v27 + 2) = v56[2];
  *(v27 + 3) = v30;
  sub_100021A84(v18, v21, &qword_100174138, &unk_10011AE80);
  sub_100007BA4(v21, v15, &qword_100174138, &unk_10011AE80);
  *a5 = 0;
  *(a5 + 8) = v22;
  v31 = v36;
  *(a5 + 16) = v43;
  *(a5 + 24) = v31;
  v32 = v37;
  *(a5 + 32) = v41;
  *(a5 + 40) = v32;
  v33 = v39;
  *(a5 + 48) = v40;
  *(a5 + 56) = v33;
  *(a5 + 64) = v42;
  v34 = sub_1000077C8(&qword_100174140, &qword_100122070);
  sub_100007BA4(v15, a5 + *(v34 + 48), &qword_100174138, &unk_10011AE80);
  sub_1000159AC(v21, &qword_100174138, &unk_10011AE80);
  return sub_1000159AC(v15, &qword_100174138, &unk_10011AE80);
}

uint64_t sub_100073D40@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X2>, char *a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v164 = a5;
  v163 = a4;
  v162 = a3;
  v160 = a2;
  v158 = a1;
  v174 = a6;
  v156 = sub_1000077C8(&qword_100175248, &qword_10011CEC8);
  __chkstk_darwin(v156);
  v141 = &v123 - v6;
  v157 = sub_1000077C8(&qword_100175250, &qword_10011CED0);
  v143 = *(v157 - 8);
  __chkstk_darwin(v157);
  v142 = &v123 - v7;
  v152 = sub_1000077C8(&qword_100175258, &qword_10011CED8);
  __chkstk_darwin(v152);
  v155 = &v123 - v8;
  v151 = sub_1000077C8(&qword_100175260, &qword_10011CEE0);
  __chkstk_darwin(v151);
  v135 = (&v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v136 = (&v123 - v11);
  v153 = sub_1000077C8(&qword_100175268, &qword_10011CEE8);
  v140 = *(v153 - 8);
  __chkstk_darwin(v153);
  v139 = &v123 - v12;
  v173 = sub_1000077C8(&qword_100175270, &unk_10011CEF0);
  __chkstk_darwin(v173);
  v154 = &v123 - v13;
  v168 = sub_1000077C8(&qword_100175278, &unk_10011F2F0);
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v166 = &v123 - v14;
  v171 = sub_1000077C8(&qword_100175280, &qword_10011CF00);
  __chkstk_darwin(v171);
  v172 = &v123 - v15;
  v149 = sub_1000077C8(&qword_100175288, &qword_10011CF08);
  __chkstk_darwin(v149);
  v134 = &v123 - v16;
  v150 = sub_1000077C8(&qword_100175290, &qword_10011CF10);
  v138 = *(v150 - 8);
  __chkstk_darwin(v150);
  v137 = &v123 - v17;
  v147 = sub_1000077C8(&qword_100175298, &qword_10011CF18);
  __chkstk_darwin(v147);
  v148 = &v123 - v18;
  v161 = type metadata accessor for AirDropUIButtonStyle.Style();
  v159 = *(v161 - 8);
  __chkstk_darwin(v161);
  v131 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v128 = (&v123 - v21);
  __chkstk_darwin(v22);
  v133 = &v123 - v23;
  __chkstk_darwin(v24);
  v26 = (&v123 - v25);
  v169 = type metadata accessor for AirDropUIButtonStyle();
  v165 = *(v169 - 8);
  __chkstk_darwin(v169);
  v130 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v126 = &v123 - v29;
  __chkstk_darwin(v30);
  v132 = &v123 - v31;
  __chkstk_darwin(v32);
  v34 = &v123 - v33;
  v144 = sub_1000077C8(&qword_1001752A0, &qword_10011CF20);
  __chkstk_darwin(v144);
  v36 = (&v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37);
  v39 = (&v123 - v38);
  v145 = sub_1000077C8(&qword_1001752A8, &qword_10011CF28);
  v129 = *(v145 - 8);
  __chkstk_darwin(v145);
  v127 = &v123 - v40;
  v170 = sub_1000077C8(&qword_1001752B0, &qword_10011CF30);
  __chkstk_darwin(v170);
  v146 = &v123 - v41;
  v42 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v45 = &v123 - v44;
  v46 = sub_1000077C8(&unk_100172F90, &qword_100118CE0);
  v47 = *(v46 - 8);
  v48 = __chkstk_darwin(v46);
  v50 = &v123 - v49;
  (*(v47 + 16))(&v123 - v49, v158, v46, v48);
  v51 = (*(v47 + 88))(v50, v46);
  v175 = v50;
  if (v51 == enum case for SFAirDrop.AcceptAction.single<A>(_:))
  {
    (*(v47 + 96))(v50, v46);
    (*(v43 + 32))(v45, v50, v42);
    v52 = v45;
    v125 = v42;
    v124 = v43;
    v123 = v45;
    if (v160)
    {
      if (v164)
      {
        v53 = &enum case for AirDropUIButtonStyle.Style.jindoCircular(_:);
      }

      else
      {
        v53 = &enum case for AirDropUIButtonStyle.Style.nonJindoCircular(_:);
      }

      sub_100075844(v52, v162, v163, v164 & 1, v39);
      *v26 = 0x4049000000000000;
      (*(v159 + 104))(v26, *v53, v161);
      AirDropUIButtonStyle.init(style:)();
      v54 = sub_100078608();
      v55 = sub_100078434(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
      v56 = v127;
      v57 = v144;
      v58 = v169;
      View.buttonStyle<A>(_:)();
      (*(v165 + 8))(v34, v58);
      sub_1000159AC(v39, &qword_1001752A0, &qword_10011CF20);
      v59 = v129;
      v60 = v145;
      (*(v129 + 16))(v148, v56, v145);
      swift_storeEnumTagMultiPayload();
      *&v180 = v57;
      *(&v180 + 1) = v58;
      *&v181 = v54;
      *(&v181 + 1) = v55;
      swift_getOpaqueTypeConformance2();
      v61 = sub_100078218(&qword_100175358, &qword_100175288, &qword_10011CF08, sub_100078608);
      *&v180 = v149;
      *(&v180 + 1) = v58;
      *&v181 = v61;
      *(&v181 + 1) = v55;
      swift_getOpaqueTypeConformance2();
      v62 = v146;
      _ConditionalContent<>.init(storage:)();
      v63 = v56;
      v64 = v123;
      (*(v59 + 8))(v63, v60);
      v65 = v125;
    }

    else
    {
      v84 = v164;
      sub_100075844(v45, v162, v163, v164 & 1, v36);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v85 = v134;
      sub_100021A84(v36, v134, &qword_1001752A0, &qword_10011CF20);
      v86 = v149;
      v87 = (v85 + *(v149 + 36));
      v88 = v185;
      v87[4] = v184;
      v87[5] = v88;
      v87[6] = v186;
      v89 = v181;
      *v87 = v180;
      v87[1] = v89;
      v90 = v183;
      v91 = (v159 + 104);
      v87[2] = v182;
      v87[3] = v90;
      if (v84)
      {
        if (SFAirDrop.AcceptAction.Single.prominent.getter())
        {
          v92 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
        }

        else
        {
          v92 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
        }

        (*v91)(v133, *v92, v161);
      }

      else
      {
        (*v91)(v133, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v161);
      }

      v112 = v132;
      AirDropUIButtonStyle.init(style:)();
      v113 = sub_100078218(&qword_100175358, &qword_100175288, &qword_10011CF08, sub_100078608);
      v114 = sub_100078434(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
      v115 = v137;
      v116 = v169;
      View.buttonStyle<A>(_:)();
      (*(v165 + 8))(v112, v116);
      sub_1000159AC(v85, &qword_100175288, &qword_10011CF08);
      v117 = v138;
      v118 = v150;
      (*(v138 + 16))(v148, v115, v150);
      swift_storeEnumTagMultiPayload();
      v119 = sub_100078608();
      v176 = v144;
      v177 = v116;
      v178 = v119;
      v179 = v114;
      swift_getOpaqueTypeConformance2();
      v176 = v86;
      v177 = v116;
      v178 = v113;
      v179 = v114;
      swift_getOpaqueTypeConformance2();
      v62 = v146;
      _ConditionalContent<>.init(storage:)();
      (*(v117 + 8))(v115, v118);
      v65 = v125;
      v64 = v123;
    }

    v111 = *(sub_1000077C8(&qword_100173CC8, &qword_10011A330) + 48);
    sub_100007BA4(v62, v172, &qword_1001752B0, &qword_10011CF30);
    swift_storeEnumTagMultiPayload();
    sub_10007847C();
    sub_1000787A0();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v62, &qword_1001752B0, &qword_10011CF30);
    (*(v124 + 8))(v64, v65);
    goto LABEL_26;
  }

  v66 = v160;
  if (v51 == enum case for SFAirDrop.AcceptAction.composite<A>(_:))
  {
    v67 = v175;
    (*(v47 + 96))(v175, v46);
    v68 = v166;
    (*(v167 + 32))(v166, v67, v168);
    if (v66)
    {
      if (v164)
      {
        v69 = &enum case for AirDropUIButtonStyle.Style.jindoCircular(_:);
      }

      else
      {
        v69 = &enum case for AirDropUIButtonStyle.Style.nonJindoCircular(_:);
      }

      v70 = v136;
      sub_100076394(v68, v162, v163, v164 & 1, v136);
      v71 = v128;
      *v128 = 0x4049000000000000;
      (*(v159 + 104))(v71, *v69, v161);
      v72 = v126;
      AirDropUIButtonStyle.init(style:)();
      v73 = sub_10007829C();
      v74 = sub_100078434(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
      v75 = v139;
      v76 = v151;
      v77 = v169;
      View.buttonStyle<A>(_:)();
      (*(v165 + 8))(v72, v77);
      sub_1000159AC(v70, &qword_100175260, &qword_10011CEE0);
      v78 = v140;
      v79 = v153;
      (*(v140 + 16))(v155, v75, v153);
      swift_storeEnumTagMultiPayload();
      *&v180 = v76;
      *(&v180 + 1) = v77;
      *&v181 = v73;
      *(&v181 + 1) = v74;
      swift_getOpaqueTypeConformance2();
      v80 = sub_100078218(&qword_1001752B8, &qword_100175248, &qword_10011CEC8, sub_10007829C);
      *&v180 = v156;
      *(&v180 + 1) = v77;
      *&v181 = v80;
      *(&v181 + 1) = v74;
      swift_getOpaqueTypeConformance2();
      v81 = v154;
      _ConditionalContent<>.init(storage:)();
      v82 = v75;
      v83 = v166;
      (*(v78 + 8))(v82, v79);
    }

    else
    {
      if (v164)
      {
        v93 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
      }

      else
      {
        v93 = &enum case for AirDropUIButtonStyle.Style.nonJindo(_:);
      }

      v94 = v135;
      sub_100076394(v68, v162, v163, v164 & 1, v135);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v95 = v94;
      v96 = v141;
      sub_100021A84(v95, v141, &qword_100175260, &qword_10011CEE0);
      v97 = v156;
      v98 = (v96 + *(v156 + 36));
      v99 = v181;
      *v98 = v180;
      v98[1] = v99;
      v100 = v186;
      v101 = v184;
      v98[5] = v185;
      v98[6] = v100;
      v102 = v183;
      v98[2] = v182;
      v98[3] = v102;
      v98[4] = v101;
      (*(v159 + 104))(v131, *v93, v161);
      v103 = v130;
      AirDropUIButtonStyle.init(style:)();
      v104 = sub_100078218(&qword_1001752B8, &qword_100175248, &qword_10011CEC8, sub_10007829C);
      v105 = sub_100078434(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
      v106 = v142;
      v107 = v169;
      View.buttonStyle<A>(_:)();
      (*(v165 + 8))(v103, v107);
      sub_1000159AC(v96, &qword_100175248, &qword_10011CEC8);
      v108 = v143;
      v109 = v157;
      (*(v143 + 16))(v155, v106, v157);
      swift_storeEnumTagMultiPayload();
      v110 = sub_10007829C();
      v176 = v151;
      v177 = v107;
      v178 = v110;
      v179 = v105;
      swift_getOpaqueTypeConformance2();
      v176 = v97;
      v177 = v107;
      v83 = v166;
      v178 = v104;
      v179 = v105;
      swift_getOpaqueTypeConformance2();
      v81 = v154;
      _ConditionalContent<>.init(storage:)();
      (*(v108 + 8))(v106, v109);
    }

    v111 = *(sub_1000077C8(&qword_100175310, &qword_10011CF58) + 48);
    sub_100007BA4(v81, v172, &qword_100175270, &unk_10011CEF0);
    swift_storeEnumTagMultiPayload();
    sub_10007847C();
    sub_1000787A0();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v81, &qword_100175270, &unk_10011CEF0);
    (*(v167 + 8))(v83, v168);
LABEL_26:
    v120 = &v175[v111];
    v121 = type metadata accessor for UUID();
    return (*(*(v121 - 8) + 8))(v120, v121);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10007548C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v5 = sub_1000077C8(&qword_100175200, &qword_10011CE10);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v26 = &v26 - v10;
  v11 = type metadata accessor for DeviceLockState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  (*(v12 + 104))(v14, enum case for DeviceLockState.unlocked(_:), v11);
  v18 = static DeviceLockState.== infix(_:_:)();
  v19 = *(v12 + 8);
  v19(v14, v11);
  result = (v19)(v17, v11);
  if (v18)
  {
    sub_100007BA4(v27, v7, &qword_100175200, &qword_10011CE10);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_1000159AC(v7, &qword_100175200, &qword_10011CE10);
    }

    else
    {
      v21 = v26;
      (*(v9 + 32))(v26, v7, v8);
      if (qword_1001721D0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100007D20(v22, qword_1001751D8);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Post-AirDrop ReadyForOpen view tapped", v25, 2u);
      }

      sub_100077C68(v21);
      return (*(v9 + 8))(v21, v8);
    }
  }

  return result;
}

uint64_t sub_100075844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v92 = a4;
  v90 = a3;
  v91 = a2;
  v96 = a5;
  v97 = sub_1000077C8(&qword_100175350, &unk_10011CF78);
  v84 = *(v97 - 8);
  __chkstk_darwin(v97);
  v82 = &v80 - v6;
  v88 = sub_1000077C8(&qword_100175340, &qword_10011CF70);
  v83 = *(v88 - 8);
  __chkstk_darwin(v88);
  v81 = &v80 - v7;
  v93 = sub_1000077C8(&qword_100175368, &qword_10011CF88);
  __chkstk_darwin(v93);
  v95 = &v80 - v8;
  v87 = sub_1000077C8(&qword_100175370, &unk_10011CF90);
  __chkstk_darwin(v87);
  v10 = &v80 - v9;
  v94 = sub_1000077C8(&qword_100175330, &unk_10011CF60);
  __chkstk_darwin(v94);
  v89 = &v80 - v11;
  v12 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v80 - v14;
  v16 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v86 = *(v16 - 8);
  __chkstk_darwin(v16);
  v85 = &v80 - v17;
  v18 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  SFAirDrop.AcceptAction.Single.buttonConfiguration.getter();
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for SFAirDrop.ButtonConfiguration.text(_:))
  {
    (*(v19 + 96))(v21, v18);
    v24 = *v21;
    v23 = v21[1];
    (*(v13 + 16))(v15, a1, v12);
    v25 = (*(v13 + 80) + 33) & ~*(v13 + 80);
    v26 = swift_allocObject();
    v27 = v90;
    *(v26 + 16) = v91;
    *(v26 + 24) = v27;
    *(v26 + 32) = v92 & 1;
    v28 = (*(v13 + 32))(v26 + v25, v15, v12);
    __chkstk_darwin(v28);
    *(&v80 - 2) = v24;
    *(&v80 - 1) = v23;

    v29 = v85;
    Button.init(action:label:)();
    v23, v30, v31, v32, v33, v34, v35, v36;
    v37 = v86;
    (*(v86 + 2))(v10, v29, v16);
    swift_storeEnumTagMultiPayload();
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10, &protocol conformance descriptor for Button<A>);
    sub_1000199C8(&qword_100175338, &qword_100175340, &qword_10011CF70, &protocol conformance descriptor for Button<A>);
    v38 = v89;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v38, v95, &qword_100175330, &unk_10011CF60);
    swift_storeEnumTagMultiPayload();
    sub_1000786C0();
    sub_1000199C8(&qword_100175348, &qword_100175350, &unk_10011CF78, &protocol conformance descriptor for Button<A>);
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v38, &qword_100175330, &unk_10011CF60);
    return (*(v37 + 1))(v29, v16);
  }

  else
  {
    v85 = v16;
    v86 = v10;
    v40 = v90;
    if (v22 == enum case for SFAirDrop.ButtonConfiguration.symbol(_:))
    {
      (*(v19 + 96))(v21, v18);
      v42 = *v21;
      v41 = v21[1];
      (*(v13 + 16))(v15, a1, v12);
      v43 = (*(v13 + 80) + 33) & ~*(v13 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = v91;
      *(v44 + 24) = v40;
      *(v44 + 32) = v92 & 1;
      v45 = (*(v13 + 32))(v44 + v43, v15, v12);
      __chkstk_darwin(v45);
      *(&v80 - 2) = v42;
      *(&v80 - 1) = v41;

      v46 = v81;
      Button.init(action:label:)();
      v41, v47, v48, v49, v50, v51, v52, v53;
      v54 = v83;
      v55 = v88;
      (*(v83 + 16))(v86, v46, v88);
      swift_storeEnumTagMultiPayload();
      sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10, &protocol conformance descriptor for Button<A>);
      sub_1000199C8(&qword_100175338, &qword_100175340, &qword_10011CF70, &protocol conformance descriptor for Button<A>);
      v56 = v89;
      _ConditionalContent<>.init(storage:)();
      sub_100007BA4(v56, v95, &qword_100175330, &unk_10011CF60);
      swift_storeEnumTagMultiPayload();
      sub_1000786C0();
      sub_1000199C8(&qword_100175348, &qword_100175350, &unk_10011CF78, &protocol conformance descriptor for Button<A>);
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v56, &qword_100175330, &unk_10011CF60);
      return (*(v54 + 8))(v46, v55);
    }

    else if (v22 == enum case for SFAirDrop.ButtonConfiguration.symbolText(_:))
    {
      (*(v19 + 96))(v21, v18);
      v57 = v21[1];
      v89 = *v21;
      v59 = v21[2];
      v58 = v21[3];
      (*(v13 + 16))(v15, a1, v12);
      v60 = (*(v13 + 80) + 33) & ~*(v13 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v91;
      *(v61 + 24) = v40;
      *(v61 + 32) = v92 & 1;
      v62 = (*(v13 + 32))(v61 + v60, v15, v12);
      __chkstk_darwin(v62);
      *(&v80 - 4) = v89;
      *(&v80 - 3) = v57;
      *(&v80 - 2) = v59;
      *(&v80 - 1) = v58;

      sub_1000077C8(&qword_100175378, &qword_10011EF60);
      sub_1000199C8(&qword_100175380, &qword_100175378, &qword_10011EF60, &protocol conformance descriptor for HStack<A>);
      v63 = v82;
      Button.init(action:label:)();
      v58, v64, v65, v66, v67, v68, v69, v70;
      v57, v71, v72, v73, v74, v75, v76, v77;
      v78 = v84;
      v79 = v97;
      (*(v84 + 16))(v95, v63, v97);
      swift_storeEnumTagMultiPayload();
      sub_1000786C0();
      sub_1000199C8(&qword_100175348, &qword_100175350, &unk_10011CF78, &protocol conformance descriptor for Button<A>);
      _ConditionalContent<>.init(storage:)();
      return (*(v78 + 8))(v63, v79);
    }

    else
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100076394@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v86 = a4;
  v84 = a2;
  v85 = a3;
  v92 = a5;
  v6 = sub_1000077C8(&qword_100175300, &qword_10011CF50);
  v81 = *(v6 - 8);
  __chkstk_darwin(v6);
  v79 = v78 - v7;
  v87 = sub_1000077C8(&qword_1001752F0, &qword_10011CF48);
  v80 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = v78 - v8;
  v89 = sub_1000077C8(&qword_100175388, &qword_10011CFA0);
  __chkstk_darwin(v89);
  v91 = v78 - v9;
  v10 = sub_1000077C8(&qword_100175390, &qword_10011CFA8);
  __chkstk_darwin(v10);
  v12 = v78 - v11;
  v90 = sub_1000077C8(&qword_1001752D0, &qword_10011CF38);
  __chkstk_darwin(v90);
  v14 = v78 - v13;
  v15 = sub_1000077C8(&qword_1001752E0, &qword_10011CF40);
  v82 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v78 - v16;
  v18 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077C8(&qword_100175278, &unk_10011F2F0);
  SFAirDrop.AcceptAction.Composite.buttonConfiguration.getter();
  v22 = (*(v19 + 88))(v21, v18);
  v88 = v6;
  if (v22 == enum case for SFAirDrop.ButtonConfiguration.text(_:))
  {
    v23 = (*(v19 + 96))(v21, v18);
    v24 = *(v21 + 1);
    __chkstk_darwin(v23);
    v26 = v84;
    v25 = v85;
    v78[-4] = a1;
    v78[-3] = v26;
    v78[-2] = v25;
    LOBYTE(v78[-1]) = v86 & 1;
    __chkstk_darwin(v27);
    v78[-2] = v28;
    v78[-1] = v24;
    sub_1000077C8(&qword_100175398, &qword_10011CFB0);
    sub_1000789C4();
    Menu.init(content:label:)();
    v24, v29, v30, v31, v32, v33, v34, v35;
    v36 = v82;
    (*(v82 + 2))(v12, v17, v15);
    swift_storeEnumTagMultiPayload();
    sub_1000199C8(&qword_1001752D8, &qword_1001752E0, &qword_10011CF40, &protocol conformance descriptor for Menu<A, B>);
    sub_1000199C8(&qword_1001752E8, &qword_1001752F0, &qword_10011CF48, &protocol conformance descriptor for Menu<A, B>);
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v14, v91, &qword_1001752D0, &qword_10011CF38);
    swift_storeEnumTagMultiPayload();
    sub_100078354();
    sub_1000199C8(&qword_1001752F8, &qword_100175300, &qword_10011CF50, &protocol conformance descriptor for Menu<A, B>);
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v14, &qword_1001752D0, &qword_10011CF38);
    return (*(v36 + 1))(v17, v15);
  }

  else
  {
    v82 = a1;
    v39 = v84;
    v38 = v85;
    v78[0] = v12;
    v78[1] = v15;
    v40 = v86;
    v41 = v87;
    if (v22 == enum case for SFAirDrop.ButtonConfiguration.symbol(_:))
    {
      v42 = (*(v19 + 96))(v21, v18);
      v43 = *(v21 + 1);
      __chkstk_darwin(v42);
      v78[-4] = v82;
      v78[-3] = v39;
      v78[-2] = v38;
      LOBYTE(v78[-1]) = v40 & 1;
      __chkstk_darwin(v44);
      v78[-2] = v45;
      v78[-1] = v43;
      sub_1000077C8(&qword_100175398, &qword_10011CFB0);
      sub_1000789C4();
      v46 = v83;
      Menu.init(content:label:)();
      v43, v47, v48, v49, v50, v51, v52, v53;
      v54 = v80;
      (*(v80 + 16))(v78[0], v46, v41);
      swift_storeEnumTagMultiPayload();
      sub_1000199C8(&qword_1001752D8, &qword_1001752E0, &qword_10011CF40, &protocol conformance descriptor for Menu<A, B>);
      sub_1000199C8(&qword_1001752E8, &qword_1001752F0, &qword_10011CF48, &protocol conformance descriptor for Menu<A, B>);
      _ConditionalContent<>.init(storage:)();
      sub_100007BA4(v14, v91, &qword_1001752D0, &qword_10011CF38);
      swift_storeEnumTagMultiPayload();
      sub_100078354();
      sub_1000199C8(&qword_1001752F8, &qword_100175300, &qword_10011CF50, &protocol conformance descriptor for Menu<A, B>);
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v14, &qword_1001752D0, &qword_10011CF38);
      return (*(v54 + 8))(v83, v41);
    }

    else
    {
      v55 = v88;
      if (v22 == enum case for SFAirDrop.ButtonConfiguration.symbolText(_:))
      {
        v56 = (*(v19 + 96))(v21, v18);
        v57 = *(v21 + 1);
        v58 = *(v21 + 3);
        __chkstk_darwin(v56);
        v78[-4] = v82;
        v78[-3] = v39;
        v78[-2] = v38;
        LOBYTE(v78[-1]) = v40 & 1;
        __chkstk_darwin(v59);
        v78[-4] = v60;
        v78[-3] = v57;
        v78[-2] = v61;
        v78[-1] = v58;
        sub_1000077C8(&qword_100175378, &qword_10011EF60);
        sub_1000077C8(&qword_100175398, &qword_10011CFB0);
        sub_1000199C8(&qword_100175380, &qword_100175378, &qword_10011EF60, &protocol conformance descriptor for HStack<A>);
        sub_1000789C4();
        v62 = v79;
        Menu.init(content:label:)();
        v58, v63, v64, v65, v66, v67, v68, v69;
        v57, v70, v71, v72, v73, v74, v75, v76;
        v77 = v81;
        (*(v81 + 16))(v91, v62, v55);
        swift_storeEnumTagMultiPayload();
        sub_100078354();
        sub_1000199C8(&qword_1001752F8, &qword_100175300, &qword_10011CF50, &protocol conformance descriptor for Menu<A, B>);
        _ConditionalContent<>.init(storage:)();
        return (*(v77 + 8))(v62, v55);
      }

      else
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_100076E08@<X0>(uint64_t a3@<X8>)
{
  sub_10004BB74();

  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_100076E74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  sub_1000077C8(&qword_100175278, &unk_10011F2F0);
  v17 = SFAirDrop.AcceptAction.Composite.actions.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;

  v11 = sub_1000077C8(&qword_1001753A8, &qword_10011CFB8);
  v12 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v13 = sub_1000199C8(&qword_1001753B0, &qword_1001753A8, &qword_10011CFB8, &protocol conformance descriptor for [A]);
  v14 = sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10, &protocol conformance descriptor for Button<A>);
  v15 = sub_1000199C8(&qword_1001753B8, &unk_100173C98, &unk_10011A300, &protocol conformance descriptor for SFAirDrop.AcceptAction<A>.Single);
  return ForEach<>.init(_:content:)(&v17, a6, v10, v11, &type metadata for String, v12, v13, v14, v15);
}

uint64_t sub_10007700C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a7;
  v28 = a6;
  v23 = a5;
  v24 = a2;
  v26 = a4;
  v25 = a3;
  v8 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDrop.AcceptAction.Single.buttonConfiguration.getter();
  v16 = SFAirDrop.ButtonConfiguration.localizedTitle.getter();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  v29 = v16;
  v30 = v18;
  (*(v9 + 16))(v11, a1, v8);
  v19 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = v25;
  *(v20 + 16) = v24;
  *(v20 + 24) = v21;
  *(v20 + 32) = v26;
  (*(v9 + 32))(v20 + v19, v11, v8);
  sub_10004BB74();

  return Button<>.init<A>(_:action:)();
}

void sub_100077234(uint64_t a5@<X8>)
{
  v6 = static VerticalAlignment.center.getter();

  v7 = Image.init(systemName:)();
  sub_10004BB74();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = (v12 & 1);
  sub_100078974(v8, v10, v15);

  sub_10004BBC8(v8, v10, v15, v16, v17, v18, v19, v20);

  v14, v21, v22, v23, v24, v25, v26, v27;
  *a5 = v6;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 24) = v7;
  *(a5 + 32) = v8;
  *(a5 + 40) = v10;
  *(a5 + 48) = v15;
  *(a5 + 56) = v14;
}

uint64_t sub_100077344(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v6;
  v2[11] = v5;

  return _swift_task_switch(sub_1000774A0, v6, v5);
}

uint64_t sub_1000774A0()
{
  SFAirDrop.AcceptAction.Single.defaultAnswer.getter();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_100077548;
  v2 = v0[8];
  v3 = v0[3];

  return SFAirDrop.AcceptAction.Single.accept(with:)(v2, v3);
}

uint64_t sub_100077548()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_100077754;
  }

  else
  {
    v8 = sub_1000776E0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000776E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100077754()
{
  v30 = v0;

  if (qword_1001721D0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_100007D20(v5, qword_1001751D8);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v12 = 136315394;
    v13 = SFAirDrop.AcceptAction.Single.id.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_10003E81C(v13, v15, &v29);
    v15, v17, v18, v19, v20, v21, v22, v23;
    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v24;
    *v27 = v24;
    _os_log_impl(&_mh_execute_header, v6, v7, "AirDrop ReadyForOpen action %s failed with error %@", v12, 0x16u);
    sub_1000159AC(v27, &qword_100172EB0, &qword_100119410);

    sub_100007920(v28);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_1000779F8()
{
  v1 = *(sub_1000077C8(&qword_100175200, &qword_10011CE10) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100077B24(uint64_t a1)
{
  v3 = *(sub_1000077C8(&qword_100175200, &qword_10011CE10) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 33) & ~*(v3 + 80));

  return sub_10007548C(a1, v4, v5, v6, v7);
}

unint64_t sub_100077BA8()
{
  result = qword_100175210;
  if (!qword_100175210)
  {
    sub_100007CCC(&qword_1001751F8, &qword_10011CE08);
    sub_1000199C8(&qword_100175218, &qword_100175220, &qword_10011CE28, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175210);
  }

  return result;
}

uint64_t sub_100077C68(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v2 - 8);
  v4 = &v35 - v3;
  v5 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  if (qword_1001721D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100007D20(v12, qword_1001751D8);
  v38 = *(v6 + 16);
  v38(v11, a1, v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v37 = v4;
    v18 = v17;
    v40 = v17;
    *v16 = 136315138;
    v19 = SFAirDrop.AcceptAction.Single.id.getter();
    v36 = a1;
    v21 = v20;
    (*(v6 + 8))(v11, v5);
    v22 = sub_10003E81C(v19, v21, &v40);
    v23 = v21;
    a1 = v36;
    v23, v24, v25, v26, v27, v28, v29, v30;
    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "AirDrop ReadyForOpen action button was tapped. Triggering action %s on AirDropTransferSession", v16, 0xCu);
    sub_100007920(v18);
    v4 = v37;

    v8 = v35;
  }

  else
  {

    (*(v6 + 8))(v11, v5);
  }

  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v4, 1, 1, v31);
  v38(v8, a1, v5);
  v32 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v33 = swift_allocObject();
  (*(v6 + 32))(v33 + v32, v8, v5);
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v4, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_10007802C()
{
  v1 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000780C0(uint64_t a1)
{
  v4 = *(sub_1000077C8(&unk_100173C98, &unk_10011A300) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BCF0;

  return sub_100077344(a1, v1 + v5);
}

uint64_t sub_1000781A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100175230, &qword_10011CE98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100078218(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10007829C()
{
  result = qword_1001752C0;
  if (!qword_1001752C0)
  {
    sub_100007CCC(&qword_100175260, &qword_10011CEE0);
    sub_100078354();
    sub_1000199C8(&qword_1001752F8, &qword_100175300, &qword_10011CF50, &protocol conformance descriptor for Menu<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001752C0);
  }

  return result;
}

unint64_t sub_100078354()
{
  result = qword_1001752C8;
  if (!qword_1001752C8)
  {
    sub_100007CCC(&qword_1001752D0, &qword_10011CF38);
    sub_1000199C8(&qword_1001752D8, &qword_1001752E0, &qword_10011CF40, &protocol conformance descriptor for Menu<A, B>);
    sub_1000199C8(&qword_1001752E8, &qword_1001752F0, &qword_10011CF48, &protocol conformance descriptor for Menu<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001752C8);
  }

  return result;
}

uint64_t sub_100078434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10007847C()
{
  result = qword_100175318;
  if (!qword_100175318)
  {
    sub_100007CCC(&qword_1001752B0, &qword_10011CF30);
    sub_100007CCC(&qword_1001752A0, &qword_10011CF20);
    type metadata accessor for AirDropUIButtonStyle();
    sub_100078608();
    sub_100078434(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007CCC(&qword_100175288, &qword_10011CF08);
    sub_100078218(&qword_100175358, &qword_100175288, &qword_10011CF08, sub_100078608);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175318);
  }

  return result;
}

unint64_t sub_100078608()
{
  result = qword_100175320;
  if (!qword_100175320)
  {
    sub_100007CCC(&qword_1001752A0, &qword_10011CF20);
    sub_1000786C0();
    sub_1000199C8(&qword_100175348, &qword_100175350, &unk_10011CF78, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175320);
  }

  return result;
}

unint64_t sub_1000786C0()
{
  result = qword_100175328;
  if (!qword_100175328)
  {
    sub_100007CCC(&qword_100175330, &unk_10011CF60);
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10, &protocol conformance descriptor for Button<A>);
    sub_1000199C8(&qword_100175338, &qword_100175340, &qword_10011CF70, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175328);
  }

  return result;
}

unint64_t sub_1000787A0()
{
  result = qword_100175360;
  if (!qword_100175360)
  {
    sub_100007CCC(&qword_100175270, &unk_10011CEF0);
    sub_100007CCC(&qword_100175260, &qword_10011CEE0);
    type metadata accessor for AirDropUIButtonStyle();
    sub_10007829C();
    sub_100078434(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007CCC(&qword_100175248, &qword_10011CEC8);
    sub_100078218(&qword_1001752B8, &qword_100175248, &qword_10011CEC8, sub_10007829C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175360);
  }

  return result;
}

uint64_t sub_100078974(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1000789C4()
{
  result = qword_1001753A0;
  if (!qword_1001753A0)
  {
    sub_100007CCC(&qword_100175398, &qword_10011CFB0);
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001753A0);
  }

  return result;
}

uint64_t sub_100078AB4@<X0>(uint64_t *a1@<X8>)
{

  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100078B38()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100078C24()
{
  v1 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100078CF4()
{
  v1 = *(sub_1000077C8(&unk_100173C98, &unk_10011A300) - 8);
  v2 = v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80));

  return sub_100077C68(v2);
}

uint64_t sub_100078DC4()
{
  sub_100007CCC(&qword_1001751F8, &qword_10011CE08);
  sub_100007CCC(&qword_1001751F0, &qword_10011CE00);
  sub_100077BA8();
  sub_1000199C8(&qword_100175228, &qword_1001751F0, &qword_10011CE00, &protocol conformance descriptor for _EndedGesture<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for AUIRemoteAlertPresentationManager(uint64_t a1)
{
  result = qword_1001753C8;
  if (!qword_1001753C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100078F40()
{
  if (qword_1001721D8 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

void sub_100078FB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SFRemoteAlertPresentationManager.remoteAlertHandleDidActivate(_:)();
}

void sub_100079018(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SFRemoteAlertPresentationManager.remoteAlertHandleDidDeactivate(_:)();
}

void sub_100079080(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = a1;
  v7 = a4;
  SFRemoteAlertPresentationManager.remoteAlertHandle(_:didInvalidateWithError:)();
}

id sub_1000790F8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for AUIRemoteAlertPresentationManager(0);
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10007913C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUIRemoteAlertPresentationManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10007917C()
{
  result = [objc_allocWithZone(type metadata accessor for AUIRemoteAlertPresentationManager(0)) init];
  qword_1001753C0 = result;
  return result;
}

uint64_t sub_1000791B0()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100079244, v2, v1);
}

uint64_t sub_100079244()
{

  if (qword_100172250 != -1)
  {
    swift_once();
  }

  sub_1000FBF64();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000792F0()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100175480);
  v1 = sub_100007D20(v0, qword_100175480);
  if (qword_100172208 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F320);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000793B8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000077C8(&qword_100175CB0, &qword_10011D388);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_1000078DC(a1, a1[3]);
  sub_1000876A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100079540()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x696E556C61746F74;
  }
}

void sub_10007958C(uint64_t a1@<X0>, _TtC9AirDropUI33AirDropTransferSessionsController *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0xEE00746E756F4374;
  v13 = a1 == 0x696E556C61746F74 && a2 == 0xEE00746E756F4374;
  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100124700 == a2)
  {
    a2, 0x8000000100124700, a3, a4, a5, a6, a7, a8;
    v14 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a9 = v14;
}

uint64_t sub_100079690(uint64_t a1)
{
  v2 = sub_1000876A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000796CC(uint64_t a1)
{
  v2 = sub_1000876A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100079708@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100087500(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

Swift::Int sub_100079750()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1000797AC()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1000797E8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

Swift::Int sub_10007986C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000798D8(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void sub_100079934(uint64_t a1@<X0>, _TtC9AirDropUI33AirDropTransferSessionsController *a2@<X1>, void *a3@<X3>, void *a4@<X4>, void *a5@<X5>, void *a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000100124400 == a2)
  {
    a2, 0x8000000100124400, 0xD000000000000012, a3, a4, a5, a6, a7;
    v10 = 0;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v10 = v11 ^ 1;
  }

  *a8 = v10 & 1;
}

uint64_t sub_1000799D4(uint64_t a1)
{
  v2 = sub_1000876FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100079A10(uint64_t a1)
{
  v2 = sub_1000876FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100079A4C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000077C8(&qword_100175CB8, &qword_10011D390);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000078DC(a1, a1[3]);
  sub_1000876FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100007920(a1);
  }

  else
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    sub_100007920(a1);
    *a2 = v9;
    a2[1] = v11;
  }
}

uint64_t sub_100079BC8(void *a1)
{
  v2 = sub_1000077C8(&qword_100175CC8, &qword_10011D398);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000078DC(a1, a1[3]);
  sub_1000876FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100079D40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100079DB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_100079F04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_100079F8C()
{
  v1 = (v0 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

  v3._countAndFlagsBits = 0x732D72656E6E6162;
  v3._object = 0xEE006E6F69737365;
  v4 = String.hasSuffix(_:)(v3);
  v2, v5, v6, v7, v8, v9, v10, v11;
  if (v4)
  {
    v68 = *v1;
    sub_10004BB74();
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v14 = v13;
    if (qword_100172150 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*v68->connection)
    {
      v22 = sub_10003EEC0(v12, v14);
      v24 = v23;
      v14, v23, v25, v26, v27, v28, v29, v30;
      if (v24)
      {
        v38 = *(*v68->nearbySharingInteractionCoordinator + 8 * v22);

        v68, v39, v40, v41, v42, v43, v44, v45;
        return v38;
      }

      v65 = v68;
    }

    else
    {
      v68, v15, v16, v17, v18, v19, v20, v21;
      v65 = v14;
    }

    v65, v31, v32, v33, v34, v35, v36, v37;
    return 0;
  }

  if (qword_100172150 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v38 = v67;
  if (v67)
  {
    v46 = *(v67 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
    v47 = *v1;
    v48 = v1[1];

    v49._countAndFlagsBits = v47;
    v49._object = v48;
    v50 = String.hasPrefix(_:)(v49);
    v46, v51, v52, v53, v54, v55, v56, v57;
    v48, v58, v59, v60, v61, v62, v63, v64;
    if (!v50)
    {

      return 0;
    }
  }

  return v38;
}

uint64_t sub_10007A24C()
{
  v0 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v1 + 88))(v3, v0) == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    (*(v1 + 96))(v3, v0);
    v4 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    *&v3[*(v4 + 48)], v5, v6, v7, v8, v9, v10, v11;
    v12 = *(v4 + 64);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v13 = v17[13] ^ 1;
    v14 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v14 - 8) + 8))(&v3[v12], v14);
    v15 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v15 - 8) + 8))(v3, v15);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v17[15] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v13 = v17[14] ^ 1;
    }

    else
    {
      v13 = 0;
    }

    (*(v1 + 8))(v3, v0);
  }

  return v13 & 1;
}

unint64_t sub_10007A538()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v64 = *(v1 - 8);
  v65 = v1;
  __chkstk_darwin(v1);
  v63 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SFAirDropSend.Transfer.State();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  v66 = 0;
  v67 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  v67, v12, v13, v14, v15, v16, v17, v18;
  v66 = 0xD000000000000019;
  v67 = 0x80000001001246E0;
  v19 = *(v0 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v20 = *(v0 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

  v21._countAndFlagsBits = v19;
  v21._object = v20;
  String.append(_:)(v21);
  v20, v22, v23, v24, v25, v26, v27, v28;
  v29._countAndFlagsBits = 10272;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v62 = v4;
  v30 = *(v4 + 48);
  v31 = v30(v11, 1, v3);
  sub_1000159AC(v11, &qword_100172FD0, &qword_10011A210);
  if (v31 == 1)
  {
    v32 = 0x65766965636572;
  }

  else
  {
    v32 = 1684956531;
  }

  if (v31 == 1)
  {
    v33 = 0xE700000000000000;
  }

  else
  {
    v33 = 0xE400000000000000;
  }

  v34 = v33;
  String.append(_:)(*&v32);
  v33, v35, v36, v37, v38, v39, v40, v41;
  v42._countAndFlagsBits = 8233;
  v42._object = 0xE200000000000000;
  String.append(_:)(v42);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v30(v8, 1, v3))
  {
    sub_1000159AC(v8, &qword_100172FD0, &qword_10011A210);
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = v63;
    static Published.subscript.getter();

    v44 = SFAirDropReceive.Transfer.State.shortDescription.getter();
    v46 = v45;
    (*(v64 + 8))(v43, v65);
  }

  else
  {
    v47 = v61;
    v48 = v62;
    (*(v62 + 16))(v61, v8, v3);
    sub_1000159AC(v8, &qword_100172FD0, &qword_10011A210);
    v44 = SFAirDropSend.Transfer.State.shortDescription.getter();
    v46 = v49;
    (*(v48 + 8))(v47, v3);
  }

  v50._countAndFlagsBits = v44;
  v50._object = v46;
  String.append(_:)(v50);
  v46, v51, v52, v53, v54, v55, v56, v57;
  v58._countAndFlagsBits = 93;
  v58._object = 0xE100000000000000;
  String.append(_:)(v58);
  return v66;
}

uint64_t sub_10007A994()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000077C8(&qword_100175CD0, &unk_10011D8C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v75 - v7;
  if (*(v0 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity))
  {
    v9 = sub_1000077C8(&qword_100175CD8, &qword_10011D8D0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

    static ActivityUIDismissalPolicy.immediate.getter();
    dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

    (*(v3 + 8))(v5, v2);
    sub_1000159AC(v8, &qword_100175CD0, &unk_10011D8C0);
  }

  v10 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_startTime;
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  *(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8), v12, v13, v14, v15, v16, v17, v18;
  *(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8), v19, v20, v21, v22, v23, v24, v25;
  *(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName + 8), v26, v27, v28, v29, v30, v31, v32;
  sub_1000159AC(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_cancelAction, &unk_100173C50, &qword_10011D9D0);
  v33 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__transferAccepted;
  v34 = sub_1000077C8(&qword_100173728, qword_1001199F0);
  v35 = *(*(v34 - 8) + 8);
  v35(v1 + v33, v34);
  v36 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__numTotalItems;
  v37 = sub_1000077C8(&qword_100175D38, &qword_10011D9D8);
  v38 = *(*(v37 - 8) + 8);
  v38(v1 + v36, v37);
  v38(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__numCompletedItems, v37);
  v39 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__localizedTransferDescription;
  v40 = sub_1000077C8(&qword_100173D60, &qword_10011D3A0);
  (*(*(v40 - 8) + 8))(v1 + v39, v40);
  v41 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__progress;
  v42 = sub_1000077C8(&qword_100175D40, &qword_10011D9E0);
  (*(*(v42 - 8) + 8))(v1 + v41, v42);
  v43 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__transferState;
  v44 = sub_1000077C8(&qword_100175D48, &qword_10011D9E8);
  (*(*(v44 - 8) + 8))(v1 + v43, v44);
  v45 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
  v46 = sub_1000077C8(&qword_100173D58, &unk_10011A540);
  (*(*(v46 - 8) + 8))(v1 + v45, v46);
  v47 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__permissionRequest;
  v48 = sub_1000077C8(&qword_100173D48, &unk_10011A530);
  (*(*(v48 - 8) + 8))(v1 + v47, v48);
  v49 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__previewImage;
  v50 = sub_1000077C8(&qword_100173D40, &qword_10011B1C0);
  v51 = *(*(v50 - 8) + 8);
  v51(v1 + v49, v50);
  v51(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__fallbackPreviewImage, v50);
  v35(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__previewImageIsSensitive, v34);
  v35(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldShowSensitiveImage, v34);
  v35(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldDisplayPreviewImage, v34);
  v51(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__contactImage, v50);
  v51(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__airdropIconImage, v50);
  v52 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__lockState;
  v53 = sub_1000077C8(&qword_100175D50, &qword_10011D9F0);
  (*(*(v53 - 8) + 8))(v1 + v52, v53);
  v54 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__jindoLayoutMaxWidth;
  v55 = sub_1000077C8(&qword_100175D58, &qword_10011D9F8);
  (*(*(v55 - 8) + 8))(v1 + v54, v55);
  v56 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__displayPriority;
  v57 = sub_1000077C8(&qword_100175D60, &qword_10011DA00);
  (*(*(v57 - 8) + 8))(v1 + v56, v57);
  *(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions), v58, v59, v60, v61, v62, v63, v64;
  *(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs), v65, v66, v67, v68, v69, v70, v71;
  sub_100087F80(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate, v72);
  sub_100087F80(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_sessionUpdateDelegate, v73);

  sub_1000159AC(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime, &unk_100174FA0, &qword_10011A700);
  sub_1000159AC(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime, &unk_100174FA0, &qword_10011A700);
  return v1;
}

uint64_t sub_10007B088()
{
  sub_10007A994();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AirDropTransferSession(uint64_t a1)
{
  result = qword_100175550;
  if (!qword_100175550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007B134(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1000833E4(319, &qword_100175560, &type metadata accessor for SFAirDrop.DeclineAction, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10002263C(319, &qword_1001736A0, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_10002263C(319, &qword_100175568, &type metadata for Int);
        if (v4 <= 0x3F)
        {
          sub_100031B98(319, &qword_100175570, &qword_100172AA0, &unk_1001187F0);
          if (v5 <= 0x3F)
          {
            sub_10008337C(319);
            if (v6 <= 0x3F)
            {
              sub_1000833E4(319, &qword_100175580, &type metadata accessor for SFAirDropReceive.Transfer.State, &type metadata accessor for Published);
              if (v7 <= 0x3F)
              {
                sub_100031B98(319, &qword_100175588, &qword_100172FD0, &qword_10011A210);
                if (v8 <= 0x3F)
                {
                  sub_100031B98(319, &qword_100175590, &qword_100173D50, &unk_10011D120);
                  if (v9 <= 0x3F)
                  {
                    sub_100031B98(319, &unk_100174300, &qword_100173D68, &qword_10011A550);
                    if (v10 <= 0x3F)
                    {
                      sub_1000833E4(319, &qword_100175598, &type metadata accessor for DeviceLockState, &type metadata accessor for Published);
                      if (v11 <= 0x3F)
                      {
                        sub_10002263C(319, &qword_1001755A0, &type metadata for CGFloat);
                        if (v12 <= 0x3F)
                        {
                          sub_1000833E4(319, &qword_1001755A8, &type metadata accessor for SFAirDrop.DisplayPriority, &type metadata accessor for Published);
                          if (v13 <= 0x3F)
                          {
                            sub_1000833E4(319, &unk_1001755B0, &type metadata accessor for Date, &type metadata accessor for Optional);
                            if (v14 <= 0x3F)
                            {
                              swift_updateClassMetadata2();
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

uint64_t sub_10007B6A8(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ActivityPresentationOptions();
  v85 = *(v6 - 8);
  v86 = v6;
  __chkstk_darwin(v6);
  v84[0] = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001721E0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_100007D20(v8, qword_100175480);

  v84[1] = v9;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v89[0] = v13;
    *v12 = 136315138;
    v14 = *(v3 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v15 = *(v3 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

    v16 = sub_10003E81C(v14, v15, v89);
    v15, v17, v18, v19, v20, v21, v22, v23;
    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating ActivityKit activity for transfer: %s", v12, 0xCu);
    sub_100007920(v13);
  }

  if (a2)
  {
    v24 = a2;
  }

  else
  {
    a1 = *(v3 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v24 = *(v3 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  }

  v25._countAndFlagsBits = 0x732D72656E6E6162;
  v25._object = 0xEE006E6F69737365;
  v26 = String.hasSuffix(_:)(v25);
  v27 = *(v3 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled);
  sub_1000077C8(&qword_100175D30, &qword_10011D980);
  v28 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1001186F0;
  v32 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:);
  if (!v27)
  {
    v32 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.banner(_:);
  }

  if (!v26)
  {
    v32 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:);
  }

  (*(v29 + 104))(v31 + v30, *v32, v28);
  v33 = v84[0];
  ActivityPresentationOptions.init(destinations:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v34 = v89[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v35 = v89[0];
  sub_1000077C8(&unk_100173E40, &qword_10011A6F8);
  v89[0] = a1;
  v89[1] = v24;
  v87 = v34;
  v88 = v35;
  v36 = v84[2];
  v44 = static Activity.request(attributes:contentState:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:)();
  if (v36)
  {
    (*(v85 + 8))(v33, v86);
    v24, v45, v46, v47, v48, v49, v50, v51;
    swift_errorRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v89[0] = v55;
      *v54 = 136315138;
      swift_getErrorValue();
      v56 = Error.localizedDescription.getter();
      v58 = v57;
      v59 = sub_10003E81C(v56, v57, v89);
      v58, v60, v61, v62, v63, v64, v65, v66;
      *(v54 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "Error requesting activity %s", v54, 0xCu);
      sub_100007920(v55);
    }

    swift_willThrow();
  }

  else
  {
    v24, v37, v38, v39, v40, v41, v42, v43;

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = v33;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v89[0] = v71;
      *v70 = 136315138;
      v72 = Activity.id.getter();
      v74 = v73;
      v75 = sub_10003E81C(v72, v73, v89);
      v74, v76, v77, v78, v79, v80, v81, v82;
      *(v70 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v67, v68, "Requested activity successfully: %s", v70, 0xCu);
      sub_100007920(v71);

      (*(v85 + 8))(v69, v86);
    }

    else
    {

      (*(v85 + 8))(v33, v86);
    }
  }

  return v44;
}

double sub_10007BD28()
{
  v1 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity;
  if (!*(v0 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v8 == 1)
    {
      v3 = v0;
      if (qword_1001721E0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100007D20(v4, qword_100175480);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Starting ActivityKit activity because incoming transfer was accepted", v7, 2u);
      }

      *(v3 + v1) = sub_10007B6A8(0, 0);
    }
  }

  return result;
}

uint64_t sub_10007BEA8(char *a1)
{
  v2 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100087D7C(&qword_100175D18, &type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v3 + 8);
  result = v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    sub_10007C0CC(a1);
    v12 = *(v3 + 16);
    v12(v8, a1, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v12(v5, v8, v2);

    static Published.subscript.setter();
    return v10(v8, v2);
  }

  return result;
}

uint64_t sub_10007C0CC(uint64_t a1)
{
  v127 = type metadata accessor for DispatchWorkItemFlags();
  v124 = *(v127 - 8);
  __chkstk_darwin(v127);
  v122 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for DispatchQoS();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v120 = (&v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = type metadata accessor for DispatchTime();
  v119 = *(v130 - 8);
  __chkstk_darwin(v130);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v118 = &v117 - v8;
  v9 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  __chkstk_darwin(v9 - 8);
  v126 = &v117 - v10;
  v11 = type metadata accessor for SFAirDrop.Progress();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v128 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v117 - v15;
  v17 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v129 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v125 = &v117 - v21;
  v23 = __chkstk_darwin(v22);
  v25 = &v117 - v24;
  (*(v18 + 16))(&v117 - v24, a1, v17, v23);
  v131 = *(v18 + 88);
  v26 = v131(v25, v17);
  if (v26 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
  {
    v120 = *(v18 + 96);
    v121 = v18 + 96;
    v120(v25, v17);
    v27 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
    v28 = *(v27 + 48);
    v122 = v27;
    *&v25[*(v27 + 64) + 8], v29, v30, v31, v32, v33, v34, v35;
    v123 = v25;
    v124 = v12;
    v36 = *(v12 + 32);
    v130 = v16;
    v37 = v11;
    v36(v16, &v25[v28], v11);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 1;

    static Published.subscript.setter();
    sub_10007D4EC(a1);
    v127 = v1;
    if (*(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled))
    {
LABEL_14:
      v71 = v124;
      v72 = v128;
      (*(v124 + 16))(v128, v130, v37);
      v73 = (*(v71 + 88))(v72, v37);
      v74 = enum case for SFAirDrop.Progress.completed(_:);
      v75 = *(v71 + 8);
      v75(v72, v37);
      if (v73 == v74)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(aBlock[0]) = 0;

        static Published.subscript.setter();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v76 = v129;
      static Published.subscript.getter();
      v77 = v76;

      v78 = v131(v76, v17);
      v41 = v123;
      if (v78 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
      {
        v120(v77, v17);
        v79 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
        (*(*(v79 - 8) + 8))(v77, v79);
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(aBlock[0]) = 1;

        static Published.subscript.setter();
        v75(v130, v37);
      }

      else
      {
        v75(v130, v37);
        (*(v18 + 8))(v77, v17);
      }

      v80 = *(v122 + 20);
      v81 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v81 - 8) + 8))(&v41[v80], v81);
      goto LABEL_20;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v125;
    static Published.subscript.getter();

    v39 = v131(v38, v17);
    if (v39 != enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
    {
      if (v39 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
      {
        v120(v38, v17);
        v65 = *(sub_1000077C8(&qword_100173088, &unk_10011C520) + 48);
        v66 = sub_1000077C8(&unk_100174F80, &unk_10011AE60);
        (*(*(v66 - 8) + 8))(&v38[v65], v66);
        v40 = type metadata accessor for SFAirDrop.ContactInfo();
        goto LABEL_12;
      }

      if (v39 != enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
      {
        if (v39 != enum case for SFAirDropReceive.Transfer.State.created(_:) && v39 != enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:) && v39 != enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:))
        {
          (*(v18 + 8))(v38, v17);
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    v120(v38, v17);
    v40 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
LABEL_12:
    (*(*(v40 - 8) + 8))(v38, v40);
LABEL_13:
    v67 = v126;
    static Date.now.getter();
    v68 = type metadata accessor for Date();
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    v69 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
    v70 = v127;
    swift_beginAccess();
    sub_100087AA0(v67, v70 + v69);
    swift_endAccess();
    goto LABEL_14;
  }

  v41 = v25;
  v42 = v1;
  if (v26 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
  {
    (*(v18 + 96))(v41, v17);
    v43 = sub_1000077C8(&unk_100173CD0, &unk_10011C510);
    *&v41[*(v43 + 48)], v44, v45, v46, v47, v48, v49, v50;
    v51 = *(v43 + 80);
    v52 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v52 - 8) + 8))(&v41[v51], v52);
LABEL_7:
    v53 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v53 - 8) + 8))(v41, v53);
    return sub_10007D4EC(a1);
  }

  if (v26 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    (*(v18 + 96))(v41, v17);
    v55 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    *&v41[*(v55 + 48)], v56, v57, v58, v59, v60, v61, v62;
    v63 = *(v55 + 64);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 1;

    static Published.subscript.setter();
    v64 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v64 - 8) + 8))(&v41[v63], v64);
  }

  else
  {
    if (v26 == enum case for SFAirDropReceive.Transfer.State.importing(_:))
    {
      (*(v18 + 96))(v41, v17);
      v83 = sub_1000077C8(&unk_100174F60, &qword_10011C4C0);
      *&v41[*(v83 + 48)], v84, v85, v86, v87, v88, v89, v90;
      goto LABEL_7;
    }

    if (v26 != enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
    {
      return (*(v18 + 8))(v41, v17);
    }

    (*(v18 + 96))(v41, v17);
    v91 = sub_1000077C8(&qword_100173078, &unk_100118F60);
    *&v41[v91[12]], v92, v93, v94, v95, v96, v97, v98;
    *&v41[v91[16]], v99, v100, v101, v102, v103, v104, v105;
    v131 = v91[20];
    v106 = v126;
    static Date.now.getter();
    v107 = type metadata accessor for Date();
    (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
    v108 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    swift_beginAccess();
    sub_100087AA0(v106, v42 + v108);
    swift_endAccess();
    sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
    v128 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v109 = v118;
    + infix(_:_:)();
    v129 = *(v119 + 8);
    (v129)(v6, v130);
    v110 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100087F68;
    aBlock[5] = v110;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100106B40;
    aBlock[3] = &unk_10015F720;
    v111 = _Block_copy(aBlock);

    v112 = v120;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100087D7C(&qword_100175D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000077C8(&unk_100176420, &unk_10011D928);
    sub_1000199C8(&qword_100175D28, &unk_100176420, &unk_10011D928, &protocol conformance descriptor for [A]);
    v113 = v122;
    v114 = v127;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v115 = v128;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v111);

    (*(v124 + 8))(v113, v114);
    (*(v121 + 8))(v112, v123);
    (v129)(v109, v130);
    v116 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v116 - 8) + 8))(v131 + v41, v116);
  }

LABEL_20:
  v82 = type metadata accessor for SFAirDropReceive.ItemDestination();
  return (*(*(v82 - 8) + 8))(v41, v82);
}

double sub_10007CFC4(uint64_t a1)
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_100172150 != -1)
    {
      swift_once();
    }

    v8 = qword_10017F1E0;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v63)
    {
      v62[1] = v8;
      v9 = *(v63 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
      v10 = (v7 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v11 = *(v7 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v12 = *(v7 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

      v13._countAndFlagsBits = v11;
      v13._object = v12;
      v14 = String.hasPrefix(_:)(v13);
      v9, v15, v16, v17, v18, v19, v20, v21;
      v12, v22, v23, v24, v25, v26, v27, v28;
      if (v14)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if ((*(v2 + 88))(v4, v1) != enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
        {

          (*(v2 + 8))(v4, v1);
          return result;
        }

        (*(v2 + 96))(v4, v1);
        v29 = sub_1000077C8(&qword_100173078, &unk_100118F60);
        *&v4[v29[12]], v30, v31, v32, v33, v34, v35, v36;
        *&v4[v29[16]], v37, v38, v39, v40, v41, v42, v43;
        v44 = v29[20];
        v45 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
        (*(*(v45 - 8) + 8))(&v4[v44], v45);
        v46 = type metadata accessor for SFAirDropReceive.ItemDestination();
        (*(*(v46 - 8) + 8))(v4, v46);
        if (qword_1001721E0 != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        sub_100007D20(v47, qword_100175480);

        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v63 = v51;
          *v50 = 136315138;
          v52 = *v10;
          v53 = v10[1];

          v54 = sub_10003E81C(v52, v53, &v63);
          v53, v55, v56, v57, v58, v59, v60, v61;
          *(v50 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v48, v49, "Dismissing waitingForOpenResponse banner for transfer %s", v50, 0xCu);
          sub_100007920(v51);
        }

        sub_100028718();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v63)
        {
        }

        else
        {
          if (qword_100172250 != -1)
          {
            swift_once();
          }

          sub_1000FBF64();
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_10007D528(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDropSend.Transfer.State();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v34 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000077C8(&qword_100175CF0, &qword_10011D8F0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v32[-v9];
  v11 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v11 - 8);
  v39 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v38 = &v32[-v14];
  __chkstk_darwin(v15);
  v42 = &v32[-v16];
  __chkstk_darwin(v17);
  v19 = &v32[-v18];
  __chkstk_darwin(v20);
  v22 = &v32[-v21];
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v2;
  static Published.subscript.getter();

  v23 = *(v5 + 16);
  v40 = a1;
  v36 = v23;
  v37 = v5 + 16;
  v23(v19, a1, v4);
  v35 = *(v5 + 56);
  v35(v19, 0, 1, v4);
  v24 = *(v8 + 56);
  sub_100007BA4(v22, v10, &qword_100172FD0, &qword_10011A210);
  sub_100007BA4(v19, &v10[v24], &qword_100172FD0, &qword_10011A210);
  v25 = *(v5 + 48);
  if (v25(v10, 1, v4) == 1)
  {
    sub_1000159AC(v19, &qword_100172FD0, &qword_10011A210);
    sub_1000159AC(v22, &qword_100172FD0, &qword_10011A210);
    if (v25(&v10[v24], 1, v4) == 1)
    {
      return sub_1000159AC(v10, &qword_100172FD0, &qword_10011A210);
    }

    goto LABEL_6;
  }

  sub_100007BA4(v10, v42, &qword_100172FD0, &qword_10011A210);
  if (v25(&v10[v24], 1, v4) == 1)
  {
    sub_1000159AC(v19, &qword_100172FD0, &qword_10011A210);
    sub_1000159AC(v22, &qword_100172FD0, &qword_10011A210);
    (*(v5 + 8))(v42, v4);
LABEL_6:
    sub_1000159AC(v10, &qword_100175CF0, &qword_10011D8F0);
LABEL_7:
    v26 = v40;
    sub_10007DABC(v40);
    v10 = v38;
    v36(v38, v26, v4);
    v35(v10, 0, 1, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100007BA4(v10, v39, &qword_100172FD0, &qword_10011A210);

    static Published.subscript.setter();
    return sub_1000159AC(v10, &qword_100172FD0, &qword_10011A210);
  }

  v28 = &v10[v24];
  v29 = v34;
  (*(v5 + 32))(v34, v28, v4);
  sub_100087D7C(&qword_100175D10, &type metadata accessor for SFAirDropSend.Transfer.State, &protocol conformance descriptor for SFAirDropSend.Transfer.State);
  v30 = v42;
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v5 + 8);
  v31(v29, v4);
  sub_1000159AC(v19, &qword_100172FD0, &qword_10011A210);
  sub_1000159AC(v22, &qword_100172FD0, &qword_10011A210);
  v31(v30, v4);
  result = sub_1000159AC(v10, &qword_100172FD0, &qword_10011A210);
  if ((v33 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10007DABC(uint64_t a1)
{
  v3 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  __chkstk_darwin(v3 - 8);
  v77 = &KeyPath - v4;
  v5 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v5 - 8);
  v80 = &KeyPath - v6;
  v7 = type metadata accessor for SFAirDropSend.Transfer.State();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v78 = (&KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v79 = &KeyPath - v11;
  v13 = __chkstk_darwin(v12);
  v15 = (&KeyPath - v14);
  v16 = *(v8 + 16);
  v16(&KeyPath - v14, a1, v7, v13);
  v17 = *(v8 + 88);
  v18 = v17(v15, v7);
  v19 = enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:);
  if (v18 != enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    if (v18 != enum case for SFAirDropSend.Transfer.State.transferring(_:))
    {
      return (*(v8 + 8))(v15, v7);
    }

    v73 = *(v8 + 96);
    v74 = v8 + 96;
    v73(v15, v7);
    v15[1], v29, v30, v31, v32, v33, v34, v35;
    v75 = sub_1000077C8(&qword_100172F30, &unk_100118BC0);
    *(v15 + v75[16] + 8), v36, v37, v38, v39, v40, v41, v42;
    v76 = v1;
    sub_10007E120(a1);
    if (*(v76 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled))
    {
      goto LABEL_14;
    }

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    v43 = v80;
    static Published.subscript.getter();

    if ((*(v8 + 48))(v43, 1, v7) == 1)
    {
      sub_1000159AC(v43, &qword_100172FD0, &qword_10011A210);
LABEL_14:
      v27 = v75[12];
      v69 = v75[20];
      v70 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v70 - 8) + 8))(v15 + v69, v70);
      v28 = type metadata accessor for SFAirDrop.Progress();
      return (*(*(v28 - 8) + 8))(v15 + v27, v28);
    }

    v45 = v79;
    (*(v8 + 32))(v79, v43, v7);
    v46 = v78;
    (v16)(v78, v45, v7);
    v47 = v17(v46, v7);
    if (v47 == enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:))
    {
      v73(v46, v7);
      *v46, v48, v49, v50, v51, v52, v53, v54;
      v55 = v46;
      v56 = *(sub_1000077C8(&qword_100174130, &qword_10011C540) + 64);
      v57 = type metadata accessor for SFAirDrop.DeclineAction();
    }

    else
    {
      if (v47 != v19)
      {
        if (v47 != enum case for SFAirDropSend.Transfer.State.created(_:) && v47 != enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:))
        {
          v71 = *(v8 + 8);
          v71(v45, v7);
          v71(v46, v7);
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v73(v46, v7);
      *v46, v58, v59, v60, v61, v62, v63, v64;
      v55 = v46;
      v56 = *(sub_1000077C8(&qword_100174128, &unk_10011C530) + 48);
      v57 = sub_1000077C8(&unk_100174F90, &unk_10011AE70);
    }

    (*(*(v57 - 8) + 8))(v55 + v56, v57);
LABEL_13:
    v65 = v77;
    static Date.now.getter();
    (*(v8 + 8))(v45, v7);
    v66 = type metadata accessor for Date();
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    v67 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
    v68 = v76;
    swift_beginAccess();
    sub_100087AA0(v65, v68 + v67);
    swift_endAccess();
    goto LABEL_14;
  }

  (*(v8 + 96))(v15, v7);
  *v15, v20, v21, v22, v23, v24, v25, v26;
  v27 = *(sub_1000077C8(&qword_100174128, &unk_10011C530) + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = 1;

  static Published.subscript.setter();
  v28 = sub_1000077C8(&unk_100174F90, &unk_10011AE70);
  return (*(*(v28 - 8) + 8))(v15 + v27, v28);
}

uint64_t sub_10007E15C(uint64_t a1, uint64_t (*a2)(void, __n128), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v24[1] = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2(0, v11);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v24 - v16;
  sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v15 + 16))(v17, a1, v14);
  v19 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  (*(v15 + 32))(v20 + v19, v17, v14);
  aBlock[4] = v26;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100106B40;
  aBlock[3] = v27;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100087D7C(&qword_100175D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000077C8(&unk_100176420, &unk_10011D928);
  sub_1000199C8(&qword_100175D28, &unk_100176420, &unk_10011D928, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v25;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v30 + 8))(v9, v7);
  return (*(v28 + 8))(v13, v29);
}

uint64_t sub_10007E52C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = a3();
    v8 = [objc_opt_self() progressWithTotalUnitCount:v7];
    [v8 setCompletedUnitCount:a4()];
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10007E610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v116 = a4;
  v9 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v9 - 8);
  v120 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v105 - v12;
  v13 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v117 = *(v13 - 8);
  v118 = v13;
  __chkstk_darwin(v13);
  v115 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v114 = &v105 - v16;
  v17 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  __chkstk_darwin(v17 - 8);
  v113 = &v105 - v18;
  v19 = type metadata accessor for SFAirDrop.DisplayPriority();
  v111 = *(v19 - 8);
  v112 = v19;
  __chkstk_darwin(v19);
  v110 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v109 = &v105 - v22;
  v108 = type metadata accessor for DeviceLockState();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v105 - v25;
  v27 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  __chkstk_darwin(v27 - 8);
  v29 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v105 - v31;
  v33 = (v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v34 = *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  *v33 = a2;
  v33[1] = a3;

  v34, v35, v36, v37, v38, v39, v40, v41;
  v42 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);
  v43 = (v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  v44 = *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);
  *v43 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  v43[1] = v42;

  v44, v45, v46, v47, v48, v49, v50, v51;
  v52 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName + 8);
  v53 = (v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  v54 = *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName + 8);
  *v53 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  v53[1] = v52;

  v54, v55, v56, v57, v58, v59, v60, v61;
  *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe) = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v62 = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v121) = v62;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v63 = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  v121 = v63;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v64 = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  v121 = v64;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v66 = v121;
  v65 = v122;
  swift_getKeyPath();
  swift_getKeyPath();
  v121 = v66;
  v122 = v65;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v67 = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  v121 = v67;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(v32, v29, &qword_100173D50, &unk_10011D120);

  static Published.subscript.setter();
  sub_1000159AC(v32, &qword_100173D50, &unk_10011D120);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v68 = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  v121 = v68;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v69 = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  v121 = v69;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v69) = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v121) = v69;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v69) = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v121) = v69;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v69) = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v121) = v69;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v70 = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  v121 = v70;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v71 = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  v121 = v71;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v107;
  v73 = v108;
  (*(v107 + 16))(v106, v26, v108);

  static Published.subscript.setter();
  (*(v72 + 8))(v26, v73);
  swift_getKeyPath();
  swift_getKeyPath();
  v74 = v109;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v75 = v111;
  v76 = v74;
  v77 = v74;
  v78 = v112;
  (*(v111 + 16))(v110, v76, v112);

  static Published.subscript.setter();
  (*(v75 + 8))(v77, v78);
  v79 = *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);
  *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions) = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);

  v79, v80, v81, v82, v83, v84, v85, v86;
  v87 = *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);
  *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs) = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);

  v87, v88, v89, v90, v91, v92, v93, v94;
  v95 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
  swift_beginAccess();
  v96 = v113;
  sub_100007BA4(a1 + v95, v113, &unk_100174FA0, &qword_10011A700);
  v97 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
  swift_beginAccess();
  sub_100087AA0(v96, v5 + v97);
  swift_endAccess();
  v98 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
  swift_beginAccess();
  sub_100007BA4(a1 + v98, v96, &unk_100174FA0, &qword_10011A700);
  v99 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
  swift_beginAccess();
  sub_100087AA0(v96, v5 + v99);
  swift_endAccess();
  *(v5 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = v116;

  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v114;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v102 = v117;
  v101 = v118;
  (*(v117 + 16))(v115, v100, v118);

  static Published.subscript.setter();
  (*(v102 + 8))(v100, v101);
  swift_getKeyPath();
  swift_getKeyPath();
  v103 = v119;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(v103, v120, &qword_100172FD0, &qword_10011A210);

  static Published.subscript.setter();
  return sub_1000159AC(v103, &qword_100172FD0, &qword_10011A210);
}

void sub_10007F568(uint64_t a1, int a2, void *a3, void *a4, void *a5, _TtC9AirDropUI33AirDropTransferSessionsController *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v179 = a7;
  v180 = a8;
  v181 = a6;
  v183 = a5;
  v177 = a3;
  v178 = a4;
  v176 = a2;
  v11 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v11 - 8);
  v175 = &v174 - v12;
  v13 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v174 - v18;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100087D7C(&qword_100175D18, &type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);
  v184 = a1;
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v14 + 8);
  v182 = v13;
  v21(v19, v13);
  if ((v20 & 1) == 0)
  {
    v22 = *(v14 + 16);
    v23 = v182;
    v22(v19, v184, v182);
    swift_getKeyPath();
    swift_getKeyPath();
    v22(v16, v19, v23);

    static Published.subscript.setter();
    v21(v19, v23);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v24 = v176 & 1;
  if (v185 != (v176 & 1))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v185) = v24;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v25 = v185;
  v27 = v177;
  v26 = v178;
  v28 = v180;
  v29 = v181;
  v30 = v179;
  if (v185 != v177)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v185 = v27;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v185 == v26)
  {
    if (v25 == v27)
    {
      if (!v29)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v185 = v26;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v31 = v185;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  [v31 setCompletedUnitCount:v185];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v32 = v185;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  [v32 setTotalUnitCount:v185];

  if (!v29)
  {
    goto LABEL_20;
  }

LABEL_13:
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v39 = v186;
  if (!v186)
  {
    goto LABEL_19;
  }

  if (v185 == v183 && v186 == v29)
  {
    v29, v33, v185, v34, v35, v36, v37, v38;
    v39, v40, v41, v42, v43, v44, v45, v46;
    goto LABEL_20;
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v39, v48, v49, v50, v51, v52, v53, v54;
  if (v47)
  {
    v29, v55, v56, v57, v58, v59, v60, v61;
  }

  else
  {
LABEL_19:
    swift_getKeyPath();
    swift_getKeyPath();
    v185 = v183;
    v186 = v29;

    static Published.subscript.setter();
  }

LABEL_20:
  v62 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions;
  if (!v30)
  {
    v73 = &_swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v63 = *(v9 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);

  v65 = sub_100008598(v64, v30);
  v63, v66, v67, v68, v69, v70, v71, v72;
  v73 = v30;
  if ((v65 & 1) == 0)
  {
LABEL_24:
    v74 = *(v9 + v62);
    *(v9 + v62) = v73;

    v74, v75, v76, v77, v78, v79, v80, v81;
  }

  v82 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs;
  if (v28)
  {
    v83 = *(v9 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);

    v85 = sub_1000087E8(v84, v28);
    v83, v86, v87, v88, v89, v90, v91, v92;
    v93 = v28;
    if (v85)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v93 = &_swiftEmptyArrayStorage;
  }

  v94 = *(v9 + v82);
  *(v9 + v82) = v93;

  v94, v95, v96, v97, v98, v99, v100, v101;
LABEL_30:
  sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
  v102 = static NSUserDefaults.airdrop.getter();
  v103 = SFAirDropUserDefaults.moveToAppEnabled.getter();

  if (SFAirDropReceive.Transfer.State.sfTransferState.getter() == 7 && (v103 & 1) == 0 && (*(v9 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v105 = Strong;
      sub_10003BB64(v9);
    }
  }

  sub_10007BD28();
  v106 = *(v9 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity);
  if (v106)
  {
    sub_100087D7C(&qword_100173D78, &type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);

    v107 = dispatch thunk of CustomStringConvertible.description.getter();
    v109 = v108;
    if (qword_1001721E0 != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    sub_100007D20(v110, qword_100175480);

    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();
    v29, v113, v114, v115, v116, v117, v118, v119;
    v109, v120, v121, v122, v123, v124, v125, v126;

    if (os_log_type_enabled(v111, v112))
    {
      v134 = v29;
      v135 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      *v135 = 136315906;
      v136 = Activity.id.getter();
      v138 = v137;
      v139 = sub_10003E81C(v136, v137, &v185);
      v184 = v107;
      v140 = v139;
      v138, v141, v142, v143, v144, v145, v146, v147;
      *(v135 + 4) = v140;
      *(v135 + 12) = 2048;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v148 = v187;
      [v187 fractionCompleted];
      v150 = v149;

      *(v135 + 14) = v150;
      *(v135 + 22) = 2080;
      v151 = sub_10003E81C(v184, v109, &v185);
      v109, v152, v153, v154, v155, v156, v157, v158;
      *(v135 + 24) = v151;
      *(v135 + 32) = 2080;
      if (v134)
      {
        v159 = v183;
      }

      else
      {
        v159 = 0x3E656E6F6E3CLL;
      }

      if (v134)
      {
        v160 = v134;
      }

      else
      {
        v160 = 0xE600000000000000;
      }

      v161 = sub_10003E81C(v159, v160, &v185);
      v160, v162, v163, v164, v165, v166, v167, v168;
      *(v135 + 34) = v161;
      _os_log_impl(&_mh_execute_header, v111, v112, "Updating ActivityKit activity %s with progress: %f, transferState: %s, description: %s", v135, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v109, v127, v128, v129, v130, v131, v132, v133;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v169 = v185;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v170 = v185;
    v171 = type metadata accessor for TaskPriority();
    v172 = v175;
    (*(*(v171 - 8) + 56))(v175, 1, 1, v171);
    v173 = swift_allocObject();
    v173[2] = v106;
    v173[3] = v169;
    v173[4] = v170;

    static Task<>.noThrow(priority:operation:)();

    sub_1000159AC(v172, &qword_100172F50, &qword_10011E500);
  }
}

uint64_t sub_100080154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v7 = (&async function pointer to dispatch thunk of Activity.update(using:) + async function pointer to dispatch thunk of Activity.update(using:));
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_10008020C;

  return v7(v4 + 2);
}

uint64_t sub_10008020C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_100080300()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000077C8(&qword_100175CD0, &unk_10011D8C0);
  *&result = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v33[-v8];
  v10 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity;
  if (*(v0 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity))
  {
    v11 = qword_1001721E0;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100007D20(v12, qword_100175480);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v36 = v10;
      v16 = v15;
      v35 = swift_slowAlloc();
      v37 = v35;
      *v16 = 136315138;
      v34 = v14;
      v17 = Activity.id.getter();
      v19 = v18;
      v20 = v5;
      v21 = v3;
      v22 = v2;
      v23 = v1;
      v24 = sub_10003E81C(v17, v18, &v37);
      v19, v25, v26, v27, v28, v29, v30, v31;
      *(v16 + 4) = v24;
      v1 = v23;
      v2 = v22;
      v3 = v21;
      v5 = v20;
      _os_log_impl(&_mh_execute_header, v13, v34, "Ending activity %s", v16, 0xCu);
      sub_100007920(v35);

      v10 = v36;
    }

    v32 = sub_1000077C8(&qword_100175CD8, &qword_10011D8D0);
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    static ActivityUIDismissalPolicy.immediate.getter();
    dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

    (*(v3 + 8))(v5, v2);
    sub_1000159AC(v9, &qword_100175CD0, &unk_10011D8C0);
    *(v1 + v10) = 0;
  }

  return result;
}

void sub_10008065C(const char *a1, void (*a2)(uint64_t))
{
  v5 = v2;
  if (qword_1001721E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100007D20(v6, qword_100175480);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    a2(v5);
  }
}

void sub_1000807A4()
{
  v0 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v0 - 8);
  v28 = &v26 - v1;
  v2 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v27 = &v26 - v11;
  if (qword_1001721E0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100007D20(v12, qword_100175480);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Requested 'showInterventionMoreInfo' on AirDropTransferSession", v15, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v29;
  static Published.subscript.getter();

  SFAirDropReceive.Transfer.State.permissionRequest.getter();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1000159AC(v4, &qword_100173D50, &unk_10011D120);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Invalid transfer state for 'showInterventionMoreInfo'", v19, 2u);
    }
  }

  else
  {
    v20 = v27;
    (*(v10 + 32))(v27, v4, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      type metadata accessor for AirDropTransferSessionsController(0);
      sub_10003C81C();
    }

    v23 = type metadata accessor for TaskPriority();
    v24 = v28;
    (*(*(v23 - 8) + 56))(v28, 1, 1, v23);
    v25 = swift_allocObject();
    *(v25 + 16) = &unk_10011D900;
    *(v25 + 24) = v16;

    sub_1000077C8(&unk_100173C60, &qword_10011D910);
    static Task<>.noThrow(priority:operation:)();

    sub_1000159AC(v24, &qword_100172F50, &qword_10011E500);
    (*(v10 + 8))(v20, v9);
  }
}

uint64_t sub_100080CBC(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100080D54, v3, v2);
}

uint64_t sub_100080D54()
{
  v1 = *(v0 + 16);

  if (*(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) != 1)
  {
    if (qword_100172250 != -1)
    {
      swift_once();
    }

    sub_1000FBF64();

    goto LABEL_7;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100069868();

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = 1;
LABEL_8:
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100080E48(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v35 = &v33 - v6;
  v7 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v7 - 8);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for SFAirDropSend.Transfer.State();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v34 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v33 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  v39 = v2;
  static Published.subscript.getter();

  v21 = v16[6];
  if (v21(v14, 1, v15) == 1)
  {
    v11 = v14;
  }

  else
  {
    v33 = v3;
    v22 = v14;
    v23 = v16[4];
    v23(v20, v22, v15);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v21(v11, 1, v15) != 1)
    {
      v30 = v34;
      v23(v34, v11, v15);
      v28 = SFAirDropSend.Transfer.State.sameCase(as:)();
      v31 = v16[1];
      v31(v30, v15);
      v31(v20, v15);
      return v28 & 1;
    }

    (v16[1])(v20, v15);
    v3 = v33;
  }

  sub_1000159AC(v11, &qword_100172FD0, &qword_10011A210);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v38;
  static Published.subscript.getter();

  v25 = v21(v24, 1, v15);
  sub_1000159AC(v24, &qword_100172FD0, &qword_10011A210);
  if (v25 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v35;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v36;
    static Published.subscript.getter();

    v28 = SFAirDropReceive.Transfer.State.sameCase(as:)();
    v29 = *(v37 + 8);
    v29(v27, v3);
    v29(v26, v3);
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t sub_100081358(uint64_t a1)
{
  v242 = type metadata accessor for Date();
  v241 = *(v242 - 8);
  __chkstk_darwin(v242);
  v239 = &v232 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_1000077C8(&qword_100175CE0, &qword_10011D8E0);
  __chkstk_darwin(v236);
  v240 = &v232 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v235 = &v232 - v6;
  v7 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  __chkstk_darwin(v7 - 8);
  v238 = &v232 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v237 = &v232 - v10;
  __chkstk_darwin(v11);
  v234 = &v232 - v12;
  __chkstk_darwin(v13);
  v233 = &v232 - v14;
  v250 = type metadata accessor for SFAirDrop.DisplayPriority();
  v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  v248 = &v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v247 = &v232 - v17;
  v246 = type metadata accessor for DeviceLockState();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v244 = &v232 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v243 = &v232 - v20;
  v254 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v255 = *(v254 - 8);
  __chkstk_darwin(v254);
  v251 = &v232 - v21;
  v253 = sub_1000077C8(&qword_100175CE8, &qword_10011D8E8);
  __chkstk_darwin(v253);
  v256 = &v232 - v22;
  v23 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  __chkstk_darwin(v23 - 8);
  v252 = &v232 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v257 = &v232 - v26;
  __chkstk_darwin(v27);
  v258 = &v232 - v28;
  v263 = type metadata accessor for SFAirDropSend.Transfer.State();
  v266 = *(v263 - 8);
  __chkstk_darwin(v263);
  v259 = &v232 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_1000077C8(&qword_100175CF0, &qword_10011D8F0);
  __chkstk_darwin(v261);
  v262 = &v232 - v30;
  v31 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v31 - 8);
  v260 = &v232 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v264 = &v232 - v34;
  __chkstk_darwin(v35);
  v265 = &v232 - v36;
  v37 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v232 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v232 - v42;
  v44 = v1;
  v45 = *(v1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  v46 = a1;
  v47 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v48 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

  v49._countAndFlagsBits = v47;
  v49._object = v48;
  LOBYTE(v47) = String.hasPrefix(_:)(v49);
  v45, v50, v51, v52, v53, v54, v55, v56;
  v48, v57, v58, v59, v60, v61, v62, v63;
  if ((v47 & 1) == 0)
  {
    goto LABEL_10;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v64 = static SFAirDropReceive.Transfer.State.== infix(_:_:)();
  v65 = *(v38 + 8);
  v65(v40, v37);
  v65(v43, v37);
  if ((v64 & 1) == 0)
  {
    goto LABEL_10;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v66 = v265;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v264;
  v232 = v46;
  static Published.subscript.getter();

  v68 = v262;
  v69 = *(v261 + 48);
  sub_100007BA4(v66, v262, &qword_100172FD0, &qword_10011A210);
  sub_100007BA4(v67, v68 + v69, &qword_100172FD0, &qword_10011A210);
  v70 = *(v266 + 48);
  v71 = v263;
  if (v70(v68, 1, v263) == 1)
  {
    sub_1000159AC(v67, &qword_100172FD0, &qword_10011A210);
    sub_1000159AC(v66, &qword_100172FD0, &qword_10011A210);
    if (v70(v68 + v69, 1, v71) == 1)
    {
      sub_1000159AC(v68, &qword_100172FD0, &qword_10011A210);
      goto LABEL_13;
    }
  }

  else
  {
    v72 = v44;
    v73 = v260;
    sub_100007BA4(v68, v260, &qword_100172FD0, &qword_10011A210);
    if (v70(v68 + v69, 1, v71) != 1)
    {
      v79 = v73;
      v80 = v266;
      v81 = v259;
      (*(v266 + 32))(v259, v68 + v69, v71);
      sub_100087D7C(&qword_100175D10, &type metadata accessor for SFAirDropSend.Transfer.State, &protocol conformance descriptor for SFAirDropSend.Transfer.State);
      v82 = v72;
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = *(v80 + 8);
      v84(v81, v71);
      sub_1000159AC(v264, &qword_100172FD0, &qword_10011A210);
      sub_1000159AC(v265, &qword_100172FD0, &qword_10011A210);
      v84(v79, v71);
      v44 = v82;
      sub_1000159AC(v68, &qword_100172FD0, &qword_10011A210);
      if ((v83 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_13:
      v85 = *(v44 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);
      v86 = v232;
      v87 = *(v232 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);
      if (v85)
      {
        if (!v87 || (*(v44 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName) != *(v232 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName) || v85 != v87) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (v87)
      {
        goto LABEL_10;
      }

      v88 = *(v44 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName + 8);
      v89 = *(v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName + 8);
      if (v88)
      {
        if (!v89 || (*(v44 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName) != *(v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName) || v88 != v89) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (v89)
      {
        goto LABEL_10;
      }

      if (*(v44 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe) != *(v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe))
      {
        goto LABEL_10;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v90 = v267;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v90 != v267)
      {
        goto LABEL_10;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v91 = v267;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v91 != v267)
      {
        goto LABEL_10;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v92 = v267;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v92 != v267)
      {
        goto LABEL_10;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v94 = v267;
      v93 = v268;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v102 = v268;
      if (v93)
      {
        if (v268)
        {
          if (v94 == v267 && v93 == v268)
          {
            v93, v95, v267, v97, v98, v99, v100, v101;
            v102, v103, v104, v105, v106, v107, v108, v109;
          }

          else
          {
            v111 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v93, v112, v113, v114, v115, v116, v117, v118;
            v102, v119, v120, v121, v122, v123, v124, v125;
            if ((v111 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

LABEL_41:
          sub_1000165C4(0, &qword_100175CF8, NSObject_ptr);
          swift_getKeyPath();
          swift_getKeyPath();
          v266 = v44;
          static Published.subscript.getter();

          v126 = v267;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v127 = v267;
          v128 = static NSObject.== infix(_:_:)();

          if ((v128 & 1) == 0)
          {
            goto LABEL_10;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v129 = v258;
          static Published.subscript.getter();

          swift_getKeyPath();
          swift_getKeyPath();
          v130 = v257;
          static Published.subscript.getter();

          v131 = *(v253 + 48);
          v132 = v256;
          sub_100007BA4(v129, v256, &qword_100173D50, &unk_10011D120);
          sub_100007BA4(v130, v132 + v131, &qword_100173D50, &unk_10011D120);
          v133 = *(v255 + 48);
          v134 = v254;
          if (v133(v132, 1, v254) == 1)
          {
            sub_1000159AC(v257, &qword_100173D50, &unk_10011D120);
            sub_1000159AC(v258, &qword_100173D50, &unk_10011D120);
            v135 = v133(v132 + v131, 1, v134) == 1;
            v76 = v132;
            if (!v135)
            {
              goto LABEL_48;
            }

            sub_1000159AC(v132, &qword_100173D50, &unk_10011D120);
          }

          else
          {
            v136 = v252;
            sub_100007BA4(v132, v252, &qword_100173D50, &unk_10011D120);
            v137 = v133(v132 + v131, 1, v134);
            v138 = v134;
            if (v137 == 1)
            {
              sub_1000159AC(v257, &qword_100173D50, &unk_10011D120);
              sub_1000159AC(v258, &qword_100173D50, &unk_10011D120);
              (*(v255 + 8))(v136, v134);
              v76 = v256;
LABEL_48:
              v74 = &qword_100175CE8;
              v75 = &qword_10011D8E8;
              goto LABEL_9;
            }

            v139 = v255;
            v140 = v256;
            v141 = v256 + v131;
            v142 = v251;
            (*(v255 + 32))(v251, v141, v138);
            sub_1000199C8(&qword_100175D08, &unk_100173CB0, &unk_10011AE50, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
            v143 = dispatch thunk of static Equatable.== infix(_:_:)();
            v144 = *(v139 + 8);
            v144(v142, v138);
            sub_1000159AC(v257, &qword_100173D50, &unk_10011D120);
            sub_1000159AC(v258, &qword_100173D50, &unk_10011D120);
            v144(v136, v138);
            sub_1000159AC(v140, &qword_100173D50, &unk_10011D120);
            if ((v143 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v145 = v267;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v146 = v267;
          if (v145)
          {
            if (!v267)
            {
              goto LABEL_73;
            }

            sub_1000165C4(0, &qword_100175E50, UIImage_ptr);
            v147 = static NSObject.== infix(_:_:)();

            if ((v147 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          else if (v267)
          {
            goto LABEL_60;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v145 = v267;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v146 = v267;
          if (v145)
          {
            if (!v267)
            {
              goto LABEL_73;
            }

            sub_1000165C4(0, &qword_100175E50, UIImage_ptr);
            v148 = static NSObject.== infix(_:_:)();

            if ((v148 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          else if (v267)
          {
            goto LABEL_60;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v149 = v267;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v149 != v267)
          {
            goto LABEL_10;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v150 = v267;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v150 != v267)
          {
            goto LABEL_10;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v151 = v267;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v151 != v267)
          {
            goto LABEL_10;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v145 = v267;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v146 = v267;
          if (v145)
          {
            if (!v267)
            {
              goto LABEL_73;
            }

            sub_1000165C4(0, &qword_100175E50, UIImage_ptr);
            v152 = static NSObject.== infix(_:_:)();

            if ((v152 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          else if (v267)
          {
            goto LABEL_60;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v145 = v267;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v146 = v267;
          if (v145)
          {
            if (v267)
            {
              sub_1000165C4(0, &qword_100175E50, UIImage_ptr);
              v153 = static NSObject.== infix(_:_:)();

              if ((v153 & 1) == 0)
              {
                goto LABEL_10;
              }

LABEL_75:
              swift_getKeyPath();
              swift_getKeyPath();
              v154 = v243;
              static Published.subscript.getter();

              swift_getKeyPath();
              swift_getKeyPath();
              v155 = v244;
              static Published.subscript.getter();

              v156 = static DeviceLockState.== infix(_:_:)();
              v157 = *(v245 + 8);
              v158 = v155;
              v159 = v246;
              v157(v158, v246);
              v157(v154, v159);
              if ((v156 & 1) == 0)
              {
                goto LABEL_10;
              }

              swift_getKeyPath();
              swift_getKeyPath();
              v160 = v247;
              static Published.subscript.getter();

              swift_getKeyPath();
              swift_getKeyPath();
              v161 = v248;
              static Published.subscript.getter();

              v162 = static SFAirDrop.DisplayPriority.== infix(_:_:)();
              v163 = *(v249 + 8);
              v164 = v161;
              v165 = v250;
              v163(v164, v250);
              v163(v160, v165);
              if ((v162 & 1) == 0)
              {
                goto LABEL_10;
              }

              v166 = *(v266 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);
              v167 = *(v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);

              v168 = sub_100008598(v166, v167);
              v166, v169, v170, v171, v172, v173, v174, v175;
              v167, v176, v177, v178, v179, v180, v181, v182;
              if ((v168 & 1) == 0)
              {
                goto LABEL_10;
              }

              v183 = *(v266 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);
              v184 = *(v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);

              v185 = sub_1000087E8(v183, v184);
              v183, v186, v187, v188, v189, v190, v191, v192;
              v184, v193, v194, v195, v196, v197, v198, v199;
              if ((v185 & 1) == 0)
              {
                goto LABEL_10;
              }

              v200 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
              v201 = v266;
              swift_beginAccess();
              v202 = v233;
              sub_100007BA4(v201 + v200, v233, &unk_100174FA0, &qword_10011A700);
              v203 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
              swift_beginAccess();
              v204 = *(v236 + 48);
              v205 = v202;
              v206 = v235;
              sub_100007BA4(v205, v235, &unk_100174FA0, &qword_10011A700);
              sub_100007BA4(v86 + v203, v206 + v204, &unk_100174FA0, &qword_10011A700);
              v207 = *(v241 + 48);
              if (v207(v206, 1, v242) == 1)
              {
                sub_1000159AC(v233, &unk_100174FA0, &qword_10011A700);
                if (v207(v235 + v204, 1, v242) == 1)
                {
                  sub_1000159AC(v235, &unk_100174FA0, &qword_10011A700);
                  goto LABEL_86;
                }
              }

              else
              {
                v208 = v235;
                sub_100007BA4(v235, v234, &unk_100174FA0, &qword_10011A700);
                if (v207(v208 + v204, 1, v242) != 1)
                {
                  v209 = v241;
                  v210 = v235;
                  v211 = v235 + v204;
                  v212 = v239;
                  v213 = v242;
                  (*(v241 + 32))(v239, v211, v242);
                  sub_100087D7C(&qword_100175D00, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                  v214 = v234;
                  LODWORD(v265) = dispatch thunk of static Equatable.== infix(_:_:)();
                  v215 = *(v209 + 8);
                  v215(v212, v213);
                  sub_1000159AC(v233, &unk_100174FA0, &qword_10011A700);
                  v215(v214, v213);
                  sub_1000159AC(v210, &unk_100174FA0, &qword_10011A700);
                  if ((v265 & 1) == 0)
                  {
                    goto LABEL_10;
                  }

LABEL_86:
                  v216 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
                  v217 = v266;
                  swift_beginAccess();
                  v218 = v237;
                  sub_100007BA4(v217 + v216, v237, &unk_100174FA0, &qword_10011A700);
                  v219 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
                  swift_beginAccess();
                  v220 = *(v236 + 48);
                  v221 = v218;
                  v222 = v240;
                  sub_100007BA4(v221, v240, &unk_100174FA0, &qword_10011A700);
                  sub_100007BA4(v86 + v219, v222 + v220, &unk_100174FA0, &qword_10011A700);
                  if (v207(v222, 1, v242) == 1)
                  {
                    sub_1000159AC(v237, &unk_100174FA0, &qword_10011A700);
                    if (v207(v240 + v220, 1, v242) == 1)
                    {
                      sub_1000159AC(v240, &unk_100174FA0, &qword_10011A700);
                      goto LABEL_93;
                    }
                  }

                  else
                  {
                    v223 = v240;
                    sub_100007BA4(v240, v238, &unk_100174FA0, &qword_10011A700);
                    if (v207(v223 + v220, 1, v242) != 1)
                    {
                      v224 = v241;
                      v225 = v240;
                      v226 = v240 + v220;
                      v227 = v239;
                      v228 = v242;
                      (*(v241 + 32))(v239, v226, v242);
                      sub_100087D7C(&qword_100175D00, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                      v229 = v238;
                      v230 = dispatch thunk of static Equatable.== infix(_:_:)();
                      v231 = *(v224 + 8);
                      v231(v227, v228);
                      sub_1000159AC(v237, &unk_100174FA0, &qword_10011A700);
                      v231(v229, v228);
                      sub_1000159AC(v225, &unk_100174FA0, &qword_10011A700);
                      if ((v230 & 1) == 0)
                      {
                        goto LABEL_10;
                      }

LABEL_93:
                      v77 = *(v266 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) ^ *(v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) ^ 1;
                      return v77 & 1;
                    }

                    sub_1000159AC(v237, &unk_100174FA0, &qword_10011A700);
                    (*(v241 + 8))(v238, v242);
                  }

                  v74 = &qword_100175CE0;
                  v75 = &qword_10011D8E0;
                  v76 = v240;
                  goto LABEL_9;
                }

                sub_1000159AC(v233, &unk_100174FA0, &qword_10011A700);
                (*(v241 + 8))(v234, v242);
              }

              v74 = &qword_100175CE0;
              v75 = &qword_10011D8E0;
              v76 = v235;
              goto LABEL_9;
            }

LABEL_73:

            goto LABEL_10;
          }

          if (!v267)
          {
            goto LABEL_75;
          }

LABEL_60:

          goto LABEL_10;
        }

        v110 = v93;
      }

      else
      {
        if (!v268)
        {
          goto LABEL_41;
        }

        v110 = v268;
      }

      v110, v95, v96, v97, v98, v99, v100, v101;
      goto LABEL_10;
    }

    sub_1000159AC(v264, &qword_100172FD0, &qword_10011A210);
    sub_1000159AC(v265, &qword_100172FD0, &qword_10011A210);
    (*(v266 + 8))(v73, v71);
  }

  v74 = &qword_100175CF0;
  v75 = &qword_10011D8F0;
  v76 = v68;
LABEL_9:
  sub_1000159AC(v76, v74, v75);
LABEL_10:
  v77 = 0;
  return v77 & 1;
}

void sub_10008337C(uint64_t a1)
{
  if (!qword_100175578)
  {
    sub_1000165C4(255, &qword_100173D70, NSProgress_ptr);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100175578);
    }
  }
}

void sub_1000833E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10008345C()
{
  result = qword_100175C70;
  if (!qword_100175C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C70);
  }

  return result;
}

unint64_t sub_1000834B4()
{
  result = qword_100175C78;
  if (!qword_100175C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C78);
  }

  return result;
}

unint64_t sub_10008350C()
{
  result = qword_100175C80;
  if (!qword_100175C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C80);
  }

  return result;
}

unint64_t sub_100083564()
{
  result = qword_100175C88;
  if (!qword_100175C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C88);
  }

  return result;
}

unint64_t sub_1000835BC()
{
  result = qword_100175C90;
  if (!qword_100175C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C90);
  }

  return result;
}

unint64_t sub_100083614()
{
  result = qword_100175C98;
  if (!qword_100175C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C98);
  }

  return result;
}

uint64_t sub_100083668@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AirDropTransferSession(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000836CC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v4 = *v3 == *(*a2 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier) && v3[1] == *(v2 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return sub_100081358(v2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100083784(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_10008381C@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10008389C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100083918(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100083998(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

double sub_100083A10@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100083A90(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_100083B14(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t sub_100083B90(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_100007BA4(a1, &v10 - v7, &qword_100173D50, &unk_10011D120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(v8, v5, &qword_100173D50, &unk_10011D120);

  static Published.subscript.setter();
  return sub_1000159AC(v8, &qword_100173D50, &unk_10011D120);
}

uint64_t sub_100083DB0(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;

  return static Published.subscript.setter();
}

void sub_100083E4C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_100083E84()
{
  v0 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v0 - 8);
  v2 = &v30 - v1;
  v3 = type metadata accessor for ActivityUIDismissalPolicy();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000077C8(&qword_100175CD0, &unk_10011D8C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  sub_1000077C8(&unk_100173E40, &qword_10011A6F8);
  result = static Activity.activities.getter();
  v18 = result;
  if (!(result >> 62))
  {
    v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_11:
    v18, v11, v12, v13, v14, v15, v16, v17;
LABEL_12:
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v2, 1, 1, v29);
    static Task<>.noThrow(priority:operation:)();

    return sub_1000159AC(v2, &qword_100172F50, &qword_10011E500);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v19 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v19 >= 1)
  {
    v31 = v2;
    v20 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v20;
      v21 = sub_1000077C8(&qword_100175CD8, &qword_10011D8D0);
      (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
      static ActivityUIDismissalPolicy.immediate.getter();
      dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

      (*(v4 + 8))(v6, v3);
      sub_1000159AC(v9, &qword_100175CD0, &unk_10011D8C0);
    }

    while (v19 != v20);
    v18, v22, v23, v24, v25, v26, v27, v28;
    v2 = v31;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000841B4(uint64_t a1, uint64_t a2, void (*a3)(void, void, __n128), uint64_t a4)
{
  v196 = a4;
  v170 = a3;
  v168 = a2;
  v169 = a1;
  v195 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v192 = &v156 - v7;
  v8 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  __chkstk_darwin(v8 - 8);
  v191 = &v156 - v9;
  v190 = type metadata accessor for SFAirDrop.DisplayPriority();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v188 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v187 = &v156 - v12;
  v186 = type metadata accessor for DeviceLockState();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v184 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v182 = &v156 - v15;
  v197 = sub_1000077C8(&qword_100173D40, &qword_10011B1C0);
  v203 = *(v197 - 8);
  __chkstk_darwin(v197);
  v180 = &v156 - v16;
  v17 = sub_1000077C8(&qword_100173D48, &unk_10011A530);
  v18 = *(v17 - 8);
  v201 = v17;
  v202 = v18;
  __chkstk_darwin(v17);
  v208 = &v156 - v19;
  v200 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  __chkstk_darwin(v200);
  v199 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v198 = &v156 - v22;
  v23 = sub_1000077C8(&qword_100173D58, &unk_10011A540);
  v206 = *(v23 - 8);
  v207 = v23;
  __chkstk_darwin(v23);
  v179 = &v156 - v24;
  v205 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v205);
  v204 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v156 - v27;
  v29 = sub_1000077C8(&qword_100173D60, &qword_10011D3A0);
  v162 = v29;
  v163 = *(v29 - 8);
  v30 = v163;
  __chkstk_darwin(v29);
  v32 = &v156 - v31;
  v33 = sub_1000077C8(&qword_100173728, qword_1001199F0);
  v157 = v33;
  v209 = *(v33 - 8);
  v34 = v209;
  __chkstk_darwin(v33);
  v36 = &v156 - v35;
  Date.init()();
  v37 = (v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  v158 = (v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  v159 = (v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  *v38 = 0;
  v38[1] = 0;
  v39 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_cancelAction;
  v40 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v40 - 8) + 56))(v4 + v39, 1, 1, v40);
  v41 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__transferAccepted;
  v160 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__transferAccepted;
  LOBYTE(v212) = 0;
  Published.init(initialValue:)();
  v42 = *(v34 + 32);
  v177 = v34 + 32;
  v178 = v42;
  v42(v4 + v41, v36, v33);
  v43 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__localizedTransferDescription;
  v161 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__localizedTransferDescription;
  v212 = 0;
  v213 = 0;
  v165 = sub_1000077C8(&qword_100172AA0, &unk_1001187F0);
  Published.init(initialValue:)();
  (*(v30 + 32))(v4 + v43, v32, v29);
  v44 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
  v181 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
  v45 = type metadata accessor for SFAirDropSend.Transfer.State();
  (*(*(v45 - 8) + 56))(v28, 1, 1, v45);
  v183 = v28;
  sub_100007BA4(v28, v204, &qword_100172FD0, &qword_10011A210);
  v46 = v179;
  Published.init(initialValue:)();
  sub_1000159AC(v28, &qword_100172FD0, &qword_10011A210);
  (*(v206 + 32))(v4 + v44, v46, v207);
  v47 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__permissionRequest;
  v164 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__permissionRequest;
  v48 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v49 = v198;
  (*(*(v48 - 8) + 56))(v198, 1, 1, v48);
  sub_100007BA4(v49, v199, &qword_100173D50, &unk_10011D120);
  v50 = v208;
  Published.init(initialValue:)();
  sub_1000159AC(v49, &qword_100173D50, &unk_10011D120);
  (*(v202 + 32))(v4 + v47, v50, v201);
  v51 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__previewImage;
  v166 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__previewImage;
  v212 = 0;
  v52 = sub_1000077C8(&qword_100173D68, &qword_10011A550);
  v53 = v180;
  v208 = v52;
  Published.init(initialValue:)();
  v54 = *(v203 + 4);
  v55 = v197;
  v54(v4 + v51, v53, v197);
  v179 = v54;
  v56 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__fallbackPreviewImage;
  v167 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__fallbackPreviewImage;
  v212 = 0;
  Published.init(initialValue:)();
  v54(v4 + v56, v53, v55);
  v57 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldShowSensitiveImage;
  v171 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldShowSensitiveImage;
  LOBYTE(v212) = 0;
  Published.init(initialValue:)();
  v58 = v4 + v57;
  v59 = v157;
  v60 = v178;
  v178(v58, v36, v157);
  v61 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldDisplayPreviewImage;
  v172 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldDisplayPreviewImage;
  LOBYTE(v212) = 1;
  Published.init(initialValue:)();
  v62 = v4 + v61;
  v63 = v59;
  v60(v62, v36, v59);
  v64 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__contactImage;
  v173 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__contactImage;
  v212 = 0;
  Published.init(initialValue:)();
  v65 = v179;
  (v179)(v4 + v64, v53, v55);
  v66 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__airdropIconImage;
  v174 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__airdropIconImage;
  v212 = 0;
  Published.init(initialValue:)();
  v65(v4 + v66, v53, v55);
  v175 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions;
  *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions) = &_swiftEmptyArrayStorage;
  v177 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs;
  *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs) = &_swiftEmptyArrayStorage;
  v178 = (v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate);
  *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_sessionUpdateDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v180 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity;
  *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = 0;
  v67 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
  v176 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
  v68 = type metadata accessor for Date();
  v69 = *(*(v68 - 8) + 56);
  v69(v4 + v67, 1, 1, v68);
  v179 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
  v69(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime, 1, 1, v68);
  v70 = (v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v71 = v170;
  *v70 = v168;
  v70[1] = v71;
  v72 = v169;
  v73 = *(v169 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);
  v74 = v158;
  v75 = v158[1];
  *v158 = *(v169 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  v74[1] = v73;

  v75, v76, v77, v78, v79, v80, v81, v82;
  v83 = *(v72 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName + 8);
  v84 = v159;
  v85 = v159[1];
  *v159 = *(v72 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  v84[1] = v83;

  v85, v86, v87, v88, v89, v90, v91, v92;
  *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe) = *(v72 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v67) = v212;
  v93 = v160;
  swift_beginAccess();
  v94 = *(v209 + 8);
  v209 += 8;
  v170 = v94;
  v94(v4 + v93, v63);
  LOBYTE(v210) = v67;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v95 = v212;
  swift_beginAccess();
  v210 = v95;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v96 = v212;
  swift_beginAccess();
  v210 = v96;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v97 = v212;
  v98 = v213;
  v99 = v161;
  swift_beginAccess();
  (*(v163 + 8))(v4 + v99, v162);
  v210 = v97;
  v211 = v98;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v100 = v212;
  swift_beginAccess();
  v210 = v100;
  sub_1000165C4(0, &qword_100173D70, NSProgress_ptr);
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v101 = v198;
  static Published.subscript.getter();

  v102 = v164;
  swift_beginAccess();
  (*(v202 + 8))(v4 + v102, v201);
  sub_100007BA4(v101, v199, &qword_100173D50, &unk_10011D120);
  Published.init(initialValue:)();
  sub_1000159AC(v101, &qword_100173D50, &unk_10011D120);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v103 = v212;
  v104 = v166;
  swift_beginAccess();
  v105 = *(v203 + 1);
  v105(v4 + v104, v55);
  v203 = v105;
  v210 = v103;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v106 = v212;
  v107 = v167;
  swift_beginAccess();
  v105(v4 + v107, v55);
  v210 = v106;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v106) = v212;
  swift_beginAccess();
  LOBYTE(v210) = v106;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v106) = v212;
  v108 = v171;
  swift_beginAccess();
  v109 = v170;
  v170(v4 + v108, v63);
  LOBYTE(v210) = v106;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v106) = v212;
  v110 = v172;
  swift_beginAccess();
  v109(v4 + v110, v63);
  LOBYTE(v210) = v106;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v111 = v212;
  v112 = v173;
  swift_beginAccess();
  v113 = v197;
  v114 = v203;
  v203(v4 + v112, v197);
  v210 = v111;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v115 = v212;
  v116 = v174;
  swift_beginAccess();
  v114(v4 + v116, v113);
  v210 = v115;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v117 = v182;
  static Published.subscript.getter();

  swift_beginAccess();
  v118 = v185;
  v119 = v186;
  (*(v185 + 16))(v184, v117, v186);
  Published.init(initialValue:)();
  (*(v118 + 8))(v117, v119);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v120 = v212;
  swift_beginAccess();
  v210 = v120;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v121 = v187;
  static Published.subscript.getter();

  swift_beginAccess();
  v122 = v189;
  v123 = v190;
  (*(v189 + 16))(v188, v121, v190);
  Published.init(initialValue:)();
  (*(v122 + 8))(v121, v123);
  swift_endAccess();
  v124 = *(v4 + v175);
  *(v4 + v175) = *(v72 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);

  v124, v125, v126, v127, v128, v129, v130, v131;
  v132 = *(v4 + v177);
  *(v4 + v177) = *(v72 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);

  v132, v133, v134, v135, v136, v137, v138, v139;
  v140 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
  swift_beginAccess();
  v141 = v72 + v140;
  v142 = v191;
  sub_100007BA4(v141, v191, &unk_100174FA0, &qword_10011A700);
  v143 = v176;
  swift_beginAccess();
  v144 = v4 + v143;
  v145 = v142;
  sub_100087AA0(v142, v144);
  swift_endAccess();
  v146 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
  swift_beginAccess();
  sub_100007BA4(v72 + v146, v145, &unk_100174FA0, &qword_10011A700);
  v147 = v179;
  swift_beginAccess();
  sub_100087AA0(v145, &v147[v4]);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v148 = v192;
  static Published.subscript.getter();

  swift_beginAccess();
  v149 = v194;
  v150 = v195;
  (*(v194 + 16))(v193, v148, v195);
  Published.init(initialValue:)();
  (*(v149 + 8))(v148, v150);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v151 = v183;
  static Published.subscript.getter();

  v152 = v181;
  swift_beginAccess();
  (*(v206 + 8))(v4 + v152, v207);
  sub_100007BA4(v151, v204, &qword_100172FD0, &qword_10011A210);
  Published.init(initialValue:)();
  sub_1000159AC(v151, &qword_100172FD0, &qword_10011A210);
  swift_endAccess();
  v153 = v72 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v178 + 1) = *(v153 + 8);
  swift_unknownObjectWeakAssign();

  *&v180[v4] = v196;

  *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) = SBUIIsSystemApertureEnabled();
  return v4;
}

uint64_t sub_100085BD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5, void *a6, void *a7, char *a8, char *a9, void *a10, uint64_t a11)
{
  v242 = a8;
  v225 = a7;
  v236 = a6;
  v221 = a4;
  v220 = a3;
  v219 = a2;
  v218 = a1;
  v240 = a10;
  v241 = a9;
  v226 = a11;
  v12 = type metadata accessor for SFAirDropSend.Transfer.State();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v192 = &v191 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1000077C8(&qword_100173D40, &qword_10011B1C0);
  v213 = *(v232 - 8);
  __chkstk_darwin(v232);
  v210 = &v191 - v15;
  v209 = sub_1000077C8(&qword_100173D48, &unk_10011A530);
  v208 = *(v209 - 8);
  __chkstk_darwin(v209);
  v207 = &v191 - v16;
  v206 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  __chkstk_darwin(v206);
  v204 = &v191 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v203 = &v191 - v19;
  v235 = sub_1000077C8(&qword_100173D58, &unk_10011A540);
  v234 = *(v235 - 1);
  __chkstk_darwin(v235);
  v201 = &v191 - v20;
  v200 = sub_1000077C8(&qword_100173D60, &qword_10011D3A0);
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v196 = &v191 - v21;
  v195 = sub_1000077C8(&qword_100173728, qword_1001199F0);
  v244 = *(v195 - 8);
  __chkstk_darwin(v195);
  v23 = &v191 - v22;
  v250 = type metadata accessor for SFAirDrop.DisplayPriority();
  v252 = *(v250 - 8);
  __chkstk_darwin(v250);
  v223 = &v191 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v222 = &v191 - v26;
  __chkstk_darwin(v27);
  v248 = &v191 - v28;
  v29 = type metadata accessor for DeviceLockState();
  v239 = v29;
  v249 = *(v29 - 8);
  v30 = v249;
  __chkstk_darwin(v29);
  v217 = &v191 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v216 = &v191 - v33;
  __chkstk_darwin(v34);
  v36 = &v191 - v35;
  v238 = &v191 - v35;
  v233 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v233);
  v224 = &v191 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v231 = &v191 - v39;
  __chkstk_darwin(v40);
  v230 = &v191 - v41;
  __chkstk_darwin(v42);
  v44 = &v191 - v43;
  v247 = &v191 - v43;
  v245 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v251 = *(v245 - 8);
  __chkstk_darwin(v245);
  v227 = &v191 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v205 = &v191 - v47;
  __chkstk_darwin(v48);
  v202 = &v191 - v49;
  v51 = __chkstk_darwin(v50);
  v246 = &v191 - v52;
  (*(v53 + 104))(v51);
  v237 = v13;
  v54 = *(v13 + 16);
  v229 = a5;
  v54(v44, a5, v12);
  v55 = *(v13 + 56);
  v243 = v12;
  v55(v44, 0, 1, v12);
  v56 = *(v30 + 16);
  v211 = v30 + 16;
  v212 = v56;
  v56(v36, v242, v29);
  v57 = *(v252 + 16);
  v214 = v252 + 16;
  v215 = v57;
  v57(v248, v241, v250);
  type metadata accessor for AirDropTransferSession(0);
  v58 = swift_allocObject();
  Date.init()();
  v59 = (v58 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  v197 = (v58 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  *v59 = 0;
  v59[1] = 0;
  v60 = (v58 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  v198 = (v58 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  *v60 = 0;
  v60[1] = 0;
  v61 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_cancelAction;
  v62 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v62 - 8) + 56))(v58 + v61, 1, 1, v62);
  v63 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__transferAccepted;
  LOBYTE(v253[0]) = 0;
  v193 = v23;
  Published.init(initialValue:)();
  v64 = *(v244 + 4);
  v244 += 32;
  v194 = v64;
  v65 = v195;
  v64(v58 + v63, v23, v195);
  v66 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__localizedTransferDescription;
  v253[0] = 0;
  v253[1] = 0;
  sub_1000077C8(&qword_100172AA0, &unk_1001187F0);
  v67 = v196;
  Published.init(initialValue:)();
  (*(v199 + 32))(v58 + v66, v67, v200);
  v68 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
  v200 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
  v69 = v230;
  v55(v230, 1, 1, v12);
  sub_100007BA4(v69, v231, &qword_100172FD0, &qword_10011A210);
  v70 = v201;
  Published.init(initialValue:)();
  sub_1000159AC(v69, &qword_100172FD0, &qword_10011A210);
  (*(v234 + 4))(v58 + v68, v70, v235);
  v71 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__permissionRequest;
  v72 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v73 = v203;
  (*(*(v72 - 8) + 56))(v203, 1, 1, v72);
  sub_100007BA4(v73, v204, &qword_100173D50, &unk_10011D120);
  v74 = v207;
  Published.init(initialValue:)();
  sub_1000159AC(v73, &qword_100173D50, &unk_10011D120);
  (*(v208 + 32))(v58 + v71, v74, v209);
  v75 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__previewImage;
  v253[0] = 0;
  v76 = sub_1000077C8(&qword_100173D68, &qword_10011A550);
  v77 = v210;
  v209 = v76;
  Published.init(initialValue:)();
  v78 = *(v213 + 4);
  v79 = v232;
  v78(v58 + v75, v77, v232);
  v213 = v78;
  v80 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__fallbackPreviewImage;
  v253[0] = 0;
  Published.init(initialValue:)();
  v78(v58 + v80, v77, v79);
  v81 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldShowSensitiveImage;
  LOBYTE(v253[0]) = 0;
  v82 = v193;
  Published.init(initialValue:)();
  v83 = v194;
  v194(v58 + v81, v82, v65);
  v84 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldDisplayPreviewImage;
  LOBYTE(v253[0]) = 1;
  Published.init(initialValue:)();
  v83(v58 + v84, v82, v65);
  v85 = v58;
  v86 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__contactImage;
  v253[0] = 0;
  Published.init(initialValue:)();
  v87 = v232;
  v88 = v213;
  v213(v58 + v86, v77, v232);
  v89 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__airdropIconImage;
  v253[0] = 0;
  Published.init(initialValue:)();
  v88(v58 + v89, v77, v87);
  *(v58 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions) = &_swiftEmptyArrayStorage;
  *(v58 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs) = &_swiftEmptyArrayStorage;
  v90 = v58 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate;
  *(v58 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v58 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_sessionUpdateDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v58 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = 0;
  v91 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
  v92 = type metadata accessor for Date();
  v93 = *(*(v92 - 8) + 56);
  v93(v58 + v91, 1, 1, v92);
  v93(v58 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime, 1, 1, v92);
  v94 = (v58 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v95 = v219;
  *v94 = v218;
  v94[1] = v95;
  *(v58 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe) = 0;
  v96 = v197;
  v97 = v197[1];
  *v197 = 0;
  v96[1] = 0;
  v97, v98, v99, v100, v101, v102, v103, v104;
  v105 = v198;
  v106 = v198[1];
  v107 = v221;
  *v198 = v220;
  v105[1] = v107;
  v106, v108, v109, v110, v111, v112, v113, v114;
  v115 = v251;
  v116 = v251 + 16;
  v117 = *(v251 + 16);
  v118 = v202;
  v119 = v245;
  v117(v202, v246, v245);
  swift_beginAccess();
  v232 = v116;
  v221 = v117;
  v117(v205, v118, v119);
  Published.init(initialValue:)();
  v120 = *(v115 + 8);
  v251 = v115 + 8;
  v244 = v120;
  (v120)(v118, v119);
  swift_endAccess();
  v121 = v230;
  sub_100007BA4(v247, v230, &qword_100172FD0, &qword_10011A210);
  v122 = v200;
  swift_beginAccess();
  (*(v234 + 1))(v85 + v122, v235);
  sub_100007BA4(v121, v231, &qword_100172FD0, &qword_10011A210);
  Published.init(initialValue:)();
  sub_1000159AC(v121, &qword_100172FD0, &qword_10011A210);
  swift_endAccess();
  swift_beginAccess();
  v254 = *&v236;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v123 = v225;
  v254 = *&v225;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v254) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  v124 = v216;
  v125 = v239;
  v126 = v212;
  v212(v216, v238, v239);
  swift_beginAccess();
  v126(v217, v124, v125);
  Published.init(initialValue:)();
  v127 = *(v249 + 8);
  v249 += 8;
  v235 = v127;
  v127(v124, v125);
  swift_endAccess();
  v128 = [objc_opt_self() mainScreen];
  [v128 bounds];
  v130 = v129;
  v132 = v131;
  v134 = v133;
  v136 = v135;

  v255.origin.x = v130;
  v255.origin.y = v132;
  v255.size.width = v134;
  v255.size.height = v136;
  v137 = CGRectGetWidth(v255) + -24.0;
  swift_beginAccess();
  v254 = v137;
  Published.init(initialValue:)();
  swift_endAccess();
  v138 = v222;
  v139 = v250;
  v140 = v215;
  v215(v222, v248, v250);
  swift_beginAccess();
  v140(v223, v138, v139);
  Published.init(initialValue:)();
  v141 = *(v252 + 8);
  v252 += 8;
  v234 = v141;
  v141(v138, v139);
  swift_endAccess();
  *(v90 + 8) = v226;
  swift_unknownObjectWeakAssign();
  *(v85 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) = SBUIIsSystemApertureEnabled();
  v142 = COERCE_DOUBLE([objc_opt_self() progressWithTotalUnitCount:v123]);
  swift_beginAccess();
  v254 = v142;
  sub_1000165C4(0, &qword_100173D70, NSProgress_ptr);
  v143 = v237;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v144 = v224;

  v145 = v253[0];
  [v253[0] setCompletedUnitCount:v236];

  v146 = v243;
  sub_100007BA4(v247, v144, &qword_100172FD0, &qword_10011A210);
  if ((*(v143 + 48))(v144, 1, v146) == 1)
  {
    sub_1000159AC(v144, &qword_100172FD0, &qword_10011A210);
    v147 = v246;
    sub_10007C0CC(v246);
  }

  else
  {
    v148 = v192;
    (*(v143 + 32))(v192, v144, v146);
    sub_10007DABC(v148);
    (*(v143 + 8))(v148, v146);
    v147 = v246;
  }

  v149 = v227;
  if (qword_1001721E0 != -1)
  {
    swift_once();
  }

  v150 = type metadata accessor for Logger();
  sub_100007D20(v150, qword_100175480);
  v151 = v245;
  v221(v149, v147, v245);

  v152 = Logger.logObject.getter();
  v153 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    v253[0] = swift_slowAlloc();
    *v154 = 136315650;
    v156 = *(v85 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v155 = *(v85 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

    v157 = sub_10003E81C(v156, v155, v253);
    v155, v158, v159, v160, v161, v162, v163, v164;
    *(v154 + 4) = v157;
    *(v154 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v165 = v254;
    [*&v254 fractionCompleted];
    v167 = v166;

    *(v154 + 14) = v167;
    *(v154 + 22) = 2080;
    sub_100087D7C(&qword_100173D78, &type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);
    v168 = dispatch thunk of CustomStringConvertible.description.getter();
    v170 = v169;
    (v244)(v149, v151);
    v171 = sub_10003E81C(v168, v170, v253);
    v170, v172, v173, v174, v175, v176, v177, v178;
    *(v154 + 24) = v171;
    _os_log_impl(&_mh_execute_header, v152, v153, "Transfer session created for transfer %s with completed: %f, transferState: %s", v154, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (v244)(v149, v151);
  }

  v179 = v237;
  v180 = v228;
  v181 = sub_10007B6A8(0, 0);
  if (v180)
  {

    v182 = v250;
    v183 = v234;
    v234(v241, v250);
    v184 = v239;
    v185 = v235;
    v235(v242, v239);
    (*(v179 + 8))(v229, v243);
    v183(v248, v182);
    v185(v238, v184);
    sub_1000159AC(v247, &qword_100172FD0, &qword_10011A210);
    (v244)(v246, v245);
  }

  else
  {
    v236 = v181;

    v186 = v250;
    v187 = v234;
    v234(v241, v250);
    v188 = v239;
    v189 = v235;
    v235(v242, v239);
    (*(v179 + 8))(v229, v243);
    v187(v248, v186);
    v189(v238, v188);
    sub_1000159AC(v247, &qword_100172FD0, &qword_10011A210);
    (v244)(v246, v245);
    *(v85 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = *&v236;
  }

  return v85;
}

uint64_t sub_100087500(void *a1)
{
  v2 = sub_1000077C8(&qword_100175CA0, &qword_10011D380);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_1000078DC(a1, a1[3]);
  sub_1000876A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v8[15] = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100007920(a1);
  return v6;
}

unint64_t sub_1000876A8()
{
  result = qword_100175CA8;
  if (!qword_100175CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175CA8);
  }

  return result;
}

unint64_t sub_1000876FC()
{
  result = qword_100175CC0;
  if (!qword_100175CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175CC0);
  }

  return result;
}

uint64_t sub_100087AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100087B20()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000463C4;

  return sub_100080CBC(v0);
}

uint64_t sub_100087BB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100087BE8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100087C20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BCF0;

  return sub_100080154(a1, v4, v5, v6);
}

uint64_t sub_100087CD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100087D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100087D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100087DDC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t getEnumTagSinglePayload for AirDropActivityAttributes.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AirDropActivityAttributes.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000880AC()
{
  result = qword_100175D68;
  if (!qword_100175D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175D68);
  }

  return result;
}

unint64_t sub_100088104()
{
  result = qword_100175D70;
  if (!qword_100175D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175D70);
  }

  return result;
}

unint64_t sub_10008815C()
{
  result = qword_100175D78;
  if (!qword_100175D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175D78);
  }

  return result;
}

unint64_t sub_1000881B4()
{
  result = qword_100175D80;
  if (!qword_100175D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175D80);
  }

  return result;
}

unint64_t sub_10008820C()
{
  result = qword_100175D88;
  if (!qword_100175D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175D88);
  }

  return result;
}

unint64_t sub_100088264()
{
  result = qword_100175D90;
  if (!qword_100175D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175D90);
  }

  return result;
}

uint64_t sub_1000882CC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v19[0] = *(v7 - 1);
      v19[1] = v8;

      v9 = a1(v19);
      v8, v10, v11, v12, v13, v14, v15, v16;
      if (v3)
      {
        break;
      }

      v17 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v17) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_100088378(uint64_t a1)
{
  v2 = 0;
  v21 = Set.init(minimumCapacity:)();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(a1 + 48) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];

    sub_10008D014(v19, v10, v11);
    v20, v12, v13, v14, v15, v16, v17, v18;
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100088498(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  sub_100090E18(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v3 + 32;
  v23[3] = v3 + 16;
  v23[1] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v11, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_10008D42C(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000886F8(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for URL();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = sub_1000077C8(&qword_100172EE0, &qword_10011B220);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for UTType();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_100088860, 0, 0);
}

unint64_t sub_100088860()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = *(v2 + 88);
  v0[32] = v3;
  v0[33] = (v2 + 88) & 0xFFFFFFFFFFFFLL | 0xBCE5000000000000;
  v4 = v3(v1);
  if (v4)
  {
LABEL_2:

    v5 = v0[1];

    return v5(v4);
  }

  result = (*(v0[21] + 64))(v0[20]);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_17:
    result, v7, v8, v9, v10, v11, v12, v13;
    v4 = 0;
    goto LABEL_2;
  }

  v35 = result;
  v36 = _CocoaArrayWrapper.endIndex.getter();
  result = v35;
  if (!v36)
  {
    goto LABEL_17;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = result;
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v14 = result;
    v15 = *(result + 32);
  }

  v23 = v15;
  v0[34] = v15;
  v24 = v0[21];
  v25 = v0[20];
  v14, v16, v17, v18, v19, v20, v21, v22;
  v26 = (*(v24 + 72))(v25, v24);
  if (v26)
  {
    v27 = v0[21];
    v28 = v0[20];
    v29 = v26;
    [v26 _populateMetadataForBackwardCompatibility];
    v30 = [v29 image];
    v31 = [v30 platformImage];

    (*(v27 + 96))(v31, v28, v27);
    v4 = (v3)(v28, v27);

    if (v4)
    {

      goto LABEL_2;
    }
  }

  v37 = (*(v0[21] + 80) + **(v0[21] + 80));
  v32 = swift_task_alloc();
  v0[35] = v32;
  *v32 = v0;
  v32[1] = sub_100088B90;
  v33 = v0[21];
  v34 = v0[20];

  return v37(v34, v33);
}