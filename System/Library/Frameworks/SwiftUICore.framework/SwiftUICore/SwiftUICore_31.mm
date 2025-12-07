SwiftUI::Spacing __swiftcall LayoutProxy.spacing()()
{
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v2 = *InputValue;
  v3 = one-time initialization token for lockAssertionsAreEnabled;

  if (v3 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result.minima._rawValue = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    (*(*v2 + 112))();
  }

  return result;
}

uint64_t Text.init(_:)(uint64_t a1)
{
  type metadata accessor for AttributedStringTextStorage(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC7SwiftUI27AttributedStringTextStorage_str;
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

{
  type metadata accessor for AttachmentTextStorage();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  type metadata accessor for LocalizedStringResourceStorage(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC7SwiftUIP33_1A1BB6A07088C23EE7C52846B7BEB81330LocalizedStringResourceStorage_resource;
  v4 = type metadata accessor for LocalizedStringResource();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-v7];
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v3 + 16);
  v14(v8, a1, v2, v11);
  type metadata accessor for ClosedRange<Date>(0);
  (v14)(v5, a1 + *(v15 + 36), v2);
  DateInterval.init(start:end:)();
  outlined destroy of ClosedRange<Date>(a1, type metadata accessor for ClosedRange<Date>);
  type metadata accessor for DateTextStorage(0);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + OBJC_IVAR____TtC7SwiftUIP33_AEE0E21EC7C6B2D1204F94F94CBF738915DateTextStorage_storage, v13, v9);
  type metadata accessor for DateTextStorage.Storage(0);
  swift_storeEnumTagMultiPayload();
  return v16;
}

{
  type metadata accessor for DateTextStorage(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC7SwiftUIP33_AEE0E21EC7C6B2D1204F94F94CBF738915DateTextStorage_storage;
  v4 = type metadata accessor for DateInterval();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  type metadata accessor for DateTextStorage.Storage(0);
  swift_storeEnumTagMultiPayload();
  return v2;
}

BOOL specialized static _ProposedSize.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  specialized LazyMapSequence.Iterator.next()(&v44);
  v12 = v44;
  if (!v44)
  {
    goto LABEL_25;
  }

  outlined init with take of Any(v45, v43);
  v13 = *a5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for NSAttributedStringKey(0);
    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 32 * v14;
    outlined init with copy of Any(*(*a5 + 56) + 32 * v14, v42);
    __swift_destroy_boxed_opaque_existential_1(v43);

    v24 = *(v22 + 56);
    __swift_destroy_boxed_opaque_existential_1((v24 + v23));
    outlined init with take of Any(v42, (v24 + v23));
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v26[6] + 8 * v14) = v12;
  outlined init with take of Any(v43, (v26[7] + 32 * v14));
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v44);
    v12 = v44;
    if (v44)
    {
      v20 = 1;
      do
      {
        outlined init with take of Any(v45, v43);
        v32 = *a5;
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        v35 = *(v32 + 16);
        v36 = (v34 & 1) == 0;
        v18 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (*(v32 + 24) < v37)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, 1);
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 32 * v33;
          outlined init with copy of Any(*(*a5 + 56) + 32 * v33, v42);
          __swift_destroy_boxed_opaque_existential_1(v43);

          v31 = *(v29 + 56);
          __swift_destroy_boxed_opaque_existential_1((v31 + v30));
          outlined init with take of Any(v42, (v31 + v30));
        }

        else
        {
          v39 = *a5;
          *(*a5 + 8 * (v33 >> 6) + 64) |= 1 << v33;
          *(v39[6] + 8 * v33) = v12;
          outlined init with take of Any(v43, (v39[7] + 32 * v33));
          v40 = v39[2];
          v18 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v39[2] = v41;
        }

        specialized LazyMapSequence.Iterator.next()(&v44);
        v12 = v44;
      }

      while (v44);
    }

LABEL_25:
    outlined consume of Set<EventID>.Iterator._Variant(v46);

    return;
  }

LABEL_27:
  __break(1u);
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  specialized LazyMapSequence.Iterator.next()(v44);
  if (!v45)
  {
    goto LABEL_25;
  }

  v12 = *&v44[0];
  outlined init with take of AnyTrackedValue((v44 + 8), v43);
  v13 = *a5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 40 * v14;
    outlined init with copy of AnyTrackedValue(*(*a5 + 56) + 40 * v14, v42);
    __swift_destroy_boxed_opaque_existential_1(v43);
    v24 = *(v22 + 56);
    __swift_destroy_boxed_opaque_existential_1((v24 + v23));
    outlined init with take of AnyTrackedValue(v42, v24 + v23);
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v26[6] + 8 * v14) = v12;
  outlined init with take of AnyTrackedValue(v43, v26[7] + 40 * v14);
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(v44);
    if (v45)
    {
      v20 = 1;
      do
      {
        v12 = *&v44[0];
        outlined init with take of AnyTrackedValue((v44 + 8), v43);
        v32 = *a5;
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        v35 = *(v32 + 16);
        v36 = (v34 & 1) == 0;
        v18 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (*(v32 + 24) < v37)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, 1);
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 40 * v33;
          outlined init with copy of AnyTrackedValue(*(*a5 + 56) + 40 * v33, v42);
          __swift_destroy_boxed_opaque_existential_1(v43);
          v31 = *(v29 + 56);
          __swift_destroy_boxed_opaque_existential_1((v31 + v30));
          outlined init with take of AnyTrackedValue(v42, v31 + v30);
        }

        else
        {
          v39 = *a5;
          *(*a5 + 8 * (v33 >> 6) + 64) |= 1 << v33;
          *(v39[6] + 8 * v33) = v12;
          outlined init with take of AnyTrackedValue(v43, v39[7] + 40 * v33);
          v40 = v39[2];
          v18 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v39[2] = v41;
        }

        specialized LazyMapSequence.Iterator.next()(v44);
      }

      while (v45);
    }

LABEL_25:
    outlined consume of Set<EventID>.Iterator._Variant(v46);

    return;
  }

LABEL_27:
  __break(1u);
}

void type metadata accessor for (key: NSAttributedStringKey, value: Any)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (key: NSAttributedStringKey, value: Any))
  {
    type metadata accessor for NSAttributedStringKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: NSAttributedStringKey, value: Any));
    }
  }
}

uint64_t outlined destroy of ResolvableTextSegmentAttribute.Value(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    outlined init with take of Any(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return outlined destroy of (key: NSAttributedStringKey, value: Any)(&v18);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
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
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
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

id specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  outlined init with copy of Any((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

void specialized _NativeDictionary.copy()(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        outlined init with copy of Any(*(v3 + 56) + 32 * v18, v21);
        *(*(v5 + 48) + 8 * v18) = v19;
        outlined init with take of Any(v21, (*(v5 + 56) + 32 * v18));
        v20 = v19;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + 4 * v15) = v18)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      v18 = *(*(v3 + 56) + 4 * v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + 16 * v15) = v18)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      v18 = *(*(v3 + 56) + 16 * v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

void destroy for LocalizedStringKey.FormatArgument(uint64_t a1)
{
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v3 = type metadata accessor for AttributedString();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        return;
      }

      v3 = type metadata accessor for LocalizedStringResource();
    }

    v5 = *(*(v3 - 8) + 8);

    v5(a1, v3);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v4 = *(a1 + 40);
  }
}

uint64_t type metadata accessor for EnvironmentValues.CapitalizationContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for EnvironmentValues.CapitalizationContext;
  if (!type metadata singleton initialization cache for EnvironmentValues.CapitalizationContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

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

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void specialized LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, unint64_t, unint64_t), uint64_t a7, void (*a8)(uint64_t, uint64_t, void, uint64_t, unint64_t, unint64_t, uint64_t *, __n128), uint64_t a9)
{
  v139 = a8;
  v160 = a6;
  v161 = a7;
  v156 = a1;
  v157 = a2;
  v165 = *MEMORY[0x1E69E9840];
  v136 = type metadata accessor for EnvironmentValues.CapitalizationContext(0);
  v131 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v129 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v128 = v114 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v127 = (v114 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v126 = v114 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v135 = v114 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v125 = v114 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v124 = (v114 - v23);
  v130 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v114 - v26;
  v137 = type metadata accessor for Locale();
  v28 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v121 = v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v141 = v114 - v31;
  v149 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  MEMORY[0x1EEE9AC00](v149);
  v148 = v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v147 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v146 = v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v151 = v114 - v36;
  v159 = type metadata accessor for NSScanner.NumberRepresentation();
  v37 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v39 = v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for CharacterSet();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v41 = v114 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a3[1];
  v150 = *a3;
  v143 = v42;
  if (*(a5 + 16))
  {
    type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0);
    v43 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC8];
  }

  v163 = v43;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v44, 1, &v163);
  v142 = 0;
  v138 = a9;
  v155 = v163;
  v45 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v46 = MEMORY[0x193ABEC20](v156, v157);
  v47 = [v45 initWithString_];

  [v47 setCharactersToBeSkipped_];
  v163 = 0;
  v164 = 0xE000000000000000;
  Character.write<A>(to:)();
  CharacterSet.init(charactersIn:)();

  v48 = (v37 + 104);
  v49 = (v37 + 8);
  v133 = (v28 + 16);
  v158 = *MEMORY[0x1E696A028];
  v120 = v28 + 32;
  v123 = v28;
  v134 = (v28 + 8);
  v153 = "butedString key ";
  v154 = "Swift/Dictionary.swift";
  v152 = xmmword_18DDA6EB0;
  do
  {
    v56 = NSScanner.currentIndex.getter();
    v57 = NSScanner.scanUpToCharacters(from:)();
    if (v58)
    {
      v59 = v57;
      v60 = v58;
      v61 = NSScanner.currentIndex.getter();
      if (v61 >> 14 < v56 >> 14)
      {
        __break(1u);
LABEL_43:
        __break(1u);
      }

      v160(v59, v60, v56, v61);
    }

    v62 = NSScanner.currentIndex.getter();
    v63 = NSScanner.scanCharacter()();
    if (v63.value._object)
    {
      if (v63.value._countAndFlagsBits == 12369903 && v63.value._object == 0xA300000000000000)
      {
      }

      else
      {
        v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v64 & 1) == 0)
        {
          continue;
        }
      }

      v65 = v159;
      (*v48)(v39, v158, v159);
      v66 = NSScanner.scanInt(representation:)();
      v68 = v67;
      (*v49)(v39, v65);
      if ((v68 & 1) == 0)
      {
        v69 = NSScanner.scanCharacter()();
        if (v69.value._object)
        {
          if (v69.value._countAndFlagsBits == 12369903 && v69.value._object == 0xA300000000000000)
          {
          }

          else
          {
            v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v70 & 1) == 0)
            {
              continue;
            }
          }

          v71 = v155;
          if (!v155[2])
          {
            goto LABEL_6;
          }

          v72 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
          if ((v73 & 1) == 0)
          {
            goto LABEL_6;
          }

          v74 = v71[7] + *(v147 + 72) * v72;
          v75 = v146;
          outlined init with copy of LocalizedStringKey.FormatArgument(v74, v146, type metadata accessor for LocalizedStringKey.FormatArgument);
          v76 = v151;
          outlined init with take of LocalizedStringKey.FormatArgument(v75, v151, type metadata accessor for LocalizedStringKey.FormatArgument);
          v77 = v148;
          outlined init with copy of LocalizedStringKey.FormatArgument(v76, v148, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v76, type metadata accessor for LocalizedStringKey.FormatArgument);
            _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v77, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
LABEL_6:
            _ss23_ContiguousArrayStorageCyypGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E6F90]);
            v50 = swift_allocObject();
            *(v50 + 16) = v152;
            v163 = 0;
            v164 = 0xE000000000000000;
            _StringGuts.grow(_:)(38);

            v163 = 0;
            v164 = 0xE000000000000000;
            _StringGuts.grow(_:)(58);
            MEMORY[0x193ABEDD0](0xD00000000000002DLL, v154 | 0x8000000000000000);
            MEMORY[0x193ABEDD0](v156, v157);
            MEMORY[0x193ABEDD0](0x3A6469202020200ALL, 0xE900000000000020);
            v162[0] = v66;
            v51 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x193ABEDD0](v51);

            MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
            v52 = StaticString.description.getter();
            MEMORY[0x193ABEDD0](v52);

            MEMORY[0x193ABEDD0](58, 0xE100000000000000);
            v162[0] = 84;
            v53 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x193ABEDD0](v53);

            MEMORY[0x193ABEDD0](0xD00000000000001CLL, v153 | 0x8000000000000000);
            v54 = v163;
            v55 = v164;
            *(v50 + 56) = MEMORY[0x1E69E6158];
            *(v50 + 32) = v54;
            *(v50 + 40) = v55;
            print(_:separator:terminator:)();

            continue;
          }

          v118 = v48;
          v78 = *v77;
          v119 = *(v77 + 8);
          v117 = *(v77 + 16);
          v79 = *(v77 + 24);
          v80 = NSScanner.currentIndex.getter();
          if (v80 >> 14 < v62 >> 14)
          {
            goto LABEL_43;
          }

          v81 = v80;
          v115 = v78;
          v116 = v79;
          v140 = v27;
          v82 = v143;
          v163 = v150;
          v164 = v143;

          v132 = v81;
          String.subscript.getter();
          v83 = Substring.distance(from:to:)();

          if (v83 == String.count.getter())
          {
            goto LABEL_40;
          }

          v84 = v140;
          if (v82)
          {

            v85 = v150;
            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v150, v141);

            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE0I033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt1g5(v85, v84);

            if (!(v62 >> 14))
            {
LABEL_29:
              v86 = v125;
              outlined init with copy of LocalizedStringKey.FormatArgument(v84, v125, type metadata accessor for EnvironmentValues.CapitalizationContext);
              v87 = (*(v131 + 80) + 16) & ~*(v131 + 80);
              v88 = swift_allocObject();
              outlined init with take of LocalizedStringKey.FormatArgument(v86, v88 + v87, type metadata accessor for EnvironmentValues.CapitalizationContext);
              v89 = v124;
              *v124 = partial apply for closure #1 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:);
              *(v89 + 8) = v88;
              swift_storeEnumTagMultiPayload();
              v90 = v135;
              outlined init with copy of LocalizedStringKey.FormatArgument(v89, v135, type metadata accessor for EnvironmentValues.CapitalizationContext);
              v91 = v126;
              outlined init with copy of LocalizedStringKey.FormatArgument(v90, v126, type metadata accessor for EnvironmentValues.CapitalizationContext);
              v92 = v150;
              swift_retain_n();
              v93 = v142;
              _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(&v163, v91);
              v142 = v93;

              _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v91, type metadata accessor for EnvironmentValues.CapitalizationContext);
              v94 = v135;
              v95 = v89;
LABEL_37:
              if (v143)
              {
                _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE0K033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Ttg5(v92, v163);
              }

              _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v94, type metadata accessor for EnvironmentValues.CapitalizationContext);
              _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v95, type metadata accessor for EnvironmentValues.CapitalizationContext);
              _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v140, type metadata accessor for EnvironmentValues.CapitalizationContext);
              (*v134)(v141, v137);
LABEL_40:
              v114[2] = v163;
              v114[1] = v164;
              v162[0] = v163;
              v162[1] = v164;

              v111 = v115;
              v112 = v119;
              v113 = v117;
              (v139)(v115, v119, v117, v116, v62, v132, v162);
              outlined consume of Text.Storage(v111, v112, v113);

              _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v151, type metadata accessor for LocalizedStringKey.FormatArgument);

              v27 = v140;
              v48 = v118;
              continue;
            }
          }

          else
          {
            v96 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v150);
            if (v96)
            {
              (*v133)(v141, &v96[*(*v96 + 248)], v137);
            }

            else
            {
              if (one-time initialization token for defaultValue != -1)
              {
                swift_once();
              }

              v97 = v137;
              v98 = __swift_project_value_buffer(v137, static LocaleKey.defaultValue);
              (*v133)(v141, v98, v97);
            }

            v99 = v142;
            _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(v150, v84);
            v142 = v99;
            if (!(v62 >> 14))
            {
              goto LABEL_29;
            }
          }

          v100 = v123;
          v101 = v121;
          v102 = v137;
          (*(v123 + 16))(v121, v141, v137);
          v103 = (*(v100 + 80) + 48) & ~*(v100 + 80);
          v104 = swift_allocObject();
          v105 = v157;
          *(v104 + 2) = v156;
          *(v104 + 3) = v105;
          v106 = v132;
          *(v104 + 4) = v62;
          *(v104 + 5) = v106;
          (*(v100 + 32))(&v104[v103], v101, v102);
          v107 = v127;
          *v127 = partial apply for closure #2 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:);
          *(v107 + 8) = v104;
          swift_storeEnumTagMultiPayload();
          v94 = v128;
          outlined init with copy of LocalizedStringKey.FormatArgument(v107, v128, type metadata accessor for EnvironmentValues.CapitalizationContext);
          v108 = v129;
          outlined init with copy of LocalizedStringKey.FormatArgument(v94, v129, type metadata accessor for EnvironmentValues.CapitalizationContext);
          v109 = v150;
          swift_retain_n();

          v110 = v142;
          _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(&v163, v108);
          v142 = v110;

          _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v108, type metadata accessor for EnvironmentValues.CapitalizationContext);
          v95 = v107;
          v92 = v109;
          goto LABEL_37;
        }
      }
    }
  }

  while (![v47 isAtEnd]);
  (*(v144 + 8))(v41, v145);
}

