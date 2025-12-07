Swift::Int sub_10010E29C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180260, &qword_100EBA598);
    v2 = static _SetStorage.allocate(capacity:)();
    v3 = v2 + 56;
    while (1)
    {
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      result = Hasher._finalize()();
      v5 = result & ~(-1 << *(v2 + 32));
      v6 = v5 >> 6;
      v7 = *(v3 + 8 * (v5 >> 6));
      v8 = 1 << v5;
      if ((v8 & v7) == 0)
      {
        *(v3 + 8 * v6) = v8 | v7;
        v9 = *(v2 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v11;
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_10010E380(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180598, &qword_100EBA7E0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = *(v6 + v4);
      Hasher.init(_seed:)();
      v8 = v7 - 3;
      if ((v7 - 3) >= 6)
      {
        Hasher._combine(_:)(6uLL);
        v8 = v7;
      }

      Hasher._combine(_:)(v8);
      result = Hasher._finalize()();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      v15 = *(v3 + 48);
      if (((1 << v11) & v13) != 0)
      {
        break;
      }

LABEL_30:
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

    v16 = ~v10;
    while (1)
    {
      v17 = *(v15 + v11);
      if (v17 > 5)
      {
        switch(v17)
        {
          case 6u:
            if (v7 == 6)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
          case 7u:
            if (v7 == 7)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
          case 8u:
            if (v7 == 8)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
        }
      }

      else
      {
        switch(v17)
        {
          case 3u:
            if (v7 == 3)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
          case 4u:
            if (v7 == 4)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
          case 5u:
            if (v7 == 5)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
        }
      }

      if ((v7 - 9) <= 0xF9u && v17 == v7)
      {
        goto LABEL_3;
      }

LABEL_9:
      v11 = (v11 + 1) & v16;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if ((v13 & (1 << v11)) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10010E5A8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10010FC20(&unk_101180440, &unk_100EC9180);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    v8 = sub_1007E9160(v6, v1);
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_10010FFCC(&unk_10118D420, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << v3[32];
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_10010FFCC(&qword_101180450, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      do
      {
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *&v7[8 * v13] = v15 | v14;
    *(*(v3 + 6) + 8 * v12) = v8;
    v17 = *(v3 + 2);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 2) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

Swift::Int sub_10010E83C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011801F0, &qword_100EBA538);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v21 = v1;
    v22 = a1 + 32;
    while (1)
    {
      v6 = *(v22 + v4++);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          if (*(*(v3 + 48) + v9))
          {
            if (*(*(v3 + 48) + v9) == 1)
            {
              v13 = 0x657469726F766166;
            }

            else
            {
              v13 = 0x64616F6C6E776F64;
            }

            v14 = 0xE900000000000073;
            if (!v6)
            {
LABEL_10:
              v15 = 0xE300000000000000;
              if (v13 != 7105633)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          else
          {
            v14 = 0xE300000000000000;
            v13 = 7105633;
            if (!v6)
            {
              goto LABEL_10;
            }
          }

          if (v6 == 1)
          {
            v16 = 0x657469726F766166;
          }

          else
          {
            v16 = 0x64616F6C6E776F64;
          }

          v15 = 0xE900000000000073;
          if (v13 != v16)
          {
            goto LABEL_19;
          }

LABEL_18:
          if (v14 == v15)
          {

            goto LABEL_4;
          }

LABEL_19:
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      *(v3 + 16) = v20;
LABEL_4:
      if (v4 == v21)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_10010EAAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_10010FC20(&qword_101180550, &qword_100EBA798);
  v3 = static _SetStorage.allocate(capacity:)();
  v4 = 0;
  v5 = v3 + 56;
  v26 = v1;
  while (2)
  {
    v6 = (a1 + 32 + 32 * v4);
    v27 = *v6;
    v28 = v6[1];
    Hasher.init(_seed:)();
    if (v28.i64[1])
    {
      if (v28.i64[1] == 1)
      {
        Hasher._combine(_:)(2uLL);
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v27.i64[1])
        {
          Hasher._combine(_:)(1u);

          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        String.hash(into:)();
      }
    }

    else
    {
      Hasher._combine(_:)(1uLL);
    }

    result = Hasher._finalize()();
    v8 = -1 << *(v3 + 32);
    v9 = result & ~v8;
    v10 = v9 >> 6;
    v11 = *(v5 + 8 * (v9 >> 6));
    v12 = 1 << v9;
    v13 = *(v3 + 48);
    if (((1 << v9) & v11) == 0)
    {
      v15 = v27;
      goto LABEL_33;
    }

    v14 = ~v8;
    v15 = v27;
    do
    {
      v16 = (v13 + 32 * v9);
      v17 = v16[1];
      v18 = v16[1].i64[1];
      if (v18)
      {
        if (v18 == 1)
        {
          if (v28.i64[1] == 1)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v28.i64[1] < 2uLL)
          {
            goto LABEL_16;
          }

          if (v16->i64[1])
          {
            if (!v27.i64[1])
            {
              goto LABEL_16;
            }

            v19 = vmovn_s64(vceqq_s64(*v16, v15));
            if ((v19.i32[0] & v19.i32[1] & 1) == 0)
            {
              v25 = v16[1];
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              v17 = v25;
              v15 = v27;
              if ((result & 1) == 0)
              {
                goto LABEL_16;
              }
            }
          }

          else if (v27.i64[1])
          {
            goto LABEL_16;
          }

          v20 = vmovn_s64(vceqq_s64(v17, v28));
          if (v20.i32[0] & v20.i32[1] & 1) != 0 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), v15 = v27, (result))
          {
            sub_100110A18(v27.i64[0], v27.i64[1], v28.i64[0], v28.u64[1]);
            goto LABEL_4;
          }
        }
      }

      else if (!v28.i64[1])
      {
        goto LABEL_4;
      }

LABEL_16:
      v9 = (v9 + 1) & v14;
      v10 = v9 >> 6;
      v11 = *(v5 + 8 * (v9 >> 6));
      v12 = 1 << v9;
    }

    while ((v11 & (1 << v9)) != 0);
    v13 = *(v3 + 48);
LABEL_33:
    *(v5 + 8 * v10) = v11 | v12;
    v21 = (v13 + 32 * v9);
    *v21 = v15;
    v21[1] = v28;
    v22 = *(v3 + 16);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      *(v3 + 16) = v24;
LABEL_4:
      if (++v4 == v26)
      {
        return v3;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

Swift::Int sub_10010ED84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011805D0, &qword_100EBA818);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      Hasher.init(_seed:)();
      if (v6)
      {
        v7 = 0x6F4E6E657473696CLL;
      }

      else
      {
        v7 = 0x487972617262696CLL;
      }

      if (v6)
      {
        v8 = 0xEF72656461654877;
      }

      else
      {
        v8 = 0xED00007265646165;
      }

      String.hash(into:)();

      result = Hasher._finalize()();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) != 0)
      {
        v23 = v6;
        v15 = ~v10;
        do
        {
          if (*(*(v3 + 48) + v11))
          {
            v16 = 0x6F4E6E657473696CLL;
          }

          else
          {
            v16 = 0x487972617262696CLL;
          }

          if (*(*(v3 + 48) + v11))
          {
            v17 = 0xEF72656461654877;
          }

          else
          {
            v17 = 0xED00007265646165;
          }

          if (v16 == v7 && v17 == v8)
          {

            goto LABEL_4;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_4;
          }

          v11 = (v11 + 1) & v15;
          v12 = v11 >> 6;
          v13 = *(v5 + 8 * (v11 >> 6));
          v14 = 1 << v11;
        }

        while ((v13 & (1 << v11)) != 0);
        LOBYTE(v6) = v23;
      }

      *(v5 + 8 * v12) = v13 | v14;
      *(*(v3 + 48) + v11) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_10010EFBC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10010FC20(&unk_101180280, &unk_100EC8BC0);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = sub_10004056C(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = v1 + 32;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v38)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v39;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v39;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_10010F2AC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10010FC20(&qword_101180240, &qword_100EBA578);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
LABEL_12:
    while (1)
    {
      v8 = sub_1007E97F0(v7, a1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      Hasher.init(_seed:)();
      v11 = sub_10047E418();
      Hasher._combine(_:)(v11);
      v12 = Hasher._finalize()();
      v13 = ~(-1 << v3[32]);
      for (i = v12 & v13; ; i = (i + 1) & v13)
      {
        v15 = *&v6[8 * (i >> 6)];
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        if (sub_10047E418() == *(v10 + 56))
        {
          swift_unknownObjectRelease();
          if (v7 == v5)
          {
            return;
          }

          goto LABEL_12;
        }
      }

      *&v6[8 * (i >> 6)] = (1 << i) | v15;
      *(*(v3 + 6) + 8 * i) = v10;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_30;
      }

      *(v3 + 2) = v17;
      if (v7 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v18 = 0;
    v28 = a1 + 32;
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v18 != v19)
    {
      v20 = *(v28 + 8 * v18);
      Hasher.init(_seed:)();
      v21 = sub_10047E418();
      Hasher._combine(_:)(v21);
      v22 = Hasher._finalize()();
      v23 = ~(-1 << v3[32]);
      for (j = v22 & v23; ; j = (j + 1) & v23)
      {
        v25 = *&v6[8 * (j >> 6)];
        if (((1 << j) & v25) == 0)
        {
          break;
        }

        if (sub_10047E418() == *(v20 + 56))
        {
          goto LABEL_21;
        }
      }

      *&v6[8 * (j >> 6)] = (1 << j) | v25;
      *(*(v3 + 6) + 8 * j) = v20;
      v26 = *(v3 + 2);
      v9 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v9)
      {
        goto LABEL_32;
      }

      *(v3 + 2) = v27;

LABEL_21:
      if (++v18 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_10010F538(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10010FC20(&unk_101180380, &unk_100EBA660);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = sub_1007E914C(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100009F78(0, &qword_101181F70, UITab_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = v1 + 32;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v38)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100009F78(0, &qword_101181F70, UITab_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v39;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v39;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

Swift::Int sub_10010F828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011802A0, &qword_100EBA5D0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v22 = a1 + 32;
    while (1)
    {
      v23 = v4;
      v6 = *(v22 + v4);
      Hasher.init(_seed:)();
      Library.Menu.Identifier.rawValue.getter(v6);
      String.hash(into:)();

      result = Hasher._finalize()();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xD000000000000029;
          v14 = "nt";
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v13 = 0xD000000000000025;
              v14 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v13 = 0xD000000000000023;
              v14 = "LibraryView.Playlists";
              break;
            case 3:
              v13 = 0xD000000000000022;
              v14 = "LibraryView.Artists";
              break;
            case 4:
              v13 = 0xD000000000000021;
              v14 = "LibraryView.Albums";
              break;
            case 5:
              v13 = 0xD000000000000026;
              v14 = "LibraryView.Songs";
              break;
            case 6:
              v13 = 0xD000000000000027;
              v14 = "LibraryView.MadeForYou";
              break;
            case 7:
              v13 = 0xD000000000000022;
              v14 = "LibraryView.MusicVideos";
              break;
            case 8:
              v13 = 0xD000000000000028;
              v14 = "LibraryView.Genres";
              break;
            case 9:
              v13 = 0xD000000000000025;
              v14 = "LibraryView.Compilations";
              break;
            case 0xA:
              v13 = 0xD000000000000021;
              v14 = "LibraryView.Composers";
              break;
            case 0xB:
              v13 = 0xD000000000000026;
              v14 = "LibraryView.Shows";
              break;
            case 0xC:
              v13 = 0xD000000000000027;
              v14 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          v15 = v14 | 0x8000000000000000;
          v16 = 0xD000000000000029;
          v17 = "nt";
          switch(v6)
          {
            case 1:
              v16 = 0xD000000000000025;
              v17 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v16 = 0xD000000000000023;
              v17 = "LibraryView.Playlists";
              break;
            case 3:
              v16 = 0xD000000000000022;
              v17 = "LibraryView.Artists";
              break;
            case 4:
              v16 = 0xD000000000000021;
              v17 = "LibraryView.Albums";
              break;
            case 5:
              v16 = 0xD000000000000026;
              v17 = "LibraryView.Songs";
              break;
            case 6:
              v16 = 0xD000000000000027;
              v17 = "LibraryView.MadeForYou";
              break;
            case 7:
              v16 = 0xD000000000000022;
              v17 = "LibraryView.MusicVideos";
              break;
            case 8:
              v16 = 0xD000000000000028;
              v17 = "LibraryView.Genres";
              break;
            case 9:
              v16 = 0xD000000000000025;
              v17 = "LibraryView.Compilations";
              break;
            case 10:
              v16 = 0xD000000000000021;
              v17 = "LibraryView.Composers";
              break;
            case 11:
              v16 = 0xD000000000000026;
              v17 = "LibraryView.Shows";
              break;
            case 12:
              v16 = 0xD000000000000027;
              v17 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          if (v13 == v16 && v15 == (v17 | 0x8000000000000000))
          {
            break;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
          if ((v11 & (1 << v9)) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
LABEL_36:
        *(v5 + 8 * v10) = v11 | v12;
        *(*(v3 + 48) + v9) = v6;
        v19 = *(v3 + 16);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v21;
      }

LABEL_4:
      v4 = v23 + 1;
      if (v23 + 1 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10010FC20(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_10010FC7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10010FC98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10010FCE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SmartTransitionAnimation.CircleDrawing(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_10010FDE0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for WidgetMusicItem.ArtworkColor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s5SpecsV22SpringTimingParametersVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void type metadata accessor for State(uint64_t a1)
{
  sub_100011958(a1, &qword_101180080, &unk_10109C938);
}

{
  sub_100011958(a1, &qword_1011B9AC0, &unk_1010F04C0);
}

__n128 sub_10010FE68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10010FE84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10010FED8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10010FFCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100110180()
{
  result = qword_1011800D0;
  if (!qword_1011800D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011800D0);
  }

  return result;
}

unint64_t sub_10011021C(uint64_t a1)
{
  result = sub_100110244();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100110244()
{
  result = qword_1011801B8;
  if (!qword_1011801B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011801B8);
  }

  return result;
}

Swift::Int sub_1001102AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10010FC20(a2, a3);
    v5 = static _SetStorage.allocate(capacity:)();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v12);
      result = Hasher._finalize()();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100110448()
{
  result = qword_10118CD60;
  if (!qword_10118CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CD60);
  }

  return result;
}

unint64_t sub_10011049C()
{
  result = qword_1011803A0;
  if (!qword_1011803A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011803A0);
  }

  return result;
}

Swift::Int sub_100110518(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10010FC20(a2, a3);
    v5 = static _SetStorage.allocate(capacity:)();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v12);
      result = Hasher._finalize()();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (v12 != *(v19 + v15))
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_10011064C(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v29 - v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10010FC20(&qword_101180400, &qword_100EBA6C8);
    v8 = static _SetStorage.allocate(capacity:)();
    v9 = 0;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v34 = v11;
    v35 = v8 + 56;
    v12 = *(v10 + 64);
    v31 = v7;
    v32 = a1 + ((v12 + 32) & ~v12);
    v13 = *(v10 + 56);
    v14 = (v10 - 8);
    v30 = (v10 + 16);
    while (1)
    {
      v33 = v9;
      v34(v36, v32 + v13 * v9, v2);
      sub_10010FFCC(&qword_101180408, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v8 + 32));
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = *(v35 + 8 * v18);
      v20 = 1 << (v15 & v16);
      if ((v20 & v19) != 0)
      {
        while (1)
        {
          v21 = v10;
          v34(v5, *(v8 + 48) + v17 * v13, v2);
          sub_10010FFCC(&qword_101180410, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
          v22 = dispatch thunk of static Equatable.== infix(_:_:)();
          v23 = *v14;
          (*v14)(v5, v2);
          if (v22)
          {
            break;
          }

          v17 = (v17 + 1) & v16;
          v18 = v17 >> 6;
          v19 = *(v35 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v10 = v21;
          if (((1 << v17) & v19) == 0)
          {
            goto LABEL_8;
          }
        }

        v23(v36, v2);
        v10 = v21;
      }

      else
      {
LABEL_8:
        v24 = v36;
        *(v35 + 8 * v18) = v20 | v19;
        result = (*v30)(*(v8 + 48) + v17 * v13, v24, v2);
        v26 = *(v8 + 16);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          __break(1u);
          return result;
        }

        *(v8 + 16) = v28;
      }

      v9 = v33 + 1;
      if (v33 + 1 == v31)
      {
        return v8;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10011096C()
{
  result = qword_1011803D8;
  if (!qword_1011803D8)
  {
    sub_1001109D0(&qword_101180370, &qword_100EBA5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011803D8);
  }

  return result;
}

uint64_t sub_1001109D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_100110A18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 2)
  {
  }
}

uint64_t sub_100110A60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 sub_100110AC8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 sub_100110C44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100110C58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100110C78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_100110D3C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100110D5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

unint64_t sub_100111A28()
{
  result = qword_101180830;
  if (!qword_101180830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101180830);
  }

  return result;
}

uint64_t sub_100111C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

NSString sub_100111D84()
{
  result = String._bridgeToObjectiveC()();
  qword_101218600 = result;
  return result;
}

id Window.__allocating_init(windowScene:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWindowScene:a1];

  return v3;
}

id Window.init(windowScene:)(void *a1)
{
  v2 = sub_10002ECEC(a1);

  return v2;
}

id CTRunRef.PartialRunView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

char *Window.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC5Music6Window_screenDimensionsDidChangeHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC5Music6Window_boundsSizeDidChangeHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC5Music6Window_overrideTraitCollection] = 0;
  v12 = [objc_opt_self() mainScreen];
  v13 = UIScreen.dimensions.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = &v5[OBJC_IVAR____TtC5Music6Window_lastSeenDimensions];
  *v20 = a3;
  v20[1] = a4;
  v20[2] = v13;
  *(v20 + 3) = v15;
  *(v20 + 4) = v17;
  *(v20 + 5) = v19;
  v32.receiver = v5;
  v32.super_class = type metadata accessor for Window();
  v21 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 screen];
  v23 = UIScreen.dimensions.getter();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = &v21[OBJC_IVAR____TtC5Music6Window_lastSeenDimensions];
  v30[2] = v23;
  *(v30 + 3) = v25;
  *(v30 + 4) = v27;
  *(v30 + 5) = v29;

  return v21;
}

id CTRunRef.PartialRunView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void Window.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC5Music6Window_screenDimensionsDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC5Music6Window_boundsSizeDidChangeHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Music6Window_overrideTraitCollection) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100112228(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1001122B0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id Window.rootElementScreen.getter()
{
  v1 = [v0 screen];

  return v1;
}

Swift::Void __swiftcall Window.sendEvent(_:)(UIEvent a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v4, "sendEvent:", a1.super.isa);
  v3 = [objc_opt_self() defaultCenter];
  if (qword_10117F190 != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:qword_101218600 object:v1];
}

Swift::Void __swiftcall Window._updateTraitsAndNotify(_:)(Swift::Bool a1)
{
  v3 = *&v1[OBJC_IVAR____TtC5Music6Window_overrideTraitCollection];
  *&v1[OBJC_IVAR____TtC5Music6Window_overrideTraitCollection] = 0;

  v4.receiver = v1;
  v4.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v4, "_updateWindowTraitsAndNotify:", a1);
}

Swift::Void __swiftcall Window.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = *&v1[OBJC_IVAR____TtC5Music6Window_overrideTraitCollection];
  *&v1[OBJC_IVAR____TtC5Music6Window_overrideTraitCollection] = 0;

  v4.receiver = v1;
  v4.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v4, "traitCollectionDidChange:", isa);
}

id Window.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Window();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100112718(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void))
{
  v6 = (v4 + *a3);
  swift_beginAccess();
  v7 = *v6;
  a4(*v6, v6[1]);
  return v7;
}

uint64_t sub_1001127A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = (v6 + *a5);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  return a6(v11, v12);
}

uint64_t getEnumTagSinglePayload for MusicWidgetUpdateReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicWidgetUpdateReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_1001129D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100112A1C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100112A70()
{
  v1 = *v0;
  v2 = 0xD000000000000014;
  v3 = 0xD000000000000016;
  if (v1 == 4)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100112B1C()
{
  result = qword_101180BC8;
  if (!qword_101180BC8)
  {
    sub_1001109D0(&qword_101180BD0, qword_100EBC600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101180BC8);
  }

  return result;
}

unint64_t sub_100112B84()
{
  result = qword_101180BD8;
  if (!qword_101180BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101180BD8);
  }

  return result;
}

char *sub_100112BFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = objc_allocWithZone(type metadata accessor for LibraryTableNavigationTitleView.FilterButton());
  *&v3[OBJC_IVAR____TtC5Music31LibraryTableNavigationTitleView_filterButton] = sub_100113B40(a1, a2);
  v12.receiver = v3;
  v12.super_class = type metadata accessor for LibraryTableNavigationTitleView();
  v7 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = *&v7[OBJC_IVAR____TtC5Music31LibraryTableNavigationTitleView_filterButton];
  v9 = v7;
  [v9 addSubview:v8];
  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBC6B0;
  *(v10 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v10 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v9;
}

uint64_t sub_100112EC0(void *a1, uint64_t a2, void *a3)
{
  v46 = a3;
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v43 - v6;
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  UIButton.configuration.getter();
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    swift_beginAccess();
    (*(v9 + 16))(v11, v12, v8);
    v14 = v11;
    if (v13(v7, 1, v8) != 1)
    {
      sub_1000095E8(v7, &unk_101183AB0, &qword_100EBF4D0);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v14 = v11;
  }

  if ([a1 isSelected])
  {
    v15 = "l.decrease.circle";
  }

  else
  {
    v15 = "v16@?0@UIButton8";
  }

  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() systemImageNamed:v16];

  UIButton.Configuration.image.setter();
  v18 = [a1 state];
  if (v18 > 0xD)
  {
LABEL_23:
    if (qword_10117F1B0 != -1)
    {
      swift_once();
    }

    v19 = qword_101180BF8;
LABEL_26:

    goto LABEL_27;
  }

  if (((1 << v18) & 0x30) != 0)
  {
    if (qword_10117F1B8 != -1)
    {
      swift_once();
    }

    v19 = qword_101180C00;
    goto LABEL_26;
  }

  if (((1 << v18) & 0x300) == 0)
  {
    if (((1 << v18) & 0x3000) != 0)
    {
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100EBC6D0;
      if (qword_10117F198 != -1)
      {
        swift_once();
      }

      v20 = qword_101180BE0;
      *(v19 + 32) = qword_101180BE0;
      v15 = qword_10117F1A0;
      v21 = v20;
      if (v15 != -1)
      {
        swift_once();
      }

      v22 = qword_101180BE8;
      *(v19 + 40) = qword_101180BE8;
      v23 = v22;
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBC6C0;
  if (qword_10117F1C0 != -1)
  {
    swift_once();
  }

  v24 = qword_101180C08;
  *(v19 + 32) = qword_101180C08;
  v25 = v24;
LABEL_27:
  v47 = v14;
  if (v19 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (v26)
    {
      goto LABEL_29;
    }

LABEL_37:

    goto LABEL_38;
  }

  v26 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_37;
  }

LABEL_29:
  v48 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v26 < 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  v43 = v5;
  v44 = v9;
  v45 = v8;
  v27 = 0;
  do
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v28 = sub_1007E90AC(v27, v19);
    }

    else
    {
      v28 = *(v19 + 8 * v27 + 32);
    }

    v29 = v28;
    ++v27;
    v30 = [a1 traitCollection];
    v31 = [v29 resolvedColorWithTraitCollection:v30];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v26 != v27);

  v9 = v44;
  v8 = v45;
  v5 = v43;
LABEL_38:
  sub_100009F78(0, &qword_101180C98, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v33 = [objc_opt_self() configurationWithPaletteColors:isa];

  v34 = [v46 configurationByApplyingConfiguration:v33];
  v26 = v47;
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v15 = &selRef__replacePlaceholderViewWithView_;
  if ([a1 isFocused])
  {
    if (qword_10117F1C0 == -1)
    {
LABEL_40:
      v35 = qword_101180C08;
      goto LABEL_42;
    }

LABEL_51:
    swift_once();
    goto LABEL_40;
  }

  v36 = [objc_opt_self() labelColor];
LABEL_42:
  UIButton.Configuration.baseForegroundColor.setter();
  if ([a1 *(v15 + 408)])
  {
    if (qword_10117F1C8 != -1)
    {
      swift_once();
    }

    v37 = qword_101180C10;
  }

  else
  {
    v38 = [objc_opt_self() clearColor];
  }

  v39 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v39(&v48, 0);
  (*(v9 + 16))(v5, v26, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  UIButton.configuration.setter();
  v40 = [a1 isHighlighted];
  v41 = 1.0;
  if (v40)
  {
    v41 = 0.5;
  }

  [a1 setAlpha:v41];
  return (*(v9 + 8))(v26, v8);
}

id sub_100113758(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_10011379C()
{
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6C0;
  if (qword_10117F198 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  v1 = qword_101180BE0;
  *(v0 + 32) = qword_101180BE0;
  qword_101180BF8 = v0;

  return v1;
}

id sub_100113844()
{
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6D0;
  if (qword_10117F1A0 != -1)
  {
    swift_once();
  }

  v1 = qword_101180BE8;
  *(v0 + 32) = qword_101180BE8;
  v2 = qword_10117F1A8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_101180BF0;
  *(v0 + 40) = qword_101180BF0;
  qword_101180C00 = v0;

  return v4;
}

id sub_10011397C(uint64_t a1, void *a2, void **a3, void **a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v8 = a4;
    v9 = a3;
    swift_once();
    a3 = v9;
    a4 = v8;
  }

  v6 = *a3;
  *a4 = *a3;

  return v6;
}

void sub_1001139DC()
{
  v0 = static Edge.Set.all.getter();
  v1.n128_u64[0] = 5.0;
  EdgeInsets.init(_:length:)(v0, v1);
  NSDirectionalEdgeInsets.init(_:)();
  qword_101180C18 = v2;
  unk_101180C20 = v3;
  qword_101180C28 = v4;
  unk_101180C30 = v5;
}

id sub_100113AA4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100113B40(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v31 = a1;
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v38 = &v29 - v3;
  type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin();
  v37 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v34 = *(v36 - 8);
  __chkstk_darwin();
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributeContainer();
  __chkstk_darwin();
  sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v7 = &v29 - v6;
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v9 = &v29 - v8;
  v10 = type metadata accessor for LibraryTableNavigationTitleView.FilterButton();
  v40.receiver = v2;
  v40.super_class = v10;
  v11 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  static UIView.Corner.value(_:continuous:)();
  v12 = type metadata accessor for UIView.Corner();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  UIView.corner.setter();
  [v11 setTintAdjustmentMode:1];
  v13 = type metadata accessor for UIButton.Configuration();
  v35 = swift_allocBox();
  v15 = v14;
  static UIButton.Configuration.plain()();
  v16 = sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  v17 = static UIFont.preferredFont(forTextStyle:weight:)();
  sub_10010FC20(&qword_10119FB30, &unk_100EBC740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v16;
  *(inited + 40) = v17;
  v19 = NSFontAttributeName;
  v30 = v17;
  sub_10010BA14(inited);
  swift_setDeallocating();
  sub_1000095E8(inited + 32, &qword_101180420, &unk_100EDEFD0);
  AttributeContainer.init(_:)();
  AttributedString.init(_:attributes:)();
  v20 = type metadata accessor for AttributedString();
  (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
  UIButton.Configuration.attributedTitle.setter();
  UIButton.Configuration.imagePadding.setter();
  if (qword_10117F1D0 != -1)
  {
    swift_once();
  }

  UIButton.Configuration.contentInsets.setter();
  (*(v34 + 104))(v33, enum case for UIButton.Configuration.CornerStyle.medium(_:), v36);
  UIButton.Configuration.cornerStyle.setter();
  static UIBackgroundConfiguration.clear()();
  UIButton.Configuration.background.setter();
  v21 = static UIFont.preferredFont(forTextStyle:weight:)();
  v22 = [objc_opt_self() configurationWithFont:v21 scale:2];

  v23 = *(v13 - 8);
  v24 = v38;
  (*(v23 + 16))(v38, v15, v13);
  (*(v23 + 56))(v24, 0, 1, v13);
  UIButton.configuration.setter();
  v25 = swift_allocObject();
  *(v25 + 16) = v35;
  *(v25 + 24) = v22;
  aBlock[4] = sub_1001141EC;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_10109D328;
  v26 = _Block_copy(aBlock);

  v27 = v22;

  [v11 setConfigurationUpdateHandler:v26];
  _Block_release(v26);

  [v11 setNeedsUpdateConfiguration];

  return v11;
}

id sub_1001141F4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_101180CA0, &qword_100EBC760);
  __chkstk_darwin();
  v8 = (&v23 - v7);
  v9 = _s12PinViewModelVMa(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100114550(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_1000095E8(v8, &qword_101180CA0, &qword_100EBC760);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_10011555C(v8, v12);
    v14 = [a1 positionUUID];
    if (!v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = String._bridgeToObjectiveC()();
    }

    v25 = String._bridgeToObjectiveC()();

    v24 = *v12;
    v23 = GridView.Base.ViewModel.ImageConfiguration.Shape.objcShape.getter();
    v15 = GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.objcPlaceholder.getter();
    sub_100114F8C();
    v26 = v3;
    if (v16)
    {
      v17 = String._bridgeToObjectiveC()();
    }

    else
    {
      v17 = 0;
    }

    v18 = [a1 isEnabled] ^ 1;
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_10109D378;
    v19 = _Block_copy(aBlock);

    BYTE1(v22) = v18;
    LOBYTE(v22) = 1;
    v20 = v25;
    v21 = [v26 initWithId:v14 title:v25 subtitle:0 artworkCatalog:v24 imageShape:v23 isTallArtwork:0 placeholder:v15 accessorySystemImage:v17 allowsTouches:v22 disabledAppearance:v19 action:?];
    _Block_release(v19);

    sub_1001155C0(v12);
    return v21;
  }
}

uint64_t sub_100114550@<X0>(uint64_t *a1@<X8>)
{
  v115 = a1;
  sub_10010FC20(&qword_101180CA8, &qword_100EBC768);
  __chkstk_darwin();
  v112 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v105 - v3;
  __chkstk_darwin();
  v111 = &v105 - v4;
  v5 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape();
  v113 = *(v5 - 8);
  v114 = v5;
  __chkstk_darwin();
  v110 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v105 - v7;
  __chkstk_darwin();
  v10 = &v105 - v9;
  __chkstk_darwin();
  v12 = &v105 - v11;
  v13 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder();
  v116 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = (&v105 - v16);
  __chkstk_darwin();
  v19 = (&v105 - v18);
  *&v20 = __chkstk_darwin().n128_u64[0];
  v22 = &v105 - v21;
  v23 = v1;
  v24 = [v1 album];
  if (v24)
  {
    v25 = v24;
    v112 = [v24 artworkCatalog];
    *v22 = 0;
    v22[8] = 0;
    v26 = v116;
    (*(v116 + 104))(v22, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.cpuiPlaceholder(_:), v13);
    static GridView.Base.ViewModel.ImageConfiguration.Shape.roundedSquare.getter();
    v27 = [v25 title];
    v28 = v13;
    if (v27)
    {
      v29 = v27;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
    }

    else
    {

      v30 = 0;
      v32 = 0;
    }

    v53 = v113;
    v52 = v114;
    v54 = v115;
    *v115 = v112;
    v55 = _s12PinViewModelVMa(0);
    (*(v26 + 32))(v54 + v55[5], v22, v28);
    (*(v53 + 32))(v54 + v55[6], v12, v52);
    v56 = (v54 + v55[7]);
    *v56 = v30;
    v56[1] = v32;
    return (*(*(v55 - 1) + 56))(v54, 0, 1, v55);
  }

  v106 = v15;
  v107 = v13;
  v108 = v10;
  v33 = v111;
  v34 = v112;
  v35 = v8;
  v36 = v110;
  v37 = [v23 artist];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 artworkCatalog];
    v40 = sub_10010FC20(&qword_101180CB0, &unk_100ECAA10);
    v41 = *(v40 + 48);
    v42 = v19 + *(v40 + 64);
    *v19 = 0xD000000000000010;
    v19[1] = 0x8000000100E3CE70;
    v43 = type metadata accessor for Image.Scale();
    (*(*(v43 - 8) + 56))(v33, 1, 1, v43);
    sub_10011561C(v33, v19 + v41);
    *v42 = 0;
    v42[8] = 1;
    v44 = v107;
    (*(v116 + 104))(v19, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.systemImage(_:), v107);
    v46 = v113;
    v45 = v114;
    (*(v113 + 104))(v108, enum case for GridView.Base.ViewModel.ImageConfiguration.Shape.circle(_:), v114);
    v47 = [v38 name];
    if (v47)
    {
      v48 = v47;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;
    }

    else
    {

      v49 = 0;
      v51 = 0;
    }

    v73 = v115;
    *v115 = v39;
    v74 = _s12PinViewModelVMa(0);
    (*(v116 + 32))(v73 + v74[5], v19, v44);
    (*(v46 + 32))(v73 + v74[6], v108, v45);
    v75 = (v73 + v74[7]);
    *v75 = v49;
    v75[1] = v51;
    v76 = *(*(v74 - 1) + 56);
    v77 = v73;
    return v76(v77, 0, 1, v74);
  }

  v58 = [v23 playlist];
  if (v58)
  {
    v59 = v58;
    v60 = MPModelPlaylist.preferredArtworkCatalog.getter();
    v61 = sub_10010FC20(&qword_101180CB0, &unk_100ECAA10);
    v62 = *(v61 + 48);
    v63 = v17;
    v64 = v17 + *(v61 + 64);
    *v17 = 0x6F6E2E636973756DLL;
    v17[1] = 0xEF7473696C2E6574;
    v65 = type metadata accessor for Image.Scale();
    v66 = v109;
    (*(*(v65 - 8) + 56))(v109, 1, 1, v65);
    sub_10011561C(v66, v17 + v62);
    *v64 = 0;
    v64[8] = 1;
    (*(v116 + 104))(v17, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.systemImage(_:), v107);
    v67 = v35;
    static GridView.Base.ViewModel.ImageConfiguration.Shape.roundedSquare.getter();
    v68 = [v59 name];
    if (v68)
    {
      v69 = v68;
      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;
    }

    else
    {

      v70 = 0;
      v72 = 0;
    }

    v95 = v113;
    v94 = v114;
    v96 = v115;
    *v115 = v60;
    v74 = _s12PinViewModelVMa(0);
    (*(v116 + 32))(v96 + v74[5], v63, v107);
    (*(v95 + 32))(v96 + v74[6], v67, v94);
    v97 = (v96 + v74[7]);
    *v97 = v70;
    v97[1] = v72;
    v76 = *(*(v74 - 1) + 56);
    v77 = v96;
    return v76(v77, 0, 1, v74);
  }

  v78 = [v23 song];
  if (v78)
  {
    v79 = v78;
    v80 = [v78 artworkCatalog];
    if ([v79 hasVideo])
    {
      v81 = 0xED000076742E6574;
    }

    else
    {
      v81 = 0xEA00000000006574;
    }

    v82 = sub_10010FC20(&qword_101180CB0, &unk_100ECAA10);
    v83 = *(v82 + 48);
    v84 = v106;
    v85 = v106 + *(v82 + 64);
    *v106 = 0x6F6E2E636973756DLL;
    v84[1] = v81;
    v86 = type metadata accessor for Image.Scale();
    (*(*(v86 - 8) + 56))(v34, 1, 1, v86);
    sub_10011561C(v34, v84 + v83);
    *v85 = 0;
    v85[8] = 1;
    v87 = v116;
    v88 = v107;
    (*(v116 + 104))(v84, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.systemImage(_:), v107);
    static GridView.Base.ViewModel.ImageConfiguration.Shape.roundedSquare.getter();
    v89 = [v79 title];
    if (v89)
    {
      v90 = v89;
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;
    }

    else
    {

      v91 = 0;
      v93 = 0;
    }

    v102 = v113;
    v103 = v115;
    *v115 = v80;
    v74 = _s12PinViewModelVMa(0);
    (*(v87 + 32))(v103 + v74[5], v84, v88);
    (*(v102 + 32))(v103 + v74[6], v36, v114);
    v104 = (v103 + v74[7]);
    *v104 = v91;
    v104[1] = v93;
    v76 = *(*(v74 - 1) + 56);
    v77 = v103;
    return v76(v77, 0, 1, v74);
  }

  v98 = _s12PinViewModelVMa(0);
  v99 = *(*(v98 - 8) + 56);
  v100 = v98;
  v101 = v115;

  return v99(v101, 1, 1, v100);
}

uint64_t sub_100114F8C()
{
  v1 = [v0 song];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 hasVideo];

    if (v3)
    {
      return 0x6C69662E79616C70;
    }
  }

  v5 = [v0 defaultAction];
  v6 = 0x6C69662E79616C70;
  if (v5 != 1)
  {
    v6 = 0;
  }

  if (v5 == 2)
  {
    return 0x656C6666756873;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100115100()
{
  v1 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin();
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = type metadata accessor for MusicPin.Action();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101197070, &unk_100ED1BC0);
  __chkstk_darwin();
  v11 = &v23 - v10;
  v12 = type metadata accessor for MusicPin();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v0;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    MusicPin.action.getter();
    v18 = (*(v7 + 88))(v9, v6);
    if (v18 == enum case for MusicPin.Action.navigate(_:))
    {
      if (qword_10117F6D8 != -1)
      {
        swift_once();
      }

      v17 = sub_100428914();
    }

    else
    {
      if (v18 != enum case for MusicPin.Action.play(_:) && v18 != enum case for MusicPin.Action.shuffle(_:))
      {
        (*(v7 + 8))(v9, v6);
        (*(v13 + 8))(v15, v12);
        goto LABEL_3;
      }

      sub_100537A68(v15, v5);
      v20 = v23;
      v19 = v24;
      (*(v23 + 104))(v3, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v24);
      v17 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
      v21 = *(v20 + 8);
      v21(v3, v19);
      v21(v5, v19);
    }

    (*(v13 + 8))(v15, v12);
    return v17 & 1;
  }

  sub_1000095E8(v11, &unk_101197070, &unk_100ED1BC0);
LABEL_3:
  v17 = 1;
  return v17 & 1;
}

uint64_t _s12PinViewModelVMa(uint64_t a1)
{
  result = qword_101180D10;
  if (!qword_101180D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011555C(uint64_t a1, uint64_t a2)
{
  v4 = _s12PinViewModelVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001155C0(uint64_t a1)
{
  v2 = _s12PinViewModelVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011561C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101180CA8, &qword_100EBC768);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001156B4(uint64_t a1)
{
  sub_100115768(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder();
    if (v2 <= 0x3F)
    {
      type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape();
      if (v3 <= 0x3F)
      {
        sub_10002F678();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100115768(uint64_t a1)
{
  if (!qword_101180D20)
  {
    sub_1001157C0();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101180D20);
    }
  }
}

unint64_t sub_1001157C0()
{
  result = qword_1011A1560;
  if (!qword_1011A1560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011A1560);
  }

  return result;
}

uint64_t sub_10011580C(uint64_t a1, void *a2)
{
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100EBC6C0;
  *(v3 + 32) = a2;
  v4 = a2;
  return v3;
}

Class sub_100115868(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100115F38();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v2();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

uint64_t sub_1001158F4()
{
  v0 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v12 - v3;
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = *(sub_10010FC20(&unk_10118A290, &unk_100EC73D0) + 48);
  v8 = type metadata accessor for SearchScope();
  *v6 = 0;
  *(v6 + 1) = 0;
  (*(*(v8 - 8) + 56))(&v6[v7], 1, 1, v8);
  swift_storeEnumTagMultiPayload();
  sub_100115B50(v6, v4);
  sub_100115B50(v4, v2);
  v9 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_100115BB4(v2, v10 + v9);
  sub_100706900(v4, sub_100115C18, v10);

  sub_100115C8C(v4);
  return sub_100115C8C(v6);
}

uint64_t sub_100115B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInterfaceContext.Activity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100115BB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInterfaceContext.Activity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100115C18(uint64_t a1)
{
  v3 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100705948(a1, v4, v5, v6);
}

uint64_t sub_100115C8C(uint64_t a1)
{
  v2 = type metadata accessor for AppInterfaceContext.Activity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100115CE8(uint64_t result, int a2, int a3)
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

void sub_100115D34(uint64_t isEscapingClosureAtFileLocation)
{
  swift_getObjectType();
  v7 = 0u;
  v8 = 0u;
  v2 = UIMenuBuilder.command(for:propertyList:)();
  sub_100011DF0(&v7);
  if (v2)
  {
    [v2 setAttributes:{4, v7, v8}];
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_100115F08;
    *(v4 + 24) = v3;
    v9 = sub_100115F10;
    v10 = v4;
    *&v7 = _NSConcreteStackBlock;
    *(&v7 + 1) = 1107296256;
    *&v8 = sub_100115868;
    *(&v8 + 1) = &unk_10109D4C8;
    v5 = _Block_copy(&v7);
    v6 = v2;

    [isEscapingClosureAtFileLocation replaceChildrenOfMenuForIdentifier:UIMenuFind fromChildrenBlock:v5];

    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  [isEscapingClosureAtFileLocation removeMenuForIdentifier:{UIMenuFind, v7, v8}];
}

unint64_t sub_100115F38()
{
  result = qword_10118CDE0;
  if (!qword_10118CDE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10118CDE0);
  }

  return result;
}

uint64_t sub_1001160B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v6 = a1 & 0xFFFFFFFFFFFFFEFELL;
  if ((a1 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFALL && v6 != 0x3FFFFFEFCLL && v6 != 0x3FFFFFEFELL)
  {
    return sub_10069B5AC(a1, a2, a3);
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

void (*sub_100116288(unint64_t a1, uint64_t a2, uint64_t a3))()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  result = 0;
  if ((a1 & 0xFFFFFFFFFFFFFEFCLL) != 0x3FFFFFEFCLL && (a1 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFALL)
  {
    if ((a1 >> 62) - 1 >= 2)
    {
      if (a1 >> 62)
      {
        result = 0;
        if (a1 == 0xC000000000000000 && !(a3 | a2))
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          return sub_10069D768;
        }
      }

      else
      {
        sub_10011896C(a1, a2, a3);
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        return a2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_1001164C8@<Q0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10010FC20(&qword_101180F08, &qword_100EBCA00) - 8;
  __chkstk_darwin();
  v8 = &v37 - v7;
  v9 = sub_10010FC20(&qword_101180F10, &qword_100EBCA08);
  __chkstk_darwin();
  v11 = &v37 - v10;
  v12 = sub_10010FC20(&qword_101180F18, &qword_100EBCA10);
  __chkstk_darwin();
  v14 = &v37 - v13;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v15 = sub_10010FC20(&qword_101180F20, &qword_100EBCA18);
  sub_100116950(v1, &v8[*(v15 + 44)]);
  KeyPath = swift_getKeyPath();
  v17 = &v8[*(v6 + 44)];
  *v17 = KeyPath;
  v17[8] = 1;
  v18 = static Edge.Set.vertical.getter();
  type metadata accessor for NoContentCell(0);
  sub_10056CABC(v5);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 != 1)
  {
    DynamicTypeSize.isAccessibilitySize.getter();
  }

  (*(v3 + 8))(v5, v2);
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_10003D17C(v8, v11, &qword_101180F08, &qword_100EBCA00);
  v27 = &v11[*(v9 + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v11, v14, &qword_101180F10, &qword_100EBCA08);
  v28 = &v14[*(v12 + 36)];
  v29 = v43;
  *(v28 + 4) = v42;
  *(v28 + 5) = v29;
  *(v28 + 6) = v44;
  v30 = v39;
  *v28 = v38;
  *(v28 + 1) = v30;
  v31 = v41;
  *(v28 + 2) = v40;
  *(v28 + 3) = v31;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v32 = v37;
  sub_10003D17C(v14, v37, &qword_101180F18, &qword_100EBCA10);
  v33 = v32 + *(sub_10010FC20(&qword_101180F28, &qword_100EBCA50) + 36);
  v34 = v50;
  *(v33 + 64) = v49;
  *(v33 + 80) = v34;
  *(v33 + 96) = v51;
  v35 = v46;
  *v33 = v45;
  *(v33 + 16) = v35;
  result = v48;
  *(v33 + 32) = v47;
  *(v33 + 48) = result;
  return result;
}

uint64_t sub_100116950@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v74 = type metadata accessor for BorderlessButtonStyle();
  v79 = *(v74 - 8);
  __chkstk_darwin();
  v78 = v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10010FC20(&qword_101180F30, &qword_100EBCA58);
  __chkstk_darwin();
  v77 = v69 - v4;
  v83 = sub_10010FC20(&qword_101180F38, &qword_100EBCA60);
  v81 = *(v83 - 8);
  __chkstk_darwin();
  v75 = v69 - v5;
  sub_10010FC20(&qword_101180F40, &qword_100EBCA68);
  __chkstk_darwin();
  v84 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v82 = v69 - v7;
  v8 = sub_10010FC20(&qword_101180F48, &unk_100EBCA70);
  __chkstk_darwin();
  v10 = v69 - v9;
  v11 = sub_10010FC20(&qword_101199ED0, &qword_100ED89A0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v69 - v13;
  sub_10010FC20(&qword_101180F50, &qword_100EBCA80);
  __chkstk_darwin();
  v80 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v69 - v16;
  v19 = *a1;
  v18 = a1[1];
  v20 = a1[2];
  v21 = sub_1001160B4(*a1, v18, v20);
  if (v22)
  {
    v86 = v21;
    v87 = v22;
    sub_100009838();
    v23 = Text.init<A>(_:)();
    v72 = v18;
    v73 = v19;
    v25 = v24;
    v27 = v26;
    LODWORD(v86) = static HierarchicalShapeStyle.secondary.getter();
    v28 = Text.foregroundStyle<A>(_:)();
    v69[1] = v8;
    v70 = v17;
    v29 = v28;
    v30 = v20;
    v32 = v31;
    v71 = v11;
    v34 = v33;
    v36 = v35;
    v37 = v27 & 1;
    v38 = v25;
    v18 = v72;
    v19 = v73;
    sub_10011895C(v23, v38, v37);

    *v10 = v29;
    *(v10 + 1) = v32;
    v20 = v30;
    v10[16] = v34 & 1;
    *(v10 + 3) = v36;
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101180F58, &qword_101199ED0, &qword_100ED89A0, &protocol conformance descriptor for ProgressView<A, B>);
    v39 = v70;
    _ConditionalContent<>.init(storage:)();
    v40 = v39;
  }

  else
  {
    ProgressView<>.init<>()();
    (*(v12 + 16))(v10, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101180F58, &qword_101199ED0, &qword_100ED89A0, &protocol conformance descriptor for ProgressView<A, B>);
    _ConditionalContent<>.init(storage:)();
    (*(v12 + 8))(v14, v11);
    v40 = v17;
  }

  v41 = sub_100116288(v19, v18, v20);
  if (v41)
  {
    v45 = v41;
    v46 = v42;
    v47 = v43;
    v48 = v44;
    v49 = swift_allocObject();
    v49[2] = v45;
    v49[3] = v46;
    v49[4] = v47;
    v49[5] = v48;
    __chkstk_darwin();
    v69[-4] = v45;
    v69[-3] = v46;
    v69[-2] = v47;
    v69[-1] = v48;

    v50 = v77;
    Button.init(action:label:)();
    v51 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v52 = v50 + *(v76 + 36);
    *v52 = v51;
    *(v52 + 8) = v53;
    *(v52 + 16) = v54;
    *(v52 + 24) = v55;
    *(v52 + 32) = v56;
    *(v52 + 40) = 0;
    v57 = v78;
    BorderlessButtonStyle.init()();
    sub_1001188A4();
    sub_100118FB0(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    v58 = v75;
    v59 = v74;
    View.buttonStyle<A>(_:)();

    (*(v79 + 8))(v57, v59);
    sub_1000095E8(v50, &qword_101180F30, &qword_100EBCA58);
    v60 = v81;
    v61 = v82;
    v62 = v83;
    (*(v81 + 32))(v82, v58, v83);
    v63 = 0;
  }

  else
  {
    v63 = 1;
    v61 = v82;
    v62 = v83;
    v60 = v81;
  }

  (*(v60 + 56))(v61, v63, 1, v62);
  v64 = v80;
  sub_1000089F8(v40, v80, &qword_101180F50, &qword_100EBCA80);
  v65 = v84;
  sub_10006EDC4(v61, v84);
  v66 = v85;
  sub_1000089F8(v64, v85, &qword_101180F50, &qword_100EBCA80);
  v67 = sub_10010FC20(&qword_101180F60, &qword_100EBCA88);
  sub_10006EDC4(v65, v66 + *(v67 + 48));
  sub_10006EE34(v61);
  sub_1000095E8(v40, &qword_101180F50, &qword_100EBCA80);
  sub_10006EE34(v65);
  return sub_1000095E8(v64, &qword_101180F50, &qword_100EBCA80);
}

uint64_t sub_100117138@<X0>(uint64_t a3@<X8>)
{
  sub_100009838();

  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

__n128 sub_1001171A8@<Q0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for BorderlessButtonStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101181070, &qword_100EBCBB0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v46 - v8;
  v46 = sub_10010FC20(&qword_101181078, &qword_100EBCBB8);
  __chkstk_darwin();
  v11 = &v46 - v10;
  v12 = *(v1 + 3);
  v51 = *v1;
  v50 = v12;
  v13 = swift_allocObject();
  v14 = v1[1];
  v13[1] = *v1;
  v13[2] = v14;
  v13[3] = v1[2];
  v48 = v1;
  sub_100118E9C(&v51, v49);
  sub_1000089F8(&v50, v49, &qword_101181080, &unk_100EBCBC0);

  sub_10010FC20(&qword_101181088, &unk_100EC5DE0);
  sub_100118EF8();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  sub_100020674(&qword_101181090, &qword_101181070, &qword_100EBCBB0, &protocol conformance descriptor for Button<A>);
  sub_100118FB0(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v15 = static Edge.Set.top.getter();
  if (qword_10117F1D8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v11[*(sub_10010FC20(&qword_101181098, &qword_100EBCBD0) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = static Edge.Set.bottom.getter();
  if (qword_10117F1E0 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v11[*(sub_10010FC20(&qword_1011810A0, &qword_100EBCBD8) + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = static Edge.Set.leading.getter();
  if (qword_10117F1E8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v36 = &v11[*(v46 + 36)];
  *v36 = v35;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v41 = v47;
  sub_10003D17C(v11, v47, &qword_101181078, &qword_100EBCBB8);
  v42 = v41 + *(sub_10010FC20(&qword_1011810A8, &qword_100EBCBE0) + 36);
  v43 = v49[5];
  *(v42 + 64) = v49[4];
  *(v42 + 80) = v43;
  *(v42 + 96) = v49[6];
  v44 = v49[1];
  *v42 = v49[0];
  *(v42 + 16) = v44;
  result = v49[3];
  *(v42 + 32) = v49[2];
  *(v42 + 48) = result;
  return result;
}

uint64_t sub_100117704@<X0>(uint64_t a2@<X8>)
{

  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  static Color.accentColor.getter();
  v8 = Text.foregroundColor(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_10011895C(v3, v5, v7 & 1);

  result = swift_getKeyPath();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

double sub_100117838()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_100117930()
{
  v1 = OBJC_IVAR____TtCV5Music21RelatedContentSpacing4Data__height;
  v2 = sub_10010FC20(&qword_101180F88, &qword_100EBCA98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100117A00(uint64_t a1)
{
  sub_100117A90();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100117A90()
{
  if (!qword_101180DB0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101180DB0);
    }
  }
}

uint64_t sub_100117AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100117B28(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_100117BBC(uint64_t a1)
{
  sub_100117C38(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100117C38(uint64_t a1)
{
  if (!qword_10119F120)
  {
    type metadata accessor for DynamicTypeSize();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10119F120);
    }
  }
}

uint64_t sub_100117C90(uint64_t a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 & 1 | (2 * ((*a1 >> 8) & 1)) | (4 * *(a1 + 8))) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100117CBC(void *a1)
{
  v1 = (*a1 >> 2) & 0xFFFFFF80 | (*a1 >> 1);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100117CD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = (*a1 >> 2) & 0xFFFFFF80 | (*a1 >> 1);
  if (v3 > 0x80000000)
  {
    v4 = -v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100117D38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (4 * (-3 - a2)) & 0x3FFFFFE00 | (2 * ((-3 - a2) & 0x7FLL));
    }
  }

  return result;
}

uint64_t *sub_100117DA0(uint64_t *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = 0;
    result[2] = 0;
    *result = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
  }

  return result;
}

uint64_t sub_100117E1C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RelatedContentSpacing.Data(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100117E5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10010FC20(&qword_101180EF0, &unk_100EBC9F0);
  sub_100118790();
  return View.accessibilityHidden(_:)();
}

double sub_100117F64@<D0>(uint64_t a1@<X8>)
{
  v72 = type metadata accessor for DynamicTypeSize();
  v75 = *(v72 - 8);
  __chkstk_darwin();
  v74 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v56 - v4;
  __chkstk_darwin();
  v70 = &v56 - v5;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x2063736944;
  v6._object = 0xE500000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v6);
  v73 = v1;
  v83 = *v1;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v83 = String.init(localized:table:bundle:locale:comment:)();
  v84 = v8;
  sub_100009838();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  if (qword_10117F680 != -1)
  {
    swift_once();
  }

  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;
  sub_10011895C(v9, v11, v13 & 1);

  static Font.Weight.semibold.getter();
  v69 = Text.fontWeight(_:)();
  v68 = v19;
  v21 = v20;
  v67 = v22;
  sub_10011895C(v14, v16, v18 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v60 = v21 & 1;
  v85 = v21 & 1;
  v66 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v65 = v23;
  v64 = v24;
  v63 = v25;
  v62 = v26;
  v86 = 0;
  v61 = static Edge.Set.top.getter();
  v59 = *(type metadata accessor for DiscSectionCell(0) + 24);
  v27 = v70;
  sub_10056CABC(v70);
  v58 = enum case for DynamicTypeSize.accessibility1(_:);
  v28 = v75;
  v57 = *(v75 + 104);
  v29 = v71;
  v30 = v72;
  v57(v71);
  sub_100118FB0(&qword_1011810B0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v31 = *(v28 + 8);
  v31(v29, v30);
  v31(v27, v30);
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v87 = 0;
  LODWORD(v75) = static Edge.Set.bottom.getter();
  v40 = v74;
  sub_10056CABC(v74);
  (v57)(v29, v58, v30);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v31(v29, v30);
  v31(v40, v30);
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  LOBYTE(v83) = 0;
  v49 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v50 = static HorizontalAlignment.listRowSeparatorTrailing.getter();
  v51 = v68;
  *a1 = v69;
  *(a1 + 8) = v51;
  *(a1 + 16) = v60;
  *(a1 + 24) = v67;
  v52 = v81;
  *(a1 + 96) = v80;
  *(a1 + 112) = v52;
  *(a1 + 128) = v82;
  v53 = v77;
  *(a1 + 32) = v76;
  *(a1 + 48) = v53;
  v54 = v79;
  *(a1 + 64) = v78;
  *(a1 + 80) = v54;
  *(a1 + 144) = v66;
  *&v54 = v64;
  *(a1 + 152) = v65;
  *(a1 + 160) = v54;
  result = v62;
  *(a1 + 168) = v63;
  *(a1 + 176) = result;
  *(a1 + 184) = 0;
  *(a1 + 192) = v61;
  *(a1 + 200) = v33;
  *(a1 + 208) = v35;
  *(a1 + 216) = v37;
  *(a1 + 224) = v39;
  *(a1 + 232) = 0;
  *(a1 + 240) = v75;
  *(a1 + 248) = v42;
  *(a1 + 256) = v44;
  *(a1 + 264) = v46;
  *(a1 + 272) = v48;
  *(a1 + 280) = 0;
  *(a1 + 288) = v49;
  *(a1 + 296) = sub_100119634;
  *(a1 + 304) = 0;
  *(a1 + 312) = v50;
  *(a1 + 320) = sub_100119634;
  *(a1 + 328) = 0;
  return result;
}

double sub_100118694@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100118714(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_100118790()
{
  result = qword_101180EF8;
  if (!qword_101180EF8)
  {
    sub_1001109D0(&qword_101180EF0, &unk_100EBC9F0);
    sub_10011881C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101180EF8);
  }

  return result;
}

unint64_t sub_10011881C()
{
  result = qword_10119EF10;
  if (!qword_10119EF10)
  {
    sub_1001109D0(&qword_101180F00, &qword_100ED9EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119EF10);
  }

  return result;
}

unint64_t sub_1001188A4()
{
  result = qword_101180F68;
  if (!qword_101180F68)
  {
    sub_1001109D0(&qword_101180F30, &qword_100EBCA58);
    sub_100020674(&qword_101180F70, &qword_101180F78, &qword_100EBCA90, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101180F68);
  }

  return result;
}

void sub_10011895C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_10011896C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 >> 62))
  {
  }

  return result;
}

void sub_1001189C8(uint64_t a1)
{
  sub_100117C38(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100118A4C(uint64_t a1, int a2)
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

uint64_t sub_100118A94(uint64_t result, int a2, int a3)
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

unint64_t sub_100118AF0()
{
  result = qword_101181028;
  if (!qword_101181028)
  {
    sub_1001109D0(&qword_101181030, &qword_100EBCAF8);
    sub_100118790();
    sub_100118FB0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181028);
  }

  return result;
}

unint64_t sub_100118BAC()
{
  result = qword_101181040;
  if (!qword_101181040)
  {
    sub_1001109D0(&qword_101180F28, &qword_100EBCA50);
    sub_100118C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181040);
  }

  return result;
}

unint64_t sub_100118C38()
{
  result = qword_101181048;
  if (!qword_101181048)
  {
    sub_1001109D0(&qword_101180F18, &qword_100EBCA10);
    sub_100118CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181048);
  }

  return result;
}

unint64_t sub_100118CC4()
{
  result = qword_101181050;
  if (!qword_101181050)
  {
    sub_1001109D0(&qword_101180F10, &qword_100EBCA08);
    sub_100118D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181050);
  }

  return result;
}

unint64_t sub_100118D50()
{
  result = qword_101181058;
  if (!qword_101181058)
  {
    sub_1001109D0(&qword_101180F08, &qword_100EBCA00);
    sub_100020674(&qword_101181060, &qword_101181068, &unk_100EBCB00, &protocol conformance descriptor for VStack<A>);
    sub_100020674(&unk_10118A590, &qword_10119A2F0, &unk_100EC4E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181058);
  }

  return result;
}

unint64_t sub_100118EF8()
{
  result = qword_10118A580;
  if (!qword_10118A580)
  {
    sub_1001109D0(&qword_101181088, &unk_100EC5DE0);
    sub_100020674(&unk_10118A590, &qword_10119A2F0, &unk_100EC4E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A580);
  }

  return result;
}

uint64_t sub_100118FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100118FF8()
{
  result = qword_1011810B8;
  if (!qword_1011810B8)
  {
    sub_1001109D0(&qword_1011810A8, &qword_100EBCBE0);
    sub_100119084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011810B8);
  }

  return result;
}

unint64_t sub_100119084()
{
  result = qword_1011810C0;
  if (!qword_1011810C0)
  {
    sub_1001109D0(&qword_101181078, &qword_100EBCBB8);
    sub_100119110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011810C0);
  }

  return result;
}

unint64_t sub_100119110()
{
  result = qword_1011810C8;
  if (!qword_1011810C8)
  {
    sub_1001109D0(&qword_1011810A0, &qword_100EBCBD8);
    sub_10011919C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011810C8);
  }

  return result;
}

unint64_t sub_10011919C()
{
  result = qword_1011810D0;
  if (!qword_1011810D0)
  {
    sub_1001109D0(&qword_101181098, &qword_100EBCBD0);
    sub_1001109D0(&qword_101181070, &qword_100EBCBB0);
    type metadata accessor for BorderlessButtonStyle();
    sub_100020674(&qword_101181090, &qword_101181070, &qword_100EBCBB0, &protocol conformance descriptor for Button<A>);
    sub_100118FB0(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011810D0);
  }

  return result;
}

unint64_t sub_1001192E8()
{
  result = qword_1011810D8;
  if (!qword_1011810D8)
  {
    sub_1001109D0(&qword_1011810E0, &qword_100EBCBE8);
    sub_100119374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011810D8);
  }

  return result;
}

unint64_t sub_100119374()
{
  result = qword_1011810E8;
  if (!qword_1011810E8)
  {
    sub_1001109D0(&qword_1011810F0, &qword_100EBCBF0);
    sub_100119400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011810E8);
  }

  return result;
}

unint64_t sub_100119400()
{
  result = qword_1011810F8;
  if (!qword_1011810F8)
  {
    sub_1001109D0(&qword_101181100, &qword_100EBCBF8);
    sub_10011948C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011810F8);
  }

  return result;
}

unint64_t sub_10011948C()
{
  result = qword_101181108;
  if (!qword_101181108)
  {
    sub_1001109D0(&qword_101181110, &qword_100EBCC00);
    sub_100119518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181108);
  }

  return result;
}

unint64_t sub_100119518()
{
  result = qword_101181118;
  if (!qword_101181118)
  {
    sub_1001109D0(&qword_101181120, &qword_100EBCC08);
    sub_1001195A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181118);
  }

  return result;
}

unint64_t sub_1001195A4()
{
  result = qword_101181128;
  if (!qword_101181128)
  {
    sub_1001109D0(&qword_101181130, &unk_100EBCC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181128);
  }

  return result;
}

char *sub_100119638()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  v3 = [v0 activeFormat];
  v4 = [v3 tier];

  result = 0;
  if (v4 == 3)
  {
    return result;
  }

  v6 = [v0 alternateFormats];
  sub_10011990C();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_4:
      v20 = _swiftEmptyArrayStorage;
      result = sub_10066C770(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        __break(1u);
        return result;
      }

      v19[1] = v2;
      v9 = 0;
      v10 = v20;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = sub_1007E90C0(v9, v7);
        }

        else
        {
          v11 = *(v7 + 8 * v9 + 32);
        }

        v12 = v11;
        v13 = [v11 tier];

        v20 = v10;
        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          sub_10066C770((v14 > 1), v15 + 1, 1);
          v10 = v20;
        }

        ++v9;
        v10[2] = v15 + 1;
        v10[v15 + 4] = v13;
      }

      while (v8 != v9);

      goto LABEL_15;
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_15:
  v16 = v10[2];
  v17 = 4;
  while (v16)
  {
    v18 = v10[v17++];
    --v16;
    if (v18 == 3)
    {

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      return String.init(localized:table:bundle:locale:comment:)();
    }
  }

  return 0;
}

unint64_t sub_10011990C()
{
  result = qword_101181138;
  if (!qword_101181138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101181138);
  }

  return result;
}

uint64_t sub_100119958@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v231 = a1;
  v197 = type metadata accessor for UploadedVideo();
  v200 = *(v197 - 8);
  __chkstk_darwin();
  v199 = v192 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_10010FC20(&qword_101181270, &qword_100EBCD58);
  __chkstk_darwin();
  v212 = v192 - v4;
  v236 = sub_10010FC20(&qword_101181278, &qword_100EBCD60);
  __chkstk_darwin();
  v214 = v192 - v5;
  v218 = type metadata accessor for MusicVideo();
  v217 = *(v218 - 8);
  __chkstk_darwin();
  v211 = v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for TVSeason();
  v206 = *(v207 - 8);
  __chkstk_darwin();
  v198 = v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for MusicMovie();
  v219 = *(v216 - 8);
  __chkstk_darwin();
  v215 = v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v202 = v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v201 = v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v196 = v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v208 = v192 - v12;
  v210 = type metadata accessor for Playlist();
  v209 = *(v210 - 8);
  __chkstk_darwin();
  v205 = v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_10010FC20(&qword_101181280, &qword_100EBCD68);
  __chkstk_darwin();
  v235 = v192 - v14;
  v224 = sub_10010FC20(&qword_101181288, &qword_100EBCD70);
  __chkstk_darwin();
  v225 = v192 - v15;
  v228 = sub_10010FC20(&qword_101181290, &qword_100EBCD78);
  __chkstk_darwin();
  v227 = v192 - v16;
  v232 = sub_10010FC20(&qword_101181298, &qword_100EBCD80);
  __chkstk_darwin();
  v229 = v192 - v17;
  v234 = sub_10010FC20(&qword_1011812A0, &qword_100EBCD88);
  __chkstk_darwin();
  v226 = v192 - v18;
  v223 = type metadata accessor for MusicFavoriteStatus();
  v220 = *(v223 - 8);
  __chkstk_darwin();
  v221 = v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v222 = v192 - v20;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v230 = v192 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v23 = v192 - v22;
  v24 = _s8GridCellVMa(0);
  __chkstk_darwin();
  v194 = v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v195 = v192 - v26;
  __chkstk_darwin();
  v203 = v192 - v27;
  __chkstk_darwin();
  v204 = v192 - v28;
  __chkstk_darwin();
  v30 = v192 - v29;
  v31 = type metadata accessor for Album();
  v32 = *(v31 - 8);
  __chkstk_darwin();
  v34 = v192 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for RecentlyAddedMusicItem();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin();
  v39 = v192 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v39, v2, v35, v37);
  v40 = (*(v36 + 88))(v39, v35);
  if (v40 != enum case for RecentlyAddedMusicItem.album(_:))
  {
    v69 = v23;
    v70 = v230;
    v193 = v24;
    if (v40 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
    {
      (*(v36 + 96))(v39, v35);
      v71 = v215;
      v72 = v39;
      v73 = v216;
      (*(v219 + 32))(v215, v72, v216);
      ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v73, &protocol witness table for MusicMovie, v69);
      v74 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
      (*(*(v74 - 8) + 56))(v70, 6, 11, v74);
      v75 = _s21RecentlyAddedGridCellVMa(0);
      ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, *(v2 + *(v75 + 20)), 0, 0x3FE5555555555555, 0, 2, &v237);
      v76 = Corner.medium.unsafeMutableAddressor();
      v77 = v30;
      ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v69, v70, 0, 1, &v237, *v76, v76[1], *(v76 + 16), v30);
      v78 = MusicMovie.title.getter();
      v80 = v79;
      v81 = MusicMovie.artistName.getter();
      v83 = v82;
      v84 = v193;
      v85 = v193[10];
      v86 = type metadata accessor for ContentRating();
      (*(*(v86 - 8) + 56))(v77 + v85, 1, 1, v86);
      v87 = (v77 + v84[5]);
      *v87 = 0;
      v87[1] = 0;
      v87[2] = 0;
      *(v77 + v84[6]) = 0x3FF0000000000000;
      v88 = (v77 + v84[7]);
      *v88 = v78;
      v88[1] = v80;
      v89 = (v77 + v84[8]);
      *v89 = v81;
      v89[1] = v83;
      *(v77 + v84[9]) = 0;
      *(v77 + v84[11]) = 0;
      v90 = v84[12];
      *(v77 + v90) = swift_getKeyPath();
      sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
      swift_storeEnumTagMultiPayload();
      sub_100123474(v77, v227, _s8GridCellVMa);
      swift_storeEnumTagMultiPayload();
      sub_10012327C(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);
      v91 = v229;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v91, v225, &qword_101181298, &qword_100EBCD80);
      swift_storeEnumTagMultiPayload();
      sub_100123098();
      v92 = v226;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v91, &qword_101181298, &qword_100EBCD80);
      sub_1000089F8(v92, v235, &qword_1011812A0, &qword_100EBCD88);
      swift_storeEnumTagMultiPayload();
      sub_10012314C(&qword_1011812B0, &qword_1011812A0, &qword_100EBCD88, sub_100123098);
      sub_1001232C4(&qword_1011812B8, &qword_101181278, &qword_100EBCD60, sub_100123098);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v92, &qword_1011812A0, &qword_100EBCD88);
      sub_1001234DC(v77, _s8GridCellVMa);
      v65 = *(v219 + 8);
      v66 = v71;
    }

    else
    {
      if (v40 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
      {
        (*(v36 + 96))(v39, v35);
        v94 = v211;
        v95 = v218;
        (*(v217 + 32))(v211, v39, v218);
        ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v95, &protocol witness table for MusicVideo, v69);
        v96 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
        (*(*(v96 - 8) + 56))(v70, 5, 11, v96);
        v97 = _s21RecentlyAddedGridCellVMa(0);
        ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*(v2 + *(v97 + 20)), 0, 0, 1, 0x3FFC71C71C71C71CLL, 0, 2, &v237);
        v98 = Corner.medium.unsafeMutableAddressor();
        v99 = v30;
        ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v69, v70, 0, 1, &v237, *v98, v98[1], *(v98 + 16), v30);
        v100 = v94;
        v230 = MusicVideo.title.getter();
        v226 = v101;
        v102 = MusicVideo.artistName.getter();
        v104 = v103;
        v105 = v222;
        MusicVideo.favoriteStatus.getter();
        v106 = v220;
        v107 = v221;
        v108 = v223;
        (*(v220 + 104))(v221, enum case for MusicFavoriteStatus.favorited(_:), v223);
        v109 = static MusicFavoriteStatus.== infix(_:_:)();
        v110 = *(v106 + 8);
        v110(v107, v108);
        v110(v105, v108);
        v111 = v193;
        v112 = v100;
        MusicVideo.contentRating.getter();
        v113 = (v99 + v111[5]);
        *v113 = 0;
        v113[1] = 0;
        v113[2] = 0;
        *(v99 + v111[6]) = 0x3FF0000000000000;
        v114 = (v99 + v111[7]);
        v115 = v226;
        *v114 = v230;
        v114[1] = v115;
        v116 = (v99 + v111[8]);
        *v116 = v102;
        v116[1] = v104;
        *(v99 + v111[9]) = v109 & 1;
        *(v99 + v111[11]) = 0;
        v117 = v111[12];
        *(v99 + v117) = swift_getKeyPath();
        sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
        swift_storeEnumTagMultiPayload();
        sub_100123474(v99, v227, _s8GridCellVMa);
        swift_storeEnumTagMultiPayload();
        sub_10012327C(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);
        v118 = v229;
        _ConditionalContent<>.init(storage:)();
        sub_1000089F8(v118, v212, &qword_101181298, &qword_100EBCD80);
        swift_storeEnumTagMultiPayload();
        sub_100123098();
        v119 = v214;
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v118, &qword_101181298, &qword_100EBCD80);
        sub_1000089F8(v119, v235, &qword_101181278, &qword_100EBCD60);
        swift_storeEnumTagMultiPayload();
        sub_10012314C(&qword_1011812B0, &qword_1011812A0, &qword_100EBCD88, sub_100123098);
        sub_1001232C4(&qword_1011812B8, &qword_101181278, &qword_100EBCD60, sub_100123098);
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v119, &qword_101181278, &qword_100EBCD60);
        sub_1001234DC(v99, _s8GridCellVMa);
        v65 = *(v217 + 8);
        v66 = v112;
        v67 = &v240;
        goto LABEL_3;
      }

      if (v40 == enum case for RecentlyAddedMusicItem.playlist(_:))
      {
        (*(v36 + 96))(v39, v35);
        v120 = v205;
        (*(v209 + 32))(v205, v39, v210);
        Playlist.artworkViewModel.getter(v69);
        Playlist.variant.getter();
        v121 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
        (*(*(v121 - 8) + 56))(v70, 0, 11, v121);
        v122 = _s21RecentlyAddedGridCellVMa(0);
        ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*(v2 + *(v122 + 20)), 0, 0, 1, 0x3FF0000000000000, 0, 2, &v237);
        v123 = Corner.medium.unsafeMutableAddressor();
        ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v69, v70, 0, 1, &v237, *v123, v123[1], *(v123 + 16), v208);
        v124 = Playlist.name.getter();
        v230 = v125;
        v126 = Playlist.curatorName.getter();
        if (v127)
        {
          v128 = v126;
          v129 = v127;
          v130 = v223;
          v131 = v220;
          v132 = v222;
          v133 = v221;
        }

        else
        {
          v219 = v124;
          v128 = sub_10034E2C4();
          v130 = v223;
          v131 = v220;
          v133 = v221;
          if (!v176)
          {
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v128 = String.init(localized:table:bundle:locale:comment:)();
          }

          v129 = v176;
          v132 = v222;
          v124 = v219;
        }

        Playlist.favoriteStatus.getter();
        (*(v131 + 104))(v133, enum case for MusicFavoriteStatus.favorited(_:), v130);
        v177 = v131;
        v178 = v120;
        v179 = static MusicFavoriteStatus.== infix(_:_:)();
        v180 = *(v177 + 8);
        v180(v133, v130);
        v180(v132, v130);
        v181 = v193;
        v182 = v203;
        Playlist.contentRating.getter();
        sub_10012340C(v208, v182, type metadata accessor for ArtworkImage.Info);
        v183 = (v182 + v181[5]);
        *v183 = 0;
        v183[1] = 0;
        v183[2] = 0;
        *(v182 + v181[6]) = 0x3FF0000000000000;
        v184 = (v182 + v181[7]);
        v185 = v230;
        *v184 = v124;
        v184[1] = v185;
        v186 = (v182 + v181[8]);
        *v186 = v128;
        v186[1] = v129;
        *(v182 + v181[9]) = v179 & 1;
        *(v182 + v181[11]) = 0;
        v187 = v181[12];
        *(v182 + v187) = swift_getKeyPath();
        sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
        swift_storeEnumTagMultiPayload();
        v188 = v204;
        sub_10012340C(v182, v204, _s8GridCellVMa);
        sub_100123474(v188, v227, _s8GridCellVMa);
        swift_storeEnumTagMultiPayload();
        sub_10012327C(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);
        v189 = v229;
        _ConditionalContent<>.init(storage:)();
        sub_1000089F8(v189, v225, &qword_101181298, &qword_100EBCD80);
        swift_storeEnumTagMultiPayload();
        sub_100123098();
        v190 = v226;
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v189, &qword_101181298, &qword_100EBCD80);
        sub_1000089F8(v190, v235, &qword_1011812A0, &qword_100EBCD88);
        swift_storeEnumTagMultiPayload();
        sub_10012314C(&qword_1011812B0, &qword_1011812A0, &qword_100EBCD88, sub_100123098);
        sub_1001232C4(&qword_1011812B8, &qword_101181278, &qword_100EBCD60, sub_100123098);
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v190, &qword_1011812A0, &qword_100EBCD88);
        sub_1001234DC(v188, _s8GridCellVMa);
        v65 = *(v209 + 8);
        v66 = v178;
        v67 = &v239;
        goto LABEL_3;
      }

      if (v40 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
      {
        (*(v36 + 96))(v39, v35);
        v134 = v198;
        v135 = v207;
        (*(v206 + 32))(v198, v39, v207);
        ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v135, &protocol witness table for TVSeason, v69);
        v136 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
        (*(*(v136 - 8) + 56))(v70, 6, 11, v136);
        v137 = _s21RecentlyAddedGridCellVMa(0);
        ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*(v2 + *(v137 + 20)), 0, 0, 1, 0x3FF0000000000000, 0, 2, &v237);
        v138 = Corner.medium.unsafeMutableAddressor();
        v139 = v30;
        ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v69, v70, 0, 1, &v237, *v138, v138[1], *(v138 + 16), v30);
        v140 = TVSeason.showName.getter();
        v142 = v141;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v143 = String.init(localized:table:bundle:locale:comment:)();
        v145 = v144;
        v146 = v193;
        v147 = v193[10];
        v148 = type metadata accessor for ContentRating();
        (*(*(v148 - 8) + 56))(v139 + v147, 1, 1, v148);
        v149 = (v139 + v146[5]);
        *v149 = 0;
        v149[1] = 0;
        v149[2] = 0;
        *(v139 + v146[6]) = 0x3FF0000000000000;
        v150 = (v139 + v146[7]);
        *v150 = v140;
        v150[1] = v142;
        v151 = (v139 + v146[8]);
        *v151 = v143;
        v151[1] = v145;
        *(v139 + v146[9]) = 0;
        *(v139 + v146[11]) = 0;
        v152 = v146[12];
        *(v139 + v152) = swift_getKeyPath();
        sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
        swift_storeEnumTagMultiPayload();
        sub_100123474(v139, v227, _s8GridCellVMa);
        swift_storeEnumTagMultiPayload();
        sub_10012327C(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);
        v153 = v229;
        _ConditionalContent<>.init(storage:)();
        sub_1000089F8(v153, v225, &qword_101181298, &qword_100EBCD80);
        swift_storeEnumTagMultiPayload();
        sub_100123098();
        v154 = v226;
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v153, &qword_101181298, &qword_100EBCD80);
        sub_1000089F8(v154, v235, &qword_1011812A0, &qword_100EBCD88);
        swift_storeEnumTagMultiPayload();
        sub_10012314C(&qword_1011812B0, &qword_1011812A0, &qword_100EBCD88, sub_100123098);
        sub_1001232C4(&qword_1011812B8, &qword_101181278, &qword_100EBCD60, sub_100123098);
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v154, &qword_1011812A0, &qword_100EBCD88);
        sub_1001234DC(v139, _s8GridCellVMa);
        v65 = *(v206 + 8);
        v66 = v134;
        v67 = &v238;
        goto LABEL_3;
      }

      if (v40 != enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
      {
        swift_storeEnumTagMultiPayload();
        sub_100123098();
        v191 = v214;
        _ConditionalContent<>.init(storage:)();
        sub_1000089F8(v191, v235, &qword_101181278, &qword_100EBCD60);
        swift_storeEnumTagMultiPayload();
        sub_10012314C(&qword_1011812B0, &qword_1011812A0, &qword_100EBCD88, sub_100123098);
        sub_1001232C4(&qword_1011812B8, &qword_101181278, &qword_100EBCD60, sub_100123098);
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v191, &qword_101181278, &qword_100EBCD60);
        return (*(v36 + 8))(v39, v35);
      }

      (*(v36 + 96))(v39, v35);
      v155 = v39;
      v73 = v197;
      (*(v200 + 32))(v199, v155, v197);
      ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v73, &protocol witness table for UploadedVideo, v69);
      v156 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
      (*(*(v156 - 8) + 56))(v70, 5, 11, v156);
      v157 = _s21RecentlyAddedGridCellVMa(0);
      ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*(v2 + *(v157 + 20)), 0, 0, 1, 0x3FFC71C71C71C71CLL, 0, 2, &v237);
      v158 = Corner.medium.unsafeMutableAddressor();
      v159 = v196;
      ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v69, v70, 0, 1, &v237, *v158, v158[1], *(v158 + 16), v196);
      v160 = UploadedVideo.title.getter();
      if (v161)
      {
        v162 = v160;
      }

      else
      {
        v162 = 0;
      }

      if (v161)
      {
        v163 = v161;
      }

      else
      {
        v163 = 0xE000000000000000;
      }

      v164 = UploadedVideo.artistName.getter();
      v166 = v165;
      v167 = v193;
      v168 = v194;
      UploadedVideo.contentRating.getter();
      sub_10012340C(v159, v168, type metadata accessor for ArtworkImage.Info);
      v169 = (v168 + v167[5]);
      *v169 = 0;
      v169[1] = 0;
      v169[2] = 0;
      *(v168 + v167[6]) = 0x3FF0000000000000;
      v170 = (v168 + v167[7]);
      *v170 = v162;
      v170[1] = v163;
      v171 = (v168 + v167[8]);
      *v171 = v164;
      v171[1] = v166;
      *(v168 + v167[9]) = 0;
      *(v168 + v167[11]) = 0;
      v172 = v167[12];
      *(v168 + v172) = swift_getKeyPath();
      sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
      swift_storeEnumTagMultiPayload();
      v173 = v195;
      sub_10012340C(v168, v195, _s8GridCellVMa);
      sub_100123474(v173, v227, _s8GridCellVMa);
      swift_storeEnumTagMultiPayload();
      sub_10012327C(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);
      v174 = v229;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v174, v212, &qword_101181298, &qword_100EBCD80);
      swift_storeEnumTagMultiPayload();
      sub_100123098();
      v175 = v214;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v174, &qword_101181298, &qword_100EBCD80);
      sub_1000089F8(v175, v235, &qword_101181278, &qword_100EBCD60);
      swift_storeEnumTagMultiPayload();
      sub_10012314C(&qword_1011812B0, &qword_1011812A0, &qword_100EBCD88, sub_100123098);
      sub_1001232C4(&qword_1011812B8, &qword_101181278, &qword_100EBCD60, sub_100123098);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v175, &qword_101181278, &qword_100EBCD60);
      sub_1001234DC(v173, _s8GridCellVMa);
      v65 = *(v200 + 8);
      v66 = v199;
    }

    v68 = v73;
    return v65(v66, v68);
  }

  (*(v36 + 96))(v39, v35);
  v193 = v32;
  v41 = *(v32 + 32);
  v192[1] = v31;
  v41(v34, v39, v31);
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v31, &protocol witness table for Album, v23);
  v42 = _s21RecentlyAddedGridCellVMa(0);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*(v2 + *(v42 + 20)), 0, 0, 1, 0x3FF0000000000000, 0, 2, &v237);
  v43 = Corner.medium.unsafeMutableAddressor();
  v44 = v23;
  v45 = *v43;
  v46 = v43[1];
  v47 = *(v43 + 16);
  v48 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  v49 = v230;
  (*(*(v48 - 8) + 56))(v230, 1, 11, v48);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v44, v49, 0, 1, &v237, v45, v46, v47, v30);
  v230 = sub_10034DFAC();
  v219 = v50;
  v218 = sub_10034E12C();
  v52 = v51;
  v53 = v222;
  Album.favoriteStatus.getter();
  v54 = v220;
  v55 = v221;
  v56 = v223;
  (*(v220 + 104))(v221, enum case for MusicFavoriteStatus.favorited(_:), v223);
  LOBYTE(v44) = static MusicFavoriteStatus.== infix(_:_:)();
  v57 = *(v54 + 8);
  v57(v55, v56);
  v57(v53, v56);
  Album.contentRating.getter();
  v58 = &v30[v24[5]];
  *v58 = 0;
  *(v58 + 1) = 0;
  *(v58 + 2) = 0;
  *&v30[v24[6]] = 0x3FF0000000000000;
  v59 = &v30[v24[7]];
  v60 = v219;
  *v59 = v230;
  *(v59 + 1) = v60;
  v61 = &v30[v24[8]];
  *v61 = v218;
  v61[1] = v52;
  v30[v24[9]] = v44 & 1;
  v30[v24[11]] = 0;
  v62 = v24[12];
  *&v30[v62] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  sub_100123474(v30, v227, _s8GridCellVMa);
  swift_storeEnumTagMultiPayload();
  sub_10012327C(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);
  v63 = v229;
  _ConditionalContent<>.init(storage:)();
  sub_1000089F8(v63, v225, &qword_101181298, &qword_100EBCD80);
  swift_storeEnumTagMultiPayload();
  sub_100123098();
  v64 = v226;
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v63, &qword_101181298, &qword_100EBCD80);
  sub_1000089F8(v64, v235, &qword_1011812A0, &qword_100EBCD88);
  swift_storeEnumTagMultiPayload();
  sub_10012314C(&qword_1011812B0, &qword_1011812A0, &qword_100EBCD88, sub_100123098);
  sub_1001232C4(&qword_1011812B8, &qword_101181278, &qword_100EBCD60, sub_100123098);
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v64, &qword_1011812A0, &qword_100EBCD88);
  sub_1001234DC(v30, _s8GridCellVMa);
  v65 = *(v193 + 1);
  v66 = v34;
  v67 = &v224;
