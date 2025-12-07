uint64_t sub_10002CDAC(unint64_t a1)
{
  v2 = HIDWORD(a1);
  if (*(v1 + 8) & 1) != 0 && ((*(v1 + 24) | (*(v1 + 28) << 32)) & 0xFF00000000) != 0x300000000 && (static Channel.isValid(channel:on:with:)())
  {
    v3 = &off_1005728D8;
  }

  else
  {
    v3 = &off_100572900;
  }

  v4 = v3[2];
  v5 = (v3 + 4);
  do
  {
    if (!v4)
    {

      goto LABEL_14;
    }

    v6 = *v5++;
    --v4;
  }

  while (((0x801004u >> (8 * v2)) & 0xFFC) != (0x801004u >> (8 * v6)));

  if (!v2)
  {
LABEL_15:
    v7 = NANMapID.primary.unsafeMutableAddressor();
    goto LABEL_16;
  }

  if (v2 != 1)
  {
LABEL_14:
    v8 = 0;
    v9 = 1;
    return v8 | (v9 << 8);
  }

  if ((*(v1 + 9) & 1) == 0)
  {
    goto LABEL_15;
  }

  v7 = NANMapID.secondary.unsafeMutableAddressor();
LABEL_16:
  v9 = 0;
  v8 = *v7;
  return v8 | (v9 << 8);
}

