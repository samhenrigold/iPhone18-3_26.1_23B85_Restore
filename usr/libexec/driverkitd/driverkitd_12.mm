uint64_t sub_1000E3554()
{
  sub_100003C4C((v0 + 16), *(v0 + 40));
  sub_1000E0280(v26);
  v3 = v27;
  v2 = v28;
  sub_100003C4C(v26, v27);
  v4 = (*(*(v2 + 8) + 8))(v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  sub_100003C90(v26);
  v8 = 0;
  v9 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (v8 << 9) | (8 * v11);
    if ((*(*(v4 + 56) + v12) & 2) != 0)
    {
      v13 = *(*(v4 + 48) + v12);
      v14 = *sub_100003C4C((v22 + 16), *(v22 + 40));
      v1 = sub_100003CDC(&qword_100133C70, &qword_100101860);
      swift_beginAccess();
      v15 = *(v14 + 16);
      if (*(v15 + 16) && (v16 = sub_100061698(v1), (v17 & 1) != 0))
      {
        sub_10000B430(*(v15 + 56) + 32 * v16, v25);
      }

      else
      {
        memset(v25, 0, sizeof(v25));
      }

      sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
      if (!swift_dynamicCast())
      {
        goto LABEL_18;
      }

      sub_100009F34(v23, v26);
      v1 = v27;
      v18 = v28;
      sub_100003C4C(v26, v27);
      (*(*(v18 + 8) + 16))(v13, v1);
      sub_100003C90(v26);
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v8;
    if (v7)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_18:
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_10000A184(v23, &qword_100139368, &qword_100101868);
  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v23[0] = 0xD000000000000016;
  *(&v23[0] + 1) = 0x800000010010C820;
  *&v25[0] = v1;
  sub_100003CDC(&qword_100139370, &unk_100101870);
  v20._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v20);

  v21._object = 0x800000010010C840;
  v21._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v21);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E3948()
{
  sub_100003C90((v0 + 16));

  return v0;
}

uint64_t sub_1000E39A8()
{
  sub_1000E3948();

  return swift_deallocClassInstance();
}

void *sub_1000E3A84(uint64_t a1, uint64_t a2)
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

  sub_100003CDC(&qword_100139348, &qword_100101848);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1000E3AF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v7 = sub_1000E3BC4(v12, 0, 0, 1, a1, a2, v6);
  v8 = v12[0];
  if (!v7)
  {
    ObjectType = &type metadata for _StringGuts;
    v12[0] = a1;
    v12[1] = a2;
    v10 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = v7;

  ObjectType = swift_getObjectType();
  v12[0] = v9;
  v10 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000B430(v12, v10);
    *a3 = v10 + 32;
  }

LABEL_4:
  sub_100003C90(v12);
  return v8;
}

unint64_t sub_1000E3BC4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6, __n128 a7)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v10 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v10)
        {
          v13[0] = a5;
          v13[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v13, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v10) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000E3CD0(a5, a6);
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
    v12 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v12;
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

void *sub_1000E3CD0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000E3D1C(a1, a2);
  sub_1000E3E4C(&off_100125F30);
  return v3;
}

