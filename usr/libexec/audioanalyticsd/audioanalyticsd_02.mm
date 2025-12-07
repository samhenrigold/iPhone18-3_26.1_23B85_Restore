char *sub_10002BD48()
{

  sub_100006CC8(v0 + 96, &qword_100045598, &qword_1000360E0);

  v1 = OBJC_IVAR____TtC15audioanalyticsd7Session_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100006CC8(v0 + OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime, &qword_100045DF0, &qword_100036660);

  return v0;
}

uint64_t sub_10002BE40()
{
  sub_10002BD48();

  return swift_deallocClassInstance();
}

void sub_10002BEA0(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_10002C00C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10002C00C(uint64_t a1)
{
  if (!qword_100045C50)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100045C50);
    }
  }
}

char *sub_10002C0C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045DE0, &qword_100036650);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10002C1CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045DE8, &qword_100036658);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10002C2D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045E00, &qword_100036670);
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

void *sub_10002C424(void *result, int64_t a2, char a3, void *a4)
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
    sub_10001712C(&qword_100045DA0, &qword_100036620);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10001712C(&qword_100045BA0, &unk_1000364D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10002C558(uint64_t a1, uint64_t a2)
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

  sub_10001712C(&qword_100045E28, &qword_100036698);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_10002C5E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10001712C(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x6666666666666667) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

char *sub_10002C668(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045D90, &qword_100036610);
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

uint64_t sub_10002C75C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10002C8CC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 4 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 4 * v3);
      v13 = (v11 + 4 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Message() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10002CA9C(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureInfo(0);
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v7 = a1;
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (v7 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = v7;
    v15 = _HashTable.previousHole(before:)();
    v7 = v14;
    v16 = (v15 + 1) & v13;
    v17 = *(v5 + 72);
    v29 = a2 + 64;
    do
    {
      v30 = v7;
      v18 = v17 * v12;
      sub_10002E7FC(*(a2 + 48) + v17 * v12, v9);
      Hasher.init(_seed:)();
      type metadata accessor for SystemMonitorConfig.MonitorType();
      sub_100001CF0(&qword_1000459B0, &type metadata accessor for SystemMonitorConfig.MonitorType, &protocol conformance descriptor for SystemMonitorConfig.MonitorType);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      type metadata accessor for SystemMonitorConfig.DataType();
      sub_100001CF0(&qword_1000459B8, &type metadata accessor for SystemMonitorConfig.DataType, &protocol conformance descriptor for SystemMonitorConfig.DataType);
      dispatch thunk of Hashable.hash(into:)();
      v19 = Hasher._finalize()();
      result = sub_100019D24(v9);
      v7 = v30;
      v20 = v19 & v13;
      if (v30 >= v16)
      {
        if (v20 < v16)
        {
          v10 = v29;
          goto LABEL_4;
        }

        if (v30 < v20)
        {
LABEL_3:
          v10 = v29;
          goto LABEL_4;
        }
      }

      else if (v20 < v16 && v30 < v20)
      {
        goto LABEL_3;
      }

      if (v17 * v30 < v18 || *(a2 + 48) + v17 * v30 >= (*(a2 + 48) + v18 + v17))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v17 * v30 != v18)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(a2 + 56);
      v22 = *(*(type metadata accessor for FeatureState(0) - 8) + 72);
      v10 = v29;
      v23 = v22 * v30;
      result = v21 + v22 * v30;
      v24 = v22 * v12;
      if (v22 * v30 < (v22 * v12) || result >= v21 + v22 * v12 + v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
        goto LABEL_21;
      }

      v7 = v12;
      if (v23 != v24)
      {
        result = swift_arrayInitWithTakeBackToFront();
LABEL_21:
        v7 = v12;
      }

LABEL_4:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v7) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_10002CE80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002CF00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002CEA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002D0D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002CEC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002D1E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002CEE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002D2E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10002CF00(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001712C(&qword_100045E20, &qword_100036690);
  v10 = *(type metadata accessor for FeatureInfo(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for FeatureInfo(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10002D0D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045E00, &qword_100036670);
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

char *sub_10002D1E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045DF8, &qword_100036668);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10002D2E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045DE8, &qword_100036658);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_10002D3EC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v129 = a5;
  v115 = a1;
  v128 = type metadata accessor for Config.WorkerConfigs();
  v10 = __chkstk_darwin(v128);
  v127 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v126 = &v112 - v14;
  v15 = a3[1];
  v16 = a3;
  v116 = a3;
  if (v15 < 1)
  {
    v18 = &_swiftEmptyArrayStorage;
LABEL_91:
    v6 = *v115;
    if (!*v115)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_10002E400(v18);
      v18 = result;
    }

    v137 = v18;
    v107 = *(v18 + 2);
    if (v107 >= 2)
    {
      while (1)
      {
        v108 = *v16;
        if (!*v16)
        {
          goto LABEL_127;
        }

        v109 = *&v18[16 * v107];
        v16 = *&v18[16 * v107 + 24];
        v110 = v123;
        sub_10002DE44((v108 + 40 * v109), (v108 + 40 * *&v18[16 * v107 + 16]), (v108 + 40 * v16), v6, a6);
        v123 = v110;
        if (v110)
        {
        }

        if (v16 < v109)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_10002E400(v18);
        }

        if (v107 - 2 >= *(v18 + 2))
        {
          goto LABEL_117;
        }

        v111 = &v18[16 * v107];
        *v111 = v109;
        *(v111 + 1) = v16;
        v137 = v18;
        result = sub_10002E374(v107 - 1);
        v18 = v137;
        v107 = *(v137 + 2);
        v16 = v116;
        if (v107 <= 1)
        {
        }
      }
    }
  }

  v113 = a4;
  v17 = 0;
  v125 = (v13 + 8);
  v18 = &_swiftEmptyArrayStorage;
  v114 = a6;
  while (1)
  {
    v117 = v17;
    if (v17 + 1 >= v15)
    {
      v28 = v17 + 1;
    }

    else
    {
      v122 = v15;
      v19 = v17;
      v20 = *v16;
      sub_10000AE18(*v16 + 40 * (v17 + 1), &v135);
      v118 = 40 * v19;
      v132 = v20 + 40 * v19;
      sub_10000AE18(v132, v133);
      sub_10000AEC8(&v135, v136);
      v21 = v126;
      v22 = dispatch thunk of WorkerProtocol.workerConfig.getter();
      v6 = v129;
      LODWORD(v124) = v129(v22);
      v23 = *v125;
      v24 = v128;
      (*v125)(v21, v128);
      sub_10000AEC8(v133, v134);
      v16 = v127;
      v25 = dispatch thunk of WorkerProtocol.workerConfig.getter();
      LODWORD(v121) = (v6)(v25);
      v119 = v23;
      (v23)(v16, v24);
      sub_10000AE7C(v133);
      result = sub_10000AE7C(&v135);
      v26 = v117 + 2;
      v27 = v132 + 80;
      v120 = v18;
      while (1)
      {
        v28 = v122;
        if (v122 == v26)
        {
          break;
        }

        v132 = v26;
        LODWORD(v131) = v124 < v121;
        sub_10000AE18(v27, &v135);
        sub_10000AE18(v27 - 40, v133);
        sub_10000AEC8(&v135, v136);
        v29 = v126;
        v30 = dispatch thunk of WorkerProtocol.workerConfig.getter();
        v31 = v129;
        LOBYTE(v130) = v129(v30);
        LODWORD(v130) = v130;
        v32 = v29;
        v16 = v128;
        v33 = v119;
        (v119)(v32, v128);
        v6 = v134;
        sub_10000AEC8(v133, v134);
        v34 = v127;
        v35 = dispatch thunk of WorkerProtocol.workerConfig.getter();
        v36 = v31(v35);
        v33(v34, v16);
        sub_10000AE7C(v133);
        result = sub_10000AE7C(&v135);
        v18 = v120;
        v26 = v132 + 1;
        v27 += 40;
        if (((v131 ^ (v130 >= v36)) & 1) == 0)
        {
          v28 = v132;
          break;
        }
      }

      a6 = v114;
      v17 = v117;
      if (v124 >= v121)
      {
        v16 = v116;
      }

      else
      {
        if (v28 < v117)
        {
          goto LABEL_120;
        }

        v16 = v116;
        if (v117 < v28)
        {
          v6 = 40 * v28 - 40;
          v122 = v28;
          v37 = v28;
          v38 = v117;
          v39 = v118;
          do
          {
            if (v38 != --v37)
            {
              v44 = *v16;
              if (!*v16)
              {
                goto LABEL_126;
              }

              v40 = v44 + v39;
              v41 = v44 + v6;
              sub_10000C43C((v44 + v39), &v135);
              v42 = *(v41 + 32);
              v43 = *(v41 + 16);
              *v40 = *v41;
              *(v40 + 16) = v43;
              *(v40 + 32) = v42;
              result = sub_10000C43C(&v135, v41);
              v17 = v117;
            }

            ++v38;
            v6 -= 40;
            v39 += 40;
          }

          while (v38 < v37);
          v28 = v122;
        }
      }
    }

    v45 = *(v16 + 8);
    if (v28 < v45)
    {
      if (__OFSUB__(v28, v17))
      {
        goto LABEL_119;
      }

      if (v28 - v17 < v113)
      {
        if (__OFADD__(v17, v113))
        {
          goto LABEL_121;
        }

        if (v17 + v113 >= v45)
        {
          v46 = *(v16 + 8);
        }

        else
        {
          v46 = v17 + v113;
        }

        if (v46 < v17)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v28 != v46)
        {
          break;
        }
      }
    }

    v47 = v28;
    if (v28 < v17)
    {
      goto LABEL_118;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10002C0C8(0, *(v18 + 2) + 1, 1, v18);
      v18 = result;
    }

    v49 = *(v18 + 2);
    v48 = *(v18 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_10002C0C8((v48 > 1), v49 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 2) = v50;
    v51 = &v18[16 * v49];
    *(v51 + 4) = v117;
    *(v51 + 5) = v47;
    v6 = *v115;
    if (!*v115)
    {
      goto LABEL_128;
    }

    v118 = v47;
    if (v49)
    {
      while (1)
      {
        v52 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v18 + 4);
          v54 = *(v18 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_50:
          if (v56)
          {
            goto LABEL_107;
          }

          v69 = &v18[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_110;
          }

          v75 = &v18[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_114;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v50 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v79 = &v18[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_64:
        if (v74)
        {
          goto LABEL_109;
        }

        v82 = &v18[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_112;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_71:
        v90 = v52 - 1;
        if (v52 - 1 >= v50)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_122;
        }

        if (!*v16)
        {
          goto LABEL_125;
        }

        v91 = *&v18[16 * v90 + 32];
        v92 = *&v18[16 * v52 + 40];
        v93 = v123;
        sub_10002DE44((*v16 + 40 * v91), (*v16 + 40 * *&v18[16 * v52 + 32]), (*v16 + 40 * v92), v6, a6);
        v123 = v93;
        if (v93)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_10002E400(v18);
        }

        if (v90 >= *(v18 + 2))
        {
          goto LABEL_104;
        }

        v94 = &v18[16 * v90];
        *(v94 + 4) = v91;
        *(v94 + 5) = v92;
        v137 = v18;
        result = sub_10002E374(v52);
        v18 = v137;
        v50 = *(v137 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v18[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_105;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_106;
      }

      v64 = &v18[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_108;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_111;
      }

      if (v68 >= v60)
      {
        v86 = &v18[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v55 < v89)
        {
          v52 = v50 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v15 = *(v16 + 8);
    v17 = v118;
    if (v118 >= v15)
    {
      goto LABEL_91;
    }
  }

  v120 = v18;
  v124 = *v16;
  v6 = v124 + 40 * v28;
  v95 = (v17 - v28);
  v118 = v46;
LABEL_82:
  v122 = v28;
  v119 = v95;
  v96 = v95;
  v121 = v6;
  while (1)
  {
    v130 = v96;
    sub_10000AE18(v6, &v135);
    sub_10000AE18(v6 - 40, v133);
    sub_10000AEC8(&v135, v136);
    v97 = v126;
    v98 = dispatch thunk of WorkerProtocol.workerConfig.getter();
    v99 = v129;
    LOBYTE(v132) = v129(v98);
    LODWORD(v132) = v132;
    v131 = *v125;
    v100 = v128;
    v131(v97, v128);
    sub_10000AEC8(v133, v134);
    v101 = v127;
    v102 = dispatch thunk of WorkerProtocol.workerConfig.getter();
    v103 = v99(v102);
    v131(v101, v100);
    sub_10000AE7C(v133);
    result = sub_10000AE7C(&v135);
    if (v132 >= v103)
    {
LABEL_81:
      v28 = v122 + 1;
      v6 = v121 + 40;
      v95 = v119 - 1;
      v47 = v118;
      if (v122 + 1 != v118)
      {
        goto LABEL_82;
      }

      a6 = v114;
      v16 = v116;
      v18 = v120;
      if (v118 < v117)
      {
        goto LABEL_118;
      }

      goto LABEL_31;
    }

    v104 = v130;
    if (!v124)
    {
      break;
    }

    sub_10000C43C(v6, &v135);
    v105 = *(v6 - 24);
    *v6 = *(v6 - 40);
    *(v6 + 16) = v105;
    *(v6 + 32) = *(v6 - 8);
    sub_10000C43C(&v135, v6 - 40);
    v6 -= 40;
    v106 = __CFADD__(v104, 1);
    v96 = v104 + 1;
    if (v106)
    {
      goto LABEL_81;
    }
  }

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
  return result;
}

uint64_t sub_10002DE44(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(uint64_t))
{
  v62 = a5;
  v61 = type metadata accessor for Config.WorkerConfigs();
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v60 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = &v52 - v12;
  v13 = (a2 - a1) / 40;
  v14 = (a3 - a2) / 40;
  if (v13 >= v14)
  {
    v63 = a1;
    if (a4 != a2 || &a2[40 * v14] <= a4)
    {
      memmove(a4, a2, 40 * v14);
    }

    v15 = &a4[40 * v14];
    if (a3 - a2 < 40 || a2 <= v63)
    {
      v30 = a2;
    }

    else
    {
      v53 = (v9 + 8);
      v69 = a4;
      do
      {
        v58 = a2;
        v31 = a2 - 40;
        v32 = (v15 - 40);
        v33 = a3 - 40;
        v54 = v31;
        while (1)
        {
          v64 = (v32 + 40);
          v56 = v33 + 40;
          v57 = v33;
          sub_10000AE18(v32, v67);
          sub_10000AE18(v31, v65);
          sub_10000AEC8(v67, v68);
          v36 = v59;
          v37 = dispatch thunk of WorkerProtocol.workerConfig.getter();
          v38 = v62;
          LOBYTE(v55) = v62(v37);
          v55 = v55;
          v39 = *v53;
          v40 = v36;
          v41 = v61;
          (*v53)(v40, v61);
          sub_10000AEC8(v65, v66);
          v42 = v60;
          v43 = dispatch thunk of WorkerProtocol.workerConfig.getter();
          v44 = v38(v43);
          v39(v42, v41);
          sub_10000AE7C(v65);
          sub_10000AE7C(v67);
          if (v55 < v44)
          {
            break;
          }

          v45 = v57;
          if (v56 != v64)
          {
            v46 = *v32;
            v47 = *(v32 + 16);
            *(v57 + 4) = *(v32 + 32);
            *v45 = v46;
            v45[1] = v47;
          }

          v34 = v32 - 40;
          v33 = v45 - 40;
          a4 = v69;
          v35 = v32 > v69;
          v32 -= 40;
          v31 = v54;
          if (!v35)
          {
            v15 = (v34 + 40);
            v30 = v58;
            goto LABEL_34;
          }
        }

        v15 = v64;
        a3 = v57;
        v30 = v54;
        if (v56 != v58)
        {
          v48 = *v54;
          v49 = *(v54 + 1);
          *(v57 + 4) = *(v54 + 4);
          *a3 = v48;
          *(a3 + 1) = v49;
        }

        a4 = v69;
        if (v15 <= v69)
        {
          break;
        }

        a2 = v30;
      }

      while (v30 > v63);
      v15 = (v32 + 40);
    }
  }

  else
  {
    if (a4 != a1 || &a1[40 * v13] <= a4)
    {
      memmove(a4, a1, 40 * v13);
    }

    v15 = &a4[40 * v13];
    if (a2 - a1 >= 40)
    {
      v16 = a2;
      if (a2 < a3)
      {
        v56 = (v9 + 8);
        v64 = &a4[40 * v13];
        while (1)
        {
          v69 = a4;
          v58 = v16;
          v63 = a1;
          sub_10000AE18(v16, v67);
          sub_10000AE18(a4, v65);
          sub_10000AEC8(v67, v68);
          v17 = v59;
          v18 = dispatch thunk of WorkerProtocol.workerConfig.getter();
          v19 = v62;
          LOBYTE(v57) = v62(v18);
          LODWORD(v57) = v57;
          v20 = *v56;
          v21 = v17;
          v22 = v61;
          (*v56)(v21, v61);
          sub_10000AEC8(v65, v66);
          v23 = v60;
          v24 = dispatch thunk of WorkerProtocol.workerConfig.getter();
          v25 = v19(v24);
          v20(v23, v22);
          sub_10000AE7C(v65);
          sub_10000AE7C(v67);
          if (v57 >= v25)
          {
            break;
          }

          v26 = v58;
          v16 = v58 + 40;
          v27 = v63;
          a4 = v69;
          v15 = v64;
          if (v63 != v58)
          {
            goto LABEL_12;
          }

LABEL_13:
          a1 = v27 + 40;
          if (a4 >= v15 || v16 >= a3)
          {
            goto LABEL_15;
          }
        }

        v26 = v69;
        a4 = v69 + 40;
        v27 = v63;
        v16 = v58;
        v15 = v64;
        if (v63 == v69)
        {
          goto LABEL_13;
        }

LABEL_12:
        v28 = *v26;
        v29 = *(v26 + 1);
        *(v27 + 4) = *(v26 + 4);
        *v27 = v28;
        *(v27 + 1) = v29;
        goto LABEL_13;
      }
    }

LABEL_15:
    v30 = a1;
  }

LABEL_34:
  v50 = (v15 - a4) / 40;
  if (v30 != a4 || v30 >= &a4[40 * v50])
  {
    memmove(v30, a4, 40 * v50);
  }

  return 1;
}

uint64_t sub_10002E374(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002E400(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t *sub_10002E414(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10000D100(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10002E50C(void *a1)
{
  v2 = a1[2];
  v3 = *(a1 + 12);
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = *(a1 + 24);
  v8 = swift_allocObject();

  sub_10002B564(v2, v3, v4, v5, v6, v7);
  swift_beginAccess();
  v9 = a1[9];
  v10 = *(v8 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100009FD0;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10000853C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002EB0;
  aBlock[3] = &unk_100042538;
  v13 = _Block_copy(aBlock);
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (a1[10])
    {

      sub_10000B6EC(v15);
    }

    return v8;
  }

  return result;
}

uint64_t sub_10002E748()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 44);
  sub_100015070();
  sub_1000280B4(v1, v2, v3, v4);
}

uint64_t sub_10002E7BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002E7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10002E88C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002E900(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10002E944()
{
  v1 = 0x735F6C616E676973;
  if (*v0 != 1)
  {
    v1 = 1886352499;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

__n128 sub_10002E99C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10002E9B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002EA00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionMethod(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SessionMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002EBD4()
{
  result = qword_100045E30;
  if (!qword_100045E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045E30);
  }

  return result;
}

unint64_t *SystemMonitor.currentMessageContents.getter()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_100010128((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_10002ECE4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static SystemMonitor.shared = v1;
}

uint64_t sub_10002ED48(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "SystemMonitor.shutdown()", v5, 2u);
  }

  v6 = *(v2 + 16);

  os_unfair_lock_lock((v6 + 24));
  sub_10003338C((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));
}

void sub_10002EE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v141 = a5;
  v143 = a4;
  v5 = sub_10001712C(&qword_100045480, &qword_100035FD8);
  __chkstk_darwin(v5 - 8);
  v132 = &v119 - v6;
  v134 = type metadata accessor for Message();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_10001712C(&qword_100046060, &qword_100036878);
  __chkstk_darwin(v135);
  v136 = &v119 - v8;
  v138 = type metadata accessor for FeatureInfo(0);
  v9 = *(*(v138 - 8) + 64);
  v10 = __chkstk_darwin(v138);
  v11 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v137 = &v119 - v12;
  v13 = sub_10001712C(&qword_100045998, &qword_100036360);
  v14 = __chkstk_darwin(v13 - 8);
  v128 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v127 = &v119 - v17;
  v18 = __chkstk_darwin(v16);
  v139 = &v119 - v19;
  v20 = __chkstk_darwin(v18);
  v140 = &v119 - v21;
  __chkstk_darwin(v20);
  v23 = &v119 - v22;
  v144 = type metadata accessor for FeatureState(0);
  v24 = *(v144 - 8);
  v25 = __chkstk_darwin(v144);
  v126 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v125 = &v119 - v28;
  v29 = __chkstk_darwin(v27);
  v130 = &v119 - v30;
  v31 = __chkstk_darwin(v29);
  v129 = &v119 - v32;
  v33 = __chkstk_darwin(v31);
  v124 = &v119 - v34;
  __chkstk_darwin(v33);
  v142 = &v119 - v35;
  v36 = type metadata accessor for Logger();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v40 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v119 - v41;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    swift_beginAccess();
    v45 = swift_unknownObjectWeakLoadStrong();
    if (v45)
    {
      v46 = v45;
      v47 = v141;
      swift_beginAccess();
      v48 = *(v47 + 4);
      LOBYTE(v145) = 0;
      v49 = v143;
      sub_100030040(v143, v48, v23);
      v50 = v144;
      v141 = *(v24 + 48);
      if ((v141)(v23, 1, v144) == 1)
      {
        sub_100006CC8(v23, &qword_100045998, &qword_100036360);
        sub_1000108FC(v49, v11, type metadata accessor for FeatureInfo);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v145 = v54;
          *v53 = 136380675;
          v55 = &v11[*(v138 + 28)];
          v56 = *v55;
          v57 = v55[1];

          sub_10003332C(v11, type metadata accessor for FeatureInfo);
          v58 = sub_100013120(v56, v57, &v145);

          *(v53 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v51, v52, "No value found, even though we received a notification! { notification=%{private}s }", v53, 0xCu);
          sub_10000AE7C(v54);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          sub_10003332C(v11, type metadata accessor for FeatureInfo);
        }

        return;
      }

      v123 = v46;
      v65 = v142;
      sub_100010D10(v23, v142, type metadata accessor for FeatureState);
      v66 = v65;
      v67 = v140;
      sub_1000108FC(v66, v140, type metadata accessor for FeatureState);
      v68 = *(v24 + 56);
      v121 = v24 + 56;
      v120 = v68;
      v68(v67, 0, 1, v50);
      v69 = v67;
      v122 = v44;
      v70 = v49;
      v71 = v137;
      v72 = sub_1000108FC(v70, v137, type metadata accessor for FeatureInfo);
      __chkstk_darwin(v72);
      sub_100010D10(v71, &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureInfo);
      swift_getKeyPath();
      v73 = v144;

      v74 = v139;
      OSAllocatedUnfairLock<A>.load<A>(_:)();

      v75 = v136;
      v76 = *(v135 + 48);
      sub_10000C454(v67, v136, &qword_100045998, &qword_100036360);
      v77 = v75;
      sub_10000C454(v74, v75 + v76, &qword_100045998, &qword_100036360);
      if ((v141)(v75, 1, v73) == 1)
      {
        sub_100006CC8(v74, &qword_100045998, &qword_100036360);
        sub_100006CC8(v69, &qword_100045998, &qword_100036360);
        v78 = (v141)(v75 + v76, 1, v73);
        v79 = v142;
        v80 = v122;
        v81 = v73;
        if (v78 == 1)
        {
          sub_100006CC8(v77, &qword_100045998, &qword_100036360);
          goto LABEL_25;
        }
      }

      else
      {
        v82 = v75;
        v83 = v127;
        sub_10000C454(v82, v127, &qword_100045998, &qword_100036360);
        v81 = v73;
        if ((v141)(v77 + v76, 1, v73) != 1)
        {
          v103 = v124;
          sub_100010D10(v77 + v76, v124, type metadata accessor for FeatureState);
          v104 = v77;
          v105 = sub_100032FC0(v83, v103);
          sub_10003332C(v103, type metadata accessor for FeatureState);
          sub_100006CC8(v139, &qword_100045998, &qword_100036360);
          sub_100006CC8(v140, &qword_100045998, &qword_100036360);
          sub_10003332C(v83, type metadata accessor for FeatureState);
          sub_100006CC8(v104, &qword_100045998, &qword_100036360);
          v79 = v142;
          v84 = v143;
          v80 = v122;
          if (v105)
          {
LABEL_25:
            v106 = v125;
            sub_1000108FC(v79, v125, type metadata accessor for FeatureState);
            v107 = v126;
            sub_1000108FC(v79, v126, type metadata accessor for FeatureState);
            v108 = Logger.logObject.getter();
            v109 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v108, v109))
            {
              v110 = swift_slowAlloc();
              v145 = swift_slowAlloc();
              *v110 = 136380931;
              v111 = (v106 + *(v138 + 20));
              v112 = *v111;
              v113 = v111[1];

              sub_10003332C(v106, type metadata accessor for FeatureState);
              v114 = sub_100013120(v112, v113, &v145);

              *(v110 + 4) = v114;
              *(v110 + 12) = 2081;
              type metadata accessor for SimpleType();
              sub_100033264(&qword_100046068, &type metadata accessor for SimpleType, &protocol conformance descriptor for SimpleType);
              v115 = dispatch thunk of CustomStringConvertible.description.getter();
              v117 = v116;
              sub_10003332C(v107, type metadata accessor for FeatureState);
              v118 = sub_100013120(v115, v117, &v145);

              *(v110 + 14) = v118;
              _os_log_impl(&_mh_execute_header, v108, v109, "Value did not change. { feature=%{private}s, value=%{private}s }", v110, 0x16u);
              swift_arrayDestroy();

              swift_unknownObjectRelease();

              sub_10003332C(v142, type metadata accessor for FeatureState);
            }

            else
            {
              swift_unknownObjectRelease();

              sub_10003332C(v107, type metadata accessor for FeatureState);
              sub_10003332C(v106, type metadata accessor for FeatureState);
              sub_10003332C(v79, type metadata accessor for FeatureState);
            }

            return;
          }

          goto LABEL_20;
        }

        sub_100006CC8(v139, &qword_100045998, &qword_100036360);
        sub_100006CC8(v140, &qword_100045998, &qword_100036360);
        sub_10003332C(v83, type metadata accessor for FeatureState);
        v79 = v142;
        v80 = v122;
      }

      sub_100006CC8(v77, &qword_100046060, &qword_100036878);
      v84 = v143;
LABEL_20:
      v85 = sub_1000108FC(v84, v71, type metadata accessor for FeatureInfo);
      __chkstk_darwin(v85);
      sub_100010D10(v71, &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureInfo);
      swift_getKeyPath();
      v86 = v128;
      sub_1000108FC(v79, v128, type metadata accessor for FeatureState);
      v120(v86, 0, 1, v81);

      OSAllocatedUnfairLock<A>.assign<A>(_:newValue:)();

      sub_100006CC8(v86, &qword_100045998, &qword_100036360);
      v87 = v129;
      sub_1000108FC(v79, v129, type metadata accessor for FeatureState);
      v88 = v130;
      sub_1000108FC(v79, v130, type metadata accessor for FeatureState);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *v91 = 136380931;
        v92 = (v87 + *(v138 + 20));
        v93 = *v92;
        v94 = v92[1];

        sub_10003332C(v87, type metadata accessor for FeatureState);
        v95 = sub_100013120(v93, v94, &v145);

        *(v91 + 4) = v95;
        *(v91 + 12) = 2081;
        type metadata accessor for SimpleType();
        sub_100033264(&qword_100046068, &type metadata accessor for SimpleType, &protocol conformance descriptor for SimpleType);
        v96 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v97;
        sub_10003332C(v88, type metadata accessor for FeatureState);
        v99 = sub_100013120(v96, v98, &v145);
        v79 = v142;

        *(v91 + 14) = v99;
        _os_log_impl(&_mh_execute_header, v89, v90, "Broadcasting new value. { feature=%{private}s, value=%{private}s }", v91, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10003332C(v88, type metadata accessor for FeatureState);
        sub_10003332C(v87, type metadata accessor for FeatureState);
      }

      v100 = *(v80 + 16);

      os_unfair_lock_lock((v100 + 24));
      sub_100010128((v100 + 16), &v145);
      os_unfair_lock_unlock((v100 + 24));

      v101 = type metadata accessor for Message.Metadata();
      (*(*(v101 - 8) + 56))(v132, 1, 1, v101);
      v102 = v131;
      Message.init(category:type:content:metadata:)();
      sub_10002101C(v102);

      swift_unknownObjectRelease();
      (*(v133 + 8))(v102, v134);
      sub_10003332C(v79, type metadata accessor for FeatureState);
      return;
    }

    static Logger.service.getter();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Somehow Server no longer exists!", v64, 2u);
    }

    (*(v37 + 8))(v40, v36);
  }

  else
  {
    static Logger.service.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Somehow SystemMonitor no longer exists!", v61, 2u);
    }

    (*(v37 + 8))(v42, v36);
  }
}

void sub_100030040(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a2;
  v115 = a3;
  v4 = type metadata accessor for FeatureInfo(0);
  v5 = __chkstk_darwin(v4);
  v109 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v111 = &v108 - v7;
  v8 = type metadata accessor for SimpleType();
  v113 = *(v8 - 8);
  v114 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = (&v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v110 = (&v108 - v13);
  __chkstk_darwin(v12);
  v15 = (&v108 - v14);
  v16 = type metadata accessor for SystemMonitorConfig.DataType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SystemMonitorConfig.MonitorType();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v23, a1, v20);
  v24 = (*(v21 + 88))(v23, v20);
  if (v24 == enum case for SystemMonitorConfig.MonitorType.defaults(_:))
  {
    (*(v17 + 16))(v19, a1 + *(v4 + 36), v16);
    v25 = (*(v17 + 88))(v19, v16);
    if (v25 == enum case for SystemMonitorConfig.DataType.string(_:))
    {
      default argument 2 of static DefaultsUtilities.get<A>(key:applicationID:userName:)();
      static DefaultsUtilities.get<A>(key:applicationID:userName:)();

      v26 = v118;
      if (v118)
      {
        v27 = state64;
        v28 = v115;
        sub_1000108FC(a1, v115, type metadata accessor for FeatureInfo);
        v29 = type metadata accessor for FeatureState(0);
        v30 = (v28 + *(v29 + 20));
        *v30 = v27;
        v30[1] = v26;
        (*(v113 + 104))();
        *(v28 + *(v29 + 24)) = -1;
        v31 = *(*(v29 - 8) + 56);
        v32 = v28;
LABEL_101:
        v31(v32, 0, 1, v29);
        return;
      }

LABEL_31:
      v49 = v115;
      sub_1000108FC(a1, v115, type metadata accessor for FeatureInfo);
      v50 = type metadata accessor for FeatureState(0);
      v51 = (v49 + *(v50 + 20));
      v52 = (a1 + *(v4 + 32));
      v53 = v52[1];
      *v51 = *v52;
      v51[1] = v53;
      (*(v113 + 104))();
      *(v49 + *(v50 + 24)) = -1;
      (*(*(v50 - 8) + 56))(v49, 0, 1, v50);

      return;
    }

    if (v25 == enum case for SystemMonitorConfig.DataType.int(_:))
    {
      default argument 2 of static DefaultsUtilities.get<A>(key:applicationID:userName:)();
      static DefaultsUtilities.get<A>(key:applicationID:userName:)();

      if (v118)
      {
        v36 = v111;
        sub_1000108FC(a1, v111, type metadata accessor for FeatureInfo);
        v37 = (a1 + *(v4 + 32));
        v39 = *v37;
        v38 = v37[1];
        v40 = HIBYTE(v38) & 0xF;
        v41 = v39 & 0xFFFFFFFFFFFFLL;
        if ((v38 & 0x2000000000000000) != 0)
        {
          v42 = HIBYTE(v38) & 0xF;
        }

        else
        {
          v42 = v39 & 0xFFFFFFFFFFFFLL;
        }

        if (!v42)
        {
          goto LABEL_97;
        }

        if ((v38 & 0x1000000000000000) != 0)
        {

          v45 = sub_100031F78(v39, v38, 10);
          v107 = v106;

          if ((v107 & 1) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        }

        if ((v38 & 0x2000000000000000) != 0)
        {
          state64 = v39;
          v118 = v38 & 0xFFFFFFFFFFFFFFLL;
          if (v39 == 43)
          {
            if (v40)
            {
              if (--v40)
              {
                v45 = 0;
                v95 = &state64 + 1;
                while (1)
                {
                  v96 = *v95 - 48;
                  if (v96 > 9)
                  {
                    break;
                  }

                  v97 = 10 * v45;
                  if ((v45 * 10) >> 64 != (10 * v45) >> 63)
                  {
                    break;
                  }

                  v45 = v97 + v96;
                  if (__OFADD__(v97, v96))
                  {
                    break;
                  }

                  ++v95;
                  if (!--v40)
                  {
                    goto LABEL_96;
                  }
                }
              }

              goto LABEL_95;
            }

LABEL_108:
            __break(1u);
          }

          if (v39 != 45)
          {
            if (v40)
            {
              v45 = 0;
              p_state64 = &state64;
              while (1)
              {
                v101 = *p_state64 - 48;
                if (v101 > 9)
                {
                  break;
                }

                v102 = 10 * v45;
                if ((v45 * 10) >> 64 != (10 * v45) >> 63)
                {
                  break;
                }

                v45 = v102 + v101;
                if (__OFADD__(v102, v101))
                {
                  break;
                }

                p_state64 = (p_state64 + 1);
                if (!--v40)
                {
                  goto LABEL_96;
                }
              }
            }

            goto LABEL_95;
          }

          if (v40)
          {
            if (--v40)
            {
              v45 = 0;
              v89 = &state64 + 1;
              while (1)
              {
                v90 = *v89 - 48;
                if (v90 > 9)
                {
                  break;
                }

                v91 = 10 * v45;
                if ((v45 * 10) >> 64 != (10 * v45) >> 63)
                {
                  break;
                }

                v45 = v91 - v90;
                if (__OFSUB__(v91, v90))
                {
                  break;
                }

                ++v89;
                if (!--v40)
                {
                  goto LABEL_96;
                }
              }
            }

            goto LABEL_95;
          }
        }

        else
        {
          if ((v39 & 0x1000000000000000) != 0)
          {
            v43 = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v43 = _StringObject.sharedUTF8.getter();
          }

          v44 = *v43;
          if (v44 == 43)
          {
            if (v41 >= 1)
            {
              v40 = v41 - 1;
              if (v41 != 1)
              {
                v45 = 0;
                if (v43)
                {
                  v92 = v43 + 1;
                  while (1)
                  {
                    v93 = *v92 - 48;
                    if (v93 > 9)
                    {
                      goto LABEL_95;
                    }

                    v94 = 10 * v45;
                    if ((v45 * 10) >> 64 != (10 * v45) >> 63)
                    {
                      goto LABEL_95;
                    }

                    v45 = v94 + v93;
                    if (__OFADD__(v94, v93))
                    {
                      goto LABEL_95;
                    }

                    ++v92;
                    if (!--v40)
                    {
                      goto LABEL_96;
                    }
                  }
                }

                goto LABEL_87;
              }

              goto LABEL_95;
            }

            goto LABEL_107;
          }

          if (v44 != 45)
          {
            if (v41)
            {
              v45 = 0;
              if (v43)
              {
                while (1)
                {
                  v98 = *v43 - 48;
                  if (v98 > 9)
                  {
                    goto LABEL_95;
                  }

                  v99 = 10 * v45;
                  if ((v45 * 10) >> 64 != (10 * v45) >> 63)
                  {
                    goto LABEL_95;
                  }

                  v45 = v99 + v98;
                  if (__OFADD__(v99, v98))
                  {
                    goto LABEL_95;
                  }

                  ++v43;
                  if (!--v41)
                  {
                    goto LABEL_87;
                  }
                }
              }

              goto LABEL_87;
            }

LABEL_95:
            v45 = 0;
            LOBYTE(v40) = 1;
LABEL_96:
            v116 = v40;
            if ((v40 & 1) == 0)
            {
LABEL_98:
              v103 = v110;
              *v110 = v45;
              v105 = v113;
              v104 = v114;
              (*(v113 + 104))(v103, enum case for SimpleType.int(_:), v114);
              v34 = v115;
              sub_100010D10(v36, v115, type metadata accessor for FeatureInfo);
              v29 = type metadata accessor for FeatureState(0);
              (*(v105 + 32))(v34 + *(v29 + 20), v103, v104);
              goto LABEL_99;
            }

LABEL_97:
            v45 = 0;
            goto LABEL_98;
          }

          if (v41 >= 1)
          {
            v40 = v41 - 1;
            if (v41 != 1)
            {
              v45 = 0;
              if (v43)
              {
                v46 = v43 + 1;
                while (1)
                {
                  v47 = *v46 - 48;
                  if (v47 > 9)
                  {
                    goto LABEL_95;
                  }

                  v48 = 10 * v45;
                  if ((v45 * 10) >> 64 != (10 * v45) >> 63)
                  {
                    goto LABEL_95;
                  }

                  v45 = v48 - v47;
                  if (__OFSUB__(v48, v47))
                  {
                    goto LABEL_95;
                  }

                  ++v46;
                  if (!--v40)
                  {
                    goto LABEL_96;
                  }
                }
              }

LABEL_87:
              LOBYTE(v40) = 0;
              goto LABEL_96;
            }

            goto LABEL_95;
          }

          __break(1u);
        }

        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v71 = state64;
      v66 = v115;
      sub_1000108FC(a1, v115, type metadata accessor for FeatureInfo);
      v29 = type metadata accessor for FeatureState(0);
      v72 = *(v29 + 20);
      *(v66 + v72) = v71;
      v73 = &enum case for SimpleType.int(_:);
      goto LABEL_44;
    }

    if (v25 == enum case for SystemMonitorConfig.DataType.double(_:))
    {
      default argument 2 of static DefaultsUtilities.get<A>(key:applicationID:userName:)();
      static DefaultsUtilities.get<A>(key:applicationID:userName:)();

      if ((v118 & 1) == 0)
      {
        v83 = state64;
        v34 = v115;
        sub_1000108FC(a1, v115, type metadata accessor for FeatureInfo);
        v29 = type metadata accessor for FeatureState(0);
        v84 = *(v29 + 20);
        *(v34 + v84) = v83;
        (*(v113 + 104))(v34 + v84, enum case for SimpleType.double(_:), v114);
LABEL_99:
        *(v34 + *(v29 + 24)) = -1;
        goto LABEL_100;
      }

      v58 = v109;
      sub_1000108FC(a1, v109, type metadata accessor for FeatureInfo);
      v59 = (a1 + *(v4 + 32));
      v60 = *v59;
      v61 = v59[1];
      state64 = 0;
      v62 = sub_100032978(v60, v61, &state64);
      v63 = *&state64;
      if (!v62)
      {
        v63 = 0.0;
      }

      *v11 = v63;
      v65 = v113;
      v64 = v114;
      (*(v113 + 104))(v11, enum case for SimpleType.double(_:), v114);
      v66 = v115;
      sub_100010D10(v58, v115, type metadata accessor for FeatureInfo);
      v29 = type metadata accessor for FeatureState(0);
      (*(v65 + 32))(v66 + *(v29 + 20), v11, v64);
LABEL_45:
      *(v66 + *(v29 + 24)) = -1;
      v31 = *(*(v29 - 8) + 56);
      v32 = v66;
      goto LABEL_101;
    }

    if (v25 == enum case for SystemMonitorConfig.DataType.BOOL(_:))
    {
      default argument 2 of static DefaultsUtilities.get<A>(key:applicationID:userName:)();
      static DefaultsUtilities.get<A>(key:applicationID:userName:)();

      v74 = state64;
      if (state64 == 2)
      {
        v75 = (a1 + *(v4 + 32));
        v76 = v75[1];
        *v15 = *v75;
        v15[1] = v76;
        v78 = v113;
        v77 = v114;
        v79 = *(v113 + 104);
        v79(v15, enum case for SimpleType.string(_:), v114);
        v80 = v115;
        sub_1000108FC(a1, v115, type metadata accessor for FeatureInfo);
        v81 = type metadata accessor for FeatureState(0);
        v82 = *(v81 + 20);

        LOBYTE(v76) = SimpleType.isTrue()();
        (*(v78 + 8))(v15, v77);
        *(v80 + v82) = v76 & 1;
        v79((v80 + v82), enum case for SimpleType.BOOL(_:), v77);
        *(v80 + *(v81 + 24)) = -1;
        (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
        return;
      }

      v66 = v115;
      sub_1000108FC(a1, v115, type metadata accessor for FeatureInfo);
      v29 = type metadata accessor for FeatureState(0);
      v72 = *(v29 + 20);
      *(v66 + v72) = v74 & 1;
      v73 = &enum case for SimpleType.BOOL(_:);
LABEL_44:
      (*(v113 + 104))(v66 + v72, *v73, v114);
      goto LABEL_45;
    }

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "Unknown featureInfo dataType received.", v87, 2u);
    }

    v88 = type metadata accessor for FeatureState(0);
    (*(*(v88 - 8) + 56))(v115, 1, 1, v88);
    (*(v17 + 8))(v19, v16);
  }

  else if (v24 == enum case for SystemMonitorConfig.MonitorType.notify(_:))
  {
    v33 = v112;
    if ((v112 & 0x100000000) == 0)
    {
      state64 = 0;
      if (notify_get_state(v112, &state64))
      {
        goto LABEL_31;
      }

      v34 = v115;
      sub_1000108FC(a1, v115, type metadata accessor for FeatureInfo);
      v29 = type metadata accessor for FeatureState(0);
      v35 = *(v29 + 20);
      *(v34 + v35) = state64 == 1;
      (*(v113 + 104))(v34 + v35, enum case for SimpleType.BOOL(_:), v114);
      *(v34 + *(v29 + 24)) = v33;
LABEL_100:
      v31 = *(*(v29 - 8) + 56);
      v32 = v34;
      goto LABEL_101;
    }

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "cachedToken is nil.", v56, 2u);
    }

    v57 = type metadata accessor for FeatureState(0);
    (*(*(v57 - 8) + 56))(v115, 1, 1, v57);
  }

  else
  {
    if (v24 == enum case for SystemMonitorConfig.MonitorType.other(_:))
    {
      goto LABEL_31;
    }

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Unknown featureInfo monitorType received.", v69, 2u);
    }

    v70 = type metadata accessor for FeatureState(0);
    (*(*(v70 - 8) + 56))(v115, 1, 1, v70);
    (*(v21 + 8))(v23, v20);
  }
}

uint64_t SystemMonitor.currentMessage.getter()
{
  v1 = sub_10001712C(&qword_100045480, &qword_100035FD8);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = *(v0 + 16);

  os_unfair_lock_lock((v4 + 24));
  sub_100010128((v4 + 16), &v8);
  os_unfair_lock_unlock((v4 + 24));

  v5 = type metadata accessor for Message.Metadata();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return Message.init(category:type:content:metadata:)();
}

void sub_100031164(void *a1, uint64_t a2)
{
  v32 = a2;
  v3 = type metadata accessor for FeatureState(0);
  v31 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - v8;
  __chkstk_darwin(v7);
  v29 = &v25 - v10;
  v25 = a1;
  v11 = *a1;
  v12 = *a1 + 64;
  v13 = 1 << *(*a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(*a1 + 64);
  v28 = OBJC_IVAR____TtC15audioanalyticsd13SystemMonitor_logger;
  v16 = (v13 + 63) >> 6;
  v33 = v11;

  v17 = 0;
  *&v18 = 67240192;
  v26 = v18;
  v27 = v3;
  v30 = v9;
  while (v15)
  {
LABEL_11:
    v20 = v29;
    sub_1000108FC(*(v33 + 56) + *(v31 + 72) * (__clz(__rbit64(v15)) | (v17 << 6)), v29, type metadata accessor for FeatureState);
    sub_100010D10(v20, v9, type metadata accessor for FeatureState);
    sub_1000108FC(v9, v6, type metadata accessor for FeatureState);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = v26;
      v24 = *&v6[*(v3 + 24)];
      sub_10003332C(v6, type metadata accessor for FeatureState);
      *(v23 + 4) = v24;
      v3 = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "notify_cancel(%{public}d)", v23, 8u);
    }

    else
    {
      sub_10003332C(v6, type metadata accessor for FeatureState);
    }

    v15 &= v15 - 1;

    v9 = v30;
    notify_cancel(*&v30[*(v3 + 24)]);
    sub_10003332C(v9, type metadata accessor for FeatureState);
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      *v25 = &_swiftEmptyDictionarySingleton;
      return;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100031484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for SystemMonitorConfig();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v44 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v40[-v7];
  v9 = type metadata accessor for Logger();
  v45 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.service.getter();
  v12 = *(v4 + 16);
  v46 = a1;
  v12(v8, a1, v3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v43 = v9;
    v16 = v15;
    v42 = swift_slowAlloc();
    v48 = v42;
    *v16 = 136380675;
    v41 = v14;
    v12(v44, v8, v3);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    (*(v4 + 8))(v8, v3);
    v20 = sub_100013120(v17, v19, &v48);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v41, "SystemMonitor.buildFeatureInfos. { config=%{private}s }", v16, 0xCu);
    sub_10000AE7C(v42);

    (*(v45 + 8))(v11, v43);
  }

  else
  {

    (*(v4 + 8))(v8, v3);
    (*(v45 + 8))(v11, v9);
  }

  v21 = v47;
  SystemMonitorConfig.monitorType.getter();
  v22 = SystemMonitorConfig.name.getter();
  v44 = v23;
  v45 = v22;
  v24 = SystemMonitorConfig.domain.getter();
  v26 = v25;
  v27 = SystemMonitorConfig.notification.getter();
  v29 = v28;
  v30 = SystemMonitorConfig.defaultValue.getter();
  v32 = v31;
  v33 = type metadata accessor for FeatureInfo(0);
  result = SystemMonitorConfig.dataType.getter();
  v35 = (v21 + v33[5]);
  v36 = v44;
  *v35 = v45;
  v35[1] = v36;
  v37 = (v21 + v33[6]);
  *v37 = v24;
  v37[1] = v26;
  v38 = (v21 + v33[7]);
  *v38 = v27;
  v38[1] = v29;
  v39 = (v21 + v33[8]);
  *v39 = v30;
  v39[1] = v32;
  return result;
}