uint64_t RadioResources.SymbolicChannel.Resolver.channel(for:supportsSimulatenousDualBand:on:)(uint64_t result, char a2, char a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a2 != 1)
    {
      v8 = 0x300000000;
      if (result == 2)
      {
        v8 = a7;
      }

      if (result)
      {
        a5 = a6;
      }

      if (result <= 1)
      {
        result = a5;
      }

      else
      {
        result = v8;
      }
    }

    return result & 0xFFFFFFFFFFFFLL;
  }

  v10 = a8;
  if (a3)
  {
    if (a4 > 1u)
    {
      goto LABEL_38;
    }

    v28 = result;
    v11 = *(a8 + 16);
    if (v11)
    {
      if (a4)
      {
        v12 = 16;
      }

      else
      {
        v12 = 4;
      }

      v13 = (a8 + 39);
      v10 = _swiftEmptyArrayStorage;
      v29 = v12;
      while (1)
      {
        v17 = *(v13 - 7);
        v18 = *(v13 - 3);
        v19 = *(v13 - 2);
        v20 = *(v13 - 1);
        v21 = *v13;
        if (*(v13 - 3))
        {
          if (v18 == 1 && v12 == 16)
          {
LABEL_27:
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1000C06E4(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v15 = _swiftEmptyArrayStorage[2];
            v14 = _swiftEmptyArrayStorage[3];
            if (v15 >= v14 >> 1)
            {
              result = sub_1000C06E4((v14 > 1), v15 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v15 + 1;
            v16 = &_swiftEmptyArrayStorage[v15];
            *(v16 + 8) = v17;
            *(v16 + 36) = v18;
            *(v16 + 37) = v19;
            *(v16 + 38) = v20;
            *(v16 + 39) = v21;
            v12 = v29;
          }
        }

        else if (v12 == 4)
        {
          goto LABEL_27;
        }

        v13 += 8;
        if (!--v11)
        {
          goto LABEL_31;
        }
      }
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_31:
    v23 = v28;
  }

  else
  {
    v22 = result;

    v23 = v22;
  }

  if (v10[2] <= v23)
  {
    __break(1u);
  }

  else if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = &v10[v23];
    v25 = *(v24 + 8);
    v26 = *(v24 + 36);
    v27 = *(v24 + 37);

    result = v25 | (v26 << 32) | (v27 << 40);
    return result & 0xFFFFFFFFFFFFLL;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10002D078(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_10002D0E4(v1, v2);
}

unint64_t sub_10002D0E4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

Swift::Int sub_10002D154(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&qword_100596340, &qword_1004B0820);
  v30 = v4;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10002D3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
  v6 = *v5;
  v7 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
  v8 = TimeBitmap.Slot.OF.unsafeMutableAddressor();
  v9 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v6, v7, *v8, *v5);
  v11 = v10;
  v13 = v12;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(AssociatedConformanceWitness + 32);
  v16 = swift_checkMetadataState();
  return v15(v9, v11, v13, 3, 2, a2, v16, AssociatedConformanceWitness);
}

unint64_t sub_10002D508(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t static TimeBitmap.repeatingPerDW(_:_:_:_:)(char a1, char a2, char a3, char a4)
{
  if (qword_10058A7D8 != -1)
  {
    swift_once();
  }

  v8 = static NANBitmap.Time.Control.perDiscoveryWindow;
  sub_10002D838(0, 4, 0);
  v10 = _swiftEmptyArrayStorage[2];
  v9 = _swiftEmptyArrayStorage[3];
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    sub_10002D838((v9 > 1), v10 + 1, 1);
    v9 = _swiftEmptyArrayStorage[3];
    v11 = v9 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v12;
  *(&_swiftEmptyArrayStorage[4] + v10) = a1;
  v13 = v10 + 2;
  if (v11 < (v10 + 2))
  {
    sub_10002D838((v9 > 1), v10 + 2, 1);
    v9 = _swiftEmptyArrayStorage[3];
    v11 = v9 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v13;
  *(&_swiftEmptyArrayStorage[4] + v12) = a2;
  v14 = v10 + 3;
  if (v11 < (v10 + 3))
  {
    sub_10002D838((v9 > 1), v10 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v14;
  *(&_swiftEmptyArrayStorage[4] + v13) = a3;
  v15 = _swiftEmptyArrayStorage[3];
  if ((v10 + 4) > (v15 >> 1))
  {
    sub_10002D838((v15 > 1), v10 + 4, 1);
  }

  _swiftEmptyArrayStorage[2] = v10 + 4;
  *(&_swiftEmptyArrayStorage[4] + v14) = a4;
  v16 = sub_10002D874(_swiftEmptyArrayStorage);
  v18 = v17;

  return sub_10002D9E4(v8, v16, v18);
}

char *sub_10002D74C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10005DC58(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_10002D838(char *a1, int64_t a2, char a3)
{
  result = sub_10002D74C(a1, a2, a3, *v3, &qword_10058B3C0, &qword_100481920);
  *v3 = result;
  return result;
}

uint64_t sub_10002D874(uint64_t a1)
{
  v9 = sub_10005DC58(&qword_10058D358, &unk_100486960);
  v10 = sub_10000CADC(&qword_10059B0E0, &qword_10058D358, &unk_100486960, &protocol conformance descriptor for <A> [A]);
  v8[0] = a1;
  v2 = sub_100029B34(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10002D950(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100002A00(v8);
  return v5;
}

_BYTE *sub_10002D950@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10000AD84(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100178EFC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10004F46C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_10002D9E4(uint64_t a1, unsigned __int128 *a2, unint64_t a3)
{
  v151 = a2;
  v8 = *(type metadata accessor for Data.Iterator() - 8);
  __chkstk_darwin();
  v11 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 60 == 15)
  {
    sub_10000B02C();
    swift_allocError();
    *v12 = xmmword_10047CE70;
    *(v12 + 16) = 2;
    return swift_willThrow();
  }

  v150 = a3;
  v152 = v9;
  v156 = xmmword_1004841D0;
  v157 = 0;
  v14 = sub_10002F09C(0, 3uLL, a1);
  if (v3)
  {

LABEL_5:
    sub_10000B02C();
    swift_allocError();
    *v15 = xmmword_10047CE70;
    *(v15 + 16) = 2;
    swift_willThrow();
    return sub_10002F75C(a1, v151, v150);
  }

  v16 = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v14);
  v153 = a1;
  if ((v16 - 1) < 3)
  {
    v164 = xmmword_100480A90;
    v17 = v150 >> 62;
    if ((v150 >> 62) > 1)
    {
      p_i = v151;
      if (v17 == 2)
      {
LABEL_13:
        sub_10000AB0C(v151, v150);
        p_i = v151;
      }
    }

    else
    {
      p_i = v151;
      if (v17)
      {
        goto LABEL_13;
      }
    }

    v4 = v150;
    sub_10000AB0C(p_i, v150);
    Data.Iterator.init(_:at:)();
    LODWORD(p_i) = v11;
    v21 = Data.Iterator.next()();
    if ((*&v21 & 0x100) == 0)
    {
      LOBYTE(v4) = v21.value;
      v154 = &v159;
      v5 = &type metadata for Data;
      v155 = xmmword_100480F40;
      do
      {
        v25 = sub_10002F09C(0, 3uLL, a1);
        switch(v25)
        {
          case 1:
            v26 = sub_1000D6804(v4);
            break;
          case 2:
            v26 = sub_1000D68D4(v4);
            break;
          case 3:
            v29 = 2 * (v4 & 1);
            if ((v4 & 2) != 0)
            {
              v29 |= 0x300uLL;
            }

            if ((v4 & 4) != 0)
            {
              v29 |= 0x20200uLL;
            }

            if ((v4 & 8) != 0)
            {
              v29 |= 0x2000300uLL;
            }

            if ((v4 & 0x10) != 0)
            {
              v29 |= 0x200000400uLL;
            }

            if ((v4 & 0x20) != 0)
            {
              v29 |= 0x20000000500uLL;
            }

            if ((v4 & 0x40) != 0)
            {
              v29 |= 0x2000000000600uLL;
            }

            if ((v4 & 0x80u) == 0)
            {
              v30 = v29;
            }

            else
            {
              v30 = v29 | 0x200000000000700;
            }

            v158 = v30;
            v162 = &type metadata for UnsafeRawBufferPointer;
            v163 = &protocol witness table for UnsafeRawBufferPointer;
            *&i = &v158;
            *(&i + 1) = v154;
            v31 = sub_100029B34(&i, &type metadata for UnsafeRawBufferPointer);
            v32 = *v31;
            if (*v31)
            {
              v33 = v31[1];
              v34 = v33 - v32;
              if (v33 == v32)
              {
                v32 = 0;
                goto LABEL_42;
              }

              if (v34 <= 14)
              {
                *(__dst + 6) = 0;
                *&__dst[0] = 0;
                BYTE14(__dst[0]) = v33 - v32;
                memcpy(__dst, v32, v33 - v32);
                v32 = *&__dst[0];
                v28 = v149 & 0xF00000000000000 | DWORD2(__dst[0]) | ((WORD6(__dst[0]) | (BYTE14(__dst[0]) << 16)) << 32);
                v149 = v28;
              }

              else
              {
                type metadata accessor for __DataStorage();
                swift_allocObject();
                v38 = __DataStorage.init(bytes:length:)();
                v39 = v38;
                if (v34 >= 0x7FFFFFFF)
                {
                  type metadata accessor for Data.RangeReference();
                  v32 = swift_allocObject();
                  *(v32 + 2) = 0;
                  *(v32 + 3) = v34;
                  v28 = v39 | 0x8000000000000000;
                }

                else
                {
                  v32 = (v34 << 32);
                  v28 = v38 | 0x4000000000000000;
                }
              }
            }

            else
            {
LABEL_42:
              v28 = 0xC000000000000000;
            }

            sub_100002A00(&i);
            v162 = &type metadata for Data;
            *&i = v32;
            goto LABEL_44;
          default:
            goto LABEL_308;
        }

        v28 = v27;
        v162 = &type metadata for Data;
        *&i = v26;
LABEL_44:
        *(&i + 1) = v28;
        sub_100002B30(&i, __dst);
        if (swift_dynamicCast())
        {
          v22 = v158;
          v23 = v159;
          Data.append(_:)();
          sub_1000124C8(v22, v23);
        }

        else
        {
          sub_10005DC58(&qword_100598960, &qword_1004869C0);
          v35 = swift_allocObject();
          *(v35 + 16) = v155;
          *&__dst[0] = 0;
          *(&__dst[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(38);

          *&__dst[0] = 0xD000000000000024;
          *(&__dst[0] + 1) = 0x80000001004B9140;
          LOBYTE(v158) = v4;
          v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v36);

          v37 = __dst[0];
          *(v35 + 56) = &type metadata for String;
          *(v35 + 32) = v37;
          print(_:separator:terminator:)();
        }

        sub_100002A00(&i);
        LODWORD(p_i) = v11;
        LOWORD(v24) = Data.Iterator.next()();
        v4 = v24;
        LOWORD(a1) = v153;
      }

      while ((v24 & 0x100) == 0);
    }

    v40 = *(v8 + 8);
    LODWORD(v8) = v8 + 8;
    v40(v11, v152);
    v165 = v164;
    goto LABEL_52;
  }

  if (v16)
  {
    goto LABEL_5;
  }

  v19 = v151;
  p_i = v150;
  *&v165 = v151;
  *(&v165 + 1) = v150;
  sub_10000AB0C(v151, v150);
  sub_10000AB0C(v19, p_i);
LABEL_52:
  v41 = sub_10002F214(6, 9uLL, a1, v20);
  v138 = 0;
  if (v41 <= 0)
  {
    v42 = -(-v41 & 7);
  }

  else
  {
    v42 = v41 & 7;
  }

  v43 = v150;
  if (v42 < 0)
  {
    goto LABEL_281;
  }

  v139 = v42;
  if (!v42)
  {
    goto LABEL_126;
  }

  LODWORD(v8) = 0;
  v44 = 0;
  while (1)
  {
    v45 = v44 + 1;
    if (v44 < 8u)
    {
      LODWORD(v8) = v8 | (1 << v44);
    }

    if ((v44 + 1) == v139)
    {
      break;
    }

    ++v44;
    if (v45 >= v139)
    {
      __break(1u);
      break;
    }
  }

  v46 = 0;
  v47 = *(&v165 + 1);
  v48 = v165;
  v49 = *(&v165 + 1) >> 62;
  if ((*(&v165 + 1) >> 62) > 1)
  {
    if (v49 == 2)
    {
      v46 = *(v165 + 16);
    }
  }

  else if (v49)
  {
    v46 = v165;
  }

  v50 = 0;
  LODWORD(v152) = v139 & 7;
  v140 = v8;
  while (1)
  {
    v51 = v47 >> 62;
    if ((v47 >> 62) > 1)
    {
      if (v51 != 2)
      {
        *&v165 = v48;
        *(&v165 + 1) = v47;
        if (!v46)
        {
          goto LABEL_121;
        }

        goto LABEL_305;
      }

      if (v46 == *(v48 + 24))
      {
        goto LABEL_119;
      }
    }

    else if (v51)
    {
      if (v46 == v48 >> 32)
      {
        goto LABEL_119;
      }
    }

    else if (v46 == BYTE6(v47))
    {
      goto LABEL_119;
    }

    if (v51 == 2)
    {
      if (v46 < *(v48 + 16))
      {
        goto LABEL_246;
      }

      if (v46 >= *(v48 + 24))
      {
        goto LABEL_248;
      }

      v4 = v47 & 0x3FFFFFFFFFFFFFFFLL;
      v61 = __DataStorage._bytes.getter();
      if (!v61)
      {
        goto LABEL_297;
      }

      v62 = v61;
      LODWORD(p_i) = v47;
      v41 = __DataStorage._offset.getter();
      if (__OFSUB__(v46, v41))
      {
        goto LABEL_250;
      }

      if (v46 < *(v48 + 16))
      {
        goto LABEL_252;
      }

      if (v46 >= *(v48 + 24))
      {
        goto LABEL_254;
      }

      v5 = *(v62 + v46 - v41);
      v63 = __DataStorage._bytes.getter();
      if (!v63)
      {
        goto LABEL_299;
      }

      v64 = v63;
      LODWORD(p_i) = v47;
      v41 = __DataStorage._offset.getter();
      if (__OFSUB__(v46, v41))
      {
        goto LABEL_255;
      }

      LODWORD(v155) = v5;
      v5 = *(v64 + v46 - v41);

      sub_1000124C8(v48, v47);
      v41 = sub_1000124C8(0, 0xC000000000000000);
      if (v46 < *(v48 + 16))
      {
        goto LABEL_256;
      }

      if (v46 >= *(v48 + 24))
      {
        goto LABEL_257;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_113:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = *(v48 + 16);
          v47 = *(v48 + 24);
          type metadata accessor for Data.RangeReference();
          v70 = swift_allocObject();
          *(v70 + 16) = v69;
          *(v70 + 24) = v47;

          v48 = v70;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v71 = __DataStorage._bytes.getter();
        if (!v71)
        {
          goto LABEL_300;
        }

        v72 = v71;
        LODWORD(p_i) = v4;
        v41 = __DataStorage._offset.getter();
        if (!__OFSUB__(v46, v41))
        {
          *(v72 + v46 - v41) = (v5 >> v152) | v50;
          v47 = v4 | 0x8000000000000000;
          v60 = v155;
          goto LABEL_69;
        }

        __break(1u);
LABEL_119:
        *&v165 = v48;
        *(&v165 + 1) = v47;
LABEL_121:
        v43 = v150;
        if (v50)
        {
          if (v139 >= 9)
          {
            LODWORD(v8) = 0;
          }

          else
          {
            LODWORD(v8) = v50 << (-v139 & 7);
          }

          v73 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
          v162 = v73;
          v163 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0, &protocol conformance descriptor for <A> CollectionOfOne<A>);
          LOBYTE(i) = v8;
          LOBYTE(__dst[0]) = *sub_100029B34(&i, v73);
          Data._Representation.replaceSubrange(_:with:count:)();
          sub_100002A00(&i);
        }

LABEL_126:
        v74 = v153;
        v75 = v138;
        v76 = sub_10002F214(6, 9uLL, v153, &v162);
        if (v75)
        {
          goto LABEL_310;
        }

        if (v76 >= 0)
        {
          v77 = v76;
        }

        else
        {
          v77 = v76 + 7;
        }

        if (v76 < -7)
        {
          goto LABEL_144;
        }

        v78 = v165;
        v79 = *(&v165 + 1) >> 62;
        if ((*(&v165 + 1) >> 62) <= 1)
        {
          if (!v79)
          {
            v80 = BYTE14(v165);
            goto LABEL_140;
          }

LABEL_138:
          LODWORD(v80) = HIDWORD(v78) - v78;
          if (!__OFSUB__(HIDWORD(v78), v78))
          {
            v80 = v80;
            goto LABEL_140;
          }

LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
        }

        if (v79 != 2)
        {
          goto LABEL_144;
        }

        v82 = *(v165 + 16);
        v81 = *(v165 + 24);
        v83 = __OFSUB__(v81, v82);
        v80 = v81 - v82;
        if (v83)
        {
          __break(1u);
          goto LABEL_138;
        }

LABEL_140:
        if (v80 < 1)
        {
LABEL_144:
          v85 = v151;
          sub_10002F75C(v74, v151, v43);
          sub_10000B02C();
          swift_allocError();
          *v86 = 0;
          *(v86 + 8) = 0;
          *(v86 + 16) = 2;
          swift_willThrow();
          sub_10002F75C(v74, v85, v43);
          return sub_1000124C8(v165, *(&v165 + 1));
        }

        if (v79)
        {
          if (v79 == 2)
          {
            v84 = *(v78 + 16);
          }

          else
          {
            v84 = v78;
          }
        }

        else
        {
          v84 = 0;
        }

        p_i = &v165;
        sub_10002F354(v84, v84, v77 >> 3, 0);
        v87 = sub_10002F09C(3, 3uLL, v74);
        v88 = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v87);
        if (v88 == 8)
        {
          v88 = 0;
        }

        v89 = sub_10002F71C(v88);
        v4 = v89;
        v90 = v89 >> 7;
        BYTE6(v92) = BYTE14(v165);
        v91 = v165;
        v93 = *(&v165 + 1) >> 62;
        if ((*(&v165 + 1) >> 62) <= 1)
        {
          if (!v93)
          {
            v94 = BYTE14(v165);
            goto LABEL_158;
          }

LABEL_156:
          LODWORD(v94) = HIDWORD(v91) - v91;
          if (__OFSUB__(HIDWORD(v91), v91))
          {
            goto LABEL_291;
          }

          v94 = v94;
          goto LABEL_158;
        }

        if (v93 != 2)
        {
          if (v89 >= 0x80)
          {
            v91 = 0;
            goto LABEL_169;
          }

          goto LABEL_173;
        }

        v96 = *(v165 + 16);
        v95 = *(v165 + 24);
        v83 = __OFSUB__(v95, v96);
        v94 = v95 - v96;
        if (v83)
        {
          __break(1u);
          goto LABEL_156;
        }

LABEL_158:
        if (v94 >= v90)
        {
          goto LABEL_173;
        }

        if (v93 == 2)
        {
          v98 = v91 + 16;
          v97 = *(v91 + 16);
          v92 = *(v98 + 8);
          v83 = __OFSUB__(v92, v97);
          v91 = v92 - v97;
          if (!v83)
          {
            goto LABEL_169;
          }

          __break(1u);
        }

        else if (v93 == 1)
        {
          v83 = __OFSUB__(HIDWORD(v91), v91);
          LODWORD(v91) = HIDWORD(v91) - v91;
          if (v83)
          {
            goto LABEL_292;
          }

          v91 = v91;
LABEL_169:
          if (__OFSUB__(v90, v91))
          {
            goto LABEL_283;
          }

          v99 = sub_100234D74(0, v90 - v91);
          if (v99[2])
          {
            LODWORD(v8) = v99;
            Data._Representation.append(contentsOf:)();
          }

LABEL_173:
          v5 = v43;
          i = xmmword_100480A90;
          v46 = 0;
          v100 = sub_10002F09C(3, 3uLL, v153);
          v104 = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v100);
          if (v104 <= 3)
          {
            if (v104 - 1 < 3)
            {
              v48 = *(&v165 + 1);
              v47 = v165;
              p_i = (*(&v165 + 1) >> 62);
              if ((*(&v165 + 1) >> 62) > 1)
              {
                goto LABEL_191;
              }

              if (!p_i)
              {
                v106 = BYTE14(v165);
                goto LABEL_203;
              }

              LODWORD(v106) = DWORD1(v165) - v165;
              if (!__OFSUB__(DWORD1(v165), v165))
              {
                v106 = v106;
                goto LABEL_203;
              }

              goto LABEL_301;
            }

            goto LABEL_174;
          }

          if (v104 - 5 >= 3 && v104 != 4)
          {
            goto LABEL_174;
          }

          v48 = *(&v165 + 1);
          v47 = v165;
          sub_10000AB0C(v165, *(&v165 + 1));
          sub_1000124C8(0, 0xC000000000000000);
          for (i = __PAIR128__(v48, v47); ; v47 = i)
          {
            v8 = v48 >> 62;
            if ((v48 >> 62) <= 1)
            {
              if (v8)
              {
                goto LABEL_195;
              }

              v105 = BYTE6(v48);
LABEL_197:
              if (v105 == 8)
              {
                v152 = v47;
                if (v8)
                {
                  if (v8 == 2)
                  {
                    v111 = *(v47 + 16);
                  }

                  else
                  {
                    v111 = v152;
                  }
                }

                else
                {
                  v111 = 0;
                }

                *&v155 = v47 >> 32;
                v115 = BYTE6(v48);
                v116 = 1024;
                v117 = 16;
                v149 = v47 >> 8;
                v148 = v47 >> 16;
                v147 = v47 >> 24;
                v146 = HIDWORD(v47);
                v154 = BYTE6(v48);
                while (1)
                {
                  v119 = v115;
                  if (v8)
                  {
                    v119 = v155;
                    if (v8 != 1)
                    {
                      v119 = *(v47 + 24);
                    }
                  }

                  if (v111 == v119)
                  {
LABEL_240:
                    v126 = v153;
                    v127 = v151;
                    v128 = v150;
                    sub_10002F75C(v153, v151, v150);
                    sub_10002F75C(v126, v127, v128);
                    sub_1000124C8(v47, v48);
                    sub_1000124C8(v165, *(&v165 + 1));
                    return v156;
                  }

                  if (v8 == 2)
                  {
                    break;
                  }

                  if (v8 == 1)
                  {
                    if (v111 < v152 || v111 >= v155)
                    {
                      goto LABEL_287;
                    }

                    v120 = __DataStorage._bytes.getter();
                    if (!v120)
                    {
                      goto LABEL_306;
                    }

                    v121 = v120;
                    v122 = __DataStorage._offset.getter();
                    v123 = v111 - v122;
                    if (__OFSUB__(v111, v122))
                    {
                      goto LABEL_289;
                    }

LABEL_218:
                    v118 = *(v121 + v123);
                    v115 = v154;
                    goto LABEL_219;
                  }

                  if (v111 >= v115)
                  {
                    goto LABEL_286;
                  }

                  LOBYTE(__dst[0]) = v47;
                  BYTE1(__dst[0]) = v149;
                  BYTE2(__dst[0]) = v148;
                  BYTE3(__dst[0]) = v147;
                  BYTE4(__dst[0]) = v146;
                  BYTE5(__dst[0]) = BYTE5(v47);
                  BYTE6(__dst[0]) = BYTE6(v47);
                  BYTE7(__dst[0]) = HIBYTE(v47);
                  WORD4(__dst[0]) = v48;
                  BYTE10(__dst[0]) = BYTE2(v48);
                  BYTE11(__dst[0]) = BYTE3(v48);
                  BYTE12(__dst[0]) = BYTE4(v48);
                  BYTE13(__dst[0]) = BYTE5(v48);
                  v118 = *(__dst + v111);
LABEL_219:
                  *(&v156 + v117) = v118;
                  ++v111;
                  ++v117;
                  v116 -= 128;
                  if (!v116)
                  {
                    goto LABEL_240;
                  }
                }

                if (v111 < *(v47 + 16))
                {
                  goto LABEL_285;
                }

                if (v111 >= *(v47 + 24))
                {
                  goto LABEL_288;
                }

                v124 = __DataStorage._bytes.getter();
                if (!v124)
                {
                  goto LABEL_307;
                }

                v121 = v124;
                v125 = __DataStorage._offset.getter();
                v123 = v111 - v125;
                if (__OFSUB__(v111, v125))
                {
                  goto LABEL_290;
                }

                goto LABEL_218;
              }

LABEL_174:
              v101 = v153;
              v102 = v151;
              sub_10002F75C(v153, v151, v5);
              sub_10000B02C();
              swift_allocError();
              *v103 = 0;
              *(v103 + 8) = 0;
              *(v103 + 16) = 2;
              swift_willThrow();
              sub_10002F75C(v101, v102, v5);
              sub_1000124C8(i, *(&i + 1));
              return sub_1000124C8(v165, *(&v165 + 1));
            }

            if (v8 != 2)
            {
              goto LABEL_174;
            }

            v108 = *(v47 + 16);
            v107 = *(v47 + 24);
            v83 = __OFSUB__(v107, v108);
            v105 = v107 - v108;
            if (!v83)
            {
              goto LABEL_197;
            }

            __break(1u);
LABEL_191:
            if (p_i == 2)
            {
              v110 = *(v47 + 16);
              v109 = *(v47 + 24);
              v83 = __OFSUB__(v109, v110);
              v106 = v109 - v110;
              if (v83)
              {
                __break(1u);
LABEL_195:
                LODWORD(v105) = HIDWORD(v47) - v47;
                if (!__OFSUB__(HIDWORD(v47), v47))
                {
                  v105 = v105;
                  goto LABEL_197;
                }

                __break(1u);
LABEL_295:
                __break(1u);
                goto LABEL_296;
              }

LABEL_203:
              if (v106 != v90)
              {
                goto LABEL_174;
              }
            }

            else if (v4 >= 0x80)
            {
              goto LABEL_174;
            }

            v112 = sub_10002F09C(3, 3uLL, v153);
            if (v46)
            {

              v46 = 0;
            }

            else
            {
              v113 = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v112);
              if (v113 != 8)
              {
                goto LABEL_210;
              }
            }

            v113 = 0;
LABEL_210:
            v41 = sub_10002F71C(v113);
            if (!v41)
            {
              goto LABEL_293;
            }

            if (v41 > 0x400)
            {
              goto LABEL_174;
            }

            if (p_i <= 1)
            {
              if (!p_i)
              {
                v114 = BYTE6(v48);
                goto LABEL_261;
              }

              goto LABEL_258;
            }

            if (p_i != 2)
            {
              v114 = 0;
              goto LABEL_261;
            }

            v130 = *(v47 + 16);
            v129 = *(v47 + 24);
            v83 = __OFSUB__(v129, v130);
            v114 = v129 - v130;
            if (v83)
            {
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
LABEL_249:
              __break(1u);
LABEL_250:
              __break(1u);
LABEL_251:
              __break(1u);
LABEL_252:
              __break(1u);
LABEL_253:
              __break(1u);
LABEL_254:
              __break(1u);
LABEL_255:
              __break(1u);
LABEL_256:
              __break(1u);
LABEL_257:
              __break(1u);
LABEL_258:
              LODWORD(v114) = HIDWORD(v47) - v47;
              if (__OFSUB__(HIDWORD(v47), v47))
              {
                goto LABEL_304;
              }

              v114 = v114;
            }

LABEL_261:
            v90 = 0x400 / v41;
            v131 = v114 * (0x400 / v41);
            if ((v114 * v90) >> 64 != v131 >> 63)
            {
              goto LABEL_302;
            }

            if (p_i > 1)
            {
              if (p_i != 2)
              {
                goto LABEL_309;
              }

              v134 = *(v47 + 16);
              v133 = *(v47 + 24);
              v83 = __OFSUB__(v133, v134);
              v132 = v133 - v134;
              if (!v83)
              {
                goto LABEL_271;
              }

              __break(1u);
            }

            else if (!p_i)
            {
              v132 = BYTE6(v48);
              goto LABEL_271;
            }

            LODWORD(v132) = HIDWORD(v47) - v47;
            if (__OFSUB__(HIDWORD(v47), v47))
            {
              goto LABEL_303;
            }

            v132 = v132;
LABEL_271:
            if (!v132)
            {
              goto LABEL_309;
            }

            v135 = 0x7FFFFFFFFFFFFFFFLL / v132;
            if ((v135 & 0x8000000000000000) != 0 || v135 < v90)
            {
              goto LABEL_174;
            }

            Data._Representation.reserveCapacity(_:)(v131);
            v136 = 0;
            do
            {
              if (v136 >= v90)
              {
                goto LABEL_284;
              }

              ++v136;
              p_i = &i;
              Data.append(_:)();
            }

            while (v90 != v136);
            v48 = *(&i + 1);
          }
        }

        v91 = BYTE6(v92);
        goto LABEL_169;
      }

      LODWORD(v154) = v50;
      v65 = v46;
      v66 = *(v48 + 16);
      v67 = *(v48 + 24);
      if (!__DataStorage._bytes.getter())
      {
        v47 = v67 - v66;
        if (__OFSUB__(v67, v66))
        {
          goto LABEL_278;
        }

        goto LABEL_112;
      }

      if (__OFSUB__(v66, __DataStorage._offset.getter()))
      {
        goto LABEL_280;
      }

      v47 = v67 - v66;
      if (!__OFSUB__(v67, v66))
      {
LABEL_112:
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v68 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v4 = v68;
        v46 = v65;
        v50 = v154;
        goto LABEL_113;
      }

LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
      goto LABEL_282;
    }

    LODWORD(v154) = v50;
    if (v51 != 1)
    {
      if (v46 >= BYTE6(v47))
      {
        goto LABEL_245;
      }

      *&i = v48;
      v147 = v48 >> 8;
      v146 = v48 >> 16;
      v145 = v48 >> 24;
      v144 = HIDWORD(v48);
      v143 = v48 >> 40;
      WORD4(i) = v47;
      p_i = (v47 >> 8);
      BYTE10(i) = BYTE2(v47);
      v5 = v47 >> 24;
      BYTE11(i) = BYTE3(v47);
      v4 = HIDWORD(v47);
      BYTE12(i) = BYTE4(v47);
      BYTE13(i) = BYTE5(v47);
      v142 = v47 >> 40;
      LODWORD(v155) = *(&i + v46);
      *&i = v48;
      WORD4(i) = v47;
      BYTE10(i) = BYTE2(v47);
      BYTE11(i) = BYTE3(v47);
      BYTE12(i) = BYTE4(v47);
      BYTE13(i) = BYTE5(v47);
      LODWORD(v148) = *(&i + v46);
      v141 = HIWORD(v47);
      v41 = sub_1000124C8(v48, v47);
      LOBYTE(i) = v48;
      BYTE1(i) = v147;
      BYTE2(i) = v146;
      BYTE3(i) = v145;
      BYTE4(i) = v144;
      BYTE5(i) = v143;
      BYTE6(i) = BYTE6(v48);
      LODWORD(v8) = v140;
      BYTE7(i) = HIBYTE(v48);
      WORD4(i) = v47;
      BYTE10(i) = BYTE2(v47);
      BYTE11(i) = BYTE3(v47);
      v60 = v155;
      BYTE12(i) = BYTE4(v47);
      BYTE13(i) = v142;
      BYTE14(i) = v141;
      *(&i + v46) = (v148 >> v152) | v154;
      v48 = i;
      v47 = v149 & 0xF00000000000000 | DWORD2(i) | ((WORD6(i) | (BYTE14(i) << 16)) << 32);
      v149 = v47;
      goto LABEL_69;
    }

    v52 = v46;
    v46 = v48 >> 32;
    if (v52 >= v48 >> 32)
    {
      goto LABEL_247;
    }

    v5 = v48;
    if (v52 < v48)
    {
      goto LABEL_247;
    }

    v4 = v47 & 0x3FFFFFFFFFFFFFFFLL;
    v53 = __DataStorage._bytes.getter();
    if (!v53)
    {
      goto LABEL_295;
    }

    v54 = v53;
    LODWORD(p_i) = v47;
    v41 = __DataStorage._offset.getter();
    if (__OFSUB__(v52, v41))
    {
      goto LABEL_249;
    }

    LODWORD(v155) = *(v54 + v52 - v41);
    v55 = __DataStorage._bytes.getter();
    if (!v55)
    {
      break;
    }

    v56 = v55;
    LODWORD(p_i) = v47;
    v41 = __DataStorage._offset.getter();
    if (__OFSUB__(v52, v41))
    {
      goto LABEL_251;
    }

    LODWORD(v148) = *(v56 + v52 - v41);

    sub_1000124C8(v48, v47);
    sub_1000124C8(0, 0xC000000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      if (__DataStorage._bytes.getter() && __OFSUB__(v48, __DataStorage._offset.getter()))
      {
        goto LABEL_279;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v57 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v4 = v57;
    }

    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
    v58 = __DataStorage._bytes.getter();
    if (!v58)
    {
      goto LABEL_298;
    }

    v59 = v58;
    LODWORD(p_i) = v4;
    v41 = __DataStorage._offset.getter();
    v60 = v155;
    if (__OFSUB__(v52, v41))
    {
      goto LABEL_253;
    }

    v46 = v52;
    *(v59 + v52 - v41) = (v148 >> v152) | v154;
    v47 = v4 | 0x4000000000000000;
LABEL_69:
    v50 = v60 & v8;
    ++v46;
  }

LABEL_296:
  __break(1u);
LABEL_297:
  __break(1u);
LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  __break(1u);

LABEL_308:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10002F09C(uint64_t result, unint64_t a2, __int16 a3)
{
  if (__OFADD__(result, a2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((result + a2) > 16)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    swift_willThrow();
    return v5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a2)
  {
    v6 = 0;
    v3 = 0;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v6 < 0x40)
      {
        v3 |= 1 << v6;
      }

      if (v7 == a2)
      {
        goto LABEL_13;
      }

      ++v6;
      if (v7 >= a2)
      {
        __break(1u);
LABEL_13:
        if ((result - 65) < 0xFFFFFFFFFFFFFF7FLL)
        {
          return 0;
        }

        if (result < 0)
        {
          goto LABEL_28;
        }

        if (result == 64)
        {
          return 0;
        }

LABEL_21:
        v8 = (a3 & (v3 << result)) >> result;
        while (v8 > 0xFF)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          if (result == -64)
          {
            return 0;
          }

LABEL_31:
          v3 = (a3 & (v3 >> -result));
          v8 = v3 << -result;
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
            return result;
          }
        }

        return v8;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  if ((result - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  if (result < 0)
  {
    v3 = 0;
    v8 = 0;
    if (result != -64)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v8 = 0;
    v3 = 0;
    if (result != 64)
    {
      goto LABEL_21;
    }
  }

  return v8;
}

uint64_t _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10002F214@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  if (__OFADD__(result, a2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((result + a2) > 16)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    return swift_willThrow();
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

  a4 = result;
  if (a2)
  {
    v5 = 0;
    result = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v5 < 0x40)
      {
        result |= 1 << v5;
      }

      if (v6 == a2)
      {
        break;
      }

      ++v5;
      if (v6 >= a2)
      {
        __break(1u);
        break;
      }
    }

    if ((a4 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
      return 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (a4 != 64)
      {
        return (a3 & (result << a4)) >> a4;
      }

      return 0;
    }

LABEL_26:
    if (a4 == -64)
    {
      return 0;
    }

    return (a3 & (result >> -a4)) << -a4;
  }

  if ((result - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  result = 0;
  if (a4 < 0)
  {
    if (a4 != -64)
    {
      return (a3 & (result >> -a4)) << -a4;
    }
  }

  else if (a4 != 64)
  {
    return (a3 & (result << a4)) >> a4;
  }

  return result;
}

uint64_t sub_10002F354(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10[5] = a3;
  v11 = a4;
  v8 = a3;
  v9 = a4;
  sub_10005DC58(&qword_10058D3F0, &qword_1004869C8);
  sub_10005DC58(&qword_10058D3F8, &unk_1004869D0);
  if (swift_dynamicCast())
  {
    sub_100029954(v6, v10);
    sub_100029B34(v10, v10[3]);
    __chkstk_darwin();
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    return sub_100002A00(v10);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_100016290(v6, &unk_10059B0D0, &unk_1004B4D10);
    __chkstk_darwin();
    return sub_10002F60C(a3, sub_10002F5F4);
  }
}

int8x16_t *sub_10002F4F4(int8x16_t *result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result && a2)
  {
    if (a2 < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (a3)
    {
      v10 = a3 & ~(a3 >> 63);
      v11 = a2 - 1;
      v12 = a3 - 1;
      if (v10 < a3 - 1)
      {
        v12 = a3 & ~(a3 >> 63);
      }

      if (v11 >= v12)
      {
        v11 = v12;
      }

      if (v11 > 0xF)
      {
        v16 = v11 + 1;
        v17 = v16 & 0xF;
        if ((v16 & 0xF) == 0)
        {
          v17 = 16;
        }

        v13 = v16 - v17;
        v14 = v13 + 1;
        v15 = (result + v13);
        v18 = vdupq_n_s8(a4);
        v19 = v13;
        v20 = result;
        do
        {
          *v20++ = v18;
          v19 -= 16;
        }

        while (v19);
      }

      else
      {
        v13 = 0;
        v14 = 1;
        v15 = result;
      }

      v21 = a3 + 1;
      do
      {
        v9 = __OFSUB__(v13, v10);
        v8 = (v13 - v10) < 0;
        if (v13 == v10)
        {
          goto LABEL_23;
        }

        v13 = v14;
        v15->i8[0] = a4;
        if (a2 == v14)
        {
          goto LABEL_12;
        }

        v15 = (v15 + 1);
        ++v14;
        v9 = __OFSUB__(v21, v13 + 1);
        v8 = a3 - v13 < 0;
      }

      while (v21 != v13 + 1);
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a2)
  {
    goto LABEL_22;
  }

LABEL_12:
  v9 = __OFSUB__(a2, a3);
  v8 = a2 - a3 < 0;
  if (a2 == a3)
  {
    return Data._Representation.replaceSubrange(_:with:count:)();
  }

LABEL_25:
  if (v8 != v9)
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F60C(uint64_t a1, uint64_t (*a2)(_OWORD *, uint64_t))
{
  if (a1 <= 0)
  {
    v6 = 0;
    v7 = 0;
    return a2(v6, v7);
  }

  if (a1 <= 0x20)
  {
    memset(v8, 0, sizeof(v8));
    v6 = v8;
    v7 = a1;
    return a2(v6, v7);
  }

  v4 = swift_slowAlloc();
  a2(v4, a1);
}

uint64_t _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(uint64_t result)
{
  if ((result & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10002F71C(uint64_t result)
{
  if (!result)
  {
    return 0;
  }

  v1 = result + 6;
  if ((v1 >> 8))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if ((v1 & 0xC0) != 0)
  {
    result = 0;
  }

  else
  {
    result = 1 << (result + 6);
  }

  if (result < 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10002F75C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_1000124C8(a2, a3);
  }

  return result;
}

uint64_t sub_10002F778(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5, unsigned __int8 a6)
{
  v7 = v6;
  v8 = a6;
  *&v48 = a1;
  *(&v48 + 1) = a2;
  v9 = *(*v6 + 16);
  if (v9)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v44 = a6;
    v35 = a6 << 8;
    v7 = (*v6 + 64);
    v10 = _swiftEmptyArrayStorage;
    v40 = 255;
    while (1)
    {
      v12 = *(v7 - 4);
      v11 = *(v7 - 3);
      v14 = *(v7 - 2);
      v13 = *(v7 - 1);
      v15 = *v7;
      v8 = BYTE1(v11);
      if (BYTE1(v11) > v44)
      {
        break;
      }

      if (BYTE1(v11) == v44 && (static RadioResources.SymbolicChannel.__derived_enum_equals(_:_:)(*(v7 - 4), *(v7 - 3), a4, a5) & 1) != 0)
      {
        v39 = v15;
        v40 = v35 | v11;
        v36 = v12;
        v37 = v13;
        v38 = v14;
      }

      else
      {
        if (BYTE1(v11) >= v44)
        {
          v43 = v10;
          *(&v46 + 1) = v13;
          TimeBitmap.SlotsView.formIntersection(_:)(v48, *(&v48 + 1), a3);
          v10 = v13;
          v18 = TimeBitmap.zero.unsafeMutableAddressor();
          if (!static TimeBitmap.__derived_struct_equals(_:_:)(v14, v13, v15, *v18, v18[1], v18[2]))
          {
            __break(1u);
            goto LABEL_36;
          }

          v16 = v11 & 0xFFFFFFFFFFFF00FFLL | (BYTE1(v11) << 8);
          v10 = v43;
          goto LABEL_14;
        }

        *(&v46 + 1) = v11 & 0xFFFFFFFFFFFF00FFLL | (BYTE1(v11) << 8);
        TimeBitmap.SlotsView.subtract(_:)(v48, *(&v48 + 1), a3);
        v17 = TimeBitmap.zero.unsafeMutableAddressor();
        if (!static TimeBitmap.__derived_struct_equals(_:_:)(v14, v13, v15, *v17, v17[1], v17[2]))
        {
          v16 = v11 & 0xFFFFFFFFFFFF00FFLL | (BYTE1(v11) << 8);
          goto LABEL_14;
        }
      }

LABEL_4:
      v7 += 5;
      if (!--v9)
      {

        v7 = v6;
        *v6 = v10;
        v22 = v48;
        v23 = a3;
        if (v40 == 0xFF)
        {
          v24 = *(&v48 + 1);
          v8 = a6;
          goto LABEL_22;
        }

        *&v46 = v36;
        WORD4(v46) = v40;
        *&v47 = v38;
        *(&v47 + 1) = v37;
        TimeBitmap.SlotsView.formUnion(_:)(v48, *(&v48 + 1), a3);
        v30 = TimeBitmap.zero.unsafeMutableAddressor();
        result = static TimeBitmap.__derived_struct_equals(_:_:)(v38, v37, v39, *v30, v30[1], v30[2]);
        if ((result & 1) == 0)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1000302B4(0, *(v10 + 2) + 1, 1, v10);
            v10 = result;
          }

          v32 = *(v10 + 2);
          v31 = *(v10 + 3);
          if (v32 >= v31 >> 1)
          {
            result = sub_1000302B4((v31 > 1), v32 + 1, 1, v10);
            v10 = result;
          }

          *(v10 + 2) = v32 + 1;
          v33 = &v10[40 * v32];
          *(v33 + 8) = v39;
          *(v33 + 2) = v46;
          *(v33 + 3) = v47;
          goto LABEL_33;
        }

        return result;
      }
    }

    TimeBitmap.SlotsView.subtract(_:)(*(v7 - 2), *(v7 - 1), *v7);
    v16 = v11 & 0xFFFFFFFFFFFF00FFLL | (BYTE1(v11) << 8);
LABEL_14:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1000302B4(0, *(v10 + 2) + 1, 1, v10);
    }

    v20 = *(v10 + 2);
    v19 = *(v10 + 3);
    if (v20 >= v19 >> 1)
    {
      v10 = sub_1000302B4((v19 > 1), v20 + 1, 1, v10);
    }

    *(v10 + 2) = v20 + 1;
    v21 = &v10[40 * v20];
    *(v21 + 4) = v12;
    *(v21 + 5) = v16;
    *(v21 + 6) = v14;
    *(v21 + 7) = v13;
    *(v21 + 8) = v15;
    goto LABEL_4;
  }

  v22 = a1;
  v24 = a2;
  v23 = a3;
  v10 = _swiftEmptyArrayStorage;

  *v7 = _swiftEmptyArrayStorage;
LABEL_22:
  v25 = TimeBitmap.zero.unsafeMutableAddressor();
  result = static TimeBitmap.__derived_struct_equals(_:_:)(v22, v24, v23, *v25, v25[1], v25[2]);
  if ((result & 1) == 0)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_36:
      result = sub_1000302B4(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v28 = *(v10 + 2);
    v27 = *(v10 + 3);
    if (v28 >= v27 >> 1)
    {
      result = sub_1000302B4((v27 > 1), v28 + 1, 1, v10);
      v10 = result;
    }

    *&v45[6] = v48;
    *&v45[22] = a3;
    *(v10 + 2) = v28 + 1;
    v29 = &v10[40 * v28];
    *(v29 + 4) = a4;
    v29[40] = a5;
    v29[41] = v8;
    *(v29 + 56) = *&v45[14];
    *(v29 + 42) = *v45;
LABEL_33:
    *v7 = v10;
  }

  return result;
}

__int128 *TimeBitmap.zero.unsafeMutableAddressor()
{
  if (qword_10058A7E0 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.zero;
}

uint64_t _s7CoreP2P7ChannelV7isValid7channel2on4withSbs6UInt32V_AC4BandOAA9BandwidthOtFZ_0(uint64_t a1, char a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  if (a2)
  {
    if (a2 == 1)
    {
      if (qword_10058AA80 != -1)
      {
        swift_once();
      }

      v5 = &off_100555E88;
      v6 = &off_100591868;
    }

    else
    {
      if (qword_10058AA88 != -1)
      {
        swift_once();
      }

      v5 = &off_100555EB0;
      v6 = &off_100591870;
    }
  }

  else
  {
    if (qword_10058AA78 != -1)
    {
      swift_once();
    }

    v5 = &off_100555E60;
    v6 = &off_100591860;
  }

  v7 = *v6;
  v8 = sub_10002FDA4(v5);

  v9 = sub_10002FFDC(v4, v7);

  if (v9)
  {
    v10 = sub_100030088(v3, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

Swift::Int sub_10002FDA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_10058B3B8, &unk_10047F4D0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = *(v6 + v4);
      Hasher.init(_seed:)();
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v8 = 0;
          goto LABEL_15;
        }

        if (v7 == 3)
        {
          v8 = 1;
          goto LABEL_15;
        }
      }

      else
      {
        switch(v7)
        {
          case 4:
            v8 = 3;
            goto LABEL_15;
          case 5:
            v8 = 4;
            goto LABEL_15;
          case 6:
            v8 = 5;
LABEL_15:
            Hasher._combine(_:)(v8);
            goto LABEL_16;
        }
      }

      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(v7 & 1);
LABEL_16:
      result = Hasher._finalize()();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      v15 = *(v3 + 48);
      if (((1 << v11) & v13) != 0)
      {
        v16 = ~v10;
        do
        {
          v17 = *(v15 + v11);
          if (v17 <= 3)
          {
            if (v17 == 2)
            {
              if (v7 == 2)
              {
                goto LABEL_3;
              }

              goto LABEL_19;
            }

            if (v17 == 3)
            {
              if (v7 == 3)
              {
                goto LABEL_3;
              }

              goto LABEL_19;
            }
          }

          else
          {
            switch(v17)
            {
              case 4u:
                if (v7 == 4)
                {
                  goto LABEL_3;
                }

                goto LABEL_19;
              case 5u:
                if (v7 == 5)
                {
                  goto LABEL_3;
                }

                goto LABEL_19;
              case 6u:
                if (v7 == 6)
                {
                  goto LABEL_3;
                }

                goto LABEL_19;
            }
          }

          if ((v7 - 2) >= 5u && ((v17 ^ v7) & 1) == 0)
          {
            goto LABEL_3;
          }

LABEL_19:
          v11 = (v11 + 1) & v16;
          v12 = v11 >> 6;
          v13 = *(v5 + 8 * (v11 >> 6));
          v14 = 1 << v11;
        }

        while ((v13 & (1 << v11)) != 0);
      }

      *(v5 + 8 * v12) = v13 | v14;
      *(v15 + v11) = v7;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v20;
LABEL_3:
      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

BOOL sub_10002FFDC(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = static Hasher._hash(seed:bytes:count:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_100030088(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      v4 = 0;
      goto LABEL_14;
    }

    if (a1 == 3)
    {
      v4 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    switch(a1)
    {
      case 4u:
        v4 = 3;
        goto LABEL_14;
      case 5u:
        v4 = 4;
        goto LABEL_14;
      case 6u:
        v4 = 5;
LABEL_14:
        Hasher._combine(_:)(v4);
        goto LABEL_15;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(a1 & 1);
LABEL_15:
  v6 = Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + v8);
      if (v10 <= 3)
      {
        if (v10 == 2)
        {
          if (a1 == 2)
          {
            return 1;
          }

          goto LABEL_18;
        }

        if (v10 == 3)
        {
          if (a1 == 3)
          {
            return 1;
          }

          goto LABEL_18;
        }
      }

      else
      {
        switch(v10)
        {
          case 4u:
            if (a1 == 4)
            {
              return 1;
            }

            goto LABEL_18;
          case 5u:
            if (a1 == 5)
            {
              return 1;
            }

            goto LABEL_18;
          case 6u:
            if (a1 == 6)
            {
              return 1;
            }

            goto LABEL_18;
        }
      }

      if ((a1 - 2) >= 5u && ((v10 ^ a1) & 1) == 0)
      {
        return 1;
      }

LABEL_18:
      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return 0;
}

char *sub_1000302B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_1005987D8, &qword_1004B2790);
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
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

uint64_t sub_1000303DC()
{
  if (*(v0 + 8) & 1) != 0 && ((*(v0 + 24) | (*(v0 + 28) << 32)) & 0xFF00000000) != 0x300000000 && (static Channel.isValid(channel:on:with:)())
  {
    v1 = &off_100572928;
  }

  else
  {
    v1 = &off_100572950;
  }

  v2 = v1[2];
  v3 = (v1 + 4);
  do
  {
    if (!v2)
    {

      sub_10005DC58(&qword_1005962F0, &qword_1004B0758);
      goto LABEL_12;
    }

    v4 = *v3++;
    --v2;
  }

  while (v4 != 1);

  v5 = *(v0 + 9);
  sub_10005DC58(&qword_1005962F0, &qword_1004B0758);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100483520;
    *(v6 + 32) = *NANMapID.primary.unsafeMutableAddressor();
    v7 = (v6 + 33);
    v8 = NANMapID.secondary.unsafeMutableAddressor();
    goto LABEL_13;
  }

LABEL_12:
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100480F40;
  v7 = (v6 + 32);
  v8 = NANMapID.primary.unsafeMutableAddressor();
LABEL_13:
  *v7 = *v8;
  return v6;
}

uint64_t sub_100030524()
{
  if ((sub_10003051C() & 1) == 0)
  {
    return 0;
  }

  return sub_10003051C();
}

uint64_t sub_100030580(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 6647407;
    }

    else
    {
      v4 = 1869768058;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1920298854;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7468676965;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E656574786973;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 6647407;
    }

    else
    {
      v9 = 1869768058;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x7468676965;
    if (a2 != 3)
    {
      v6 = 0x6E656574786973;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1920298854;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1000306E8(uint64_t a1)
{
  v3 = a1;
  swift_beginAccess();
  v1 = sub_10005DC58(&qword_10059A658, &qword_1004B3858);
  MutableDriverProperty.wrappedValue.setter(&v3, v1);
  return swift_endAccess();
}

void *sub_100030764()
{
  sub_100030814(0x81uLL, 0, 0, __src);
  memcpy(__dst, __src, sizeof(__dst));
  return sub_100030938(__dst);
}

uint64_t sub_100030814@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = swift_slowAlloc();
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  v10[6] = 0u;
  v10[7] = 0u;
  v10[8] = 0u;
  v10[9] = 0u;
  v10[10] = 0u;
  v10[11] = 0u;
  v10[12] = 0u;
  v10[13] = 0u;
  v10[14] = 0u;
  v10[15] = 0u;
  v10[16] = 0u;
  v10[17] = 0u;
  v10[18] = 0u;
  v10[19] = 0u;
  v10[20] = 0u;
  v10[21] = 0u;
  v10[22] = 0u;
  v10[23] = 0u;
  v10[24] = 0u;
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    a2 = *(v4 + 16);
    v11 = *(v4 + 24);
  }

  AppleDevice.getRequest(requestType:data:on:)(a1, v10, (v10 + 25), 0, a2, v11);

  if (!v5)
  {
    memcpy(a4, v10, 0x190uLL);
  }
}

void *sub_100030938(unsigned __int8 *a1)
{
  if (a1[6])
  {
    memcpy(__dst, a1 + 12, sizeof(__dst));
    v2 = a1[5];
    v3 = _swiftEmptyArrayStorage;
    if (v2)
    {
      v24 = _swiftEmptyArrayStorage;
      sub_100032034(0, v2, 0);
      v3 = _swiftEmptyArrayStorage;
      v4 = &__dst[8];
      do
      {
        v5 = *v4;
        v20 = *(v4 - 1);
        v21 = v5;
        sub_100032118(&v20, &v22);
        v6 = v23;
        v7 = v22;
        v24 = v3;
        v9 = v3[2];
        v8 = v3[3];
        if (v9 >= v8 >> 1)
        {
          sub_100032034((v8 > 1), v9 + 1, 1);
          v3 = v24;
        }

        v3[2] = v9 + 1;
        v10 = &v3[v9];
        *(v10 + 8) = v7;
        *(v10 + 18) = (v7 | (v6 << 32)) >> 32;
        v4 += 3;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    memcpy(__dst, a1 + 12, sizeof(__dst));
    v11 = a1[5];
    v3 = _swiftEmptyArrayStorage;
    if (v11)
    {
      v24 = _swiftEmptyArrayStorage;
      sub_100032034(0, v11, 0);
      v3 = _swiftEmptyArrayStorage;
      v12 = &__dst[8];
      do
      {
        v13 = *v12;
        v20 = *(v12 - 1);
        v21 = v13;
        sub_100114EF8(&v20, &v22);
        v14 = v23;
        v15 = v22;
        v24 = v3;
        v17 = v3[2];
        v16 = v3[3];
        if (v17 >= v16 >> 1)
        {
          sub_100032034((v16 > 1), v17 + 1, 1);
          v3 = v24;
        }

        v3[2] = v17 + 1;
        v18 = &v3[v17];
        *(v18 + 8) = v15;
        *(v18 + 18) = (v15 | (v14 << 32)) >> 32;
        v12 += 3;
        --v11;
      }

      while (v11);
    }
  }

  return v3;
}

uint64_t sub_100030B20(uint64_t a1)
{
  *(v1 + *(*v1 + 496)) = a1;
  sub_100032158();
}

uint64_t _s7CoreP2P15AWDLActionFrameV28AWDLChannelSequenceParameterV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = *v3 | (*(v3 + 2) << 32);
      v6 = *v4 | (*(v4 + 2) << 32);
      v7 = v6 & 0xFF00000000;
      if ((v5 & 0xFF00000000) == 0x300000000)
      {
        if (v7 != 0x300000000)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v7 == 0x300000000 || *v3 != *v4 || (0x801004u >> ((v5 >> 29) & 0xF8)) != (0x801004u >> ((v6 >> 29) & 0xF8)))
      {
        return 0;
      }

      v8 = v6 >> 40;
      if (BYTE5(v5) <= 3u)
      {
        if (BYTE5(v5) == 2)
        {
          if (v8 != 2)
          {
            return 0;
          }

          goto LABEL_6;
        }

        if (BYTE5(v5) == 3)
        {
          if (v8 != 3)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else
      {
        switch(BYTE5(v5))
        {
          case 4u:
            if (v8 != 4)
            {
              return 0;
            }

            goto LABEL_6;
          case 5u:
            if (v8 != 5)
            {
              return 0;
            }

            goto LABEL_6;
          case 6u:
            if (v8 != 6)
            {
              return 0;
            }

            goto LABEL_6;
        }
      }

      if (v8 - 2) < 5 || ((v8 ^ BYTE5(v5)))
      {
        return 0;
      }

LABEL_6:
      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

id Optional<A>.apiChannel.getter(uint64_t a1)
{
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    LOBYTE(v4) = 0;
    return [objc_allocWithZone(WiFiChannel) initWithChannelNumber:0 bandwidth:1 is2_4GHz:0 is5GHz:0 is6GHz:0 isDFS:0 extensionChannelAbove:v4];
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;

    return Channel.apiChannel.getter(v3);
  }
}

uint64_t sub_100030D3C()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  swift_beginAccess();
  v3 = *(v0 + v2);
  type metadata accessor for AWDLInterface.StateMonitoringClient(0, *(v1 + 432), *(v1 + 440), v4);
  return v3;
}

uint64_t sub_100030DCC(uint64_t result, int a2, int a3)
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

__n128 initializeBufferWithCopyOfBuffer for NANAttribute.ClusterDiscovery(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

int64_t sub_100030E20@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 72)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 72)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x48uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v24 = vdupq_n_s64(result);
    v25 = vshlq_u64(v24, xmmword_1004841F0);
    v26 = vmovn_s64(vshlq_u64(v24, xmmword_1004841E0));
    v26.i8[1] = v26.i8[4];
    v27 = vzip1_s16(result, v26);
    *v24.i8 = vmovn_s64(vshlq_u64(v24, xmmword_100484200));
    v28 = vmovn_s64(v25);
    v28.i8[1] = v28.i8[4];
    v28.i8[2] = v24.i8[0];
    v28.i8[3] = v24.i8[4];
    v21 = vzip1_s32(v27, v28);
    v29 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1004817A0), vshlq_u64(v29, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v30 = *(v15 + 14);
      v31 = *(v15 + 30);
      *v32 = *(v15 + 46);
      *&v32[10] = *(v15 + 56);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v30;
      *(a3 + 30) = v31;
      *(a3 + 46) = *v32;
      *(a3 + 56) = *&v32[10];
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

unint64_t sub_1000310B8(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058BA70, &qword_1004AC7F0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10005DC58(&qword_10058BA78, &unk_100480DC0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012400(v9, v5, &qword_10058BA70, &qword_1004AC7F0);
      result = sub_10007CF70(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CodingUserInfoKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100085188(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
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

void *BinaryDecoder.init(data:userInfo:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3[5] = &_swiftEmptyDictionarySingleton;
  v3[2] = a1;
  v3[3] = a2;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(a1 + 16);
    }
  }

  else if (v5)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;
  swift_beginAccess();
  v3[5] = a3;
  return v3;
}

uint64_t sub_10003132C(void *a1)
{
  v3 = a1[3];
  sub_100029B34(a1, v3);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100031694(v7, v8);
    sub_100033480();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v3 = v5;
    if (((1 << v5) & 0xE) == 0)
    {
      if (((1 << v5) & 0x11) != 0)
      {
        sub_100031694(v7, v8);
        if (dispatch thunk of UnkeyedDecodingContainer.decode(_:)() == 9)
        {
          sub_100031694(v7, v8);
          sub_1000317F0();
          dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
          if (sub_1000319F0(v5 | (v6 << 16), 0x9A6F50u))
          {
            sub_100031694(v7, v8);
            sub_1001F7F6C();
            UnkeyedDecodingContainer.inferredDecode<A>()();
          }
        }
      }

      else
      {
        sub_100031694(v7, v8);
        sub_1000317F0();
        dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
        if (sub_1000319F0(v5 | (v6 << 16), 0xF21700u))
        {
          sub_100031694(v7, v8);
          sub_100033694();
          UnkeyedDecodingContainer.inferredDecode<A>()();
        }
      }
    }

    sub_100002A00(v7);
    sub_100002A00(a1);
  }

  return v3;
}

uint64_t sub_100031610@<X0>(uint64_t (*a1)(void)@<X2>, void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = &type metadata for BinaryDecoder.UnkeyedContainer;
  a2[4] = a1();
  *a2 = v4;
}

uint64_t sub_100031694(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1000316E4()
{
  result = qword_100590ED0;
  if (!qword_100590ED0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211Frame.Management.ActionFrame.Category, &type metadata for IEEE80211Frame.Management.ActionFrame.Category, v0, v1);
    atomic_store(result, &qword_100590ED0);
  }

  return result;
}

unint64_t sub_100031764()
{
  result = qword_10058E0E8;
  if (!qword_10058E0E8)
  {
    result = swift_getWitnessTable(byte_100489044, &type metadata for BinaryDecoder.UnkeyedContainer, v0, v1);
    atomic_store(result, &qword_10058E0E8);
  }

  return result;
}

unint64_t sub_1000317F0()
{
  result = qword_10058CFA8;
  if (!qword_10058CFA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OUI, &type metadata for OUI, v0, v1);
    atomic_store(result, &qword_10058CFA8);
  }

  return result;
}

uint64_t sub_100031844(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100002A00(v7);
  sub_100002A00(a1);
  return v6 | (v5 << 8) | (v4 << 16);
}

uint64_t sub_1000319B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100031844(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
  }

  return result;
}

BOOL sub_1000319F0(unsigned int a1, unsigned int a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 >> 8;
  v5 = HIWORD(a1);
  v6 = a2 >> 8;
  v7 = HIWORD(a2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100480F30;
  *(v8 + 32) = v3;
  *(v8 + 33) = v4;
  *(v8 + 34) = v5;
  v9 = sub_10002D874(v8);
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100480F30;
  *(v12 + 32) = v2;
  *(v12 + 33) = v6;
  *(v12 + 34) = v7;
  v13 = sub_10002D874(v12);
  v15 = v14;

  v16 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v11, v13, v15);
  sub_1000124C8(v13, v15);
  sub_1000124C8(v9, v11);
  return v16;
}

BOOL _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10000AB0C(a3, a4);
          return sub_100031C74(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100031C74(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1000C2BF0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000124C8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100031E04(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000124C8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100031E04@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

char *sub_100032034(char *a1, int64_t a2, char a3)
{
  result = sub_100027BF8(a1, a2, a3, *v3, &qword_10058CC40, &unk_100482F40);
  *v3 = result;
  return result;
}

unint64_t sub_100032064(unsigned int a1, unsigned int a2)
{
  if ((a2 & 0x800) != 0)
  {
    v2 = 5;
  }

  else
  {
    v2 = 3;
  }

  if ((a2 & 0x400) != 0)
  {
    LOBYTE(v3) = 4;
  }

  else
  {
    LOBYTE(v3) = v2;
  }

  if ((a2 & 4) != 0)
  {
    v3 = (a2 >> 9) & 1;
  }

  if ((a2 & 2) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  if ((a2 & 8) != 0)
  {
    v7 = 0;
  }

  else if ((a2 & 0x10) != 0)
  {
    v7 = 1;
  }

  else
  {
    if ((a2 & 0x2000) == 0)
    {
      return 0x300000000;
    }

    v7 = 2;
  }

  v9 = v7;
  v10 = v5;
  sub_1000276D8();
  return a1 | (v9 << 32) | (v10 << 40);
}

unint64_t sub_100032118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100032064(*(a1 + 4), *(a1 + 8));
  *a2 = result;
  *(a2 + 4) = WORD2(result);
  return result;
}

uint64_t sub_100032158()
{
  v1 = *v0;
  v2 = *(*v0 + 496);

  v3 = static ChannelSequence.__derived_struct_equals(_:_:)();

  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + v2);
    v6 = j___s7CoreP2P15ChannelSequenceV8endIndexSivg(v5);
    if (v6)
    {
      v7 = v6;

      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v7 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = 0;
      do
      {
        v9 = v8 + 1;
        v10 = ChannelSequence.subscript.getter(v8, v5);
        Optional<A>.apiChannel.getter(v10 & 0xFFFFFFFFFFFFLL);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v9;
      }

      while (v7 != v9);
    }

    sub_100030D3C();
    __chkstk_darwin();
    type metadata accessor for AWDLInterface.StateMonitoringClient(255, *(v1 + 432), *(v1 + 440), v11);
    v12 = type metadata accessor for Dictionary.Values();

    swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v12);
    Sequence.filter(_:)();
    __chkstk_darwin();
    v13 = type metadata accessor for Array();
    swift_getWitnessTable(&protocol conformance descriptor for [A], v13);
    Sequence.forEach(_:)();
  }

  return result;
}

unint64_t ChannelSequence.subscript.getter(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return *(a2 + 8 * result + 32) | (*(a2 + 8 * result + 36) << 32);
  }

  __break(1u);
  return result;
}

id Channel.apiChannel.getter(unint64_t a1)
{
  if ((BYTE5(a1) - 2) > 4u)
  {
    v1 = 2;
  }

  else
  {
    v1 = qword_10049AFF8[(BYTE5(a1) - 2)];
  }

  LOBYTE(v3) = ((BYTE5(a1) - 7) < 0xFBu) & BYTE5(a1);
  return [objc_allocWithZone(WiFiChannel) initWithChannelNumber:a1 bandwidth:v1 is2_4GHz:1u >> (BYTE4(a1) & 7) is5GHz:HIDWORD(a1) & 1 is6GHz:(4u >> (BYTE4(a1) & 7)) & 1 isDFS:Channel.isDFS.getter(a1) extensionChannelAbove:v3];
}

uint64_t sub_100032510(uint64_t *a1, int a2)
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

void sub_100032558(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_100018AB4(0, &unk_100595DA0, WiFiChannel_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v1 channelSequenceChangedEvent:isa];
}

unint64_t sub_1000325F0()
{
  result = qword_10058CFA0;
  if (!qword_10058CFA0)
  {
    result = swift_getWitnessTable(byte_1004890FC, &type metadata for BinaryDecoder.UnkeyedContainer, v0, v1);
    atomic_store(result, &qword_10058CFA0);
  }

  return result;
}

void *BinaryDecoder.decode<A>(_:)(void *a1)
{
  if (a1 == &type metadata for Data)
  {
    result = sub_100039FBC();
    if (v5)
    {
      return result;
    }

    v10[0] = result;
    v10[1] = v9;
    return swift_dynamicCast();
  }

  if (a1 == &type metadata for Bool)
  {
    result = sub_100033534(sub_100033CDC);
    if (v5)
    {
      return result;
    }

    LOBYTE(v10[0]) = result != 0;
    return swift_dynamicCast();
  }

  if (a1 == &type metadata for Double)
  {
    result = sub_1001487A8(sub_1002AB53C);
    if (v5)
    {
      return result;
    }

    v10[0] = result;
    return swift_dynamicCast();
  }

  v7 = swift_conformsToProtocol2();
  if (a1 && v7)
  {
    result = (*(v7 + 8))(v10, v4, a1);
    if (v5)
    {
      return result;
    }

    return swift_dynamicCast();
  }

  type metadata accessor for BinaryDecoder();
  sub_100033ADC();

  return dispatch thunk of Decodable.init(from:)();
}

uint64_t sub_10003286C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P14IEEE80211FrameV10ManagementO06ActionD0V8CategoryO8rawValueAISgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s7CoreP2P14IEEE80211FrameV10ManagementO06ActionD0V8CategoryO8rawValueAISgs5UInt8V_tcfC_0(unsigned __int8 a1)
{
  if (a1 <= 6u)
  {
    if (a1 == 4)
    {
      return 0;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return 2;
      }

      return 7;
    }

    return 1;
  }

  else if (a1 > 0x7Du)
  {
    if (a1 != 126)
    {
      if (a1 == 127)
      {
        return 6;
      }

      return 7;
    }

    return 5;
  }

  else
  {
    if (a1 != 7)
    {
      if (a1 == 9)
      {
        return 4;
      }

      return 7;
    }

    return 3;
  }
}

uint64_t getEnumTagSinglePayload for IEEE80211Frame.Management.ActionFrame.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000329B4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000336E8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 1) = BYTE1(result) & 1;
    *(a1 + 2) = BYTE2(result);
    *(a1 + 4) = HIDWORD(result);
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_1000329FC()
{
  result = qword_10058EC20;
  if (!qword_10058EC20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.OUIType, &type metadata for AWDLActionFrame.OUIType, v0, v1);
    atomic_store(result, &qword_10058EC20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MulticastServiceType(unsigned int *a1, int a2)
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

unint64_t sub_100032B20()
{
  result = qword_10058EC28;
  if (!qword_10058EC28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.AWDLVersion, &type metadata for AWDLActionFrame.AWDLVersion, v0, v1);
    atomic_store(result, &qword_10058EC28);
  }

  return result;
}

uint64_t sub_100032B74@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_10005DC58(&qword_10058E3B8, &qword_1004894A8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_100029B34(a1, a1[3]);
  sub_100032CD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100002A00(a1);
  *a2 = v9;
  return result;
}

unint64_t sub_100032CD4()
{
  result = qword_10058E3B0;
  if (!qword_10058E3B0)
  {
    result = swift_getWitnessTable(byte_10048D3B0, &type metadata for AWDLActionFrame.AWDLVersion.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E3B0);
  }

  return result;
}

uint64_t BinaryDecoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for BinaryDecoder.KeyedContainer(0, a2, a3, a4);

  swift_getWitnessTable(byte_10048926C, v4);
  return KeyedDecodingContainer.init<A>(_:)();
}

void *sub_100032DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = a4();
  result = sub_100032E9C(a5, a1, v11, v12, a5, v13, a6, v14);
  if (!v7)
  {
    return v16;
  }

  return result;
}

uint64_t sub_100032ECC@<X0>(uint64_t a2@<X1>, unint64_t x8_0@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  result = v3[4];
  v6 = result + v4;
  if (__OFADD__(result, v4))
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = v3[2];
  v9 = v3[3];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 == 2)
    {
      if (*(v8 + 24) >= v6)
      {
        goto LABEL_9;
      }
    }

    else if (v6 <= 0)
    {
      v12 = 0;
      v13 = 0;
      if (result > 0)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_14:
    sub_10000B02C();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 2;
    return swift_willThrow();
  }

  v11 = BYTE6(v9);
  if (v10)
  {
    v11 = v8 >> 32;
  }

  if (v11 < v6)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v10)
  {
    if (v10 == 2)
    {
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v12 < result)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = v8;
      v12 = v8 >> 32;
      if (v8 >> 32 < result)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v13 = 0;
    v12 = BYTE6(v9);
    if (BYTE6(v9) < result)
    {
      goto LABEL_23;
    }
  }

LABEL_20:
  if (v12 >= v13)
  {
    v16 = Data._Representation.subscript.getter();
    v18 = v17;
    Data.load<A>(as:)(v16, v17, a2, x8_0);
    result = sub_1000124C8(v16, v18);
    v3[4] = v6;
    return result;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t Data.load<A>(as:)@<X0>(uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v27 - v14;
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(a2 + 16);
      v18 = *(a2 + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v21 >= v11)
      {
        goto LABEL_8;
      }
    }

    else if (v11 <= 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    sub_10000B02C();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 2;
    return swift_willThrow();
  }

  if (v17)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 < v11)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (BYTE6(a3) < v11)
  {
    goto LABEL_17;
  }

LABEL_8:
  v22 = *(v10 + 80);
  if (((v22 + 1) & v22) != 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    v27 = v13;
    v23 = v5;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v13 = *(v10 + 72);
  if (v22 > 0xF)
  {
    v23 = v5;
LABEL_11:
    swift_slowAlloc();
    sub_100033E9C(a2, a3, v11, a4, a5);
    if (!v23)
    {
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v13 > 1024)
  {
    goto LABEL_24;
  }

LABEL_19:
  __chkstk_darwin();
  sub_100033E9C(a2, a3, v11, a4, v12);
  if (!v5)
  {
    v26 = *(v10 + 32);
    v26(v15, v12, a4);
    return (v26)(a5, v15, a4);
  }

LABEL_27:
  swift_willThrow();

  __break(1u);
  return result;
}

BOOL Channel.isDFS.getter(unsigned int a1)
{
  if (qword_10058AA70 != -1)
  {
    swift_once();
  }

  v2 = off_100591858;
  if (!*(off_100591858 + 2))
  {
    return 0;
  }

  v3 = static Hasher._hash(seed:bytes:count:)();
  v4 = -1 << v2[32];
  v5 = v3 & ~v4;
  if (((*&v2[((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  do
  {
    v7 = *(*(v2 + 6) + 4 * v5);
    result = v7 == a1;
    if (v7 == a1)
    {
      break;
    }

    v5 = (v5 + 1) & v6;
  }

  while (((*&v2[((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v5) & 1) != 0);
  return result;
}

unint64_t sub_100033480()
{
  result = qword_100590FA0;
  if (!qword_100590FA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211Frame.Management.ActionFrame.Category, &type metadata for IEEE80211Frame.Management.ActionFrame.Category, v0, v1);
    atomic_store(result, &qword_100590FA0);
  }

  return result;
}

uint64_t sub_100033534(uint64_t (*a1)(void))
{
  result = v1[4];
  v5 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = v1[2];
  v7 = v1[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      if (*(v6 + 24) >= v5)
      {
        goto LABEL_9;
      }
    }

    else if (v5 < 1)
    {
      v10 = 0;
      v11 = 0;
      if (result > 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_14:
    sub_10000B02C();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
    return v2;
  }

  v9 = BYTE6(v7);
  if (v8)
  {
    v9 = v6 >> 32;
  }

  if (v9 < v5)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v8)
  {
    if (v8 == 2)
    {
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v10 < result)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = v6;
      v10 = v6 >> 32;
      if (v6 >> 32 < result)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = BYTE6(v7);
    if (BYTE6(v7) < result)
    {
      goto LABEL_24;
    }
  }

LABEL_20:
  if (v10 >= v11)
  {
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    v2 = a1();
    sub_1000124C8(v13, v15);
    v1[4] = v5;
    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_100033694()
{
  result = qword_100590FA8;
  if (!qword_100590FA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame, &type metadata for AWDLActionFrame, v0, v1);
    atomic_store(result, &qword_100590FA8);
  }

  return result;
}

uint64_t sub_1000336E8(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v14, v15);
  sub_1000329FC();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v14, v15);
  sub_100032B20();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v3 = v17;
  sub_100031694(v14, v15);
  sub_10003411C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v18 = v17;
  sub_100031694(v14, v15);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v4 = v17;
  sub_100031694(v14, v15);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v17;
  sub_100031694(v14, v15);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v13 = v5;
  v7 = v15;
  v8 = v16;
  sub_100031694(v14, v15);
  v9 = type metadata accessor for AWDLActionFrame.AWDLAttribute(0);
  v10 = sub_1000348B8(&qword_10058EC38, type metadata accessor for AWDLActionFrame.AWDLAttribute, protocol conformance descriptor for AWDLActionFrame.AWDLAttribute);
  UnkeyedDecodingContainer.inferredArrayDecode<A>()(v7, v9, v8, v10);
  sub_100002A00(v14);
  v11 = v18;
  sub_100002A00(a1);
  v12 = 256;
  if (!v11)
  {
    v12 = 0;
  }

  return v12 | v3 | (v4 << 16) | (v13 << 32);
}

unint64_t sub_1000339DC()
{
  result = qword_10058EC10;
  if (!qword_10058EC10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.OUIType, &type metadata for AWDLActionFrame.OUIType, v0, v1);
    atomic_store(result, &qword_10058EC10);
  }

  return result;
}

uint64_t sub_100033A48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    if (v5)
    {
      v6 = a2 >> 32;
    }

    else
    {
      v6 = BYTE6(a3);
    }

    if (v5)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v6 >= result && v6 >= v7)
  {
    return Data._Representation.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for WiFiAddress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 6) = v3;
  return result;
}

unint64_t sub_100033ADC()
{
  result = qword_10058C7D0;
  if (!qword_10058C7D0)
  {
    v3 = type metadata accessor for BinaryDecoder();
    result = swift_getWitnessTable(protocol conformance descriptor for BinaryDecoder, v3, v0, v1);
    atomic_store(result, &qword_10058C7D0);
  }

  return result;
}

uint64_t sub_100033B30(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_17;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 1)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 1)
      {
        goto LABEL_8;
      }

LABEL_17:
      sub_10000B02C();
      swift_allocError();
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_24;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_17;
  }

LABEL_8:
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return result;
    }

    v7 = result;
    if (result <= result >> 32)
    {
      v8 = __DataStorage._bytes.getter();
      if (v8)
      {
        v9 = v8;
        v10 = __DataStorage._offset.getter();
        if (!__OFSUB__(v7, v10))
        {
          v11 = (v7 - v10 + v9);
          result = __DataStorage._length.getter();
          if (!v11)
          {
            goto LABEL_31;
          }

          return *v11;
        }

LABEL_27:
        __break(1u);
      }

LABEL_30:
      result = __DataStorage._length.getter();
LABEL_31:
      __break(1u);
      return result;
    }

    goto LABEL_25;
  }

  v13 = *(result + 16);
  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
    __DataStorage._length.getter();
    goto LABEL_29;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  if (__OFSUB__(v13, v16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = (v13 - v16 + v15);
  __DataStorage._length.getter();
  if (!v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return *v11;
}

unint64_t sub_100033DA0()
{
  result = qword_10059AB70;
  if (!qword_10059AB70)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt8, &type metadata for UInt8, v0, v1);
    atomic_store(result, &qword_10059AB70);
  }

  return result;
}

uint64_t BinaryDecoder.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __chkstk_darwin();
  result = sub_100032ECC(v6, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v4)
  {
    return dispatch thunk of FixedWidthInteger.init(littleEndian:)();
  }

  return result;
}

void *sub_100033E9C@<X0>(uint64_t a3@<X2>, unint64_t a4@<X3>, size_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v11 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (v11)
    {
      goto LABEL_13;
    }

    __src[0] = a3;
    LOWORD(__src[1]) = a4;
    BYTE2(__src[1]) = BYTE2(a4);
    BYTE3(__src[1]) = BYTE3(a4);
    BYTE4(__src[1]) = BYTE4(a4);
    BYTE5(__src[1]) = BYTE5(a4);
    v12 = UnsafeMutableBufferPointer.baseAddress.getter();
    if (v12)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  if (v11 != 2)
  {
    memset(__src, 0, 14);
    v12 = UnsafeMutableBufferPointer.baseAddress.getter();
    if (!v12)
    {
      __break(1u);
      goto LABEL_30;
    }

LABEL_21:
    memcpy(v12, __src, a5);
LABEL_22:
    v19 = UnsafeMutableBufferPointer.baseAddress.getter();
    if (v19)
    {
      return (*(*(a6 - 8) + 16))(a7, v19, a6);
    }

LABEL_28:
    __break(1u);
  }

  v20 = a7;
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v16 = __DataStorage._offset.getter();
    if (__OFSUB__(v13, v16))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v15 += v13 - v16;
  }

  if (__OFSUB__(v14, v13))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  a7 = a4 & 0x3FFFFFFFFFFFFFFFLL;
  __DataStorage._length.getter();
  v12 = UnsafeMutableBufferPointer.baseAddress.getter();
  if (!v12)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v15)
  {
LABEL_19:
    memcpy(v12, v15, a5);
    a7 = v20;
    goto LABEL_22;
  }

  __break(1u);
LABEL_13:
  v17 = a3;
  if (a3 > a3 >> 32)
  {
    __break(1u);
    goto LABEL_25;
  }

  v20 = a7;
  v15 = __DataStorage._bytes.getter();
  if (!v15)
  {
    goto LABEL_17;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v17, v18))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 += v17 - v18;
LABEL_17:
  __DataStorage._length.getter();
  v12 = UnsafeMutableBufferPointer.baseAddress.getter();
  if (!v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v15)
  {
    goto LABEL_19;
  }

LABEL_32:
  __break(1u);
  return v12;
}

unint64_t sub_10003411C()
{
  result = qword_10058EC30;
  if (!qword_10058EC30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.OUISubtype, &type metadata for AWDLActionFrame.OUISubtype, v0, v1);
    atomic_store(result, &qword_10058EC30);
  }

  return result;
}

unint64_t sub_1000341D0()
{
  result = qword_10058EC08;
  if (!qword_10058EC08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.OUISubtype, &type metadata for AWDLActionFrame.OUISubtype, v0, v1);
    atomic_store(result, &qword_10058EC08);
  }

  return result;
}

_BYTE *sub_100034224@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Layer3Protocol(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000342E8(uint64_t (*a1)(void))
{
  result = v1[4];
  v5 = result + 4;
  if (__OFADD__(result, 4))
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = v1[2];
  v7 = v1[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      if (*(v6 + 24) >= v5)
      {
        goto LABEL_9;
      }
    }

    else if (v5 < 1)
    {
      v10 = 0;
      v11 = 0;
      if (result > 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_14:
    sub_10000B02C();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
    return v2;
  }

  v9 = BYTE6(v7);
  if (v8)
  {
    v9 = v6 >> 32;
  }

  if (v9 < v5)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v8)
  {
    if (v8 == 2)
    {
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v10 < result)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = v6;
      v10 = v6 >> 32;
      if (v6 >> 32 < result)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = BYTE6(v7);
    if (BYTE6(v7) < result)
    {
      goto LABEL_24;
    }
  }

LABEL_20:
  if (v10 >= v11)
  {
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    v2 = a1();
    sub_1000124C8(v13, v15);
    v1[4] = v5;
    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100034480(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 4)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 4)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) < 4uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return result;
    }

    v8 = result;
    if (result <= result >> 32)
    {
      v9 = __DataStorage._bytes.getter();
      if (v9)
      {
        v10 = v9;
        v11 = __DataStorage._offset.getter();
        if (!__OFSUB__(v8, v11))
        {
          v12 = (v8 - v11 + v10);
          result = __DataStorage._length.getter();
          if (!v12)
          {
            goto LABEL_31;
          }

          return *v12;
        }

LABEL_27:
        __break(1u);
      }

LABEL_30:
      result = __DataStorage._length.getter();
LABEL_31:
      __break(1u);
      return result;
    }

    goto LABEL_25;
  }

  v13 = *(result + 16);
  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
    __DataStorage._length.getter();
    goto LABEL_29;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  if (__OFSUB__(v13, v16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = (v13 - v16 + v15);
  __DataStorage._length.getter();
  if (!v12)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return *v12;
}

uint64_t UnkeyedDecodingContainer.inferredArrayDecode<A>()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v10 = *(a1 - 8);
  v11 = __chkstk_darwin();
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v4, a1, v11);
  if (swift_dynamicCast())
  {

    v6 = BinaryDecoder.decode<A>(_:)(a2, a4);
  }

  else
  {
    v14 = type metadata accessor for Array();
    v16[0] = a4;
    swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v14, v16);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    if (!v5)
    {
      v6 = v16[1];
    }
  }

  (*(v10 + 8))(v13, a1);
  return v6;
}

uint64_t sub_1000348B8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100034900(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BinaryDecoder.decode<A>(_:)(void *a1, uint64_t a2)
{
  v4 = v3;
  __chkstk_darwin();
  v16 = Array.init()();
  v7 = v2[2];
  v6 = v2[3];
  v8 = v6 >> 62;
  v9 = BYTE6(v6);
  while (1)
  {
    while (1)
    {
      v10 = v2[4];
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          if (v10 >= *(v7 + 24))
          {
            return v16;
          }
        }

        else if ((v10 & 0x8000000000000000) == 0)
        {
          return v16;
        }
      }

      else
      {
        v11 = v9;
        if (v8)
        {
          v11 = v7 >> 32;
        }

        if (v10 >= v11)
        {
          return v16;
        }
      }

      BinaryDecoder.decode<A>(_:)(a1);
      if (v4)
      {
        break;
      }

      type metadata accessor for Array();
      Array.append(_:)();
    }

    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if (!swift_dynamicCast())
    {
      break;
    }

    if (v15 != 2)
    {
      sub_1000B2594(v13, v14, v15);
      break;
    }

    if ((v13 & 1) == 0)
    {
      break;
    }

    v4 = 0;
  }
}