LABEL_3:
  v68 = *(v67 - 32);
  return v65(v66, v68);
}

uint64_t sub_10011BE94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v295 = a1;
  v258 = type metadata accessor for UploadedVideo();
  v257 = *(v258 - 8);
  __chkstk_darwin();
  v256 = &v249 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_10010FC20(&qword_1011812C0, &qword_100EBCDD8);
  __chkstk_darwin();
  v271 = &v249 - v4;
  v294 = sub_10010FC20(&qword_1011812C8, &qword_100EBCDE0);
  __chkstk_darwin();
  v272 = &v249 - v5;
  v275 = type metadata accessor for MusicVideo();
  v274 = *(v275 - 8);
  __chkstk_darwin();
  v273 = (&v249 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v265 = type metadata accessor for TVSeason();
  v264 = *(v265 - 8);
  __chkstk_darwin();
  v263 = &v249 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = type metadata accessor for MusicMovie();
  v277 = *(v278 - 8);
  __chkstk_darwin();
  v276 = (&v249 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Locale();
  __chkstk_darwin();
  v260 = &v249 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v259 = &v249 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = type metadata accessor for Playlist();
  v268 = *(v269 - 8);
  __chkstk_darwin();
  v267 = &v249 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_10010FC20(&qword_1011812D0, &qword_100EBCDE8);
  __chkstk_darwin();
  v293 = &v249 - v12;
  v282 = sub_10010FC20(&qword_1011812D8, &qword_100EBCDF0);
  __chkstk_darwin();
  v283 = &v249 - v13;
  v285 = sub_10010FC20(&qword_1011812E0, &qword_100EBCDF8);
  __chkstk_darwin();
  v286 = &v249 - v14;
  v290 = sub_10010FC20(&qword_1011812E8, &qword_100EBCE00);
  __chkstk_darwin();
  v287 = &v249 - v15;
  v292 = sub_10010FC20(&qword_1011812F0, &qword_100EBCE08);
  __chkstk_darwin();
  v284 = &v249 - v16;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v297 = &v249 - v17;
  v280 = type metadata accessor for MusicFavoriteStatus();
  v281 = *(v280 - 1);
  __chkstk_darwin();
  v279 = (&v249 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v289 = &v249 - v19;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v288 = &v249 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v22 = &v249 - v21;
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v255 = &v249 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v266 = &v249 - v24;
  __chkstk_darwin();
  v296 = &v249 - v25;
  v26 = _s8ListCellVMa(0);
  __chkstk_darwin();
  v253 = &v249 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v254 = &v249 - v28;
  __chkstk_darwin();
  v261 = &v249 - v29;
  __chkstk_darwin();
  v262 = &v249 - v30;
  __chkstk_darwin();
  v32 = &v249 - v31;
  v33 = type metadata accessor for Album();
  v34 = *(v33 - 8);
  __chkstk_darwin();
  v36 = &v249 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for RecentlyAddedMusicItem();
  v38 = *(v37 - 8);
  v39 = __chkstk_darwin();
  v41 = &v249 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v38 + 16))(v41, v2, v37, v39);
  v42 = (*(v38 + 88))(v41, v37);
  if (v42 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v38 + 96))(v41, v37);
    v252 = v34;
    v43 = *(v34 + 32);
    v251 = v33;
    v43(v36, v41, v33);
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v33, &protocol witness table for Album, v22);
    v44 = _s21RecentlyAddedListCellVMa(0);
    ArtworkImage.Size.init(cgSize:)(*(v2 + *(v44 + 20)), *(v2 + *(v44 + 20) + 8), 0, &v301);
    v45 = Corner.small.unsafeMutableAddressor();
    v46 = *v45;
    v47 = v45[1];
    v48 = *(v45 + 16);
    v49 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
    v50 = v288;
    (*(*(v49 - 8) + 56))(v288, 1, 11, v49);
    ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v22, v50, 0, 1, &v301, v46, v47, v48, v296);
    v288 = sub_10034DFAC();
    v278 = v51;
    v277 = sub_10034E12C();
    v276 = v52;
    v53 = v289;
    v250 = v36;
    Album.favoriteStatus.getter();
    v54 = v281;
    v55 = v279;
    v56 = v280;
    (*(v281 + 104))(v279, enum case for MusicFavoriteStatus.favorited(_:), v280);
    LODWORD(v275) = static MusicFavoriteStatus.== infix(_:_:)();
    v57 = *(v54 + 8);
    v57(v55, v56);
    v57(v53, v56);
    Album.contentRating.getter();
    v300 = 0;
    v298 = 0u;
    v299 = 0u;
    sub_10010FC20(&unk_1011847C0, &unk_100EC0480);
    swift_allocObject();
    OptionalObservableObject.init(publisher:)(&v298);
    v300 = 0;
    v298 = 0u;
    v299 = 0u;
    sub_10010FC20(&unk_10118D300, &qword_100EBCE20);
    swift_allocObject();
    v289 = OptionalObservableObject.init(publisher:)(&v298);
    v58 = static HierarchicalShapeStyle.primary.getter();
    *(v32 + 3) = &type metadata for HierarchicalShapeStyle;
    *(v32 + 4) = &protocol witness table for HierarchicalShapeStyle;
    *v32 = v58;
    v32[40] = 0;
    v59 = &v32[v26[6]];
    v61 = v26[9];
    v60 = v26[10];
    v62 = type metadata accessor for ContentRating();
    (*(*(v62 - 8) + 56))(&v32[v60], 1, 1, v62);
    v281 = &v32[v26[11]];
    v63 = v26[14];
    *&v32[v63] = swift_getKeyPath();
    sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
    swift_storeEnumTagMultiPayload();
    v64 = v296;
    sub_100123474(v296, &v32[v26[5]], type metadata accessor for ArtworkImage.Info);
    *(v59 + 1) = 0;
    *(v59 + 2) = 0;
    *v59 = 0;
    v65 = &v32[v26[7]];
    v66 = v278;
    *v65 = v288;
    *(v65 + 1) = v66;
    v67 = &v32[v26[8]];
    v68 = v276;
    *v67 = v277;
    v67[1] = v68;
    v32[v61] = v275 & 1;
    v69 = v297;
    sub_100123348(v297, &v32[v60]);
    v70 = &v32[v26[12]];
    sub_1001233B8(&unk_1011847D0, &unk_1011847C0, &unk_100EC0480);

    *v70 = ObservedObject.init(wrappedValue:)();
    v70[1] = v71;
    v72 = &v32[v26[13]];
    sub_1001233B8(&qword_10118D310, &unk_10118D300, &qword_100EBCE20);
    v73 = ObservedObject.init(wrappedValue:)();
    v75 = v74;

    sub_1000095E8(v69, &unk_10118D2F0, &unk_100EBCE10);
    sub_1001234DC(v64, type metadata accessor for ArtworkImage.Info);
    *v72 = v73;
    v72[1] = v75;
    v76 = v281;
    *v281 = 0;
    *(v76 + 8) = 0;
    sub_100123474(v32, v286, _s8ListCellVMa);
    swift_storeEnumTagMultiPayload();
    sub_10012327C(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
    v77 = v287;
    _ConditionalContent<>.init(storage:)();
    sub_1000089F8(v77, v283, &qword_1011812E8, &qword_100EBCE00);
    swift_storeEnumTagMultiPayload();
    sub_1001231C8();
    v78 = v284;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v77, &qword_1011812E8, &qword_100EBCE00);
    sub_1000089F8(v78, v293, &qword_1011812F0, &qword_100EBCE08);
    swift_storeEnumTagMultiPayload();
    sub_10012314C(&qword_101181300, &qword_1011812F0, &qword_100EBCE08, sub_1001231C8);
    sub_1001232C4(&qword_101181308, &qword_1011812C8, &qword_100EBCDE0, sub_1001231C8);
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v78, &qword_1011812F0, &qword_100EBCE08);
    sub_1001234DC(v32, _s8ListCellVMa);
    return (*(v252 + 8))(v250, v251);
  }

  else
  {
    v80 = v289;
    v81 = v288;
    v252 = v2;
    v82 = v26;
    if (v42 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
    {
      (*(v38 + 96))(v41, v37);
      v83 = v278;
      (*(v277 + 32))();
      ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v83, &protocol witness table for MusicMovie, v22);
      v84 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
      (*(*(v84 - 8) + 56))(v81, 6, 11, v84);
      v85 = _s21RecentlyAddedListCellVMa(0);
      ArtworkImage.Size.init(cgSize:)(*(v252 + *(v85 + 20)), *(v252 + *(v85 + 20) + 8), 0, &v301);
      v86 = Corner.small.unsafeMutableAddressor();
      ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v22, v81, 0, 1, &v301, *v86, v86[1], *(v86 + 16), v296);
      v289 = MusicMovie.title.getter();
      v288 = v87;
      v281 = MusicMovie.artistName.getter();
      v280 = v88;
      v89 = type metadata accessor for ContentRating();
      v90 = *(*(v89 - 8) + 56);
      v90(v297, 1, 1, v89);
      v300 = 0;
      v298 = 0u;
      v299 = 0u;
      sub_10010FC20(&unk_1011847C0, &unk_100EC0480);
      swift_allocObject();
      v279 = OptionalObservableObject.init(publisher:)(&v298);
      v300 = 0;
      v298 = 0u;
      v299 = 0u;
      sub_10010FC20(&unk_10118D300, &qword_100EBCE20);
      swift_allocObject();
      v274 = OptionalObservableObject.init(publisher:)(&v298);
      v91 = static HierarchicalShapeStyle.primary.getter();
      *(v32 + 3) = &type metadata for HierarchicalShapeStyle;
      *(v32 + 4) = &protocol witness table for HierarchicalShapeStyle;
      *v32 = v91;
      v32[40] = 0;
      v92 = &v32[v26[6]];
      v93 = v82[9];
      v94 = v82[10];
      v90(&v32[v94], 1, 1, v89);
      v275 = &v32[v82[11]];
      v95 = v82[14];
      *&v32[v95] = swift_getKeyPath();
      sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
      swift_storeEnumTagMultiPayload();
      v96 = v82[5];
      v273 = type metadata accessor for ArtworkImage.Info;
      v97 = v296;
      sub_100123474(v296, &v32[v96], type metadata accessor for ArtworkImage.Info);
      *(v92 + 1) = 0;
      *(v92 + 2) = 0;
      *v92 = 0;
      v98 = &v32[v82[7]];
      v99 = v288;
      *v98 = v289;
      v98[1] = v99;
      v100 = &v32[v82[8]];
      v101 = v280;
      *v100 = v281;
      v100[1] = v101;
      v32[v93] = 0;
      v102 = v297;
      sub_100123348(v297, &v32[v94]);
      v103 = &v32[v82[12]];
      sub_1001233B8(&unk_1011847D0, &unk_1011847C0, &unk_100EC0480);

      *v103 = ObservedObject.init(wrappedValue:)();
      v103[1] = v104;
      v105 = &v32[v82[13]];
      sub_1001233B8(&qword_10118D310, &unk_10118D300, &qword_100EBCE20);
      v106 = ObservedObject.init(wrappedValue:)();
      v108 = v107;

      sub_1000095E8(v102, &unk_10118D2F0, &unk_100EBCE10);
      sub_1001234DC(v97, v273);
      *v105 = v106;
      v105[1] = v108;
      v109 = v275;
      *v275 = 0;
      *(v109 + 8) = 0;
      sub_100123474(v32, v286, _s8ListCellVMa);
      swift_storeEnumTagMultiPayload();
      sub_10012327C(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
      v110 = v287;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v110, v283, &qword_1011812E8, &qword_100EBCE00);
      swift_storeEnumTagMultiPayload();
      sub_1001231C8();
      v111 = v284;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v110, &qword_1011812E8, &qword_100EBCE00);
      sub_1000089F8(v111, v293, &qword_1011812F0, &qword_100EBCE08);
      swift_storeEnumTagMultiPayload();
      sub_10012314C(&qword_101181300, &qword_1011812F0, &qword_100EBCE08, sub_1001231C8);
      sub_1001232C4(&qword_101181308, &qword_1011812C8, &qword_100EBCDE0, sub_1001231C8);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v111, &qword_1011812F0, &qword_100EBCE08);
      sub_1001234DC(v32, _s8ListCellVMa);
      return (*(v277 + 8))(v276, v278);
    }

    else if (v42 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
    {
      (*(v38 + 96))(v41, v37);
      v112 = v275;
      (v274[4])();
      ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v112, &protocol witness table for MusicVideo, v22);
      v113 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
      (*(*(v113 - 8) + 56))(v81, 5, 11, v113);
      v114 = _s21RecentlyAddedListCellVMa(0);
      ArtworkImage.Size.init(cgSize:)(*(v252 + *(v114 + 20)), *(v252 + *(v114 + 20) + 8), 0, &v301);
      v115 = Corner.small.unsafeMutableAddressor();
      v116 = v296;
      ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v22, v81, 0, 1, &v301, *v115, v115[1], *(v115 + 16), v296);
      v288 = MusicVideo.title.getter();
      v284 = v117;
      v283 = MusicVideo.artistName.getter();
      v282 = v118;
      v119 = v80;
      MusicVideo.favoriteStatus.getter();
      v120 = v281;
      v121 = v279;
      v122 = v280;
      (*(v281 + 104))(v279, enum case for MusicFavoriteStatus.favorited(_:), v280);
      LODWORD(v278) = static MusicFavoriteStatus.== infix(_:_:)();
      v123 = *(v120 + 8);
      v123(v121, v122);
      v123(v119, v122);
      v124 = v297;
      MusicVideo.contentRating.getter();
      v300 = 0;
      v298 = 0u;
      v299 = 0u;
      sub_10010FC20(&unk_1011847C0, &unk_100EC0480);
      swift_allocObject();
      v289 = OptionalObservableObject.init(publisher:)(&v298);
      v300 = 0;
      v298 = 0u;
      v299 = 0u;
      sub_10010FC20(&unk_10118D300, &qword_100EBCE20);
      swift_allocObject();
      v281 = OptionalObservableObject.init(publisher:)(&v298);
      v125 = static HierarchicalShapeStyle.primary.getter();
      v126 = v32;
      *(v32 + 3) = &type metadata for HierarchicalShapeStyle;
      *(v32 + 4) = &protocol witness table for HierarchicalShapeStyle;
      *v32 = v125;
      v32[40] = 0;
      v127 = &v32[v82[6]];
      v129 = v82[9];
      v128 = v82[10];
      v130 = type metadata accessor for ContentRating();
      (*(*(v130 - 8) + 56))(v126 + v128, 1, 1, v130);
      v280 = (v126 + v82[11]);
      v131 = v82[14];
      *(v126 + v131) = swift_getKeyPath();
      sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
      swift_storeEnumTagMultiPayload();
      v132 = v82[5];
      v279 = type metadata accessor for ArtworkImage.Info;
      sub_100123474(v116, v126 + v132, type metadata accessor for ArtworkImage.Info);
      *(v127 + 1) = 0;
      *(v127 + 2) = 0;
      *v127 = 0;
      v133 = (v126 + v82[7]);
      v134 = v284;
      *v133 = v288;
      v133[1] = v134;
      v135 = (v126 + v82[8]);
      v136 = v282;
      *v135 = v283;
      v135[1] = v136;
      *(v126 + v129) = v278 & 1;
      sub_100123348(v124, v126 + v128);
      v137 = (v126 + v82[12]);
      sub_1001233B8(&unk_1011847D0, &unk_1011847C0, &unk_100EC0480);

      *v137 = ObservedObject.init(wrappedValue:)();
      v137[1] = v138;
      v139 = (v126 + v82[13]);
      sub_1001233B8(&qword_10118D310, &unk_10118D300, &qword_100EBCE20);
      v140 = ObservedObject.init(wrappedValue:)();
      v142 = v141;

      sub_1000095E8(v124, &unk_10118D2F0, &unk_100EBCE10);
      sub_1001234DC(v116, v279);
      *v139 = v140;
      v139[1] = v142;
      v143 = v280;
      *v280 = 0;
      *(v143 + 1) = 0;
      sub_100123474(v126, v286, _s8ListCellVMa);
      swift_storeEnumTagMultiPayload();
      sub_10012327C(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
      v144 = v287;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v144, v271, &qword_1011812E8, &qword_100EBCE00);
      swift_storeEnumTagMultiPayload();
      sub_1001231C8();
      v145 = v272;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v144, &qword_1011812E8, &qword_100EBCE00);
      sub_1000089F8(v145, v293, &qword_1011812C8, &qword_100EBCDE0);
      swift_storeEnumTagMultiPayload();
      sub_10012314C(&qword_101181300, &qword_1011812F0, &qword_100EBCE08, sub_1001231C8);
      sub_1001232C4(&qword_101181308, &qword_1011812C8, &qword_100EBCDE0, sub_1001231C8);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v145, &qword_1011812C8, &qword_100EBCDE0);
      sub_1001234DC(v126, _s8ListCellVMa);
      return (v274[1])(v273, v275);
    }

    else if (v42 == enum case for RecentlyAddedMusicItem.playlist(_:))
    {
      (*(v38 + 96))(v41, v37);
      (*(v268 + 32))(v267, v41, v269);
      Playlist.artworkViewModel.getter(v22);
      Playlist.variant.getter();
      v146 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
      (*(*(v146 - 8) + 56))(v81, 0, 11, v146);
      v147 = _s21RecentlyAddedListCellVMa(0);
      ArtworkImage.Size.init(cgSize:)(*(v252 + *(v147 + 20)), *(v252 + *(v147 + 20) + 8), 0, &v301);
      v148 = Corner.small.unsafeMutableAddressor();
      ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v22, v81, 0, 1, &v301, *v148, v148[1], *(v148 + 16), v266);
      v296 = Playlist.name.getter();
      v288 = v149;
      v150 = Playlist.curatorName.getter();
      if (v151)
      {
        v277 = v151;
        v278 = v150;
        v152 = v280;
        v153 = v80;
        v154 = v281;
        v155 = v279;
      }

      else
      {
        v219 = sub_10034E2C4();
        v152 = v280;
        v153 = v80;
        v155 = v279;
        if (v220)
        {
          v277 = v220;
          v278 = v219;
        }

        else
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v278 = String.init(localized:table:bundle:locale:comment:)();
          v277 = v222;
        }

        v154 = v281;
      }

      Playlist.favoriteStatus.getter();
      (*(v154 + 104))(v155, enum case for MusicFavoriteStatus.favorited(_:), v152);
      LODWORD(v289) = static MusicFavoriteStatus.== infix(_:_:)();
      v223 = *(v154 + 8);
      v223(v155, v152);
      v223(v153, v152);
      v224 = type metadata accessor for ContentRating();
      v225 = *(*(v224 - 8) + 56);
      v225(v297, 1, 1, v224);
      v300 = 0;
      v298 = 0u;
      v299 = 0u;
      sub_10010FC20(&unk_1011847C0, &unk_100EC0480);
      swift_allocObject();
      v281 = OptionalObservableObject.init(publisher:)(&v298);
      v300 = 0;
      v298 = 0u;
      v299 = 0u;
      sub_10010FC20(&unk_10118D300, &qword_100EBCE20);
      swift_allocObject();
      v279 = OptionalObservableObject.init(publisher:)(&v298);
      v226 = static HierarchicalShapeStyle.primary.getter();
      v227 = v261;
      *(v261 + 3) = &type metadata for HierarchicalShapeStyle;
      *(v227 + 32) = &protocol witness table for HierarchicalShapeStyle;
      *v227 = v226;
      *(v227 + 40) = 0;
      v228 = (v227 + v26[6]);
      v229 = v26[9];
      v230 = v26[10];
      v225(v227 + v230, 1, 1, v224);
      v280 = (v227 + v82[11]);
      v231 = v82[14];
      *(v227 + v231) = swift_getKeyPath();
      sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
      swift_storeEnumTagMultiPayload();
      v232 = v266;
      sub_100123474(v266, v227 + v82[5], type metadata accessor for ArtworkImage.Info);
      v228[1] = 0;
      v228[2] = 0;
      *v228 = 0;
      v233 = (v227 + v82[7]);
      v234 = v288;
      *v233 = v296;
      v233[1] = v234;
      v235 = (v227 + v82[8]);
      v236 = v277;
      *v235 = v278;
      v235[1] = v236;
      *(v227 + v229) = v289 & 1;
      v237 = v227 + v230;
      v238 = v297;
      sub_100123348(v297, v237);
      v239 = (v227 + v82[12]);
      sub_1001233B8(&unk_1011847D0, &unk_1011847C0, &unk_100EC0480);

      *v239 = ObservedObject.init(wrappedValue:)();
      v239[1] = v240;
      v241 = (v227 + v82[13]);
      sub_1001233B8(&qword_10118D310, &unk_10118D300, &qword_100EBCE20);
      v242 = ObservedObject.init(wrappedValue:)();
      v244 = v243;

      sub_1000095E8(v238, &unk_10118D2F0, &unk_100EBCE10);
      sub_1001234DC(v232, type metadata accessor for ArtworkImage.Info);
      *v241 = v242;
      v241[1] = v244;
      v245 = v280;
      *v280 = 0;
      *(v245 + 1) = 0;
      v246 = v262;
      sub_10012340C(v227, v262, _s8ListCellVMa);
      sub_100123474(v246, v286, _s8ListCellVMa);
      swift_storeEnumTagMultiPayload();
      sub_10012327C(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
      v247 = v287;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v247, v283, &qword_1011812E8, &qword_100EBCE00);
      swift_storeEnumTagMultiPayload();
      sub_1001231C8();
      v248 = v284;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v247, &qword_1011812E8, &qword_100EBCE00);
      sub_1000089F8(v248, v293, &qword_1011812F0, &qword_100EBCE08);
      swift_storeEnumTagMultiPayload();
      sub_10012314C(&qword_101181300, &qword_1011812F0, &qword_100EBCE08, sub_1001231C8);
      sub_1001232C4(&qword_101181308, &qword_1011812C8, &qword_100EBCDE0, sub_1001231C8);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v248, &qword_1011812F0, &qword_100EBCE08);
      sub_1001234DC(v246, _s8ListCellVMa);
      return (*(v268 + 8))(v267, v269);
    }

    else if (v42 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      (*(v38 + 96))(v41, v37);
      v156 = v265;
      (*(v264 + 32))(v263, v41, v265);
      ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v156, &protocol witness table for TVSeason, v22);
      v157 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
      (*(*(v157 - 8) + 56))(v81, 6, 11, v157);
      v158 = _s21RecentlyAddedListCellVMa(0);
      ArtworkImage.Size.init(cgSize:)(*(v252 + *(v158 + 20)), *(v252 + *(v158 + 20) + 8), 0, &v301);
      v159 = Corner.small.unsafeMutableAddressor();
      ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v22, v81, 0, 1, &v301, *v159, v159[1], *(v159 + 16), v296);
      v289 = TVSeason.showName.getter();
      v288 = v160;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v281 = String.init(localized:table:bundle:locale:comment:)();
      v280 = v161;
      v162 = type metadata accessor for ContentRating();
      v278 = *(*(v162 - 8) + 56);
      (v278)(v297, 1, 1, v162);
      v300 = 0;
      v298 = 0u;
      v299 = 0u;
      sub_10010FC20(&unk_1011847C0, &unk_100EC0480);
      swift_allocObject();
      v279 = OptionalObservableObject.init(publisher:)(&v298);
      v300 = 0;
      v298 = 0u;
      v299 = 0u;
      sub_10010FC20(&unk_10118D300, &qword_100EBCE20);
      swift_allocObject();
      v277 = OptionalObservableObject.init(publisher:)(&v298);
      v163 = static HierarchicalShapeStyle.primary.getter();
      *(v32 + 3) = &type metadata for HierarchicalShapeStyle;
      *(v32 + 4) = &protocol witness table for HierarchicalShapeStyle;
      *v32 = v163;
      v32[40] = 0;
      v164 = &v32[v26[6]];
      v165 = v82[9];
      v166 = v82[10];
      (v278)(&v32[v166], 1, 1, v162);
      v278 = &v32[v82[11]];
      v167 = v82[14];
      *&v32[v167] = swift_getKeyPath();
      sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
      swift_storeEnumTagMultiPayload();
      v168 = v82[5];
      v276 = type metadata accessor for ArtworkImage.Info;
      v169 = v296;
      sub_100123474(v296, &v32[v168], type metadata accessor for ArtworkImage.Info);
      *(v164 + 1) = 0;
      *(v164 + 2) = 0;
      *v164 = 0;
      v170 = &v32[v82[7]];
      v171 = v288;
      *v170 = v289;
      v170[1] = v171;
      v172 = &v32[v82[8]];
      v173 = v280;
      *v172 = v281;
      v172[1] = v173;
      v32[v165] = 0;
      v174 = v297;
      sub_100123348(v297, &v32[v166]);
      v175 = &v32[v82[12]];
      sub_1001233B8(&unk_1011847D0, &unk_1011847C0, &unk_100EC0480);

      *v175 = ObservedObject.init(wrappedValue:)();
      v175[1] = v176;
      v177 = &v32[v82[13]];
      sub_1001233B8(&qword_10118D310, &unk_10118D300, &qword_100EBCE20);
      v178 = ObservedObject.init(wrappedValue:)();
      v180 = v179;

      sub_1000095E8(v174, &unk_10118D2F0, &unk_100EBCE10);
      sub_1001234DC(v169, v276);
      *v177 = v178;
      v177[1] = v180;
      v181 = v278;
      *v278 = 0;
      *(v181 + 8) = 0;
      sub_100123474(v32, v286, _s8ListCellVMa);
      swift_storeEnumTagMultiPayload();
      sub_10012327C(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
      v182 = v287;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v182, v283, &qword_1011812E8, &qword_100EBCE00);
      swift_storeEnumTagMultiPayload();
      sub_1001231C8();
      v183 = v284;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v182, &qword_1011812E8, &qword_100EBCE00);
      sub_1000089F8(v183, v293, &qword_1011812F0, &qword_100EBCE08);
      swift_storeEnumTagMultiPayload();
      sub_10012314C(&qword_101181300, &qword_1011812F0, &qword_100EBCE08, sub_1001231C8);
      sub_1001232C4(&qword_101181308, &qword_1011812C8, &qword_100EBCDE0, sub_1001231C8);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v183, &qword_1011812F0, &qword_100EBCE08);
      sub_1001234DC(v32, _s8ListCellVMa);
      return (*(v264 + 8))(v263, v265);
    }

    else
    {
      v184 = v297;
      v185 = v252;
      if (v42 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
      {
        (*(v38 + 96))(v41, v37);
        v186 = v258;
        (*(v257 + 32))();
        ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v186, &protocol witness table for UploadedVideo, v22);
        v187 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
        (*(*(v187 - 8) + 56))(v81, 5, 11, v187);
        v188 = _s21RecentlyAddedListCellVMa(0);
        ArtworkImage.Size.init(cgSize:)(*(v185 + *(v188 + 20)), *(v185 + *(v188 + 20) + 8), 0, &v301);
        v189 = Corner.small.unsafeMutableAddressor();
        ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v22, v81, 0, 1, &v301, *v189, v189[1], *(v189 + 16), v255);
        v190 = UploadedVideo.title.getter();
        if (v191)
        {
          v192 = v190;
        }

        else
        {
          v192 = 0;
        }

        v296 = v192;
        v193 = 0xE000000000000000;
        if (v191)
        {
          v193 = v191;
        }

        v289 = v193;
        v288 = UploadedVideo.artistName.getter();
        v284 = v194;
        UploadedVideo.contentRating.getter();
        v300 = 0;
        v298 = 0u;
        v299 = 0u;
        sub_10010FC20(&unk_1011847C0, &unk_100EC0480);
        swift_allocObject();
        v283 = OptionalObservableObject.init(publisher:)(&v298);
        v300 = 0;
        v298 = 0u;
        v299 = 0u;
        sub_10010FC20(&unk_10118D300, &qword_100EBCE20);
        swift_allocObject();
        v282 = OptionalObservableObject.init(publisher:)(&v298);
        v195 = static HierarchicalShapeStyle.primary.getter();
        v196 = v253;
        *(v253 + 3) = &type metadata for HierarchicalShapeStyle;
        *(v196 + 32) = &protocol witness table for HierarchicalShapeStyle;
        *v196 = v195;
        *(v196 + 40) = 0;
        v197 = (v196 + v26[6]);
        v198 = v184;
        v200 = v82[9];
        v199 = v82[10];
        v201 = type metadata accessor for ContentRating();
        (*(*(v201 - 8) + 56))(v196 + v199, 1, 1, v201);
        v281 = v196 + v82[11];
        v202 = v82[14];
        *(v196 + v202) = swift_getKeyPath();
        sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
        swift_storeEnumTagMultiPayload();
        v203 = v82[5];
        v280 = type metadata accessor for ArtworkImage.Info;
        v204 = v255;
        sub_100123474(v255, v196 + v203, type metadata accessor for ArtworkImage.Info);
        v197[1] = 0;
        v197[2] = 0;
        *v197 = 0;
        v205 = (v196 + v82[7]);
        v206 = v289;
        *v205 = v296;
        v205[1] = v206;
        v207 = (v196 + v82[8]);
        v208 = v284;
        *v207 = v288;
        v207[1] = v208;
        *(v196 + v200) = 0;
        sub_100123348(v198, v196 + v199);
        v209 = (v196 + v82[12]);
        sub_1001233B8(&unk_1011847D0, &unk_1011847C0, &unk_100EC0480);

        *v209 = ObservedObject.init(wrappedValue:)();
        v209[1] = v210;
        v211 = (v196 + v82[13]);
        sub_1001233B8(&qword_10118D310, &unk_10118D300, &qword_100EBCE20);
        v212 = ObservedObject.init(wrappedValue:)();
        v214 = v213;

        sub_1000095E8(v198, &unk_10118D2F0, &unk_100EBCE10);
        sub_1001234DC(v204, v280);
        *v211 = v212;
        v211[1] = v214;
        v215 = v281;
        *v281 = 0;
        *(v215 + 8) = 0;
        v216 = v254;
        sub_10012340C(v196, v254, _s8ListCellVMa);
        sub_100123474(v216, v286, _s8ListCellVMa);
        swift_storeEnumTagMultiPayload();
        sub_10012327C(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
        v217 = v287;
        _ConditionalContent<>.init(storage:)();
        sub_1000089F8(v217, v271, &qword_1011812E8, &qword_100EBCE00);
        swift_storeEnumTagMultiPayload();
        sub_1001231C8();
        v218 = v272;
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v217, &qword_1011812E8, &qword_100EBCE00);
        sub_1000089F8(v218, v293, &qword_1011812C8, &qword_100EBCDE0);
        swift_storeEnumTagMultiPayload();
        sub_10012314C(&qword_101181300, &qword_1011812F0, &qword_100EBCE08, sub_1001231C8);
        sub_1001232C4(&qword_101181308, &qword_1011812C8, &qword_100EBCDE0, sub_1001231C8);
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v218, &qword_1011812C8, &qword_100EBCDE0);
        sub_1001234DC(v216, _s8ListCellVMa);
        return (*(v257 + 8))(v256, v258);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_1001231C8();
        v221 = v272;
        _ConditionalContent<>.init(storage:)();
        sub_1000089F8(v221, v293, &qword_1011812C8, &qword_100EBCDE0);
        swift_storeEnumTagMultiPayload();
        sub_10012314C(&qword_101181300, &qword_1011812F0, &qword_100EBCE08, sub_1001231C8);
        sub_1001232C4(&qword_101181308, &qword_1011812C8, &qword_100EBCDE0, sub_1001231C8);
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v221, &qword_1011812C8, &qword_100EBCDE0);
        return (*(v38 + 8))(v41, v37);
      }
    }
  }
}

