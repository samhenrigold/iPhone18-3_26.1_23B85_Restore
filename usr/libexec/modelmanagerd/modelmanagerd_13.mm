unint64_t sub_1001452C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v6 = a1;
  *&v26 = a2;
  *(&v26 + 1) = a3;
  *&v27 = a1;
  *(&v27 + 1) = _HashTable.UnsafeHandle._startIterator(bucket:)();
  *&v28 = v7;
  *(&v28 + 1) = v8;
  v29 = 0;
  _HashTable.BucketIterator.advance()();
  if (*(&v27 + 1))
  {
    v23 = a3;
    v9 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v25 = v6;
    while (1)
    {
      v34 = v26;
      v35 = v27;
      v36 = v28;
      v37 = v29;
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v11)
      {
LABEL_27:
        __break(1u);
        return result;
      }

      v12 = result;
      v13 = *(v24 + 8);
      v14 = type metadata accessor for UUID();
      v15 = *(v14 - 8);
      result = __chkstk_darwin(v14);
      v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v12 >= *(v13 + 16))
      {
        goto LABEL_25;
      }

      (*(v15 + 16))(v17, v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v12, v14);
      sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*(v15 + 8))(v17, v14);
      v19 = 1 << *a2;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_26;
      }

      v20 = (v19 - 1) & v18;
      if (v6 >= v9)
      {
        if (v20 < v9 || v6 < v20)
        {
          goto LABEL_19;
        }
      }

      else if (v20 < v9 && v6 < v20)
      {
        goto LABEL_19;
      }

      v30 = v26;
      v31 = v27;
      v32 = v28;
      v33 = v29;
      _HashTable.BucketIterator.currentValue.getter();
      v6 = v31;
      _HashTable.UnsafeHandle.subscript.setter();
      v25 = v6;
LABEL_19:
      _HashTable.BucketIterator.advance()();
      if (!*(&v27 + 1))
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }
    }
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

void sub_1001455F8(Swift::Int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v17)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v8 = a1;
    while (1)
    {
      v9 = _HashTable.BucketIterator.currentValue.getter();
      if (v10)
      {
LABEL_26:
        __break(1u);
        return;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v9 >= *(*(a4 + 8) + 16))
      {
        goto LABEL_24;
      }

      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);

      dispatch thunk of Hashable.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_25;
      }

      v13 = (v12 - 1) & v11;
      if (v8 >= v7)
      {
        if (v13 >= v7 && v8 >= v13)
        {
LABEL_18:
          _HashTable.BucketIterator.currentValue.getter();
          v8 = a1;
          _HashTable.UnsafeHandle.subscript.setter();
        }
      }

      else if (v13 >= v7 || v8 >= v13)
      {
        goto LABEL_18;
      }

      _HashTable.BucketIterator.advance()();
    }
  }

  _HashTable.UnsafeHandle.subscript.setter();
}