uint64_t AWDLActionFrame.AWDLAttribute.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v246 = a2;
  v245 = type metadata accessor for AWDLActionFrame.AWDLAttribute(0);
  __chkstk_darwin();
  v244 = &v223 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v247 = &v223 - v4;
  __chkstk_darwin();
  v243 = &v223 - v5;
  __chkstk_darwin();
  v230 = (&v223 - v6);
  __chkstk_darwin();
  v242 = &v223 - v7;
  __chkstk_darwin();
  v241 = &v223 - v8;
  __chkstk_darwin();
  v229 = (&v223 - v9);
  __chkstk_darwin();
  v240 = &v223 - v10;
  __chkstk_darwin();
  v239 = &v223 - v11;
  __chkstk_darwin();
  v237 = &v223 - v12;
  __chkstk_darwin();
  v236 = &v223 - v13;
  __chkstk_darwin();
  v235 = &v223 - v14;
  __chkstk_darwin();
  v228 = (&v223 - v15);
  __chkstk_darwin();
  v234 = &v223 - v16;
  __chkstk_darwin();
  v231 = (&v223 - v17);
  __chkstk_darwin();
  v233 = &v223 - v18;
  __chkstk_darwin();
  v232 = &v223 - v19;
  __chkstk_darwin();
  v238 = &v223 - v20;
  __chkstk_darwin();
  v22 = &v223 - v21;
  __chkstk_darwin();
  v24 = &v223 - v23;
  __chkstk_darwin();
  v26 = &v223 - v25;
  __chkstk_darwin();
  v28 = &v223 - v27;
  v29 = a1;
  sub_100029B34(a1, a1[3]);
  v30 = v265;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v30)
  {
    v224 = v26;
    v225 = v24;
    v226 = v22;
    v227 = v28;
    v31 = v247;
    v265 = a1;
    sub_10005DC58(&qword_10058CF90, &qword_1004841A0);
    sub_100031694(v255, v256);
    sub_10000CADC(&qword_10058CF88, &qword_10058CF90, &qword_1004841A0, protocol conformance descriptor for TypeLengthValue<A, B>);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v34 = v251;
    v33 = v252;
    v35 = _s7CoreP2P15AWDLActionFrameV13AWDLAttributeO13AttributeTypeO8rawValueAGSgs5UInt8V_tcfC_0(v250);
    v29 = v265;
    v36 = v227;
    switch(v35)
    {
      case 1:
        v108 = sub_100033AA8(_swiftEmptyArrayStorage);
        v109 = type metadata accessor for BinaryDecoder();
        v110 = swift_allocObject();
        v111 = 0;
        v110[5] = &_swiftEmptyDictionarySingleton;
        v110[2] = v34;
        v110[3] = v33;
        v112 = v33 >> 62;
        if ((v33 >> 62) > 1)
        {
          v222 = v246;
          if (v112 == 2)
          {
            v111 = *(v34 + 16);
          }
        }

        else
        {
          v222 = v246;
          if (v112)
          {
            v111 = v34;
          }
        }

        v110[4] = v111;
        swift_beginAccess();
        v110[5] = v108;
        v253 = v109;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v110;
        v201 = sub_10015F550(&v250);
        v202 = v224;
        *v224 = v201;
        *(v202 + 8) = v203;
        swift_storeEnumTagMultiPayload();
        sub_100039054(v202, v36, type metadata accessor for AWDLActionFrame.AWDLAttribute);
        goto LABEL_137;
      case 2:
        v80 = sub_100033AA8(_swiftEmptyArrayStorage);
        v81 = type metadata accessor for BinaryDecoder();
        v82 = swift_allocObject();
        v83 = v33;
        v84 = v82;
        v85 = 0;
        v82[5] = &_swiftEmptyDictionarySingleton;
        v82[2] = v34;
        v82[3] = v83;
        v86 = v83 >> 62;
        if ((v83 >> 62) > 1)
        {
          if (v86 == 2)
          {
            v85 = *(v34 + 16);
          }
        }

        else if (v86)
        {
          v85 = v34;
        }

        v82[4] = v85;
        swift_beginAccess();
        *(v84 + 40) = v80;
        v253 = v81;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v84;
        v198 = v225;
        AWDLActionFrame.ServiceResponse.init(from:)(&v250, v225);
        goto LABEL_124;
      case 3:
        v94 = sub_100033AA8(_swiftEmptyArrayStorage);
        v95 = type metadata accessor for BinaryDecoder();
        v96 = swift_allocObject();
        v97 = v33;
        v98 = v96;
        v99 = 0;
        v96[5] = &_swiftEmptyDictionarySingleton;
        v96[2] = v34;
        v96[3] = v97;
        v100 = v97 >> 62;
        if ((v97 >> 62) > 1)
        {
          v44 = v226;
          if (v100 == 2)
          {
            v99 = *(v34 + 16);
          }
        }

        else
        {
          v44 = v226;
          if (v100)
          {
            v99 = v34;
          }
        }

        v96[4] = v99;
        swift_beginAccess();
        *(v98 + 40) = v94;
        v253 = v95;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v98;
        sub_1000379CC(&v250, v257);
        v200 = v257[1];
        *v44 = v257[0];
        *(v44 + 1) = v200;
        *(v44 + 2) = v257[2];
        goto LABEL_134;
      case 4:
        v59 = sub_100033AA8(_swiftEmptyArrayStorage);
        v60 = type metadata accessor for BinaryDecoder();
        v61 = swift_allocObject();
        v62 = v33;
        v63 = v61;
        v64 = 0;
        v61[5] = &_swiftEmptyDictionarySingleton;
        v61[2] = v34;
        v61[3] = v62;
        v65 = v62 >> 62;
        if ((v62 >> 62) > 1)
        {
          v44 = v238;
          if (v65 == 2)
          {
            v64 = *(v34 + 16);
          }
        }

        else
        {
          v44 = v238;
          if (v65)
          {
            v64 = v34;
          }
        }

        v61[4] = v64;
        swift_beginAccess();
        *(v63 + 40) = v59;
        v253 = v60;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v63;
        v188 = sub_100039124(&v250);
        v249 = v189 & 1;
        v248 = v190 & 1;
        *v44 = v188;
        *(v44 + 1) = WORD1(v188);
        v44[4] = BYTE4(v188);
        v44[5] = BYTE5(v188);
        v44[6] = BYTE6(v188);
        v44[7] = HIBYTE(v188);
        v44[8] = v191;
        v44[9] = v192;
        v44[10] = v193;
        v44[11] = v194;
        *(v44 + 3) = v195;
        v44[16] = v249;
        *(v44 + 5) = v196;
        v44[24] = v190 & 1;
        goto LABEL_134;
      case 5:
        v127 = sub_100033AA8(_swiftEmptyArrayStorage);
        v128 = type metadata accessor for BinaryDecoder();
        v129 = swift_allocObject();
        v130 = v33;
        v131 = v129;
        v132 = 0;
        v129[5] = &_swiftEmptyDictionarySingleton;
        v129[2] = v34;
        v129[3] = v130;
        v133 = v130 >> 62;
        if ((v130 >> 62) > 1)
        {
          v44 = v232;
          if (v133 == 2)
          {
            v132 = *(v34 + 16);
          }
        }

        else
        {
          v44 = v232;
          if (v133)
          {
            v132 = v34;
          }
        }

        v129[4] = v132;
        swift_beginAccess();
        *(v131 + 40) = v127;
        v253 = v128;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v131;
        v207 = sub_100039A9C(&v250);
        *v44 = v207;
        *(v44 + 1) = WORD1(v207);
        *(v44 + 2) = WORD2(v207);
        *(v44 + 2) = v208;
        *(v44 + 2) = v209;
        *(v44 + 3) = v210;
        goto LABEL_134;
      case 6:
        v148 = sub_100033AA8(_swiftEmptyArrayStorage);
        v149 = type metadata accessor for BinaryDecoder();
        v150 = swift_allocObject();
        v151 = v33;
        v152 = v150;
        v153 = 0;
        v150[5] = &_swiftEmptyDictionarySingleton;
        v150[2] = v34;
        v150[3] = v151;
        v154 = v151 >> 62;
        if ((v151 >> 62) > 1)
        {
          v44 = v233;
          if (v154 == 2)
          {
            v153 = *(v34 + 16);
          }
        }

        else
        {
          v44 = v233;
          if (v154)
          {
            v153 = v34;
          }
        }

        v150[4] = v153;
        swift_beginAccess();
        *(v152 + 40) = v148;
        v253 = v149;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v152;
        v215 = sub_10003B994(&v250);
        *v44 = v215;
        v44[4] = BYTE4(v215);
        *(v44 + 1) = v216;
        *(v44 + 2) = v217;
        goto LABEL_134;
      case 7:
        v101 = sub_100033AA8(_swiftEmptyArrayStorage);
        v102 = type metadata accessor for BinaryDecoder();
        v103 = swift_allocObject();
        v104 = v33;
        v105 = v103;
        v106 = 0;
        v103[5] = &_swiftEmptyDictionarySingleton;
        v103[2] = v34;
        v103[3] = v104;
        v107 = v104 >> 62;
        if ((v104 >> 62) > 1)
        {
          if (v107 == 2)
          {
            v106 = *(v34 + 16);
          }
        }

        else if (v107)
        {
          v106 = v34;
        }

        v103[4] = v106;
        swift_beginAccess();
        *(v105 + 40) = v101;
        v253 = v102;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v105;
        v198 = v231;
        AWDLActionFrame.DataPathState.init(from:)(&v250, v231);
        goto LABEL_124;
      case 8:
        v169 = sub_100033AA8(_swiftEmptyArrayStorage);
        v170 = type metadata accessor for BinaryDecoder();
        v171 = swift_allocObject();
        v172 = v33;
        v173 = v171;
        v174 = 0;
        v171[5] = &_swiftEmptyDictionarySingleton;
        v171[2] = v34;
        v171[3] = v172;
        v175 = v172 >> 62;
        if ((v172 >> 62) > 1)
        {
          v44 = v234;
          if (v175 == 2)
          {
            v174 = *(v34 + 16);
          }
        }

        else
        {
          v44 = v234;
          if (v175)
          {
            v174 = v34;
          }
        }

        v171[4] = v174;
        swift_beginAccess();
        *(v173 + 40) = v169;
        v253 = v170;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v173;
        *v44 = sub_100048C6C(&v250);
        *(v44 + 1) = v219;
        *(v44 + 2) = v220;
        goto LABEL_134;
      case 9:
        v73 = sub_100033AA8(_swiftEmptyArrayStorage);
        v74 = type metadata accessor for BinaryDecoder();
        v75 = swift_allocObject();
        v76 = v33;
        v77 = v75;
        v78 = 0;
        v75[5] = &_swiftEmptyDictionarySingleton;
        v75[2] = v34;
        v75[3] = v76;
        v79 = v76 >> 62;
        if ((v76 >> 62) > 1)
        {
          if (v79 == 2)
          {
            v78 = *(v34 + 16);
          }
        }

        else if (v79)
        {
          v78 = v34;
        }

        v75[4] = v78;
        swift_beginAccess();
        *(v77 + 40) = v73;
        v253 = v74;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v77;
        sub_10003BC0C(&v250, v258);
        v197 = v258[1];
        v198 = v228;
        *v228 = v258[0];
        v198[1] = v197;
        v198[2] = v259[0];
        *(v198 + 41) = *(v259 + 9);
        goto LABEL_124;
      case 10:
        v162 = sub_100033AA8(_swiftEmptyArrayStorage);
        v163 = type metadata accessor for BinaryDecoder();
        v164 = swift_allocObject();
        v165 = v33;
        v166 = v164;
        v167 = 0;
        v164[5] = &_swiftEmptyDictionarySingleton;
        v164[2] = v34;
        v164[3] = v165;
        v168 = v165 >> 62;
        if ((v165 >> 62) > 1)
        {
          v44 = v235;
          if (v168 == 2)
          {
            v167 = *(v34 + 16);
          }
        }

        else
        {
          v44 = v235;
          if (v168)
          {
            v167 = v34;
          }
        }

        v164[4] = v167;
        swift_beginAccess();
        *(v166 + 40) = v162;
        v253 = v163;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v166;
        *v44 = sub_100038420(&v250);
        goto LABEL_134;
      case 11:
        v52 = sub_100033AA8(_swiftEmptyArrayStorage);
        v53 = type metadata accessor for BinaryDecoder();
        v54 = swift_allocObject();
        v55 = v33;
        v56 = v54;
        v57 = 0;
        v54[5] = &_swiftEmptyDictionarySingleton;
        v54[2] = v34;
        v54[3] = v55;
        v58 = v55 >> 62;
        if ((v55 >> 62) > 1)
        {
          v44 = v236;
          if (v58 == 2)
          {
            v57 = *(v34 + 16);
          }
        }

        else
        {
          v44 = v236;
          if (v58)
          {
            v57 = v34;
          }
        }

        v54[4] = v57;
        swift_beginAccess();
        *(v56 + 40) = v52;
        v253 = v53;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v56;
        *v44 = sub_10004AFDC(&v250);
        goto LABEL_134;
      case 12:
        v66 = sub_100033AA8(_swiftEmptyArrayStorage);
        v67 = type metadata accessor for BinaryDecoder();
        v68 = swift_allocObject();
        v69 = v33;
        v70 = v68;
        v71 = 0;
        v68[5] = &_swiftEmptyDictionarySingleton;
        v68[2] = v34;
        v68[3] = v69;
        v72 = v69 >> 62;
        if ((v69 >> 62) > 1)
        {
          v44 = v237;
          if (v72 == 2)
          {
            v71 = *(v34 + 16);
          }
        }

        else
        {
          v44 = v237;
          if (v72)
          {
            v71 = v34;
          }
        }

        v68[4] = v71;
        swift_beginAccess();
        *(v70 + 40) = v66;
        v253 = v67;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v70;
        *v44 = sub_10003CF28(&v250);
        goto LABEL_134;
      case 13:
        v141 = sub_100033AA8(_swiftEmptyArrayStorage);
        v142 = type metadata accessor for BinaryDecoder();
        v143 = swift_allocObject();
        v144 = v33;
        v145 = v143;
        v146 = 0;
        v143[5] = &_swiftEmptyDictionarySingleton;
        v143[2] = v34;
        v143[3] = v144;
        v147 = v144 >> 62;
        if ((v144 >> 62) > 1)
        {
          v44 = v239;
          if (v147 == 2)
          {
            v146 = *(v34 + 16);
          }
        }

        else
        {
          v44 = v239;
          if (v147)
          {
            v146 = v34;
          }
        }

        v143[4] = v146;
        swift_beginAccess();
        *(v145 + 40) = v141;
        v253 = v142;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v145;
        *v44 = sub_10015F770(&v250);
        *(v44 + 1) = v214;
        goto LABEL_134;
      case 14:
        v45 = sub_100033AA8(_swiftEmptyArrayStorage);
        v46 = type metadata accessor for BinaryDecoder();
        v47 = swift_allocObject();
        v48 = v33;
        v49 = v47;
        v50 = 0;
        v47[5] = &_swiftEmptyDictionarySingleton;
        v47[2] = v34;
        v47[3] = v48;
        v51 = v48 >> 62;
        if ((v48 >> 62) > 1)
        {
          v44 = v240;
          if (v51 == 2)
          {
            v50 = *(v34 + 16);
          }
        }

        else
        {
          v44 = v240;
          if (v51)
          {
            v50 = v34;
          }
        }

        v47[4] = v50;
        swift_beginAccess();
        *(v49 + 40) = v45;
        v253 = v46;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v49;
        sub_10003D138(&v250, v260);
        v187 = v260[1];
        *v44 = v260[0];
        *(v44 + 1) = v187;
        *(v44 + 4) = v261;
        goto LABEL_134;
      case 15:
        v87 = sub_100033AA8(_swiftEmptyArrayStorage);
        v88 = type metadata accessor for BinaryDecoder();
        v89 = swift_allocObject();
        v90 = v33;
        v91 = v89;
        v92 = 0;
        v89[5] = &_swiftEmptyDictionarySingleton;
        v89[2] = v34;
        v89[3] = v90;
        v93 = v90 >> 62;
        if ((v90 >> 62) > 1)
        {
          if (v93 == 2)
          {
            v92 = *(v34 + 16);
          }
        }

        else if (v93)
        {
          v92 = v34;
        }

        v89[4] = v92;
        swift_beginAccess();
        *(v91 + 40) = v87;
        v253 = v88;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v91;
        sub_10003A254(&v250, v262);
        v199 = v262[1];
        v198 = v229;
        *v229 = v262[0];
        v198[1] = v199;
        v198[2] = v262[2];
        goto LABEL_124;
      case 16:
        v37 = sub_100033AA8(_swiftEmptyArrayStorage);
        v38 = type metadata accessor for BinaryDecoder();
        v39 = swift_allocObject();
        v40 = v33;
        v41 = v39;
        v42 = 0;
        v39[5] = &_swiftEmptyDictionarySingleton;
        v39[2] = v34;
        v39[3] = v40;
        v43 = v40 >> 62;
        if ((v40 >> 62) > 1)
        {
          v44 = v241;
          if (v43 == 2)
          {
            v42 = *(v34 + 16);
          }
        }

        else
        {
          v44 = v241;
          if (v43)
          {
            v42 = v34;
          }
        }

        v39[4] = v42;
        swift_beginAccess();
        *(v41 + 40) = v37;
        v253 = v38;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v41;
        *v44 = sub_10015F990(&v250);
        goto LABEL_134;
      case 17:
        v113 = sub_100033AA8(_swiftEmptyArrayStorage);
        v114 = type metadata accessor for BinaryDecoder();
        v115 = swift_allocObject();
        v116 = v33;
        v117 = v115;
        v118 = 0;
        v115[5] = &_swiftEmptyDictionarySingleton;
        v115[2] = v34;
        v115[3] = v116;
        v119 = v116 >> 62;
        if ((v116 >> 62) > 1)
        {
          v44 = v242;
          if (v119 == 2)
          {
            v118 = *(v34 + 16);
          }
        }

        else
        {
          v44 = v242;
          if (v119)
          {
            v118 = v34;
          }
        }

        v115[4] = v118;
        swift_beginAccess();
        *(v117 + 40) = v113;
        v253 = v114;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v117;
        v204 = sub_10015FB00(&v250);
        *v44 = v204;
        v44[2] = BYTE2(v204);
        v44[3] = BYTE3(v204);
        v44[4] = BYTE4(v204);
        v44[5] = BYTE5(v204);
        v44[6] = BYTE6(v204);
        goto LABEL_134;
      case 18:
        v155 = sub_100033AA8(_swiftEmptyArrayStorage);
        v156 = type metadata accessor for BinaryDecoder();
        v157 = swift_allocObject();
        v158 = v33;
        v159 = v157;
        v160 = 0;
        v157[5] = &_swiftEmptyDictionarySingleton;
        v157[2] = v34;
        v157[3] = v158;
        v161 = v158 >> 62;
        if ((v158 >> 62) > 1)
        {
          if (v161 == 2)
          {
            v160 = *(v34 + 16);
          }
        }

        else if (v161)
        {
          v160 = v34;
        }

        v157[4] = v160;
        swift_beginAccess();
        *(v159 + 40) = v155;
        v253 = v156;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v159;
        sub_1001600CC(&v250, v263);
        v218 = v263[1];
        v198 = v230;
        *v230 = v263[0];
        v198[1] = v218;
        *(v198 + 4) = v264;
LABEL_124:
        swift_storeEnumTagMultiPayload();
        v213 = v198;
        goto LABEL_135;
      case 19:
        sub_100033AA8(_swiftEmptyArrayStorage);
        type metadata accessor for BinaryDecoder();
        v183 = swift_allocObject();
        v184 = v33;
        v185 = v183;
        v183[5] = &_swiftEmptyDictionarySingleton;
        v183[2] = v34;
        v183[3] = v184;
        swift_setDeallocating();
        sub_1000124C8(v185[2], v185[3]);

        swift_deallocClassInstance();
        swift_storeEnumTagMultiPayload();
        goto LABEL_136;
      case 20:
        v120 = sub_100033AA8(_swiftEmptyArrayStorage);
        v121 = type metadata accessor for BinaryDecoder();
        v122 = swift_allocObject();
        v123 = v33;
        v124 = v122;
        v125 = 0;
        v122[5] = &_swiftEmptyDictionarySingleton;
        v122[2] = v34;
        v122[3] = v123;
        v126 = v123 >> 62;
        if ((v123 >> 62) > 1)
        {
          v44 = v243;
          if (v126 == 2)
          {
            v125 = *(v34 + 16);
          }
        }

        else
        {
          v44 = v243;
          if (v126)
          {
            v125 = v34;
          }
        }

        v122[4] = v125;
        swift_beginAccess();
        *(v124 + 40) = v120;
        v253 = v121;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v124;
        v205 = sub_10003DB6C(&v250);
        *v44 = v205;
        v44[4] = BYTE4(v205);
        v44[5] = BYTE5(v205);
        *(v44 + 1) = v206;
        goto LABEL_134;
      case 21:
        v134 = sub_100033AA8(_swiftEmptyArrayStorage);
        v135 = type metadata accessor for BinaryDecoder();
        v136 = swift_allocObject();
        v137 = v33;
        v138 = v136;
        v139 = 0;
        v136[5] = &_swiftEmptyDictionarySingleton;
        v136[2] = v34;
        v136[3] = v137;
        v140 = v137 >> 62;
        if ((v137 >> 62) > 1)
        {
          if (v140 == 2)
          {
            v139 = *(v34 + 16);
          }
        }

        else if (v140)
        {
          v139 = v34;
        }

        v136[4] = v139;
        swift_beginAccess();
        *(v138 + 40) = v134;
        v253 = v135;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v138;
        v211 = sub_10015FCD0(&v250);
        *v31 = v211;
        *(v31 + 1) = HIDWORD(v211);
        *(v31 + 2) = v212;
        swift_storeEnumTagMultiPayload();
        v213 = v31;
        v36 = v227;
        goto LABEL_135;
      case 22:
        v176 = sub_100033AA8(_swiftEmptyArrayStorage);
        v177 = type metadata accessor for BinaryDecoder();
        v178 = swift_allocObject();
        v179 = v33;
        v180 = v178;
        v181 = 0;
        v178[5] = &_swiftEmptyDictionarySingleton;
        v178[2] = v34;
        v178[3] = v179;
        v182 = v179 >> 62;
        if ((v179 >> 62) > 1)
        {
          v44 = v244;
          if (v182 == 2)
          {
            v181 = *(v34 + 16);
          }
        }

        else
        {
          v44 = v244;
          if (v182)
          {
            v181 = v34;
          }
        }

        v178[4] = v181;
        swift_beginAccess();
        *(v180 + 40) = v176;
        v253 = v177;
        v254 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v250 = v180;
        v221 = sub_10015FF04(&v250);
        *v44 = v221;
        v44[1] = HIBYTE(v221) & 1;
LABEL_134:
        swift_storeEnumTagMultiPayload();
        v213 = v44;
LABEL_135:
        sub_100039054(v213, v36, type metadata accessor for AWDLActionFrame.AWDLAttribute);
LABEL_136:
        v222 = v246;
        goto LABEL_137;
      case 23:
        sub_10000B02C();
        swift_allocError();
        *v186 = xmmword_10047CE70;
        *(v186 + 16) = 2;
        swift_willThrow();
        sub_1000124C8(v34, v33);
        sub_100002A00(v255);
        return sub_100002A00(v29);
      default:
        sub_100031694(v255, v256);
        sub_100039F68();
        dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
        sub_1000124C8(v250, v251);
        sub_1000124C8(v34, v33);
        v222 = v246;
        swift_storeEnumTagMultiPayload();
LABEL_137:
        sub_100002A00(v255);
        sub_100039054(v36, v222, type metadata accessor for AWDLActionFrame.AWDLAttribute);
        break;
    }
  }

  return sub_100002A00(v29);
}