uint64_t sub_10011F028(uint64_t a1, uint64_t a2)
{
  v304 = type metadata accessor for UploadedVideo();
  v306 = *(v304 - 8);
  __chkstk_darwin();
  v300 = &v293 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v301 = &v293 - v5;
  v314 = type metadata accessor for TVSeason();
  v317 = *(v314 - 8);
  __chkstk_darwin();
  v307 = &v293 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v311 = &v293 - v7;
  v345 = type metadata accessor for MusicMovie();
  v348 = *(v345 - 8);
  __chkstk_darwin();
  v339 = &v293 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v342 = &v293 - v9;
  v336 = type metadata accessor for MusicVideo();
  v340 = *(v336 - 8);
  __chkstk_darwin();
  v333 = &v293 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v334 = &v293 - v11;
  v352 = type metadata accessor for Album();
  v354 = *(v352 - 8);
  __chkstk_darwin();
  v350 = &v293 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v355 = &v293 - v13;
  v332 = type metadata accessor for MusicFavoriteStatus();
  v331 = *(v332 - 8);
  __chkstk_darwin();
  v329 = &v293 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v330 = &v293 - v15;
  v351 = type metadata accessor for Artwork();
  v349 = *(v351 - 8);
  __chkstk_darwin();
  v323 = &v293 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = sub_10010FC20(&unk_101191420, &unk_100EC9120);
  __chkstk_darwin();
  v296 = &v293 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v308 = &v293 - v18;
  __chkstk_darwin();
  v337 = &v293 - v19;
  __chkstk_darwin();
  v319 = &v293 - v20;
  __chkstk_darwin();
  v343 = &v293 - v21;
  __chkstk_darwin();
  v313 = &v293 - v22;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v295 = &v293 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v297 = &v293 - v24;
  __chkstk_darwin();
  v298 = &v293 - v25;
  __chkstk_darwin();
  v299 = &v293 - v26;
  __chkstk_darwin();
  v305 = &v293 - v27;
  __chkstk_darwin();
  v310 = &v293 - v28;
  __chkstk_darwin();
  v318 = &v293 - v29;
  __chkstk_darwin();
  v338 = &v293 - v30;
  __chkstk_darwin();
  v341 = &v293 - v31;
  __chkstk_darwin();
  v309 = &v293 - v32;
  __chkstk_darwin();
  v324 = &v293 - v33;
  __chkstk_darwin();
  v321 = &v293 - v34;
  __chkstk_darwin();
  v322 = &v293 - v35;
  __chkstk_darwin();
  v344 = &v293 - v36;
  __chkstk_darwin();
  v347 = &v293 - v37;
  __chkstk_darwin();
  v303 = &v293 - v38;
  __chkstk_darwin();
  v315 = &v293 - v39;
  __chkstk_darwin();
  v316 = &v293 - v40;
  v328 = type metadata accessor for Playlist();
  v327 = *(v328 - 8);
  __chkstk_darwin();
  v326 = &v293 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v325 = &v293 - v42;
  v43 = type metadata accessor for RecentlyAddedMusicItem();
  v44 = *(v43 - 8);
  __chkstk_darwin();
  v302 = &v293 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v312 = &v293 - v46;
  __chkstk_darwin();
  v48 = &v293 - v47;
  __chkstk_darwin();
  v335 = &v293 - v49;
  __chkstk_darwin();
  v51 = &v293 - v50;
  __chkstk_darwin();
  v320 = &v293 - v52;
  sub_10010FC20(&qword_101181140, &qword_100EBCC58);
  v53 = __chkstk_darwin();
  v55 = &v293 - v54;
  v57 = *(v56 + 56);
  v58 = *(v44 + 2);
  v58(&v293 - v54, a1, v43, v53);
  (v58)(&v55[v57], a2, v43);
  v59 = *(v44 + 11);
  v60 = v59(v55, v43);
  if (v60 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    LODWORD(v348) = v60;
    (v58)(v51, v55, v43);
    v61 = *(v44 + 12);
    v61(v51, v43);
    v62 = v59(&v55[v57], v43);
    if (v62 == v348)
    {
      v61(&v55[v57], v43);
      v63 = *(v354 + 32);
      v64 = v352;
      v63(v355, v51, v352);
      v65 = v350;
      v63(v350, &v55[v57], v64);
      v66 = Album.title.getter();
      v68 = v67;
      if (v66 == Album.title.getter() && v68 == v69)
      {

        v70 = v351;
        v71 = v347;
      }

      else
      {
        v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v70 = v351;
        v71 = v347;
        if ((v102 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v353 = v55;
      v103 = Album.artistName.getter();
      v105 = v104;
      if (v103 == Album.artistName.getter() && v105 == v106)
      {

        v107 = v344;
      }

      else
      {
        v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v107 = v344;
        if ((v123 & 1) == 0)
        {
          v131 = 0;
          v55 = v353;
          goto LABEL_53;
        }
      }

      v294 = v43;
      Album.artwork.getter();
      Album.artwork.getter();
      v124 = *(v346 + 48);
      v125 = v343;
      sub_1000089F8(v71, v343, &unk_101188920, &qword_100EBCC50);
      sub_1000089F8(v107, v125 + v124, &unk_101188920, &qword_100EBCC50);
      v126 = v71;
      v127 = *(v349 + 48);
      if (v127(v125, 1, v70) == 1)
      {
        sub_1000095E8(v107, &unk_101188920, &qword_100EBCC50);
        v128 = v343;
        sub_1000095E8(v126, &unk_101188920, &qword_100EBCC50);
        v129 = v127(v128 + v124, 1, v70);
        v65 = v350;
        v55 = v353;
        v43 = v294;
        if (v129 == 1)
        {
          sub_1000095E8(v128, &unk_101188920, &qword_100EBCC50);
LABEL_52:
          v167 = v330;
          Album.favoriteStatus.getter();
          v168 = v329;
          Album.favoriteStatus.getter();
          v131 = static MusicFavoriteStatus.== infix(_:_:)();
          v169 = *(v331 + 8);
          v170 = v168;
          v171 = v332;
          v169(v170, v332);
          v169(v167, v171);
          v65 = v350;
          goto LABEL_53;
        }
      }

      else
      {
        v130 = v322;
        sub_1000089F8(v125, v322, &unk_101188920, &qword_100EBCC50);
        if (v127(v125 + v124, 1, v70) != 1)
        {
          v163 = v349;
          v164 = v125 + v124;
          v165 = v323;
          (*(v349 + 32))(v323, v164, v70);
          sub_10012327C(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
          LODWORD(v348) = dispatch thunk of static Equatable.== infix(_:_:)();
          v166 = *(v163 + 8);
          v166(v165, v70);
          sub_1000095E8(v344, &unk_101188920, &qword_100EBCC50);
          sub_1000095E8(v347, &unk_101188920, &qword_100EBCC50);
          v166(v130, v70);
          sub_1000095E8(v125, &unk_101188920, &qword_100EBCC50);
          v65 = v350;
          v55 = v353;
          v43 = v294;
          if (v348)
          {
            goto LABEL_52;
          }

          goto LABEL_34;
        }

        sub_1000095E8(v344, &unk_101188920, &qword_100EBCC50);
        v128 = v343;
        sub_1000095E8(v347, &unk_101188920, &qword_100EBCC50);
        (*(v349 + 8))(v130, v70);
        v65 = v350;
        v55 = v353;
        v43 = v294;
      }

      sub_1000095E8(v128, &unk_101191420, &unk_100EC9120);
LABEL_34:
      v131 = 0;
LABEL_53:
      v172 = *(v354 + 8);
      v172(v65, v64);
      v172(v355, v64);
LABEL_54:
      (*(v44 + 1))(v55, v43);
      return v131 & 1;
    }

    (*(v354 + 8))(v51, v352);
LABEL_96:
    sub_1000095E8(v55, &qword_101181140, &qword_100EBCC58);
    v131 = 0;
    return v131 & 1;
  }

  v354 = v57;
  v355 = v59;
  v353 = v55;
  if (v60 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    v72 = v60;
    v55 = v353;
    (v58)(v48, v353, v43);
    v73 = *(v44 + 12);
    v73(v48, v43);
    v74 = v354;
    if ((v355)(&v55[v354], v43) != v72)
    {
      (*(v348 + 8))(v48, v345);
      goto LABEL_96;
    }

    v73(&v55[v74], v43);
    v75 = *(v348 + 32);
    v76 = v342;
    v77 = v74;
    v78 = v345;
    v75(v342, v48, v345);
    v79 = v339;
    v75(v339, &v55[v77], v78);
    v80 = MusicMovie.title.getter();
    v82 = v81;
    if (v80 == MusicMovie.title.getter() && v82 == v83)
    {

      v84 = v341;
      v85 = v338;
    }

    else
    {
      v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v84 = v341;
      v85 = v338;
      if ((v132 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v133 = MusicMovie.artistName.getter();
    v135 = v134;
    if (v133 == MusicMovie.artistName.getter() && v135 == v136)
    {

LABEL_47:
      MusicMovie.artwork.getter();
      MusicMovie.artwork.getter();
      v154 = *(v346 + 48);
      v155 = v84;
      v156 = v337;
      sub_1000089F8(v155, v337, &unk_101188920, &qword_100EBCC50);
      v157 = v156;
      sub_1000089F8(v85, v156 + v154, &unk_101188920, &qword_100EBCC50);
      v158 = *(v349 + 48);
      v159 = v351;
      if (v158(v156, 1, v351) == 1)
      {
        sub_1000095E8(v85, &unk_101188920, &qword_100EBCC50);
        sub_1000095E8(v341, &unk_101188920, &qword_100EBCC50);
        v160 = *(v348 + 8);
        v160(v79, v78);
        v160(v342, v78);
        v161 = v337;
        if (v158(v337 + v154, 1, v351) == 1)
        {
          sub_1000095E8(v161, &unk_101188920, &qword_100EBCC50);
          v131 = 1;
LABEL_87:
          (*(v44 + 1))(v353, v43);
          return v131 & 1;
        }
      }

      else
      {
        v173 = v318;
        sub_1000089F8(v157, v318, &unk_101188920, &qword_100EBCC50);
        if (v158(v157 + v154, 1, v159) != 1)
        {
          v207 = v349;
          v208 = v157 + v154;
          v209 = v323;
          (*(v349 + 32))(v323, v208, v159);
          sub_10012327C(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
          v131 = dispatch thunk of static Equatable.== infix(_:_:)();
          v210 = *(v207 + 8);
          v210(v209, v159);
          sub_1000095E8(v338, &unk_101188920, &qword_100EBCC50);
          sub_1000095E8(v341, &unk_101188920, &qword_100EBCC50);
          v211 = *(v348 + 8);
          v212 = v345;
          v211(v339, v345);
          v211(v342, v212);
          v210(v318, v159);
          sub_1000095E8(v337, &unk_101188920, &qword_100EBCC50);
          goto LABEL_87;
        }

        sub_1000095E8(v338, &unk_101188920, &qword_100EBCC50);
        sub_1000095E8(v341, &unk_101188920, &qword_100EBCC50);
        v174 = *(v348 + 8);
        v174(v339, v78);
        v174(v342, v78);
        v161 = v337;
        (*(v349 + 8))(v173, v159);
      }

      sub_1000095E8(v161, &unk_101191420, &unk_100EC9120);
LABEL_58:
      v131 = 0;
      goto LABEL_87;
    }

    v153 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v153)
    {
      goto LABEL_47;
    }

LABEL_50:
    v162 = *(v348 + 8);
    v162(v79, v78);
    v162(v76, v78);
    goto LABEL_58;
  }

  if (v60 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    v86 = v60;
    v87 = v335;
    v88 = v353;
    (v58)(v335, v353, v43);
    v89 = *(v44 + 12);
    v89(v87, v43);
    v90 = v354;
    if ((v355)(&v88[v354], v43) != v86)
    {
      (*(v340 + 8))(v87, v336);
      v55 = v88;
      goto LABEL_96;
    }

    v89(&v88[v90], v43);
    v91 = *(v340 + 32);
    v92 = v334;
    v93 = v87;
    v94 = v336;
    v91(v334, v93, v336);
    v95 = v333;
    v91(v333, &v88[v90], v94);
    v96 = MusicVideo.title.getter();
    v98 = v97;
    if (v96 == MusicVideo.title.getter() && v98 == v99)
    {

      v100 = v321;
      v101 = v324;
    }

    else
    {
      v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v100 = v321;
      v101 = v324;
      if ((v175 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    v176 = MusicVideo.artistName.getter();
    v178 = v177;
    if (v176 == MusicVideo.artistName.getter() && v178 == v179)
    {
    }

    else
    {
      v199 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v199 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    MusicVideo.artwork.getter();
    MusicVideo.artwork.getter();
    v200 = *(v346 + 48);
    v201 = v319;
    sub_1000089F8(v100, v319, &unk_101188920, &qword_100EBCC50);
    sub_1000089F8(v101, v201 + v200, &unk_101188920, &qword_100EBCC50);
    v202 = v101;
    v203 = *(v349 + 48);
    v204 = v351;
    if (v203(v201, 1, v351) == 1)
    {
      sub_1000095E8(v202, &unk_101188920, &qword_100EBCC50);
      v205 = v319;
      sub_1000095E8(v100, &unk_101188920, &qword_100EBCC50);
      v206 = v203(v205 + v200, 1, v204);
      v92 = v334;
      if (v206 == 1)
      {
        sub_1000095E8(v205, &unk_101188920, &qword_100EBCC50);
        v95 = v333;
LABEL_84:
        v219 = v330;
        MusicVideo.favoriteStatus.getter();
        v220 = v329;
        MusicVideo.favoriteStatus.getter();
        v131 = static MusicFavoriteStatus.== infix(_:_:)();
        v221 = *(v331 + 8);
        v222 = v220;
        v223 = v332;
        v221(v222, v332);
        v221(v219, v223);
        v92 = v334;
        goto LABEL_86;
      }

LABEL_78:
      sub_1000095E8(v205, &unk_101191420, &unk_100EC9120);
      v131 = 0;
      v95 = v333;
LABEL_86:
      v224 = *(v340 + 8);
      v224(v95, v94);
      v224(v92, v94);
      goto LABEL_87;
    }

    v213 = v309;
    sub_1000089F8(v201, v309, &unk_101188920, &qword_100EBCC50);
    if (v203(v201 + v200, 1, v204) == 1)
    {
      sub_1000095E8(v324, &unk_101188920, &qword_100EBCC50);
      v205 = v319;
      sub_1000095E8(v100, &unk_101188920, &qword_100EBCC50);
      (*(v349 + 8))(v213, v204);
      v92 = v334;
      goto LABEL_78;
    }

    v215 = v349;
    v216 = v201 + v200;
    v217 = v323;
    (*(v349 + 32))(v323, v216, v204);
    sub_10012327C(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    LODWORD(v355) = dispatch thunk of static Equatable.== infix(_:_:)();
    v218 = *(v215 + 8);
    v218(v217, v204);
    sub_1000095E8(v324, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v100, &unk_101188920, &qword_100EBCC50);
    v218(v309, v204);
    sub_1000095E8(v201, &unk_101188920, &qword_100EBCC50);
    v95 = v333;
    v92 = v334;
    if (v355)
    {
      goto LABEL_84;
    }

LABEL_85:
    v131 = 0;
    goto LABEL_86;
  }

  if (v60 != enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    v55 = v353;
    v137 = v355;
    if (v60 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      v138 = v60;
      v139 = v312;
      (v58)(v312, v353, v43);
      v140 = *(v44 + 12);
      v140(v139, v43);
      v141 = v354;
      if (v137(&v55[v354], v43) != v138)
      {
        v180 = *(v317 + 8);
        v181 = v139;
        v182 = &v346;
        goto LABEL_95;
      }

      v140(&v55[v141], v43);
      v142 = *(v317 + 32);
      v143 = v139;
      v144 = v311;
      v145 = v141;
      v146 = v314;
      v142(v311, v143, v314);
      v147 = v307;
      v142(v307, &v55[v145], v146);
      v148 = TVSeason.showName.getter();
      v150 = v149;
      if (v148 == TVSeason.showName.getter() && v150 == v151)
      {

        v152 = v310;
      }

      else
      {
        v225 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v152 = v310;
        if ((v225 & 1) == 0)
        {
          v260 = *(v317 + 8);
          v260(v147, v146);
          v260(v144, v146);
          goto LABEL_111;
        }
      }

      v355 = v44;
      TVSeason.artwork.getter();
      v226 = v305;
      TVSeason.artwork.getter();
      v227 = *(v346 + 48);
      v228 = v152;
      v229 = v308;
      sub_1000089F8(v228, v308, &unk_101188920, &qword_100EBCC50);
      v230 = v229;
      sub_1000089F8(v226, v229 + v227, &unk_101188920, &qword_100EBCC50);
      v231 = v147;
      v232 = *(v349 + 48);
      if (v232(v230, 1, v351) == 1)
      {
        sub_1000095E8(v226, &unk_101188920, &qword_100EBCC50);
        sub_1000095E8(v310, &unk_101188920, &qword_100EBCC50);
        v233 = *(v317 + 8);
        v233(v231, v146);
        v233(v311, v146);
        v234 = v308;
        v235 = v232(v308 + v227, 1, v351);
        v44 = v355;
        if (v235 == 1)
        {
          v236 = v234;
LABEL_93:
          sub_1000095E8(v236, &unk_101188920, &qword_100EBCC50);
          v131 = 1;
          goto LABEL_54;
        }

        goto LABEL_106;
      }

      v257 = v299;
      sub_1000089F8(v230, v299, &unk_101188920, &qword_100EBCC50);
      v258 = v232(v230 + v227, 1, v351);
      v44 = v355;
      if (v258 == 1)
      {
        sub_1000095E8(v305, &unk_101188920, &qword_100EBCC50);
        sub_1000095E8(v310, &unk_101188920, &qword_100EBCC50);
        v259 = *(v317 + 8);
        v259(v307, v146);
        v259(v311, v146);
        v234 = v308;
        (*(v349 + 8))(v257, v351);
LABEL_106:
        sub_1000095E8(v234, &unk_101191420, &unk_100EC9120);
LABEL_111:
        v131 = 0;
        goto LABEL_54;
      }

      v262 = v349;
      v263 = v230 + v227;
      v264 = v323;
      v265 = v351;
      (*(v349 + 32))(v323, v263, v351);
      sub_10012327C(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      v131 = dispatch thunk of static Equatable.== infix(_:_:)();
      v266 = *(v262 + 8);
      v266(v264, v265);
      sub_1000095E8(v305, &unk_101188920, &qword_100EBCC50);
      sub_1000095E8(v310, &unk_101188920, &qword_100EBCC50);
      v267 = *(v317 + 8);
      v268 = v314;
      v267(v307, v314);
      v267(v311, v268);
      v266(v299, v265);
      v269 = v308;
LABEL_113:
      sub_1000095E8(v269, &unk_101188920, &qword_100EBCC50);
      goto LABEL_54;
    }

    if (v60 != enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
      goto LABEL_96;
    }

    v183 = v355;
    v184 = v302;
    v185 = v60;
    (v58)(v302, v353, v43);
    v186 = *(v44 + 12);
    v186(v184, v43);
    v187 = v354;
    if (v183(&v55[v354], v43) != v185)
    {
      v180 = *(v306 + 8);
      v181 = v184;
      v182 = &v336;
      goto LABEL_95;
    }

    v186(&v55[v187], v43);
    v188 = v306;
    v189 = *(v306 + 32);
    v190 = v301;
    v191 = v187;
    v192 = v304;
    v189(v301, v184, v304);
    v193 = v300;
    v189(v300, &v55[v191], v192);
    v194 = UploadedVideo.title.getter();
    v196 = v195;
    v197 = UploadedVideo.title.getter();
    if (v196)
    {
      if (v198)
      {
        if (v194 == v197 && v196 == v198)
        {
        }

        else
        {
          v270 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v270 & 1) == 0)
          {
            goto LABEL_110;
          }
        }

        goto LABEL_115;
      }
    }

    else if (!v198)
    {
LABEL_115:
      v271 = UploadedVideo.artistName.getter();
      v273 = v272;
      if (v271 == UploadedVideo.artistName.getter() && v273 == v274)
      {

        goto LABEL_119;
      }

      v275 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v275)
      {
LABEL_119:
        v276 = v298;
        UploadedVideo.artwork.getter();
        v277 = v297;
        UploadedVideo.artwork.getter();
        v278 = *(v346 + 48);
        v279 = v276;
        v280 = v296;
        sub_1000089F8(v279, v296, &unk_101188920, &qword_100EBCC50);
        v355 = v278;
        sub_1000089F8(v277, &v278[v280], &unk_101188920, &qword_100EBCC50);
        v281 = *(v349 + 48);
        v282 = v351;
        if (v281(v280, 1, v351) == 1)
        {
          sub_1000095E8(v277, &unk_101188920, &qword_100EBCC50);
          sub_1000095E8(v298, &unk_101188920, &qword_100EBCC50);
          v283 = *(v306 + 8);
          v283(v193, v192);
          v283(v301, v192);
          v284 = v280;
          if (v281(&v355[v280], 1, v351) == 1)
          {
            v236 = v280;
            goto LABEL_93;
          }
        }

        else
        {
          v285 = v295;
          sub_1000089F8(v280, v295, &unk_101188920, &qword_100EBCC50);
          v284 = v280;
          if (v281(&v355[v280], 1, v282) != 1)
          {
            v288 = v349;
            v289 = &v355[v280];
            v290 = v323;
            (*(v349 + 32))(v323, v289, v282);
            sub_10012327C(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
            v131 = dispatch thunk of static Equatable.== infix(_:_:)();
            v355 = *(v288 + 8);
            (v355)(v290, v282);
            sub_1000095E8(v297, &unk_101188920, &qword_100EBCC50);
            sub_1000095E8(v298, &unk_101188920, &qword_100EBCC50);
            v291 = *(v306 + 8);
            v292 = v304;
            v291(v300, v304);
            v291(v301, v292);
            (v355)(v295, v282);
            v269 = v284;
            goto LABEL_113;
          }

          v286 = v285;
          sub_1000095E8(v297, &unk_101188920, &qword_100EBCC50);
          sub_1000095E8(v298, &unk_101188920, &qword_100EBCC50);
          v287 = *(v306 + 8);
          v287(v300, v192);
          v287(v301, v192);
          (*(v349 + 8))(v286, v282);
        }

        sub_1000095E8(v284, &unk_101191420, &unk_100EC9120);
        goto LABEL_111;
      }

LABEL_110:
      v261 = *(v188 + 8);
      v261(v193, v192);
      v261(v190, v192);
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  v108 = v60;
  v109 = v320;
  v55 = v353;
  (v58)(v320, v353, v43);
  v110 = *(v44 + 12);
  v110(v109, v43);
  v111 = v354;
  if ((v355)(&v55[v354], v43) != v108)
  {
    v180 = *(v327 + 8);
    v181 = v109;
    v182 = &v356;
LABEL_95:
    v180(v181, *(v182 - 32));
    goto LABEL_96;
  }

  v355 = v44;
  v110(&v55[v111], v43);
  v112 = v109;
  v113 = *(v327 + 32);
  v114 = v328;
  v113(v325, v112, v328);
  v113(v326, &v55[v111], v114);
  v115 = v316;
  Playlist.artwork.getter();
  v116 = v315;
  Playlist.artwork.getter();
  v117 = *(v346 + 48);
  v118 = v313;
  sub_1000089F8(v115, v313, &unk_101188920, &qword_100EBCC50);
  sub_1000089F8(v116, v118 + v117, &unk_101188920, &qword_100EBCC50);
  v119 = *(v349 + 48);
  v120 = v351;
  v121 = v119(v118, 1, v351);
  v294 = v43;
  if (v121 == 1)
  {
    sub_1000095E8(v116, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v115, &unk_101188920, &qword_100EBCC50);
    if (v119(v118 + v117, 1, v120) == 1)
    {
      sub_1000095E8(v118, &unk_101188920, &qword_100EBCC50);
      v122 = 1;
      goto LABEL_99;
    }

    goto LABEL_81;
  }

  v214 = v303;
  sub_1000089F8(v118, v303, &unk_101188920, &qword_100EBCC50);
  if (v119(v118 + v117, 1, v120) == 1)
  {
    sub_1000095E8(v315, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v316, &unk_101188920, &qword_100EBCC50);
    (*(v349 + 8))(v214, v120);
LABEL_81:
    sub_1000095E8(v118, &unk_101191420, &unk_100EC9120);
    v122 = 0;
    goto LABEL_99;
  }

  v238 = v214;
  v239 = v349;
  v240 = v323;
  (*(v349 + 32))(v323, v118 + v117, v120);
  sub_10012327C(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v122 = dispatch thunk of static Equatable.== infix(_:_:)();
  v241 = *(v239 + 8);
  v241(v240, v120);
  sub_1000095E8(v315, &unk_101188920, &qword_100EBCC50);
  sub_1000095E8(v316, &unk_101188920, &qword_100EBCC50);
  v241(v238, v120);
  sub_1000095E8(v118, &unk_101188920, &qword_100EBCC50);
LABEL_99:
  v242 = Playlist.name.getter();
  v244 = v243;
  if (v242 == Playlist.name.getter() && v244 == v245)
  {
    v246 = 1;
  }

  else
  {
    v246 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v247 = v330;
  v248 = v325;
  Playlist.favoriteStatus.getter();
  v249 = v329;
  v250 = v326;
  Playlist.favoriteStatus.getter();
  v251 = static MusicFavoriteStatus.== infix(_:_:)();
  v252 = *(v331 + 8);
  v253 = v249;
  v254 = v332;
  v252(v253, v332);
  v252(v247, v254);
  v255 = *(v327 + 8);
  v256 = v328;
  v255(v250, v328);
  v255(v248, v256);
  v131 = v122 & v246 & v251;
  (*(v355 + 1))(v55, v294);
  return v131 & 1;
}

uint64_t sub_100121C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for UploadedVideo();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin();
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicMovie();
  v70 = *(v5 - 1);
  v71 = v5;
  __chkstk_darwin();
  v69 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicVideo();
  v67 = *(v7 - 8);
  v68 = v7;
  __chkstk_darwin();
  v66 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Playlist();
  v64 = *(v9 - 8);
  v65 = v9;
  __chkstk_darwin();
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Album();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for RecentlyAddedMusicItem();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v57 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v56 - v18;
  __chkstk_darwin();
  v20 = &v56 - v19;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v21 = *(v16 + 16);
  v59 = a1;
  v21(v20, a1, v15);
  v22 = (*(v16 + 88))(v20, v15);
  if (v22 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v16 + 96))(v20, v15);
    (*(v12 + 32))(v14, v20, v11);
    v23 = *Player.state<A>(for:)(v14, v11, &protocol witness table for Album);
    (*(v23 + 256))();

    return (*(v12 + 8))(v14, v11);
  }

  if (v22 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v16 + 96))(v20, v15);
    v26 = v69;
    v25 = v70;
    v27 = v71;
    (*(v70 + 32))(v69, v20, v71);
    v28 = sub_10012327C(&unk_1011A38E0, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    v29 = v26;
    v30 = v27;
LABEL_13:
    v34 = *Player.state<A>(for:)(v29, v30, v28);
    (*(v34 + 256))();

    return (*(v25 + 8))(v26, v27);
  }

  if (v22 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    (*(v16 + 96))(v20, v15);
    v26 = v66;
    v25 = v67;
    v27 = v68;
    (*(v67 + 32))(v66, v20, v68);
    v31 = &unk_101193C00;
    v32 = &type metadata accessor for MusicVideo;
    v33 = &protocol conformance descriptor for MusicVideo;
LABEL_9:
    v28 = sub_10012327C(v31, v32, v33);
LABEL_12:
    v29 = v26;
    v30 = v27;
    goto LABEL_13;
  }

  if (v22 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v16 + 96))(v20, v15);
    v26 = v63;
    v25 = v64;
    v27 = v65;
    (*(v64 + 32))(v63, v20, v65);
    v28 = &protocol witness table for Playlist;
    goto LABEL_12;
  }

  if (v22 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
  {
    v35 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
    v36 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
    v37 = v72;
    (*(*(v36 - 8) + 104))(v72, v35, v36);
    v38 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    v39 = type metadata accessor for MusicPlayer.PlayabilityStatus();
    (*(*(v39 - 8) + 104))(v37, v38, v39);
    return (*(v16 + 8))(v20, v15);
  }

  else
  {
    if (v22 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
      (*(v16 + 96))(v20, v15);
      v26 = v60;
      v25 = v61;
      v27 = v62;
      (*(v61 + 32))(v60, v20, v62);
      v31 = &qword_101181148;
      v32 = &type metadata accessor for UploadedVideo;
      v33 = &protocol conformance descriptor for UploadedVideo;
      goto LABEL_9;
    }

    if (qword_10117F750 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000060E4(v40, static Logger.libraryView);
    v41 = v58;
    v21(v58, v59, v15);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v73 = v71;
      *v44 = 136446210;
      v21(v57, v41, v15);
      v45 = String.init<A>(describing:)();
      v46 = v41;
      v48 = v47;
      v49 = *(v16 + 8);
      v49(v46, v15);
      v50 = sub_1000105AC(v45, v48, &v73);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "Unsupported Recently Added item type: %{public}s", v44, 0xCu);
      sub_10000959C(v71);
    }

    else
    {

      v49 = *(v16 + 8);
      v49(v41, v15);
    }

    v51 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
    v52 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
    v53 = v72;
    (*(*(v52 - 8) + 104))(v72, v51, v52);
    v54 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    v55 = type metadata accessor for MusicPlayer.PlayabilityStatus();
    (*(*(v55 - 8) + 104))(v53, v54, v55);
    return (v49)(v20, v15);
  }
}

double sub_10012262C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicVideo();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v5 + 16))(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v10 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = a1;
  (*(v5 + 32))(&v11[v10], &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_1001F4CB8(0, 0, v8, &unk_100EBCC70, v11);

  return result;
}

uint64_t sub_10012280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for MusicPropertySource();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for Track();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100122928, 0, 0);
}

uint64_t sub_100122928()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = type metadata accessor for MusicVideo();
  (*(*(v8 - 8) + 16))(v1, v7, v8);
  (*(v2 + 104))(v1, enum case for Track.musicVideo(_:), v3);
  (*(v6 + 104))(v4, enum case for MusicPropertySource.library(_:), v5);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_100122A88;
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[2];

  return sub_100138C84(v12, v10, v11, 0);
}

uint64_t sub_100122A88()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v9 = *v0;

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_100122C44(uint64_t a1)
{
  type metadata accessor for RecentlyAddedMusicItem();
  v2 = __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1, v2);
  return sub_1007350B8(v4, 1);
}

uint64_t sub_100122D04(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicVideo() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10012280C(a1, v6, v7, v8, v1 + v5);
}

void sub_100122E44(uint64_t a1)
{
  type metadata accessor for RecentlyAddedMusicItem();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100122EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyAddedMusicItem();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100122F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyAddedMusicItem();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100122FEC(uint64_t a1)
{
  result = type metadata accessor for RecentlyAddedMusicItem();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100123098()
{
  result = qword_1011812A8;
  if (!qword_1011812A8)
  {
    sub_1001109D0(&qword_101181298, &qword_100EBCD80);
    sub_10012327C(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011812A8);
  }

  return result;
}

uint64_t sub_10012314C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001231C8()
{
  result = qword_1011812F8;
  if (!qword_1011812F8)
  {
    sub_1001109D0(&qword_1011812E8, &qword_100EBCE00);
    sub_10012327C(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011812F8);
  }

  return result;
}

uint64_t sub_10012327C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001232C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100123348(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001233B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10012340C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100123474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001234DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10012353C()
{
  result = qword_101181310;
  if (!qword_101181310)
  {
    sub_1001109D0(&qword_101181318, &qword_100EBCE28);
    sub_10012314C(&qword_1011812B0, &qword_1011812A0, &qword_100EBCD88, sub_100123098);
    sub_1001232C4(&qword_1011812B8, &qword_101181278, &qword_100EBCD60, sub_100123098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181310);
  }

  return result;
}

unint64_t sub_100123620()
{
  result = qword_101181320;
  if (!qword_101181320)
  {
    sub_1001109D0(&qword_101181328, &unk_100EBCE30);
    sub_10012314C(&qword_101181300, &qword_1011812F0, &qword_100EBCE08, sub_1001231C8);
    sub_1001232C4(&qword_101181308, &qword_1011812C8, &qword_100EBCDE0, sub_1001231C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181320);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Library.ContentFilterOption(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Library.ContentFilterOption(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100123858()
{
  result = qword_101181330;
  if (!qword_101181330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181330);
  }

  return result;
}

uint64_t sub_1001238AC()
{
  v1 = 0x6575657551;
  if (*v0 != 1)
  {
    v1 = 0x50206D6F74746F42;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

id sub_100123914@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  sub_100008FE4(a2, v10);
  sub_10012B7A8(a3, v9);
  v7 = objc_allocWithZone(type metadata accessor for ShareModelStoryActivity());
  result = sub_10054F29C(v6, v10, v9);
  *a4 = result;
  return result;
}

char *sub_100123994(void (*a1)(__int128 *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *v6++;
    v25[0] = v8;
    (a1)(&v21, v25, a2);
    if (v3)
    {
      break;
    }

    if (v22)
    {
      v17 = v21;
      v18 = v22;
      v19 = v23;
      v20 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1004991C4(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_1004991C4((v9 > 1), v10 + 1, 1, v7);
      }

      v15 = v19;
      v16 = v20;
      v11 = v17;
      v14 = v18;
      *(v7 + 2) = v10 + 1;
      v12 = &v7[64 * v10];
      *(v12 + 4) = v15;
      *(v12 + 5) = v16;
      *(v12 + 2) = v11;
      *(v12 + 3) = v14;
    }

    else
    {
      v17 = v21;
      v18 = v22;
      v19 = v23;
      v20 = v24;
      sub_1000095E8(&v17, &qword_101181638, &qword_100EBD088);
    }

    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_100123B10(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v27 = a2;
  sub_10010FC20(&qword_1011815E8, &qword_100EBD058);
  __chkstk_darwin();
  v7 = &v21 - v6;
  v8 = sub_10010FC20(&unk_1011815F0, &unk_100EBD060);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v26 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v21 - v11;
  v12 = *(a3 + 16);
  if (!v12)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = *(type metadata accessor for IndexPath() - 8);
  v21 = v9;
  v14 = (v9 + 48);
  v15 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v16 = _swiftEmptyArrayStorage;
  v25 = *(v13 + 72);
  v22 = v8;
  v23 = a1;
  while (1)
  {
    a1(v15);
    if (v3)
    {
      break;
    }

    if ((*v14)(v7, 1, v8) == 1)
    {
      sub_1000095E8(v7, &qword_1011815E8, &qword_100EBD058);
    }

    else
    {
      v17 = v24;
      sub_10003D17C(v7, v24, &unk_1011815F0, &unk_100EBD060);
      sub_10003D17C(v17, v26, &unk_1011815F0, &unk_100EBD060);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_100499384(0, v16[2] + 1, 1, v16);
      }

      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        v16 = sub_100499384((v18 > 1), v19 + 1, 1, v16);
      }

      v16[2] = v19 + 1;
      sub_10003D17C(v26, v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, &unk_1011815F0, &unk_100EBD060);
      v8 = v22;
      a1 = v23;
    }

    v15 += v25;
    if (!--v12)
    {
      return v16;
    }
  }

  return v16;
}

void *sub_100123E44(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = _swiftEmptyArrayStorage;
  v12 = _swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v11 = v8;
      a1(&v10, &v11);
      if (v3)
      {
        break;
      }

      if (v10)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v12;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

void *sub_100123F44(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_100498C88(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for ActivityType(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1001240F8(uint64_t a1)
{
  v75 = type metadata accessor for MusicVideo();
  v3 = *(v75 - 8);
  __chkstk_darwin();
  v72 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v74 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v60 - v6;
  __chkstk_darwin();
  v76 = &v60 - v7;
  v8 = sub_10010FC20(&unk_101181600, &unk_100EBD070);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v60 - v10;
  v69 = sub_10010FC20(&unk_101193B10, &unk_100ED1460);
  __chkstk_darwin();
  v80 = &v60 - v12;
  sub_100020674(&unk_101181610, &unk_101181600, &unk_100EBD070, &protocol conformance descriptor for MusicItemCollection<A>);
  v13 = dispatch thunk of Sequence.underestimatedCount.getter();
  v77 = v1;
  v14 = *v1;
  v15 = *(*v1 + 16);
  v16 = v15 + v13;
  if (__OFADD__(v15, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v13;
  v78 = v8;
  v79 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v19 = v14[3] >> 1, v19 < v16))
  {
    if (v15 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v15;
    }

    v14 = sub_100499334(isUniquelyReferenced_nonNull_native, v20, 1, v14);
    v19 = v14[3] >> 1;
  }

  v21 = v78;
  v22 = *(v79 + 72);
  v23 = v19 - v14[2];
  v70 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v73 = v22;
  (*(v9 + 16))(v11, a1, v78);
  v24 = dispatch thunk of Sequence._copyContents(initializing:)();
  (*(v9 + 8))(a1, v21);
  if (v24 < v17)
  {
    goto LABEL_16;
  }

  if (v24 >= 1)
  {
    v25 = v14[2];
    v26 = __OFADD__(v25, v24);
    v27 = v25 + v24;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v14[2] = v27;
  }

  if (v24 != v23)
  {
    v28 = &unk_101193B10;
    v29 = &unk_100ED1460;
    v30 = v80;
    goto LABEL_14;
  }

LABEL_17:
  v11 = v14[2];
  v32 = *(v69 + 36);
  sub_100020674(&unk_10118C260, &unk_101181600, &unk_100EBD070, &protocol conformance descriptor for MusicItemCollection<A>);
  v33 = v80;
  dispatch thunk of Collection.endIndex.getter();
  v34 = *(v33 + v32);
  v66 = v32;
  if (v34 != v81[0])
  {
LABEL_20:
    v40 = dispatch thunk of Collection.subscript.read();
    v39 = v79;
    v37 = v75;
    v36 = v76;
    (*(v79 + 16))(v76);
    v40(v81, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v35 = 0;
    v38 = v72;
    goto LABEL_21;
  }

  v35 = 1;
  v37 = v75;
  v36 = v76;
  v38 = v72;
  v39 = v79;
LABEL_21:
  v41 = *(v39 + 56);
  v64 = v39 + 56;
  v65 = v41;
  v41(v36, v35, 1, v37);
  v42 = v36;
  v43 = v71;
  sub_1000089F8(v42, v71, &unk_1011846B0, &unk_100ECB630);
  v45 = *(v39 + 48);
  v44 = v39 + 48;
  v69 = v45;
  if (v45(v43, 1, v37) != 1)
  {
    v63 = (v3 + 32);
    v62 = (v3 + 16);
    v61 = (v3 + 8);
    v46 = v74;
    v79 = v44;
    do
    {
      sub_1000095E8(v43, &unk_1011846B0, &unk_100ECB630);
      v47 = v14[3];
      v48 = v47 >> 1;
      if ((v47 >> 1) < (v11 + 1))
      {
        v14 = sub_100499334((v47 > 1), (v11 + 1), 1, v14);
        v48 = v14[3] >> 1;
      }

      v49 = v63;
      sub_1000089F8(v76, v46, &unk_1011846B0, &unk_100ECB630);
      if ((v69)(v46, 1, v75) == 1)
      {
        v46 = v74;
        v50 = v75;
LABEL_30:
        sub_1000095E8(v46, &unk_1011846B0, &unk_100ECB630);
        v51 = v11;
      }

      else
      {
        v52 = *v49;
        if (v11 <= v48)
        {
          v51 = v48;
        }

        else
        {
          v51 = v11;
        }

        v46 = v74;
        v53 = v14 + v70 + v73 * v11;
        v50 = v75;
        v67 = *v49;
        v68 = v51;
        while (1)
        {
          v52(v38, v46, v50);
          if (v51 == v11)
          {
            break;
          }

          v58 = v76;
          sub_1000095E8(v76, &unk_1011846B0, &unk_100ECB630);
          v52(v53, v38, v50);
          v59 = v80;
          dispatch thunk of Collection.endIndex.getter();
          if (*(v59 + v66) == v81[0])
          {
            v55 = 1;
          }

          else
          {
            v54 = dispatch thunk of Collection.subscript.read();
            (*v62)(v58);
            v54(v81, 0);
            v50 = v75;
            dispatch thunk of Collection.formIndex(after:)();
            v55 = 0;
          }

          v65(v58, v55, 1, v50);
          v56 = v58;
          v46 = v74;
          sub_1000089F8(v56, v74, &unk_1011846B0, &unk_100ECB630);
          v57 = (v69)(v46, 1, v50);
          v38 = v72;
          v53 += v73;
          ++v11;
          v52 = v67;
          v51 = v68;
          if (v57 == 1)
          {
            goto LABEL_30;
          }
        }

        (*v61)(v38, v50);
        v11 = v51;
        v46 = v74;
      }

      v14[2] = v51;
      v43 = v71;
      sub_1000089F8(v76, v71, &unk_1011846B0, &unk_100ECB630);
    }

    while ((v69)(v43, 1, v50) != 1);
  }

  sub_1000095E8(v76, &unk_1011846B0, &unk_100ECB630);
  sub_1000095E8(v80, &unk_101193B10, &unk_100ED1460);
  v30 = v43;
  v28 = &unk_1011846B0;
  v29 = &unk_100ECB630;
LABEL_14:
  result = sub_1000095E8(v30, v28, v29);
  *v77 = v14;
  return result;
}

uint64_t sub_100124960(uint64_t a1)
{
  v75 = type metadata accessor for Album();
  v3 = *(v75 - 8);
  __chkstk_darwin();
  v72 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v74 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v60 - v6;
  __chkstk_darwin();
  v76 = &v60 - v7;
  v8 = sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v60 - v10;
  v69 = sub_10010FC20(&qword_1011815C8, &qword_100ED3AC0);
  __chkstk_darwin();
  v80 = &v60 - v12;
  sub_100020674(&unk_1011815D0, &qword_1011815C0, &unk_100EBD040, &protocol conformance descriptor for MusicItemCollection<A>);
  v13 = dispatch thunk of Sequence.underestimatedCount.getter();
  v77 = v1;
  v14 = *v1;
  v15 = *(*v1 + 16);
  v16 = v15 + v13;
  if (__OFADD__(v15, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v13;
  v78 = v8;
  v79 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v19 = v14[3] >> 1, v19 < v16))
  {
    if (v15 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v15;
    }

    v14 = sub_10049935C(isUniquelyReferenced_nonNull_native, v20, 1, v14);
    v19 = v14[3] >> 1;
  }

  v21 = v78;
  v22 = *(v79 + 72);
  v23 = v19 - v14[2];
  v70 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v73 = v22;
  (*(v9 + 16))(v11, a1, v78);
  v24 = dispatch thunk of Sequence._copyContents(initializing:)();
  (*(v9 + 8))(a1, v21);
  if (v24 < v17)
  {
    goto LABEL_16;
  }

  if (v24 >= 1)
  {
    v25 = v14[2];
    v26 = __OFADD__(v25, v24);
    v27 = v25 + v24;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v14[2] = v27;
  }

  if (v24 != v23)
  {
    v28 = &qword_1011815C8;
    v29 = &qword_100ED3AC0;
    v30 = v80;
    goto LABEL_14;
  }

LABEL_17:
  v11 = v14[2];
  v32 = *(v69 + 36);
  sub_100020674(&unk_10118C140, &qword_1011815C0, &unk_100EBD040, &protocol conformance descriptor for MusicItemCollection<A>);
  v33 = v80;
  dispatch thunk of Collection.endIndex.getter();
  v34 = *(v33 + v32);
  v66 = v32;
  if (v34 != v81[0])
  {
LABEL_20:
    v40 = dispatch thunk of Collection.subscript.read();
    v39 = v79;
    v37 = v75;
    v36 = v76;
    (*(v79 + 16))(v76);
    v40(v81, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v35 = 0;
    v38 = v72;
    goto LABEL_21;
  }

  v35 = 1;
  v37 = v75;
  v36 = v76;
  v38 = v72;
  v39 = v79;
LABEL_21:
  v41 = *(v39 + 56);
  v64 = v39 + 56;
  v65 = v41;
  v41(v36, v35, 1, v37);
  v42 = v36;
  v43 = v71;
  sub_1000089F8(v42, v71, &unk_101184730, &unk_100ECB920);
  v45 = *(v39 + 48);
  v44 = v39 + 48;
  v69 = v45;
  if (v45(v43, 1, v37) != 1)
  {
    v63 = (v3 + 32);
    v62 = (v3 + 16);
    v61 = (v3 + 8);
    v46 = v74;
    v79 = v44;
    do
    {
      sub_1000095E8(v43, &unk_101184730, &unk_100ECB920);
      v47 = v14[3];
      v48 = v47 >> 1;
      if ((v47 >> 1) < (v11 + 1))
      {
        v14 = sub_10049935C((v47 > 1), (v11 + 1), 1, v14);
        v48 = v14[3] >> 1;
      }

      v49 = v63;
      sub_1000089F8(v76, v46, &unk_101184730, &unk_100ECB920);
      if ((v69)(v46, 1, v75) == 1)
      {
        v46 = v74;
        v50 = v75;
LABEL_30:
        sub_1000095E8(v46, &unk_101184730, &unk_100ECB920);
        v51 = v11;
      }

      else
      {
        v52 = *v49;
        if (v11 <= v48)
        {
          v51 = v48;
        }

        else
        {
          v51 = v11;
        }

        v46 = v74;
        v53 = v14 + v70 + v73 * v11;
        v50 = v75;
        v67 = *v49;
        v68 = v51;
        while (1)
        {
          v52(v38, v46, v50);
          if (v51 == v11)
          {
            break;
          }

          v58 = v76;
          sub_1000095E8(v76, &unk_101184730, &unk_100ECB920);
          v52(v53, v38, v50);
          v59 = v80;
          dispatch thunk of Collection.endIndex.getter();
          if (*(v59 + v66) == v81[0])
          {
            v55 = 1;
          }

          else
          {
            v54 = dispatch thunk of Collection.subscript.read();
            (*v62)(v58);
            v54(v81, 0);
            v50 = v75;
            dispatch thunk of Collection.formIndex(after:)();
            v55 = 0;
          }

          v65(v58, v55, 1, v50);
          v56 = v58;
          v46 = v74;
          sub_1000089F8(v56, v74, &unk_101184730, &unk_100ECB920);
          v57 = (v69)(v46, 1, v50);
          v38 = v72;
          v53 += v73;
          ++v11;
          v52 = v67;
          v51 = v68;
          if (v57 == 1)
          {
            goto LABEL_30;
          }
        }

        (*v61)(v38, v50);
        v11 = v51;
        v46 = v74;
      }

      v14[2] = v51;
      v43 = v71;
      sub_1000089F8(v76, v71, &unk_101184730, &unk_100ECB920);
    }

    while ((v69)(v43, 1, v50) != 1);
  }

  sub_1000095E8(v76, &unk_101184730, &unk_100ECB920);
  sub_1000095E8(v80, &qword_1011815C8, &qword_100ED3AC0);
  v30 = v43;
  v28 = &unk_101184730;
  v29 = &unk_100ECB920;
LABEL_14:
  result = sub_1000095E8(v30, v28, v29);
  *v77 = v14;
  return result;
}

uint64_t sub_1001251E0(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1001270A4(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1001252D8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1004997E4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10010FC20(&unk_101181570, &unk_100EBD010);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1001253DC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_100499B64(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10010FC20(&qword_10119E600, &qword_100ECF0E0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1001254E4(uint64_t result)
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

  result = sub_100499CD0(result, v10, 1, v3);
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

void *sub_1001255D8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_10049A42C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1001256F4(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v8 + 32), (v7 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1001257F0(uint64_t result)
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

  result = sub_10049A65C(result, v10, 1, v3);
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

void *sub_1001258E8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_100056354(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10010FC20(&unk_1011815B0, &unk_100EBD030);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100125A18(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100125B5C(uint64_t result)
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

  result = sub_100498B7C(result, v10, 1, v3);
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

uint64_t sub_100125C50(uint64_t result)
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

  result = sub_1004990D0(result, v11, 1, v3);
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

double sub_100125D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v11 = &v18[-v10];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(v9, a1, v6);
  sub_10012B7A8(a2, v18);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = &protocol witness table for MainActor;
  (*(v7 + 32))(v16 + v14, v9, v6);
  sub_10012B828(v18, v16 + v15);
  *(v16 + ((v15 + 103) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_1001F4CB8(0, 0, v11, &unk_100EBCFD8, v16);

  return result;
}

uint64_t sub_100125F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100126004, v7, v6);
}

uint64_t sub_100126004()
{
  v1 = v0[3];
  v2 = v0[2];

  sub_10012A364(v2, v1);
  v3 = v0[1];

  return v3();
}

void sub_1001260A8(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = OBJC_IVAR____TtC5Music22ActivityViewController_defaultExcludedActivityTypes;
  sub_10010FC20(&qword_101181538, &unk_100ECF030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBCED0;
  *(v11 + 32) = UIActivityTypePrint;
  *(v11 + 40) = UIActivityTypeAssignToContact;
  *(v11 + 48) = UIActivityTypeAddToReadingList;
  *(v11 + 56) = UIActivityTypePostToFlickr;
  *(v11 + 64) = UIActivityTypePostToVimeo;
  *(v11 + 72) = UIActivityTypeOpenInIBooks;
  *&v7[v10] = v11;
  v12 = &v7[OBJC_IVAR____TtC5Music22ActivityViewController_recipientEmail];
  *v12 = a4;
  *(v12 + 1) = a5;
  v13 = &v7[OBJC_IVAR____TtC5Music22ActivityViewController_recipientPhoneNumber];
  *v13 = a6;
  *(v13 + 1) = a7;
  v14 = UIActivityTypePrint;
  v15 = UIActivityTypeAssignToContact;
  v16 = UIActivityTypeAddToReadingList;
  v17 = a1;
  v18 = UIActivityTypePostToFlickr;
  v19 = UIActivityTypePostToVimeo;
  v20 = UIActivityTypeOpenInIBooks;
  v21.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a1)
  {
    sub_100009F78(0, &unk_101183F50, UIActivity_ptr);

    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v22.super.isa = 0;
    v17 = _swiftEmptyArrayStorage;
  }

  v65.receiver = v7;
  v65.super_class = type metadata accessor for ActivityViewController();
  v23 = objc_msgSendSuper2(&v65, "initWithActivityItems:applicationActivities:", v21.super.isa, v22.super.isa);

  if (!(v17 >> 62))
  {
    v24 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_28:
    v45 = v23;
LABEL_29:

    v46 = OBJC_IVAR____TtC5Music22ActivityViewController_defaultExcludedActivityTypes;
    swift_beginAccess();
    v47 = *&v23[v46];

    if (a3)
    {
      sub_100123F44(a3);
    }

    type metadata accessor for ActivityType(0);
    v48 = v23;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v48 setExcludedActivityTypes:isa];

    v50 = 0;
    v51 = *(v47 + 16);
    while (1)
    {
      v52 = v50;
      if (v51 == v50)
      {
        goto LABEL_41;
      }

      if (v50 >= *(v47 + 16))
      {
        break;
      }

      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
      if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
      {

LABEL_41:

        [v48 setAllowsProminentActivity:v51 == v52];

        return;
      }

      ++v50;
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v58)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  if (!v24)
  {
    goto LABEL_28;
  }

LABEL_6:
  if (v24 >= 1)
  {
    v25 = OBJC_IVAR____TtC5Music22ActivityViewController_defaultExcludedActivityTypes;
    v26 = v17 & 0xC000000000000001;
    v27 = v23;
    v28 = 0;
    v62 = v17 & 0xC000000000000001;
    v64 = v17;
    while (1)
    {
      if (v26)
      {
        v32 = sub_1007E90FC(v28, v17);
      }

      else
      {
        v32 = *(v17 + 8 * v28 + 32);
      }

      v31 = v32;
      v33 = [(NSString *)v32 activityType];
      if (!v33)
      {
        goto LABEL_10;
      }

      v30 = v33;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;
      v37._countAndFlagsBits = v34;
      v37._object = v36;
      v38 = _findStringSwitchCase(cases:string:)(&off_101099418, v37);

      if (v38 > 1)
      {
        if (v38 == 2 || v38 == 3)
        {
LABEL_21:
          v39 = String._bridgeToObjectiveC()();
          goto LABEL_22;
        }
      }

      else
      {
        if (!v38)
        {
          goto LABEL_21;
        }

        if (v38 == 1)
        {
          v39 = UIActivityTypePostToFacebook;
LABEL_22:
          v40 = v39;
          swift_beginAccess();
          v41 = *&v23[v25];
          v29 = v40;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v23[v25] = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = sub_100498C88(0, v41[2] + 1, 1, v41);
            *&v23[v25] = v41;
          }

          v44 = v41[2];
          v43 = v41[3];
          if (v44 >= v43 >> 1)
          {
            v41 = sub_100498C88((v43 > 1), v44 + 1, 1, v41);
          }

          v41[2] = v44 + 1;
          v41[v44 + 4] = v29;
          *&v23[v25] = v41;
          swift_endAccess();

          v26 = v62;
          v17 = v64;
          goto LABEL_9;
        }
      }

      v29 = v30;
      v30 = v31;
LABEL_9:

      v31 = v30;
LABEL_10:
      ++v28;

      if (v24 == v28)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_43:
  __break(1u);
}