uint64_t sub_18D1EFF98()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18D1F005C()
{
  v1 = *(type metadata accessor for EnvironmentValues.CapitalizationContext(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v3 = type metadata accessor for FormatStyleCapitalizationContext();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

void closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(int a1, int a2, uint64_t a3, uint64_t a4, id a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v13 = [a5 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v14 = _NSRange.init<A, B>(_:in:)();
  v16 = [a5 attributedSubstringFromRange_];
  (*(a12 + 72))();
}

uint64_t Text.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v44 = a4;
  v15 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v41 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v37 - v19;
  v21 = a2[1];
  v42 = *a2;
  v22 = *a3;
  v23 = a8;
  v24 = *(a9 + 8);
  v46 = a9;
  v24(a8, a9, v18);
  v25 = *(a7 + 16);
  if (v25)
  {
    v38 = v22;
    v39 = v20;
    v40 = a5;
    v45 = *(v46 + 24);
    v26 = (a7 + 16 * v25 + 24);
    v27 = v42;
    do
    {
      --v25;
      v28 = *(v26 - 1);
      v29 = *v26;
      v26 -= 16;
      v49[0] = v27;
      v49[1] = v21;
      v30 = outlined copy of Text.Modifier(v28, v29);
      v31 = v23;
      v32 = v45(&v47, v23, v46, v30);
      Text.Modifier.modify(style:environment:)(v33, v49, v28, v29);
      v32(&v47, 0);
      v23 = v31;
      outlined consume of Text.Modifier(v28, v29);
    }

    while (v25);
    v47 = v27;
    v48 = v21;
    v49[0] = v38;
    v34 = v46;
    Text.Storage.resolve<A>(into:in:with:)(a1, &v47, v49, v44, v40, v43 & 1, v31, v46);
    v20 = v39;
    v35 = v41;
    outlined init with copy of Text.Style(v39, v41);
    (*(v34 + 16))(v35, v23, v34);
  }

  else
  {
    v47 = v42;
    v48 = v21;
    v49[0] = v22;
    Text.Storage.resolve<A>(into:in:with:)(a1, &v47, v49, v44, a5, v43 & 1, a8, v46);
  }

  return _s7SwiftUI4TextV14ResolvedStringVWOhTm_2(v20, type metadata accessor for Text.Style);
}

uint64_t AttachmentTextStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v33 = a1;
  v36 = a4;
  type metadata accessor for Text.Style?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ImageResolutionContext(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a2;
  v16 = a2[1];
  v35 = *a3;
  v32 = a5;
  v17 = *(a5 + 8);

  v17(v36, a5);
  v18 = type metadata accessor for Text.Style(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 0, 1, v18);
  v31 = *MEMORY[0x1E698D3F8];
  v14[2] = 0;
  v20 = v12[8];
  v19(v14 + v20, 1, 1, v18);
  v21 = v12[9];
  v22 = v14 + v12[10];
  *v22 = 520;
  v22[2] = 2;
  *(v14 + v12[11]) = 3;
  v23 = v12[12];
  v24 = v36;
  *(v14 + v23) = 1;
  *v14 = v15;
  v14[1] = v16;
  v25 = v14 + v20;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  outlined assign with take of Text.Style?(v10, v25);
  *(v14 + v21) = v31;
  *&v41[0] = v15;
  *(&v41[0] + 1) = v16;
  *&v39[0] = v35;
  if (AttachmentTextStorage.resolveAndWriteAuxiliaryMetadataIfNeeded<A>(into:context:environment:options:)(v27, v14, v41, v39, v24, v26))
  {
    return outlined destroy of ImageResolutionContext(v14);
  }

  (*(**(v28 + 16) + 80))(v41, v14);
  v39[9] = v41[9];
  v40[0] = v42[0];
  *(v40 + 11) = *(v42 + 11);
  v39[4] = v41[4];
  v39[5] = v41[5];
  v39[6] = v41[6];
  v39[7] = v41[7];
  v39[8] = v41[8];
  v39[0] = v41[0];
  v39[1] = v41[1];
  v39[2] = v41[2];
  v39[3] = v41[3];
  v38[0] = v15;
  v38[1] = v16;
  v37 = v35;
  (*(v26 + 80))(v39, v38, &v37, v24, v26);
  outlined destroy of ImageResolutionContext(v14);
  return outlined destroy of Image.Resolved(v41);
}

void Text.Resolved.append(_:in:with:)(_OWORD *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v105 = type metadata accessor for Text.ResolvedString(0);
  MEMORY[0x1EEE9AC00](v105);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[9];
  v151 = a1[8];
  v152 = v10;
  v153[0] = a1[10];
  *(v153 + 11) = *(a1 + 171);
  v11 = a1[5];
  v149[0] = a1[4];
  v149[1] = v11;
  v12 = a1[7];
  v149[2] = a1[6];
  v150 = v12;
  v13 = a1[1];
  v148[0] = *a1;
  v148[1] = v13;
  v14 = a1[3];
  v148[2] = a1[2];
  v148[3] = v14;
  v15 = *a2;
  v16 = a2[1];
  v17 = *a3;
  *&v136[0] = 12369903;
  v121 = static String._uncheckedFromUTF8(_:)();
  v19 = v18;
  *&v136[0] = v15;
  *(&v136[0] + 1) = v16;
  v20 = type metadata accessor for Text.Resolved(0);
  v21 = *(v4 + *(v20 + 24));
  v114 = v17;
  *&v131[0] = v17;
  v22 = v4 + *(v20 + 32);
  v120 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(0, 0, v136, v21, v131, v22);
  if (!v16)
  {
    v136[0] = v15;

    v25 = specialized static ShouldRedactContentKey.value(in:)(v136);

    if (v25)
    {
      goto LABEL_3;
    }

LABEL_5:
    v101 = v19;
    v26 = *&v148[0];
    v122 = BYTE8(v148[0]);
    v146 = *(v148 + 9);
    v147[0] = *(&v148[1] + 9);
    *(v147 + 15) = DWORD2(v148[2]);
    v145 = v149[0];
    *(v144 + 15) = v149[2];
    v143 = *(v149 + 1);
    v144[0] = *(&v149[1] + 1);
    v113 = *(&v150 + 1);
    v111 = v150;
    v112 = *(&v151 + 1);
    v106 = v22;
    v107 = *(&v152 + 1);
    v142 = v153[0];
    v118 = *&v153[1];
    v119 = *&v148[0];
    v102 = v4;
    v103 = v151;
    v104 = v15;
    v110 = v152;
    v99 = v9;
    if (v149[0])
    {
      v108 = BYTE10(v153[1]);
      v109 = WORD4(v153[1]);
      v27 = *(&v148[2] + 12);
      v28 = *(&v148[3] + 4);
      v29 = HIDWORD(v148[3]);
      outlined init with copy of Image.Resolved(v148, v136);
      v30 = v28;
      v31 = v27;
      v32 = v29;
      goto LABEL_20;
    }

    *&v125[0] = *(v4 + 16);
    v33 = *&v125[0];
    *&v131[0] = v15;
    *(&v131[0] + 1) = v16;
    *&v134[0] = v114;
    outlined init with copy of Image.Resolved(v148, v136);
    outlined copy of Text.Style.TextStyleColor(v33);
    v34 = Text.Style.TextStyleColor.resolve(in:with:properties:includeDefaultAttributes:)(v131, v134, v22, 1);
    v116 = v35;
    v117 = v34;
    v37 = v36;
    outlined consume of Gradient.ProviderTag(v33);
    if ((v37 & 0x100000000) != 0)
    {
      __break(1u);
      return;
    }

    v38 = BYTE10(v153[1]);
    v145 = 0;
    v115 = v37;
    if (v122 == 255)
    {
      v45 = 0;
    }

    else
    {
      if (v122 == 2)
      {
        v39 = *(v119 + 32);
        v40 = *(v119 + 48);
        v41 = *(v119 + 16);
        outlined copy of Image.Location(v39);
        v42 = v40;
        outlined copy of Image.Location(v39);
        v43 = [v41 styleMask];
        *&v131[0] = v39;
        _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)(v43, v131, v136);

        outlined consume of Image.Location(v39);
        v44 = *&v136[0];
        v45 = WORD4(v136[0]);
        v46 = BYTE10(v136[0]);

        if ((v38 & 2) != 0)
        {
LABEL_11:
          v47 = v46 | 2;
LABEL_16:
          v48 = v44;
          v32 = v115;
          v30 = v116;
          v31 = v117;
          v49 = *(v106 + 32);
          v26 = v119;
          v118 = v48;
          v108 = v47;
          v109 = v45;
          if ((v49 & 1) == 0 && *&v117 == -1.0 && *(&v117 + 1) == -1.0)
          {
            *(v106 + 32) = v49 | 1;
          }

LABEL_20:
          *(v134 + 9) = v146;
          *(&v134[1] + 9) = v147[0];
          *(v135 + 1) = v143;
          *&v134[0] = v26;
          BYTE8(v134[0]) = v122;
          v116 = v30;
          v117 = v31;
          *(&v134[2] + 12) = v31;
          *(&v134[3] + 4) = v30;
          DWORD2(v134[2]) = *(v147 + 15);
          v115 = v32;
          HIDWORD(v134[3]) = v32;
          LOBYTE(v135[0]) = v145;
          *(&v135[1] + 1) = v144[0];
          *(&v135[1] + 12) = *(v144 + 11);
          v50 = type metadata accessor for SwiftUITextAttachment();
          v51 = objc_allocWithZone(v50);
          v52 = v51;
          v53 = &v51[OBJC_IVAR____TtC7SwiftUI21SwiftUITextAttachment_graphicsImage];
          v55 = v134[1];
          v54 = v134[2];
          *v53 = v134[0];
          *(v53 + 1) = v55;
          *(v53 + 2) = v54;
          v57 = v135[0];
          v56 = v135[1];
          v58 = v134[3];
          *(v53 + 92) = *(&v135[1] + 12);
          *(v53 + 4) = v57;
          *(v53 + 5) = v56;
          *(v53 + 3) = v58;
          if (v53[8] == 2)
          {
            if (v107)
            {
              v59 = *(v107 + 48);
            }

            else
            {
              v59 = 0uLL;
            }

            *&v51[OBJC_IVAR____TtC7SwiftUI21SwiftUITextAttachment_alignmentOrigin] = v59;
          }

          else
          {
            v60 = &v51[OBJC_IVAR____TtC7SwiftUI21SwiftUITextAttachment_alignmentOrigin];
            *v60 = 0;
            *(v60 + 1) = 0;
          }

          outlined init with copy of GraphicsImage(v134, v136);
          v133.receiver = v52;
          v133.super_class = v50;
          v61 = objc_msgSendSuper2(&v133, sel_initWithData_ofType_, 0, 0);
          v62 = v61;
          v63 = v103;
          v100 = v50;
          if ((v114 & 1) == 0 || (v153[0] & 1) != 0 || (v103 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
          {
            goto LABEL_36;
          }

          v98 = v61;
          if (v103 < 0)
          {
            v69 = v103;
            type metadata accessor for AccessibilityImageLabel.SystemSymbolTextStorage();
            v70 = swift_allocObject();
            v64 = v111;
            v67 = v112;
            v71 = v113;
            v97 = v70;
            v70[2] = v111;
            v70[3] = v71;
            v66 = v69;
            outlined copy of AccessibilityImageLabel?(v64, v71, v69, v67);
            v65 = 0;
            v68 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v64 = v111;
            if ((v103 & 1) == 0)
            {
              v81 = v113;
              v79 = v103;
              outlined copy of AccessibilityImageLabel?(v111, v113, v103, v112);
              outlined copy of Text.Storage(v64, v81, 0);
              v82 = v98;
              v80 = v64;
              goto LABEL_35;
            }

            v65 = v113;
            v66 = v103;
            outlined copy of Text.Storage(v111, v113, 1);
            v67 = v112;

            v97 = v64;
            v68 = v67;
          }

          outlined copy of AccessibilityImageLabel?(v64, v113, v66, v67);
          v72 = v98;
          v73 = v99;
          Text.Style.init()(v99);
          v74 = v104;
          v75 = v105;
          v76 = (v73 + *(v105 + 20));
          *v76 = 0;
          v76[1] = 0;
          v77 = (v73 + *(v75 + 24));
          *v77 = 0;
          v77[1] = 0xE000000000000000;
          *(v73 + *(v75 + 28)) = 0;
          *v76 = 0;
          v76[1] = 0;
          v78 = v97;
          specialized Text.resolve<A>(into:in:with:)(v73, v74, v16, v114, v97, v65, 1, v68);
          outlined consume of Text.Storage(v78, v65, 1);

          v79 = v103;
          v80 = *v77;
          v81 = v77[1];
          v64 = v111;

          outlined destroy of ParagraphStyleResolutionContext(v73, type metadata accessor for Text.ResolvedString);
LABEL_35:
          v83 = MEMORY[0x193ABEC20](v80, v81);

          v84 = v98;
          [v98 setAccessibilityLabel_];

          outlined consume of AccessibilityImageLabel?(v64, v113, v79, v112);
          v63 = v79;
          v62 = v84;
LABEL_36:
          v85 = v63;
          v114 = v16;
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v86 = static CoreGlue2.shared;
          v87 = v62;
          *&v124[0] = v62;
          *&v125[0] = v119;
          BYTE8(v125[0]) = v122;
          *(v125 + 9) = v146;
          *(&v125[1] + 9) = v147[0];
          DWORD2(v125[2]) = *(v147 + 15);
          *(&v125[2] + 12) = v117;
          *(&v125[3] + 4) = v116;
          HIDWORD(v125[3]) = v115;
          LODWORD(v105) = v145;
          LOBYTE(v126[0]) = v145;
          v126[2] = *(v144 + 15);
          *(&v126[1] + 1) = v144[0];
          *(v126 + 1) = v143;
          *&v127 = v111;
          *(&v127 + 1) = v113;
          *&v128 = v85;
          *(&v128 + 1) = v112;
          v88 = v107;
          *&v129 = v110;
          *(&v129 + 1) = v107;
          v130[0] = v142;
          *&v130[1] = v118;
          WORD4(v130[1]) = v109;
          BYTE10(v130[1]) = v108;
          v139 = v128;
          v140 = v129;
          v141[0] = v142;
          *(v141 + 11) = *(v130 + 11);
          v137[0] = v126[0];
          v137[1] = v126[1];
          v137[2] = v126[2];
          v138 = v127;
          v136[0] = v125[0];
          v136[1] = v125[1];
          v136[2] = v125[2];
          v136[3] = v125[3];
          v89 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0xC0);
          v90 = v87;
          v91 = v86;
          outlined init with copy of Image.Resolved(v125, v131);
          v89(v124, v136);

          v131[8] = v139;
          v131[9] = v140;
          v132[0] = v141[0];
          *(v132 + 11) = *(v141 + 11);
          v131[4] = v137[0];
          v131[5] = v137[1];
          v131[6] = v137[2];
          v131[7] = v138;
          v131[0] = v136[0];
          v131[1] = v136[1];
          v131[2] = v136[2];
          v131[3] = v136[3];
          outlined destroy of CoreGlue2.ResolvedImage(v131);

          if (one-time initialization token for kitAttachment != -1)
          {
            swift_once();
          }

          v92 = static NSAttributedStringKey.kitAttachment;
          *(&v136[1] + 1) = v100;
          *&v136[0] = v90;
          outlined init with take of Any(v136, v124);
          v93 = v90;
          v94 = v120;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v123 = v94;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v124, v92, isUniquelyReferenced_nonNull_native);

          v24 = v123;
          *&v136[0] = v119;
          BYTE8(v136[0]) = v122;
          *(v136 + 9) = v146;
          *(&v136[1] + 9) = v147[0];
          *(&v136[2] + 12) = v117;
          *(&v136[3] + 4) = v116;
          DWORD2(v136[2]) = *(v147 + 15);
          HIDWORD(v136[3]) = v115;
          LOBYTE(v137[0]) = v105;
          v137[2] = *(v144 + 15);
          *(&v137[1] + 1) = v144[0];
          *(v137 + 1) = v143;
          *&v138 = v111;
          *(&v138 + 1) = v113;
          *&v139 = v85;
          *(&v139 + 1) = v112;
          *&v140 = v110;
          *(&v140 + 1) = v88;
          v141[0] = v142;
          *&v141[1] = v118;
          WORD4(v141[1]) = v109;
          BYTE10(v141[1]) = v108;
          outlined destroy of Image.Resolved(v136);
          v19 = v101;
          v15 = v104;
          v16 = v114;
          v22 = v106;
          goto LABEL_41;
        }

LABEL_15:
        v47 = v46 & 0xFFFFFFFD;
        goto LABEL_16;
      }

      v45 = 1;
    }

    v44 = 0;
    v46 = 0;
    if ((v38 & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v15);

  if ((ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24 = v120;
LABEL_41:
  *&v136[0] = v15;
  *(&v136[0] + 1) = v16;
  Text.Resolved.append(_:with:in:)(v121, v19, v24, v136);

  v96 = *(v22 + 32);
  if ((v96 & 2) == 0)
  {
    *(v22 + 32) = v96 | 2;
  }
}

void *sub_18D1F1280(void *result, void **a2)
{
  v2 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v3 = result;
    v4 = v2;
    result = v3;
  }

  *result = v2;
  return result;
}

uint64_t EnvironmentValues.resolvedTextProvider.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v1);
  }

  else if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*v0) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static CorePlatformProvidersDefinition.providers.getter(&v3);
  return v4;
}

uint64_t closure #2 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t *a7, id a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = *a7;
  v18 = a7[1];
  v19 = [a8 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v33[1] = v21;
  _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v22 = _NSRange.init<A, B>(_:in:)();
  v24 = [a8 attributesAtIndex:v22 longestEffectiveRange:0 inRange:{v22, v23}];
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = Text.withInlinePresentationIntent(from:)(v25, a1, a2, a3 & 1, a4);
  v28 = v27;
  LOBYTE(a1) = v29;
  v31 = v30;

  v34[0] = v17;
  v34[1] = v18;
  v33[0] = a10;
  Text.resolve<A>(into:in:with:)(a9, v34, v33, v26, v28, a1 & 1, v31, a11, a12);
  outlined consume of Text.Storage(v26, v28, a1 & 1);
}

void type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void destroy for EnvironmentValues.CapitalizationContext(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v3 = type metadata accessor for FormatStyleCapitalizationContext();
    v4 = *(*(v3 - 8) + 8);

    v4(a1, v3);
  }
}

uint64_t outlined init with copy of EnvironmentValues.CapitalizationContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI17EnvironmentValuesVAAE21CapitalizationContextOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>()
{
  if (!lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>)
  {
    _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(255, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
    swift_getWitnessTable(MEMORY[0x1E69E66D8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>);
  }
}

uint64_t initializeWithCopy for ResolvedVectorGlyph(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = v4;
  if (v5 >= 2)
  {
    v7 = v5;
  }

  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v8 = *(a2 + 32);
  *(a1 + 32) = v8;
  v9 = v8;
  return a1;
}

void destroy for ResolvedVectorGlyph(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 >= 2)
  {
  }

  v3 = *(a1 + 32);
}

uint64_t one-time initialization function for kitAttachment()
{
  result = MEMORY[0x193ABEC20](0x686361747441534ELL, 0xEC000000746E656DLL);
  static NSAttributedStringKey.kitAttachment = result;
  return result;
}

uint64_t sub_18D1F19E4(char a1, char a2)
{
  v2 = a1 == 2;
  if (a2 != 2)
  {
    v2 = 0;
  }

  if (a1 != 2 && a2 != 2)
  {
    v2 = a1 ^ a2 ^ 1;
  }

  return v2 & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextJustification(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  if (*a1 != 2)
  {
    if (v2 != 2)
    {
      v4 = *a2 ^ *a1;
      if ((v4 & 1) == 0 && ((v4 >> 8) & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return v2 == 2;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance TextSuffixKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v9[2] = *(a1 + 32);
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = *(a2 + 32);
  v8 = v3;
  return static ResolvedTextSuffix.== infix(_:_:)(v9, v7) & 1;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance TextSuffixKey@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = -0.0;
  *(a1 + 40) = xmmword_18DD85510;
  return result;
}

uint64_t outlined destroy of AttributedString.LineHeight?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018StrikethroughStyleD0V_Tt1B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a2 == 1)
  {
    outlined copy of Text.LineStyle?(a1, 1);
    if (v4 == 1)
    {
      outlined copy of Text.LineStyle?(a3, 1);
      v8 = a1;
      v9 = 1;
LABEL_9:
      outlined consume of Text.LineStyle?(v8, v9);
      return v4 & 1;
    }

    outlined copy of Text.LineStyle?(a3, v4);
  }

  else
  {
    v13[0] = a1;
    v13[1] = a2;
    if (a4 != 1)
    {
      v12[0] = a3;
      v12[1] = a4;
      outlined copy of Text.LineStyle?(a1, a2);
      outlined copy of Text.LineStyle?(a3, v4);
      v10 = outlined copy of Text.LineStyle?(a1, a2);
      LOBYTE(v4) = static Text.LineStyle.== infix(_:_:)(v13, v12, v10);

      v8 = a1;
      v9 = a2;
      goto LABEL_9;
    }

    outlined copy of Text.LineStyle?(a1, a2);
    outlined copy of Text.LineStyle?(a3, 1);
    outlined copy of Text.LineStyle?(a1, a2);
  }

  outlined consume of Text.LineStyle?(a1, a2);
  outlined consume of Text.LineStyle?(a3, v4);
  LOBYTE(v4) = 0;
  return v4 & 1;
}

double outlined consume of Text.LineStyle?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double protocol witness for ScrollableCollection.nextVisibleCollectionViewID(towards:from:border:ignoring:) in conformance DynamicLayoutScrollable@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18DD85550;
  return result;
}

void protocol witness for static DerivedEnvironmentKey.value(in:) in conformance TextLayoutProperties.Key(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5[0] = v4;
  v5[1] = v3;

  TextLayoutProperties.init(from:)(v5, a2);
}

BOOL specialized static TextLayoutProperties.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a1 + 26);
  v6 = *(a1 + 27);
  v7 = *(a1 + 28);
  v9 = *(a1 + 32);
  v8 = *(a1 + 48);
  v10 = *(a1 + 64);
  v11 = *(a1 + 80);
  v12 = *(a1 + 81);
  v13 = *(a1 + 88);
  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  v18 = *(a1 + 128);
  v17 = *(a1 + 136);
  v19 = *(a1 + 144);
  v20 = *(a2 + 24);
  v21 = *(a2 + 25);
  v22 = *(a2 + 26);
  v23 = *(a2 + 27);
  v24 = *(a2 + 28);
  v26 = *(a2 + 32);
  v25 = *(a2 + 48);
  v27 = *(a2 + 64);
  v28 = *(a2 + 80);
  v29 = *(a2 + 88);
  v30 = *(a2 + 104);
  v31 = *(a2 + 112);
  v32 = *(a2 + 120);
  v34 = *(a2 + 128);
  v33 = *(a2 + 136);
  v35 = *(a2 + 144);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v36 = *(a2 + 8);
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  result = 0;
  if (v3)
  {
    v38 = v6 ^ v23;
    v39 = v11 ^ v28;
    v40 = vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v9, v26), vceqq_f64(v8, v25)), vuzp1q_s32(vceqq_f64(v10, v27), vceqq_f64(v13, v29))))) & (v5 == v22);
    if (v7 != v24)
    {
      v40 = 0;
    }

    v41 = (v38 | v39) ^ 1;
    if (v14 == v30)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0;
    }

    if ((v42 & v41 & v20) != 1 || v4 != v21)
    {
      return result;
    }

LABEL_31:
    if ((v12 ^ *(a2 + 81)))
    {
      return result;
    }

    v47 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21AnyTextSizingModifierC_Tt1g5(v15, v31);

    if (v47)
    {
      if (v16 == 2)
      {
        if (v32 == 2)
        {
          return v19 == v35;
        }
      }

      else if (v32 != 2)
      {
        result = 0;
        if (((v32 ^ v16) & 1) != 0 || v18 != v34 || v17 != v33)
        {
          return result;
        }

        return v19 == v35;
      }
    }

    return 0;
  }

  v44 = vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v9, v26), vceqq_f64(v8, v25)), vuzp1q_s32(vceqq_f64(v10, v27), vceqq_f64(v13, v29))))) & (v4 == v21);
  if (v5 != v22)
  {
    v44 = 0;
  }

  if (v7 == v24)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  if (v14 != v30 || v2 != *(a2 + 16))
  {
    v45 = 0;
  }

  if (v11 == v28 && (v45 & ((v20 | v6 ^ v23) ^ 1)) != 0)
  {
    goto LABEL_31;
  }

  return result;
}