uint64_t TypeLengthValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v97 = a8;
  v95 = a6;
  v88 = a9;
  v90 = *(a10 + 8);
  v87 = *(*(v90 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v85 = &v81 - v16;
  v89 = *(a3 - 8);
  __chkstk_darwin();
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v81 - v19;
  v91 = *(a2 - 8);
  __chkstk_darwin();
  v92 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a4;
  v99[0] = a2;
  v99[1] = a3;
  v99[2] = a4;
  v100 = a5;
  v101 = v95;
  v102 = a7;
  v94 = a2;
  v95 = a7;
  v103 = v97;
  v104 = a10;
  v22 = a1;
  v23 = type metadata accessor for TypeLengthValue(0, v99);
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v81 - v25;
  v27 = v22[3];
  v97 = v22;
  sub_100029B34(v22, v27);
  v28 = v96;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v28)
  {
    return sub_100002A00(v97);
  }

  v81 = v18;
  v96 = v20;
  v83 = v24;
  v84 = v26;
  v82 = v23;
  sub_100031694(v99, v100);
  v29 = v92;
  v30 = v94;
  UnkeyedDecodingContainer.inferredDecode<A>()();
  (*(v91 + 32))(v84, v29, v30);
  sub_100031694(v99, v100);
  v32 = a3;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v33 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v34 = v82;
  v35 = v83;
  v36 = v89;
  if ((v33 & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_18;
  }

  v98[0] = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      sub_100086E78();
      v37 = v81;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v38 = dispatch thunk of static Comparable.< infix(_:_:)();
      v39 = v37;
      v34 = v82;
      result = (*(v36 + 8))(v39, v32);
      goto LABEL_12;
    }

LABEL_17:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_18;
  }

  v40 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v41 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v40 & 1) == 0)
  {
    if (v41 >= 64)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v41 <= 64)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v43 = v81;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v44 = dispatch thunk of static Comparable.< infix(_:_:)();
    v45 = v43;
    v34 = v82;
    result = (*(v36 + 8))(v45, v32);
    if (v44)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    goto LABEL_17;
  }

  sub_100086E78();
  v42 = v81;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v38 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (*(v36 + 8))(v42, v32);
