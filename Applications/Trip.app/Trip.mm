unint64_t sub_100001CB8()
{
  result = sub_10000E5EC(&_swiftEmptyArrayStorage);
  qword_10005D598 = result;
  return result;
}

uint64_t sub_100001CE0@<X0>(void *a1@<X8>)
{
  if (qword_10005A390 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_10005D598;
}

uint64_t sub_100001D50(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  sub_100002D94(v3, sub_1000027F0, 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

uint64_t sub_100001DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v24 = a1;
  v25 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_1000036BC(&qword_10005A4F8, &qword_10003FC10);
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v22 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v23 = &v22 - v12;
  (*(v5 + 16))(v7, v3, a2);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a2 + 16);
  (*(v5 + 32))(v14 + v13, v7, a2);
  v28 = sub_1000037F8;
  v29 = v14;
  static Alignment.center.getter();
  sub_100003090(&qword_10005A500, &qword_10003FC18);
  WitnessTable = swift_getWitnessTable();
  sub_100003894(&qword_10005A508, &qword_10005A500, &qword_10003FC18, &protocol conformance descriptor for GeometryReader<A>);
  v16 = v22;
  View.background<A>(_:alignment:)();

  v17 = sub_100003894(&qword_10005A510, &qword_10005A4F8, &qword_10003FC10, &protocol conformance descriptor for _BackgroundModifier<A>);
  v26 = WitnessTable;
  v27 = v17;
  swift_getWitnessTable();
  v18 = *(v9 + 16);
  v19 = v23;
  v18(v23, v16, v8);
  v20 = *(v9 + 8);
  v20(v16, v8);
  v18(v25, v19, v8);
  return (v20)(v19, v8);
}

uint64_t sub_100002168@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v43 = a4;
  v7 = type metadata accessor for NamedCoordinateSpace();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  __chkstk_darwin(v9);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = static Color.clear.getter();
  sub_100003090(&qword_10005A518, &qword_10003FC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003FA90;
  (*(v12 + 16))(v14, a1, a2);
  AnyHashable.init<A>(_:)();
  v17 = (a1 + *(type metadata accessor for TrackPosition(0, a2, a3, v16) + 36));
  v19 = v17[1];
  v44 = *v17;
  v18 = v44;
  v45 = v19;

  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.frame<A>(in:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *(v8 + 8);
  v28(v11, v7);
  v46.origin.x = v21;
  v46.origin.y = v23;
  v46.size.width = v25;
  v46.size.height = v27;
  MinX = CGRectGetMinX(v46);
  v44 = v18;
  v45 = v19;
  static CoordinateSpaceProtocol<>.named<A>(_:)();

  GeometryProxy.frame<A>(in:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v28(v11, v7);
  v47.origin.x = v31;
  v47.origin.y = v33;
  v47.size.width = v35;
  v47.size.height = v37;
  MaxY = CGRectGetMaxY(v47);
  *(inited + 72) = MinX;
  *(inited + 80) = MaxY;
  v39 = sub_10000E5EC(inited);
  swift_setDeallocating();
  result = sub_1000038DC(inited + 32, &unk_10005A520, &unk_10003FC28);
  v41 = v43;
  *v43 = v42;
  v41[1] = v39;
  return result;
}

uint64_t sub_10000248C(uint64_t *a1)
{
  if (sub_10003D428(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_1000025F0(uint64_t *a1)
{
  if (sub_10003D428(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000027F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  result = sub_100003290(a1, a2);
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  return result;
}

Swift::Int sub_100002828(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003090(&qword_10005A468, &qword_10003FB90);
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
      }

      else
      {
        sub_100003290(v23, &v36);
      }

      v35 = *(*(v5 + 56) + 16 * v22);
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
      *(*(v7 + 56) + 16 * v15) = v35;
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

void *sub_100002AC8()
{
  v1 = v0;
  sub_100003090(&qword_10005A468, &qword_10003FB90);
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
        result = sub_100003290(*(v2 + 48) + 40 * v17, v22);
        v18 = *(v4 + 48) + 40 * v17;
        v19 = *(*(v2 + 56) + 16 * v17);
        v20 = v22[0];
        v21 = v22[1];
        *(v18 + 32) = v23;
        *v18 = v20;
        *(v18 + 16) = v21;
        *(*(v4 + 56) + 16 * v17) = v19;
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

uint64_t sub_100002C5C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    result = sub_100003290(*(v4 + 48) + 40 * v13, &v20);
    v15 = *(*(v4 + 56) + 16 * v13);
    v16 = v20;
    v17 = v21;
    v18 = v22;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;
    if (v18)
    {
      v19 = v1[5];
      v20 = v16;
      v21 = v17;
      v22 = v18;
      v23 = v15;
      v19(&v20);
      return sub_1000038DC(&v20, qword_10005A470, &qword_10003FB98);
    }

    else
    {
LABEL_13:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100002D94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v56 = a1;
  v57 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v58 = v8;
  v59 = 0;
  v60 = v11 & v9;
  v61 = a2;
  v62 = a3;

  sub_100002C5C(&v51);
  if (!*(&v52 + 1))
  {
    goto LABEL_25;
  }

  v48 = v51;
  v49 = v52;
  v50 = v53;
  v13 = v54;
  v12 = v55;
  v14 = *a5;
  result = sub_10000E288(&v48);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_100002828(v20, a4 & 1);
    result = sub_10000E288(&v48);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_100002AC8();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;
    sub_10000323C(&v48);
    v25 = (v23[7] + 16 * v24);
    *v25 = v13;
    v25[1] = v12;
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = v23[6] + 40 * result;
  v28 = v48;
  v29 = v49;
  *(v27 + 32) = v50;
  *v27 = v28;
  *(v27 + 16) = v29;
  v30 = (v23[7] + 16 * result);
  *v30 = v13;
  v30[1] = v12;
  v31 = v23[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (!v19)
  {
    v23[2] = v32;
LABEL_15:
    sub_100002C5C(&v51);
    if (*(&v52 + 1))
    {
      v21 = 1;
      do
      {
        v48 = v51;
        v49 = v52;
        v50 = v53;
        v13 = v54;
        v12 = v55;
        v35 = *a5;
        result = sub_10000E288(&v48);
        v37 = v35[2];
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (v35[3] < v39)
        {
          sub_100002828(v39, 1);
          result = sub_10000E288(&v48);
          if ((a4 & 1) != (v40 & 1))
          {
            goto LABEL_8;
          }
        }

        v41 = *a5;
        if (a4)
        {
          v33 = result;
          sub_10000323C(&v48);
          v34 = (v41[7] + 16 * v33);
          *v34 = v13;
          v34[1] = v12;
        }

        else
        {
          v41[(result >> 6) + 8] |= 1 << result;
          v42 = v41[6] + 40 * result;
          v43 = v48;
          v44 = v49;
          *(v42 + 32) = v50;
          *v42 = v43;
          *(v42 + 16) = v44;
          v45 = (v41[7] + 16 * result);
          *v45 = v13;
          v45[1] = v12;
          v46 = v41[2];
          v19 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v41[2] = v47;
        }

        sub_100002C5C(&v51);
      }

      while (*(&v52 + 1));
    }

LABEL_25:
    sub_100003234(v56);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100003090(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_1000030DC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000030E8(uint64_t a1, int a2)
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

uint64_t sub_100003108(uint64_t result, int a2, int a3)
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

__n128 sub_100003148(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003154(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003174(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_1000031D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000032F4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000336C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1000034A8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1000036BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for TrackPosition(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 64);
  (*(*(v5 - 8) + 8))(v4 + v8, v5);

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

uint64_t sub_1000037F8@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for TrackPosition(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_100002168(v7, v4, v5, a2);
}

uint64_t sub_100003894(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000036BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000038DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003090(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000396C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TrackPosition(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_1000036BC(&qword_10005A4F8, &qword_10003FC10);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100003894(&qword_10005A510, &qword_10005A4F8, &qword_10003FC10, &protocol conformance descriptor for _BackgroundModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_100003A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100003B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TripViewHorizontalStack(uint64_t a1)
{
  result = qword_10005A6B0;
  if (!qword_10005A6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003C7C(uint64_t a1)
{
  sub_100003DC4(319);
  if (v1 <= 0x3F)
  {
    sub_100003E1C(319);
    if (v2 <= 0x3F)
    {
      sub_100003EB0(319);
      if (v3 <= 0x3F)
      {
        sub_100003FA8(319, &qword_10005A6E8, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_100003F44(319);
          if (v5 <= 0x3F)
          {
            sub_100003FA8(319, &qword_10005A700, &type metadata for Int);
            if (v6 <= 0x3F)
            {
              sub_100003FA8(319, &unk_10005A708, &type metadata for CGFloat);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100003DC4(uint64_t a1)
{
  if (!qword_10005A6C0)
  {
    type metadata accessor for LayoutConfiguration(255);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10005A6C0);
    }
  }
}

void sub_100003E1C(uint64_t a1)
{
  if (!qword_10005A6C8)
  {
    type metadata accessor for CardModel(255);
    sub_100008BE4(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10005A6C8);
    }
  }
}

void sub_100003EB0(uint64_t a1)
{
  if (!qword_10005A6D8)
  {
    type metadata accessor for TripAppConfig(255);
    sub_100008BE4(&qword_10005A6E0, type metadata accessor for TripAppConfig, &unk_1000424C0);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10005A6D8);
    }
  }
}

void sub_100003F44(uint64_t a1)
{
  if (!qword_10005A6F0)
  {
    sub_1000036BC(&qword_10005A6F8, "fS");
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_10005A6F0);
    }
  }
}

void sub_100003FA8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100004010@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100008DD0(v2, &v13 - v9, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100008854(v10, a1, type metadata accessor for LayoutConfiguration);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000041F4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LayoutConfiguration(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003090(&qword_10005A870, &qword_100040B80);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  sub_100004010(a1);
  v8 = a1 + *(v3 + 32);
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  sub_100008C34(v8, v9);
  (*(v10 + 24))(v9, v10, 55.0);
  static Font.Weight.semibold.getter();
  v11 = type metadata accessor for Font.Design();
  v12 = *(*(v11 - 8) + 56);
  v12(v7, 1, 1, v11);
  v13 = static Font.system(size:weight:design:)();
  sub_1000038DC(v7, &qword_10005A870, &qword_100040B80);
  v15 = *(v8 + 24);
  v14 = *(v8 + 32);
  sub_100008C34(v8, v15);
  (*(v14 + 152))(v13, v15, v14);
  static Font.Weight.semibold.getter();
  v12(v7, 1, 1, v11);
  v16 = static Font.system(size:weight:design:)();
  sub_1000038DC(v7, &qword_10005A870, &qword_100040B80);
  v17 = *(v8 + 24);
  v18 = *(v8 + 32);
  sub_100008C34(v8, v17);
  (*(v18 + 200))(v16, v17, v18);
  static Font.Weight.bold.getter();
  v12(v7, 1, 1, v11);
  v19 = static Font.system(size:weight:design:)();
  sub_1000038DC(v7, &qword_10005A870, &qword_100040B80);
  v20 = *(v8 + 24);
  v21 = *(v8 + 32);
  sub_100008C34(v8, v20);
  (*(v21 + 128))(v19, v20, v21);
  v22 = v32;
  sub_100004010(v32);
  sub_100008A08(v22 + *(v3 + 32), v33);
  sub_1000086B4(v22);
  v23 = v34;
  v24 = v35;
  sub_100008A6C(v33, v34);
  v25 = (*(v24 + 216))(v23, v24);
  v26 = *(v8 + 24);
  v27 = *(v8 + 32);
  sub_100008C34(v8, v26);
  (*(v27 + 176))(v25, v26, v27);
  sub_1000085F8(v33);
  v28 = *(v8 + 24);
  v29 = *(v8 + 32);
  sub_100008C34(v8, v28);
  return (*(v29 + 48))(v28, v29, 22.0);
}

void *sub_1000045B4()
{
  if (*(v0 + *(type metadata accessor for TripViewHorizontalStack(0) + 20)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    v1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      while (1)
      {
        v2 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_18;
          }

LABEL_10:
          if (*(v3 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType))
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v2;
          if (v4 == v1)
          {
            goto LABEL_18;
          }
        }

        if (v2 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v1 = _CocoaArrayWrapper.endIndex.getter();
        if (!v1)
        {
          goto LABEL_18;
        }
      }

      v3 = *(v6 + 8 * v2 + 32);

      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:

    return &_swiftEmptyArrayStorage;
  }

  else
  {
    type metadata accessor for CardModel(0);
    sub_100008BE4(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void *sub_1000047CC()
{
  v22 = type metadata accessor for TripViewHorizontalStack(0);
  v1 = (v0 + v22[11]);
  v2 = *v1;
  v3 = v1[1];
  *&v26[0] = *v1;
  *(&v26[0] + 1) = v3;
  sub_100003090(&qword_10005A860, &qword_100040B30);
  result = State.wrappedValue.getter();
  if (v24 > 0.0)
  {
    v5 = sub_1000045B4();
    v6 = v5;
    v21 = v0;
    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v8 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return sub_10000323C(v26);
          }

LABEL_8:
          type metadata accessor for CardCellConfiguration(0);
          sub_100008BE4(&qword_10005A868, type metadata accessor for CardCellConfiguration, &unk_1000419B4);

          AnyHashable.init<A>(_:)();
          v25 = *(v0 + v22[9]);
          sub_100003090(&qword_10005A858, &unk_10003FE20);
          State.wrappedValue.getter();
          if (!*(v23 + 16))
          {
            goto LABEL_15;
          }

          v10 = sub_10000E288(v26);
          if ((v11 & 1) == 0)
          {
            goto LABEL_15;
          }

          v12 = *(*(v23 + 56) + 16 * v10 + 8);
          sub_10000323C(v26);

          *&v26[0] = v2;
          *(&v26[0] + 1) = v3;
          State.wrappedValue.getter();
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v26[0]) = v25 < v12;
          static Published.subscript.setter();
          ++v8;
          if (v9 == v7)
          {
            goto LABEL_18;
          }
        }

        if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

LABEL_18:

    v13 = sub_1000045B4();
    v14 = v13;
    v15 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v13 >> 62)
    {
LABEL_35:
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    v18 = 0;
    while (v16 != v17)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v17, 1))
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v17 >= *(v15 + 16))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (__OFADD__(v17, 1))
        {
          goto LABEL_30;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v19 = (v26[0] & 1) == 0;
      ++v17;
      v20 = __OFADD__(v18, v19);
      v18 += v19;
      if (v20)
      {
        goto LABEL_34;
      }
    }

    v26[0] = *(v21 + v22[10]);
    sub_100003090(&qword_10005A820, &qword_100040A00);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100004BA4@<X0>(Swift::String *a1@<X0>, void (**a2)(char a1)@<X8>)
{
  v77 = a2;
  v71 = type metadata accessor for OpacityTransition();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v66 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for MoveTransition();
  v65 = *(v68 - 8);
  __chkstk_darwin(v68);
  v62 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100003090(&qword_10005A770, &unk_100041510);
  v67 = *(v70 - 8);
  v5 = __chkstk_darwin(v70);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v64 = &v61 - v7;
  v78 = sub_100003090(&qword_10005A778, &unk_10003FCF0);
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v61 = (&v61 - v8);
  v9 = sub_100003090(&qword_10005A780, &qword_100041520);
  v10 = __chkstk_darwin(v9 - 8);
  v76 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v61 - v12;
  v14 = sub_100003090(&qword_10005A788, &qword_10003FD00);
  __chkstk_darwin(v14 - 8);
  v16 = &v61 - v15;
  v17 = sub_100003090(&qword_10005A790, &qword_10003FD08);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v74 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v61 - v22;
  __chkstk_darwin(v21);
  v25 = &v61 - v24;
  v26 = type metadata accessor for TripViewHorizontalStack(0);
  v27 = v26 - 8;
  v28 = *(v26 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_100008590(a1, &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v28 + 80);
  v31 = a1;
  v32 = (v30 + 16) & ~v30;
  v72 = swift_allocObject();
  sub_100008854(&v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v72 + v32, type metadata accessor for TripViewHorizontalStack);
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v33 = sub_100003090(&qword_10005A7A0, &qword_10003FD18);
  sub_100005614(v31, &v16[*(v33 + 44)]);
  v34 = v31 + *(v27 + 36);
  v35 = *v34;
  v36 = *(v34 + 1);
  LOBYTE(v79) = *v34;
  v80 = v36;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.wrappedValue.getter();
  if (v83)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = 1.0;
  }

  sub_100008944(v16, v23, &qword_10005A788, &qword_10003FD00);
  *&v23[*(v18 + 44)] = v37;
  v73 = v25;
  sub_100008944(v23, v25, &qword_10005A790, &qword_10003FD08);
  LOBYTE(v79) = v35;
  v80 = v36;
  v38 = v13;
  State.wrappedValue.getter();
  v39 = 1;
  if (v83 == 1)
  {
    v40 = static HorizontalAlignment.center.getter();
    v41 = v61;
    *v61 = v40;
    *(v41 + 8) = 0;
    *(v41 + 16) = 1;
    v42 = sub_100003090(&qword_10005A7B8, &unk_10003FD30);
    sub_100007DD0(v31, v41 + *(v42 + 44));
    *(v41 + *(sub_100003090(&qword_10005A7C0, &unk_100040990) + 36)) = 0x3FF0000000000000;
    v43 = v62;
    MoveTransition.init(edge:)();
    v44 = v66;
    OpacityTransition.init()();
    v45 = sub_100008BE4(&qword_10005A7C8, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
    v46 = sub_100008BE4(&qword_10005A7D0, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v47 = v64;
    v48 = v68;
    v49 = v71;
    Transition.combined<A>(with:)();
    (*(v69 + 8))(v44, v49);
    (*(v65 + 8))(v43, v48);
    v50 = v67;
    v51 = v70;
    (*(v67 + 16))(v63, v47, v70);
    v79 = v48;
    v80 = v49;
    v81 = v45;
    v82 = v46;
    swift_getOpaqueTypeConformance2();
    v52 = AnyTransition.init<A>(_:)();
    (*(v50 + 8))(v47, v51);
    *(v41 + *(v78 + 36)) = v52;
    sub_100008944(v41, v38, &qword_10005A778, &unk_10003FCF0);
    v39 = 0;
  }

  v53 = v38;
  (*(v75 + 56))(v38, v39, 1, v78);
  v55 = v73;
  v54 = v74;
  sub_100008DD0(v73, v74, &qword_10005A790, &qword_10003FD08);
  v56 = v76;
  sub_100008DD0(v38, v76, &qword_10005A780, &qword_100041520);
  v57 = v77;
  v58 = v72;
  *v77 = sub_100008644;
  v57[1] = v58;
  v59 = sub_100003090(&qword_10005A7B0, &qword_10003FD28);
  sub_100008DD0(v54, v57 + *(v59 + 48), &qword_10005A790, &qword_10003FD08);
  sub_100008DD0(v56, v57 + *(v59 + 64), &qword_10005A780, &qword_100041520);

  sub_1000038DC(v53, &qword_10005A780, &qword_100041520);
  sub_1000038DC(v55, &qword_10005A790, &qword_10003FD08);
  sub_1000038DC(v56, &qword_10005A780, &qword_100041520);
  sub_1000038DC(v54, &qword_10005A790, &qword_10003FD08);
}

void sub_10000546C(char a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 1)
    {

      sub_100009AD4();
    }

    else
    {

      sub_100009ADC();
    }
  }

  else
  {
    v2 = *(a2 + *(type metadata accessor for TripViewHorizontalStack(0) + 20));
    if (v2)
    {
      v3 = *(*v2 + 280);

      LOBYTE(v3) = v3(v4);

      if (v3)
      {
        v5 = static Animation.easeInOut(duration:)();
        __chkstk_darwin(v5);
        withAnimation<A>(_:_:)();
      }
    }

    else
    {
      type metadata accessor for CardModel(0);
      sub_100008BE4(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

uint64_t sub_100005614@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v136 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v136);
  v127 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TripViewHorizontalStack(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v141 = v6;
  v142 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for MeasurementStack(0);
  __chkstk_darwin(v130);
  v8 = (&v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = sub_100003090(&qword_10005A7F0, &qword_10003FD58);
  __chkstk_darwin(v129);
  v132 = &v126 - v9;
  v131 = sub_100003090(&qword_10005A7F8, &qword_10003FD60);
  __chkstk_darwin(v131);
  v134 = &v126 - v10;
  v133 = sub_100003090(&qword_10005A800, &qword_10003FD68);
  __chkstk_darwin(v133);
  v12 = &v126 - v11;
  *(&v135 + 1) = sub_100003090(&qword_10005A808, &qword_10003FD70);
  v13 = __chkstk_darwin(*(&v135 + 1));
  v138 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  *&v135 = &v126 - v16;
  __chkstk_darwin(v15);
  v144 = &v126 - v17;
  v18 = sub_100003090(&qword_10005A810, &qword_10003FD78);
  v19 = __chkstk_darwin(v18 - 8);
  v145 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v126 - v21;
  *v22 = static VerticalAlignment.center.getter();
  *(v22 + 1) = 0;
  v22[16] = 0;
  sub_100003090(&qword_10005A818, &unk_10003FD80);
  v143 = v22;
  sub_10000642C(a1);
  v23 = sub_1000045B4();
  v140 = v4;
  v24 = (&a1->_countAndFlagsBits + *(v4 + 40));
  v25 = *v24;
  v26 = v24[1];
  v153._countAndFlagsBits = *v24;
  v153._object = v26;
  sub_100003090(&qword_10005A820, &qword_100040A00);
  State.wrappedValue.getter();
  v137 = a1;
  if (!*&v146[0])
  {
    goto LABEL_4;
  }

  v153._countAndFlagsBits = v25;
  v153._object = v26;
  v27 = &v153;
  State.wrappedValue.getter();
  v28 = *&v146[0];
  if ((*&v146[0] & 0x8000000000000000) != 0)
  {
    while (1)
    {
      __break(1u);
LABEL_4:
      v27 = a1;
      v29 = sub_1000045B4();
      if (!(v29 >> 62))
      {
        break;
      }

      v27 = v29;
      v28 = _CocoaArrayWrapper.endIndex.getter();

      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    v28 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_6:
  v30 = v23 >> 62;
  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v28)
    {
      goto LABEL_8;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v23 < 0)
  {
    v27 = v23;
  }

  else
  {
    v27 = (v23 & 0xFFFFFFFFFFFFFF8);
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < v28)
  {
    goto LABEL_38;
  }

LABEL_8:
  if ((v23 & 0xC000000000000001) != 0 && v28)
  {
    type metadata accessor for CardCellConfiguration(0);

    v31 = 0;
    do
    {
      v32 = v31 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v31);
      v31 = v32;
    }

    while (v28 != v32);
  }

  else
  {
  }

  if (v30)
  {
    v27 = _CocoaArrayWrapper.subscript.getter();
    a1 = v33;
    v30 = v34;
    v28 = v35;

    v128 = v12;
    if (v28)
    {
      goto LABEL_19;
    }

LABEL_18:
    v36 = v5;
    sub_10002E060(v27, a1, v30, v28);
    v38 = v37;
    v39 = v137;
    goto LABEL_25;
  }

  v27 = (v23 & 0xFFFFFFFFFFFFFF8);
  a1 = ((v23 & 0xFFFFFFFFFFFFFF8) + 32);
  v28 = (2 * v28) | 1;
  v128 = v12;
  if ((v28 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v40 = swift_dynamicCastClass();
  if (!v40)
  {
    swift_unknownObjectRelease();
    v40 = &_swiftEmptyArrayStorage;
  }

  v41 = v40[2];

  if (__OFSUB__(v28 >> 1, v30))
  {
    goto LABEL_39;
  }

  if (v41 != (v28 >> 1) - v30)
  {
LABEL_40:
    swift_unknownObjectRelease_n();
    goto LABEL_18;
  }

  v36 = v5;
  v38 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v39 = v137;
  if (v38)
  {
    goto LABEL_26;
  }

  v38 = &_swiftEmptyArrayStorage;
LABEL_25:
  swift_unknownObjectRelease();
LABEL_26:
  v42 = v140;
  v43 = *(v39 + *(v140 + 8));
  v44 = static Alignment.center.getter();
  v46 = v45;
  *v8 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  v47 = v130;
  *(v8 + *(v130 + 20)) = v38;
  *(v8 + *(v47 + 24)) = v43;
  v48 = (v8 + *(v47 + 28));
  *v48 = v44;
  v48[1] = v46;
  v49 = v132;
  v50 = &v132[*(v129 + 36)];
  v51 = sub_100003090(&qword_10005A828, &qword_100040A30);
  sub_1000041F4(v50 + *(v51 + 28));
  *v50 = swift_getKeyPath();
  sub_100008854(v8, v49, type metadata accessor for MeasurementStack);
  v52 = v49;
  v53 = v134;
  sub_100008944(v52, v134, &qword_10005A7F0, &qword_10003FD58);
  *(v53 + *(v131 + 36)) = 0;
  v54 = v142;
  sub_100008590(v39, v142);
  v55 = *(v36 + 80);
  v56 = (v55 + 16) & ~v55;
  v57 = swift_allocObject();
  sub_100008854(v54, v57 + v56, type metadata accessor for TripViewHorizontalStack);
  v58 = v53;
  v59 = v128;
  sub_100008944(v58, v128, &qword_10005A7F8, &qword_10003FD60);
  v60 = (v59 + *(v133 + 36));
  *v60 = sub_1000088BC;
  v60[1] = v57;
  v60[2] = 0;
  v60[3] = 0;
  sub_100008590(v39, v54);
  v61 = swift_allocObject();
  sub_100008854(v54, v61 + v56, type metadata accessor for TripViewHorizontalStack);
  v62 = v135;
  sub_100008944(v59, v135, &qword_10005A800, &qword_10003FD68);
  v63 = (v62 + *(*(&v135 + 1) + 36));
  *v63 = sub_1000088D4;
  v63[1] = v61;
  sub_100008944(v62, v144, &qword_10005A808, &qword_10003FD70);
  if (!*(v39 + *(v42 + 6)))
  {
LABEL_44:
    type metadata accessor for TripAppConfig(0);
    sub_100008BE4(&qword_10005A6E0, type metadata accessor for TripAppConfig, &unk_1000424C0);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v153._countAndFlagsBits)
  {
    v136 = 0;
    v134 = 0;
    v135 = 0uLL;
    v141 = 0;
    v142 = 0;
    v140 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
  }

  else
  {
    v69 = [objc_opt_self() mainBundle];
    v169._object = 0xE000000000000000;
    v70._object = 0x8000000100042910;
    v70._countAndFlagsBits = 0xD000000000000016;
    v71.value._countAndFlagsBits = 1885958740;
    v71.value._object = 0xE400000000000000;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    v169._countAndFlagsBits = 0;
    v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v69, v72, v169);

    v153 = v73;
    sub_1000089B4();
    v74 = Text.init<A>(_:)();
    v76 = v75;
    v133 = (v55 + 16) & ~v55;
    v78 = v77;
    v79 = v127;
    sub_100004010(v127);
    sub_100008A08(v79 + *(v136 + 24), &v153);
    sub_1000086B4(v79);
    v132 = v55;
    v80 = v155;
    v81 = v156;
    sub_100008A6C(&v153, v155);
    (*(v81 + 248))(v80, v81);
    v82 = Text.font(_:)();
    *&v135 = v83;
    LOBYTE(v80) = v84;
    v131 = v85;
    sub_100008AB0(v74, v76, v78 & 1);

    sub_1000085F8(&v153);
    sub_1000041F4(v79);
    sub_100008A08(v79 + *(v136 + 24), &v153);
    sub_1000086B4(v79);
    v86 = v155;
    v87 = v156;
    sub_100008A6C(&v153, v155);
    (*(v87 + 168))(v86, v87);
    v88 = v135;
    v89 = Text.foregroundColor(_:)();
    *(&v135 + 1) = v90;
    v136 = v89;
    v134 = v91;
    v93 = v92;
    sub_100008AB0(v82, v88, v80 & 1);

    sub_1000085F8(&v153);
    v94 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v65 = v95;
    v66 = v96;
    v67 = v97;
    v68 = v98;
    LOBYTE(v146[0]) = v93 & 1;
    v168 = 0;
    *&v135 = v93 & 1;
    v99 = v39 + *(v140 + 12);
    v100 = *v99;
    v101 = *(v99 + 8);
    LOBYTE(v153._countAndFlagsBits) = v100;
    v153._object = v101;
    sub_100003090(&qword_10005A7A8, &qword_10003FD20);
    State.wrappedValue.getter();
    LODWORD(v86) = v167;
    v102 = v142;
    sub_100008590(v39, v142);
    v103 = v133;
    v141 = swift_allocObject();
    sub_100008854(v102, v141 + v103, type metadata accessor for TripViewHorizontalStack);
    v104 = 0x3FF0000000000000;
    if (!v86)
    {
      v104 = 0;
    }

    v142 = v104;
    v64 = v94;
    v140 = sub_100008AC0;
  }

  v133 = v64;
  v137 = 0;
  v105 = v145;
  sub_100008DD0(v143, v145, &qword_10005A810, &qword_10003FD78);
  v106 = v144;
  v107 = v138;
  sub_100008DD0(v144, v138, &qword_10005A808, &qword_10003FD70);
  v108 = v105;
  v109 = v139;
  sub_100008DD0(v108, v139, &qword_10005A810, &qword_10003FD78);
  v110 = sub_100003090(&qword_10005A838, &qword_10003FE08);
  sub_100008DD0(v107, v109 + *(v110 + 48), &qword_10005A808, &qword_10003FD70);
  v111 = v109 + *(v110 + 64);
  v113 = *(&v135 + 1);
  v112 = v136;
  v114 = v135;
  *&v146[0] = v136;
  *(&v146[0] + 1) = v134;
  v146[1] = v135;
  *&v147 = v64;
  *(&v147 + 1) = v65;
  *&v148 = v66;
  *(&v148 + 1) = v67;
  v149 = v68;
  v116 = v141;
  v115 = v142;
  *&v150 = v142;
  v117 = v140;
  *(&v150 + 1) = v140;
  v151 = v141;
  v118 = v134;
  v152 = 0;
  v119 = v146[0];
  v120 = v135;
  v121 = v148;
  *(v111 + 32) = v147;
  *(v111 + 48) = v121;
  *v111 = v119;
  *(v111 + 16) = v120;
  v122 = v149;
  v123 = v150;
  v124 = v151;
  *(v111 + 112) = 0;
  *(v111 + 80) = v123;
  *(v111 + 96) = v124;
  *(v111 + 64) = v122;
  sub_100008DD0(v146, &v153, &qword_10005A840, &qword_10003FE10);
  sub_1000038DC(v106, &qword_10005A808, &qword_10003FD70);
  sub_1000038DC(v143, &qword_10005A810, &qword_10003FD78);
  v153._countAndFlagsBits = v112;
  v153._object = v118;
  v154 = v114;
  v155 = v113;
  v156 = v133;
  v157 = v65;
  v158 = v66;
  v159 = v67;
  v160 = v68;
  v161 = v137;
  v162 = v115;
  v163 = v117;
  v164 = v116;
  v165 = 0;
  v166 = 0;
  sub_1000038DC(&v153, &qword_10005A840, &qword_10003FE10);
  sub_1000038DC(v107, &qword_10005A808, &qword_10003FD70);
  return sub_1000038DC(v145, &qword_10005A810, &qword_10003FD78);
}

uint64_t sub_10000642C(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005A878, &qword_1000409D0);
  __chkstk_darwin(v2);
  v4 = &v31 - v3;
  v5 = sub_100003090(&qword_10005A880, &qword_10003FED0);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v8 = sub_100003090(&qword_10005A888, &qword_10003FED8);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = *(a1 + *(type metadata accessor for TripViewHorizontalStack(0) + 20));
  if (v11)
  {
    if (*(v11 + OBJC_IVAR____TtC4Trip9CardModel_cardLayoutType))
    {
      *v4 = static HorizontalAlignment.center.getter();
      *(v4 + 1) = 0;
      v4[16] = 1;
      v12 = sub_100003090(&qword_10005A890, &qword_10003FEE0);
      sub_100007408(a1, &v4[*(v12 + 44)]);
      sub_100008DD0(v4, v7, &qword_10005A878, &qword_1000409D0);
      swift_storeEnumTagMultiPayload();
      sub_100008C8C();
      sub_100003894(&qword_10005A8C0, &qword_10005A878, &qword_1000409D0, &protocol conformance descriptor for VStack<A>);
      _ConditionalContent<>.init(storage:)();
      return sub_1000038DC(v4, &qword_10005A878, &qword_1000409D0);
    }

    else
    {
      *v10 = static HorizontalAlignment.leading.getter();
      *(v10 + 1) = 0;
      v10[16] = 1;
      v14 = sub_100003090(&qword_10005A8C8, &qword_10003FEF8);
      sub_100006808(a1, &v10[*(v14 + 44)]);
      v15 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = &v10[*(sub_100003090(&qword_10005A8A8, &qword_10003FEE8) + 36)];
      *v24 = v15;
      *(v24 + 1) = v17;
      *(v24 + 2) = v19;
      *(v24 + 3) = v21;
      *(v24 + 4) = v23;
      v24[40] = 0;
      v25 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v26 = &v10[*(v8 + 36)];
      *v26 = v25;
      *(v26 + 1) = v27;
      *(v26 + 2) = v28;
      *(v26 + 3) = v29;
      *(v26 + 4) = v30;
      v26[40] = 0;
      sub_100008DD0(v10, v7, &qword_10005A888, &qword_10003FED8);
      swift_storeEnumTagMultiPayload();
      sub_100008C8C();
      sub_100003894(&qword_10005A8C0, &qword_10005A878, &qword_1000409D0, &protocol conformance descriptor for VStack<A>);
      _ConditionalContent<>.init(storage:)();
      return sub_1000038DC(v10, &qword_10005A888, &qword_10003FED8);
    }
  }

  else
  {
    type metadata accessor for CardModel(0);
    sub_100008BE4(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100006808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_100003090(&qword_10005A8D0, &qword_10003FF00);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v30 = (&v29 - v4);
  v5 = type metadata accessor for CAFUIAppPresentationMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_100008DD0(a1, v14, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100008854(v14, v17, type metadata accessor for LayoutConfiguration);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v31 + 8))(v11, v32);
  }

  (*(v6 + 16))(v8, v17, v5);
  v19 = (*(v6 + 88))(v8, v5);
  if (v19 == enum case for CAFUIAppPresentationMode.console(_:))
  {
    sub_1000086B4(v17);
    v20 = 1;
    v21 = v36;
    return (*(v34 + 56))(v21, v20, 1, v35);
  }

  if (v19 == enum case for CAFUIAppPresentationMode.clusterDCA(_:) || v19 == enum case for CAFUIAppPresentationMode.clusterPopover(_:) || v19 == enum case for CAFUIAppPresentationMode.widget(_:))
  {
    sub_1000086B4(v17);
    v22 = type metadata accessor for TripViewHorizontalStack(0);
    v23 = v33;
    v24 = *(v33 + *(v22 + 20));
    if (v24)
    {
      v20 = 1;
      v21 = v36;
      if (*(v24 + OBJC_IVAR____TtC4Trip9CardModel_showsTitle))
      {
        v25 = static VerticalAlignment.center.getter();
        v26 = v30;
        *v30 = v25;
        *(v26 + 8) = 0;
        *(v26 + 16) = 1;
        v27 = sub_100003090(&qword_10005A8D8, &qword_10003FF08);
        sub_100006D2C(v23, (v26 + *(v27 + 44)));
        sub_100008944(v26, v21, &qword_10005A8D0, &qword_10003FF00);
        v20 = 0;
      }

      return (*(v34 + 56))(v21, v20, 1, v35);
    }

    type metadata accessor for CardModel(0);
    sub_100008BE4(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    EnvironmentObject.error()();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100006D2C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for TripViewHorizontalStack(0);
  v4 = v3 - 8;
  v58 = *(v3 - 8);
  __chkstk_darwin(v3);
  v59 = v5;
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100003090(&qword_10005A8E0, &qword_10003FF10);
  __chkstk_darwin(v57);
  v10 = &v54 - v9;
  v11 = sub_100003090(&qword_10005A8E8, &qword_10003FF18);
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = __chkstk_darwin(v11);
  v61 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v65 = &v54 - v14;
  if (*(a1 + *(v4 + 28)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_1000089B4();
    v15 = Text.init<A>(_:)();
    v17 = v16;
    v19 = v18;
    sub_1000041F4(v8);
    sub_100008A08(&v8[*(v6 + 24)], &v66);
    sub_1000086B4(v8);
    v55 = a1;
    v20 = v67;
    v21 = v68;
    sub_100008A6C(&v66, v67);
    (*(v21 + 120))(v20, v21);
    v22 = Text.font(_:)();
    v24 = v23;
    v56 = v6;
    v26 = v25;
    v54 = v27;
    sub_100008AB0(v15, v17, v19 & 1);

    sub_1000085F8(&v66);
    v28 = &v10[*(v57 + 36)];
    v29 = *(sub_100003090(&qword_10005A8F0, &qword_100040AE0) + 28);
    v30 = enum case for Text.TruncationMode.tail(_:);
    v31 = type metadata accessor for Text.TruncationMode();
    (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
    *v28 = swift_getKeyPath();
    *v10 = v22;
    *(v10 + 1) = v24;
    v10[16] = v26 & 1;
    v32 = v55;
    *(v10 + 3) = v54;
    v33 = v60;
    sub_100008590(v32, v60);
    v34 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v35 = swift_allocObject();
    sub_100008854(v33, v35 + v34, type metadata accessor for TripViewHorizontalStack);
    sub_100008E74();
    v36 = v65;
    View.onTapGesture(count:perform:)();

    sub_1000038DC(v10, &qword_10005A8E0, &qword_10003FF10);
    v60 = Image.init(systemName:)();
    sub_1000041F4(v8);
    v37 = v56;
    sub_100008A08(&v8[*(v56 + 24)], &v66);
    sub_1000086B4(v8);
    v38 = v67;
    v39 = v68;
    sub_100008A6C(&v66, v67);
    v40 = (*(v39 + 144))(v38, v39);
    KeyPath = swift_getKeyPath();
    sub_1000085F8(&v66);
    sub_1000041F4(v8);
    sub_100008A08(&v8[*(v37 + 24)], &v66);
    sub_1000086B4(v8);
    v42 = v67;
    v43 = v68;
    sub_100008A6C(&v66, v67);
    v44 = (*(v43 + 168))(v42, v43);
    v45 = swift_getKeyPath();
    sub_1000085F8(&v66);
    v46 = v61;
    v47 = v62;
    v48 = *(v62 + 16);
    v49 = v63;
    v48(v61, v36, v63);
    v50 = v64;
    v48(v64, v46, v49);
    v51 = &v50[*(sub_100003090(&qword_10005A908, &unk_100040000) + 48)];
    *v51 = v60;
    *(v51 + 1) = KeyPath;
    *(v51 + 2) = v40;
    *(v51 + 3) = v45;
    *(v51 + 4) = v44;
    v52 = *(v47 + 8);

    v52(v65, v49);

    return (v52)(v46, v49);
  }

  else
  {
    type metadata accessor for CardModel(0);
    sub_100008BE4(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100007408@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for TripViewHorizontalStack(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_100003090(&qword_10005A910, &qword_100040A50);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v33[-v12];
  v14 = (a1 + *(v4 + 36));
  v15 = *v14;
  v16 = *(v14 + 1);
  v39 = v15;
  v40 = v16;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.projectedValue.getter();
  v18 = v36;
  v17 = v37;
  v34 = v38;
  sub_100008590(a1, &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_100008854(&v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v20 + v19, type metadata accessor for TripViewHorizontalStack);
  KeyPath = swift_getKeyPath();
  v22 = type metadata accessor for TripActionButton(0);
  *&v13[*(v22 + 20)] = KeyPath;
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  *v13 = v18;
  *(v13 + 1) = v17;
  v13[16] = v34;
  v23 = &v13[*(v22 + 24)];
  *v23 = sub_100009340;
  v23[1] = v20;
  LOBYTE(v20) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v24 = &v13[*(v8 + 44)];
  *v24 = v20;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_100008DD0(v13, v11, &qword_10005A910, &qword_100040A50);
  v29 = v35;
  *v35 = 0;
  *(v29 + 8) = 1;
  v30 = v29;
  v31 = sub_100003090(&qword_10005A918, &qword_100040010);
  sub_100008DD0(v11, v30 + *(v31 + 48), &qword_10005A910, &qword_100040A50);
  sub_1000038DC(v13, &qword_10005A910, &qword_100040A50);
  return sub_1000038DC(v11, &qword_10005A910, &qword_100040A50);
}

void *sub_1000076EC(uint64_t a1)
{
  v2 = type metadata accessor for LayoutConfiguration(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004010(v5);
  v6 = &v5[*(v3 + 28)];
  v7 = *(v6 + 1);
  v14 = *v6;
  v15 = v7;
  v16 = *(v6 + 1);
  sub_100003090(&qword_10005A7E0, &unk_1000409A0);
  Binding.wrappedValue.getter();
  v8 = v13[1];
  sub_1000086B4(v5);
  v9 = (a1 + *(type metadata accessor for TripViewHorizontalStack(0) + 44));
  v10 = *v9;
  v11 = v9[1];
  v14 = v10;
  v15 = v11;
  v13[0] = v8;
  sub_100003090(&qword_10005A860, &qword_100040B30);
  State.wrappedValue.setter();
  return sub_1000047CC();
}

uint64_t sub_100007808(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for TripViewHorizontalStack(0);

  sub_100003090(&qword_10005A858, &unk_10003FE20);
  return State.wrappedValue.setter();
}

uint64_t sub_10000787C(uint64_t a1)
{
  v23 = a1;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v26 - 8);
  __chkstk_darwin(v26);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TripViewHorizontalStack(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_100008AD8();
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v10 + 8);
  v25(v13, v9);
  sub_100008590(v23, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_100008854(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for TripViewHorizontalStack);
  aBlock[4] = sub_100008B24;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018318;
  aBlock[3] = &unk_1000560E8;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100008BE4(&unk_10005B580, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003090(&qword_10005A850, &qword_10003FE18);
  sub_100003894(&qword_10005B590, &qword_10005A850, &qword_10003FE18, &protocol conformance descriptor for [A]);
  v19 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v24;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v29 + 8))(v2, v19);
  (*(v27 + 8))(v5, v28);
  return (v25)(v15, v9);
}

uint64_t sub_100007CE4()
{
  static Animation.easeOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100007D58(uint64_t a1)
{
  type metadata accessor for TripViewHorizontalStack(0);
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  return State.wrappedValue.setter();
}

double sub_100007DD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for TripViewHorizontalStack(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TripResetView(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_100003090(&qword_10005A7D8, &unk_10003FD40);
  __chkstk_darwin(v40);
  v14 = &v39 - v13;
  sub_100004010(v8);
  v15 = &v8[*(v6 + 20)];
  v16 = *(v15 + 1);
  *&v42 = *v15;
  *(&v42 + 1) = v16;
  v43 = *(v15 + 1);
  sub_100003090(&qword_10005A7E0, &unk_1000409A0);
  Binding.wrappedValue.getter();
  v17 = *&v49;
  sub_1000086B4(v8);
  sub_100004010(v8);
  v18 = &v8[*(v6 + 20)];
  v19 = *(v18 + 1);
  *&v42 = *v18;
  *(&v42 + 1) = v19;
  v43 = *(v18 + 1);
  Binding.wrappedValue.getter();
  v20 = *(&v49 + 1);
  sub_1000086B4(v8);
  sub_100008590(a1, v5);
  v21 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v22 = swift_allocObject();
  sub_100008854(v5, v22 + v21, type metadata accessor for TripViewHorizontalStack);
  *v12 = v17 * 0.5;
  v12[1] = v20 * 0.55;
  *(v12 + 2) = sub_100008710;
  *(v12 + 3) = v22;
  v23 = (v12 + *(v10 + 36));
  v24 = *(type metadata accessor for RoundedRectangle() + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  (*(*(v26 - 8) + 104))(&v23->i8[v24], v25, v26);
  *v23 = vdupq_n_s64(0x4046000000000000uLL);
  sub_100004010(v8);
  v27 = &v8[*(v6 + 20)];
  v28 = *(v27 + 1);
  *&v42 = *v27;
  *(&v42 + 1) = v28;
  v43 = *(v27 + 1);
  Binding.wrappedValue.getter();
  sub_1000086B4(v8);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100008854(v12, v14, type metadata accessor for TripResetView);
  v29 = &v14[*(v40 + 36)];
  v30 = v47;
  *(v29 + 4) = v46;
  *(v29 + 5) = v30;
  *(v29 + 6) = v48;
  v31 = v43;
  *v29 = v42;
  *(v29 + 1) = v31;
  v32 = v45;
  *(v29 + 2) = v44;
  *(v29 + 3) = v32;
  sub_100004010(v8);
  v33 = &v8[*(v6 + 20)];
  v34 = *(v33 + 1);
  *&v49 = *v33;
  *(&v49 + 1) = v34;
  v50 = *(v33 + 1);
  Binding.wrappedValue.getter();
  sub_1000086B4(v8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v35 = v41;
  sub_100008944(v14, v41, &qword_10005A7D8, &unk_10003FD40);
  v36 = (v35 + *(sub_100003090(&qword_10005A7E8, &qword_10003FD50) + 36));
  v37 = v50;
  *v36 = v49;
  v36[1] = v37;
  result = v51[0];
  v36[2] = *v51;
  return result;
}

uint64_t sub_100008354(uint64_t a1)
{
  if (a1)
  {
    sub_100009AE4();
  }

  v1 = static Animation.easeInOut(duration:)();
  __chkstk_darwin(v1);
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000083F0(uint64_t a1)
{
  type metadata accessor for TripViewHorizontalStack(0);

  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_1000084D0@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_100003090(&qword_10005A758, &qword_10003FCD0);
  sub_100004BA4(v2, (a2 + *(v5 + 44)));
  v6 = static Edge.Set.horizontal.getter();
  v7 = a2 + *(sub_100003090(&qword_10005A760, &qword_10003FCD8) + 36);
  *v7 = v6;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  v7[40] = 1;
  result = sub_100003090(&qword_10005A768, &unk_10003FCE0);
  v9 = (a2 + *(result + 36));
  *v9 = 0xD000000000000012;
  v9[1] = 0x8000000100042830;
  return result;
}

uint64_t sub_100008590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripViewHorizontalStack(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000085F8(void *a1)
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

void sub_100008644(char a1)
{
  v3 = *(type metadata accessor for TripViewHorizontalStack(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10000546C(a1, v4);
}

uint64_t sub_1000086B4(uint64_t a1)
{
  v2 = type metadata accessor for LayoutConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008710(char a1)
{
  type metadata accessor for TripViewHorizontalStack(0);

  return sub_100008354(a1 & 1);
}

uint64_t sub_10000879C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000087F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100008854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000088D4(uint64_t *a1)
{
  v3 = *(type metadata accessor for TripViewHorizontalStack(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100007808(a1, v4);
}

uint64_t sub_100008944(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003090(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000089B4()
{
  result = qword_10005A830;
  if (!qword_10005A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A830);
  }

  return result;
}

uint64_t sub_100008A08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100008A6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008AB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100008AD8()
{
  result = qword_10005A848;
  if (!qword_10005A848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005A848);
  }

  return result;
}

uint64_t sub_100008B3C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TripViewHorizontalStack(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100008BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008BE4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100008C34(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_100008C8C()
{
  result = qword_10005A898;
  if (!qword_10005A898)
  {
    sub_1000036BC(&qword_10005A888, &qword_10003FED8);
    sub_100008D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A898);
  }

  return result;
}

unint64_t sub_100008D18()
{
  result = qword_10005A8A0;
  if (!qword_10005A8A0)
  {
    sub_1000036BC(&qword_10005A8A8, &qword_10003FEE8);
    sub_100003894(&qword_10005A8B0, &qword_10005A8B8, &qword_10003FEF0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A8A0);
  }

  return result;
}

uint64_t sub_100008DD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003090(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_100008E48()
{
  type metadata accessor for TripViewHorizontalStack(0);

  sub_100009ADC();
}

unint64_t sub_100008E74()
{
  result = qword_10005A8F8;
  if (!qword_10005A8F8)
  {
    sub_1000036BC(&qword_10005A8E0, &qword_10003FF10);
    sub_100003894(&qword_10005A900, &qword_10005A8F0, &qword_100040AE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A8F8);
  }

  return result;
}

uint64_t sub_100008F2C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100008F84@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100008FDC()
{
  v1 = *(type metadata accessor for TripViewHorizontalStack(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
    v6 = type metadata accessor for LayoutConfiguration(0);

    sub_1000085F8((v0 + v3 + *(v6 + 24)));
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_10000919C()
{
  result = qword_10005A920;
  if (!qword_10005A920)
  {
    sub_1000036BC(&qword_10005A768, &unk_10003FCE0);
    sub_100009254();
    sub_100003894(&qword_10005A940, &qword_10005A948, &qword_100040020, &protocol conformance descriptor for _CoordinateSpaceModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A920);
  }

  return result;
}

unint64_t sub_100009254()
{
  result = qword_10005A928;
  if (!qword_10005A928)
  {
    sub_1000036BC(&qword_10005A760, &qword_10003FCD8);
    sub_100003894(&qword_10005A930, &qword_10005A938, &qword_100040018, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A928);
  }

  return result;
}

Swift::Int sub_100009368()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000093DC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100009420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v49 = a3;
  v44 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v44);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DragGesture();
  v7 = *(v6 - 8);
  v45 = v6;
  v46 = v7;
  __chkstk_darwin(v6);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003090(&qword_10005A958, &qword_1000400D8);
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  __chkstk_darwin(v9);
  v41 = &v35 - v11;
  v12 = type metadata accessor for LongPressGesture();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100003090(&qword_10005A960, &qword_1000400E0);
  v16 = *(v38 - 8);
  __chkstk_darwin(v38);
  v18 = &v35 - v17;
  v40 = sub_100003090(&qword_10005A968, &qword_1000400E8);
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v35 = &v35 - v19;
  static Color.white.getter();
  v20 = Color.opacity(_:)();

  v50 = v20;
  LOBYTE(v51) = 0;
  LongPressGesture.init(minimumDuration:maximumDistance:)();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v22 = a2;
  sub_100009EA0(&qword_10005A970, &type metadata accessor for LongPressGesture, &protocol conformance descriptor for LongPressGesture);

  Gesture.onEnded(_:)();

  (*(v13 + 8))(v15, v12);
  static GestureMask.all.getter();
  v23 = sub_100003090(&qword_10005A978, &qword_1000400F0);
  v24 = sub_100009DE0();
  v37 = &protocol conformance descriptor for _EndedGesture<A>;
  v25 = sub_100003894(&qword_10005A998, &qword_10005A960, &qword_1000400E0, &protocol conformance descriptor for _EndedGesture<A>);
  v26 = v35;
  v27 = v38;
  View.gesture<A>(_:including:)();
  (*(v16 + 8))(v18, v27);

  static CoordinateSpaceProtocol<>.local.getter();
  v28 = v39;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v29 = swift_allocObject();
  *(v29 + 16) = v36;
  *(v29 + 24) = v22;
  sub_100009EA0(&qword_10005A9A0, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);

  v30 = v41;
  v31 = v45;
  Gesture.onEnded(_:)();

  (*(v46 + 8))(v28, v31);
  static GestureMask.all.getter();
  v50 = v23;
  v51 = v27;
  v52 = v24;
  v53 = v25;
  swift_getOpaqueTypeConformance2();
  sub_100003894(&qword_10005A9A8, &qword_10005A958, &qword_1000400D8, v37);
  v32 = v40;
  v33 = v47;
  View.simultaneousGesture<A>(_:including:)();
  (*(v48 + 8))(v30, v33);
  return (*(v42 + 8))(v26, v32);
}

uint64_t sub_100009A60(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  DragGesture.Value.translation.getter();
  v4 = v3;
  result = DragGesture.Value.translation.getter();
  if (fabs(v6) < fabs(v4))
  {
    if (v4 <= 0.0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    return a2(v7);
  }

  return result;
}

void sub_100009AEC(char a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_10005A3C8 != -1)
  {
    swift_once();
  }

  v3 = static NSNotificationName.ClusterEvent;
  sub_100003090(&qword_10005A950, &qword_100040048);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003FA90;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for ClusterEventType;
  *(inited + 72) = a1;
  sub_10000EDF0(inited);
  swift_setDeallocating();
  sub_100009C64(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 postNotificationName:v3 object:0 userInfo:isa];
}

uint64_t sub_100009C64(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005D480, &qword_100040050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009CCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100009D14(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100009D7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100009DE0()
{
  result = qword_10005A980;
  if (!qword_10005A980)
  {
    sub_1000036BC(&qword_10005A978, &qword_1000400F0);
    sub_100003894(&qword_10005A988, &qword_10005A990, &qword_1000400F8, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A980);
  }

  return result;
}

uint64_t sub_100009EA0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for LayoutName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LayoutName(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000A058()
{
  sub_1000036BC(&qword_10005A968, &qword_1000400E8);
  sub_1000036BC(&qword_10005A958, &qword_1000400D8);
  sub_1000036BC(&qword_10005A978, &qword_1000400F0);
  sub_1000036BC(&qword_10005A960, &qword_1000400E0);
  sub_100009DE0();
  sub_100003894(&qword_10005A998, &qword_10005A960, &qword_1000400E0, &protocol conformance descriptor for _EndedGesture<A>);
  swift_getOpaqueTypeConformance2();
  sub_100003894(&qword_10005A9A8, &qword_10005A958, &qword_1000400D8, &protocol conformance descriptor for _EndedGesture<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000A1B0()
{
  result = qword_10005A9B0;
  if (!qword_10005A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A9B0);
  }

  return result;
}

uint64_t sub_10000A21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RoundedRectangle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000A2DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RoundedRectangle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TripResetView(uint64_t a1)
{
  result = qword_10005AA10;
  if (!qword_10005AA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A3CC(uint64_t a1)
{
  result = sub_10000A460();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RoundedRectangle();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10000A460()
{
  result = qword_10005AA20;
  if (!qword_10005AA20)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10005AA20);
  }

  return result;
}

uint64_t sub_10000A4E4@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = sub_100003090(&qword_10005AA58, &qword_1000401F8);
  __chkstk_darwin(v2 - 8);
  v4 = &v57 - v3;
  v5 = sub_100003090(&qword_10005AA60, &qword_100040200);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v57 - v7;
  v9 = sub_100003090(&qword_10005AA68, &qword_100040208);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v57 - v11;
  v13 = sub_100003090(&qword_10005AA70, &qword_100040210);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v57 - v15;
  v17 = sub_100003090(&qword_10005AA78, &qword_100040218);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v57 - v19;
  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = 0x4020000000000000;
  v4[16] = 0;
  v21 = sub_100003090(&qword_10005AA80, &qword_100040220);
  sub_10000A9D8(v1, &v4[*(v21 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100008944(v4, v8, &qword_10005AA58, &qword_1000401F8);
  v22 = &v8[*(v6 + 44)];
  v23 = v64;
  *(v22 + 4) = v63;
  *(v22 + 5) = v23;
  *(v22 + 6) = v65;
  v25 = v60;
  v24 = v61;
  *v22 = v59;
  *(v22 + 1) = v25;
  v26 = v62;
  *(v22 + 2) = v24;
  *(v22 + 3) = v26;
  LOBYTE(v4) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_100008944(v8, v12, &qword_10005AA60, &qword_100040200);
  v35 = &v12[*(v10 + 44)];
  *v35 = v4;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = [objc_opt_self() systemBackgroundColor];
  v37 = Color.init(_:)();
  LOBYTE(v8) = static Edge.Set.all.getter();
  sub_100008944(v12, v16, &qword_10005AA68, &qword_100040208);
  v38 = &v16[*(v14 + 44)];
  *v38 = v37;
  v38[8] = v8;
  v39 = *(type metadata accessor for TripResetView(0) + 28);
  static Color.white.getter();
  v40 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v41 = &v20[*(v18 + 44)];
  sub_10000B714(v1 + v39, v41, &type metadata accessor for RoundedRectangle);
  v42 = v41 + *(sub_100003090(&qword_10005AA88, &qword_100040228) + 36);
  v43 = v67;
  *v42 = v66;
  *(v42 + 16) = v43;
  *(v42 + 32) = v68;
  v44 = sub_100003090(&qword_10005AA90, &qword_100040230);
  *(v41 + *(v44 + 52)) = v40;
  *(v41 + *(v44 + 56)) = 256;
  v45 = static Alignment.center.getter();
  v47 = v46;
  v48 = (v41 + *(sub_100003090(&qword_10005AA98, &qword_100040238) + 36));
  *v48 = v45;
  v48[1] = v47;
  v49 = static Alignment.center.getter();
  v51 = v50;
  v52 = (v41 + *(sub_100003090(&qword_10005AAA0, &qword_100040240) + 36));
  *v52 = v49;
  v52[1] = v51;
  sub_100008944(v16, v20, &qword_10005AA70, &qword_100040210);
  v53 = *(sub_100003090(&qword_10005AAA8, &qword_100040248) + 36);
  v54 = v1 + v39;
  v55 = v58;
  sub_10000B714(v54, v58 + v53, &type metadata accessor for RoundedRectangle);
  return sub_100008944(v20, v55, &qword_10005AA78, &qword_100040218);
}

uint64_t sub_10000A9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v78 = a2;
  v80 = type metadata accessor for BorderedProminentButtonStyle();
  v82 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TripResetView(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v70 = v6;
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003090(&qword_10005AAB0, &qword_100040250);
  __chkstk_darwin(v8 - 8);
  v10 = &v60 - v9;
  v11 = sub_100003090(&qword_10005AAB8, &qword_100040258);
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  v81 = sub_100003090(&qword_10005AAC0, &qword_100040260) - 8;
  v14 = __chkstk_darwin(v81);
  v77 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v76 = &v60 - v17;
  v18 = __chkstk_darwin(v16);
  v75 = &v60 - v19;
  __chkstk_darwin(v18);
  v21 = &v60 - v20;
  static ButtonRole.cancel.getter();
  v62 = type metadata accessor for ButtonRole();
  v22 = *(v62 - 8);
  v73 = *(v22 + 56);
  v74 = v22 + 56;
  v73(v10, 0, 1, v62);
  v71 = type metadata accessor for TripResetView;
  v65 = v7;
  sub_10000B714(a1, v7, type metadata accessor for TripResetView);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = swift_allocObject();
  sub_10000B780(v7, v24 + v23);
  Button.init(role:action:label:)();
  static Color.gray.getter();
  v25 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  v63 = v11;
  v27 = &v13[*(v11 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = v79;
  BorderedProminentButtonStyle.init()();
  v68 = sub_10000B844();
  v67 = sub_10000B928();
  v29 = v21;
  v69 = v21;
  v30 = v80;
  View.buttonStyle<A>(_:)();
  v31 = *(v82 + 8);
  v82 += 8;
  v66 = v31;
  v31(v28, v30);
  sub_1000038DC(v13, &qword_10005AAB8, &qword_100040258);
  v32 = &v29[*(v81 + 44)];
  v64 = type metadata accessor for RoundedRectangle();
  v33 = *(v64 + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v35 = type metadata accessor for RoundedCornerStyle();
  v36 = *(v35 - 8);
  v37 = *(v36 + 104);
  v61 = v36 + 104;
  v37(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #25.0 }

  v60 = _Q0;
  *v32 = _Q0;
  v43 = sub_100003090(&qword_10005AAF8, &qword_1000402A8);
  *&v32[*(v43 + 36)] = 256;
  static ButtonRole.destructive.getter();
  v73(v10, 0, 1, v62);
  v44 = v65;
  sub_10000B714(v72, v65, v71);
  v45 = swift_allocObject();
  sub_10000B780(v44, v45 + v23);
  Button.init(role:action:label:)();
  static Color.gray.getter();
  v46 = Color.opacity(_:)();

  v47 = swift_getKeyPath();
  v48 = &v13[*(v63 + 36)];
  *v48 = v47;
  v48[1] = v46;
  v49 = v79;
  BorderedProminentButtonStyle.init()();
  v50 = v75;
  v51 = v80;
  View.buttonStyle<A>(_:)();
  v66(v49, v51);
  sub_1000038DC(v13, &qword_10005AAB8, &qword_100040258);
  v52 = v50;
  v53 = &v50[*(v81 + 44)];
  v37(&v53[*(v64 + 20)], v34, v35);
  *v53 = v60;
  *&v53[*(v43 + 36)] = 256;
  v54 = v69;
  v55 = v76;
  sub_10000BAEC(v69, v76);
  v56 = v77;
  sub_10000BAEC(v52, v77);
  v57 = v78;
  sub_10000BAEC(v55, v78);
  v58 = sub_100003090(&qword_10005AB00, &unk_1000402B0);
  sub_10000BAEC(v56, v57 + *(v58 + 48));
  sub_10000BB5C(v52);
  sub_10000BB5C(v54);
  sub_10000BB5C(v56);
  return sub_10000BB5C(v55);
}

uint64_t sub_10000B0DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003090(&qword_10005A870, &qword_100040B80);
  __chkstk_darwin(v2 - 8);
  v4 = &v31[-v3];
  v5 = type metadata accessor for Font.TextStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [objc_opt_self() mainBundle];
  v33._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x41435F5445534552;
  v10._object = 0xEC0000004C45434ELL;
  v11.value._countAndFlagsBits = 1885958740;
  v11.value._object = 0xE400000000000000;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v33);

  v32 = v13;
  sub_1000089B4();
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  (*(v6 + 104))(v8, enum case for Font.TextStyle.title(_:), v5);
  v19 = type metadata accessor for Font.Design();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  static Font.Weight.bold.getter();
  static Font.system(_:design:weight:)();
  sub_1000038DC(v4, &qword_10005A870, &qword_100040B80);
  (*(v6 + 8))(v8, v5);
  v20 = Text.font(_:)();
  v22 = v21;
  LOBYTE(v4) = v23;

  sub_100008AB0(v14, v16, v18 & 1);

  static Color.primary.getter();
  v24 = Text.foregroundColor(_:)();
  v26 = v25;
  LOBYTE(v16) = v27;
  v29 = v28;

  sub_100008AB0(v20, v22, v4 & 1);

  *a1 = v24;
  *(a1 + 8) = v26;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v29;
  return result;
}

uint64_t sub_10000B3E4@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = sub_100003090(&qword_10005A870, &qword_100040B80);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() mainBundle];
  v35._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x43415F5445534552;
  v9._object = 0xEC0000004E4F4954;
  v10.value._countAndFlagsBits = 1885958740;
  v10.value._object = 0xE400000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v35);

  v34 = v12;
  sub_1000089B4();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  (*(v5 + 104))(v7, enum case for Font.TextStyle.title(_:), v4);
  v18 = type metadata accessor for Font.Design();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  static Font.Weight.bold.getter();
  static Font.system(_:design:weight:)();
  sub_1000038DC(v3, &qword_10005A870, &qword_100040B80);
  (*(v5 + 8))(v7, v4);
  v19 = Text.font(_:)();
  v21 = v20;
  LOBYTE(v3) = v22;

  sub_100008AB0(v13, v15, v17 & 1);

  v23 = [objc_opt_self() systemRedColor];
  Color.init(_:)();
  v24 = Text.foregroundColor(_:)();
  v26 = v25;
  LOBYTE(v13) = v27;
  v29 = v28;

  sub_100008AB0(v19, v21, v3 & 1);

  v31 = v33;
  *v33 = v24;
  v31[1] = v26;
  *(v31 + 16) = v13 & 1;
  v31[3] = v29;
  return result;
}

uint64_t sub_10000B714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000B780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripResetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B7EC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10000B844()
{
  result = qword_10005AAC8;
  if (!qword_10005AAC8)
  {
    sub_1000036BC(&qword_10005AAB8, &qword_100040258);
    sub_100003894(&qword_10005AAD0, &qword_10005AAD8, &qword_100040298, &protocol conformance descriptor for Button<A>);
    sub_100003894(&qword_10005AAE0, &qword_10005AAE8, &qword_1000402A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AAC8);
  }

  return result;
}

unint64_t sub_10000B928()
{
  result = qword_10005AAF0;
  if (!qword_10005AAF0)
  {
    type metadata accessor for BorderedProminentButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AAF0);
  }

  return result;
}

uint64_t sub_10000B980()
{
  v1 = (type metadata accessor for TripResetView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = v5 + *(type metadata accessor for RoundedRectangle() + 20);
  v7 = type metadata accessor for RoundedCornerStyle();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000BAEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003090(&qword_10005AAC0, &qword_100040260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BB5C(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005AAC0, &qword_100040260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResetSheetAction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ResetSheetAction(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000BD24()
{
  result = qword_10005AB08;
  if (!qword_10005AB08)
  {
    sub_1000036BC(&qword_10005AAA8, &qword_100040248);
    sub_10000BDDC();
    sub_100003894(&qword_10005AB50, &qword_10005AB58, qword_1000402E0, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AB08);
  }

  return result;
}

unint64_t sub_10000BDDC()
{
  result = qword_10005AB10;
  if (!qword_10005AB10)
  {
    sub_1000036BC(&qword_10005AA78, &qword_100040218);
    sub_10000BE94();
    sub_100003894(&qword_10005AB48, &qword_10005AAA0, &qword_100040240, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AB10);
  }

  return result;
}

unint64_t sub_10000BE94()
{
  result = qword_10005AB18;
  if (!qword_10005AB18)
  {
    sub_1000036BC(&qword_10005AA70, &qword_100040210);
    sub_10000BF4C();
    sub_100003894(&qword_10005AB38, &qword_10005AB40, &qword_100040790, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AB18);
  }

  return result;
}

unint64_t sub_10000BF4C()
{
  result = qword_10005AB20;
  if (!qword_10005AB20)
  {
    sub_1000036BC(&qword_10005AA68, &qword_100040208);
    sub_10000BFD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AB20);
  }

  return result;
}

unint64_t sub_10000BFD8()
{
  result = qword_10005AB28;
  if (!qword_10005AB28)
  {
    sub_1000036BC(&qword_10005AA60, &qword_100040200);
    sub_100003894(&qword_10005AB30, &qword_10005AA58, &qword_1000401F8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AB28);
  }

  return result;
}

unint64_t sub_10000C094()
{
  result = qword_10005AB60;
  if (!qword_10005AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AB60);
  }

  return result;
}

uint64_t sub_10000C100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000C1E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TripView(uint64_t a1)
{
  result = qword_10005ABC0;
  if (!qword_10005ABC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C2F4(uint64_t a1)
{
  sub_100003DC4(319);
  if (v1 <= 0x3F)
  {
    sub_100003EB0(319);
    if (v2 <= 0x3F)
    {
      sub_10000C390(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000C390(uint64_t a1)
{
  if (!qword_10005ABD0)
  {
    type metadata accessor for CardModel(255);
    sub_10000EF3C(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10005ABD0);
    }
  }
}

uint64_t sub_10000C440@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100008DD0(v2, &v13 - v9, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10000ED88(v10, a1, type metadata accessor for LayoutConfiguration);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10000C624@<X0>(uint64_t a1@<X8>)
{
  v187 = a1;
  v165 = sub_100003090(&qword_10005AC08, &qword_1000403B0);
  __chkstk_darwin(v165);
  v147 = (&v146 - v2);
  v166 = sub_100003090(&qword_10005AC10, &qword_1000403B8);
  __chkstk_darwin(v166);
  v167 = &v146 - v3;
  v161 = sub_100003090(&qword_10005AC18, &qword_1000403C0);
  __chkstk_darwin(v161);
  v162 = &v146 - v4;
  v163 = sub_100003090(&qword_10005AC20, &qword_1000403C8);
  __chkstk_darwin(v163);
  v164 = &v146 - v5;
  v150 = type metadata accessor for TripViewStandard(0);
  __chkstk_darwin(v150);
  v151 = (&v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = sub_100003090(&qword_10005AC28, &qword_1000403D0);
  v7 = __chkstk_darwin(v160);
  v149 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v152 = &v146 - v9;
  v177 = sub_100003090(&qword_10005AC30, &qword_1000403D8);
  __chkstk_darwin(v177);
  v168 = &v146 - v10;
  v178 = sub_100003090(&qword_10005AC38, &qword_1000403E0);
  __chkstk_darwin(v178);
  v179 = &v146 - v11;
  v172 = sub_100003090(&qword_10005AC40, &qword_1000403E8);
  __chkstk_darwin(v172);
  v174 = &v146 - v12;
  v175 = sub_100003090(&qword_10005AC48, &qword_1000403F0);
  __chkstk_darwin(v175);
  v176 = &v146 - v13;
  v157 = sub_100003090(&qword_10005AC50, &qword_1000403F8);
  __chkstk_darwin(v157);
  v158 = &v146 - v14;
  v156 = sub_100003090(&qword_10005AC58, &qword_100040400);
  __chkstk_darwin(v156);
  v155 = (&v146 - v15);
  v171 = sub_100003090(&qword_10005AC60, &qword_100040408);
  __chkstk_darwin(v171);
  v159 = &v146 - v16;
  v17 = type metadata accessor for CAFUIAppSubStyle();
  v18 = *(v17 - 8);
  v180 = v17;
  v181 = v18;
  v19 = __chkstk_darwin(v17);
  v154 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v170 = &v146 - v22;
  v23 = __chkstk_darwin(v21);
  v153 = &v146 - v24;
  __chkstk_darwin(v23);
  v169 = &v146 - v25;
  v26 = type metadata accessor for CAFUIAppAppStyle();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LayoutConfiguration(0);
  v31 = __chkstk_darwin(v30);
  v148 = &v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v146 - v33;
  v186 = sub_100003090(&qword_10005AC68, &qword_100040410);
  __chkstk_darwin(v186);
  v173 = &v146 - v35;
  v183 = sub_100003090(&qword_10005AC70, &qword_100040418);
  __chkstk_darwin(v183);
  v185 = &v146 - v36;
  v184 = sub_100003090(&qword_10005AC78, &qword_100040420);
  __chkstk_darwin(v184);
  v38 = (&v146 - v37);
  v182 = type metadata accessor for TripView(0);
  v39 = v1;
  if (*(v1 + *(v182 + 20)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v189 && v189 == 1)
    {

      v40 = v1;
LABEL_6:
      *v38 = swift_getKeyPath();
      sub_100003090(&qword_10005A798, &qword_10003FD10);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for CardModel(0);
      sub_10000EF3C(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
      v42 = EnvironmentObject.init()();
      v44 = v43;
      type metadata accessor for TripAppConfig(0);
      sub_10000EF3C(&qword_10005A6E0, type metadata accessor for TripAppConfig, &unk_1000424C0);
      v45 = EnvironmentObject.init()();
      v47 = v46;
      v48 = type metadata accessor for TripViewHorizontalStack(0);
      v49 = (v38 + v48[5]);
      *v49 = v42;
      v49[1] = v44;
      v50 = (v38 + v48[6]);
      *v50 = v45;
      v50[1] = v47;
      v51 = v38 + v48[7];
      LOBYTE(v188) = 0;
      State.init(wrappedValue:)();
      v52 = *(&v189 + 1);
      *v51 = v189;
      *(v51 + 1) = v52;
      *(v38 + v48[8]) = 1;
      v53 = (v38 + v48[9]);
      v188 = COERCE_DOUBLE(sub_10000E5EC(&_swiftEmptyArrayStorage));
      sub_100003090(&qword_10005A6F8, "fS");
      State.init(wrappedValue:)();
      v54 = *(&v189 + 1);
      *v53 = v189;
      v53[1] = v54;
      v55 = v48[10];
      v188 = 0.0;
      State.init(wrappedValue:)();
      *(v38 + v55) = v189;
      v56 = (v38 + v48[11]);
      v188 = 0.0;
      State.init(wrappedValue:)();
      v57 = *(&v189 + 1);
      *v56 = v189;
      v56[1] = v57;
      v58 = v38 + v48[12];
      LOBYTE(v188) = 1;
      State.init(wrappedValue:)();
      v59 = *(&v189 + 1);
      *v58 = v189;
      *(v58 + 1) = v59;
      v60 = *(v40 + *(v182 + 24) + 8);
      v61 = static ObservableObject.environmentStore.getter();
      v62 = v185;
      v63 = (v38 + *(v184 + 36));
      *v63 = v61;
      v63[1] = v60;
      v64 = &qword_10005AC78;
      v65 = &qword_100040420;
      sub_100008DD0(v38, v62, &qword_10005AC78, &qword_100040420);
      swift_storeEnumTagMultiPayload();
      sub_10000EB20();
      sub_10000EBDC(&qword_10005ACF0, &qword_10005AC68, &qword_100040410, sub_10000EA3C);

      _ConditionalContent<>.init(storage:)();
      v66 = v38;
      return sub_1000038DC(v66, v64, v65);
    }

    v40 = v1;
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      goto LABEL_6;
    }

    sub_10000C440(v34);
    v67 = &v34[*(v30 + 20)];
    v68 = *(v67 + 1);
    *&v189 = *v67;
    *(&v189 + 1) = v68;
    v190 = *(v67 + 1);
    sub_100003090(&qword_10005A7E0, &unk_1000409A0);
    Binding.wrappedValue.getter();
    static CAFUIAppLayoutConfiguration.appStyle(size:)();
    sub_1000086B4(v34);
    v69 = (*(v27 + 88))(v29, v26);
    if (v69 == enum case for CAFUIAppAppStyle.portrait(_:))
    {
      (*(v27 + 96))(v29, v26);
      v70 = v181;
      v71 = v170;
      v72 = v29;
      v73 = v180;
      (*(v181 + 32))(v170, v72, v180);
      v74 = v154;
      (*(v70 + 16))(v154, v71, v73);
      v75 = (*(v70 + 88))(v74, v73);
      v76 = v168;
      if (v75 == enum case for CAFUIAppSubStyle.standard(_:))
      {
        goto LABEL_17;
      }

      if (v75 == enum case for CAFUIAppSubStyle.narrow(_:))
      {
        KeyPath = swift_getKeyPath();
        v78 = v147;
        *v147 = KeyPath;
        sub_100003090(&qword_10005A798, &qword_10003FD10);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for CardModel(0);
        sub_10000EF3C(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
        v79 = EnvironmentObject.init()();
        v81 = v80;
        v82 = type metadata accessor for TripViewPortraitNarrow(0);
        v83 = (v78 + v82[5]);
        *v83 = v79;
        v83[1] = v81;
        v84 = v78 + v82[6];
        LOBYTE(v188) = 0;
        State.init(wrappedValue:)();
        v85 = *(&v189 + 1);
        *v84 = v189;
        *(v84 + 8) = v85;
        *(v78 + v82[7]) = 1;
        v86 = (v78 + v82[8]);
        v188 = COERCE_DOUBLE(sub_10000E5EC(&_swiftEmptyArrayStorage));
        sub_100003090(&qword_10005A6F8, "fS");
        State.init(wrappedValue:)();
        v87 = *(&v189 + 1);
        *v86 = v189;
        v86[1] = v87;
        v88 = v82[9];
        v188 = 0.0;
        State.init(wrappedValue:)();
        *(v78 + v88) = v189;
        v89 = (v78 + v82[10]);
        v188 = 0.0;
        State.init(wrappedValue:)();
        v90 = *(&v189 + 1);
        *v89 = v189;
        v89[1] = v90;
        v91 = *(v40 + *(v182 + 24) + 8);
        v92 = static ObservableObject.environmentStore.getter();
        v93 = (v78 + *(v165 + 36));
        *v93 = v92;
        v93[1] = v91;
        v94 = &qword_1000403B0;
        sub_100008DD0(v78, v162, &qword_10005AC08, &qword_1000403B0);
        swift_storeEnumTagMultiPayload();
        sub_10000E718();
        sub_10000E838();

        v95 = v76;
        v96 = v164;
        _ConditionalContent<>.init(storage:)();
        sub_100008DD0(v96, v167, &qword_10005AC20, &qword_1000403C8);
        swift_storeEnumTagMultiPayload();
        sub_10000E8F4();
        _ConditionalContent<>.init(storage:)();
        v97 = v96;
        v76 = v95;
        sub_1000038DC(v97, &qword_10005AC20, &qword_1000403C8);
        v98 = v78;
        v99 = &qword_10005AC08;
LABEL_18:
        sub_1000038DC(v98, v99, v94);
        sub_100008DD0(v76, v174, &qword_10005AC30, &qword_1000403D8);
        swift_storeEnumTagMultiPayload();
        sub_10000EBDC(&qword_10005ACB8, &qword_10005AC60, &qword_100040408, sub_10000E980);
        sub_10000EBDC(&qword_10005ACD0, &qword_10005AC30, &qword_1000403D8, sub_10000E8F4);
        v144 = v176;
        _ConditionalContent<>.init(storage:)();
        sub_100008DD0(v144, v179, &qword_10005AC48, &qword_1000403F0);
        swift_storeEnumTagMultiPayload();
        sub_10000EA3C();
        v124 = v173;
        _ConditionalContent<>.init(storage:)();
        sub_1000038DC(v144, &qword_10005AC48, &qword_1000403F0);
        sub_1000038DC(v76, &qword_10005AC30, &qword_1000403D8);
        v125 = &v192;
        goto LABEL_19;
      }

      if (v75 == enum case for CAFUIAppSubStyle.wide(_:))
      {
LABEL_17:
        v126 = v148;
        sub_10000C440(v148);
        v127 = v126 + *(v30 + 20);
        v128 = *(v127 + 8);
        *&v189 = *v127;
        *(&v189 + 1) = v128;
        v190 = *(v127 + 16);
        Binding.wrappedValue.getter();
        v129 = 2 * (v188 >= 300.0);
        sub_1000086B4(v126);
        v130 = swift_getKeyPath();
        v131 = v151;
        *v151 = v130;
        sub_100003090(&qword_10005A798, &qword_10003FD10);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for CardModel(0);
        sub_10000EF3C(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
        v132 = EnvironmentObject.init()();
        v133 = v150;
        v134 = (v131 + *(v150 + 20));
        *v134 = v132;
        v134[1] = v135;
        v136 = v131 + *(v133 + 24);
        LOBYTE(v188) = 0;
        State.init(wrappedValue:)();
        v137 = *(&v189 + 1);
        *v136 = v189;
        *(v136 + 8) = v137;
        *(v131 + *(v133 + 28)) = v129;
        v138 = *(v40 + *(v182 + 24) + 8);
        v139 = static ObservableObject.environmentStore.getter();
        v140 = v149;
        sub_10000ED88(v131, v149, type metadata accessor for TripViewStandard);
        v141 = (v140 + *(v160 + 36));
        *v141 = v139;
        v141[1] = v138;
        v142 = v152;
        sub_10000EC60(v140, v152);
        v94 = &qword_1000403D0;
        sub_100008DD0(v142, v162, &qword_10005AC28, &qword_1000403D0);
        swift_storeEnumTagMultiPayload();
        sub_10000E718();
        sub_10000E838();

        v143 = v164;
        _ConditionalContent<>.init(storage:)();
        sub_100008DD0(v143, v167, &qword_10005AC20, &qword_1000403C8);
        swift_storeEnumTagMultiPayload();
        sub_10000E8F4();
        _ConditionalContent<>.init(storage:)();
        sub_1000038DC(v143, &qword_10005AC20, &qword_1000403C8);
        v98 = v142;
        v99 = &qword_10005AC28;
        goto LABEL_18;
      }
    }

    else if (v69 == enum case for CAFUIAppAppStyle.landscape(_:))
    {
      (*(v27 + 96))(v29, v26);
      v101 = v180;
      v100 = v181;
      v102 = v169;
      (*(v181 + 32))(v169, v29, v180);
      v103 = v153;
      (*(v100 + 16))(v153, v102, v101);
      v104 = (*(v100 + 88))(v103, v101);
      if (v104 == enum case for CAFUIAppSubStyle.standard(_:) || v104 == enum case for CAFUIAppSubStyle.narrow(_:) || v104 == enum case for CAFUIAppSubStyle.wide(_:))
      {
        v105 = swift_getKeyPath();
        v106 = v155;
        *v155 = v105;
        sub_100003090(&qword_10005A798, &qword_10003FD10);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for CardModel(0);
        sub_10000EF3C(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
        v107 = EnvironmentObject.init()();
        v109 = v108;
        v110 = type metadata accessor for TripViewLandscape(0);
        v111 = (v106 + v110[5]);
        *v111 = v107;
        v111[1] = v109;
        v112 = v106 + v110[6];
        LOBYTE(v188) = 0;
        State.init(wrappedValue:)();
        v113 = *(&v189 + 1);
        *v112 = v189;
        *(v112 + 8) = v113;
        *(v106 + v110[7]) = 3;
        v114 = (v106 + v110[8]);
        v188 = COERCE_DOUBLE(sub_10000E5EC(&_swiftEmptyArrayStorage));
        sub_100003090(&qword_10005A6F8, "fS");
        State.init(wrappedValue:)();
        v115 = *(&v189 + 1);
        *v114 = v189;
        v114[1] = v115;
        v116 = v110[9];
        v188 = 0.0;
        State.init(wrappedValue:)();
        *(v106 + v116) = v189;
        v117 = (v106 + v110[10]);
        v188 = 0.0;
        State.init(wrappedValue:)();
        v118 = *(&v189 + 1);
        *v117 = v189;
        v117[1] = v118;
        v119 = *(v39 + *(v182 + 24) + 8);
        v120 = static ObservableObject.environmentStore.getter();
        v121 = (v106 + *(v156 + 36));
        *v121 = v120;
        v121[1] = v119;
        sub_100008DD0(v106, v158, &qword_10005AC58, &qword_100040400);
        swift_storeEnumTagMultiPayload();
        sub_10000E980();

        v122 = v159;
        _ConditionalContent<>.init(storage:)();
        sub_1000038DC(v106, &qword_10005AC58, &qword_100040400);
        sub_100008DD0(v122, v174, &qword_10005AC60, &qword_100040408);
        swift_storeEnumTagMultiPayload();
        sub_10000EBDC(&qword_10005ACB8, &qword_10005AC60, &qword_100040408, sub_10000E980);
        sub_10000EBDC(&qword_10005ACD0, &qword_10005AC30, &qword_1000403D8, sub_10000E8F4);
        v123 = v176;
        _ConditionalContent<>.init(storage:)();
        sub_100008DD0(v123, v179, &qword_10005AC48, &qword_1000403F0);
        swift_storeEnumTagMultiPayload();
        sub_10000EA3C();
        v124 = v173;
        _ConditionalContent<>.init(storage:)();
        sub_1000038DC(v123, &qword_10005AC48, &qword_1000403F0);
        sub_1000038DC(v122, &qword_10005AC60, &qword_100040408);
        v73 = v180;
        v125 = &v191;
LABEL_19:
        (*(v181 + 8))(*(v125 - 32), v73);
        v64 = &qword_10005AC68;
        v65 = &qword_100040410;
        sub_100008DD0(v124, v185, &qword_10005AC68, &qword_100040410);
        swift_storeEnumTagMultiPayload();
        sub_10000EB20();
        sub_10000EBDC(&qword_10005ACF0, &qword_10005AC68, &qword_100040410, sub_10000EA3C);
        _ConditionalContent<>.init(storage:)();
        v66 = v124;
        return sub_1000038DC(v66, v64, v65);
      }
    }
  }

  else
  {
    type metadata accessor for TripAppConfig(0);
    sub_10000EF3C(&qword_10005A6E0, type metadata accessor for TripAppConfig, &unk_1000424C0);
    EnvironmentObject.error()();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000E078(uint64_t a1)
{
  v2 = type metadata accessor for LayoutConfiguration(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10000ECD0(a1, &v9 - v6);
  sub_10000ECD0(v7, v5);
  sub_10000ED34();
  EnvironmentValues.subscript.setter();
  return sub_1000086B4(v7);
}

void sub_10000E148(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10000E1C8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_10000E288(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000E364(a1, v4);
}

unint64_t sub_10000E2CC(uint64_t a1)
{
  type metadata accessor for CAUAppUIConfiguration.Element();
  sub_10000EF3C(&qword_10005AD08, &type metadata accessor for CAUAppUIConfiguration.Element, &protocol conformance descriptor for CAUAppUIConfiguration.Element);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10000E42C(a1, v2);
}

unint64_t sub_10000E364(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100003290(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000323C(v8);
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

unint64_t sub_10000E42C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for CAUAppUIConfiguration.Element();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10000EF3C(&qword_10005AD10, &type metadata accessor for CAUAppUIConfiguration.Element, &protocol conformance descriptor for CAUAppUIConfiguration.Element);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10000E5EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003090(&qword_10005A468, &qword_10003FB90);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008DD0(v4, v13, &unk_10005A520, &unk_10003FC28);
      result = sub_10000E288(v13);
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
      *(v3[7] + 16 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_10000E718()
{
  result = qword_10005AC80;
  if (!qword_10005AC80)
  {
    sub_1000036BC(&qword_10005AC28, &qword_1000403D0);
    sub_10000EF3C(&qword_10005AC88, type metadata accessor for TripViewStandard, &unk_100041224);
    sub_10000E7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AC80);
  }

  return result;
}

unint64_t sub_10000E7D4()
{
  result = qword_10005AC90;
  if (!qword_10005AC90)
  {
    sub_1000036BC(&qword_10005AC98, &qword_100040498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AC90);
  }

  return result;
}

unint64_t sub_10000E838()
{
  result = qword_10005ACA0;
  if (!qword_10005ACA0)
  {
    sub_1000036BC(&qword_10005AC08, &qword_1000403B0);
    sub_10000EF3C(&qword_10005ACA8, type metadata accessor for TripViewPortraitNarrow, &unk_1000414B0);
    sub_10000E7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ACA0);
  }

  return result;
}

unint64_t sub_10000E8F4()
{
  result = qword_10005ACB0;
  if (!qword_10005ACB0)
  {
    sub_1000036BC(&qword_10005AC20, &qword_1000403C8);
    sub_10000E718();
    sub_10000E838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ACB0);
  }

  return result;
}

unint64_t sub_10000E980()
{
  result = qword_10005ACC0;
  if (!qword_10005ACC0)
  {
    sub_1000036BC(&qword_10005AC58, &qword_100040400);
    sub_10000EF3C(&qword_10005ACC8, type metadata accessor for TripViewLandscape, &unk_1000408F0);
    sub_10000E7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ACC0);
  }

  return result;
}

unint64_t sub_10000EA3C()
{
  result = qword_10005ACD8;
  if (!qword_10005ACD8)
  {
    sub_1000036BC(&qword_10005AC48, &qword_1000403F0);
    sub_10000EBDC(&qword_10005ACB8, &qword_10005AC60, &qword_100040408, sub_10000E980);
    sub_10000EBDC(&qword_10005ACD0, &qword_10005AC30, &qword_1000403D8, sub_10000E8F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ACD8);
  }

  return result;
}

unint64_t sub_10000EB20()
{
  result = qword_10005ACE0;
  if (!qword_10005ACE0)
  {
    sub_1000036BC(&qword_10005AC78, &qword_100040420);
    sub_10000EF3C(&qword_10005ACE8, type metadata accessor for TripViewHorizontalStack, &unk_10003FC80);
    sub_10000E7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ACE0);
  }

  return result;
}

uint64_t sub_10000EBDC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000036BC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000EC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003090(&qword_10005AC28, &qword_1000403D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000ECD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000ED34()
{
  result = qword_10005ACF8;
  if (!qword_10005ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ACF8);
  }

  return result;
}

uint64_t sub_10000ED88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000EDF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003090(&qword_10005AD00, &qword_1000404A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008DD0(v4, v13, &qword_10005D480, &qword_100040050);
      result = sub_10000E288(v13);
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
      result = sub_10000EF2C(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_10000EF2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000EF3C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000EF88()
{
  result = qword_10005AD18;
  if (!qword_10005AD18)
  {
    sub_1000036BC(&qword_10005AD20, &qword_1000404A8);
    sub_10000EB20();
    sub_10000EBDC(&qword_10005ACF0, &qword_10005AC68, &qword_100040410, sub_10000EA3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AD18);
  }

  return result;
}

void sub_10000F09C()
{
  v1 = v0;
  v2 = type metadata accessor for CAFUIAppPresentationMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TripsContentView(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TripViewController(0);
  v55.receiver = v1;
  v55.super_class = v9;
  objc_msgSendSuper2(&v55, "viewDidLoad");
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC4Trip18TripViewController_presentationMode, v2);
  sub_10000F8F4(v5, v8);
  v10 = objc_allocWithZone(sub_100003090(&qword_10005AD68, "2j"));
  v11 = UIHostingController.init(rootView:)();
  v12 = [v11 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  v14 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor:v14];

  [v1 addChildViewController:v11];
  v15 = [v11 view];
  if (!v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v15;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  v19 = [v11 view];
  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = v19;
  [v18 addSubview:v19];

  [v11 didMoveToParentViewController:v1];
  sub_100003090(&qword_10005D490, &unk_1000404E0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000404B0;
  v22 = [v11 view];
  if (!v22)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  v27 = [v25 safeAreaLayoutGuide];

  v28 = [v27 topAnchor];
  v29 = [v24 constraintEqualToAnchor:v28];

  *(v21 + 32) = v29;
  v30 = [v11 view];
  if (!v30)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v1 view];
  if (!v33)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v34 = v33;
  v35 = [v33 safeAreaLayoutGuide];

  v36 = [v35 bottomAnchor];
  v37 = [v32 constraintEqualToAnchor:v36];

  *(v21 + 40) = v37;
  v38 = [v11 view];
  if (!v38)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v1 view];
  if (!v41)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v42 = v41;
  v43 = [v41 safeAreaLayoutGuide];

  v44 = [v43 leadingAnchor];
  v45 = [v40 constraintEqualToAnchor:v44];

  *(v21 + 48) = v45;
  v46 = [v11 view];

  if (!v46)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v47 = [v46 trailingAnchor];

  v48 = [v1 view];
  if (v48)
  {
    v49 = v48;
    v50 = objc_opt_self();
    v51 = [v49 safeAreaLayoutGuide];

    v52 = [v51 trailingAnchor];
    v53 = [v47 constraintEqualToAnchor:v52];

    *(v21 + 56) = v53;
    sub_10000F8A8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v50 activateConstraints:isa];

    CAFSignpostEmit_Rendered();
    return;
  }

LABEL_25:
  __break(1u);
}

id sub_10000F720()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TripViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TripViewController(uint64_t a1)
{
  result = qword_10005AD58;
  if (!qword_10005AD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F818(uint64_t a1)
{
  result = type metadata accessor for CAFUIAppPresentationMode();
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

unint64_t sub_10000F8A8()
{
  result = qword_10005AD70;
  if (!qword_10005AD70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005AD70);
  }

  return result;
}

double sub_10000F8F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_10000FAB8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  State.init(wrappedValue:)();
  *(a2 + 48) = v8;
  *(a2 + 56) = *(&v8 + 1);
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10001F2E0(&_swiftEmptyArrayStorage);
  }

  sub_100003090(&qword_10005AD78, &unk_1000404F0);
  State.init(wrappedValue:)();
  *(a2 + 64) = v8;
  sub_100034CE8(0xD000000000000020, 0x8000000100042B50, 0xD000000000000017, 0x8000000100042B30, 25);
  v4 = *(type metadata accessor for TripsContentView(0) + 32);
  v5 = type metadata accessor for CAFUIAppPresentationMode();
  v6 = *(v5 - 8);
  (*(v6 + 16))(a2 + v4, a1, v5);
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  (*(v6 + 8))(a1, v5);
  result = *&v8;
  *(a2 + 24) = v8;
  *(a2 + 40) = v9;
  return result;
}

uint64_t sub_10000FAB8()
{
  if (qword_10005A398 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10000FB14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = type metadata accessor for TripsContentView(0);
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v46);
  v6 = type metadata accessor for CAFUIAppPresentationMode();
  v45 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003090(&qword_10005AE98, &qword_1000405B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v38 - v10);
  v12 = a1[7];
  LOBYTE(v48) = *(a1 + 48);
  v49 = v12;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.wrappedValue.getter();
  if (v52 != 1)
  {
    v36 = 1;
    return (*(v9 + 56))(a2, v36, 1, v8);
  }

  v42 = v4;
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v8;
  type metadata accessor for TripCAFManager(0);
  sub_100011D54(&qword_10005ADF0, type metadata accessor for TripCAFManager, &unk_100040838);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v48;
  if (!v48)
  {
LABEL_7:
    v36 = 1;
    v8 = v44;
    return (*(v9 + 56))(a2, v36, 1, v8);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v48)
  {

    goto LABEL_7;
  }

  v40 = v48;
  *v11 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for TripsTabView(0);
  v15 = *(v14 + 20);
  v41 = a2;
  v16 = (v11 + v15);
  type metadata accessor for TripModel(0);
  sub_100011D54(&qword_10005AEA0, type metadata accessor for TripModel, &unk_100040C70);
  v39 = v13;
  *v16 = ObservedObject.init(wrappedValue:)();
  v16[1] = v17;
  a2 = v41;
  v18 = v11 + *(v14 + 24);
  *v18 = sub_100037AE0;
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = v47;
  (*(v45 + 16))(v47, a1 + *(v46 + 32), v6);
  v20 = a1[5];
  v52 = *(a1 + 3);
  v53 = v20;
  sub_100003090(&qword_10005AEA8, &qword_100040678);
  State.projectedValue.getter();
  v21 = v48;
  v22 = v49;
  v23 = v50;
  v24 = v51;
  v25 = (v11 + *(sub_100003090(&qword_10005AEB0, &unk_100040680) + 36));
  v26 = sub_100003090(&qword_10005A828, &qword_100040A30);
  sub_10003B680(v19, v21, v22, v25 + *(v26 + 28), v23, v24);
  *v25 = swift_getKeyPath();
  type metadata accessor for TripAppConfig(0);
  sub_100011D54(&qword_10005A6E0, type metadata accessor for TripAppConfig, &unk_1000424C0);
  v27 = static ObservableObject.environmentStore.getter();
  v28 = (v11 + *(sub_100003090(&qword_10005AEB8, &qword_100040690) + 36));
  v29 = v40;
  *v28 = v27;
  v28[1] = v29;
  v30 = v43;
  sub_10001111C(a1, v43);
  v31 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v32 = swift_allocObject();
  sub_10001118C(v30, v32 + v31);
  *(v32 + ((v5 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v33 = static Alignment.center.getter();
  v8 = v44;
  v34 = (v11 + *(v44 + 36));
  *v34 = sub_1000115AC;
  v34[1] = v32;
  v34[2] = v33;
  v34[3] = v35;
  sub_100011658(v11, a2);
  v36 = 0;
  return (*(v9 + 56))(a2, v36, 1, v8);
}

id sub_1000100EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a1;
  v20 = a3;
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for TripsContentView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static Color.clear.getter();
  sub_10001111C(a2, v12);
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v6);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_10001118C(v12, v16 + v14);
  (*(v7 + 32))(v16 + v15, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v17 = v20;
  *(v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  *a4 = v13;
  a4[1] = sub_10001186C;
  a4[2] = v16;
  a4[3] = 0;
  a4[4] = 0;

  return v17;
}

void sub_1000102F8(uint64_t a1)
{
  GeometryProxy.size.getter();
  sub_100003090(&qword_10005AEA8, &qword_100040678);
  State.wrappedValue.setter();
  sub_10001CE40();
}

uint64_t sub_100010374()
{
  v1 = v0;
  v2 = type metadata accessor for TripsContentView(0);
  v13[0] = *(v2 - 8);
  v3 = *(v13[0] + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100003090(&qword_10005AE48, &qword_100040570);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  type metadata accessor for TripCAFManager(0);
  sub_100011D54(&qword_10005ADF0, type metadata accessor for TripCAFManager, &unk_100040838);
  StateObject.wrappedValue.getter();
  swift_beginAccess();
  sub_100003090(&qword_10005AE50, &qword_100040578);
  Published.projectedValue.getter();
  swift_endAccess();

  sub_10001111C(v0, v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v13[0] + 80) + 16) & ~*(v13[0] + 80);
  v9 = swift_allocObject();
  sub_10001118C(v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_100003894(&qword_10005AE58, &qword_10005AE48, &qword_100040570, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v7, v4);
  v11 = *(v1 + 64);
  v10 = *(v1 + 72);
  v13[5] = v11;
  v13[6] = v10;

  sub_100003090(&qword_10005AE60, &qword_100040580);
  State.wrappedValue.getter();
  AnyCancellable.store(in:)();

  v13[2] = v11;
  v13[3] = v10;
  v13[1] = v13[4];
  State.wrappedValue.setter();
}

void sub_100010698(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for TripsContentView(0);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003090(&qword_10005AE68, &qword_100040588);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_100003090(&qword_10005AE70, &qword_100040590);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v14 = sub_100003090(&qword_10005AE78, &qword_100040598);
  v15 = __chkstk_darwin(v14);
  v18 = &v29 - v17;
  v19 = *a1;
  if (*a1)
  {
    v30 = v15;
    v31 = v16;
    swift_beginAccess();
    v32 = v19;
    sub_100003090(&qword_10005B5F0, &unk_1000405A0);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_100008AD8();
    v20 = static OS_dispatch_queue.main.getter();
    v29 = v5;
    v21 = a2;
    v22 = v20;
    v38 = v20;
    v23 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    sub_100003894(&qword_10005AE80, &qword_10005AE70, &qword_100040590, &protocol conformance descriptor for Published<A>.Publisher);
    sub_100011D54(&qword_10005AE88, sub_100008AD8, &protocol conformance descriptor for OS_dispatch_queue);
    Publisher.receive<A>(on:options:)();
    sub_100011264(v9);

    (*(v11 + 8))(v13, v10);
    sub_10001111C(v21, v6);
    v24 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v25 = swift_allocObject();
    sub_10001118C(v6, v25 + v24);
    sub_100003894(&qword_10005AE90, &qword_10005AE78, &qword_100040598, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v26 = v30;
    Publisher<>.sink(receiveValue:)();

    (*(v31 + 8))(v18, v26);
    v28 = *(v21 + 72);
    v38 = *(v21 + 64);
    v27 = v38;
    v39 = v28;

    sub_100003090(&qword_10005AE60, &qword_100040580);
    State.wrappedValue.getter();
    AnyCancellable.store(in:)();

    v35 = v27;
    v36 = v28;
    v34 = v37;
    State.wrappedValue.setter();
  }
}

uint64_t sub_100010BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10000FB14(v2, a2);
  sub_10001111C(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_10001118C(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  result = sub_100003090(&qword_10005AE40, &qword_100040568);
  v9 = (a2 + *(result + 36));
  *v9 = sub_1000111F0;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t type metadata accessor for TripsContentView(uint64_t a1)
{
  result = qword_10005ADD8;
  if (!qword_10005ADD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CAFUIAppPresentationMode();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100010DF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CAFUIAppPresentationMode();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100010E94(uint64_t a1)
{
  sub_100010F60(319);
  if (v1 <= 0x3F)
  {
    sub_100010FF4(319);
    if (v2 <= 0x3F)
    {
      sub_10001104C();
      if (v3 <= 0x3F)
      {
        sub_10001109C(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CAFUIAppPresentationMode();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100010F60(uint64_t a1)
{
  if (!qword_10005ADE8)
  {
    type metadata accessor for TripCAFManager(255);
    sub_100011D54(&qword_10005ADF0, type metadata accessor for TripCAFManager, &unk_100040838);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10005ADE8);
    }
  }
}

void sub_100010FF4(uint64_t a1)
{
  if (!qword_10005ADF8)
  {
    type metadata accessor for CGSize(255);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_10005ADF8);
    }
  }
}

void sub_10001104C()
{
  if (!qword_10005A6E8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10005A6E8);
    }
  }
}

void sub_10001109C(uint64_t a1)
{
  if (!qword_10005AE00)
  {
    sub_1000036BC(&qword_10005AD78, &unk_1000404F0);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_10005AE00);
    }
  }
}

uint64_t sub_10001111C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripsContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001118C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripsContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011264(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005AE68, &qword_100040588);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000112CC()
{
  v1 = (type metadata accessor for TripsContentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_100011184(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v1[10];
  v6 = type metadata accessor for CAFUIAppPresentationMode();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000113F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TripsContentView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10001148C()
{
  v1 = (type metadata accessor for TripsContentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  sub_100011184(*(v0 + v3), *(v0 + v3 + 8));

  v6 = v1[10];
  v7 = type metadata accessor for CAFUIAppPresentationMode();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

id sub_1000115AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TripsContentView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000100EC(a1, v2 + v6, v7, a2);
}

uint64_t sub_100011658(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003090(&qword_10005AE98, &qword_1000405B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000116C8()
{
  v1 = (type metadata accessor for TripsContentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v0 + v3);
  sub_100011184(*v11, v11[1]);

  v12 = v1[10];
  v13 = type metadata accessor for CAFUIAppPresentationMode();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

void sub_10001186C()
{
  v1 = *(type metadata accessor for TripsContentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for GeometryProxy();

  sub_1000102F8(v0 + v2);
}

unint64_t sub_100011968()
{
  result = qword_10005AEC0;
  if (!qword_10005AEC0)
  {
    sub_1000036BC(&qword_10005AE40, &qword_100040568);
    sub_1000119F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AEC0);
  }

  return result;
}

unint64_t sub_1000119F4()
{
  result = qword_10005AEC8;
  if (!qword_10005AEC8)
  {
    sub_1000036BC(&qword_10005AED0, &qword_100040698);
    sub_100011A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AEC8);
  }

  return result;
}

unint64_t sub_100011A78()
{
  result = qword_10005AED8;
  if (!qword_10005AED8)
  {
    sub_1000036BC(&qword_10005AEE0, &qword_1000406A0);
    sub_100011AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AED8);
  }

  return result;
}

unint64_t sub_100011AFC()
{
  result = qword_10005AEE8;
  if (!qword_10005AEE8)
  {
    sub_1000036BC(&qword_10005AE98, &qword_1000405B0);
    sub_100011BB4();
    sub_100003894(&qword_10005AF20, &qword_10005AF28, &unk_1000406B0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AEE8);
  }

  return result;
}

unint64_t sub_100011BB4()
{
  result = qword_10005AEF0;
  if (!qword_10005AEF0)
  {
    sub_1000036BC(&qword_10005AEB8, &qword_100040690);
    sub_100011C6C();
    sub_100003894(&qword_10005AF10, &qword_10005AF18, &qword_1000406A8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AEF0);
  }

  return result;
}

unint64_t sub_100011C6C()
{
  result = qword_10005AEF8;
  if (!qword_10005AEF8)
  {
    sub_1000036BC(&qword_10005AEB0, &unk_100040680);
    sub_100011D54(&qword_10005AF00, type metadata accessor for TripsTabView, &unk_10004219C);
    sub_100003894(&qword_10005AF08, &qword_10005A828, &qword_100040A30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AEF8);
  }

  return result;
}

uint64_t sub_100011D54(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

id sub_100011DD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TripWindowManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100011E3C(uint64_t a1, char *a2)
{
  v5 = type metadata accessor for CAFUIAppPresentationMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(UIWindow) initWithWindowScene:a1];
  v10 = OBJC_IVAR____TtC4Trip17TripWindowManager_window;
  *&v2[OBJC_IVAR____TtC4Trip17TripWindowManager_window] = v9;
  [v9 setAutoresizesSubviews:1];
  [*&v2[v10] setHidden:0];
  [*&v2[v10] makeKeyAndVisible];
  v11 = type metadata accessor for TripWindowManager();
  v23.receiver = v2;
  v23.super_class = v11;
  v12 = objc_msgSendSuper2(&v23, "init");
  v13 = *&v12[OBJC_IVAR____TtC4Trip17TripWindowManager_window];
  v14 = *(v6 + 16);
  v14(v8, a2, v5);
  v15 = type metadata accessor for TripViewController(0);
  v16 = objc_allocWithZone(v15);
  v14(&v16[OBJC_IVAR____TtC4Trip18TripViewController_presentationMode], v8, v5);
  v22.receiver = v16;
  v22.super_class = v15;
  v17 = v12;
  v18 = v13;
  v19 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", 0, 0);
  v20 = *(v6 + 8);
  v20(v8, v5);
  [v18 setRootViewController:v19];

  v20(a2, v5);
  return v17;
}

uint64_t sub_10001206C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003090(&qword_10005A650, &unk_10003FC50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001213C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003090(&qword_10005A650, &unk_10003FC50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TripActionButton(uint64_t a1)
{
  result = qword_10005AFB8;
  if (!qword_10005AFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012238(uint64_t a1)
{
  sub_1000122D4();
  if (v1 <= 0x3F)
  {
    sub_100003DC4(319);
    if (v2 <= 0x3F)
    {
      sub_10000A460();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000122D4()
{
  if (!qword_10005AFC8)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_10005AFC8);
    }
  }
}

uint64_t sub_100012340@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TripActionButton(0);
  sub_1000133E0(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100013450(v9, a1, type metadata accessor for LayoutConfiguration);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100012514@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v23 = type metadata accessor for PlainButtonStyle();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TripActionButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_100003090(&qword_10005B000, &unk_100040748);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  sub_100012CBC(v2, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_100013450(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for TripActionButton);
  v25 = v2;
  sub_100003090(&qword_10005B008, &qword_100040758);
  sub_100012F04();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100003894(&qword_10005B078, &qword_10005B000, &unk_100040748, &protocol conformance descriptor for Button<A>);
  sub_100013300();
  v16 = v23;
  v15 = v24;
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v5, v16);
  (*(v10 + 8))(v12, v9);
  v17 = *(v2 + 8);
  v18 = *(v2 + 16);
  v27 = *v2;
  v28 = v17;
  v29 = v18;
  sub_100003090(&qword_10005B088, &qword_1000407A0);
  Binding.wrappedValue.getter();
  LOBYTE(v2) = v26;
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  result = sub_100003090(&qword_10005B090, &qword_1000407D8);
  v22 = (v15 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_1000133C0;
  v22[2] = v20;
  return result;
}

uint64_t sub_10001289C(uint64_t a1)
{
  sub_100034CE8(0xD000000000000017, 0x8000000100042BF0, 2036625250, 0xE400000000000000, 16);
  v2 = type metadata accessor for TripActionButton(0);
  return (*(a1 + *(v2 + 24)))();
}

uint64_t sub_100012904@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LayoutConfiguration(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v10 = Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v9, v6);
  *&v32 = v10;
  View.bold(_:)();

  v11 = a1 + *(sub_100003090(&qword_10005B060, &unk_100040780) + 36);
  *v11 = 0;
  *(v11 + 8) = 1;
  sub_100012340(v5);
  sub_100008A08(&v5[*(v3 + 32)], &v32);
  sub_1000086B4(v5);
  v12 = *(&v33 + 1);
  v13 = v34;
  sub_100008A6C(&v32, *(&v33 + 1));
  v14 = (*(v13 + 216))(v12, v13);
  KeyPath = swift_getKeyPath();
  v16 = (a1 + *(sub_100003090(&qword_10005B050, &qword_100040778) + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  sub_1000085F8(&v32);
  LOBYTE(v14) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = a1 + *(sub_100003090(&qword_10005B040, &qword_100040770) + 36);
  *v25 = v14;
  *(v25 + 8) = v18;
  *(v25 + 16) = v20;
  *(v25 + 24) = v22;
  *(v25 + 32) = v24;
  *(v25 + 40) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = (a1 + *(sub_100003090(&qword_10005B030, &qword_100040768) + 36));
  v27 = v33;
  *v26 = v32;
  v26[1] = v27;
  v26[2] = v34;
  v28 = [objc_opt_self() tertiarySystemBackgroundColor];
  Color.init(_:)();
  v29 = Color.opacity(_:)();

  LOBYTE(v14) = static Edge.Set.all.getter();
  v30 = a1 + *(sub_100003090(&qword_10005B020, &qword_100040760) + 36);
  *v30 = v29;
  *(v30 + 8) = v14;
  result = sub_100003090(&qword_10005B008, &qword_100040758);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100012CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripActionButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012D20()
{
  v1 = type metadata accessor for TripActionButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v6 - 8) + 8))(v5, v6);
    v7 = type metadata accessor for LayoutConfiguration(0);

    sub_1000085F8((v5 + *(v7 + 24)));
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100012E9C()
{
  v1 = *(type metadata accessor for TripActionButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10001289C(v2);
}

unint64_t sub_100012F04()
{
  result = qword_10005B010;
  if (!qword_10005B010)
  {
    sub_1000036BC(&qword_10005B008, &qword_100040758);
    sub_100012FBC();
    sub_100003894(&qword_10005B068, &qword_10005B070, &qword_100040798, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B010);
  }

  return result;
}

unint64_t sub_100012FBC()
{
  result = qword_10005B018;
  if (!qword_10005B018)
  {
    sub_1000036BC(&qword_10005B020, &qword_100040760);
    sub_100013074();
    sub_100003894(&qword_10005AB38, &qword_10005AB40, &qword_100040790, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B018);
  }

  return result;
}

unint64_t sub_100013074()
{
  result = qword_10005B028;
  if (!qword_10005B028)
  {
    sub_1000036BC(&qword_10005B030, &qword_100040768);
    sub_100013100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B028);
  }

  return result;
}

unint64_t sub_100013100()
{
  result = qword_10005B038;
  if (!qword_10005B038)
  {
    sub_1000036BC(&qword_10005B040, &qword_100040770);
    sub_10001318C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B038);
  }

  return result;
}

unint64_t sub_10001318C()
{
  result = qword_10005B048;
  if (!qword_10005B048)
  {
    sub_1000036BC(&qword_10005B050, &qword_100040778);
    sub_100013244();
    sub_100003894(&qword_10005AAE0, &qword_10005AAE8, &qword_1000402A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B048);
  }

  return result;
}

unint64_t sub_100013244()
{
  result = qword_10005B058;
  if (!qword_10005B058)
  {
    sub_1000036BC(&qword_10005B060, &unk_100040780);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B058);
  }

  return result;
}

unint64_t sub_100013300()
{
  result = qword_10005B080;
  if (!qword_10005B080)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B080);
  }

  return result;
}

uint64_t sub_100013358@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000133E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000134BC()
{
  result = qword_10005B098;
  if (!qword_10005B098)
  {
    sub_1000036BC(&qword_10005B090, &qword_1000407D8);
    sub_1000036BC(&qword_10005B000, &unk_100040748);
    type metadata accessor for PlainButtonStyle();
    sub_100003894(&qword_10005B078, &qword_10005B000, &unk_100040748, &protocol conformance descriptor for Button<A>);
    sub_100013300();
    swift_getOpaqueTypeConformance2();
    sub_100003894(&qword_10005B0A0, &qword_10005B0A8, &qword_100040810, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B098);
  }

  return result;
}

uint64_t sub_100013604()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100013678()
{
  if (qword_10005A3A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10005B0B0;
  sub_100014060(0, &qword_10005B200, CAFCarManager_ptr);
  sub_10001401C(&qword_10005B208, &qword_10005B200, CAFCarManager_ptr, &protocol conformance descriptor for CAFCarManager);
  v1 = v0;
  v2 = CAFObserved<>.observable.getter();

  type metadata accessor for TripCAFManager(0);
  swift_allocObject();
  v3 = sub_100013D0C(v2);

  qword_10005D5A0 = v3;
}

id sub_100013770()
{
  result = [objc_allocWithZone(CAFCarManager) init];
  qword_10005B0B0 = result;
  return result;
}

uint64_t sub_1000137A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  _StringGuts.grow(_:)(20);

  sub_100003090(&qword_10005B220, &qword_1000408C0);
  sub_10001401C(&qword_10005B228, &qword_10005B230, CAFCar_ptr, &protocol conformance descriptor for NSObject);
  v3._countAndFlagsBits = Optional<A>.description.getter();
  String.append(_:)(v3);

  sub_100034D00(0xD000000000000012, 0x8000000100042C40, 0xD000000000000011, 0x8000000100042C60, 24);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v2)
    {
      sub_100014060(0, &qword_10005B230, CAFCar_ptr);
      sub_10001401C(&qword_10005B238, &qword_10005B230, CAFCar_ptr, &protocol conformance descriptor for CAFCar);
      v5 = CAFObserved<>.observable.getter();
      v6 = objc_allocWithZone(type metadata accessor for TripModel(0));
      sub_10001AAE8(v5);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100013994()
{
  v1 = OBJC_IVAR____TtC4Trip14TripCAFManager__model;
  v2 = sub_100003090(&qword_10005AE50, &qword_100040578);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for TripCAFManager(uint64_t a1)
{
  result = qword_10005B0F8;
  if (!qword_10005B0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013AB0(uint64_t a1)
{
  sub_100013B5C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100013B5C(uint64_t a1)
{
  if (!qword_10005B108)
  {
    sub_1000036BC(&unk_10005B110, "Vh");
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10005B108);
    }
  }
}

uint64_t sub_100013BCC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TripCAFManager(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_100013C0C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100013C90(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

uint64_t sub_100013D0C(void *a1)
{
  v2 = v1;
  v4 = sub_100003090(&qword_10005B210, &qword_1000408B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - v6;
  v8 = sub_100003090(&qword_10005AE50, &qword_100040578);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v15 - v10;
  v12 = OBJC_IVAR____TtC4Trip14TripCAFManager__model;
  v15[1] = 0;
  sub_100003090(&unk_10005B110, "Vh");
  Published.init(initialValue:)();
  (*(v9 + 32))(v2 + v12, v11, v8);
  *(v2 + OBJC_IVAR____TtC4Trip14TripCAFManager_cancellables) = &_swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC4Trip14TripCAFManager_carManager) = a1;
  v13 = a1;
  dispatch thunk of CAFCarManagerObservable.$currentCar.getter();
  swift_allocObject();
  swift_weakInit();
  sub_100013FB8();
  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_100013F78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100013FB8()
{
  result = qword_10005B218;
  if (!qword_10005B218)
  {
    sub_1000036BC(&qword_10005B210, &qword_1000408B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B218);
  }

  return result;
}

uint64_t sub_10001401C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100014060(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014060(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000140BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100014198(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TripViewLandscape(uint64_t a1)
{
  result = qword_10005B298;
  if (!qword_10005B298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000142A8(uint64_t a1)
{
  sub_100003DC4(319);
  if (v1 <= 0x3F)
  {
    sub_100003E1C(319);
    if (v2 <= 0x3F)
    {
      sub_100003FA8(319, &qword_10005A6E8, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_100003F44(319);
        if (v4 <= 0x3F)
        {
          sub_100003FA8(319, &qword_10005A700, &type metadata for Int);
          if (v5 <= 0x3F)
          {
            sub_100003FA8(319, &unk_10005A708, &type metadata for CGFloat);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000143E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100008DD0(v2, &v13 - v9, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100017E00(v10, a1, type metadata accessor for LayoutConfiguration);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000145CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003090(&qword_10005A870, &qword_100040B80);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  sub_1000143E8(a1);
  v5 = a1 + *(type metadata accessor for LayoutConfiguration(0) + 24);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  sub_100008C34(v5, v6);
  (*(v7 + 24))(v6, v7, 55.0);
  static Font.Weight.semibold.getter();
  v8 = type metadata accessor for Font.Design();
  v9 = *(*(v8 - 8) + 56);
  v9(v4, 1, 1, v8);
  v10 = static Font.system(size:weight:design:)();
  sub_1000038DC(v4, &qword_10005A870, &qword_100040B80);
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  sub_100008C34(v5, v11);
  (*(v12 + 152))(v10, v11, v12);
  static Font.Weight.semibold.getter();
  v9(v4, 1, 1, v8);
  v13 = static Font.system(size:weight:design:)();
  sub_1000038DC(v4, &qword_10005A870, &qword_100040B80);
  v14 = *(v5 + 24);
  v15 = *(v5 + 32);
  sub_100008C34(v5, v14);
  return (*(v15 + 200))(v13, v14, v15);
}

void *sub_1000147E8()
{
  if (*(v0 + *(type metadata accessor for TripViewLandscape(0) + 20)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    v1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      while (1)
      {
        v2 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_18;
          }

LABEL_10:
          if (*(v3 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType))
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v2;
          if (v4 == v1)
          {
            goto LABEL_18;
          }
        }

        if (v2 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v1 = _CocoaArrayWrapper.endIndex.getter();
        if (!v1)
        {
          goto LABEL_18;
        }
      }

      v3 = *(v6 + 8 * v2 + 32);

      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:

    return &_swiftEmptyArrayStorage;
  }

  else
  {
    type metadata accessor for CardModel(0);
    sub_100017F7C(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void *sub_100014A00()
{
  v22 = type metadata accessor for TripViewLandscape(0);
  v1 = (v0 + v22[10]);
  v2 = *v1;
  v3 = v1[1];
  *&v26[0] = *v1;
  *(&v26[0] + 1) = v3;
  sub_100003090(&qword_10005A860, &qword_100040B30);
  result = State.wrappedValue.getter();
  if (v24 > 0.0)
  {
    v5 = sub_1000147E8();
    v6 = v5;
    v21 = v0;
    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v8 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return sub_10000323C(v26);
          }

LABEL_8:
          type metadata accessor for CardCellConfiguration(0);
          sub_100017F7C(&qword_10005A868, type metadata accessor for CardCellConfiguration, &unk_1000419B4);

          AnyHashable.init<A>(_:)();
          v25 = *(v0 + v22[8]);
          sub_100003090(&qword_10005A858, &unk_10003FE20);
          State.wrappedValue.getter();
          if (!*(v23 + 16))
          {
            goto LABEL_15;
          }

          v10 = sub_10000E288(v26);
          if ((v11 & 1) == 0)
          {
            goto LABEL_15;
          }

          v12 = *(*(v23 + 56) + 16 * v10 + 8);
          sub_10000323C(v26);

          *&v26[0] = v2;
          *(&v26[0] + 1) = v3;
          State.wrappedValue.getter();
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v26[0]) = v25 < v12;
          static Published.subscript.setter();
          ++v8;
          if (v9 == v7)
          {
            goto LABEL_18;
          }
        }

        if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

LABEL_18:

    v13 = sub_1000147E8();
    v14 = v13;
    v15 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v13 >> 62)
    {
LABEL_35:
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    v18 = 0;
    while (v16 != v17)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v17, 1))
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v17 >= *(v15 + 16))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (__OFADD__(v17, 1))
        {
          goto LABEL_30;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v19 = (v26[0] & 1) == 0;
      ++v17;
      v20 = __OFADD__(v18, v19);
      v18 += v19;
      if (v20)
      {
        goto LABEL_34;
      }
    }

    v26[0] = *(v21 + v22[9]);
    sub_100003090(&qword_10005A820, &qword_100040A00);
    return State.wrappedValue.setter();
  }

  return result;
}

double sub_100014DD8@<D0>(uint64_t *a1@<X0>, void (**a2)(char a1)@<X8>)
{
  v62 = a2;
  v56 = type metadata accessor for OpacityTransition();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for MoveTransition();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100003090(&qword_10005A770, &unk_100041510);
  v52 = *(v55 - 8);
  v6 = __chkstk_darwin(v55);
  v49 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v49 - v8;
  v64 = sub_100003090(&qword_10005A778, &unk_10003FCF0);
  v59 = *(v64 - 8);
  __chkstk_darwin(v64);
  v11 = &v49 - v10;
  v12 = sub_100003090(&qword_10005A780, &qword_100041520);
  v13 = __chkstk_darwin(v12 - 8);
  v61 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v63 = &v49 - v15;
  v16 = sub_100003090(&qword_10005B300, &unk_100040960);
  v17 = __chkstk_darwin(v16 - 8);
  v60 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v49 - v19;
  v21 = type metadata accessor for TripViewLandscape(0);
  v22 = v21 - 8;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_100017BDC(a1, &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v58 = swift_allocObject();
  sub_100017E00(&v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v58 + v25, type metadata accessor for TripViewLandscape);
  *v20 = static VerticalAlignment.center.getter();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v26 = *(sub_100003090(&qword_10005B308, &unk_100040970) + 44);
  v57 = v20;
  sub_100015730(a1, &v20[v26]);
  v27 = a1 + *(v22 + 32);
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v65) = v28;
  v66 = v29;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.wrappedValue.getter();
  v30 = 1;
  if (v69 == 1)
  {
    *v11 = static HorizontalAlignment.center.getter();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v31 = sub_100003090(&qword_10005A7B8, &unk_10003FD30);
    sub_100017440(a1, &v11[*(v31 + 44)]);
    *&v11[*(sub_100003090(&qword_10005A7C0, &unk_100040990) + 36)] = 0x3FF0000000000000;
    MoveTransition.init(edge:)();
    v32 = v51;
    OpacityTransition.init()();
    v33 = sub_100017F7C(&qword_10005A7C8, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
    v34 = sub_100017F7C(&qword_10005A7D0, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v35 = v53;
    v36 = v56;
    Transition.combined<A>(with:)();
    (*(v54 + 8))(v32, v36);
    (*(v50 + 8))(v5, v35);
    v37 = v52;
    v38 = v55;
    (*(v52 + 16))(v49, v9, v55);
    v65 = v35;
    v66 = v36;
    v67 = v33;
    v68 = v34;
    swift_getOpaqueTypeConformance2();
    v39 = AnyTransition.init<A>(_:)();
    (*(v37 + 8))(v9, v38);
    v40 = v63;
    *&v11[*(v64 + 36)] = v39;
    sub_100008944(v11, v40, &qword_10005A778, &unk_10003FCF0);
    v30 = 0;
  }

  v41 = v63;
  (*(v59 + 56))(v63, v30, 1, v64);
  v42 = v57;
  v43 = v60;
  sub_100008DD0(v57, v60, &qword_10005B300, &unk_100040960);
  v44 = v61;
  sub_100008DD0(v41, v61, &qword_10005A780, &qword_100041520);
  v45 = v62;
  v46 = v58;
  *v62 = sub_100017C44;
  v45[1] = v46;
  v47 = sub_100003090(&qword_10005B310, &unk_100040980);
  sub_100008DD0(v43, v45 + *(v47 + 48), &qword_10005B300, &unk_100040960);
  sub_100008DD0(v44, v45 + *(v47 + 64), &qword_10005A780, &qword_100041520);

  sub_1000038DC(v41, &qword_10005A780, &qword_100041520);
  sub_1000038DC(v42, &qword_10005B300, &unk_100040960);
  sub_1000038DC(v44, &qword_10005A780, &qword_100041520);
  sub_1000038DC(v43, &qword_10005B300, &unk_100040960);

  return result;
}

void sub_100015588(char a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 1)
    {

      sub_100009AD4();
    }

    else
    {

      sub_100009ADC();
    }
  }

  else
  {
    v2 = *(a2 + *(type metadata accessor for TripViewLandscape(0) + 20));
    if (v2)
    {
      v3 = *(*v2 + 280);

      LOBYTE(v3) = v3(v4);

      if (v3)
      {
        v5 = static Animation.easeInOut(duration:)();
        __chkstk_darwin(v5);
        withAnimation<A>(_:_:)();
      }
    }

    else
    {
      type metadata accessor for CardModel(0);
      sub_100017F7C(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

uint64_t sub_100015730@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = type metadata accessor for TripViewLandscape(0);
  v95 = *(v3 - 8);
  __chkstk_darwin(v3);
  v98 = v4;
  v99 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for MeasurementList(0);
  __chkstk_darwin(v87);
  v6 = (&v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = sub_100003090(&qword_10005B318, &unk_1000409B0);
  __chkstk_darwin(v85);
  v89 = &v84 - v7;
  v88 = sub_100003090(&qword_10005B320, &unk_100041550);
  __chkstk_darwin(v88);
  v91 = &v84 - v8;
  v90 = sub_100003090(&qword_10005B328, &unk_1000409C0);
  __chkstk_darwin(v90);
  v94 = &v84 - v9;
  v93 = sub_100003090(&qword_10005B330, &qword_100041560);
  v10 = __chkstk_darwin(v93);
  v97 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v92 = &v84 - v13;
  __chkstk_darwin(v12);
  v96 = &v84 - v14;
  v101 = sub_100003090(&qword_10005A878, &qword_1000409D0);
  __chkstk_darwin(v101);
  v16 = &v84 - v15;
  v17 = sub_100003090(&qword_10005B338, &qword_1000409D8);
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v20 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v20);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100003090(&qword_10005B340, &qword_1000409E0);
  __chkstk_darwin(v23);
  v25 = &v84 - v24;
  v26 = sub_100003090(&qword_10005B348, &unk_1000409E8);
  v27 = __chkstk_darwin(v26 - 8);
  __chkstk_darwin(v27);
  v102 = v3;
  v103 = &v84 - v29;
  v30 = *(a1 + *(v3 + 20));
  if (v30)
  {
    v86 = v28;
    if (*(v30 + OBJC_IVAR____TtC4Trip9CardModel_cardLayoutType))
    {
      *v16 = static HorizontalAlignment.center.getter();
      *(v16 + 1) = 0;
      v16[16] = 1;
      v31 = sub_100003090(&qword_10005A890, &qword_10003FEE0);
      sub_100016FCC(a1, &v16[*(v31 + 44)]);
      sub_100008DD0(v16, v19, &qword_10005A878, &qword_1000409D0);
      swift_storeEnumTagMultiPayload();
      sub_100017D40();
      sub_100003894(&qword_10005A8C0, &qword_10005A878, &qword_1000409D0, &protocol conformance descriptor for VStack<A>);
      _ConditionalContent<>.init(storage:)();
      v32 = v16;
      v33 = &qword_10005A878;
      v34 = &qword_1000409D0;
    }

    else
    {
      *v25 = static HorizontalAlignment.leading.getter();
      *(v25 + 1) = 0;
      v25[16] = 1;
      v35 = sub_100003090(&qword_10005B370, &qword_100040A40);
      sub_1000163F8(a1, &v25[*(v35 + 44)]);
      sub_1000143E8(v22);
      v36 = &v22[*(v20 + 20)];
      v37 = *(v36 + 1);
      *&v107 = *v36;
      *(&v107 + 1) = v37;
      v108 = *(v36 + 1);
      sub_100003090(&qword_10005A7E0, &unk_1000409A0);
      Binding.wrappedValue.getter();
      sub_1000086B4(v22);
      static Alignment.leading.getter();
      _FrameLayout.init(width:height:alignment:)();
      v38 = &v25[*(v23 + 36)];
      v39 = v108;
      *v38 = v107;
      *(v38 + 1) = v39;
      *(v38 + 2) = v109;
      sub_100008DD0(v25, v19, &qword_10005B340, &qword_1000409E0);
      swift_storeEnumTagMultiPayload();
      sub_100017D40();
      sub_100003894(&qword_10005A8C0, &qword_10005A878, &qword_1000409D0, &protocol conformance descriptor for VStack<A>);
      _ConditionalContent<>.init(storage:)();
      v32 = v25;
      v33 = &qword_10005B340;
      v34 = &qword_1000409E0;
    }

    sub_1000038DC(v32, v33, v34);
    v40 = sub_1000147E8();
    v41 = v102;
    v42 = (a1 + *(v102 + 36));
    v43 = *v42;
    v44 = v42[1];
    v105 = *v42;
    v106 = v44;
    sub_100003090(&qword_10005A820, &qword_100040A00);
    v45 = &v105;
    State.wrappedValue.getter();
    if (!v104)
    {
      goto LABEL_8;
    }

    v105 = v43;
    v106 = v44;
    State.wrappedValue.getter();
    v46 = v104;
    if ((v104 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        __break(1u);
LABEL_8:
        v45 = a1;
        v47 = sub_1000147E8();
        if (!(v47 >> 62))
        {
          break;
        }

        v45 = v47;
        v46 = _CocoaArrayWrapper.endIndex.getter();

        if ((v46 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }
      }

      v46 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

LABEL_10:
    v48 = v40 >> 62;
    if (!(v40 >> 62))
    {
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v46)
      {
LABEL_12:
        if ((v40 & 0xC000000000000001) != 0 && v46)
        {
          type metadata accessor for CardCellConfiguration(0);

          v49 = 0;
          do
          {
            v50 = v49 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v49);
            v49 = v50;
          }

          while (v46 != v50);
        }

        else
        {
        }

        if (v48)
        {
          v45 = _CocoaArrayWrapper.subscript.getter();
          v44 = v51;
          v48 = v52;
          v46 = v53;

          if (v46)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v45 = (v40 & 0xFFFFFFFFFFFFFF8);
          v44 = (v40 & 0xFFFFFFFFFFFFFF8) + 32;
          v46 = (2 * v46) | 1;
          if (v46)
          {
LABEL_23:
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v56 = swift_dynamicCastClass();
            if (!v56)
            {
              swift_unknownObjectRelease();
              v56 = &_swiftEmptyArrayStorage;
            }

            v57 = v56[2];

            if (!__OFSUB__(v46 >> 1, v48))
            {
              if (v57 == (v46 >> 1) - v48)
              {
                v55 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                if (v55)
                {
LABEL_30:
                  v58 = *(a1 + *(v41 + 28));
                  v59 = static Alignment.center.getter();
                  v61 = v60;
                  *v6 = swift_getKeyPath();
                  sub_100003090(&qword_10005A798, &qword_10003FD10);
                  swift_storeEnumTagMultiPayload();
                  v62 = v87;
                  *(v6 + *(v87 + 20)) = v55;
                  *(v6 + *(v62 + 24)) = v58;
                  v63 = (v6 + *(v62 + 28));
                  *v63 = v59;
                  v63[1] = v61;
                  v64 = v89;
                  v65 = &v89[*(v85 + 36)];
                  v66 = sub_100003090(&qword_10005A828, &qword_100040A30);
                  sub_1000145CC(v65 + *(v66 + 28));
                  *v65 = swift_getKeyPath();
                  sub_100017E00(v6, v64, type metadata accessor for MeasurementList);
                  v67 = v91;
                  sub_100008944(v64, v91, &qword_10005B318, &unk_1000409B0);
                  *(v67 + *(v88 + 36)) = 0;
                  v68 = v99;
                  sub_100017BDC(a1, v99);
                  v69 = (*(v95 + 80) + 16) & ~*(v95 + 80);
                  v70 = swift_allocObject();
                  sub_100017E00(v68, v70 + v69, type metadata accessor for TripViewLandscape);
                  v71 = v67;
                  v72 = v94;
                  sub_100008944(v71, v94, &qword_10005B320, &unk_100041550);
                  v73 = (v72 + *(v90 + 36));
                  *v73 = sub_100017E68;
                  v73[1] = v70;
                  v73[2] = 0;
                  v73[3] = 0;
                  sub_100017BDC(a1, v68);
                  v74 = swift_allocObject();
                  sub_100017E00(v68, v74 + v69, type metadata accessor for TripViewLandscape);
                  v75 = v92;
                  sub_100008944(v72, v92, &qword_10005B328, &unk_1000409C0);
                  v76 = (v75 + *(v93 + 36));
                  *v76 = sub_100017EC8;
                  v76[1] = v74;
                  v77 = v96;
                  sub_100008944(v75, v96, &qword_10005B330, &qword_100041560);
                  v78 = v103;
                  v79 = v86;
                  sub_100008DD0(v103, v86, &qword_10005B348, &unk_1000409E8);
                  v80 = v97;
                  sub_100008DD0(v77, v97, &qword_10005B330, &qword_100041560);
                  v81 = v100;
                  sub_100008DD0(v79, v100, &qword_10005B348, &unk_1000409E8);
                  v82 = sub_100003090(&qword_10005B368, &qword_100040A38);
                  sub_100008DD0(v80, v81 + *(v82 + 48), &qword_10005B330, &qword_100041560);
                  sub_1000038DC(v77, &qword_10005B330, &qword_100041560);
                  sub_1000038DC(v78, &qword_10005B348, &unk_1000409E8);
                  sub_1000038DC(v80, &qword_10005B330, &qword_100041560);
                  return sub_1000038DC(v79, &qword_10005B348, &unk_1000409E8);
                }

                v55 = &_swiftEmptyArrayStorage;
LABEL_29:
                swift_unknownObjectRelease();
                goto LABEL_30;
              }

              goto LABEL_38;
            }

LABEL_37:
            __break(1u);
LABEL_38:
            swift_unknownObjectRelease_n();
          }
        }

        sub_10002E060(v45, v44, v48, v46);
        v55 = v54;
        goto LABEL_29;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v40 < 0)
    {
      v45 = v40;
    }

    else
    {
      v45 = (v40 & 0xFFFFFFFFFFFFFF8);
    }

    if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= v46)
      {
        goto LABEL_12;
      }

      goto LABEL_36;
    }

    __break(1u);
  }

  type metadata accessor for CardModel(0);
  sub_100017F7C(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000163F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v110 = a1;
  v2 = sub_100003090(&qword_10005B378, &qword_100040A48);
  v107 = *(v2 - 8);
  v108 = v2;
  __chkstk_darwin(v2);
  v104 = &v92 - v3;
  v106 = type metadata accessor for TripViewLandscape(0);
  v96 = *(v106 - 8);
  __chkstk_darwin(v106);
  v97 = v4;
  v98 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_100003090(&qword_10005A910, &qword_100040A50);
  v5 = __chkstk_darwin(v99);
  v103 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v102 = &v92 - v7;
  v95 = sub_100003090(&qword_10005B380, &qword_100040A58);
  v8 = __chkstk_darwin(v95);
  v101 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v92 - v10;
  v11 = type metadata accessor for CAFUIAppPresentationMode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for EnvironmentValues();
  v15 = *(v105 - 8);
  __chkstk_darwin(v105);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  __chkstk_darwin(v18);
  v20 = &v92 - v19;
  v93 = type metadata accessor for LayoutConfiguration(0);
  v21 = __chkstk_darwin(v93);
  v92 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v92 - v23;
  sub_100008DD0(v110, v20, &qword_10005A798, &qword_10003FD10);
  v94 = v18;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100017E00(v20, v24, type metadata accessor for LayoutConfiguration);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v15 + 8))(v17, v105);
  }

  (*(v12 + 16))(v14, v24, v11);
  v26 = (*(v12 + 88))(v14, v11);
  if (v26 == enum case for CAFUIAppPresentationMode.console(_:))
  {
    sub_1000086B4(v24);
    return (*(v107 + 56))(v109, 1, 1, v108);
  }

  if (v26 == enum case for CAFUIAppPresentationMode.clusterDCA(_:) || v26 == enum case for CAFUIAppPresentationMode.clusterPopover(_:) || v26 == enum case for CAFUIAppPresentationMode.widget(_:))
  {
    sub_1000086B4(v24);
    v27 = v110;
    v28 = *(v110 + *(v106 + 20));
    if (v28)
    {
      if (*(v28 + OBJC_IVAR____TtC4Trip9CardModel_showsTitle))
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        sub_1000089B4();
        v29 = Text.init<A>(_:)();
        v31 = v30;
        v33 = v32;
        v34 = v92;
        sub_1000143E8(v92);
        sub_100008A08(v34 + *(v93 + 24), &v116);
        sub_1000086B4(v34);
        v35 = *(&v117 + 1);
        v36 = v118;
        sub_100008A6C(&v116, *(&v117 + 1));
        (*(v36 + 120))(v35, v36);
        v37 = Text.font(_:)();
        v39 = v38;
        v41 = v40;
        v43 = v42;
        sub_100008AB0(v29, v31, v33 & 1);

        sub_1000085F8(&v116);
        static Alignment.top.getter();
        _FrameLayout.init(width:height:alignment:)();
        v44 = v41 & 1;
        v114 = v41 & 1;
        KeyPath = swift_getKeyPath();
        LOBYTE(v111) = 0;
        v46 = sub_100003090(&qword_10005B388, &qword_100040AD8);
        v47 = v100;
        v48 = &v100[*(v46 + 36)];
        v49 = *(sub_100003090(&qword_10005A8F0, &qword_100040AE0) + 28);
        v50 = enum case for Text.TruncationMode.tail(_:);
        v51 = type metadata accessor for Text.TruncationMode();
        (*(*(v51 - 8) + 104))(v48 + v49, v50, v51);
        *v48 = swift_getKeyPath();
        *v47 = v37;
        *(v47 + 8) = v39;
        *(v47 + 16) = v44;
        *(v47 + 24) = v43;
        v52 = v117;
        *(v47 + 32) = v116;
        *(v47 + 48) = v52;
        *(v47 + 64) = v118;
        *(v47 + 80) = KeyPath;
        *(v47 + 88) = 2;
        *(v47 + 96) = 0;
        LOBYTE(v37) = static Edge.Set.trailing.getter();
        EdgeInsets.init(_all:)();
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v61 = v47 + *(sub_100003090(&qword_10005B390, &qword_100040B18) + 36);
        *v61 = v37;
        *(v61 + 8) = v54;
        *(v61 + 16) = v56;
        *(v61 + 24) = v58;
        *(v61 + 32) = v60;
        *(v61 + 40) = 0;
        LOBYTE(v37) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v62 = v47 + *(v95 + 36);
        *v62 = v37;
        *(v62 + 8) = v63;
        *(v62 + 16) = v64;
        *(v62 + 24) = v65;
        *(v62 + 32) = v66;
        *(v62 + 40) = 0;
        v67 = v27 + *(v106 + 24);
        v68 = *v67;
        v69 = *(v67 + 8);
        v114 = v68;
        v115 = v69;
        sub_100003090(&qword_10005A7A8, &qword_10003FD20);
        State.projectedValue.getter();
        v70 = v111;
        v71 = v112;
        v72 = v113;
        v73 = v98;
        sub_100017BDC(v27, v98);
        v74 = (*(v96 + 80) + 16) & ~*(v96 + 80);
        v75 = swift_allocObject();
        sub_100017E00(v73, v75 + v74, type metadata accessor for TripViewLandscape);
        v76 = swift_getKeyPath();
        v77 = type metadata accessor for TripActionButton(0);
        v78 = v102;
        *&v102[*(v77 + 20)] = v76;
        swift_storeEnumTagMultiPayload();
        *v78 = v70;
        *(v78 + 8) = v71;
        *(v78 + 16) = v72;
        v79 = (v78 + *(v77 + 24));
        *v79 = sub_100017F50;
        v79[1] = v75;
        LOBYTE(v75) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v80 = v78 + *(v99 + 36);
        *v80 = v75;
        *(v80 + 8) = v81;
        *(v80 + 16) = v82;
        *(v80 + 24) = v83;
        *(v80 + 32) = v84;
        *(v80 + 40) = 0;
        v85 = v101;
        sub_100008DD0(v47, v101, &qword_10005B380, &qword_100040A58);
        v86 = v103;
        sub_100008DD0(v78, v103, &qword_10005A910, &qword_100040A50);
        v87 = v104;
        sub_100008DD0(v85, v104, &qword_10005B380, &qword_100040A58);
        v88 = sub_100003090(&qword_10005B398, &unk_100040B20);
        sub_100008DD0(v86, v87 + *(v88 + 48), &qword_10005A910, &qword_100040A50);
        v89 = v87 + *(v88 + 64);
        *v89 = 0;
        *(v89 + 8) = 1;
        sub_1000038DC(v78, &qword_10005A910, &qword_100040A50);
        sub_1000038DC(v47, &qword_10005B380, &qword_100040A58);
        sub_1000038DC(v86, &qword_10005A910, &qword_100040A50);
        sub_1000038DC(v85, &qword_10005B380, &qword_100040A58);
        v90 = v109;
        sub_100008944(v87, v109, &qword_10005B378, &qword_100040A48);
        return (*(v107 + 56))(v90, 0, 1, v108);
      }

      return (*(v107 + 56))(v109, 1, 1, v108);
    }

    type metadata accessor for CardModel(0);
    sub_100017F7C(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    EnvironmentObject.error()();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100016FCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for TripViewLandscape(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_100003090(&qword_10005A910, &qword_100040A50);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v33[-v12];
  v14 = (a1 + *(v4 + 32));
  v15 = *v14;
  v16 = *(v14 + 1);
  v39 = v15;
  v40 = v16;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.projectedValue.getter();
  v18 = v36;
  v17 = v37;
  v34 = v38;
  sub_100017BDC(a1, &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_100017E00(&v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v20 + v19, type metadata accessor for TripViewLandscape);
  KeyPath = swift_getKeyPath();
  v22 = type metadata accessor for TripActionButton(0);
  *&v13[*(v22 + 20)] = KeyPath;
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  *v13 = v18;
  *(v13 + 1) = v17;
  v13[16] = v34;
  v23 = &v13[*(v22 + 24)];
  *v23 = sub_100018314;
  v23[1] = v20;
  LOBYTE(v20) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v24 = &v13[*(v8 + 44)];
  *v24 = v20;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_100008DD0(v13, v11, &qword_10005A910, &qword_100040A50);
  v29 = v35;
  *v35 = 0;
  *(v29 + 8) = 1;
  v30 = v29;
  v31 = sub_100003090(&qword_10005A918, &qword_100040010);
  sub_100008DD0(v11, v30 + *(v31 + 48), &qword_10005A910, &qword_100040A50);
  sub_1000038DC(v13, &qword_10005A910, &qword_100040A50);
  return sub_1000038DC(v11, &qword_10005A910, &qword_100040A50);
}

void *sub_1000172B0(uint64_t a1)
{
  v2 = type metadata accessor for LayoutConfiguration(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000143E8(v5);
  v6 = &v5[*(v3 + 28)];
  v7 = *(v6 + 1);
  v14 = *v6;
  v15 = v7;
  v16 = *(v6 + 1);
  sub_100003090(&qword_10005A7E0, &unk_1000409A0);
  Binding.wrappedValue.getter();
  v8 = v13[1];
  sub_1000086B4(v5);
  v9 = (a1 + *(type metadata accessor for TripViewLandscape(0) + 40));
  v10 = *v9;
  v11 = v9[1];
  v14 = v10;
  v15 = v11;
  v13[0] = v8;
  sub_100003090(&qword_10005A860, &qword_100040B30);
  State.wrappedValue.setter();
  return sub_100014A00();
}

uint64_t sub_1000173CC(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for TripViewLandscape(0);

  sub_100003090(&qword_10005A858, &unk_10003FE20);
  return State.wrappedValue.setter();
}

double sub_100017440@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for TripViewLandscape(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TripResetView(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_100003090(&qword_10005A7D8, &unk_10003FD40);
  __chkstk_darwin(v40);
  v14 = &v39 - v13;
  sub_1000143E8(v8);
  v15 = &v8[*(v6 + 20)];
  v16 = *(v15 + 1);
  *&v42 = *v15;
  *(&v42 + 1) = v16;
  v43 = *(v15 + 1);
  sub_100003090(&qword_10005A7E0, &unk_1000409A0);
  Binding.wrappedValue.getter();
  v17 = *&v49;
  sub_1000086B4(v8);
  sub_1000143E8(v8);
  v18 = &v8[*(v6 + 20)];
  v19 = *(v18 + 1);
  *&v42 = *v18;
  *(&v42 + 1) = v19;
  v43 = *(v18 + 1);
  Binding.wrappedValue.getter();
  v20 = *(&v49 + 1);
  sub_1000086B4(v8);
  sub_100017BDC(a1, v5);
  v21 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v22 = swift_allocObject();
  sub_100017E00(v5, v22 + v21, type metadata accessor for TripViewLandscape);
  *v12 = v17 * 0.45;
  v12[1] = v20 * 0.75;
  *(v12 + 2) = sub_100017CB4;
  *(v12 + 3) = v22;
  v23 = (v12 + *(v10 + 36));
  v24 = *(type metadata accessor for RoundedRectangle() + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  (*(*(v26 - 8) + 104))(&v23->i8[v24], v25, v26);
  *v23 = vdupq_n_s64(0x4046000000000000uLL);
  sub_1000143E8(v8);
  v27 = &v8[*(v6 + 20)];
  v28 = *(v27 + 1);
  *&v42 = *v27;
  *(&v42 + 1) = v28;
  v43 = *(v27 + 1);
  Binding.wrappedValue.getter();
  sub_1000086B4(v8);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100017E00(v12, v14, type metadata accessor for TripResetView);
  v29 = &v14[*(v40 + 36)];
  v30 = v47;
  *(v29 + 4) = v46;
  *(v29 + 5) = v30;
  *(v29 + 6) = v48;
  v31 = v43;
  *v29 = v42;
  *(v29 + 1) = v31;
  v32 = v45;
  *(v29 + 2) = v44;
  *(v29 + 3) = v32;
  sub_1000143E8(v8);
  v33 = &v8[*(v6 + 20)];
  v34 = *(v33 + 1);
  *&v49 = *v33;
  *(&v49 + 1) = v34;
  v50 = *(v33 + 1);
  Binding.wrappedValue.getter();
  sub_1000086B4(v8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v35 = v41;
  sub_100008944(v14, v41, &qword_10005A7D8, &unk_10003FD40);
  v36 = (v35 + *(sub_100003090(&qword_10005A7E8, &qword_10003FD50) + 36));
  v37 = v50;
  *v36 = v49;
  v36[1] = v37;
  result = v51[0];
  v36[2] = *v51;
  return result;
}

double sub_1000179C4(uint64_t a1)
{
  if (a1)
  {
    sub_100009AE4();
  }

  v1 = static Animation.easeInOut(duration:)();
  __chkstk_darwin(v1);
  withAnimation<A>(_:_:)();

  return result;
}

double sub_100017A60(uint64_t a1)
{
  type metadata accessor for TripViewLandscape(0);

  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.wrappedValue.getter();
  State.wrappedValue.setter();

  return result;
}

uint64_t sub_100017B1C@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_100003090(&qword_10005B2E8, &qword_100040940);
  sub_100014DD8(v2, (a2 + *(v5 + 44)));
  v6 = static Edge.Set.horizontal.getter();
  v7 = a2 + *(sub_100003090(&qword_10005B2F0, &qword_100040948) + 36);
  *v7 = v6;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  v7[40] = 1;
  result = sub_100003090(&qword_10005B2F8, &unk_100040950);
  v9 = (a2 + *(result + 36));
  *v9 = 0xD000000000000012;
  v9[1] = 0x8000000100042830;
  return result;
}

uint64_t sub_100017BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripViewLandscape(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100017C44(char a1)
{
  v3 = *(type metadata accessor for TripViewLandscape(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100015588(a1, v4);
}

double sub_100017CB4(char a1)
{
  type metadata accessor for TripViewLandscape(0);

  return sub_1000179C4(a1 & 1);
}

unint64_t sub_100017D40()
{
  result = qword_10005B350;
  if (!qword_10005B350)
  {
    sub_1000036BC(&qword_10005B340, &qword_1000409E0);
    sub_100003894(&qword_10005B358, &qword_10005B360, &qword_1000409F8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B350);
  }

  return result;
}

uint64_t sub_100017E00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_100017E68()
{
  v1 = *(type metadata accessor for TripViewLandscape(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000172B0(v2);
}

uint64_t sub_100017EC8(uint64_t *a1)
{
  v3 = *(type metadata accessor for TripViewLandscape(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000173CC(a1, v4);
}

void sub_100017F50()
{
  type metadata accessor for TripViewLandscape(0);

  sub_100009ADC();
}

uint64_t sub_100017F7C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100017FD4()
{
  v1 = *(type metadata accessor for TripViewLandscape(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
    v6 = type metadata accessor for LayoutConfiguration(0);

    sub_1000085F8((v0 + v3 + *(v6 + 24)));
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_100018178()
{
  result = qword_10005B3A0;
  if (!qword_10005B3A0)
  {
    sub_1000036BC(&qword_10005B2F8, &unk_100040950);
    sub_100018230();
    sub_100003894(&qword_10005A940, &qword_10005A948, &qword_100040020, &protocol conformance descriptor for _CoordinateSpaceModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B3A0);
  }

  return result;
}

unint64_t sub_100018230()
{
  result = qword_10005B3A8;
  if (!qword_10005B3A8)
  {
    sub_1000036BC(&qword_10005B2F0, &qword_100040948);
    sub_100003894(&qword_10005B3B0, &qword_10005B3B8, &qword_100040BD8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B3A8);
  }

  return result;
}

double sub_100018318(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void *sub_10001835C(uint64_t a1)
{
  v2 = v1;
  v199 = a1;
  v3 = sub_100003090(&qword_10005B518, &qword_100041D20);
  __chkstk_darwin(v3 - 8);
  v208 = &v197 - v4;
  v220 = sub_100003090(&qword_10005B508, &qword_100040CB8);
  v210 = *(v220 - 8);
  v5 = __chkstk_darwin(v220);
  v198 = &v197 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v202 = &v197 - v8;
  __chkstk_darwin(v7);
  v209 = &v197 - v9;
  v10 = sub_100003090(&qword_10005B520, &qword_100040CC0);
  __chkstk_darwin(v10 - 8);
  v222 = &v197 - v11;
  v12 = sub_100003090(&qword_10005B528, &qword_100040CC8);
  v218 = *(v12 - 8);
  v219 = v12;
  v13 = __chkstk_darwin(v12);
  v201 = &v197 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v203 = &v197 - v15;
  v16 = sub_100003090(&qword_10005B530, &qword_100041CD0);
  __chkstk_darwin(v16 - 8);
  v215 = &v197 - v17;
  v18 = sub_100003090(&qword_10005B538, &qword_100040CD0);
  v216 = *(v18 - 8);
  v217 = v18;
  __chkstk_darwin(v18);
  v207 = &v197 - v19;
  v20 = sub_100003090(&qword_10005B540, &qword_100040CD8);
  __chkstk_darwin(v20 - 8);
  v205 = &v197 - v21;
  v22 = sub_100003090(&qword_10005B548, &qword_100040CE0);
  v213 = *(v22 - 8);
  v214 = v22;
  v23 = __chkstk_darwin(v22);
  v200 = &v197 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v206 = &v197 - v25;
  v26 = sub_100003090(&qword_10005B550, &qword_100040CE8);
  __chkstk_darwin(v26 - 8);
  v28 = &v197 - v27;
  v204 = sub_100003090(&qword_10005B558, &qword_100040CF0);
  v212 = *(v204 - 8);
  __chkstk_darwin(v204);
  v211 = &v197 - v29;
  v30 = sub_100003090(&qword_10005B560, &qword_100041C80);
  __chkstk_darwin(v30 - 8);
  v32 = &v197 - v31;
  v33 = sub_100003090(&qword_10005B4D8, &qword_100040CA8);
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = &v197 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v197 - v38;
  v40 = CAFTripObservable.observed.getter();
  v41 = [v40 car];

  if (v41)
  {
    v42 = CAFCar.dimesionObservable.getter();

    v225 = &_swiftEmptyArrayStorage;
    dispatch thunk of CAFTripObservable.distance.getter();
    v43 = (*(v34 + 48))(v32, 1, v33);
    v221 = v2;
    if (v43 == 1)
    {
      sub_1000038DC(v32, &qword_10005B560, &qword_100041C80);
      v44 = &_swiftEmptyArrayStorage;
    }

    else
    {
      (*(v34 + 32))(v39, v32, v33);
      v45 = CAFTripObservable.observed.getter();
      v46 = [v45 distanceInvalid];

      if (v46)
      {
        v223 = 2108717;
        v224 = 0xE300000000000000;
        v47 = dispatch thunk of CAFDimensionObservable.vehicleRangeUnit.getter();
        v48 = [v47 symbol];

        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52._countAndFlagsBits = v49;
        v52._object = v51;
        String.append(_:)(v52);

        v53 = v224;
        v197 = v223;
      }

      else
      {
        Measurement<>.toVehicleRangeUnit(using:)();
        v197 = Measurement<>.formattedString(maximumFractionDigits:)();
        v53 = v54;
        (*(v34 + 8))(v37, v33);
      }

      v55 = [objc_opt_self() mainBundle];
      v226._object = 0xE000000000000000;
      v56._countAndFlagsBits = 0x45434E4154534944;
      v56._object = 0xE800000000000000;
      v57.value._countAndFlagsBits = 1885958740;
      v57.value._object = 0xE400000000000000;
      v58._countAndFlagsBits = 0;
      v58._object = 0xE000000000000000;
      v226._countAndFlagsBits = 0;
      v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v57, v55, v58, v226);

      type metadata accessor for CardCellConfiguration(0);
      v60 = swift_allocObject();
      LOBYTE(v223) = 0;
      Published.init(initialValue:)();
      UUID.init()();
      *(v60 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
      if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        sub_10001F2E0(&_swiftEmptyArrayStorage);
      }

      else
      {
        v61 = &_swiftEmptySetSingleton;
      }

      *(v60 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v61;
      v62 = (v60 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
      *v62 = v197;
      v62[1] = v53;
      *(v60 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v59;
      v63 = (v60 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
      *v63 = 0xD000000000000038;
      v63[1] = 0x8000000100042E40;
      *(v60 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 0;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v34 + 8))(v39, v33);
      v44 = v225;
    }

    dispatch thunk of CAFTripObservable.duration.getter();
    v64 = v212;
    v65 = v204;
    v66 = (*(v212 + 48))(v28, 1, v204);
    v67 = v210;
    v68 = v42;
    if (v66 == 1)
    {
      sub_1000038DC(v28, &qword_10005B550, &qword_100040CE8);
      v69 = v222;
      v70 = v214;
      v71 = v215;
    }

    else
    {
      (*(v64 + 32))(v211, v28, v65);
      v223 = 0x202D2D3A2D2DLL;
      v224 = 0xE600000000000000;
      v72 = [objc_opt_self() hours];
      v73 = [v72 symbol];

      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77._countAndFlagsBits = v74;
      v77._object = v76;
      String.append(_:)(v77);

      v79 = v223;
      v78 = v224;
      v80 = CAFTripObservable.observed.getter();
      LOBYTE(v76) = [v80 durationInvalid];

      v70 = v214;
      if ((v76 & 1) == 0)
      {
        if (v199 && (v81 = *(v199 + OBJC_IVAR____TtC4Trip13TripAppConfig_dateFormatter)) != 0)
        {
          v82 = v81;
        }

        else
        {
          v82 = [objc_allocWithZone(NSDateComponentsFormatter) init];
          [v82 setUnitsStyle:2];
          [v82 setAllowedUnits:224];
        }

        Measurement.value.getter();
        v83 = [v82 stringFromTimeInterval:?];

        if (v83)
        {

          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v78 = v84;
        }
      }

      v85 = [objc_opt_self() mainBundle];
      v227._object = 0xE000000000000000;
      v86._countAndFlagsBits = 0x4E4F495441525544;
      v86._object = 0xE800000000000000;
      v87.value._countAndFlagsBits = 1885958740;
      v87.value._object = 0xE400000000000000;
      v88._countAndFlagsBits = 0;
      v88._object = 0xE000000000000000;
      v227._countAndFlagsBits = 0;
      v89 = NSLocalizedString(_:tableName:bundle:value:comment:)(v86, v87, v85, v88, v227);

      type metadata accessor for CardCellConfiguration(0);
      v90 = swift_allocObject();
      LOBYTE(v223) = 0;
      Published.init(initialValue:)();
      UUID.init()();
      *(v90 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
      if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        sub_10001F2E0(&_swiftEmptyArrayStorage);
      }

      else
      {
        v91 = &_swiftEmptySetSingleton;
      }

      *(v90 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v91;
      v92 = (v90 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
      *v92 = v79;
      v92[1] = v78;
      *(v90 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v89;
      v93 = (v90 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
      *v93 = 0x63746177706F7473;
      v93[1] = 0xE900000000000068;
      *(v90 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 0;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v212 + 8))(v211, v65);
      v44 = v225;
      v69 = v222;
      v71 = v215;
    }

    v94 = v213;
    v95 = v205;
    dispatch thunk of CAFTripObservable.averageSpeed.getter();
    if ((*(v94 + 48))(v95, 1, v70) == 1)
    {
      sub_1000038DC(v95, &qword_10005B540, &qword_100040CD8);
    }

    else
    {
      (*(v94 + 32))(v206, v95, v70);
      v96 = CAFTripObservable.observed.getter();
      v97 = [v96 averageSpeedInvalid];

      if (v97)
      {
        v223 = 2108717;
        v224 = 0xE300000000000000;
        v98 = dispatch thunk of CAFDimensionObservable.vehicleSpeedUnit.getter();
        v99 = [v98 symbol];

        v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v102 = v101;

        v103._countAndFlagsBits = v100;
        v103._object = v102;
        String.append(_:)(v103);

        v104 = v223;
        v105 = v224;
      }

      else
      {
        v106 = v200;
        Measurement<>.toVehicleSpeedUnit(using:)();
        v104 = Measurement<>.formattedString(maximumFractionDigits:)();
        v105 = v107;
        (*(v94 + 8))(v106, v70);
      }

      v108 = [objc_opt_self() mainBundle];
      v228._object = 0xE000000000000000;
      v109._countAndFlagsBits = 0x4445455053;
      v109._object = 0xE500000000000000;
      v110.value._countAndFlagsBits = 1885958740;
      v110.value._object = 0xE400000000000000;
      v111._countAndFlagsBits = 0;
      v111._object = 0xE000000000000000;
      v228._countAndFlagsBits = 0;
      v112 = NSLocalizedString(_:tableName:bundle:value:comment:)(v109, v110, v108, v111, v228);

      type metadata accessor for CardCellConfiguration(0);
      v113 = swift_allocObject();
      LOBYTE(v223) = 0;
      Published.init(initialValue:)();
      UUID.init()();
      *(v113 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
      if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        sub_10001F2E0(&_swiftEmptyArrayStorage);
      }

      else
      {
        v114 = &_swiftEmptySetSingleton;
      }

      *(v113 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v114;
      v115 = (v113 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
      *v115 = v104;
      v115[1] = v105;
      *(v113 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v112;
      v116 = (v113 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
      *v116 = 0xD000000000000026;
      v116[1] = 0x8000000100042E10;
      *(v113 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 0;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v213 + 8))(v206, v214);
      v44 = v225;
      v69 = v222;
      v71 = v215;
    }

    dispatch thunk of CAFTripObservable.energy.getter();
    v117 = v216;
    v118 = v217;
    if ((*(v216 + 48))(v71, 1, v217) == 1)
    {
      sub_1000038DC(v71, &qword_10005B530, &qword_100041CD0);
    }

    else
    {
      (*(v117 + 32))(v207, v71, v118);
      v119 = CAFTripObservable.observed.getter();
      v120 = [v119 energyInvalid];

      if (v120)
      {
        v223 = 2108717;
        v224 = 0xE300000000000000;
        v121 = Measurement.unit.getter();
        v122 = [v121 symbol];

        v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v125 = v124;

        v126._countAndFlagsBits = v123;
        v126._object = v125;
        String.append(_:)(v126);

        v127 = v223;
        v128 = v224;
      }

      else
      {
        v127 = Measurement<>.formattedString(maximumFractionDigits:)();
        v128 = v129;
      }

      v130 = [objc_opt_self() mainBundle];
      v229._object = 0xE000000000000000;
      v131._countAndFlagsBits = 0x594752454E45;
      v131._object = 0xE600000000000000;
      v132.value._countAndFlagsBits = 1885958740;
      v132.value._object = 0xE400000000000000;
      v133._countAndFlagsBits = 0;
      v133._object = 0xE000000000000000;
      v229._countAndFlagsBits = 0;
      v134 = NSLocalizedString(_:tableName:bundle:value:comment:)(v131, v132, v130, v133, v229);

      type metadata accessor for CardCellConfiguration(0);
      v135 = swift_allocObject();
      LOBYTE(v223) = 0;
      Published.init(initialValue:)();
      UUID.init()();
      *(v135 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
      if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        sub_10001F2E0(&_swiftEmptyArrayStorage);
      }

      else
      {
        v136 = &_swiftEmptySetSingleton;
      }

      *(v135 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v136;
      v137 = (v135 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
      *v137 = v127;
      v137[1] = v128;
      *(v135 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v134;
      v138 = (v135 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
      *v138 = 0xD000000000000017;
      v138[1] = 0x8000000100042DF0;
      *(v135 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 0;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v216 + 8))(v207, v217);
      v44 = v225;
      v69 = v222;
    }

    dispatch thunk of CAFTripObservable.energyEfficiency.getter();
    v139 = v218;
    v140 = v219;
    if ((*(v218 + 48))(v69, 1, v219) == 1)
    {
      sub_1000038DC(v69, &qword_10005B520, &qword_100040CC0);
    }

    else
    {
      v141 = v203;
      (*(v139 + 32))(v203, v69, v140);
      v142 = v139;
      v143 = CAFTripObservable.observed.getter();
      v144 = [v143 energyEfficiencyInvalid];

      if (v144)
      {
        v223 = 2108717;
        v224 = 0xE300000000000000;
        v145 = Measurement.unit.getter();
        v146 = [v145 symbol];

        v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v149 = v148;

        v150._countAndFlagsBits = v147;
        v150._object = v149;
        String.append(_:)(v150);

        v151 = v223;
        v152 = v224;
      }

      else
      {
        v153 = v201;
        Measurement<>.toVehicleEnergyEfficiencyUnit(using:)();
        v151 = Measurement<>.formattedString(maximumFractionDigits:)();
        v152 = v154;
        (*(v142 + 8))(v153, v140);
      }

      v155 = [objc_opt_self() mainBundle];
      v230._object = 0xE000000000000000;
      v156._object = 0x8000000100042DB0;
      v156._countAndFlagsBits = 0xD000000000000011;
      v157.value._countAndFlagsBits = 1885958740;
      v157.value._object = 0xE400000000000000;
      v158._countAndFlagsBits = 0;
      v158._object = 0xE000000000000000;
      v230._countAndFlagsBits = 0;
      v159 = NSLocalizedString(_:tableName:bundle:value:comment:)(v156, v157, v155, v158, v230);

      type metadata accessor for CardCellConfiguration(0);
      v160 = swift_allocObject();
      LOBYTE(v223) = 0;
      Published.init(initialValue:)();
      UUID.init()();
      *(v160 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
      if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        sub_10001F2E0(&_swiftEmptyArrayStorage);
      }

      else
      {
        v161 = &_swiftEmptySetSingleton;
      }

      *(v160 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v161;
      v162 = (v160 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
      *v162 = v151;
      v162[1] = v152;
      *(v160 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v159;
      v163 = (v160 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
      *v163 = 0xD000000000000011;
      v163[1] = 0x8000000100042DD0;
      *(v160 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 0;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v218 + 8))(v141, v219);
      v44 = v225;
    }

    v164 = v208;
    dispatch thunk of CAFTripObservable.fuelEfficiency.getter();
    v165 = v220;
    if ((*(v67 + 48))(v164, 1, v220) == 1)
    {

      sub_1000038DC(v164, &qword_10005B518, &qword_100041D20);
    }

    else
    {
      (*(v67 + 32))(v209, v164, v165);
      v166 = CAFTripObservable.observed.getter();
      v167 = [v166 fuelEfficiencyInvalid];

      if (v167)
      {
        v223 = 2108717;
        v224 = 0xE300000000000000;
        v168 = dispatch thunk of CAFDimensionObservable.vehicleFuelEfficiencyUnit.getter();
        v169 = [v168 symbol];

        v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v172 = v171;

        v173._countAndFlagsBits = v170;
        v173._object = v172;
        String.append(_:)(v173);

        v174 = v223;
        v175 = v224;
      }

      else
      {
        Measurement.value.getter();
        v177 = v176;
        v178 = CAFTripObservable.observed.getter();
        v179 = [v178 fuelEfficiencyRange];

        LODWORD(v178) = [v179 maximumValue];
        if (v177 == v178)
        {
          v180 = [objc_opt_self() millilitersPer100Kilometers];
          sub_100014060(0, &qword_10005B510, NSUnitFuelEfficiency_ptr);
          v181 = v202;
          Measurement.init(value:unit:)();
          v182 = v198;
          Measurement<>.toVehicleFuelEfficiencyUnit(using:)();
          v174 = Measurement<>.formattedString(maximumFractionDigits:)();
          v175 = v183;
          v184 = *(v67 + 8);
          v184(v182, v165);
          v184(v181, v165);
        }

        else
        {
          v185 = v202;
          Measurement<>.toVehicleFuelEfficiencyUnit(using:)();
          v174 = Measurement<>.formattedString(maximumFractionDigits:)();
          v175 = v186;
          (*(v67 + 8))(v185, v165);
        }
      }

      v187 = [objc_opt_self() mainBundle];
      v231._object = 0xE000000000000000;
      v188._countAndFlagsBits = 0x4646455F4C455546;
      v188._object = 0xEF59434E45494349;
      v189.value._countAndFlagsBits = 1885958740;
      v189.value._object = 0xE400000000000000;
      v190._countAndFlagsBits = 0;
      v190._object = 0xE000000000000000;
      v231._countAndFlagsBits = 0;
      v191 = NSLocalizedString(_:tableName:bundle:value:comment:)(v188, v189, v187, v190, v231);

      type metadata accessor for CardCellConfiguration(0);
      v192 = swift_allocObject();
      LOBYTE(v223) = 0;
      Published.init(initialValue:)();
      UUID.init()();
      *(v192 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
      if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        sub_10001F2E0(&_swiftEmptyArrayStorage);
      }

      else
      {
        v193 = &_swiftEmptySetSingleton;
      }

      *(v192 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v193;
      v194 = (v192 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
      *v194 = v174;
      v194[1] = v175;
      *(v192 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v191;
      v195 = v192 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName;
      strcpy((v192 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName), "fuelpump.fill");
      *(v195 + 14) = -4864;
      *(v192 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 0;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v67 + 8))(v209, v220);
      return v225;
    }
  }

  else
  {
    sub_100034D64(0xD00000000000001CLL, 0x8000000100042D50, 0xD00000000000001ELL, 0x8000000100042D90, 20);
    return &_swiftEmptyArrayStorage;
  }

  return v44;
}

void *sub_100019F14()
{
  v0 = sub_100003090(&qword_10005B4D8, &qword_100040CA8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v36 - v2;
  v4 = CAFOdometerObservable.observed.getter();
  v5 = [v4 car];

  if (!v5)
  {
    sub_100034D64(0xD00000000000001CLL, 0x8000000100042D50, 0xD000000000000012, 0x8000000100042D70, 118);
    return &_swiftEmptyArrayStorage;
  }

  v6 = CAFCar.dimesionObservable.getter();

  sub_100014060(0, &unk_10005B4E0, NSObject_ptr);
  v37 = v6;
  v7 = dispatch thunk of CAFDimensionObservable.vehicleRangeUnit.getter();
  v8 = objc_opt_self();
  v9 = [v8 kilometers];
  v10 = static NSObject.== infix(_:_:)();

  v11 = CAFOdometerObservable.observed.getter();
  v12 = v11;
  if (v10)
  {
    v13 = [v11 distanceKMInvalid];

    if (v13)
    {
      v38 = 2108717;
      v39 = 0xE300000000000000;
      v14 = [v8 kilometers];
      v15 = [v14 symbol];
LABEL_8:
      v18 = v15;

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22._countAndFlagsBits = v19;
      v22._object = v21;
      String.append(_:)(v22);

      v23 = v38;
      v24 = v39;
      goto LABEL_12;
    }

    dispatch thunk of CAFOdometerObservable.distanceKM.getter();
  }

  else
  {
    v17 = [v11 distanceMilesInvalid];

    if (v17)
    {
      v38 = 2108717;
      v39 = 0xE300000000000000;
      v14 = [v8 miles];
      v15 = [v14 symbol];
      goto LABEL_8;
    }

    dispatch thunk of CAFOdometerObservable.distanceMiles.getter();
  }

  v23 = Measurement<>.formattedString(maximumFractionDigits:)();
  v24 = v25;
  (*(v1 + 8))(v3, v0);
LABEL_12:
  sub_100003090(&qword_10005D490, &unk_1000404E0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100040BE0;
  v26 = [objc_opt_self() mainBundle];
  v40._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0x524554454D4F444FLL;
  v27._object = 0xE800000000000000;
  v28.value._countAndFlagsBits = 1885958740;
  v28.value._object = 0xE400000000000000;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v40);

  type metadata accessor for CardCellConfiguration(0);
  v31 = swift_allocObject();
  LOBYTE(v38) = 0;
  Published.init(initialValue:)();
  UUID.init()();
  *(v31 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10001F2E0(&_swiftEmptyArrayStorage);
  }

  else
  {
    v32 = &_swiftEmptySetSingleton;
  }

  *(v31 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v32;
  v33 = (v31 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
  *v33 = v23;
  v33[1] = v24;
  *(v31 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v30;
  v34 = (v31 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
  *v34 = 0x6E616C2E64616F72;
  v34[1] = 0xEA00000000007365;
  *(v31 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 1;
  *(v16 + 32) = v31;

  return v16;
}

void *sub_10001A3D0()
{
  v0 = sub_100003090(&qword_10005B508, &qword_100040CB8);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v39 - v5;
  v7 = CAFFuelConsumptionObservable.observed.getter();
  v8 = [v7 car];

  if (v8)
  {
    v9 = CAFCar.dimesionObservable.getter();

    v10 = CAFFuelConsumptionObservable.observed.getter();
    v11 = [v10 fuelEfficiencyInvalid];

    if (v11)
    {
      v39 = 2108717;
      v40 = 0xE300000000000000;
      v12 = dispatch thunk of CAFDimensionObservable.vehicleFuelEfficiencyUnit.getter();
      v13 = [v12 symbol];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17._countAndFlagsBits = v14;
      v17._object = v16;
      String.append(_:)(v17);

      v18 = v39;
      v19 = v40;
    }

    else
    {
      dispatch thunk of CAFFuelConsumptionObservable.fuelEfficiency.getter();
      Measurement.value.getter();
      v22 = v21;
      v23 = *(v1 + 8);
      v23(v6, v0);
      v24 = CAFFuelConsumptionObservable.observed.getter();
      v25 = [v24 fuelEfficiencyRange];

      LODWORD(v24) = [v25 maximumValue];
      if (v22 == v24)
      {
        v26 = [objc_opt_self() millilitersPer100Kilometers];
        sub_100014060(0, &qword_10005B510, NSUnitFuelEfficiency_ptr);
        Measurement.init(value:unit:)();
        Measurement<>.toVehicleFuelEfficiencyUnit(using:)();
        v18 = Measurement<>.formattedString(maximumFractionDigits:)();
        v19 = v27;
        v23(v4, v0);
      }

      else
      {
        dispatch thunk of CAFFuelConsumptionObservable.fuelEfficiency.getter();
        Measurement<>.toVehicleFuelEfficiencyUnit(using:)();
        v23(v4, v0);
        v18 = Measurement<>.formattedString(maximumFractionDigits:)();
        v19 = v28;
      }

      v23(v6, v0);
    }

    sub_100003090(&qword_10005D490, &unk_1000404E0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100040BE0;
    v29 = [objc_opt_self() mainBundle];
    v41._object = 0xE000000000000000;
    v30._countAndFlagsBits = 0x4646455F4C455546;
    v30._object = 0xEF59434E45494349;
    v31.value._countAndFlagsBits = 1885958740;
    v31.value._object = 0xE400000000000000;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v41._countAndFlagsBits = 0;
    v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v41);

    type metadata accessor for CardCellConfiguration(0);
    v34 = swift_allocObject();
    LOBYTE(v39) = 0;
    Published.init(initialValue:)();
    UUID.init()();
    *(v34 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 5;
    if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_10001F2E0(&_swiftEmptyArrayStorage);
    }

    else
    {
      v35 = &_swiftEmptySetSingleton;
    }

    *(v34 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables) = v35;
    v36 = (v34 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
    *v36 = v18;
    v36[1] = v19;
    *(v34 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v33;
    v37 = v34 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName;
    strcpy((v34 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName), "fuelpump.fill");
    *(v37 + 14) = -4864;
    *(v34 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) = 0;
    *(v20 + 32) = v34;
  }

  else
  {
    sub_100034D64(0xD00000000000001CLL, 0x8000000100042D50, 0xD000000000000012, 0x8000000100042D70, 149);
    return &_swiftEmptyArrayStorage;
  }

  return v20;
}

uint64_t sub_10001A908()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10001A97C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3)
  {
    dispatch thunk of CarouselModel.items.getter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t sub_10001AA7C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

char *sub_10001AAE8(void *a1)
{
  v2 = v1;
  v4 = sub_100003090(&qword_10005B5F8, &qword_100040E98);
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v32 - v5;
  v7 = sub_100003090(&qword_10005B5F0, &unk_1000405A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = sub_100003090(&qword_10005B5E8, &qword_100040E90);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  *&v2[OBJC_IVAR____TtC4Trip9TripModel_tripComputer] = 0;
  *&v2[OBJC_IVAR____TtC4Trip9TripModel_odometer] = 0;
  *&v2[OBJC_IVAR____TtC4Trip9TripModel_consumption] = 0;
  v2[OBJC_IVAR____TtC4Trip9TripModel_hasEmittedFinalizedSignpost] = 0;
  *&v2[OBJC_IVAR____TtC4Trip9TripModel_cancellables] = &_swiftEmptySetSingleton;
  v15 = OBJC_IVAR____TtC4Trip9TripModel__carouselModel;
  aBlock[0] = 0;
  sub_100003090(&qword_10005B4C0, &qword_100040C60);
  Published.init(initialValue:)();
  (*(v12 + 32))(&v2[v15], v14, v11);
  v16 = OBJC_IVAR____TtC4Trip9TripModel__appConfig;
  aBlock[0] = 0;
  sub_100003090(&qword_10005B4D0, &qword_100040C68);
  Published.init(initialValue:)();
  (*(v8 + 32))(&v2[v16], v10, v7);
  sub_100034D00(0xD000000000000018, 0x8000000100043220, 0xD000000000000014, 0x8000000100043240, 195);
  v17 = &v2[OBJC_IVAR____TtC4Trip9TripModel__carObservable];
  swift_beginAccess();
  type metadata accessor for CAFCarObservable();
  sub_10001F574(&qword_10005B600, &type metadata accessor for CAFCarObservable, &protocol conformance descriptor for CAFCarObservable);
  v18 = a1;
  *v17 = ObservedObject.init(wrappedValue:)();
  v17[1] = v19;
  swift_endAccess();
  swift_beginAccess();
  v37 = &_swiftEmptyArrayStorage;
  sub_100003090(&qword_10005B4B0, &qword_100040C28);
  Published.init(initialValue:)();
  swift_endAccess();
  type metadata accessor for CAUAssetLibraryManager();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC4Trip9TripModel_assetManager] = CAUAssetLibraryManager.init()();
  v20 = type metadata accessor for TripModel(0);
  v36.receiver = v2;
  v36.super_class = v20;
  v21 = objc_msgSendSuper2(&v36, "init");
  v22 = CAFCarObservable.observed.getter();
  [v22 registerObserver:v21];

  sub_10001BC14();
  v23 = [objc_opt_self() defaultCenter];
  if (qword_10005A3C8 != -1)
  {
    swift_once();
  }

  v24 = static NSNotificationName.ClusterEvent;
  v25 = [objc_opt_self() mainQueue];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10001F77C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001B2D4;
  aBlock[3] = &unk_1000566B8;
  v27 = _Block_copy(aBlock);
  v28 = v21;

  v29 = [v23 addObserverForName:v24 object:0 queue:v25 usingBlock:v27];
  _Block_release(v27);
  swift_unknownObjectRelease();

  dispatch thunk of CAUAssetLibraryManager.$assetLibrary.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100003894(&qword_10005B608, &qword_10005B5F8, &qword_100040E98, &protocol conformance descriptor for Published<A>.Publisher);
  v30 = v34;
  Publisher<>.sink(receiveValue:)();

  (*(v33 + 8))(v6, v30);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v28;
}

void sub_10001B188(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Notification.userInfo.getter();
    if (v4)
    {
      v5 = v4;
      strcpy(v8, "ClusterEvent");
      BYTE13(v8[0]) = 0;
      HIWORD(v8[0]) = -5120;
      AnyHashable.init<A>(_:)();
      if (!*(v5 + 16) || (v6 = sub_10000E288(v9), (v7 & 1) == 0))
      {

        sub_10000323C(v9);
        return;
      }

      sub_10001F78C(*(v5 + 56) + 32 * v6, v8);
      sub_10000323C(v9);

      sub_10000EF2C(v8, v10);
      sub_10001F78C(v10, v9);
      if (swift_dynamicCast())
      {
        sub_10001CF68(v8[0]);

        sub_1000085F8(v10);
        return;
      }

      sub_1000085F8(v10);
    }
  }
}

uint64_t sub_10001B2D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_10001B3C8(void **a1, uint64_t a2)
{
  v3 = type metadata accessor for CAUAppUIConfiguration.Mode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CAUAppUIConfiguration.App();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = *a1;
  if (v17)
  {
    (*(v8 + 104))(v10, enum case for CAUAppUIConfiguration.App.trip(_:), v7);
    (*(v4 + 104))(v6, enum case for CAUAppUIConfiguration.Mode.dca(_:), v3);
    v28 = v17;
    dispatch thunk of CAUAssetLibrary.configuration(app:mode:)();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = v29;
    v19 = v30;
    if (Strong)
    {
      v21 = Strong;
      (*(v29 + 16))(v14, v16, v30);
      type metadata accessor for TripAppConfig(0);
      swift_allocObject();
      v22 = sub_10003A988(v14);
      swift_getKeyPath();
      swift_getKeyPath();
      v31 = v22;
      v23 = v21;

      static Published.subscript.setter();
      sub_10001BF98();
    }

    (*(v20 + 8))(v16, v19);
  }

  else
  {
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      swift_getKeyPath();
      swift_getKeyPath();
      v31 = 0;
      v26 = v25;
      static Published.subscript.setter();
      sub_10001BF98();
    }
  }
}

id sub_10001B798()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_10005A3C8 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:static NSNotificationName.ClusterEvent];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for TripModel(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for TripModel(uint64_t a1)
{
  result = qword_10005B498;
  if (!qword_10005B498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001BC14()
{
  v1 = v0;
  v2 = 0x612065766168;
  _StringGuts.grow(_:)(99);
  v3._countAndFlagsBits = 0x646F4D706972545BLL;
  v3._object = 0xEC000000205D6C65;
  String.append(_:)(v3);
  v4 = OBJC_IVAR____TtC4Trip9TripModel_tripComputer;
  v5 = *(v0 + OBJC_IVAR____TtC4Trip9TripModel_tripComputer);
  v6 = 28526;
  if (v5)
  {
    v7 = 0x612065766168;
  }

  else
  {
    v7 = 28526;
  }

  v8 = 0xE200000000000000;
  if (v5)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = 0xE200000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v7);

  v11._countAndFlagsBits = 0x6D6F437069727420;
  v11._object = 0xEF202C7265747570;
  String.append(_:)(v11);
  v12 = OBJC_IVAR____TtC4Trip9TripModel_consumption;
  v13 = *(v0 + OBJC_IVAR____TtC4Trip9TripModel_consumption);
  if (v13)
  {
    v14 = 0x612065766168;
  }

  else
  {
    v14 = 28526;
  }

  if (v13)
  {
    v15 = 0xE600000000000000;
  }

  else
  {
    v15 = 0xE200000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17._countAndFlagsBits = 0x706D75736E6F6320;
  v17._object = 0xEF20202E6E6F6974;
  String.append(_:)(v17);
  v18 = v0 + OBJC_IVAR____TtC4Trip9TripModel__carObservable;
  swift_beginAccess();
  v19 = *(v18 + 8);
  v20 = dispatch thunk of CAFCarObservable.tripComputer.getter();

  if (v20)
  {

    v8 = 0xE600000000000000;
    v6 = 0x612065766168;
  }

  v21._countAndFlagsBits = v6;
  v21._object = v8;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0xD00000000000001DLL;
  v22._object = 0x8000000100043090;
  String.append(_:)(v22);
  v23 = *(v18 + 8);
  v24 = dispatch thunk of CAFCarObservable.fuel.getter();

  if (v24)
  {

    v25 = 0xE600000000000000;
  }

  else
  {
    v25 = 0xE200000000000000;
    v2 = 28526;
  }

  v26._countAndFlagsBits = v2;
  v26._object = v25;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0xD000000000000014;
  v27._object = 0x80000001000430B0;
  String.append(_:)(v27);
  sub_100034D00(0, 0xE000000000000000, 0xD000000000000011, 0x80000001000430D0, 252);

  if (!*(v1 + v4))
  {
    v28 = *(v18 + 8);
    v29 = dispatch thunk of CAFCarObservable.tripComputer.getter();

    if (v29)
    {
      sub_100034D00(0xD000000000000033, 0x8000000100043120, 0xD000000000000011, 0x80000001000430D0, 255);
      v30 = *(v1 + v4);
      *(v1 + v4) = v29;
      v31 = v29;

      v32 = [v31 odometer];
      v33 = *(v1 + OBJC_IVAR____TtC4Trip9TripModel_odometer);
      *(v1 + OBJC_IVAR____TtC4Trip9TripModel_odometer) = v32;
    }
  }

  if (!*(v1 + v12))
  {
    v34 = *(v18 + 8);
    v35 = dispatch thunk of CAFCarObservable.fuel.getter();

    if (v35)
    {
      sub_100034D00(0xD00000000000002DLL, 0x80000001000430F0, 0xD000000000000011, 0x80000001000430D0, 264);
      v36 = [v35 fuelConsumption];

      v37 = *(v1 + v12);
      *(v1 + v12) = v36;
    }
  }

  sub_10001BF98();
}

void sub_10001BF98()
{
  v1 = v0;
  v2 = type metadata accessor for CarouselConfiguration.AnimationStyle();
  v65 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = (&v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CarouselConfiguration.CarouselStyle();
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v63 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CarouselConfiguration();
  __chkstk_darwin(v7 - 8);
  v64 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = 0;
  v75 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v74 = 0xD000000000000013;
  v75 = 0x8000000100042FD0;
  v9 = OBJC_IVAR____TtC4Trip9TripModel_tripComputer;
  v10 = *&v0[OBJC_IVAR____TtC4Trip9TripModel_tripComputer];
  if (v10 && (v11 = [v10 trips]) != 0)
  {
    v12 = v11;
    sub_100014060(0, &qword_10005B5C8, CAFTrip_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v14 = -1;
  }

  v73 = v14;
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x706D75736E6F6320;
  v16._object = 0xED00003D6E6F6974;
  String.append(_:)(v16);
  v66 = OBJC_IVAR____TtC4Trip9TripModel_consumption;
  if (*&v1[OBJC_IVAR____TtC4Trip9TripModel_consumption])
  {
    v17 = 5457241;
  }

  else
  {
    v17 = 20302;
  }

  if (*&v1[OBJC_IVAR____TtC4Trip9TripModel_consumption])
  {
    v18 = 0xE300000000000000;
  }

  else
  {
    v18 = 0xE200000000000000;
  }

  v19 = v18;
  String.append(_:)(*&v17);

  v67 = "[Trip] trips.count=";
  sub_100034D00(v74, v75, 0xD000000000000011, 0x8000000100042FF0, 273);

  v20 = &_swiftEmptyArrayStorage;
  v73 = &_swiftEmptyArrayStorage;
  v21 = *&v1[v9];
  if (!v21)
  {
    goto LABEL_33;
  }

  v22 = v21;
  v23 = [v22 trips];
  if (!v23)
  {

    goto LABEL_33;
  }

  v24 = v23;
  v71 = sub_100014060(0, &qword_10005B5C8, CAFTrip_ptr);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v25 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_17;
    }

LABEL_30:

    goto LABEL_33;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

LABEL_17:

  v74 = sub_10001F238(v26);
  sub_10001E5BC(&v74);

  v27 = v74;
  if (v74 < 0 || (v74 & 0x4000000000000000) != 0)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
    if (v28)
    {
      goto LABEL_20;
    }

LABEL_32:

    v73 = &_swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v28 = *(v74 + 16);
  if (!v28)
  {
    goto LABEL_32;
  }

LABEL_20:
  v69 = v22;
  v70 = v1;
  v59 = v4;
  v60 = v2;
  v74 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v28 < 0)
  {
    __break(1u);

    __break(1u);
    return;
  }

  v29 = 0;
  v68 = v27 & 0xC000000000000001;
  do
  {
    if (v68)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v30 = *(v27 + 8 * v29 + 32);
    }

    v31 = v30;
    v32 = v69;
    ++v29;
    sub_10001401C(&qword_10005B5D0, &qword_10005B5C8, CAFTrip_ptr, &protocol conformance descriptor for CAFTrip);
    v33 = CAFObserved<>.observable.getter();
    v34 = [v32 odometer];
    sub_100014060(0, &qword_10005B5B8, CAFOdometer_ptr);
    sub_10001401C(&qword_10005B5C0, &qword_10005B5B8, CAFOdometer_ptr, &protocol conformance descriptor for CAFOdometer);
    v35 = CAFObserved<>.observable.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v36 = v72;
    type metadata accessor for TripCard(0);
    swift_allocObject();
    sub_1000310C8(v33, v35, v36);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v28 != v29);

  v20 = v74;
  v73 = v74;
  v1 = v70;
  v4 = v59;
  v2 = v60;
LABEL_33:
  v37 = *&v1[v66];
  if (v37)
  {
    v38 = v37;
    if (sub_10001CB94(v1))
    {
    }

    else
    {
      v39 = v4;
      v40 = v2;
      sub_100034CE8(0xD000000000000029, 0x8000000100043040, 0xD000000000000011, v67 | 0x8000000000000000, 294);
      sub_100014060(0, &qword_10005B5A8, CAFFuelConsumption_ptr);
      sub_10001401C(&qword_10005B5B0, &qword_10005B5A8, CAFFuelConsumption_ptr, &protocol conformance descriptor for CAFFuelConsumption);
      v41 = CAFObserved<>.observable.getter();
      v42 = *&v1[OBJC_IVAR____TtC4Trip9TripModel_odometer];
      if (v42)
      {
        sub_100014060(0, &qword_10005B5B8, CAFOdometer_ptr);
        sub_10001401C(&qword_10005B5C0, &qword_10005B5B8, CAFOdometer_ptr, &protocol conformance descriptor for CAFOdometer);
        v43 = v42;
        v44 = CAFObserved<>.observable.getter();
      }

      else
      {
        v44 = 0;
      }

      type metadata accessor for InfoCard(0);
      swift_allocObject();
      sub_100033B50(v41, v44, 1, 0);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v2 = v40;
      v4 = v39;
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v20 = v73;
    }
  }

  v74 = 0;
  v75 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v74 = 0x75205D706972545BLL;
  v75 = 0xEF20646574616470;
  v45 = v20 >> 62;
  if (v20 >> 62)
  {
    v46 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v46 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = v46;
  v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0x2E736472616320;
  v48._object = 0xE700000000000000;
  String.append(_:)(v48);
  sub_100034D00(v74, v75, 0xD000000000000011, v67 | 0x8000000000000000, 299);

  if (v45)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_46:
      v49 = sub_100003090(&qword_10005B598, &qword_100040DE0);
      v50 = v63;
      v51 = v63 + *(v49 + 48);
      *v63 = 0x4024000000000000;
      *v51 = xmmword_100040BF0;
      *(v51 + 2) = 0x3FFCCCCCCCCCCCCDLL;
      v52 = enum case for CarouselConfiguration.PageControlPosition.innerTrailing(_:);
      v53 = type metadata accessor for CarouselConfiguration.PageControlPosition();
      (*(*(v53 - 8) + 104))(v51, v52, v53);
      (*(v61 + 104))(v50, enum case for CarouselConfiguration.CarouselStyle.rectangular(_:), v62);
      *v4 = 0x3FEE666666666666;
      (*(v65 + 104))(v4, enum case for CarouselConfiguration.AnimationStyle.withDecorations(_:), v2);
      CarouselConfiguration.init(style:platterPadding:alwaysHidePlatter:animationStyle:decorationsVisibilityDuration:)();
      v74 = 0;
      sub_100003090(&qword_10005B5A0, &qword_100040DE8);
      swift_allocObject();
      v54 = CarouselModel.init(items:activeItem:configuration:)();
      swift_getKeyPath();
      swift_getKeyPath();
      v74 = v54;
      v55 = v1;

      static Published.subscript.setter();
      sub_10001A97C();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v74)
      {
        swift_allocObject();
        swift_unknownObjectWeakInit();
        dispatch thunk of CarouselModel.itemWillAppear.setter();
      }

      return;
    }
  }

  else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_46;
  }

  v74 = 0;
  v75 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  v74 = 0xD000000000000020;
  v75 = 0x8000000100043010;
  if (v45)
  {
    v56 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v56 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = v56;
  v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v57);

  v58._countAndFlagsBits = 0x2E736472616320;
  v58._object = 0xE700000000000000;
  String.append(_:)(v58);
  sub_100034D64(v74, v75, 0xD000000000000011, v67 | 0x8000000000000000, 302);
}