uint64_t specialized static ResolvedTextSuffix.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  v9 = *a2;
  v8 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  v13 = *(a2 + 4);
  v12 = *(a2 + 5);
  v14 = *(a2 + 6);
  v42 = v13;
  if (v6 >> 62)
  {
    if (v6 >> 62 != 1)
    {
      if (v12 >> 62 == 2 && v12 == 0x8000000000000000 && !(v8 | *&v9 | v10 | v11 | v13 | v14))
      {
        outlined consume of ResolvedTextSuffix(v2, *(a1 + 1), v4, v3, v5, v6, v7);
        outlined consume of ResolvedTextSuffix(0, 0, v10, v11, v13, 0x8000000000000000, v14);
        return 1;
      }

      goto LABEL_15;
    }

    if (v12 >> 62 != 1)
    {
LABEL_15:
      v38 = *a2;
      v39 = *(a2 + 5);
      v40 = *(a2 + 1);
      v28 = *(a1 + 1);
      v29 = *a1;
      outlined copy of ResolvedTextSuffix(*a2, v8, v10, v11, *(a2 + 4), v12, v14);
      outlined copy of ResolvedTextSuffix(v29, v28, v4, v3, v5, v6, v7);
      outlined consume of ResolvedTextSuffix(v29, v28, v4, v3, v5, v6, v7);
      v20 = v38;
      v25 = v39;
      v21 = v40;
      v24 = v42;
      v22 = v10;
      v23 = v11;
      v26 = v14;
      goto LABEL_16;
    }
  }

  else if (v12 >> 62)
  {
    goto LABEL_15;
  }

  v37 = *(a1 + 1);
  v15 = *&v3 == *&v11 && *&v5 == *&v13;
  v36 = *(a2 + 2);
  if (!v15)
  {
LABEL_10:
    v16 = *(a1 + 2);
    v17 = *(a2 + 5);
    v35 = *(a2 + 6);
    v18 = *(a2 + 1);
    v19 = *a1;
    outlined copy of ResolvedTextSuffix(*&v9, v8, *(a2 + 2), v11, *(a2 + 4), v12, v35);
    outlined copy of ResolvedTextSuffix(v19, v37, v16, v3, v5, v6, v7);
    outlined consume of ResolvedTextSuffix(v19, v37, v16, v3, v5, v6, v7);
    v20 = v9;
    v21 = v18;
    v22 = v36;
    v23 = v11;
    v24 = v42;
    v25 = v17;
    v26 = v35;
LABEL_16:
    outlined consume of ResolvedTextSuffix(*&v20, v21, v22, v23, v24, v25, v26);
    return 0;
  }

  if (v4)
  {
    if ((v10 & (v2 == *&v9)) != 1)
    {
      goto LABEL_10;
    }
  }

  else if (v10 & 1 | (v2 != *&v9))
  {
    goto LABEL_10;
  }

  v30 = *(a1 + 2);
  v31 = *(a2 + 5);
  v32 = *(a2 + 6);
  v41 = *(a2 + 1);
  v33 = *a1;
  outlined copy of ResolvedTextSuffix(*&v9, v8, *(a2 + 2), v11, *(a2 + 4), v12, v32);
  outlined copy of ResolvedTextSuffix(v33, v37, v30, v3, v5, v6, v7);
  v34 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI16_ShapeStyle_PackV0E0V_Tt1g5(v7, v32);
  outlined consume of ResolvedTextSuffix(v33, v37, v30, v3, v5, v6, v7);
  outlined consume of ResolvedTextSuffix(*&v9, v41, v36, v11, v42, v31, v32);
  return v34 & 1;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.__Key_lineHeight@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AttributedString.LineHeight();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesVAAE02__D11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = type metadata accessor for AttributedString.LineHeight();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E6965590];
  v7 = MEMORY[0x1E69E6720];
  _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtMaTm_0(0, &lazy cache variable for type metadata for (AttributedString.LineHeight?, AttributedString.LineHeight?), &lazy cache variable for type metadata for AttributedString.LineHeight?, v6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a1, &v21 - v12, &lazy cache variable for type metadata for AttributedString.LineHeight?, v6, v7, _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0);
  _s7SwiftUI18HoverEffectContextVSgWOcTm_0(v22, &v13[v15], &lazy cache variable for type metadata for AttributedString.LineHeight?, v6, v7, _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) != 1)
  {
    _s7SwiftUI18HoverEffectContextVSgWOcTm_0(v13, v10, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720], _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0);
    if (v16(&v13[v15], 1, v3) != 1)
    {
      v18 = v21;
      (*(v4 + 32))(v21, &v13[v15], v3);
      lazy protocol witness table accessor for type AttributedString.LineHeight and conformance AttributedString.LineHeight(&lazy protocol witness table cache variable for type AttributedString.LineHeight and conformance AttributedString.LineHeight, MEMORY[0x1E6965590], MEMORY[0x1E6965598]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v4 + 8);
      v19(v18, v3);
      v19(v10, v3);
      outlined destroy of AttributedString.LineHeight?(v13, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
      return v17 & 1;
    }

    (*(v4 + 8))(v10, v3);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v3) != 1)
  {
LABEL_6:
    _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_1(v13, &lazy cache variable for type metadata for (AttributedString.LineHeight?, AttributedString.LineHeight?), &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    v17 = 0;
    return v17 & 1;
  }

  outlined destroy of AttributedString.LineHeight?(v13, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  v17 = 1;
  return v17 & 1;
}

void type metadata accessor for (AttributedString.LineHeight?, AttributedString.LineHeight?)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for GlassEffectBackdropObserver?(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21AnyTextSizingModifierC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x193AC03C0](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = MEMORY[0x193AC03C0](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = (*(*v4 + 88))(v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t ShapeStyleBox.isEqual(to:)(uint64_t a1)
{
  v2 = *v1;
  v3 = swift_dynamicCastClass();
  v4 = v3;
  if (v3)
  {
  }

  v7[6] = v4;
  MEMORY[0x1EEE9AC00](v3);
  v7[2] = v1;
  v7[3] = v2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ShapeStyleBox.isEqual(to:), v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v5, &v8);

  return v8 & 1;
}

uint64_t closure #1 in ShapeStyleBox.isEqual(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, _BYTE *a4@<X8>)
{
  v5 = *(*a2 + 120);
  v6 = *a1 + *(**a1 + 120);
  v9 = *(*a2 + 104);
  v10 = v6;
  v11 = 3;
  result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2 + v5, partial apply for closure #1 in compareValues<A>(_:_:options:), &v8, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a3);
  *a4 = v12;
  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance BackgroundMaterialKey@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18DDA6AB0;
  return result;
}

uint64_t type metadata accessor for VibrantColorStyle.Type(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    v7 = a3(255);
    result = a4(v7);
    atomic_store(result, a2);
  }

  return result;
}

uint64_t SecondaryLookupTrackedValue.hasMatchingValue(in:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  PropertyList.valueWithSecondaryLookup<A>(_:)(v5, a1, v5, v4);
  swift_checkMetadataState();
  LOBYTE(v4) = (*(AssociatedConformanceWitness + 24))(v2, v10);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance TypesettingConfigurationKey(uint64_t a1, uint64_t a2)
{
  if (!specialized static TypesettingLanguage.Storage.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v4 = *(type metadata accessor for TypesettingConfiguration(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = a2 + v4;
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v6 == 1)
  {
    if (v5 == 0.0)
    {
      if (v8 != 0.0)
      {
        LOBYTE(v9) = 0;
      }

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else if (*&v5 == 1)
    {
      if (*&v8 != 1)
      {
        LOBYTE(v9) = 0;
      }

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*&v8 <= 1uLL)
      {
        v9 = 0;
      }

      if (v9 != 1)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v5 != v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for static DerivedEnvironmentKey.value(in:) in conformance EnvironmentValues.EffectiveFontKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static EnvironmentValues.EffectiveFontKey.value(in:)(a1);
  *a2 = result;
  return result;
}

BOOL specialized static CUIDesignLibraryCacheKey.Props.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    return *(a1 + 1) == *(a2 + 1);
  }

  return result;
}

uint64_t protocol witness for static DerivedEnvironmentKey.value(in:) in conformance ShouldRedactSymbolImagesKey@<X0>(_BYTE *a1@<X8>, uint64_t *a2@<X0>)
{
  result = specialized static ShouldRedactSymbolImagesKey.value(in:)(a2);
  *a1 = result & 1;
  return result;
}

uint64_t specialized static ShouldRedactSymbolImagesKey.value(in:)(uint64_t *a1)
{
  v1 = *a1;
  if (a1[1])
  {

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v1);

    if (ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5)
    {

      v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA19UnredactSymbolImageVG_Tt1g5(v1);

LABEL_9:
      v6 = v3 ^ 1;
      return v6 & 1;
    }
  }

  else
  {
    v8[0] = *a1;
    v8[1] = 0;

    v4 = specialized static ShouldRedactContentKey.value(in:)(v8);

    if (v4)
    {
      v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(v1);
      if (v5)
      {
        v3 = *(v5 + 72);
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_9;
    }
  }

  v6 = 0;
  return v6 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI13_SymbolEffectV10IdentifiedV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v31 = *(a1 + 32);
    v32 = v3;
    *v33 = *(a1 + 64);
    *&v33[13] = *(a1 + 77);
    v4 = *(a2 + 48);
    v34 = *(a2 + 32);
    v35 = v4;
    *v36 = *(a2 + 64);
    *&v36[13] = *(a2 + 77);
    if (v31 == v34)
    {
      v5 = (a1 + 96);
      v6 = (a2 + 96);
      do
      {
        if (*(&v31 + 1) != *(&v34 + 1))
        {
          break;
        }

        v8 = *&v33[12];
        v7 = *&v33[16];
        v9 = v33[20];
        v10 = *&v33[24];
        v11 = v33[28];
        v13 = *&v36[12];
        v12 = *&v36[16];
        v14 = v36[20];
        v15 = *&v36[24];
        v16 = v36[28];
        v28 = v32;
        v29 = *v33;
        v30 = *&v33[8];
        v25 = v35;
        v26 = *v36;
        v27 = *&v36[8];
        outlined init with copy of _SymbolEffect.Identified(&v31, v24);
        outlined init with copy of _SymbolEffect.Identified(&v34, v24);
        outlined init with copy of _SymbolEffect.Identified(&v31, v24);
        outlined init with copy of _SymbolEffect.Identified(&v34, v24);
        v17 = static _SymbolEffect.Storage.== infix(_:_:)(&v28, &v25);
        outlined consume of _SymbolEffect.Storage(v25, *(&v25 + 1), v26, v27);
        outlined consume of _SymbolEffect.Storage(v28, *(&v28 + 1), v29, v30);
        outlined destroy of _SymbolEffect.Identified(&v34);
        outlined destroy of _SymbolEffect.Identified(&v31);
        if ((v17 & 1) == 0 || v8 != v13)
        {
          break;
        }

        if (v9)
        {
          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }

        else if ((v14 & 1) != 0 || v7 != v12)
        {
          return 0;
        }

        if (v11)
        {
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }

        else if ((v16 & 1) != 0 || v10 != v15)
        {
          return 0;
        }

        if (!--v2)
        {
          return 1;
        }

        v18 = v5[1];
        v31 = *v5;
        v32 = v18;
        v19 = v5[2];
        v20 = *(v5 + 45);
        v5 += 4;
        *v33 = v19;
        *&v33[13] = v20;
        v21 = v6[1];
        v34 = *v6;
        v35 = v21;
        *v36 = v6[2];
        v22 = *(v6 + 45);
        v6 += 4;
        *&v36[13] = v22;
      }

      while (v31 == v34);
    }

    return 0;
  }

  return 1;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance SymbolRenderingOptionsKey(__int16 *a1, __int16 *a2)
{
  v2 = *(a1 + 2);
  v3 = *a2;
  v4 = *(a2 + 2);
  v8 = *a1;
  v9 = v2;
  v6 = v3;
  v7 = v4;
  return specialized static SymbolRenderingOptions.== infix(_:_:)(&v8, &v6);
}

BOOL specialized static SymbolRenderingOptions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v2 == 8)
  {
    if (v5 != 8)
    {
      return 0;
    }
  }

  else if (v2 != v5)
  {
    return 0;
  }

  if (v3 == 2)
  {
    if (v6 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v6 == 2 || ((v3 ^ v6) & 1) != 0)
  {
    return 0;
  }

LABEL_11:
  v9 = v4 == 2;
  if (a2[2] != 2)
  {
    v9 = 0;
  }

  if (v4 != 2)
  {
    v10 = v4 ^ v7 ^ 1;
    if (v7 != 2)
    {
      return v10;
    }
  }

  return v9;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance SymbolRenderingOptionsKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1ED52FC63;
  *a1 = static SymbolRenderingOptionsKey.defaultValue;
  *(a1 + 2) = v1;
  return result;
}

uint64_t destroy for SecondaryLookupTrackedValue(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t ResolvedStyledText.StringDrawing.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  v7[6] = *(v0 + 112);
  v7[7] = v1;
  v7[8] = *(v0 + 144);
  v8 = *(v0 + 160);
  v2 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v2;
  v3 = *(v0 + 96);
  v7[4] = *(v0 + 80);
  v7[5] = v3;
  v4 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v4;
  outlined destroy of TextLayoutProperties(v7);

  v5 = *(v0 + 360);

  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

double partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(void *a1)
{
  return specialized closure #1 in StatefulRule<>.update<A>(to:)(a1, *(v1 + 16));
}

{
  return specialized closure #1 in StatefulRule<>.update<A>(to:)(a1, *(v1 + 16));
}

double specialized closure #1 in StatefulRule<>.update<A>(to:)(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];

  *a1 = v3;
  a1[1] = v4;

  return result;
}

{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesContentTransitionsKey>, &type metadata for DisablesContentTransitionsKey, &protocol witness table for DisablesContentTransitionsKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesContentTransitionsKey>, &type metadata for DisablesContentTransitionsKey, &protocol witness table for DisablesContentTransitionsKey, type metadata accessor for TransactionPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

Swift::Void __swiftcall ContentTransition.applyEnvironmentValues(style:layoutDirection:)(SwiftUI::ContentTransition::Style style, SwiftUI::LayoutDirection layoutDirection)
{
  v3 = *layoutDirection;
  v4 = *v2;
  v5 = *(v2 + 8) | (*(v2 + 12) << 32);
  v6 = *(v2 + 13);
  if (*(v2 + 13))
  {
    if (v6 != 1)
    {
      return;
    }

    if (BYTE4(v5) != 2)
    {
      v3 = *(v2 + 12);
    }

    if (v3)
    {
      v7 = 0x100000000;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 & 0xFFFFFFFF00000000 | *(v2 + 8);
  }

  else
  {
    if (BYTE4(v5) == 3)
    {
      v9 = *style.storage;
    }

    else
    {
      v9 = BYTE4(v5);
    }

    if (HIBYTE(*(v2 + 8)) != 2)
    {
      v3 = HIBYTE(*(v2 + 8));
    }

    v10 = (v3 & 1) == 0;
    v11 = 0x1000000;
    if (v10)
    {
      v11 = 0;
    }

    v8 = v11 & 0xFFFFFFFFFF000000 | *(v2 + 8) & 0xFFFFFFLL | (v9 << 32);
  }

  outlined consume of ContentTransition.Storage(v4, v5, v6);
  *v2 = v4;
  *(v2 + 8) = v8;
  *(v2 + 12) = BYTE4(v8);
  *(v2 + 13) = v6;
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5Tm(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a2(a1))
  {
  }

  return result;
}

BOOL specialized static Color.ResolvedHDR.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 == *a2 && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2 ? (v3 = a1[3] == a2[3]) : (v3 = 0), v3))
  {
    return a1[4] == a2[4];
  }

  else
  {
    return 0;
  }
}

void ResolvedStyledText.requiresTransition(to:)(uint64_t a1)
{
  if (v1 != a1 && (*(v1 + 260) & 0x80) != 0)
  {
    v2 = *(v1 + 216);
    if (v2)
    {
      v3 = *(a1 + 216);
      if (v3)
      {
        v13 = 0;
        v4 = v2;
        v5 = v3;
        v6 = [v4 length];
        v7 = swift_allocObject();
        v7[2] = &v13;
        v7[3] = v5;
        v7[4] = v4;
        v8 = swift_allocObject();
        *(v8 + 16) = partial apply for closure #1 in ResolvedStyledText.requiresTransition(to:);
        *(v8 + 24) = v7;
        aBlock[4] = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
        aBlock[5] = v8;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        aBlock[3] = &block_descriptor_12_1;
        v9 = _Block_copy(aBlock);
        v10 = v4;
        v11 = v5;

        [v10 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v9}];
        _Block_release(v9);
        LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

        if (v6)
        {
          __break(1u);
        }

        else
        {
          [v11 length];
        }
      }
    }
  }
}

uint64_t sub_18D1F3C18()
{

  return swift_deallocObject();
}

void ResolvedStyledText.modifyTransition(state:to:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    goto LABEL_18;
  }

  v4 = v2[27];
  if (v4)
  {
    v6 = [v4 string];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = *(a2 + 216);
    if (!v10)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v10 = *(a2 + 216);
    if (!v10)
    {
      goto LABEL_18;
    }

    v9 = 0;
    v7 = 0;
  }

  v11 = [v10 string];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v9)
  {
    if (v14)
    {
      if (v7 == v12 && v9 == v14)
      {

        goto LABEL_18;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  else if (!v14)
  {
    goto LABEL_18;
  }

LABEL_15:

LABEL_16:
  v15 = *a1;
  v16 = *(a1 + 8) | (*(a1 + 12) << 32);
  if (*(a1 + 13))
  {
LABEL_17:
    outlined consume of ContentTransition.Storage(v15, v16, *(a1 + 13));
    *a1 = 0x8000000004;
    *(a1 + 12) = 3;
    *(a1 + 8) = 0x2000000;
    goto LABEL_18;
  }

  v20 = (v15 >> 38) & 3;
  if (((v15 >> 38) & 3) > 1)
  {
    if (v20 == 3 || __PAIR128__((__CFADD__(v15, 0xFFFFFF7FFFFFFFFFLL) + *(a1 + 8) - 1) & 0xFFFFFF, v15 - 0x8000000001) >= 2)
    {
      goto LABEL_17;
    }
  }

  else if (!v20)
  {
    v21 = *(a1 + 8) & 0xFF000000;
    v22 = *(a1 + 8) | (*(a1 + 12) << 32);
    outlined consume of ContentTransition.Storage(v15, v16, 0);
    *a1 = 1;
    *(a1 + 12) = BYTE4(v22);
    *(a1 + 8) = v21;
    *(a1 + 13) = 0;
  }

LABEL_18:
  if (!*(a1 + 13))
  {
    v17 = *a1;
    if ((*a1 & 0xC000000000) == 0x4000000000 && (v17 & 0xFF0000000000) == 0x20000000000)
    {
      v18 = *(a1 + 8) | (*(a1 + 12) << 32);
      v19 = v17 & 0xFFFF000000000000 | ((((*(*v2 + 208))() & 1) == 0) << 40) | v17 | ((BYTE4(v17) & 1) << 32) | 0x4000000000;
      outlined consume of ContentTransition.Storage(*a1, *(a1 + 8) | (*(a1 + 12) << 32), *(a1 + 13));
      *a1 = v19;
      *(a1 + 12) = BYTE4(v18);
      *(a1 + 8) = v18;
      *(a1 + 13) = 0;
    }
  }
}

void ViewGraphHost.startDisplayLink(delay:makeCADisplayLink:)(uint64_t (*a1)(id *, char *), Swift::Double a2)
{
  v3 = v2;
  v5 = *(v2 + 136);
  if (v5)
  {
    goto LABEL_5;
  }

  v7 = type metadata accessor for ViewGraphDisplayLink();
  v8 = objc_allocWithZone(v7);

  v23[3] = v7;
  v23[0] = ViewGraphDisplayLink.init(host:)(v9);
  v10 = v23[0];
  v11 = a1(v23, sel_displayLinkTimer_);
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (v11)
  {
    v12 = *&v10[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link];
    *&v10[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link] = v11;
    v13 = v11;

    v14 = [objc_opt_self() mainRunLoop];
    [v13 addToRunLoop:v14 forMode:*MEMORY[0x1E695DA28]];

    v15 = *(v3 + 136);
    *(v3 + 136) = v10;
    v10 = v15;
  }

  v5 = *(v3 + 136);
  if (v5)
  {
LABEL_5:
    v16 = *(v3 + 88);
    swift_beginAccess();
    if ((*(v16 + 384) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = *(v16 + 384);
    }

    v18 = v5;

    v20.n128_f64[0] = a2;
    v21.n128_f64[0] = v17;
    ViewGraphDisplayLink.setNextUpdate(delay:interval:reasons:)(v19, v20, v21, v22);

    ViewGraphHost.clearUpdateTimer()();
  }

  else
  {
    ViewGraphHost.startUpdateTimer(delay:)(a2);
  }
}

char *ViewGraphDisplayLink.init(host:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link] = 0;
  swift_weakInit();
  *&v1[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate] = 0x7FF0000000000000;
  v3 = &v1[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_currentUpdate];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_interval] = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_reasons] = MEMORY[0x1E69E7CD0];
  v1[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_currentThread] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  swift_weakAssign();

  return v4;
}

uint64_t Path.retainRBPath()()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (v2 > 2)
  {
    if (v2 == 5)
    {
      if (*(v1 + 16))
      {
        if (*(v1 + 16) != 1)
        {
          v4 = one-time initialization token for bufferCallbacks;

          if (v4 != -1)
          {
            swift_once();
          }

          goto LABEL_17;
        }

LABEL_8:

LABEL_17:
        v5 = RBPathRetain();
        outlined destroy of Path(v0);
        return v5;
      }

      if (*(v1 + 24))
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    else if (v2 == 6)
    {
      return *MEMORY[0x1E69C71E0];
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!*(v0 + 32))
  {
    return RBPathMakeRect();
  }

  if (v2 == 1)
  {
    return RBPathMakeEllipse();
  }

  return RBPathMakeRoundedRect();
}

uint64_t @objc closure #5 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks(uint64_t a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3 + 24);

  return v4;
}

uint64_t @objc closure #3 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = MEMORY[0x193AC3600](v5 + 24, a2, a3);

  return v6;
}

void Path.PathBox.__deallocating_deinit()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      RBPathRelease();
    }

    else
    {
      MEMORY[0x193AC3610](v0 + 24);
    }
  }

  else
  {
    v1 = *(v0 + 24);
    if (!v1)
    {
      __break(1u);
      return;
    }
  }

  swift_deallocClassInstance();
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance SymbolVariantsKey(__int16 *a1, __int16 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return specialized static SymbolVariants.== infix(_:_:)(&v5, &v4) & 1;
}

uint64_t specialized static SymbolVariants.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return 0;
    }
  }

  else if (v3 == 3 || v2 != v3)
  {
    return 0;
  }

  return 1;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance SymbolVariantsKey@<X0>(_WORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static SymbolVariantsKey.defaultValue;
  return result;
}

uint64_t protocol witness for static DerivedEnvironmentKey.value(in:) in conformance EnvironmentValues.EffectiveSymbolFontKey@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static EnvironmentValues.EffectiveSymbolFontKey.value(in:)(a1);
  *a2 = result;
  return result;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance UIKitPlatformColorProvider@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PlatformColorProvider.resolveHDR(in:)(*a1, a1[1], *v2, &v5);
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

__n128 protocol witness for Animatable.animatableData.getter in conformance CGPoint@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

Swift::Void __swiftcall AnimatableAttribute.updateValue()()
{
  v2 = v0;
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = &v20[-v6];
  v9 = *(v8 + 48);
  Value = AGGraphGetValue();
  v12 = v11;
  (*(*(v3 - 8) + 16))(v7, Value, v3);
  v7[v9] = v12 & 1;
  v13 = *(v1 + 4);
  v15 = type metadata accessor for AnimatableAttributeHelper(0, v3, *(v2 + 24), v14);
  v22 = *(v15 + 16);
  OutputValue = AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v7, 0, v13, _ViewInputs.base.modify, v21, v15);
  if ((v7[v9] & 1) != 0 || (OutputValue = AGGraphGetOutputValue()) == 0)
  {
    v17 = MEMORY[0x1EEE9AC00](OutputValue);
    *&v20[-16] = v2;
    swift_getWitnessTable(protocol conformance descriptor for AnimatableAttribute<A>, v2, v17);
    *&v20[-8] = v18;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v7, partial apply for closure #1 in StatefulRule.value.setter, &v20[-32], v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v19);
    (*(v5 + 8))(v7, TupleTypeMetadata2);
  }

  else
  {
    (*(v5 + 8))(v7, TupleTypeMetadata2);
  }
}

uint64_t AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v251 = a5;
  LODWORD(v254) = a3;
  v241 = a2;
  v258 = a1;
  v283 = *MEMORY[0x1E69E9840];
  v263 = type metadata accessor for OSSignpostID();
  v262 = *(v263 - 8);
  MEMORY[0x1EEE9AC00](v263);
  v266 = &v229 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v247 = &v229 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v252 = &v229 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v242 = &v229 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v253 = &v229 - v17;
  MEMORY[0x1EEE9AC00](v18);
  DynamicType = &v229 - v19;
  v20 = *(a6 + 16);
  v246 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v229 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v265 = type metadata accessor for Optional();
  v264 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v27 = &v229 - v26;
  v256 = AssociatedTypeWitness;
  v255 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v28);
  v249 = &v229 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v261 = &v229 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v229 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v250 = (&v229 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v229 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v229 - v41;
  v259 = a6;
  v257 = *(a6 + 48);
  if (*(v6 + v257))
  {
    Value = AGGraphGetValue();
    if (v44)
    {
      v45 = *Value;
    }

    else
    {
      v45 = -INFINITY;
    }
  }

  else
  {
    v45 = -INFINITY;
  }

  v260 = v6;
  v46 = AnimatableAttributeHelper.checkReset()();
  v47 = v258;
  if (v46)
  {
    *(v47 + *(swift_getTupleTypeMetadata2() + 48)) = 1;
  }

  result = swift_getTupleTypeMetadata2();
  v248 = *(result + 48);
  if (*(v47 + v248) != 1)
  {
    v56 = v256;
    v59 = v260;
    v57 = v261;
    goto LABEL_99;
  }

  v237 = v39;
  v239 = a4;
  (*(v24 + 24))(v20, v24);
  v49 = v42;
  v50 = v264;
  v51 = v264[2];
  v238 = *(v259 + 44);
  v52 = v265;
  v51(v27, v260 + v238, v265);
  v53 = v255;
  v54 = v256;
  v55 = (*(v255 + 48))(v27, 1, v256);
  v244 = v49;
  if (v55 == 1)
  {
    (v50[1])(v27, v52);
    v56 = v54;
    v57 = v261;
    v58 = v52;
LABEL_15:
    v47 = v258;
    goto LABEL_98;
  }

  v60 = v237;
  (*(v53 + 32))(v237, v27, v54);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    (*(v53 + 8))(v60, v54);
    v56 = v54;
LABEL_14:
    v57 = v261;
    v58 = v265;
    v50 = v264;
    goto LABEL_15;
  }

  AGGraphClearUpdate();
  closure #1 in AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v260, v20, v24, v62, &v271);
  AGGraphSetUpdate();
  v63 = v271;
  v231 = Transaction.effectiveAnimation.getter(*&v271);
  v245 = v24;
  if (v231)
  {
    v64 = v20;
    v53 = v255;
  }

  else
  {
    v53 = v255;
    if (!v241)
    {
      v56 = v256;
      (*(v255 + 8))(v237, v256);

      goto LABEL_14;
    }

    v64 = v20;
  }

  v65 = *(v53 + 16);
  v66 = v250;
  v67 = v256;
  v65(v250, v244, v256);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  v68 = v260;
  v45 = *AGGraphGetValue();
  v47 = *(v68 + v257);
  v240 = v64;
  v230 = v63;
  if (!v47)
  {
    v65(v34, v66, v67);
    v277 = v45;
    v270 = v64;
    swift_getMetatypeMetadata();
    v271 = *&v67;
    swift_getExtendedExistentialTypeMetadata();
    v107 = swift_dynamicCast();
    if (v107)
    {
      v109 = v271;
    }

    else
    {
      v109 = 0.0;
    }

    if (v107)
    {
      v110 = v272;
    }

    else
    {
      v110 = 0;
    }

    type metadata accessor for AnimatorState(0, v67, AssociatedConformanceWitness, v108);
    swift_allocObject();

    v111 = v231;

    v232 = AnimatorState.init(animation:interval:at:in:finishingDefinition:)(v112, v34, &v277, *&v63, *&v109, v110);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v114 = CurrentAttribute;
    LODWORD(v253) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v253)
    {
      v115 = 0;
    }

    else
    {
      v115 = CurrentAttribute;
    }

    v116 = v246;
    (*(v246 + 16))(v23, v258, v64);
    DynamicType = swift_getDynamicType();
    v117 = (*(v116 + 8))(v23, v64);
    (*(*v111 + 96))(&v277, v117);
    v119 = v277;
    v118 = v278;
    v57 = v279;
    v58 = v280;
    v120 = v281;
    v121 = v282;
    v269 = 0x7FF8000000000000;
    v270 = 0x7FF8000000000000;
    v267 = 0x7FF8000000000000;
    v268 = 0x3FF0000000000000;
    v271 = v277;
    v272 = v278;
    v273 = v279;
    v274 = v280;
    v275 = v281;
    LOBYTE(v276) = v282;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v271, &v270, &v269, &v268, &v267);
    v122 = v269;
    v123 = v270;
    v124 = v267;
    v125 = v268;
    if (one-time initialization token for enabledCategories != -1)
    {
      v246 = v270;
      v236 = v269;
      v241 = v268;
      v235 = v267;
      swift_once();
      v124 = v235;
      v125 = v241;
      v122 = v236;
      v123 = v246;
    }

    v24 = v245;
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v126 = static CustomEventTrace.recorder) != 0)
      {
        v127 = v114 == v253;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v128 = *(v126 + 16);
        LODWORD(v271) = v115;
        BYTE4(v271) = v127;
        v272 = DynamicType;
        v273 = v123;
        v274 = v122;
        v275 = v125;
        v276 = v124;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v246 = v129;

        v130 = v128;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v119, v118, v57, v58, v120, v121);
      }

      else
      {
        outlined consume of Animation.Function(*&v119, v118, v57, v58, v120, v121);
      }

      v131 = one-time initialization token for animationState;

      v47 = v258;
      v57 = v261;
      v58 = v265;
      v119 = v230;
      if (v131 == -1)
      {
LABEL_59:
        v89 = *(&static Signpost.animationState + 1);
        v90 = *&static Signpost.animationState;
        LOBYTE(v56) = word_1ED5283E8;
        LOBYTE(v75) = HIBYTE(word_1ED5283E8);
        v132 = byte_1ED5283EA;
        LODWORD(v246) = static os_signpost_type_t.begin.getter();
        v271 = *&v90;
        v272 = v89;
        LOBYTE(v273) = v56;
        BYTE1(v273) = v75;
        BYTE2(v273) = v132;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v148 = v232;

          *(v260 + v257) = v148;
          v56 = v256;
          goto LABEL_97;
        }

        v133 = one-time initialization token for _signpostLog;

        if (v133 != -1)
        {
          goto LABEL_199;
        }

        goto LABEL_61;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_59;
  }

  v271 = v45;

  LOBYTE(v277) = 0;
  v69 = v231;
  v232 = v47;
  AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v231, v66, &v271, *&v63, v254);
  v70 = AGGraphGetCurrentAttribute();
  v71 = v70;
  LODWORD(v47) = *MEMORY[0x1E698D3F8];
  if (v70 == *MEMORY[0x1E698D3F8])
  {
    v72 = 0;
  }

  else
  {
    v72 = v70;
  }

  LODWORD(v241) = v72;
  v73 = v246;
  (*(v246 + 16))(v23, v258, v64);
  v236 = swift_getDynamicType();
  v74 = (*(v73 + 8))(v23, v64);
  (*(*v69 + 96))(&v277, v74);
  v75 = *&v277;
  v56 = v278;
  v57 = v279;
  v76 = v280;
  v269 = 0x7FF8000000000000;
  v270 = 0x7FF8000000000000;
  v267 = 0x7FF8000000000000;
  v268 = 0x3FF0000000000000;
  v271 = v277;
  v272 = v278;
  v273 = v279;
  v274 = v280;
  v77 = v281;
  v275 = v281;
  LODWORD(v252) = v282;
  LOBYTE(v276) = v282;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v271, &v270, &v269, &v268, &v267);
  v78 = v269;
  v79 = v270;
  v80 = v267;
  v81 = v268;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_194;
  }

  while (1)
  {
    v24 = v245;
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_195:
      swift_once();
      goto LABEL_33;
    }

    v82 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v242) = v47;
    if (v82 && (v83 = static CustomEventTrace.recorder) != 0)
    {
      v84 = v71 == v242;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v85 = *(v83 + 16);
      LODWORD(v271) = v241;
      BYTE4(v271) = v84;
      v272 = v236;
      v273 = v79;
      v274 = v78;
      v275 = v81;
      v276 = v80;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
      v246 = v86;

      v87 = v85;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v75, v56, v57, v76, v77, v252);
    }

    else
    {
      outlined consume of Animation.Function(v75, v56, v57, v76, v77, v252);
    }

    v88 = one-time initialization token for animationState;

    v56 = v256;
    v57 = v261;
    if (v88 != -1)
    {
      goto LABEL_195;
    }

LABEL_33:
    v89 = *(&static Signpost.animationState + 1);
    v90 = *&static Signpost.animationState;
    v91 = word_1ED5283E8;
    v47 = HIBYTE(word_1ED5283E8);
    v92 = byte_1ED5283EA;
    v93 = static os_signpost_type_t.event.getter();
    v271 = *&v90;
    v272 = v89;
    LOBYTE(v273) = v91;
    BYTE1(v273) = v47;
    BYTE2(v273) = v92;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      v47 = v258;
      goto LABEL_95;
    }

    LODWORD(v252) = v93;
    v94 = one-time initialization token for _signpostLog;

    if (v94 != -1)
    {
      swift_once();
    }

    v95 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_18DDAF080;
    v96 = AGGraphGetCurrentAttribute();
    v97 = v242;
    if (v96 == v242)
    {
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      swift_once();
LABEL_61:
      v134 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v135 = swift_allocObject();
      *(v135 + 1) = xmmword_18DDAF080;
      v136 = AGGraphGetCurrentAttribute();
      v47 = v253;
      if (v136 == v253)
      {
        __break(1u);
      }

      else
      {
        v137 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v139 = MEMORY[0x1E69E6870];
        *(v135 + 7) = MEMORY[0x1E69E6810];
        *(v135 + 8) = v139;
        *(v135 + 4) = Counter;
        v140 = AGGraphGetCurrentAttribute();
        if (v140 != v47)
        {
          v141 = MEMORY[0x1E69E76D0];
          *(v135 + 12) = MEMORY[0x1E69E7668];
          *(v135 + 13) = v141;
          *(v135 + 18) = v140;
          v142 = _typeName(_:qualified:)();
          v144 = v143;
          *(v135 + 17) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(v135 + 18) = v145;
          *(v135 + 14) = v142;
          *(v135 + 15) = v144;
          if ((v75 & 1) == 0)
          {
LABEL_158:
            v236 = v90;
            if (v90 == 20)
            {
              a4 = 3;
            }

            else
            {
              a4 = 4;
            }

            v20 = bswap32(v90) | (4 * WORD1(v90));
            LODWORD(v153) = v246;
            v212 = v262 + 16;
            v233 = *(v262 + 16);
            v213 = v233(v252, v242, v263);
            v56 = 0;
            LOBYTE(v277) = 1;
            DynamicType = (16 * a4);
            v234 = v212;
            v246 = v212 - 8;
            v241 = v135 + 32;
            v235 = a4;
            do
            {
              v253 = &v229;
              MEMORY[0x1EEE9AC00](v213);
              v75 = &v229 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
              v24 = v75 + 8;
              v215 = a4;
              v216 = (v75 + 8);
              do
              {
                *(v216 - 1) = 0;
                *v216 = 0;
                v216 += 16;
                --v215;
              }

              while (v215);
              v156 = &v241[40 * v56];
              while (1)
              {
                v217 = *(v135 + 2);
                if (v56 == v217)
                {
                  break;
                }

                if (v56 >= v217)
                {
                  goto LABEL_186;
                }

                ++v56;
                outlined init with copy of AnyTrackedValue(v156, &v271);
                v218 = v274;
                v47 = v275;
                __swift_project_boxed_opaque_existential_1(&v271, v274);
                *(v24 - 8) = CVarArg.kdebugValue(_:)(v20 | v153, v218, v47);
                *v24 = v219 & 1;
                v24 += 16;
                v151 = __swift_destroy_boxed_opaque_existential_1(&v271);
                v156 += 40;
                if (!--a4)
                {
                  goto LABEL_170;
                }
              }

              LOBYTE(v277) = 0;
LABEL_170:
              v220 = v236;
              if (v236 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v24 = v245;
              v58 = v265;
              if (*(v75 + 8) == 1)
              {
                kdebug_trace_string();
              }

              if (*(v75 + 24) == 1)
              {
                kdebug_trace_string();
              }

              if (*(v75 + 40) == 1)
              {
                kdebug_trace_string();
              }

              if (v220 != 20 && *(v75 + 56) == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v221 = *v246;
              v222 = v252;
              v223 = v263;
              (*v246)(v252, v263);
              v224 = __swift_project_value_buffer(v223, static OSSignpostID.continuation);
              v213 = v233(v222, v224, v223);
              a4 = v235;
            }

            while ((LOBYTE(v277) & 1) != 0);
            v225 = v232;

            v226 = v263;
            v221(v252, v263);
            v221(v242, v226);

            *(v260 + v257) = v225;
            v47 = v258;
            v56 = v256;
            v57 = v261;
            goto LABEL_96;
          }

          LOBYTE(v267) = v246;
          v269 = v134;
          v270 = &dword_18D018000;
          v271 = *&v90;
          v272 = v89;
          LOBYTE(v273) = v56;
          v277 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ started");
          v278 = 39;
          LOBYTE(v279) = 2;
          v268 = v135;
          v146 = v242;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v267, &v270, &v269, &v271, v242, &v277, &v268);
          v147 = v232;

          (*(v262 + 8))(v146, v263);

          *(v260 + v257) = v147;
LABEL_65:
          v47 = v258;
          v56 = v256;
          v57 = v261;
          goto LABEL_95;
        }
      }

      __break(1u);
    }

    v98 = AGGraphGetAttributeGraph();
    v56 = AGGraphGetCounter();

    v99 = MEMORY[0x1E69E6870];
    *(v75 + 56) = MEMORY[0x1E69E6810];
    *(v75 + 64) = v99;
    *(v75 + 32) = v56;
    v100 = AGGraphGetCurrentAttribute();
    if (v100 == v97)
    {
      goto LABEL_198;
    }

    v101 = MEMORY[0x1E69E76D0];
    *(v75 + 96) = MEMORY[0x1E69E7668];
    *(v75 + 104) = v101;
    *(v75 + 72) = v100;
    v102 = _typeName(_:qualified:)();
    v104 = v103;
    *(v75 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v75 + 144) = v105;
    *(v75 + 112) = v102;
    *(v75 + 120) = v104;
    if (v47)
    {
      LOBYTE(v267) = v252;
      v269 = v95;
      v270 = &dword_18D018000;
      v271 = *&v90;
      v272 = v89;
      LOBYTE(v273) = v91;
      v277 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ updated");
      v278 = 39;
      LOBYTE(v279) = 2;
      v268 = v75;
      v106 = DynamicType;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v267, &v270, &v269, &v271, DynamicType, &v277, &v268);

      (*(v262 + 8))(v106, v263);

      goto LABEL_65;
    }

    v236 = v90;
    if (v90 == 20)
    {
      a4 = 3;
    }

    else
    {
      a4 = 4;
    }

    v20 = bswap32(v90) | (4 * WORD1(v90));
    v56 = v252;
    v149 = v262 + 16;
    v233 = *(v262 + 16);
    v150 = v233(v253, DynamicType, v263);
    v24 = 0;
    LOBYTE(v277) = 1;
    v242 = (16 * a4);
    v234 = v149;
    v246 = v149 - 8;
    v241 = (v75 + 32);
    v235 = a4;