LABEL_12:
  if (v38)
  {
    goto LABEL_55;
  }

LABEL_18:
  v46 = v96;
  if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v98[0] = 0x7FFFFFFFFFFFFFFFLL;
    v47 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v48 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v47)
    {
      v49 = v48 < 65;
    }

    else
    {
      v49 = v48 < 64;
    }

    v50 = v81;
    if (!v49)
    {
      sub_100086E78();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v51 = v34;
      v52 = v50;
      v46 = v96;
      v53 = dispatch thunk of static Comparable.< infix(_:_:)();
      v54 = v52;
      v34 = v51;
      v35 = v83;
      (*(v36 + 8))(v54, v32);
      if ((v53 & 1) == 0)
      {
        goto LABEL_29;
      }

      __break(1u);
    }

    v46 = v96;
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_29:
  v55 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v36 + 8))(v46, v32);
  sub_100029B34(v97, v97[3]);
  v56 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for CodingUserInfoKey();
  v58 = sub_100037644(v57, static CodingUserInfoKey.fourByteAlignedValue);
  if (!*(v56 + 16) || (v59 = sub_10007CF6C(v58), (v60 & 1) == 0))
  {

LABEL_40:
    v66 = v100;
    v67 = v101;
    sub_100031694(v99, v100);
    v68 = UnkeyedDecodingContainer.decodeData(with:)(v55, v66, v67);
    goto LABEL_54;
  }

  sub_100002B30(*(v56 + 56) + 32 * v59, v98);

  result = swift_dynamicCast();
  if ((result & 1) == 0 || v105 != 1)
  {
    goto LABEL_40;
  }

  if (!__OFADD__(v55, 3))
  {
    v61 = v100;
    v62 = v101;
    sub_100031694(v99, v100);
    result = UnkeyedDecodingContainer.decodeData(with:)((v55 + 3) & 0xFFFFFFFFFFFFFFFCLL, v61, v62);
    v64 = 0;
    v65 = v63 >> 62;
    if ((v63 >> 62) > 1)
    {
      if (v65 == 2)
      {
        v64 = *(result + 16);
      }
    }

    else if (v65)
    {
      v64 = result;
    }

    v70 = __OFADD__(v64, v55);
    v71 = v64 + v55;
    if (v70)
    {
      goto LABEL_57;
    }

    if (v65 > 1)
    {
      if (v65 == 2)
      {
        v72 = *(result + 16);
        v73 = *(result + 24);
      }

      else
      {
        v73 = 0;
        v72 = 0;
      }
    }

    else if (v65)
    {
      v72 = result;
      v73 = result >> 32;
    }

    else
    {
      v72 = 0;
      v73 = BYTE6(v63);
    }

    if (v73 < v72 || v71 < v72)
    {
      goto LABEL_58;
    }

    v74 = v63;
    v75 = result;
    v76 = Data._Representation.subscript.getter();
    v78 = v77;
    sub_1000124C8(v75, v74);
    v69 = v78;
    v68 = v76;
LABEL_54:
    v79 = v84;
    v80 = &v84[*(v34 + 84)];
    *v80 = v68;
    *(v80 + 1) = v69;
    sub_100002A00(v99);
    (*(v35 + 16))(v88, v79, v34);
    sub_100002A00(v97);
    return (*(v35 + 8))(v79, v34);
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_10003725C(uint64_t (*a1)(void))
{
  result = v1[4];
  v5 = result + 2;
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = v1[2];
  v7 = v1[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      if (*(v6 + 24) >= v5)
      {
        goto LABEL_9;
      }
    }

    else if (v5 < 1)
    {
      v10 = 0;
      v11 = 0;
      if (result > 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_14:
    sub_10000B02C();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
    return v2;
  }

  v9 = BYTE6(v7);
  if (v8)
  {
    v9 = v6 >> 32;
  }

  if (v9 < v5)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v8)
  {
    if (v8 == 2)
    {
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v10 < result)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = v6;
      v10 = v6 >> 32;
      if (v6 >> 32 < result)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = BYTE6(v7);
    if (BYTE6(v7) < result)
    {
      goto LABEL_24;
    }
  }

LABEL_20:
  if (v10 >= v11)
  {
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    v2 = a1();
    sub_1000124C8(v13, v15);
    v1[4] = v5;
    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1000373BC(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 2)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) < 2uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return result;
    }

    v8 = result;
    if (result <= result >> 32)
    {
      v9 = __DataStorage._bytes.getter();
      if (v9)
      {
        v10 = v9;
        v11 = __DataStorage._offset.getter();
        if (!__OFSUB__(v8, v11))
        {
          v12 = (v8 - v11 + v10);
          result = __DataStorage._length.getter();
          if (!v12)
          {
            goto LABEL_31;
          }

          return *v12;
        }

LABEL_27:
        __break(1u);
      }

LABEL_30:
      result = __DataStorage._length.getter();
LABEL_31:
      __break(1u);
      return result;
    }

    goto LABEL_25;
  }

  v13 = *(result + 16);
  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
    __DataStorage._length.getter();
    goto LABEL_29;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  if (__OFSUB__(v13, v16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = (v13 - v16 + v15);
  __DataStorage._length.getter();
  if (!v12)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return *v12;
}

uint64_t sub_100037644(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *UnkeyedDecodingContainer.decodeData(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = *(a2 - 8);
  v9 = __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v3, a2, v9);
  if (swift_dynamicCast())
  {

    v5 = BinaryDecoder.decodeData(with:)(a1);

LABEL_17:
    (*(v8 + 8))(v11, a2);
    return v5;
  }

  sub_100039F68();
  result = dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  if (v4)
  {
    goto LABEL_17;
  }

  v5 = v20;
  v13 = v21;
  v14 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v14 != 2)
    {
      if (!a1)
      {
        goto LABEL_17;
      }

LABEL_16:
      sub_10000B02C();
      swift_allocError();
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 2;
      swift_willThrow();
      sub_1000124C8(v5, v13);
      goto LABEL_17;
    }

    v16 = *(v20 + 16);
    v15 = *(v20 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (!v17)
    {
      if (v18 == a1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    __break(1u);
  }

  else
  {
    if (!v14)
    {
      if (BYTE6(v21) == a1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (!__OFSUB__(HIDWORD(v20), v20))
    {
      if (HIDWORD(v20) - v20 == a1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t BinaryDecoder.decodeData(with:)(uint64_t a1)
{
  result = v1[4];
  v4 = result + a1;
  if (!__OFADD__(result, a1))
  {
    v5 = v1[2];
    v6 = v1[3];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 != 2)
      {
        if (a1 < 0 || v4 > 0)
        {
          goto LABEL_16;
        }

LABEL_14:
        if (v4 >= result)
        {
          result = Data._Representation.subscript.getter();
          v1[4] = v4;
          return result;
        }

        goto LABEL_18;
      }

      v8 = *(v5 + 24);
      if (a1 < 0)
      {
LABEL_16:
        sub_10000B02C();
        swift_allocError();
        *v9 = 0;
        *(v9 + 8) = 0;
        *(v9 + 16) = 2;
        return swift_willThrow();
      }
    }

    else
    {
      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(v6);
      }

      if (a1 < 0)
      {
        goto LABEL_16;
      }
    }

    if (v8 < v4)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s7CoreP2P15AWDLActionFrameV13AWDLAttributeO13AttributeTypeO8rawValueAGSgs5UInt8V_tcfC_0(unsigned __int8 a1)
{
  if (a1 > 0x23u)
  {
    return 23;
  }

  else
  {
    return byte_10048DC74[a1];
  }
}

uint64_t sub_1000379CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_10005DC58(&qword_10058ED18, &qword_10048D660);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19.i8[-v8];
  sub_100029B34(a1, a1[3]);
  sub_100037EDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  LOBYTE(v38) = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 2;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 3;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 4;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 5;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 6;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 7;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 8;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 9;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 10;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 11;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 12;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 13;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = 14;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v3.i32[0] = v38;
  v24 = BYTE5(v38);
  v25 = BYTE4(v38);
  LOBYTE(v38) = 15;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 16;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 17;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 18;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = 19;
  sub_1000383CC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v7 + 8))(v9, v6);
  v19 = vmovl_u8(v3);
  v12 = v38;
  result = sub_100002A00(a1);
  *a2 = v10;
  *(a2 + 2) = v11;
  v14 = v36;
  *(a2 + 4) = v37;
  *(a2 + 5) = v14;
  v15 = v34;
  *(a2 + 6) = v35;
  *(a2 + 8) = v15;
  v16 = v32;
  *(a2 + 10) = v33;
  *(a2 + 12) = v16;
  v17 = v30;
  *(a2 + 14) = v31;
  *(a2 + 16) = v17;
  LOBYTE(v17) = v28;
  *(a2 + 18) = v29;
  *(a2 + 19) = v17;
  LOBYTE(v17) = v26;
  *(a2 + 20) = v27;
  *(a2 + 21) = v17;
  *(a2 + 22) = vuzp1_s8(*v19.i8, *v19.i8).u32[0];
  LOBYTE(v17) = v24;
  *(a2 + 26) = v25;
  *(a2 + 27) = v17;
  LOBYTE(v17) = v22;
  *(a2 + 28) = v23;
  *(a2 + 29) = v17;
  v18 = v20;
  *(a2 + 30) = v21;
  *(a2 + 32) = v18;
  *(a2 + 40) = v12;
  return result;
}

unint64_t sub_100037EDC()
{
  result = qword_10058ED20;
  if (!qword_10058ED20)
  {
    result = swift_getWitnessTable(byte_10048DAE0, &type metadata for AWDLActionFrame.SynchronizationParameter.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058ED20);
  }

  return result;
}

uint64_t sub_100037F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = a4();
  result = sub_100032E9C(a5, a1, v11, v12, a5, v13, a6, v14);
  if (!v7)
  {
    return v16;
  }

  return result;
}

unint64_t sub_100037FF8()
{
  result = qword_10058E2D8;
  if (!qword_10058E2D8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt16, &type metadata for UInt16, v0, v1);
    atomic_store(result, &qword_10058E2D8);
  }

  return result;
}

unint64_t sub_10003804C()
{
  result = qword_10058BBF0[0];
  if (!qword_10058BBF0[0])
  {
    result = swift_getWitnessTable("i \n", &type metadata for WiFiAddress, v0, v1);
    atomic_store(result, qword_10058BBF0);
  }

  return result;
}

uint64_t sub_1000380FC(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    v3 = v15;
    v4 = v16;
    sub_100031694(v14, v15);
    v5 = UnkeyedDecodingContainer.decodeData(with:)(6, v3, v4);
    v7 = v6;
    sub_10000AB0C(v5, v6);
    v8 = sub_1000172CC(v5, v7);
    if ((v8 & 0x1000000000000) == 0)
    {
      v9 = v8;
      sub_1000124C8(v5, v7);
      sub_100002A00(v14);
      sub_100002A00(a1);
      return v9 & 0xFFFFFFFFFFFFLL;
    }

    v11 = type metadata accessor for DecodingError();
    swift_allocError();
    v13 = v12;
    v17 = *(sub_10005DC58(&qword_10058CE38, &unk_100483C40) + 48);
    *v13 = &type metadata for WiFiAddress;
    sub_100029B34(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v11 - 8) + 104))(v13, enum case for DecodingError.valueNotFound(_:), v11);
    swift_willThrow();
    sub_1000124C8(v5, v7);
    sub_100002A00(v14);
  }

  return sub_100002A00(a1);
}