void sub_10014581C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = type metadata accessor for InferenceProviderDescriptor();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v63 - v15;
  v17 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v17 >= 1)
  {
    v64 = a3;
    v18 = *(a3 + 16);
    if ((v18 - v17) / 2 <= a1)
    {
      v23 = __OFSUB__(v18, a2);
      v31 = v18 - a2;
      if (v23)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v31 >= static _HashTable.maximumCapacity(forScale:)() / 3)
      {
        v45 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        *&v68 = a4;
        *(&v68 + 1) = a5;
        *&v69 = 0;
        *(&v69 + 1) = v45;
        *&v70 = v46;
        *(&v70 + 1) = v47;
        v71 = 0;
        do
        {
          v72 = v68;
          v73 = v69;
          v74 = v70;
          v75 = v71;
          v48 = _HashTable.BucketIterator.currentValue.getter();
          if ((v49 & 1) == 0 && v48 >= a2)
          {
            if (__OFSUB__(v48, v17))
            {
              goto LABEL_56;
            }

            _HashTable.BucketIterator.currentValue.setter();
          }

          _HashTable.BucketIterator.advance()();
        }

        while (v69);
      }

      else
      {
        sub_100140CBC(a2, v64, &type metadata accessor for InferenceProviderDescriptor);
        v67 = v35;
        if (v33 != v34 >> 1)
        {
          v50 = v33;
          v63 = v32;
          v64 = v34 >> 1;
          if (v33 >= (v34 >> 1))
          {
LABEL_66:
            __break(1u);
            return;
          }

          v52 = *(v11 + 16);
          v51 = v11 + 16;
          v65 = *(v51 + 56);
          v66 = v52;
          v53 = (v51 - 8);
          while (1)
          {
            (v66)(v14, &v67[v65 * v50], v10);
            sub_10005FAF0(&qword_1001BB6C0, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
            v54 = dispatch thunk of Hashable._rawHashValue(seed:)();
            (*v53)(v14, v10);
            v55 = 1 << *a4;
            v23 = __OFSUB__(v55, 1);
            v56 = v55 - 1;
            if (v23)
            {
              goto LABEL_57;
            }

            v57 = v56 & v54;
            v58 = _HashTable.UnsafeHandle._startIterator(bucket:)();
            *&v68 = a4;
            *(&v68 + 1) = a5;
            *&v69 = v57;
            *(&v69 + 1) = v58;
            *&v70 = v59;
            *(&v70 + 1) = v60;
            v71 = 0;
            while (*(&v69 + 1))
            {
              v72 = v68;
              v73 = v69;
              v74 = v70;
              v75 = v71;
              v61 = _HashTable.BucketIterator.currentValue.getter();
              if ((v62 & 1) == 0 && v61 == a2)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }

            if (__OFSUB__(a2, v17))
            {
              goto LABEL_58;
            }

            _HashTable.BucketIterator.currentValue.setter();
            v23 = __OFADD__(a2++, 1);
            if (v23)
            {
              goto LABEL_59;
            }

            if (++v50 == v64)
            {
              swift_unknownObjectRelease();
              return;
            }
          }
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (static _HashTable.maximumCapacity(forScale:)() / 3 <= a1)
      {
        v36 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        *&v68 = a4;
        *(&v68 + 1) = a5;
        *&v69 = 0;
        *(&v69 + 1) = v36;
        *&v70 = v37;
        *(&v70 + 1) = v38;
        v71 = 0;
        do
        {
          v72 = v68;
          v73 = v69;
          v74 = v70;
          v75 = v71;
          v39 = _HashTable.BucketIterator.currentValue.getter();
          if ((v40 & 1) == 0 && v39 < a1)
          {
            if (__OFADD__(v39, v17))
            {
              goto LABEL_55;
            }

            _HashTable.BucketIterator.currentValue.setter();
          }

          _HashTable.BucketIterator.advance()();
        }

        while (v69);
      }

      else
      {
        if (a1 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v18 < a1)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (a1)
        {
          v19 = *(v11 + 16);
          v66 = (v64 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
          v67 = v19;
          v65 = *(v11 + 72);

          v20 = 0;
          while (1)
          {
            (v67)(v16, &v66[v65 * v20], v10);
            sub_10005FAF0(&qword_1001BB6C0, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
            v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
            (*(v11 + 8))(v16, v10);
            v22 = 1 << *a4;
            v23 = __OFSUB__(v22, 1);
            v24 = v22 - 1;
            if (v23)
            {
              break;
            }

            v25 = v24 & v21;
            v26 = _HashTable.UnsafeHandle._startIterator(bucket:)();
            *&v68 = a4;
            *(&v68 + 1) = a5;
            *&v69 = v25;
            *(&v69 + 1) = v26;
            *&v70 = v27;
            *(&v70 + 1) = v28;
            v71 = 0;
            while (*(&v69 + 1))
            {
              v72 = v68;
              v73 = v69;
              v74 = v70;
              v75 = v71;
              v29 = _HashTable.BucketIterator.currentValue.getter();
              if ((v30 & 1) == 0 && v29 == v20)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }

            if (__OFADD__(v20, v17))
            {
              goto LABEL_54;
            }

            ++v20;
            _HashTable.BucketIterator.currentValue.setter();
            if (v20 == a1)
            {

              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

LABEL_29:
      v41 = a4[1];
      if (__OFSUB__(v41 >> 6, v17))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v42 = 1 << *a4;
      v23 = __OFSUB__(v42, 1);
      v43 = v42 - 1;
      if (v23)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v44 = (v43 & (((v41 >> 6) - v17) >> 63)) + (v41 >> 6) - v17;
      if (v44 < v43)
      {
        v43 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v44 - v43) << 6);
    }
  }
}

void sub_100145E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v4 >= 1)
  {
    v8 = *(a3 + 16);
    if ((v8 - v4) / 2 <= a1)
    {
      v13 = a2;
      if (__OFSUB__(v8, a2))
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if ((v8 - a2) >= static _HashTable.maximumCapacity(forScale:)() / 3)
      {
        _HashTable.UnsafeHandle._startIterator(bucket:)();
        v28 = _HashTable.BucketIterator.currentValue.getter();
        if ((v29 & 1) == 0 && v28 >= v13)
        {
          if (__OFSUB__(v28, v4))
          {
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        _HashTable.BucketIterator.advance()();
      }

      else
      {
        sub_100140D50(v13, a3);
        if (v14 != v15 >> 1)
        {
          v16 = v14;
          v17 = v15 >> 1;
          if (v14 >= (v15 >> 1))
          {
LABEL_63:
            __break(1u);
            return;
          }

          do
          {
            v18 = *a4;
            static Hasher._hash(seed:bytes:count:)();
            if (__OFSUB__(1 << v18, 1))
            {
              goto LABEL_54;
            }

            if (_HashTable.UnsafeHandle._startIterator(bucket:)())
            {
              while (1)
              {
                v19 = _HashTable.BucketIterator.currentValue.getter();
                if ((v20 & 1) == 0 && v19 == v13)
                {
                  break;
                }

                _HashTable.BucketIterator.advance()();
              }
            }

            if (__OFSUB__(v13, v4))
            {
              goto LABEL_55;
            }

            _HashTable.BucketIterator.currentValue.setter();
            v21 = __OFADD__(v13++, 1);
            if (v21)
            {
              goto LABEL_56;
            }
          }

          while (++v16 != v17);
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (static _HashTable.maximumCapacity(forScale:)() / 3 <= a1)
      {
        _HashTable.UnsafeHandle._startIterator(bucket:)();
        v22 = _HashTable.BucketIterator.currentValue.getter();
        if ((v23 & 1) == 0 && v22 < a1)
        {
          if (__OFADD__(v22, v4))
          {
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        _HashTable.BucketIterator.advance()();
      }

      else
      {
        if (a1 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v8 < a1)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (a1)
        {
          v9 = 0;
          while (1)
          {
            v10 = *a4;
            static Hasher._hash(seed:bytes:count:)();
            if (__OFSUB__(1 << v10, 1))
            {
              break;
            }

            if (_HashTable.UnsafeHandle._startIterator(bucket:)())
            {
              while (1)
              {
                v11 = _HashTable.BucketIterator.currentValue.getter();
                if ((v12 & 1) == 0 && v11 == v9)
                {
                  break;
                }

                _HashTable.BucketIterator.advance()();
              }
            }

            if (__OFADD__(v9, v4))
            {
              goto LABEL_51;
            }

            ++v9;
            _HashTable.BucketIterator.currentValue.setter();
            if (v9 == a1)
            {
              goto LABEL_38;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }
      }

LABEL_38:
      v24 = a4[1];
      if (__OFSUB__(v24 >> 6, v4))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v25 = 1 << *a4;
      v21 = __OFSUB__(v25, 1);
      v26 = v25 - 1;
      if (v21)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v27 = (v26 & (((v24 >> 6) - v4) >> 63)) + (v24 >> 6) - v4;
      if (v27 < v26)
      {
        v26 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v27 - v26) << 6);
    }
  }
}

void sub_100146214(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v63 - v15;
  v17 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v17 >= 1)
  {
    v64 = a3;
    v18 = *(a3 + 16);
    if ((v18 - v17) / 2 <= a1)
    {
      v23 = __OFSUB__(v18, a2);
      v31 = v18 - a2;
      if (v23)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v31 >= static _HashTable.maximumCapacity(forScale:)() / 3)
      {
        v45 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        *&v68 = a4;
        *(&v68 + 1) = a5;
        *&v69 = 0;
        *(&v69 + 1) = v45;
        *&v70 = v46;
        *(&v70 + 1) = v47;
        v71 = 0;
        do
        {
          v72 = v68;
          v73 = v69;
          v74 = v70;
          v75 = v71;
          v48 = _HashTable.BucketIterator.currentValue.getter();
          if ((v49 & 1) == 0 && v48 >= a2)
          {
            if (__OFSUB__(v48, v17))
            {
              goto LABEL_56;
            }

            _HashTable.BucketIterator.currentValue.setter();
          }

          _HashTable.BucketIterator.advance()();
        }

        while (v69);
      }

      else
      {
        v32 = sub_100140C18(a2, v64);
        v67 = v35;
        if (v33 != v34 >> 1)
        {
          v50 = v33;
          v63 = v32;
          v64 = v34 >> 1;
          if (v33 >= (v34 >> 1))
          {
LABEL_66:
            __break(1u);
            return;
          }

          v52 = *(v11 + 16);
          v51 = v11 + 16;
          v65 = *(v51 + 56);
          v66 = v52;
          v53 = (v51 - 8);
          while (1)
          {
            (v66)(v14, &v67[v65 * v50], v10);
            sub_1000082D4(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
            v54 = dispatch thunk of Hashable._rawHashValue(seed:)();
            (*v53)(v14, v10);
            v55 = 1 << *a4;
            v23 = __OFSUB__(v55, 1);
            v56 = v55 - 1;
            if (v23)
            {
              goto LABEL_57;
            }

            v57 = v56 & v54;
            v58 = _HashTable.UnsafeHandle._startIterator(bucket:)();
            *&v68 = a4;
            *(&v68 + 1) = a5;
            *&v69 = v57;
            *(&v69 + 1) = v58;
            *&v70 = v59;
            *(&v70 + 1) = v60;
            v71 = 0;
            while (*(&v69 + 1))
            {
              v72 = v68;
              v73 = v69;
              v74 = v70;
              v75 = v71;
              v61 = _HashTable.BucketIterator.currentValue.getter();
              if ((v62 & 1) == 0 && v61 == a2)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }

            if (__OFSUB__(a2, v17))
            {
              goto LABEL_58;
            }

            _HashTable.BucketIterator.currentValue.setter();
            v23 = __OFADD__(a2++, 1);
            if (v23)
            {
              goto LABEL_59;
            }

            if (++v50 == v64)
            {
              swift_unknownObjectRelease();
              return;
            }
          }
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (static _HashTable.maximumCapacity(forScale:)() / 3 <= a1)
      {
        v36 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        *&v68 = a4;
        *(&v68 + 1) = a5;
        *&v69 = 0;
        *(&v69 + 1) = v36;
        *&v70 = v37;
        *(&v70 + 1) = v38;
        v71 = 0;
        do
        {
          v72 = v68;
          v73 = v69;
          v74 = v70;
          v75 = v71;
          v39 = _HashTable.BucketIterator.currentValue.getter();
          if ((v40 & 1) == 0 && v39 < a1)
          {
            if (__OFADD__(v39, v17))
            {
              goto LABEL_55;
            }

            _HashTable.BucketIterator.currentValue.setter();
          }

          _HashTable.BucketIterator.advance()();
        }

        while (v69);
      }

      else
      {
        if (a1 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v18 < a1)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (a1)
        {
          v19 = *(v11 + 16);
          v66 = (v64 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
          v67 = v19;
          v65 = *(v11 + 72);

          v20 = 0;
          while (1)
          {
            (v67)(v16, &v66[v65 * v20], v10);
            sub_1000082D4(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
            v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
            (*(v11 + 8))(v16, v10);
            v22 = 1 << *a4;
            v23 = __OFSUB__(v22, 1);
            v24 = v22 - 1;
            if (v23)
            {
              break;
            }

            v25 = v24 & v21;
            v26 = _HashTable.UnsafeHandle._startIterator(bucket:)();
            *&v68 = a4;
            *(&v68 + 1) = a5;
            *&v69 = v25;
            *(&v69 + 1) = v26;
            *&v70 = v27;
            *(&v70 + 1) = v28;
            v71 = 0;
            while (*(&v69 + 1))
            {
              v72 = v68;
              v73 = v69;
              v74 = v70;
              v75 = v71;
              v29 = _HashTable.BucketIterator.currentValue.getter();
              if ((v30 & 1) == 0 && v29 == v20)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }

            if (__OFADD__(v20, v17))
            {
              goto LABEL_54;
            }

            ++v20;
            _HashTable.BucketIterator.currentValue.setter();
            if (v20 == a1)
            {

              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

LABEL_29:
      v41 = a4[1];
      if (__OFSUB__(v41 >> 6, v17))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v42 = 1 << *a4;
      v23 = __OFSUB__(v42, 1);
      v43 = v42 - 1;
      if (v23)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v44 = (v43 & (((v41 >> 6) - v17) >> 63)) + (v41 >> 6) - v17;
      if (v44 < v43)
      {
        v43 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v44 - v43) << 6);
    }
  }
}

void sub_1001467FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v5 >= 1)
  {
    v10 = *(a3 + 16);
    if ((v10 - v5) / 2 <= a1)
    {
      v31 = a2;
      v23 = __OFSUB__(v10, a2);
      v32 = v10 - a2;
      if (v23)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      if (v32 < static _HashTable.maximumCapacity(forScale:)() / 3)
      {
        sub_100140CBC(v31, a3, &type metadata accessor for UUID);
        v34 = v33;
        v73 = v35;
        v37 = v36;
        v39 = v38;
        v40 = type metadata accessor for UUID();
        __chkstk_darwin(v40);
        v43 = v68 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v37 == v39 >> 1)
        {
          swift_unknownObjectRelease();
          return;
        }

        v68[1] = v68;
        v69 = v34;
        v70 = v39 >> 1;
        if (v37 >= (v39 >> 1))
        {
          goto LABEL_62;
        }

        v57 = *(v41 + 16);
        v56 = v41 + 16;
        v71 = *(v56 + 56);
        v72 = v57;
        v58 = (v56 - 8);
        while (1)
        {
          (v72)(v43, &v73[v71 * v37], v40);
          sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
          v59 = dispatch thunk of Hashable._rawHashValue(seed:)();
          (*v58)(v43, v40);
          v60 = 1 << *a4;
          v23 = __OFSUB__(v60, 1);
          v61 = v60 - 1;
          if (v23)
          {
            goto LABEL_53;
          }

          v62 = v61 & v59;
          v63 = _HashTable.UnsafeHandle._startIterator(bucket:)();
          *&v74 = a4;
          *(&v74 + 1) = a5;
          *&v75 = v62;
          *(&v75 + 1) = v63;
          *&v76 = v64;
          *(&v76 + 1) = v65;
          v77 = 0;
          while (*(&v75 + 1))
          {
            v78 = v74;
            v79 = v75;
            v80 = v76;
            v81 = v77;
            v66 = _HashTable.BucketIterator.currentValue.getter();
            if ((v67 & 1) == 0 && v66 == v31)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }

          if (__OFSUB__(v31, v5))
          {
            goto LABEL_54;
          }

          _HashTable.BucketIterator.currentValue.setter();
          v23 = __OFADD__(v31++, 1);
          if (v23)
          {
            goto LABEL_55;
          }

          if (++v37 == v70)
          {
            swift_unknownObjectRelease();
            return;
          }
        }
      }

      *&v74 = a4;
      *(&v74 + 1) = a5;
      *&v75 = 0;
      *(&v75 + 1) = _HashTable.UnsafeHandle._startIterator(bucket:)();
      *&v76 = v52;
      *(&v76 + 1) = v53;
      v77 = 0;
      v78 = v74;
      v79 = v75;
      v80 = v76;
      v81 = 0;
      v54 = _HashTable.BucketIterator.currentValue.getter();
      if ((v55 & 1) == 0 && v54 >= v31)
      {
        if (__OFSUB__(v54, v5))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
      return;
    }

    if (static _HashTable.maximumCapacity(forScale:)() / 3 <= a1)
    {
      *&v74 = a4;
      *(&v74 + 1) = a5;
      *&v75 = 0;
      *(&v75 + 1) = _HashTable.UnsafeHandle._startIterator(bucket:)();
      *&v76 = v44;
      *(&v76 + 1) = v45;
      v77 = 0;
      v78 = v74;
      v79 = v75;
      v80 = v76;
      v81 = 0;
      v46 = _HashTable.BucketIterator.currentValue.getter();
      if ((v47 & 1) == 0 && v46 < a1)
      {
        if (__OFADD__(v46, v5))
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
    }

    else
    {
      if (a1 < 0)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (v10 < a1)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return;
      }

      v11 = type metadata accessor for UUID();
      v12 = *(v11 - 8);
      __chkstk_darwin(v11);
      v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (a1)
      {
        v69 = v13;
        v70 = a3;
        v17 = *(v12 + 16);
        v16 = v12 + 16;
        v72 = (a3 + ((*(v16 + 64) + 32) & ~*(v16 + 64)));
        v73 = v17;
        v71 = *(v16 + 56);
        v18 = (v16 - 8);

        v19 = 0;
        while (1)
        {
          v20 = v16;
          (v73)(v15, &v72[v71 * v19], v11);
          sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
          v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
          (*v18)(v15, v11);
          v22 = 1 << *a4;
          v23 = __OFSUB__(v22, 1);
          v24 = v22 - 1;
          if (v23)
          {
            break;
          }

          v25 = v24 & v21;
          v26 = _HashTable.UnsafeHandle._startIterator(bucket:)();
          *&v74 = a4;
          *(&v74 + 1) = a5;
          *&v75 = v25;
          *(&v75 + 1) = v26;
          *&v76 = v27;
          *(&v76 + 1) = v28;
          v77 = 0;
          while (*(&v75 + 1))
          {
            v78 = v74;
            v79 = v75;
            v80 = v76;
            v81 = v77;
            v29 = _HashTable.BucketIterator.currentValue.getter();
            if ((v30 & 1) == 0 && v29 == v19)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }

          if (__OFADD__(v19, v5))
          {
            goto LABEL_50;
          }

          ++v19;
          _HashTable.BucketIterator.currentValue.setter();
          v16 = v20;
          if (v19 == a1)
          {

            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

LABEL_27:
    v48 = a4[1];
    if (__OFSUB__(v48 >> 6, v5))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v49 = 1 << *a4;
    v23 = __OFSUB__(v49, 1);
    v50 = v49 - 1;
    if (v23)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v51 = (v50 & (((v48 >> 6) - v5) >> 63)) + (v48 >> 6) - v5;
    if (v51 < v50)
    {
      v50 = 0;
    }

    a4[1] = a4[1] & 0x3F | ((v51 - v50) << 6);
  }
}

void sub_100146E00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_57;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if ((v9 - v5) / 2 <= a1)
    {
      v13 = a2;
      v14 = __OFSUB__(v9, a2);
      v15 = v9 - a2;
      if (v14)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v15 >= static _HashTable.maximumCapacity(forScale:)() / 3)
      {
        _HashTable.UnsafeHandle._startIterator(bucket:)();
        v24 = _HashTable.BucketIterator.currentValue.getter();
        if ((v25 & 1) == 0 && v24 >= v13)
        {
          if (__OFSUB__(v24, v5))
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        _HashTable.BucketIterator.advance()();
        return;
      }

      sub_100140D50(v13, a3);
      v17 = v16;
      v19 = v18 >> 1;
      while (v17 != v19)
      {
        if (v17 >= v19)
        {
          goto LABEL_51;
        }

        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);

        dispatch thunk of Hashable.hash(into:)();
        Hasher._finalize()();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v20 = _HashTable.BucketIterator.currentValue.getter();
            if ((v21 & 1) == 0 && v20 == v13)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        if (__OFSUB__(v13, v5))
        {
          goto LABEL_53;
        }

        _HashTable.BucketIterator.currentValue.setter();

        v14 = __OFADD__(v13++, 1);
        if (v14)
        {
          goto LABEL_54;
        }

        ++v17;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (static _HashTable.maximumCapacity(forScale:)() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v9 < a1)
        {
LABEL_62:
          __break(1u);
          return;
        }

        for (i = 0; ; ++i)
        {
          if (i == a1)
          {

            goto LABEL_40;
          }

          Hasher.init(_seed:)();
          type metadata accessor for UUID();
          sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);

          dispatch thunk of Hashable.hash(into:)();
          Hasher._finalize()();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (_HashTable.UnsafeHandle._startIterator(bucket:)())
          {
            while (1)
            {
              v11 = _HashTable.BucketIterator.currentValue.getter();
              if ((v12 & 1) == 0 && v11 == i)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }
          }

          if (__OFADD__(i, v5))
          {
            goto LABEL_50;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v22 = _HashTable.BucketIterator.currentValue.getter();
      if ((v23 & 1) == 0 && v22 < a1)
      {
        if (__OFADD__(v22, v5))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
LABEL_40:
      v26 = a4[1];
      if (__OFSUB__(v26 >> 6, v5))
      {
        goto LABEL_59;
      }

      v27 = 1 << *a4;
      v14 = __OFSUB__(v27, 1);
      v28 = v27 - 1;
      if (v14)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v29 = (v28 & (((v26 >> 6) - v5) >> 63)) + (v26 >> 6) - v5;
      if (v29 < v28)
      {
        v28 = 0;
      }

      a4[1] = a4[1] & 0x3FLL | ((v29 - v28) << 6);
    }
  }
}

Swift::Int sub_100147318(uint64_t (*a1)(int *, int *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001472C8(v5);
    v5 = v6;
  }

  result = sub_10014739C(a1, a2);
  *v2 = v5;
  return result;
}

Swift::Int sub_10014739C(uint64_t (*a1)(int *, int *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10[0] = (v9 + 4);
      v10[1] = v8;
      sub_100147568(v10, v11, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1001474A0(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1001474A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(int *, int *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v9 = *v4;
    v10 = *v4 + 4 * a3 - 4;
    v11 = result - a3;
LABEL_4:
    v12 = *(v9 + 4 * v7);
    v13 = v11;
    v14 = v10;
    while (1)
    {
      v18 = v12;
      v17 = *v14;
      result = a4(&v18, &v17);
      if (v5)
      {
        break;
      }

      if (result)
      {
        if (!v9)
        {
          __break(1u);
          return result;
        }

        v15 = *v14;
        v12 = v14[1];
        *v14 = v12;
        v14[1] = v15;
        --v14;
        if (!__CFADD__(v13++, 1))
        {
          continue;
        }
      }

      ++v7;
      v10 += 4;
      --v11;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_100147568(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(int *, int *), uint64_t a5, uint64_t a6)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_91:
    v95 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_93;
    }

    goto LABEL_132;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      goto LABEL_22;
    }

    v12 = v9;
    v13 = *a3;
    v14 = v8 + 1;
    v99 = *(*a3 + 4 * v11);
    v98 = *(v13 + 4 * v8);
    v15 = a4(&v99, &v98);
    if (v6)
    {
      goto LABEL_101;
    }

    v16 = v15;
    v17 = v10;
    v18 = (v13 + 4 * v10 + 8);
    v95 = v17;
    v19 = v17 + 2;
    v9 = v12;
    v11 = v14;
    do
    {
      v20 = v11;
      v21 = v19;
      if (v11 + 1 >= v7)
      {
        v11 = v7;
        if ((v16 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_9:
        v10 = v95;
        if (v11 >= v95)
        {
          if (v95 <= v20)
          {
            if (v7 >= v21)
            {
              v24 = v21;
            }

            else
            {
              v24 = v7;
            }

            v25 = v24 - 1;
            v26 = v95;
            do
            {
              if (v26 != v25)
              {
                v27 = *a3;
                if (!*a3)
                {
                  goto LABEL_130;
                }

                v28 = *(v27 + 4 * v26);
                *(v27 + 4 * v26) = *(v27 + 4 * v25);
                *(v27 + 4 * v25) = v28;
              }

              v29 = ++v26 < v25--;
            }

            while (v29);
          }

          goto LABEL_22;
        }

        goto LABEL_126;
      }

      v22 = *(v18 - 1);
      v99 = *v18;
      v98 = v22;
      v23 = a4(&v99, &v98);
      ++v18;
      ++v11;
      v19 = (v21 + 1);
    }

    while (((v16 ^ v23) & 1) == 0);
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_21:
    v10 = v95;
LABEL_22:
    v30 = a3[1];
    if (v11 < v30)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_122;
      }

      if (v11 - v10 < a6)
      {
        v31 = v10 + a6;
        if (__OFADD__(v10, a6))
        {
          __break(1u);
        }

        else
        {
          if (v31 >= v30)
          {
            v31 = a3[1];
          }

          if (v31 >= v10)
          {
            if (v11 != v31)
            {
              v73 = *a3;
              v74 = *a3 + 4 * v11 - 4;
              v94 = v31;
              v95 = v10;
              v75 = (v10 - v11);
              do
              {
                v76 = *(v73 + 4 * v11);
                v77 = v75;
                v78 = v74;
                do
                {
                  v99 = v76;
                  v98 = *v78;
                  v79 = a4(&v99, &v98);
                  if (v6)
                  {
                    goto LABEL_101;
                  }

                  if ((v79 & 1) == 0)
                  {
                    break;
                  }

                  if (!v73)
                  {
                    goto LABEL_129;
                  }

                  v80 = *v78;
                  v76 = v78[1];
                  *v78 = v76;
                  v78[1] = v80;
                  --v78;
                }

                while (!__CFADD__(v77++, 1));
                ++v11;
                v74 += 4;
                --v75;
              }

              while (v11 != v94);
              v11 = v94;
              v10 = v95;
            }

            goto LABEL_30;
          }
        }

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
        goto LABEL_131;
      }
    }

LABEL_30:
    if (v11 < v10)
    {
      goto LABEL_121;
    }

    v93 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10013FB2C();
      v9 = v82;
    }

    v32 = *(v9 + 16);
    v33 = v32 + 1;
    if (v32 >= *(v9 + 24) >> 1)
    {
      sub_10013FB2C();
      v9 = v83;
    }

    *(v9 + 16) = v33;
    v34 = v9 + 32;
    v35 = (v9 + 32 + 16 * v32);
    *v35 = v10;
    v35[1] = v93;
    v95 = *a1;
    if (!*a1)
    {
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      return;
    }

    if (v32)
    {
      break;
    }

LABEL_79:
    v7 = a3[1];
    v8 = v93;
    if (v93 >= v7)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v36 = v33 - 1;
    v37 = (v34 + 16 * (v33 - 1));
    v38 = (v9 + 16 * v33);
    if (v33 >= 4)
    {
      v43 = v34 + 16 * v33;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_109;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_110;
      }

      v50 = v38[1];
      v51 = v50 - *v38;
      if (__OFSUB__(v50, *v38))
      {
        goto LABEL_112;
      }

      v49 = __OFADD__(v41, v51);
      v52 = v41 + v51;
      if (v49)
      {
        goto LABEL_115;
      }

      if (v52 >= v46)
      {
        v66 = *v37;
        v65 = v37[1];
        v49 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v49)
        {
          goto LABEL_120;
        }

        if (v41 < v67)
        {
          v36 = v33 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_50;
    }

    if (v33 == 3)
    {
      v39 = *(v9 + 32);
      v40 = *(v9 + 40);
      v49 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      v42 = v49;
LABEL_50:
      if (v42)
      {
        goto LABEL_111;
      }

      v54 = *v38;
      v53 = v38[1];
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_114;
      }

      v58 = v37[1];
      v59 = v58 - *v37;
      if (__OFSUB__(v58, *v37))
      {
        goto LABEL_117;
      }

      if (__OFADD__(v56, v59))
      {
        goto LABEL_119;
      }

      if (v56 + v59 >= v41)
      {
        if (v41 < v59)
        {
          v36 = v33 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_65;
    }

    if (v33 < 2)
    {
      goto LABEL_113;
    }

    v61 = *v38;
    v60 = v38[1];
    v49 = __OFSUB__(v60, v61);
    v56 = v60 - v61;
    v57 = v49;
LABEL_65:
    if (v57)
    {
      goto LABEL_116;
    }

    v63 = *v37;
    v62 = v37[1];
    v49 = __OFSUB__(v62, v63);
    v64 = v62 - v63;
    if (v49)
    {
      goto LABEL_118;
    }

    if (v64 < v56)
    {
      goto LABEL_79;
    }

LABEL_72:
    if (v36 - 1 >= v33)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_127;
    }

    v68 = (v34 + 16 * (v36 - 1));
    v69 = *v68;
    v70 = (v34 + 16 * v36);
    v71 = v70[1];
    sub_100147B6C((*a3 + 4 * *v68), (*a3 + 4 * *v70), (*a3 + 4 * v71), v95, a4);
    if (v6)
    {
      goto LABEL_101;
    }

    if (v71 < v69)
    {
      goto LABEL_103;
    }

    v72 = v9;
    v9 = *(v9 + 16);
    if (v36 > v9)
    {
      goto LABEL_104;
    }

    *v68 = v69;
    v68[1] = v71;
    if (v36 >= v9)
    {
      goto LABEL_105;
    }

    v33 = v9 - 1;
    memmove((v34 + 16 * v36), v70 + 2, 16 * (v9 - 1 - v36));
    *(v72 + 16) = v9 - 1;
    v29 = v9 > 2;
    v9 = v72;
    if (!v29)
    {
      goto LABEL_79;
    }
  }

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
LABEL_122:
  __break(1u);
LABEL_123:
  v9 = sub_100147DF0(v9);
LABEL_93:
  v84 = (v9 + 16);
  v85 = *(v9 + 16);
  while (v85 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_128;
    }

    v86 = v9;
    v87 = (v9 + 16 * v85);
    v88 = *v87;
    v89 = &v84[2 * v85];
    v9 = v89[1];
    sub_100147B6C((*a3 + 4 * *v87), (*a3 + 4 * *v89), (*a3 + 4 * v9), v95, a4);
    if (v6)
    {
      break;
    }

    if (v9 < v88)
    {
      goto LABEL_106;
    }

    if (v85 - 2 >= *v84)
    {
      goto LABEL_107;
    }

    *v87 = v88;
    v87[1] = v9;
    v90 = *v84 - v85;
    if (*v84 < v85)
    {
      goto LABEL_108;
    }

    v85 = *v84 - 1;
    memmove(v89, v89 + 2, 16 * v90);
    *v84 = v85;
    v9 = v86;
  }

LABEL_101:
}

uint64_t sub_100147B6C(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(int *, int *))
{
  v7 = a4;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 4;
  v12 = (a3 - a2) / 4;
  if (v10 >= v12)
  {
    sub_1000708FC(a2, (a3 - a2) / 4, a4);
    v13 = &v7[4 * v12];
    v19 = -v7;
    v20 = a3;
    v43 = -v7;
LABEL_15:
    v21 = v8 - 4;
    v22 = v20 - 4;
    for (i = &v13[v19]; ; i -= 4)
    {
      if (v13 <= v7 || v8 <= v9)
      {
LABEL_29:
        v34 = (v13 - v7) / 4;
        v35 = v8 < v7 || v8 >= &v7[4 * v34];
        if (v35 || v8 != v7)
        {
          v36 = 4 * v34;
          v37 = v8;
          goto LABEL_41;
        }

        return 1;
      }

      v25 = v8;
      v26 = v22;
      v27 = v7;
      v28 = v13;
      v29 = *(v13 - 1);
      v13 -= 4;
      v30 = v21;
      v45 = *v21;
      v46 = v29;
      v31 = a5(&v46, &v45);
      if (v5)
      {
        break;
      }

      v20 = v26;
      v32 = v26 + 4;
      if (v31)
      {
        v33 = v30;
        v8 = v30;
        v19 = v43;
        v7 = v27;
        v13 = v28;
        if (v32 != v25)
        {
          *v20 = *v33;
          v8 = v33;
        }

        goto LABEL_15;
      }

      v21 = v30;
      if (v28 != v32)
      {
        *v26 = *v13;
      }

      v22 = v26 - 4;
      v7 = v27;
      v8 = v25;
    }

    v41 = v25 < v27 || v25 >= &v27[4 * (i / 4)];
    if (v41 || v25 != v27)
    {
      v36 = 4 * (i / 4);
      v37 = v25;
      v40 = v27;
      goto LABEL_48;
    }
  }

  else
  {
    sub_1000708FC(a1, (a2 - a1) / 4, a4);
    v13 = &v7[4 * v10];
    v14 = a3;
    while (1)
    {
      if (v7 >= v13 || v8 >= v14)
      {
        v8 = v9;
        goto LABEL_29;
      }

      v46 = *v8;
      v45 = *v7;
      v16 = a5(&v46, &v45);
      if (v5)
      {
        break;
      }

      if (v16)
      {
        v17 = v8;
        v18 = v9 == v8;
        v8 += 4;
      }

      else
      {
        v17 = v7;
        v18 = v9 == v7;
        v7 += 4;
      }

      v14 = a3;
      if (!v18)
      {
        *v9 = *v17;
      }

      v9 += 4;
    }

    v38 = (v13 - v7) / 4;
    v39 = v9 < v7 || v9 >= &v7[4 * v38];
    if (v39 || v9 != v7)
    {
      v36 = 4 * v38;
      v37 = v9;
LABEL_41:
      v40 = v7;
LABEL_48:
      memmove(v37, v40, v36);
    }
  }

  return 1;
}

char *sub_100147E04(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_100147E30(char *result, int64_t a2, char a3, char *a4)
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
    sub_100065020(&qword_1001BDBD0, &qword_100174140);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_100147F30(int8x8_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int8x8_t *a6, uint64_t a7)
{
  if (a4)
  {
    if (a1 && a2)
    {
      a3 = 0;
      v10 = 8 * a2;
      v11 = a1;
      while (1)
      {
        v12 = vcnt_s8(*v11);
        v12.i16[0] = vaddlv_u8(v12);
        v13 = __OFADD__(a3, v12.u32[0]);
        a3 += v12.u32[0];
        if (v13)
        {
          break;
        }

        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_11:
    sub_100140DC4(_swiftEmptyArrayStorage, sub_100149058);
    sub_1001484C4(a5, 0, sub_100142420);

    return;
  }

LABEL_7:
  if (!a3)
  {
    goto LABEL_11;
  }

  if (a3 != *(a7 + 16))
  {
    v15 = a3 + a5;
    if (!__OFADD__(a3, a5))
    {
      v20 = sub_100140DC4(_swiftEmptyArrayStorage, sub_100149058);
      sub_1001484C4(v15, 0, sub_100142420);
      v16 = 0;
      while (1)
      {
        for (i = v16; ; i = 0)
        {
          v22 = _UnsafeBitSet.Iterator.next()();
          if (v22.is_nil)
          {

            return;
          }

          if ((v22.value & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          if (v22.value >= *(a7 + 16))
          {
            goto LABEL_42;
          }

          swift_retain_n();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v18 = v20[2];
          if (i)
          {
            break;
          }

          if (v18 > 0xF)
          {
            goto LABEL_30;
          }
        }

        swift_beginAccess();
        if (static _HashTable.maximumCapacity(forScale:)() < v18)
        {
          v16 = *(i + 24) & 0x3FLL;
          if (v18 > 0xF || v16)
          {
LABEL_30:
            static _HashTable.scale(forCapacity:)();
            v16 = sub_100141B14(v20);
          }

          continue;
        }

        if ((swift_isUniquelyReferenced_native() & 1) == 0)
        {
          if (!v16)
          {
            goto LABEL_49;
          }

          v19 = _HashTable.copy()();

          v16 = v19;
        }

        if (!v16)
        {
          goto LABEL_48;
        }

        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);

        dispatch thunk of Hashable.hash(into:)();
        Hasher._finalize()();
        if (__OFSUB__(1 << *(v16 + 16), 1))
        {
          goto LABEL_47;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        _HashTable.BucketIterator.currentValue.setter();
      }
    }

    goto LABEL_44;
  }

  if (a6)
  {
    swift_beginAccess();
    v14 = static _HashTable.maximumCapacity(forScale:)();
  }

  else
  {
    v14 = 15;
  }

  if (!__OFSUB__(v14, a3))
  {
    if (v14 - a3 >= a5)
    {
      return;
    }

    if (!__OFADD__(a3, a5))
    {
      sub_1001484C4(a3 + a5, 0, sub_100142420);
      return;
    }

    goto LABEL_46;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

void sub_100148380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    goto LABEL_23;
  }

  sub_100053BF8();
  sub_10013F948(v7, v8);
  v9 = *v4;
  if (*v4)
  {
    sub_100004CBC();
    swift_beginAccess();
    v10 = *(v9 + 16) & 0x3FLL;
  }

  else
  {
    v10 = 0;
  }

  v11 = static _HashTable.scale(forCapacity:)();
  v12 = v11;
  if (v5)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v9 && (v5 & 1) == 0)
  {
    sub_100004CBC();
    swift_beginAccess();
    v13 = *(v9 + 24) & 0x3FLL;
  }

  if (v10 < v12)
  {
    v14 = v12;
LABEL_16:
    sub_100141A44(v14, v13, a4, sub_100141A98);
    return;
  }

  v14 = sub_100028228();
  if (v14 <= v12)
  {
    v14 = v12;
  }

  if (v14 < v10)
  {
    goto LABEL_16;
  }

  sub_100141958();
  v22 = *v4;
  if (!v22)
  {
    if (!v13)
    {
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  sub_10014B4D8(v15, v16, v17, v18, v19, v20, v21);
  if ((*(v22 + 24) & 0x3FLL) != v13)
  {
    *(v22 + 24) = *(v22 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }
}

void sub_1001484C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    goto LABEL_23;
  }

  sub_100053BF8();
  specialized ContiguousArray.reserveCapacity(_:)();
  v6 = *v3;
  if (*v3)
  {
    sub_100004CBC();
    swift_beginAccess();
    v7 = *(v6 + 16) & 0x3FLL;
  }

  else
  {
    v7 = 0;
  }

  v8 = static _HashTable.scale(forCapacity:)();
  v9 = v8;
  if (v4)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v6 && (v4 & 1) == 0)
  {
    sub_100004CBC();
    swift_beginAccess();
    v10 = *(v6 + 24) & 0x3FLL;
  }

  if (v7 < v9)
  {
    v11 = v9;
LABEL_16:
    sub_100141A44(v11, v10, a3, sub_100141B14);
    return;
  }

  v11 = sub_100028228();
  if (v11 <= v9)
  {
    v11 = v9;
  }

  if (v11 < v7)
  {
    goto LABEL_16;
  }

  sub_100141958();
  v19 = *v3;
  if (!v19)
  {
    if (!v10)
    {
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  sub_10014B4D8(v12, v13, v14, v15, v16, v17, v18);
  if ((*(v19 + 24) & 0x3FLL) != v10)
  {
    *(v19 + 24) = *(v19 + 24) & 0xFFFFFFFFFFFFFFC0 | v10 & 0x3F;
  }
}

void sub_100148604()
{
  sub_1000055B0();
  v1 = v0;
  v2 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v4 = v3;
  sub_100004B1C();
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  sub_100065020(&qword_1001BDC50, &qword_1001742E8);
  sub_100002BDC();
  v33 = v9;
  v34 = v8;
  sub_100004B1C();
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = sub_100140DC4(_swiftEmptyArrayStorage, sub_100148ED4);
  v38 = 0;
  v39 = _swiftEmptyArrayStorage;
  v37 = v13;
  sub_100148380(*(v1 + 16), 0, sub_100070A50, sub_100141B90);
  specialized ContiguousArray.reserveCapacity(_:)();
  v14 = 0;
  v15 = *(v1 + 16);
  v35 = v4;
  v36 = v15;
  v31 = (v4 + 8);
  v32 = v4 + 32;
  while (1)
  {
    if (v36 == v14)
    {

      sub_100002EEC();
      return;
    }

    if (v14 >= *(v1 + 16))
    {
      break;
    }

    sub_10000657C();
    v16 = v1;
    sub_10001E72C(v1 + v17 + *(v18 + 72) * v14, v12, &qword_1001BDC50, &qword_1001742E8);
    v19 = v35;
    v20 = v2;
    (*(v35 + 32))(v7, v12, v2);
    v21 = v38;
    v22 = v39;
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = v39[2];
    if (v38)
    {

      sub_1001429AC(v7, v22 + v23, v24, (v21 + 16), v21 + 32);
      v26 = v25;
      v28 = v27;

      if ((v26 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_100142698(v7, v39 + v23, v39[2]);
      if ((v29 & 1) == 0)
      {
        goto LABEL_12;
      }

      v28 = 0;
    }

    v1 = v16;
    sub_100140F44(v7, v28);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    sub_100053C38();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();

    v2 = v20;
    (*v31)(v7, v20);
    ++v14;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_100148910(uint64_t a1)
{
  v2 = type metadata accessor for ClientData();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v42 - v7;
  v50 = sub_100065020(&qword_1001BDBE0, &unk_100174150);
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = (&v42 - v9);
  v57 = 0;
  v58 = _swiftEmptyArrayStorage;
  sub_100148380(*(a1 + 16), 0, sub_100070F50, sub_100142184);
  v56 = _swiftEmptyArrayStorage;
  sub_100070F08();
  v10 = 0;
  v11 = v56;
  v51 = *(a1 + 16);
  v12 = (v3 + 32);
  v43 = (v3 + 16);
  v46 = v3;
  v42 = v3 + 8;
  v44 = (v3 + 32);
  v47 = a1;
  v45 = v6;
  while (1)
  {
    if (v10 == v51)
    {

      return;
    }

    if (v10 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v13 = v48;
    sub_10001E72C(a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v10, v48, &qword_1001BDBE0, &unk_100174150);
    v14 = v8;
    v15 = *v13;
    v16 = *v12;
    v17 = v2;
    v18 = v14;
    v19 = v17;
    (*v12)(v14);
    v20 = v57;
    v21 = (v58 + 4);
    if (!v57)
    {
      v35 = v58[2];
      while (v35)
      {
        v36 = *v21++;
        --v35;
        if (v36 == v15)
        {
          goto LABEL_21;
        }
      }

      v32 = 0;
      goto LABEL_15;
    }

    v22 = v57 + 16;
    v23 = *(v57 + 16);
    v24 = static Hasher._hash(seed:bytes:count:)();
    v25 = (1 << v23) - 1;
    if (__OFSUB__(1 << v23, 1))
    {
      goto LABEL_20;
    }

    v26 = v20 + 32;
    v27 = v25 & v24;
    v28 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    *&v63 = v22;
    *(&v63 + 1) = v26;
    *&v64 = v27;
    *(&v64 + 1) = v28;
    *&v65 = v29;
    *(&v65 + 1) = v30;
    v66 = 0;
    v31 = _HashTable.BucketIterator.currentValue.getter();
    v32 = v64;
    v52 = v63;
    v53 = v64;
    v54 = v65;
    v55 = v66;
    if ((v33 & 1) == 0)
    {
      break;
    }

LABEL_15:
    sub_100141688(v15, v32);
    v37 = v45;
    v8 = v18;
    v38 = v18;
    v2 = v19;
    (*v43)(v45, v38, v19);
    v56 = v11;
    v39 = v11[2];
    if (v39 >= v11[3] >> 1)
    {
      sub_100070F08();
    }

    ++v10;
    v40 = v46;
    (*(v46 + 8))(v8, v19);
    v11 = v56;
    v56[2] = v39 + 1;
    v41 = v11 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39;
    v12 = v44;
    (v16)(v41, v37, v19);
    a1 = v47;
  }

  while (v21[v31] != v15)
  {
    _HashTable.BucketIterator.advance()();
    v59 = v52;
    v60 = v53;
    v61 = v54;
    v62 = v55;
    v32 = v53;
    v31 = _HashTable.BucketIterator.currentValue.getter();
    if (v34)
    {
      goto LABEL_15;
    }
  }

LABEL_21:
  __break(1u);
}

void sub_100148DC4(int8x8_t **a1, int8x8_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v8 = 0;
  v9 = *(a3 + 16);
  while (v9 != v8)
  {
    v15 = *(a3 + 8 * v8 + 32);

    v10 = a4(&v15);

    if (v4)
    {
      return;
    }

    if (v10)
    {
      *(*a1 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    }

    ++v8;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = variable initialization expression of InferenceProviderManager.updatesReceived();

  sub_100147F30(v11, v12, 0, 1, v13, a2, a3);
}

uint64_t sub_100148ED4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10001297C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for RequestManager.InputStreamRequestInfo();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1000082D4(&qword_1001BDC60, &qword_1001BDC58, &qword_1001742F0, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          sub_100065020(&qword_1001BDC58, &qword_1001742F0);
          v9 = sub_100149440(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100149058(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10001297C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        _s14ExecutionGroupCMa(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1000082D4(&qword_1001BDC00, &qword_1001BDBF8, &qword_1001741D0, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          sub_100065020(&qword_1001BDBF8, &qword_1001741D0);
          v9 = sub_100149440(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1001491E0()
{
  sub_10002B358();
  if (v2)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      sub_1000062B0();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_10001297C(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        type metadata accessor for DaemonRequest(0);
        sub_100027848();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v27 = v6;
        sub_100003508();
        sub_100006570();
        sub_1000082D4(v7, v8, v9, v10);
        do
        {
          v11 = sub_1000071D0();
          v13 = sub_100065020(v11, v12);
          v21 = sub_10014B1C8(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28[0]);
          v24 = sub_1001494CC(v21, v22, v23);

          v24(v28, 0);
          sub_10014B3E0();
        }

        while (!v25);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100149310()
{
  sub_10002B358();
  if (v2)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      sub_1000062B0();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_10001297C(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        type metadata accessor for InferenceProviderAsset(0);
        sub_100027848();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v27 = v6;
        sub_100003508();
        sub_100006570();
        sub_1000082D4(v7, v8, v9, v10);
        do
        {
          v11 = sub_1000071D0();
          v13 = sub_100065020(v11, v12);
          v21 = sub_10014B1C8(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28[0]);
          v24 = sub_100149594(v21, v22, v23);

          v24(v28, 0);
          sub_10014B3E0();
        }

        while (!v25);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t (*sub_100149440(uint64_t *a1, unint64_t a2, uint64_t a3))(void *)
{
  v6 = sub_100064024(a3);
  sub_100022F0C(a2, v6, a3);
  if (v6)
  {
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v7;
  return sub_10014AFD8;
}

uint64_t sub_1001494CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10014B1EC(a1, a2, a3);
  if (v4)
  {
  }

  else
  {
    sub_10000D01C();
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v5;
  return sub_100005F04();
}

uint64_t sub_100149530(uint64_t a1, uint64_t a2)
{
  v4 = _s6PolicyVMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100149594(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10014B1EC(a1, a2, a3);
  if (v4)
  {
  }

  else
  {
    sub_10000D01C();
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v5;
  return sub_100005F04();
}

void sub_1001495F4()
{
  sub_1000055B0();
  sub_10000A0C4();
  if (!v5)
  {
    v9 = 0;
LABEL_17:
    *v0 = v1;
    v0[1] = v2;
    v0[2] = ~v3;
    v0[3] = v9;
    v0[4] = v4;
    sub_100002EEC();
    return;
  }

  v7 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = v5;
    sub_10001E714();
    v12 = (v11 - v3) >> 6;
    while (v10 < v7)
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v4)
      {
        while (1)
        {
          v14 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v4 = 0;
            goto LABEL_17;
          }

          v4 = *(v2 + 8 * v14);
          ++v9;
          if (v4)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v9;
LABEL_12:
      sub_1000DB34C();
      *v8 = *(*(v1 + 48) + ((v14 << 9) | (8 * v15)));
      if (v13 == v7)
      {

        v9 = v14;
        goto LABEL_17;
      }

      ++v8;

      v10 = v13;
      v9 = v14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001496FC()
{
  sub_100002BAC();
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  v3 = sub_1000062B0();

  return sub_10013BF2C(v3, v4);
}

void sub_100149788()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_10002A104();
  type metadata accessor for Assertion.DaemonRep();
  sub_100002BDC();
  v35 = v7;
  v36 = v8;
  __chkstk_darwin(v7);
  sub_100009C24();
  v34 = v9;
  sub_100002F1C();
  __chkstk_darwin(v10);
  sub_1000DB284();
  v33 = v11;
  v32 = -1 << *(v2 + 32);
  sub_10000D160();
  if (v16 != v17)
  {
    v18 = ~v14;
  }

  else
  {
    v18 = v13;
  }

  v19 = v18 & v12;
  if (!v6)
  {
    v21 = 0;
LABEL_22:
    *v0 = v2;
    v0[1] = v15;
    v0[2] = ~v32;
    v0[3] = v21;
    v0[4] = v19;
    sub_100002EEC();
    return;
  }

  if (!v4)
  {
    v21 = 0;
    goto LABEL_22;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v30 = v15;
    sub_10001E714();
    v24 = (v23 - v32) >> 6;
    v31 = v20;
    while (v22 < v20)
    {
      if (__OFADD__(v22, 1))
      {
        goto LABEL_26;
      }

      if (!v19)
      {
        v15 = v30;
        while (1)
        {
          v25 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v25 >= v24)
          {
            v19 = 0;
            goto LABEL_22;
          }

          v19 = *(v30 + 8 * v25);
          ++v21;
          if (v19)
          {
            v37 = v22 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v37 = v22 + 1;
      v25 = v21;
LABEL_17:
      sub_100011268();
      v27 = v2;
      v28 = *(v36 + 72);
      (*(v36 + 16))(v34, *(v2 + 48) + v28 * (v26 | (v25 << 6)), v35);
      v29 = *(v36 + 32);
      v29(v33, v34, v35);
      v29(v6, v33, v35);
      v20 = v31;
      v22 = v37;
      if (v37 == v31)
      {
        v21 = v25;
        v15 = v30;
        v2 = v27;
        goto LABEL_22;
      }

      v6 += v28;
      v21 = v25;
      v2 = v27;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

void sub_1001499D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10000355C();
  a27 = v33;
  a28 = v34;
  sub_10000A0C4();
  if (!v35)
  {
    v40 = 0;
LABEL_16:
    *v28 = v29;
    v28[1] = v30;
    v28[2] = ~v31;
    v28[3] = v40;
    v28[4] = v32;
    sub_100005F10();
    return;
  }

  v37 = v36;
  if (!v36)
  {
    v40 = 0;
    goto LABEL_16;
  }

  if ((v36 & 0x8000000000000000) == 0)
  {
    v38 = v35;
    v39 = 0;
    v40 = 0;
    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (!v32)
      {
        while (1)
        {
          v42 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v42 >= ((63 - v31) >> 6))
          {
            v32 = 0;
            goto LABEL_16;
          }

          v32 = *(v30 + 8 * v42);
          ++v40;
          if (v32)
          {
            v40 = v42;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      sub_1000DB34C();
      sub_100007130(*(v29 + 56) + 40 * (v43 | (v40 << 6)), &a9);
      sub_100004A04(&a9, &a13);
      sub_100004A04(&a13, v38);
      v38 += 40;
      v39 = v41;
      if (v41 == v37)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100149ADC()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_10002A104();
  v8 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(v7);
  v9 = sub_100002F44(v8);
  v39 = v10;
  __chkstk_darwin(v9);
  sub_100009C24();
  v38 = v11;
  sub_100002F1C();
  __chkstk_darwin(v12);
  sub_1000DB284();
  v37 = v13;
  v14 = v2 + 56;
  sub_10000D160();
  if (v19 != v20)
  {
    v21 = ~v17;
  }

  else
  {
    v21 = v16;
  }

  v22 = v21 & v15;
  if (!v6)
  {
    v23 = 0;
LABEL_20:
    *v0 = v2;
    v0[1] = v14;
    v0[2] = ~v18;
    v0[3] = v23;
    v0[4] = v22;
    sub_100002EEC();
    return;
  }

  if (!v4)
  {
    v23 = 0;
    goto LABEL_20;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v34 = v18;
    v35 = v0;
    sub_10001E714();
    v27 = (v25 - v26) >> 6;
    v36 = v4;
    while (v24 < v4)
    {
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_24;
      }

      if (!v22)
      {
        while (1)
        {
          v29 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v29 >= v27)
          {
            v22 = 0;
            v18 = v34;
            v0 = v35;
            goto LABEL_20;
          }

          v22 = *(v14 + 8 * v29);
          ++v23;
          if (v22)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v29 = v23;
LABEL_15:
      v30 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v31 = v2;
      v32 = *(v2 + 48);
      v33 = *(v39 + 72);
      sub_10005CAA8(v32 + v33 * (v30 | (v29 << 6)), v38);
      sub_10000D4B4(v38, v37);
      sub_10000D4B4(v37, v6);
      v4 = v36;
      if (v28 == v36)
      {
        v23 = v29;
        v18 = v34;
        v0 = v35;
        v2 = v31;
        goto LABEL_20;
      }

      v6 += v33;
      v24 = v28;
      v23 = v29;
      v2 = v31;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_100149D04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3)
  {

    v10 = sub_1001429AC(a4, a1, a2, (a3 + 16), a3 + 32);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v10 = sub_100142698(a4, a1, a2);
    v12 = v15;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
}

uint64_t sub_100149E70(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10006FA64;

  return sub_1001297D4(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_100149F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  sub_1000089AC();
  v10 = swift_task_alloc();
  v11 = sub_100004B00(v10);
  *v11 = v12;
  v11[1] = sub_10006FA64;
  sub_100007B24();
  sub_10014B068();
  sub_100006378();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100149FE8()
{
  sub_10000636C();
  v1 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  sub_100002F44(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 80) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + 72);
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = swift_task_alloc();
  v11 = sub_100004B00(v10);
  *v11 = v12;
  v11[1] = sub_10006F558;
  sub_10000C750();

  return sub_10013AB08(v13, v14, v15, v7, v16, v6, v8, v9);
}

uint64_t sub_10014A120()
{
  sub_100001ED0();
  sub_1000089AC();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100004B00(v2);
  *v3 = v4;
  v5 = sub_100003120(v3);

  return sub_10005DAE4(v5, v6, v7, v1);
}

uint64_t sub_10014A1B4()
{
  sub_100001ED0();
  sub_1000089AC();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100004B00(v2);
  *v3 = v4;
  v5 = sub_100003120(v3);

  return sub_10005DAE4(v5, v6, v7, v1);
}

uint64_t sub_10014A264()
{
  sub_10000636C();
  sub_1000089AC();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = sub_100004B00(v4);
  *v5 = v6;
  sub_100003120(v5);
  sub_10014B068();

  return sub_100135E28(v7, v8, v9, v10, v11, v1, v2, v3);
}

uint64_t sub_10014A31C()
{
  sub_10001881C();
  sub_100003884();
  sub_1000089AC();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_100003120(v1);
  sub_10014B068();
  sub_100007BB8();

  return sub_100135FF8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10014A3C0()
{
  sub_10000639C();
  sub_100003884();
  sub_1000089AC();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_100003120(v1);
  sub_100003D20();

  return sub_100138518(v3, v4, v5, v6, v7);
}

uint64_t sub_10014A458()
{
  sub_100002BAC();
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006FA64;
  v4 = sub_100003808();

  return sub_100137D70(v4, v0);
}

uint64_t sub_10014A4E4()
{
  sub_100001ED0();
  sub_1000089AC();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100004B00(v2);
  *v3 = v4;
  v5 = sub_100003120(v3);

  return sub_10013F754(v5, v6, v7, v1);
}

uint64_t sub_10014A5FC()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_10001644C();

  return sub_10012E4E8(v3, v4, v5);
}

uint64_t sub_10014A694()
{

  sub_100002EE0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10014A6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100002BAC();
  v17 = swift_task_alloc();
  v18 = sub_100004B00(v17);
  *v18 = v19;
  v18[1] = sub_10006FA64;
  v20 = sub_100003808();

  return sub_10012E7BC(v20, v16, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10014A764(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100140B18(result, 1, sub_1001400B4);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 24 * v5);
  sub_100065020(&qword_1001BDC08, &qword_100174218);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_10007091C((v9 + 24 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10014A86C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10006FA64;

  return sub_10012939C(a1, a2, v10, a4, a5);
}

uint64_t sub_10014A934(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10006FA64;

  return sub_1001297D4(a1, a2, a3, a4, a5, v12);
}

void sub_10014AA04(int8x8_t **a1@<X0>, int8x8_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, void *a5@<X8>)
{
  sub_100148DC4(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = v7;
    a5[1] = v8;
  }
}

uint64_t sub_10014AA70(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_10014AAC8()
{
  sub_10000639C();
  sub_100003884();
  sub_1000089AC();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_100003120(v1);
  sub_100003D20();

  return sub_10013EF70(v3, v4, v5, v6, v7);
}

uint64_t sub_10014AB60()
{
  sub_100002BAC();
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  v3 = sub_1000062B0();

  return sub_10013F304(v3, v4);
}

uint64_t sub_10014AC2C()
{
  sub_10000639C();
  sub_100003884();
  sub_1000135C4();
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_100002CBC();
  sub_10002F720();
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10014ACD4()
{
  sub_10001881C();
  sub_100003884();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_10014B0AC(v1);
  sub_100007BB8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10014AD88()
{
  sub_10001881C();
  sub_100003884();
  sub_1000135C4();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_10014B0AC(v1);
  sub_10000CD38();
  sub_100007BB8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10014AE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  sub_1000089AC();
  v10 = swift_task_alloc();
  v11 = sub_100004B00(v10);
  *v11 = v12;
  v11[1] = sub_10006FA64;
  sub_100007B24();
  sub_10014B068();
  sub_100006378();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_10014AEDC()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_100003808();
  sub_10001644C();

  return v3();
}

uint64_t sub_10014B01C(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_10014B074()
{
}

uint64_t sub_10014B0BC(uint64_t a1)
{

  return static _HashTable.scale(forCapacity:)();
}

uint64_t sub_10014B0E4()
{
  *(v1 + 136) = v0;

  return swift_errorRetain();
}

uint64_t sub_10014B10C()
{
}

uint64_t sub_10014B134()
{
}

__n128 sub_10014B1A4@<Q0>(char a1@<W8>)
{
  v3 = *(v1 - 208);
  result = *(v1 - 192);
  *(v1 - 144) = *(v1 - 224);
  *(v1 - 128) = v3;
  *(v1 - 112) = result;
  *(v1 - 96) = a1;
  return result;
}

uint64_t sub_10014B1BC(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

unint64_t sub_10014B1EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_100064024(a3);

  return sub_100022F0C(a2, v5, a3);
}

double sub_10014B230()
{

  return result;
}

uint64_t sub_10014B248()
{
  v3 = *(*(v0 + 32) + 16);

  return sub_10013FA84(v3, v1);
}

uint64_t sub_10014B26C()
{
}

void sub_10014B290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{

  sub_100036C5C(v31, v30, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_10014B2AC()
{
}

uint64_t sub_10014B2C8()
{
}

void sub_10014B2E4()
{

  _StringGuts.grow(_:)(32);
}

uint64_t sub_10014B308()
{

  return swift_allocObject();
}

double sub_10014B320()
{

  return result;
}

uint64_t sub_10014B338()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_10014B350()
{
  v2 = *(v0 + 40);

  sub_10012AC70(v2);
}

void sub_10014B478(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void *sub_10014B498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{

  return _HashTable.UnsafeHandle.startFind(_:)();
}

uint64_t sub_10014B4B8()
{

  return _CocoaArrayWrapper.endIndex.getter();
}

double sub_10014B4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  swift_beginAccess();
  return result;
}

uint64_t sub_10014B4F8()
{
}

uint64_t sub_10014B534()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BDC68);
  sub_10000641C(v0, qword_1001BDC68);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void *sub_10014B5A4()
{
  if (v0[32])
  {

    Task.cancel()();
  }

  sub_100003324(v0 + 14);
  sub_100003324(v0 + 19);
  sub_100003324(v0 + 24);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10014B62C()
{
  sub_10014B5A4();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10014B67C(uint64_t a1, double a2)
{
  if (*(v2 + 232) != a1 || *(v2 + 240) != a2)
  {
    if (qword_1001B8AC0 != -1)
    {
      sub_10000538C();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000641C(v5, qword_1001BDC68);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = a1;
      *(v8 + 12) = 2048;
      *(v8 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v6, v7, "Setting rate limiting to %ld events / %f seconds", v8, 0x16u);
      sub_100002BD0();
    }

    *(v2 + 232) = a1;
    *(v2 + 240) = a2;
    if (*(v2 + 256))
    {

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Restarting expiration task", v11, 2u);
        sub_100002BD0();
      }

      Task.cancel()();
      sub_10014C568();
    }
  }
}

void sub_10014B868(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  sub_100002BDC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  if (!v1[32])
  {
    sub_10014C568();
  }

  swift_beginAccess();
  if (!*(v1[31] + 16) || (sub_10011739C(a1), (v11 & 1) == 0))
  {
    _emptyDequeStorage.unsafeMutableAddressor();
  }

  sub_10014BD7C(&v35, v10);
  v12 = v35;
  v13 = *(v35 + 24);
  if (v13 < v3[29])
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v12 + 16) <= v13 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10014D564(isUniquelyReferenced_nonNull_native, v13 + 1, 0);
      v12 = v35;
    }

    sub_10014D790((v12 + 16), v12 + ((*(v7 + 80) + 40) & ~*(v7 + 80)), v10);
    if (qword_1001B8AC0 != -1)
    {
      sub_10000538C();
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000641C(v15, qword_1001BDC68);
    v16 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v17 = sub_1000065C8();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_20;
    }

    v19 = swift_slowAlloc();
    v33 = v10;
    v20 = v7;
    *v19 = 67109376;
    *(v19 + 4) = a1;
    *(v19 + 8) = 2048;
    *(v19 + 10) = *(v12 + 24);
    _os_log_impl(&_mh_execute_header, v16, v2, "PID %d: now %ld events within window", v19, 0x12u);
LABEL_19:
    v7 = v20;
    v10 = v33;
    sub_100002BD0();

LABEL_20:

    goto LABEL_26;
  }

  sub_100003370(v3 + 24, v3[27]);
  if (sub_10006AF68())
  {
    if (qword_1001B8AC0 != -1)
    {
      sub_10000538C();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000641C(v21, qword_1001BDC68);
    v16 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v22 = sub_1000065C8();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_20;
    }

    sub_100005944();
    v24 = swift_slowAlloc();
    v33 = v10;
    v20 = v7;
    *v24 = 67109120;
    *(v24 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v16, v2, "PID %d: Rate limit exceeded. Allowing request because device is connected to power.", v24, 8u);
    goto LABEL_19;
  }

  sub_100002D24();
  swift_beginAccess();

  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_100003138(v25);
  v3[31] = v34;
  swift_endAccess();
  if (qword_1001B8AC0 != -1)
  {
    sub_10000538C();
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000641C(v26, qword_1001BDC68);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    sub_100005944();
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v27, v28, "PID %d: Rate limit exceeded", v29, 8u);
    sub_100002BD0();
  }

  v30 = type metadata accessor for ModelManagerError();
  sub_10014DE08(&qword_1001B8F50, 255, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, enum case for ModelManagerError.rateLimited(_:), v30);
  swift_willThrow();
LABEL_26:
  sub_100002D24();
  swift_beginAccess();

  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_100003138(v32);
  v3[31] = v34;
  swift_endAccess();
  (*(v7 + 8))(v10, v5);
}

uint64_t sub_10014BD7C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  sub_100002BDC();
  v5 = v4;
  __chkstk_darwin(v6);
  v28 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = v7;
  v30 = &v27 - v28;
  v8 = static Date.- infix(_:_:)();
  v31 = v5 + 32;
  v27 = (v5 + 8);
  while (1)
  {
    __chkstk_darwin(v8);
    v9 = &v27 - v28;
    v10 = sub_100065020(&qword_1001BBA80, &qword_100172440);
    __chkstk_darwin(v10 - 8);
    v12 = &v27 - v11;
    if (*(*a1 + 24) < 1)
    {
      sub_100009BFC(v12, 1, 1, v3);
      (*v27)(v30, v3);
      return sub_10000ECD8(v12, &qword_1001BBA80, &qword_100172440);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10014DC54();
    }

    v13 = a1;
    v14 = *a1;
    v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v16 = *(v5 + 32);
    result = v16(v12, &v14[v15 + *(v5 + 72) * *(v14 + 4)], v3);
    v18 = *(v14 + 4);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    v21 = *(v14 + 3);
    if (v20 >= *(v14 + 2))
    {
      v20 = 0;
    }

    *(v14 + 4) = v20;
    if (__OFSUB__(v21, 1))
    {
      goto LABEL_19;
    }

    *(v14 + 3) = v21 - 1;
    sub_100009BFC(v12, 0, 1, v3);
    v16(v9, v12, v3);
    sub_10014DE50(&qword_1001BB418, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = dispatch thunk of static Comparable.>= infix(_:_:)();
    if (result)
    {
      break;
    }

    v8 = (*v27)(v9, v3);
    a1 = v13;
  }

  v22 = *(v14 + 3);
  v23 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v13;
  if (*(*v13 + 16) < v23 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10014D564(isUniquelyReferenced_nonNull_native, v23, 0);
    v25 = *v13;
  }

  sub_10014DD4C((v25 + 16), v25 + v15, v9);
  v26 = *v27;
  (*v27)(v30, v3);
  return v26(v9, v3);
}

void sub_10014C0CC()
{
  v3 = v0;
  type metadata accessor for Date();
  sub_100002BDC();
  v36 = v5;
  v37 = v4;
  __chkstk_darwin(v4);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  swift_beginAccess();
  v7 = v0[31];
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(v0[31] + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  *&v17 = 67109120;
  v38 = v17;
  v40 = v15;
  if (v13)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      (*(v36 + 8))(v39, v37);

      return;
    }

    v13 = *(v9 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      do
      {
LABEL_8:
        v19 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v20 = v19 | (v16 << 6);
        v21 = *(*(v40 + 48) + 4 * v20);
        v22 = *(*(v40 + 56) + 8 * v20);
        sub_100003370(v3 + 19, v3[22]);

        sub_100021CF4(v21, v43);
        if (v44 == 1)
        {
          if (qword_1001B8AC0 != -1)
          {
            sub_10000538C();
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          sub_10000641C(v23, qword_1001BDC68);
          v24 = Logger.logObject.getter();
          static os_log_type_t.debug.getter();
          v25 = sub_1000065C8();
          if (os_log_type_enabled(v25, v26))
          {
            sub_100005944();
            v27 = swift_slowAlloc();
            sub_100004C68(v27);
            _os_log_impl(&_mh_execute_header, v24, v2, "PID %d: Process no longer exists, removing", isUniquelyReferenced_nonNull_native, 8u);
            sub_100002BD0();
          }

          sub_100002D24();
          swift_beginAccess();
          sub_10011739C(v21);
          if (v28)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v42 = v3[31];
            v29 = v42;
            v3[31] = 0x8000000000000000;
            v2 = *(v29 + 24);
            sub_100065020(&qword_1001BCD48, &qword_1001734F8);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v2);
            v30 = v42;

            sub_100065020(&qword_1001B8C08, &qword_10016F808);
            _NativeDictionary._delete(at:)();
            v3[31] = v30;
          }

          swift_endAccess();
        }

        else
        {
          sub_10000ECD8(v43, &qword_1001B9CF8, &qword_100172AC0);
          v42 = v22;

          sub_10014BD7C(&v42, v39);
          v2 = v42;
          if (*(v42 + 24))
          {
            sub_100002D24();
            swift_beginAccess();

            swift_isUniquelyReferenced_nonNull_native();
            v41 = v3[31];
            sub_100117EB0(v2, v21);
            v3[31] = v41;
            swift_endAccess();
          }

          else
          {
            if (qword_1001B8AC0 != -1)
            {
              sub_10000538C();
              swift_once();
            }

            v31 = type metadata accessor for Logger();
            sub_10000641C(v31, qword_1001BDC68);
            isUniquelyReferenced_nonNull_native = Logger.logObject.getter();
            v32 = static os_log_type_t.debug.getter();
            v35 = isUniquelyReferenced_nonNull_native;
            if (os_log_type_enabled(isUniquelyReferenced_nonNull_native, v32))
            {
              sub_100005944();
              v33 = swift_slowAlloc();
              sub_100004C68(v33);
              _os_log_impl(&_mh_execute_header, v35, v32, "PID %d: All events expired, removing", isUniquelyReferenced_nonNull_native, 8u);
              sub_100002BD0();
            }

            sub_100002D24();
            swift_beginAccess();
            sub_10014D378(v21);
            swift_endAccess();
          }
        }
      }

      while (v13);
    }
  }

  __break(1u);
}

double sub_10014C568()
{
  v1 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v1 - 8);
  static TaskPriority.background.getter();
  type metadata accessor for TaskPriority();
  v2 = sub_100005780();
  sub_100009BFC(v2, v3, v4, v5);
  v7 = sub_10014DE08(&qword_1001BDDE0, v6, type metadata accessor for RateLimiter, &unk_10017434C);
  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = v7;
  v8[4] = v0;
  swift_retain_n();
  sub_1000652FC();
  *(v0 + 256) = v9;

  return result;
}

uint64_t sub_10014C6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v6 = type metadata accessor for CancellationError();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_10014C7F8, a4, 0);
}

uint64_t sub_10014C7F8()
{
  type metadata accessor for _OSActivity();
  v0[24] = swift_initStackObject();
  v0[25] = sub_10001B160("RateLimiter Expiration", 22, 2);
  swift_beginAccess();
  v1 = v0[17];
  if (*(*(v1 + 248) + 16))
  {
    static Duration.seconds(_:)();
    static Clock<>.continuous.getter();
    v2 = swift_task_alloc();
    v0[26] = v2;
    *v2 = v0;
    sub_100005DF0(v2);
    v3 = sub_10000A760();

    return v4(v3);
  }

  else
  {
    v6 = v0[25];
    *(v1 + 256) = 0;

    sub_100002D24();
    swift_beginAccess();
    os_activity_scope_leave((v6 + 24));
    swift_endAccess();
    sub_10000A350();

    sub_100001F00();

    return v7();
  }
}

uint64_t sub_10014C9B4()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = v2[23];
  v4 = v2[22];
  v5 = v2[21];
  v6 = v2[17];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_10014CCD8;
  }

  else
  {
    v7 = sub_10014CB5C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10014CB5C()
{
  sub_10014C0CC();
  v1 = v0[17];
  if (*(*(v1 + 248) + 16))
  {
    static Duration.seconds(_:)();
    static Clock<>.continuous.getter();
    v2 = swift_task_alloc();
    v0[26] = v2;
    *v2 = v0;
    sub_100005DF0(v2);
    v3 = sub_10000A760();

    return v4(v3);
  }

  else
  {
    v6 = v0[25];
    *(v1 + 256) = 0;

    sub_100002D24();
    swift_beginAccess();
    os_activity_scope_leave((v6 + 24));
    swift_endAccess();
    sub_10000A350();

    sub_100001F00();

    return v7();
  }
}

uint64_t sub_10014CCD8()
{
  v0[16] = v0[27];
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (swift_dynamicCast())
  {
    v1 = v0[25];
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[18];

    (*(v3 + 8))(v2, v4);
  }

  else
  {

    if (qword_1001B8AC0 != -1)
    {
      sub_10000538C();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000641C(v5, qword_1001BDC68);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      sub_100005944();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Task.sleep threw %@", v8, 0xCu);
      sub_10000ECD8(v9, &qword_1001B8F68, &qword_10016FB80);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
    }

    v1 = v0[25];
    *(v0[17] + 256) = 0;
  }

  sub_100002D24();
  swift_beginAccess();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  sub_10000A350();

  sub_100001F00();

  return v11();
}

uint64_t sub_10014CF6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10014D020;

  return sub_10014C6AC(a1, v4, v5, v6);
}

uint64_t sub_10014D020()
{

  sub_100001F00();

  return v0();
}

double sub_10014D138@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000236F4(a1, a2);
  if (v5)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_100009CF4();
    v6 = sub_100065020(&qword_1001BCD58, &unk_100173508);
    sub_100003CBC(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    sub_100007B38();
    sub_100065020(&qword_1001BA8F8, "ޅ");
    _NativeDictionary._delete(at:)();
    *v3 = v17;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10014D230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = sub_1000236F4(a1, a2);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v6;
    v15 = *(*v6 + 24);
    sub_100065020(a3, a4);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15);

    v16 = *(v24 + 56);
    v17 = a5(0);
    sub_100002C00();
    (*(v18 + 32))(a6, v16 + *(v18 + 72) * v13, v17);
    _NativeDictionary._delete(at:)();
    *v6 = v24;
    v19 = sub_100005780();
    v22 = v17;
  }

  else
  {
    a5(0);
    v19 = sub_1000128F4();
  }

  return sub_100009BFC(v19, v20, v21, v22);
}

uint64_t sub_10014D378(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10011739C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v7 = *(*v1 + 24);
  sub_100065020(&qword_1001BCD48, &qword_1001734F8);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(*(v10 + 56) + 8 * v5);
  sub_100065020(&qword_1001B8C08, &qword_10016F808);
  _NativeDictionary._delete(at:)();
  *v2 = v10;
  return v8;
}

double sub_10014D450@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1001173E4();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100009CF4();
    v6 = sub_100065020(&qword_1001BCD50, &qword_100173500);
    sub_100003CBC(v6, v7, v8, v9, v10, v11, v12, v13, v18, v19);
    v14 = *(v20 + 48);
    v15 = type metadata accessor for UUID();
    sub_100002C00();
    (*(v16 + 8))(v14 + *(v16 + 72) * v5, v15);
    sub_100007B38();
    sub_100065020(&qword_1001B8BF8, &qword_10016F800);
    sub_10014DE50(&qword_1001B8C00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    _NativeDictionary._delete(at:)();
    *v1 = v20;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_10014D564(char a1, Swift::Int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = (*v3 + 16);
  v10 = *v9;
  v11 = type metadata accessor for Date();
  v12 = v11;
  if (v10 >= a2)
  {
    v16 = *(*(v11 - 8) + 80);
    sub_100065020(&qword_1001BDDE8, &qword_100174388);
    v15 = swift_allocObject();
    v17 = *(v8 + 24);
    *(v15 + 16) = v10;
    *(v15 + 24) = v17;
    if (v17 >= 1)
    {
      sub_10014DB44(v15 + 16, v15 + ((v16 + 40) & ~v16), v9, v8 + ((v16 + 40) & ~v16));
    }
  }

  else
  {
    Deque._Storage._growCapacity(to:linearly:)(a2, a3 & 1);
    v13 = *(*(v12 - 8) + 80);
    if (a1)
    {
      v14 = *(v8 + 24);
      sub_100065020(&qword_1001BDDE8, &qword_100174388);
      v15 = swift_allocObject();
      *(v15 + 16) = sub_10014D984();
      *(v15 + 24) = v14;
      *(v15 + 32) = 0;
      if (v14 >= 1)
      {
        sub_10014D864(v15 + 16, v15 + ((v13 + 40) & ~v13), v9, v8 + ((v13 + 40) & ~v13));
        *(v8 + 24) = 0;
      }
    }

    else
    {
      sub_100065020(&qword_1001BDDE8, &qword_100174388);
      v15 = swift_allocObject();
      v18 = sub_10014D984();
      v19 = *(v8 + 24);
      *(v15 + 16) = v18;
      *(v15 + 24) = v19;
      *(v15 + 32) = 0;
      if (v19 >= 1)
      {
        sub_10014DA20(v15 + 16, v15 + ((v13 + 40) & ~v13), v9, v8 + ((v13 + 40) & ~v13));
      }
    }
  }

  *v4 = v15;
}

void *sub_10014D790(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for Date();
        result = (*(*(v10 - 8) + 16))(a2 + *(*(v10 - 8) + 72) * v5, a3, v10);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_10014D864(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for Date() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  if (v9)
  {
    v12 = v5 < v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v8 + 72);
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v10 >= 1)
  {
    if (a4)
    {
      v15 = a4 + v13 * v4;
      v16 = a2;
      sub_1000708D8(v15, v10, a2);
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = 0;
  v16 = a2;
LABEL_16:
  if (v5 < v7 && v9 >= 1)
  {
    if (v14)
    {
      sub_1000708D8(v14, v9, v16 + v13 * v10);
      return;
    }

LABEL_26:
    __break(1u);
  }
}

uint64_t sub_10014D984()
{
  v1 = j__malloc_size(v0);
  v2 = type metadata accessor for Date();
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  if (v6)
  {
    v7 = v1 - ((v5 + 40) & ~v5);
    if (v6 != -1 || v7 != 0x8000000000000000)
    {
      return v7 / v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10014DA20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for Date();
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_10014DB44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for Date();
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_10014DC54()
{
  v1 = *v0;
  v2 = type metadata accessor for Date();
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  sub_100065020(&qword_1001BDDE8, &qword_100174388);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_10014DB44(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
}

void *sub_10014DD4C(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result[2];
  if (!v6)
  {
LABEL_5:
    v7 = *result - 1;
    if (__OFSUB__(*result, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  v8 = type metadata accessor for Date();
  result = (*(*(v8 - 8) + 16))(a2 + *(*(v8 - 8) + 72) * v7, a3, v8);
  v5[2] = v7;
  v9 = v5[1];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    v5[1] = v11;
    return result;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10014DE08(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10014DE50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10014DEBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10011CAD4;

  return sub_10011C138();
}

uint64_t sub_10014DF8C(char a1)
{
  if (!a1)
  {
    return 0x6C61636974697263;
  }

  if (a1 == 1)
  {
    return 0x746972632D6E6F6ELL;
  }

  return 0x6E776F6E6B6E75;
}

_BYTE *storeEnumTagSinglePayload for MemoryPressure(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10014E0D4()
{
  result = qword_1001BDF30;
  if (!qword_1001BDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BDF30);
  }

  return result;
}

uint64_t sub_10014E138(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for CustomAssetConfiguration();
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModelCatalogAsset(0);
  v47 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v51 = (v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (v9)
  {
    v39[0] = v2;
    v53 = _swiftEmptyArrayStorage;
    sub_10002045C(0, v9, 0);
    v52 = v53;
    result = sub_10001E724();
    v13 = result;
    v14 = 0;
    v50 = a1 + 56;
    v39[2] = v5 + 16;
    v40 = v5;
    v39[1] = v5 + 8;
    v43 = a1 + 64;
    v44 = v9;
    v45 = a1;
    v46 = a2;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(a1 + 32))
      {
        v15 = v13 >> 6;
        if ((*(v50 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_29;
        }

        if (*(a1 + 36) != v11)
        {
          goto LABEL_30;
        }

        v49 = v12;
        v48 = v11;
        v16 = v51;
        sub_100151098(*(a1 + 48) + *(v47 + 72) * v13, v51, type metadata accessor for ModelCatalogAsset);
        v17 = *v16;
        v18 = v16[1];
        if (*(a2 + 16) && (v19 = sub_1000236F4(*v16, v16[1]), (v20 & 1) != 0))
        {
          v22 = v40;
          v21 = v41;
          v23 = *(a2 + 56) + *(v40 + 72) * v19;
          v24 = v42;
          (*(v40 + 16))(v41, v23, v42);
          v17 = CustomAssetConfiguration.identifier.getter();
          v18 = v25;
          (*(v22 + 8))(v21, v24);
        }

        else
        {
        }

        result = sub_100059E78(v51, type metadata accessor for ModelCatalogAsset);
        v26 = v52;
        v53 = v52;
        v28 = v52[2];
        v27 = v52[3];
        if (v28 >= v27 >> 1)
        {
          result = sub_10002045C((v27 > 1), v28 + 1, 1);
          v26 = v53;
        }

        v26[2] = v28 + 1;
        v29 = &v26[2 * v28];
        v29[4] = v17;
        v29[5] = v18;
        if (v49)
        {
          goto LABEL_34;
        }

        a1 = v45;
        a2 = v46;
        v30 = 1 << *(v45 + 32);
        if (v13 >= v30)
        {
          goto LABEL_31;
        }

        v31 = *(v50 + 8 * v15);
        if ((v31 & (1 << v13)) == 0)
        {
          goto LABEL_32;
        }

        v52 = v26;
        if (*(v45 + 36) != v48)
        {
          goto LABEL_33;
        }

        v32 = v31 & (-2 << (v13 & 0x3F));
        if (v32)
        {
          v30 = __clz(__rbit64(v32)) | v13 & 0x7FFFFFFFFFFFFFC0;
          v33 = v44;
        }

        else
        {
          v34 = v15 << 6;
          v35 = v15 + 1;
          v33 = v44;
          v36 = (v43 + 8 * v15);
          while (v35 < (v30 + 63) >> 6)
          {
            v38 = *v36++;
            v37 = v38;
            v34 += 64;
            ++v35;
            if (v38)
            {
              result = sub_100016E94(v13, v48, 0);
              v30 = __clz(__rbit64(v37)) + v34;
              goto LABEL_23;
            }
          }

          result = sub_100016E94(v13, v48, 0);
        }

LABEL_23:
        if (++v14 == v33)
        {

          return v52;
        }

        v12 = 0;
        v11 = *(a1 + 36);
        v13 = v30;
        if (v30 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10014E56C(uint64_t a1)
{
  v3 = type metadata accessor for ModelCatalogAsset(0);
  v33 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v32 = (v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v28[1] = v1;
  v37 = _swiftEmptyArrayStorage;
  sub_10002045C(0, v5, 0);
  v6 = v37;
  result = sub_10001E724();
  v10 = result;
  v11 = 0;
  v36 = a1 + 56;
  v29 = a1 + 64;
  v30 = v5;
  v31 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v10 < 1 << *(a1 + 32))
    {
      v12 = v10 >> 6;
      if ((*(v36 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_25;
      }

      v35 = v9;
      v34 = v8;
      v13 = v32;
      sub_100151098(*(a1 + 48) + *(v33 + 72) * v10, v32, type metadata accessor for ModelCatalogAsset);
      v15 = *v13;
      v14 = v13[1];

      result = sub_100059E78(v13, type metadata accessor for ModelCatalogAsset);
      v37 = v6;
      v17 = v6[2];
      v16 = v6[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_10002045C((v16 > 1), v17 + 1, 1);
        v6 = v37;
      }

      v6[2] = v17 + 1;
      v18 = &v6[2 * v17];
      v18[4] = v15;
      v18[5] = v14;
      if (v35)
      {
        goto LABEL_29;
      }

      a1 = v31;
      v19 = 1 << *(v31 + 32);
      if (v10 >= v19)
      {
        goto LABEL_26;
      }

      v20 = *(v36 + 8 * v12);
      if ((v20 & (1 << v10)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v31 + 36) != v34)
      {
        goto LABEL_28;
      }

      v21 = v20 & (-2 << (v10 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v22 = v30;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v22 = v30;
        v25 = (v29 + 8 * v12);
        while (v24 < (v19 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_100016E94(v10, v34, 0);
            v19 = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v10, v34, 0);
      }

LABEL_19:
      if (++v11 == v22)
      {
        return v6;
      }

      v9 = 0;
      v8 = *(a1 + 36);
      v10 = v19;
      if (v19 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10014E860(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_100150604(v1 + v3, v1, v2);
  return swift_endAccess();
}

void sub_10014E8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22)
{
  sub_1000055B0();
  a19 = v22;
  a20 = v23;
  v90 = v24;
  v91 = v25;
  v86 = v27;
  v87 = v26;
  v88 = v28;
  v89 = v29;
  v31 = v30;
  v84 = a21;
  v85 = v32;
  v83 = a22;
  type metadata accessor for RequestMetadata();
  sub_100002BDC();
  v81 = v34;
  v82 = v33;
  __chkstk_darwin(v33);
  sub_100002B8C();
  v80 = (v36 - v35);
  sub_100003B1C();
  v37 = type metadata accessor for TaskPriority();
  v38 = sub_1000065D8(v37, &a16);
  v40 = v39;
  v73 = v39;
  __chkstk_darwin(v38);
  sub_100002B8C();
  v79 = v42 - v41;
  sub_100003B1C();
  v43 = type metadata accessor for Version();
  v44 = sub_100002F04(v43);
  __chkstk_darwin(v44);
  sub_100002B8C();
  v68 = v46 - v45;
  v47 = type metadata accessor for AuditToken();
  sub_100002BDC();
  v49 = v48;
  __chkstk_darwin(v50);
  sub_100002B8C();
  v53 = v52 - v51;
  v76 = v52 - v51;
  v54 = type metadata accessor for UUID();
  v55 = sub_100002F04(v54);
  __chkstk_darwin(v55);
  sub_100002B8C();
  v58 = v57 - v56;
  Session.Metadata.sessionSetID.getter();
  HIDWORD(v78) = Session.Metadata.onBehalfOfPID.getter();
  v77 = Session.Metadata.parentOfOnBehalfOfPID.getter();
  (*(v49 + 16))(v53, v31 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken, v47);
  v75 = AuditToken.auditUserIdentifier.getter();
  sub_1000480AC(v90, v92);
  v70 = Session.Metadata.useCaseID.getter();
  v69 = v59;
  Session.Metadata.inferenceInterfaceVersion.getter();
  (*(v40 + 16))(v79, v91, v37);
  v60 = Session.Metadata.loggingIdentifier.getter();
  v62 = v61;
  v63 = *(v31 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_isUnentitled);
  (*(v81 + 16))(v80, v83, v82);
  BYTE1(v66) = v84;
  LOBYTE(v66) = v63;
  LOBYTE(v65) = v85;
  sub_10014F74C(v58, v88, v89, HIDWORD(v78), v77, v76, v75, v92, v70, v69, v87, v86, v68, v65, v79, v60, v62, v66, v80, v67, v68, v69, v70, v71, v73, v74, v76, v77, v78, v79, BYTE1(v79), v80);

  (*(v81 + 8))(v83, v82);
  sub_10000854C();
  v64(v91, v72);
  sub_100003324(v90);
  sub_100002EEC();
}

uint64_t sub_10014ECA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 136) = a4;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  v8 = type metadata accessor for InferenceProviderRequestConfiguration();
  *(v6 + 80) = v8;
  *(v6 + 88) = *(v8 - 8);
  *(v6 + 96) = swift_task_alloc();
  v9 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  sub_100002F04(v9);
  *(v6 + 104) = swift_task_alloc();
  v10 = type metadata accessor for RequestMetadata();
  *(v6 + 112) = v10;
  *(v6 + 120) = *(v10 - 8);
  *(v6 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_10014EDFC, a5, 0);
}

uint64_t sub_10014EDFC()
{
  v1 = v0[14];
  v2 = v0[7];

  v3 = sub_10000C6C0(v2, 1, v1);
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[7];
  if (v3 == 1)
  {
    (*(v5 + 16))(v4, v0[5] + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata, v0[14]);
    if (sub_10000C6C0(v7, 1, v6) != 1)
    {
      sub_1001510F8(v0[7]);
    }
  }

  else
  {
    (*(v5 + 32))(v4, v0[7], v0[14]);
  }

  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[11];
  v16 = v0[10];
  v11 = v0[5];
  v12 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_100151098(v11 + v12, v9, type metadata accessor for DaemonRequest.ManagerOwnedState);

  (*(v10 + 16))(v8, v9, v16);
  sub_100059E78(v9, type metadata accessor for DaemonRequest.ManagerOwnedState);
  v13 = swift_allocObject();
  sub_10014F630();

  v14 = v0[1];

  return v14(v13);
}

void sub_10014F010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, char a22, unsigned __int8 a23, uint64_t a24)
{
  sub_1000055B0();
  a19 = v24;
  a20 = v25;
  v94 = v26;
  v89 = v28;
  v90 = v27;
  v30 = v29;
  v92 = v31;
  v93 = v32;
  v91 = v33;
  v88 = a21;
  v86 = a23;
  v87 = a22;
  v84 = a24;
  v85 = v34;
  v83 = type metadata accessor for RequestMetadata();
  sub_100002BDC();
  v36 = v35;
  __chkstk_darwin(v37);
  sub_100002B8C();
  v82 = v39 - v38;
  sub_100003B1C();
  v40 = type metadata accessor for TaskPriority();
  v41 = sub_1000065D8(v40, &a17);
  v43 = v42;
  v76 = v42;
  __chkstk_darwin(v41);
  sub_100002B8C();
  v46 = v45 - v44;
  v47 = type metadata accessor for Version();
  sub_100002BDC();
  v49 = v48;
  v78 = v50;
  v80 = v48;
  __chkstk_darwin(v50);
  sub_100002B8C();
  v53 = v52 - v51;
  v54 = type metadata accessor for AuditToken();
  v55 = sub_100002F04(v54);
  __chkstk_darwin(v55);
  sub_100002B8C();
  v58 = v57 - v56;
  v59 = type metadata accessor for UUID();
  v60 = sub_100002F04(v59);
  __chkstk_darwin(v60);
  sub_100002B8C();
  v63 = v62 - v61;
  UUID.init()();
  HIDWORD(v77) = getpid();
  AuditToken.init(_:)();
  sub_1000480AC(v94, v95);
  (*(v49 + 16))(v53, v30, v47);
  v64 = *(v43 + 16);
  v65 = v85;
  v64(v46, v85, v40);
  v66 = v36;
  v67 = *(v36 + 16);
  v68 = v83;
  v69 = v84;
  v67(v82, v84, v83);
  BYTE1(v72) = v86;
  LOBYTE(v72) = v87;
  LOBYTE(v71) = 0;
  sub_10014F74C(v63, v92, v93, HIDWORD(v77), 0, v58, 0, v95, 0, 0xE000000000000000, v91, v90, v53, v71, v46, v89, v88, v72, v82, v73, v74, v76, v77, v78, v80, v82, v83, v84, v85, v86, HIBYTE(v86), v88);
  (*(v66 + 8))(v69, v68);
  sub_10000854C();
  v70(v65, v75);
  (*(v81 + 8))(v30, v79);
  sub_100003324(v94);
  sub_100002EEC();
}

uint64_t sub_10014F3A8()
{
  v1 = type metadata accessor for RequestPriority();
  sub_100002BDC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100005630();
  v7 = (v5 - v6);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v12 = sub_100002F04(v11);
  __chkstk_darwin(v12);
  sub_100002B8C();
  v15 = v14 - v13;
  if (*(v0 + 72) == 1 && (*(v0 + 73) & 1) == 0)
  {
    v17 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    swift_beginAccess();
    sub_100151098(v0 + v17, v15, type metadata accessor for DaemonRequest.ManagerOwnedState);
    InferenceProviderRequestConfiguration.requestPriority.getter();
    sub_100059E78(v15, type metadata accessor for DaemonRequest.ManagerOwnedState);
    (*(v3 + 104))(v7, enum case for RequestPriority.userInitiated(_:), v1);
    sub_10005E6D4(&qword_1001B9428, &type metadata accessor for RequestPriority, &protocol conformance descriptor for RequestPriority);
    v16 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v18 = *(v3 + 8);
    v18(v7, v1);
    v18(v10, v1);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10014F5BC()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BDF38);
  sub_10000641C(v0, qword_1001BDF38);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void sub_10014F630()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  type metadata accessor for RequestMetadata();
  sub_100002C00();
  (*(v16 + 32))(v0 + v15, v14);
  *(v0 + 16) = v12;
  *(v0 + 24) = v10;
  sub_100004A04(v8, v0 + 32);
  *(v0 + 72) = v6;
  *(v0 + 73) = v4;
  v17 = v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  v18 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v19 = v18[7];
  v20 = type metadata accessor for RequestCancellationReason();
  sub_100009BFC(v17 + v19, 1, 1, v20);
  type metadata accessor for InferenceProviderRequestConfiguration();
  sub_100002C00();
  (*(v21 + 32))(v17, v2);
  *(v17 + v18[5]) = 0;
  *(v17 + v18[6]) = 0;
  sub_100002EEC();
}

void sub_10014F74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, uint64_t a29, unsigned __int8 a30, unsigned __int8 a31, char *a32)
{
  sub_1000055B0();
  v168 = v32;
  v188 = v33;
  v166 = v34;
  v189 = v35;
  v167 = v36;
  v162 = v37;
  v178 = v38;
  v177 = v39;
  v190 = v40;
  v165 = a29;
  v164 = a28;
  v187 = a25;
  v145 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v144[1] = v41;
  sub_100004B1C();
  __chkstk_darwin(v42);
  v144[0] = v144 - v43;
  sub_100003B1C();
  v175 = type metadata accessor for RequestMetadata();
  sub_100002BDC();
  v45 = v44;
  __chkstk_darwin(v46);
  sub_100005630();
  v180 = (v47 - v48);
  __chkstk_darwin(v49);
  v163 = v144 - v50;
  sub_100003B1C();
  type metadata accessor for Version();
  sub_100002BDC();
  v184 = v52;
  v185 = v51;
  __chkstk_darwin(v51);
  sub_100002B8C();
  v160 = v54 - v53;
  v55 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v55);
  sub_100004B1C();
  __chkstk_darwin(v56);
  v158 = v144 - v57;
  v58 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v170 = v59;
  sub_100004B1C();
  __chkstk_darwin(v60);
  v62 = v144 - v61;
  type metadata accessor for InferenceProviderRequestConfiguration();
  sub_100002BDC();
  v182 = v64;
  v183 = v63;
  __chkstk_darwin(v63);
  sub_100005630();
  sub_100002BF0();
  __chkstk_darwin(v65);
  sub_100002BF0();
  __chkstk_darwin(v66);
  v68 = v144 - v67;
  v176 = type metadata accessor for TaskPriority();
  sub_100002BDC();
  v70 = v69;
  __chkstk_darwin(v71);
  sub_100005630();
  sub_100002BF0();
  __chkstk_darwin(v72);
  v74 = v144 - v73;
  type metadata accessor for RequestPriority();
  sub_100002BDC();
  v192 = v76;
  v193 = v75;
  __chkstk_darwin(v75);
  sub_100005630();
  sub_100002BF0();
  __chkstk_darwin(v77);
  v191 = v144 - v78;
  v146 = a26;
  v181 = v68;
  if (a26 || (static TaskPriority.low.getter(), v79 = static TaskPriority.>= infix(_:_:)(), (*(v70 + 8))(v74, v176), (v79 & 1) == 0))
  {
    v80 = &enum case for RequestPriority.background(_:);
  }

  else
  {
    v80 = &enum case for RequestPriority.foreground(_:);
  }

  v157 = a31;
  v156 = a30;
  v155 = a24;
  v154 = a23;
  v153 = a22;
  v152 = a21;
  (*(v192 + 104))(v191, *v80, v193);
  v195[3] = &type metadata for GenerativeModels;
  v195[4] = sub_100026664();
  v81 = isFeatureEnabled(_:)();
  sub_100003324(v195);
  v82 = v178;
  v83 = v177;
  v186 = v45;
  v174 = a27;
  v171 = v70;
  if (v81)
  {

    v84 = sub_10014E138(v83, v82);
  }

  else
  {
    v84 = sub_10014E56C(v177);
  }

  v85 = v84;
  v151 = RequestMetadata.loggingIdentifier.getter();
  v150 = v86;
  v148 = sub_100077254(v85);
  v87 = type metadata accessor for UUID();
  v149 = v144;
  sub_100002BDC();
  v89 = v88;
  v91 = *(v90 + 64);
  __chkstk_darwin(v92);
  RequestMetadata.uuid.getter();
  v93 = RequestMetadata.sessionID.getter();
  v147 = v144;
  __chkstk_darwin(v93);
  UUIDIdentifier.uuid.getter();
  sub_10000854C();
  v95 = v94(v62, v58);
  __chkstk_darwin(v95);
  v169 = v89;
  v96 = *(v89 + 16);
  v170 = v87;
  v96(v144 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0), v190, v87);
  v97 = type metadata accessor for AuditToken();
  v161 = *(v97 - 8);
  v98 = v158;
  (*(v161 + 16))(v158, v189, v97);
  v162 = v97;
  sub_100009BFC(v98, 0, 1, v97);
  (*(v184 + 16))(v160, v187, v185);
  (*(v192 + 16))(v172, v191, v193);
  RequestMetadata.subrequestID.getter();
  v99 = v181;
  InferenceProviderRequestConfiguration.init(sessionLoggingIdentifier:requestLoggingIdentifier:assetIdentifiers:requestUUID:sessionUUID:sessionSetID:onBehalfOfPID:parentOfOnBehalfOfPID:auditToken:auditSessionUID:useCaseIdentifier:assetBundleIdentifier:requestVersion:requestPriority:subrequestID:)();
  v100 = *(v186 + 16);
  v101 = v175;
  v100(v163, a32, v175);
  sub_1000480AC(v188, v195);
  v102 = v183;
  v103 = *(v182 + 16);
  v103(v159, v99, v183);
  v178 = swift_allocObject();
  sub_10014F630();
  if (qword_1001B8AC8 != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for Logger();
  sub_10000641C(v104, qword_1001BDF38);
  v100(v180, a32, v101);
  v103(v179, v99, v102);
  v105 = v171;
  v106 = v173;
  v107 = v174;
  v108 = v176;
  (*(v171 + 16))(v173, v174, v176);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  v111 = v110;
  if (os_log_type_enabled(v109, v110))
  {
    v112 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v195[0] = v177;
    *v112 = 136315906;
    v113 = v144[0];
    LODWORD(v168) = v111;
    v114 = v180;
    RequestMetadata.id.getter();
    sub_10005E334(&qword_1001B8F58, &protocol conformance descriptor for UUIDIdentifier<A>);
    v115 = v145;
    v116 = dispatch thunk of CustomStringConvertible.description.getter();
    v118 = v117;
    sub_10000854C();
    v119(v113, v115);
    v167 = v109;
    v186 = *(v186 + 8);
    (v186)(v114, v101);
    v120 = sub_100004A3C(v116, v118, v195);

    *(v112 + 4) = v120;
    *(v112 + 12) = 2080;
    v121 = v179;
    InferenceProviderRequestConfiguration.requestPriority.getter();
    v122 = String.init<A>(describing:)();
    v124 = v123;
    v180 = a32;
    v182 = *(v182 + 8);
    (v182)(v121, v183);
    v125 = sub_100004A3C(v122, v124, v195);

    *(v112 + 14) = v125;
    *(v112 + 22) = 2080;
    v194[0] = v146;
    v126 = String.init<A>(describing:)();
    v128 = sub_100004A3C(v126, v127, v195);

    *(v112 + 24) = v128;
    *(v112 + 32) = 2080;
    sub_10005E6D4(&qword_1001BDBC8, &type metadata accessor for TaskPriority, &protocol conformance descriptor for TaskPriority);
    v129 = v173;
    v130 = v176;
    v131 = dispatch thunk of CustomStringConvertible.description.getter();
    v133 = v132;
    v134 = *(v105 + 8);
    v134(v129, v130);
    v135 = sub_100004A3C(v131, v133, v195);

    *(v112 + 34) = v135;
    v136 = v167;
    _os_log_impl(&_mh_execute_header, v167, v168, "Resolved priority for request %s to %s (from %s and %s)", v112, 0x2Au);
    swift_arrayDestroy();

    (v186)(v180, v175);
    v134(v174, v130);
    (*(v184 + 8))(v187, v185);
    sub_100003324(v188);
    sub_10000854C();
    v137(v189, v162);
    sub_10000854C();
    v138(v190, v170);
    (v182)(v181, v183);
  }

  else
  {

    v139 = *(v186 + 8);
    v139(a32, v101);
    v140 = *(v105 + 8);
    v140(v107, v108);
    (*(v184 + 8))(v187, v185);
    sub_100003324(v188);
    sub_10000854C();
    v141(v189, v162);
    sub_10000854C();
    v142(v190, v170);
    v140(v106, v108);
    v143 = *(v182 + 8);
    v143(v179, v102);
    v139(v180, v101);
    v143(v181, v102);
  }

  (*(v192 + 8))(v191, v193);
  sub_100002EEC();
}

void sub_100150604(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v52 = &v48 - v6;
  v7 = type metadata accessor for RequestPriority();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v48 - v12;
  v51 = a1;
  InferenceProviderRequestConfiguration.requestPriority.getter();
  v50 = *(v8 + 104);
  v50(v11, enum case for RequestPriority.background(_:), v7);
  LOBYTE(a1) = sub_100116BA4(v13, v11);
  v14 = *(v8 + 8);
  v14(v11, v7);
  v14(v13, v7);
  if (a1)
  {
    if (qword_1001B8AC8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000641C(v15, qword_1001BDF38);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_12;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v55 = v19;
    *v18 = 136315138;
    v20 = v52;
    RequestMetadata.id.getter();
    sub_10005E334(&qword_1001B8F58, &protocol conformance descriptor for UUIDIdentifier<A>);
    v21 = v54;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v53 + 8))(v20, v21);
    v25 = sub_100004A3C(v22, v24, &v55);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "Request %s updateSessionPriority doing nothing for background request", v18, 0xCu);
    sub_100003324(v19);

LABEL_11:

LABEL_12:

    return;
  }

  if (a3)
  {
    v50(v13, enum case for RequestPriority.userInitiated(_:), v7);
    InferenceProviderRequestConfiguration.requestPriority.setter();
    if (qword_1001B8AC8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000641C(v26, qword_1001BDF38);

    v16 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v16, v27))
    {
      goto LABEL_12;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v55 = v29;
    *v28 = 136315138;
    v30 = v52;
    RequestMetadata.id.getter();
    sub_10005E334(&qword_1001B8F58, &protocol conformance descriptor for UUIDIdentifier<A>);
    v31 = v54;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v53 + 8))(v30, v31);
    v35 = sub_100004A3C(v32, v34, &v55);

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v16, v27, "Reducing priority of request %s to userInitiated", v28, 0xCu);
    sub_100003324(v29);

    goto LABEL_11;
  }

  if (qword_1001B8AC8 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10000641C(v36, qword_1001BDF38);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v48 = v39;
    v49 = swift_slowAlloc();
    v55 = v49;
    *v39 = 136315138;
    v40 = v38;
    v41 = v52;
    RequestMetadata.id.getter();
    sub_10005E334(&qword_1001B8F58, &protocol conformance descriptor for UUIDIdentifier<A>);
    v42 = v54;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    (*(v53 + 8))(v41, v42);
    v46 = sub_100004A3C(v43, v45, &v55);

    v47 = v48;
    *(v48 + 1) = v46;
    _os_log_impl(&_mh_execute_header, v37, v40, "Increasing priority of request %s to foreground", v47, 0xCu);
    sub_100003324(v49);
  }

  v50(v13, enum case for RequestPriority.foreground(_:), v7);
  InferenceProviderRequestConfiguration.requestPriority.setter();
}

uint64_t sub_100150D04(uint64_t a1)
{
  result = type metadata accessor for RequestMetadata();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DaemonRequest.ManagerOwnedState(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100150E20(uint64_t a1)
{
  type metadata accessor for InferenceProviderRequestConfiguration();
  if (v1 <= 0x3F)
  {
    sub_1000DD5C8(319);
    if (v2 <= 0x3F)
    {
      sub_100150EC4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100150EC4(uint64_t a1)
{
  if (!qword_1001BE098)
  {
    type metadata accessor for RequestCancellationReason();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BE098);
    }
  }
}

Swift::Int sub_100150FAC()
{
  Hasher.init(_seed:)();
  sub_10005C330(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100151058(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10005C330(v2);
  return Hasher._finalize()();
}

uint64_t sub_100151098(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100002C00();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001510F8(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B9CA8, &qword_100170720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100151160()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BE110);
  sub_10000641C(v0, qword_1001BE110);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001511D4()
{
  sub_100002BAC();
  *(v0 + 80) = v1;
  sub_1000059F8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10015125C()
{
  sub_100002BAC();
  type metadata accessor for _OSActivity();
  v0[11] = swift_initStackObject();
  v0[12] = sub_10001B160("Critical Memory Pressure Event Loop", 35, 2);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_100151344;

  return sub_1001516E8();
}

uint64_t sub_100151344()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_1000059F8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10015145C()
{
  sub_100002BAC();
  v1 = *(v0 + 96);
  sub_100004B50(v1 + 24, v0 + 56);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  sub_100001F00();

  return v2();
}

uint64_t sub_100151500()
{
  if (*(v0 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask))
  {

    Task.cancel()();
  }

  sub_100003324((v0 + 112));
  sub_100003324((v0 + 152));
  sub_10000C790(v0 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID, &qword_1001BE260, &qword_1001747B8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001515A8()
{
  sub_100151500();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for MemoryPressureObserver(uint64_t a1)
{
  result = qword_1001BE150;
  if (!qword_1001BE150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100151628(uint64_t a1)
{
  sub_100153474(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001516E8()
{
  sub_100002BAC();
  v1[2] = v0;
  v2 = sub_100065020(&qword_1001BE268, &qword_1001747D0);
  v1[3] = v2;
  sub_100002F44(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v4 = sub_100065020(&qword_1001BE270, &qword_1001747D8);
  v1[6] = v4;
  sub_100002F44(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v6 = sub_100065020(&qword_1001BE278, &qword_1001747E0);
  v1[9] = v6;
  sub_100002F44(v6);
  v1[10] = v7;
  v1[11] = swift_task_alloc();
  v8 = sub_100002C10();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100151860()
{
  if (qword_1001B8AD0 != -1)
  {
    sub_1000053A0(&qword_1001B8AD0);
  }

  v1 = type metadata accessor for Logger();
  v0[12] = sub_10000641C(v1, qword_1001BE110);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100003A34(v3))
  {
    *sub_100007648() = 0;
    sub_1000059D8(&_mh_execute_header, v4, v5, "Listening for memory pressure events");
    sub_100002F64();
  }

  v7 = v0[7];
  v6 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[3];
  v11 = v0[4];

  (*(v11 + 104))(v9, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v10);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v7 + 8))(v6, v8);
  sub_1000065EC();
  v0[13] = sub_100154878(v12, v13, &unk_100174778);
  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  sub_10000A780(v14);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16);
}

uint64_t sub_100151A40()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100151B38()
{
  if (*(v0 + 128) == 3)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.fault.getter();
    if (sub_100003A34(v2))
    {
      *sub_100007648() = 0;
      sub_1000059D8(&_mh_execute_header, v3, v4, "Memory pressure events ended");
      sub_100002F64();
    }

    sub_100001F00();

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_100151C8C;

    return sub_100151E00();
  }
}

uint64_t sub_100151C8C()
{
  sub_100003884();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 112) = v4;
  *v4 = v3;
  sub_10000A780(v4);

  return AsyncStream.Iterator.next(isolation:)(v1 + 128);
}

uint64_t sub_100151E00()
{
  sub_100002BAC();
  *(v1 + 136) = v0;
  *(v1 + 288) = v2;
  v3 = type metadata accessor for Assertion.DaemonRep();
  *(v1 + 144) = v3;
  sub_100002F44(v3);
  *(v1 + 152) = v4;
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  sub_100065020(&qword_1001BE260, &qword_1001747B8);
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  v5 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  *(v1 + 208) = v5;
  sub_100002F44(v5);
  *(v1 + 216) = v6;
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100151F90()
{
  v50 = v0;
  if (qword_1001B8AD0 != -1)
  {
    sub_1000053A0(&qword_1001B8AD0);
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 248) = sub_10000641C(v1, qword_1001BE110);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v5 = sub_100007698();
    v6 = sub_1000031E0();
    v49 = v6;
    *v5 = 136315138;
    v7 = 0xEC0000006C616369;
    v8 = 0x746972632D6E6F6ELL;
    if (v4 != 1)
    {
      v8 = 0x6E776F6E6B6E75;
      v7 = 0xE700000000000000;
    }

    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x6C61636974697263;
    }

    if (v4)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    v11 = sub_100004A3C(v9, v10, &v49);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Processing memory pressure %s event", v5, 0xCu);
    sub_100003324(v6);
    sub_100002BB8(v6);
    sub_100002F64();
  }

  v12 = *(v0 + 136);
  v13 = sub_100152E90(v12, *(v0 + 288));
  v14 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask;
  if (*(v12 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask))
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_100007648();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Cancelling critical memory pressure watchdog", v17, 2u);
      sub_100002BB8(v17);
    }

    if (*(v12 + v14))
    {

      Task.cancel()();
    }

    *(v12 + v14) = 0;
  }

  if (!v13)
  {
    v24 = *(v0 + 208);
    v25 = *(v0 + 184);
    v26 = *(v0 + 136);
    v27 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID;
    *(v0 + 264) = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID;
    sub_100004BA0(v26 + v27, v0 + 16);
    sub_100154734(v26 + v27, v25);
    v28 = sub_100009D08();
    LODWORD(v24) = sub_10000C6C0(v28, v29, v24);
    sub_10000C790(v25, &qword_1001BE260, &qword_1001747B8);
    if (v24 == 1)
    {
      v30 = *(v0 + 208);
      v31 = *(v0 + 192);
      v32 = *(v0 + 136);
      type metadata accessor for Assertion();
      UUIDIdentifier.init()();
      Assertion.DaemonRep.init(policy:description:id:)();
      Assertion.DaemonRep.id.getter();
      sub_100009BFC(v31, 0, 1, v30);
      sub_100004B50(v26 + v27, v0 + 40);
      sub_1001547A4(v31, v26 + v27);
      swift_endAccess();
      sub_100003370((v32 + 112), *(v32 + 136));
      v33 = swift_task_alloc();
      *(v0 + 272) = v33;
      *v33 = v0;
      v33[1] = sub_100152834;
      sub_100016688();

      return sub_100073318();
    }

    sub_10015333C();
LABEL_34:
    sub_1000115E0();

    sub_100001F00();
    sub_100016688();

    __asm { BRAA            X1, X16 }
  }

  if (v13 != 1)
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.fault.getter();
    if (sub_100003A34(v37))
    {
      *sub_100007648() = 0;
      sub_1000059D8(&_mh_execute_header, v38, v39, "Unknown memory pressure event");
      sub_100002F64();
    }

    goto LABEL_34;
  }

  v18 = *(v0 + 200);
  v19 = *(v0 + 208);
  v20 = *(v0 + 136);
  v21 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID;
  sub_100004BA0(v20 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID, v0 + 88);
  sub_100154734(v20 + v21, v18);
  v22 = sub_100009D08();
  if (sub_10000C6C0(v22, v23, v19) == 1)
  {
    sub_10000C790(*(v0 + 200), &qword_1001BE260, &qword_1001747B8);
    goto LABEL_34;
  }

  v40 = *(v0 + 208);
  v41 = *(v0 + 192);
  v42 = *(v0 + 136);
  (*(*(v0 + 216) + 32))(*(v0 + 240), *(v0 + 200), v40);
  v43 = sub_100009D08();
  sub_100009BFC(v43, v44, 1, v40);
  sub_100004B50(v20 + v21, v0 + 112);
  sub_1001547A4(v41, v20 + v21);
  swift_endAccess();
  sub_100003370((v42 + 112), *(v42 + 136));
  v45 = swift_task_alloc();
  *(v0 + 256) = v45;
  *v45 = v0;
  v45[1] = sub_100152540;
  sub_100016688();

  return sub_100073748();
}

uint64_t sub_100152540()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100152638()
{
  v20 = v0;
  (*(v0[27] + 16))(v0[29], v0[30], v0[26]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[29];
  v5 = v0[30];
  v7 = v0[26];
  v6 = v0[27];
  if (v3)
  {
    v18 = v0[30];
    v8 = sub_100007698();
    v17 = sub_1000031E0();
    v19 = v17;
    *v8 = 136315138;
    sub_100154814();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v12 = *(v6 + 8);
    v12(v4, v7);
    v13 = sub_100004A3C(v9, v11, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Released critical memory pressure assertion %s", v8, 0xCu);
    sub_100003324(v17);
    sub_100002BB8(v17);
    sub_100002BB8(v8);

    v12(v18, v7);
  }

  else
  {

    v14 = *(v6 + 8);
    v14(v4, v7);
    v14(v5, v7);
  }

  sub_1000115E0();

  sub_100001F00();

  return v15();
}

uint64_t sub_100152834()
{
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 280) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_100152B80;
  }

  else
  {
    v6 = sub_100152958;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100152958()
{
  v25 = v0;
  (*(v0[19] + 16))(v0[21], v0[22], v0[18]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[27];
    v4 = v0[28];
    v5 = v0[26];
    v6 = v0[19];
    v21 = v0[21];
    v22 = v0[18];
    v7 = sub_100007698();
    v23 = sub_1000031E0();
    v24 = v23;
    *v7 = 136315138;
    Assertion.DaemonRep.id.getter();
    sub_100154814();
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    (*(v3 + 8))(v4, v5);
    v11 = *(v6 + 8);
    v11(v21, v22);
    v12 = sub_100004A3C(v8, v10, &v24);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Acquired critical memory pressure assertion %s", v7, 0xCu);
    sub_100003324(v23);
    sub_100002BB8(v23);
    sub_100002BB8(v7);
  }

  else
  {
    v13 = v0[21];
    v14 = v0[18];
    v15 = v0[19];

    v11 = *(v15 + 8);
    v11(v13, v14);
  }

  v16 = v0[22];
  v17 = v0[18];
  v18 = sub_10015333C();
  (v11)(v16, v17, v18);
  sub_1000115E0();

  sub_100001F00();

  return v19();
}

uint64_t sub_100152B80()
{
  v37 = v0;
  v1 = v0[33];
  v2 = v0[24];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = sub_100009D08();
  sub_100009BFC(v8, v9, 1, v10);
  sub_100004B50(v7 + v1, (v0 + 8));
  sub_1001547A4(v2, v7 + v1);
  swift_endAccess();
  (*(v5 + 16))(v4, v3, v6);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[27];
    v13 = v0[28];
    v15 = v0[26];
    v35 = v0[22];
    v16 = v0[20];
    v31 = v0[19];
    v32 = v0[18];
    v17 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = sub_1000031E0();
    v36 = v34;
    *v17 = 136315394;
    Assertion.DaemonRep.id.getter();
    sub_100154814();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = *(v31 + 8);
    v21(v16, v32);
    v22 = sub_100004A3C(v18, v20, &v36);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v33 = v23;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to acquire critical memory pressure assertion %s: %@", v17, 0x16u);
    sub_10000C790(v33, &qword_1001B8F68, &qword_10016FB80);
    sub_100002F64();
    sub_100003324(v34);
    sub_100002F64();
    sub_100002BB8(v17);

    v21(v35, v32);
  }

  else
  {
    v24 = v0[22];
    v26 = v0[19];
    v25 = v0[20];
    v27 = v0[18];

    v28 = *(v26 + 8);
    v28(v25, v27);
    v28(v24, v27);
  }

  sub_1000115E0();

  sub_100001F00();

  return v29();
}

uint64_t sub_100152E90(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (sub_10015323C(a2))
  {
    sub_100003370((a1 + 152), *(a1 + 176));
    v2 = sub_100124528();
    if (qword_1001B8AD0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000641C(v4, qword_1001BE110);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136315138;
      if (v2)
      {
        if (v2 == 1)
        {
          v9 = 0x746972632D6E6F6ELL;
        }

        else
        {
          v9 = 0x6E776F6E6B6E75;
        }

        if (v2 == 1)
        {
          v10 = 0xEC0000006C616369;
        }

        else
        {
          v10 = 0xE700000000000000;
        }
      }

      else
      {
        v10 = 0xE800000000000000;
        v9 = 0x6C61636974697263;
      }

      v11 = sub_100004A3C(v9, v10, &v22);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Fetched memory pressure directly from kernel: %s", v7, 0xCu);
      sub_100003324(v8);
    }

    if (v2 == 2)
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "kernel memory pressure unknown!", v14, 2u);
      }

      v15 = type metadata accessor for ModelManagerError();
      sub_100154878(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
      swift_allocError();
      (*(*(v15 - 8) + 104))(v16, enum case for ModelManagerError.internalError(_:), v15);
      swift_willThrow();
      if (qword_1001B8AD0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000641C(v17, qword_1001BE110);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Failed to query current kernel memory pressure. Assuming non-critical.", v20, 2u);
      }

      return 1;
    }
  }

  return v2;
}

BOOL sub_10015323C(char a1)
{
  v3 = sub_100065020(&qword_1001BE260, &qword_1001747B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-v4 - 8];
  if (a1 == 2)
  {
    return 1;
  }

  if (a1)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID;
  sub_100004BA0(v1 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID, v13);
  sub_100154734(v1 + v6, v5);
  sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v7 = sub_100009D08();
  v10 = sub_10000C6C0(v7, v8, v9) != 1;
  sub_10000C790(v5, &qword_1001BE260, &qword_1001747B8);
  return v10;
}

double sub_10015333C()
{
  v1 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v1 - 8);
  type metadata accessor for TaskPriority();
  v2 = sub_100009D08();
  sub_100009BFC(v2, v3, 1, v4);
  sub_1000065EC();
  v7 = sub_100154878(v5, v6, &unk_100174778);
  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = v7;
  v8[4] = v0;
  swift_retain_n();
  sub_1000652FC();
  *(v0 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask) = v9;

  return result;
}

void sub_100153474(uint64_t a1)
{
  if (!qword_1001BE160)
  {
    sub_10006A614(&qword_1001B8B78, &qword_10016F740);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BE160);
    }
  }
}

uint64_t sub_1001534D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  sub_100065020(&qword_1001BE260, &qword_1001747B8);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100153600, a4, 0);
}

uint64_t sub_100153600()
{
  sub_100003884();
  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_100153718;

  return sub_1001542B4();
}

uint64_t sub_100153718()
{
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v0;

  v5 = v2[20];
  v6 = v2[19];
  v7 = v2[18];
  v8 = v2[16];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v9 = sub_100153C84;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v9 = sub_1001538F0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1001538F0(uint64_t a1)
{
  v34 = v1;
  v2 = v1[22];
  if (static Task<>.isCancelled.getter())
  {
    goto LABEL_8;
  }

  v4 = v1[16];
  v3 = v1[17];
  type metadata accessor for _OSActivity();
  v1[23] = swift_initStackObject();
  v5 = sub_10001B160("Critical Memory Pressure Watchdog", 33, 2);
  v1[24] = v5;
  *(v4 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask) = 0;

  v6 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID;
  sub_100004BA0(v4 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID, (v1 + 7));
  sub_100154734(v4 + v6, v3);
  v7 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  LODWORD(v6) = sub_10000C6C0(v3, 1, v7);
  sub_10000C790(v3, &qword_1001BE260, &qword_1001747B8);
  if (v6 == 1)
  {
    if (qword_1001B8AD0 != -1)
    {
      sub_1000053A0(&qword_1001B8AD0);
    }

    v8 = type metadata accessor for Logger();
    sub_10000641C(v8, qword_1001BE110);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (sub_100003A34(v10))
    {
      v11 = sub_100007648();
      *v11 = 0;
      sub_100009DDC(&_mh_execute_header, v12, v13, "Critical memory pressure watchdog fired, but no assertion found.");
      sub_100002BB8(v11);
    }

    sub_100004B50(v5 + 24, (v1 + 10));
    os_activity_scope_leave((v5 + 24));
    swift_endAccess();

LABEL_8:

    sub_100001F00();
    sub_100001FBC();

    __asm { BRAA            X1, X16 }
  }

  sub_100003370((v1[16] + 152), *(v1[16] + 176));
  v16 = sub_100124528();
  if (v2)
  {
  }

  else if (!v16)
  {
    goto LABEL_25;
  }

  if (qword_1001B8AD0 != -1)
  {
    sub_1000053A0(&qword_1001B8AD0);
  }

  v17 = type metadata accessor for Logger();
  sub_10000641C(v17, qword_1001BE110);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.fault.getter();
  if (sub_100003A34(v19))
  {
    v20 = sub_100007698();
    v21 = sub_1000031E0();
    v33 = v21;
    sub_100012B50(4.8149e-34);
    v24 = v23 | 0x746972632D6E0000;
    if (v22)
    {
      v25 = 0x6E776F6E6B6E75;
    }

    else
    {
      v25 = v24;
    }

    if (v22)
    {
      v26 = 0xE700000000000000;
    }

    else
    {
      v26 = 0xEC0000006C616369;
    }

    v27 = sub_100004A3C(v25, v26, &v33);

    *(v20 + 4) = v27;
    sub_100013DFC(&_mh_execute_header, v28, v29, "Kernel memory pressure (%s) no longer critical when watchdog fired.");
    sub_100003324(v21);
    sub_100002BB8(v21);
    sub_100002F64();
  }

LABEL_25:
  v30 = swift_task_alloc();
  v1[25] = v30;
  *v30 = v1;
  sub_100002E80(v30);
  sub_100001FBC();

  return sub_100151E00();
}

uint64_t sub_100153C84(uint64_t a1)
{
  v32 = v1;
  if (static Task<>.isCancelled.getter())
  {
    goto LABEL_8;
  }

  v3 = v1[16];
  v2 = v1[17];
  type metadata accessor for _OSActivity();
  v1[23] = swift_initStackObject();
  v4 = sub_10001B160("Critical Memory Pressure Watchdog", 33, 2);
  v1[24] = v4;
  *(v3 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask) = 0;

  v5 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID;
  sub_100004BA0(v3 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID, (v1 + 7));
  sub_100154734(v3 + v5, v2);
  v6 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  LODWORD(v5) = sub_10000C6C0(v2, 1, v6);
  sub_10000C790(v2, &qword_1001BE260, &qword_1001747B8);
  if (v5 == 1)
  {
    if (qword_1001B8AD0 != -1)
    {
      sub_1000053A0(&qword_1001B8AD0);
    }

    v7 = type metadata accessor for Logger();
    sub_10000641C(v7, qword_1001BE110);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (sub_100003A34(v9))
    {
      v10 = sub_100007648();
      *v10 = 0;
      sub_100009DDC(&_mh_execute_header, v11, v12, "Critical memory pressure watchdog fired, but no assertion found.");
      sub_100002BB8(v10);
    }

    sub_100004B50(v4 + 24, (v1 + 10));
    os_activity_scope_leave((v4 + 24));
    swift_endAccess();

LABEL_8:

    sub_100001F00();
    sub_100001FBC();

    __asm { BRAA            X1, X16 }
  }

  sub_100003370((v1[16] + 152), *(v1[16] + 176));
  if (sub_100124528())
  {
    if (qword_1001B8AD0 != -1)
    {
      sub_1000053A0(&qword_1001B8AD0);
    }

    v15 = type metadata accessor for Logger();
    sub_10000641C(v15, qword_1001BE110);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (sub_100003A34(v17))
    {
      v18 = sub_100007698();
      v19 = sub_1000031E0();
      v31 = v19;
      sub_100012B50(4.8149e-34);
      v22 = v21 | 0x746972632D6E0000;
      if (v20)
      {
        v23 = 0x6E776F6E6B6E75;
      }

      else
      {
        v23 = v22;
      }

      if (v20)
      {
        v24 = 0xE700000000000000;
      }

      else
      {
        v24 = 0xEC0000006C616369;
      }

      v25 = sub_100004A3C(v23, v24, &v31);

      *(v18 + 4) = v25;
      sub_100013DFC(&_mh_execute_header, v26, v27, "Kernel memory pressure (%s) no longer critical when watchdog fired.");
      sub_100003324(v19);
      sub_100002BB8(v19);
      sub_100002F64();
    }
  }

  v28 = swift_task_alloc();
  v1[25] = v28;
  *v28 = v1;
  sub_100002E80(v28);
  sub_100001FBC();

  return sub_100151E00();
}

uint64_t sub_100154018()
{
  sub_100002BAC();
  v1 = *(*v0 + 128);
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;

  return _swift_task_switch(sub_100154148, v1, 0);
}

uint64_t sub_100154148()
{
  sub_100002BAC();
  v1 = *(v0 + 192);
  sub_100004B50(v1 + 24, v0 + 104);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  sub_100001F00();

  return v2();
}

uint64_t sub_100154200(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10006F558;

  return sub_1001534D8(a1, v4, v5, v6);
}

uint64_t sub_1001542B4()
{
  sub_100003884();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v1 + 64) = v12;
  sub_100002F44(v12);
  *(v1 + 72) = v13;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  sub_1000059F8();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1001543A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[10];
  v14 = v12[8];
  v15 = v12[9];
  v16 = type metadata accessor for ContinuousClock();
  v17 = sub_100154878(&qword_1001BBA88, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100154878(&qword_1001BDBE8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v18 = *(v15 + 8);
  v12[12] = v18;
  v12[13] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v13, v14);
  v19 = swift_task_alloc();
  v12[14] = v19;
  *v19 = v12;
  v19[1] = sub_100154534;
  v24 = v12[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v24, v12 + 2, v16, v17, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_100154534()
{
  sub_100003884();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  sub_100002B9C();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {
    sub_1000059F8();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {

    sub_100001F00();

    return v14();
  }
}

uint64_t sub_1001546D0()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_100154734(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BE260, &qword_1001747B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001547A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BE260, &qword_1001747B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100154814()
{
  result = qword_1001B9430;
  if (!qword_1001B9430)
  {
    sub_10006A614(&qword_1001B8B78, &qword_10016F740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9430);
  }

  return result;
}

uint64_t sub_100154878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001548C0()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BE280);
  sub_10000641C(v0, qword_1001BE280);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100154948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10001446C();
  a17 = v21;
  a18 = v22;
  sub_10000636C();
  a16 = v19;
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_10000A4F4(v23, qword_1001BE280);
  v25 = static os_log_type_t.fault.getter();
  if (sub_100006468(v25))
  {
    sub_100007698();
    a9 = sub_100018AB0();
    sub_10001378C(4.8149e-34);
    *(v19 + 16) = type metadata accessor for ModelXPCRequest.ExecuteRequest();
    sub_100065020(&qword_1001BE328, &qword_100174CA0);
    v26 = String.init<A>(describing:)();
    sub_100004A3C(v26, v27, &a9);
    sub_10000CFF4();
    *(v18 + 4) = v20;
    sub_100019B18(&_mh_execute_header, v28, v29, "Unhandled message with direct reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  type metadata accessor for ModelManagerError();
  sub_100005E18();
  sub_100015FE4(v30, v31, &protocol conformance descriptor for ModelManagerError);
  sub_10000EF40();
  v32 = swift_allocError();
  sub_100011D90(v32, v33);
  sub_100006098();
  (*(v34 + 104))();
  swift_willThrow();
  sub_100001F00();
  sub_100003770();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_100154B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10001446C();
  a17 = v21;
  a18 = v22;
  sub_10000636C();
  a16 = v19;
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_10000A4F4(v23, qword_1001BE280);
  v25 = static os_log_type_t.fault.getter();
  if (sub_100006468(v25))
  {
    sub_100007698();
    a9 = sub_100018AB0();
    sub_10001378C(4.8149e-34);
    *(v19 + 16) = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
    sub_100065020(&qword_1001BE330, &qword_100174CD8);
    v26 = String.init<A>(describing:)();
    sub_100004A3C(v26, v27, &a9);
    sub_10000CFF4();
    *(v18 + 4) = v20;
    sub_100019B18(&_mh_execute_header, v28, v29, "Unhandled message with direct reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  type metadata accessor for ModelManagerError();
  sub_100005E18();
  sub_100015FE4(v30, v31, &protocol conformance descriptor for ModelManagerError);
  sub_10000EF40();
  v32 = swift_allocError();
  sub_100011D90(v32, v33);
  sub_100006098();
  (*(v34 + 104))();
  swift_willThrow();
  sub_100001F00();
  sub_100003770();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_100154C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100154CBC, 0, 0);
}

uint64_t sub_100154CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.FetchModelInstance();
    v16 = sub_100065020(&qword_1001BE318, &qword_100174C30);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_100154E88()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1;
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_100003324((v2 + 16));
  sub_100001F00();

  return v5();
}

uint64_t sub_100154F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100154F90, 0, 0);
}

uint64_t sub_100154F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.CancelRequest();
    v16 = sub_100065020(&qword_1001BE320, &qword_100174C68);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_10015515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_10015517C, 0, 0);
}

uint64_t sub_10015517C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.AcquireRequest();
    v16 = sub_100065020(&qword_1001BE310, &qword_100174BE8);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_100155348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100155368, 0, 0);
}

uint64_t sub_100155368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.PrewarmSession();
    v16 = sub_100065020(&qword_1001BE340, &qword_100174D48);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_100155534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100155554, 0, 0);
}

uint64_t sub_100155554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.ReleaseRequest();
    v16 = sub_100065020(&qword_1001BE308, &qword_100174BB0);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_100155720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100155740, 0, 0);
}

uint64_t sub_100155740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.HoldAssetBundle();
    v16 = sub_100065020(&qword_1001BE2C0, &qword_1001749B8);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_10015590C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_10015592C, 0, 0);
}

uint64_t sub_10015592C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.LoadAssetBundle();
    v16 = sub_100065020(&qword_1001BE2C8, &qword_1001749F0);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_100155AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100155B18, 0, 0);
}

uint64_t sub_100155B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.FetchAssetsRequest();
    v16 = sub_100065020(&qword_1001BE2F0, &qword_100174B08);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_100155CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100155D04, 0, 0);
}

uint64_t sub_100155D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.FetchPolicyRequest();
    v16 = sub_100065020(&qword_1001BE2E0, &qword_100174A98);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_100155ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100155EF0, 0, 0);
}

uint64_t sub_100155EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.IgnoreAssetUpdates();
    v16 = sub_100065020(&qword_1001BE2A0, &qword_1001748D8);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_1001560BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_1001560DC, 0, 0);
}

uint64_t sub_1001560DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.CancelSessionRequest();
    v16 = sub_100065020(&qword_1001BE338, &qword_100174D10);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_1001562A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_1001562C8, 0, 0);
}

uint64_t sub_1001562C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.CreateSessionRequest();
    v16 = sub_100065020(&qword_1001BE350, &qword_100174D98);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_100156494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_1001564B4, 0, 0);
}

uint64_t sub_1001564B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.DeleteSessionRequest();
    v16 = sub_100065020(&qword_1001BE348, &qword_100174D80);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_100156680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_1001566A0, 0, 0);
}

uint64_t sub_1001566A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.SetAssetsHaveUpdated();
    v16 = sub_100065020(&qword_1001BE2A8, &qword_100174910);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_10015686C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_10015688C, 0, 0);
}

uint64_t sub_10015688C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.FetchAssertionsRequest();
    v16 = sub_100065020(&qword_1001BE300, &qword_100174B78);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_100156A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100156A78, 0, 0);
}

uint64_t sub_100156A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.ForceAssetVersionSwitch();
    v16 = sub_100065020(&qword_1001BE2B8, &qword_100174980);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_100156C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100156C64, 0, 0);
}

uint64_t sub_100156C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.FetchAvailabilityRequest();
    v16 = sub_100065020(&qword_1001BE2D0, &qword_100174A28);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_100156E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100156E50, 0, 0);
}

uint64_t sub_100156E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.RestoreAssertionsRequest();
    v16 = sub_100065020(&qword_1001BE2F8, &qword_100174B40);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_10015701C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_10015703C, 0, 0);
}

uint64_t sub_10015703C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.FetchDynamicAssetsRequest();
    v16 = sub_100065020(&qword_1001BE2E8, &qword_100174AD0);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_100157208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100157228, 0, 0);
}

uint64_t sub_100157228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.StartMonitoringInferences();
    v16 = sub_100065020(&qword_1001BE298, &qword_1001748A0);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_1001573F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100157414, 0, 0);
}

uint64_t sub_100157414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.FetchDisabledUseCasesRequest();
    v16 = sub_100065020(&qword_1001BE2D8, &qword_100174A60);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

uint64_t sub_1001575E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_100157600, 0, 0);
}

uint64_t sub_100157600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  if (qword_1001B8AD8 != -1)
  {
    sub_100008808();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A4F4(v13, qword_1001BE280);
  v15 = static os_log_type_t.fault.getter();
  if (sub_100006468(v15))
  {
    sub_100007698();
    sub_100018AB0();
    sub_1000126E8();
    sub_10001378C(4.8149e-34);
    *(v11 + 56) = type metadata accessor for ModelXPCRequest.DumpState();
    v16 = sub_100065020(&qword_1001BE2B0, &qword_100174948);
    v17 = sub_1000119B4(v16);
    sub_100008134(v17, v18, v19, v20);
    sub_10000CFF4();
    *(v10 + 4) = v12;
    sub_100019B18(&_mh_execute_header, v21, v22, "Unhandled message with callback reply of type: %s");
    sub_100009D14();
    sub_100002BD0();
  }

  v23 = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v24 = sub_10000CEC8(v23);
  sub_100008030(v24);
  type metadata accessor for ModelManagerError();
  sub_100005680();
  v25 = sub_100003754();
  v26(v25);
  sub_100002CBC();
  swift_storeEnumTagMultiPayload();
  sub_100005358();
  v40 = v27;
  v28 = swift_task_alloc();
  v29 = sub_100012908(v28);
  *v29 = v30;
  sub_10000A7A0(v29);
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10);
}

void sub_1001577CC(uint64_t a1, uint64_t a2, __int16 a3, os_unfair_lock_s *a4, uint64_t a5, uint64_t a6)
{
  if (((*(a6 + 24))(a5, a6) & 1) != 0 && (os_variant_has_internal_content() & 1) == 0)
  {
    type metadata accessor for ModelManagerError();
    sub_100005E18();
    sub_100015FE4(v38, v39, &protocol conformance descriptor for ModelManagerError);
    sub_10000EF40();
    v40 = swift_allocError();
    sub_100011D90(v40, v41);
LABEL_31:
    sub_100006098();
    (*(v53 + 104))();
    swift_willThrow();
    return;
  }

  if ((a3 & 0x100) != 0)
  {
    *token.val = AuditToken.auditToken.getter();
    *&token.val[2] = v15;
    *&token.val[4] = v16;
    *&token.val[6] = v17;
    AuditToken.processIdentifier.getter();
    v14 = csops_audittoken();
    LOBYTE(a3) = 0;
    v13 = 0x8000000100178870;
    v11 = 0xD00000000000002CLL;
  }

  else
  {
    v11 = (*(a6 + 16))(a5, a6);
    v13 = v12;
  }

  __chkstk_darwin(v14);
  sub_1000316EC();
  sub_100157DC4(&a4[4], &token);
  if (!v6)
  {
    os_unfair_lock_unlock(a4 + 6);
    v18 = token.val[0];

    if (v18)
    {
LABEL_32:

      return;
    }

    v19 = AuditToken.processIdentifier.getter();
    *token.val = AuditToken.token.getter();
    *&token.val[2] = v20;
    *&token.val[4] = v21;
    *&token.val[6] = v22;
    v23 = SecTaskCreateWithAuditToken(0, &token);
    v24 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
    if (!v23)
    {
LABEL_25:
      if (v24[347] != -1)
      {
        sub_100008808();
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_10000641C(v43, qword_1001BE280);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        sub_10000AAA8();
        v46 = swift_slowAlloc();
        sub_1000033D0();
        v47 = swift_slowAlloc();
        *token.val = v47;
        *v46 = 67109378;
        *(v46 + 4) = v19;
        *(v46 + 8) = 2080;
        *(v46 + 10) = sub_100004A3C(v11, v13, &token);
        _os_log_impl(&_mh_execute_header, v44, v45, "Client %d missing entitlement %s", v46, 0x12u);
        sub_100003324(v47);
        sub_100002BD0();

        sub_100002BD0();
      }

      if (a3)
      {
        type metadata accessor for ModelManagerError();
        sub_100005E18();
        sub_100015FE4(v48, v49, &protocol conformance descriptor for ModelManagerError);
        sub_10000EF40();
        v50 = swift_allocError();
        sub_100011D90(v50, v51);
        *v52 = v11;
        v52[1] = v13;
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    v25 = v23;
    *token.val = 0;
    v26 = String._bridgeToObjectiveC()();
    v55 = SecTaskCopyValueForEntitlement(v25, v26, &token);

    v27 = *token.val;
    if (*token.val)
    {
      v54 = v25;
      if (qword_1001B8AD8 != -1)
      {
        sub_100008808();
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000641C(v28, qword_1001BE280);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 67109120;
        *(v31 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v29, v30, "SecTaskCopyValueForEntitlement failed for client %d", v31, 8u);
        sub_100002BD0();
      }

      if (a3)
      {
        type metadata accessor for ModelManagerError();
        sub_100005E18();
        sub_100015FE4(v32, v33, &protocol conformance descriptor for ModelManagerError);
        sub_10000EF40();
        v34 = swift_allocError();
        sub_100011D90(v34, v35);
        *v36 = v11;
        v36[1] = v13;
        sub_100006098();
        (*(v37 + 104))();
        swift_willThrow();
        swift_unknownObjectRelease();

        return;
      }

      LOBYTE(a3) = 0;
      v25 = v54;
    }

    if (v55)
    {
      swift_unknownObjectRetain();
      v42 = swift_dynamicCast();
      if (v42)
      {
        if (v56 == 1)
        {
          __chkstk_darwin(v42);
          sub_1000316EC();
          sub_10015D110(&a4[4]);
          os_unfair_lock_unlock(a4 + 6);

          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
        goto LABEL_24;
      }

      swift_unknownObjectRelease();
    }

LABEL_24:
    v24 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
    goto LABEL_25;
  }

  os_unfair_lock_unlock(a4 + 6);
  __break(1u);
}

BOOL sub_100157DC4@<W0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000A130(*(v2 + 16), *(v2 + 24), *a1);
  *a2 = result;
  return result;
}

uint64_t sub_100157E68(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AuditToken();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100157F2C, 0, 0);
}

uint64_t sub_100157F2C()
{
  sub_100002BAC();
  sub_100004C7C();
  sub_10000ECC0();
  v0 = sub_10000209C();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100157F88()
{
  sub_100002BAC();
  sub_100007EF4();
  sub_10000C698();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100157FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = sub_100003268();
  sub_10000364C(v17);
  v18 = sub_100003ADC();
  sub_10009F90C(v18, v19, v20);
  sub_100011C28();
  v21 = swift_task_alloc();
  sub_10000CDF8(v21);
  sub_100019CC8();
  sub_10000D5C4();
  sub_100103F78(v15);
  sub_1000070EC();
  if (v14 == 1)
  {
    sub_100009BE4();

    sub_100002F54();
  }

  else
  {
    if (qword_1001B8AD8 != -1)
    {
      sub_100008808();
      swift_once();
    }

    v22 = sub_100013850();
    sub_10000641C(v22, qword_1001BE280);
    v23 = sub_10000A36C();
    v24(v23);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000111F8();
    sub_10001E6D8();
    sub_100019280();
    if (v26)
    {
      sub_10000AAA8();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 67109378;
      AuditToken.processIdentifier.getter();
      v28 = sub_100007B58();
      v29(v28);
      v30 = sub_100003520();
      sub_100002EA8();
      sub_100015FE4(v31, v32, &unk_100172F00);
      sub_1000062B0();
      Set.description.getter();
      sub_100005AD8();
      v33 = sub_100008004();
      sub_100004A3C(v33, v34, v35);
      sub_10000C6E8();
      *(v27 + 10) = v30;
      sub_1000079BC(&_mh_execute_header, v36, v37, "Request %d attempted on session %s");
      sub_100003324(v16);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
      v38 = sub_100007B58();
      v39(v38);
    }

    sub_10000E76C();
    sub_100005E18();
    sub_100015FE4(v40, v41, &protocol conformance descriptor for ModelManagerError);
    v42 = sub_10000A418();
    sub_10015D7D4(v42, v43);
    sub_1000076C8();
    (*(v44 + 104))();
    swift_willThrow();

    sub_1000020AC();
  }

  sub_100003540();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100158278(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AuditToken();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10015833C, 0, 0);
}

uint64_t sub_10015833C()
{
  sub_100002BAC();
  sub_100004C7C();
  sub_10000ECC0();
  v0 = sub_10000209C();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100158398()
{
  sub_100002BAC();
  sub_100007EF4();
  sub_10000C698();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1001583FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = sub_100003268();
  sub_10000364C(v17);
  v18 = sub_100003ADC();
  sub_10009F90C(v18, v19, v20);
  sub_100011C28();
  v21 = swift_task_alloc();
  sub_10000CDF8(v21);
  sub_100019CC8();
  sub_10000D5C4();
  sub_100103F78(v15);
  sub_1000070EC();
  if (v14 == 1)
  {
    sub_100009BE4();

    sub_100002F54();
  }

  else
  {
    if (qword_1001B8AD8 != -1)
    {
      sub_100008808();
      swift_once();
    }

    v22 = sub_100013850();
    sub_10000641C(v22, qword_1001BE280);
    v23 = sub_10000A36C();
    v24(v23);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000111F8();
    sub_10001E6D8();
    sub_100019280();
    if (v26)
    {
      sub_10000AAA8();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 67109378;
      AuditToken.processIdentifier.getter();
      v28 = sub_100007B58();
      v29(v28);
      v30 = sub_100003520();
      sub_100002EA8();
      sub_100015FE4(v31, v32, &unk_100172F00);
      sub_1000062B0();
      Set.description.getter();
      sub_100005AD8();
      v33 = sub_100008004();
      sub_100004A3C(v33, v34, v35);
      sub_10000C6E8();
      *(v27 + 10) = v30;
      sub_1000079BC(&_mh_execute_header, v36, v37, "Request %d attempted on session %s");
      sub_100003324(v16);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
      v38 = sub_100007B58();
      v39(v38);
    }

    sub_10000E76C();
    sub_100005E18();
    sub_100015FE4(v40, v41, &protocol conformance descriptor for ModelManagerError);
    v42 = sub_10000A418();
    sub_10015D7D4(v42, v43);
    sub_1000076C8();
    (*(v44 + 104))();
    swift_willThrow();

    sub_1000020AC();
  }

  sub_100003540();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}