LABEL_72:
    v252 = &v229;
    MEMORY[0x1EEE9AC00](v150);
    v135 = &v229 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
    v153 = v135 + 8;
    v154 = a4;
    v155 = v135 + 8;
    do
    {
      *(v155 - 1) = 0;
      *v155 = 0;
      v155 += 16;
      --v154;
    }

    while (v154);
    v156 = &v241[40 * v24];
    while (1)
    {
      v157 = *(v75 + 16);
      if (v24 == v157)
      {
        LOBYTE(v277) = 0;
LABEL_80:
        v160 = v236;
        if (v236 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v57 = v261;
        if (v135[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v135[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v135[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v160 != 20 && v135[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v161 = *v246;
        v162 = v253;
        v163 = v263;
        (*v246)(v253, v263);
        v164 = __swift_project_value_buffer(v163, static OSSignpostID.continuation);
        v150 = v233(v162, v164, v163);
        a4 = v235;
        if ((LOBYTE(v277) & 1) == 0)
        {

          v165 = v263;
          v161(v253, v263);
          v161(DynamicType, v165);

          v47 = v258;
          v24 = v245;
          v56 = v256;
LABEL_95:
          v58 = v265;
LABEL_96:
          v119 = v230;
LABEL_97:
          AnimatorState.addListeners(transaction:)(*&v119);

          v53 = v255;
          v166 = *(v255 + 8);
          v166(v250, v56);
          v166(v237, v56);
          v20 = v240;
          v50 = v264;
LABEL_98:
          v59 = v260;
          v167 = v238;
          (v50[1])(v260 + v238, v58);
          (*(v53 + 32))(v59 + v167, v244, v56);
          result = (*(v53 + 56))(v59 + v167, 0, 1, v56);
          a4 = v239;
LABEL_99:
          v135 = *(v59 + v257);
          if (!v135)
          {
            return result;
          }

          v168 = *(v24 + 24);

          v168(v20, v24);
          v271 = v45;
          LOBYTE(v277) = 0;
          v169 = AnimatorState.update(_:at:environment:)(v57, &v271, v254);
          v151 = AGGraphGetCurrentAttribute();
          v75 = *MEMORY[0x1E698D3F8];
          if (v151 == v75)
          {
            LODWORD(v153) = 0;
          }

          else
          {
            LODWORD(v153) = v151;
          }

          v156 = &type metadata instantiation cache for TupleTypeDescription;
          if (v169)
          {
            if (one-time initialization token for enabledCategories != -1)
            {
              goto LABEL_187;
            }

            goto LABEL_105;
          }

          if (one-time initialization token for enabledCategories == -1)
          {
LABEL_118:
            v186 = *(v156 + 77);
            if (*(v186 + 16) >= 0x43uLL)
            {
              if (*(v186 + 98) == 1 && static CustomEventTrace.recorder)
              {
                *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
                LODWORD(v271) = v153;
                BYTE4(v271) = v151 == v75;
                type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
                AGGraphAddTraceEvent();
              }

              AnimatorState.nextUpdate()();
              v271 = v45;
              v176 = v261;
              (a4)(v261, &v271);
              goto LABEL_155;
            }

            __break(1u);
LABEL_191:
            swift_once();
            goto LABEL_110;
          }

LABEL_189:
          v228 = v151;
          swift_once();
          v151 = v228;
          goto LABEL_118;
        }

        goto LABEL_72;
      }

      if (v24 >= v157)
      {
        break;
      }

      ++v24;
      outlined init with copy of AnyTrackedValue(v156, &v271);
      v158 = v274;
      v47 = v275;
      __swift_project_boxed_opaque_existential_1(&v271, v274);
      *(v153 - 1) = CVarArg.kdebugValue(_:)(v20 | v56, v158, v47);
      *v153 = v159 & 1;
      v153 += 16;
      v151 = __swift_destroy_boxed_opaque_existential_1(&v271);
      v156 += 40;
      if (!--a4)
      {
        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    v227 = v151;
    swift_once();
    v151 = v227;
LABEL_105:
    v170 = *(v156 + 77);
    if (*(v170 + 16) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_189;
    }

    v246 = v135;
    if (*(v170 + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
      LODWORD(v271) = v153;
      BYTE4(v271) = v151 == v75;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    v135 = v47;
    v245 = v24;
    v240 = v20;
    v171 = one-time initialization token for animationState;

    if (v171 != -1)
    {
      goto LABEL_191;
    }

LABEL_110:
    v172 = *(&static Signpost.animationState + 1);
    v77 = *&static Signpost.animationState;
    v47 = word_1ED5283E8;
    v173 = HIBYTE(word_1ED5283E8);
    v174 = byte_1ED5283EA;
    v71 = static os_signpost_type_t.end.getter();
    v271 = *&v77;
    v272 = v172;
    LOBYTE(v273) = v47;
    BYTE1(v273) = v173;
    BYTE2(v273) = v174;
    v175 = Signpost.isEnabled.getter();
    v176 = v261;
    if ((v175 & 1) == 0)
    {

      v187 = v260;
      v47 = v135;
      goto LABEL_152;
    }

    v177 = one-time initialization token for _signpostLog;
    v57 = v246;

    if (v177 != -1)
    {
      swift_once();
    }

    v76 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v135 = swift_allocObject();
    *(v135 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v75)
    {
      __break(1u);
      goto LABEL_193;
    }

    v57 = AGGraphGetAttributeGraph();
    v56 = AGGraphGetCounter();

    v178 = MEMORY[0x1E69E6870];
    *(v135 + 7) = MEMORY[0x1E69E6810];
    *(v135 + 8) = v178;
    *(v135 + 4) = v56;
    v179 = AGGraphGetCurrentAttribute();
    if (v179 != v75)
    {
      break;
    }

LABEL_193:
    __break(1u);
LABEL_194:
    v246 = v79;
    v234 = v78;
    v235 = v81;
    v233 = v80;
    swift_once();
    v80 = v233;
    v81 = v235;
    v78 = v234;
    v79 = v246;
  }

  v180 = MEMORY[0x1E69E76D0];
  *(v135 + 12) = MEMORY[0x1E69E7668];
  *(v135 + 13) = v180;
  *(v135 + 18) = v179;
  v181 = _typeName(_:qualified:)();
  v183 = v182;
  *(v135 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v135 + 18) = v184;
  *(v135 + 14) = v181;
  *(v135 + 15) = v183;
  if (v173)
  {
    LOBYTE(v267) = v71;
    v269 = v76;
    v270 = &dword_18D018000;
    v271 = *&v77;
    v272 = v172;
    LOBYTE(v273) = v47;
    v277 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ ended");
    v278 = 37;
    LOBYTE(v279) = 2;
    v268 = v135;
    v185 = v247;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v267, &v270, &v269, &v271, v247, &v277, &v268);

    (*(v262 + 8))(v185, v263);
  }

  else
  {
    v188 = v77;
    if (v77 == 20)
    {
      v189 = 3;
    }

    else
    {
      v189 = 4;
    }

    v190 = bswap32(v77) | (4 * (v77 >> 16));
    v191 = v71;
    v192 = v262 + 16;
    v250 = *(v262 + 16);
    v193 = (v250)(v266, v247, v263);
    *&v90 = 0.0;
    LOBYTE(v277) = 1;
    v265 = v189;
    v253 = (16 * v189);
    v262 = v192;
    v254 = (v192 - 8);
    v252 = v135 + 32;
    v251 = v188;
    do
    {
      v264 = &v229;
      MEMORY[0x1EEE9AC00](v193);
      v195 = &v229 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
      v196 = v195 + 8;
      v197 = v265;
      v198 = v195 + 8;
      do
      {
        *(v198 - 1) = 0;
        *v198 = 0;
        v198 += 16;
        --v197;
      }

      while (v197);
      v199 = &v252[40 * v90];
      v200 = v265;
      while (1)
      {
        v201 = *(v135 + 2);
        if (v90 == v201)
        {
          break;
        }

        if (v90 >= v201)
        {
          __break(1u);
          goto LABEL_158;
        }

        ++v90;
        outlined init with copy of AnyTrackedValue(v199, &v271);
        v202 = v274;
        v47 = v275;
        __swift_project_boxed_opaque_existential_1(&v271, v274);
        *(v196 - 1) = CVarArg.kdebugValue(_:)(v190 | v191, v202, v47);
        *v196 = v203 & 1;
        v196 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v271);
        v199 += 40;
        if (!--v200)
        {
          goto LABEL_136;
        }
      }

      LOBYTE(v277) = 0;
LABEL_136:
      v204 = v251;
      if (v251 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v195[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v195[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v195[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v204 != 20 && v195[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v205 = *v254;
      v206 = v266;
      v207 = v263;
      (*v254)(v266, v263);
      v208 = __swift_project_value_buffer(v207, static OSSignpostID.continuation);
      v193 = (v250)(v206, v208, v207);
    }

    while ((LOBYTE(v277) & 1) != 0);

    v209 = v263;
    v205(v266, v263);
    v205(v247, v209);
  }

  v47 = v258;
  v56 = v256;
  v187 = v260;
  v176 = v261;
LABEL_152:
  v20 = v240;
  v24 = v245;
  if (*(v187 + *(v259 + 48)))
  {
    AnimatorState.removeListeners()();
  }

  *(v187 + v257) = 0;
LABEL_155:
  v210 = v255;
  v211 = v249;
  (*(v255 + 16))(v249, v176, v56);
  (*(v24 + 32))(v211, v20, v24);

  result = (*(v210 + 8))(v176, v56);
  *(v47 + v248) = 1;
  return result;
}

Swift::Bool __swiftcall AnimatableAttributeHelper.checkReset()()
{
  v2 = v0;
  Value = AGGraphGetValue();
  v4 = v2;
  v5 = *Value >> 1;
  v6 = *(v1 + *(v4 + 52));
  if (v5 != v6)
  {
    AnimatableAttributeHelper.reset()();
  }

  return v5 != v6;
}

uint64_t CGColorForCoreColor(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 CGColor];
  }

  else
  {
    return 0;
  }
}

void _ShapeStyle_RenderedShape.render(color:)(float *a1)
{
  v2 = v1;
  v3 = *a1;
  LODWORD(v4) = HIDWORD(*a1);
  if (v4 == 0.0)
  {
    goto LABEL_2;
  }

  v15 = a1[4];
  v16 = v1[1];
  v120 = *v1;
  v121 = v16;
  *&v125[12] = *(v1 + 92);
  v17 = v1[3];
  v122 = v1[2];
  v123 = v17;
  v18 = v1[5];
  v124 = v1[4];
  *v125 = v18;
  v19 = v121;
  v20 = v122;
  v21 = BYTE1(v122);
  v22 = BYTE2(v122);
  v23 = *&v125[24] >> 29;
  if (*&v125[24] >> 29 <= 2u)
  {
    if (v23)
    {
      if (v23 == 1)
      {
        rect.origin = v120;
        v25 = swift_allocObject();
        v26 = swift_allocObject();
        *(v26 + 16) = 0;
        *(v26 + 24) = *a1;
        *(v26 + 40) = a1[4];
        *(v25 + 16) = 0;
        *(v25 + 24) = 0;
        *(v25 + 32) = rect.origin;
        v27 = v25 | 0x5000000000000000;
        *(v25 + 56) = 0;
        *(v25 + 64) = 0;
        *(v25 + 48) = v26;
      }

      else
      {
        v63 = swift_allocObject();
        *(v63 + 16) = 0;
        *(v63 + 24) = 0;
        *(v63 + 32) = 2143289344;
        *(v63 + 36) = 1;
        v27 = v63 | 0x1000000000000000;
      }
    }

    else
    {
      v101 = v3;
      rect.origin = v120;
      outlined copy of Path.Storage(v120, *(&v120 + 1), v121, *(&v121 + 1), v122);
      Value = AGGraphGetValue();
      v50 = 0;
      if (v15 > 1.0)
      {
        v110 = *Value;
        LOBYTE(v118[0]) = 3;
        EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(v118, &v103);
        v50 = v103;
      }

      if (v20)
      {
        _s7SwiftUI13AnimatedShapeVyAA024PartialContainerRelativeD0VGMaTm_0(0, &lazy cache variable for type metadata for _AnyResolvedPaint<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for _AnyResolvedPaint);
        v51 = swift_allocObject();
        *(v51 + 16) = v101.i32[0];
        *(v51 + 20) = *(v101.i64 + 4);
        *(v51 + 28) = v4;
        *(v51 + 32) = v15;
        *(v51 + 36) = 1;
        *(v51 + 37) = v50;
        v52 = swift_allocObject();
        *(v52 + 16) = rect.origin;
        *(v52 + 32) = v19;
        *(v52 + 48) = v20;
        *(v52 + 56) = v51;
        *(v52 + 64) = v21 & 1;
        v27 = v52 | 0x4000000000000000;
        *(v52 + 65) = v22 & 1;
      }

      else
      {
        v64 = swift_allocObject();
        *(v64 + 16) = v101.i32[0];
        *(v64 + 20) = *(v101.i64 + 4);
        *(v64 + 28) = v4;
        *(v64 + 32) = v15;
        *(v64 + 36) = v22 & 1;
        *(v64 + 37) = v50;
        v27 = v64 | 0x1000000000000000;
        v2[10] = vaddq_f64(*(v2 + 10), rect.origin);
        v2[11] = v19;
      }
    }

    goto LABEL_21;
  }

  rect.origin = v120;
  v28 = DWORD2(v122);
  v29 = v124;
  if (v23 == 3)
  {
    v99 = DWORD2(v124);
    v90 = *(&v122 + 3);
    v53 = BYTE7(v122);
    v98 = *&v125[16];
    v96 = *v125;
    v93 = *(&v124 + 13);
    v94 = *&v125[24] & 0x1FFFFFFF;
    v91 = v124 >> 8;
    v54 = vextq_s8(v3, v3, 8uLL).u64[0];
    v92 = HIBYTE(v124);
    v55 = vzip1_s32(*v3.i8, v54);
    v56 = vzip2_s32(*v3.i8, v54);
    LOBYTE(v110) = 0;
    v57 = BYTE12(v124);
    v58 = swift_allocObject();
    *(v58 + 16) = v120;
    *(v58 + 32) = v19;
    *(v58 + 48) = v20;
    *(v58 + 49) = v21;
    *(v58 + 50) = v22;
    *(v58 + 55) = v53;
    *(v58 + 51) = v90;
    *(v58 + 56) = v28;
    v59.i64[0] = v55.u32[0];
    v59.i64[1] = v55.u32[1];
    *(v58 + 60) = vorrq_s8(vshll_n_s32(v56, 0x20uLL), v59);
    *(v58 + 76) = v15;
    *(v58 + 80) = 0;
    *(v58 + 87) = HIBYTE(v29);
    *(v58 + 85) = HIDWORD(v29) >> 8;
    *(v58 + 81) = v91;
    *(v58 + 88) = v99;
    *(v58 + 92) = v57;
    *(v58 + 95) = v92;
    *(v58 + 93) = v93;
    *(v58 + 96) = v96;
    *(v58 + 112) = v98;
    *(v58 + 120) = v94;
    v27 = v58 | 0x3000000000000000;
    *&v115[12] = *(v2 + 92);
    v60 = v2[5];
    v114 = v2[4];
    *v115 = v60;
    v61 = v2[1];
    v110 = *v2;
    v111 = v61;
    v62 = v2[3];
    v112 = v2[2];
    v113 = v62;
    *&v115[24] &= 0x1FFFFFFFu;
    outlined init with copy of GraphicsImage(&v110, &v103);
LABEL_21:
    v65 = *(v2 + 54);
    outlined consume of DisplayList.Item.Value(*(v2 + 25), *(v2 + 26), *(v2 + 27), *(v2 + 28));
    *(v2 + 25) = v27;
    *(v2 + 26) = v65;
    *(v2 + 27) = 0;
    *(v2 + 28) = 0;
    v5 = *(v2 + 18);
    if (!v5)
    {
      return;
    }

    v66 = *(v2 + 38);
    v67 = *(v2 + 24);
    v110 = 0uLL;
    v111 = v2[11];
    *&v112 = v67;
    *(&v112 + 1) = v27;
    *&v114 = 0;
    v113 = v65;
    DWORD2(v114) = 0;
    swift_retain_n();
    outlined copy of DisplayList.Item.Value(v27, v65, 0, 0);
    DisplayList.init(_:)(&v110, &v103);
    v12 = v103;
    v13 = WORD4(v103);
    v14 = v66 | 0x1200000000;
    goto LABEL_23;
  }

  if (v23 != 4)
  {
LABEL_2:
    v5 = *(v2 + 18);
    if (!v5)
    {
      return;
    }

    v6 = *(v2 + 38);
    v7 = *(v2 + 26);
    v8 = *(v2 + 27);
    v9 = *(v2 + 28);
    v10 = *(v2 + 24);
    v11 = *(v2 + 25);
    v110 = 0uLL;
    v111 = v2[11];
    *&v112 = v10;
    *(&v112 + 1) = v11;
    *&v113 = v7;
    *(&v113 + 1) = v8;
    *&v114 = v9;
    DWORD2(v114) = 0;
    swift_retain_n();
    outlined copy of DisplayList.Item.Value(v11, v7, v8, v9);
    DisplayList.init(_:)(&v110, &v103);
    v12 = v103;
    v13 = WORD4(v103);
    v14 = v6 | 0x1200000000;
LABEL_23:
    v68 = v13 | (HIDWORD(v103) << 32) | 0x40000000;
    outlined consume of DisplayList.Item.Value(*(v2 + 25), *(v2 + 26), *(v2 + 27), *(v2 + 28));
    *(v2 + 25) = v5;
    *(v2 + 26) = v14;
    *(v2 + 27) = v12;
    *(v2 + 28) = v68;
    LOBYTE(v110) = *(v2 + 236);
    v69 = &v110;
LABEL_24:
    DisplayList.Item.canonicalize(options:)(v69);

    *(v2 + 18) = 0;
    *(v2 + 38) = 0;
    return;
  }

  v100 = v3;
  v97 = v123;
  v30 = v121;
  v31 = *(v2 + 20);
  v32 = *(v2 + 21);
  *&v117[12] = *(v2 + 92);
  v33 = v2[5];
  v116[4] = v2[4];
  *v117 = v33;
  v34 = v2[1];
  v116[0] = *v2;
  v116[1] = v34;
  v35 = v2[3];
  v116[2] = v2[2];
  v116[3] = v35;
  *&v117[24] &= 0x1FFFFFFFu;
  v36 = BYTE12(v124);
  v37 = *(&v122 + 1);
  outlined init with copy of (DisplayList.Item, alphaOnly: Bool)(v116, &v103, &lazy cache variable for type metadata for (DisplayList.Item, alphaOnly: Bool), &type metadata for DisplayList.Item, MEMORY[0x1E69E6370], " alphaOnly ");
  v128.origin.x = rect.origin.x;
  v128.origin.y = rect.origin.y;
  v128.size = v30;
  v129 = CGRectOffset(v128, v31, v32);
  width = v129.size.width;
  height = v129.size.height;
  *(v2 + 5) = v129;
  v40 = *(v2 + 25);
  v41 = *(v2 + 26);
  v43 = *(v2 + 27);
  v42 = *(v2 + 28);
  v118[4] = v124;
  *v119 = *v125;
  *&v119[12] = *&v125[12];
  v118[0] = v120;
  v118[1] = v121;
  v118[2] = v122;
  v118[3] = v123;
  *&v119[24] = *&v125[24] & 0x1FFFFFFF;
  outlined init with copy of (DisplayList.Item, alphaOnly: Bool)(v118, &v103, &lazy cache variable for type metadata for (DisplayList.Item, alphaOnly: Bool), &type metadata for DisplayList.Item, MEMORY[0x1E69E6370], " alphaOnly ");
  outlined consume of DisplayList.Item.Value(v40, v41, v43, v42);
  *(v2 + 25) = v37;
  v2[13] = v97;
  *(v2 + 28) = v29;
  if (v36)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v126 = _Q0;
    v127 = 2143289344;
    if (specialized static Color.ResolvedHDR.== infix(_:_:)(a1, &v126))
    {
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v120);
      goto LABEL_28;
    }

    v103 = v100;
    *&v104 = v15;
    _s7SwiftUI14GraphicsFilterOWOi6_(&v103);
    v114 = v107;
    *v115 = v108;
    *&v115[16] = v109[0];
    *&v115[28] = *(v109 + 12);
    v110 = v103;
    v111 = v104;
    v112 = v105;
    v113 = v106;
  }

  else
  {
    v103 = v100;
    *&v104 = v15;
    _s7SwiftUI14GraphicsFilterOWOi7_(&v103);
    v114 = v107;
    *v115 = v108;
    *&v115[16] = v109[0];
    *&v115[28] = *(v109 + 12);
    v110 = v103;
    v111 = v104;
    v112 = v105;
    v113 = v106;
  }

  v70 = swift_allocObject();
  v71 = *v115;
  v70[5] = v114;
  v70[6] = v71;
  v70[7] = *&v115[16];
  *(v70 + 124) = *&v115[28];
  v72 = v111;
  v70[1] = v110;
  v70[2] = v72;
  v73 = v113;
  v70[3] = v112;
  v70[4] = v73;
  v74 = *(v2 + 26);
  v75 = *(v2 + 27);
  v76 = *(v2 + 28);
  v78 = *(v2 + 24);
  v77 = *(v2 + 25);
  v103 = 0uLL;
  *&v104 = width;
  *(&v104 + 1) = height;
  *&v105 = v78;
  *(&v105 + 1) = v77;
  *&v106 = v74;
  *(&v106 + 1) = v75;
  *&v107 = v76;
  DWORD2(v107) = 0;
  outlined copy of DisplayList.Item.Value(v77, v74, v75, v76);

  DisplayList.init(_:)(&v103, &rect.size);
  v79 = rect.size.width;
  v80 = LOWORD(rect.size.height) | (HIDWORD(rect.size.height) << 32) | 0x40000000;
  outlined consume of DisplayList.Item.Value(*(v2 + 25), *(v2 + 26), *(v2 + 27), *(v2 + 28));
  *(v2 + 25) = v70;
  *(v2 + 26) = 0xA00000000;
  *(v2 + 27) = v79;
  *(v2 + 28) = v80;
  LOBYTE(v103) = *(v2 + 236);
  DisplayList.Item.canonicalize(options:)(&v103);

  outlined destroy of _ShapeStyle_RenderedShape.Shape(&v120);
LABEL_28:
  v81 = *(v2 + 18);
  if (v81)
  {
    v82 = *(v2 + 38);
    v83 = *(v2 + 26);
    v84 = *(v2 + 27);
    v85 = *(v2 + 28);
    v86 = *(v2 + 24);
    v87 = *(v2 + 25);
    v103 = 0uLL;
    v104 = v2[11];
    *&v105 = v86;
    *(&v105 + 1) = v87;
    *&v106 = v83;
    *(&v106 + 1) = v84;
    *&v107 = v85;
    DWORD2(v107) = 0;
    swift_retain_n();
    outlined copy of DisplayList.Item.Value(v87, v83, v84, v85);
    DisplayList.init(_:)(&v103, &rect.size);
    v88 = rect.size.width;
    v89 = LOWORD(rect.size.height) | (HIDWORD(rect.size.height) << 32) | 0x40000000;
    outlined consume of DisplayList.Item.Value(*(v2 + 25), *(v2 + 26), *(v2 + 27), *(v2 + 28));
    *(v2 + 25) = v81;
    *(v2 + 26) = v82 | 0x1200000000;
    *(v2 + 27) = v88;
    *(v2 + 28) = v89;
    LOBYTE(v103) = *(v2 + 236);
    v69 = &v103;
    goto LABEL_24;
  }
}

uint64_t sub_18D1F7814()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_18D1F785C()
{

  return swift_deallocObject();
}

void type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for AnimatedShape(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI13AnimatedShapeVyAA024PartialContainerRelativeD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

Swift::Void __swiftcall ShapeStyleResolver.updateValue()()
{
  v2 = v1;
  v102 = *MEMORY[0x1E69E9840];
  v73 = v0;
  v3 = *(v0 + 16);
  v4 = *(v3 - 8);
  (MEMORY[0x1EEE9AC00])();
  v72 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v8 = &v69 - v7;
  v71 = type metadata accessor for Optional();
  v9 = swift_getTupleTypeMetadata2();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - v13;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v69 - v16;
  v19 = *v2;
  v20 = *MEMORY[0x1E698D3F8];
  v80 = v10;
  v76 = v4;
  v77 = v3;
  v82 = v9;
  if (v19 == v20)
  {
    v21 = *(v9 + 48);
    (*(v4 + 56))(&v69 - v16, 1, 1, v3, v17);
    v18[v21] = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v81 = v23;
    (*(v4 + 16))(v8, Value, v3);
    v83 = v2;
    v24 = v18;
    v25 = *(v9 + 48);
    (*(v4 + 32))(v14, v8, v3);
    (*(v4 + 56))(v14, 0, 1, v3);
    v14[v25] = v81 & 1;
    v18 = v24;
    v2 = v83;
    (*(v10 + 32))(v18, v14, v9);
  }

  if (v2[1] == v20)
  {
    v26 = 0;
    v27 = 0;
    LODWORD(v83) = 0;
    v28 = 1;
  }

  else
  {
    v29 = AGGraphGetValue();
    v26 = v30;
    v27 = *v29;
    v28 = *(v29 + 8);
    LODWORD(v83) = *(v29 + 10);
    v31 = v27;
  }

  v32 = AGGraphGetValue();
  v35 = *v32;
  v34 = v32[1];
  v85 = MEMORY[0x1E69E7CC0];
  if (v18[*(v82 + 48)] & 1) != 0 || (v26)
  {
    v40 = 1;
    v86 = 1;
  }

  else
  {
    v36 = v33;
    OutputValue = AGGraphGetOutputValue();
    v86 = OutputValue == 0;
    if (OutputValue)
    {
      if ((v36 & 1) == 0)
      {
        v38 = (v2 + 4);
        v39 = *(v2 + 6);

        if (!v39)
        {
          goto LABEL_21;
        }

LABEL_18:
        v74 = v38;
        v79 = v34;
        v81 = v18;
        v70 = 0;
        goto LABEL_25;
      }

      v41 = swift_retain_n();
      v40 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v41);

      v86 = v40 & 1;
    }

    else
    {

      v40 = 1;
    }
  }

  v38 = (v2 + 4);
  v39 = *(v2 + 6);
  if (v39)
  {
    if ((v40 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((v40 & 1) == 0)
    {
LABEL_21:
      if (v2[14] == *AGGraphGetValue() >> 1)
      {
        (*(v80 + 8))(v18, v82);

        goto LABEL_60;
      }

      *(v2 + 6) = 0;

      *(v2 + 4) = 0;
      *(v2 + 40) = 0;
      v39 = 0;
      v2[14] = *AGGraphGetValue() >> 1;
      v86 = 1;
      goto LABEL_24;
    }

    v39 = 0;
  }

LABEL_24:
  v74 = v38;
  v79 = v34;
  v81 = v18;
  PropertyList.Tracker.reset()();
  v70 = 1;
LABEL_25:
  v42 = v82;
  v69 = v28;
  if (v83)
  {
    v43 = v28;
  }

  else
  {
    v43 = v28 != 0;
  }

  v44 = *(v2 + 8);
  v45 = v27;
  if (v35)
  {
    v46 = *(v35 + 64);
  }

  else
  {
    v46 = 0;
  }

  v47 = v35;
  v48 = *(v44 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v48 + 16));
  *(v48 + 24) = v46;
  os_unfair_lock_unlock((v48 + 16));

  v49 = *(v2 + 6);
  v101[27] = 0;
  v96 = 0uLL;
  *&v97 = v43;
  BYTE8(v97) = 1;
  *&v98 = 0;
  BYTE8(v98) = 5;
  v78 = v47;
  *&v99 = v47;
  *(&v99 + 1) = v44;
  v100 = 0u;
  memset(v101, 0, 24);
  v101[24] = 1;
  *&v101[25] = v49;
  if (v43)
  {
    v50 = v80;
    v51 = v75;
    v52 = v42;
    (*(v80 + 16))(v75, v81, v42);
    v54 = v76;
    v53 = v77;
    v55 = v45;
    if ((*(v76 + 48))(v51, 1, v77) == 1)
    {
      (*(*(v71 - 8) + 8))(v51);
      specialized ForegroundStyle._apply(to:)(&v96);
      if (v83)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v56 = v51;
      v57 = v72;
      (*(v54 + 32))(v72, v56, v53);
      (*(*(v73 + 24) + 32))(&v96, v53);
      (*(v54 + 8))(v57, v53);
      if (v83)
      {
        goto LABEL_44;
      }
    }

    LOBYTE(v87[0]) = 0;
    v88 = v99;
    v58 = BYTE8(v98);
    if (BYTE8(v98) == 1)
    {
      v59 = v98;

      outlined copy of _ShapeStyle_Shape.Result(v59, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v59, 1u);
      v60 = 0;
      v58 = 5;
    }

    else
    {

      v60 = v98;

      v59 = MEMORY[0x1E69E7CC0];
    }

    *&v95[0] = v59;
    _ShapeStyle_Pack.createOpacities(count:name:environment:)(v69, v87, &v88);

    v61 = *&v95[0];

    outlined consume of _ShapeStyle_Shape.Result(v60, v58);
    *&v98 = v61;
    BYTE8(v98) = 1;
  }

  else
  {
    v52 = v42;
    v50 = v80;
    v55 = v45;
    if (v70)
    {
      if (v39)
      {
        specialized AnimatorState.removeListeners()();
      }

      *(v2 + 6) = 0;

      *(v2 + 4) = 0;
      *(v2 + 40) = 0;
      v2[14] = *AGGraphGetValue() >> 1;
    }
  }

LABEL_44:
  if ((v83 & 2) != 0)
  {
    v96 = xmmword_18DD85500;
    *&v97 = 1;
    BYTE8(v97) = 1;
    v101[25] = 0;
    BackgroundStyle._apply(to:)(&v96);
  }

  if ((v83 & 4) != 0)
  {
    v88 = v99;
    v63 = v55;

    ResolvedMulticolorStyle.init(in:bundle:)(&v88, v55, v95, v64);
    v88 = v95[0];
    v89 = v95[1];
    BYTE5(v93[0]) = 6;
    DWORD2(v93[0]) = 1065353216;
    *&v93[1] = 0;
    BYTE8(v93[1]) = -1;
    v94 = MEMORY[0x1E69E7CC0];
    v84 = 2;
    v65 = BYTE8(v98);
    if (BYTE8(v98) == 1)
    {
      v66 = v98;
      outlined init with copy of ResolvedMulticolorStyle(v95, v87);
      outlined copy of _ShapeStyle_Shape.Result(v66, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v66, 1u);
      v67 = 0;
      v65 = 5;
    }

    else
    {
      outlined init with copy of ResolvedMulticolorStyle(v95, v87);
      v66 = MEMORY[0x1E69E7CC0];
      v67 = v98;
    }

    v87[0] = v66;
    _ShapeStyle_Pack.subscript.setter(&v88, &v84, 0);
    outlined destroy of ResolvedMulticolorStyle(v95);
    v68 = v87[0];

    outlined consume of _ShapeStyle_Shape.Result(v67, v65);
    *&v98 = v68;
    BYTE8(v98) = 1;

    goto LABEL_53;
  }

  if (BYTE8(v98) == 1)
  {
LABEL_53:
    v62 = v98;

    goto LABEL_54;
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_54:

  v85 = v62;
  if ((*(v2 + 14) & 1) == 0)
  {
    specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v85, 0, v2[2], v74);
  }

  if (v86 == 1)
  {
    *&v88 = v85;
    AGGraphSetOutputValue();

    (*(v50 + 8))(v81, v52);
  }

  else
  {
    (*(v50 + 8))(v81, v52);
  }

  v93[0] = *v101;
  *(v93 + 12) = *&v101[12];
  v88 = v96;
  v89 = v97;
  v91 = v99;
  v92 = v100;
  v90 = v98;
  outlined destroy of _ShapeStyle_Shape(&v88);
LABEL_60:
}

double protocol witness for Shape.path(in:) in conformance RoundedRectangle@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  RoundedRectangle.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = v6 >> 5;
      if (v6 >> 5 > 3)
      {
        if (v6 >> 5 <= 5)
        {
          if (v9 == 4)
          {
            if ((v8 & 0xE0) != 0x80)
            {
              return;
            }
          }

          else if ((v8 & 0xE0) != 0xA0)
          {
            return;
          }

LABEL_6:
          if (*&v5 != *&v7)
          {
            return;
          }

          goto LABEL_7;
        }

        if (v9 == 6)
        {
          if ((v8 & 0xE0) != 0xC0)
          {
            return;
          }

          v13 = *(*v5 + 96);
          outlined copy of Text.Modifier(*(v4 - 1), *v4);
          v14 = outlined copy of Text.Modifier(v5, v6);
          v12 = v13(v7, v14);
          goto LABEL_32;
        }

        if (v5 | v6 ^ 0xE0)
        {
          if (v8 < 0xE0 || v7 != 1)
          {
            return;
          }
        }

        else if (v8 < 0xE0 || *&v7 != 0.0)
        {
          return;
        }

        if (v8 != 224)
        {
          return;
        }
      }

      else if (v6 >> 5 > 1)
      {
        if (v9 != 2)
        {
          if ((v8 & 0xE0) != 0x60)
          {
            return;
          }

          goto LABEL_6;
        }

        if ((v8 & 0xE0) != 0x40)
        {
          return;
        }

        if ((v6 & 1) == 0)
        {
          if (v8)
          {
            return;
          }

          goto LABEL_6;
        }

        if ((v8 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v9)
        {
          if ((v8 & 0xE0) != 0x20)
          {
            return;
          }

          if (*&v5 != 0.0)
          {
            if (*&v7 == 0.0)
            {
              return;
            }

            v15 = *(*v5 + 112);
            outlined copy of Text.Modifier(*(v4 - 1), *v4);
            v16 = outlined copy of Text.Modifier(v5, v6);
            v12 = v15(v7, v16);
LABEL_32:
            v17 = v12;
            outlined consume of Text.Modifier(v7, v8);
            outlined consume of Text.Modifier(v5, v6);
            if ((v17 & 1) == 0)
            {
              return;
            }

            goto LABEL_7;
          }
        }

        else
        {
          if (v8 >= 0x20)
          {
            return;
          }

          if (*&v5 != 0.0)
          {
            if (*&v7 == 0.0)
            {
              return;
            }

            if (v5 == v7)
            {
              goto LABEL_7;
            }

            v10 = *(*v5 + 88);
            outlined copy of Text.Modifier(*(v4 - 1), *v4);
            v11 = outlined copy of Text.Modifier(v5, v6);
            v12 = v10(v7, v11);
            goto LABEL_32;
          }
        }

        if (*&v7 != 0.0)
        {
          return;
        }
      }

LABEL_7:
      v3 += 2;
      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

uint64_t initializeWithCopy for UnaryLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = (v7 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *v10 = v12;
  v13 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 19) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 32);
  v16 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *(v13 + 32) = v15;
  *v13 = v16;
  v17 = *(v14 + 96);
  v19 = *(v14 + 48);
  v18 = *(v14 + 64);
  *(v13 + 80) = *(v14 + 80);
  *(v13 + 96) = v17;
  *(v13 + 48) = v19;
  *(v13 + 64) = v18;
  v21 = *(v14 + 128);
  v20 = *(v14 + 144);
  v22 = *(v14 + 112);
  *(v13 + 160) = *(v14 + 160);
  *(v13 + 128) = v21;
  *(v13 + 144) = v20;
  *(v13 + 112) = v22;
  memcpy(((v10 + 187) & 0xFFFFFFFFFFFFFFF8), ((v11 + 187) & 0xFFFFFFFFFFFFFFF8), 0x131uLL);
  return a1;
}

uint64_t protocol witness for ViewTransformElement.forEach(inverted:stop:_:) in conformance TranslationElement(unsigned int a1, uint64_t a2, uint64_t (*a3)(int8x16_t *, uint64_t))
{
  v4 = vdup_n_s32(a1);
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  v7[0] = vbslq_s8(vcltzq_s64(vshlq_n_s64(v5, 0x3FuLL)), vnegq_f64(*v3), *v3);
  v8 = 0;
  return a3(v7, a2);
}

void *ViewTransform.UnsafeBuffer.appendProjectionTransform(_:inverse:)(void *result, char a2)
{
  v3 = result;
  if (*(result + 2) != 0.0 || *(result + 5) != 0.0 || *(result + 8) != 1.0)
  {
    goto LABEL_11;
  }

  v4 = *(result + 6);
  v5 = *(result + 7);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*result, xmmword_18DDAA020), vceqq_f64(*(result + 3), xmmword_18DDAB500))))))
  {
    v22 = *(result + 3);
    v23 = *result;
    type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for ViewTransform.UnsafeBuffer._VTable<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for ViewTransform.UnsafeBuffer._VTable);
    v3 = v7;
    result = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x50);
    *result = v3;
    result[1] = 80;
    *(result + 1) = v23;
    *(result + 2) = v22;
    *(result + 6) = v4;
    *(result + 7) = v5;
    *(result + 64) = a2 & 1;
    if (!*v2)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    v8 = result - *v2;
    if (v8 < 0xFFFFFFFF80000000)
    {
      goto LABEL_30;
    }

    if (v8 > 0x7FFFFFFF)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v9 = *(v2 + 12);
    v2 += 12;
    v10 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v11 = a2 & 1;
    type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for ViewTransform.UnsafeBuffer._VTable<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for ViewTransform.UnsafeBuffer._VTable);
    v13 = v12;
    result = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x60);
    *result = v13;
    result[1] = 96;
    result[10] = v3[8];
    v14 = *(v3 + 3);
    *(result + 3) = *(v3 + 2);
    *(result + 4) = v14;
    v15 = *(v3 + 1);
    *(result + 1) = *v3;
    *(result + 2) = v15;
    *(result + 88) = v11;
    if (!*v2)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v16 = result - *v2;
    if (v16 >= 0xFFFFFFFF80000000)
    {
      if (v16 <= 0x7FFFFFFF)
      {
        v17 = *(v2 + 12);
        v2 += 12;
        v10 = v17 + 1;
        if (!__OFADD__(v17, 1))
        {
LABEL_15:
          *v2 = v10;
          return result;
        }

        goto LABEL_29;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v4 != 0.0 || v5 != 0.0)
  {
    if (a2)
    {
      v5 = -v5;
      v4 = -v4;
    }

    type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for ViewTransform.UnsafeBuffer._VTable<TranslationElement>, lazy protocol witness table accessor for type TranslationElement and conformance TranslationElement, &unk_1F00BA9D8, type metadata accessor for ViewTransform.UnsafeBuffer._VTable);
    v19 = v18;
    result = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x20);
    *result = v19;
    result[1] = 32;
    *(result + 2) = v4;
    *(result + 3) = v5;
    if (!*v2)
    {
      goto LABEL_36;
    }

    v20 = result - *v2;
    if (v20 < 0xFFFFFFFF80000000)
    {
      goto LABEL_32;
    }

    if (v20 > 0x7FFFFFFF)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v21 = *(v2 + 12);
    v2 += 12;
    v10 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_27;
  }

  return result;
}