uint64_t sub_1000382E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000380FC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
  }

  return result;
}

unint64_t sub_100038378()
{
  result = qword_10058E2F8;
  if (!qword_10058E2F8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int16, &type metadata for Int16, v0, v1);
    atomic_store(result, &qword_10058E2F8);
  }

  return result;
}

unint64_t sub_1000383CC()
{
  result = qword_10058ED28;
  if (!qword_10058ED28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.AWDLChannelSequenceParameter, &type metadata for AWDLActionFrame.AWDLChannelSequenceParameter, v0, v1);
    atomic_store(result, &qword_10058ED28);
  }

  return result;
}

void *sub_100038420(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
    return v3;
  }

  sub_100031694(v9, v10);
  result = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v5 = result + 1;
  if ((v5 & 0x100) == 0)
  {
    sub_100031694(v9, v10);
    sub_100038644();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v6 = v11;
    sub_100031694(v9, v10);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    sub_100031694(v9, v10);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    sub_100031694(v9, v10);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v7 = v5 << 8;
    if ((v6 - 2) >= 2)
    {
      if (v6)
      {
        sub_100038810(v7, v9);
      }

      else
      {
        sub_1001497A4(v7, v9);
      }
    }

    else
    {
      v8 = sub_100039664(v7, v9);
    }

    v3 = v8;
    sub_100002A00(v9);
    sub_100002A00(a1);
    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100038618@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AWDLActionFrame.AWDLChannelSequenceParameter.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100038644()
{
  result = qword_10058ED40;
  if (!qword_10058ED40)
  {
    result = swift_getWitnessTable(byte_10048DA68, &type metadata for AWDLActionFrame.AWDLChannelSequenceParameter.Encoding, v0, v1);
    atomic_store(result, &qword_10058ED40);
  }

  return result;
}

unint64_t sub_1000386F8()
{
  result = qword_10058EDB8;
  if (!qword_10058EDB8)
  {
    result = swift_getWitnessTable(byte_10048D810, &type metadata for AWDLActionFrame.AWDLChannelSequenceParameter.Encoding, v0, v1);
    atomic_store(result, &qword_10058EDB8);
  }

  return result;
}

uint64_t sub_10003874C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NANBloomFilter.Index(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_100038810(__int16 a1, uint64_t a2)
{
  v3 = (HIBYTE(a1) - a1);
  v15 = HIBYTE(a1);
  if (HIBYTE(a1) < a1)
  {
    v4 = -(a1 - HIBYTE(a1));
  }

  else
  {
    v4 = (HIBYTE(a1) - a1);
  }

  if (v4)
  {
    v5 = a1;
    v19 = _swiftEmptyArrayStorage;
    sub_100032034(0, v4 & ~(v4 >> 63), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = v19;
      LODWORD(v7) = v15 - v5;
      if (v15 >= v5)
      {
        v7 = v7;
      }

      else
      {
        v7 = 0;
      }

      v8 = -v7;
      while (v4)
      {
        sub_100038980(a2, &v16, &v17);
        if (v2)
        {

          return;
        }

        v9 = v18;
        v10 = v17;
        v19 = v6;
        v12 = v6[2];
        v11 = v6[3];
        if (v12 >= v11 >> 1)
        {
          sub_100032034((v11 > 1), v12 + 1, 1);
          v6 = v19;
        }

        v6[2] = v12 + 1;
        v13 = &v6[v12];
        *(v13 + 8) = v10;
        *(v13 + 18) = (v10 | (v9 << 32)) >> 32;
        if (v15 < v5)
        {
          goto LABEL_21;
        }

        if (!v8)
        {
          goto LABEL_22;
        }

        ++v8;
        --v4;
        if (!--v3)
        {
          return;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100038980(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  sub_100031694(a1, *(a1 + 24));
  sub_100038BB8();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    sub_100031694(a1, *(a1 + 24));
    v7 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v8 = v7;
    if (v7)
    {
      v9 = sub_100038CD4(0, 2uLL, v17);
      if (v8 <= 0xDDu && v9 == 2)
      {
        v8 += 2;
      }

      else if (sub_100038CD4(0, 2uLL, v17) == 1 && v8 > 2u)
      {
        v8 -= 2;
      }

      v12 = sub_100038CD4(4, 4uLL, v17) == 1;
      v13 = sub_100038E98(v17);
      if (_s7CoreP2P7ChannelV7isValid7channel2on4withSbs6UInt32V_AC4BandOAA9BandwidthOtFZ_0(v8, v12, v13))
      {
        v14 = sub_100038CD4(4, 4uLL, v17) == 1;
        v16 = sub_100038E98(v17);
        sub_1000276D8();
        *a3 = v8;
        v15 = (v8 | (v14 << 32) | (v16 << 40)) >> 32;
      }

      else
      {
        *a3 = 0;
        LOWORD(v15) = 3;
      }

      *(a3 + 4) = v15;
    }

    else
    {
      *a3 = 0;
      *(a3 + 4) = 3;
    }
  }
}

unint64_t sub_100038BB8()
{
  result = qword_10058ED48;
  if (!qword_10058ED48)
  {
    result = swift_getWitnessTable(asc_10048DA40, &type metadata for AWDLActionFrame.AWDLChannelSequenceParameter.NChannelOperatingClass, v0, v1);
    atomic_store(result, &qword_10058ED48);
  }

  return result;
}

unint64_t sub_100038C6C()
{
  result = qword_10058ED88;
  if (!qword_10058ED88)
  {
    result = swift_getWitnessTable(byte_10048D908, &type metadata for AWDLActionFrame.AWDLChannelSequenceParameter.NChannelOperatingClass, v0, v1);
    atomic_store(result, &qword_10058ED88);
  }

  return result;
}

uint64_t sub_100038D04@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100038D34(uint64_t a1, unint64_t a2, char a3)
{
  if (__OFADD__(a1, a2))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((a1 + a2) > 8)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    swift_willThrow();
    return v5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  if (a2)
  {
    v7 = 0;
    v3 = 0;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v7 < 0x40)
      {
        v3 |= 1 << v7;
      }

      if (v8 == a2)
      {
        break;
      }

      ++v7;
      if (v8 >= a2)
      {
        __break(1u);
        break;
      }
    }

    if ((a1 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
      return 0;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (a1 != 64)
      {
        return (a3 & (v3 << a1)) >> a1;
      }

      return 0;
    }

LABEL_25:
    if (a1 == -64)
    {
      return 0;
    }

    goto LABEL_28;
  }

  if ((a1 - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  v9 = 0;
  v3 = 0;
  if (a1 < 0)
  {
    if (a1 != -64)
    {
LABEL_28:
      v9 = (a3 & (v3 >> -a1)) << -a1;
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      if (v9 > 0xFF)
      {
        __break(1u);
      }
    }
  }

  else if (a1 != 64)
  {
    return (a3 & (v3 << a1)) >> a1;
  }

  return v9;
}

uint64_t sub_100038E98(char a1)
{
  v2 = sub_100038CD4(2, 2uLL, a1);
  if (v2 == 1)
  {
    return 2;
  }

  if (v2 == 3)
  {
    return sub_100038CD4(0, 2uLL, a1) == 2;
  }

  return 3;
}

uint64_t BinaryDecoder.__deallocating_deinit()
{
  sub_1000124C8(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_100038F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100038FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100039054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000390BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100039124(void *a1)
{
  v3 = sub_10005DC58(&qword_10058ED08, &qword_10048D658);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v11 - v5;
  sub_100029B34(a1, a1[3]);
  sub_100039434();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v16[0] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v16[0] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v16[0] = 2;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v16[0] = 3;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = 4;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v16[0];
  v12 = v16[1];
  v11[2] = *&v16[2];
  v19 = 5;
  v14 = sub_100039488();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11[1] = *v16;
  v17 = v16[4];
  v19 = 6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  v18 = v16[4];
  sub_100002A00(a1);
  return v7 | (v8 << 16) | (v9 << 32) | (v15 << 40) | (v13 << 48) | (v12 << 56);
}

unint64_t sub_100039434()
{
  result = qword_10058ED10;
  if (!qword_10058ED10)
  {
    result = swift_getWitnessTable(aI, &type metadata for AWDLActionFrame.DeprecatedElectionParameter.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058ED10);
  }

  return result;
}

unint64_t sub_100039488()
{
  result = qword_10058ECA8;
  if (!qword_10058ECA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLElectionMetric, &type metadata for AWDLElectionMetric, v0, v1);
    atomic_store(result, &qword_10058ECA8);
  }

  return result;
}

uint64_t sub_1000394DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100029B34(v8, v8[3]);
  v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v6 = sub_1000395B0(v5);
  sub_100002A00(v8);
  result = sub_100002A00(a1);
  *a2 = v6;
  *(a2 + 4) = BYTE4(v6) & 1;
  return result;
}

unint64_t sub_1000395B0(int a1)
{
  if (a1 <= 95)
  {
    if (a1 == 80)
    {
      v9 = 2;
    }

    else
    {
      v9 = a1;
    }

    v10 = a1 == 80;
    if (a1 == 64)
    {
      v9 = 1;
      v10 = 1;
    }

    if (a1 == 61)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9;
    }

    v8 = a1 == 61 || v10;
  }

  else
  {
    if (a1 == 655)
    {
      v1 = 6;
    }

    else
    {
      v1 = a1;
    }

    v2 = a1 == 655;
    if (a1 == 650)
    {
      v3 = 5;
    }

    else
    {
      v3 = v1;
    }

    if (a1 == 650)
    {
      v2 = 1;
    }

    if (a1 == 505)
    {
      v4 = 4;
    }

    else
    {
      v4 = a1;
    }

    v5 = a1 == 505;
    if (a1 == 96)
    {
      v6 = 3;
    }

    else
    {
      v6 = v4;
    }

    if (a1 == 96)
    {
      v5 = 1;
    }

    if (a1 <= 649)
    {
      v7 = v6;
    }

    else
    {
      v7 = v3;
    }

    if (a1 <= 649)
    {
      v8 = v5;
    }

    else
    {
      v8 = v2;
    }
  }

  return v7 | (v8 << 32);
}

char *sub_100039664(__int16 a1, uint64_t a2)
{
  v3 = (HIBYTE(a1) - a1);
  v17 = HIBYTE(a1);
  v18 = a1;
  if (HIBYTE(a1) < a1)
  {
    v4 = -(a1 - HIBYTE(a1));
  }

  else
  {
    v4 = (HIBYTE(a1) - a1);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  result = sub_100032034(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = _swiftEmptyArrayStorage;
    LODWORD(v8) = v17 - v18;
    if (v17 >= v18)
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = -v8;
    while (v4)
    {
      sub_100031694(a2, *(a2 + 24));
      v10 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      if (v2)
      {

        return v5;
      }

      v11 = v10;
      v19 = v3;
      sub_100031694(a2, *(a2 + 24));
      v12 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      result = sub_100039824(v11, v12);
      v20 = v5;
      v14 = v5[2];
      v13 = v5[3];
      if (v14 >= v13 >> 1)
      {
        v16 = result;
        sub_100032034((v13 > 1), v14 + 1, 1);
        result = v16;
        v5 = v20;
      }

      v5[2] = v14 + 1;
      v15 = &v5[v14];
      *(v15 + 8) = result;
      *(v15 + 18) = WORD2(result);
      if (v17 < v18)
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        goto LABEL_22;
      }

      ++v9;
      --v4;
      --v3;
      if (v19 == 1)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100039824(uint64_t a1, uint64_t a2)
{
  if (qword_10058AAC0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v2 = off_100591878;
    v3 = *(off_100591878 + 2);
    if (!v3)
    {
      return 0x300000000;
    }

    v4 = 0;
    v5 = a1;
    v6 = a2;
    p_base_meths = (&XPCResponder + 32);
    v8 = &qword_100591000;
    while (v4 < v2[2])
    {
      v9 = &v2[2 * v4 + 4];
      if (*v9 == v6)
      {
        v10 = v9[1];
        v11 = v9[2];
        v12 = *(v9 + 1);
        if ((v11 - 4) >= 3)
        {
          v31 = *(v12 + 16);
          v32 = (v12 + 32);
          do
          {
            if (!v31)
            {
              goto LABEL_5;
            }

            v33 = *v32++;
            --v31;
          }

          while (v33 != v5);

LABEL_37:
          sub_1000276D8();

          return v5 | (v10 << 32) | (v11 << 40);
        }

        v37 = v6;
        v13 = v8;
        v14 = p_base_meths[345];

        if (v14 != -1)
        {
          swift_once();
        }

        v8 = v13;
        v15 = v13[272];
        v16 = *(v15 + 16);
        if (v16)
        {
          v17 = 0;
          v18 = v15 + 32;
          do
          {
            v20 = v18 + 16 * v17;
            if ((0x801004u >> (8 * *v20)) == (0x801004u >> (8 * v10)))
            {
              v21 = *(v20 + 8);
              v22 = *(v20 + 1);
              if (v22 == 6)
              {
                if (v11 == 6)
                {
                  goto LABEL_24;
                }
              }

              else if (v22 == 5)
              {
                if (v11 == 5)
                {
                  goto LABEL_24;
                }
              }

              else if (v22 == 4 && v11 == 4)
              {
LABEL_24:
                v23 = *(v21 + 16);
                if (v23)
                {
                  v24 = 0;
                  v25 = v21 + 32;
                  do
                  {
                    v26 = v25 + 16 * v24++;
                    v27 = *(v26 + 8);
                    v28 = *(v27 + 16);
                    v29 = (v27 + 32);
                    while (v28)
                    {
                      v30 = *v29++;
                      --v28;
                      if (v30 == v5)
                      {
                        goto LABEL_37;
                      }
                    }
                  }

                  while (v24 != v23);
                }
              }
            }

            ++v17;
          }

          while (v17 != v16);
        }

        p_base_meths = &XPCResponder.base_meths;
        v6 = v37;
      }

LABEL_5:
      if (++v4 == v3)
      {
        return 0x300000000;
      }
    }

    __break(1u);
LABEL_39:
    v35 = a1;
    v36 = a2;
    swift_once();
    a1 = v35;
    a2 = v36;
  }
}

unint64_t sub_100039A9C(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v5, v6);
  sub_100039C6C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v5, v6);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v5, v6);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v5, v6);
  sub_100039D74();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100002A00(v5);
  sub_100002A00(a1);
  return v4 | (v4 << 16) | (v4 << 32);
}

unint64_t sub_100039C6C()
{
  result = qword_10058ECF8;
  if (!qword_10058ECF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ServiceParameter.Flags, &type metadata for AWDLActionFrame.ServiceParameter.Flags, v0, v1);
    atomic_store(result, &qword_10058ECF8);
  }

  return result;
}

unint64_t sub_100039D20()
{
  result = qword_10058E538;
  if (!qword_10058E538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ServiceParameter.Flags, &type metadata for AWDLActionFrame.ServiceParameter.Flags, v0, v1);
    atomic_store(result, &qword_10058E538);
  }

  return result;
}

unint64_t sub_100039D74()
{
  result = qword_10058ED00;
  if (!qword_10058ED00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLActionFrame.ServiceParameter.SSTH, &type metadata for AWDLActionFrame.ServiceParameter.SSTH, v0, v1);
    atomic_store(result, &qword_10058ED00);
  }

  return result;
}

void *sub_100039DC8(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100031694(v11, v12);
    v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v4)
    {
      v6 = v4;
      sub_100031694(v11, v12);
      sub_100039F68();
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v7 = v9;
      v8 = v10;
      v4 = v6;
    }

    else
    {
      v7 = 0;
      v8 = 0xC000000000000000;
    }

    v3 = sub_10003A0D8(v4, v7, v8);
    sub_1000124C8(v7, v8);
    sub_100002A00(v11);
    sub_100002A00(a1);
  }

  return v3;
}

