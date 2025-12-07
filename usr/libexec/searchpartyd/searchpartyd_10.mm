uint64_t sub_100128998(uint64_t a1, char a2)
{
  *(v3 + 288) = a2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  v4 = type metadata accessor for UUID();
  *(v3 + 136) = v4;
  *(v3 + 144) = *(v4 - 8);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_100128A68, v2, 0);
}

uint64_t sub_100128A68()
{
  v1 = *(v0 + 128);
  *(v0 + 64) = _swiftEmptyArrayStorage;
  v2 = *(v1 + 112);
  *(v0 + 168) = v2;
  *(v0 + 289) = 0;
  *(v0 + 290) = 0;
  return _swift_task_switch(sub_100128AA8, v2, 0);
}

uint64_t sub_100128AA8()
{

  v1 = swift_task_alloc();
  v0[22] = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  v0[23] = v2;
  *v1 = v0;
  v1[1] = sub_100128B8C;
  v3 = v0[21];

  return unsafeBlocking<A>(context:_:)(v0 + 9, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100128B8C()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_100128CA4, v1, 0);
}

uint64_t sub_100128CC8()
{
  v1 = *(v0 + 290);
  v2 = getuid();
  sub_1000294F0(v2);
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_100128D94;
  v4 = *(v0 + 160);
  v5 = *(v0 + 120);

  return sub_100685140(v4, v5, v1);
}