uint64_t *assignWithCopy for StyledTextContentView(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Font.PlatformFontProvider(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type CTFontRef and conformance CTFontRef();
  return static _CFObject.== infix(_:_:)() & 1;
}

void lazy protocol witness table accessor for type CTFontRef and conformance CTFontRef()
{
  if (!lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef)
  {
    type metadata accessor for CTFontRef(255);
    swift_getWitnessTable(protocol conformance descriptor for CTFontRef, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef);
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI20KeyedAnimatableArrayV7ElementVyAC16_ShapeStyle_PackV3KeyVAC0E4PairVyAI4FillO0E4DataOAMySfAC0eF0VyAMySfAI6EffectV4KindOAPOGGGG_G_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    v4 = a2 + 32;
    v5 = *(a1 + 112);
    v58 = *(a1 + 96);
    v59 = v5;
    v60 = *(a1 + 128);
    v6 = *(a1 + 48);
    v54 = *(a1 + 32);
    v55 = v6;
    v7 = *(a1 + 80);
    v56 = *(a1 + 64);
    v57 = v7;
    v8 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v8;
    v9 = *(a2 + 64);
    v10 = *(a2 + 80);
    v11 = *(a2 + 128);
    v66 = *(a2 + 112);
    v67 = v11;
    v12 = *(a2 + 96);
    v64 = v10;
    v65 = v12;
    v63 = v9;
    if (v54 == v61)
    {
      v13 = 1;
      v14 = (a2 + 32);
      v15 = (a1 + 32);
      while (BYTE1(v54) == BYTE1(v61))
      {
        v16 = *(v15 + 56);
        v17 = *(v15 + 88);
        v52[4] = *(v15 + 72);
        v52[5] = v17;
        v53 = *(v15 + 13);
        v18 = *(v15 + 24);
        v52[0] = *(v15 + 8);
        v52[1] = v18;
        v52[2] = *(v15 + 40);
        v52[3] = v16;
        v19 = *(v14 + 56);
        v20 = *(v14 + 88);
        v50[4] = *(v14 + 72);
        v50[5] = v20;
        v51 = *(v14 + 13);
        v21 = *(v14 + 24);
        v50[0] = *(v14 + 8);
        v50[1] = v21;
        v50[2] = *(v14 + 40);
        v50[3] = v19;
        outlined init with copy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v54, v49, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
        outlined init with copy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v61, v49, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
        if ((specialized static _ShapeStyle_Pack.Fill.AnimatableData.== infix(_:_:)(v52, v50) & 1) == 0)
        {
          goto LABEL_42;
        }

        if (*&v60 != *&v67)
        {
          goto LABEL_42;
        }

        v22 = *(*(&v60 + 1) + 16);
        if (v22 != *(*(&v67 + 1) + 16))
        {
          goto LABEL_42;
        }

        if (v22 && *(&v60 + 1) != *(&v67 + 1))
        {
          v23 = 0;
          while (1)
          {
            v24 = *(&v60 + 1) + v23;
            v25 = *(&v67 + 1) + v23;
            if (*(*(&v60 + 1) + v23 + 32) != *(*(&v67 + 1) + v23 + 32))
            {
              break;
            }

            if (*(v24 + 80))
            {
              if ((*(v25 + 80) & 1) == 0)
              {
                break;
              }
            }

            else
            {
              if (*(v25 + 80))
              {
                break;
              }

              v26 = *(v24 + 40);
              v27 = *(v24 + 48);
              v28 = *(v24 + 56);
              v29 = *(v24 + 64);
              v30 = *(v24 + 72);
              v31 = *(v25 + 40);
              v32 = *(v25 + 48);
              v33 = *&v26 == *&v31 && *(&v26 + 1) == *(&v31 + 1);
              v34 = v33 && *&v27 == *&v32;
              v35 = v34 && *(&v27 + 1) == *(&v32 + 1);
              v36 = v35 && v28 == *(v25 + 56);
              v37 = v36 && v29 == *(v25 + 64);
              if (!v37 || v30 != *(v25 + 72))
              {
                break;
              }
            }

            v23 += 56;
            if (!--v22)
            {
              goto LABEL_38;
            }
          }

LABEL_42:
          outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v61, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
          outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v54, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
          return 0;
        }

LABEL_38:
        outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v61, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
        outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v54, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
        if (v13 == v2)
        {
          return 1;
        }

        v39 = 112 * v13;
        v15 = (v3 + 112 * v13);
        v40 = v15[5];
        ++v13;
        v58 = v15[4];
        v59 = v40;
        v60 = v15[6];
        v41 = v15[1];
        v54 = *v15;
        v55 = v41;
        v42 = v15[3];
        v56 = v15[2];
        v57 = v42;
        v14 = (v4 + v39);
        v43 = v14[1];
        v61 = *v14;
        v62 = v43;
        v44 = v14[2];
        v45 = v14[3];
        v46 = v14[6];
        v66 = v14[5];
        v67 = v46;
        v47 = v14[4];
        v64 = v45;
        v65 = v47;
        v63 = v44;
        if (v54 != v61)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t initializeWithCopy for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v13 = a2[9];
  v14 = *(a2 + 80);
  outlined copy of _ShapeStyle_Pack.Fill.AnimatableData(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  return a1;
}

double outlined copy of _ShapeStyle_Pack.Fill.AnimatableData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 > 4u)
  {
    if (a11 != 5)
    {
      if (a11 == 6)
      {
      }

      else if (a11 != 7)
      {
        return result;
      }
    }

    goto LABEL_13;
  }

  if (a11 == 2 || (a11 != 3 ? (v11 = a11 == 4) : (v11 = 1), v11))
  {
LABEL_13:
  }

  return result;
}

uint64_t specialized static _ShapeStyle_Pack.Fill.AnimatableData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v52 = *(a1 + 32);
  v53 = v3;
  v4 = *(a1 + 48);
  v54 = *(a1 + 64);
  v5 = *(a1 + 16);
  v50 = *a1;
  v51 = v5;
  v6 = *(a2 + 16);
  v7 = v6;
  v56 = *a2;
  v57 = v6;
  v8 = *(a2 + 48);
  v60 = *(a2 + 64);
  v9 = *(a2 + 48);
  v58 = *(a2 + 32);
  v59 = v9;
  v62[0] = v50;
  v62[1] = v2;
  v10 = *(a1 + 64);
  v62[3] = v4;
  v62[4] = v10;
  v55 = *(a1 + 80);
  v61 = *(a2 + 80);
  v63 = *(a1 + 80);
  v62[2] = v52;
  v65 = v7;
  v64 = v56;
  v11 = *(a2 + 64);
  v69 = *(a2 + 80);
  v68 = v11;
  v67 = v8;
  v66 = v58;
  v13 = *(&v52 + 1);
  v12 = *&v53;
  v14 = *&v51.i32[3];
  v15 = v51.u8[8];
  if (v55 > 4u)
  {
    if (v55 <= 6u)
    {
      if (v55 == 5)
      {
        if (v61 == 5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v36 = vextq_s8(v50, v50, 8uLL).u64[0];
        v37 = vshll_n_s32(vzip2_s32(*&v50.f64[0], v36), 0x20uLL);
        v38 = vzip1_s32(*&v50.f64[0], v36);
        v39.i64[0] = v38.u32[0];
        v39.i64[1] = v38.u32[1];
        v42[0] = vorrq_s8(v37, v39);
        v42[1] = v51;
        v43 = v52;
        if (v61 == 6)
        {
          v44 = v56;
          v45 = v57;
          LODWORD(v46) = v58.i32[0];
          v33 = _s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZAA0C5ArrayVySfG_ACyAGyACySfACySfACyS2fGGGGAA5ColorVAAE11ResolvedHDRV01_C0VGTt1B5(v42, &v44);
          goto LABEL_45;
        }
      }
    }

    else
    {
      if (v55 != 7)
      {
        if (v55 == 8)
        {
          v44 = v50;
          v45 = v51;
          v46 = v52;
          v47 = v53;
          v48 = *(a1 + 56);
          v49 = *(a1 + 72);
          if (v61 != 8)
          {
            goto LABEL_49;
          }

          v22 = *(a2 + 48);
          v41[2] = *(a2 + 32);
          v41[3] = v22;
          v41[4] = *(a2 + 64);
          v23 = *(a2 + 16);
          v41[0] = *a2;
          v41[1] = v23;
          outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
          v24 = specialized static _ColorMatrix.== infix(_:_:)(&v44, v41);
        }

        else
        {
          if (v61 != 9)
          {
            goto LABEL_49;
          }

          v34 = vorrq_s8(vorrq_s8(v57, v59), vorrq_s8(v58, v60));
          if (*&vorr_s8(*v34.i8, *&vextq_s8(v34, v34, 8uLL)) | *&v56.f64[1] | *&v56.f64[0])
          {
            goto LABEL_49;
          }

          outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
          v24 = 1;
        }

        return v24 & 1;
      }

      if (v61 == 7)
      {
        v33 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI16ShaderVectorDataV7ElementO_Tt1g5(*&v50.f64[0], *&v56.f64[0]);
LABEL_45:
        v24 = v33;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v56, v41);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v50, v41);
        outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        return v24 & 1;
      }
    }

LABEL_48:

    goto LABEL_49;
  }

  if (v55 > 1u)
  {
    if (v55 == 2)
    {
      if (v61 == 2)
      {
        v25 = vextq_s8(v50, v50, 8uLL).u64[0];
        v26 = vshll_n_s32(vzip2_s32(*&v50.f64[0], v25), 0x20uLL);
        v27 = vzip1_s32(*&v50.f64[0], v25);
        v28.i64[0] = v27.u32[0];
        v28.i64[1] = v27.u32[1];
        if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(vorrq_s8(v26, v28), v56), vceqq_f64(v51, v57)))))
        {
          v29 = v58.u8[8];
          v30 = *&v58.i32[3];
          v31 = v59.i8[0];
          if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(v52, v58.i64[0]))
          {
            outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v56, v41);
            outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v50, v41);
            outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
            if (v29 == LOBYTE(v13))
            {
              if (LOBYTE(v12))
              {
                if ((v31 & 1) == 0)
                {
                  goto LABEL_51;
                }
              }

              else if ((v31 & 1) != 0 || v30 != *(&v13 + 1))
              {
                goto LABEL_51;
              }

              goto LABEL_57;
            }

