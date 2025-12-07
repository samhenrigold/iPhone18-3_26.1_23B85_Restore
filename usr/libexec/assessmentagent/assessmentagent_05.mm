void *sub_10006B020()
{
  v0[2] = 0;
  v1 = type metadata accessor for AEAConcreteXPCEventStreamPrimitives();
  v2 = swift_allocObject();
  v0[6] = v1;
  v0[7] = &off_1000ABD88;
  v0[3] = v2;
  v3 = type metadata accessor for AEAConcreteSignalPrimitives();
  v4 = swift_allocObject();
  v0[11] = v3;
  v0[12] = &off_1000A8EA0;
  v0[8] = v4;
  v5 = type metadata accessor for AEAConcreteProcessPrimitives();
  v6 = swift_allocObject();
  v0[16] = v5;
  v0[17] = &off_1000ABDA0;
  v0[13] = v6;
  v0[18] = [objc_allocWithZone(AEAConcreteXPCConnectionPrimitives) init];
  v7 = [objc_allocWithZone(AEPerformancePrimitivesProvider) init];
  v8 = [v7 makePrimitives];

  v0[19] = v8;
  v0[20] = [objc_allocWithZone(AEAConcreteOSTransactionPrimitives) init];
  v9 = type metadata accessor for AEAConcreteFileSystemPrimitives();
  v10 = swift_allocObject();
  *(v10 + 16) = [objc_opt_self() defaultManager];
  v0[24] = v9;
  v0[25] = &off_1000A7928;
  v0[21] = v10;
  v0[26] = [objc_allocWithZone(AEConcreteSystemNotificationPrimitives) init];
  v11 = [objc_allocWithZone(AEFeatureFlagsProvider) init];
  v12 = [v11 makeFeatureFlags];

  v0[27] = v12;
  v13 = type metadata accessor for AEAConcretePasteboardPrimitives();
  v14 = swift_allocObject();
  v0[31] = v13;
  v0[32] = &off_1000A6B90;
  v0[28] = v14;
  v0[33] = [objc_allocWithZone(AEAConcreteAirPlayPrimitives) init];
  v0[34] = [objc_allocWithZone(AEAConcreteNetworkPrimitives) init];
  v15 = type metadata accessor for AEAConcreteMediaPrimitives();
  v16 = swift_allocObject();
  v0[38] = v15;
  v0[39] = &off_1000AB7B0;
  v0[35] = v16;
  v17 = type metadata accessor for AEAConcreteLaunchServicesPrimitives();
  v18 = swift_allocObject();
  v0[43] = v17;
  v0[44] = &off_1000AC480;
  v0[40] = v18;
  v0[45] = [objc_allocWithZone(AEConcretePreferencePrimitives) initWithDomain:AEAssessmentPreferenceDomain];
  v19 = [objc_allocWithZone(AEProcessInfoPrimitivesProvider) init];
  v20 = [v19 makePrimitives];

  v0[46] = v20;
  v0[47] = 0;
  v21 = type metadata accessor for AEAConcreteSecurityTaskPrimitives();
  v22 = swift_allocObject();
  v0[51] = v21;
  v0[52] = &off_1000AA318;
  v0[48] = v22;
  v23 = type metadata accessor for AEAConcreteRunningBoardPrimitives();
  v24 = swift_allocObject();
  v0[56] = v23;
  v0[57] = &off_1000A86F8;
  v0[53] = v24;
  v25 = type metadata accessor for AEAConcreteManagedConfigurationPrimitives();
  v26 = swift_allocObject();
  v0[61] = v25;
  v0[62] = &off_1000AC080;
  v0[58] = v26;
  v0[63] = [objc_allocWithZone(AEAConcreteTimerPrimitives) init];
  v27 = type metadata accessor for AEAConcreteExternalSubsystemRestrictionPrimitives();
  v28 = swift_allocObject();
  v0[67] = v27;
  v0[68] = &off_1000A8178;
  v0[64] = v28;
  v29 = type metadata accessor for AEAConcreteSpringBoardPrimitives();
  v30 = swift_allocObject();
  v0[72] = v29;
  v0[73] = &off_1000A8060;
  v0[69] = v30;
  v31 = type metadata accessor for AEAConcreteMobileKeyBagPrimitives();
  v32 = swift_allocObject();
  v0[77] = v31;
  v0[78] = &off_1000A6410;
  v0[74] = v32;
  v33 = type metadata accessor for AEAConcreteFrontBoardPrimitives();
  v34 = swift_allocObject();
  v0[82] = v33;
  v0[83] = &off_1000A8C48;
  v0[79] = v34;
  type metadata accessor for AEAConcreteUserDefaultsPrimitives();
  v0[84] = swift_allocObject();
  v0[85] = &off_1000AC090;
  v35 = type metadata accessor for AEAConcreteUserNotificationPrimitives();
  v36 = swift_allocObject();
  v0[89] = v35;
  v0[90] = &off_1000A7160;
  v0[86] = v36;
  return v0;
}

char *sub_10006B480(void *a1)
{
  sub_10000C6FC(a1, v16);
  if (swift_dynamicCast())
  {
    sub_100003FB4(a1);
    return v15;
  }

  else
  {
    sub_10000C6FC(a1, v16);
    if (swift_dynamicCast() & 1) != 0 || (sub_10000C6FC(a1, v16), (swift_dynamicCast()))
    {
      sub_100003FB4(a1);
      return v15;
    }

    else
    {
      sub_10000C6FC(a1, v16);
      sub_100003F6C(qword_1000B7628, &unk_10007FB20);
      if (swift_dynamicCast())
      {
        v3 = *(v15 + 16);
        if (v3)
        {
          v4 = v15 + 32;
          v2 = _swiftEmptyArrayStorage;
          do
          {
            sub_10000C6FC(v4, v16);
            sub_10000C6FC(v16, &v15);
            v6 = sub_10006B480(&v15);
            v8 = v7;
            v10 = v9;
            v11 = ~v9;
            sub_100003FB4(v16);
            if (v11)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v2 = sub_100072EE8(0, *(v2 + 2) + 1, 1, v2);
              }

              v13 = *(v2 + 2);
              v12 = *(v2 + 3);
              if (v13 >= v12 >> 1)
              {
                v2 = sub_100072EE8((v12 > 1), v13 + 1, 1, v2);
              }

              *(v2 + 2) = v13 + 1;
              v5 = &v2[24 * v13];
              *(v5 + 4) = v6;
              *(v5 + 5) = v8;
              v5[48] = v10;
            }

            v4 += 32;
            --v3;
          }

          while (v3);
        }

        else
        {

          v2 = _swiftEmptyArrayStorage;
        }

        sub_100003FB4(a1);
      }

      else
      {
        sub_100003FB4(a1);
        return 0;
      }
    }
  }

  return v2;
}

Swift::Int sub_10006B6F0(Swift::UInt a1, uint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(3uLL);
      sub_10006EDEC(v6, a1);
    }
  }

  else if (a3)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(a1 & 1);
  }

  return Hasher._finalize()();
}

void sub_10006B7E0(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      Hasher._combine(_:)(2uLL);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(3uLL);

      sub_10006EDEC(a1, v3);
    }
  }

  else if (*(v1 + 16))
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v3);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v3 & 1);
  }
}