uint64_t sub_100128D94(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 208) = a1;
  *(v6 + 216) = a2;

  if (v3)
  {
    v7 = *(v6 + 160);
    v8 = *(v6 + 136);
    v9 = *(v6 + 144);

    v10 = *(v9 + 8);
    *(v6 + 232) = v10;
    v10(v7, v8);
    v11 = sub_1001292E4;
    v12 = 0;
  }

  else
  {
    v13 = *(v6 + 160);
    v14 = *(v6 + 136);
    v15 = *(v6 + 144);
    v16 = *(v6 + 128);
    *(v6 + 291) = a3;
    v17 = *(v15 + 8);
    *(v6 + 224) = v17;
    v17(v13, v14);

    v11 = sub_100128F20;
    v12 = v16;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_100128F20()
{
  v1 = 0xEA00000000007972;
  if (*(v0 + 291))
  {
    *(v0 + 16) = 0xD000000000000019;
    v2 = *(v0 + 224);
    v3 = *(v0 + 290);
    *(v0 + 24) = 0x800000010134B870;
    if (v3)
    {
      v4 = 0x61646E6F6365732ELL;
    }

    else
    {
      v4 = 0x7972616D6972702ELL;
    }

    if (!v3)
    {
      v1 = 0xE800000000000000;
    }

    v5 = v1;
    String.append(_:)(*&v4);

    v6 = objc_allocWithZone(SPDataIntegrityCheck);
    v7 = String._bridgeToObjectiveC()();

    [v6 initWithValue:v7 severity:1];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v8 = *(v0 + 208);
    v9 = *(v0 + 216);
    v10 = *(v0 + 290);
    *(v0 + 48) = 0;
    *(v0 + 56) = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    *(v0 + 32) = 0x656E774F7261656ELL;
    *(v0 + 40) = 0xE900000000000072;
    if (v10)
    {
      v11 = 0x61646E6F6365732ELL;
    }

    else
    {
      v11 = 0x7972616D6972702ELL;
    }

    if (!v10)
    {
      v1 = 0xE800000000000000;
    }

    v12 = v1;
    String.append(_:)(*&v11);

    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    *(v0 + 104) = v8;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 3026478;
    v15._object = 0xE300000000000000;
    String.append(_:)(v15);
    *(v0 + 112) = v9;
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17 = objc_allocWithZone(SPDataIntegrityCheck);
    v18 = String._bridgeToObjectiveC()();

    [v17 initWithValue:v18 severity:0];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = *(v0 + 224);
  }

  *(v0 + 240) = v2;
  if (*(v0 + 289) != 1)
  {
    *(v0 + 289) = 1;
    v19 = *(v0 + 168);
    *(v0 + 290) = 1;
    v20 = sub_100128AA8;
    goto LABEL_22;
  }

  if (*(v0 + 288) == 2)
  {
    v19 = *(v0 + 168);
    v20 = sub_100129568;
LABEL_22:

    return _swift_task_switch(v20, v19, 0);
  }

  v21 = *(v0 + 64);

  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_1001292E4()
{
  v1 = *(v0 + 128);

  return _swift_task_switch(sub_100129350, v1, 0);
}

uint64_t sub_100129350()
{
  *(v0 + 16) = 0xD000000000000019;
  v1 = *(v0 + 232);
  v2 = *(v0 + 290);
  *(v0 + 24) = 0x800000010134B870;
  if (v2)
  {
    v3 = 0x61646E6F6365732ELL;
  }

  else
  {
    v3 = 0x7972616D6972702ELL;
  }

  if (v2)
  {
    v4 = 0xEA00000000007972;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6 = objc_allocWithZone(SPDataIntegrityCheck);
  v7 = String._bridgeToObjectiveC()();

  [v6 initWithValue:v7 severity:1];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  *(v0 + 240) = v1;
  if (*(v0 + 289) != 1)
  {
    *(v0 + 289) = 1;
    v8 = *(v0 + 168);
    *(v0 + 290) = 1;
    v9 = sub_100128AA8;
    goto LABEL_13;
  }

  if (*(v0 + 288) == 2)
  {
    v8 = *(v0 + 168);
    v9 = sub_100129568;
LABEL_13:

    return _swift_task_switch(v9, v8, 0);
  }

  v10 = *(v0 + 64);

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_100129568()
{

  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_100129640;
  v2 = v0[23];
  v3 = v0[21];

  return unsafeBlocking<A>(context:_:)(v0 + 10, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100129640()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_100129758, v1, 0);
}

uint64_t sub_10012977C()
{
  v1 = getuid();
  sub_1000294F0(v1);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_100129838;
  v3 = v0[19];
  v4 = v0[15];

  return sub_100687010(v3, v4);
}

uint64_t sub_100129838(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 272) = a1;
  *(v6 + 280) = a2;

  if (v3)
  {
    v7 = *(v6 + 240);
    v8 = *(v6 + 152);
    v9 = *(v6 + 136);

    v7(v8, v9);
    v10 = sub_100129C00;
    v11 = 0;
  }

  else
  {
    v12 = *(v6 + 240);
    v13 = *(v6 + 152);
    v15 = *(v6 + 128);
    v14 = *(v6 + 136);
    *(v6 + 292) = a3;
    v12(v13, v14);

    v10 = sub_1001299C0;
    v11 = v15;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_1001299C0()
{
  if (*(v0 + 292))
  {
    v1 = objc_allocWithZone(SPDataIntegrityCheck);
    v2 = String._bridgeToObjectiveC()();
    [v1 initWithValue:v2 severity:1];
  }

  else
  {
    v3 = *(v0 + 272);
    v4 = *(v0 + 280);
    _StringGuts.grow(_:)(22);

    *(v0 + 88) = v3;
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 3026478;
    v6._object = 0xE300000000000000;
    String.append(_:)(v6);
    *(v0 + 96) = v4;
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8 = objc_allocWithZone(SPDataIntegrityCheck);
    v9 = String._bridgeToObjectiveC()();

    [v8 initWithValue:v9 severity:0];
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v10 = *(v0 + 64);

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_100129C00()
{
  v1 = *(v0 + 128);

  return _swift_task_switch(sub_100129C6C, v1, 0);
}

uint64_t sub_100129C6C()
{
  v1 = objc_allocWithZone(SPDataIntegrityCheck);
  v2 = String._bridgeToObjectiveC()();
  [v1 initWithValue:v2 severity:1];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4(v3);
}

Swift::Int sub_100129D84(uint64_t *a1)
{
  v2 = *(type metadata accessor for BeaconObservation(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32020(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100129E54(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100129E54(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for BeaconObservation(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for BeaconObservation(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10012A1E4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100129F80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100129F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BeaconObservation(0);
  v9 = __chkstk_darwin(v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_10012B2B8(v23, v17, type metadata accessor for BeaconObservation);
      sub_10012B2B8(v20, v13, type metadata accessor for BeaconObservation);
      v24 = static Date.< infix(_:_:)();
      sub_10012B448(v13, type metadata accessor for BeaconObservation);
      result = sub_10012B448(v17, type metadata accessor for BeaconObservation);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_10012B250(v23, v35, type metadata accessor for BeaconObservation);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10012B250(v25, v20, type metadata accessor for BeaconObservation);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10012A1E4(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for BeaconObservation(0);
  v112 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v115 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v116 = &v100 - v15;
  result = __chkstk_darwin(v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_100B31E68(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_10012AB48(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_100B31E68(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_100B31DDC(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_10012B2B8(v110 + v24 * v23, v18, type metadata accessor for BeaconObservation);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_10012B2B8(v26, v116, type metadata accessor for BeaconObservation);
      LODWORD(v111) = static Date.< infix(_:_:)();
      sub_10012B448(v28, type metadata accessor for BeaconObservation);
      result = sub_10012B448(v18, type metadata accessor for BeaconObservation);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_10012B2B8(v30, v18, type metadata accessor for BeaconObservation);
        v31 = v116;
        sub_10012B2B8(v5, v116, type metadata accessor for BeaconObservation);
        v32 = static Date.< infix(_:_:)() & 1;
        sub_10012B448(v31, type metadata accessor for BeaconObservation);
        result = sub_10012B448(v18, type metadata accessor for BeaconObservation);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_10012B250(v39 + v38, v107, type metadata accessor for BeaconObservation);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10012B250(v107, v39 + v33, type metadata accessor for BeaconObservation);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_100A5B430(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_100A5B430((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_10012AB48(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_100B31E68(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_100B31DDC(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_10012B2B8(v5, v18, type metadata accessor for BeaconObservation);
    v93 = v116;
    sub_10012B2B8(v90, v116, type metadata accessor for BeaconObservation);
    a4 = static Date.< infix(_:_:)();
    sub_10012B448(v93, type metadata accessor for BeaconObservation);
    result = sub_10012B448(v18, type metadata accessor for BeaconObservation);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for BeaconObservation;
    v94 = v115;
    sub_10012B250(v5, v115, type metadata accessor for BeaconObservation);
    swift_arrayInitWithTakeFrontToBack();
    sub_10012B250(v94, v90, type metadata accessor for BeaconObservation);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10012AB48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for BeaconObservation(0);
  v8 = __chkstk_darwin(v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_10012B2B8(v30, v43, type metadata accessor for BeaconObservation);
          v32 = v44;
          sub_10012B2B8(v27, v44, type metadata accessor for BeaconObservation);
          v33 = static Date.< infix(_:_:)();
          sub_10012B448(v32, type metadata accessor for BeaconObservation);
          sub_10012B448(v31, type metadata accessor for BeaconObservation);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_10012B2B8(a2, v43, type metadata accessor for BeaconObservation);
        v21 = v44;
        sub_10012B2B8(a4, v44, type metadata accessor for BeaconObservation);
        v22 = static Date.< infix(_:_:)();
        sub_10012B448(v21, type metadata accessor for BeaconObservation);
        sub_10012B448(v20, type metadata accessor for BeaconObservation);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AAB4(&v48, &v47, &v46);
  return 1;
}

void sub_10012B0C8(void *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100120B0C(v4, a1);
}

unint64_t sub_10012B138()
{
  result = qword_1016B7CB0;
  if (!qword_1016B7CB0)
  {
    sub_1000BC580(&qword_1016B0470, &qword_10138EB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7CB0);
  }

  return result;
}

unint64_t sub_10012B19C()
{
  result = qword_101697790;
  if (!qword_101697790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697790);
  }

  return result;
}

uint64_t sub_10012B250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012B2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012B320(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_10012B3C0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_10012B448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10012B4BC@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v70 = a4;
  v71 = a1;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v77 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v11 - 8);
  v76 = &v61 - v12;
  v13 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v13 - 8);
  v75 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v73 = *(v15 - 8);
  v74 = v15;
  __chkstk_darwin(v15);
  v72 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Endianness();
  __chkstk_darwin(v17 - 8);
  v18 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v61 - v22;
  v24 = a2[12];
  if (v24)
  {
    v25 = a2[14];
    if (v25 >> 60 != 15)
    {
      v69 = a2[11];
      v30 = a3;
      v31 = a2[13];
      v66 = v30;
      sub_1000D2A70(v30, &v61 - v22, &qword_101697268, &qword_101394FE0);
      v32 = type metadata accessor for AccessoryProductInfo(0);
      v33 = *(v32 - 8);
      v64 = *(v33 + 48);
      v63 = v33 + 48;
      v34 = v64(v23, 1, v32);
      v68 = v9;
      v67 = v31;
      v65 = v32;
      if (v34 == 1)
      {

        sub_10002E98C(v31, v25);
        sub_10012BEBC(v23);
      }

      else
      {
        v35 = v23[*(v32 + 176)];

        sub_10002E98C(v31, v25);
        sub_10012C1C4(v23);
        if (v35 != 2)
        {
          if ((v35 & 1) == 0)
          {
LABEL_23:
            UUID.init()();
            sub_10012BF78(v70, v75);
            (*(v73 + 56))(v76, 1, 1, v74);
            sub_100A82D10(v77);
            v46 = v71[2];
            v83 = v71[3];
            v84[0] = v46;
            v47 = v71[4];
            v48 = v71[1];
            v81 = *v71;
            v82 = v47;
            v80 = v48;
            sub_1000D2A70(v66, v21, &qword_101697268, &qword_101394FE0);
            v49 = v65;
            if (v64(v21, 1, v65) == 1)
            {
              sub_10012BFDC(v84, &v78);
              sub_1000D2A70(&v83, &v78, &qword_1016977A8, &qword_1013D6820);
              sub_1000D2A70(&v82, &v78, &qword_1016977A8, &qword_1013D6820);
              sub_10012C038(&v81, &v78);
              sub_10012C094(&v80, &v78);
              sub_10012BEBC(v21);
              v71 = 0;
              v50 = 0xE000000000000000;
            }

            else
            {
              v51 = &v21[*(v49 + 52)];
              v50 = v51[1];
              v71 = *v51;
              sub_10012BFDC(v84, &v78);
              sub_1000D2A70(&v83, &v78, &qword_1016977A8, &qword_1013D6820);
              sub_1000D2A70(&v82, &v78, &qword_1016977A8, &qword_1013D6820);
              sub_10012C038(&v81, &v78);
              sub_10012C094(&v80, &v78);

              sub_10012C1C4(v21);
            }

            v52 = v67;
            v53 = sub_100313A28(v67, v25);
            sub_100313B54(v52, v25);
            static Endianness.current.getter();
            sub_10012BF24();
            FixedWidthInteger.init(data:ofEndianness:)();
            sub_100006654(v52, v25);
            if (v79)
            {
              v54 = 0;
            }

            else
            {
              v54 = v78;
            }

            *a5 = xmmword_10138C660;
            v55 = type metadata accessor for OwnedBeaconRecord(0);
            (*(v73 + 32))(&a5[v55[5]], v72, v74);
            sub_10012C0F0(v75, &a5[v55[6]]);
            sub_10012C154(v76, &a5[v55[7]]);
            (*(v68 + 32))(&a5[v55[8]], v77, v8);
            v56 = v83;
            *&a5[v55[9]] = v84[0];
            *&a5[v55[10]] = v56;
            v57 = v81;
            *&a5[v55[11]] = v82;
            *&a5[v55[12]] = v57;
            *&a5[v55[13]] = v80;
            v58 = &a5[v55[14]];
            *v58 = v71;
            *(v58 + 1) = v50;
            v59 = &a5[v55[15]];
            *v59 = v69;
            *(v59 + 1) = v24;
            *&a5[v55[16]] = v53;
            *&a5[v55[17]] = v54;
            a5[v55[18]] = 3;
            a5[v55[19]] = 0;
            a5[v55[20]] = 0;
            return (*(*(v55 - 1) + 56))(a5, 0, 1, v55);
          }

LABEL_17:
          if (qword_101694BE8 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_1000076D4(v37, qword_10177BA08);

          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v62 = v8;
            v42 = v41;
            *&v84[0] = v41;
            *v40 = 136315138;
            v43 = v69;
            *(v40 + 4) = sub_1000136BC(v69, v24, v84);
            _os_log_impl(&_mh_execute_header, v38, v39, "Reversing version string for AirTag: %s", v40, 0xCu);
            sub_100007BAC(v42);
            v8 = v62;
          }

          else
          {

            v43 = v69;
          }

          *&v84[0] = v43;
          *(&v84[0] + 1) = v24;
          *&v83 = 46;
          *(&v83 + 1) = 0xE100000000000000;
          sub_1000DF96C();
          v44 = StringProtocol.components<A>(separatedBy:)();

          *&v84[0] = v44;
          sub_1000BC4D4(&qword_1016977B0, &qword_10138C670);
          sub_10012C220();
          v69 = BidirectionalCollection<>.joined(separator:)();
          v24 = v45;

          goto LABEL_23;
        }
      }

      sub_100313B54(v31, v25);
      static Endianness.current.getter();
      sub_10012BF24();
      FixedWidthInteger.init(data:ofEndianness:)();
      if (BYTE4(v84[0]))
      {
        v36 = 0;
      }

      else
      {
        v36 = SLODWORD(v84[0]);
      }

      if ((sub_100B8A580(v36) & 0xFE) == 2)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }
  }

  v26 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    v60 = v26;
    swift_once();
    v26 = v60;
  }

  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, qword_10177C410, "generateOwnedBeaconRecord: could not get basic device info from the session.", 76, 2, _swiftEmptyArrayStorage);
  v27 = type metadata accessor for OwnedBeaconRecord(0);
  v28 = *(*(v27 - 8) + 56);

  return v28(a5, 1, 1, v27);
}

uint64_t sub_10012BEBC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10012BF24()
{
  result = qword_1016977A0;
  if (!qword_1016977A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016977A0);
  }

  return result;
}

uint64_t sub_10012BF78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StableIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012C0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StableIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012C154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012C1C4(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryProductInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10012C220()
{
  result = qword_1016977B8;
  if (!qword_1016977B8)
  {
    sub_1000BC580(&qword_1016977B0, &qword_10138C670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016977B8);
  }

  return result;
}

uint64_t sub_10012C284()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A4D0);
  v1 = sub_1000076D4(v0, qword_10177A4D0);
  if (qword_101694458 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A4E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10012C34C()
{
  v1[3] = v0;
  v2 = type metadata accessor for UUID();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for StableIdentifier(0);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for OwnedBeaconRecord(0);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[15] = v4;
  *v4 = v1;
  v4[1] = sub_10012C4EC;

  return daemon.getter();
}

uint64_t sub_10012C4EC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 128) = a1;

  v3 = swift_task_alloc();
  *(v2 + 136) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100132F98(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100132F98(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10012C6D0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10012C6D0(uint64_t a1)
{
  v3 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_10012D258, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[20] = v5;
    *v5 = v3;
    v5[1] = sub_10012C844;

    return sub_10012D3D0();
  }
}

uint64_t sub_10012C844(uint64_t a1)
{
  v4 = *v2;
  v4[21] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_10012D314;
  }

  else
  {
    v4[22] = a1;
    v6 = sub_10012C980;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10012C980()
{
  v1 = sub_10000954C(v0[22]);
  v0[23] = v1;

  if (qword_101694450 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A4D0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "FMIP server has %ld self-beaconing devices registered.", v5, 0xCu);
  }

  else
  {
  }

  v6 = v0[18];

  return _swift_task_switch(sub_10012CAE4, v6, 0);
}

uint64_t sub_10012CAE4()
{

  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_10012CBD0;
  v3 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v3, v2);
}

uint64_t sub_10012CBD0()
{
  v1 = *(*v0 + 144);

  return _swift_task_switch(sub_10012CCE8, v1, 0);
}

uint64_t sub_10012CCE8()
{
  v1 = v0[3];
  v0[25] = v0[2];
  return _swift_task_switch(sub_10012CD08, v1, 0);
}

void sub_10012CD08()
{
  v1 = v0[25];
  v40 = *(v1 + 16);
  if (v40)
  {
    v2 = 0;
    v3 = v0[10];
    v39 = v0[9];
    v4 = _swiftEmptyArrayStorage;
    while (v2 < *(v1 + 16))
    {
      v5 = v0[14];
      v6 = v0[8];
      v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v8 = *(v3 + 72);
      sub_100132E88(v0[25] + v7 + v8 * v2, v5, type metadata accessor for OwnedBeaconRecord);
      sub_100132E88(v5 + *(v39 + 24), v6, type metadata accessor for StableIdentifier);
      LODWORD(v5) = swift_getEnumCaseMultiPayload();
      sub_100132DC4(v6, type metadata accessor for StableIdentifier);
      v9 = v0[14];
      if (v5)
      {
        sub_100132DC4(v9, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        sub_100132D2C(v9, v0[12]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112434C(0, v4[2] + 1, 1);
        }

        v11 = v4[2];
        v10 = v4[3];
        v12 = v4;
        if (v11 >= v10 >> 1)
        {
          sub_10112434C((v10 > 1), v11 + 1, 1);
          v12 = v4;
        }

        v13 = v0[12];
        v12[2] = v11 + 1;
        v4 = v12;
        sub_100132D2C(v13, v12 + v7 + v11 * v8);
      }

      if (v40 == ++v2)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_14:

  v34 = v4[2];
  if (v34)
  {
    v14 = 0;
    v35 = v4;
    v33 = v0[10];
    v15 = v4;
    v31 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v32 = v4 + v31;
    v41 = v0[23];
    v38 = v41 + 56;
    v16 = _swiftEmptyArrayStorage;
    v30 = v0[5];
    while (v14 < v15[2])
    {
      v36 = *(v33 + 72);
      v37 = v16;
      sub_100132E88(&v32[v36 * v14], v0[13], type metadata accessor for OwnedBeaconRecord);
      if (*(v41 + 16) && (sub_100132F98(&qword_1016967B0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v17 = dispatch thunk of Hashable._rawHashValue(seed:)(), v18 = -1 << *(v41 + 32), v19 = v17 & ~v18, ((*(v38 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        v21 = *(v30 + 72);
        v22 = *(v30 + 16);
        while (1)
        {
          v23 = v0[6];
          v24 = v0[4];
          v22(v23, *(v41 + 48) + v19 * v21, v24);
          sub_100132F98(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v30 + 8))(v23, v24);
          if (v25)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v38 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        sub_100132DC4(v0[13], type metadata accessor for OwnedBeaconRecord);
        v16 = v37;
      }

      else
      {
LABEL_24:
        sub_100132D2C(v0[13], v0[11]);
        v16 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100A5C050(0, v37[2] + 1, 1, v37);
        }

        v27 = v16[2];
        v26 = v16[3];
        if (v27 >= v26 >> 1)
        {
          v16 = sub_100A5C050((v26 > 1), v27 + 1, 1, v16);
        }

        v28 = v0[11];
        v16[2] = v27 + 1;
        sub_100132D2C(v28, v16 + v31 + v27 * v36);
      }

      ++v14;
      v15 = v35;
      if (v14 == v34)
      {

        goto LABEL_31;
      }
    }

LABEL_35:
    __break(1u);
    return;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_31:

  v29 = v0[1];

  v29(v16);
}

uint64_t sub_10012D258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012D314()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012D3D0()
{
  v1[34] = v0;
  v2 = type metadata accessor for AnyAnalyticsEvent();
  v1[35] = v2;
  v1[36] = *(v2 - 8);
  v1[37] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v1[38] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[39] = v3;
  v1[40] = *(v3 - 8);
  v1[41] = swift_task_alloc();
  v4 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v1[42] = v4;
  v1[43] = *(v4 - 8);
  v1[44] = swift_task_alloc();
  v5 = type metadata accessor for Response();
  v1[45] = v5;
  v1[46] = *(v5 - 8);
  v1[47] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock.Instant();
  v1[48] = v6;
  v1[49] = *(v6 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = type metadata accessor for FetchDevicesEndpoint(0);
  v1[54] = swift_task_alloc();
  type metadata accessor for SearchpartyAccount(0);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v1[57] = v7;
  v1[58] = *(v7 - 8);
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[61] = v8;
  *v8 = v1;
  v8[1] = sub_10012D750;

  return daemon.getter();
}

uint64_t sub_10012D750(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 496) = a1;

  v3 = swift_task_alloc();
  *(v2 + 504) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for AccountService();
  v6 = sub_100132F98(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100132F98(&qword_101697890, 255, type metadata accessor for AccountService, &unk_10139AEB0);
  *v3 = v9;
  v3[1] = sub_10012D934;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10012D934(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {
    v5 = sub_10012F0C4;
  }

  else
  {

    v5 = sub_10012DA78;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10012DA78()
{
  ContinuousClock.init()();
  v1 = swift_task_alloc();
  *(v0 + 528) = v1;
  *v1 = v0;
  v1[1] = sub_10012DB18;

  return sub_1002FFDE0(v0 + 16);
}

uint64_t sub_10012DB18()
{
  v2 = *v1;
  v2[67] = v0;

  if (v0)
  {
    v3 = v2[34];

    return _swift_task_switch(sub_10012F1DC, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[68] = v4;
    *v4 = v2;
    v4[1] = sub_10012DC8C;
    v5 = v2[56];

    return sub_100300A9C(v5);
  }
}

uint64_t sub_10012DC8C()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    sub_1001322A0(v2 + 16);
    v4 = sub_10012F314;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 272);
    v4 = sub_10012DDB4;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10012DDB4(uint64_t a1)
{
  v2 = v1[69];
  v3 = v1[55];
  v4 = v1[56];
  URLComponents.init()();
  URLComponents.scheme.setter();

  URLComponents.host.setter();
  sub_1001322A0((v1 + 2));
  URLComponents.path.setter();
  sub_100132E88(v4, v3, type metadata accessor for SearchpartyAccount);
  v1[70] = v3[2];
  v1[71] = v3[3];
  v1[72] = v3[4];
  v1[73] = v3[5];

  sub_100132DC4(v3, type metadata accessor for SearchpartyAccount);
  v1[74] = sub_100F4DED0();
  v1[75] = v5;
  if (v2)
  {
    v6 = v1[60];
    v8 = v1[57];
    v7 = v1[58];
    v9 = v1[56];
    v10 = v1[54];

    sub_100132DC4(v10, type metadata accessor for FetchDevicesEndpoint);
    sub_100132DC4(v9, type metadata accessor for SearchpartyAccount);
    (*(v7 + 8))(v6, v8);

    v11 = v1[1];

    return v11();
  }

  else
  {
    type metadata accessor for ServerInteractionController();
    v1[76] = ServerInteractionController.__allocating_init(bundleIdentifier:)();
    sub_1000BC4D4(&qword_1016978D0, &qword_10138C798);
    v1[77] = AnalyticsEvent.__allocating_init(name:)();
    ContinuousClock.now.getter();
    sub_100132E24();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v1[78] = v14;
    v1[79] = v13;

    return _swift_task_switch(sub_10012E0F0, v14, v13);
  }
}

uint64_t sub_10012E0F0()
{
  v1 = *(v0 + 272);
  dispatch thunk of AnalyticsEvent.startTiming()();

  return _swift_task_switch(sub_10012E15C, v1, 0);
}

uint64_t sub_10012E15C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v11 = *(v0 + 560);
  v5 = *(v0 + 432);
  *(v0 + 120) = *(v0 + 424);
  *(v0 + 128) = sub_100132F98(&qword_1016978E0, 255, type metadata accessor for FetchDevicesEndpoint, "y\t&");
  v6 = sub_1000280DC((v0 + 96));
  sub_100132E88(v5, v6, type metadata accessor for FetchDevicesEndpoint);
  *(v0 + 160) = &type metadata for FetchDevicesRequest;
  *(v0 + 168) = sub_100132EF0();
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;
  *(v0 + 200) = &type metadata for SearchpartyCredential;
  *(v0 + 208) = sub_100132C84();
  v7 = swift_allocObject();
  *(v0 + 176) = v7;
  *(v7 + 16) = v11;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  *(v0 + 216) = 0u;
  sub_10002E98C(v2, v1);
  v12 = (&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:));
  v8 = swift_task_alloc();
  *(v0 + 640) = v8;
  *v8 = v0;
  v8[1] = sub_10012E330;
  v9 = *(v0 + 376);

  return v12(v9, v0 + 96, v0 + 136, v0 + 176, v0 + 216);
}

uint64_t sub_10012E330()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = v2[34];
    sub_10000B3A8((v2 + 27), &qword_1016978B0, &qword_1013A3960);
    v4 = sub_10012F44C;
  }

  else
  {
    v3 = v2[34];
    sub_10000B3A8((v2 + 27), &qword_1016978B0, &qword_1013A3960);
    sub_10000B3A8((v2 + 22), &qword_1016978B8, &qword_1013C35C0);
    sub_100007BAC(v2 + 17);
    sub_100007BAC(v2 + 12);
    v4 = sub_10012E4A4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10012E4A4()
{
  v97 = v0;
  if (qword_101694450 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v1 = v0[59];
    v2 = v0[60];
    v3 = v0[57];
    v4 = v0[58];
    v6 = v0[51];
    v5 = v0[52];
    v7 = v0[48];
    v8 = v0[49];
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177A4D0);
    (*(v8 + 16))(v6, v5, v7);
    (*(v4 + 16))(v1, v2, v3);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[58];
    v13 = v0[59];
    v15 = v0[57];
    v16 = v0[51];
    if (v12)
    {
      v17 = v0[49];
      v18 = v0[50];
      v87 = v0[57];
      v20 = v0[43];
      v19 = v0[44];
      v79 = v0[48];
      v81 = v0[42];
      bufa = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v95 = v93;
      *bufa = 136315138;
      ContinuousClock.now.getter();
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_100132F98(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
      v73 = static Duration.description<A>(_:_:units:)();
      v76 = v11;
      v22 = v21;
      (*(v20 + 8))(v19, v81);
      v23 = *(v17 + 8);
      v23(v18, v79);
      v24 = *(v14 + 8);
      (v24)(v13, v87);
      v23(v16, v79);
      v25 = sub_1000136BC(v73, v22, &v95);

      *(bufa + 4) = v25;
      _os_log_impl(&_mh_execute_header, v10, v76, "fetchDevices duration: %s", bufa, 0xCu);
      sub_100007BAC(v93);
    }

    else
    {
      v26 = v0[48];
      v27 = v0[49];

      v24 = *(v14 + 8);
      (v24)(v13, v15);
      v23 = *(v27 + 8);
      v23(v16, v26);
    }

    v0[83] = v23;
    v0[82] = v24;
    v28 = Response.response.getter();
    v29 = [v28 statusCode];

    v30 = v23;
    if (v29 != 200)
    {
      v68 = v0[74];
      v69 = v0[75];
      v89 = v0[60];
      log = v24;
      bufc = v0[57];
      v78 = v0[54];
      v80 = v0[56];
      v72 = v0[48];
      v75 = v0[52];
      v40 = v0[46];
      v41 = v0[47];
      v66 = v0[45];
      v42 = type metadata accessor for GenericError();
      sub_100132F98(&qword_1016978C0, 255, &type metadata accessor for GenericError, &protocol conformance descriptor for GenericError);
      swift_allocError();
      v44 = v43;
      v95 = 0;
      v96 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v95 = 0xD000000000000013;
      v96 = 0x800000010134BBD0;
      v45 = Response.response.getter();
      v46 = [v45 statusCode];

      v0[32] = v46;
      v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v47);

      v48 = v96;
      *v44 = v95;
      v44[1] = v48;
      (*(*(v42 - 8) + 104))(v44, enum case for GenericError.error(_:), v42);
      swift_willThrow();

      sub_100006654(v68, v69);
      (*(v40 + 8))(v41, v66);
      v30(v75, v72);
      sub_100132DC4(v78, type metadata accessor for FetchDevicesEndpoint);
      sub_100132DC4(v80, type metadata accessor for SearchpartyAccount);
      v38 = bufc;
      v39 = v89;
      goto LABEL_9;
    }

    v88 = v23;
    v31 = v0[81];
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v32 = Response.body.getter();
    v34 = v33;
    sub_100132F44();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v31)
    {
      log = v24;
      v65 = v0[74];
      v67 = v0[75];
      v82 = v0[57];
      bufb = v0[60];
      v77 = v0[56];
      v71 = v0[52];
      v74 = v0[54];
      v70 = v0[48];
      v36 = v0[46];
      v35 = v0[47];
      v37 = v0[45];
      sub_100016590(v32, v34);

      sub_100006654(v65, v67);
      (*(v36 + 8))(v35, v37);
      v88(v71, v70);
      sub_100132DC4(v74, type metadata accessor for FetchDevicesEndpoint);
      sub_100132DC4(v77, type metadata accessor for SearchpartyAccount);
      v38 = v82;
      v39 = bufb;
LABEL_9:
      (log)(v39, v38);

      v49 = v0[1];

      return v49();
    }

    sub_100016590(v32, v34);

    v51 = v0[33];
    v94 = *(v51 + 16);
    if (!v94)
    {
      break;
    }

    v52 = 0;
    v53 = v0[40];
    v54 = v51 + 32;
    buf = v53;
    v90 = (v53 + 32);
    loga = (v53 + 48);
    v55 = _swiftEmptyArrayStorage;
    while (v52 < *(v51 + 16))
    {
      v57 = v0[38];
      v56 = v0[39];

      UUID.init(uuidString:)();

      if ((loga->isa)(v57, 1, v56) == 1)
      {
        sub_10000B3A8(v0[38], &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v58 = *v90;
        (*v90)(v0[41], v0[38], v0[39]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_100A5BFE0(0, *(v55 + 2) + 1, 1, v55);
        }

        v60 = *(v55 + 2);
        v59 = *(v55 + 3);
        if (v60 >= v59 >> 1)
        {
          v55 = sub_100A5BFE0((v59 > 1), v60 + 1, 1, v55);
        }

        v61 = v0[41];
        v62 = v0[39];
        *(v55 + 2) = v60 + 1;
        v58(&v55[((buf[80] + 32) & ~buf[80]) + *(buf + 9) * v60], v61, v62);
      }

      ++v52;
      v54 += 32;
      if (v94 == v52)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v55 = _swiftEmptyArrayStorage;
LABEL_24:
  v0[84] = v55;

  v63 = v0[79];
  v64 = v0[78];

  return _swift_task_switch(sub_10012EE08, v64, v63);
}

uint64_t sub_10012EE08()
{
  v1 = *(v0 + 272);
  dispatch thunk of AnalyticsEvent.stopTiming()();
  dispatch thunk of AnalyticsEvent.anyAnalyticsEvent.getter();

  return _swift_task_switch(sub_10012EE88, v1, 0);
}

uint64_t sub_10012EE88()
{
  v10 = v0[74];
  v11 = v0[75];
  v19 = v0[82];
  v17 = v0[57];
  v18 = v0[60];
  v15 = v0[83];
  v16 = v0[56];
  v13 = v0[52];
  v14 = v0[54];
  v1 = v0[47];
  v12 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[37];
  v6 = v0[35];
  v5 = v0[36];
  static AnalyticsPublisher.publish(event:)();

  sub_100006654(v10, v11);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v15(v13, v12);
  sub_100132DC4(v14, type metadata accessor for FetchDevicesEndpoint);
  sub_100132DC4(v16, type metadata accessor for SearchpartyAccount);
  v19(v18, v17);

  v7 = v0[1];
  v8 = v0[84];

  return v7(v8);
}

uint64_t sub_10012F0C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012F1DC()
{
  v1 = v0[60];
  v2 = v0[57];
  v3 = v0[58];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10012F314()
{
  v1 = v0[60];
  v2 = v0[57];
  v3 = v0[58];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10012F44C()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[58];
  v11 = v0[57];
  v12 = v0[60];
  v10 = v0[56];
  v4 = v0[54];
  v5 = v0[52];
  v6 = v0[48];
  v7 = v0[49];

  sub_100006654(v2, v1);
  (*(v7 + 8))(v5, v6);
  sub_100132DC4(v4, type metadata accessor for FetchDevicesEndpoint);
  sub_100132DC4(v10, type metadata accessor for SearchpartyAccount);
  (*(v3 + 8))(v12, v11);
  sub_10000B3A8((v0 + 22), &qword_1016978B8, &qword_1013C35C0);
  sub_100007BAC(v0 + 17);
  sub_100007BAC(v0 + 12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10012F63C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for StableIdentifier(0);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10012F7AC, v1, 0);
}

uint64_t sub_10012F7AC()
{
  v1 = v0[3];
  v39 = *(v1 + 16);
  if (v39)
  {
    v3 = v0[11];
    v2 = v0[12];
    v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v5 = v1 + v4;
    v6 = *(v2 + 72);
    v7 = *(v1 + 16);
    do
    {
      v8 = v0[15];
      v9 = v0[10];
      sub_100132E88(v5, v8, type metadata accessor for OwnedBeaconRecord);
      sub_100132E88(v8 + *(v3 + 24), v9, type metadata accessor for StableIdentifier);
      LODWORD(v8) = swift_getEnumCaseMultiPayload();
      sub_100132DC4(v9, type metadata accessor for StableIdentifier);
      v10 = v0[15];
      if (v8)
      {
        sub_100132D2C(v10, v0[14]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112434C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_10112434C((v11 > 1), v12 + 1, 1);
        }

        v13 = v0[14];
        _swiftEmptyArrayStorage[2] = v12 + 1;
        sub_100132D2C(v13, _swiftEmptyArrayStorage + v4 + v12 * v6);
      }

      else
      {
        sub_100132DC4(v10, type metadata accessor for OwnedBeaconRecord);
      }

      v5 += v6;
      --v7;
    }

    while (v7);
  }

  v14 = _swiftEmptyArrayStorage[2];
  if (v14)
  {
    v15 = v0[12];
    v42 = v0[11];
    v16 = v0[6];
    sub_101123D4C(0, v14, 0);
    v17 = _swiftEmptyArrayStorage + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v40 = *(v15 + 72);
    do
    {
      v18 = v0[13];
      v19 = v0[8];
      v20 = v0[5];
      sub_100132E88(v17, v18, type metadata accessor for OwnedBeaconRecord);
      (*(v16 + 16))(v19, v18 + *(v42 + 20), v20);
      sub_100132DC4(v18, type metadata accessor for OwnedBeaconRecord);
      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      if (v22 >= v21 >> 1)
      {
        sub_101123D4C((v21 > 1), v22 + 1, 1);
      }

      v23 = v0[8];
      v24 = v0[5];
      _swiftEmptyArrayStorage[2] = v22 + 1;
      (*(v16 + 32))(_swiftEmptyArrayStorage + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v22, v23, v24);
      v17 += v40;
      --v14;
    }

    while (v14);
  }

  v0[16] = _swiftEmptyArrayStorage;
  if (v39)
  {
    v25 = v0[12];
    v43 = v0[11];
    v26 = v0[6];
    v27 = v0[3];
    v28 = v39;
    sub_101123D4C(0, v39, 0);
    v29 = v27 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v41 = *(v25 + 72);
    do
    {
      v30 = v0[13];
      v31 = v0[7];
      v32 = v0[5];
      sub_100132E88(v29, v30, type metadata accessor for OwnedBeaconRecord);
      (*(v26 + 16))(v31, v30 + *(v43 + 20), v32);
      sub_100132DC4(v30, type metadata accessor for OwnedBeaconRecord);
      v34 = _swiftEmptyArrayStorage[2];
      v33 = _swiftEmptyArrayStorage[3];
      if (v34 >= v33 >> 1)
      {
        sub_101123D4C((v33 > 1), v34 + 1, 1);
      }

      v35 = v0[7];
      v36 = v0[5];
      _swiftEmptyArrayStorage[2] = v34 + 1;
      (*(v26 + 32))(_swiftEmptyArrayStorage + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v34, v35, v36);
      v29 += v41;
      --v28;
    }

    while (v28);
  }

  v0[17] = sub_10000954C(_swiftEmptyArrayStorage);

  v37 = swift_task_alloc();
  v0[18] = v37;
  *v37 = v0;
  v37[1] = sub_10012FC74;

  return sub_10012D3D0();
}

uint64_t sub_10012FC74(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);

    v6 = sub_10012FEDC;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 32);
    *(v4 + 160) = a1;
    v6 = sub_10012FDBC;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10012FDBC()
{
  v1 = v0[16];
  v2 = sub_1001322F4(v0[20], v0[17]);

  v0[2] = v2;
  sub_10062536C(v1);

  v4 = sub_1001327E8(v3, v0 + 2);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10012FEDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012FF84(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v4 = type metadata accessor for Response();
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock.Instant();
  v2[41] = v5;
  v2[42] = *(v5 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = type metadata accessor for MetricsEndpoint(0);
  v2[47] = swift_task_alloc();
  type metadata accessor for SearchpartyAccount(0);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v2[50] = v6;
  v2[51] = *(v6 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[54] = v7;
  *v7 = v2;
  v7[1] = sub_100130214;

  return daemon.getter();
}

uint64_t sub_100130214(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 440) = a1;

  v3 = swift_task_alloc();
  *(v2 + 448) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for AccountService();
  v6 = sub_100132F98(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100132F98(&qword_101697890, 255, type metadata accessor for AccountService, &unk_10139AEB0);
  *v3 = v9;
  v3[1] = sub_1001303F8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001303F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  *(v3 + 456) = a1;
  *(v3 + 464) = v1;

  if (v1)
  {
    v5 = sub_10013164C;
  }

  else
  {

    v5 = sub_100130538;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100130538()
{
  ContinuousClock.init()();
  v1 = swift_task_alloc();
  *(v0 + 472) = v1;
  *v1 = v0;
  v1[1] = sub_1001305D8;

  return sub_1002FFDE0(v0 + 16);
}

uint64_t sub_1001305D8()
{
  v2 = *v1;
  v2[60] = v0;

  if (v0)
  {
    v3 = v2[34];

    return _swift_task_switch(sub_100131740, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[61] = v4;
    *v4 = v2;
    v4[1] = sub_10013074C;
    v5 = v2[49];

    return sub_100300A9C(v5);
  }
}

uint64_t sub_10013074C()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    sub_1001322A0(v2 + 16);
    v4 = sub_100131854;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 272);
    v4 = sub_100130874;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100130874(uint64_t a1)
{
  v2 = *(v1 + 496);
  v4 = *(v1 + 384);
  v3 = *(v1 + 392);
  v5 = *(v1 + 264);
  URLComponents.init()();
  URLComponents.scheme.setter();

  URLComponents.host.setter();
  sub_1001322A0(v1 + 16);
  URLComponents.path.setter();
  sub_100132E88(v3, v4, type metadata accessor for SearchpartyAccount);
  v6 = v4[2];
  v7 = v4[3];
  v9 = v4[4];
  v8 = v4[5];

  sub_100132DC4(v4, type metadata accessor for SearchpartyAccount);
  v10 = sub_100A1C028(v5);
  *(v1 + 504) = v10;
  *(v1 + 512) = v11;
  if (v2)
  {
    v12 = *(v1 + 424);
    v13 = *(v1 + 400);
    v14 = *(v1 + 408);
    v15 = *(v1 + 392);
    v16 = *(v1 + 376);

    sub_100132DC4(v16, type metadata accessor for MetricsEndpoint);
    sub_100132DC4(v15, type metadata accessor for SearchpartyAccount);
    (*(v14 + 8))(v12, v13);

    v17 = *(v1 + 8);

    return v17();
  }

  else
  {
    v19 = *(v1 + 368);
    v20 = *(v1 + 376);
    v21 = v10;
    v22 = v11;
    type metadata accessor for ServerInteractionController();
    *(v1 + 520) = ServerInteractionController.__allocating_init(bundleIdentifier:)();
    ContinuousClock.now.getter();
    *(v1 + 120) = v19;
    *(v1 + 128) = sub_100132F98(&qword_101697898, 255, type metadata accessor for MetricsEndpoint, "u@!");
    v23 = sub_1000280DC((v1 + 96));
    sub_100132E88(v20, v23, type metadata accessor for MetricsEndpoint);
    *(v1 + 160) = &type metadata for MetricsRequest;
    *(v1 + 168) = sub_100132C30();
    *(v1 + 136) = v21;
    *(v1 + 144) = v22;
    *(v1 + 200) = &type metadata for SearchpartyCredential;
    *(v1 + 208) = sub_100132C84();
    v24 = swift_allocObject();
    *(v1 + 176) = v24;
    v24[2] = v6;
    v24[3] = v7;
    v24[4] = v9;
    v24[5] = v8;
    *(v1 + 232) = 0u;
    *(v1 + 248) = 0;
    *(v1 + 216) = 0u;
    sub_10002E98C(v21, v22);
    v27 = (&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:));
    v25 = swift_task_alloc();
    *(v1 + 528) = v25;
    *v25 = v1;
    v25[1] = sub_100130C80;
    v26 = *(v1 + 320);

    return v27(v26, v1 + 96, v1 + 136, v1 + 176, v1 + 216);
  }
}

uint64_t sub_100130C80()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = v2[34];
    sub_10000B3A8((v2 + 27), &qword_1016978B0, &qword_1013A3960);
    v4 = sub_100131968;
  }

  else
  {
    v3 = v2[34];
    sub_10000B3A8((v2 + 27), &qword_1016978B0, &qword_1013A3960);
    sub_10000B3A8((v2 + 22), &qword_1016978B8, &qword_1013C35C0);
    sub_100007BAC(v2 + 17);
    sub_100007BAC(v2 + 12);
    v4 = sub_100130DF4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100130DF4()
{
  v84 = v0;
  if (qword_101694450 != -1)
  {
    swift_once();
  }

  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[41];
  v8 = v0[42];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177A4D0);
  (*(v8 + 16))(v6, v5, v7);
  (*(v4 + 16))(v1, v2, v3);
  v10 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v10, v79);
  v13 = v0[51];
  v12 = v0[52];
  v14 = v0[50];
  v15 = v0[44];
  if (v11)
  {
    v16 = v0[42];
    v17 = v0[43];
    v75 = v10;
    v18 = v0[41];
    v80 = v0[50];
    v20 = v0[36];
    v19 = v0[37];
    v70 = v0[35];
    v72 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v82 = v77;
    *v72 = 136315138;
    ContinuousClock.now.getter();
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100132F98(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    v67 = static Duration.description<A>(_:_:units:)();
    v22 = v21;
    (*(v20 + 8))(v19, v70);
    v23 = *(v16 + 8);
    v23(v17, v18);
    v24 = *(v13 + 8);
    v24(v12, v80);
    v81 = v23;
    v23(v15, v18);
    v25 = sub_1000136BC(v67, v22, &v82);

    *(v72 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v75, v79, "metrics duration: %s", v72, 0xCu);
    sub_100007BAC(v77);
  }

  else
  {
    v26 = v0[41];
    v27 = v0[42];

    v24 = *(v13 + 8);
    v24(v12, v14);
    v81 = *(v27 + 8);
    v81(v15, v26);
  }

  v28 = Response.response.getter();
  v29 = [v28 statusCode];

  if (v29 != 200)
  {
    v55 = v0[63];
    v58 = v0[64];
    v78 = v24;
    v74 = v0[50];
    v76 = v0[53];
    v69 = v0[49];
    v65 = v0[45];
    v66 = v0[47];
    v62 = v0[41];
    v38 = v0[39];
    v39 = v0[40];
    v53 = v0[38];
    v40 = type metadata accessor for GenericError();
    sub_100132F98(&qword_1016978C0, 255, &type metadata accessor for GenericError, &protocol conformance descriptor for GenericError);
    swift_allocError();
    v42 = v41;
    v82 = 0;
    v83 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v82 = 0xD000000000000013;
    v83 = 0x800000010134BBD0;
    v43 = Response.response.getter();
    v44 = [v43 statusCode];

    v0[32] = v44;
    v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v45);

    v46 = v83;
    *v42 = v82;
    v42[1] = v46;
    (*(*(v40 - 8) + 104))(v42, enum case for GenericError.error(_:), v40);
    swift_willThrow();

    sub_100006654(v55, v58);
    (*(v38 + 8))(v39, v53);
    v81(v65, v62);
    sub_100132DC4(v66, type metadata accessor for MetricsEndpoint);
    sub_100132DC4(v69, type metadata accessor for SearchpartyAccount);
    v37 = v74;
    goto LABEL_10;
  }

  v30 = v0[67];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v31 = Response.body.getter();
  v33 = v32;
  sub_100132CD8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v71 = v0[63];
  v73 = v0[64];
  v76 = v0[53];
  if (v30)
  {
    v68 = v0[50];
    v61 = v0[47];
    v64 = v0[49];
    v57 = v0[41];
    v60 = v0[45];
    v78 = v24;
    v35 = v0[39];
    v34 = v0[40];
    v36 = v0[38];
    sub_100016590(v31, v33);

    sub_100006654(v71, v73);
    (*(v35 + 8))(v34, v36);
    v81(v60, v57);
    sub_100132DC4(v61, type metadata accessor for MetricsEndpoint);
    sub_100132DC4(v64, type metadata accessor for SearchpartyAccount);
    v37 = v68;
LABEL_10:
    v78(v76, v37);

    v47 = v0[1];
    goto LABEL_11;
  }

  v63 = v0[50];
  v59 = v0[49];
  v54 = v0[45];
  v56 = v0[47];
  v49 = v0[40];
  v52 = v0[41];
  v50 = v0[38];
  v51 = v0[39];
  sub_100016590(v31, v33);

  sub_100006654(v71, v73);
  (*(v51 + 8))(v49, v50);
  v81(v54, v52);
  sub_100132DC4(v56, type metadata accessor for MetricsEndpoint);
  sub_100132DC4(v59, type metadata accessor for SearchpartyAccount);
  v24(v76, v63);

  v47 = v0[1];
LABEL_11:

  return v47();
}

uint64_t sub_10013164C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100131740()
{
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[51];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100131854()
{
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[51];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100131968()
{
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[51];
  v11 = v0[50];
  v12 = v0[53];
  v4 = v0[49];
  v5 = v0[47];
  v6 = v0[45];
  v8 = v0[41];
  v7 = v0[42];

  sub_100006654(v1, v2);
  (*(v7 + 8))(v6, v8);
  sub_100132DC4(v5, type metadata accessor for MetricsEndpoint);
  sub_100132DC4(v4, type metadata accessor for SearchpartyAccount);
  (*(v3 + 8))(v12, v11);
  sub_10000B3A8((v0 + 22), &qword_1016978B8, &qword_1013C35C0);
  sub_100007BAC(v0 + 17);
  sub_100007BAC(v0 + 12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100131B20()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100131B7C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FMIPService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100131C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for FMIPService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100131CE8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FMIPService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100131D90(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FMIPService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_100131E38(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FMIPService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100131EE0()
{
  type metadata accessor for FMIPService();
  sub_100132F98(&unk_1016B1100, v0, type metadata accessor for FMIPService, &unk_10138C708);
  return ActorServiceProtocol.description.getter();
}

Swift::Int sub_100131FD8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10013204C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001320CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100132148(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001321AC@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_100132220()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A4E8);
  sub_1000076D4(v0, qword_10177A4E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001322F4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_100132494(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_100132D90(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_100132494(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = a1;
  v6 = type metadata accessor for UUID();
  v7 = __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v26 - v11;
  v32 = *(a3 + 16);
  if (v32)
  {
    v28 = 0;
    v12 = 0;
    v37 = *(v10 + 16);
    v38 = v10 + 16;
    v31 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v10 + 72);
    v35 = a4 + 56;
    v36 = v13;
    v14 = (v10 + 8);
    v34 = a4;
    while (1)
    {
      v33 = v12;
      v37(v39, v31 + v36 * v12, v6);
      sub_100132F98(&qword_1016967B0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v30 = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22 = ~v18;
      while (1)
      {
        v37(v9, *(v34 + 48) + v19 * v36, v6);
        sub_100132F98(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        v15 = *v14;
        (*v14)(v9, v6);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
        {
          a4 = v34;
          goto LABEL_4;
        }
      }

      result = (v15)(v39, v6);
      v25 = v29[v20];
      v29[v20] = v25 | v21;
      if ((v25 & v21) != 0)
      {
        a4 = v34;
LABEL_5:
        v16 = v33;
        goto LABEL_6;
      }

      v16 = v33;
      a4 = v34;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      ++v28;
LABEL_6:
      v12 = v16 + 1;
      if (v12 == v32)
      {
        goto LABEL_17;
      }
    }

    v15 = *v14;
LABEL_4:
    v15(v39, v6);
    goto LABEL_5;
  }

  v28 = 0;
LABEL_17:

  return sub_10060AF64(v29, v27, v28, a4);
}

void *sub_1001327E8(uint64_t a1, uint64_t *a2)
{
  v37 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for OwnedBeaconRecord(0);
  v6 = __chkstk_darwin(v34);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v36 = *(a1 + 16);
  if (v36)
  {
    v11 = 0;
    v12 = *(v8 + 80);
    v38 = *(v8 + 72);
    v30 = (v12 + 32) & ~v12;
    v35 = a1 + v30;
    v41 = v4 + 16;
    v33 = _swiftEmptyArrayStorage;
    v31 = v4;
    v40 = (v4 + 8);
    v44 = &v29 - v9;
    while (1)
    {
      sub_100132E88(v35 + v38 * v11, v10, type metadata accessor for OwnedBeaconRecord);
      v13 = *v37;
      if (*(*v37 + 16))
      {
        v39 = v11;
        v14 = *(v34 + 20);
        sub_100132F98(&qword_1016967B0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        v43 = v14;
        v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v16 = -1 << *(v13 + 32);
        v17 = v15 & ~v16;
        if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          v19 = *(v31 + 72);
          v20 = *(v31 + 16);
          while (1)
          {
            v21 = v42;
            v20(v42, *(v13 + 48) + v19 * v17, v3);
            sub_100132F98(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v22 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*v40)(v21, v3);
            if (v22)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          v10 = v44;
          sub_100132D2C(v44, v32);
          v23 = v33;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = v23;
          v45 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10112434C(0, v23[2] + 1, 1);
            v25 = v45;
          }

          v11 = v39;
          v27 = v25[2];
          v26 = v25[3];
          if (v27 >= v26 >> 1)
          {
            sub_10112434C((v26 > 1), v27 + 1, 1);
            v25 = v45;
          }

          v25[2] = v27 + 1;
          v33 = v25;
          sub_100132D2C(v32, v25 + v30 + v27 * v38);
          goto LABEL_5;
        }

LABEL_3:

        v10 = v44;
        v11 = v39;
      }

      sub_100132DC4(v10, type metadata accessor for OwnedBeaconRecord);
LABEL_5:
      if (++v11 == v36)
      {
        return v33;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_100132C30()
{
  result = qword_1016978A0;
  if (!qword_1016978A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978A0);
  }

  return result;
}

unint64_t sub_100132C84()
{
  result = qword_1016978A8;
  if (!qword_1016978A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978A8);
  }

  return result;
}

unint64_t sub_100132CD8()
{
  result = qword_1016978C8;
  if (!qword_1016978C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978C8);
  }

  return result;
}

uint64_t sub_100132D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100132D90@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100132494(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100132DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100132E24()
{
  result = qword_1016978D8;
  if (!qword_1016978D8)
  {
    sub_1000BC580(&qword_1016978D0, &qword_10138C798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978D8);
  }

  return result;
}

uint64_t sub_100132E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100132EF0()
{
  result = qword_1016978E8;
  if (!qword_1016978E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978E8);
  }

  return result;
}

unint64_t sub_100132F44()
{
  result = qword_1016978F0;
  if (!qword_1016978F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978F0);
  }

  return result;
}

uint64_t sub_100132F98(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t _s15KnownRecordTypeOwet(unsigned int *a1, int a2)
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

_WORD *_s15KnownRecordTypeOwst(_WORD *result, int a2, int a3)
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

unint64_t sub_1001330D4()
{
  result = qword_1016978F8;
  if (!qword_1016978F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978F8);
  }

  return result;
}

unint64_t sub_10013312C()
{
  result = qword_101697900;
  if (!qword_101697900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697900);
  }

  return result;
}

unint64_t sub_100133184()
{
  result = qword_101697908;
  if (!qword_101697908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697908);
  }

  return result;
}

unint64_t sub_1001331DC()
{
  result = qword_101697910;
  if (!qword_101697910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697910);
  }

  return result;
}

unint64_t sub_100133234()
{
  result = qword_101697918;
  if (!qword_101697918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697918);
  }

  return result;
}

unint64_t sub_10013328C()
{
  result = qword_101697920;
  if (!qword_101697920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697920);
  }

  return result;
}

uint64_t sub_100133310(void *a1)
{
  v2 = v1;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177BA08);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    type metadata accessor for CloudKitCoordinator();

    v9 = String.init<A>(describing:)();
    v11 = sub_1000136BC(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "CloudKitCoordinator was reset: %{public}s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  sub_100B07780(v12, a1, v2);
}

uint64_t sub_1001334C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177BA08);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "CloudKitCoordinator requested flushCache", v11, 2u);
  }

  v12 = *(v2 + 168);
  v13 = *(v12 + 16);
  *v7 = v13;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.notOnQueue(_:), v4);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v13)
  {
    v16 = dispatch_group_create();
    dispatch_group_enter(v16);

    v17 = v16;
    sub_1010101E8(0, a1, v12, v17);

    QueueSynchronizer.conditionalSync<A>(_:)();
    return sub_100A8306C(6u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100133718(void *a1, uint64_t a2, uint64_t a3)
{
  v241 = a2;
  v242 = a3;
  v5 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v5 - 8);
  v223 = &v205 - v6;
  v222 = type metadata accessor for DirectorySequence();
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v236 = &v205 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v8 - 8);
  v218 = &v205 - v9;
  v238 = type metadata accessor for SharedBeaconRecord(0);
  v230 = *(v238 - 8);
  v10 = __chkstk_darwin(v238);
  v237 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v212 = &v205 - v12;
  v220 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v220);
  v229 = &v205 - v13;
  v14 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v14 - 8);
  v217 = &v205 - v15;
  v216 = type metadata accessor for OwnedBeaconRecord(0);
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v211 = &v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for URL();
  v234 = *(v239 - 1);
  v17 = __chkstk_darwin(v239);
  v219 = &v205 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v231 = &v205 - v20;
  __chkstk_darwin(v19);
  v233 = &v205 - v21;
  v22 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v23 = __chkstk_darwin(v22 - 8);
  v209 = &v205 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v210 = &v205 - v26;
  v27 = __chkstk_darwin(v25);
  v213 = &v205 - v28;
  v29 = __chkstk_darwin(v27);
  v226 = (&v205 - v30);
  v31 = __chkstk_darwin(v29);
  v227 = &v205 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v205 - v34;
  __chkstk_darwin(v33);
  v37 = &v205 - v36;
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v214 = &v205 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v224 = &v205 - v43;
  v44 = __chkstk_darwin(v42);
  v235 = &v205 - v45;
  __chkstk_darwin(v44);
  v47 = &v205 - v46;
  v48 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = v39;
  UUID.init(uuidString:)();

  v50 = *(v39 + 48);
  if (v50(v37, 1, v38) != 1)
  {
    v206 = v50;
    v225 = v3;
    v60 = *(v49 + 32);
    v232 = v47;
    v208 = v49 + 32;
    v207 = v60;
    v60(v47, v37, v38);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v240 = v49;
    v61 = type metadata accessor for Logger();
    v62 = sub_1000076D4(v61, qword_10177BA08);
    v63 = a1;
    v64 = v242;

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    v67 = os_log_type_enabled(v65, v66);
    v228 = v38;
    v205 = v63;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v249 = v70;
      *v68 = 138412546;
      *(v68 + 4) = v63;
      *v69 = v63;
      *(v68 + 12) = 2082;
      v71 = v63;
      v58 = v241;
      *(v68 + 14) = sub_1000136BC(v241, v64, &v249);
      _os_log_impl(&_mh_execute_header, v65, v66, "Process CloudKit delete recordID: %@ recordType: %{public}s", v68, 0x16u);
      sub_10000B3A8(v69, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v70);
    }

    else
    {

      v58 = v241;
    }

    v72 = sub_1008DA998(v58, v64);
    v73 = v225;
    if (v72 == 17)
    {

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v249 = v77;
        *v76 = 136446210;
        *(v76 + 4) = sub_1000136BC(v58, v64, &v249);
        _os_log_impl(&_mh_execute_header, v74, v75, "Ignoring record delete for unknown record type: %{public}s", v76, 0xCu);
        sub_100007BAC(v77);
      }

      (*(v240 + 8))(v232, v228);
      goto LABEL_79;
    }

    v78 = v72;
    v79 = [v205 recordName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    v80 = v228;
    if (v206(v35, 1, v228) == 1)
    {
      sub_10000B3A8(v35, &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v81 = v235;
      v207(v235, v35, v80);
      v82 = sub_1008DA998(v58, v64);
      if (v82 != 17)
      {
        v83 = v233;
        sub_1008DAD28(v82, v233);
        sub_100B2B870(v81, v83);
        (*(v234 + 8))(v83, v239);
        v84 = v244;
        if (v244)
        {
          v85 = v81;
          v86 = v245;
          v87 = sub_1000035D0(&v243, v244);
          *(&v247 + 1) = v84;
          v248 = *(v86 + 8);
          v88 = sub_1000280DC(&v246);
          (*(*(v84 - 8) + 16))(v88, v87, v84);
          (*(v240 + 8))(v85, v80);
          sub_100007BAC(&v243);
        }

        else
        {
          (*(v240 + 8))(v81, v80);
          sub_10000B3A8(&v243, &qword_101696920, &unk_10138B200);
          v246 = 0u;
          v247 = 0u;
          v248 = 0;
        }

        v249 = v246;
        v250 = v247;
        v251 = v248;
        goto LABEL_25;
      }

      (*(v240 + 8))(v81, v80);
    }

    v251 = 0;
    v249 = 0u;
    v250 = 0u;
LABEL_25:
    switch(v78)
    {
      case 1:
        v113 = v218;
        v114 = v232;
        sub_100AA5198(v232, v218);
        v115 = v238;
        if ((*(v230 + 48))(v113, 1, v238) == 1)
        {
          sub_10000B3A8(v113, &unk_101698C30, &unk_101392630);
        }

        else
        {
          v149 = v212;
          sub_10013A49C(v113, v212, type metadata accessor for SharedBeaconRecord);
          *(&v247 + 1) = v115;
          v248 = sub_1000248A8(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
          v150 = sub_1000280DC(&v246);
          sub_10013A81C(v149, v150, type metadata accessor for SharedBeaconRecord);
          v151 = *(&v247 + 1);
          v152 = v248;
          sub_1000035D0(&v246, *(&v247 + 1));
          v153 = v224;
          (*(*(*(v152 + 8) + 8) + 32))(v151);
          v154 = type metadata accessor for Transaction();
          __chkstk_darwin(v154);
          *(&v205 - 4) = v153;
          *(&v205 - 3) = v73;
          *(&v205 - 2) = &v246;
          *(&v205 - 4) = 257;
          static Transaction.named<A>(_:with:)();
          sub_10013A660(v149, type metadata accessor for SharedBeaconRecord);
          (*(v240 + 8))(v153, v80);
          sub_100007BAC(&v246);
        }

        v155 = v239;
        v156 = v223;
        v157 = v73[21];
        if (qword_101695470 != -1)
        {
          swift_once();
        }

        v158 = sub_1000076D4(v155, qword_10177CD50);
        *(&v205 - 2) = __chkstk_darwin(v158);
        *(&v205 - 1) = v114;
        OS_dispatch_queue.sync<A>(execute:)();
        LODWORD(v235) = v246;
        v239 = v157;
        v159 = v234;
        (*(v234 + 16))(v231, v158, v155);
        *&v246 = _swiftEmptyArrayStorage;
        *&v243 = _swiftEmptyArrayStorage;
        v160 = [objc_opt_self() defaultManager];
        NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

        DirectorySequence.next()();
        v161 = *(v159 + 48);
        v162 = v161(v156, 1, v155);
        v163 = v155;
        v164 = v219;
        if (v162 != 1)
        {
          v165 = *(v234 + 32);
          v166 = (v234 + 8);
          do
          {
            v165(v164, v156, v155);
            v167 = objc_autoreleasePoolPush();
            sub_1005FBDCC(v164, v239, &v246, &v243);
            objc_autoreleasePoolPop(v167);
            (*v166)(v164, v155);
            DirectorySequence.next()();
          }

          while (v161(v156, 1, v155) != 1);
        }

        (*(v221 + 8))(v236, v222);
        v168 = static os_log_type_t.debug.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v169 = static OS_os_log.default.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v170 = swift_allocObject();
        *(v170 + 16) = xmmword_10138BBE0;
        v171 = v246;
        v172 = *(v246 + 16);
        *(v170 + 56) = &type metadata for Int;
        *(v170 + 64) = &protocol witness table for Int;
        *(v170 + 32) = v172;
        sub_1000248A8(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

        v173 = v231;
        v174 = dispatch thunk of CustomStringConvertible.description.getter();
        v176 = v175;
        *(v170 + 96) = &type metadata for String;
        *(v170 + 104) = sub_100008C00();
        *(v170 + 72) = v174;
        *(v170 + 80) = v176;
        os_log(_:dso:log:_:_:)(v168, &_mh_execute_header, v169, "Found %i records at %@", 22, 2, v170);

        (*(v234 + 8))(v173, v163);

        v177 = *(v171 + 16);
        if (v177)
        {
          *&v246 = _swiftEmptyArrayStorage;
          sub_101123D4C(0, v177, 0);
          v178 = v246;
          v179 = v171 + ((*(v230 + 80) + 32) & ~*(v230 + 80));
          v180 = *(v230 + 72);
          v181 = (v240 + 16);
          v182 = v228;
          v183 = v214;
          do
          {
            v184 = v237;
            sub_10013A81C(v179, v237, type metadata accessor for SharedBeaconRecord);
            (*v181)(v183, v184 + *(v238 + 20), v182);
            sub_10013A660(v184, type metadata accessor for SharedBeaconRecord);
            *&v246 = v178;
            v186 = *(v178 + 16);
            v185 = *(v178 + 24);
            if (v186 >= v185 >> 1)
            {
              sub_101123D4C((v185 > 1), v186 + 1, 1);
              v178 = v246;
            }

            *(v178 + 16) = v186 + 1;
            v207((v178 + ((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * v186), v183, v182);
            v179 += v180;
            --v177;
          }

          while (v177);

          v58 = v241;
          v80 = v182;
        }

        else
        {

          v58 = v241;
          v80 = v228;
        }

        v94 = v232;
        goto LABEL_113;
      case 2:
        if (qword_1016947B8 != -1)
        {
          swift_once();
        }

        v105 = sub_1000076D4(v239, qword_10177AEF8);
        v106 = __chkstk_darwin(v105);
        v94 = v232;
        *(&v205 - 2) = v106;
        *(&v205 - 1) = v94;
        goto LABEL_75;
      case 3:
        if (qword_101694468 != -1)
        {
          swift_once();
        }

        v109 = sub_1000076D4(v239, qword_10177A518);
        v110 = __chkstk_darwin(v109);
        v94 = v232;
        *(&v205 - 2) = v110;
        *(&v205 - 1) = v94;
        goto LABEL_75;
      case 4:
        if (qword_101694EB0 != -1)
        {
          swift_once();
        }

        v99 = sub_1000076D4(v239, qword_10177C0C0);
        v100 = __chkstk_darwin(v99);
        v94 = v232;
        *(&v205 - 2) = v100;
        *(&v205 - 1) = v94;
        goto LABEL_75;
      case 5:
        if (qword_1016947A0 != -1)
        {
          swift_once();
        }

        v116 = sub_1000076D4(v239, qword_10177AEC8);
        v117 = __chkstk_darwin(v116);
        v94 = v232;
        *(&v205 - 2) = v117;
        *(&v205 - 1) = v94;
        goto LABEL_75;
      case 6:
        if (qword_101694E08 != -1)
        {
          swift_once();
        }

        v120 = sub_1000076D4(v239, qword_10177BF38);
        v121 = __chkstk_darwin(v120);
        v94 = v232;
        *(&v205 - 2) = v121;
        *(&v205 - 1) = v94;
        goto LABEL_75;
      case 7:
        if (qword_1016954B8 != -1)
        {
          swift_once();
        }

        v111 = sub_1000076D4(v239, qword_10177CDB8);
        v112 = __chkstk_darwin(v111);
        v94 = v232;
        *(&v205 - 2) = v112;
        *(&v205 - 1) = v94;
        goto LABEL_75;
      case 8:
        if (qword_101694F88 != -1)
        {
          swift_once();
        }

        v124 = sub_1000076D4(v239, qword_10177C268);
        v125 = __chkstk_darwin(v124);
        v94 = v232;
        *(&v205 - 2) = v125;
        *(&v205 - 1) = v94;
        goto LABEL_75;
      case 9:
        if (qword_101694EF8 != -1)
        {
          swift_once();
        }

        v103 = sub_1000076D4(v239, qword_10177C140);
        v104 = __chkstk_darwin(v103);
        v94 = v232;
        *(&v205 - 2) = v104;
        *(&v205 - 1) = v94;
        goto LABEL_75;
      case 10:
        if (qword_101694460 != -1)
        {
          swift_once();
        }

        v122 = sub_1000076D4(v239, qword_10177A500);
        v123 = __chkstk_darwin(v122);
        v94 = v232;
        *(&v205 - 2) = v123;
        *(&v205 - 1) = v94;
        goto LABEL_75;
      case 11:
        if (qword_101695268 != -1)
        {
          swift_once();
        }

        v97 = sub_1000076D4(v239, qword_10177C680);
        v98 = __chkstk_darwin(v97);
        v94 = v232;
        *(&v205 - 2) = v98;
        *(&v205 - 1) = v94;
        goto LABEL_75;
      case 12:
        if (qword_101694568 != -1)
        {
          swift_once();
        }

        v101 = sub_1000076D4(v239, qword_10177A918);
        v102 = __chkstk_darwin(v101);
        v94 = v232;
        *(&v205 - 2) = v102;
        *(&v205 - 1) = v94;
        goto LABEL_75;
      case 13:
        if (qword_101694F30 != -1)
        {
          swift_once();
        }

        v118 = sub_1000076D4(v239, qword_10177C1D0);
        v119 = __chkstk_darwin(v118);
        v94 = v232;
        *(&v205 - 2) = v119;
        *(&v205 - 1) = v94;
        goto LABEL_75;
      case 14:
        if (qword_101694EB8 != -1)
        {
          swift_once();
        }

        v95 = sub_1000076D4(v239, qword_10177C0D8);
        v96 = __chkstk_darwin(v95);
        v94 = v232;
        *(&v205 - 2) = v96;
        *(&v205 - 1) = v94;
        goto LABEL_75;
      case 15:
        if (qword_101694680 != -1)
        {
          swift_once();
        }

        v107 = sub_1000076D4(v239, qword_10177AC60);
        v108 = __chkstk_darwin(v107);
        v94 = v232;
        *(&v205 - 2) = v108;
        *(&v205 - 1) = v94;
        goto LABEL_75;
      case 16:
        if (qword_101694E90 != -1)
        {
          swift_once();
        }

        v92 = sub_1000076D4(v239, qword_10177C090);
        v93 = __chkstk_darwin(v92);
        v94 = v232;
        *(&v205 - 2) = v93;
        *(&v205 - 1) = v94;
LABEL_75:
        v126 = OS_dispatch_queue.sync<A>(execute:)();
        v127 = v246;
        goto LABEL_76;
      default:
        v238 = v62;
        v89 = v217;
        sub_100AA33AC(v232, v217);
        v90 = v216;
        if ((*(v215 + 48))(v89, 1, v216) == 1)
        {
          sub_10000B3A8(v89, &unk_1016A9A20, &qword_10138B280);
          v91 = v240;
        }

        else
        {
          v130 = v211;
          sub_10013A49C(v89, v211, type metadata accessor for OwnedBeaconRecord);
          *(&v247 + 1) = v90;
          v248 = sub_1000248A8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
          v131 = sub_1000280DC(&v246);
          sub_10013A81C(v130, v131, type metadata accessor for OwnedBeaconRecord);
          v132 = *(&v247 + 1);
          v133 = v248;
          sub_1000035D0(&v246, *(&v247 + 1));
          v134 = v224;
          (*(*(*(v133 + 8) + 8) + 32))(v132);
          v135 = type metadata accessor for Transaction();
          __chkstk_darwin(v135);
          *(&v205 - 4) = v134;
          *(&v205 - 3) = v73;
          *(&v205 - 2) = &v246;
          *(&v205 - 4) = 256;
          static Transaction.named<A>(_:with:)();
          sub_10013A660(v130, type metadata accessor for OwnedBeaconRecord);
          v91 = v240;
          (*(v240 + 8))(v134, v80);
          sub_100007BAC(&v246);
        }

        v136 = v239;
        v137 = v220;
        if (qword_101694E78 != -1)
        {
          v204 = v239;
          swift_once();
          v136 = v204;
        }

        v138 = sub_1000076D4(v136, qword_10177C070);
        v139 = __chkstk_darwin(v138);
        v140 = v232;
        *(&v205 - 2) = v139;
        *(&v205 - 1) = v140;
        OS_dispatch_queue.sync<A>(execute:)();
        LODWORD(v235) = v246;
        v141 = v227;
        (*(v91 + 16))(v227, v140, v80);
        v239 = *(v91 + 56);
        (v239)(v141, 0, 1, v80);
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v237 = qword_10177B348;
        OS_dispatch_queue.sync<A>(execute:)();
        v142 = v246;
        KeyPath = swift_getKeyPath();
        v144 = v226;
        sub_101075400(KeyPath, v142, v226);

        v145 = *(v137 + 48);
        v146 = v229;
        sub_1000D2A70(v141, v229, &qword_1016980D0, &unk_10138F3B0);
        sub_1000D2A70(v144, v146 + v145, &qword_1016980D0, &unk_10138F3B0);
        v147 = v206;
        if (v206(v146, 1, v80) == 1)
        {
          sub_10000B3A8(v144, &qword_1016980D0, &unk_10138F3B0);
          v146 = v229;
          sub_10000B3A8(v141, &qword_1016980D0, &unk_10138F3B0);
          v148 = v147(v146 + v145, 1, v80);
          v94 = v232;
          if (v148 == 1)
          {
            sub_10000B3A8(v146, &qword_1016980D0, &unk_10138F3B0);
LABEL_109:
            v196 = v205;
            v197 = Logger.logObject.getter();
            v198 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v197, v198))
            {
              v199 = swift_slowAlloc();
              v200 = swift_slowAlloc();
              *v199 = 138412290;
              *(v199 + 4) = v196;
              *v200 = v196;
              v201 = v196;
              _os_log_impl(&_mh_execute_header, v197, v198, "Deleted current self-beacon OwnedBeaconRecord %@", v199, 0xCu);
              sub_10000B3A8(v200, &qword_10169BB30, &unk_10138B3C0);
            }

            v202 = v210;
            v80 = v228;
            (v239)(v210, 1, 1, v228);
            sub_1000034A4();
            v203 = v209;
            sub_1000D2A70(v202, v209, &qword_1016980D0, &unk_10138F3B0);
            sub_100EEAE98(v203);

            v190 = v202;
            v188 = &qword_1016980D0;
            v189 = &unk_10138F3B0;
            goto LABEL_112;
          }

LABEL_105:
          v188 = &qword_1016AF880;
          v189 = &unk_10138CE20;
          v190 = v146;
LABEL_112:
          v126 = sub_10000B3A8(v190, v188, v189);
          v58 = v241;
          goto LABEL_113;
        }

        v187 = v213;
        sub_1000D2A70(v146, v213, &qword_1016980D0, &unk_10138F3B0);
        if (v147(v146 + v145, 1, v80) == 1)
        {
          sub_10000B3A8(v226, &qword_1016980D0, &unk_10138F3B0);
          sub_10000B3A8(v227, &qword_1016980D0, &unk_10138F3B0);
          (*(v240 + 8))(v187, v80);
          v94 = v232;
          goto LABEL_105;
        }

        v191 = (v146 + v145);
        v192 = v224;
        v207(v224, v191, v80);
        sub_1000248A8(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v193 = dispatch thunk of static Equatable.== infix(_:_:)();
        v194 = v80;
        v195 = *(v240 + 8);
        v195(v192, v194);
        sub_10000B3A8(v226, &qword_1016980D0, &unk_10138F3B0);
        sub_10000B3A8(v227, &qword_1016980D0, &unk_10138F3B0);
        v195(v187, v194);
        v126 = sub_10000B3A8(v146, &qword_1016980D0, &unk_10138F3B0);
        v94 = v232;
        if (v193)
        {
          goto LABEL_109;
        }

        v58 = v241;
        v80 = v228;
LABEL_113:
        v127 = v235;
LABEL_76:
        sub_100A8375C(v126);
        sub_1000D2A70(&v249, &v243, &qword_101697930, &qword_10138C9C8);
        if (v244)
        {
          sub_10000A748(&v243, &v246);
          PassthroughSubject.send(_:)();
          sub_100007BAC(&v246);
          if (v127)
          {
LABEL_78:
            sub_10000B3A8(&v249, &qword_101697930, &qword_10138C9C8);
            (*(v240 + 8))(v94, v80);
LABEL_79:

            return v58;
          }
        }

        else
        {
          sub_10000B3A8(&v243, &qword_101697930, &qword_10138C9C8);
          if (v127)
          {
            goto LABEL_78;
          }
        }

        sub_100139CA0();
        v58 = swift_allocError();
        *v129 = 11;
        sub_10000B3A8(&v249, &qword_101697930, &qword_10138C9C8);
        (*(v240 + 8))(v94, v80);
        return v58;
    }
  }

  sub_10000B3A8(v37, &qword_1016980D0, &unk_10138F3B0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_1000076D4(v51, qword_10177BA08);
  v52 = a1;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138543362;
    *(v55 + 4) = v52;
    *v56 = v52;
    v57 = v52;
    _os_log_impl(&_mh_execute_header, v53, v54, "Invalid record identifier beaconRecord: %{public}@", v55, 0xCu);
    sub_10000B3A8(v56, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_100139CA0();
  v58 = swift_allocError();
  *v59 = 12;
  return v58;
}

uint64_t sub_100135D88(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SharingCircleSecret(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v159 = *(v7 - 8);
  v8 = *(v159 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v10 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v136 - v11;
  v151 = type metadata accessor for MemberSharingCircle(0);
  v156 = *(v151 - 8);
  v13 = __chkstk_darwin(v151);
  v158 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v14;
  __chkstk_darwin(v13);
  v16 = (&v136 - v15);
  v17 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v153 = *(v17 - 8);
  v18 = __chkstk_darwin(v17 - 8);
  v155 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v19;
  __chkstk_darwin(v18);
  v161 = &v136 - v20;
  v148 = type metadata accessor for OwnerSharingCircle(0);
  v149 = *(v148 - 8);
  v21 = __chkstk_darwin(v148);
  v152 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = v22;
  __chkstk_darwin(v21);
  v176 = (&v136 - v23);
  v24 = type metadata accessor for MemberPeerTrust(0);
  __chkstk_darwin(v24 - 8);
  v173 = (&v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for OwnerPeerTrust(0);
  __chkstk_darwin(v26 - 8);
  v172 = (&v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for OwnedDeviceKeyRecord(0);
  __chkstk_darwin(v28 - 8);
  v171 = (&v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for KeyAlignmentRecord(0);
  __chkstk_darwin(v30 - 8);
  v170 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LostModeRecord(0);
  __chkstk_darwin(v32 - 8);
  v169 = (&v136 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for SafeLocation(0);
  __chkstk_darwin(v34 - 8);
  v168 = (&v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for LeashRecord(0);
  __chkstk_darwin(v36 - 8);
  v167 = (&v136 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  __chkstk_darwin(found - 8);
  v166 = (&v136 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for BeaconNamingRecord(0);
  __chkstk_darwin(v40 - 8);
  v165 = (&v136 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for ShareRecord(0);
  __chkstk_darwin(v42 - 8);
  v164 = (&v136 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v44 - 8);
  v163 = (&v136 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v46 - 8);
  v174 = &v136 - v47;
  v48 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v145 = *(v48 - 8);
  v49 = __chkstk_darwin(v48 - 8);
  v147 = &v136 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v50;
  __chkstk_darwin(v49);
  v52 = &v136 - v51;
  v141 = type metadata accessor for SharedBeaconRecord(0);
  v142 = *(v141 - 8);
  v53 = __chkstk_darwin(v141);
  v144 = &v136 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v54;
  __chkstk_darwin(v53);
  v175 = &v136 - v55;
  v56 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v56 - 8);
  v162 = (&v136 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  v59 = sub_1000076D4(v58, qword_10177BA08);
  v60 = a1;
  v177 = v59;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  v63 = os_log_type_enabled(v61, v62);
  v160 = v52;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v137 = v62;
    v65 = v64;
    v136 = swift_slowAlloc();
    v178 = v136;
    *v65 = 136315138;
    v66 = v60;
    v140 = v60;
    v67 = v66;
    v68 = v8;
    v69 = v12;
    v70 = v2;
    v71 = [v66 description];
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v138 = v6;
    v73 = v72;
    v139 = v10;
    v74 = v16;
    v76 = v75;

    v60 = v140;
    v2 = v70;
    v12 = v69;
    v8 = v68;
    v77 = sub_1000136BC(v73, v76, &v178);
    v16 = v74;
    v10 = v139;

    *(v65 + 4) = v77;
    v6 = v138;
    _os_log_impl(&_mh_execute_header, v61, v137, "processBeaconZoneRecordUpdate: %s", v65, 0xCu);
    sub_100007BAC(v136);
  }

  v78 = CKRecord.recordType.getter();
  v80 = sub_1008DA998(v78, v79);

  switch(v80)
  {
    case 1:
      v107 = v60;
      v108 = v175;
      sub_1011D5D0C(v107, v175);
      v109 = v160;
      sub_100AA5198(&v108[*(v141 + 20)], v160);
      v110 = type metadata accessor for TaskPriority();
      v111 = v174;
      (*(*(v110 - 8) + 56))(v174, 1, 1, v110);
      v112 = v147;
      sub_1000D2A70(v109, v147, &unk_101698C30, &unk_101392630);
      v113 = v144;
      sub_10013A81C(v108, v144, type metadata accessor for SharedBeaconRecord);
      v114 = (*(v145 + 80) + 32) & ~*(v145 + 80);
      v115 = (v146 + *(v142 + 80) + v114) & ~*(v142 + 80);
      v116 = swift_allocObject();
      *(v116 + 16) = 0;
      *(v116 + 24) = 0;
      sub_1000D2AD8(v112, v116 + v114, &unk_101698C30, &unk_101392630);
      sub_10013A49C(v113, v116 + v115, type metadata accessor for SharedBeaconRecord);
      v82 = v175;
      sub_10025EDD4(0, 0, v111, &unk_10138CA20, v116);

      sub_100137BA8(*(v2 + 168), type metadata accessor for SharedBeaconRecord, sub_1009F1368, type metadata accessor for SharedBeaconRecord, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v160, &unk_101698C30, &unk_101392630);
      v134 = type metadata accessor for SharedBeaconRecord;
      goto LABEL_28;
    case 2:
      v97 = v60;
      v82 = v163;
      sub_100518A90(v97, v163);
      sub_100137BA8(*(v2 + 168), type metadata accessor for OwnedBeaconGroup, sub_1009F10FC, type metadata accessor for OwnedBeaconGroup, type metadata accessor for OwnedBeaconGroup);
      v134 = type metadata accessor for OwnedBeaconGroup;
      goto LABEL_28;
    case 3:
      v105 = v60;
      v82 = v164;
      sub_1001547CC(v105, v164);
      sub_100137BA8(*(v2 + 168), type metadata accessor for ShareRecord, sub_1009F0E90, type metadata accessor for ShareRecord, type metadata accessor for ShareRecord);
      v134 = type metadata accessor for ShareRecord;
      goto LABEL_28;
    case 4:
      v94 = v60;
      v82 = v165;
      sub_100DE08D0(v94, v165);
      sub_100137BA8(*(v2 + 168), type metadata accessor for BeaconNamingRecord, sub_1009F0C24, type metadata accessor for BeaconNamingRecord, type metadata accessor for BeaconNamingRecord);
      v134 = type metadata accessor for BeaconNamingRecord;
      goto LABEL_28;
    case 5:
      v124 = v60;
      v82 = v166;
      sub_1004EBE10(v124, v166);
      sub_100137BA8(*(v2 + 168), type metadata accessor for NotifyWhenFoundRecord, sub_1009F09B8, type metadata accessor for NotifyWhenFoundRecord, type metadata accessor for NotifyWhenFoundRecord);
      v134 = type metadata accessor for NotifyWhenFoundRecord;
      goto LABEL_28;
    case 6:
      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        _os_log_impl(&_mh_execute_header, v126, v127, "Ignoring BeaconEstimatedLocation record change.", v128, 2u);
      }

      goto LABEL_30;
    case 7:
      v106 = v60;
      v82 = v167;
      sub_101251FDC(v106, v167);
      sub_100137BA8(*(v2 + 168), type metadata accessor for LeashRecord, sub_1009F074C, type metadata accessor for LeashRecord, type metadata accessor for LeashRecord);
      v134 = type metadata accessor for LeashRecord;
      goto LABEL_28;
    case 8:
      v131 = v60;
      v82 = v168;
      sub_100EE51B8(v131, v168);
      sub_100137BA8(*(v2 + 168), type metadata accessor for SafeLocation, sub_1009F04E0, type metadata accessor for SafeLocation, type metadata accessor for SafeLocation);
      v134 = type metadata accessor for SafeLocation;
      goto LABEL_28;
    case 9:
      v96 = v60;
      v82 = v169;
      sub_100E7815C(v96, v169);
      sub_100137BA8(*(v2 + 168), type metadata accessor for LostModeRecord, sub_1009F0274, type metadata accessor for LostModeRecord, type metadata accessor for LostModeRecord);
      v134 = type metadata accessor for LostModeRecord;
      goto LABEL_28;
    case 10:
      v130 = v60;
      v82 = v170;
      sub_100150FC8(v130, v170);
      sub_100137BA8(*(v2 + 168), type metadata accessor for KeyAlignmentRecord, sub_1009F0008, type metadata accessor for KeyAlignmentRecord, type metadata accessor for KeyAlignmentRecord);
      v134 = type metadata accessor for KeyAlignmentRecord;
      goto LABEL_28;
    case 11:
      v93 = v60;
      v82 = v171;
      sub_101103E74(v93, v171);
      sub_100137BA8(*(v2 + 168), type metadata accessor for OwnedDeviceKeyRecord, sub_1009EFD9C, type metadata accessor for OwnedDeviceKeyRecord, type metadata accessor for OwnedDeviceKeyRecord);
      v134 = type metadata accessor for OwnedDeviceKeyRecord;
      goto LABEL_28;
    case 12:
      v95 = v60;
      v82 = v172;
      sub_100310ECC(v95, v172);
      sub_100137BA8(*(v2 + 168), type metadata accessor for OwnerPeerTrust, sub_1009EFB30, type metadata accessor for OwnerPeerTrust, type metadata accessor for OwnerPeerTrust);
      v134 = type metadata accessor for OwnerPeerTrust;
      goto LABEL_28;
    case 13:
      v125 = v60;
      v82 = v173;
      sub_100E939A4(v125, v173);
      sub_100137BA8(*(v2 + 168), type metadata accessor for MemberPeerTrust, sub_1009EF8C4, type metadata accessor for MemberPeerTrust, type metadata accessor for MemberPeerTrust);
      v134 = type metadata accessor for MemberPeerTrust;
      goto LABEL_28;
    case 14:
      v83 = v60;
      sub_100E0F270(v83, v176);
      v84 = v161;
      sub_100AB2B14();
      v85 = type metadata accessor for TaskPriority();
      v86 = v174;
      (*(*(v85 - 8) + 56))(v174, 1, 1, v85);
      v87 = v155;
      sub_1000D2A70(v84, v155, &unk_1016AFA00, &qword_10138C4D0);
      v88 = v152;
      sub_10013A81C(v176, v152, type metadata accessor for OwnerSharingCircle);
      v89 = (*(v153 + 80) + 32) & ~*(v153 + 80);
      v90 = (v154 + *(v149 + 80) + v89) & ~*(v149 + 80);
      v91 = swift_allocObject();
      *(v91 + 16) = 0;
      *(v91 + 24) = 0;
      v92 = v87;
      v82 = v176;
      sub_1000D2AD8(v92, v91 + v89, &unk_1016AFA00, &qword_10138C4D0);
      sub_10013A49C(v88, v91 + v90, type metadata accessor for OwnerSharingCircle);
      sub_10025EDD4(0, 0, v86, &unk_10138CA10, v91);

      sub_100137BA8(*(v2 + 168), type metadata accessor for OwnerSharingCircle, sub_1009EF658, type metadata accessor for OwnerSharingCircle, type metadata accessor for OwnerSharingCircle);
      sub_10000B3A8(v161, &unk_1016AFA00, &qword_10138C4D0);
      v134 = type metadata accessor for OwnerSharingCircle;
      goto LABEL_28;
    case 15:
      sub_1003268EC(v60, v16);
      sub_100AB2C88();
      v98 = type metadata accessor for TaskPriority();
      v99 = v174;
      (*(*(v98 - 8) + 56))(v174, 1, 1, v98);
      sub_1000D2A70(v12, v10, &unk_101698BC0, &qword_10138C440);
      v176 = type metadata accessor for MemberSharingCircle;
      v100 = v158;
      sub_10013A81C(v16, v158, type metadata accessor for MemberSharingCircle);
      v101 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v102 = (v8 + *(v156 + 80) + v101) & ~*(v156 + 80);
      v103 = swift_allocObject();
      v175 = v12;
      v104 = v103;
      *(v103 + 16) = 0;
      *(v103 + 24) = 0;
      sub_1000D2AD8(v10, v103 + v101, &unk_101698BC0, &qword_10138C440);
      sub_10013A49C(v100, v104 + v102, type metadata accessor for MemberSharingCircle);
      sub_10025EDD4(0, 0, v99, &unk_10138CA00, v104);

      sub_100137BA8(*(v2 + 168), type metadata accessor for MemberSharingCircle, sub_1009EF3EC, v176, type metadata accessor for MemberSharingCircle);
      sub_10000B3A8(v175, &unk_101698BC0, &qword_10138C440);
      v132 = type metadata accessor for MemberSharingCircle;
      v133 = v16;
      goto LABEL_29;
    case 16:
      sub_100D69EDC(v60, v6);
      sub_100137BA8(*(v2 + 168), type metadata accessor for SharingCircleSecret, sub_1009EF180, type metadata accessor for SharingCircleSecret, type metadata accessor for SharingCircleSecret);
      v132 = type metadata accessor for SharingCircleSecret;
      v133 = v6;
      goto LABEL_29;
    case 17:
      v117 = static os_log_type_t.fault.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v118 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_10138BBE0;
      v120 = CKRecord.recordType.getter();
      v122 = v121;
      *(v119 + 56) = &type metadata for String;
      *(v119 + 64) = sub_100008C00();
      *(v119 + 32) = v120;
      *(v119 + 40) = v122;
      *(v119 + 96) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
      *(v119 + 104) = sub_10013A2D8();
      *(v119 + 72) = v60;
      v123 = v60;
      os_log(_:dso:log:_:_:)(v117, &_mh_execute_header, v118, "Unhandled recordType: %@: %@", 28, 2, v119);

      return CKRecord.recordType.getter();
    default:
      v81 = v60;
      v82 = v162;
      sub_100D5E184(v81, v162);
      sub_100137BA8(*(v2 + 168), type metadata accessor for OwnedBeaconRecord, sub_1009F15D4, type metadata accessor for OwnedBeaconRecord, type metadata accessor for OwnedBeaconRecord);
      v134 = type metadata accessor for OwnedBeaconRecord;
LABEL_28:
      v132 = v134;
      v133 = v82;
LABEL_29:
      v129 = sub_10013A660(v133, v132);
LABEL_30:
      sub_100A8375C(v129);
      return CKRecord.recordType.getter();
  }
}

uint64_t sub_100137944(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177BA08);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Cloud data purged, attempting to clear local data", v13, 2u);
  }

  v14 = *(v3 + 168);
  v15 = *(v14 + 16);
  *v9 = v15;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.notOnQueue(_:), v6);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v15)
  {
    v18 = dispatch_group_create();
    dispatch_group_enter(v18);

    v19 = v18;
    sub_1010101E8(a2 & 1, a1, v14, v19);

    QueueSynchronizer.conditionalSync<A>(_:)();
    return sub_100A8306C(6u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100137BA8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v10 = a2(0);
  v11 = __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v25 - v14;
  a3(v5);
  if (!v6)
  {
    v25[1] = 0;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177BA08);
    sub_10013A81C(v5, v15, a4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      sub_10013A81C(v15, v13, a4);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      sub_10013A660(v15, a5);
      v24 = sub_1000136BC(v21, v23, &v26);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "New record: %s", v19, 0xCu);
      sub_100007BAC(v20);
    }

    else
    {

      sub_10013A660(v15, a5);
    }
  }
}

void sub_100137DEC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  sub_100B2E5D0(v2, v12, *(v11 + 8));
  if (!v3)
  {
    v22[1] = 0;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177BA08);
    v14 = *(v5 + 16);
    v14(v10, v2, a2);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      v23 = v22[0];
      *v17 = 136315138;
      v14(v8, v10, a2);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      (*(v5 + 8))(v10, a2);
      v21 = sub_1000136BC(v18, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "New record: %s", v17, 0xCu);
      sub_100007BAC(v22[0]);
    }

    else
    {

      (*(v5 + 8))(v10, a2);
    }
  }
}

uint64_t sub_100138070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_1000BC4D4(&qword_101697948, &qword_10138CA40);
  v5[10] = swift_task_alloc();
  v5[11] = sub_1000BC4D4(&unk_1016B1630, &qword_10138CA48);
  v5[12] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[13] = v6;
  *v6 = v5;
  v6[1] = sub_100138178;

  return daemon.getter();
}

uint64_t sub_100138178(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ItemSharingNotificationsService();
  v6 = sub_1000248A8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000248A8(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService, &unk_1013D77C8);
  *v3 = v9;
  v3[1] = sub_100138354;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100138354(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10013A958;
    v6 = 0;
  }

  else
  {

    *(v4 + 128) = a1;
    v5 = sub_1001384B4;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1001384B4()
{
  v1 = v0[16];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = *(v0[11] + 48);
  sub_1000D2A70(v0[8], v2, &unk_101698BC0, &qword_10138C440);
  sub_10013A81C(v4, v2 + v5, type metadata accessor for MemberSharingCircle);
  swift_beginAccess();
  v6 = *(*(v1 + 208) + 16);
  swift_beginAccess();
  sub_1000D2AD8(v2, v3, &unk_1016B1630, &qword_10138CA48);
  sub_100A05120(v6, v6, v3);
  swift_endAccess();

  return _swift_task_switch(sub_10013A95C, 0, 0);
}

uint64_t sub_1001385D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_1000BC4D4(&qword_101697940, &qword_10138CA30);
  v5[10] = swift_task_alloc();
  v5[11] = sub_1000BC4D4(&unk_1016B1610, &qword_10138CA38);
  v5[12] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[13] = v6;
  *v6 = v5;
  v6[1] = sub_1001386E0;

  return daemon.getter();
}

uint64_t sub_1001386E0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ItemSharingNotificationsService();
  v6 = sub_1000248A8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000248A8(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService, &unk_1013D77C8);
  *v3 = v9;
  v3[1] = sub_1001388BC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001388BC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10013A958;
    v6 = 0;
  }

  else
  {

    *(v4 + 128) = a1;
    v5 = sub_100138A1C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100138A1C()
{
  v1 = v0[16];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = *(v0[11] + 48);
  sub_1000D2A70(v0[8], v2, &unk_1016AFA00, &qword_10138C4D0);
  sub_10013A81C(v4, v2 + v5, type metadata accessor for OwnerSharingCircle);
  swift_beginAccess();
  v6 = *(*(v1 + 224) + 16);
  swift_beginAccess();
  sub_1000D2AD8(v2, v3, &unk_1016B1610, &qword_10138CA38);
  sub_100A05214(v6, v6, v3);
  swift_endAccess();

  return _swift_task_switch(sub_10013A95C, 0, 0);
}

uint64_t sub_100138B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_1000BC4D4(&qword_101697938, &qword_10138CA28);
  v5[10] = swift_task_alloc();
  v5[11] = sub_1000BC4D4(&unk_1016B15C0, &unk_1013D7870);
  v5[12] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[13] = v6;
  *v6 = v5;
  v6[1] = sub_100138C48;

  return daemon.getter();
}

uint64_t sub_100138C48(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ItemSharingNotificationsService();
  v6 = sub_1000248A8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000248A8(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService, &unk_1013D77C8);
  *v3 = v9;
  v3[1] = sub_100138E24;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100138E24(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100138F84;
    v6 = 0;
  }

  else
  {

    *(v4 + 128) = a1;
    v5 = sub_1001390AC;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100138F84()
{
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BAA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No ItemSharingNotificationsService available!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001390AC()
{
  v1 = v0[16];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = *(v0[11] + 48);
  sub_1000D2A70(v0[8], v2, &unk_101698C30, &unk_101392630);
  sub_10013A81C(v4, v2 + v5, type metadata accessor for SharedBeaconRecord);
  swift_beginAccess();
  v6 = *(*(v1 + 216) + 16);
  swift_beginAccess();
  sub_1000D2AD8(v2, v3, &unk_1016B15C0, &unk_1013D7870);
  sub_100A05308(v6, v6, v3);
  swift_endAccess();

  return _swift_task_switch(sub_1001391D0, 0, 0);
}

uint64_t sub_1001391D0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100139244(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177BA08);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v35 = a1;
    aBlock[0] = v17;
    *v16 = 136446210;
    type metadata accessor for CloudKitCoordinator();

    v18 = String.init<A>(describing:)();
    v20 = sub_1000136BC(v18, v19, aBlock);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "CloudKitCoordinator available again after reset: %{public}s", v16, 0xCu);
    sub_100007BAC(v17);

    v8 = v29;
  }

  v21 = *(a2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_resetHandler);
  if (v21)
  {
    v22 = *(a2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_resetHandler + 8);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);

    v23 = static OS_dispatch_queue.global(qos:)();
    (*(v9 + 8))(v11, v8);
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    *(v24 + 24) = v22;
    aBlock[4] = sub_10013A884;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10160F7A8;
    v25 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v35 = _swiftEmptyArrayStorage;
    sub_1000248A8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v26 = v31;
    v27 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    sub_1000BB27C(v21, v22);
    (*(v33 + 8))(v26, v27);
    (*(v30 + 8))(v7, v32);
  }
}

uint64_t sub_100139770(uint64_t a1)
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BA08);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "databaseUpdated recordsDeleted: %ld.", v5, 0xCu);
  }

  else
  {
  }

  v6 = &_swiftEmptySetSingleton;
  v29 = &_swiftEmptySetSingleton;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
    v8 = (a1 + 48);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *(v8 - 2);

      v12 = objc_autoreleasePoolPush();
      v13 = [v11 zoneID];
      if (qword_101694C00 != -1)
      {
        swift_once();
      }

      v14 = qword_10177BA50;
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        v16 = sub_100133718(v11, v9, v10);
        v18 = v17;
        v20 = v19;

        if (v20)
        {
          sub_100139C90(v16, v18, 1);
        }

        else
        {
          sub_100DE9538(&v28, v16, v18);
        }
      }

      else
      {

        v21 = v11;
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138543362;
          *(v24 + 4) = v21;
          *v25 = v21;
          v26 = v21;
          _os_log_impl(&_mh_execute_header, v22, v23, "Ignoring delete record from unknown zone: %{public}@", v24, 0xCu);
          sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);
        }
      }

      objc_autoreleasePoolPop(v12);

      v8 += 3;
      --v7;
    }

    while (v7);
    QueueSynchronizer.conditionalSync<A>(_:)();
    sub_100A8306C(7u);
    v6 = v29;
  }

  if (sub_10111EACC(0x61636F4C65666153, 0xEC0000006E6F6974, v6))
  {
    sub_100A83364(0);
    sub_100A8338C();
  }

  else if (sub_10111EACC(0x636552687361654CLL, 0xEB0000000064726FLL, v6))
  {
    sub_100A83364(0);
  }

  if (qword_101694E70 != -1)
  {
    swift_once();
  }

  if (sub_10111EACC(qword_10177C060, *algn_10177C068, v6) & 1) != 0 || (sub_10111EACC(0xD000000000000012, 0x800000010134BC20, v6) & 1) != 0 || (sub_10111EACC(0xD000000000000012, 0x800000010134BC40, v6))
  {
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
  }
}

uint64_t sub_100139C90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100139CA0()
{
  result = qword_101697928;
  if (!qword_101697928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697928);
  }

  return result;
}

uint64_t sub_100139D50(unint64_t a1)
{
  v35 = &_swiftEmptySetSingleton;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BA08);

  v4 = Logger.logObject.getter();
  LOBYTE(v5) = static os_log_type_t.default.getter();
  v6 = a1 >> 62;
  if (!os_log_type_enabled(v4, v5))
  {

    goto LABEL_8;
  }

  v1 = swift_slowAlloc();
  *v1 = 134217984;
  if (v6)
  {
    goto LABEL_43;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v1 + 4) = i;

    _os_log_impl(&_mh_execute_header, v4, v5, "databaseUpdated recordsChanged: processed %ld change records.", v1, 0xCu);

LABEL_8:
    if (v6)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v5)
    {
      v30 = &_swiftEmptySetSingleton;
      goto LABEL_28;
    }

    v8 = sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
    if (v5 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_43:
    ;
  }

  v9 = v8;
  v10 = 0;
  v11 = a1 & 0xC000000000000001;
  v32 = a1 & 0xC000000000000001;
  v33 = a1;
  do
  {
    if (v11)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(a1 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = objc_autoreleasePoolPush();
    v15 = [v13 recordID];
    v16 = [v15 zoneID];

    if (qword_101694C00 != -1)
    {
      swift_once();
    }

    v17 = qword_10177BA50;
    v18 = static NSObject.== infix(_:_:)();

    if (v18)
    {
      v19 = sub_100135D88(v13);
      if (v21)
      {
        sub_100139C90(v19, v20, 1);
      }

      else
      {
        sub_100DE9538(v34, v19, v20);
      }
    }

    else
    {
      v22 = v13;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = v5;
        v27 = v9;
        v28 = swift_slowAlloc();
        *v25 = 138543362;
        v29 = [v22 recordID];
        *(v25 + 4) = v29;
        *v28 = v29;
        _os_log_impl(&_mh_execute_header, v23, v24, "Ignoring changed record from unknown zone: %{public}@", v25, 0xCu);
        sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);
        v9 = v27;
        v5 = v26;
        v11 = v32;

        a1 = v33;
      }
    }

    ++v10;
    objc_autoreleasePoolPop(v14);
  }

  while (v5 != v10);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(7u);
  v30 = v35;
LABEL_28:
  if (sub_10111EACC(0x61636F4C65666153, 0xEC0000006E6F6974, v30))
  {
    sub_100A83364(0);
    sub_100A8338C();
  }

  else if (sub_10111EACC(0x636552687361654CLL, 0xEB0000000064726FLL, v30))
  {
    sub_100A83364(0);
  }

  if (qword_101694E70 != -1)
  {
    swift_once();
  }

  if (sub_10111EACC(qword_10177C060, *algn_10177C068, v30) & 1) != 0 || (sub_10111EACC(0xD000000000000012, 0x800000010134BC20, v30) & 1) != 0 || (sub_10111EACC(0xD000000000000012, 0x800000010134BC40, v30))
  {
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
  }
}

unint64_t sub_10013A2D8()
{
  result = qword_101697F90;
  if (!qword_101697F90)
  {
    sub_100008BB8(255, &qword_101698150, CKRecord_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697F90);
  }

  return result;
}

uint64_t sub_10013A340(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&unk_101698BC0, &qword_10138C440) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MemberSharingCircle(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100138070(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10013A49C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10013A504(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_1001385D8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10013A660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10013A6C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014650;

  return sub_100138B40(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10013A81C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10013A8AC()
{
  result = qword_1016A30C0;
  if (!qword_1016A30C0)
  {
    sub_1000BC580(&qword_101696AE0, qword_10138B3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A30C0);
  }

  return result;
}

uint64_t sub_10013A980(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10013AAA8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013B98C(*a1);
  *a2 = result;
  return result;
}

void sub_10013AAD8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00554B53646574;
  v4 = 0x726F707075736E75;
  v5 = 0x8000000101347710;
  v6 = 0xD00000000000001CLL;
  v7 = 0xEC00000065636976;
  v8 = 0x6544654D41746F6ELL;
  if (v2 != 4)
  {
    v8 = 0x6F4E656369766564;
    v7 = 0xEE006573556E4974;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 == 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001013476E0;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001013476C0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10013ABD4(unsigned __int8 a1)
{
  if (a1 == 6)
  {
    return 1701736302;
  }

  if (a1 == 7)
  {
    return 0x64656C62616E65;
  }

  v2 = a1;
  v3 = 0xEE00554B53646574;
  v4 = 0x726F707075736E75;
  v5 = 0x8000000101347710;
  v6 = 0xD00000000000001CLL;
  v7 = 0xEC00000065636976;
  v8 = 0x6544654D41746F6ELL;
  if (a1 != 4)
  {
    v8 = 0x6F4E656369766564;
    v7 = 0xEE006573556E4974;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (a1 == 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001013476E0;
  }

  if (!a1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001013476C0;
  }

  if (a1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  return 0x64656C6261736964;
}

uint64_t sub_10013AD54(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if ((v3 & 0xFE) == 6)
  {
    return 0;
  }

  return sub_10076B778(v2, v3);
}

void *sub_10013ADA8()
{
  v1 = *(v0 + 72);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 56);
  swift_unknownObjectRetain();
  v3(ObjectType, v1);
  swift_unknownObjectRelease();

  sub_100007BAC((v0 + 24));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10013AE4C()
{
  sub_10013ADA8();

  return swift_deallocClassInstance();
}

uint64_t sub_10013AEA4()
{
  v1 = *(v0 + 72);
  ObjectType = swift_getObjectType();
  return (*(v1 + 48))(ObjectType, v1);
}

void sub_10013AEF0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  CurrentValueSubject.send(_:)();
}

uint64_t sub_10013AF40()
{
  v1 = v0;
  v28 = sub_1000BC4D4(&qword_101697B48, &qword_10138CB98);
  v2 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v27 - v3;
  v5 = sub_1000BC4D4(&qword_101697B50, &qword_10138CBA0);
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = sub_1000BC4D4(&qword_101697B58, &qword_10138CBA8);
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v31 = &v27 - v9;
  v10 = sub_1000BC4D4(&qword_101697B60, &unk_10138CBB0);
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v34 = &v27 - v11;
  v12 = v0[9];
  ObjectType = swift_getObjectType();
  (*(v12 + 48))(ObjectType, v12);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177B780);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting Separation Monitoring support observer.", v17, 2u);
  }

  v37 = v1[13];
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10013BF2C;
  *(v18 + 24) = v1;

  sub_1000BC4D4(&unk_1016B2870, &qword_1013B1320);
  sub_1000041A4(&qword_101697B68, &unk_1016B2870, &qword_1013B1320, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  v27 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_1000041A4(&qword_101697B70, &qword_101697B48, &qword_10138CB98, &protocol conformance descriptor for Publishers.Map<A, B>);
  v19 = v28;
  Publisher<>.removeDuplicates()();
  (*(v2 + 8))(v4, v19);
  v37 = v1[2];
  v38 = v1[10];
  sub_1000BC4D4(&unk_1016B2A90, &unk_10138CBC0);
  sub_1000BC4D4(&qword_1016B2990, &qword_1013D37A0);
  sub_1000041A4(&qword_101697B78, &qword_101697B50, &qword_10138CBA0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_1000041A4(&qword_101697B80, &unk_1016B2A90, &unk_10138CBC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000041A4(&qword_101697B88, &qword_1016B2990, &qword_1013D37A0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v20 = v30;
  v21 = v31;
  Publisher.combineLatest<A, B>(_:_:)();
  (*(v29 + 8))(v7, v20);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10013BF64;
  *(v22 + 24) = v1;
  sub_1000041A4(&qword_101697B90, &qword_101697B58, &qword_10138CBA8, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);

  v23 = v33;
  v24 = v34;
  Publisher.map<A>(_:)();

  (*(v32 + 8))(v21, v23);
  sub_1000BC4D4(&qword_101697B98, &unk_10138CBD0);
  sub_1000041A4(&qword_101697BA0, &qword_101697B60, &unk_10138CBB0, v27);
  sub_1000041A4(&qword_101697BA8, &qword_101697B98, &unk_10138CBD0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v25 = v36;
  Publisher.subscribe<A>(_:)();
  (*(v35 + 8))(v24, v25);
  swift_beginAccess();
  sub_1000BC4D4(&qword_101697BB0, &qword_1013C1790);
  sub_1000041A4(&qword_101697BB8, &qword_101697BB0, &qword_1013C1790, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_10013B6AC()
{
  sub_10013ADA8();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SeparationMonitoringStateDecider.SeparationMonitoringPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SeparationMonitoringStateDecider.SeparationMonitoringPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10013B864(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10013B878(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

uint64_t sub_10013B898(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10013B8B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013B90C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_10013B95C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_10013B98C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101607B88, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10013B9D8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  sub_1000DF96C();
  v3 = StringProtocol.contains<A>(_:)();

  if ((v3 & 1) == 0)
  {
    v2 = 1;
    v4 = StringProtocol.contains<A>(_:)();

    if ((v4 & 1) == 0)
    {
      v2 = 2;
      v5 = StringProtocol.contains<A>(_:)();

      if ((v5 & 1) == 0)
      {
        v2 = 3;
        v6 = StringProtocol.contains<A>(_:)();

        if ((v6 & 1) == 0)
        {
          v7 = StringProtocol.contains<A>(_:)();

          if (v7)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_10013BD94(unsigned int a1)
{
  if (a1 < 3)
  {
LABEL_9:
    v10 = 2;
    return CurrentValueSubject.send(_:)();
  }

  if (a1 - 3 > 1)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177B780);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      type metadata accessor for CLAuthorizationStatus(0);
      v6 = String.init<A>(describing:)();
      v8 = sub_1000136BC(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unknown CLAuthorizationStatus value detected: %s", v4, 0xCu);
      sub_100007BAC(v5);
    }

    goto LABEL_9;
  }

  v10 = 0;
  return CurrentValueSubject.send(_:)();
}

uint64_t sub_10013BF30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10013BF68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

void *sub_10013BFA8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101697BC8, &qword_10138CBE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v5 = type metadata accessor for SystemVersionNumber();
  v6 = __chkstk_darwin(v5);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = &v45 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v52 = (v8 + 48);
    v53 = v4;
    v50 = (v8 + 32);
    v51 = (v8 + 8);
    v12 = a1 + 32;
    result = _swiftEmptyArrayStorage;
    v48 = v10;
    v46 = a1 + 32;
    while (1)
    {
      v47 = result;
      v14 = (v12 + 160 * v11);
      v15 = v11;
      while (1)
      {
        if (v15 >= v10)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v16 = v14[7];
        v62 = v14[6];
        v63 = v16;
        v17 = v14[9];
        v64 = v14[8];
        v65 = v17;
        v18 = v14[3];
        v58 = v14[2];
        v59 = v18;
        v19 = v14[5];
        v60 = v14[4];
        v61 = v19;
        v20 = v14[1];
        v56 = *v14;
        v57 = v20;
        v11 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_27;
        }

        sub_10013CD18(&v56, &v55);

        v21 = v53;
        SystemVersionNumber.init(string:)();
        if ((*v52)(v21, 1, v5) == 1)
        {
          sub_10013CD74(v21);
          goto LABEL_5;
        }

        v23 = *(&v58 + 1);
        v22 = v58;
        (*v50)(v54, v21, v5);

        v24 = sub_10013B9D8(v22, v23);

        if (v24 > 2u)
        {
          if (v24 != 4)
          {
LABEL_15:
            (*v51)(v54, v5);
            goto LABEL_5;
          }
        }

        else if (v24 - 1 >= 2)
        {
          goto LABEL_15;
        }

        v25 = v5;
        v26 = v54;
        v27 = v49;
        SystemVersionNumber.init(stringLiteral:)();
        sub_10013CE30();
        v28 = dispatch thunk of static Comparable.< infix(_:_:)();
        v29 = *v51;
        v30 = v27;
        v10 = v48;
        (*v51)(v30, v25);
        v31 = v26;
        v5 = v25;
        v29(v31, v25);
        if ((v28 & 1) == 0)
        {
          break;
        }

LABEL_5:
        result = sub_10013CDDC(&v56);
        ++v15;
        v14 += 10;
        if (v11 == v10)
        {
          result = v47;
          goto LABEL_25;
        }
      }

      v32 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v32;
      if (isUniquelyReferenced_nonNull_native)
      {
        result = v32;
      }

      else
      {
        sub_101124390(0, v32[2] + 1, 1);
        result = v66;
      }

      v35 = result[2];
      v34 = result[3];
      if (v35 >= v34 >> 1)
      {
        sub_101124390((v34 > 1), v35 + 1, 1);
        result = v66;
      }

      result[2] = v35 + 1;
      v36 = &result[20 * v35];
      v37 = v57;
      v36[2] = v56;
      v36[3] = v37;
      v38 = v58;
      v39 = v59;
      v40 = v61;
      v36[6] = v60;
      v36[7] = v40;
      v36[4] = v38;
      v36[5] = v39;
      v41 = v62;
      v42 = v63;
      v43 = v65;
      v36[10] = v64;
      v36[11] = v43;
      v36[8] = v41;
      v36[9] = v42;
      v12 = v46;
      if (v11 == v10)
      {
        goto LABEL_25;
      }
    }
  }

  result = _swiftEmptyArrayStorage;
LABEL_25:
  v44 = result[2];

  return v44;
}

uint64_t sub_10013C3C0(uint64_t a1, char a2, uint64_t a3)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    v7 = MobileGestalt_copy_productType_obj();

    if (v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = sub_10013B9D8(v8, v10);

    if (v11 == 5)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 == 3 || v11 == 0;
    }

    v59 = &type metadata for KoreaFeatureFlag;
    v60 = sub_10013CCC4();
    v13 = isFeatureEnabled(_:)();
    sub_100007BAC(&v57);
    if (v13 & 1) == 0 && (sub_100EF9844())
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177B780);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = 2;
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "SearchpartyD is running on Korean SKU, separation alerts will be disabled.", v18, 2u);
      }

      else
      {

        return 2;
      }

      return v17;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_1000076D4(v23, qword_10177B780);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v24, v25))
        {
          goto LABEL_40;
        }

        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = "No location has been provided, most likely due to being in unsupported region.";
        goto LABEL_39;
      }

      if (a3 == 2)
      {
        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_1000076D4(v19, qword_10177B780);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v20, v21, "SearchpartyD has no access to location data.", v22, 2u);
        }

        return 3;
      }

      if (sub_1010E1130())
      {
        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_1000076D4(v33, qword_10177B780);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v24, v25))
        {
          goto LABEL_40;
        }

        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = "Provided location is within unsupported region.";
LABEL_39:
        _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 2u);

LABEL_40:

        return 0;
      }

      if (a2)
      {
        if (a2 == 3)
        {
          if (v12)
          {
            if (qword_101694B70 != -1)
            {
              swift_once();
            }

            v39 = type metadata accessor for Logger();
            sub_1000076D4(v39, qword_10177B780);
            v35 = Logger.logObject.getter();
            v36 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v35, v36))
            {
              goto LABEL_56;
            }

            v37 = swift_slowAlloc();
            *v37 = 0;
            goto LABEL_55;
          }
        }

        else if (a2 == 1 && v12)
        {
          if (qword_101694B70 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_1000076D4(v34, qword_10177B780);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v35, v36))
          {
            goto LABEL_56;
          }

          v37 = swift_slowAlloc();
          *v37 = 0;
LABEL_55:
          _os_log_impl(&_mh_execute_header, v35, v36, v38, v37, 2u);

LABEL_56:

          return 7;
        }

        v57 = 0;
        v58 = 0xE000000000000000;
        _StringGuts.grow(_:)(76);
        v40._countAndFlagsBits = 0x656369766544656DLL;
        v40._object = 0xEF203A6574617453;
        String.append(_:)(v40);
        v41._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v41);

        v42._object = 0x800000010134BE40;
        v42._countAndFlagsBits = 0xD000000000000029;
        String.append(_:)(v42);
        if (v12)
        {
          v43 = 1702195828;
        }

        else
        {
          v43 = 0x65736C6166;
        }

        if (v12)
        {
          v44 = 0xE400000000000000;
        }

        else
        {
          v44 = 0xE500000000000000;
        }

        v45 = v44;
        String.append(_:)(*&v43);

        v46._countAndFlagsBits = 0x436563697665640ALL;
        v46._object = 0xEE00203A746E756FLL;
        String.append(_:)(v46);
        v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v47);

        v49 = v57;
        v48 = v58;
        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_1000076D4(v50, qword_10177B780);

        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v57 = v54;
          *v53 = 136315138;
          v55 = sub_1000136BC(v49, v48, &v57);

          *(v53 + 4) = v55;
          _os_log_impl(&_mh_execute_header, v51, v52, "This device does not support Separation Monitoring \n%s", v53, 0xCu);
          sub_100007BAC(v54);
        }

        else
        {
        }

        if (v12)
        {
          return 4;
        }

        else
        {
          return 1;
        }
      }

      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_1000076D4(v56, qword_10177B780);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v29, v30))
      {
LABEL_33:

        return 6;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Unknown me device state, can't decide yet.";
    }

    else
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000076D4(v28, qword_10177B780);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_33;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Location has not been yet acquired, can't decide state yet.";
    }

    _os_log_impl(&_mh_execute_header, v29, v30, v32, v31, 2u);

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

unint64_t sub_10013CCC4()
{
  result = qword_101697BC0;
  if (!qword_101697BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697BC0);
  }

  return result;
}

uint64_t sub_10013CD74(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101697BC8, &qword_10138CBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10013CE30()
{
  result = qword_101697BD0;
  if (!qword_101697BD0)
  {
    type metadata accessor for SystemVersionNumber();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697BD0);
  }

  return result;
}

unint64_t sub_10013CE9C()
{
  result = qword_101697BD8;
  if (!qword_101697BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697BD8);
  }

  return result;
}

uint64_t (*sub_10013D298(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = _swiftEmptyArrayStorage;
    v22 = result;
    v23 = a3;
    v21 = v5;
    while (v7 < *(v4 + 16))
    {
      sub_10001F280(v8, v27);
      v10 = v6(v27);
      if (v3)
      {
        sub_100007BAC(v27);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_10000A748(v27, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v9[2] + 1, 1);
          v9 = v28;
        }

        v13 = v9[2];
        v12 = v9[3];
        if (v13 >= v12 >> 1)
        {
          sub_100025B1C((v12 > 1), v13 + 1, 1);
        }

        v14 = v25;
        v15 = v26;
        v16 = sub_10015049C(v24, v25);
        __chkstk_darwin(v16);
        v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v19 + 16))(v18);
        sub_1006252D4(v13, v18, &v28, v14, v15);
        result = sub_100007BAC(v24);
        v9 = v28;
        v6 = v22;
        v4 = v23;
        v5 = v21;
      }

      else
      {
        result = sub_100007BAC(v27);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_10013D5D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (v7 < *(a3 + 16))
    {
      v14 = *(a3 + 16 * v7 + 32);
      sub_100017D5C(v14, *(&v14 + 1));
      v9 = v6(&v14);
      if (v3)
      {
        sub_100016590(v14, *(&v14 + 1));

        goto LABEL_15;
      }

      if (v9)
      {
        v13 = v14;
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1011244D8(0, v8[2] + 1, 1);
          v8 = v15;
        }

        v11 = v8[2];
        v10 = v8[3];
        v12 = v13;
        if (v11 >= v10 >> 1)
        {
          result = sub_1011244D8((v10 > 1), v11 + 1, 1);
          v12 = v13;
          v8 = v15;
        }

        v8[2] = v11 + 1;
        *&v8[2 * v11 + 4] = v12;
      }

      else
      {
        result = sub_100016590(v14, *(&v14 + 1));
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_15:

    return v8;
  }

  return result;
}

void *sub_10013D9A0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(BOOL, uint64_t, uint64_t))
{
  v26 = a6;
  v6 = a5;
  v32 = a1;
  v33 = a2;
  v9 = sub_1000BC4D4(a4, a5);
  v31 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v30 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v34 = &v26 - v13;
  v29 = *(a3 + 16);
  if (v29)
  {
    v14 = 0;
    v15 = _swiftEmptyArrayStorage;
    v27 = v6;
    v28 = a3;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v17 = *(v31 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v14;
      v20 = v34;
      sub_1000D2A70(v19, v34, a4, v6);
      v21 = v35;
      v22 = v32(v20);
      if (v21)
      {
        sub_10000B3A8(v34, a4, v6);

        return v15;
      }

      v35 = 0;
      if (v22)
      {
        sub_1000D2AD8(v34, v30, a4, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26(0, v15[2] + 1, 1);
          v15 = v36;
        }

        v25 = v15[2];
        v24 = v15[3];
        if (v25 >= v24 >> 1)
        {
          v26(v24 > 1, v25 + 1, 1);
          v15 = v36;
        }

        v15[2] = v25 + 1;
        v6 = v27;
        result = sub_1000D2AD8(v30, v15 + v16 + v25 * v17, a4, v27);
        a3 = v28;
      }

      else
      {
        result = sub_10000B3A8(v34, a4, v6);
        a3 = v18;
      }

      if (v29 == ++v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_14:

    return v15;
  }

  return result;
}

uint64_t sub_10013DCB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(BOOL, uint64_t, uint64_t))
{
  v7 = a3;
  v21 = *(a3 + 16);
  if (v21)
  {
    v10 = result;
    v11 = 0;
    v12 = a3 + 32;
    v13 = _swiftEmptyArrayStorage;
    v19 = result;
    while (v11 < *(v7 + 16))
    {
      sub_1000D2A70(v12, v26, a4, a5);
      v14 = v10(v26);
      if (v6)
      {
        sub_10000B3A8(v26, a4, a5);

        goto LABEL_15;
      }

      if (v14)
      {
        v22 = v26[0];
        v23 = v26[1];
        v24 = v26[2];
        v25 = v27;
        result = swift_isUniquelyReferenced_nonNull_native();
        v28 = v13;
        if ((result & 1) == 0)
        {
          result = a6(0, v13[2] + 1, 1);
          v13 = v28;
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          result = a6(v15 > 1, v16 + 1, 1);
          v13 = v28;
        }

        v13[2] = v16 + 1;
        v17 = &v13[7 * v16];
        v17[10] = v25;
        *(v17 + 3) = v23;
        *(v17 + 4) = v24;
        *(v17 + 2) = v22;
        v7 = a3;
        v10 = v19;
      }

      else
      {
        result = sub_10000B3A8(v26, a4, a5);
      }

      ++v11;
      v12 += 56;
      if (v21 == v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_15:

    return v13;
  }

  return result;
}

void *sub_10013DEC8(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

uint64_t (*sub_10013E074(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = _swiftEmptyArrayStorage;
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_10001F280(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        sub_100007BAC(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_10000A748(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101125580(0, v9[2] + 1, 1);
          v9 = v17;
        }

        v13 = v9[2];
        v12 = v9[3];
        if (v13 >= v12 >> 1)
        {
          sub_101125580((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        v9[2] = v13 + 1;
        result = sub_10000A748(v15, &v9[5 * v13 + 4]);
        v6 = v14;
      }

      else
      {
        result = sub_100007BAC(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_15:

    return v9;
  }

  return result;
}

void *sub_10013E228(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(BOOL, uint64_t, uint64_t))
{
  v31 = a6;
  v42 = sub_1000BC4D4(a4, a5);
  v10 = __chkstk_darwin(v42);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v41 = &v31 - v14;
  v38 = *(a3 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v37 = v13 + 16;
    v40 = _swiftEmptyArrayStorage;
    v33 = a2;
    v34 = a3;
    v32 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = *(v13 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v13;
      v21 = a1;
      v22 = v41;
      (*(v13 + 16))(v41, v19, v42);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v6)
      {
        (*v35)(v41, v42);
        v30 = v40;

        return v30;
      }

      if (v24)
      {
        v25 = *v36;
        (*v36)(v39, v41, v42);
        v26 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31(0, v26[2] + 1, 1);
          v26 = v43;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          v31(v28 > 1, v29 + 1, 1);
          v26 = v43;
        }

        v26[2] = v29 + 1;
        v40 = v26;
        result = (v25)(v26 + v16 + v29 * v17, v39, v42);
        a3 = v34;
        a1 = v32;
      }

      else
      {
        result = (*v35)(v41, v42);
        a3 = v18;
      }

      ++v15;
      v13 = v20;
      if (v38 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
LABEL_14:

    return v40;
  }

  return result;
}

uint64_t sub_10013E5C8()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ServerConfigurationProvider(0);
    swift_allocObject();
    v1 = sub_1009405D4();
    *(v2 + 64) = v1;
  }

  return v1;
}

uint64_t sub_10013E63C()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = v0;
    type metadata accessor for UserDefaultsConfigurationProvider();
    swift_allocObject();
    v1 = sub_1011D4264();
    *(v2 + 72) = v1;
  }

  return v1;
}

unint64_t sub_10013E6BC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100150E20(*a1);
  *a2 = result;
  return result;
}

void sub_10013E6EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0xE500000000000000;
  v6 = 0x73656C6F72;
  v7 = 0xEC00000073746C75;
  v8 = 0x6166654472657375;
  if (v2 != 3)
  {
    v8 = 0x5365636976726573;
    v7 = 0xEF73676E69747465;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x726576726573;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_10013E798()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013E888(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10013E964(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void *sub_10013EB00(char *a1)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for URL();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v37 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v36 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  *&v34 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = _swiftEmptyArrayStorage;
  v11 = [objc_allocWithZone(FMStateCapture) init];
  aBlock[4] = sub_100695DF8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10015013C;
  aBlock[3] = &unk_10160FB38;
  v12 = _Block_copy(aBlock);

  [v11 setStateCaptureBlock:v12];
  _Block_release(v12);
  v2[3] = v11;
  sub_1000BC488();
  v31[1] = "@NSDictionary8@?0";
  v32 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v13 = *(v8 + 104);
  v33 = v8 + 104;
  v35 = v13;
  v13(v10);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001505C0(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v2[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v35(v10, v32, v34);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  v14 = v2;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v2[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000BC4D4(&qword_101697DD8, &unk_10138CDD0);
  v15 = *(type metadata accessor for DefaultConfigurationLayer(0) - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v34 = xmmword_101385D80;
  *(v17 + 16) = xmmword_101385D80;
  sub_1008F826C(v17 + v16);
  v2[7] = v17;
  v2[8] = 0;
  v2[9] = 0;
  v2[10] = 0;
  LODWORD(v36) = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v18 = swift_allocObject();
  *(v18 + 16) = v34;
  v19 = v37;
  v20 = v38;
  *&v34 = *(v38 + 16);
  v22 = v39;
  v21 = v40;
  (v34)(v37, v40, v39);
  sub_1001505C0(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v23 = dispatch thunk of CustomStringConvertible.description.getter();
  v25 = v24;
  v26 = *(v20 + 8);
  v26(v19, v22);
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_100008C00();
  *(v18 + 32) = v23;
  *(v18 + 40) = v25;
  os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v35, "ConfigurationCoordinator created with url %{public}@", 52, 2, v18);

  (v34)(v14 + OBJC_IVAR____TtC12searchpartyd24ConfigurationCoordinator_rootURL, v21, v22);
  v27 = v14[5];
  type metadata accessor for QueueSynchronizer();
  swift_allocObject();
  v28 = v27;
  v29 = QueueSynchronizer.init(queue:)();
  v26(v21, v22);
  v14[6] = v29;
  return v14;
}

uint64_t sub_10013F190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a3;
  v58 = a2;
  v57 = a1;
  v61 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v61 - 8);
  __chkstk_darwin(v61);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v50 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = &v42 - v7;
  v8 = type metadata accessor for ServiceStateConfigurationLayer(0);
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  sub_10014023C(0);
  sub_10013E63C();
  v15 = type metadata accessor for ConfigurationCoordinator(0);
  v72 = v15;
  v73 = &off_10160FA10;
  aBlock[0] = v3;

  sub_1011D44D4(aBlock, v14);

  v16 = *(v12 + 8);
  v16(v14, v11);
  sub_100007BAC(aBlock);
  v72 = &type metadata for UserDefaultsConfigurationLayer;
  v73 = &off_10166A3C8;
  v17 = *(v3 + 48);
  v64 = 3;
  v65 = v4;
  v66 = aBlock;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v45 = v17;
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100007BAC(aBlock);
  sub_1000034A4();
  v72 = v15;
  v73 = &off_10160FA10;
  v53 = v15;
  aBlock[0] = v4;

  sub_100EEC2D8(aBlock, v14);

  v49 = v14;
  v52 = v11;
  v51 = v12 + 8;
  v47 = v16;
  v16(v14, v11);
  sub_100007BAC(aBlock);

  v18 = sub_100003518();
  v19 = [v18 stringForKey:SPSettingsServiceStateKey];

  if (!v19)
  {
    if (qword_101694A88 != -1)
    {
      swift_once();
    }

    v19 = qword_10177B658;
  }

  v44 = 0;
  v43 = sub_100EEA744();
  sub_100EEAC04(&v10[v8[6]]);
  sub_100EEB5B4(&v10[v8[7]]);
  v20 = sub_100EEB5E0();
  v22 = v21;
  sub_100EEB8F8(&v10[v8[9]]);
  v23 = v10;
  v24 = sub_100003518();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 BOOLForKey:v25];

  v27 = v43;
  *v23 = v19;
  v23[1] = v27;
  v28 = v23 + v8[8];
  *v28 = v20;
  v28[8] = v22 & 1;
  *(v23 + v8[10]) = v26;
  v46 = v23;
  v72 = v8;
  v73 = &off_10165A058;
  v29 = sub_1000280DC(aBlock);
  v30 = sub_100150B0C(v23, v29, type metadata accessor for ServiceStateConfigurationLayer);
  __chkstk_darwin(v30);
  *(&v42 - 48) = 4;
  *(&v42 - 5) = v4;
  *(&v42 - 4) = aBlock;
  *(&v42 - 24) = 0;
  *(&v42 - 2) = 0;
  *(&v42 - 1) = 0;
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100007BAC(aBlock);
  sub_10013E5C8();
  v31 = v53;
  v72 = v53;
  v73 = &off_10160FA10;
  aBlock[0] = v4;

  v32 = v49;
  sub_1009438EC(aBlock, v49);

  v47(v32, v52);
  sub_100007BAC(aBlock);
  v72 = v31;
  v73 = &off_10160F9E8;
  aBlock[0] = v4;

  v33 = v56;
  sub_1004F33B4(aBlock, v56);
  (*(v54 + 8))(v33, v55);
  sub_100007BAC(aBlock);
  v34 = swift_allocObject();
  v35 = v58;
  v36 = v59;
  *(v34 + 16) = v58;
  *(v34 + 24) = v36;
  v73 = sub_100150B9C;
  v74 = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  v72 = &unk_101610290;
  v37 = _Block_copy(aBlock);
  sub_100012908(v35, v36);
  v38 = v60;
  static DispatchQoS.unspecified.getter();
  v70 = _swiftEmptyArrayStorage;
  sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v39 = v48;
  v40 = v61;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);
  (*(v63 + 8))(v39, v40);
  (*(v50 + 8))(v38, v62);
  sub_100150BA4(v46, type metadata accessor for ServiceStateConfigurationLayer);
}

uint64_t sub_10013FA40(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  v15 = v18;
  *(v14 + 16) = a1;
  *(v14 + 24) = v15;
  aBlock[4] = sub_100150C44;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016102E0;
  v16 = _Block_copy(aBlock);
  sub_100012908(a1, v15);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v5, v3);
  (*(v6 + 8))(v8, v19);
}

uint64_t sub_10013FE3C(uint64_t a1)
{

  v2 = sub_1010735A8(v1);

  sub_10013FF08(v2, 0);

  v3 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    v5 = v3;
    swift_once();
    v3 = v5;
  }

  return os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_10177C3D0, "ConfigurationCoordinator has reloaded in memory with defaults, userDefaults, serviceState.", 90, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_10013FF08(uint64_t a1, int a2)
{
  v3 = v2;
  v16 = a2;
  v5 = type metadata accessor for URL();
  v15 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_assert_queue_V2(*(v2 + 40));
  v8 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    v14 = v8;
    swift_once();
    v8 = v14;
  }

  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10177C3D0, "ConfigurationCoordinator persisting updated config.", 51, 2, _swiftEmptyArrayStorage, v15);
  v9 = *(v3 + 56);
  *(v3 + 56) = a1;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();

  PropertyListEncoder.init()();
  v17 = a1;
  sub_100150AB8();
  v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v12 = v11;

  URL.appendingPathComponent(_:isDirectory:)();
  Data.write(to:excludeFromBackup:options:)();
  (*(v15 + 8))(v7, v5);
  sub_100016590(v10, v12);
  if (sub_10039014C(v9, a1) & 1) == 0 && (v16)
  {
    sub_100140940(v9, a1);
  }
}

uint64_t sub_10014023C(char a1)
{
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_100150A58;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101610240;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_100140498(uint64_t a1, int a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer(0);
  __chkstk_darwin(v3 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = a2;
    v11 = static os_log_type_t.default.getter();
    if (qword_101695088 != -1)
    {
      v22 = v11;
      swift_once();
      v11 = v22;
    }

    v12 = qword_10177C3D0;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177C3D0, "ConfigurationCoordinator restoring config from disk", 51, 2, _swiftEmptyArrayStorage);
    URL.appendingPathComponent(_:isDirectory:)();
    v13 = Data.init(contentsOf:options:)();
    v23[1] = v12;
    v14 = v13;
    v16 = v15;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100150A64();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    v17 = v25;
    sub_1008F826C(v5);
    v18 = sub_1010738E0(v5, v17);

    sub_100150BA4(v5, type metadata accessor for DefaultConfigurationLayer);
    if (v24)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v20 = *(Strong + 56);

        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_100140940(v20, v18);
        }
      }
    }

    swift_beginAccess();
    v21 = swift_weakLoadStrong();
    sub_100016590(v14, v16);
    if (v21)
    {

      (*(v7 + 8))(v9, v6);
      *(v21 + 56) = v18;
    }

    else
    {

      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_100140940(void *a1, uint64_t a2)
{
  v611 = type metadata accessor for Date();
  v614 = *(v611 - 8);
  __chkstk_darwin(v611);
  v599 = &v595 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v613 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v6 = __chkstk_darwin(v613);
  v610 = &v595 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v602 = &v595 - v8;
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = __chkstk_darwin(v9 - 8);
  v598 = &v595 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v609 = (&v595 - v13);
  v14 = __chkstk_darwin(v12);
  v16 = (&v595 - v15);
  v17 = __chkstk_darwin(v14);
  v597 = &v595 - v18;
  v19 = __chkstk_darwin(v17);
  v607 = (&v595 - v20);
  __chkstk_darwin(v19);
  v608 = (&v595 - v21);
  v601 = type metadata accessor for UUID();
  v22 = *(v601 - 8);
  __chkstk_darwin(v601);
  v595 = &v595 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v600 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v600);
  v603 = &v595 - v24;
  v25 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v26 = __chkstk_darwin(v25 - 8);
  v596 = &v595 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v606 = (&v595 - v29);
  __chkstk_darwin(v28);
  v612 = (&v595 - v30);
  v31 = type metadata accessor for Mirror();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v595 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v615 = v2;
  dispatch_assert_queue_V2(*(v2 + 40));
  v35 = static os_log_type_t.default.getter();
  v36 = sub_100F4D180();
  os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, *v36, "ConfigurationCoordinator diffing for subscribers...", 51, 2, _swiftEmptyArrayStorage);
  v37 = swift_allocObject();
  v618 = type metadata accessor for DefaultConfigurationLayer(0);
  v38 = sub_1000280DC(&v617);
  sub_1008F826C(v38);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v32 + 8))(v34, v31);
  v39 = dispatch thunk of _AnyCollectionBox._count.getter();

  if (__OFSUB__(v39, 1))
  {
    __break(1u);
    return result;
  }

  v605 = v16;
  *(v37 + 16) = v39 - 1;
  v41 = sub_101073A3C(a1);
  v43 = v42;
  v44 = sub_101073A3C(a2);
  v46 = v45;
  v47 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v41, v43, v44, v45);
  sub_100016590(v44, v46);
  sub_100016590(v41, v43);
  if (!v47)
  {
    KeyPath = swift_getKeyPath();
    sub_1001451FC(a2, KeyPath);
  }

  sub_1001450F4(v37);
  v49 = sub_101073B58(a1);
  v50 = sub_101073B58(a2);
  v604 = v22;
  if (v49 != v50)
  {
    v51 = swift_getKeyPath();
    sub_1001459A0(a2, v51);
  }

  sub_1001450F4(v37);
  sub_10107341C(a1);
  v53 = v52;
  sub_10107341C(a2);
  v54 = v612;
  if (v53 != v55)
  {
    v56 = swift_getKeyPath();
    sub_100146144(a2, v56);
  }

  sub_1001450F4(v37);
  sub_101073B74(a1);
  v58 = v57;
  sub_101073B74(a2);
  if (v58 != v59)
  {
    v60 = swift_getKeyPath();
    sub_100146144(a2, v60);
  }

  sub_1001450F4(v37);
  v61 = sub_101073B80(a1) & 1;
  if (v61 != (sub_101073B80(a2) & 1))
  {
    v62 = swift_getKeyPath();
    sub_1001468E8(a2, v62);
  }

  sub_1001450F4(v37);
  v63 = sub_101073B8C(a1);
  v64 = sub_101073B8C(a2);
  v65 = sub_10038ED80(v63, v64);

  if ((v65 & 1) == 0)
  {
    v66 = swift_getKeyPath();
    sub_10014708C(a2, v66);
  }

  sub_1001450F4(v37);
  v67 = sub_101073BA8(a1) & 1;
  if (v67 != (sub_101073BA8(a2) & 1))
  {
    v68 = swift_getKeyPath();
    sub_1001468E8(a2, v68);
  }

  sub_1001450F4(v37);
  v69 = sub_101073BB4(a1);
  v71 = v70;
  if (v69 == sub_101073BB4(a2) && v71 == v72)
  {
  }

  else
  {
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v73 & 1) == 0)
    {
      v74 = swift_getKeyPath();
      sub_100147830(a2, v74);
    }
  }

  sub_1001450F4(v37);
  v75 = sub_101073BC0(a1);
  if (v75 != sub_101073BC0(a2))
  {
    v76 = swift_getKeyPath();
    sub_100147FD4(a2, v76);
  }

  sub_1001450F4(v37);
  v77 = sub_101073BDC(a1) & 1;
  if (v77 != (sub_101073BDC(a2) & 1))
  {
    v78 = swift_getKeyPath();
    sub_1001468E8(a2, v78);
  }

  sub_1001450F4(v37);
  v79 = sub_101073BE8(a1) & 1;
  if (v79 != (sub_101073BE8(a2) & 1))
  {
    v80 = swift_getKeyPath();
    sub_1001468E8(a2, v80);
  }

  sub_1001450F4(v37);
  v81 = sub_101073BF4(a1);
  if (v81 != sub_101073BF4(a2))
  {
    v82 = swift_getKeyPath();
    sub_100147FD4(a2, v82);
  }

  sub_1001450F4(v37);
  v83 = sub_101073524(a1);
  if (v83 != sub_101073524(a2))
  {
    v84 = swift_getKeyPath();
    sub_100147FD4(a2, v84);
  }

  sub_1001450F4(v37);
  v85 = sub_101073C10(a1);
  if (v85 != sub_101073C10(a2))
  {
    v86 = swift_getKeyPath();
    sub_100147FD4(a2, v86);
  }

  sub_1001450F4(v37);
  v87 = sub_101073C2C(a1);
  if (v87 != sub_101073C2C(a2))
  {
    v88 = swift_getKeyPath();
    sub_100147FD4(a2, v88);
  }

  sub_1001450F4(v37);
  v89 = sub_101073C48(a1);
  if (v89 != sub_101073C48(a2))
  {
    v90 = swift_getKeyPath();
    sub_100147FD4(a2, v90);
  }

  sub_1001450F4(v37);
  sub_101073C64(a1);
  v92 = v91;
  sub_101073C64(a2);
  if (v92 != v93)
  {
    v94 = swift_getKeyPath();
    sub_100146144(a2, v94);
  }

  sub_1001450F4(v37);
  v95 = sub_101073C70(a1);
  if (v95 != sub_101073C70(a2))
  {
    v96 = swift_getKeyPath();
    sub_100147FD4(a2, v96);
  }

  sub_1001450F4(v37);
  v97 = sub_101073C8C(a1);
  if (v97 != sub_101073C8C(a2))
  {
    v98 = swift_getKeyPath();
    sub_100147FD4(a2, v98);
  }

  sub_1001450F4(v37);
  v99 = sub_101073CA8(a1);
  if (v99 != sub_101073CA8(a2))
  {
    v100 = swift_getKeyPath();
    sub_1001459A0(a2, v100);
  }

  sub_1001450F4(v37);
  sub_101073CC4(a1);
  v102 = v101;
  sub_101073CC4(a2);
  if (v102 != v103)
  {
    v104 = swift_getKeyPath();
    sub_100146144(a2, v104);
  }

  sub_1001450F4(v37);
  v105 = sub_101073CD0(a1);
  if (v105 != sub_101073CD0(a2))
  {
    v106 = swift_getKeyPath();
    sub_100147FD4(a2, v106);
  }

  sub_1001450F4(v37);
  v107 = sub_101073CEC(a1);
  if (v107 != sub_101073CEC(a2))
  {
    v108 = swift_getKeyPath();
    sub_100147FD4(a2, v108);
  }

  sub_1001450F4(v37);
  v109 = sub_101073D08(a1);
  if (v109 != sub_101073D08(a2))
  {
    v110 = swift_getKeyPath();
    sub_100147FD4(a2, v110);
  }

  sub_1001450F4(v37);
  v111 = sub_101073D24(a1);
  v112 = sub_101073D24(a2);
  v113 = sub_10038F634(v111, v112);

  if ((v113 & 1) == 0)
  {
    v114 = swift_getKeyPath();
    sub_100148778(a2, v114);
  }

  sub_1001450F4(v37);
  v115 = sub_101073E44(a1) & 1;
  if (v115 != (sub_101073E44(a2) & 1))
  {
    v116 = swift_getKeyPath();
    sub_1001468E8(a2, v116);
  }

  sub_1001450F4(v37);
  v117 = sub_101073E50(a1);
  v118 = sub_101073E50(a2);
  v119 = sub_100DE6F58(v117, v118);

  if ((v119 & 1) == 0)
  {
    v120 = swift_getKeyPath();
    sub_100148F1C(a2, v120);
  }

  sub_1001450F4(v37);
  v121 = sub_101073E6C(a1);
  if (v121 != sub_101073E6C(a2))
  {
    v122 = swift_getKeyPath();
    sub_100147FD4(a2, v122);
  }

  sub_1001450F4(v37);
  v123 = sub_101073E88(a1);
  if (v123 != sub_101073E88(a2))
  {
    v124 = swift_getKeyPath();
    sub_100147FD4(a2, v124);
  }

  sub_1001450F4(v37);
  v125 = sub_101073EA4(a1);
  if (v125 != sub_101073EA4(a2))
  {
    v126 = swift_getKeyPath();
    sub_100147FD4(a2, v126);
  }

  sub_1001450F4(v37);
  v127 = sub_101073EC0(a1);
  if (v127 != sub_101073EC0(a2))
  {
    v128 = swift_getKeyPath();
    sub_100147FD4(a2, v128);
  }

  sub_1001450F4(v37);
  v129 = sub_101073EDC(a1);
  if (v129 != sub_101073EDC(a2))
  {
    v130 = swift_getKeyPath();
    sub_100147FD4(a2, v130);
  }

  sub_1001450F4(v37);
  v131 = sub_101073EF8(a1);
  if (v131 != sub_101073EF8(a2))
  {
    v132 = swift_getKeyPath();
    sub_100147FD4(a2, v132);
  }

  sub_1001450F4(v37);
  v133 = sub_101073F14(a1);
  if (v133 != sub_101073F14(a2))
  {
    v134 = swift_getKeyPath();
    sub_100147FD4(a2, v134);
  }

  sub_1001450F4(v37);
  v135 = sub_101073F30(a1);
  if (v135 != sub_101073F30(a2))
  {
    v136 = swift_getKeyPath();
    sub_100147FD4(a2, v136);
  }

  sub_1001450F4(v37);
  v137 = sub_101073F4C(a1);
  if (v137 != sub_101073F4C(a2))
  {
    v138 = swift_getKeyPath();
    sub_100147FD4(a2, v138);
  }

  sub_1001450F4(v37);
  v139 = sub_101073F68(a1);
  if (v139 != sub_101073F68(a2))
  {
    v140 = swift_getKeyPath();
    sub_100147FD4(a2, v140);
  }

  sub_1001450F4(v37);
  v141 = sub_101073F84(a1) & 1;
  if (v141 != (sub_101073F84(a2) & 1))
  {
    v142 = swift_getKeyPath();
    sub_1001468E8(a2, v142);
  }

  sub_1001450F4(v37);
  v143 = sub_101073F90(a1);
  if (v143 != sub_101073F90(a2))
  {
    v144 = swift_getKeyPath();
    sub_100147FD4(a2, v144);
  }

  sub_1001450F4(v37);
  v145 = sub_101073FAC(a1);
  if (v145 != sub_101073FAC(a2))
  {
    v146 = swift_getKeyPath();
    sub_100147FD4(a2, v146);
  }

  sub_1001450F4(v37);
  v147 = sub_101073FC8(a1);
  if (v147 != sub_101073FC8(a2))
  {
    v148 = swift_getKeyPath();
    sub_100147FD4(a2, v148);
  }

  sub_1001450F4(v37);
  v149 = sub_101073FE4(a1);
  if (v149 != sub_101073FE4(a2))
  {
    v150 = swift_getKeyPath();
    sub_100147FD4(a2, v150);
  }

  sub_1001450F4(v37);
  v151 = sub_101074000(a1);
  if (v151 != sub_101074000(a2))
  {
    v152 = swift_getKeyPath();
    sub_100147FD4(a2, v152);
  }

  sub_1001450F4(v37);
  v153 = sub_10107401C(a1);
  if (v153 != sub_10107401C(a2))
  {
    v154 = swift_getKeyPath();
    sub_100147FD4(a2, v154);
  }

  sub_1001450F4(v37);
  v155 = sub_101074038(a1);
  if (v155 != sub_101074038(a2))
  {
    v156 = swift_getKeyPath();
    sub_100147FD4(a2, v156);
  }

  sub_1001450F4(v37);
  sub_101074054(a1);
  v158 = v157;
  sub_101074054(a2);
  if (v158 != v159)
  {
    v160 = swift_getKeyPath();
    sub_100146144(a2, v160);
  }

  sub_1001450F4(v37);
  sub_101074060(a1);
  v162 = v161;
  sub_101074060(a2);
  if (v162 != v163)
  {
    v164 = swift_getKeyPath();
    sub_100146144(a2, v164);
  }

  sub_1001450F4(v37);
  v165 = sub_10107406C(a1);
  v166 = sub_10107406C(a2);
  v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v169 = v168;
  if (v167 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v169 == v170)
  {
  }

  else
  {
    v171 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v171 & 1) == 0)
    {
      v172 = swift_getKeyPath();
      sub_1001496C0(a2, v172);
    }
  }

  sub_1001450F4(v37);
  v173 = sub_10107416C(a1);
  v174 = sub_10107416C(a2);
  v175 = sub_10038F7B4(v173, v174);

  if ((v175 & 1) == 0)
  {
    v176 = swift_getKeyPath();
    sub_100149E64(a2, v176);
  }

  sub_1001450F4(v37);
  v177 = sub_101074188(a1);
  v178 = sub_101074188(a2);
  v179 = v606;
  if (v177 != v178)
  {
    v180 = swift_getKeyPath();
    sub_100147FD4(a2, v180);
  }

  sub_1001450F4(v37);
  v181 = sub_1010741A4(a1);
  if (v181 != sub_1010741A4(a2))
  {
    v182 = swift_getKeyPath();
    sub_100147FD4(a2, v182);
  }

  sub_1001450F4(v37);
  v183 = sub_1010741C0(a1);
  if (v183 != sub_1010741C0(a2))
  {
    v184 = swift_getKeyPath();
    sub_100147FD4(a2, v184);
  }

  sub_1001450F4(v37);
  v185 = sub_1010741DC(a1);
  if (v185 != sub_1010741DC(a2))
  {
    v186 = swift_getKeyPath();
    sub_100147FD4(a2, v186);
  }

  sub_1001450F4(v37);
  v187 = sub_1010741F8(a1);
  if (v187 != sub_1010741F8(a2))
  {
    v188 = swift_getKeyPath();
    sub_100147FD4(a2, v188);
  }

  sub_1001450F4(v37);
  v189 = sub_101074214(a1) & 1;
  if (v189 != (sub_101074214(a2) & 1))
  {
    v190 = swift_getKeyPath();
    sub_1001468E8(a2, v190);
  }

  sub_1001450F4(v37);
  sub_101073578(a1, v54);
  sub_101073578(a2, v179);
  v191 = *(v600 + 48);
  v192 = v603;
  sub_1000D2A70(v54, v603, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v179, v192 + v191, &qword_1016980D0, &unk_10138F3B0);
  v193 = *(v604 + 6);
  v194 = v601;
  if (v193(v192, 1, v601) == 1)
  {
    sub_10000B3A8(v179, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v54, &qword_1016980D0, &unk_10138F3B0);
    v195 = v193(v192 + v191, 1, v194);
    v196 = v613;
    v197 = v608;
    if (v195 == 1)
    {
      sub_10000B3A8(v192, &qword_1016980D0, &unk_10138F3B0);
      v198 = v607;
      goto LABEL_125;
    }

    goto LABEL_123;
  }

  v199 = v596;
  sub_1000D2A70(v192, v596, &qword_1016980D0, &unk_10138F3B0);
  if (v193(v192 + v191, 1, v194) == 1)
  {
    sub_10000B3A8(v606, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v612, &qword_1016980D0, &unk_10138F3B0);
    (*(v604 + 1))(v199, v194);
    v196 = v613;
    v197 = v608;
LABEL_123:
    sub_10000B3A8(v192, &qword_1016AF880, &unk_10138CE20);
    v198 = v607;
LABEL_124:
    v200 = swift_getKeyPath();
    sub_10014A608(a2, v200);

    goto LABEL_125;
  }

  v582 = v604;
  v583 = v595;
  (*(v604 + 4))(v595, v192 + v191, v194);
  sub_1001505C0(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  LODWORD(v600) = dispatch thunk of static Equatable.== infix(_:_:)();
  v584 = *(v582 + 1);
  v584(v583, v194);
  sub_10000B3A8(v606, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v612, &qword_1016980D0, &unk_10138F3B0);
  v584(v199, v194);
  sub_10000B3A8(v603, &qword_1016980D0, &unk_10138F3B0);
  v196 = v613;
  v197 = v608;
  v198 = v607;
  if ((v600 & 1) == 0)
  {
    goto LABEL_124;
  }

LABEL_125:
  sub_1001450F4(v37);
  v612 = a1;
  sub_101074220(a1, v197);
  sub_101074220(a2, v198);
  v201 = *(v196 + 48);
  v202 = v602;
  sub_1000D2A70(v197, v602, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v198, v202 + v201, &unk_101696900, &unk_10138B1E0);
  v204 = v614 + 48;
  v203 = *(v614 + 48);
  v205 = v611;
  v206 = v203(v202, 1, v611);
  v604 = v203;
  v606 = v204;
  if (v206 == 1)
  {
    sub_10000B3A8(v198, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v197, &unk_101696900, &unk_10138B1E0);
    v207 = v203(v202 + v201, 1, v205);
    v208 = v612;
    if (v207 == 1)
    {
      sub_10000B3A8(v202, &unk_101696900, &unk_10138B1E0);
      v209 = v609;
      v210 = v613;
      goto LABEL_132;
    }

    goto LABEL_130;
  }

  v211 = v597;
  sub_1000D2A70(v202, v597, &unk_101696900, &unk_10138B1E0);
  if (v203(v202 + v201, 1, v205) == 1)
  {
    sub_10000B3A8(v607, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v608, &unk_101696900, &unk_10138B1E0);
    (*(v614 + 8))(v211, v205);
    v208 = v612;
LABEL_130:
    sub_10000B3A8(v202, &unk_1016B1660, &unk_10138CE10);
    v209 = v609;
    v210 = v613;
LABEL_131:
    v212 = swift_getKeyPath();
    sub_10014ADAC(a2, v212);

    goto LABEL_132;
  }

  v585 = v614;
  v586 = v599;
  (*(v614 + 32))(v599, v202 + v201, v205);
  sub_1001505C0(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v587 = v211;
  v588 = dispatch thunk of static Equatable.== infix(_:_:)();
  v589 = *(v585 + 8);
  v589(v586, v611);
  sub_10000B3A8(v607, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v608, &unk_101696900, &unk_10138B1E0);
  v589(v587, v611);
  v210 = v613;
  v205 = v611;
  sub_10000B3A8(v202, &unk_101696900, &unk_10138B1E0);
  v209 = v609;
  v208 = v612;
  if ((v588 & 1) == 0)
  {
    goto LABEL_131;
  }

LABEL_132:
  sub_1001450F4(v37);
  v213 = sub_101074250(v208);
  v215 = v214;
  v216 = sub_101074250(a2);
  if (v215)
  {
    if (v217)
    {
      goto LABEL_138;
    }

LABEL_137:
    v218 = swift_getKeyPath();
    sub_10014B550(a2, v218);

    goto LABEL_138;
  }

  if ((v217 & 1) != 0 || v213 != v216)
  {
    goto LABEL_137;
  }

LABEL_138:
  sub_1001450F4(v37);
  v219 = v605;
  sub_1010742A8(v208, v605);
  sub_1010742A8(a2, v209);
  v220 = *(v210 + 48);
  v221 = v610;
  sub_1000D2A70(v219, v610, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v209, v221 + v220, &unk_101696900, &unk_10138B1E0);
  v222 = v604;
  if (v604(v221, 1, v205) != 1)
  {
    v226 = v598;
    sub_1000D2A70(v221, v598, &unk_101696900, &unk_10138B1E0);
    if (v222(v221 + v220, 1, v205) != 1)
    {
      v590 = v614;
      v591 = v599;
      (*(v614 + 32))(v599, v221 + v220, v205);
      sub_1001505C0(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v592 = v221;
      v593 = dispatch thunk of static Equatable.== infix(_:_:)();
      v594 = *(v590 + 8);
      v594(v591, v205);
      sub_10000B3A8(v609, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v605, &unk_101696900, &unk_10138B1E0);
      v594(v226, v205);
      sub_10000B3A8(v592, &unk_101696900, &unk_10138B1E0);
      v225 = v612;
      if (v593)
      {
        goto LABEL_145;
      }

      goto LABEL_144;
    }

    sub_10000B3A8(v609, &unk_101696900, &unk_10138B1E0);
    v223 = v610;
    sub_10000B3A8(v605, &unk_101696900, &unk_10138B1E0);
    (*(v614 + 8))(v226, v205);
    v225 = v612;
LABEL_143:
    sub_10000B3A8(v223, &unk_1016B1660, &unk_10138CE10);
LABEL_144:
    v227 = swift_getKeyPath();
    sub_10014ADAC(a2, v227);

    goto LABEL_145;
  }

  sub_10000B3A8(v209, &unk_101696900, &unk_10138B1E0);
  v223 = v610;
  sub_10000B3A8(v219, &unk_101696900, &unk_10138B1E0);
  v224 = v222(v223 + v220, 1, v205);
  v225 = v612;
  if (v224 != 1)
  {
    goto LABEL_143;
  }

  sub_10000B3A8(v223, &unk_101696900, &unk_10138B1E0);
LABEL_145:
  sub_1001450F4(v37);
  v228 = sub_101074350(v225);
  if (v228 != sub_101074350(a2))
  {
    v229 = swift_getKeyPath();
    sub_100147FD4(a2, v229);
  }

  sub_1001450F4(v37);
  v230 = sub_10107436C(v225);
  if (v230 != sub_10107436C(a2))
  {
    v231 = swift_getKeyPath();
    sub_100147FD4(a2, v231);
  }

  sub_1001450F4(v37);
  sub_101074388(v225);
  v233 = v232;
  sub_101074388(a2);
  if (v233 != v234)
  {
    v235 = swift_getKeyPath();
    sub_100146144(a2, v235);
  }

  sub_1001450F4(v37);
  sub_101074394(v225);
  v237 = v236;
  sub_101074394(a2);
  if (v237 != v238)
  {
    v239 = swift_getKeyPath();
    sub_100146144(a2, v239);
  }

  sub_1001450F4(v37);
  sub_1010743A0(v225);
  v241 = v240;
  sub_1010743A0(a2);
  if (v241 != v242)
  {
    v243 = swift_getKeyPath();
    sub_100146144(a2, v243);
  }

  sub_1001450F4(v37);
  sub_1010743AC(v225);
  v245 = v244;
  sub_1010743AC(a2);
  if (v245 != v246)
  {
    v247 = swift_getKeyPath();
    sub_100146144(a2, v247);
  }

  sub_1001450F4(v37);
  sub_1010743B8(v225, v616);
  sub_1010743B8(a2, &v617);
  v248 = _s12searchpartyd19AllMacBeaconConfigsV23__derived_struct_equalsySbAC_ACtFZ_0(v616, &v617);
  sub_10015056C(&v617);
  sub_10015056C(v616);
  if (!v248)
  {
    v249 = swift_getKeyPath();
    sub_10014BCF4(a2, v249);
  }

  sub_1001450F4(v37);
  v250 = sub_101074528(v225) & 1;
  if (v250 != (sub_101074528(a2) & 1))
  {
    v251 = swift_getKeyPath();
    sub_1001468E8(a2, v251);
  }

  sub_1001450F4(v37);
  v252 = sub_101074534(v225) & 1;
  if (v252 != (sub_101074534(a2) & 1))
  {
    v253 = swift_getKeyPath();
    sub_1001468E8(a2, v253);
  }

  sub_1001450F4(v37);
  v254 = sub_101074540(v225) & 1;
  if (v254 != (sub_101074540(a2) & 1))
  {
    v255 = swift_getKeyPath();
    sub_1001468E8(a2, v255);
  }

  sub_1001450F4(v37);
  sub_10107454C(v225);
  v257 = v256;
  sub_10107454C(a2);
  if (v257 != v258)
  {
    v259 = swift_getKeyPath();
    sub_100146144(a2, v259);
  }

  sub_1001450F4(v37);
  sub_101074558(v225);
  v261 = v260;
  sub_101074558(a2);
  if (v261 != v262)
  {
    v263 = swift_getKeyPath();
    sub_100146144(a2, v263);
  }

  sub_1001450F4(v37);
  sub_101074564(v225);
  v265 = v264;
  sub_101074564(a2);
  if (v265 != v266)
  {
    v267 = swift_getKeyPath();
    sub_100146144(a2, v267);
  }

  sub_1001450F4(v37);
  sub_101074570(v225);
  v269 = v268;
  sub_101074570(a2);
  if (v269 != v270)
  {
    v271 = swift_getKeyPath();
    sub_100146144(a2, v271);
  }

  sub_1001450F4(v37);
  sub_10107457C(v225);
  v273 = v272;
  sub_10107457C(a2);
  if (v273 != v274)
  {
    v275 = swift_getKeyPath();
    sub_100146144(a2, v275);
  }

  sub_1001450F4(v37);
  sub_101074588(v225);
  v277 = v276;
  sub_101074588(a2);
  if (v277 != v278)
  {
    v279 = swift_getKeyPath();
    sub_100146144(a2, v279);
  }

  sub_1001450F4(v37);
  sub_101074594(v225);
  v281 = v280;
  sub_101074594(a2);
  if (v281 != v282)
  {
    v283 = swift_getKeyPath();
    sub_100146144(a2, v283);
  }

  sub_1001450F4(v37);
  sub_1010745A0(v225);
  v285 = v284;
  sub_1010745A0(a2);
  if (v285 != v286)
  {
    v287 = swift_getKeyPath();
    sub_100146144(a2, v287);
  }

  sub_1001450F4(v37);
  v288 = sub_1010745AC(v225);
  v290 = v289;
  if (v288 == sub_1010745AC(a2) && v290 == v291)
  {
  }

  else
  {
    v292 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v292 & 1) == 0)
    {
      v293 = swift_getKeyPath();
      sub_100147830(a2, v293);
    }
  }

  sub_1001450F4(v37);
  v294 = sub_1010745B8(v225);
  if (v294 != sub_1010745B8(a2))
  {
    v295 = swift_getKeyPath();
    sub_100147FD4(a2, v295);
  }

  sub_1001450F4(v37);
  v296 = sub_1010745D4(v225);
  v298 = v297;
  if (v296 == sub_1010745D4(a2) && v298 == v299)
  {
  }

  else
  {
    v300 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v300 & 1) == 0)
    {
      v301 = swift_getKeyPath();
      sub_100147830(a2, v301);
    }
  }

  sub_1001450F4(v37);
  v302 = sub_1010745E0(v225);
  if (v302 != sub_1010745E0(a2))
  {
    v303 = swift_getKeyPath();
    sub_100147FD4(a2, v303);
  }

  sub_1001450F4(v37);
  v304 = sub_1010745FC(v225);
  v305 = sub_1010745FC(a2);
  v306 = sub_10038F898(v304, v305);

  if ((v306 & 1) == 0)
  {
    v307 = swift_getKeyPath();
    sub_10014C498(a2, v307);
  }

  sub_1001450F4(v37);
  v308 = sub_101074618(v225);
  v310 = v309;
  if (v308 == sub_101074618(a2) && v310 == v311)
  {
  }

  else
  {
    v312 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v312 & 1) == 0)
    {
      v313 = swift_getKeyPath();
      sub_100147830(a2, v313);
    }
  }

  sub_1001450F4(v37);
  sub_101074624(v225);
  v315 = v314;
  sub_101074624(a2);
  if (v315 != v316)
  {
    v317 = swift_getKeyPath();
    sub_100146144(a2, v317);
  }

  sub_1001450F4(v37);
  v318 = sub_101074630(v225) & 1;
  if (v318 != (sub_101074630(a2) & 1))
  {
    v319 = swift_getKeyPath();
    sub_1001468E8(a2, v319);
  }

  sub_1001450F4(v37);
  v320 = sub_10107463C(v225) & 1;
  if (v320 != (sub_10107463C(a2) & 1))
  {
    v321 = swift_getKeyPath();
    sub_1001468E8(a2, v321);
  }

  sub_1001450F4(v37);
  v322 = sub_101074648(v225) & 1;
  if (v322 != (sub_101074648(a2) & 1))
  {
    v323 = swift_getKeyPath();
    sub_1001468E8(a2, v323);
  }

  sub_1001450F4(v37);
  v324 = sub_101074654(v225) & 1;
  if (v324 != (sub_101074654(a2) & 1))
  {
    v325 = swift_getKeyPath();
    sub_1001468E8(a2, v325);
  }

  sub_1001450F4(v37);
  v326 = sub_101074660(v225);
  if (v326 != sub_101074660(a2))
  {
    v327 = swift_getKeyPath();
    sub_100147FD4(a2, v327);
  }

  sub_1001450F4(v37);
  v328 = sub_10107467C(v225);
  if (v328 != sub_10107467C(a2))
  {
    v329 = swift_getKeyPath();
    sub_100147FD4(a2, v329);
  }

  sub_1001450F4(v37);
  v330 = sub_101074698(v225);
  if (v330 != sub_101074698(a2))
  {
    v331 = swift_getKeyPath();
    sub_100147FD4(a2, v331);
  }

  sub_1001450F4(v37);
  v332 = sub_1010746B4(v225);
  if (v332 != sub_1010746B4(a2))
  {
    v333 = swift_getKeyPath();
    sub_100147FD4(a2, v333);
  }

  sub_1001450F4(v37);
  v334 = sub_1010746D0(v225);
  if (v334 != sub_1010746D0(a2))
  {
    v335 = swift_getKeyPath();
    sub_100147FD4(a2, v335);
  }

  sub_1001450F4(v37);
  sub_1010746EC(v225);
  v337 = v336;
  sub_1010746EC(a2);
  if (v337 != v338)
  {
    v339 = swift_getKeyPath();
    sub_100146144(a2, v339);
  }

  sub_1001450F4(v37);
  sub_1010746F8(v225);
  v341 = v340;
  sub_1010746F8(a2);
  if (v341 != v342)
  {
    v343 = swift_getKeyPath();
    sub_100146144(a2, v343);
  }

  sub_1001450F4(v37);
  sub_101074704(v225);
  v345 = v344;
  sub_101074704(a2);
  if (v345 != v346)
  {
    v347 = swift_getKeyPath();
    sub_100146144(a2, v347);
  }

  sub_1001450F4(v37);
  v348 = sub_10107355C(v225);
  if (v348 != sub_10107355C(a2))
  {
    v349 = swift_getKeyPath();
    sub_100147FD4(a2, v349);
  }

  sub_1001450F4(v37);
  v350 = sub_101074710(v225);
  if (v350 != sub_101074710(a2))
  {
    v351 = swift_getKeyPath();
    sub_100147FD4(a2, v351);
  }

  sub_1001450F4(v37);
  v352 = sub_10107472C(v225);
  if (v352 != sub_10107472C(a2))
  {
    v353 = swift_getKeyPath();
    sub_100147FD4(a2, v353);
  }

  sub_1001450F4(v37);
  v354 = sub_101074748(v225);
  if (v354 != sub_101074748(a2))
  {
    v355 = swift_getKeyPath();
    sub_100147FD4(a2, v355);
  }

  sub_1001450F4(v37);
  sub_101074764(v225);
  v357 = v356;
  sub_101074764(a2);
  if (v357 != v358)
  {
    v359 = swift_getKeyPath();
    sub_100146144(a2, v359);
  }

  sub_1001450F4(v37);
  sub_101074770(v225);
  v361 = v360;
  sub_101074770(a2);
  if (v361 != v362)
  {
    v363 = swift_getKeyPath();
    sub_100146144(a2, v363);
  }

  sub_1001450F4(v37);
  v364 = sub_10107477C(v225);
  if (v364 != sub_10107477C(a2))
  {
    v365 = swift_getKeyPath();
    sub_100147FD4(a2, v365);
  }

  sub_1001450F4(v37);
  v366 = sub_101074798(v225);
  if (v366 != sub_101074798(a2))
  {
    v367 = swift_getKeyPath();
    sub_100147FD4(a2, v367);
  }

  sub_1001450F4(v37);
  v368 = sub_1010747B4(v225);
  if (v368 != sub_1010747B4(a2))
  {
    v369 = swift_getKeyPath();
    sub_100147FD4(a2, v369);
  }

  sub_1001450F4(v37);
  v370 = sub_1010747D0(v225);
  if (v370 != sub_1010747D0(a2))
  {
    v371 = swift_getKeyPath();
    sub_100147FD4(a2, v371);
  }

  sub_1001450F4(v37);
  v372 = sub_1010747EC(v225);
  if (v372 != sub_1010747EC(a2))
  {
    v373 = swift_getKeyPath();
    sub_100147FD4(a2, v373);
  }

  sub_1001450F4(v37);
  v374 = sub_101074808(v225);
  if (v374 != sub_101074808(a2))
  {
    v375 = swift_getKeyPath();
    sub_100147FD4(a2, v375);
  }

  sub_1001450F4(v37);
  v376 = sub_101074824(v225);
  if (v376 != sub_101074824(a2))
  {
    v377 = swift_getKeyPath();
    sub_100147FD4(a2, v377);
  }

  sub_1001450F4(v37);
  v378 = sub_101074840(v225);
  if (v378 != sub_101074840(a2))
  {
    v379 = swift_getKeyPath();
    sub_100147FD4(a2, v379);
  }

  sub_1001450F4(v37);
  sub_10107485C(v225);
  v381 = v380;
  sub_10107485C(a2);
  if (v381 != v382)
  {
    v383 = swift_getKeyPath();
    sub_100146144(a2, v383);
  }

  sub_1001450F4(v37);
  v384 = sub_101074868(v225) & 1;
  if (v384 != (sub_101074868(a2) & 1))
  {
    v385 = swift_getKeyPath();
    sub_1001468E8(a2, v385);
  }

  sub_1001450F4(v37);
  sub_101074874(v225);
  v387 = v386;
  sub_101074874(a2);
  if (v387 != v388)
  {
    v389 = swift_getKeyPath();
    sub_100146144(a2, v389);
  }

  sub_1001450F4(v37);
  sub_101074880(v225);
  v391 = v390;
  sub_101074880(a2);
  if (v391 != v392)
  {
    v393 = swift_getKeyPath();
    sub_100146144(a2, v393);
  }

  sub_1001450F4(v37);
  v394 = sub_10107488C(v225);
  if (v394 != sub_10107488C(a2))
  {
    v395 = swift_getKeyPath();
    sub_100147FD4(a2, v395);
  }

  sub_1001450F4(v37);
  v396 = sub_1010748A8(v225) & 1;
  if (v396 != (sub_1010748A8(a2) & 1))
  {
    v397 = swift_getKeyPath();
    sub_1001468E8(a2, v397);
  }

  sub_1001450F4(v37);
  v398 = sub_1010748B4(v225) & 1;
  if (v398 != (sub_1010748B4(a2) & 1))
  {
    v399 = swift_getKeyPath();
    sub_1001468E8(a2, v399);
  }

  sub_1001450F4(v37);
  v400 = sub_1010748C0(v225) & 1;
  if (v400 != (sub_1010748C0(a2) & 1))
  {
    v401 = swift_getKeyPath();
    sub_1001468E8(a2, v401);
  }

  sub_1001450F4(v37);
  v402 = sub_1010748CC(v225);
  if (v402 != sub_1010748CC(a2))
  {
    v403 = swift_getKeyPath();
    sub_100147FD4(a2, v403);
  }

  sub_1001450F4(v37);
  sub_1010748E8(v225);
  v405 = v404;
  sub_1010748E8(a2);
  if (v405 != v406)
  {
    v407 = swift_getKeyPath();
    sub_100146144(a2, v407);
  }

  sub_1001450F4(v37);
  sub_1010748F4(v225);
  v409 = v408;
  sub_1010748F4(a2);
  if (v409 != v410)
  {
    v411 = swift_getKeyPath();
    sub_100146144(a2, v411);
  }

  sub_1001450F4(v37);
  v412 = sub_101074900(v225);
  if (v412 != sub_101074900(a2))
  {
    v413 = swift_getKeyPath();
    sub_10014CC3C(a2, v413);
  }

  sub_1001450F4(v37);
  v414 = sub_10107491C(v225);
  if (v414 != sub_10107491C(a2))
  {
    v415 = swift_getKeyPath();
    sub_10014CC3C(a2, v415);
  }

  sub_1001450F4(v37);
  v416 = sub_101074938(v225);
  if (v416 != sub_101074938(a2))
  {
    v417 = swift_getKeyPath();
    sub_10014CC3C(a2, v417);
  }

  sub_1001450F4(v37);
  v418 = sub_101074954(v225);
  if (v418 != sub_101074954(a2))
  {
    v419 = swift_getKeyPath();
    sub_10014CC3C(a2, v419);
  }

  sub_1001450F4(v37);
  sub_101074970(v225);
  v421 = v420;
  sub_101074970(a2);
  if (v421 != v422)
  {
    v423 = swift_getKeyPath();
    sub_100146144(a2, v423);
  }

  sub_1001450F4(v37);
  v424 = sub_10107497C(v225) & 1;
  if (v424 != (sub_10107497C(a2) & 1))
  {
    v425 = swift_getKeyPath();
    sub_1001468E8(a2, v425);
  }

  sub_1001450F4(v37);
  sub_101074988(v225);
  v427 = v426;
  sub_101074988(a2);
  if (v427 != v428)
  {
    v429 = swift_getKeyPath();
    sub_100146144(a2, v429);
  }

  sub_1001450F4(v37);
  sub_101074994(v225);
  v431 = v430;
  sub_101074994(a2);
  if (v431 != v432)
  {
    v433 = swift_getKeyPath();
    sub_100146144(a2, v433);
  }

  sub_1001450F4(v37);
  v434 = sub_1010749A0(v225);
  v435 = sub_1010749A0(a2);
  v436 = sub_10038F898(v434, v435);

  if ((v436 & 1) == 0)
  {
    v437 = swift_getKeyPath();
    sub_10014C498(a2, v437);
  }

  sub_1001450F4(v37);
  v438 = sub_1010749BC(v225) & 1;
  if (v438 != (sub_1010749BC(a2) & 1))
  {
    v439 = swift_getKeyPath();
    sub_1001468E8(a2, v439);
  }

  sub_1001450F4(v37);
  v440 = sub_1010749C8(v225) & 1;
  if (v440 != (sub_1010749C8(a2) & 1))
  {
    v441 = swift_getKeyPath();
    sub_1001468E8(a2, v441);
  }

  sub_1001450F4(v37);
  v442 = sub_1010749D4(v225);
  v443 = sub_1010749D4(a2);
  v444 = sub_100DE7510(v442, v443);

  if ((v444 & 1) == 0)
  {
    v445 = swift_getKeyPath();
    sub_10014D3E0(a2, v445);
  }

  sub_1001450F4(v37);
  sub_1010749F0(v225);
  v447 = v446;
  sub_1010749F0(a2);
  if (v447 != v448)
  {
    v449 = swift_getKeyPath();
    sub_100146144(a2, v449);
  }

  sub_1001450F4(v37);
  sub_1010749FC(v225);
  v451 = v450;
  sub_1010749FC(a2);
  if (v451 != v452)
  {
    v453 = swift_getKeyPath();
    sub_100146144(a2, v453);
  }

  sub_1001450F4(v37);
  v454 = sub_101074A08(v225) & 1;
  if (v454 != (sub_101074A08(a2) & 1))
  {
    v455 = swift_getKeyPath();
    sub_1001468E8(a2, v455);
  }

  sub_1001450F4(v37);
  v456 = sub_101074A14(v225) & 1;
  if (v456 != (sub_101074A14(a2) & 1))
  {
    v457 = swift_getKeyPath();
    sub_1001468E8(a2, v457);
  }

  sub_1001450F4(v37);
  v458 = sub_101074A20(v225);
  if (v458 != sub_101074A20(a2))
  {
    v459 = swift_getKeyPath();
    sub_1001459A0(a2, v459);
  }

  sub_1001450F4(v37);
  v460 = sub_101074A3C(v225);
  if (v460 != sub_101074A3C(a2))
  {
    v461 = swift_getKeyPath();
    sub_1001459A0(a2, v461);
  }

  sub_1001450F4(v37);
  v462 = sub_101074A58(v225);
  if (v462 != sub_101074A58(a2))
  {
    v463 = swift_getKeyPath();
    sub_1001459A0(a2, v463);
  }

  sub_1001450F4(v37);
  v464 = sub_101074A74(v225);
  if (v464 != sub_101074A74(a2))
  {
    v465 = swift_getKeyPath();
    sub_1001459A0(a2, v465);
  }

  sub_1001450F4(v37);
  v466 = sub_101073540(v225);
  if (v466 != sub_101073540(a2))
  {
    v467 = swift_getKeyPath();
    sub_1001459A0(a2, v467);
  }

  sub_1001450F4(v37);
  v468 = sub_101074A90(v225);
  if (v468 != sub_101074A90(a2))
  {
    v469 = swift_getKeyPath();
    sub_1001459A0(a2, v469);
  }

  sub_1001450F4(v37);
  v470 = sub_101074AAC(v225);
  if (v470 != sub_101074AAC(a2))
  {
    v471 = swift_getKeyPath();
    sub_1001459A0(a2, v471);
  }

  sub_1001450F4(v37);
  v472 = sub_101074AC8(v225);
  if (v472 != sub_101074AC8(a2))
  {
    v473 = swift_getKeyPath();
    sub_1001459A0(a2, v473);
  }

  sub_1001450F4(v37);
  v474 = sub_101074AE4(v225);
  if (v474 != sub_101074AE4(a2))
  {
    v475 = swift_getKeyPath();
    sub_1001459A0(a2, v475);
  }

  sub_1001450F4(v37);
  v476 = sub_101074B00(v225);
  if (v476 != sub_101074B00(a2))
  {
    v477 = swift_getKeyPath();
    sub_1001459A0(a2, v477);
  }

  sub_1001450F4(v37);
  v478 = sub_101074B1C(v225);
  if (v478 != sub_101074B1C(a2))
  {
    v479 = swift_getKeyPath();
    sub_1001459A0(a2, v479);
  }

  sub_1001450F4(v37);
  v480 = sub_101074B38(v225);
  if (v480 != sub_101074B38(a2))
  {
    v481 = swift_getKeyPath();
    sub_1001459A0(a2, v481);
  }

  sub_1001450F4(v37);
  v482 = sub_101074B54(v225);
  if (v482 != sub_101074B54(a2))
  {
    v483 = swift_getKeyPath();
    sub_1001459A0(a2, v483);
  }

  sub_1001450F4(v37);
  v484 = sub_101074B70(v225);
  if (v484 != sub_101074B70(a2))
  {
    v485 = swift_getKeyPath();
    sub_1001459A0(a2, v485);
  }

  sub_1001450F4(v37);
  v486 = sub_101074B8C(v225);
  if (v486 != sub_101074B8C(a2))
  {
    v487 = swift_getKeyPath();
    sub_1001459A0(a2, v487);
  }

  sub_1001450F4(v37);
  v488 = sub_101074BA8(v225);
  if (v488 != sub_101074BA8(a2))
  {
    v489 = swift_getKeyPath();
    sub_1001459A0(a2, v489);
  }

  sub_1001450F4(v37);
  sub_101074BC4(v225);
  v491 = v490;
  sub_101074BC4(a2);
  if (v491 != v492)
  {
    v493 = swift_getKeyPath();
    sub_100146144(a2, v493);
  }

  sub_1001450F4(v37);
  sub_101074BD0(v225);
  v495 = v494;
  sub_101074BD0(a2);
  if (v495 != v496)
  {
    v497 = swift_getKeyPath();
    sub_100146144(a2, v497);
  }

  sub_1001450F4(v37);
  v498 = sub_101074BDC(v225) & 1;
  if (v498 != (sub_101074BDC(a2) & 1))
  {
    v499 = swift_getKeyPath();
    sub_1001468E8(a2, v499);
  }

  sub_1001450F4(v37);
  sub_101074BE8(v225);
  v501 = v500;
  sub_101074BE8(a2);
  if (v501 != v502)
  {
    v503 = swift_getKeyPath();
    sub_100146144(a2, v503);
  }

  sub_1001450F4(v37);
  sub_101073404(v225);
  v505 = v504;
  sub_101073404(a2);
  if (v505 != v506)
  {
    v507 = swift_getKeyPath();
    sub_100146144(a2, v507);
  }

  sub_1001450F4(v37);
  sub_101074BF4(v225);
  v509 = v508;
  sub_101074BF4(a2);
  if (v509 != v510)
  {
    v511 = swift_getKeyPath();
    sub_100146144(a2, v511);
  }

  sub_1001450F4(v37);
  v512 = sub_101074C00(v225);
  v514 = v513;
  if (v512 == sub_101074C00(a2) && v514 == v515)
  {
  }

  else
  {
    v516 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v516 & 1) == 0)
    {
      v517 = swift_getKeyPath();
      sub_100147830(a2, v517);
    }
  }

  sub_1001450F4(v37);
  v518 = sub_101074D18(v225);
  if (v518 != sub_101074D18(a2))
  {
    v519 = swift_getKeyPath();
    sub_1001459A0(a2, v519);
  }

  sub_1001450F4(v37);
  v520 = sub_101073410(v225) & 1;
  if (v520 != (sub_101073410(a2) & 1))
  {
    v521 = swift_getKeyPath();
    sub_1001468E8(a2, v521);
  }

  sub_1001450F4(v37);
  sub_1001450F4(v37);
  sub_101074D34(v225);
  v523 = v522;
  sub_101074D34(a2);
  if (v523 != v524)
  {
    v525 = swift_getKeyPath();
    sub_100146144(a2, v525);
  }

  sub_101074D40(v225);
  v527 = v526;
  sub_101074D40(a2);
  if (v527 != v528)
  {
    v529 = swift_getKeyPath();
    sub_100146144(a2, v529);
  }

  sub_1001450F4(v37);
  sub_101074D4C(v225);
  v531 = v530;
  sub_101074D4C(a2);
  if (v531 != v532)
  {
    v533 = swift_getKeyPath();
    sub_100146144(a2, v533);
  }

  sub_1001450F4(v37);
  v534 = sub_101074D58(v225) & 1;
  if (v534 != (sub_101074D58(a2) & 1))
  {
    v535 = swift_getKeyPath();
    sub_1001468E8(a2, v535);
  }

  sub_1001450F4(v37);
  v536 = sub_101074D64(v225) & 1;
  if (v536 != (sub_101074D64(a2) & 1))
  {
    v537 = swift_getKeyPath();
    sub_1001468E8(a2, v537);
  }

  sub_1001450F4(v37);
  v538 = sub_101074D70(v225);
  if (v538 != sub_101074D70(a2))
  {
    v539 = swift_getKeyPath();
    sub_10014DB84(a2, v539);
  }

  sub_1001450F4(v37);
  v540 = sub_101074E70(v225);
  if (v540 != sub_101074E70(a2))
  {
    v541 = swift_getKeyPath();
    sub_100147FD4(a2, v541);
  }

  sub_1001450F4(v37);
  sub_101074E8C(v225);
  v543 = v542;
  sub_101074E8C(a2);
  if (v543 != v544)
  {
    v545 = swift_getKeyPath();
    sub_100146144(a2, v545);
  }

  sub_1001450F4(v37);
  sub_101074E98(v225);
  v547 = v546;
  sub_101074E98(a2);
  if (v547 != v548)
  {
    v549 = swift_getKeyPath();
    sub_100146144(a2, v549);
  }

  sub_1001450F4(v37);
  sub_101074EA4(v225);
  v551 = v550;
  sub_101074EA4(a2);
  if (v551 != v552)
  {
    v553 = swift_getKeyPath();
    sub_100146144(a2, v553);
  }

  sub_1001450F4(v37);
  sub_101074EB0(v225);
  v555 = v554;
  sub_101074EB0(a2);
  if (v555 != v556)
  {
    v557 = swift_getKeyPath();
    sub_100146144(a2, v557);
  }

  sub_1001450F4(v37);
  sub_101074EBC(v225);
  v559 = v558;
  sub_101074EBC(a2);
  if (v559 != v560)
  {
    v561 = swift_getKeyPath();
    sub_100146144(a2, v561);
  }

  sub_1001450F4(v37);
  sub_101074EC8(v225);
  v563 = v562;
  sub_101074EC8(a2);
  if (v563 != v564)
  {
    v565 = swift_getKeyPath();
    sub_100146144(a2, v565);
  }

  sub_1001450F4(v37);
  v566 = sub_101074ED4(v225) & 1;
  if (v566 != (sub_101074ED4(a2) & 1))
  {
    v567 = swift_getKeyPath();
    sub_1001468E8(a2, v567);
  }

  sub_1001450F4(v37);
  sub_101074FE4(v225);
  v569 = v568;
  sub_101074FE4(a2);
  if (v569 != v570)
  {
    v571 = swift_getKeyPath();
    sub_100146144(a2, v571);
  }

  sub_1001450F4(v37);
  sub_101074FF0(v225);
  v573 = v572;
  sub_101074FF0(a2);
  if (v573 != v574)
  {
    v575 = swift_getKeyPath();
    sub_100146144(a2, v575);
  }

  sub_1001450F4(v37);
  v576 = sub_101074FFC(v225);
  if (v576 != sub_101074FFC(a2))
  {
    v577 = swift_getKeyPath();
    sub_10014E328(a2, v577);
  }

  sub_1001450F4(v37);
  sub_1010750FC(v225);
  v579 = v578;
  sub_1010750FC(a2);
  if (v579 != v580)
  {
    v581 = swift_getKeyPath();
    sub_100146144(a2, v581);
  }

  sub_1001450F4(v37);
}