void *sub_100039F38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100039DC8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_100039F68()
{
  result = qword_10058CFB0;
  if (!qword_10058CFB0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Data, &type metadata for Data, v0, v1);
    atomic_store(result, &qword_10058CFB0);
  }

  return result;
}

uint64_t sub_100039FBC()
{
  v2 = v0[3];
  result = v0[4];
  v3 = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    v5 = BYTE6(v2);
    if (v4)
    {
      v5 = v3 >> 32;
    }

    if (result == v5)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    if (result)
    {
      v6 = 0;
      goto LABEL_16;
    }

LABEL_13:
    sub_10000B02C();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    return swift_willThrow();
  }

  if (result == *(v3 + 24))
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v4 == 2)
  {
    v6 = *(v3 + 24);
  }

  else if (v4 == 1)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

LABEL_16:
  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    result = Data._Representation.subscript.getter();
    v8 = v0[2];
    v9 = v0[3];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 == 2)
      {
        v12 = *(v8 + 24);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v11 = BYTE6(v9);
      v12 = v8 >> 32;
      if (!v10)
      {
        v12 = v11;
      }
    }

    v0[4] = v12;
  }

  return result;
}

uint64_t sub_10003A0D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v4 = 0;
    if (v3 == 2)
    {
      v4 = *(a2 + 16);
    }
  }

  else if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  v6 = a2 >> 32;
  do
  {
    if (((result >> v5) & 1) == 0)
    {
      goto LABEL_11;
    }

    if (v3 <= 1)
    {
      v7 = BYTE6(a3);
      if (v3)
      {
        v7 = a2 >> 32;
      }

LABEL_9:
      if (v4 == v7)
      {
        goto LABEL_31;
      }

      goto LABEL_10;
    }

    if (v3 == 2)
    {
      v7 = *(a2 + 24);
      goto LABEL_9;
    }

    if (!v4)
    {
      goto LABEL_31;
    }

LABEL_10:
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
      return result;
    }