uint64_t SystemMonitor.deinit()
{

  v1 = OBJC_IVAR____TtC15audioanalyticsd13SystemMonitor_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SystemMonitor.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15audioanalyticsd13SystemMonitor_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100031960(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100031A44(uint64_t a1)
{
  result = type metadata accessor for FeatureInfo(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SimpleType();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100031AF8(uint64_t a1)
{
  result = type metadata accessor for SystemMonitorConfig.MonitorType();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SystemMonitorConfig.DataType();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

Swift::Int sub_100031B90(int *a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for SystemMonitorConfig.MonitorType();
  sub_100033264(&qword_1000459B0, &type metadata accessor for SystemMonitorConfig.MonitorType, &protocol conformance descriptor for SystemMonitorConfig.MonitorType);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for SystemMonitorConfig.DataType();
  sub_100033264(&qword_1000459B8, &type metadata accessor for SystemMonitorConfig.DataType, &protocol conformance descriptor for SystemMonitorConfig.DataType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100031CCC(uint64_t a1, int *a2)
{
  type metadata accessor for SystemMonitorConfig.MonitorType();
  sub_100033264(&qword_1000459B0, &type metadata accessor for SystemMonitorConfig.MonitorType, &protocol conformance descriptor for SystemMonitorConfig.MonitorType);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for SystemMonitorConfig.DataType();
  sub_100033264(&qword_1000459B8, &type metadata accessor for SystemMonitorConfig.DataType, &protocol conformance descriptor for SystemMonitorConfig.DataType);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100031DF0(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for SystemMonitorConfig.MonitorType();
  sub_100033264(&qword_1000459B0, &type metadata accessor for SystemMonitorConfig.MonitorType, &protocol conformance descriptor for SystemMonitorConfig.MonitorType);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for SystemMonitorConfig.DataType();
  sub_100033264(&qword_1000459B8, &type metadata accessor for SystemMonitorConfig.DataType, &protocol conformance descriptor for SystemMonitorConfig.DataType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unsigned __int8 *sub_100031F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100032504(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100032504(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100032584(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100032584(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_1000131EC(v9, 0), v12 = sub_1000326DC(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000326DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000328FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000328FC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1000328FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_100032978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

void *sub_100032A70()
{
  v0 = type metadata accessor for SystemMonitorConfig();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FeatureInfo(0);
  v24 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Config.systemMonitorConfigs.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v25 = &_swiftEmptyArrayStorage;
    v8 = v6;
    sub_10002CE80(0, v7, 0);
    v9 = 0;
    v10 = v25;
    v21 = v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v20[1] = v1 + 16;
    v22 = (v1 + 8);
    while (v9 < *(v8 + 16))
    {
      v11 = v21 + *(v1 + 72) * v9;
      v12 = v1;
      v13 = *(v1 + 16);
      v14 = v23;
      v13(v23, v11, v0);
      sub_100031484(v14, v5);
      v15 = v14;
      v16 = v0;
      (*v22)(v15, v0);
      v25 = v10;
      v18 = v10[2];
      v17 = v10[3];
      if (v18 >= v17 >> 1)
      {
        sub_10002CE80((v17 > 1), v18 + 1, 1);
        v10 = v25;
      }

      ++v9;
      v10[2] = v18 + 1;
      sub_100010D10(v5, v10 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18, type metadata accessor for FeatureInfo);
      v0 = v16;
      v1 = v12;
      if (v7 == v9)
      {

        return v10;
      }
    }

    __break(1u);
    (*v22)(v1, v0);

    __break(1u);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100032D44(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SystemMonitorConfig.MonitorType();
  sub_100033264(&qword_100045BC0, &type metadata accessor for SystemMonitorConfig.MonitorType, &protocol conformance descriptor for SystemMonitorConfig.MonitorType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v29 == v27 && v30 == v28)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
LABEL_27:
      v25 = 0;
      return v25 & 1;
    }
  }

  v6 = type metadata accessor for FeatureInfo(0);
  v7 = v6[5];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v12 = v6[6];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v17 = v6[7];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  if ((v18 != *v20 || v19 != v20[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v21 = v6[8];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  type metadata accessor for SystemMonitorConfig.DataType();
  sub_100033264(&qword_100045BC8, &type metadata accessor for SystemMonitorConfig.DataType, &protocol conformance descriptor for SystemMonitorConfig.DataType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v29 == v27 && v30 == v28)
  {
    v25 = 1;
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v25 & 1;
}

uint64_t sub_100032FC0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SystemMonitorConfig.MonitorType();
  sub_100033264(&qword_100045BC0, &type metadata accessor for SystemMonitorConfig.MonitorType, &protocol conformance descriptor for SystemMonitorConfig.MonitorType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v30 == v28 && v31 == v29)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v6 = type metadata accessor for FeatureInfo(0);
  v7 = v6[5];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  v12 = v6[6];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  v17 = v6[7];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  if ((v18 != *v20 || v19 != v20[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  v21 = v6[8];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  type metadata accessor for SystemMonitorConfig.DataType();
  sub_100033264(&qword_100045BC8, &type metadata accessor for SystemMonitorConfig.DataType, &protocol conformance descriptor for SystemMonitorConfig.DataType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v30 == v28 && v31 == v29)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
LABEL_29:
      v26 = 0;
      return v26 & 1;
    }
  }

  type metadata accessor for FeatureState(0);
  v26 = static SimpleType.== infix(_:_:)();
  return v26 & 1;
}

uint64_t sub_100033264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_1000332AC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10003332C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1000333B8()
{
  result = sub_1000333D8();
  qword_100046140 = result;
  return result;
}

char *sub_1000333D8()
{
  sub_10001712C(&qword_100045DE8, &qword_100036658);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000368D0;
  v1 = type metadata accessor for CoreAnalyticsWorker();
  v2 = sub_100033E7C(&qword_100046070, &type metadata accessor for CoreAnalyticsWorker, &protocol conformance descriptor for CoreAnalyticsWorker);
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = type metadata accessor for RTCWorker();
  v4 = sub_100033E7C(&qword_100046078, &type metadata accessor for RTCWorker, &protocol conformance descriptor for RTCWorker);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = type metadata accessor for TailspinWorker();
  v6 = sub_100033E7C(&qword_100046080, &type metadata accessor for TailspinWorker, &protocol conformance descriptor for TailspinWorker);
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = type metadata accessor for SummaryDecoratorWorker();
  v8 = sub_100033E7C(&qword_100046088, &type metadata accessor for SummaryDecoratorWorker, &protocol conformance descriptor for SummaryDecoratorWorker);
  *(inited + 80) = v7;
  *(inited + 88) = v8;
  v9 = type metadata accessor for SessionSummaryWorker();
  v10 = sub_100033E7C(&qword_100046090, &type metadata accessor for SessionSummaryWorker, &protocol conformance descriptor for SessionSummaryWorker);
  *(inited + 96) = v9;
  *(inited + 104) = v10;
  v11 = type metadata accessor for DurationSummaryWorker();
  v12 = sub_100033E7C(&qword_100046098, &type metadata accessor for DurationSummaryWorker, &protocol conformance descriptor for DurationSummaryWorker);
  *(inited + 112) = v11;
  *(inited + 120) = v12;
  v13 = type metadata accessor for DriverSnapshotWorker();
  v14 = sub_100033E7C(&qword_1000460A0, &type metadata accessor for DriverSnapshotWorker, &protocol conformance descriptor for DriverSnapshotWorker);
  *(inited + 128) = v13;
  *(inited + 136) = v14;
  v15 = type metadata accessor for PowerLogWorker();
  v16 = sub_100033E7C(&qword_1000460A8, &type metadata accessor for PowerLogWorker, &protocol conformance descriptor for PowerLogWorker);
  *(inited + 144) = v15;
  *(inited + 152) = v16;
  v17 = type metadata accessor for AirPodWorker();
  v18 = sub_100033E7C(&qword_1000460B0, &type metadata accessor for AirPodWorker, &protocol conformance descriptor for AirPodWorker);
  *(inited + 160) = v17;
  *(inited + 168) = v18;
  v19 = type metadata accessor for AdaptiveVolumeWorker();
  v20 = sub_100033E7C(&qword_1000460B8, &type metadata accessor for AdaptiveVolumeWorker, &protocol conformance descriptor for AdaptiveVolumeWorker);
  v21 = sub_10002C1CC(1, 10, 1, inited);
  *(v21 + 2) = 10;
  *(v21 + 22) = v19;
  *(v21 + 23) = v20;
  v22 = *(v21 + 3);
  if (v22 <= 0x15)
  {
    v21 = sub_10002C1CC((v22 > 1), 11, 1, v21);
  }

  v23 = type metadata accessor for InferenceSummaryWorker();
  v24 = sub_100033E7C(&qword_1000460C0, &type metadata accessor for InferenceSummaryWorker, &protocol conformance descriptor for InferenceSummaryWorker);
  *(v21 + 2) = 11;
  *(v21 + 24) = v23;
  *(v21 + 25) = v24;
  if (&protocol conformance descriptor for JsonFileWorker && &type metadata accessor for JsonFileWorker && &type metadata for JsonFileWorker && &metaclass for JsonFileWorker && &nominal type descriptor for JsonFileWorker)
  {
    v57 = v21;
    if (*(v21 + 3) <= 0x17uLL)
    {
      v21 = sub_10002C1CC(1, 12, 1, v21);
      v57 = v21;
    }

    v25 = type metadata accessor for JsonFileWorker();
    v26 = sub_100033EC4(&qword_1000460E0, &type metadata accessor for JsonFileWorker, &protocol conformance descriptor for JsonFileWorker);
    sub_10002A544(0, 0, 1, v25, v26);
    v27 = [objc_opt_self() processInfo];
    v28 = [v27 environment];

    v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = static Constants.loadTestWorkerEnv.getter();
    if (*(v29 + 16))
    {
      sub_10000710C(v30, v31);
      v33 = v32;

      if (v33)
      {

        v34 = String._bridgeToObjectiveC()();

        v35 = [v34 BOOLValue];

        if (v35)
        {
          v37 = *(v21 + 2);
          v36 = *(v21 + 3);
          if (v37 >= v36 >> 1)
          {
            v21 = sub_10002C1CC((v36 > 1), v37 + 1, 1, v21);
          }

          v38 = type metadata accessor for TestWorker();
          v39 = sub_100033EC4(&qword_1000460E8, &type metadata accessor for TestWorker, &protocol conformance descriptor for TestWorker);
          *(v21 + 2) = v37 + 1;
          v40 = &v21[16 * v37];
          *(v40 + 4) = v38;
          *(v40 + 5) = v39;
        }

        goto LABEL_18;
      }
    }

    else
    {
    }
  }

LABEL_18:
  if (&protocol conformance descriptor for DiagnosticWorker && &protocol conformance descriptor for DiagnosticWorker && &type metadata accessor for DiagnosticWorker && &type metadata for DiagnosticWorker && &metaclass for DiagnosticWorker && &nominal type descriptor for DiagnosticWorker)
  {
    v42 = *(v21 + 2);
    v41 = *(v21 + 3);
    if (v42 >= v41 >> 1)
    {
      v21 = sub_10002C1CC((v41 > 1), v42 + 1, 1, v21);
    }

    v43 = type metadata accessor for DiagnosticWorker();
    v44 = sub_100033EC4(&qword_1000460D8, &type metadata accessor for DiagnosticWorker, &protocol conformance descriptor for DiagnosticWorker);
    *(v21 + 2) = v42 + 1;
    v45 = &v21[16 * v42];
    *(v45 + 4) = v43;
    *(v45 + 5) = v44;
  }

  if (&protocol conformance descriptor for AudioCaptureNotificationsWorker && &protocol conformance descriptor for AudioCaptureNotificationsWorker && &type metadata accessor for AudioCaptureNotificationsWorker && &type metadata for AudioCaptureNotificationsWorker && &metaclass for AudioCaptureNotificationsWorker && &nominal type descriptor for AudioCaptureNotificationsWorker)
  {
    v47 = *(v21 + 2);
    v46 = *(v21 + 3);
    if (v47 >= v46 >> 1)
    {
      v21 = sub_10002C1CC((v46 > 1), v47 + 1, 1, v21);
    }

    v48 = type metadata accessor for AudioCaptureNotificationsWorker();
    v49 = sub_100033EC4(&qword_1000460D0, &type metadata accessor for AudioCaptureNotificationsWorker, &protocol conformance descriptor for AudioCaptureNotificationsWorker);
    *(v21 + 2) = v47 + 1;
    v50 = &v21[16 * v47];
    *(v50 + 4) = v48;
    *(v50 + 5) = v49;
  }

  if (&protocol conformance descriptor for AudioCaptureLogsWorker && &protocol conformance descriptor for AudioCaptureLogsWorker && &type metadata accessor for AudioCaptureLogsWorker && &type metadata for AudioCaptureLogsWorker && &metaclass for AudioCaptureLogsWorker && &nominal type descriptor for AudioCaptureLogsWorker)
  {
    v52 = *(v21 + 2);
    v51 = *(v21 + 3);
    if (v52 >= v51 >> 1)
    {
      v21 = sub_10002C1CC((v51 > 1), v52 + 1, 1, v21);
    }

    v53 = type metadata accessor for AudioCaptureLogsWorker();
    v54 = sub_100033EC4(&qword_1000460C8, &type metadata accessor for AudioCaptureLogsWorker, &protocol conformance descriptor for AudioCaptureLogsWorker);
    *(v21 + 2) = v52 + 1;
    v55 = &v21[16 * v52];
    *(v55 + 4) = v53;
    *(v55 + 5) = v54;
  }

  return v21;
}

void sub_100033BB4()
{
  if (qword_1000453B0 != -1)
  {
    swift_once();
  }

  v0 = qword_100046140;
  v1 = *(qword_100046140 + 16);
  if (v1)
  {

    v2 = 32;
    do
    {
      v7 = *(v0 + v2);
      v5 = *(v0 + v2);
      if (swift_conformsToProtocol2())
      {
        v6 = v5 == 0;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10002CEE0(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v4 = *(&_swiftEmptyArrayStorage + 2);
        v3 = *(&_swiftEmptyArrayStorage + 3);
        if (v4 >= v3 >> 1)
        {
          sub_10002CEE0((v3 > 1), v4 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v4 + 1;
        *(&_swiftEmptyArrayStorage + v4 + 2) = v7;
      }

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  qword_100046148 = &_swiftEmptyArrayStorage;
}

void sub_100033D18()
{
  if (qword_1000453B0 != -1)
  {
    swift_once();
  }

  v0 = qword_100046140;
  v1 = *(qword_100046140 + 16);
  if (v1)
  {

    v2 = 32;
    do
    {
      v7 = *(v0 + v2);
      v5 = *(v0 + v2);
      if (swift_conformsToProtocol2())
      {
        v6 = v5 == 0;
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10002CEE0(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v4 = *(&_swiftEmptyArrayStorage + 2);
        v3 = *(&_swiftEmptyArrayStorage + 3);
        if (v4 >= v3 >> 1)
        {
          sub_10002CEE0((v3 > 1), v4 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v4 + 1;
        *(&_swiftEmptyArrayStorage + v4 + 2) = v7;
      }

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  qword_100046150 = &_swiftEmptyArrayStorage;
}

uint64_t sub_100033E7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100033EC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100034150(id a1)
{
  qword_100046BE0 = objc_opt_new();

  _objc_release_x1();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Message.toString()()
{
  v0 = Message.toString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}