LABEL_51:
            v24 = 0;
            return v24 & 1;
          }
        }

        goto LABEL_31;
      }
    }

    else if (v55 == 3)
    {
      if (v61 == 3)
      {
LABEL_6:
        if (v56.f64[0] == v50.f64[0] && v56.f64[1] == v50.f64[1])
        {
          v16 = v52;
          v17 = v57.u8[8];
          v18 = *&v57.i32[3];
          v19 = v58.i8[0];
          v21 = *&v58.i64[1];
          v20 = *v59.i64;
          if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(v51.u32[0] | (v51.u32[1] << 32), v57.i64[0]))
          {
            outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v56, v41);
            outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v50, v41);
            outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
            if (v17 == v15)
            {
              if (v16)
              {
                if ((v19 & 1) == 0)
                {
                  goto LABEL_51;
                }
              }

              else if ((v19 & 1) != 0 || v18 != v14)
              {
                goto LABEL_51;
              }

              if (v13 != v21 || v12 != v20)
              {
                goto LABEL_51;
              }

LABEL_57:
              v24 = 1;
              return v24 & 1;
            }

            goto LABEL_51;
          }
        }

LABEL_31:
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v56, v41);
        v32 = &v50;
LABEL_50:
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v32->i64, v41);
        outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        goto LABEL_51;
      }
    }

    else if (v61 == 4)
    {
      goto LABEL_6;
    }

    goto LABEL_48;
  }

  if (!v55)
  {
    if (!v61)
    {
      outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
      v24 = vminv_u16(vmovn_s32(vceqq_f32(v56, v50))) & (*v57.i32 == *v51.i32);
      return v24 & 1;
    }

LABEL_49:
    v32 = &v56;
    goto LABEL_50;
  }

  if (v61 != 1)
  {
    goto LABEL_49;
  }

  outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
  v35 = vminv_u16(vmovn_s32(vceqq_f32(v56, v50))) & (*v57.i32 == *v51.i32);
  if (*&v57.i32[1] == *&v51.i32[1])
  {
    v24 = v35;
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t DisplayList.Item.paint(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = *(v4 + 64);
  if ((v5 & 0xC0000000) != 0)
  {
    return 0;
  }

  v8 = *v4;
  v7 = *(v4 + 8);
  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  v11 = *(v4 + 40);
  if (v11 >> 60 != 4)
  {
    if (v11 >> 60 == 1)
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v14 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v15 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x24);
      v16 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x25);
      v39.origin.x = v8;
      v39.origin.y = v7;
      v39.size.width = v10;
      v39.size.height = v9;
      if (CGRectEqualToRect(*&a1, v39))
      {
        type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for _AnyResolvedPaint);
        result = swift_allocObject();
        *(result + 16) = v12;
        *(result + 24) = v13;
        *(result + 32) = v14;
        *(result + 36) = v15;
        *(result + 37) = v16;
        return result;
      }
    }

    return 0;
  }

  v18 = *(v4 + 48);
  v17 = *(v4 + 56);
  v19 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v31[0] = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v31[1] = v19;
  v32 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  v20 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
  outlined copy of DisplayList.Item.Value(v11, v18, v17, v5);
  outlined copy of DisplayList.Item.Value(v11, v18, v17, v5);
  v25 = v20;

  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  v40.origin.x = v8;
  v40.origin.y = v7;
  v40.size.width = v10;
  v40.size.height = v9;
  if (!CGRectEqualToRect(v37, v40))
  {
    outlined consume of DisplayList.Item.Value(v11, v18, v17, v5);
LABEL_20:

    outlined consume of DisplayList.Item.Value(v11, v18, v17, v5);
    return 0;
  }

  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = a3;
  v38.size.height = a4;
  IsNull = CGRectIsNull(v38);
  if (IsNull)
  {
    v27 = 0;
  }

  else
  {
    v27 = *&a3;
  }

  if (IsNull)
  {
    v28 = 0;
  }

  else
  {
    v28 = *&a4;
  }

  v33 = 0uLL;
  v34 = v27;
  v35 = v28;
  if (IsNull)
  {
    v29 = 6;
  }

  else
  {
    v29 = 0;
  }

  v36 = v29;
  outlined copy of Path.Storage(0, 0, v27, v28, v29);
  v30 = specialized static Path.Storage.== infix(_:_:)(v31, &v33);
  outlined consume of Path.Storage(0, 0, v27, v28, v29);
  outlined consume of Path.Storage(0, 0, v27, v28, v29);
  outlined consume of DisplayList.Item.Value(v11, v18, v17, v5);
  if ((v30 & 1) == 0)
  {
    goto LABEL_20;
  }

  outlined consume of DisplayList.Item.Value(v11, v18, v17, v5);
  return v25;
}

uint64_t _ShapeStyle_RenderedShape.render(material:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  v5 = v1[5];
  __src[4] = v1[4];
  __src[5] = v5;
  v6 = v1[7];
  __src[6] = v1[6];
  __src[7] = v6;
  v7 = v1[1];
  __src[0] = *v1;
  __src[1] = v7;
  v8 = v1[3];
  __src[2] = v1[2];
  __src[3] = v8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 17);
  v11 = *(v1 + 20);
  v12 = *(v1 + 21);
  v13 = v1[12];
  __src[11] = v1[11];
  __src[12] = v13;
  v14 = v1[14];
  __src[13] = v1[13];
  __src[14] = v14;
  v15 = *(v1 + 60);
  *(&__src[16] + 1) = *(v1 + 257);
  *(&__src[15] + 4) = *(v1 + 244);
  v120 = v9;
  *&__src[8] = v9;
  *(&__src[8] + 1) = v10;
  v116 = v1[9];
  __src[9] = v116;
  v117 = v12;
  v118 = v11;
  *&__src[10] = v11;
  *(&__src[10] + 1) = v12;
  v123 = v15;
  LODWORD(__src[15]) = v15;
  _ShapeStyle_RenderedShape.bounds.getter();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v178 = *(v1 + 236);
  v179 = MEMORY[0x1E69E7CC0];
  v180 = 0;
  *&__src[0] = v2;
  BYTE8(__src[0]) = v3;
  HIDWORD(__src[0]) = v4;
  v24 = Material.ResolvedMaterial.layers.getter();
  v25 = *(v24 + 16);
  v124 = v1;
  if (!v25)
  {

    v128 = 0;
    v92 = 0;
LABEL_69:
    v93 = *(v179 + 16);
    if (!v93)
    {
      v99 = 3221225472;
      v97 = 0;
      v98 = 0;
      goto LABEL_79;
    }

    if (v93 == 1)
    {
      v94 = *(v179 + 32);
      v95 = *(v179 + 48);
      v96 = *(v179 + 80);
      __src[2] = *(v179 + 64);
      __src[3] = v96;
      *(&__src[3] + 12) = *(v179 + 92);
      __src[0] = v94;
      __src[1] = v95;
      v93 = *(&__src[2] + 1);
      v98 = *(&__src[3] + 1);
      v97 = v96;
      v99 = *&__src[4];
      v17 = v17 + *&v94;
      v19 = v19 + *(&v94 + 1);
      outlined init with copy of DisplayList.Item(__src, __dst);
      if ((v92 & 1) == 0)
      {
LABEL_79:
        v101 = v124;
        outlined consume of DisplayList.Item.Value(*(v124 + 25), *(v124 + 26), *(v124 + 27), *(v124 + 28));
        *(v124 + 25) = v93;
        *(v124 + 26) = v97;
        *(v124 + 27) = v98;
        *(v124 + 28) = v99;
        *(v124 + 20) = v118 + v17;
        *(v124 + 21) = v117 + v19;
        *(v124 + 22) = v21;
        *(v124 + 23) = v23;
        if ((v128 & 1) == 0)
        {
        }

LABEL_82:
        if ((*(v101 + 264) & 2) == 0)
        {
          *(v101 + 264) |= 2u;
        }
      }
    }

    else
    {

      DisplayList.init(_:)(v100, __src);
      v93 = 0;
      v98 = *&__src[0];
      v99 = WORD4(__src[0]) | (HIDWORD(__src[0]) << 32) | 0x40000000;
      v97 = 0x1400000000;
      if ((v92 & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    v101 = v124;
    v102 = *(v124 + 24);
    *__src = v17;
    *(__src + 1) = v19;
    *&__src[1] = v21;
    *(&__src[1] + 1) = v23;
    *&__src[2] = v102;
    *(&__src[2] + 1) = v93;
    *&__src[3] = v97;
    *(&__src[3] + 1) = v98;
    *&__src[4] = v99;
    DWORD2(__src[4]) = 0;
    outlined copy of DisplayList.Item.Value(v93, v97, v98, v99);
    DisplayList.init(_:)(__src, __dst);
    v145 = WORD4(__dst[0]);
    v147 = *&__dst[0];
    v141 = v99;
    v143 = HIDWORD(__dst[0]);
    v137 = v98;
    if (v116 || *(v124 + 26) >> 29)
    {
      __asm { FMOV            V0.4S, #1.0 }

      v162 = _Q0;
      LODWORD(v163) = 2143289344;
      _ShapeStyle_RenderedShape.render(color:)(&v162);
      v111 = *(v124 + 26);
      v110 = *(v124 + 27);
      v112 = *(v124 + 28);
      v113 = *(v124 + 24);
      v114 = *(v124 + 25);
      __src[0] = 0uLL;
      __src[1] = v124[11];
      *&__src[2] = v113;
      *(&__src[2] + 1) = v114;
      *&__src[3] = v111;
      *(&__src[3] + 1) = v110;
      *&__src[4] = v112;
      DWORD2(__src[4]) = 0;
      v115 = swift_allocObject();
      __dst[2] = __src[2];
      __dst[3] = __src[3];
      *(&__dst[3] + 12) = *(&__src[3] + 12);
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      outlined copy of DisplayList.Item.Value(v114, v111, v110, v112);
      outlined init with copy of DisplayList.Item(__src, &v172);
      DisplayList.init(_:)(__dst, v115 + 16);
      outlined consume of DisplayList.Item.Value(v93, v97, v137, v141);
      outlined destroy of DisplayList.Item(__src);
      *(v115 + 32) = 0;
      outlined consume of DisplayList.Item.Value(*(v124 + 25), *(v124 + 26), *(v124 + 27), *(v124 + 28));
      *(v124 + 25) = v115;
      *(v124 + 26) = 0x700000000;
      *(v124 + 27) = v147;
      *(v124 + 28) = v145 | (v143 << 32) | 0x40000000;
      if (v128)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v103 = *(v124 + 8);
      v105 = *(v124 + 2);
      v104 = *(v124 + 3);
      v107 = *v124;
      v106 = *(v124 + 1);
      outlined copy of Path.Storage(*v124, v106, v105, v104, v103);
      outlined consume of DisplayList.Item.Value(v93, v97, v137, v141);
      v108 = swift_allocObject();
      *(v108 + 16) = v107;
      *(v108 + 24) = v106;
      *(v108 + 32) = v105;
      *(v108 + 40) = v104;
      *(v108 + 48) = v103;
      *(v108 + 49) = BYTE1(v103) & 1;
      *(v108 + 50) = BYTE2(v103) & 1;
      *(v108 + 52) = 0;
      outlined consume of DisplayList.Item.Value(*(v124 + 25), *(v124 + 26), *(v124 + 27), *(v124 + 28));
      *(v124 + 25) = v108;
      *(v124 + 26) = 0x600000000;
      *(v124 + 27) = v147;
      *(v124 + 28) = v145 | (v143 << 32) | 0x40000000;
      if (v128)
      {
        goto LABEL_82;
      }
    }
  }

  v26 = 0;
  v27 = 0;
  v128 = 0;
  v28 = (v24 + 80);
  v134 = *(v1 + 54);
  v135 = *(v1 + 24);
  v133 = v25 - 1;
  __asm { FMOV            V0.4S, #1.0 }

  v119 = _Q0;
  v136 = v24;
  do
  {
    v35 = *(v28 - 6);
    v34 = *(v28 - 5);
    v37 = *(v28 - 4);
    v36 = *(v28 - 3);
    v38 = *(v28 - 3);
    v39 = *(v28 - 1);
    v40 = *v28;
    v146 = v27;
    v144 = v26;
    v142 = *(v28 - 16);
    if (v142 <= 1u)
    {
      v41 = HIDWORD(v35);
      if (*(v28 - 16))
      {
        v55 = HIDWORD(v35);
        v56 = *(v28 - 3);
        v57 = *(v28 - 6);
        v58 = *(v28 - 5);
        v127 = *v28;
        v59 = *(v28 - 1);
        v60 = swift_allocObject();
        *(v60 + 16) = v57;
        *(v60 + 20) = v55;
        *(v60 + 24) = v58;
        v39 = v59;
        v40 = v127;
        *(v60 + 32) = v37;
        *(v60 + 40) = v56;
        v128 = 1;
        outlined copy of Material.Layer.Storage(v57, v58, v37, v56, 1);
        outlined copy of GraphicsBlendMode(v39, v127);
        outlined copy of Material.Layer.Storage(v57, v58, v37, v56, 1);
        v61 = 0uLL;
        v138 = 1;
        v62 = v21;
        v63 = v23;
        goto LABEL_56;
      }

      v130 = *(v28 - 3);
      outlined copy of Material.Layer.Storage(v35, v34, v37, v36, 0);
      outlined copy of GraphicsBlendMode(v39, v40);
      Value = AGGraphGetValue();
      v43 = 0;
      if (*&v37 <= 1.0)
      {
        goto LABEL_54;
      }

      v45 = *Value;
      v44 = *(Value + 8);
      v131 = v39;
      if (v44)
      {

        swift_retain_n();
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV019AllowedDynamicRangeI033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt1g5(v45, __src);

        v46 = LOBYTE(__src[0]);
        if (LOBYTE(__src[0]) == 3)
        {
          v46 = 2;
        }

        if (v46)
        {
          v125 = v46;
          _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v45);
          v47 = v44;

          goto LABEL_44;
        }

        LODWORD(v41) = HIDWORD(v35);
LABEL_38:

        v43 = 0;
LABEL_54:
        v88 = swift_allocObject();
        *(v88 + 16) = v35;
        *(v88 + 20) = v41;
        *(v88 + 24) = v34;
        *(v88 + 32) = v37;
        v138 = 1;
        *(v88 + 36) = 1;
        v60 = v88 | 0x1000000000000000;
        v61 = 0uLL;
        v62 = v21;
        v63 = v23;
        *(v88 + 37) = v43;
        v56 = v130;
        goto LABEL_55;
      }

      v83 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV019AllowedDynamicRangeS033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0g5(v82);
      if (v83 && (v84 = *(v83 + 72), v84 != 3))
      {
        if (!*(v83 + 72))
        {
          goto LABEL_38;
        }
      }

      else
      {
        v84 = 2;
      }

      v125 = v84;
      if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(v45) && one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v47 = 0;
LABEL_44:
      static CorePlatformProvidersDefinition.providers.getter(__src);
      v85 = *&__src[4];
      if (*&__src[4])
      {
        v86 = *(&__src[4] + 1);

        *&__src[0] = v45;
        *(&__src[0] + 1) = v47;
        (*(v86 + 8))(__dst, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, __src, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, v85, v86);
      }

      else
      {
        if (!v47)
        {
          v91 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV022MaxAllowedDynamicRangeS0VG_Tt0g5(v45);
          if (v91)
          {
            v87 = *(v91 + 72);
          }

          else
          {
            v87 = 3;
          }

          v39 = v131;
          LOBYTE(__dst[0]) = v87;
          goto LABEL_49;
        }

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV022MaxAllowedDynamicRangeI0VG_Tt1g5(v45, __dst);
      }

      v87 = LOBYTE(__dst[0]);
      v39 = v131;
LABEL_49:
      LODWORD(v41) = HIDWORD(v35);
      if (v87 == 3)
      {

        v43 = v125;
      }

      else
      {

        if (v87 >= v125)
        {
          v43 = v125;
        }

        else
        {
          v43 = v87;
        }
      }

      goto LABEL_54;
    }

    if (*(v28 - 16) != 2)
    {
      v64 = swift_allocObject();
      *(v64 + 40) = &type metadata for IntelligenceLightSourceLayer;
      *(v64 + 48) = &protocol witness table for IntelligenceLightSourceLayer;
      *(v64 + 16) = v35 & 1;
      *(v64 + 17) = BYTE1(v35) & 1;
      v60 = v64 | 0x8000000000000000;
      outlined copy of Material.Layer.Storage(v35, v34, v37, v36, 3);
      outlined copy of GraphicsBlendMode(v39, v40);
      v61 = 0uLL;
      v138 = 1;
LABEL_25:
      v62 = v21;
      v63 = v23;
      v56 = v36;
LABEL_55:
      v57 = v35;
      v58 = v34;
      goto LABEL_56;
    }

    v132 = *(v28 - 1);
    v126 = *(v28 - 4);
    v48 = v124[1];
    v172 = *v124;
    *&v177[12] = *(v124 + 92);
    v49 = v124[4];
    v50 = v124[5];
    v51 = v124[2];
    v175 = v124[3];
    v176 = v49;
    *v177 = v50;
    v173 = v48;
    v174 = v51;
    v52 = v172;
    if (!(*&v177[24] >> 29))
    {
      v139 = v174;
      v129 = *(&v173 + 1);
      v122 = v173;
      type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PathSet.Element>, &type metadata for PathSet.Element, MEMORY[0x1E69E6F90]);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_18DDA6EB0;
      *(v54 + 32) = v52;
      *(v54 + 48) = v122;
      *(v54 + 56) = v129;
      *(v54 + 64) = v139;
      *(v54 + 72) = 0;
      *(v54 + 80) = 0;
      v53 = 0;
      *(v54 + 84) = 0;
      goto LABEL_19;
    }

    if (*&v177[24] >> 29 == 1)
    {
      v53 = *(&v172 + 1);
      v54 = v172;
LABEL_19:
      v65 = 0.5;
      if ((v34 & 1) == 0)
      {
        v65 = 0.0;
      }

      if (*(&v34 + 1) == 0.0)
      {
        v66 = v65;
      }

      else
      {
        v66 = *(&v34 + 1);
      }

      v67 = swift_allocObject();
      *(v67 + 16) = v17;
      *(v67 + 24) = v19;
      *(v67 + 32) = v54;
      *(v67 + 40) = v53;
      *(v67 + 48) = v35;
      *(v67 + 56) = v66;
      *(v67 + 60) = v34;
      v60 = v67 | 0x5000000000000000;
      *(v67 + 64) = 0;
      v37 = v126;
      outlined copy of Material.Layer.Storage(v35, v34, v126, v36, 2);
      v39 = v132;
      outlined copy of GraphicsBlendMode(v132, v40);
      outlined copy of Material.Layer.Storage(v35, v34, v126, v36, 2);
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v172, __src);
      v138 = 0;
      v61 = 0uLL;
      v128 = 1;
      goto LABEL_25;
    }

    v68 = v124[5];
    v166 = v124[4];
    v167[0] = v68;
    *(v167 + 12) = *(v124 + 92);
    v69 = v124[1];
    v162 = *v124;
    v163 = v69;
    v70 = v124[3];
    v164 = v124[2];
    v165 = v70;
    v71 = *(v124 + 24);
    v72 = *(v124 + 54);
    v140 = *(v124 + 236);
    *&__src[9] = 0;
    DWORD2(__src[9]) = 0;
    outlined copy of Material.Layer.Storage(v35, v34, v126, v36, 2);
    outlined copy of GraphicsBlendMode(v132, v40);
    outlined copy of Material.Layer.Storage(v35, v34, v126, v36, 2);
    outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v162, __dst);
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    *(&__src[15] + 1) = static GraphicsBlendMode.normal;
    LOBYTE(__src[16]) = byte_1ED52F818;
    BYTE8(__src[16]) = 0;
    __src[4] = v166;
    __src[5] = v167[0];
    *(&__src[5] + 12) = *(v167 + 12);
    __src[0] = v162;
    __src[1] = v163;
    __src[2] = v164;
    __src[3] = v165;
    WORD6(__src[6]) = v72;
    __src[7] = 0uLL;
    *&__src[8] = v120;
    *(&__src[8] + 1) = v10;
    __src[10] = 0uLL;
    *&__src[11] = v120;
    *(&__src[11] + 1) = v10;
    __src[12] = v71;
    __src[13] = 0uLL;
    *&__src[14] = 3221225472;
    DWORD2(__src[14]) = 0;
    BYTE12(__src[14]) = v140;
    DWORD1(__src[16]) = 1065353216;
    LODWORD(__src[15]) = v123;
    v182 = v119;
    v183 = 2143289344;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
    _ShapeStyle_RenderedShape.render(color:)(&v182);
    _ShapeStyle_RenderedShape.commitItem()(&v158);
    v121 = v158;
    v63 = *(&v159 + 1);
    v62 = v159;
    v158 = 0uLL;
    *(v171 + 12) = *(v161 + 12);
    v170 = v160;
    v171[0] = v161[0];
    v168 = 0uLL;
    v169 = v159;
    if ((~LODWORD(v161[1]) & 0xC0000000) != 0 || (*(v161 + 12) >> 32) != 3221225472 || *&v171[0] | *(&v171[0] + 1) | *(&v170 + 1))
    {
      type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
      v75 = swift_allocObject();
      v76 = v160;
      v77 = v161[0];
      v79 = v158;
      v78 = v159;
      v75[3] = v159;
      v75[4] = v76;
      v75[5] = v77;
      v80 = *(v161 + 12);
      *(v75 + 92) = *(v161 + 12);
      v75[1] = xmmword_18DDA6EB0;
      v75[2] = v79;
      __dst[2] = v76;
      __dst[3] = v77;
      *(&__dst[3] + 12) = v80;
      __dst[0] = v79;
      __dst[1] = v78;
      outlined init with copy of DisplayList.Item(&v168, &v153);
      outlined init with copy of DisplayList.Item(&v168, &v153);
      DisplayList.Item.features.getter(&v153);
      v74 = v153;
      v151 = v170;
      v152[0] = v171[0];
      *(v152 + 12) = *(v171 + 12);
      v149 = v168;
      v150 = v169;
      DisplayList.Item.properties.getter(&v148);
      v156[0] = v161[0];
      *(v156 + 12) = *(v161 + 12);
      v154 = v159;
      v155 = v160;
      v153 = v158;
      outlined destroy of DisplayList.Item(&v153);
      memcpy(__dst, __src, 0x109uLL);
      outlined destroy of _ShapeStyle_RenderedShape(__dst);
      outlined destroy of DisplayList.Item(&v168);
      v73 = v148;
    }

    else
    {
      v156[0] = v161[0];
      *(v156 + 12) = *(v161 + 12);
      v154 = v159;
      v155 = v160;
      v153 = v158;
      outlined init with copy of DisplayList.Item(&v168, __dst);
      outlined destroy of DisplayList.Item(&v153);
      memcpy(__dst, __src, 0x109uLL);
      outlined destroy of _ShapeStyle_RenderedShape(__dst);
      outlined destroy of DisplayList.Item(&v168);
      v73 = 0;
      v74 = 0;
      v75 = MEMORY[0x1E69E7CC0];
    }

    v81 = swift_allocObject();
    v138 = 0;
    *(v81 + 16) = v75;
    *(v81 + 24) = v74;
    *(v81 + 28) = v73;
    *(v81 + 32) = v35;
    v60 = v81 | 0x6000000000000000;
    v128 = 1;
    *(v81 + 40) = v34;
    v37 = v126;
    v56 = v36;
    v39 = v132;
    v57 = v35;
    v58 = v34;
    v61 = v121;
LABEL_56:
    __src[0] = v61;
    *&__src[1] = v62;
    *(&__src[1] + 1) = v63;
    *&__src[2] = v135;
    *(&__src[2] + 1) = v60;
    __src[3] = v134;
    *&__src[4] = 0;
    DWORD2(__src[4]) = 0;
    __dst[2] = __src[2];
    __dst[3] = v134;
    *(&__dst[3] + 12) = v134 >> 96;
    __dst[0] = v61;
    __dst[1] = __src[1];
    *&v172 = v39;
    BYTE8(v172) = v40;
    outlined copy of DisplayList.Content.Value(v60);
    outlined copy of GraphicsBlendMode(v39, v40);
    MaterialLayers.append(item:opacity:blendMode:)(__dst, &v172, v38);
    outlined consume of Material.Layer.Storage(v57, v58, v37, v56, v142);
    outlined consume of GraphicsBlendMode(v39, v40);
    outlined consume of DisplayList.Content.Value(v60);
    outlined consume of GraphicsBlendMode(v172, SBYTE8(v172));
    outlined destroy of DisplayList.Item(__src);
    if (v146)
    {
      v89 = v144;
      result = v136;
      if (v133 == v144)
      {

        v92 = 1;
        goto LABEL_69;
      }

      v27 = 1;
    }

    else
    {
      v89 = v144;
      result = v136;
      if (v133 == v144)
      {

        v92 = v138;
        goto LABEL_69;
      }

      v27 = v138;
    }

    v26 = v89 + 1;
    v28 += 56;
  }

  while (v26 < *(result + 16));
  __break(1u);
  return result;
}

uint64_t sub_18D1FA9B0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18D1FA9F0()
{

  return swift_deallocObject();
}

uint64_t sub_18D1FAA34()
{

  return swift_deallocObject();
}

uint64_t static GraphicsContext.Shading.style<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  result = AnyShapeStyle.init<A>(_:)(v9, a2, a3);
  *a4 = result;
  *(a4 + 72) = 4;
  return result;
}

uint64_t ViewTraitCollection.tagValue<A>(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TagValueTraitKey.Value(0, a1, a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v18[1] = *v4;
  v13 = type metadata accessor for TagValueTraitKey(0, a1, a2, v12);
  swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v13);
  ViewTraitCollection.subscript.getter(v13, v14, v11);
  v15 = *(a1 - 8);
  if ((*(v15 + 48))(v11, 1, a1) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v16 = 1;
  }

  else
  {
    (*(v15 + 32))(a4, v11, a1);
    v16 = 0;
  }

  return (*(v15 + 56))(a4, v16, 1, a1);
}

void *initializeWithCopy for StrokeStyle(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a2[3];
  a1[2] = a2[2];
  a1[3] = v3;
  a1[4] = a2[4];

  return a1;
}