LABEL_11:
    ++v5;
  }

  while (v5 != 32);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v4 == *(a2 + 24))
      {
        goto LABEL_27;
      }
    }

    else if (!v4)
    {
      goto LABEL_36;
    }

LABEL_31:
    sub_10000B02C();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 2;
    return swift_willThrow();
  }

  if (v3)
  {
    v9 = a2 >> 32;
  }

  else
  {
    v9 = BYTE6(a3);
  }

  if (v4 != v9)
  {
    goto LABEL_31;
  }

LABEL_27:
  if (v3)
  {
    if (v3 == 2)
    {
      v10 = *(a2 + 16);
      v6 = *(a2 + 24);
    }

    else
    {
      v10 = a2;
    }

    if (v6 < v10)
    {
      __break(1u);
    }
  }

LABEL_36:
  v12 = result;
  Data.subdata(in:)();
  return v12;
}

uint64_t sub_10003A254@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v7 = sub_10005DC58(&qword_10058ECA0, &qword_10048D628);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v24.i8[-v9];
  sub_100029B34(a1, a1[3]);
  sub_10003A618();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v40 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = a2;
  v3.i32[0] = v35;
  v11 = v36;
  v12 = v37;
  v40 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v11;
  v33 = v12;
  v4.i32[0] = v35;
  LOBYTE(v11) = v36;
  LOBYTE(v12) = v37;
  LOBYTE(v35) = 2;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v35) = 3;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = 4;
  sub_100039488();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v35;
  v39 = v36;
  v40 = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v35;
  v38 = v36;
  LOBYTE(v35) = 6;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v13;
  v28 = v14;
  LOBYTE(v35) = 7;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v35) = 8;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v8 + 8))(v10, v7);
  v24 = vmovl_u8(v3);
  v25 = vmovl_u8(v4);
  v16 = v39;
  v17 = v38;
  result = sub_100002A00(a1);
  v19 = v34;
  *v34 = vuzp1_s8(*v24.i8, *v24.i8).u32[0];
  v20 = v33;
  *(v19 + 4) = v32;
  *(v19 + 5) = v20;
  *(v19 + 6) = vuzp1_s8(*v25.i8, *v25.i8).u32[0];
  *(v19 + 10) = v11;
  *(v19 + 11) = v12;
  v21 = v30;
  v19[3] = v31;
  v19[4] = v21;
  v19[5] = v29;
  *(v19 + 24) = v16;
  v22 = v28;
  v19[7] = v27;
  *(v19 + 32) = v17;
  v23 = v26;
  v19[9] = v22;
  v19[10] = v23;
  v19[11] = v15;
  return result;
}

unint64_t sub_10003A618()
{
  result = qword_10058E410;
  if (!qword_10058E410)
  {
    result = swift_getWitnessTable(asc_10048D270, &type metadata for AWDLActionFrame.ElectionParameter.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E410);
  }

  return result;
}

uint64_t sub_10003A6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = a4();
  result = sub_100032E9C(a5, a1, v11, v12, a5, v13, a6, v14);
  if (!v7)
  {
    return v16;
  }

  return result;
}

unint64_t sub_10003A734()
{
  result = qword_10058E2D0;
  if (!qword_10058E2D0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt32, &type metadata for UInt32, v0, v1);
    atomic_store(result, &qword_10058E2D0);
  }

  return result;
}

uint64_t AWDLActionFrame.DataPathState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  v59 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = (type metadata accessor for AWDLActionFrame.DataPathState(0) - 8);
  __chkstk_darwin();
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v6 = 0;
  v6[2] = 1;
  *(v6 + 4) = 3;
  *(v6 + 1) = 0;
  *(v6 + 7) = 0;
  *(v6 + 10) = 0;
  v6[16] = 1;
  *(v6 + 12) = 3;
  *(v6 + 5) = 0;
  *(v6 + 15) = 0;
  *(v6 + 26) = 0;
  v6[32] = 1;
  *(v6 + 5) = 0;
  *(v6 + 6) = 0;
  *(v6 + 54) = 0;
  v6[62] = 1;
  v6[64] = 47;
  *(v6 + 33) = 0;
  v6[68] = 1;
  *(v6 + 18) = 0;
  v7 = &v6[v4[36]];
  v6[76] = 1;
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  v11 = v9 + 56;
  v10 = *(v9 + 56);
  v60 = v7;
  v56 = v9;
  v57 = v10;
  v10(v7, 1, 1, v8);
  v12 = &v6[v4[37]];
  *v12 = 0;
  v12[4] = 1;
  v13 = &v6[v4[38]];
  *v13 = 0;
  v13[4] = 1;
  v14 = a1[3];
  v62 = a1;
  sub_100029B34(a1, v14);
  v15 = v61;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v15)
  {
    sub_100002A00(v62);

    return sub_100016290(v60, &unk_10059B170, &unk_1004B4D70);
  }

  v61 = v6;
  v54 = v12;
  v55 = v11;
  v16 = v8;
  v53 = v13;
  sub_100031694(v63, v64);
  sub_10003B11C();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v18 = v66;
  v19 = v61;
  v61[77] = (v66 & 0x20) != 0;
  *(v19 + 78) = (v18 & 0x40) != 0;
  *(v19 + 94) = (v18 & 0x10) != 0;
  *(v19 + 79) = (v18 & 0x80) != 0;
  v20 = *&vshl_u16(vdup_n_s16(v18), 0xFFF2FFF3FFF5FFF6) & 0xFFC1FFC1FFC1FFC1;
  *(v19 + 80) = vuzp1_s8(v20, v20).u32[0];
  if ((v18 & 0x100) == 0)
  {
    if ((v18 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_100031694(v63, v64);
  v52 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  sub_100031694(v63, v64);
  *v19 = v52 | (dispatch thunk of UnkeyedDecodingContainer.decode(_:)() << 8);
  *(v19 + 2) = 0;
  sub_100031694(v63, v64);
  dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  if ((v18 & 0x200) != 0)
  {
LABEL_6:
    sub_100031694(v63, v64);
    v21 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v22 = sub_10003B238(v21);
    *(v19 + 4) = v22;
    *(v19 + 8) = WORD2(v22);
  }

LABEL_7:
  if ((v18 & 1) == 0)
  {
    if ((v18 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_100031694(v63, v64);
  sub_10003804C();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v24 = (v68 << 40) | (v67 << 32);
  *(v19 + 10) = v66;
  *(v19 + 14) = WORD2(v24);
  *(v19 + 16) = 0;
  sub_100031694(v63, v64);
  v25 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v26 = sub_10003B238(v25);
  *(v19 + 20) = v26;
  *(v19 + 24) = WORD2(v26);
  if ((v18 & 2) != 0)
  {
LABEL_9:
    sub_100031694(v63, v64);
    sub_10003804C();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v23 = (v68 << 40) | (v67 << 32);
    *(v19 + 26) = v66;
    *(v19 + 30) = WORD2(v23);
    *(v19 + 32) = 0;
  }

LABEL_13:
  if ((v18 & 4) != 0)
  {
    sub_100031694(v63, v64);
    sub_10003804C();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v27 = (v68 << 40) | (v67 << 32);
    *(v19 + 56) = v66;
    *(v19 + 60) = WORD2(v27);
    *(v19 + 62) = 0;
  }

  if ((v18 & 8) == 0)
  {
    v28 = v18;
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

LABEL_21:
    sub_100031694(v63, v64);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    sub_100031694(v63, v64);
    v39 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    *(v19 + 65) = v39 & 1;
    *(v19 + 64) = _s7CoreP2P15AWDLActionFrameV13DataPathStateV30UnicastMasterIndicationOptionsO8rawValueAGSgs6UInt32V_tcfC_0(v39 & 0xFFFFFFFE);
    *(v19 + 63) = 1;
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_22:
    sub_100031694(v63, v64);
    sub_10003B764();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v40 = v66;
    if (v66)
    {
      sub_100031694(v63, v64);
      *(v19 + 66) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      *(v19 + 68) = 0;
    }

    if ((v40 & 4) != 0)
    {
      sub_100031694(v63, v64);
      *(v19 + 72) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      *(v19 + 76) = 0;
    }

    if ((v40 & 0x20) != 0)
    {
      sub_100031694(v63, v64);
      v45 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v46 = v60;
      sub_100016290(v60, &unk_10059B170, &unk_1004B4D70);
      *v46 = v45;
      (*(v56 + 104))(v46, enum case for DispatchTimeInterval.milliseconds(_:), v16);
      v57(v46, 0, 1, v16);
      sub_100031694(v63, v64);
      v47 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v48 = v54;
      *v54 = v47;
      *(v48 + 4) = 0;
      sub_100031694(v63, v64);
      v49 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v50 = v53;
      *v53 = v49;
      *(v50 + 4) = 0;
      v19 = v61;
    }

    v41 = vdup_n_s16(v40);
    v42 = vshl_u16(v41, 0xFFF4FFF5FFF7FFF8);
    v43 = *&vshl_u16((*&v41 & 0xFF00FF00FF00FFLL), 0xFFFDFFFFFFFAFFFCLL) & 0xFF01FF01FF01FF01;
    v44 = vuzp1_s8(v43, v43);
    *(v19 + 84) = v44.i32[0];
    *(v19 + 88) = (v40 & 0x80) != 0;
    *(v19 + 89) = vuzp1_s8((*&v42 & 0xFF01FF01FF01FF01), v44).u32[0];
    *(v19 + 93) = (v40 & 0x2000) != 0;
    v29 = v58;
    goto LABEL_19;
  }

  sub_100031694(v63, v64);
  v30 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v31 = v64;
  v32 = v65;
  sub_100031694(v63, v64);
  v28 = v18;
  v33 = UnkeyedDecodingContainer.decodeData(with:)(v30, v31, v32);
  v35 = v34;
  static String.Encoding.utf8.getter();
  v36 = String.init(data:encoding:)();
  v38 = v37;
  sub_1000124C8(v33, v35);
  *(v19 + 40) = v36;
  *(v19 + 48) = v38;
  if ((v28 & 0x1000) != 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  *(v19 + 63) = 0;
  *(v19 + 65) = 0;
  if ((v28 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  *(v19 + 92) = 0;
  *(v19 + 84) = 0;
  v29 = v58;
LABEL_19:
  sub_100002A00(v63);
  sub_10003B86C(v19, v29, type metadata accessor for AWDLActionFrame.DataPathState);
  sub_100002A00(v62);
  return sub_10003B934(v19, type metadata accessor for AWDLActionFrame.DataPathState);
}

unint64_t sub_10003B11C()
{
  result = qword_10058E360;
  if (!qword_10058E360)
  {
    result = swift_getWitnessTable(byte_10048D4C8, &type metadata for AWDLActionFrame.DataPathState.Flags, v0, v1);
    atomic_store(result, &qword_10058E360);
  }

  return result;
}

unint64_t sub_10003B1D0()
{
  result = qword_10058EA78;
  if (!qword_10058EA78)
  {
    result = swift_getWitnessTable(byte_10048C618, &type metadata for AWDLActionFrame.DataPathState.Flags, v0, v1);
    atomic_store(result, &qword_10058EA78);
  }

  return result;
}

_WORD *sub_10003B228@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

unint64_t sub_10003B238(unsigned int a1)
{
  if (qword_10058AA78 != -1)
  {
    swift_once();
  }

  if (sub_10002FFDC(a1, off_100591860))
  {
    v2 = 0;
    v3 = 3;
LABEL_13:
    v5 = v2;
    v6 = v3;
    sub_1000276D8();
    return a1 | (v5 << 32) | (v6 << 40);
  }

  if (qword_10058AA80 != -1)
  {
    swift_once();
  }

  if (sub_10002FFDC(a1, off_100591868))
  {
    v2 = 1;
    v3 = 4;
    goto LABEL_13;
  }

  if (qword_10058AA88 != -1)
  {
    swift_once();
  }

  if (sub_10002FFDC(a1, off_100591870))
  {
    v2 = 2;
    v3 = 5;
    goto LABEL_13;
  }

  return 0x300000000;
}

uint64_t _s7CoreP2P15AWDLActionFrameV13DataPathStateV30UnicastMasterIndicationOptionsO8rawValueAGSgs6UInt32V_tcfC_0(int a1)
{
  if (a1 < 0x800000)
  {
    if (a1 <= 2047)
    {
      if (a1 <= 31)
      {
        if (a1 <= 3)
        {
          if (a1 == 0x80000000)
          {
            return 34;
          }

          if (a1 == 2)
          {
            return 0;
          }
        }

        else
        {
          switch(a1)
          {
            case 4:
              return 6;
            case 8:
              return 7;
            case 16:
              return 8;
          }
        }
      }

      else if (a1 > 255)
      {
        switch(a1)
        {
          case 256:
            return 12;
          case 512:
            return 24;
          case 1024:
            return 28;
        }
      }

      else
      {
        switch(a1)
        {
          case 32:
            return 9;
          case 64:
            return 10;
          case 128:
            return 11;
        }
      }
    }

    else if (a1 >= 0x20000)
    {
      if (a1 >= 0x100000)
      {
        switch(a1)
        {
          case 0x100000:
            return 14;
          case 0x200000:
            return 19;
          case 0x400000:
            return 20;
        }
      }

      else
      {
        switch(a1)
        {
          case 0x20000:
            return 17;
          case 0x40000:
            return 18;
          case 0x80000:
            return 1;
        }
      }
    }

    else if (a1 >= 0x4000)
    {
      switch(a1)
      {
        case 0x4000:
          return 15;
        case 0x8000:
          return 16;
        case 0x10000:
          return 5;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x800:
          return 29;
        case 0x1000:
          return 25;
        case 0x2000:
          return 13;
      }
    }
  }

  else if (a1 > 201326591)
  {
    if (a1 > 318767103)
    {
      if (a1 > 369098751)
      {
        switch(a1)
        {
          case 0x16000000:
            return 46;
          case 0x20000000:
            return 27;
          case 0x40000000:
            return 33;
        }
      }

      else
      {
        switch(a1)
        {
          case 318767104:
            return 43;
          case 335544320:
            return 44;
          case 352321536:
            return 45;
        }
      }
    }

    else if (a1 > 0xFFFFFFF)
    {
      switch(a1)
      {
        case 268435456:
          return 26;
        case 285212672:
          return 41;
        case 301989888:
          return 42;
      }
    }

    else
    {
      switch(a1)
      {
        case 201326592:
          return 38;
        case 218103808:
          return 39;
        case 234881024:
          return 40;
      }
    }
  }

  else if (a1 > 83886079)
  {
    if (a1 > 150994943)
    {
      switch(a1)
      {
        case 150994944:
          return 35;
        case 167772160:
          return 36;
        case 184549376:
          return 37;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x5000000:
          return 31;
        case 0x6000000:
          return 32;
        case 0x8000000:
          return 3;
      }
    }
  }

  else if (a1 > 50331647)
  {
    switch(a1)
    {
      case 50331648:
        return 30;
      case 67108864:
        return 2;
      case 67108866:
        return 4;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x800000:
        return 21;
      case 0x1000000:
        return 22;
      case 0x2000000:
        return 23;
    }
  }

  return 47;
}