Swift::Int sub_10006B8C0()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(3uLL);
      sub_10006EDEC(v4, v1);
    }
  }

  else if (v2)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v1);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10006B988()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10006EBE4(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10006B9D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10006EBE4(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_10006BA28(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v32 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v33 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(result + 56) + 24 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);

    sub_100006174(v17, v18, v19);
    v20 = sub_100020DA8(v14, v15);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
LABEL_35:
      sub_100006198(v17, v18, v19);
      return 0;
    }

    v23 = *(a2 + 56) + 24 * v20;
    v24 = *v23;
    if (*(v23 + 16) > 1u)
    {
      v26 = *(v23 + 8);
      if (*(v23 + 16) == 2)
      {
        if (v19 != 2)
        {
          goto LABEL_35;
        }

        v27 = v24 == v17 && v26 == v18;
        if (v27)
        {
          sub_100006198(v17, v18, 2);
          result = v32;
          v7 = v33;
        }

        else
        {
          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_100006198(v17, v18, 2);
          result = v32;
          v7 = v33;
          if ((v28 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v19 != 3)
        {
          goto LABEL_35;
        }

        v29 = *v23;

        v31 = sub_100006014(v30, v17);
        sub_100006198(v17, v18, 3);
        sub_100006198(v29, v26, 3);
        result = v32;
        v7 = v33;
        if ((v31 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (*(v23 + 16))
    {
      if (v19 != 1)
      {
        goto LABEL_35;
      }

      v27 = v24 == v17;
      result = v32;
      v7 = v33;
      if (!v27)
      {
        return 0;
      }
    }

    else
    {
      if (v19)
      {
        goto LABEL_35;
      }

      v25 = v24 ^ v17;
      result = v32;
      v7 = v33;
      if (v25)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v33 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10006BC88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003F6C(&qword_1000B8850, &qword_100081568);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100010B20(v24, v34);
      }

      else
      {
        sub_10000C6FC(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100010B20(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10006BF40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003F6C(&unk_1000B88D0, &qword_1000815B8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_100010B20((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100022828(v23, &v36);
        sub_10000C6FC(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
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
      result = sub_100010B20(v35, (*(v7 + 56) + 32 * v15));
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

Swift::Int sub_10006C1F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003F6C(&qword_1000B88C0, &qword_1000815B0);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_10006C4AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100003F6C(&qword_1000BA550, &unk_100083520);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        v44 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v36)(v42, v25, v43);
        v44 = *(*(v9 + 56) + 16 * v23);
      }

      sub_10005E54C();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v44;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_10006C85C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003F6C(&qword_1000B8880, &unk_100081580);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        sub_100006174(v25, v26, v27);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10006CB3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003F6C(&qword_1000B8890, &qword_100081590);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
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
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(v5 + 56) + 56 * v24;
      v39 = *(*(v5 + 48) + 16 * v24);
      v26 = *(*(v5 + 48) + 16 * v24 + 8);
      if (v4)
      {
        v27 = *v25;
        v28 = *(v25 + 16);
        v29 = *(v25 + 32);
        v43 = *(v25 + 48);
        v41 = v28;
        v42 = v29;
        v40 = v27;
      }

      else
      {
        sub_100030BD0(v25, &v40);
        sub_10001C9CC(v39, v26);
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v16 = v39;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v16 = v39;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      v17 = *(v7 + 56) + 56 * v15;
      v18 = v40;
      v19 = v41;
      v20 = v42;
      *(v17 + 48) = v43;
      *(v17 + 16) = v19;
      *(v17 + 32) = v20;
      *v17 = v18;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v3 = v38;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_10006CE1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003F6C(&qword_1000B8888, &unk_1000836F0);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 40 * v21;
      v23 = *(v22 + 8);
      v41 = *v22;
      v24 = *(v22 + 24);
      v39 = *(v22 + 16);
      v40 = *(v22 + 32);
      v25 = *(v5 + 56) + 16 * v21;
      v37 = *(v25 + 1);
      v38 = *v25;
      v26 = *(v25 + 8);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      if (v24)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v40);
      result = Hasher._finalize()();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v41;
      *(v16 + 8) = v23;
      *(v16 + 16) = v39;
      *(v16 + 24) = v24;
      *(v16 + 32) = v40;
      v17 = *(v7 + 56) + 16 * v15;
      *v17 = v38;
      *(v17 + 1) = v37;
      *(v17 + 8) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_36:
  *v3 = v7;
  return result;
}

Swift::Int sub_10006D164(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100003F6C(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_10006D404(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100003F6C(&qword_1000BB9A0, &unk_100085540);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      sub_10005E54C();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

void *sub_10006D7B0()
{
  v1 = v0;
  sub_100003F6C(&qword_1000B8850, &qword_100081568);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000C6FC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100010B20(v25, (*(v4 + 56) + v22));
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

  return result;
}

void *sub_10006D954()
{
  v1 = v0;
  sub_100003F6C(&unk_1000B88D0, &qword_1000815B8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        sub_100022828(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000C6FC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100010B20(v22, (*(v4 + 56) + v17));
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

void *sub_10006DAF8()
{
  v1 = v0;
  sub_100003F6C(&qword_1000B88C0, &qword_1000815B0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_10006DC74()
{
  v1 = v0;
  v28 = type metadata accessor for UUID();
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003F6C(&qword_1000BA550, &unk_100083520);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v29 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26[1] = v30 + 32;
    v26[2] = v30 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v31 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v30;
        v20 = *(v30 + 72) * v18;
        v21 = v27;
        v22 = v28;
        (*(v30 + 16))(v27, *(v3 + 48) + v20, v28);
        v18 *= 16;
        v23 = v29;
        v24 = *(v29 + 48);
        v25 = *(v19 + 32);
        v32 = *(*(v3 + 56) + v18);
        v25(v24 + v20, v21, v22);
        *(*(v23 + 56) + v18) = v32;

        v13 = v31;
      }

      while (v31);
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

        v1 = v26[0];
        v5 = v29;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v31 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_10006DF04()
{
  v1 = v0;
  sub_100003F6C(&qword_1000B8880, &unk_100081580);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_100006174(v23, v24, v26);
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

void *sub_10006E09C()
{
  v1 = v0;
  sub_100003F6C(&qword_1000B8890, &qword_100081590);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 56 * v17;
        sub_100030BD0(*(v2 + 56) + 56 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = *(v4 + 56) + v22;
        v25 = v30;
        v26 = v29[2];
        v27 = v29[1];
        *v24 = v29[0];
        *(v24 + 16) = v27;
        *(v24 + 32) = v26;
        *(v24 + 48) = v25;
        result = sub_10001C9CC(v20, v21);
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

        v1 = v28;
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

  return result;
}

void *sub_10006E25C()
{
  v1 = v0;
  sub_100003F6C(&qword_1000B8888, &unk_1000836F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        LOBYTE(v19) = *(v19 + 32);
        v17 *= 16;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        v26 = *(v24 + 1);
        v27 = *(v24 + 8);
        v28 = *(v4 + 48) + v18;
        *v28 = v20;
        *(v28 + 8) = v21;
        *(v28 + 16) = v23;
        *(v28 + 24) = v22;
        *(v28 + 32) = v19;
        v29 = *(v4 + 56) + v17;
        *v29 = v25;
        *(v29 + 1) = v26;
        *(v29 + 8) = v27;
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

void *sub_10006E420(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100003F6C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

char *sub_10006E580()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003F6C(&qword_1000BB9A0, &unk_100085540);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_10006E800(uint64_t a1, char a2, void *a3)
{
  v44 = *(a1 + 16);
  if (!v44)
  {
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *a3;

  sub_100006174(v7, v6, v8);
  v11 = sub_100020DA8(v4, v5);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if (a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10006DF04();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100006198(v7, v6, v8);
    }

    goto LABEL_28;
  }

  sub_10006C85C(v14, a2 & 1);
  v16 = sub_100020DA8(v4, v5);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_27:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(30);
    v42._object = 0x8000000100089E20;
    v42._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v42);
    _print_unlocked<A, B>(_:_:)();
    v43._countAndFlagsBits = 39;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v11 = v16;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v19 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v20 = (v19[6] + 16 * v11);
  *v20 = v4;
  v20[1] = v5;
  v21 = v19[7] + 24 * v11;
  *v21 = v7;
  *(v21 + 8) = v6;
  *(v21 + 16) = v8;
  v22 = v19[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19[2] = v24;
  if (v44 != 1)
  {
    v25 = (a1 + 104);
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      v28 = *(v25 - 4);
      v27 = *(v25 - 3);
      v7 = *(v25 - 2);
      v6 = *(v25 - 1);
      v8 = *v25;
      v29 = *a3;

      sub_100006174(v7, v6, v8);
      v30 = sub_100020DA8(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v23 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v23)
      {
        goto LABEL_24;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_10006C85C(v34, 1);
        v30 = sub_100020DA8(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_27;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      v39 = v37[7] + 24 * v30;
      *v39 = v7;
      *(v39 + 8) = v6;
      *(v39 + 16) = v8;
      v40 = v37[2];
      v23 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v23)
      {
        goto LABEL_25;
      }

      ++v26;
      v37[2] = v41;
      v25 += 40;
      if (v44 == v26)
      {
      }
    }

    goto LABEL_26;
  }
}

void sub_10006EBE4(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v6)
  {
    v18 = v8;
LABEL_12:
    v11 = *(a2 + 56) + 24 * (__clz(__rbit64(v6)) | (v9 << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(a1 + 48);
    v19[2] = *(a1 + 32);
    v19[3] = v15;
    v20 = *(a1 + 64);
    v16 = *(a1 + 16);
    v19[0] = *a1;
    v19[1] = v16;

    sub_100006174(v12, v13, v14);
    String.hash(into:)();

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        Hasher._combine(_:)(2uLL);
        String.hash(into:)();
        sub_100006198(v12, v13, 2);
      }

      else
      {
        Hasher._combine(_:)(3uLL);
        sub_10006EDEC(v19, v12);
        sub_100006198(v12, v13, 3);
      }
    }

    else if (v14)
    {
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v12);
    }

    else
    {
      Hasher._combine(_:)(0);
      Hasher._combine(_:)(v12 & 1);
    }

    v6 &= v6 - 1;
    v8 = Hasher._finalize()() ^ v18;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      Hasher._combine(_:)(v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v18 = v8;
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10006EDEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 2);
      if (*v5 > 1u)
      {
        v7 = *(v5 - 1);
        if (*v5 == 2)
        {
          Hasher._combine(_:)(2uLL);

          String.hash(into:)();
          sub_100006198(v6, v7, 2);
        }

        else
        {
          Hasher._combine(_:)(3uLL);

          sub_10006EDEC(a1, v6);
          sub_100006198(v6, v7, 3);
        }
      }

      else if (*v5)
      {
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v6);
      }

      else
      {
        Hasher._combine(_:)(0);
        Hasher._combine(_:)(v6 & 1);
      }

      v5 += 24;
      --v4;
    }

    while (v4);
  }
}

uint64_t sub_10006EEEC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        else
        {
          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }
    }

    else if (a6 == 3)
    {
      return sub_100006014(a1, a4);
    }

    return 0;
  }

  v6 = a4 ^ a1 ^ 1;
  if (a6)
  {
    v6 = 0;
  }

  v8 = a6 == 1 && a1 == a4;
  if (a3)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10006EF84(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = result + 64;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    v38 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v8;
      if (!v6)
      {
        break;
      }

LABEL_9:
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      sub_100022828(*(v2 + 48) + 40 * v10, v36);
      sub_10000C6FC(*(v2 + 56) + 32 * v10, v37);
      sub_100022828(v36, v35);
      if (!swift_dynamicCast())
      {
        sub_10006F2B8();
        swift_allocError();
        v26 = v25;
        *(v25 + 24) = &type metadata for AnyHashable;
        v27 = swift_allocObject();
        *v26 = v27;
        sub_100022828(v36, v27 + 16);
        *(v26 + 32) = 0;
        swift_willThrow();

        sub_10006F344(v36);
      }

      v6 &= v6 - 1;
      sub_10000C6FC(v37, v35);
      v11 = sub_10006B480(v35);
      if (v13 == -1)
      {

        sub_10006F344(v36);
      }

      else
      {
        v30 = v13;
        v31 = v12;
        v32 = v11;
        sub_10006F344(v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_100072804(0, v38[2] + 1, 1, v38);
        }

        v15 = v38[2];
        v14 = v38[3];
        v16 = v15 + 1;
        v17 = v31;
        v18 = v32;
        v19 = v30;
        if (v15 >= v14 >> 1)
        {
          v29 = v15 + 1;
          v28 = v38[2];
          v22 = sub_100072804((v14 > 1), v15 + 1, 1, v38);
          v15 = v28;
          v16 = v29;
          v19 = v30;
          v17 = v31;
          v38 = v22;
          v18 = v32;
        }

        v20 = v38;
        v38[2] = v16;
        v21 = &v20[5 * v15];
        v21[4] = v33;
        v21[5] = v34;
        v21[6] = v18;
        v21[7] = v17;
        *(v21 + 64) = v19;
      }
    }

    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v8 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v8);
      ++v9;
      if (v6)
      {
        goto LABEL_9;
      }
    }

    v23 = v38;
    if (v38[2])
    {
      sub_100003F6C(&qword_1000B8880, &unk_100081580);
      v24 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v24 = _swiftEmptyDictionarySingleton;
    }

    v36[0] = v24;
    sub_10006E800(v23, 1, v36);
    if (!v1)
    {
      return v36[0];
    }

LABEL_25:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_10006F2B8()
{
  result = qword_1000BB970;
  if (!qword_1000BB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB970);
  }

  return result;
}

uint64_t sub_10006F30C()
{
  sub_100003FB4((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006F344(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000BB978, &qword_1000852D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006F3B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006F3F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10006F440(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_10006F490(uint64_t a1, unsigned int a2)
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

uint64_t sub_10006F4D8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10006F538()
{
  result = qword_1000BB990;
  if (!qword_1000BB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB990);
  }

  return result;
}

unint64_t sub_10006F590()
{
  result = qword_1000BB998;
  if (!qword_1000BB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB998);
  }

  return result;
}

uint64_t sub_10006F5E4()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      AnyCancellable.cancel()();

      ++v3;
      if (v4 == i)
      {
        goto LABEL_14;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v4 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  *v0 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10006F6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100019D8C(a3, v25 - v10, &qword_1000BA380, &qword_100080750);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100019B28(v11, &qword_1000BA380, &qword_100080750);
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

      sub_100019B28(a3, &qword_1000BA380, &qword_100080750);

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

  sub_100019B28(a3, &qword_1000BA380, &qword_100080750);
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

uint64_t sub_10006F9D0(uint64_t a1, void (*a2)(uint64_t, uint64_t (*)(), uint64_t))
{
  v5 = *(a1 + 88);
  v4 = *(a1 + 96);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  a2(a1, sub_1000732A0, v6);
}

uint64_t sub_10006FA68(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_10006FAA8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000725B8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10006FBA0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000726D4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10006FC94(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100072970(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = (v9 - v11);
  result = sub_1000735CC(&v51, &v4[56 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v14 = *(v4 + 2);
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v4 + 2) = v16;
  }

  if (result != v12)
  {
    result = sub_100019F14(v51);
LABEL_14:
    *v1 = v4;
    return result;
  }

LABEL_17:
  v3 = *(v4 + 2);
  v13 = v52;
  v37 = v52;
  v38 = v51;
  v2 = v53;
  v16 = v54;
  v17 = v55;
  if (v55)
  {
    v18 = v54;
LABEL_27:
    v22 = (v17 - 1) & v17;
    sub_100030BD0(*(v38 + 48) + 56 * (__clz(__rbit64(v17)) | (v18 << 6)), &v47);
    v21 = v18;
    while (1)
    {
      sub_100019D8C(&v47, &v43, &qword_1000BBFF0, &qword_100081B30);
      if (!*(&v44 + 1))
      {
        break;
      }

      v23 = (v2 + 64) >> 6;
      v24 = &qword_1000BBFF0;
      while (1)
      {
        sub_100019B28(&v43, v24, &qword_100081B30);
        v25 = *(v4 + 3);
        v26 = v25 >> 1;
        if ((v25 >> 1) < v3 + 1)
        {
          v4 = sub_100072970((v25 > 1), v3 + 1, 1, v4);
          v26 = *(v4 + 3) >> 1;
        }

        sub_100019D8C(&v47, &v39, v24, &qword_100081B30);
        if (*(&v40 + 1))
        {
          break;
        }

        v2 = v21;
LABEL_52:
        sub_100019B28(&v39, v24, &qword_100081B30);
        v28 = v3;
        v21 = v2;
LABEL_31:
        *(v4 + 2) = v28;
        sub_100019D8C(&v47, &v43, v24, &qword_100081B30);
        if (!*(&v44 + 1))
        {
          goto LABEL_53;
        }
      }

      if (v3 <= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v3;
      }

      while (1)
      {
        v43 = v39;
        v44 = v40;
        v45 = v41;
        v46 = v42;
        v28 = v27;
        if (v3 == v27)
        {
          sub_100030C2C(&v43);
          v3 = v28;
          goto LABEL_31;
        }

        v29 = v24;
        sub_100019B28(&v47, v24, &qword_100081B30);
        v30 = &v4[56 * v3 + 32];
        v32 = v44;
        v31 = v45;
        v33 = v43;
        *(v30 + 48) = v46;
        *(v30 + 16) = v32;
        *(v30 + 32) = v31;
        *v30 = v33;
        if (!v22)
        {
          break;
        }

        v34 = v21;
LABEL_50:
        v36 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        sub_100030BD0(*(v38 + 48) + 56 * (v36 | (v34 << 6)), &v47);
        v2 = v34;
LABEL_39:
        ++v3;
        v24 = v29;
        sub_100019D8C(&v47, &v39, v29, &qword_100081B30);
        v21 = v2;
        v27 = v28;
        if (!*(&v40 + 1))
        {
          goto LABEL_52;
        }
      }

      if (v23 <= (v21 + 1))
      {
        v35 = v21 + 1;
      }

      else
      {
        v35 = v23;
      }

      v2 = v35 - 1;
      while (1)
      {
        v34 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v34 >= v23)
        {
          v22 = 0;
          v50 = 0;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          goto LABEL_39;
        }

        v22 = *(v37 + 8 * v34);
        ++v21;
        if (v22)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_55:
      v22 = 0;
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
    }

LABEL_53:
    sub_100019B28(&v47, &qword_1000BBFF0, &qword_100081B30);
    sub_100019F14(v38);
    result = sub_100019B28(&v43, &qword_1000BBFF0, &qword_100081B30);
    goto LABEL_14;
  }

LABEL_20:
  v19 = (v2 + 64) >> 6;
  if (v19 <= (v16 + 1))
  {
    v20 = (v16 + 1);
  }

  else
  {
    v20 = (v2 + 64) >> 6;
  }

  v21 = v20 - 1;
  while (1)
  {
    v18 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v19)
    {
      goto LABEL_55;
    }

    v17 = *(v13 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000700BC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100072C18(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_1000BBBB8, &qword_100085678, &type metadata accessor for UUID);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for UUID();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10007020C(uint64_t result)
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

  result = sub_100073004(result, v11, 1, v3);
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

uint64_t sub_1000702F8()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_100003F6C(&qword_1000BBB88, &unk_100085620);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  swift_beginAccess();
  sub_10006F5E4();
  swift_endAccess();
  v10 = (v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler);
  v11 = *(v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler);
  v12 = *(v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler + 8);
  *v10 = 0;
  v10[1] = 0;
  sub_10000858C(v11, v12);
  v13 = OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_currentProfile;
  swift_beginAccess();
  sub_100019D8C(v0 + v13, v9, &qword_1000BBB88, &unk_100085620);
  v14 = type metadata accessor for AEAConfigurationProfile(0);
  v34 = *(v14 - 8);
  v15 = (*(v34 + 48))(v9, 1, v14);
  result = sub_100019B28(v9, &qword_1000BBB88, &unk_100085620);
  if (v15 != 1)
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v32 = v7;
    v17 = type metadata accessor for Logger();
    sub_10000C370(v17, qword_1000BC518);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v1;
      v22 = v21;
      v33[0] = v21;
      *v20 = 136446210;
      type metadata accessor for UUID();
      sub_100073584(&qword_1000BBB90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = sub_100043D60(v23, v24, v33);

      *(v20 + 4) = v25;
      v26 = v19;
      p_cache = (_TtC15assessmentagent33AEAConcreteSecurityTaskPrimitives + 16);
      _os_log_impl(&_mh_execute_header, v18, v26, "Uninstalling profile with ID: %{public}s", v20, 0xCu);
      sub_100003FB4(v22);
      v2 = v31;
    }

    else
    {

      p_cache = _TtC15assessmentagent33AEAConcreteSecurityTaskPrimitives.cache;
    }

    v28 = *(v3 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles + 24);
    v29 = *(v3 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles + 32);
    sub_100005A3C((v3 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles), v28);
    result = (*(v29 + 24))(p_cache[309] + v3, v28, v29);
    if (!v2)
    {
      v30 = v32;
      (*(v34 + 56))(v32, 1, 1, v14);
      swift_beginAccess();
      sub_1000731B8(v30, v3 + v13);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1000706C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = (v2 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler);
  v5 = *(v2 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;

  sub_10000858C(v5, v6);
  v7 = *(v3 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationAntiphony + 24);
  v8 = *(v3 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationAntiphony + 32);
  sub_100005A3C((v3 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationAntiphony), v7);
  (*(v8 + 16))(v7, v8);
  v9 = OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v3 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100073260;
  *(v11 + 24) = v10;
  sub_100003F6C(&qword_1000B80E0, &qword_100080A60);
  sub_100004EE0(&qword_1000B80E8, &qword_1000B80E0, &qword_100080A60, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  sub_100003F6C(&qword_1000B80F0, &unk_100081CC0);
  sub_100004EE0(&qword_1000B80F8, &qword_1000B80F0, &unk_100081CC0, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_100070948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_100019F70(a1, v18);
    type metadata accessor for AgentActor();
    inited = swift_initStaticObject();
    v14 = sub_100073584(&qword_1000B80C8, type metadata accessor for AgentActor, &unk_100082DB4);
    v15 = swift_allocObject();
    v16 = v18[3];
    *(v15 + 72) = v18[2];
    *(v15 + 88) = v16;
    *(v15 + 104) = *v19;
    v17 = v18[1];
    *(v15 + 40) = v18[0];
    *(v15 + 16) = inited;
    *(v15 + 24) = v14;
    *(v15 + 32) = v11;
    *(v15 + 119) = *&v19[15];
    *(v15 + 56) = v17;
    *(v15 + 128) = a2;
    *(v15 + 136) = a3;

    sub_10006F6D0(0, 0, v9, &unk_100085638, v15);
  }

  return result;
}

uint64_t sub_100070B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for AgentActor();
  swift_initStaticObject();

  return _swift_task_switch(sub_100070BA0, a4, 0);
}

uint64_t sub_100070BA0()
{
  sub_100070C04(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100070C04(_BYTE *a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v89 = a3;
  v90 = a2;
  v6 = sub_100003F6C(&qword_1000BBB88, &unk_100085620);
  v7 = __chkstk_darwin(v6 - 8);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v79 - v10;
  __chkstk_darwin(v9);
  v13 = &v79 - v12;
  v14 = type metadata accessor for AEAConfigurationProfile(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v82 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v83 = &v79 - v19;
  v20 = __chkstk_darwin(v18);
  v81 = &v79 - v21;
  __chkstk_darwin(v20);
  v23 = &v79 - v22;
  sub_10007153C(a1, &v79 - v22);
  v25 = *(v4 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles + 24);
  v24 = *(v4 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles + 32);
  v88 = (v4 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles);
  sub_100005A3C((v4 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles), v25);
  v91 = v23;
  v26 = v23;
  v27 = v4;
  sub_1000730F8(v26, v13);
  v86 = *(v15 + 56);
  v87 = v15 + 56;
  v86(v13, 0, 1, v14);
  v28 = OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_currentProfile;
  swift_beginAccess();
  v92 = v27;
  sub_100019D8C(v27 + v28, v11, &qword_1000BBB88, &unk_100085620);
  LOBYTE(v24) = (*(v24 + 8))(v13, v11, v25, v24);
  sub_100019B28(v11, &qword_1000BBB88, &unk_100085620);
  v85 = v13;
  sub_100019B28(v13, &qword_1000BBB88, &unk_100085620);
  if (v24)
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000C370(v29, qword_1000BC518);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v91;
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Skipping configuration profile installation/update", v34, 2u);
    }

    goto LABEL_23;
  }

  v80 = v28;
  v35 = v84;
  sub_100019D8C(v92 + v28, v84, &qword_1000BBB88, &unk_100085620);
  v36 = (*(v15 + 48))(v35, 1, v14);
  sub_100019B28(v35, &qword_1000BBB88, &unk_100085620);
  v37 = v14;
  if (v36 == 1)
  {
    v33 = v91;
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000C370(v38, qword_1000BC518);
    v39 = v81;
    sub_1000730F8(v33, v81);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v93[0] = v43;
      *v42 = 136446210;
      sub_1000730F8(v39, v83);
      v44 = String.init<A>(describing:)();
      v45 = v39;
      v46 = v37;
      v47 = v44;
      v49 = v48;
      sub_10007315C(v45);
      v50 = sub_100043D60(v47, v49, v93);

      *(v42 + 4) = v50;
      v37 = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "Installing configuration profile with descriptor: %{public}s", v42, 0xCu);
      sub_100003FB4(v43);

      goto LABEL_19;
    }

    v65 = v39;
  }

  else
  {
    v33 = v91;
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000C370(v51, qword_1000BC518);
    v52 = v82;
    sub_1000730F8(v33, v82);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v93[0] = v56;
      *v55 = 136446210;
      v57 = v33;
      v58 = v52;
      sub_1000730F8(v52, v83);
      v59 = String.init<A>(describing:)();
      v84 = v37;
      v60 = v59;
      v62 = v61;
      v63 = v58;
      v33 = v57;
      sub_10007315C(v63);
      v64 = sub_100043D60(v60, v62, v93);

      *(v55 + 4) = v64;
      v37 = v84;
      _os_log_impl(&_mh_execute_header, v53, v54, "Updating configuration profile with descriptor: %{public}s", v55, 0xCu);
      sub_100003FB4(v56);

      goto LABEL_19;
    }

    v65 = v52;
  }

  sub_10007315C(v65);
LABEL_19:
  v66 = v80;
  v67 = v85;
  sub_1000730F8(v33, v85);
  v86(v67, 0, 1, v37);
  v68 = v92;
  swift_beginAccess();
  sub_1000731B8(v67, v68 + v66);
  v69 = swift_endAccess();
  v70 = (v68 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler);
  v71 = *(v68 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler);
  if (v71)
  {
    v72 = v70[1];
    *v70 = 0;
    v70[1] = 0;
    v71(v69);
    sub_10000858C(v71, v72);
  }

  v73 = v88[3];
  v74 = v88[4];
  sub_100005A3C(v88, v73);
  result = (*(v74 + 16))(v33, v73, v74);
  v76 = *(v92 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_version);
  v77 = __OFADD__(v76, 1);
  v78 = v76 + 1;
  if (!v77)
  {
    *(v92 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_version) = v78;
LABEL_23:
    v90(0, 0);
    return sub_10007315C(v33);
  }

  __break(1u);
  return result;
}

void sub_10007153C(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v63 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v67 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v55 - v13;
  __chkstk_darwin(v12);
  v15 = *(v6 + 16);
  v62 = &v55 - v16;
  v15();
  v61 = *(v2 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_version);
  sub_100003F6C(&qword_1000BBB60, &qword_1000855F8);
  v17 = type metadata accessor for AEAConfigurationProfile.Payload(0);
  v18 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v66 = *(*(v17 - 8) + 72);
  v19 = swift_allocObject();
  v65 = xmmword_100085550;
  *(v19 + 16) = xmmword_100085550;
  v59 = v19;
  v20 = v19 + v18;
  UUID.init()();
  sub_100003F6C(&qword_1000BBB68, &qword_100085600);
  v21 = swift_allocObject();
  *(v21 + 16) = v65;
  *(v21 + 32) = a1[71];
  *(v21 + 33) = a1[72] | 0x40;
  *(v21 + 34) = a1[73] | 0x80;
  *(v21 + 35) = -64;
  v22 = *(v6 + 32);
  v60 = v14;
  v23 = v5;
  v64 = v22;
  *&v65 = v6 + 32;
  v22(v20, v14, v5);
  v24 = v11;
  v25 = v20;
  v26 = v17;
  *(v25 + *(v17 + 20)) = 1;
  v27 = v25 + *(v17 + 24);
  *v27 = v21;
  *(v27 + 8) = 0;
  UUID.init()();
  sub_100003F6C(&qword_1000BBB70, &qword_100085608);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100081CF0;
  v29 = *(v3 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_preferences);
  v30 = [v29 disableContinuity];
  v31 = [v30 value];

  if (!v31)
  {
    __break(1u);
    goto LABEL_6;
  }

  v32 = [v31 BOOLValue];

  *(v28 + 32) = v32 ^ 1;
  v58 = v29;
  v33 = [v29 disableDictation];
  v34 = [v33 value];

  if (!v34)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v35 = v25 + v66;
  v36 = [v34 BOOLValue];

  *(v28 + 33) = v36 ^ 1 | 0x10;
  *(v28 + 34) = 12320;
  *(v28 + 36) = a1[66] | 0x40;
  *(v28 + 37) = a1[68] | 0x50;
  *(v28 + 38) = a1[64] | 0x60;
  *(v28 + 39) = a1[67] | 0x70;
  *(v28 + 40) = 0x80;
  v56 = v23;
  v57 = a1;
  v37 = v64;
  v64(v35, v24, v23);
  *(v35 + *(v26 + 20)) = 1;
  v38 = v35 + *(v26 + 24);
  *v38 = v28;
  *(v38 + 8) = 1;
  v39 = v26;
  v40 = v25;
  UUID.init()();
  sub_100003F6C(&qword_1000BBB78, &qword_100085610);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1000807D0;
  v42 = [v58 disableQuickNote];
  v43 = [v42 value];

  if (v43)
  {
    v44 = v66;
    v45 = v40 + 2 * v66;
    v46 = [v43 BOOLValue];

    *(v41 + 32) = v46 ^ 1;
    v47 = v56;
    v37(v40 + 2 * v44, v67, v56);
    *(v45 + *(v39 + 20)) = 1;
    v48 = v45 + *(v39 + 24);
    *v48 = v41;
    *(v48 + 8) = 2;
    v49 = v40 + 3 * v44;
    v50 = v60;
    UUID.init()();
    v51 = sub_100071AF4();
    v37(v49, v50, v47);
    *(v49 + *(v39 + 20)) = 1;
    v52 = v49 + *(v39 + 24);
    *v52 = v51;
    *(v52 + 8) = 3;
    v53 = v63;
    v37(v63, v62, v47);
    v54 = type metadata accessor for AEAConfigurationProfile(0);
    *(v53 + *(v54 + 20)) = v61;
    *(v53 + *(v54 + 24)) = v59;
    return;
  }

LABEL_7:
  __break(1u);
}

char *sub_100071AF4()
{
  v1 = sub_1000544CC();
  if (v2)
  {
    v3 = sub_100071F24(v1 & 0x101, v2);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100003F6C(&qword_1000BBB80, &qword_100085618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100083800;
  v5 = sub_1000544CC();
  if (v6 && (v7 = v5, v8 = v6, v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v11 = sub_1000228D8(v9, v10, v7 & 0x101, v8), , , v11 != 2) && (v11 & 1) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(v0 + 78);
  }

  *(inited + 32) = v12 | 0xA0;
  v13 = sub_1000544CC();
  if (v14 && (v15 = v13, v16 = v14, v17 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v19 = sub_1000228D8(v17, v18, v15 & 0x101, v16), , , v19 != 2) && (v19 & 1) != 0)
  {
    v20 = 1;
  }

  else
  {
    v20 = *(v0 + 79);
  }

  *(inited + 33) = v20 | 0xC0;
  sub_10007020C(inited);
  return v3;
}

uint64_t sub_100071C7C()
{
  v1 = OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_profileID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100003FB4((v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationAntiphony));
  sub_100003FB4((v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles));

  sub_10000858C(*(v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler), *(v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler + 8));
  sub_100019B28(v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_currentProfile, &qword_1000BBB88, &unk_100085620);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AEAConfigurationProfileAssertion(uint64_t a1)
{
  result = qword_1000BBA10;
  if (!qword_1000BBA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100071DBC(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100071ECC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100071ECC(uint64_t a1)
{
  if (!qword_1000BBA20)
  {
    type metadata accessor for AEAConfigurationProfile(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000BBA20);
    }
  }
}

char *sub_100071F24(__int16 a1, uint64_t a2)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = sub_1000228D8(v4, v5, a1 & 0x101, a2);

  if (v6 == 2)
  {
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = sub_100073004(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_100073004((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v7[v9 + 32] = v6 & 1;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = sub_1000228D8(v10, v11, a1 & 0x101, a2);

  if (v12 != 2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100073004(0, *(v7 + 2) + 1, 1, v7);
    }

    v14 = *(v7 + 2);
    v13 = *(v7 + 3);
    if (v14 >= v13 >> 1)
    {
      v7 = sub_100073004((v13 > 1), v14 + 1, 1, v7);
    }

    *(v7 + 2) = v14 + 1;
    v7[v14 + 32] = v12 & 1 | 0x20;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = sub_1000228D8(v15, v16, a1 & 0x101, a2);

  if (v17 != 2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100073004(0, *(v7 + 2) + 1, 1, v7);
    }

    v19 = *(v7 + 2);
    v18 = *(v7 + 3);
    if (v19 >= v18 >> 1)
    {
      v7 = sub_100073004((v18 > 1), v19 + 1, 1, v7);
    }

    *(v7 + 2) = v19 + 1;
    v7[v19 + 32] = v17 & 1 | 0x40;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = sub_1000228D8(v20, v21, a1 & 0x101, a2);

  if (v22 != 2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100073004(0, *(v7 + 2) + 1, 1, v7);
    }

    v24 = *(v7 + 2);
    v23 = *(v7 + 3);
    if (v24 >= v23 >> 1)
    {
      v7 = sub_100073004((v23 > 1), v24 + 1, 1, v7);
    }

    *(v7 + 2) = v24 + 1;
    v7[v24 + 32] = v22 & 1 | 0x60;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = sub_1000228D8(v25, v26, a1 & 0x101, a2);

  if (v27 != 2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100073004(0, *(v7 + 2) + 1, 1, v7);
    }

    v29 = *(v7 + 2);
    v28 = *(v7 + 3);
    if (v29 >= v28 >> 1)
    {
      v7 = sub_100073004((v28 > 1), v29 + 1, 1, v7);
    }

    *(v7 + 2) = v29 + 1;
    v7[v29 + 32] = v27 & 1 | 0x80;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = sub_1000228D8(v30, v31, a1 & 0x101, a2);

  if (v32 != 2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100073004(0, *(v7 + 2) + 1, 1, v7);
    }

    v34 = *(v7 + 2);
    v33 = *(v7 + 3);
    if (v34 >= v33 >> 1)
    {
      v7 = sub_100073004((v33 > 1), v34 + 1, 1, v7);
    }

    *(v7 + 2) = v34 + 1;
    v7[v34 + 32] = v32 & 1 | 0xE0;
  }

  return v7;
}

char *sub_100072350(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F6C(&qword_1000BBBB0, &qword_100085670);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100072470(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003F6C(&qword_1000BBBE0, &qword_1000856B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_100003F6C(&qword_1000BBBE8, &qword_1000856B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000725B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F6C(&qword_1000B9F40, &unk_100083190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000726D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F6C(&qword_1000B80D8, &unk_100081EE0);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100072804(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003F6C(&qword_1000BBB98, &qword_100085658);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_100003F6C(&qword_1000BBBA0, &qword_100085660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100072970(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F6C(&qword_1000BA110, &qword_100083250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100072ABC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100003F6C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003F6C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100072C18(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003F6C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100072DF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F6C(&qword_1000BBBF0, &unk_1000856C0);
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

char *sub_100072EE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F6C(&qword_1000BBBA8, &qword_100085668);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100073004(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F6C(&qword_1000BBB80, &qword_100085618);
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

uint64_t sub_1000730F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAConfigurationProfile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007315C(uint64_t a1)
{
  v2 = type metadata accessor for AEAConfigurationProfile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000731B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BBB88, &unk_100085620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100073228()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100073268()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000732A0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1000732E0()
{
  swift_unknownObjectRelease();

  sub_100003FB4((v0 + 40));

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100073340(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[16];
  v8 = v1[17];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000F618;

  return sub_100070B20(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_100073414(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001A778;

  return sub_10004F0FC(a1, v4);
}

uint64_t sub_1000734CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F618;

  return sub_10004F0FC(a1, v4);
}

uint64_t sub_100073584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000735CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_100030BD0(*(a4 + 48) + 56 * (v17 | (v12 << 6)), v23);
      v18 = v23[2];
      v19 = v23[1];
      v20 = v23[0];
      *(v11 + 48) = v24;
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      *v11 = v20;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 56;
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
        goto LABEL_26;
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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_10007373C(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
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
    v11 = 0;
    a3 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v11;
    v5[4] = v9;
    return a3;
  }

  if (!a3)
  {
    v11 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v29 = -1 << *(a4 + 32);
    v30 = a3;
    result = 0;
    v11 = 0;
    v12 = (63 - v7) >> 6;
    v13 = 1;
    while (v9)
    {
LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v11 << 6);
      v18 = *(a4 + 48) + 40 * v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      LOBYTE(v18) = *(v18 + 32);
      v23 = *(a4 + 56) + 16 * v17;
      v24 = *v23;
      v25 = *(v23 + 1);
      v26 = *(v23 + 8);
      *v10 = v19;
      *(v10 + 8) = v20;
      *(v10 + 16) = v22;
      *(v10 + 24) = v21;
      *(v10 + 32) = v18;
      *(v10 + 40) = v24;
      *(v10 + 41) = v25;
      *(v10 + 48) = v26;
      if (v13 == v30)
      {

        v7 = v29;
        a3 = v30;
        goto LABEL_24;
      }

      v10 += 56;

      result = v13;
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v14 = v11;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v15 >= v12)
      {
        break;
      }

      v9 = *(v6 + 8 * v15);
      ++v14;
      if (v9)
      {
        v11 = v15;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v12 <= v11 + 1)
    {
      v28 = v11 + 1;
    }

    else
    {
      v28 = v12;
    }

    v11 = v28 - 1;
    a3 = result;
    v7 = v29;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100073930()
{
  v1 = *(*(v0 + 16) + 64);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000739DC;

  return sub_100028710(v1);
}

uint64_t sub_1000739DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_100073AD4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [a1 arrayForKey:v5];

  if (v6 && (v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v6, v8 = sub_10001DB70(v7), , v8))
  {
    *(a2 + 24) = &type metadata for AEAExternalDisplayDeactivation;
    *(a2 + 32) = &off_1000ABD68;
    v9 = swift_allocObject();
    *a2 = v9;
    sub_10000859C(v2 + 24, (v9 + 5));
    v9[2] = 0xD000000000000045;
    v9[3] = 0x800000010008AA60;
    v9[4] = 4;
    v9[10] = v8;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100073BFC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = swift_task_alloc();
  v3[6] = v4;
  *v4 = v3;
  v4[1] = sub_100073CD0;

  return sub_1000282B0();
}

uint64_t sub_100073CD0(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100073DFC, 0, 0);
}

uint64_t sub_100073DFC()
{
  v1 = v0[7];
  if (!*(v1 + 16))
  {
    v12 = v0[3];
    *(v12 + 32) = 0;
    *v12 = 0u;
    *(v12 + 16) = 0u;

    goto LABEL_5;
  }

  v2 = v0[4];
  sub_100039B34(v1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = String._bridgeToObjectiveC()();
  [v2 setArray:isa forKey:v4];

  v0[2] = 0;
  v5 = [v2 persistWithError:v0 + 2];
  v6 = v0[2];
  v7 = v0[7];
  if (v5)
  {
    v8 = v0[5];
    v9 = v0[3];
    v9[3] = &type metadata for AEAExternalDisplayDeactivation;
    v9[4] = &off_1000ABD68;
    v10 = swift_allocObject();
    *v9 = v10;
    sub_10000859C(v8 + 24, (v10 + 5));
    v10[2] = 0xD000000000000045;
    v10[3] = 0x800000010008AA60;
    v10[4] = 4;
    v10[10] = v7;
    v11 = v6;
LABEL_5:
    v13 = v0[1];
    goto LABEL_7;
  }

  v14 = v6;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  v13 = v0[1];
LABEL_7:

  return v13();
}

uint64_t sub_100074014(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F618;

  return sub_100073BFC(a1, a2);
}

uint64_t sub_1000740BC()
{

  sub_100003FB4((v0 + 40));

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_100074114()
{
  v1 = OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___backing;
  if (*(v0 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___backing))
  {
    v2 = *(v0 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___backing);
  }

  else
  {
    v3 = sub_1000748B4();
    if (!v3)
    {
      v3 = sub_100021EC0(_swiftEmptyArrayStorage);
    }

    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

uint64_t sub_100074188@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___fileURL;
  swift_beginAccess();
  sub_100005AD4(v1 + v9, v8);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_100005B44(v8);
  URL.appendingPathComponent(_:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_100005BAC(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_100074374(uint64_t a1, uint64_t a2)
{
  v4 = sub_100074114();
  if (*(v4 + 16) && (v5 = sub_100020DA8(a1, a2), (v6 & 1) != 0))
  {
    sub_10000C6FC(*(v4 + 56) + 32 * v5, v9);

    sub_100005C1C();
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100074498(uint64_t a1, uint64_t a2)
{
  v4 = sub_100074114();
  if (*(v4 + 16) && (v5 = sub_100020DA8(a1, a2), (v6 & 1) != 0))
  {
    sub_10000C6FC(*(v4 + 56) + 32 * v5, v9);

    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1000745EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100074114();
  if (*(v4 + 16) && (v5 = sub_100020DA8(a1, a2), (v6 & 1) != 0))
  {
    sub_10000C6FC(*(v4 + 56) + 32 * v5, v9);

    sub_100003F6C(qword_1000B7628, &unk_10007FB20);
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1000748B4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100074188(v3);
  v13 = Data.init(contentsOf:options:)();
  v15 = v14;
  (*(v1 + 8))(v3, v0);
  v16 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v22[0] = 0;
  v18 = [v16 propertyListWithData:isa options:2 format:0 error:v22];

  v19 = *&v22[0];
  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    sub_100005A80(v13, v15);
    swift_unknownObjectRelease();
    sub_100010B20(v23, v22);
    sub_100003F6C(&qword_1000B7940, &unk_1000800F0);
    if (swift_dynamicCast())
    {
      return v21[1];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v20 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100005A80(v13, v15);
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C370(v4, qword_1000BC518);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&v23[0] = v8;
      *v7 = 136446210;
      swift_getErrorValue();
      v9 = sub_100067820(v21[3], v21[4]);
      v11 = sub_100043D60(v9, v10, v23);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to read property list. Error: %{public}s", v7, 0xCu);
      sub_100003FB4(v8);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100074C34()
{
  sub_100003FB4((v0 + 16));
  v1 = OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad_directoryURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100005B44(v0 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___fileURL);

  return swift_deallocClassInstance();
}

uint64_t _s17ReadingScratchpadCMa(uint64_t a1)
{
  result = qword_1000BBD00;
  if (!qword_1000BBD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100074D60(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1000059E4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100074E4C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC6A8 = v5;
    unk_1000BC6B0 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_100074F68()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC6B8 = v5;
    unk_1000BC6C0 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_10007508C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC6C8 = v5;
    unk_1000BC6D0 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000751B0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC6D8 = v5;
    unk_1000BC6E0 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000752CC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC6E8 = v5;
    unk_1000BC6F0 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000753E4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC6F8 = v5;
    unk_1000BC700 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_100075508()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC708 = v5;
    unk_1000BC710 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_10007562C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC718 = v5;
    unk_1000BC720 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_100075750()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC728 = v5;
    unk_1000BC730 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_100075874()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC738 = v5;
    unk_1000BC740 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_100075998()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC748 = v5;
    unk_1000BC750 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_100075AE0(void *a1)
{
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v1 = String.init(cString:)();
    v3 = v2;
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C370(v4, qword_1000BC518);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_100043D60(v1, v3, &v9);
      _os_log_impl(&_mh_execute_header, oslog, v5, "Received notification: %{public}s", v6, 0xCu);
      sub_100003FB4(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_100075CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100075D14(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_100075D70(void *a1)
{
  v2 = v1;
  v4 = sub_100003F6C(&qword_1000BBFE0, &qword_1000859C8);
  v136 = *(v4 - 8);
  v137 = v4;
  __chkstk_darwin(v4);
  v134 = &v134 - v5;
  v6 = sub_100003F6C(&qword_1000BBFE8, qword_1000859D0);
  v138 = *(v6 - 8);
  v139 = v6;
  __chkstk_darwin(v6);
  v135 = &v134 - v7;
  sub_100005A3C(v1, v1[3]);
  v8 = sub_10006AD78();
  v9 = *(*sub_100005A3C(v2, v2[3]) + 160);
  swift_unknownObjectRetain();
  v10 = sub_100072470(0, 1, 1, _swiftEmptyArrayStorage);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_100072470((v11 > 1), v12 + 1, 1, v10);
  }

  v147 = &type metadata for AEAOSTransactionActivation;
  v148 = &off_1000A7738;
  v13 = swift_allocObject();
  *&v145 = v13;
  v13[2] = 0xD00000000000002ALL;
  v13[3] = 0x800000010008B1C0;
  v13[4] = 0;
  v13[5] = v9;
  v10[2] = v12 + 1;
  sub_100008748(&v145, &v10[5 * v12 + 4]);
  v14 = [v8 showPromptsAndBanners];
  v15 = [v14 value];

  if (!v15)
  {
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v16 = [v15 BOOLValue];

  if (v16)
  {
    v17 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v17 + 320, &v147);
    v18 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v18 + 688, &v150);
    sub_100026B2C(a1, v153);
    *&v145 = 0xD000000000000026;
    *(&v145 + 1) = 0x800000010008B4D0;
    v146 = 0;
    v20 = v10[2];
    v19 = v10[3];
    if (v20 >= v19 >> 1)
    {
      v10 = sub_100072470((v19 > 1), v20 + 1, 1, v10);
    }

    v158 = &type metadata for AEAUserConfirmationActivation;
    v159 = &off_1000A8A88;
    *&v157 = swift_allocObject();
    sub_100077D10(&v145, v157 + 16);
    v10[2] = v20 + 1;
    sub_100008748(&v157, &v10[5 * v20 + 4]);
    sub_100077D6C(&v145);
  }

  v21 = sub_100005A3C(v2, v2[3]);
  sub_10000859C(*v21 + 320, &v157);
  v22 = sub_100005A3C(v2, v2[3]);
  sub_10000859C(*v22 + 464, v156);
  v23 = sub_100005A3C(v2, v2[3]);
  sub_10000859C(*v23 + 552, v155);
  sub_10000859C((a1 + 9), v154);
  v141 = a1[14];
  v24 = *(a1 + 15);
  v25 = a1[17];
  v143 = a1;
  v26 = a1[24];
  v142 = v24;

  v27 = [v8 enforceSingleAppMode];
  v28 = [v27 value];

  if (!v28)
  {
    goto LABEL_69;
  }

  v140 = [v28 BOOLValue];

  v144 = v8;
  v29 = [v8 setCustomHomeScreenLayout];
  v30 = [v29 value];

  if (!v30)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    return;
  }

  v31 = [v30 BOOLValue];

  v147 = &type metadata for AEARestrictionsActivation;
  v148 = &off_1000A7400;
  v32 = swift_allocObject();
  *&v145 = v32;
  *(v32 + 16) = 0xD00000000000002ALL;
  *(v32 + 24) = 0x800000010008B220;
  *(v32 + 32) = xmmword_100085950;
  *(v32 + 48) = 0x800000010008B1F0;
  sub_100008748(&v157, v32 + 56);
  sub_100008748(v156, v32 + 96);
  sub_100008748(v155, v32 + 136);
  sub_100008748(v154, v32 + 176);
  *(v32 + 216) = v141;
  *(v32 + 224) = v142;
  *(v32 + 240) = v25;
  *(v32 + 248) = v26;
  *(v32 + 256) = v140;
  *(v32 + 257) = v31;
  *&v156[0] = v10;
  v34 = v10[2];
  v33 = v10[3];
  if (v34 >= v33 >> 1)
  {
    v10 = sub_100072470((v33 > 1), v34 + 1, 1, v10);
    *&v156[0] = v10;
  }

  v35 = v144;
  v36 = v147;
  v37 = v148;
  v38 = sub_10001A19C(&v145, v147);
  __chkstk_darwin(v38);
  v40 = &v134 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v40);
  sub_1000774A0(v34, v40, v156, v36, v37);
  sub_100003FB4(&v145);
  v42 = [v35 disableMultitaskingModes];
  v43 = [v42 value];

  if (!v43)
  {
    goto LABEL_71;
  }

  v44 = [v43 BOOLValue];

  if (v44)
  {
    v45 = sub_100005A3C(v2, v2[3]);
    v46 = v10[2];
    v47 = v10[3];
    v142 = *(*v45 + 672);
    swift_unknownObjectRetain();
    if (v46 >= v47 >> 1)
    {
      v10 = sub_100072470((v47 > 1), v46 + 1, 1, v10);
    }

    v147 = &type metadata for AEAMultitaskingModeActivation;
    v148 = &off_1000AB148;
    v48 = swift_allocObject();
    *&v145 = v48;
    *(v48 + 16) = 0xD00000000000002FLL;
    *(v48 + 24) = 0x800000010008B4A0;
    *(v48 + 32) = 1;
    *(v48 + 40) = v142;
    v10[2] = v46 + 1;
    sub_100008748(&v145, &v10[5 * v46 + 4]);
  }

  v49 = [v35 disableSiri];
  v50 = [v49 value];

  if (!v50)
  {
    goto LABEL_72;
  }

  v51 = [v50 BOOLValue];

  if (v51)
  {
    v52 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v52 + 512, &v149);
    v148 = 1;
    *&v157 = 0;
    *(&v157 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v53._countAndFlagsBits = 0xD000000000000031;
    v53._object = 0x800000010008B460;
    String.append(_:)(v53);
    v54._countAndFlagsBits = 0x7473655269726953;
    v54._object = 0xEE00726F74636972;
    String.append(_:)(v54);
    v145 = v157;
    v146 = 0xD00000000000002ALL;
    v147 = 0x800000010008B430;
    v56 = v10[2];
    v55 = v10[3];
    if (v56 >= v55 >> 1)
    {
      v10 = sub_100072470((v55 > 1), v56 + 1, 1, v10);
    }

    v158 = &type metadata for AEAExternalSubsystemRestrictionActivation;
    v159 = &off_1000AC290;
    *&v157 = swift_allocObject();
    sub_100077BAC(&v145, v157 + 16);
    v10[2] = v56 + 1;
    sub_100008748(&v157, &v10[5 * v56 + 4]);
    sub_100077C08(&v145);
  }

  v57 = [v35 scrubPasteboard];
  v58 = [v57 value];

  if (!v58)
  {
    goto LABEL_73;
  }

  v59 = [v58 BOOLValue];

  if (v59)
  {
    v60 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v60 + 224, &v147);
    *&v145 = 0xD00000000000002CLL;
    *(&v145 + 1) = 0x800000010008B400;
    v146 = 1;
    v62 = v10[2];
    v61 = v10[3];
    if (v62 >= v61 >> 1)
    {
      v10 = sub_100072470((v61 > 1), v62 + 1, 1, v10);
    }

    v158 = &type metadata for AEAPasteboardActivation;
    v159 = &off_1000AB6A8;
    *&v157 = swift_allocObject();
    sub_100077AB4(&v145, v157 + 16);
    v10[2] = v62 + 1;
    sub_100008748(&v157, &v10[5 * v62 + 4]);
    sub_100077B10(&v145);
  }

  v63 = [v35 restrictNetworkAccess];
  v64 = [v63 value];

  if (!v64)
  {
    goto LABEL_74;
  }

  v65 = [v64 BOOLValue];

  if (v65)
  {
    *&v142 = *(*sub_100005A3C(v2, v2[3]) + 272);
    v66 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v66 + 168, &v148);
    v67 = v143;
    v68 = v143[12];
    v69 = v143[13];
    sub_100005A3C(v143 + 9, v68);
    sub_10000F874(sub_100077410, 0, v68, &type metadata for Bool, v69, &v151);
    v70 = v67[7];
    swift_unknownObjectRetain();

    v71 = [v35 networkPolicyExemptExecutablePaths];
    swift_getKeyPath();
    v72 = v134;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    sub_100003F6C(&qword_1000BC000, &unk_100085A20);
    sub_100004EE0(&qword_1000BC008, &qword_1000BBFE0, &qword_1000859C8, &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>);
    v73 = v135;
    v74 = v137;
    Publisher.map<A>(_:)();
    (*(v136 + 8))(v72, v74);
    sub_100004EE0(&unk_1000BC010, &qword_1000BBFE8, qword_1000859D0, &protocol conformance descriptor for Publishers.Map<A, B>);
    v75 = v139;
    v76 = Publisher.eraseToAnyPublisher()();

    (*(v138 + 8))(v73, v75);
    *&v145 = 0xD000000000000025;
    *(&v145 + 1) = 0x800000010008B3D0;
    v146 = 1;
    v147 = v142;
    v153[1] = v70;
    v153[2] = v76;
    v78 = v10[2];
    v77 = v10[3];
    if (v78 >= v77 >> 1)
    {
      v10 = sub_100072470((v77 > 1), v78 + 1, 1, v10);
    }

    v158 = &type metadata for AEANetworkActivation;
    v159 = &off_1000A8508;
    *&v157 = swift_allocObject();
    sub_1000779C4(&v145, v157 + 16);
    v10[2] = v78 + 1;
    sub_100008748(&v157, &v10[5 * v78 + 4]);
    sub_100077A20(&v145);
    v35 = v144;
  }

  v79 = [v35 stopAirPlayBeforehand];
  v80 = [v79 value];

  if (!v80)
  {
    goto LABEL_75;
  }

  v81 = [v80 BOOLValue];

  if (v81)
  {
    v82 = *(*sub_100005A3C(v2, v2[3]) + 264);
    v83 = v10[2];
    v84 = v10[3];
    swift_unknownObjectRetain();
    if (v83 >= v84 >> 1)
    {
      v10 = sub_100072470((v84 > 1), v83 + 1, 1, v10);
    }

    v147 = &type metadata for AEAAirPlayActivation;
    v148 = &off_1000A6D70;
    v85 = swift_allocObject();
    *&v145 = v85;
    v85[2] = 0xD000000000000021;
    v85[3] = 0x800000010008B3A0;
    v85[4] = 1;
    v85[5] = v82;
    v10[2] = v83 + 1;
    sub_100008748(&v145, &v10[5 * v83 + 4]);
  }

  v86 = [v35 restrictMedia];
  v87 = [v86 value];

  if (!v87)
  {
    goto LABEL_76;
  }

  v88 = [v87 BOOLValue];

  if (v88)
  {
    v89 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v89 + 280, &v147);
    v90 = v143[7];
    *&v145 = 0xD000000000000023;
    *(&v145 + 1) = 0x800000010008B370;
    v146 = 1;
    v150 = v90;
    v91 = v10[2];
    v92 = v10[3];

    if (v91 >= v92 >> 1)
    {
      v10 = sub_100072470((v92 > 1), v91 + 1, 1, v10);
    }

    v158 = &type metadata for AEARestrictMediaActivation;
    v159 = &off_1000AB438;
    *&v157 = swift_allocObject();
    sub_100077858(&v145, v157 + 16);
    v10[2] = v91 + 1;
    sub_100008748(&v157, &v10[5 * v91 + 4]);
    sub_1000778B4(&v145);
  }

  v93 = *(*sub_100005A3C(v2, v2[3]) + 504);
  v94 = sub_100005A3C(v2, v2[3]);
  sub_10000859C(*v94 + 632, &v157);
  swift_unknownObjectRetain();
  v95 = [v35 expirationTime];
  v96 = [v95 value];

  if (!v96)
  {
    goto LABEL_77;
  }

  [v96 doubleValue];
  v98 = v97;

  sub_100026B2C(v143, &v152);
  *&v145 = 0xD000000000000025;
  *(&v145 + 1) = 0x800000010008B250;
  v146 = 1;
  v147 = v93;
  sub_100008748(&v157, &v148);
  v151 = v98;
  v100 = v10[2];
  v99 = v10[3];
  if (v100 >= v99 >> 1)
  {
    v10 = sub_100072470((v99 > 1), v100 + 1, 1, v10);
  }

  v158 = &type metadata for AEAExpirationActivation;
  v159 = &off_1000A9038;
  *&v157 = swift_allocObject();
  sub_10003C9EC(&v145, v157 + 16);
  v10[2] = v100 + 1;
  sub_100008748(&v157, &v10[5 * v100 + 4]);
  sub_10003CABC(&v145);
  v101 = [v35 forceScreenMirroring];
  v102 = [v101 value];

  if (!v102)
  {
    goto LABEL_78;
  }

  v103 = [v102 BOOLValue];

  if (v103)
  {
    v104 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v104 + 552, &v147);
    *&v145 = 0xD000000000000035;
    *(&v145 + 1) = 0x800000010008B330;
    v146 = 1;
    v106 = v10[2];
    v105 = v10[3];
    if (v106 >= v105 >> 1)
    {
      v10 = sub_100072470((v105 > 1), v106 + 1, 1, v10);
    }

    v158 = &type metadata for AEAExternalDisplayActivation;
    v159 = &off_1000ABC80;
    *&v157 = swift_allocObject();
    sub_100077738(&v145, v157 + 16);
    v10[2] = v106 + 1;
    sub_100008748(&v157, &v10[5 * v106 + 4]);
    sub_100077794(&v145);
  }

  v107 = [v35 allowRemotelyKillingAgent];
  v108 = [v107 value];

  if (!v108)
  {
    goto LABEL_79;
  }

  v109 = [v108 BOOLValue];

  if (v109)
  {
    v110 = *(*sub_100005A3C(v2, v2[3]) + 208);
    v111 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v111 + 104, &v148);
    *&v145 = 0xD00000000000003CLL;
    *(&v145 + 1) = 0x800000010008B2F0;
    v146 = 1;
    v147 = v110;
    v112 = v10[2];
    v113 = v10[3];
    swift_unknownObjectRetain();
    if (v112 >= v113 >> 1)
    {
      v10 = sub_100072470((v113 > 1), v112 + 1, 1, v10);
    }

    v158 = &type metadata for AEAKillAgentNotificationListenerActivation;
    v159 = &off_1000A7008;
    *&v157 = swift_allocObject();
    sub_10000F70C(&v145, v157 + 16);
    v10[2] = v112 + 1;
    sub_100008748(&v157, &v10[5 * v112 + 4]);
    sub_1000776E0(&v145);
  }

  v114 = [v35 failOnDeactivation];
  v115 = [v114 value];

  if (!v115)
  {
    goto LABEL_80;
  }

  v116 = [v115 BOOLValue];

  v118 = v10[2];
  v117 = v10[3];
  v119 = v118 + 1;
  if (v118 >= v117 >> 1)
  {
    v10 = sub_100072470((v117 > 1), v118 + 1, 1, v10);
  }

  v147 = &type metadata for AEAFailingDeactivationAction;
  v148 = &off_1000A9258;
  v120 = swift_allocObject();
  *&v145 = v120;
  *(v120 + 16) = 0xD000000000000034;
  *(v120 + 24) = 0x800000010008B280;
  *(v120 + 32) = 1;
  *(v120 + 40) = v116;
  v10[2] = v119;
  sub_100008748(&v145, &v10[5 * v118 + 4]);
  v121 = sub_100005A3C(v2, v2[3]);
  sub_10000859C(*v121 + 168, &v147);
  v122 = *(*sub_100005A3C(v2, v2[3]) + 208);
  *&v145 = 0xD00000000000002BLL;
  *(&v145 + 1) = 0x800000010008B2C0;
  v146 = 2;
  v150 = v122;
  v123 = v10[3];
  swift_unknownObjectRetain();
  if ((v118 + 2) > (v123 >> 1))
  {
    v10 = sub_100072470((v123 > 1), v118 + 2, 1, v10);
  }

  v158 = &type metadata for AEAAssessmentStateActivation;
  v159 = &off_1000AAFA0;
  *&v157 = swift_allocObject();
  sub_1000775E8(&v145, v157 + 16);
  v10[2] = v118 + 2;
  v124 = (v10 + 4);
  sub_100008748(&v157, &v10[5 * v119 + 4]);
  sub_100077644(&v145);
  v125 = v2[5];
  v126 = *(*sub_100005A3C(v2, v2[3]) + 152);
  v127 = v10[2];
  if (v127)
  {
    *&v157 = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    specialized ContiguousArray.reserveCapacity(_:)();
    do
    {
      sub_10000859C(v124, &v145);
      v128 = v147;
      v129 = v148;
      sub_100005A3C(&v145, v147);
      sub_10004D820(v128, v129);
      sub_100003FB4(&v145);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v124 += 40;
      --v127;
    }

    while (v127);

    v35 = v144;
  }

  else
  {
    swift_unknownObjectRetain();
  }

  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v130 = qword_1000BC5B8;
  v131 = objc_allocWithZone(AEPolicyBundle);
  v132 = v130;
  sub_100003F6C(&qword_1000BBFF8, &unk_1000859E8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v131 initWithPolicyStore:v125 performancePrimitives:v126 activations:isa queue:v132];

  swift_unknownObjectRelease();
}

uint64_t sub_100077428()
{

  sub_100003FB4(v0 + 7);
  sub_100003FB4(v0 + 12);
  sub_100003FB4(v0 + 17);
  sub_100003FB4(v0 + 22);

  return _swift_deallocObject(v0, 258, 7);
}

uint64_t sub_1000774A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100004F80(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100008748(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_100077538()
{

  swift_unknownObjectRelease();
  sub_100003FB4(v0 + 6);
  if (v0[15])
  {
    sub_100003FB4(v0 + 12);
  }

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_100077598()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100077698()
{

  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 48));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100077800(void (*a1)(void))
{

  sub_100003FB4((v1 + 40));
  a1(*(v1 + 80));

  return _swift_deallocObject(v1, 88, 7);
}

id sub_100077914@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 value];
  *a2 = result;
  return result;
}

uint64_t sub_100077964()
{

  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 48));
  sub_100003FB4((v0 + 88));

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100077A74()
{

  sub_100003FB4((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100077B64()
{

  sub_100003FB4((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100077C64(uint64_t a1)
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100077CB0()
{

  sub_100003FB4(v0 + 5);
  sub_100003FB4(v0 + 10);
  if (v0[18])
  {
    sub_100003FB4(v0 + 15);
  }

  return _swift_deallocObject(v0, 176, 7);
}

void *sub_100077DEC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = objc_opt_self();

  result = [v3 sharedConnection];
  if (result)
  {
    v5 = result;

    v6 = [v5 effectiveRestrictions];

    if (!v6 || (v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v6, v8 = sub_100077EDC(v7), , !v8))
    {

      v8 = _swiftEmptyDictionarySingleton;
    }

    v2[4] = v8;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100077EDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003F6C(&qword_1000BB988, &unk_100085B10);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_100022828(*(a1 + 48) + 40 * v11, v24);
        sub_10000C6FC(*(a1 + 56) + 32 * v11, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_100022828(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_100019B28(v21, &qword_1000BB978, &qword_1000852D8);

          goto LABEL_23;
        }

        sub_10000C6FC(v22 + 8, v20);
        sub_100019B28(v21, &qword_1000BB978, &qword_1000852D8);
        sub_100003F6C(&qword_1000B7940, &unk_1000800F0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_100020DA8(v18, v19);
        v12 = result;
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;

          *(v2[7] + 8 * v12) = v18;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1000781BC(uint64_t *a1)
{
  v2 = v1;
  v198 = a1;
  if (*v1 == 3)
  {

    goto LABEL_36;
  }

  v199 = *v1;
  v200[0] = *(v1 + 1);
  *(v200 + 15) = *(v1 + 23);

  v4 = sub_1000797CC();
  if (!v4)
  {
LABEL_36:
    if (!v2[5])
    {
      goto LABEL_70;
    }

    v191 = v2[5];
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v198[2])
    {
      sub_100020DA8(v69, v70);
      v72 = v71;

      if (v72)
      {
LABEL_42:
        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = sub_100050624(v197, v78, v79);
        if (*v81)
        {
          v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v84 = v83;
          sub_100003F6C(&qword_1000BC190, &qword_100085AE0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1000807D0;
          *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(inited + 40) = v86;
          *(inited + 48) = _swiftEmptyArrayStorage;
          v87 = sub_1000222DC(inited);
          swift_setDeallocating();
          sub_100019B28(inited + 32, &qword_1000BC198, &qword_100085AE8);
          v196 = sub_100003F6C(&qword_1000BC1A0, &qword_100085AF0);
          *&v195 = v87;
          sub_10003FB78(&v195, v82, v84);
        }

        (v80)(v197, 0);

        v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = sub_100050624(v197, v88, v89);
        if (*v91)
        {
          sub_100003F6C(&qword_1000BC190, &qword_100085AE0);
          v92 = swift_initStackObject();
          *(v92 + 16) = xmmword_1000807D0;
          *(v92 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v92 + 40) = v93;
          *(v92 + 48) = _swiftEmptyArrayStorage;
          v94 = sub_1000222DC(v92);
          swift_setDeallocating();
          sub_100019B28(v92 + 32, &qword_1000BC198, &qword_100085AE8);
          v196 = sub_100003F6C(&qword_1000BC1A0, &qword_100085AF0);
          *&v195 = v94;
          sub_10003FB78(&v195, 0xD000000000000017, 0x800000010008B5F0);
        }

        (v90)(v197, 0);

        v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v97 = sub_100050624(v197, v95, v96);
        if (*v98)
        {
          v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v101 = v100;
          sub_100003F6C(&qword_1000BC1A8, &qword_100085AF8);
          v102 = swift_initStackObject();
          *(v102 + 16) = xmmword_100083800;
          *(v102 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v102 + 40) = v103;
          *(v102 + 48) = 1;
          *(v102 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v102 + 64) = v104;
          *(v102 + 72) = 1;
          v105 = sub_1000221B8(v102);
          swift_setDeallocating();
          sub_100003F6C(&qword_1000BC1B0, &qword_100085B00);
          swift_arrayDestroy();
          v196 = sub_100003F6C(&qword_1000BC1B8, &qword_100085B08);
          *&v195 = v105;
          sub_10003FB78(&v195, v99, v101);
        }

        (v97)(v197, 0);

        v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (v198[2])
        {
          sub_100020DA8(v106, v107);
          v109 = v108;

          if (v109)
          {
LABEL_53:
            v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v117 = sub_100050624(v197, v115, v116);
            if (*v118)
            {
              v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v121 = v120;
              sub_100003F6C(&qword_1000BC178, &qword_100085AC8);
              v122 = swift_initStackObject();
              *(v122 + 16) = xmmword_1000807D0;
              *(v122 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v122 + 40) = v123;
              v124 = *(v191 + 16);
              v125 = _swiftEmptyArrayStorage;
              if (v124)
              {
                v183 = v119;
                v185 = v117;
                *&v195 = _swiftEmptyArrayStorage;
                sub_10004A8CC(0, v124, 0);
                v125 = v195;
                v126 = (v191 + 40);
                do
                {
                  v127 = *(v126 - 1);
                  v128 = *v126;
                  *&v195 = v125;
                  v129 = v125[2];
                  v130 = v125[3];

                  if (v129 >= v130 >> 1)
                  {
                    sub_10004A8CC((v130 > 1), v129 + 1, 1);
                    v125 = v195;
                  }

                  v125[2] = v129 + 1;
                  v131 = &v125[2 * v129];
                  v131[4] = v127;
                  v131[5] = v128;
                  v126 += 2;
                  --v124;
                }

                while (v124);
                v117 = v185;
                v119 = v183;
              }

              *(v122 + 48) = v125;
              v132 = sub_1000222F0(v122);
              swift_setDeallocating();
              sub_100019B28(v122 + 32, &qword_1000BC180, &qword_100085AD0);
              v196 = sub_100003F6C(&qword_1000BC188, &qword_100085AD8);
              *&v195 = v132;
              sub_10003FB78(&v195, v119, v121);
              (v117)(v197, 0);
            }

            else
            {
              (v117)(v197, 0);
            }

            v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (v198[2])
            {
              sub_100020DA8(v133, v134);
              v136 = v135;

              if (v136)
              {
                goto LABEL_67;
              }
            }

            else
            {
            }

            v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v139 = v138;
            v140 = v198;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v197[0] = v140;
            sub_100040BB8(_swiftEmptyDictionarySingleton, v137, v139, isUniquelyReferenced_nonNull_native);

            v198 = v197[0];
LABEL_67:
            v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v144 = sub_100050624(v197, v142, v143);
            if (*v145)
            {
              sub_100003F6C(&qword_1000BC1A8, &qword_100085AF8);
              v146 = swift_initStackObject();
              *(v146 + 16) = xmmword_100083800;
              *(v146 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v146 + 40) = v147;
              *(v146 + 48) = 1;
              *(v146 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v146 + 64) = v148;
              *(v146 + 72) = 1;
              v149 = sub_1000221B8(v146);
              swift_setDeallocating();
              sub_100003F6C(&qword_1000BC1B0, &qword_100085B00);
              swift_arrayDestroy();
              v196 = sub_100003F6C(&qword_1000BC1B8, &qword_100085B08);
              *&v195 = v149;
              sub_10003FB78(&v195, 0xD000000000000030, 0x800000010008B610);
            }

            (v144)(v197, 0);

            v2 = v187;
LABEL_70:
            v150 = v2[6];
            if (!v150)
            {
LABEL_86:
              if (v198[2])
              {
                v178 = sub_100079240(v198);
              }

              else
              {

                return 0;
              }

              return v178;
            }

            v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (v198[2])
            {
              sub_100020DA8(v151, v152);
              v154 = v153;

              if (v154)
              {
                goto LABEL_76;
              }
            }

            else
            {
            }

            v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v157 = v156;
            v158 = v198;
            v159 = swift_isUniquelyReferenced_nonNull_native();
            v197[0] = v158;
            sub_100040BB8(_swiftEmptyDictionarySingleton, v155, v157, v159);

            v198 = v197[0];
LABEL_76:
            v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v162 = sub_100050624(v197, v160, v161);
            if (*v163)
            {
              v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v166 = v165;
              sub_100003F6C(&qword_1000BC178, &qword_100085AC8);
              v167 = swift_initStackObject();
              *(v167 + 16) = xmmword_1000807D0;
              *(v167 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v167 + 40) = v168;
              v169 = *(v150 + 16);
              v170 = _swiftEmptyArrayStorage;
              if (v169)
              {
                v186 = v166;
                v188 = v164;
                v192 = v162;
                *&v195 = _swiftEmptyArrayStorage;
                sub_10004A8CC(0, v169, 0);
                v170 = v195;
                v171 = (v150 + 40);
                do
                {
                  v172 = *(v171 - 1);
                  v173 = *v171;
                  *&v195 = v170;
                  v174 = v170[2];
                  v175 = v170[3];

                  if (v174 >= v175 >> 1)
                  {
                    sub_10004A8CC((v175 > 1), v174 + 1, 1);
                    v170 = v195;
                  }

                  v170[2] = v174 + 1;
                  v176 = &v170[2 * v174];
                  v176[4] = v172;
                  v176[5] = v173;
                  v171 += 2;
                  --v169;
                }

                while (v169);
                v162 = v192;
                v164 = v188;
                v166 = v186;
              }

              *(v167 + 48) = v170;
              v177 = sub_1000222F0(v167);
              swift_setDeallocating();
              sub_100019B28(v167 + 32, &qword_1000BC180, &qword_100085AD0);
              v196 = sub_100003F6C(&qword_1000BC188, &qword_100085AD8);
              *&v195 = v177;
              sub_10003FB78(&v195, v164, v166);
              (v162)(v197, 0);
            }

            else
            {
              (v162)(v197, 0);
            }

            goto LABEL_86;
          }
        }

        else
        {
        }

        v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;
        v113 = v198;
        v114 = swift_isUniquelyReferenced_nonNull_native();
        v197[0] = v113;
        sub_100040BB8(_swiftEmptyDictionarySingleton, v110, v112, v114);

        v198 = v197[0];
        goto LABEL_53;
      }
    }

    else
    {
    }

    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;
    v76 = v198;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v197[0] = v76;
    sub_100040BB8(_swiftEmptyDictionarySingleton, v73, v75, v77);

    v198 = v197[0];
    goto LABEL_42;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a1[2])
  {
    sub_100020DA8(v6, v7);
    v9 = v8;

    if (v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v197[0] = a1;
  sub_100040BB8(_swiftEmptyDictionarySingleton, v10, v12, v13);

  v198 = a1;
LABEL_9:
  v14 = 0;
  v15 = v5 + 8;
  v16 = 1 << *(v5 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v5[8];
  v19 = (v16 + 63) >> 6;
  v181 = v5;
  v182 = v5 + 8;
  v180 = v19;
  while (v18)
  {
LABEL_19:
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
    v22 = v5[7];
    v23 = (v5[6] + 16 * v21);
    v189 = *v23;
    v24 = v5;
    v25 = v23[1];
    v26 = *(v22 + v21);
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_100050624(v197, v27, v29);
    v31 = v30;
    v193 = v32;
    if (!*v32)
    {

      (v31)(v197, 0);
      v5 = v24;
      goto LABEL_13;
    }

    v190 = v25;
    v184 = v30;
    sub_100003F6C(&qword_1000BC1A8, &qword_100085AF8);
    v33 = swift_allocObject();
    *(v33 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v33 + 40) = v34;
    *(v33 + 48) = v26;
    *(v33 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v33 + 64) = v35;
    *(v33 + 72) = v26;
    sub_100003F6C(&qword_1000B88C0, &qword_1000815B0);
    v36 = static _DictionaryStorage.allocate(capacity:)();
    v37 = *(v33 + 32);
    v38 = *(v33 + 40);
    v39 = *(v33 + 48);

    v40 = sub_100020DA8(v37, v38);
    if (v41)
    {
      goto LABEL_91;
    }

    *(v36 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v40;
    v42 = (v36[6] + 16 * v40);
    *v42 = v37;
    v42[1] = v38;
    *(v36[7] + v40) = v39;
    v43 = v36[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_92;
    }

    v36[2] = v45;
    v46 = *(v33 + 56);
    v47 = *(v33 + 64);
    v48 = *(v33 + 72);

    v49 = sub_100020DA8(v46, v47);
    if (v50)
    {
      goto LABEL_91;
    }

    *(v36 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v49;
    v51 = (v36[6] + 16 * v49);
    *v51 = v46;
    v51[1] = v47;
    *(v36[7] + v49) = v48;
    v52 = v36[2];
    v44 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v44)
    {
      goto LABEL_92;
    }

    v36[2] = v53;

    swift_setDeallocating();
    sub_100003F6C(&qword_1000BC1B0, &qword_100085B00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v196 = sub_100003F6C(&qword_1000BC1B8, &qword_100085B08);
    *&v195 = v36;
    sub_100010B20(&v195, v194);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = *v193;
    *v193 = 0x8000000000000000;
    v56 = sub_100020DA8(v189, v190);
    v58 = v55[2];
    v59 = (v57 & 1) == 0;
    v44 = __OFADD__(v58, v59);
    v60 = v58 + v59;
    if (v44)
    {
      goto LABEL_93;
    }

    v61 = v57;
    if (v55[3] < v60)
    {
      sub_10006BC88(v60, v54);
      v56 = sub_100020DA8(v189, v190);
      v5 = v181;
      v19 = v180;
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_95;
      }

LABEL_29:
      if ((v61 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v5 = v181;
    v19 = v180;
    if (v54)
    {
      goto LABEL_29;
    }

    v65 = v56;
    sub_10006D7B0();
    v56 = v65;
    if ((v61 & 1) == 0)
    {
LABEL_32:
      v55[(v56 >> 6) + 8] |= 1 << v56;
      v66 = (v55[6] + 16 * v56);
      *v66 = v189;
      v66[1] = v190;
      sub_100010B20(v194, (v55[7] + 32 * v56));
      v67 = v55[2];
      v44 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v44)
      {
        goto LABEL_94;
      }

      v55[2] = v68;
      goto LABEL_34;
    }

LABEL_30:
    v63 = v56;

    v64 = (v55[7] + 32 * v63);
    sub_100003FB4(v64);
    sub_100010B20(v194, v64);
LABEL_34:
    *v193 = v55;

    (v184)(v197, 0);
LABEL_13:
    v18 &= v18 - 1;

    v15 = v182;
  }

  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      v2 = v187;
      goto LABEL_36;
    }

    v18 = v15[v20];
    ++v14;
    if (v18)
    {
      v14 = v20;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100079240(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003F6C(&qword_1000B8850, &qword_100081568);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        sub_100003F6C(&qword_1000B7940, &unk_1000800F0);
        swift_dynamicCast();
        sub_100010B20(&v22, v24);
        sub_100010B20(v24, v25);
        sub_100010B20(v25, &v23);
        result = sub_100020DA8(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100003FB4(v11);
          result = sub_100010B20(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_100010B20(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000794A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003F6C(&unk_1000B88D0, &qword_1000815B8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000C6FC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100010B20(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100010B20(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100010B20(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100010B20(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100079768()
{

  return swift_deallocClassInstance();
}

void *sub_1000797CC()
{
  v1 = v0;
  v2 = *(v0 + 1);
  if (v2 != 2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v2, v3, v4);
  }

  v5 = *(v0 + 2);
  if (v5 != 2)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v5, v6, v7);
  }

  v8 = *(v0 + 3);
  if (v8 != 2)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v8, v9, v10);
  }

  v11 = *(v0 + 4);
  if (v11 != 2)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v11, v12, v13);
  }

  v14 = *(v0 + 5);
  if (v14 != 2)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v14, v15, v16);
  }

  v17 = *(v0 + 6);
  if (v17 != 2)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v17, v18, v19);
  }

  v20 = *(v0 + 7);
  if (v20 != 2)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v20, v21, v22);
  }

  v23 = *(v0 + 8);
  if (v23 != 2)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v23, v24, v25);
  }

  v26 = *(v0 + 9);
  if (v26 != 2)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v26, v27, v28);
  }

  v29 = *(v0 + 10);
  if (v29 != 2)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v29, v30, v31);
  }

  v32 = *(v0 + 11);
  if (v32 != 2)
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v32, v33, v34);
  }

  v35 = *(v0 + 12);
  if (v35 != 2)
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v35, v36, v37);
  }

  v38 = *(v0 + 13);
  if (v38 != 2)
  {
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v38, v39, v40);
  }

  v41 = *(v0 + 14);
  if (v41 != 2)
  {
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v41, v42, v43);
  }

  v44 = *(v0 + 15);
  if (v44 != 2)
  {
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v44, v45, v46);
  }

  v47 = *(v0 + 16);
  if (v47 != 2)
  {
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v47, v48, v49);
  }

  v50 = *(v0 + 17);
  if (v50 != 2)
  {
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v50, v51, v52);
  }

  v53 = *(v0 + 18);
  if (v53 != 2)
  {
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v53, v54, v55);
  }

  v56 = *(v0 + 19);
  if (v56 != 2)
  {
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v56, v57, v58);
  }

  v59 = *(v0 + 20);
  if (v59 != 2)
  {
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v59, v60, v61);
  }

  v62 = *(v0 + 21);
  if (v62 != 2)
  {
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v62, v63, v64);
  }

  v65 = *(v0 + 22);
  if (v65 != 2)
  {
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v65, v66, v67);
  }

  v68 = *(v0 + 23);
  if (v68 != 2)
  {
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v68, v69, v70);
  }

  v71 = *(v0 + 24);
  if (v71 != 2)
  {
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v71, v72, v73);
  }

  v74 = *(v0 + 26);
  if (v74 != 2)
  {
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v74, v75, v76);
  }

  v77 = *(v0 + 25);
  if (v77 != 2)
  {
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v77, v78, v79);
  }

  if (v74 != 2)
  {
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v74, v80, v81);
  }

  v82 = *(v0 + 27);
  if (v82 != 2)
  {
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v82, v83, v84);
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v82, v85, v86);
  }

  v87 = *(v0 + 28);
  if (v87 != 2)
  {
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v87, v88, v89);
  }

  v90 = *(v0 + 30);
  if (v90 != 2)
  {
    sub_10003FC48(v90, 0xD000000000000025, 0x800000010008B650);
  }

  v91 = *(v0 + 31);
  if (v91 != 2)
  {
    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v91, v92, v93);
  }

  v94 = *(v0 + 32);
  if (v94 != 2)
  {
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v94, v95, v96);
  }

  v97 = *(v0 + 33);
  if (v97 != 2)
  {
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v97, v98, v99);
  }

  v100 = *(v0 + 34);
  if (v100 != 2)
  {
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v100, v101, v102);
  }

  if (*(v0 + 35) == 3 || (v103 = sub_10007A1BC(*(v0 + 35))) == 0)
  {
LABEL_91:
    v130 = *(v1 + 29);
    if (v130 != 2)
    {
      v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10003FC48(v130, v131, v132);
    }

    result = _swiftEmptyDictionarySingleton;
    if (!_swiftEmptyDictionarySingleton[2])
    {

      return 0;
    }
  }

  else
  {
    v134 = v103;
    v104 = 0;
    v105 = v103 + 8;
    v106 = 1 << *(v103 + 32);
    v107 = -1;
    if (v106 < 64)
    {
      v107 = ~(-1 << v106);
    }

    v108 = v107 & v103[8];
    v109 = (v106 + 63) >> 6;
    while (v108)
    {
      v111 = v104;
LABEL_81:
      v112 = __clz(__rbit64(v108)) | (v111 << 6);
      v113 = (v103[6] + 16 * v112);
      v115 = *v113;
      v114 = v113[1];
      v116 = *(v103[7] + v112);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = sub_100020DA8(v115, v114);
      v120 = _swiftEmptyDictionarySingleton[2];
      v121 = (v119 & 1) == 0;
      v122 = __OFADD__(v120, v121);
      v123 = v120 + v121;
      if (v122)
      {
        goto LABEL_97;
      }

      v124 = v119;
      if (_swiftEmptyDictionarySingleton[3] >= v123)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v129 = v118;
          sub_10006DAF8();
          v118 = v129;
        }
      }

      else
      {
        sub_10006C1F8(v123, isUniquelyReferenced_nonNull_native);
        v118 = sub_100020DA8(v115, v114);
        if ((v124 & 1) != (v125 & 1))
        {
          goto LABEL_99;
        }
      }

      v108 &= v108 - 1;
      if (v124)
      {
        v110 = v118;

        *(_swiftEmptyDictionarySingleton[7] + v110) = v116;
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v118 >> 6) + 8] |= 1 << v118;
        v126 = (_swiftEmptyDictionarySingleton[6] + 16 * v118);
        *v126 = v115;
        v126[1] = v114;
        *(_swiftEmptyDictionarySingleton[7] + v118) = v116;
        v127 = _swiftEmptyDictionarySingleton[2];
        v122 = __OFADD__(v127, 1);
        v128 = v127 + 1;
        if (v122)
        {
          goto LABEL_98;
        }

        _swiftEmptyDictionarySingleton[2] = v128;
      }

      v104 = v111;
      v103 = v134;
    }

    while (1)
    {
      v111 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        break;
      }

      if (v111 >= v109)
      {

        v1 = v0;
        goto LABEL_91;
      }

      v108 = v105[v111];
      ++v104;
      if (v108)
      {
        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

void *sub_10007A1BC(unsigned int a1)
{
  if (a1 != 2)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(a1, v2, v3);
  }

  if (BYTE1(a1) != 2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(SBYTE1(a1), v4, v5);
  }

  if (BYTE2(a1) != 2)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(SBYTE2(a1), v6, v7);
  }

  if (HIBYTE(a1) != 2)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(SHIBYTE(a1), v8, v9);
  }

  result = _swiftEmptyDictionarySingleton;
  if (!_swiftEmptyDictionarySingleton[2])
  {

    return 0;
  }

  return result;
}

id sub_10007A2F4(Class isa)
{
  v2 = [objc_opt_self() sharedConnection];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  if (isa)
  {
    sub_1000794A0(isa);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v9 = 0;
  v6 = [v3 applyRestrictionDictionary:isa overrideRestrictions:1 clientType:v4 clientUUID:v5 localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v9];

  if (v6)
  {
    return v9;
  }

  v8 = v9;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_10007A4A8()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    qword_1000BC758 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10007A520@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AEAParticipant.SecurityInfo(0);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A3C((v2 + 16), *(v2 + 40));
  v8 = [a1 dataRepresentation];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_10005D95C(&v22);
  sub_100005A80(v9, v11);
  if (v23)
  {
    sub_100008748(&v22, v24);
    sub_100005A3C(v24, v24[3]);
    v12 = sub_10005DA74();
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      v16 = *(v5 + 24);
      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 56))(&v7[v16], 1, 1, v17);
      *v7 = 1;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *a2 = a1;
      *(a2 + 8) = v14;
      *(a2 + 16) = v15;
      *(a2 + 24) = 0;
      v18 = type metadata accessor for AEAParticipant.Process(0);
      sub_10005EE44(v7, a2 + *(v18 + 24));
      (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
      v19 = a1;
      return sub_100003FB4(v24);
    }

    sub_100003FB4(v24);
  }

  else
  {
    sub_10007A7F8(&v22);
  }

  v21 = type metadata accessor for AEAParticipant.Process(0);
  return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
}

uint64_t sub_10007A7F8(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000BC338, &qword_100085BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007A870()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1000BC760 = result;
  *algn_1000BC768 = v1;
  return result;
}

uint64_t sub_10007A8A0()
{
  sub_100003F6C(&qword_1000B80D8, &unk_100081EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000807D0;
  if (qword_1000B6548 != -1)
  {
    swift_once();
  }

  v1 = *algn_1000BC768;
  *(inited + 32) = qword_1000BC760;
  *(inited + 40) = v1;

  v2 = sub_100030F08(inited);
  swift_setDeallocating();
  result = sub_100053F94(inited + 32);
  qword_1000BC770 = v2;
  return result;
}

uint64_t sub_10007A96C()
{
  v0 = sub_100030F08(&off_1000A6140);
  result = swift_arrayDestroy();
  qword_1000BC778 = v0;
  return result;
}

uint64_t sub_10007A9B8()
{
  v1 = v0;

  CurrentValueSubject.send(completion:)();

  v2 = OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEAAuxiliaryParticipantAggregatorSource(uint64_t a1)
{
  result = qword_1000BC370;
  if (!qword_1000BC370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007AAE4(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10007AB80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_10007ABFC()
{
  _StringGuts.grow(_:)(25);

  v0._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v0);

  return 0xD000000000000017;
}

unint64_t sub_10007ACB0()
{
  result = qword_1000BC428;
  if (!qword_1000BC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC428);
  }

  return result;
}

uint64_t sub_10007AD04()
{
  if (qword_1000B64C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC670;

  return v0;
}

unint64_t sub_10007AD80()
{
  result = qword_1000BC430;
  if (!qword_1000BC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC430);
  }

  return result;
}

uint64_t sub_10007AE0C()
{
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v1 = qword_1000BC5B8;
  v2 = objc_allocWithZone(AEAssessmentModeRestrictionEnforcerProxy);
  v3 = v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 initWithMachServiceName:v4 queue:v3];
  v0[25] = v5;

  v0[2] = v0;
  v0[3] = sub_10007AFB0;
  v6 = swift_continuation_init();
  v0[17] = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100026B9C;
  v0[13] = &unk_1000AC3C0;
  v0[14] = v6;
  [v5 shouldEndRestrictingForAssessmentModeWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10007AFB0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_10007B134;
  }

  else
  {
    v2 = sub_10007B0C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007B0C0()
{
  v1 = *(v0 + 200);
  [v1 invalidate];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007B134(uint64_t a1)
{
  v17 = v1;
  swift_willThrow();
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v2 = v1[24];
  v3 = type metadata accessor for Logger();
  sub_10000C370(v3, qword_1000BC578);
  sub_10007BF44(v2, (v1 + 10));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v6 = 136446466;
    v7 = v1[10];
    v8 = v1[11];

    sub_10007BF7C((v1 + 10));
    v9 = sub_100043D60(v7, v8, v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v10 = sub_100067820(v1[21], v1[22]);
    v12 = sub_100043D60(v10, v11, v16);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to deactivate restriction %{public}s. Error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10007BF7C((v1 + 10));
  }

  v13 = v1[25];
  sub_10007ACB0();
  swift_allocError();
  swift_willThrow();

  v14 = v1[1];

  return v14();
}

uint64_t sub_10007B390()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001A778;

  return sub_10007ADEC();
}

double sub_10007B41C@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  swift_getObjectType();
  v6 = *v2;
  v5 = v2[1];
  _StringGuts.grow(_:)(25);

  v7._countAndFlagsBits = v6;
  v7._object = v5;
  String.append(_:)(v7);
  v8 = sub_10000DA08();

  if (v8 == 2 || (v8 & 1) == 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v10 = v3[2];
    v9 = v3[3];
    *(a2 + 24) = &type metadata for AEAExternalSubsystemRestrictionDeactivation;
    *(a2 + 32) = &off_1000AC3A0;
    v11 = swift_allocObject();
    *a2 = v11;
    sub_10000859C((v3 + 5), (v11 + 7));
    v11[2] = v6;
    v11[3] = v5;
    v11[4] = 4;
    v11[5] = v10;
    v11[6] = v9;
  }

  return result;
}

uint64_t sub_10007B57C(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;

  return _swift_task_switch(sub_10007B610, 0, 0);
}

uint64_t sub_10007B610()
{
  v1 = *(v0 + 208);
  *(v0 + 216) = v1[2];
  *(v0 + 224) = v1[3];
  if (qword_1000B6460 != -1)
  {
    swift_once();
    v1 = *(v0 + 208);
  }

  v2 = *(v0 + 200);
  v3 = qword_1000BC5B8;
  v4 = objc_allocWithZone(AEAssessmentModeRestrictionEnforcerProxy);
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 initWithMachServiceName:v6 queue:v5];
  *(v0 + 232) = v7;

  swift_getObjectType();
  v8 = *v1;
  *(v0 + 240) = *v1;
  v9 = v1[1];
  *(v0 + 248) = v9;
  _StringGuts.grow(_:)(25);

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);
  sub_10000D8C0(1);

  *(v0 + 80) = 0;
  v11 = [v2 persistWithError:v0 + 80];
  v12 = *(v0 + 80);
  if (v11)
  {
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_10007B920;
    v13 = swift_continuation_init();
    *(v0 + 136) = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100026B9C;
    *(v0 + 104) = &unk_1000AC2B0;
    *(v0 + 112) = v13;
    v14 = v12;
    [v7 shouldBeginRestrictingForAssessmentModeWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v15 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10007B920()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_10007BB84;
  }

  else
  {
    v2 = sub_10007BA5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007BA5C()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[24];
  [v3 invalidate];

  v7[3] = &type metadata for AEAExternalSubsystemRestrictionDeactivation;
  v7[4] = &off_1000AC3A0;
  v8 = swift_allocObject();
  *v7 = v8;
  sub_10000859C(v6 + 40, (v8 + 7));
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = 4;
  v8[5] = v5;
  v8[6] = v4;
  v10 = v0[1];

  return v10();
}

uint64_t sub_10007BB84(uint64_t a1)
{
  v16 = v1;
  swift_willThrow();
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 208);
  v3 = type metadata accessor for Logger();
  sub_10000C370(v3, qword_1000BC578);
  sub_100077BAC(v2, v1 + 80);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136446466;
    v7 = *(v1 + 80);
    v8 = *(v1 + 88);

    sub_100077C08(v1 + 80);
    v9 = sub_100043D60(v7, v8, &v15);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v10 = sub_100067820(*(v1 + 168), *(v1 + 176));
    v12 = sub_100043D60(v10, v11, &v15);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to activate restriction %{public}s. Error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100077C08(v1 + 80);
  }

  sub_10007ACB0();
  swift_allocError();
  swift_willThrow();

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_10007BE10(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F618;

  return sub_10007B57C(a1, a2);
}

uint64_t sub_10007BEEC()
{

  sub_100003FB4((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

__n128 sub_10007BFBC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_10007C000(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007C048(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007C0EC()
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC518);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: this is not implemented on iOS: runningApplicationsPublisher", v3, 2u);
  }

  sub_100003F6C(&qword_1000BC4E8, &qword_100086028);
  swift_allocObject();
  PassthroughSubject.init()();
  sub_10007C224();
  v4 = Publisher.eraseToAnyPublisher()();

  return v4;
}

unint64_t sub_10007C224()
{
  result = qword_1000BC4F0;
  if (!qword_1000BC4F0)
  {
    sub_100004B50(&qword_1000BC4E8, &qword_100086028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC4F0);
  }

  return result;
}

BOOL sub_10007C288(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = 0;
    do
    {
      objc_msgSend_underlyingToken(a1, v9, v10);
      v5 = *&v11[v4];
      if (v3)
      {
        objc_msgSend_underlyingToken(v3);
      }

      else
      {
        v9 = 0u;
        v10 = 0u;
      }

      v7 = v5 == *(&v9 + v4);
      v6 = v7;
      v7 = !v7 || v4 == 28;
      v4 += 4;
    }

    while (!v7);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id *sub_10007C3D0(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = AEAConcreteOSTransactionToken;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

void sub_10007C448(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

id *sub_10007C458(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = AEAConcreteRestrictedNetworkToken;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}