uint64_t storeEnumTagSinglePayload for TimeDataFormattingContainer(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t GraphicsContext.resolve(_:)@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[3];
  v42 = a1[2];
  *v43 = v4;
  *&v43[9] = *(a1 + 57);
  v5 = a1[1];
  v40 = *a1;
  v41 = v5;
  GraphicsContext.Shading.resolve(in:levels:)(a2, 256, &v29);
  v6 = swift_allocObject();
  v47 = v37;
  v48 = v38;
  v49 = v39;
  *&v43[16] = v33;
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v40 = v29;
  v41 = v30;
  v42 = v31;
  *v43 = v32;
  result = _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOg(&v40);
  if (result == 1)
  {
    v18 = 0uLL;
    LODWORD(v19) = 2143289344;
    result = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v18);
    v8 = v27;
    *(v6 + 144) = v26;
    *(v6 + 160) = v8;
    *(v6 + 176) = v28;
    v9 = v23;
    *(v6 + 80) = v22;
    *(v6 + 96) = v9;
    v10 = v25;
    *(v6 + 112) = v24;
    *(v6 + 128) = v10;
    v11 = v19;
    *(v6 + 16) = v18;
    *(v6 + 32) = v11;
    v13 = v20;
    v12 = v21;
  }

  else
  {
    v14 = v38;
    *(v6 + 144) = v37;
    *(v6 + 160) = v14;
    *(v6 + 176) = v39;
    v15 = v34;
    *(v6 + 80) = v33;
    *(v6 + 96) = v15;
    v16 = v36;
    *(v6 + 112) = v35;
    *(v6 + 128) = v16;
    v17 = v30;
    *(v6 + 16) = v29;
    *(v6 + 32) = v17;
    v13 = v31;
    v12 = v32;
  }

  *(v6 + 48) = v13;
  *(v6 + 64) = v12;
  *a3 = v6;
  *(a3 + 72) = 9;
  return result;
}

uint64_t sub_18D1FAEC8()
{
  outlined consume of GraphicsContext.ResolvedShading(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocObject();
}

void GraphicsContext.Shading.resolve(in:levels:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v203 = a1;
  v204 = a3;
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v193 - v6;
  v8 = type metadata accessor for ImageResolutionContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v3[1];
  v244 = *v3;
  v245 = v12;
  v13 = v3[3];
  v246 = v3[2];
  *v247 = v13;
  *&v247[9] = *(v3 + 57);
  v14 = BYTE8(v244);
  v15 = *(&v244 + 9) | (BYTE11(v244) << 16);
  v17 = HIDWORD(v244);
  v16 = v245;
  v18 = DWORD1(v245);
  v19 = *(&v245 + 1);
  v20 = v246;
  v21 = *&v247[16];
  if (v247[24] <= 4u)
  {
    if (v247[24] <= 1u)
    {
      if (v247[24])
      {
        v100 = v244 | (DWORD1(v244) << 32);
        v101 = v203[4];
        v102 = v203[5];
        if (v101 == 1)
        {
          v103 = v203[2];
          v104 = *(v103 + 48);
          v105 = *(v103 + 56);
        }

        else
        {
          v105 = v203[5];
          v104 = v203[4];
        }

        *&v216 = v104;
        *(&v216 + 1) = v105;
        v135 = *(*v100 + 120);
        outlined init with copy of GraphicsContext.Shading.Storage(&v244, &v224);
        v136 = outlined copy of EnvironmentValues?(v101, v102);
        v135(&v235, &v216, v136);
        v137 = v236;
        outlined destroy of GraphicsContext.Shading.Storage(&v244);

        v216 = v235;
        LODWORD(v217) = v137;
        goto LABEL_66;
      }

      *&v216 = v244;
      DWORD2(v216) = BYTE8(v244) | (v15 << 8);
      HIDWORD(v216) = HIDWORD(v244);
      LODWORD(v217) = v245;
      _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi_(&v216);
    }

    else if (v247[24] == 2)
    {
      *&v216 = v244;
      DWORD2(v216) = BYTE8(v244) | (v15 << 8);
      HIDWORD(v216) = HIDWORD(v244);
      _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi1_(&v216);
    }

    else
    {
      if (v247[24] == 3)
      {
        *(&v201 + 1) = *(&v246 + 1);
        v202 = *v247;
        v32 = v244 | (DWORD1(v244) << 32);
        v33 = v245 | (DWORD1(v245) << 32);
        v34 = v203[4];
        v35 = v203[5];
        v36 = v34;
        v37 = v35;
        if (v34 == 1)
        {
          v38 = v203[2];
          v36 = *(v38 + 48);
          v37 = *(v38 + 56);
          v200 = *(&v245 + 1);
          *&v201 = v246;
          v39 = v244 | (DWORD1(v244) << 32);

          v32 = v39;
          v19 = v200;
          v20 = v201;
        }

        *&v216 = v32;
        BYTE8(v216) = v14;
        BYTE11(v216) = BYTE2(v15);
        *(&v216 + 9) = v15;
        HIDWORD(v216) = v17;
        *&v217 = v33;
        *(&v217 + 1) = v19;
        *v218 = v20;
        *&v235 = v36;
        *(&v235 + 1) = v37;
        v40 = v20;
        outlined init with copy of GraphicsContext.Shading.Storage(&v244, &v224);
        outlined copy of EnvironmentValues?(v34, v35);
        v41 = Shader.makeRBShader(in:)(&v235);
        outlined consume of EnvironmentValues?(v235, *(&v235 + 1));
        outlined destroy of GraphicsContext.Shading.Storage(&v244);
        *&v217 = 0;
        v216 = v41;
        DWORD2(v217) = v40;
        *v218 = *(&v201 + 1);
        *&v218[8] = v202;
        *&v218[24] = v21;
        _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi2_(&v216);
        goto LABEL_67;
      }

      if (a2 < 0)
      {
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v84 = v244 | (DWORD1(v244) << 32);
      v85 = v203[4];
      v86 = v203[5];
      v87 = v85;
      v88 = v86;
      if (v85 == 1)
      {
        v89 = v203[2];
        v87 = *(v89 + 48);
        v88 = *(v89 + 56);
      }

      v215[59] = 0;
      v212 = 0uLL;
      *&v213 = a2;
      BYTE8(v213) = 1;
      *&v214 = 0;
      BYTE8(v214) = 5;
      *v215 = v87;
      *&v215[8] = v88;
      memset(&v215[16], 0, 40);
      v215[56] = 1;
      *&v215[57] = 256;
      v90 = *(*v84 + 80);
      a2 = *v84 + 80;
      outlined init with copy of GraphicsContext.Shading.Storage(&v244, &v224);
      v91 = outlined copy of EnvironmentValues?(v85, v86);
      v90(&v212, v91);
      v92 = MEMORY[0x1E69E7CC0];
      v93 = MEMORY[0x1E69E7CC0];
      if (BYTE8(v214) == 1)
      {
      }

      *&v216 = v93;
      LOBYTE(v235) = 0;
      _ShapeStyle_Pack.Slice.init(pack:name:)(&v216, &v235, &v224);
      v94 = *(&v225 + 1);
      v203 = v225;
      v95 = (*(&v225 + 1) >> 1) - v225;
      if (__OFSUB__(*(&v225 + 1) >> 1, v225))
      {
        goto LABEL_127;
      }

      v96 = v226;
      v97 = v226 + v95;
      if (__OFADD__(v226, v95))
      {
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      *(&v202 + 1) = *(&v225 + 1) >> 1;
      v98 = (*(&v225 + 1) >> 1) - v225;
      if (v97 < v226)
      {
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      a2 = *(&v224 + 1);
      v99 = v224;
      if (v95 != 1)
      {
        if (!v95)
        {
          swift_unknownObjectRelease();
          outlined destroy of GraphicsContext.Shading.Storage(&v244);
          v238[1] = *&v215[16];
          v239[0] = *&v215[32];
          *(v239 + 12) = *&v215[44];
          v235 = v212;
          v236 = v213;
          v237 = v214;
          v238[0] = *v215;
          outlined destroy of _ShapeStyle_Shape(&v235);
          v216 = 0uLL;
          LODWORD(v217) = 2143289344;
LABEL_66:
          _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v216);
          goto LABEL_67;
        }

        v211 = v92;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95 & ~(v95 >> 63), 0);
        if (v98 < 0)
        {
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        v199 = v99;
        if (v97 == v96)
        {
LABEL_133:
          __break(1u);
LABEL_134:
          swift_once();
          goto LABEL_116;
        }

        v154 = *(&v202 + 1);
        if (v203 <= 0 && v94 >= 2)
        {
          v155 = v211;
          v156 = v203 - *(&v202 + 1);
          v157 = 1;
          while (1)
          {
            v158 = *(a2 + 96);
            v159 = *(a2 + 112);
            v160 = *(a2 + 64);
            *&v233[80] = *(a2 + 80);
            v161 = *a2;
            v162 = *(a2 + 16);
            v163 = *(a2 + 48);
            *&v233[32] = *(a2 + 32);
            *&v233[48] = v163;
            *v233 = v161;
            *&v233[16] = v162;
            *&v233[96] = v158;
            *&v233[112] = v159;
            *&v233[64] = v160;
            if (v233[93])
            {
              outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v233, &v216);
            }

            else
            {
              v164 = *&v233[20];
              v165 = *&v233[104];
              v166 = v233[112];
              LODWORD(v202) = *&v233[24];
              DWORD2(v201) = *&v233[16];
              LODWORD(v201) = *&v233[8];
              LODWORD(v200) = *&v233[12];
              if (v233[112] == 255)
              {
                outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v233, &v216);
                outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v233, &v216);
                if (one-time initialization token for normal != -1)
                {
                  swift_once();
                }

                v167 = static GraphicsBlendMode.normal;
                v168 = byte_1ED52F818;
                outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
              }

              else
              {
                outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v233, &v216);
                outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v233, &v216);
                v167 = v165;
                v168 = v166;
              }

              outlined copy of GraphicsBlendMode?(v165, v166);
              if (one-time initialization token for normal != -1)
              {
                swift_once();
              }

              v169 = static GraphicsBlendMode.normal;
              v170 = byte_1ED52F818;
              if (v168)
              {
                if (!byte_1ED52F818)
                {
                  swift_unknownObjectRetain();
LABEL_101:
                  outlined copy of GraphicsBlendMode(v169, v170);
                  outlined consume of GraphicsBlendMode(v167, v168 & 1);
                  outlined consume of GraphicsBlendMode(v169, v170);
                  outlined consume of GraphicsBlendMode(v167, v168 & 1);
LABEL_102:
                  _s7SwiftUI16_ShapeStyle_PackV3KeyV3key_AC0D0V5styletWOhTm_0(v233, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
                  v154 = *(&v202 + 1);
                  goto LABEL_103;
                }

                swift_unknownObjectRetain();
                outlined consume of GraphicsBlendMode(v167, 1);
                outlined consume of GraphicsBlendMode(v169, 1);
                if (v167 != v169)
                {
                  goto LABEL_102;
                }
              }

              else
              {
                if (byte_1ED52F818)
                {
                  goto LABEL_101;
                }

                outlined consume of GraphicsBlendMode(v167, 0);
                outlined consume of GraphicsBlendMode(v169, 0);
                if (v167 != v169)
                {
                  goto LABEL_102;
                }
              }

              v171 = *(*&v233[120] + 16);
              _s7SwiftUI16_ShapeStyle_PackV3KeyV3key_AC0D0V5styletWOhTm_0(v233, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
              v154 = *(&v202 + 1);
              if (!v171)
              {
                _s7SwiftUI16_ShapeStyle_PackV3KeyV3key_AC0D0V5styletWOhTm_0(v233, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
                *&v216 = __PAIR64__(v200, v201);
                DWORD2(v216) = DWORD2(v201);
                *(&v216 + 3) = *&v233[96] * v164;
                LODWORD(v217) = v202;
                _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v216);
                goto LABEL_104;
              }
            }

LABEL_103:
            *&v218[32] = *&v233[72];
            v219[0] = *&v233[88];
            v219[1] = *&v233[104];
            *&v220 = *&v233[120];
            v216 = *&v233[8];
            v217 = *&v233[24];
            *v218 = *&v233[40];
            *&v218[16] = *&v233[56];
            _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi3_(&v216);
LABEL_104:
            v230 = v221;
            v231 = v222;
            *&v232[0] = *&v223[0];
            v227[1] = *&v218[32];
            v228[0] = v219[0];
            v228[1] = v219[1];
            v229 = v220;
            v224 = v216;
            v225 = v217;
            v226 = *v218;
            v227[0] = *&v218[16];
            v211 = v155;
            v173 = *(v155 + 16);
            v172 = *(v155 + 24);
            if (v173 >= v172 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v172 > 1), v173 + 1, 1);
              v155 = v211;
            }

            *(v155 + 16) = v173 + 1;
            v174 = v155 + 168 * v173;
            v175 = v224;
            v176 = v226;
            *(v174 + 48) = v225;
            *(v174 + 64) = v176;
            *(v174 + 32) = v175;
            v177 = v227[0];
            v178 = v227[1];
            v179 = v228[1];
            *(v174 + 112) = v228[0];
            *(v174 + 128) = v179;
            *(v174 + 80) = v177;
            *(v174 + 96) = v178;
            v180 = v229;
            v181 = v230;
            v182 = v231;
            *(v174 + 192) = *&v232[0];
            *(v174 + 160) = v181;
            *(v174 + 176) = v182;
            *(v174 + 144) = v180;
            if (&v156[v157] == 1)
            {
              goto LABEL_125;
            }

            if (!&v156[v157])
            {
              swift_unknownObjectRelease();
              outlined destroy of GraphicsContext.Shading.Storage(&v244);
              v209 = *&v215[16];
              v210[0] = *&v215[32];
              *(v210 + 12) = *&v215[44];
              v205 = v212;
              v206 = v213;
              v207 = v214;
              v208 = *v215;
              outlined destroy of _ShapeStyle_Shape(&v205);
              *&v235 = v155;
              _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi7_(&v235);
              v221 = v241;
              v222 = v242;
              *&v223[0] = v243;
              *&v218[32] = v238[1];
              v219[0] = v239[0];
              v219[1] = v239[1];
              v220 = v240;
              v216 = v235;
              v217 = v236;
              *v218 = v237;
              *&v218[16] = v238[0];
              _ViewInputs.base.modify();
              v183 = v222;
              v120 = v204;
              *(v204 + 8) = v221;
              *(v120 + 9) = v183;
              v120[20] = *&v223[0];
              v184 = v219[0];
              *(v120 + 4) = *&v218[32];
              *(v120 + 5) = v184;
              v185 = v220;
              *(v120 + 6) = v219[1];
              *(v120 + 7) = v185;
              v186 = v217;
              *v120 = v216;
              *(v120 + 1) = v186;
              v125 = *v218;
              v124 = *&v218[16];
              goto LABEL_70;
            }

            if (v203 <= 0)
            {
              a2 += 128;
              if (v157++ < v154)
              {
                continue;
              }
            }

            break;
          }
        }

LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (!((v203 + v226 < 0) ^ __OFADD__(v203, v226) | ((v203 + v226) == 0)) || *(&v202 + 1) <= -v226)
      {
        goto LABEL_132;
      }

      v147 = *(&v224 + 1) - (v226 << 7);
      v148 = *v147;
      v149 = *(v147 + 16);
      v150 = *(v147 + 48);
      v237 = *(v147 + 32);
      v238[0] = v150;
      v235 = v148;
      v236 = v149;
      v151 = *(v147 + 64);
      v152 = *(v147 + 80);
      v153 = *(v147 + 112);
      v239[1] = *(v147 + 96);
      v240 = v153;
      v238[1] = v151;
      v239[0] = v152;
      *&v233[64] = *(v147 + 72);
      *&v233[80] = *(v147 + 88);
      *&v233[96] = *(v147 + 104);
      *&v233[112] = *(v147 + 120);
      *v233 = *(v147 + 8);
      *&v233[16] = *(v147 + 24);
      *&v233[32] = *(v147 + 40);
      *&v233[48] = *(v147 + 56);
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v235, &v224);
      GraphicsContext.ResolvedShading.init(_:)(v233, &v216);
      swift_unknownObjectRelease();
      outlined destroy of GraphicsContext.Shading.Storage(&v244);
      v209 = *&v215[16];
      v210[0] = *&v215[32];
      *(v210 + 12) = *&v215[44];
      v205 = v212;
      v206 = v213;
      v207 = v214;
      v208 = *v215;
      outlined destroy of _ShapeStyle_Shape(&v205);
    }

LABEL_67:
    v230 = v221;
    v231 = v222;
    *&v232[0] = *&v223[0];
    v227[1] = *&v218[32];
    v228[0] = v219[0];
    v228[1] = v219[1];
    v229 = v220;
    v224 = v216;
    v225 = v217;
    v226 = *v218;
    v227[0] = *&v218[16];
    goto LABEL_68;
  }

  if (v247[24] <= 7u)
  {
    if (v247[24] == 5)
    {
      v200 = *(&v245 + 1);
      v201 = v246;
      v202 = *v247;
      v52 = (v244 | (DWORD1(v244) << 32));
      v53 = v247[16];
      v199 = HIDWORD(*&v247[16]);
      v54 = v203[4];
      v55 = v203[5];
      v56 = v54;
      v57 = v55;
      if (v54 == 1)
      {
        v58 = v203[2];
        v56 = *(v58 + 48);
        v57 = *(v58 + 56);
      }

      *&v216 = v56;
      *(&v216 + 1) = v57;
      if (v14)
      {
        v59 = *v52;
        v203 = v21;
        v60 = *(v59 + 112);
        outlined init with copy of GraphicsContext.Shading.Storage(&v244, &v224);
        v61 = outlined copy of EnvironmentValues?(v54, v55);
        v60(&v235, &v216, v61);
        v53 = v203;
      }

      else
      {
        outlined init with copy of GraphicsContext.Shading.Storage(&v244, &v224);
        outlined copy of EnvironmentValues?(v54, v55);
        Gradient.resolve(in:)(&v216, v52, &v235);
      }

      outlined destroy of GraphicsContext.Shading.Storage(&v244);

      v233[0] = v236;
      *&v216 = v235;
      BYTE8(v216) = BYTE8(v235);
      HIDWORD(v216) = HIDWORD(v235);
      LOBYTE(v217) = v236;
      *(&v217 + 1) = v16 | (v18 << 32);
      *v218 = v200;
      *&v218[8] = v201;
      *&v218[24] = v202;
      v218[40] = v53;
      *&v218[44] = v199;
      _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi4_(&v216);
    }

    else
    {
      if (v247[24] != 6)
      {
        v200 = *(&v245 + 1);
        v201 = v246;
        v202 = *v247;
        v198 = BYTE8(v244) | ((*&v15 & 0xFFFFFFLL) << 8) | (HIDWORD(v244) << 32);
        v199 = v9;
        v196 = v244 | (DWORD1(v244) << 32);
        v197 = v245 | (DWORD1(v245) << 32);
        v106 = v203[4];
        v107 = v203[5];
        v108 = v106;
        v195 = v107;
        if (v106 == 1)
        {
          v109 = v203[2];
          v108 = *(v109 + 48);
          v107 = *(v109 + 56);
        }

        v194 = v107;
        v110 = type metadata accessor for Text.Style(0);
        v111 = *(*(v110 - 8) + 56);
        v111(v7, 1, 1, v110);
        LODWORD(v203) = *MEMORY[0x1E698D3F8];
        v11[2] = 0;
        v112 = v108;
        v113 = v199;
        v114 = v199[6];
        v111(v11 + v114, 1, 1, v110);
        v115 = v113[7];
        v116 = v11 + v113[8];
        *v116 = 520;
        v116[2] = 2;
        *(v11 + v113[9]) = 3;
        v117 = v113[10];
        *(v11 + v117) = 1;
        v118 = v194;
        *v11 = v112;
        v11[1] = v118;
        outlined init with copy of GraphicsContext.Shading.Storage(&v244, &v224);
        outlined copy of EnvironmentValues?(v106, v195);
        outlined assign with take of Text.Style?(v7, v11 + v114);
        *(v11 + v115) = v203;
        *(v11 + v117) = 0;
        (*(*v196 + 80))(&v216, v11);
        outlined destroy of GraphicsContext.Shading.Storage(&v244);
        _s7SwiftUI16_ShapeStyle_PackV3KeyV3key_AC0D0V5styletWOhTm_0(v11, type metadata accessor for ImageResolutionContext);
        v230 = v221;
        v231 = v222;
        v232[0] = v223[0];
        *(v232 + 11) = *(v223 + 11);
        v227[1] = *&v218[32];
        v228[0] = v219[0];
        v228[1] = v219[1];
        v229 = v220;
        v224 = v216;
        v225 = v217;
        v226 = *v218;
        v227[0] = *&v218[16];
        outlined init with copy of GraphicsImage(&v224, &v235);
        outlined destroy of Image.Resolved(&v224);
        *&v233[64] = v227[1];
        *&v233[80] = v228[0];
        *&v233[92] = *(v228 + 12);
        *v233 = v224;
        *&v233[16] = v225;
        *&v233[32] = v226;
        *&v233[48] = v227[0];
        *&v233[112] = v198;
        *&v233[120] = v197;
        *v234 = v200;
        *&v234[8] = v201;
        *&v234[24] = v202;
        _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi6_(v233);
        v241 = *v234;
        v242 = *&v234[16];
        v243 = *&v234[32];
        v238[1] = *&v233[64];
        v239[0] = *&v233[80];
        v239[1] = *&v233[96];
        v240 = *&v233[112];
        v235 = *v233;
        v236 = *&v233[16];
        v237 = *&v233[32];
        v238[0] = *&v233[48];
        _ViewInputs.base.modify();
        v119 = v242;
        v120 = v204;
        *(v204 + 8) = v241;
        *(v120 + 9) = v119;
        v120[20] = v243;
        v121 = v239[0];
        *(v120 + 4) = v238[1];
        *(v120 + 5) = v121;
        v122 = v240;
        *(v120 + 6) = v239[1];
        *(v120 + 7) = v122;
        v123 = v236;
        *v120 = v235;
        *(v120 + 1) = v123;
        v125 = v237;
        v124 = v238[0];
LABEL_70:
        *(v120 + 2) = v125;
        *(v120 + 3) = v124;
        return;
      }

      *v233 = v244;
      v233[8] = BYTE8(v244);
      *&v233[9] = *(&v244 + 9);
      v233[11] = BYTE2(v15);
      *&v233[12] = HIDWORD(v244);
      *&v233[16] = v245;
      *&v233[32] = v246;
      *&v233[48] = *v247;
      v22 = v203[4];
      v23 = v203[5];
      v24 = v22;
      v25 = v23;
      *&v233[56] = *&v247[8];
      if (v22 == 1)
      {
        v26 = v203[2];
        v24 = *(v26 + 48);
        v25 = *(v26 + 56);
      }

      *&v216 = v24;
      *(&v216 + 1) = v25;
      outlined init with copy of GraphicsContext.Shading.Storage(&v244, &v224);
      outlined copy of EnvironmentValues?(v22, v23);
      MeshGradient.resolvePaint(in:)(&v216, &v235);

      outlined destroy of GraphicsContext.Shading.Storage(&v244);
      *v218 = v237;
      *&v218[16] = v238[0];
      v216 = v235;
      v217 = v236;
      *&v218[40] = 0;
      *&v219[0] = 0;
      *&v218[32] = *&v238[1];
      __asm { FMOV            V0.2D, #1.0 }

      *(v219 + 8) = _Q0;
      _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi5_(&v216);
    }

    goto LABEL_67;
  }

  if (v247[24] == 8)
  {
    v62 = v244 | (DWORD1(v244) << 32);
    v63 = *(v62 + 0x10);
    if (v63 >= a2)
    {
      v64 = a2;
    }

    else
    {
      v64 = *((v244 | (DWORD1(v244) << 32)) + 0x10);
    }

    if (v64 > 1)
    {

      v65 = 0;
      v66 = v62 + 32;
      v67 = MEMORY[0x1E69E7CC0];
      a2 = v203;
      *&v202 = v62 + 32;
      do
      {
        *(&v202 + 1) = v67;
        v68 = (v66 + 80 * v65);
        v69 = v65;
        while (1)
        {
          if (v69 >= v64)
          {
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          v212 = *v68;
          v70 = v68[1];
          v71 = v68[2];
          v72 = v68[3];
          *&v215[9] = *(v68 + 57);
          v214 = v71;
          *v215 = v72;
          v213 = v70;
          v65 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            goto LABEL_123;
          }

          v236 = v68[1];
          v237 = v68[2];
          v238[0] = v68[3];
          *(v238 + 9) = *(v68 + 57);
          v235 = *v68;
          outlined init with copy of GraphicsContext.Shading(&v212, v233);
          GraphicsContext.Shading.resolve(in:levels:)(a2, 1, &v216);
          outlined destroy of GraphicsContext.Shading(&v212);
          v230 = v221;
          v231 = v222;
          *&v232[0] = *&v223[0];
          v227[1] = *&v218[32];
          v228[0] = v219[0];
          v228[1] = v219[1];
          v229 = v220;
          v224 = v216;
          v225 = v217;
          v226 = *v218;
          v227[0] = *&v218[16];
          if (_s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOg(&v224) != 1)
          {
            break;
          }

          v241 = v221;
          v242 = v222;
          v243 = *&v223[0];
          v238[1] = *&v218[32];
          v239[0] = v219[0];
          v239[1] = v219[1];
          v240 = v220;
          v235 = v216;
          v236 = v217;
          v237 = *v218;
          v238[0] = *&v218[16];
          outlined destroy of GraphicsContext.Shading?(&v235, &lazy cache variable for type metadata for GraphicsContext.ResolvedShading?, &type metadata for GraphicsContext.ResolvedShading);
          ++v69;
          v68 += 5;
          if (v65 == v64)
          {
            v67 = *(&v202 + 1);
            goto LABEL_71;
          }
        }

        v241 = v221;
        v242 = v222;
        v243 = *&v223[0];
        v238[1] = *&v218[32];
        v239[0] = v219[0];
        v239[1] = v219[1];
        v240 = v220;
        v235 = v216;
        v236 = v217;
        v237 = *v218;
        v238[0] = *&v218[16];
        v67 = *(&v202 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v67 + 2) + 1, 1, v67);
        }

        v74 = *(v67 + 2);
        v73 = *(v67 + 3);
        if (v74 >= v73 >> 1)
        {
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v67);
        }

        *&v233[64] = v238[1];
        *&v233[80] = v239[0];
        *&v233[32] = v237;
        *&v233[48] = v238[0];
        *&v234[32] = v243;
        *v234 = v241;
        *&v234[16] = v242;
        *&v233[96] = v239[1];
        *&v233[112] = v240;
        *v233 = v235;
        *&v233[16] = v236;
        *(v67 + 2) = v74 + 1;
        v75 = &v67[168 * v74];
        v76 = *v233;
        v77 = *&v233[32];
        *(v75 + 3) = *&v233[16];
        *(v75 + 4) = v77;
        *(v75 + 2) = v76;
        v78 = *&v233[48];
        v79 = *&v233[64];
        v80 = *&v233[96];
        *(v75 + 7) = *&v233[80];
        *(v75 + 8) = v80;
        *(v75 + 5) = v78;
        *(v75 + 6) = v79;
        v81 = *&v233[112];
        v82 = *v234;
        v83 = *&v234[16];
        *(v75 + 24) = *&v234[32];
        *(v75 + 10) = v82;
        *(v75 + 11) = v83;
        *(v75 + 9) = v81;
        v66 = v202;
      }

      while (v65 != v64);