void *sub_1000E3D1C(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1000E3A84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000E3A84(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_1000E3E4C(uint64_t result)
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

  result = sub_1000E3F38(result, v11, 1, v3);
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

char *sub_1000E3F38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CDC(&qword_100139348, &qword_100101848);
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

uint64_t sub_1000E402C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for StateManagerWrapper();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1000E62F0(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_1000E6604(v17 + 1);
    }

    sub_1000E76C4(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a2 + 16));
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_1000E7BB8(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(*(v6 + 48) + 8 * v12) + 16) != *(a2 + 16))
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1000E4238(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v34 = a2;
  v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1000EB8E8(&qword_1001342B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1000E7D30(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1000E4518(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_1000146C4(a2, a3);
    sub_1000E7FD4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_1000146C4(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_1000146C4(v18, v17);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_1000146C4(v18, v17);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v33 = __DataStorage._offset.getter();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    __DataStorage._length.getter();
    a3 = v44;
    sub_100045F4C(v32, a2, v44, v50);
    sub_1000128D8(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_1000146C4(v18, v17);
LABEL_60:
  sub_100045F4C(v50, a2, a3, &v49);
  sub_1000128D8(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_1000128D8(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_1000146C4(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_1000E49A0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000E844C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000E4AF0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v66 = v2;
    v16 = v9;
    Hasher.init(_seed:)();
    sub_1000D7374();
    String.hash(into:)();

    sub_1000D7614();
    if (v17)
    {
      v18 = String._bridgeToObjectiveC()();

      v19 = OSKextParseVersionCFString();
    }

    else
    {
      v19 = 0;
    }

    Hasher._combine(_:)(v19);
    sub_1000138F8(a2 + 24, v73);
    v67 = a1;
    if (v74)
    {
      if (v74 == 1)
      {
        v23 = *&v73[0];
        sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        dispatch thunk of Hashable.hash(into:)();
        Hasher._combine(_:)(*(v23 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
      }
    }

    else
    {
      sub_100009F34(v73, v70);
      v24 = v71;
      v25 = v72;
      sub_100003C4C(v70, v71);
      (*(v25 + 64))(v24, v25);
      sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of Hashable.hash(into:)();
      (*(v7 + 8))(v11, v16);
      sub_100003C90(v70);
    }

    v26 = Hasher._finalize()();
    v27 = -1 << *(v12 + 32);
    v28 = v26 & ~v27;
    v69 = v12 + 56;
    if (((*(v12 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
LABEL_61:
      v62 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75[0] = *v62;

      sub_1000E85CC(v64, v28, isUniquelyReferenced_nonNull_native);
      *v62 = v75[0];
      *v67 = a2;
      return 1;
    }

    v68 = ~v27;
    while (1)
    {
      v29 = *(*(v12 + 48) + 8 * v28);
      v30 = *(v29 + 16);
      v31 = qword_100133A50;

      if (v31 != -1)
      {
        swift_once();
      }

      v33 = qword_10014E8C0;
      v32 = *algn_10014E8C8;
      if (*(v30 + 16) && (v34 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v35 & 1) != 0) && (sub_10000B430(*(v30 + 56) + 32 * v34, v75), (swift_dynamicCast() & 1) != 0))
      {
        v36 = *(&v73[0] + 1);
        v37 = *&v73[0];
      }

      else
      {
        v37 = 0xD000000000000014;
        v36 = 0x8000000100104280;
      }

      v38 = *(a2 + 16);
      if (*(v38 + 16) && (v39 = sub_100061588(v33, v32), (v40 & 1) != 0) && (sub_10000B430(*(v38 + 56) + 32 * v39, v75), (swift_dynamicCast() & 1) != 0))
      {
        v41 = *(&v73[0] + 1);
        if (v37 != *&v73[0])
        {
          goto LABEL_38;
        }
      }

      else
      {
        v41 = 0x8000000100104280;
        if (v37 != 0xD000000000000014)
        {
          goto LABEL_38;
        }
      }

      if (v36 == v41)
      {

        goto LABEL_39;
      }

LABEL_38:
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_39:
      v43 = *(v29 + 16);
      if (*(v43 + 16) && (v44 = sub_100061588(v33, v32), (v45 & 1) != 0) && (sub_10000B430(*(v43 + 56) + 32 * v44, v75), (swift_dynamicCast() & 1) != 0))
      {
        v47 = *(&v73[0] + 1);
        v46 = *&v73[0];
      }

      else
      {
        v46 = 0xD000000000000014;
        v47 = 0x8000000100104280;
      }

      if (v46 == 0xD000000000000014 && 0x8000000100104280 == v47)
      {

        goto LABEL_22;
      }

      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v48)
      {
LABEL_21:

        goto LABEL_22;
      }

      v49 = *(v29 + 16);
      if (qword_100133A70 != -1)
      {
        swift_once();
      }

      v50 = qword_10014E900;
      v51 = *algn_10014E908;
      if (*(v49 + 16) && (v52 = sub_100061588(qword_10014E900, *algn_10014E908), (v53 & 1) != 0) && (sub_10000B430(*(v49 + 56) + 32 * v52, v75), swift_dynamicCast()))
      {
        v54 = String._bridgeToObjectiveC()();

        v55 = OSKextParseVersionCFString();
      }

      else
      {
        v55 = 0;
      }

      v56 = *(a2 + 16);
      if (*(v56 + 16) && (v57 = sub_100061588(v50, v51), (v58 & 1) != 0) && (sub_10000B430(*(v56 + 56) + 32 * v57, v75), swift_dynamicCast()))
      {
        v59 = String._bridgeToObjectiveC()();

        v60 = OSKextParseVersionCFString();

        if (v55 != v60)
        {
          goto LABEL_21;
        }
      }

      else if (v55)
      {
        goto LABEL_21;
      }

      v61 = sub_1000DCBA8(v29 + 24, a2 + 24);

      if (v61)
      {

        *v67 = *(*(v12 + 48) + 8 * v28);

        return 0;
      }

LABEL_22:
      v28 = (v28 + 1) & v68;
      if (((*(v69 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_61;
      }
    }
  }

  if (v12 < 0)
  {
    v13 = *v2;
  }

  else
  {
    v13 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  v14 = __CocoaSet.member(for:)();

  if (v14)
  {

    *&v73[0] = v14;
    type metadata accessor for OSExtension(0);
    swift_dynamicCast();
    result = 0;
    *a1 = v75[0];
    return result;
  }

  result = __CocoaSet.count.getter();
  if (!__OFADD__(result, 1))
  {
    v20 = sub_1000E64F0(v13, result + 1);
    v75[0] = v20;
    v21 = v20[2];
    if (v20[3] <= v21)
    {
      sub_1000E7070(v21 + 1);
      v20 = v75[0];
    }

    sub_1000E7768(v22, v20);

    *v3 = v20;
    *a1 = a2;
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E5304(uint64_t a1, uint64_t *a2)
{
  v68 = *v2;
  Hasher.init(_seed:)();
  v4 = *a2;
  v5 = a2[1];
  String.hash(into:)();
  v6 = *(a2 + 16);
  String.hash(into:)();

  v63 = a2[4] >> 60;
  v64 = a2[4];
  v65 = a2[3];
  v60 = v2;
  if (v63 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v7 = Hasher._finalize()();
  v8 = -1 << *(v68 + 32);
  v9 = v7 & ~v8;
  if (((*(v68 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_110:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *v60;
    sub_1000EB9C8(a2, v70);
    sub_1000E8D3C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v60 = v69;
    v50 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v50;
    *(a1 + 32) = a2[4];
    return 1;
  }

  v66 = v4;
  v67 = ~v8;
  if (v65)
  {
    v10 = 0;
  }

  else
  {
    v10 = v64 == 0xC000000000000000;
  }

  v11 = !v10;
  v59 = v11;
  v61 = v64 >> 62;
  v12 = __OFSUB__(HIDWORD(v65), v65);
  v58 = v12;
  while (1)
  {
    v17 = *(v68 + 48) + 40 * v9;
    v18 = *(v17 + 16);
    v20 = *(v17 + 24);
    v19 = *(v17 + 32);
    v21 = *v17 == v4 && *(v17 + 8) == v5;
    if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_18;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v23 = 0xE200000000000000;
        v22 = 20805;
        if (v6 <= 2)
        {
          goto LABEL_30;
        }
      }

      else if (v18 == 4)
      {
        v23 = 0xE200000000000000;
        v22 = 21575;
        if (v6 <= 2)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v23 = 0xE200000000000000;
        v22 = 17735;
        if (v6 <= 2)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        v22 = 21580;
      }

      else
      {
        v22 = 17740;
      }

      v23 = 0xE200000000000000;
      if (v6 <= 2)
      {
LABEL_30:
        if (v6)
        {
          if (v6 == 1)
          {
            v24 = 21580;
          }

          else
          {
            v24 = 17740;
          }

          v25 = 0xE200000000000000;
        }

        else
        {
          v25 = 0xE300000000000000;
          v24 = 7958081;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v23 = 0xE300000000000000;
      v22 = 7958081;
      if (v6 <= 2)
      {
        goto LABEL_30;
      }
    }

    v26 = 21575;
    if (v6 != 4)
    {
      v26 = 17735;
    }

    v24 = v6 == 3 ? 20805 : v26;
    v25 = 0xE200000000000000;
LABEL_47:
    v27 = v5;
    if (v22 == v24 && v23 == v25)
    {

      sub_1000146B0(v20, v19);
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000146B0(v20, v19);

      if ((v28 & 1) == 0)
      {

        sub_100014528(v20, v19);
        v4 = v66;
        goto LABEL_55;
      }
    }

    if (v19 >> 60 == 15)
    {
      sub_1000146B0(v20, v19);
      v14 = v64;
      v13 = v65;
      sub_1000146B0(v65, v64);

      sub_100014528(v20, v19);
      v4 = v66;
      v5 = v27;
      if (v63 <= 0xE)
      {
LABEL_16:
        sub_100014528(v20, v19);
        v15 = v13;
        v16 = v14;
LABEL_17:
        sub_100014528(v15, v16);
        goto LABEL_18;
      }

      sub_1000EBA24(a2);
LABEL_113:
      sub_100014528(v20, v19);
      v52 = a1;
      goto LABEL_115;
    }

    if (v63 > 0xE)
    {
      sub_1000146B0(v20, v19);
      v14 = v64;
      v13 = v65;
      sub_1000146B0(v65, v64);

      sub_100014528(v20, v19);
      v4 = v66;
      v5 = v27;
      goto LABEL_16;
    }

    v29 = v19 >> 62;
    v4 = v66;
    v5 = v27;
    if (v19 >> 62 == 3)
    {
      break;
    }

    if (v29 > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_82;
      }

      v35 = *(v20 + 16);
      v34 = *(v20 + 24);
      v36 = __OFSUB__(v34, v35);
      v33 = v34 - v35;
      if (v36)
      {
        goto LABEL_119;
      }

      if (v61 <= 1)
      {
        goto LABEL_79;
      }
    }

    else if (v29)
    {
      LODWORD(v33) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_118;
      }

      v33 = v33;
      if (v61 <= 1)
      {
LABEL_79:
        v37 = BYTE6(v64);
        if (v61)
        {
          v37 = HIDWORD(v65) - v65;
          if (v58)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_85;
      }
    }

    else
    {
      v33 = BYTE6(v19);
      if (v61 <= 1)
      {
        goto LABEL_79;
      }
    }

LABEL_83:
    if (v61 != 2)
    {
      if (v33)
      {
LABEL_91:
        sub_1000146B0(v20, v19);
        sub_1000146B0(v65, v64);
        sub_100014528(v65, v64);

        sub_100014528(v20, v19);
        v15 = v20;
        v16 = v19;
        goto LABEL_17;
      }

LABEL_112:
      sub_1000146B0(v20, v19);
      sub_1000146B0(v65, v64);
      sub_1000EBA24(a2);
      sub_100014528(v65, v64);

      sub_100014528(v20, v19);
      goto LABEL_113;
    }

    v39 = *(v65 + 16);
    v38 = *(v65 + 24);
    v36 = __OFSUB__(v38, v39);
    v37 = v38 - v39;
    if (v36)
    {
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
    }

LABEL_85:
    if (v33 != v37)
    {
      goto LABEL_91;
    }

    if (v33 < 1)
    {
      goto LABEL_112;
    }

    if (v29 <= 1)
    {
      if (!v29)
      {
        *v70 = v20;
        *&v70[8] = v19;
        v70[10] = BYTE2(v19);
        v70[11] = BYTE3(v19);
        v70[12] = BYTE4(v19);
        v70[13] = BYTE5(v19);
        sub_1000146B0(v20, v19);
        sub_1000146B0(v65, v64);
        sub_1000146B0(v65, v64);
        sub_100045F4C(v70, v65, v64, &v69);
        sub_100014528(v65, v64);

        sub_100014528(v20, v19);
        v40 = v65;
        v41 = v64;
        goto LABEL_108;
      }

      if (v20 >> 32 < v20)
      {
        goto LABEL_120;
      }

      sub_1000146B0(v20, v19);
      sub_1000146B0(v65, v64);
      sub_1000146B0(v65, v64);
      v44 = __DataStorage._bytes.getter();
      if (v44)
      {
        v46 = __DataStorage._offset.getter();
        if (__OFSUB__(v20, v46))
        {
          goto LABEL_123;
        }

        v44 += v20 - v46;
      }

LABEL_105:
      __DataStorage._length.getter();
      sub_100045F4C(v44, v65, v64, v70);
      sub_100014528(v65, v64);

      sub_100014528(v20, v19);
      sub_100014528(v65, v64);
      v47 = v70[0];
      sub_100014528(v20, v19);
      v52 = a1;
      v4 = v66;
      if (v47)
      {
        goto LABEL_114;
      }

LABEL_55:
      v5 = v27;
      goto LABEL_18;
    }

    if (v29 == 2)
    {
      v43 = *(v20 + 16);
      v42 = *(v20 + 24);
      sub_1000146B0(v20, v19);
      sub_1000146B0(v65, v64);
      sub_1000146B0(v65, v64);
      v44 = __DataStorage._bytes.getter();
      if (v44)
      {
        v45 = __DataStorage._offset.getter();
        if (__OFSUB__(v43, v45))
        {
          goto LABEL_122;
        }

        v44 += v43 - v45;
      }

      if (__OFSUB__(v42, v43))
      {
        goto LABEL_121;
      }

      goto LABEL_105;
    }

    *&v70[6] = 0;
    *v70 = 0;
    sub_1000146B0(v20, v19);
    sub_1000146B0(v65, v64);
    sub_1000146B0(v65, v64);
    sub_100045F4C(v70, v65, v64, &v69);
    sub_100014528(v65, v64);

    sub_100014528(v20, v19);
    v40 = v65;
    v41 = v64;
LABEL_108:
    sub_100014528(v40, v41);
    v48 = v69;
    sub_100014528(v20, v19);
    v52 = a1;
    if (v48)
    {
      goto LABEL_114;
    }

LABEL_18:
    v9 = (v9 + 1) & v67;
    if (((*(v68 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_110;
    }
  }

  if (v20)
  {
    v30 = 0;
  }

  else
  {
    v30 = v19 == 0xC000000000000000;
  }

  v32 = !v30 || v64 >> 62 != 3;
  if ((v32 | v59))
  {
LABEL_82:
    v33 = 0;
    if (v61 <= 1)
    {
      goto LABEL_79;
    }

    goto LABEL_83;
  }

  sub_1000146B0(0, 0xC000000000000000);
  sub_1000146B0(0, 0xC000000000000000);
  sub_100014528(0, 0xC000000000000000);

  sub_100014528(0, 0xC000000000000000);
  sub_100014528(0, 0xC000000000000000);
  v52 = a1;
LABEL_114:
  sub_1000EBA24(a2);
LABEL_115:
  v53 = *(v68 + 48) + 40 * v9;
  v54 = *(v53 + 8);
  v55 = *(v53 + 16);
  v56 = *(v53 + 24);
  v57 = *(v53 + 32);
  *v52 = *v53;
  *(v52 + 8) = v54;
  *(v52 + 16) = v55;
  *(v52 + 24) = v56;
  *(v52 + 32) = v57;

  sub_1000146B0(v56, v57);
  return 0;
}

uint64_t sub_1000E5D04(uint64_t a1, unint64_t *a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  ApprovalSettingsStateEntry.hash(into:)(&v60);
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = *a2;
    v10 = a2[1];
    while (1)
    {
      v11 = *(v4 + 48) + 72 * v7;
      v60 = *v11;
      v13 = *(v11 + 32);
      v12 = *(v11 + 48);
      v14 = *(v11 + 64);
      v61 = *(v11 + 16);
      v62 = v13;
      v64 = v14;
      v63 = v12;
      if (v60 != __PAIR128__(v10, v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v15 = a2[3];
      if (*(&v61 + 1))
      {
        if (!v15 || v61 != *(a2 + 1) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v15)
      {
        goto LABEL_4;
      }

      v16 = a2[5];
      if (*(&v62 + 1))
      {
        if (!v16 || v62 != *(a2 + 2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v16)
      {
        goto LABEL_4;
      }

      v17 = a2[7];
      if (*(&v63 + 1) >> 60 == 15)
      {
        if (v17 >> 60 != 15)
        {
          goto LABEL_4;
        }

        goto LABEL_19;
      }

      if (v17 >> 60 == 15)
      {
        goto LABEL_4;
      }

      v18 = a2[6];
      v19 = *(&v63 + 1) >> 62;
      v20 = v17 >> 62;
      if (*(&v63 + 1) >> 62 == 3)
      {
        break;
      }

      if (v19 <= 1)
      {
        if (!v19)
        {
          v21 = BYTE14(v63);
          if (v20 > 1)
          {
            goto LABEL_44;
          }

          goto LABEL_39;
        }

        LODWORD(v21) = DWORD1(v63) - v63;
        if (__OFSUB__(DWORD1(v63), v63))
        {
          goto LABEL_75;
        }

        v21 = v21;
        goto LABEL_38;
      }

      if (v19 == 2)
      {
        v23 = *(v63 + 16);
        v22 = *(v63 + 24);
        v24 = __OFSUB__(v22, v23);
        v21 = v22 - v23;
        if (v24)
        {
          goto LABEL_74;
        }

        goto LABEL_38;
      }

      v21 = 0;
      if (v20 > 1)
      {
LABEL_44:
        if (v20 != 2)
        {
          if (v21)
          {
            goto LABEL_4;
          }

          goto LABEL_19;
        }

        v27 = *(v18 + 16);
        v26 = *(v18 + 24);
        v24 = __OFSUB__(v26, v27);
        v25 = v26 - v27;
        if (v24)
        {
          goto LABEL_73;
        }

        goto LABEL_46;
      }

LABEL_39:
      if (v20)
      {
        LODWORD(v25) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
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
        }

        v25 = v25;
      }

      else
      {
        v25 = BYTE6(v17);
      }

LABEL_46:
      if (v21 != v25)
      {
        goto LABEL_4;
      }

      if (v21 < 1)
      {
        goto LABEL_19;
      }

      v54 = a2[7];
      if (v19 > 1)
      {
        v53 = a2[6];
        if (v19 != 2)
        {
          *(v57 + 6) = 0;
          v57[0] = 0;
          sub_1000681CC(&v60, v58);
          v29 = v53;
LABEL_62:
          sub_100045F4C(v57, v29, v54, v58);
          sub_100068204(&v60);
          if ((v58[0] & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_19;
        }

        v49 = *(v63 + 24);
        v52 = *(v63 + 16);
        sub_1000681CC(&v60, v58);
        v30 = __DataStorage._bytes.getter();
        if (v30)
        {
          v46 = v30;
          v31 = __DataStorage._offset.getter();
          v32 = v52;
          if (__OFSUB__(v52, v31))
          {
            goto LABEL_78;
          }

          v47 = v52 - v31 + v46;
        }

        else
        {
          v47 = 0;
          v32 = v52;
        }

        if (__OFSUB__(v49, v32))
        {
          goto LABEL_77;
        }

        __DataStorage._length.getter();
        v35 = v47;
      }

      else
      {
        if (!v19)
        {
          LODWORD(v57[0]) = v63;
          WORD2(v57[0]) = WORD2(v63);
          *(v57 + 6) = *(&v63 + 6);
          v28 = v18;
          sub_1000681CC(&v60, v58);
          v29 = v28;
          goto LABEL_62;
        }

        v50 = v63;
        v53 = a2[6];
        if (v63 >> 32 < v63)
        {
          goto LABEL_76;
        }

        sub_1000681CC(&v60, v58);
        v33 = __DataStorage._bytes.getter();
        if (v33)
        {
          v48 = v33;
          v34 = __DataStorage._offset.getter();
          if (__OFSUB__(v50, v34))
          {
            goto LABEL_79;
          }

          v51 = v50 - v34 + v48;
        }

        else
        {
          v51 = 0;
        }

        __DataStorage._length.getter();
        v35 = v51;
      }

      sub_100045F4C(v35, v53, v54, v58);
      sub_100068204(&v60);
      if ((v58[0] & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_19:
      if (v64 == *(a2 + 64))
      {
        sub_100068204(a2);
        v39 = *(v4 + 48) + 72 * v7;
        v41 = *(v39 + 16);
        v40 = *(v39 + 32);
        v42 = *(v39 + 64);
        v58[3] = *(v39 + 48);
        v59 = v42;
        v58[0] = *v39;
        v58[1] = v41;
        v58[2] = v40;
        v43 = *(v39 + 48);
        *(a1 + 32) = *(v39 + 32);
        *(a1 + 48) = v43;
        *(a1 + 64) = *(v39 + 64);
        v44 = *(v39 + 16);
        *a1 = *v39;
        *(a1 + 16) = v44;
        sub_1000681CC(v58, v57);
        return 0;
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v21 = 0;
    if (v63 == __PAIR128__(0xC000000000000000, 0) && v17 >> 62 == 3)
    {
      v21 = 0;
      if (!v18 && v17 == 0xC000000000000000)
      {
        goto LABEL_19;
      }
    }

LABEL_38:
    if (v20 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_71:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v58[0] = *v55;
  sub_1000681CC(a2, &v60);
  sub_1000E9674(a2, v7, isUniquelyReferenced_nonNull_native);
  *v55 = *&v58[0];
  v37 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = v37;
  *(a1 + 64) = *(a2 + 64);
  v38 = *(a2 + 1);
  result = 1;
  *a1 = *a2;
  *(a1 + 16) = v38;
  return result;
}

Swift::Int sub_1000E62F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003CDC(&qword_100139388, &unk_100101898);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for StateManagerWrapper();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000E6604(v9 + 1);
        }

        v2 = v15;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(*(v14 + 16));
        result = Hasher._finalize()();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void *sub_1000E64F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003CDC(&qword_1001393E8, &unk_100101920);
    v2 = static _SetStorage.convert(_:capacity:)();
    v6 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for OSExtension(0);
      do
      {
        swift_dynamicCast();
        v3 = *(v2 + 16);
        if (*(v2 + 24) <= v3)
        {
          sub_1000E7070(v3 + 1);
        }

        v2 = v6;
        sub_1000E7768(v5, v6);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1000E6604(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003CDC(&qword_100139388, &unk_100101898);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v17 + 16));
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1000E6854(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for URL();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100003CDC(&qword_1001357D8, &unk_1000F56D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

Swift::Int sub_1000E6BB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003CDC(&qword_100139440, &unk_100101990);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1000E6E10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003CDC(&qword_1001393A0, &qword_1001018B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1000E7070(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003CDC(&qword_1001393E8, &unk_100101920);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1000E7768(*(*(v3 + 48) + 8 * (v12 | (v6 << 6))), v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      ;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v3 + 32);
    if (v15 >= 64)
    {
      bzero((v3 + 56), ((v15 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v15;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_1000E71D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003CDC(&qword_100139400, &unk_100101940);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = *(v3 + 48) + 40 * (v11 | (v5 << 6));
      v15 = *(v14 + 16);
      v17[0] = *v14;
      v17[1] = v15;
      v18 = *(v14 + 32);
      sub_1000E7A34(v17, v4);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      bzero((v3 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v4;
}

Swift::Int sub_1000E7358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003CDC(&qword_100139358, &qword_100101850);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v35 = v1;
    v36 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v37 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 72 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v40 = *(v18 + 32);
      v41 = *(v18 + 40);
      v23 = *(v18 + 56);
      v39 = *(v18 + 48);
      v24 = *(v18 + 64);
      Hasher.init(_seed:)();
      String.hash(into:)();
      if (v22)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (v41)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (v23 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        Data.hash(into:)();
      }

      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v5 = v37;
      v25 = -1 << *(v37 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v37 + 48) + 72 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v40;
      *(v14 + 40) = v41;
      *(v14 + 48) = v39;
      *(v14 + 56) = v23;
      *(v14 + 64) = v24;
      ++*(v37 + 16);
      v3 = v36;
      v10 = v38;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      v33 = v5;
      bzero(v7, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v5 = v33;
    }

    else
    {
      *v7 = -1 << v32;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  v34 = v5;

  *v2 = v34;
  return result;
}

unint64_t sub_1000E76C4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a1 + 16));
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1000E7768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1000D7374();
  String.hash(into:)();

  sub_1000D7614();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();

    v11 = OSKextParseVersionCFString();
  }

  else
  {
    v11 = 0;
  }

  Hasher._combine(_:)(v11);
  sub_1000138F8(a1 + 24, v19);
  if (v20)
  {
    if (v20 == 1)
    {
      v12 = *&v19[0];
      sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v12 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
    }
  }

  else
  {
    sub_100009F34(v19, v16);
    v13 = v17;
    v14 = v18;
    sub_100003C4C(v16, v17);
    (*(v14 + 64))(v13, v14);
    sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
    sub_100003C90(v16);
  }

  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

__n128 sub_1000E7A34(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();

  if (*(a1 + 32) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  Hasher._finalize()();
  v4 = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
  v5 = *(a2 + 48) + 40 * v4;
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = *(a1 + 32);
  ++*(a2 + 16);
  return result;
}

void sub_1000E7BB8(Swift::Int result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000E6604(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1000EA168(&qword_100139388, &unk_100101898);
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000EA5BC(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(result + 16));
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for StateManagerWrapper();
    a2 = v12;
    while (*(*(*(v8 + 48) + 8 * a2) + 16) != *(result + 16))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000E7D30(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000E6854(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1000E9C78();
      goto LABEL_12;
    }

    sub_1000EA7E4(v11 + 1);
  }

  v13 = *v3;
  sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1000EB8E8(&qword_1001342B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000E7FD4(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1000E6BB0(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_1000E9EB0();
        goto LABEL_68;
      }

      sub_1000EAB00(v8 + 1);
    }

    v10 = *v4;
    Hasher.init(_seed:)();
    Data.hash(into:)();
    result = Hasher._finalize()();
    v11 = v10 + 56;
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      if (v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = a2 == 0xC000000000000000;
      }

      v15 = !v14;
      v48 = v15;
      v16 = a2 >> 62;
      v17 = __OFSUB__(HIDWORD(v7), v7);
      v45 = v17;
      v44 = HIDWORD(v7) - v7;
      v46 = v13;
      v47 = BYTE6(a2);
      v41 = v7;
      v42 = a2;
      while (1)
      {
        v18 = (*(v10 + 48) + 16 * a3);
        v20 = *v18;
        v19 = v18[1];
        v21 = v19 >> 62;
        if (v19 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_32;
          }

          v31 = *(v20 + 16);
          v30 = *(v20 + 24);
          v29 = __OFSUB__(v30, v31);
          v25 = v30 - v31;
          if (v29)
          {
            goto LABEL_73;
          }
        }

        else if (v21)
        {
          LODWORD(v25) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_74;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v19);
        }

LABEL_33:
        if (v16 > 1)
        {
          if (v16 != 2)
          {
            if (!v25)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v28 = *(v7 + 16);
          v27 = *(v7 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v26 = v47;
          if (v16)
          {
            v26 = v44;
            if (v45)
            {
              goto LABEL_71;
            }
          }
        }

        if (v25 == v26)
        {
          if (v25 < 1)
          {
            goto LABEL_67;
          }

          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v33 = *(v20 + 16);
              v32 = *(v20 + 24);
              sub_1000146C4(v20, v19);
              v34 = __DataStorage._bytes.getter();
              if (v34)
              {
                v35 = __DataStorage._offset.getter();
                if (__OFSUB__(v33, v35))
                {
                  goto LABEL_77;
                }

                v34 += v33 - v35;
              }

              if (__OFSUB__(v32, v33))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v50[6] = 0;
            *v50 = 0;
            sub_1000146C4(v20, v19);
          }

          else
          {
            if (v21)
            {
              if (v20 >> 32 < v20)
              {
                goto LABEL_75;
              }

              sub_1000146C4(v20, v19);
              v34 = __DataStorage._bytes.getter();
              if (v34)
              {
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v20, v36))
                {
                  goto LABEL_78;
                }

                v34 += v20 - v36;
              }

LABEL_63:
              __DataStorage._length.getter();
              v7 = v41;
              a2 = v42;
              sub_100045F4C(v34, v41, v42, v50);
              result = sub_1000128D8(v20, v19);
              v11 = v10 + 56;
              v13 = v46;
              if (v50[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v50 = v20;
            *&v50[8] = v19;
            v50[10] = BYTE2(v19);
            v50[11] = BYTE3(v19);
            v50[12] = BYTE4(v19);
            v50[13] = BYTE5(v19);
            sub_1000146C4(v20, v19);
            v13 = v46;
          }

          sub_100045F4C(v50, v7, a2, &v49);
          result = sub_1000128D8(v20, v19);
          if (v49)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v13;
        if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || v16 < 3;
      if (((v24 | v48) & 1) == 0)
      {
LABEL_67:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v37 = *v43;
  *(*v43 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v38 = (*(v37 + 48) + 16 * a3);
  *v38 = v7;
  v38[1] = a2;
  v39 = *(v37 + 16);
  v29 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (v29)
  {
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
  }

  *(v37 + 16) = v40;
  return result;
}

void sub_1000E844C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000E6E10(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1000EA00C();
      goto LABEL_16;
    }

    sub_1000EAD3C(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000E85CC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  v64 = v4;
  if (v15 <= v14 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v16 = v11;
      sub_1000E7070(v14 + 1);
    }

    else
    {
      if (v15 > v14)
      {
        sub_1000EA168(&qword_1001393E8, &unk_100101920);
        goto LABEL_58;
      }

      v16 = v11;
      sub_1000EAF74(v14 + 1);
    }

    v66 = *v4;
    Hasher.init(_seed:)();
    sub_1000D7374();
    String.hash(into:)();

    sub_1000D7614();
    if (v17)
    {
      v18 = String._bridgeToObjectiveC()();

      v19 = OSKextParseVersionCFString();
    }

    else
    {
      v19 = 0;
    }

    Hasher._combine(_:)(v19);
    sub_1000138F8(a1 + 24, v70);
    if (v71)
    {
      if (v71 == 1)
      {
        v20 = *&v70[0];
        sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        dispatch thunk of Hashable.hash(into:)();
        Hasher._combine(_:)(*(v20 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
      }
    }

    else
    {
      sub_100009F34(v70, v67);
      v21 = v68;
      v22 = v69;
      sub_100003C4C(v67, v68);
      (*(v22 + 64))(v21, v22);
      sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of Hashable.hash(into:)();
      (*(v9 + 8))(v13, v16);
      sub_100003C90(v67);
    }

    v23 = Hasher._finalize()();
    v24 = v66 + 56;
    v25 = -1 << *(v66 + 32);
    a2 = v23 & ~v25;
    if ((*(v66 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v65 = ~v25;
      v63[1] = type metadata accessor for OSExtension(0);
      do
      {
        v26 = *(*(v66 + 48) + 8 * a2);
        v27 = *(v26 + 16);
        v28 = qword_100133A50;

        if (v28 != -1)
        {
          swift_once();
        }

        v29 = qword_10014E8C0;
        v30 = *algn_10014E8C8;
        if (*(v27 + 16) && (v31 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v32 & 1) != 0) && (sub_10000B430(*(v27 + 56) + 32 * v31, v72), (swift_dynamicCast() & 1) != 0))
        {
          v34 = *(&v70[0] + 1);
          v33 = *&v70[0];
        }

        else
        {
          v33 = 0xD000000000000014;
          v34 = 0x8000000100104280;
        }

        v35 = *(a1 + 16);
        if (*(v35 + 16) && (v36 = sub_100061588(v29, v30), (v37 & 1) != 0) && (sub_10000B430(*(v35 + 56) + 32 * v36, v72), (swift_dynamicCast() & 1) != 0))
        {
          v38 = *(&v70[0] + 1);
          if (v33 != *&v70[0])
          {
            goto LABEL_35;
          }
        }

        else
        {
          v38 = 0x8000000100104280;
          if (v33 != 0xD000000000000014)
          {
            goto LABEL_35;
          }
        }

        if (v34 == v38)
        {

          goto LABEL_36;
        }

LABEL_35:
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v39 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_36:
        v40 = *(v26 + 16);
        if (*(v40 + 16) && (v41 = sub_100061588(v29, v30), (v42 & 1) != 0) && (sub_10000B430(*(v40 + 56) + 32 * v41, v72), (swift_dynamicCast() & 1) != 0))
        {
          v44 = *(&v70[0] + 1);
          v43 = *&v70[0];
        }

        else
        {
          v43 = 0xD000000000000014;
          v44 = 0x8000000100104280;
        }

        if (v43 == 0xD000000000000014 && 0x8000000100104280 == v44)
        {

          goto LABEL_19;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v45)
        {
LABEL_18:

          goto LABEL_19;
        }

        v46 = *(v26 + 16);
        if (qword_100133A70 != -1)
        {
          swift_once();
        }

        v47 = qword_10014E900;
        v48 = *algn_10014E908;
        if (*(v46 + 16) && (v49 = sub_100061588(qword_10014E900, *algn_10014E908), (v50 & 1) != 0) && (sub_10000B430(*(v46 + 56) + 32 * v49, v72), swift_dynamicCast()))
        {
          v51 = String._bridgeToObjectiveC()();

          v52 = OSKextParseVersionCFString();
        }

        else
        {
          v52 = 0;
        }

        v53 = *(a1 + 16);
        if (*(v53 + 16) && (v54 = sub_100061588(v47, v48), (v55 & 1) != 0) && (sub_10000B430(*(v53 + 56) + 32 * v54, v72), swift_dynamicCast()))
        {
          v56 = String._bridgeToObjectiveC()();

          v57 = OSKextParseVersionCFString();

          if (v52 != v57)
          {
            goto LABEL_18;
          }
        }

        else if (v52)
        {
          goto LABEL_18;
        }

        v58 = sub_1000DCBA8(v26 + 24, a1 + 24);

        if (v58)
        {
          goto LABEL_61;
        }

LABEL_19:
        a2 = (a2 + 1) & v65;
      }

      while (((*(v24 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_58:
  v59 = *v64;
  *(v59 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v59 + 48) + 8 * a2) = a1;
  v60 = *(v59 + 16);
  v61 = __OFADD__(v60, 1);
  v62 = v60 + 1;
  if (v61)
  {
    __break(1u);
LABEL_61:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v59 + 16) = v62;
  }
}

Swift::Int sub_1000E8D3C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v60 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_120;
  }

  if (a3)
  {
    sub_1000E71D4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1000EA2A8();
      goto LABEL_120;
    }

    sub_1000EB0A0(v6 + 1);
  }

  v65 = *v3;
  Hasher.init(_seed:)();
  v8 = *(v5 + 8);
  v66 = *v5;
  String.hash(into:)();
  v9 = *(v5 + 16);
  String.hash(into:)();

  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  v61 = v11 >> 60;
  if (v11 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  result = Hasher._finalize()();
  v12 = -1 << *(v65 + 32);
  a2 = result & ~v12;
  if ((*(v65 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v63 = v8;
    v64 = ~v12;
    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0xC000000000000000;
    }

    v14 = !v13;
    v58 = v14;
    v15 = v11 >> 62;
    v16 = __OFSUB__(HIDWORD(v10), v10);
    v56 = v16;
    v55 = HIDWORD(v10) - v10;
    v57 = BYTE6(v11);
    v62 = v10;
    while (1)
    {
      v17 = v15;
      v18 = *(v65 + 48) + 40 * a2;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *(v18 + 32);
      if (*v18 == v66 && *(v18 + 8) == v8)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v15 = v17;
LABEL_23:
      a2 = (a2 + 1) & v64;
      if (((*(v65 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_120;
      }
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v24 = 0xE200000000000000;
        v23 = 20805;
        if (v9 > 2)
        {
          goto LABEL_45;
        }
      }

      else if (v19 == 4)
      {
        v24 = 0xE200000000000000;
        v23 = 21575;
        if (v9 > 2)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v24 = 0xE200000000000000;
        v23 = 17735;
        if (v9 > 2)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      if (v19)
      {
        if (v19 == 1)
        {
          v23 = 21580;
        }

        else
        {
          v23 = 17740;
        }

        v24 = 0xE200000000000000;
        if (v9 <= 2)
        {
          goto LABEL_35;
        }

LABEL_45:
        v27 = 21575;
        if (v9 != 4)
        {
          v27 = 17735;
        }

        if (v9 == 3)
        {
          v25 = 20805;
        }

        else
        {
          v25 = v27;
        }

        v26 = 0xE200000000000000;
LABEL_52:
        v28 = v11;
        if (v23 == v25 && v24 == v26)
        {

          sub_1000146B0(v20, v21);
        }

        else
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_1000146B0(v20, v21);

          if ((v29 & 1) == 0)
          {

            result = sub_100014528(v20, v21);
            v11 = v28;
            goto LABEL_64;
          }
        }

        v15 = v17;
        if (v21 >> 60 == 15)
        {
          sub_1000146B0(v20, v21);
          v11 = v28;
          sub_1000146B0(v62, v28);

          sub_100014528(v20, v21);
          if (v61 > 0xE)
          {
            goto LABEL_133;
          }

          goto LABEL_61;
        }

        v11 = v28;
        if (v61 > 0xE)
        {
          sub_1000146B0(v20, v21);
          sub_1000146B0(v62, v28);

          sub_100014528(v20, v21);
LABEL_61:
          sub_100014528(v20, v21);
          v30 = v62;
          v31 = v11;
LABEL_62:
          result = sub_100014528(v30, v31);
LABEL_65:
          v8 = v63;
          goto LABEL_23;
        }

        v32 = v21 >> 62;
        if (v21 >> 62 == 3)
        {
          v33 = 0;
          if (v20)
          {
            v34 = 0;
          }

          else
          {
            v34 = v21 == 0xC000000000000000;
          }

          v36 = !v34 || v17 < 3;
          if (((v36 | v58) & 1) == 0)
          {
            v21 = 0xC000000000000000;
            v28 = 0xC000000000000000;
            v20 = 0;
            v62 = 0;
LABEL_132:
            sub_1000146B0(v20, v21);
            sub_1000146B0(v62, v28);
            sub_100014528(v62, v28);

            sub_100014528(v20, v21);
LABEL_133:
            sub_100014528(v20, v21);
LABEL_134:
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }
        }

        else if (v32 > 1)
        {
          if (v32 == 2)
          {
            v42 = *(v20 + 16);
            v41 = *(v20 + 24);
            v40 = __OFSUB__(v41, v42);
            v33 = v41 - v42;
            if (v40)
            {
              goto LABEL_126;
            }
          }

          else
          {
            v33 = 0;
          }
        }

        else if (v32)
        {
          LODWORD(v33) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_125;
          }

          v33 = v33;
        }

        else
        {
          v33 = BYTE6(v21);
        }

        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v33)
            {
              goto LABEL_132;
            }

            goto LABEL_100;
          }

          v39 = *(v62 + 16);
          v38 = *(v62 + 24);
          v40 = __OFSUB__(v38, v39);
          v37 = v38 - v39;
          if (v40)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v37 = v57;
          if (v17)
          {
            v37 = v55;
            if (v56)
            {
              goto LABEL_123;
            }
          }
        }

        if (v33 == v37)
        {
          if (v33 < 1)
          {
            goto LABEL_132;
          }

          if (v32 > 1)
          {
            if (v32 != 2)
            {
              *&v68[6] = 0;
              *v68 = 0;
              sub_1000146B0(v20, v21);
              sub_1000146B0(v62, v28);
              sub_1000146B0(v62, v28);
LABEL_118:
              sub_100045F4C(v68, v62, v28, &v67);
              sub_100014528(v62, v28);

              sub_100014528(v20, v21);
              sub_100014528(v62, v28);
              v48 = v67;
              result = sub_100014528(v20, v21);
              if (v48)
              {
                goto LABEL_134;
              }

              goto LABEL_65;
            }

            v43 = *(v20 + 16);
            v54 = *(v20 + 24);
            sub_1000146B0(v20, v21);
            sub_1000146B0(v62, v28);
            sub_1000146B0(v62, v28);
            v44 = __DataStorage._bytes.getter();
            if (v44)
            {
              v45 = __DataStorage._offset.getter();
              if (__OFSUB__(v43, v45))
              {
                goto LABEL_129;
              }

              v44 += v43 - v45;
            }

            if (__OFSUB__(v54, v43))
            {
              goto LABEL_128;
            }
          }

          else
          {
            if (!v32)
            {
              *v68 = v20;
              *&v68[8] = v21;
              v68[10] = BYTE2(v21);
              v68[11] = BYTE3(v21);
              v68[12] = BYTE4(v21);
              v68[13] = BYTE5(v21);
              sub_1000146B0(v20, v21);
              sub_1000146B0(v62, v28);
              sub_1000146B0(v62, v28);
              v15 = v17;
              goto LABEL_118;
            }

            if (v20 >> 32 < v20)
            {
              goto LABEL_127;
            }

            sub_1000146B0(v20, v21);
            sub_1000146B0(v62, v28);
            sub_1000146B0(v62, v28);
            v44 = __DataStorage._bytes.getter();
            if (v44)
            {
              v46 = __DataStorage._offset.getter();
              if (__OFSUB__(v20, v46))
              {
                goto LABEL_130;
              }

              v44 += v20 - v46;
            }
          }

          __DataStorage._length.getter();
          v11 = v28;
          sub_100045F4C(v44, v62, v28, v68);
          sub_100014528(v62, v28);

          sub_100014528(v20, v21);
          sub_100014528(v62, v28);
          v47 = v68[0];
          result = sub_100014528(v20, v21);
          if (v47)
          {
            goto LABEL_134;
          }

LABEL_64:
          v15 = v17;
          goto LABEL_65;
        }

LABEL_100:
        sub_1000146B0(v20, v21);
        sub_1000146B0(v62, v28);
        sub_100014528(v62, v28);

        sub_100014528(v20, v21);
        v30 = v20;
        v31 = v21;
        goto LABEL_62;
      }

      v24 = 0xE300000000000000;
      v23 = 7958081;
      if (v9 > 2)
      {
        goto LABEL_45;
      }
    }

LABEL_35:
    if (v9)
    {
      if (v9 == 1)
      {
        v25 = 21580;
      }

      else
      {
        v25 = 17740;
      }

      v26 = 0xE200000000000000;
    }

    else
    {
      v26 = 0xE300000000000000;
      v25 = 7958081;
    }

    goto LABEL_52;
  }

LABEL_120:
  v49 = *v59;
  *(*v59 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v50 = *(v49 + 48) + 40 * a2;
  v51 = *(v60 + 16);
  *v50 = *v60;
  *(v50 + 16) = v51;
  *(v50 + 32) = *(v60 + 32);
  v52 = *(v49 + 16);
  v40 = __OFADD__(v52, 1);
  v53 = v52 + 1;
  if (v40)
  {
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }

  *(v49 + 16) = v53;
  return result;
}

Swift::Int sub_1000E9674(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_82;
  }

  if (a3)
  {
    sub_1000E7358(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1000EA42C();
      goto LABEL_82;
    }

    sub_1000EB1F4(v6 + 1);
  }

  v53 = v3;
  v8 = *v3;
  Hasher.init(_seed:)();
  ApprovalSettingsStateEntry.hash(into:)(&v56);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = *v5;
    v12 = *(v5 + 8);
    while (1)
    {
      v13 = *(v8 + 48) + 72 * a2;
      v56 = *v13;
      v15 = *(v13 + 32);
      v14 = *(v13 + 48);
      v16 = *(v13 + 64);
      v57 = *(v13 + 16);
      v58 = v15;
      v60 = v16;
      v59 = v14;
      result = v56;
      if (v56 != __PAIR128__(v12, v11))
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v17 = *(v5 + 24);
      if (*(&v57 + 1))
      {
        if (!v17)
        {
          goto LABEL_11;
        }

        result = v57;
        if (v57 != *(v5 + 16))
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v17)
      {
        goto LABEL_11;
      }

      v18 = *(v5 + 40);
      if (*(&v58 + 1))
      {
        if (!v18)
        {
          goto LABEL_11;
        }

        result = v58;
        if (v58 != *(v5 + 32))
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v18)
      {
        goto LABEL_11;
      }

      v19 = *(v5 + 56);
      if (*(&v59 + 1) >> 60 == 15)
      {
        if (v19 >> 60 != 15)
        {
          goto LABEL_11;
        }

        goto LABEL_26;
      }

      if (v19 >> 60 == 15)
      {
        goto LABEL_11;
      }

      v20 = *(v5 + 48);
      v21 = *(&v59 + 1) >> 62;
      v22 = v19 >> 62;
      if (*(&v59 + 1) >> 62 == 3)
      {
        break;
      }

      if (v21 <= 1)
      {
        if (!v21)
        {
          v23 = BYTE14(v59);
          if (v22 > 1)
          {
            goto LABEL_38;
          }

          goto LABEL_51;
        }

        LODWORD(v23) = DWORD1(v59) - v59;
        if (__OFSUB__(DWORD1(v59), v59))
        {
          goto LABEL_87;
        }

        v23 = v23;
        goto LABEL_50;
      }

      if (v21 == 2)
      {
        v29 = *(v59 + 16);
        v28 = *(v59 + 24);
        v26 = __OFSUB__(v28, v29);
        v23 = v28 - v29;
        if (v26)
        {
          goto LABEL_88;
        }

        goto LABEL_50;
      }

      v23 = 0;
      if (v22 > 1)
      {
LABEL_38:
        if (v22 != 2)
        {
          if (v23)
          {
            goto LABEL_11;
          }

          goto LABEL_26;
        }

        v25 = *(v20 + 16);
        v24 = *(v20 + 24);
        v26 = __OFSUB__(v24, v25);
        v27 = v24 - v25;
        if (v26)
        {
          goto LABEL_85;
        }

        goto LABEL_53;
      }

LABEL_51:
      if (!v22)
      {
        v27 = BYTE6(v19);
LABEL_53:
        if (v23 != v27)
        {
          goto LABEL_11;
        }

        goto LABEL_54;
      }

      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_86;
      }

      if (v23 != HIDWORD(v20) - v20)
      {
        goto LABEL_11;
      }

LABEL_54:
      if (v23 >= 1)
      {
        if (v21 > 1)
        {
          v52 = *(v5 + 48);
          if (v21 == 2)
          {
            v48 = *(v59 + 24);
            v51 = *(v59 + 16);
            sub_1000681CC(&v56, v55);
            v32 = __DataStorage._bytes.getter();
            if (v32)
            {
              v45 = v32;
              v33 = __DataStorage._offset.getter();
              v34 = v51;
              if (__OFSUB__(v51, v33))
              {
                goto LABEL_91;
              }

              v46 = v51 - v33 + v45;
            }

            else
            {
              v46 = 0;
              v34 = v51;
            }

            if (__OFSUB__(v48, v34))
            {
              goto LABEL_90;
            }

            __DataStorage._length.getter();
            v38 = v46;
            goto LABEL_79;
          }

          *(v54 + 6) = 0;
          v54[0] = 0;
          sub_1000681CC(&v56, v55);
          v31 = v52;
LABEL_73:
          sub_100045F4C(v54, v31, v19, v55);
          result = sub_100068204(&v56);
          v37 = v55[0];
        }

        else
        {
          if (!v21)
          {
            LODWORD(v54[0]) = v59;
            WORD2(v54[0]) = WORD2(v59);
            *(v54 + 6) = *(&v59 + 6);
            v30 = v20;
            sub_1000681CC(&v56, v55);
            v3 = v53;
            v31 = v30;
            goto LABEL_73;
          }

          v49 = v59;
          v52 = *(v5 + 48);
          if (v59 >> 32 < v59)
          {
            goto LABEL_89;
          }

          sub_1000681CC(&v56, v55);
          v35 = __DataStorage._bytes.getter();
          if (v35)
          {
            v47 = v35;
            v36 = __DataStorage._offset.getter();
            if (__OFSUB__(v49, v36))
            {
              goto LABEL_92;
            }

            v50 = v49 - v36 + v47;
          }

          else
          {
            v50 = 0;
          }

          __DataStorage._length.getter();
          v38 = v50;
LABEL_79:
          sub_100045F4C(v38, v52, v19, v55);
          result = sub_100068204(&v56);
          v37 = v55[0];
          v3 = v53;
        }

        if (!v37)
        {
          goto LABEL_11;
        }
      }

LABEL_26:
      if (v60 == *(v5 + 64))
      {
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_11:
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_82;
      }
    }

    v23 = 0;
    if (v59 == __PAIR128__(0xC000000000000000, 0) && v19 >> 62 == 3)
    {
      v23 = 0;
      if (!v20 && v19 == 0xC000000000000000)
      {
        goto LABEL_26;
      }
    }

LABEL_50:
    if (v22 > 1)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_82:
  v39 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v40 = *(v39 + 48) + 72 * a2;
  *(v40 + 64) = *(v5 + 64);
  v41 = *(v5 + 48);
  *(v40 + 32) = *(v5 + 32);
  *(v40 + 48) = v41;
  v42 = *(v5 + 16);
  *v40 = *v5;
  *(v40 + 16) = v42;
  v43 = *(v39 + 16);
  v26 = __OFADD__(v43, 1);
  v44 = v43 + 1;
  if (v26)
  {
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  *(v39 + 16) = v44;
  return result;
}

void *sub_1000E9C78()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003CDC(&qword_1001357D8, &unk_1000F56D0);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1000E9EB0()
{
  v1 = v0;
  sub_100003CDC(&qword_100139440, &unk_100101990);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1000146C4(v18, *(&v18 + 1));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1000EA00C()
{
  v1 = v0;
  sub_100003CDC(&qword_1001393A0, &qword_1001018B8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_1000EA168(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100003CDC(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
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

      v18 = *(v4 + 56 + 8 * v10);
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
}

void *sub_1000EA2A8()
{
  v1 = v0;
  sub_100003CDC(&qword_100139400, &unk_100101940);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = *v18;
        *(v23 + 8) = v19;
        *(v23 + 16) = v20;
        *(v23 + 24) = v21;
        *(v23 + 32) = v22;

        result = sub_1000146B0(v21, v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1000EA42C()
{
  v1 = v0;
  sub_100003CDC(&qword_100139358, &qword_100101850);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = *(v2 + 56);
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
        v17 = 72 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        v24 = *(v18 + 64);
        v23[3] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x41uLL);
        result = sub_1000681CC(v23, v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1000EA5BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003CDC(&qword_100139388, &unk_100101898);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v16 + 16));
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_1000EA7E4(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for URL();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_100003CDC(&qword_1001357D8, &unk_1000F56D0);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

Swift::Int sub_1000EAB00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003CDC(&qword_100139440, &unk_100101990);
  result = static _SetStorage.resize(original:capacity:move:)();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      sub_1000146C4(v18, v19);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1000EAD3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003CDC(&qword_1001393A0, &qword_1001018B8);
  result = static _SetStorage.resize(original:capacity:move:)();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000EAF74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003CDC(&qword_1001393E8, &unk_100101920);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1000E7768(v13, v5))
    {
      v9 &= v9 - 1;
LABEL_11:
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v12 = *(v3 + 56 + 8 * v6);
      ++v11;
      if (v12)
      {
        v9 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

void sub_1000EB0A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003CDC(&qword_100139400, &unk_100101940);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 56);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = *(v3 + 48) + 40 * (v10 | (v5 << 6));
      v14 = *(v13 + 32);
      v15 = *(v13 + 16);
      v17[0] = *v13;
      v17[1] = v15;
      v18 = v14;
      sub_1000EB9C8(v17, v16);
      sub_1000E7A34(v17, v4);
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_13;
      }

      v12 = *(v3 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v4;
  }
}

Swift::Int sub_1000EB1F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003CDC(&qword_100139358, &qword_100101850);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_34:
    *v2 = v5;
    return result;
  }

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
  while (v9)
  {
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v20 = *(v3 + 48) + 72 * (v17 | (v6 << 6));
    v22 = *(v20 + 32);
    v21 = *(v20 + 48);
    v23 = *(v20 + 16);
    LOBYTE(v36) = *(v20 + 64);
    v34 = v22;
    v35 = v21;
    v32 = *v20;
    v33 = v23;
    Hasher.init(_seed:)();
    sub_1000681CC(&v32, v31);
    String.hash(into:)();
    if (*(&v33 + 1))
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (*(&v34 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (*(&v34 + 1))
      {
LABEL_17:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_20;
      }
    }

    Hasher._combine(_:)(0);
LABEL_20:
    if (*(&v35 + 1) >> 60 == 15)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1uLL);
      Data.hash(into:)();
    }

    Hasher._combine(_:)(v36);
    result = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v11 + 8 * v26);
        if (v30 != -1)
        {
          v12 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_36;
    }

    v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v5 + 48) + 72 * v12;
    v14 = v33;
    v15 = v34;
    v16 = v35;
    *(v13 + 64) = v36;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    *v13 = v32;
    ++*(v5 + 16);
  }

  v18 = v6;
  while (1)
  {
    v6 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v6 >= v10)
    {

      v2 = v1;
      goto LABEL_34;
    }

    v19 = *(v3 + 56 + 8 * v6);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v9 = (v19 - 1) & v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1000EB530(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  sub_1000EB8E8(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  result = Set.init(minimumCapacity:)();
  v19 = result;
  if (v11)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1000E4238(v10, v7);
      (*(v13 - 8))(v10, v2);
      v16 += v17;
      --v11;
    }

    while (v11);
    return v19;
  }

  return result;
}

uint64_t sub_1000EB6CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000EBA78();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_1000146C4(v6, *v4);
      sub_1000E4518(v7, v6, v5);
      sub_1000128D8(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000EB768(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000EB894();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 48);
      v12[2] = *(v4 + 32);
      v12[3] = v5;
      v13 = *(v4 + 64);
      v6 = *(v4 + 16);
      v12[0] = *v4;
      v12[1] = v6;
      sub_1000681CC(v12, v9);
      sub_1000E5D04(v7, v12);
      v9[2] = v7[2];
      v9[3] = v7[3];
      v10 = v8;
      v9[0] = v7[0];
      v9[1] = v7[1];
      sub_100068204(v9);
      v4 += 72;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1000EB838(uint64_t a1)
{
  v2 = type metadata accessor for DriverBinEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EB894()
{
  result = qword_100139350;
  if (!qword_100139350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139350);
  }

  return result;
}

uint64_t sub_1000EB8E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000EB930(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000E49A0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1000EBA78()
{
  result = qword_100139438;
  if (!qword_100139438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139438);
  }

  return result;
}

uint64_t sub_1000EBACC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100003C4C(a1, a1[3]);
  v4 = String.utf8CString.getter();
  v5 = IORegistryEntryFromPath(kIOMainPortDefault, (v4 + 32));

  if (!v5)
  {
    _StringGuts.grow(_:)(45);

    *&v30 = 0xD00000000000002BLL;
    *(&v30 + 1) = 0x800000010010C950;
    v13 = sub_100003C4C(a1, a1[3]);
    v15 = *v13;
    v14 = v13[1];

    v16._countAndFlagsBits = v15;
    v16._object = v14;
    String.append(_:)(v16);

    sub_10001449C();
    swift_allocError();
    *v17 = v30;
    *(v17 + 16) = v30;
    *(v17 + 32) = v32;
    *(v17 + 48) = v33;
    *(v17 + 64) = v34;
    *(v17 + 72) = 10;
    return swift_willThrow();
  }

  sub_100003C4C(a1, a1[3]);

  v6 = String._bridgeToObjectiveC()();

  CFProperty = IORegistryEntryCreateCFProperty(v5, v6, kCFAllocatorDefault, 0);

  if (CFProperty)
  {
    v8 = CFGetTypeID(CFProperty);
    if (CFStringGetTypeID() == v8)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;
        swift_unknownObjectRelease_n();
        v12 = &type metadata for String;
LABEL_15:
        *a2 = v9;
        *(a2 + 8) = v11;
        *(a2 + 24) = v12;
        return IOObjectRelease(v5);
      }
    }

    else
    {
      if (CFNumberGetTypeID() == v8)
      {
        swift_unknownObjectRetain();
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          static Int._conditionallyBridgeFromObjectiveC(_:result:)();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return IOObjectRelease(v5);
      }

      if (CFDataGetTypeID() != v8)
      {
        *a2 = 0u;
        *(a2 + 16) = 0u;
        swift_unknownObjectRelease();
        return IOObjectRelease(v5);
      }

      swift_unknownObjectRetain();
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v29;
        swift_unknownObjectRelease_n();
        v12 = &type metadata for Data;
        goto LABEL_15;
      }
    }

    swift_unknownObjectRelease_n();
    v9 = 0;
    v11 = 0;
    v12 = 0;
    *(a2 + 16) = 0;
    goto LABEL_15;
  }

  _StringGuts.grow(_:)(32);

  *&v31 = 0xD000000000000018;
  *(&v31 + 1) = 0x800000010010C930;
  v19 = sub_100003C4C(a1, a1[3]);
  v20 = v19[2];
  v21 = v19[3];

  v22._countAndFlagsBits = v20;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 544106784;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  v24 = sub_100003C4C(a1, a1[3]);
  v25 = *v24;
  v26 = v24[1];

  v27._countAndFlagsBits = v25;
  v27._object = v26;
  String.append(_:)(v27);

  sub_10001449C();
  swift_allocError();
  *v28 = v31;
  *(v28 + 16) = v31;
  *(v28 + 32) = v32;
  *(v28 + 48) = v33;
  *(v28 + 64) = v34;
  *(v28 + 72) = 10;
  swift_willThrow();
  return IOObjectRelease(v5);
}

uint64_t sub_1000EBF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __chkstk_darwin(a1, a2);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v17[1] = a1;
  v18 = String.data(using:allowLossyConversion:)();
  v13 = v12;
  result = (*(v8 + 8))(v11, v7);
  if (v13 >> 60 != 15)
  {
    v19[0] = v18;
    v19[1] = v13;
    v15 = *(a4 + 56);
    v16 = sub_1000EDBD4();
    v15(v19, &type metadata for Data, v16, a3, a4);
    return sub_100014988(v18, v13);
  }

  return result;
}

uint64_t protocol witness for TextOutputStream.write(_:) in conformance NSFileHandle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000EBF18(a1, a2, a3, WitnessTable);
}

uint64_t sub_1000EC2E8(uint64_t a1)
{
  result = sub_1000EDB28(&qword_100139510, &protocol conformance descriptor for NSFileHandle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EC334@<X0>(const char *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = swift_slowAlloc();
  v5 = String.utf8CString.getter();
  v6 = getxattr(a1, (v5 + 32), v4, 0x20uLL, 0, 0);

  *a2 = v6 > 0;
  return result;
}

uint64_t sub_1000EC3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  v8 = Data.init(contentsOf:options:)();
  (*(v4 + 8))(v7, v3);
  return v8;
}

void *sub_1000EC520(uint64_t a1, Class isa, uint64_t a3)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v8 = v7;
  if (isa)
  {
    type metadata accessor for URLResourceKey(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v14 = 0;
  v9 = [v4 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:isa options:a3 error:&v14];

  v10 = v14;
  if (v9)
  {
    type metadata accessor for URL();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v12 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

id sub_1000EC65C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, Class a5)
{
  v8 = *v5;
  v9 = String._bridgeToObjectiveC()();
  if (a4 >> 60 == 15)
  {
    isa = 0;
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  if (a5)
  {
LABEL_5:
    type metadata accessor for FileAttributeKey(0);
    sub_1000EDB7C();
    a5 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_6:
  v11 = [v8 createFileAtPath:v9 contents:isa attributes:a5];

  return v11;
}

id sub_1000EC750(uint64_t a1, char a2, Class isa)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v8 = v7;
  if (isa)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1000EDB7C();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v12 = 0;
  v9 = [v4 createDirectoryAtURL:v8 withIntermediateDirectories:a2 & 1 attributes:isa error:&v12];

  if (v9)
  {
    return v12;
  }

  v11 = v12;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1000EC888()
{
  v2 = String._bridgeToObjectiveC()();
  v8 = 0;
  v3 = [v0 attributesOfItemAtPath:v2 error:&v8];

  v4 = v8;
  if (v3)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1000EDB7C();
    v1 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

id sub_1000EC9A8(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v12 = v11;
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  v19 = 0;
  v16 = [v7 replaceItemAtURL:v12 withItemAtURL:v15 backupItemName:a4 options:a5 resultingItemURL:a6 error:&v19];

  if (v16)
  {
    return v19;
  }

  v18 = v19;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_1000ECAF4()
{
  v1 = v0;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v6 = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v2 error:&v6];

  if (v1)
  {
    return v6;
  }

  v5 = v6;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1000ECBB8@<X0>(uint64_t *a4@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  v10 = Data.init(contentsOf:options:)();
  v12 = v11;
  result = (*(v6 + 8))(v9, v5);
  a4[3] = &type metadata for Data;
  a4[4] = &off_10012DA28;
  *a4 = v10;
  a4[1] = v12;
  return result;
}

id sub_1000ECD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 fileExistsAtPath:v6 isDirectory:a3];

  return v7;
}

uint64_t sub_1000ECD6C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for POSIXError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = String.utf8CString.getter();
  v8 = realpath_DARWIN_EXTSN((v7 + 32), 0);

  if (v8)
  {
    v9 = String.init(utf8String:)();
    free(v8);
    return v9;
  }

  else
  {
    sub_1000AC134(v6);
    POSIXError._nsError.getter();
    (*(v3 + 8))(v6, v2);
    return swift_willThrow();
  }
}

uint64_t sub_1000ECEA4@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() fileHandleForWritingAtPath:v2];

  if (v3)
  {
    v4 = sub_100009FEC(0, &qword_100139518, NSFileHandle_ptr);
    result = sub_1000EDB28(&qword_100139520, &unk_100101A9C);
  }

  else
  {
    v4 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = result;
  return result;
}

void *sub_1000ECF58@<X0>(uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for URLResourceValues();
  a2[4] = &off_10012E2F8;
  sub_1000193A4(a2);
  result = URL.resourceValues(forKeys:)();
  if (v2)
  {
    return sub_10006C7C4(a2);
  }

  return result;
}

uint64_t sub_1000ECFE8()
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    URL.withUnsafeFileSystemRepresentation<A>(_:)();
    return v1;
  }

  return result;
}

uint64_t sub_1000ED090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, copyfile_flags_t a5)
{
  v16 = type metadata accessor for POSIXError();
  v6 = *(v16 - 8);
  __chkstk_darwin(v16, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = copyfile_state_alloc();
  copyfile_state_set(v10, 6u, sub_1000EC32C);
  v11 = String.utf8CString.getter();
  v12 = String.utf8CString.getter();
  v13 = copyfile((v11 + 32), (v12 + 32), v10, a5);

  if (v13)
  {
    sub_1000AC134(v9);
    POSIXError._nsError.getter();
    (*(v6 + 8))(v9, v16);
    swift_willThrow();
  }

  return copyfile_state_free(v10);
}

char *sub_1000ED208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v44 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for NSFastEnumerationIterator();
  v38 = *(v13 - 8);
  v39 = v13;
  __chkstk_darwin(v13, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() defaultManager];
  v18 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (v18)
  {
    NSEnumerator.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (*(&v41 + 1))
    {
      v35 = v6;
      v37 = (v6 + 32);
      v19 = _swiftEmptyArrayStorage;
      do
      {
        while (1)
        {
          v20 = swift_dynamicCast();
          v21 = *(v6 + 56);
          if (v20)
          {
            break;
          }

          v21(v12, 1, 1, v5);
          sub_10007B024(v12);
          NSFastEnumerationIterator.next()();
          if (!*(&v41 + 1))
          {
            goto LABEL_15;
          }
        }

        v21(v12, 0, 1, v5);
        v22 = *v37;
        (*v37)(v44, v12, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v4;
        v34 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_100031468(0, *(v19 + 2) + 1, 1, v19);
        }

        v25 = *(v19 + 2);
        v24 = *(v19 + 3);
        if (v25 >= v24 >> 1)
        {
          v19 = sub_100031468((v24 > 1), v25 + 1, 1, v19);
        }

        *(v19 + 2) = v25 + 1;
        v34(&v19[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v25], v44, v5);
        NSFastEnumerationIterator.next()();
        v4 = v36;
      }

      while (*(&v41 + 1));
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
    }

LABEL_15:
    (*(v38 + 8))(v16, v39);
  }

  else
  {
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    *&v40 = 0xD000000000000020;
    *(&v40 + 1) = 0x800000010010CA10;
    v26._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v26);

    v27 = *(&v40 + 1);
    v19 = v40;
    sub_10001449C();
    swift_allocError();
    *v28 = v19;
    *(v28 + 8) = v27;
    v29 = v43;
    v30 = v42;
    v31 = v41;
    *(v28 + 16) = v40;
    *(v28 + 32) = v31;
    *(v28 + 48) = v30;
    *(v28 + 64) = v29;
    *(v28 + 72) = 19;
    swift_willThrow();
  }

  return v19;
}

BOOL sub_1000ED64C(uint64_t a1, uint64_t a2)
{
  v4 = String.utf8CString.getter();
  v5 = openat_authenticated_np(-2, (v4 + 32), 0, -1);

  if (v5 == -1)
  {
    v6 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1000F3C80;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100003D24();
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;

    v8 = errno.getter();
    *(v7 + 96) = &type metadata for Int32;
    *(v7 + 104) = &protocol witness table for Int32;
    *(v7 + 72) = v8;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v9 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v9, "openat_authenticated_np() failed at path %{public}s with (errno %d)", 67, 2, v7);
  }

  else if ((v5 & 0x80000000) == 0)
  {
    close(v5);
  }

  return v5 != -1;
}

uint64_t sub_1000ED79C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for POSIXError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(&v18, 0x878uLL);
  if ((a1 != 47 || a2 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v9 = sub_1000C8014(a1, a2);
    if (v10)
    {
      if (v9 == 47 && v10 == 0xE100000000000000)
      {

LABEL_9:

        sub_1000CB108(1, a1, a2);
        v17 = v12;

        static String._fromSubstring(_:)();

        goto LABEL_11;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v11)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_11:
  v13 = String.utf8CString.getter();

  v14 = statfs((v13 + 32), &v18);

  if (v14)
  {
    sub_1000AC134(v8);
    POSIXError._nsError.getter();
    (*(v5 + 8))(v8, v4);
    swift_willThrow();
  }

  else if (String.init(cString:)() == 47 && v15 == 0xE100000000000000)
  {

    LOBYTE(v4) = 1;
  }

  else
  {
    LOBYTE(v4) = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

BOOL sub_1000EDA48(int a1, copyfile_state_t s)
{
  if (a1 != 5)
  {
    return 0;
  }

  v6 = 0;
  if (copyfile_state_get(s, 9u, &v6))
  {
    return 0;
  }

  result = v6;
  if (v6)
  {
    if (String.init(cString:)() == 0xD000000000000012 && 0x800000010010C9F0 == v3)
    {

      return 1;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v5 & 1) != 0;
  }

  return result;
}

uint64_t sub_1000EDB28(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100009FEC(255, &qword_100139518, NSFileHandle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000EDB7C()
{
  result = qword_100133D78;
  if (!qword_100133D78)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D78);
  }

  return result;
}

unint64_t sub_1000EDBD4()
{
  result = qword_100139528;
  if (!qword_100139528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139528);
  }

  return result;
}

uint64_t sub_1000EDC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000010010CC60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1000EDCD8(uint64_t a1)
{
  v2 = sub_1000EEE58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EDD14(uint64_t a1)
{
  v2 = sub_1000EEE58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EDD50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100003CDC(&qword_100139710, &qword_100101C68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v14 - v8;
  sub_100003C4C(a1, a1[3]);
  sub_1000EEE58();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C90(a1);
  }

  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  result = sub_100003C90(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_1000EDECC(void *a1)
{
  v2 = sub_100003CDC(&qword_100139720, &qword_100101C70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v8 - v5;
  sub_100003C4C(a1, a1[3]);
  sub_1000EEE58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000EE008(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6, v9);
  v11 = &v46[-v10];
  sub_10000A114(v2 + 16, &v49);
  if (!*(&v50 + 1))
  {
    sub_1000EED8C(&v49);
    v31 = static os_log_type_t.error.getter();
    sub_10001491C();
    v32 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Could not getBuildVersion since no side-effects found", 53, 2, _swiftEmptyArrayStorage);

    return 0;
  }

  sub_100041D5C(&v49, v56);
  URL.init(fileURLWithPath:isDirectory:)();
  URL.appendingPathComponent(_:)();
  v12 = *(v4 + 8);
  v12(v8, v3);
  v13 = URL.path.getter();
  v15 = v14;
  v12(v11, v3);
  v47 = 0;
  sub_100003C4C(v56, v57);
  sub_1000DF9D4(&v49);
  v16 = *(&v50 + 1);
  v17 = v51;
  sub_100003C4C(&v49, *(&v50 + 1));
  v18 = (*(v17 + 136))(v13, v15, &v47, v16, v17);
  sub_100003C90(&v49);
  if ((v18 & 1) == 0)
  {
    v33 = static os_log_type_t.debug.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1000F3160;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_100003D24();
    *(v34 + 32) = v13;
    *(v34 + 40) = v15;
    sub_10001491C();
    v35 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v35, "Could not find the system version plist (%{public}s)", 52, 2, v34);

    sub_100003C90(v56);
    return 0;
  }

  sub_100003C4C(v56, v57);
  sub_1000DF9D4(&v53);
  v19 = v54;
  v20 = v55;
  sub_100003C4C(&v53, v54);
  v21 = (*(v20 + 16))(v13, v15, 0, v19, v20);
  if (v22 >> 60 == 15)
  {
    sub_100003C90(&v53);
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    *&v49 = 0xD000000000000015;
    *(&v49 + 1) = 0x800000010010CBD0;
    v23._countAndFlagsBits = v13;
    v23._object = v15;
    String.append(_:)(v23);
    v25 = *(&v49 + 1);
    v24 = v49;
    sub_10001449C();
    v26 = swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v25;
    v28 = v52;
    v30 = v50;
    v29 = v51;
    *(v27 + 16) = v49;
    *(v27 + 32) = v30;
    *(v27 + 48) = v29;
    *(v27 + 64) = v28;
    *(v27 + 72) = 10;
    swift_willThrow();
    v39 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1000F3C80;
    *(v40 + 56) = &type metadata for String;
    v41 = sub_100003D24();
    *(v40 + 64) = v41;
    *(v40 + 32) = v13;
    *(v40 + 40) = v15;
    *&v49 = v26;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    v42 = String.init<A>(describing:)();
    *(v40 + 96) = &type metadata for String;
    *(v40 + 104) = v41;
    *(v40 + 72) = v42;
    *(v40 + 80) = v43;
    sub_10001491C();
    v44 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v44, "Could not read the system version plist from %{public}s: %{public}s", 67, 2, v40);

    v45 = 0;
  }

  else
  {
    v37 = v21;
    v38 = v22;
    sub_100003C90(&v53);
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000EEDF4();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_100014988(v37, v38);
    v45 = v53;
    sub_10000A990(v56, &v49);
    sub_100041D5C(&v49, v48);

    sub_100003C90(v48);
  }

  sub_100003C90(v56);
  return v45;
}

uint64_t sub_1000EE5D8()
{
  sub_1000EED8C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1000EE658(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6, v9);
  v11 = &v46[-v10];
  swift_beginAccess();
  sub_10000A114(v2 + 16, &v49);
  if (!*(&v50 + 1))
  {
    sub_1000EED8C(&v49);
    v31 = static os_log_type_t.error.getter();
    sub_10001491C();
    v32 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Could not getBuildVersion since no side-effects found", 53, 2, _swiftEmptyArrayStorage);

    return 0;
  }

  sub_100041D5C(&v49, v56);
  URL.init(fileURLWithPath:isDirectory:)();
  URL.appendingPathComponent(_:)();
  v12 = *(v4 + 8);
  v12(v8, v3);
  v13 = URL.path.getter();
  v15 = v14;
  v12(v11, v3);
  v47[0] = 0;
  sub_100003C4C(v56, v57);
  sub_1000DF9D4(&v49);
  v16 = *(&v50 + 1);
  v17 = v51;
  sub_100003C4C(&v49, *(&v50 + 1));
  v18 = (*(v17 + 136))(v13, v15, v47, v16, v17);
  sub_100003C90(&v49);
  if ((v18 & 1) == 0)
  {
    v33 = static os_log_type_t.debug.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1000F3160;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_100003D24();
    *(v34 + 32) = v13;
    *(v34 + 40) = v15;
    sub_10001491C();
    v35 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v35, "Could not find the system version plist (%{public}s)", 52, 2, v34);

    sub_100003C90(v56);
    return 0;
  }

  sub_100003C4C(v56, v57);
  sub_1000DF9D4(v53);
  v19 = v54;
  v20 = v55;
  sub_100003C4C(v53, v54);
  v21 = (*(v20 + 16))(v13, v15, 0, v19, v20);
  if (v22 >> 60 == 15)
  {
    sub_100003C90(v53);
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    *&v49 = 0xD000000000000015;
    *(&v49 + 1) = 0x800000010010CBD0;
    v23._countAndFlagsBits = v13;
    v23._object = v15;
    String.append(_:)(v23);
    v25 = *(&v49 + 1);
    v24 = v49;
    sub_10001449C();
    v26 = swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v25;
    v28 = v52;
    v29 = v51;
    v30 = v50;
    *(v27 + 16) = v49;
    *(v27 + 32) = v30;
    *(v27 + 48) = v29;
    *(v27 + 64) = v28;
    *(v27 + 72) = 10;
    swift_willThrow();
    v39 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1000F3C80;
    *(v40 + 56) = &type metadata for String;
    v41 = sub_100003D24();
    *(v40 + 64) = v41;
    *(v40 + 32) = v13;
    *(v40 + 40) = v15;
    *&v49 = v26;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    v42 = String.init<A>(describing:)();
    *(v40 + 96) = &type metadata for String;
    *(v40 + 104) = v41;
    *(v40 + 72) = v42;
    *(v40 + 80) = v43;
    sub_10001491C();
    v44 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v44, "Could not read the system version plist from %{public}s: %{public}s", 67, 2, v40);

    v45 = 0;
  }

  else
  {
    v37 = v21;
    v38 = v22;
    sub_100003C90(v53);
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000EEDF4();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_100014988(v37, v38);
    v45 = v53[0];
    sub_10000A990(v56, &v49);
    sub_100041D5C(&v49, v48);

    sub_100003C90(v48);
  }

  sub_100003C90(v56);
  return v45;
}

uint64_t sub_1000EECB0(uint64_t a1)
{
  v1 = static os_log_type_t.error.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000F3160;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_100003D24();
  *(v2 + 32) = 0xD000000000000015;
  *(v2 + 40) = 0x800000010010CC40;
  sub_10001491C();
  v3 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v3, "Unexpected call to %s", v5);

  return 0;
}

uint64_t sub_1000EED8C(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_100133CC0, &qword_1000F32F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EEDF4()
{
  result = qword_100139708;
  if (!qword_100139708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139708);
  }

  return result;
}

unint64_t sub_1000EEE58()
{
  result = qword_100139718;
  if (!qword_100139718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139718);
  }

  return result;
}

unint64_t sub_1000EEEC0()
{
  result = qword_100139728;
  if (!qword_100139728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139728);
  }

  return result;
}

unint64_t sub_1000EEF18()
{
  result = qword_100139730;
  if (!qword_100139730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139730);
  }

  return result;
}

unint64_t sub_1000EEF70()
{
  result = qword_100139738;
  if (!qword_100139738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139738);
  }

  return result;
}

uint64_t sub_1000EEFD0()
{

  return swift_deallocClassInstance();
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000EF0FC(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, (a3 + 88)) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

double Img4DecodeInitPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    *&v5 = a1;
    *(&v5 + 1) = a2;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 368) = 0u;
    *(a3 + 384) = 0u;
    *(a3 + 400) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 448) = 0;
    if (!DERImg4DecodePayload(&v5, (a3 + 88)))
    {
      result = *&v5;
      *(a3 + 8) = v5;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  memset(v12, 170, sizeof(v12));
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

_DWORD *DEREncoderCreate(int a1)
{
  result = calloc(1uLL, 0x10uLL);
  if (result)
  {
    result[3] = a1;
  }

  return result;
}

void DEREncoderDestroy(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      do
      {
        v3 = *v2;
        sub_1000F0344(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

uint64_t DEREncoderAddData(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1000EFCE4(a2, a3, a4, a5, a6, 3);

  return sub_1000EFB70(a1, v7);
}

uint64_t sub_1000EFB70(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  if (!a1)
  {
    v22 = 1;
    if (!a2)
    {
      return v22;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return 2;
  }

  v4 = *(a1 + 2);
  v5 = a2;
  do
  {
    v6 = *(v5 + 5);
    v7 = __CFADD__(v4, v6);
    v8 = v4 + v6;
    if (v7 || (v9 = *(v5 + 6), v4 = v8 + v9, __CFADD__(v8, v9)))
    {
      v22 = 2;
      do
      {
LABEL_30:
        v23 = *v2;
        sub_1000F0344(v2);
        v2 = v23;
      }

      while (v23);
      return v22;
    }

    v5 = *v5;
  }

  while (v5);
  v10 = *a1;
  v11 = a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  v12 = *(a1 + 3);
  v11 = a1;
  while (2)
  {
    v13 = v11;
    v11 = v10;
    if (!v12)
    {
      goto LABEL_20;
    }

    v14 = bswap64(*(v2 + 28));
    v15 = bswap64(*(v11 + 28));
    if (v14 != v15 || (v14 = bswap64(*(v2 + 36)), v15 = bswap64(*(v11 + 36)), v14 != v15))
    {
      if (v14 < v15)
      {
        v16 = -1;
      }

      else
      {
        v16 = 1;
      }

LABEL_19:
      if (v16 < 0)
      {
        break;
      }

      goto LABEL_20;
    }

    v17 = *(v2 + 6);
    v18 = *(v11 + 6);
    if (v17 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v16 = memcmp(v2[1], v11[1], v19);
    if (v16)
    {
      goto LABEL_19;
    }

    if (v17 >= v18)
    {
LABEL_20:
      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  v20 = v2;
  do
  {
    v21 = v20;
    v20 = *v20;
  }

  while (v20);
  *v21 = v11;
  v11 = v13;
LABEL_26:
  v22 = 0;
  *v11 = v2;
  *(a1 + 2) = v4;
  return v22;
}

char *sub_1000EFCE4(unsigned int a1, unsigned int a2, const void *a3, unsigned int a4, int a5, int a6)
{
  if (!a3 && a4 && a6)
  {
    return 0;
  }

  v12 = calloc(1uLL, 0x38uLL);
  v13 = v12;
  if (v12)
  {
    *(v12 + 4) = 1;
    v14 = v12 + 28;
    if (a1 == 259)
    {
      v15 = 0;
    }

    else
    {
      if (a1 > 3)
      {
        goto LABEL_41;
      }

      if (a2 > 0x1E)
      {
        v17 = 0;
        v28 = 0;
        do
        {
          *(&v28 + v17++) = a2 & 0x7F;
          v18 = a2 > 0x7F;
          a2 >>= 7;
        }

        while (v18);
        v19 = v17 - 1;
        v16 = v13 + 28;
        if ((v17 - 1) <= 0xE)
        {
          v13[28] = (a1 << 6) | (32 * (a5 != 0)) | 0x1F;
          v20 = v13 + 29;
          if (v17 != 1)
          {
            do
            {
              *v20++ = *(&v28 + v19--) | 0x80;
            }

            while (v19);
          }

          *v20 = v28;
          v16 = v20 + 1;
        }
      }

      else
      {
        v13[28] = (a1 << 6) | (32 * (a5 != 0)) | a2;
        v16 = v13 + 29;
      }

      v21 = v16 - v14;
      if (!v21)
      {
        goto LABEL_41;
      }

      v22 = &v14[v21];
      if (a4 > 0x7F)
      {
        v24 = 0;
        v28 = 0;
        v25 = a4;
        do
        {
          *(&v28 + v24++) = v25;
          v18 = v25 > 0xFF;
          v25 >>= 8;
        }

        while (v18);
        if (16 - v21 <= v24)
        {
          LODWORD(v23) = v14 + v21;
        }

        else
        {
          *v22 = v24 | 0x80;
          v23 = v22 + 1;
          do
          {
            *v23++ = *(&v28 + --v24);
          }

          while (v24);
        }
      }

      else
      {
        LODWORD(v23) = v14 + v21;
        if (v21 != 16)
        {
          *v22 = a4;
          LODWORD(v23) = v22 + 1;
        }
      }

      v26 = v23 - v22;
      if (v23 == v22)
      {
        goto LABEL_41;
      }

      v14 = &v22[v26];
      v15 = v21 + v26;
    }

    *(v13 + 5) = v15;
    if (a6 <= 1)
    {
      if (!a6)
      {
        *(v13 + 1) = 0;
        *(v13 + 6) = 0;
        *(v13 + 6) = 0;
        return v13;
      }

      *(v13 + 1) = a3;
      *(v13 + 6) = 0;
LABEL_16:
      *(v13 + 6) = a4;
      return v13;
    }

    if (a6 == 2)
    {
      *(v13 + 1) = a3;
      *(v13 + 6) = v13;
      goto LABEL_16;
    }

    if (v13 + 56 - v14 >= a4)
    {
      *(v13 + 1) = v14;
      *(v13 + 6) = a4;
    }

    else
    {
      v14 = malloc(a4);
      *(v13 + 1) = v14;
      *(v13 + 6) = v13;
      *(v13 + 6) = a4;
      if (!v14)
      {
LABEL_41:
        free(v13);
        return 0;
      }
    }

    memcpy(v14, a3, a4);
  }

  return v13;
}

uint64_t DEREncoderAddDataNoCopy(uint64_t *a1, unsigned int a2, unsigned int a3, const void *a4, unsigned int a5, int a6)
{
  v7 = sub_1000EFCE4(a2, a3, a4, a5, a6, 1);

  return sub_1000EFB70(a1, v7);
}

uint64_t DEREncoderCreateEncodedBuffer(uint64_t **a1, void *a2, unsigned int *a3)
{
  if (!a1)
  {
    return 1;
  }

  v6 = *(a1 + 2);
  v7 = malloc(v6);
  if (!v7)
  {
    return 2;
  }

  v8 = v7;
  v9 = *a1;
  if (*a1)
  {
    v10 = v7;
    do
    {
      memcpy(v10, v9 + 28, *(v9 + 5));
      v11 = &v10[*(v9 + 5)];
      memcpy(v11, v9[1], *(v9 + 6));
      v10 = &v11[*(v9 + 6)];
      v9 = *v9;
    }

    while (v9);
  }

  if (a3)
  {
    *a3 = v6;
  }

  if (a2)
  {
    result = 0;
    *a2 = v8;
  }

  else
  {
    free(v8);
    return 0;
  }

  return result;
}

uint64_t sub_1000F00A0(uint64_t **a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v13 = 0;
  v12 = 0;
  v9 = DEREncoderCreateEncodedBuffer(a1, &v12, &v13);
  if (!v9)
  {
    v9 = 2;
    v10 = sub_1000EFCE4(a3, a4, v12, v13, a5, 2);
    if (v10)
    {
      v12 = 0;
      v9 = sub_1000EFB70(a2, v10);
    }
  }

  if (v12)
  {
    free(v12);
  }

  return v9;
}

uint64_t DEREncoderAddDataFromEncoderNoCopy(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  result = 1;
  if (a1 && a2)
  {
    if (*(a2 + 12))
    {

      return sub_1000F00A0(a1, a2, a3, a4, a5);
    }

    else
    {
      v8 = sub_1000EFCE4(a3, a4, 0, *(a1 + 8), 1, 0);
      if (v8)
      {
        v9 = v8;
        v10 = *a1;
        v21 = 0;
        v11 = &v21;
        while (v10)
        {
          v12 = malloc(0x38uLL);
          if (!v12)
          {
            v17 = v21;
            if (v21)
            {
              do
              {
                v18 = *v17;
                sub_1000F0344(v17);
                v17 = v18;
              }

              while (v18);
            }

            *v9 = 0;
            goto LABEL_22;
          }

          v13 = v10[6];
          v15 = *(v10 + 1);
          v14 = *(v10 + 2);
          *v12 = *v10;
          v12[1] = v15;
          *(v12 + 6) = v13;
          v12[2] = v14;
          *v12 = 0;
          *(v12 + 4) = 1;
          v16 = v10[1];
          if (v10 + 28 > v16 || v16 >= (v10 + 7))
          {
            if (v13)
            {
              ++*(v13 + 16);
            }
          }

          else
          {
            *(v12 + 1) = v12 + v16 - v10;
          }

          *v11 = v12;
          v10 = *v10;
          v11 = v12;
        }

        v19 = v21;
        *v9 = v21;
        if (v19)
        {
          goto LABEL_26;
        }

LABEL_22:
        if (*a1)
        {
          do
          {
            v20 = *v9;
            sub_1000F0344(v9);
            v9 = v20;
          }

          while (v20);
          return 2;
        }

LABEL_26:

        return sub_1000EFB70(a2, v9);
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

void sub_1000F0344(uint64_t a1)
{
  v2 = *(a1 + 16) - 1;
  *(a1 + 16) = v2;
  if (!v2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = v4 >= a1 + 56 || a1 + 28 > v4;
      if (v6 && v5 != 0)
      {
        if (v5 == a1)
        {
          free(v4);
        }

        else
        {
          sub_1000F0344(*(a1 + 48));
        }
      }
    }

    free(a1);
  }
}

uint64_t Img4EncodeCreatePayload(const char *a1, const char *a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, void *a7, unsigned int *a8)
{
  v8 = 0;
  v9 = 101;
  if (!a1 || !a2)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v12 = 0;
  if (a3)
  {
    if (strlen(a1) != 4)
    {
      v8 = 0;
      v12 = 0;
      goto LABEL_16;
    }

    v8 = DEREncoderCreate(0);
    if (v8)
    {
      v12 = DEREncoderCreate(0);
      if (v12)
      {
        v18 = DEREncoderAddData(v8, 0, 22, "IM4P", 4, 0);
        if (v18 || (v18 = DEREncoderAddData(v8, 0, 22, a1, 4, 0), v18) || (v19 = strlen(a2), v18 = DEREncoderAddData(v8, 0, 22, a2, v19, 0), v18) || (v18 = DEREncoderAddDataNoCopy(v8, 0, 4u, a3, a4, 0), v18) || a5 && (v18 = DEREncoderAddDataNoCopy(v8, 0, 4u, a5, a6, 0), v18) || (v18 = DEREncoderAddDataFromEncoderNoCopy(v8, v12, 0, 0x10u, 1), v18))
        {
          v9 = v18;
        }

        else
        {
          EncodedBuffer = DEREncoderCreateEncodedBuffer(v12, a7, a8);
          if (EncodedBuffer)
          {
            v9 = EncodedBuffer;
          }

          else
          {
            v9 = 100;
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
    }

    v9 = 2;
  }

LABEL_16:
  DEREncoderDestroy(v8);
  DEREncoderDestroy(v12);
  return v9;
}

void sub_1000F0594(void *a1)
{
  v1[0] = 67109120;
  v1[1] = [a1 state];
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Job submitted but not running: %d", v1, 8u);
}

void sub_1000F0618(void *a1)
{
  v1 = [a1 localizedFailureReason];
  v2 = 138543362;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to submit job: %{public}@", &v2, 0xCu);
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      sub_1000EF1AC();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, void *a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!a2[10] || (sub_1000EF1C0(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = a2[12];
          v5 = a2 + 12;
          if (!v6)
          {
            return 0;
          }

          sub_1000EF1C0();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      sub_1000EF1AC();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, _OWORD *a2)
{
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 10);
          v5 = a2 + 5;
          if (!v6)
          {
            return 0;
          }

          sub_1000EF1C0();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      a2[1] = v7;
      v8 = v11[3];
      a2[2] = v11[2];
      a2[3] = v8;
      v9 = v11[5];
      a2[4] = v11[4];
      a2[5] = v9;
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      sub_1000EF1AC();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}