LABEL_71:
      outlined destroy of GraphicsContext.Shading.Storage(&v244);
      v142 = *(v67 + 2);
      if (!v142)
      {

        _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOi0_(&v224);
        goto LABEL_69;
      }

      if (v142 == 1)
      {
        v143 = *(v67 + 10);
        v220 = *(v67 + 9);
        v221 = v143;
        v222 = *(v67 + 11);
        *&v223[0] = *(v67 + 24);
        v144 = *(v67 + 6);
        *&v218[16] = *(v67 + 5);
        *&v218[32] = v144;
        v145 = *(v67 + 8);
        v219[0] = *(v67 + 7);
        v219[1] = v145;
        v146 = *(v67 + 3);
        v216 = *(v67 + 2);
        v217 = v146;
        *v218 = *(v67 + 4);
        outlined init with copy of GraphicsContext.ResolvedShading(&v216, &v224);
      }

      else
      {
        *&v216 = v67;
        _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi7_(&v216);
      }

      goto LABEL_67;
    }

    if (v63)
    {
      v131 = *((v244 | (DWORD1(v244) << 32)) + 0x30);
      v132 = *((v244 | (DWORD1(v244) << 32)) + 0x50);
      *v218 = *((v244 | (DWORD1(v244) << 32)) + 0x40);
      *&v218[16] = v132;
      *&v218[25] = *((v244 | (DWORD1(v244) << 32)) + 0x59);
      v133 = *((v244 | (DWORD1(v244) << 32)) + 0x30);
      v216 = *((v244 | (DWORD1(v244) << 32)) + 0x20);
      v217 = v131;
      v134 = *((v244 | (DWORD1(v244) << 32)) + 0x50);
      v237 = *((v244 | (DWORD1(v244) << 32)) + 0x40);
      v238[0] = v134;
      *(v238 + 9) = *((v244 | (DWORD1(v244) << 32)) + 0x59);
      v235 = *((v244 | (DWORD1(v244) << 32)) + 0x20);
      v236 = v133;
      outlined init with copy of GraphicsContext.Shading(&v216, &v224);
      GraphicsContext.Shading.resolve(in:levels:)(v203, a2, v204);
      v226 = v237;
      v227[0] = v238[0];
      *(v227 + 9) = *(v238 + 9);
      v224 = v235;
      v225 = v236;
      outlined destroy of GraphicsContext.Shading(&v224);
      return;
    }

    goto LABEL_130;
  }

  if (v247[24] == 9)
  {
    v42 = *((v244 | (DWORD1(v244) << 32)) + 0x90);
    v220 = *((v244 | (DWORD1(v244) << 32)) + 0x80);
    v221 = v42;
    v222 = *((v244 | (DWORD1(v244) << 32)) + 0xA0);
    *&v223[0] = *((v244 | (DWORD1(v244) << 32)) + 0xB0);
    v43 = *((v244 | (DWORD1(v244) << 32)) + 0x50);
    *&v218[16] = *((v244 | (DWORD1(v244) << 32)) + 0x40);
    *&v218[32] = v43;
    v44 = *((v244 | (DWORD1(v244) << 32)) + 0x70);
    v219[0] = *((v244 | (DWORD1(v244) << 32)) + 0x60);
    v219[1] = v44;
    v45 = *((v244 | (DWORD1(v244) << 32)) + 0x20);
    v216 = *((v244 | (DWORD1(v244) << 32)) + 0x10);
    v217 = v45;
    *v218 = *((v244 | (DWORD1(v244) << 32)) + 0x30);
    memmove(&v224, ((v244 | (DWORD1(v244) << 32)) + 16), 0xA8uLL);
    _ViewInputs.base.modify();
    v46 = v231;
    v47 = v204;
    *(v204 + 8) = v230;
    *(v47 + 9) = v46;
    v47[20] = *&v232[0];
    v48 = v228[0];
    *(v47 + 4) = v227[1];
    *(v47 + 5) = v48;
    v49 = v229;
    *(v47 + 6) = v228[1];
    *(v47 + 7) = v49;
    v50 = v225;
    *v47 = v224;
    *(v47 + 1) = v50;
    v51 = v227[0];
    *(v47 + 2) = v226;
    *(v47 + 3) = v51;
    outlined init with copy of GraphicsContext.ResolvedShading(&v216, &v235);
    return;
  }

  if (a2 == 1)
  {
    goto LABEL_117;
  }

  v126 = v203[4];
  v127 = v203[5];
  if (v126 == 1)
  {
    v128 = v203[2];
    v129 = *(v128 + 48);
    v130 = *(v128 + 56);
  }

  else
  {
    v130 = v203[5];
    v129 = v203[4];
  }

  outlined copy of EnvironmentValues?(v126, v127);

  v187 = specialized ShapeStyle.isMultiLevel(in:)(v129, v130);

  if (!v187)
  {
LABEL_117:
    v188 = v203[2];
    v190 = v203[4];
    v189 = v203[5];
    v191 = v190;
    v192 = v189;
    if (v190 == 1)
    {
      v191 = *(v188 + 48);
      v192 = *(v188 + 56);
    }

    *&v216 = v191;
    *(&v216 + 1) = v192;
    outlined copy of EnvironmentValues?(v190, v189);
    GraphicsContext.Storage.Shared.resolvedForeground(in:)(&v216, &v224);
    outlined consume of EnvironmentValues?(v216, *(&v216 + 1));
LABEL_68:
    _ViewInputs.base.modify();
LABEL_69:
    v138 = v231;
    v120 = v204;
    *(v204 + 8) = v230;
    *(v120 + 9) = v138;
    v120[20] = *&v232[0];
    v139 = v228[0];
    *(v120 + 4) = v227[1];
    *(v120 + 5) = v139;
    v140 = v229;
    *(v120 + 6) = v228[1];
    *(v120 + 7) = v140;
    v141 = v225;
    *v120 = v224;
    *(v120 + 1) = v141;
    v125 = v226;
    v124 = v227[0];
    goto LABEL_70;
  }

  if (one-time initialization token for shared != -1)
  {
    goto LABEL_134;
  }

LABEL_116:
  *&v224 = static ForegroundStyle.shared;
  BYTE8(v227[1]) = 4;

  GraphicsContext.Shading.resolve(in:levels:)(v203, a2, v204);
}

double @objc closure #8 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks(uint64_t a1)
{

  v2 = MEMORY[0x193AC3640](v1 + 24);

  return v2;
}

void CanvasDisplayList.updateValue()(uint64_t a1)
{
  v239 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v210 = *(v3 - 8);
  v211 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v183[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v205 = &v183[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v198 = &v183[-v9];
  _sSay7SwiftUI13ViewResponderCGMaTm_8(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v203 = &v183[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v202 = &v183[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v206 = &v183[-v15];
  v16 = *(a1 + 16);
  v212 = *(a1 + 24);
  v213 = *&v16;
  v217 = type metadata accessor for Canvas(255, v16, *&v212, v17);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v216 = &v183[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v218 = &v183[-v22];
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v220 = v24;
  v26 = *Value;
  v25 = *(Value + 8);
  type metadata accessor for CGPoint(0);
  v209 = v27;
  v28 = AGGraphGetValue();
  v30 = v29;
  v214 = *v28;
  v219 = v1;
  v31 = AGGraphGetValue();
  v33 = *v31;
  v34 = *(v31 + 8);
  v197 = v30;
  if ((v30 & 1) == 0 && (v220 & 1) == 0 && (v32 & 1) == 0)
  {

LABEL_5:
    v35 = AGGraphCurrentAttributeWasModified();
    goto LABEL_16;
  }

  LOBYTE(v231) = 1;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  memset(v227, 0, sizeof(v227));
  v228 = 0;
  v229 = 0u;
  v230 = 1;
  *&v235 = v33;
  *(&v235 + 1) = v34;
  v236 = v214;
  v237 = vsubq_f64(*(v31 + 32), vsubq_f64(v214, *(v31 + 16)));

  specialized ViewTransform.forEach(inverted:_:)(0, &v235, &v224, v36);
  x = 0.0;
  v200 = v25;
  if (v230)
  {
    y = 0.0;
    v39 = v26;
    height = v25;
  }

  else
  {
    v41 = v228;
    v42 = v229;
    v240 = v228;
    v43 = *(&v229 + 1);
    v208 = *&v229;
    Width = CGRectGetWidth(*(&v42 - 1));
    if (Width + Width <= v26 || (v241.origin = v41, v241.size.width = v208, v241.size.height = *(&v42 + 1), v45 = CGRectGetHeight(v241), height = v200, y = 0.0, v39 = v26, v45 + v45 <= v200))
    {
      v207 = floor(v41.x * 0.0078125) * 128.0;
      v242.origin = v41;
      v46 = v208;
      v242.size.width = v208;
      v242.size.height = *(&v42 + 1);
      v47 = CGRectGetWidth(v242) + 128.0;
      v243.origin = v41;
      v243.size.width = v46;
      v243.size.height = *(&v42 + 1);
      v252.size.height = CGRectGetHeight(v243) + 128.0;
      v244.origin.x = 0.0;
      v244.origin.y = 0.0;
      v244.size.width = v26;
      v244.size.height = v200;
      v252.origin.x = v207;
      v252.origin.y = floor(v41.y * 0.0078125) * 128.0;
      v252.size.width = v47;
      v245 = CGRectIntersection(v244, v252);
      x = v245.origin.x;
      y = v245.origin.y;
      v39 = v245.size.width;
      height = v245.size.height;
    }
  }

  v48 = v219;
  v246.origin.x = x;
  v246.origin.y = y;
  v246.size.width = v39;
  v246.size.height = height;
  if (CGRectEqualToRect(v246, *(v219 + 10)))
  {
    v25 = v200;
    if ((v220 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v48[5] = x;
    v48[6] = y;
    v48[7] = v39;
    v48[8] = height;
    v25 = v200;
  }

  v35 = 1;
LABEL_16:
  v222 = v35;
  if (CGRectIsEmpty(*(v219 + 10)))
  {
    *&v224 = MEMORY[0x1E69E7CC0];
    WORD4(v224) = 0;
    HIDWORD(v224) = 0;
    AGGraphSetOutputValue();

LABEL_83:

    return;
  }

  v188 = v5;
  v199 = v34;
  v201 = a1;
  v207 = v19;
  v208 = v33;
  v49 = *(TupleTypeMetadata2 + 48);
  v50 = v217;
  v51 = AGGraphGetValue();
  v53 = v52;
  v54 = *(v50 - 8);
  v55 = v218;
  (*(v54 + 16))(v218, v51, v50);
  v56 = v53 & 1;
  v55[v49] = v56;
  v57 = AGGraphGetValue();
  v60 = *v57;
  v59 = v57[1];
  ++static DisplayList.Version.lastValue;
  v196 = v59;
  v191 = static DisplayList.Version.lastValue;
  if (v35)
  {
    goto LABEL_19;
  }

  if (v56)
  {

LABEL_25:
    v222 = 1;
    goto LABEL_26;
  }

  if ((v58 & 1) == 0)
  {
LABEL_19:

    goto LABEL_26;
  }

  v61 = swift_retain_n();
  v62 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v61);

  if (v62)
  {
    goto LABEL_25;
  }

LABEL_26:
  v204 = v60;
  v63 = v219;
  v64 = v219[7];
  LODWORD(v192) = *MEMORY[0x1E698D3F8];
  if (v64 != v192)
  {
    v65 = AGGraphRegisterDependency();
    v235 = *(v63 + 1);
    v236.f64[0] = *(v63 + 5);
    MEMORY[0x1EEE9AC00](v65);
    v66 = v212;
    *&v183[-48] = v213;
    *&v183[-40] = v66;
    *&v183[-32] = 6;
    *&v183[-24] = v63;
    *&v183[-16] = &v222;
    *&v224 = type metadata accessor for Attribute();
    v67 = MEMORY[0x1E698D388];
    _sSay7SwiftUI13ViewResponderCGMaTm_8(255, &lazy cache variable for type metadata for Attribute<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E698D388]);
    *(&v224 + 1) = v68;
    v225.f64[0] = v68;
    _sSay7SwiftUI13ViewResponderCGMaTm_8(255, &lazy cache variable for type metadata for Attribute<CGSize>, type metadata accessor for CGSize, v67);
    v225.f64[1] = v69;
    v70 = MEMORY[0x1E698D388];
    _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(255, &lazy cache variable for type metadata for Attribute<ViewTransform>, &type metadata for ViewTransform, MEMORY[0x1E698D388]);
    v226.f64[0] = v71;
    _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(255, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, &type metadata for EnvironmentValues, v70);
    v226.f64[1] = v72;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v235, partial apply for closure #1 in CanvasDisplayList.updateValue(), &v183[-64], TupleTypeMetadata, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v74);
  }

  v75 = v207;
  v76 = AGGraphGetValue();
  v78 = *v76;
  v190 = v76[1];
  v79 = *(v63 + 7);
  v209 = *(v63 + 8);
  v215 = TupleTypeMetadata2;
  if ((v222 & 1) == 0)
  {
    v80 = v77;
    OutputValue = AGGraphGetOutputValue();
    if (OutputValue)
    {
      v82 = v218;
      if ((v197 | v80))
      {
        v83 = *OutputValue;
        if (*(*OutputValue + 16))
        {
          v84 = *(v219 + 5);
          v85 = *(v219 + 6);
          v86 = *(v83 + 3);
          v87 = v83[5];
          v226 = *(v83 + 4);
          v227[0] = v87;
          *(v227 + 12) = *(v83 + 92);
          v224 = v83[2];
          v225 = v86;
          v88 = *&v226.f64[1];
          v90 = *(&v227[0] + 1);
          v89 = v87;
          v91 = *&v227[1];
          v209 = v86.f64[1];
          v79 = v86.f64[0];
          if ((v227[1] & 0xC0000000) != 0)
          {
            outlined init with copy of DisplayList.Item(&v224, &v235);
            v92 = 0.0;
            v93 = 0.0;
            v94 = v215;
            v95 = v191;
          }

          else
          {
            v95 = v191;
            if (*&v226.f64[1] >> 60 == 12)
            {
              v93 = *((*&v226.f64[1] & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v92 = *((*&v226.f64[1] & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              outlined init with copy of DisplayList.Item(&v224, &v235);
            }

            else
            {
              outlined init with copy of DisplayList.Item(&v224, &v235);
              v92 = 0.0;
              v93 = 0.0;
            }

            v94 = v215;
            v82 = v218;
          }

          goto LABEL_78;
        }

        v182 = *(*&v75 + 8);

        v182(v82, TupleTypeMetadata2);
      }

      else
      {
        (*(*&v75 + 8))(v218, TupleTypeMetadata2);
      }

      goto LABEL_83;
    }
  }

  v187 = 0;
  v96 = v219;
  v197 = *(v219 + 4);
  PropertyList.Tracker.reset()();
  v97 = v216;
  v194 = *(*&v75 + 16);
  v195 = *&v75 + 16;
  v194(v216, v218, TupleTypeMetadata2);
  v98 = &v97[*(v217 + 40)];
  v99 = *v98;
  v100 = *(v98 + 2);
  v101 = *(v98 + 2);
  v102 = v98[12];
  v103 = (v54 + 8);
  v193 = *(v54 + 8);
  v193(v97);
  LODWORD(v224) = v99;
  WORD2(v224) = v100;
  DWORD2(v224) = v101;
  BYTE12(v224) = v102;
  v104 = RasterizationOptions.colorSpace.getter();
  v105 = v204;
  if (v204)
  {
    v106 = v204[8];
  }

  else
  {
    v106 = 0;
  }

  v107 = v197;
  v108 = *(v197 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v108 + 16));
  *(v108 + 24) = v106;
  os_unfair_lock_unlock((v108 + 16));

  v109 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  v110 = v216;
  v194(v216, v218, v215);
  LOBYTE(v108) = v110[*(v217 + 44)];
  v193(v110);
  [v109 setProfile_];
  [v109 setDefaultColorSpace_];
  [v109 setContentRect_];

  v111 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v105);

  [v109 setDeviceScale_];
  [v109 translateByX:-*(v96 + 5) Y:-*(v96 + 6)];
  type metadata accessor for GraphicsContext.Storage();
  v112 = swift_allocObject();
  *(v112 + 32) = xmmword_18DD85500;
  *(v112 + 48) = 1065353216;
  *(v112 + 56) = 0x7FF8000000000000;
  *&v224 = v105;
  *(&v224 + 1) = v107;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();
  v113 = v109;

  *(v112 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v113, &v224);
  *(v112 + 24) = RBDisplayListGetState();
  *(v112 + 64) = 0;
  v189 = v113;

  v231 = v112;
  v114 = *(v96 + 10);
  if (v114)
  {

    v115 = v192;
  }

  else
  {
    v116 = *(v96 + 3);
    v226 = *(v96 + 2);
    v227[0] = v116;
    v227[1] = *(v96 + 4);
    v117 = *(v96 + 1);
    v224 = *v96;
    v225 = v117;
    v228.x = 0.0;

    CanvasDisplayList.symbols.getter();
    v119 = v118;
    v115 = v192;
    if (v118)
    {
      CurrentAttribute = AGGraphGetCurrentAttribute();
      if (CurrentAttribute == v115)
      {
        __break(1u);
      }

      v121 = CurrentAttribute;
      v122 = v96[6];
      type metadata accessor for SymbolRenderer();
      v114 = swift_allocObject();
      *(v114 + 40) = MEMORY[0x1E69E7CC8];
      *(v114 + 16) = v119;
      *(v114 + 24) = v121;
      *(v114 + 28) = v104;
      *(v114 + 32) = v122;
      *(v96 + 10) = v114;
    }

    else
    {
      v114 = 0;
    }
  }

  *(*(v112 + 16) + 24) = v114;

  v123 = *(v96 + 3);
  v226 = *(v96 + 2);
  v227[0] = v123;
  v227[1] = *(v96 + 4);
  v228.x = *(v96 + 10);
  v124 = *(v96 + 1);
  v224 = *v96;
  v225 = v124;
  v125 = *(v201 - 8);
  (*(v125 + 16))(&v235, &v224);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v126 = static ObservationCenter._current;
  swift_beginAccess();
  v127 = pthread_getspecific(v126[2]);
  v128 = v211;
  v129 = v206;
  if (!v127)
  {
    v130 = swift_slowAlloc();
    pthread_setspecific(v126[2], v130);
    *&v236.f64[1] = type metadata accessor for ObservationCenter();
    v126 = v126[3];
    *&v235 = v126;
    outlined init with take of Any(&v235, v130);

    v127 = v130;
  }

  outlined init with copy of Any(v127, &v235);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v131 = v234;
  v132 = AGGraphGetCurrentAttribute();
  if (v132 == v115)
  {
    __break(1u);
    goto LABEL_89;
  }

  v184 = v132;
  v192 = v125;
  v185 = v103;
  swift_beginAccess();
  v186 = *(v131 + 24);
  *(v131 + 24) = MEMORY[0x1E69E7CC0];
  v133 = v210;
  v134 = v202;
  (*(v210 + 56))(v202, 1, 1, v128);
  v135 = v128;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v137 = *(StatusReg + 848);
  *(StatusReg + 848) = v134;
  v138 = v187;
  closure #2 in CanvasDisplayList.updateValue()(&v231, v220 & 1, *&v213, *&v212, v220, v26, v25);
  *(StatusReg + 848) = v137;
  if (!v138)
  {
    outlined init with take of ObservationTracking._AccessList?(v134, v129);
    v139 = v203;
    outlined init with copy of ObservationTracking._AccessList?(v129, v203);
    v140 = (*(v133 + 48))(v139, 1, v135);
    v141 = v215;
    v142 = v135;
    if (v140 == 1)
    {
      outlined destroy of ObservationTracking._AccessList?(v129);
      v129 = v139;
LABEL_54:
      outlined destroy of ObservationTracking._AccessList?(v129);
      v146 = *(v131 + 24);
      v147 = *(*&v146 + 16);
      if (v147)
      {
        v149 = *(v133 + 16);
        v148 = v133 + 16;
        v220 = v149;
        v150 = v142;
        v151 = *&v146 + ((*(v148 + 64) + 32) & ~*(v148 + 64));
        v152 = v188;
        v153 = *(v148 + 56);
        v213 = v146;

        v154 = v184;
        do
        {
          (v220)(v152, v151, v150);
          specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v154, v152);
          (*(v148 - 8))(v152, v150);
          v151 += v153;
          --v147;
        }

        while (v147);
        (*(v192 + 8))(&v224, v201);

        v141 = v215;
      }

      else
      {
        v155 = *(v192 + 8);

        v155(&v224, v201);
      }

      v156 = v218;
      v157 = BYTE8(v227[1]);
      *(v131 + 24) = v186;

      v92 = 0.0;
      if (v157)
      {
        v93 = 0.0;
      }

      else
      {
        v158 = v189;
        [v189 boundingRect];
        v159 = v247.origin.x;
        v160 = v247.origin.y;
        v161 = v247.size.width;
        v162 = v247.size.height;
        if (CGRectIsEmpty(v247))
        {
          *&v235 = MEMORY[0x1E69E7CC0];
          WORD4(v235) = 0;
          HIDWORD(v235) = 0;
          AGGraphSetOutputValue();

          (*(*&v207 + 8))(v156, v141);

          goto LABEL_83;
        }

        v248.origin.x = v159;
        v248.origin.y = v160;
        v248.size.width = v161;
        v248.size.height = v162;
        MinX = CGRectGetMinX(v248);
        v213 = v79;
        v212 = floor(MinX * 0.0625) * 16.0;
        v249.origin.x = v159;
        v249.origin.y = v160;
        v249.size.width = v161;
        v249.size.height = v162;
        MinY = CGRectGetMinY(v249);
        v220 = v78;
        v165 = floor(MinY * 0.0625) * 16.0;
        v250.origin.x = v159;
        v250.origin.y = v160;
        v250.size.width = v161;
        v250.size.height = v162;
        MaxX = CGRectGetMaxX(v250);
        v167 = v209;
        v168 = ceil(MaxX * 0.0625) * 16.0;
        v251.origin.x = v159;
        v251.origin.y = v160;
        v251.size.width = v161;
        v251.size.height = v162;
        v169 = ceil(CGRectGetMaxY(v251) * 0.0625) * 16.0;
        if (v212 < 0.0)
        {
          v93 = 0.0;
        }

        else
        {
          v93 = v212;
        }

        if (v165 < 0.0)
        {
          v92 = 0.0;
        }

        else
        {
          v92 = v165;
        }

        v78 = v220;
        v170 = v213;
        if (v168 < v213)
        {
          v170 = v168;
        }

        v79 = v170 - v93;
        if (v169 >= v167)
        {
          v169 = v167;
        }

        v209 = v169 - v92;
      }

      v171 = v216;
      v194(v216, v156, v141);
      v172 = &v171[*(v217 + 40)];
      LODWORD(v220) = *v172;
      v173 = v172[4];
      v174 = v172[5];
      v175 = *(v172 + 2);
      v176 = v172[12];
      v193(v171);
      *&v235 = v204;
      *(&v235 + 1) = v197;
      v223 = v174;
      EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v223, &v221);
      v177 = v221;
      v178 = swift_allocObject();
      v179 = v189;
      v180 = [v189 moveContents];

      *(v178 + 16) = v180;
      *(v178 + 24) = v93;
      *(v178 + 32) = v92;
      *(v178 + 40) = v220;
      *(v178 + 44) = v173;
      *(v178 + 45) = v177;
      v94 = v215;
      *(v178 + 48) = v175;
      *(v178 + 52) = v176;
      v82 = v218;
      v95 = v191;
      if (v191)
      {
        v89 = (2 * (((33 * WORD1(v191)) ^ v191) & 0x7FFF)) | 1;
      }

      else
      {
        v89 = 0;
      }

      v84 = v226.f64[1];
      v85 = *v227;
      v88 = v178 | 0xC000000000000000;

      v90 = 0;
      v91 = 0;
LABEL_78:
      v181 = *v219;
      *&v224 = v93 + v214.f64[0] - *&v78 + v84;
      *(&v224 + 1) = v92 + v214.f64[1] - v190 + v85;
      v225.f64[0] = v79;
      v225.f64[1] = v209;
      *&v226.f64[0] = v95;
      *&v226.f64[1] = v88;
      *&v227[0] = v89;
      *(&v227[0] + 1) = v90;
      *&v227[1] = v91;
      DWORD2(v227[1]) = v181;
      v237 = v226;
      v238[0] = v227[0];
      *(v238 + 12) = *(v227 + 12);
      v235 = v224;
      v236 = v225;
      outlined copy of DisplayList.Item.Value(v88, v89, v90, v91);
      outlined init with copy of DisplayList.Item(&v224, &v231);
      DisplayList.init(_:)(&v235, &v231);
      *&v235 = v231;
      WORD4(v235) = v232;
      HIDWORD(v235) = v233;
      AGGraphSetOutputValue();

      outlined consume of DisplayList.Item.Value(v88, v89, v90, v91);
      outlined destroy of DisplayList.Item(&v224);
      (*(*&v207 + 8))(v82, v94);

      goto LABEL_83;
    }

    v115 = *(v133 + 32);
    v103 = v198;
    (v115)(v198, v139, v142);
    (*(v133 + 16))(v205, v103, v142);
    v126 = *(v131 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v131 + 24) = v126;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_51:
      v145 = v126[2];
      v144 = v126[3];
      if (v145 >= v144 >> 1)
      {
        v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v144 > 1), v145 + 1, 1, v126);
      }

      v126[2] = v145 + 1;
      v133 = v210;
      v142 = v211;
      (v115)(v126 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v210 + 72) * v145, v205, v211);
      *(v131 + 24) = v126;
      (*(v133 + 8))(v103, v142);
      v141 = v215;
      goto LABEL_54;
    }

LABEL_89:
    v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v126[2] + 1, 1, v126);
    *(v131 + 24) = v126;
    goto LABEL_51;
  }

  outlined destroy of ObservationTracking._AccessList?(v134);
  __break(1u);
}