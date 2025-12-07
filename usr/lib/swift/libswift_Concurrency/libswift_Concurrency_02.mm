uint64_t specialized _Deque._UnsafeHandle.uncheckedRemoveFirst()(uint64_t *a1)
{
  if (a1[1] >= 1)
  {
    v2 = a1[2];
    if ((v2 & 0x8000000000000000) == 0 && *a1 >= v2)
    {
      result = specialized _Deque._UnsafeHandle.slot(after:)(v2, a1);
      a1[2] = result;
      v4 = a1[1];
      v5 = __OFSUB__(v4, 1);
      v6 = v4 - 1;
      if (!v5)
      {
        a1[1] = v6;
        return result;
      }

      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.uncheckedRemoveFirst()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1[1] > 0)
  {
    _Deque._UnsafeHandle.ptr(at:)(a1[2], a1, a2, a3);
    UnsafeMutablePointer.move()();
    result = specialized _Deque._UnsafeHandle.slot(after:)(a1[2], a1);
    a1[2] = result;
    v5 = a1[1];
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (!v6)
    {
      a1[1] = v7;
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.uncheckedRemoveLast()(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  if (v3 > 0)
  {
    v7.position = _Deque._UnsafeHandle.slot(forOffset:)(v3 - 1).position;
    _Deque._UnsafeHandle.ptr(at:)(v7.position, a1, a2, a3);
    result = UnsafeMutablePointer.move()();
    v9 = a1[1];
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (!v10)
    {
      a1[1] = v11;
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall _Deque._UnsafeHandle.uncheckedRemoveFirst(_:)(Swift::Int a1)
{
  if (v1[1] < a1)
  {
    goto LABEL_7;
  }

  if (a1 < 1)
  {
    return;
  }

  v5 = v3;
  v6 = v1;
  _Deque._UnsafeHandle.segments(forOffsets:)(0, a1, v1, v2, v3, v13);
  _UnsafeMutableWrappedBuffer.init(mutating:)(v13, v5, v12);
  type metadata accessor for _UnsafeMutableWrappedBuffer(0, v5, v7, v8);
  _UnsafeMutableWrappedBuffer.deinitialize()();
  v6[2] = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(v6[2], a1, v6);
  v9 = v6[1];
  v10 = __OFSUB__(v9, a1);
  v11 = v9 - a1;
  if (v10)
  {
    __break(1u);
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v6[1] = v11;
}

Swift::Void __swiftcall _Deque._UnsafeHandle.uncheckedRemoveLast(_:)(Swift::Int a1)
{
  v4 = v1;
  v6 = v1[1];
  v7 = __OFSUB__(v6, a1);
  v8 = v6 - a1;
  if (v8 < 0 != v7)
  {
    goto LABEL_8;
  }

  if (a1 < 1)
  {
    return;
  }

  if (v6 < v8)
  {
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v9 = v3;
  _Deque._UnsafeHandle.segments(forOffsets:)(v8, v6, v4, v2, v3, v15);
  _UnsafeMutableWrappedBuffer.init(mutating:)(v15, v9, v14);
  type metadata accessor for _UnsafeMutableWrappedBuffer(0, v9, v10, v11);
  _UnsafeMutableWrappedBuffer.deinitialize()();
  v12 = v4[1];
  v7 = __OFSUB__(v12, a1);
  v13 = v12 - a1;
  if (v7)
  {
    __break(1u);
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_9;
  }

  v4[1] = v13;
}

Swift::Void __swiftcall _Deque._UnsafeHandle.uncheckedRemoveAll()()
{
  v3 = v0 + 1;
  if (v0[1] >= 1)
  {
    v4 = v2;
    _Deque._UnsafeHandle.segments()(v0, v1, v2, v8);
    _UnsafeMutableWrappedBuffer.init(mutating:)(v8, v4, &v7);
    type metadata accessor for _UnsafeMutableWrappedBuffer(0, v4, v5, v6);
    _UnsafeMutableWrappedBuffer.deinitialize()();
    *v3 = 0;
    v3[1] = 0;
  }
}

unint64_t _Deque._UnsafeHandle.uncheckedRemove(offsets:)(unint64_t a1, Swift::Int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 0x8000000000000000) != 0 || a3[1] < a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    _Deque._UnsafeHandle.segments(forOffsets:)(a1, a2, a3, a4, a5, v13);
    _UnsafeMutableWrappedBuffer.init(mutating:)(v13, a5, v12);
    type metadata accessor for _UnsafeMutableWrappedBuffer(0, a5, v9, v10);
    _UnsafeMutableWrappedBuffer.deinitialize()();

    return _Deque._UnsafeHandle.closeGap(offsets:)(a1, a2, a3);
  }

  return result;
}

unint64_t _Deque._UnsafeHandle.closeGap(offsets:)(unint64_t forOffset, Swift::Int a2, uint64_t *a3)
{
  if ((forOffset & 0x8000000000000000) != 0 || a3[1] < a2)
  {
    goto LABEL_62;
  }

  v5 = forOffset;
  v6 = a2 - forOffset;
  if (__OFSUB__(a2, forOffset))
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v6 < 1)
  {
    return forOffset;
  }

  v7.position = _Deque._UnsafeHandle.slot(forOffset:)(forOffset).position;
  v8.position = _Deque._UnsafeHandle.slot(forOffset:)(a2).position;
  v9 = a3[1];
  v10 = __OFSUB__(v9, a2);
  v11 = v9 - a2;
  if (v10)
  {
    goto LABEL_55;
  }

  position = v8.position;
  v13 = a3[2];
  if (v11 > v5)
  {
    forOffset = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(a3[2], v6, a3);
    v11 = forOffset;
    v14 = *a3;
    v15 = v7.position;
    if (v7.position || (v15 = *a3, (v14 & 0x8000000000000000) == 0))
    {
      v16 = position;
      if (position || (v16 = *a3, (v14 & 0x8000000000000000) == 0))
      {
        if (!v5)
        {
LABEL_43:
          a3[2] = v11;
          v34 = a3[1];
          v10 = __OFSUB__(v34, v6);
          v35 = v34 - v6;
          if (!v10)
          {
            goto LABEL_52;
          }

          __break(1u);
          goto LABEL_46;
        }

        if (v13 >= v15)
        {
          if (v16 >= forOffset)
          {
            if ((position - v7.position) >= 0)
            {
              _Deque._UnsafeHandle.move(from:to:count:)(0, (position - v7.position), v7.position);
              v28.position = a3[2];
              v29 = v5 - v7.position;
              goto LABEL_41;
            }
          }

          else
          {
            _Deque._UnsafeHandle.move(from:to:count:)(0, v6, v7.position);
            v17 = _Deque._UnsafeHandle.limSlot.getter(a3) - v6;
            if (v17 >= 0)
            {
              v18 = v6;
              goto LABEL_31;
            }
          }
        }

        else
        {
          if (v16 >= forOffset)
          {
            v28.position = v13;
            v33.position = v11;
            v29 = v5;
LABEL_42:
            forOffset = _Deque._UnsafeHandle.move(from:to:count:)(v28, v33, v29).source.position;
            goto LABEL_43;
          }

          v17 = _Deque._UnsafeHandle.limSlot.getter(a3) - v6;
          if (v17 >= 0)
          {
            v18 = position;
LABEL_31:
            _Deque._UnsafeHandle.move(from:to:count:)(v17, 0, v18);
            v28.position = a3[2];
            v29 = v5 - position;
LABEL_41:
            v33.position = v11;
            goto LABEL_42;
          }
        }
      }
    }

    while (1)
    {
LABEL_62:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v19 = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(a3[2], v9, a3);
  v20 = a3[1];
  if (__OFSUB__(v20, v6))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  forOffset = _Deque._UnsafeHandle.slot(forOffset:)(v20 - v6).position;
  v21 = *a3;
  v22 = v19;
  if (!v19)
  {
    v22 = *a3;
    if (v21 < 0)
    {
      goto LABEL_62;
    }
  }

  v23 = forOffset;
  if (!forOffset)
  {
    v23 = *a3;
    if (v21 < 0)
    {
      goto LABEL_62;
    }
  }

  if (!v11)
  {
    goto LABEL_51;
  }

  if (position >= v22)
  {
    v30 = v21 - position;
    v31 = __OFSUB__(v21, position);
    if (v23 >= v7.position)
    {
      if (v31)
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v27 = _Deque._UnsafeHandle.move(from:to:count:)(position, v7, v30).target.position;
      v25 = 0;
    }

    else
    {
      if (v31)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v19 = forOffset;
      v32 = _Deque._UnsafeHandle.move(from:to:count:)(position, v7, v30).target.position;
      v25 = _Deque._UnsafeHandle.move(from:to:count:)(0, v32, v6).source.position;
      v27 = 0;
    }

    v26 = v19;
    goto LABEL_50;
  }

  if (v23 < v7.position)
  {
    v24 = v21 - v7.position;
    if (__OFSUB__(v21, v7.position))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v24 >= v11)
    {
      goto LABEL_62;
    }

    v25 = _Deque._UnsafeHandle.move(from:to:count:)(position, v7, v21 - v7.position).source.position;
    v26 = v11 - v24;
    if (__OFSUB__(v11, v24))
    {
      goto LABEL_61;
    }

    v27 = 0;
    goto LABEL_50;
  }

LABEL_46:
  v25 = position;
  v27 = v7.position;
  v26 = v11;
LABEL_50:
  forOffset = _Deque._UnsafeHandle.move(from:to:count:)(v25, v27, v26).source.position;
LABEL_51:
  v36 = a3[1];
  v10 = __OFSUB__(v36, v6);
  v35 = v36 - v6;
  if (v10)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_52:
  a3[1] = v35;
  return forOffset;
}

uint64_t _Deque<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[6] = a4;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v22 = _Deque.makeIterator()(a2, a3);
  v23 = v14;
  v24 = v15;
  v21 = type metadata accessor for _Deque.Iterator(0, a3, v15, v16);
  _Deque.Iterator.next()(v21, v13);
  v19 = *(v8 + 48);
  v20 = v8 + 48;
  if (v19(v13, 1, a3) != 1)
  {
    v18 = *(v8 + 32);
    do
    {
      v18(v10, v13, a3);
      __swift_mutable_project_boxed_opaque_existential_1(v25, v25[3]);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      (*(v8 + 8))(v10, a3);
      if (v4)
      {
        break;
      }

      _Deque.Iterator.next()(v21, v13);
    }

    while (v19(v13, 1, a3) != 1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t _Deque.makeIterator()(uint64_t a1, uint64_t a2)
{

  v6 = specialized _Deque.Iterator.init(_base:)(v3, a2, v4, v5);

  return v6;
}

uint64_t _Deque.Iterator.next()@<X0>(_BOOL8 a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (v5 == v6)
  {
    a1 = _Deque.Iterator._swapSegment()();
    if (!a1)
    {
      v11 = *(*(*(v3 + 16) - 8) + 56);

      return v11(a2, 1, 1);
    }

    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
  }

  if (v5 >= v6)
  {
    LODWORD(v14) = 0;
    v13 = 79;
  }

  else
  {
    if (v5 > -2)
    {
      *(v2 + 8) = v5 + 1;
      MEMORY[0x1EEE9AC00](a1);
      v7 = *(v3 + 16);
      v13 = v7;
      v14 = v8;
      _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.Iterator.next(), &v12, v9, v7, v7, partial apply for closure #1 in _Deque._Storage.read<A>(_:));
      return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
    }

    LODWORD(v14) = 0;
    v13 = 21;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *_Deque<A>.init(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _Deque._Storage.init()(v9);
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v11 = dispatch thunk of UnkeyedDecodingContainer.count.getter();
    if ((v14 & 1) == 0)
    {
      v15 = v11;
      v16 = type metadata accessor for _Deque(0, a2, v12, v13);
      type metadata accessor for _Deque._Storage(0, *(v16 + 16), v17, v18);
      _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(v15, 1);
    }

    __swift_project_boxed_opaque_existential_1(v24, v25);
    while ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v21 = type metadata accessor for _Deque(0, a2, v19, v20);
      _Deque.append(_:)(v8, v21);
      (*(v6 + 8))(v8, a2);
      __swift_project_boxed_opaque_existential_1(v24, v25);
    }

    __swift_destroy_boxed_opaque_existential_1(v24);
    v10 = v26;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v10;
}

Swift::Void __swiftcall _Deque.reserveCapacity(_:)(Swift::Int a1)
{
  type metadata accessor for _Deque._Storage(0, *(v1 + 16), v2, v3);

  _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(a1, 1);
}

void *protocol witness for Decodable.init(from:) in conformance <A> _Deque<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = _Deque<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

Swift::Bool __swiftcall _Deque.Iterator._swapSegment()()
{
  if (v0[1] == v0[2])
  {
    v1 = *v0;
    v4 = *((MEMORY[0x1EEE9AC00])() + 16);
    v5 = v0;

    _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.Iterator._swapSegment(), &v3, v1, v4, MEMORY[0x1E69E6370], partial apply for closure #1 in _Deque._Storage.read<A>(_:));

    return v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void UnsafeMutableBufferPointer._initialize(from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a4)
  {
    goto LABEL_10;
  }

  if (a2 >= 1)
  {
    if (UnsafeMutableBufferPointer.baseAddress.getter() && UnsafeBufferPointer.baseAddress.getter())
    {

      goto _$sSp10initialize4from5countySPyxG_SitF;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
_$sSp10initialize4from5countySPyxG_SitF:
    MEMORY[0x1EEE69B98]();
  }
}

uint64_t ContiguousArray.init(unsafeUninitializedCapacity:initializingWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Array.init(_unsafeUninitializedCapacity:initializingWith:)();
  if (!v4)
  {

    v5 = _ArrayBuffer.requestNativeBuffer()();

    if (!v5)
    {
      type metadata accessor for Array();
      swift_getWitnessTable();
      v5 = _copyCollectionToContiguousArray<A>(_:)();
    }
  }

  return v5;
}

uint64_t _Deque.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a1;
  v9[5] = a2;
  v7 = type metadata accessor for Optional();
  return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.withContiguousStorageIfAvailable<A>(_:), v9, a3, a4, v7, partial apply for closure #1 in _Deque._Storage.read<A>(_:));
}

uint64_t protocol witness for Sequence.makeIterator() in conformance _Deque<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _Deque.makeIterator()(*v2, *(a1 + 16));
  v6 = v5;
  v8 = v7;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance _Deque<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance _Deque<A>(uint64_t a1)
{
  v2 = specialized _Deque._copyToContiguousArray()(*v1, *(a1 + 16));

  return v2;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance _Deque<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized _Deque._copyContents(initializing:)(a2, a3, *v4, *(a4 + 16));
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  return v12;
}

uint64_t _Deque.indices.getter(uint64_t a1, uint64_t a2)
{
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, a1, &type metadata for _DequeBufferHeader, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v3);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0 || (v6 = _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, a2, &type metadata for _DequeBufferHeader, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v9), v11 <= a1))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    v9 = a3;
    v10 = a1;
    return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.subscript.getter, &v8, a2, a3, a3, partial apply for closure #1 in _Deque._Storage.read<A>(_:));
  }

  return result;
}

void (*_Deque.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = v3;
  v10 = *(a3 + 16);
  *(v8 + 24) = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(*(TupleTypeMetadata2 - 8) + 64));
  }

  v13 = v12;
  v9[4] = v12;
  v14 = *(v10 - 8);
  v15 = v14;
  v9[5] = v14;
  if (v7)
  {
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v16 = malloc(*(v14 + 64));
  }

  v17 = v16;
  v9[6] = v16;
  if (a2 < 0 || (_ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v3, &type metadata for _DequeBufferHeader, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v25), *v9 <= a2))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for _Deque._Storage(0, v10, v18, v19);
    _Deque._Storage.ensureUnique()();
    MEMORY[0x1EEE9AC00](v20);
    v25 = v10;
    v26 = a2;
    _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.subscript.modify, &v24, v21, v10, TupleTypeMetadata2, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
    v22 = *(TupleTypeMetadata2 + 48);
    v9[1] = *v13;
    (*(v15 + 32))(v17, &v13[v22], v10);
    return _Deque.subscript.modify;
  }

  return result;
}

void _Deque.subscript.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 8;
  v4 = *(*a1 + 40);
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  v7 = **(*a1 + 16);
  v9 = *(*a1 + 24);
  v6 = v9;
  v10 = v2;
  v11 = v3;

  _Deque._Storage.read<A>(_:)(partial apply for closure #1 in $defer #1 <A>() in _Deque.subscript.modify, &v8, v7, v9, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));

  (*(v4 + 8))(v3, v6);
  free(v3);
  free(v5);
  free(v1);
}

uint64_t _Deque.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || (_ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, a3, &type metadata for _DequeBufferHeader, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v9), v10 < a2))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for _Deque(0, a4, v6, v7);

    swift_getWitnessTable();
    Slice.init(base:bounds:)();
    return v10;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance _Deque<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance _Deque<A>(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance _Deque<A>@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance _Deque<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized _Deque.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.distance(from:to:) in conformance _Deque<A>(void *a1, void *a2)
{
  v2 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance _Deque<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = _Deque.count.getter(*v2, *(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance _Deque<A>(uint64_t **a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = _Deque.subscript.read(v7, *a2, *v3, *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _Deque<A>;
}

void protocol witness for Collection.subscript.read in conformance _Deque<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*_Deque.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = *(a4 - 8);
  *a1 = a4;
  a1[1] = v8;
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  _Deque.subscript.getter(a2, a3, a4);
  return _Deque.subscript.read;
}

void _Deque.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t protocol witness for Collection.subscript.getter in conformance _Deque<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _Deque.subscript.getter(*a1, a1[1], *v3, *(a2 + 16));
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance _Deque<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = _Deque.indices.getter(*v2, *(a1 + 16));
  *a2 = 0;
  a2[1] = v5;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance _Deque<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E66A8], MEMORY[0x1E69E5F48], 714);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E5F90], MEMORY[0x1E69E5F58], 722);
}

void *protocol witness for Collection.index(after:) in conformance _Deque<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance _Deque<A>(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

Swift::Void __swiftcall _Deque.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  if (a1 < 0 || (v6 = *v3, v7 = *(v2 + 16), _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v3, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v13), v15 <= a1))
  {
    v14 = 0;
  }

  else
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v6, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v13);
      if (v15 > a2)
      {
        type metadata accessor for _Deque._Storage(0, v7, v8, v9);
        _Deque._Storage.ensureUnique()();
        MEMORY[0x1EEE9AC00](v10);
        v12[2] = v7;
        v12[3] = a1;
        v13 = a2;
        _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.swapAt(_:_:), v12, v11, v7, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
        return;
      }
    }

    v14 = 0;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _Deque.withContiguousMutableStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  type metadata accessor for _Deque._Storage(0, v8, a3, a4);
  _Deque._Storage.ensureUnique()();
  v9 = *v4;
  v12[2] = v8;
  v12[3] = a4;
  v12[4] = a1;
  v12[5] = a2;
  v10 = type metadata accessor for Optional();
  return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.withContiguousMutableStorageIfAvailable<A>(_:), v12, v9, v8, v10, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
}

uint64_t $defer #1 <A><A1>() in closure #1 in _Deque.withContiguousMutableStorageIfAvailable<A>(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = UnsafeMutableBufferPointer.baseAddress.getter();
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (v6)
  {
    if (!result || v6 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    if (a1[1] == a3)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!result)
  {
    goto LABEL_6;
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance _Deque<A>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  specialized _Deque.subscript.setter(a1, *a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance _Deque<A>(uint64_t **a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = _Deque.subscript.modify(v6, *a2, a3);
  return protocol witness for MutableCollection.subscript.modify in conformance _Deque<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance _Deque<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance _Deque<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  specialized _Deque.subscript.setter(*a1, a1[1], a1[2], *a2, a2[1], a3);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance _Deque<A>(uint64_t **a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = v3;
  v7[4] = a3;
  v9 = *a2;
  v10 = a2[1];
  v8[5] = *a2;
  v8[6] = v10;
  *v8 = _Deque.subscript.getter(v9, v10, *v3, *(a3 + 16));
  v8[1] = v11;
  v8[2] = v12;
  return protocol witness for MutableCollection.subscript.modify in conformance _Deque<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance _Deque<A>(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[5];
  v5 = (*a1)[6];
  v7 = (*a1)[4];
  v8 = (*a1)[2];
  if (a2)
  {

    specialized _Deque.subscript.setter(v3, v4, v8, v6, v5, v7);
  }

  else
  {
    specialized _Deque.subscript.setter(**a1, v4, v8, v6, v5, v7);
  }

  free(v2);
}

unint64_t closure #1 in _Deque.replaceSubrange<A>(_:with:)(uint64_t *a1, uint64_t a2, Swift::Int a3, Swift::Int a4, Swift::Int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, Swift::Int a11, uint64_t a12, uint64_t a13)
{
  v49 = a8;
  v50 = a2;
  v53 = a6;
  v54 = a1;
  v55 = a3;
  v56 = a5;
  v41 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for PartialRangeFrom();
  v46 = *(v16 - 8);
  v47 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v40 - v17;
  v52 = a13;
  v51 = swift_getAssociatedTypeWitness();
  v18 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v20 = &v40 - v19;
  v21 = type metadata accessor for PartialRangeUpTo();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v40 - v23;
  if (v56 < v55)
  {
    goto LABEL_15;
  }

  v44 = *(AssociatedConformanceWitness + 8);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v25 = *(AssociatedTypeWitness - 8);
  v26 = *(v25 + 16);
  v48 = a7;
  v42 = v25 + 16;
  v43 = v26;
  v26(v24, a7, AssociatedTypeWitness);
  swift_getWitnessTable();
  Collection.subscript.getter();
  (*(v22 + 8))(v24, v21);
  v27 = v51;
  v28 = swift_getAssociatedConformanceWitness();
  v29 = v55;
  v30 = v56;
  v31 = v50;
  v55 = a11;
  _Deque._UnsafeHandle.uncheckedReplaceInPlace<A>(inOffsets:with:)(v29, v56, v20, v54, v50, a11, v27, v28);
  result = (*(v18 + 8))(v20, v27);
  v33 = v49;
  if (v49 < 0)
  {
    v37 = v41 - v30;
    if (v41 >= v30)
    {
      if (__OFSUB__(v41, v30))
      {
        __break(1u);
      }

      else
      {
        v38 = __OFADD__(a9, v37);
        v39 = a9 + v37;
        if (!v38)
        {
          if (v39 != a10)
          {
LABEL_16:
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          return _Deque._UnsafeHandle.uncheckedRemove(offsets:)(v30, v41, v54, v31, v55);
        }
      }

      __break(1u);
    }

LABEL_15:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_16;
  }

  if (v49)
  {
    v41 = v28;
    v34 = v48;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v35 = v45;
      v43(v45, v34, AssociatedTypeWitness);
      v36 = v47;
      swift_getWitnessTable();
      Collection.subscript.getter();
      (*(v46 + 8))(v35, v36);
      return _Deque._UnsafeHandle.uncheckedInsert<A>(contentsOf:count:atOffset:)(v20, v33, v30, v54, v31, v55, v51, v41);
    }

    goto LABEL_15;
  }

  return result;
}

Swift::Int _Deque.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v9 = *(a2 + 16);
  v10 = type metadata accessor for Optional();
  v36 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v46 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v33 - v16;
  v47 = v9;
  v48 = a3;
  v49 = a4;
  v50 = v5;
  v17 = a1;
  result = Sequence._withContiguousStorageIfAvailable_SR14663<A>(_:)(a3, MEMORY[0x1E69E7CA8] + 8, &v51);
  if (v51 == 1)
  {
    v42 = 0;
    v19 = dispatch thunk of Sequence.underestimatedCount.getter();
    result = _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v5, &type metadata for _DequeBufferHeader, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v31);
    v22 = __OFADD__(v51, v19);
    v23 = v51 + v19;
    if (v22)
    {
LABEL_10:
      __break(1u);
      return result;
    }

    v34 = v10;
    v40 = type metadata accessor for _Deque._Storage(0, v9, v20, v21);
    _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(v23, 1);
    v43 = v5;
    v24 = *v5;
    MEMORY[0x1EEE9AC00](v25);
    *(&v33 - 4) = v9;
    *(&v33 - 3) = a3;
    v31 = a4;
    v32 = v17;
    _Deque._Storage.read<A>(_:)(partial apply for closure #2 in _Deque.append<A>(contentsOf:), (&v33 - 6), v24, v9, AssociatedTypeWitness, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
    v41 = a3;
    v42 = a4;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    dispatch thunk of IteratorProtocol.next()();
    v38 = *(v46 + 48);
    if (v38(v13, 1, v9) != 1)
    {
      v37 = *(v46 + 32);
      v46 += 32;
      v26 = (v46 - 24);
      while (1)
      {
        v37(v15, v13, v9);
        _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v24, &type metadata for _DequeBufferHeader, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v31);
        result = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        v27 = v43;
        _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(result, 0);
        v24 = *v27;
        MEMORY[0x1EEE9AC00](v28);
        v30 = v41;
        v29 = v42;
        *(&v33 - 6) = v9;
        *(&v33 - 5) = v30;
        *(&v33 - 4) = v29;
        *(&v33 - 3) = v15;
        v31 = v44;
        _Deque._Storage.read<A>(_:)(partial apply for closure #3 in _Deque.append<A>(contentsOf:), (&v33 - 8), v24, v9, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
        (*v26)(v15, v9);
        dispatch thunk of IteratorProtocol.next()();
        if (v38(v13, 1, v9) == 1)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_10;
    }

LABEL_7:
    (*(v36 + 8))(v13, v34);
    return (*(v35 + 8))(v44, AssociatedTypeWitness);
  }

  return result;
}

uint64_t closure #1 in _Deque.init<A>(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1[2] || a3 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v13 = _Deque._UnsafeHandle.buffer(for:)(0, a3, a1, a2, a5);
    v14 = MEMORY[0x1865D3F60](v13);
    v16 = v15;
    MEMORY[0x1EEE9AC00](v14);
    result = Sequence._withContiguousStorageIfAvailable_SR14663<A>(_:)(a6, MEMORY[0x1E69E7CA8] + 8, &v18);
    if (v18 == 1)
    {
      result = UnsafeMutableBufferPointer._initialize<A>(from:)(a4, v14, v16, a5, a6, a7);
    }

    a1[1] = a3;
  }

  return result;
}

uint64_t closure #1 in _Deque.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;

  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v12, &type metadata for _DequeBufferHeader, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v19);

  if (__OFADD__(v20, a2))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for _Deque._Storage(0, a4, v14, v15);
    _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(v20 + a2, 0);
    v16 = *a3;
    MEMORY[0x1EEE9AC00](v17);
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a6;
    v18[5] = a1;
    v19 = a2;

    _Deque._Storage.read<A>(_:)(partial apply for closure #1 in closure #1 in _Deque.append<A>(contentsOf:), v18, v16, a4, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  return result;
}

uint64_t closure #2 in _Deque.append<A>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  _Deque._UnsafeHandle.availableSegments()(v13, v16, v17, v26);
  (*(v12 + 16))(v15, a2, a4);
  v20 = type metadata accessor for _UnsafeMutableWrappedBuffer(0, a3, v18, v19);
  result = _UnsafeMutableWrappedBuffer.initialize<A>(fromSequencePrefix:)(a6, v15, v20, a4, a5);
  v22 = *(a1 + 8);
  v23 = __OFADD__(v22, result);
  v24 = v22 + result;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v24;
  }

  return result;
}

uint64_t _Deque.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = *(a3 + 16);
    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v13);
    if (v15 >= a2)
    {
      _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v13);
      if (!__OFADD__(v15, 1))
      {
        type metadata accessor for _Deque._Storage(0, v6, v7, v8);
        _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(v15 + 1, 0);
        v9 = *v3;
        MEMORY[0x1EEE9AC00](v10);
        v12[2] = v6;
        v12[3] = a2;
        v13 = a1;
        v14 = v3;

        _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.insert(_:at:), v12, v9, v6, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
      }

      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in _Deque.insert(_:at:)(Swift::_DequeSlot *a1, uint64_t a2, Swift::Int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    v16 = *v12;

    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v16, &type metadata for _DequeBufferHeader, a6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v21);
    v17 = v22[0];

    if (v17 == a3)
    {
      return _Deque._UnsafeHandle.uncheckedAppend(_:)(a4, &a1->position, a2, a6);
    }

    _Deque._UnsafeHandle.openGap(ofSize:atOffset:)(1, a3, &a1->position, a2, a6, v22);
    if (v22[1] == 1)
    {
      v19 = UnsafeMutableBufferPointer.baseAddress.getter();
      if (v19)
      {
        v20 = v19;
        (*(v11 + 16))(v14, a4, a6);
        return (*(v11 + 32))(v20, v14, a6);
      }
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  return _Deque._UnsafeHandle.uncheckedPrepend(_:)(a4, a1, a2, a6);
}

uint64_t closure #1 in _Deque.insert<A>(contentsOf:at:)(uint64_t *a1, uint64_t a2, uint64_t a3, Swift::Int a4, Swift::Int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v19);
  return _Deque._UnsafeHandle.uncheckedInsert<A>(contentsOf:count:atOffset:)(v16, a4, a5, a1, a2, a6, a7, a8);
}

uint64_t _Deque.remove(at:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0 || (v4 = *(a2 + 16), _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v11), v12 <= a1))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for _Deque._Storage(0, v4, v5, v6);
    _Deque._Storage.ensureUnique()();
    v7 = *v2;
    MEMORY[0x1EEE9AC00](v8);
    v10[2] = v4;
    v10[3] = v2;
    v11 = a1;

    _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.remove(at:), v10, v7, v4, v4, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  return result;
}

uint64_t _Deque.removeSubrange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0 || (v6 = *(a3 + 16), _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v13), v14 < a2))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for _Deque._Storage(0, v6, v7, v8);
    _Deque._Storage.ensureUnique()();
    MEMORY[0x1EEE9AC00](v9);
    v12[2] = v6;
    v12[3] = a1;
    v13 = a2;
    return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.removeSubrange(_:), v12, v10, v6, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  return result;
}

uint64_t _Deque._customRemoveLast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[4] = *v2;
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 16);
    type metadata accessor for _Deque._Storage(0, v7, v5, v6);
    _Deque._Storage.ensureUnique()();
    MEMORY[0x1EEE9AC00](v8);
    v11[2] = v7;
    _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque._customRemoveLast(), v11, v9, v7, v7, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
    return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }

  return result;
}

Swift::Bool __swiftcall _Deque._customRemoveLast(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    LODWORD(v12) = 0;
    v11 = 798;
  }

  else
  {
    v4 = *(v1 + 16);
    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v11);
    if (v13 >= a1)
    {
      type metadata accessor for _Deque._Storage(0, v4, v5, v6);
      _Deque._Storage.ensureUnique()();
      MEMORY[0x1EEE9AC00](v7);
      v11 = v4;
      v12 = a1;
      _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque._customRemoveLast(_:), &v10, v8, v4, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
      return 1;
    }

    LODWORD(v12) = 0;
    v11 = 799;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall _Deque.removeFirst(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    LODWORD(v11) = 0;
    v10 = 829;
  }

  else
  {
    v4 = *(v1 + 16);
    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v10);
    if (v12 >= a1)
    {
      type metadata accessor for _Deque._Storage(0, v4, v5, v6);
      _Deque._Storage.ensureUnique()();
      MEMORY[0x1EEE9AC00](v7);
      v10 = v4;
      v11 = a1;
      _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.removeFirst(_:), &v9, v8, v4, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
      return;
    }

    LODWORD(v11) = 0;
    v10 = 830;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall _Deque.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v5 = v1;
  if (keepingCapacity)
  {
    v6 = *(v1 + 16);
    type metadata accessor for _Deque._Storage(0, v6, v2, v3);
    _Deque._Storage.ensureUnique()();
    MEMORY[0x1EEE9AC00](v7);
    v9[2] = v6;
    _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.removeAll(keepingCapacity:), v9, v8, v6, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  else
  {

    *v4 = _Deque._Storage.init()(*(v5 + 16));
  }
}

uint64_t protocol witness for RangeReplaceableCollection.init() in conformance _Deque<A>@<X0>(uint64_t *a1@<X8>)
{
  result = _Deque.init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance _Deque<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  specialized _Deque.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance _Deque<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = *(a3 + 16);
  v8 = specialized _Deque.init(repeating:count:)(a1, a2, v7, a5);
  result = (*(*(v7 - 8) + 8))(a1, v7);
  *a4 = v8;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.init<A>(_:) in conformance _Deque<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = specialized _Deque.init<A>(_:)(a1, *(a4 + 16), a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a5 = v8;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance _Deque<A>(uint64_t a1, uint64_t a2)
{
  _Deque.append(_:)(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t protocol witness for RangeReplaceableCollection.append<A>(contentsOf:) in conformance _Deque<A>(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  _Deque.append<A>(contentsOf:)(a1, a4, a2, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance _Deque<A>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  _Deque.insert(_:at:)(a1, *a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t protocol witness for RangeReplaceableCollection.insert<A>(contentsOf:at:) in conformance _Deque<A>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  specialized _Deque.insert<A>(contentsOf:at:)(a1, *a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a1, a3);
}

uint64_t _Deque.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v21 = 0x3C6575716544;
  v22 = 0xE600000000000000;
  v10 = _typeName(_:qualified:)();
  MEMORY[0x1865D3D30](v10);

  MEMORY[0x1865D3D30](5974078, 0xE300000000000000);
  v24 = v21;
  v25 = v22;
  v21 = _Deque.makeIterator()(a1, a2);
  v22 = v11;
  v23 = v12;
  v14 = type metadata accessor for _Deque.Iterator(0, a2, v12, v13);
  _Deque.Iterator.next()(v14, v9);
  v15 = *(v4 + 48);
  if (v15(v9, 1, a2) != 1)
  {
    v17 = *(v4 + 32);
    v17(v6, v9, a2);
    v20 = xmmword_1816197E0;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v18 = swift_allocObject();
      *(v18 + 16) = v20;
      *(v18 + 56) = a2;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v18 + 32));
      v17(boxed_opaque_existential_0, v6, a2);
      debugPrint<A>(_:separator:terminator:to:)();

      _Deque.Iterator.next()(v14, v9);
      if (v15(v9, 1, a2) == 1)
      {
        break;
      }

      v17(v6, v9, a2);
      MEMORY[0x1865D3D30](8236, 0xE200000000000000);
    }
  }

  MEMORY[0x1865D3D30](10589, 0xE200000000000000);
  return v24;
}

uint64_t _Deque.customMirror.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Mirror.AncestorRepresentation();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - v9;
  v17[0] = a1;
  v17[1] = a1;
  v11 = *MEMORY[0x1E69E7590];
  v12 = type metadata accessor for Mirror.DisplayStyle();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  type metadata accessor for _Deque(0, a2, v14, v15);
  swift_getWitnessTable();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E75D8], v4);
  swift_retain_n();
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t _Deque.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v23 = 91;
  v24 = 0xE100000000000000;
  v20 = _Deque.makeIterator()(a1, a2);
  v21 = v10;
  v22 = v11;
  v13 = type metadata accessor for _Deque.Iterator(0, a2, v11, v12);
  _Deque.Iterator.next()(v13, v9);
  v14 = *(v4 + 48);
  if (v14(v9, 1, a2) != 1)
  {
    v16 = *(v4 + 32);
    v16(v6, v9, a2);
    v19 = xmmword_1816197E0;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = v19;
      *(v17 + 56) = a2;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v17 + 32));
      v16(boxed_opaque_existential_0, v6, a2);
      print<A>(_:separator:terminator:to:)();

      _Deque.Iterator.next()(v13, v9);
      if (v14(v9, 1, a2) == 1)
      {
        break;
      }

      v16(v6, v9, a2);
      MEMORY[0x1865D3D30](8236, 0xE200000000000000);
    }
  }

  MEMORY[0x1865D3D30](93, 0xE100000000000000);
  return v23;
}

uint64_t static _Deque<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _Deque(0, a3, a3, a4);
  swift_getWitnessTable();
  return Sequence<>.elementsEqual<A>(_:)() & 1;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance _Deque<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = specialized _Deque.init(arrayLiteral:)(a1, *(a2 + 16));

  *a3 = v4;
  return result;
}

uint64_t _Deque<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v22 - v11;
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, a2, &type metadata for _DequeBufferHeader, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v21);
  v22[0] = a1;
  MEMORY[0x1865D4230](v23);
  v23 = _Deque.makeIterator()(a2, a3);
  v24 = v13;
  v25 = v14;
  v16 = type metadata accessor for _Deque.Iterator(0, a3, v14, v15);
  _Deque.Iterator.next()(v16, v12);
  v17 = *(v7 + 48);
  if (v17(v12, 1, a3) != 1)
  {
    v19 = v7 + 32;
    v18 = *(v7 + 32);
    do
    {
      v18(v9, v12, a3);
      dispatch thunk of Hashable.hash(into:)();
      (*(v19 - 24))(v9, a3);
      _Deque.Iterator.next()(v16, v12);
    }

    while (v17(v12, 1, a3) != 1);
  }
}

Swift::Int _Deque<A>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  _Deque<A>.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> _Deque<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  Hasher.init(_seed:)();
  _Deque<A>.hash(into:)(v7, *v3, *(a2 + 16), v5);
  return Hasher._finalize()();
}

uint64_t Clock.measure(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[2] = a2;
  v21 = a1;
  v20[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - v13;
  v15 = *(a4 + 32);
  v20[0] = v5;
  v16 = v15(a3, a4);
  v17 = v22;
  v21(v16);
  if (v17)
  {
    return (*(v9 + 8))(v14, AssociatedTypeWitness);
  }

  v22 = 0;
  v15(a3, a4);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of InstantProtocol.duration(to:)();
  v19 = *(v9 + 8);
  v19(v12, AssociatedTypeWitness);
  return (v19)(v14, AssociatedTypeWitness);
}

uint64_t Clock.measure(_:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a1;
  v6[3] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[6] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v6[7] = v11;
  v12 = *(v11 + 64) + 15;
  v6[8] = swift_task_alloc(v12 & 0xFFFFFFFFFFFFFFF0);
  v6[9] = swift_task_alloc(v12 & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a5 + 32);
  v6[10] = v13;
  v6[11] = (a5 + 32) & 0xFFFFFFFFFFFFLL | 0x18B000000000000;
  v13(a4, a5);
  v16 = (a2 + *a2);
  v14 = swift_task_alloc(a2[1]);
  v6[12] = v14;
  *v14 = v6;
  v14[1] = Clock.measure(_:);

  return v16();
}

uint64_t Clock.measure(_:)()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v2;
  v5 = *(v3 + 64);
  v4 = *(v3 + 72);
  if (v0)
  {
    (*(*(v3 + 56) + 8))(*(v3 + 72), *(v3 + 48));
  }

  else
  {
    v7 = *(v3 + 48);
    v8 = *(v3 + 56);
    (*(v3 + 80))(*(v3 + 24), *(v3 + 32));
    swift_getAssociatedConformanceWitness();
    dispatch thunk of InstantProtocol.duration(to:)();
    v9 = *(v8 + 8);
    v9(v5, v7);
    v9(v4, v7);
  }

  v4;
  v5;
  v6 = *(v3 + 8);

  return v6();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContinuousClock.Instant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContinuousClock.Instant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContinuousClock.now.getter@<X0>(char *a1@<X3>, uint64_t *a2@<X8>)
{

  return ContinuousClock.now.getter(1, a2, a1);
}

uint64_t static ContinuousClock.now.getter@<X0>(char *a1@<X3>, uint64_t *a2@<X8>)
{

  return ContinuousClock.now.getter(1, a2, a1);
}

uint64_t ContinuousClock.minimumResolution.getter(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{

  return ContinuousClock.minimumResolution.getter(1, a2, a3, a4);
}

void ContinuousClock.sleep(until:tolerance:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = swift_task_alloc(224);
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5(v8, v9, a2, a3, a4 & 1);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 97) = a5;
  *(v5 + 168) = a3;
  *(v5 + 176) = a4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY0_, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY0_()
{
  v1 = swift_slowAlloc();
  *(v0 + 184) = v1;
  atomic_store(0, v1);
  v2 = swift_task_alloc(32);
  *(v0 + 192) = v2;
  *(v2 + 16) = v1;

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY1_, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY1_()
{
  *(v0 + 200) = swift_task_addCancellationHandler(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZyyYbXEfU0_s010SuspendingH0V_Ttg5TA, *(v0 + 192));

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY2_, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY2_()
{
  v1 = v0;
  v2 = v0;
  v3 = (v0 + 16);
  v4 = *(v1 + 97);
  v6 = *(v1 + 168);
  v5 = *(v1 + 176);
  v8 = *(v1 + 152);
  v7 = *(v1 + 160);
  *(v1 + 16) = v2;
  *(v1 + 24) = _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TQ3_;
  v9 = swift_continuation_init(v3, 1uLL);
  *(v1 + 80) = v6;
  *(v1 + 104) = v8;
  *(v1 + 112) = v7;
  *(v1 + 88) = v5;
  *(v1 + 96) = v4 & 1;
  while (1)
  {
    v11 = atomic_load(*(v1 + 184));
    if ((v11 & 3) != 0)
    {
      break;
    }

    if (v11 >= 4)
    {
      goto LABEL_24;
    }

    v12 = 0;
    atomic_compare_exchange_strong(*(v1 + 184), &v12, v9);
    if (!v12)
    {
      v13 = *(v1 + 184);
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      v15 = swift_task_create(0, 0, MEMORY[0x1E69E7CA8] + 8, &_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZyyYaKXEfU_ySccyyts5Error_pGXEfU_yyYacfU_s010ContinuousH0V_Tt0g5TATu, v14);
      if (specialized static Task<>.currentSchedulableExecutor.getter())
      {
        v18 = v16;
        swift_getObjectType();
        v19 = *(v18 + 24);
        lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
        v19(v15, v1 + 104, v1 + 80);
        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      *(v1 + 120) = 0u;
      swift_get_time((v1 + 120), (v1 + 128), 1, v17);
      *(v1 + 136) = 0u;
      swift_get_time((v1 + 136), (v1 + 144), 1, v21);
      specialized Duration.init(_seconds:nanoseconds:)(*(v1 + 136), *(v1 + 144));
      static Duration.- infix(_:_:)();
      v22 = Duration.components.getter();
      v24 = *(v1 + 120);
      v25 = v24 + v22;
      if (__OFADD__(v24, v22))
      {
        __break(1u);
      }

      else
      {
        v26 = *(v1 + 128);
        v27 = v26 + v23 / 1000000000;
        if (!__OFADD__(v26, v23 / 1000000000))
        {
          if (v27 < 1000000001)
          {
LABEL_14:
            if (v4)
            {
              v29 = 0;
              v30 = -1;
            }

            else
            {
              v29 = Duration.components.getter();
              v30 = v31 / 1000000000;
            }

            swift_task_enqueueGlobalWithDeadline(v25, v27, v29, v30, 1, v15);
            goto LABEL_18;
          }

          if (!__OFADD__(v25++, 1))
          {
            v27 -= 1000000000;
            goto LABEL_14;
          }

LABEL_23:
          __break(1u);
          while (1)
          {
LABEL_24:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  if ((v11 & 3) != 3)
  {
    goto LABEL_24;
  }

  swift_continuation_throwingResume(v9, v10);
LABEL_18:

  swift_continuation_await(v3, v20);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TQ3_(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 208) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY6_;
  }

  else
  {
    v3 = _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY4_;
  }

  swift_task_switch(v3, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY4_()
{
  v1 = *(v0 + 192);
  swift_task_removeCancellationHandler(*(v0 + 200));
  v1;

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY5_, 0, 0);
}

uint64_t _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY5_()
{
  v1 = atomic_load(*(v0 + 184));
  v2 = v1 & 3;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      MEMORY[0x1865D4B40](*(v0 + 184), -1, -1);
      lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
      swift_allocError();
      swift_willThrow();
      swift_willThrow();
      v3 = *(v0 + 8);
      goto LABEL_7;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (!v2)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  MEMORY[0x1865D4B40](*(v0 + 184), -1, -1);
  v3 = *(v0 + 8);
LABEL_7:

  return v3();
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY6_()
{
  v1 = *(v0 + 192);
  swift_task_removeCancellationHandler(*(v0 + 200));
  v1;

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY7_, 0, 0);
}

uint64_t _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY7_(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 97) = a5;
  *(v5 + 168) = a3;
  *(v5 + 176) = a4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY0_, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY0_()
{
  v1 = swift_slowAlloc();
  *(v0 + 184) = v1;
  atomic_store(0, v1);
  v2 = swift_task_alloc(32);
  *(v0 + 192) = v2;
  *(v2 + 16) = v1;

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY1_, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY1_()
{
  *(v0 + 200) = swift_task_addCancellationHandler(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZyyYbXEfU0_s010SuspendingH0V_Ttg5TA, *(v0 + 192));

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY2_, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY2_()
{
  v1 = v0;
  v2 = v0;
  v3 = (v0 + 16);
  v4 = *(v1 + 97);
  v6 = *(v1 + 168);
  v5 = *(v1 + 176);
  v8 = *(v1 + 152);
  v7 = *(v1 + 160);
  *(v1 + 16) = v2;
  *(v1 + 24) = _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TQ3_;
  v9 = swift_continuation_init(v3, 1uLL);
  *(v1 + 80) = v6;
  *(v1 + 104) = v8;
  *(v1 + 112) = v7;
  *(v1 + 88) = v5;
  *(v1 + 96) = v4 & 1;
  while (1)
  {
    v11 = atomic_load(*(v1 + 184));
    if ((v11 & 3) != 0)
    {
      break;
    }

    if (v11 >= 4)
    {
      goto LABEL_24;
    }

    v12 = 0;
    atomic_compare_exchange_strong(*(v1 + 184), &v12, v9);
    if (!v12)
    {
      v13 = *(v1 + 184);
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      v15 = swift_task_create(0, 0, MEMORY[0x1E69E7CA8] + 8, &_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZyyYaKXEfU_ySccyyts5Error_pGXEfU_yyYacfU_s010SuspendingH0V_Tt0g5TATu, v14);
      if (specialized static Task<>.currentSchedulableExecutor.getter())
      {
        v18 = v16;
        swift_getObjectType();
        v19 = *(v18 + 24);
        lazy protocol witness table accessor for type SuspendingClock and conformance SuspendingClock();
        v19(v15, v1 + 104, v1 + 80);
        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      *(v1 + 120) = 0u;
      swift_get_time((v1 + 120), (v1 + 128), 2, v17);
      *(v1 + 136) = 0u;
      swift_get_time((v1 + 136), (v1 + 144), 2, v21);
      specialized Duration.init(_seconds:nanoseconds:)(*(v1 + 136), *(v1 + 144));
      static Duration.- infix(_:_:)();
      v22 = Duration.components.getter();
      v24 = *(v1 + 120);
      v25 = v24 + v22;
      if (__OFADD__(v24, v22))
      {
        __break(1u);
      }

      else
      {
        v26 = *(v1 + 128);
        v27 = v26 + v23 / 1000000000;
        if (!__OFADD__(v26, v23 / 1000000000))
        {
          if (v27 < 1000000001)
          {
LABEL_14:
            if (v4)
            {
              v29 = 0;
              v30 = -1;
            }

            else
            {
              v29 = Duration.components.getter();
              v30 = v31 / 1000000000;
            }

            swift_task_enqueueGlobalWithDeadline(v25, v27, v29, v30, 2, v15);
            goto LABEL_18;
          }

          if (!__OFADD__(v25++, 1))
          {
            v27 -= 1000000000;
            goto LABEL_14;
          }

LABEL_23:
          __break(1u);
          while (1)
          {
LABEL_24:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  if ((v11 & 3) != 3)
  {
    goto LABEL_24;
  }

  swift_continuation_throwingResume(v9, v10);
LABEL_18:

  swift_continuation_await(v3, v20);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TQ3_(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 208) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY6_;
  }

  else
  {
    v3 = _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY4_;
  }

  swift_task_switch(v3, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY4_()
{
  v1 = *(v0 + 192);
  swift_task_removeCancellationHandler(*(v0 + 200));
  v1;

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY5_, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY6_()
{
  v1 = *(v0 + 192);
  swift_task_removeCancellationHandler(*(v0 + 200));
  v1;

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY7_, 0, 0);
}

uint64_t protocol witness for Clock.now.getter in conformance ContinuousClock@<X0>(char *x3_0@<X3>, uint64_t *x8_0@<X8>)
{

  return protocol witness for Clock.now.getter in conformance ContinuousClock(1, x8_0, x3_0);
}

uint64_t protocol witness for Clock.minimumResolution.getter in conformance ContinuousClock@<X0>(char *x3_0@<X3>, uint64_t *x8_0@<X8>)
{

  return protocol witness for Clock.minimumResolution.getter in conformance ContinuousClock(1, x8_0, x3_0);
}

void protocol witness for Clock.sleep(until:tolerance:) in conformance ContinuousClock(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  v8 = swift_task_alloc(224);
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5(v6, v7, v4, v3, v5);
}

uint64_t ContinuousClock.Instant.advanced(by:)@<X0>(uint64_t *a3@<X8>)
{
  result = static Duration.+ infix(_:_:)();
  *a3 = result;
  a3[1] = v5;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContinuousClock.Instant.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1865D4230](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContinuousClock.Instant.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865D4230](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ContinuousClock.Instant.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C61765FLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SuspendingClock.Instant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SuspendingClock.Instant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContinuousClock.Instant.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *v5;
  v13 = v5[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v11;
  v16 = v13;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t ContinuousClock.Instant.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _OWORD *a6@<X8>)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v6)
  {
    v12 = v15;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v11, v9);
    *v12 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SuspendingClock.now.getter@<X0>(char *a1@<X3>, uint64_t *a2@<X8>)
{

  return ContinuousClock.now.getter(2, a2, a1);
}

uint64_t ContinuousClock.now.getter@<X0>(const char *a1@<X0>, uint64_t *a2@<X8>, char *a3@<X3>)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7[0] = 0;
  swift_get_time(v7, &v6, a1, a3);
  result = specialized Duration.init(_seconds:nanoseconds:)(v7[0], v6);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t static SuspendingClock.now.getter@<X0>(uint64_t *a1@<X8>, char *a2@<X3>)
{

  return ContinuousClock.now.getter(2, a1, a2);
}

uint64_t SuspendingClock.minimumResolution.getter(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{

  return ContinuousClock.minimumResolution.getter(2, a2, a3, a4);
}

uint64_t ContinuousClock.minimumResolution.getter(const char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6[0] = 0;
  swift_get_clock_res(v6, &v5, a1, a4);
  return specialized Duration.init(_seconds:nanoseconds:)(v6[0], v5);
}

void SuspendingClock.sleep(until:tolerance:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = swift_task_alloc(224);
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5(v8, v9, a2, a3, a4 & 1);
}

uint64_t protocol witness for Clock.now.getter in conformance SuspendingClock@<X0>(char *x3_0@<X3>, uint64_t *x8_0@<X8>)
{

  return protocol witness for Clock.now.getter in conformance ContinuousClock(2, x8_0, x3_0);
}

uint64_t protocol witness for Clock.now.getter in conformance ContinuousClock@<X0>(const char *a1@<X2>, uint64_t *a2@<X8>, char *a3@<X3>)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7[0] = 0;
  swift_get_time(v7, &v6, a1, a3);
  result = specialized Duration.init(_seconds:nanoseconds:)(v7[0], v6);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t protocol witness for Clock.minimumResolution.getter in conformance SuspendingClock@<X0>(char *x3_0@<X3>, uint64_t *x8_0@<X8>)
{

  return protocol witness for Clock.minimumResolution.getter in conformance ContinuousClock(2, x8_0, x3_0);
}

uint64_t protocol witness for Clock.minimumResolution.getter in conformance ContinuousClock@<X0>(const char *a1@<X2>, uint64_t *a2@<X8>, char *a3@<X3>)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7[0] = 0;
  swift_get_clock_res(v7, &v6, a1, a3);
  result = specialized Duration.init(_seconds:nanoseconds:)(v7[0], v6);
  *a2 = result;
  a2[1] = v5;
  return result;
}

void protocol witness for Clock.sleep(until:tolerance:) in conformance SuspendingClock(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  v8 = swift_task_alloc(224);
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5(v6, v7, v4, v3, v5);
}

uint64_t static SuspendingClock.Instant.+ infix(_:_:)@<X0>(uint64_t *a4@<X8>)
{
  result = static Duration.+ infix(_:_:)();
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t static SuspendingClock.Instant.+= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = static Duration.+ infix(_:_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t static SuspendingClock.Instant.- infix(_:_:)@<X0>(uint64_t *a4@<X8>)
{
  static Duration.zero.getter();
  static Duration.- infix(_:_:)();
  result = static Duration.+ infix(_:_:)();
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t static SuspendingClock.Instant.-= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  static Duration.zero.getter();
  static Duration.- infix(_:_:)();
  result = static Duration.+ infix(_:_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

Swift::Int ContinuousClock.Instant.hashValue.getter()
{
  Hasher.init(_seed:)();
  Duration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for InstantProtocol.advanced(by:) in conformance ContinuousClock.Instant@<X0>(uint64_t *a2@<X8>)
{
  result = static Duration.+ infix(_:_:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for InstantProtocol.duration(to:) in conformance ContinuousClock.Instant@<X0>(uint64_t *a2@<X8>)
{
  result = static Duration.- infix(_:_:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContinuousClock.Instant(uint64_t a1)
{
  Hasher.init(_seed:)();
  Duration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static Task<>.sleep<A>(until:tolerance:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 48);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc(v10[1]);
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:);

  return v13(a1, a2, a4, a5);
}

uint64_t CooperativeExecutor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized CooperativeExecutor.runUntil(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v39[1] = *MEMORY[0x1E69E9840];
  *(a1 + 64) = 0;
LABEL_4:
  v38 = 0;
  v39[0] = 0;
  swift_get_time(v39, &v38, 2, a4);
  v5 = *(a1 + 40);
  if (*(v5 + 16))
  {
    v7 = v38;
    v6 = v39[0];
    do
    {
      ExecutorPrivateData = swift_job_getExecutorPrivateData(*(v5 + 32));
      if (v6 < *ExecutorPrivateData)
      {
        break;
      }

      if (v6 == *ExecutorPrivateData && v7 < ExecutorPrivateData[1])
      {
        break;
      }

      specialized MutableCollection.swapAt(_:_:)(0, *(*(a1 + 40) + 16) - 1);
      v10 = specialized RangeReplaceableCollection<>.removeLast()();
      if (*(*(a1 + 40) + 16))
      {
        specialized PriorityQueue.downHeap(ndx:)();
      }

      v11 = *(a1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
        *(a1 + 16) = v11;
      }

      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      v15 = v13 + 1;
      if (v13 >= v14 >> 1)
      {
        v37 = *(v11 + 16);
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15, 1, v11, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
        v13 = v37;
      }

      *(v11 + 16) = v15;
      *(v11 + 8 * v13 + 32) = v10;
      *(a1 + 16) = v11;
      specialized PriorityQueue.upHeap(ndx:)(v13);
      v5 = *(a1 + 40);
    }

    while (*(v5 + 16));
  }

  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    v17 = *(i + 16);
    if (!v17)
    {
      v26 = *(a1 + 40);
      if (!*(v26 + 16))
      {
        return;
      }

      v27 = swift_job_getExecutorPrivateData(*(v26 + 32));
      v29 = *v27;
      v28 = v27[1];
      v38 = 0;
      v39[0] = 0;
      swift_get_time(v39, &v38, 2, v30);
      if (v39[0] < v29 || (v39[0] == v29 ? (v31 = v38 < v28) : (v31 = 0), v31))
      {
        v32 = v29 - v39[0];
        v33 = __OFSUB__(v29, v39[0]);
        if (v28 >= v38)
        {
          if (v33)
          {
            goto LABEL_55;
          }

          v36 = v28 - v38;
          if (__OFSUB__(v28, v38))
          {
            __break(1u);
            return;
          }
        }

        else
        {
          if (v33)
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
          }

          if (__OFSUB__(v32--, 1))
          {
            goto LABEL_56;
          }

          v35 = v28 + 1000000000;
          if (__OFADD__(v28, 1000000000))
          {
            goto LABEL_57;
          }

          v36 = v35 - v38;
          if (__OFSUB__(v35, v38))
          {
            goto LABEL_58;
          }
        }

        swift_sleep(v32, v36);
      }

      if (*(a1 + 64) == 1)
      {
        return;
      }

      goto LABEL_4;
    }

    v18 = v17 - 1;
    if (v17 != 1)
    {
      v19 = *(i + 32);
      v20 = *(i + 32 + 8 * v18);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = i;
      if ((v21 & 1) == 0)
      {
        i = specialized _ArrayBuffer._consumeAndCreateNew()(i);
      }

      *(i + 32) = v20;
      *(a1 + 16) = i;
      if (v17 > *(i + 16))
      {
        goto LABEL_61;
      }

      *(i + 32 + 8 * v18) = v19;
      *(a1 + 16) = i;
      if (!*(i + 16))
      {
        goto LABEL_60;
      }
    }

    v22 = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 16) = i;
    if ((v22 & 1) == 0)
    {
      break;
    }

    v23 = *(i + 16);
    if (!v23)
    {
      goto LABEL_59;
    }

LABEL_28:
    v24 = v23 - 1;
    v25 = *(i + 8 * v24 + 32);
    *(i + 16) = v24;
    *(a1 + 16) = i;
    if (v24)
    {
      specialized PriorityQueue.downHeap(ndx:)();
    }

    swift_job_run(v25, a1, &protocol witness table for CooperativeExecutor);
  }

  i = specialized _ArrayBuffer._consumeAndCreateNew()(i);
  *(a1 + 16) = i;
  v23 = *(i + 16);
  if (v23)
  {
    goto LABEL_28;
  }

LABEL_59:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_60:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_61:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void CooperativeExecutor.runUntil(_:)(uint64_t (*a1)(void))
{
  v2 = v1;
  v37[1] = *MEMORY[0x1E69E9840];
  *(v1 + 64) = 0;
LABEL_4:
  if (a1())
  {
    return;
  }

  v36 = 0;
  v37[0] = 0;
  swift_get_time(v37, &v36, 2, v4);
  v5 = *(v2 + 40);
  if (*(v5 + 16))
  {
    v7 = v36;
    v6 = v37[0];
    do
    {
      ExecutorPrivateData = swift_job_getExecutorPrivateData(*(v5 + 32));
      if (v6 < *ExecutorPrivateData)
      {
        break;
      }

      if (v6 == *ExecutorPrivateData && v7 < ExecutorPrivateData[1])
      {
        break;
      }

      specialized MutableCollection.swapAt(_:_:)(0, *(*(v2 + 40) + 16) - 1);
      v10 = specialized RangeReplaceableCollection<>.removeLast()();
      if (*(*(v2 + 40) + 16))
      {
        specialized PriorityQueue.downHeap(ndx:)();
      }

      v11 = *(v2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 16) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
        *(v2 + 16) = v11;
      }

      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1, v11, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
      }

      *(v11 + 16) = v14 + 1;
      *(v11 + 8 * v14 + 32) = v10;
      *(v2 + 16) = v11;
      specialized PriorityQueue.upHeap(ndx:)(v14);
      v5 = *(v2 + 40);
    }

    while (*(v5 + 16));
  }

  for (i = *(v2 + 16); ; i = *(v2 + 16))
  {
    v16 = *(i + 16);
    if (!v16)
    {
      v25 = *(v2 + 40);
      if (!*(v25 + 16))
      {
        return;
      }

      v26 = swift_job_getExecutorPrivateData(*(v25 + 32));
      v28 = *v26;
      v27 = v26[1];
      v36 = 0;
      v37[0] = 0;
      swift_get_time(v37, &v36, 2, v29);
      if (v37[0] < v28 || (v37[0] == v28 ? (v30 = v36 < v27) : (v30 = 0), v30))
      {
        v31 = v28 - v37[0];
        v32 = __OFSUB__(v28, v37[0]);
        if (v27 >= v36)
        {
          if (v32)
          {
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
          }

          v35 = v27 - v36;
          if (__OFSUB__(v27, v36))
          {
            __break(1u);
            return;
          }
        }

        else
        {
          if (v32)
          {
            goto LABEL_56;
          }

          if (__OFSUB__(v31--, 1))
          {
            goto LABEL_57;
          }

          v34 = v27 + 1000000000;
          if (__OFADD__(v27, 1000000000))
          {
            goto LABEL_58;
          }

          v35 = v34 - v36;
          if (__OFSUB__(v34, v36))
          {
            goto LABEL_59;
          }
        }

        swift_sleep(v31, v35);
      }

      if (*(v2 + 64))
      {
        return;
      }

      goto LABEL_4;
    }

    v17 = v16 - 1;
    if (v16 != 1)
    {
      v18 = *(i + 32);
      v19 = *(i + 32 + 8 * v17);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 16) = i;
      if ((v20 & 1) == 0)
      {
        i = specialized _ArrayBuffer._consumeAndCreateNew()(i);
      }

      *(i + 32) = v19;
      *(v2 + 16) = i;
      if (v16 > *(i + 16))
      {
        goto LABEL_61;
      }

      *(i + 32 + 8 * v17) = v18;
      *(v2 + 16) = i;
      if (!*(i + 16))
      {
        goto LABEL_62;
      }
    }

    v21 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = i;
    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = *(i + 16);
    if (!v22)
    {
      goto LABEL_60;
    }

LABEL_29:
    v23 = v22 - 1;
    v24 = *(i + 8 * v23 + 32);
    *(i + 16) = v23;
    *(v2 + 16) = i;
    if (v23)
    {
      specialized PriorityQueue.downHeap(ndx:)();
    }

    swift_job_run(v24, v2, &protocol witness table for CooperativeExecutor);
  }

  i = specialized _ArrayBuffer._consumeAndCreateNew()(i);
  *(v2 + 16) = i;
  v22 = *(i + 16);
  if (v22)
  {
    goto LABEL_29;
  }

LABEL_60:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_61:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_62:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for SerialExecutor.enqueue(_:) in conformance CooperativeExecutor(uint64_t a1, uint64_t a2)
{
  return Executor.enqueue(_:)(a1, a2, &protocol witness table for CooperativeExecutor);
}

{
  return Executor.enqueue(_:)(a1, a2, &protocol witness table for CooperativeExecutor);
}

uint64_t protocol witness for Executor.enqueue(_:) in conformance CooperativeExecutor(uint64_t a1)
{
  v5 = *(v1 + 16);
  v3 = (v1 + 16);
  v4 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
    *v3 = v4;
  }

  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = v7 + 1;
  if (v7 >= v8 >> 1)
  {
    v11 = *(v4 + 16);
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v8 > 1, v9, 1, v4, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
    v7 = v11;
  }

  *(v4 + 16) = v9;
  *(v4 + 8 * v7 + 32) = a1;
  *v3 = v4;
  return specialized PriorityQueue.upHeap(ndx:)(v7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DispatchMainExecutor.run()()
{
  if (*(v0 + 16) != 1)
  {
    *(v0 + 16) = 1;
    swift_dispatchMain();
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for SerialExecutor.enqueue(_:) in conformance DispatchMainExecutor(uint64_t a1, uint64_t a2)
{
  return Executor.enqueue(_:)(a1, a2, &protocol witness table for DispatchMainExecutor);
}

{
  return Executor.enqueue(_:)(a1, a2, &protocol witness table for DispatchMainExecutor);
}

uint64_t one-time initialization function for handle()
{
  v0 = String.utf8CString.getter();
  v1 = dlopen((v0 + 32), 16);

  static CoreFoundation.handle = v1;
  return result;
}

void *_ss14CoreFoundationO6symbolyxSSlFZyyXC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for handle != -1)
  {
    swift_once();
  }

  v4 = static CoreFoundation.handle;
  v5 = String.utf8CString.getter();
  v6 = dlsym(v4, (v5 + 32));

  if (v6)
  {
    return v6;
  }

  _StringGuts.grow(_:)(38);

  MEMORY[0x1865D3D30](a1, a2);
  MEMORY[0x1865D3D30](0xD000000000000012, 0x800000018161D840);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*one-time initialization function for CFRunLoopRun())(void)
{
  result = _ss14CoreFoundationO6symbolyxSSlFZyyXC_Tt1g5(0x6F6F4C6E75524643, 0xEC0000006E755270);
  static CoreFoundation.CFRunLoopRun = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CFMainExecutor.run()()
{
  if (one-time initialization token for CFRunLoopRun != -1)
  {
    swift_once();
  }

  static CoreFoundation.CFRunLoopRun();
}

uint64_t swift_task_asyncMainDrainQueueImpl(uint64_t a1, uint64_t a2)
{
  swift_createDefaultExecutorsOnce(a1, a2);
  if (static MainActor._executor)
  {
    v2 = qword_1ED42D448;
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 8);
    v5 = *(v4 + 16);
    swift_unknownObjectRetain();
    v5(ObjectType, v4);
    swift_unknownObjectRelease();

    _swift_exit(0);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t swift_task_donateThreadToGlobalExecutorUntilImpl(uint64_t a1, uint64_t a2)
{
  swift_createDefaultExecutorsOnce(a1, a2);
  if (_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
  {
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = v5;
      v11 = a1;
      v12 = a2;
      v7 = *(MEMORY[0x1EEE9AC00](v5) + 24);
      swift_unknownObjectRetain();
      v7(partial apply for closure #1 in donateToGlobalExecutor(condition:context:), &v9, ObjectType, v6);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    LODWORD(v11) = 0;
    v10 = 616;
    LOBYTE(v9) = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t swift_task_getMainExecutorImpl(uint64_t a1, uint64_t a2)
{
  swift_createDefaultExecutorsOnce(a1, a2);
  if (static MainActor._executor)
  {
    v2 = qword_1ED42D448;
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    v5 = *(v4 + 40);
    swift_unknownObjectRetain();
    v6 = v5(ObjectType, v4);
    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t swift_task_enqueueMainExecutorImpl(uint64_t a1, uint64_t a2)
{
  swift_createDefaultExecutorsOnce(a1, a2);
  if (static MainActor._executor)
  {
    v3 = qword_1ED42D448;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v6 = *(v5 + 16);
    swift_unknownObjectRetain();
    v6(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t swift_task_enqueueGlobalImpl(uint64_t a1, uint64_t a2)
{
  swift_createDefaultExecutorsOnce(a1, a2);
  if (_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
  {
    v3 = qword_1ED42D458;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v5(a1, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t swift_task_enqueueGlobalWithDelayImpl(uint64_t a1, uint64_t a2)
{
  swift_createDefaultExecutorsOnce(a1, a2);
  if (_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
  {
    if (Executor.asSchedulable.getter())
    {
      v5 = v4;
      v6 = 1000000000 * a1;
      v7 = (a1 * 0x3B9ACA00uLL) >> 64;
      ObjectType = swift_getObjectType();
      v14[0] = v6;
      v14[1] = v7;
      v12[0] = 0;
      v12[1] = 0;
      v13 = 1;
      v9 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
      SchedulableExecutor.enqueue<A>(_:after:tolerance:clock:)(a2, v14, v12, v10, ObjectType, &type metadata for ContinuousClock, v5, v9);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t swift_task_enqueueGlobalWithDeadlineImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = static Duration.+ infix(_:_:)();
  v10 = v9;
  v11 = static Duration.+ infix(_:_:)();
  v13 = v11;
  v14 = v12;
  if (a5 == 1)
  {
    swift_createDefaultExecutorsOnce(v11, v12);
    if (_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
    {
      if (Executor.asSchedulable.getter())
      {
        v16 = v15;
        swift_getObjectType();
        v25 = v8;
        v26 = v10;
        v22 = v13;
        v23 = v14;
        v24 = 0;
        v17 = *(v16 + 16);
        lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
LABEL_9:
        v17(a6, &v25, &v22);
        return swift_unknownObjectRelease();
      }

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (a5 != 2)
  {
LABEL_11:
    _StringGuts.grow(_:)(19);

    v22 = 0xD000000000000011;
    v23 = 0x800000018161CD70;
    LODWORD(v25) = a5;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865D3D30](v21);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_12;
  }

  swift_createDefaultExecutorsOnce(v11, v12);
  if (!_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_11;
  }

  if (Executor.asSchedulable.getter())
  {
    v19 = v18;
    swift_getObjectType();
    v25 = v8;
    v26 = v10;
    v22 = v13;
    v23 = v14;
    v24 = 0;
    v17 = *(v19 + 16);
    lazy protocol witness table accessor for type SuspendingClock and conformance SuspendingClock();
    goto LABEL_9;
  }

LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

char *static Task<>.startOnMainActor(priority:_:)(unsigned __int8 *a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (a1[1])
  {
    v4 = 3072;
  }

  else
  {
    v4 = *a1 | 0xC00;
  }

  v5 = swift_task_create(v4, 0, a4, a2, a3);
  swift_task_startOnMainActor(v5);
  return v5;
}

char *static Task<>.startOnMainActor(priority:_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1[1])
  {
    v7 = 3072;
  }

  else
  {
    v7 = *a1 | 0xC00;
  }

  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a3;
  v9 = swift_task_create(v7, 0, a4, &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A), v8);
  swift_task_startOnMainActor(v9);
  return v9;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A)(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc(a2[1]);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = ThrowingTaskGroup._waitForAll();

  return v6(a1);
}

uint64_t closure #1 in $defer #1 <A>() in _Deque.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Deque._UnsafeHandle.ptr(at:)(*v10, v11, v13, v12);
  (*(v7 + 16))(v9, a4, a5);
  return (*(v7 + 32))(v14, v9, a5);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if ((a3 & 1) == 0)
  {
    v9 = a2;
    goto LABEL_8;
  }

  v8 = *(a4 + 24);
  v9 = v8 >> 1;
  if ((v8 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v9 + 0x4000000000000000 >= 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v9 = a2;
    }

LABEL_8:
    v10 = *(a4 + 16);
    if (v9 <= v10)
    {
      v11 = *(a4 + 16);
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v14 = v13 - 32;
      if (v13 < 32)
      {
        v14 = v13 - 25;
      }

      *(v12 + 16) = v10;
      *(v12 + 24) = 2 * (v14 >> 3);
      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      if (result)
      {
LABEL_15:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v10, (v12 + 32));
        *(a4 + 16) = 0;
LABEL_18:

        return v12;
      }
    }

    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v10, (v12 + 32), a4);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) != 0 && ((result & 0x8000000000000000) != 0 || *(a3 + 16) <= result))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t (*)(void)))
{
  if (!a1)
  {
    goto LABEL_4;
  }

  if (a2 < 0)
  {
    a1 = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_4:
    a2 = 0;
  }

  return a3(a1, a2, a3);
}

uint64_t specialized Array.remove(at:)(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = *(v3 + 16);
  if (v4 <= a1 || a1 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v7 + 40), v6, (v7 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v2 = *(v1 + 16);
    if (v2)
    {
LABEL_3:
      v3 = v2 - 1;
      result = *(v1 + 8 * v3 + 32);
      *(v1 + 16) = v3;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v2 = *(v1 + 16);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized RangeReplaceableCollection.removeFirst(_:)(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0 || *(*v1 + 16) < result)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {

      return specialized Array.replaceSubrange<A>(_:with:)(0, result);
    }
  }

  return result;
}

uint64_t specialized Duration.init(_seconds:nanoseconds:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (is_mul_ok(a2, 0x3B9ACA00uLL))
    {
      return 1000000000000000000 * a1 + 1000000000 * a2;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized CooperativeExecutor.enqueue<A>(_:after:tolerance:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[2] = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v9 + 16))(&v29[-1] - v8, a2, AssociatedTypeWitness);
  if (!swift_dynamicCast())
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_19:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v10 = Duration.components.getter();
  v12 = v11;
  v28 = 0;
  v29[0] = 0;
  swift_get_time(v29, &v28, 2, v13);
  v14 = v29[0] + v10;
  if (__OFADD__(v29[0], v10))
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = __OFADD__(v28, v12 / 1000000000);
  v16 = v28 + v12 / 1000000000;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 > 1000000000)
  {
    v17 = v10 + v29[0];
    v18 = v16 - 2000000000;
    if (v16 < 0x77359400)
    {
      v18 = 0;
    }

    v19 = (v18 + 999999999) / 0x3B9ACA00uLL;
    if ((v17 ^ 0x7FFFFFFFFFFFFFFFuLL) <= v19)
    {
      __break(1u);
    }

    v14 = v17 + v19 + 1;
    v16 = v16 - 1000000000 * v19 - 1000000000;
  }

  ExecutorPrivateData = swift_job_getExecutorPrivateData(a1);
  if ((ExecutorPrivateData & 7) != 0)
  {
    goto LABEL_19;
  }

  *ExecutorPrivateData = v14;
  *(ExecutorPrivateData + 8) = v16;
  v21 = v4[5];
  v4 += 5;
  v10 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_16:
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
    *v4 = v10;
  }

  v23 = *(v10 + 16);
  v24 = *(v10 + 24);
  v25 = v23 + 1;
  if (v23 >= v24 >> 1)
  {
    v27 = *(v10 + 16);
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25, 1, v10, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
    v23 = v27;
  }

  *(v10 + 16) = v25;
  *(v10 + 8 * v23 + 32) = a1;
  *v4 = v10;
  return specialized PriorityQueue.upHeap(ndx:)(v23);
}

uint64_t specialized DispatchExecutorProtocol.delay<A>(from:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v8 + 16))(&v11 - v7, a1, AssociatedTypeWitness);
  if (swift_dynamicCast())
  {
    v9 = Duration.components.getter();
    return v9 & ~(v9 >> 63);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized DispatchExecutorProtocol.timestamp<A>(for:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v22 - v12;
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = *(v14 + 16);
  v18(&v22 - v19, a2, a4);
  v20 = swift_dynamicCast();
  if (v20 || (v18(v17, a2, a4), swift_dynamicCast()))
  {
    (*(v10 + 16))(v13, a1, AssociatedTypeWitness);
    swift_dynamicCast();
    Duration.components.getter();
    return v20 ^ 1u;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void specialized DispatchMainExecutor.enqueue<A>(_:at:tolerance:clock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, unsigned __int8 a9)
{
  v35 = a7;
  v36 = a2;
  v37 = a4;
  v39 = a1;
  v38 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v34 - v20;
  (*(v15 + 16))(v18, a3, v14);
  if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    v22 = (*(v15 + 8))(v18, v14);
    v23 = 0;
    v24 = -1;
    v25 = v35(v22);
  }

  else
  {
    v26 = (*(v19 + 32))(v21, v18, AssociatedTypeWitness);
    v27 = v35;
    v28 = v35(v26);
    v23 = specialized DispatchExecutorProtocol.delay<A>(from:clock:)(v21, v28, a5, a8, a6);
    v24 = v29;
    v30 = (*(v19 + 8))(v21, AssociatedTypeWitness);
    v25 = v27(v30);
  }

  if (specialized DispatchExecutorProtocol.timestamp<A>(for:clock:)(v36, v37, v25, a5, a8, a6))
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
  }

  swift_dispatchEnqueueWithDeadline(v38 & 1, v31, v32, v23, v24, v33, v39);
}

void specialized SerialExecutor.checkIsolated()(uint64_t a1)
{
  _StringGuts.grow(_:)(60);
  MEMORY[0x1865D3D30](0xD00000000000003ALL, 0x800000018161CF90);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1865D3D30](v1);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized _Deque.Iterator.init(_base:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = a2;
  v8[3] = a1;
  v6 = type metadata accessor for _Deque.Iterator(0, a2, a3, a4);
  _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.Iterator.init(_base:), v8, a1, a2, v6, partial apply for closure #1 in _Deque._Storage.read<A>(_:));
  return v8[5];
}

uint64_t specialized static Task<>.currentExecutor.getter()
{
  ActiveExecutor = _swift_getActiveExecutor();
  if (ActiveExecutor)
  {
    v1 = ActiveExecutor;
LABEL_7:
    swift_unknownObjectRetain();
    return v1;
  }

  PreferredTaskExecutor = _swift_getPreferredTaskExecutor();
  if (PreferredTaskExecutor || (PreferredTaskExecutor = _swift_getCurrentTaskExecutor()) != 0)
  {
    v1 = PreferredTaskExecutor;
LABEL_6:
    swift_unknownObjectRetain();
    goto LABEL_7;
  }

  swift_createDefaultExecutorsOnce(0, v3);
  v1 = _sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ;
  if (_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
  {
    goto LABEL_6;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static Task<>.currentSchedulableExecutor.getter()
{
  if ((!_swift_getActiveExecutor() || (result = Executor.asSchedulable.getter()) == 0) && (!_swift_getPreferredTaskExecutor() || (result = Executor.asSchedulable.getter()) == 0))
  {
    result = _swift_getCurrentTaskExecutor();
    if (!result || (result = Executor.asSchedulable.getter()) == 0)
    {
      swift_createDefaultExecutorsOnce(result, v1);
      if (_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
      {
        return Executor.asSchedulable.getter();
      }

      else
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in AsyncSequence.allSatisfy(_:)(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc(32);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AsyncSequence.allSatisfy(_:);

  return closure #1 in AsyncSequence.allSatisfy(_:)(a1, v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 40);
  v7 = swift_task_alloc(16);
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AsyncSequence.allSatisfy(_:);

  return thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)(a1, a2, v6);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)partial apply(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 40);
  v7 = swift_task_alloc(16);
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)partial apply;

  return thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)(a1, a2, v6);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)partial apply(uint64_t a1)
{
  v5 = *v1;
  *(*v1 + 16);
  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1815F1CB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for closure #1 in _runAsyncMain(_:)()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc(32);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  return closure #1 in _runAsyncMain(_:)(v3, v2);
}

uint64_t _ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFys5UInt8V_AHtYbXEfU_TA(char a1, char a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

unint64_t lazy protocol witness table accessor for type CancellationError and conformance CancellationError()
{
  result = lazy protocol witness table cache variable for type CancellationError and conformance CancellationError;
  if (!lazy protocol witness table cache variable for type CancellationError and conformance CancellationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CancellationError and conformance CancellationError);
  }

  return result;
}

uint64_t specialized _Deque.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0 || (v6 = *(a3 + 16), _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v13), v14 <= a2))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for _Deque._Storage(0, v6, v7, v8);
    _Deque._Storage.ensureUnique()();
    MEMORY[0x1EEE9AC00](v9);
    v12[2] = v6;
    v12[3] = a2;
    v13 = a1;
    return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.subscript.setter, v12, v10, v6, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  return result;
}

uint64_t partial apply for closure #1 in _checkIllegalTaskLocalBindingWithinWithTaskGroup(file:line:)(unsigned __int8 *a1)
{
  v3 = *(v1 + 32);
  v4 = String.count.getter();
  return swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroup(a1, v4, 1, v3);
}

void specialized static Task<>.onSleepWake(_:)(unint64_t *result, swift::AsyncTask *a2)
{
  while (1)
  {
    v2 = atomic_load(result);
    v3 = v2 & 3;
    if ((v2 & 3) != 0)
    {
      break;
    }

    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v2 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      goto LABEL_13;
    }

    v5 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    atomic_compare_exchange_strong(result, &v5, 1uLL);
    if (v5 == v4)
    {

      swift_continuation_throwingResume(v4, a2);
      return;
    }
  }

  if (v3 == 2)
  {

    JUMPOUT(0x1865D4B40);
  }

  if (v3 != 3)
  {
    while (1)
    {
LABEL_13:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

char *specialized _ArrayBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + 8 * a1 + 32);
    v6 = 8 * v4;
    v7 = &__dst[v6];
    if (v5 >= &__dst[v6] || &v5[v6] <= __dst)
    {
      memcpy(__dst, v5, v6);
      return v7;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, int64_t a2)
{
  if (a1 < 0)
  {
    goto LABEL_23;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
    goto LABEL_23;
  }

  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = a1 - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v5 - v7;
  if (__OFADD__(v5, v8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v9 > *(v4 + 24) >> 1)
  {
    if (v5 <= v9)
    {
      v11 = v5 + v8;
    }

    else
    {
      v11 = v5;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v4, &_ss23_ContiguousArrayStorageCySccyytSgs5NeverOGGMd, &_ss23_ContiguousArrayStorageCySccyytSgs5NeverOGGMR);
    v4 = result;
  }

  if (v7 < 0)
  {
    goto LABEL_24;
  }

  if (!v7)
  {
LABEL_17:
    *v2 = v4;
    return result;
  }

  v12 = *(v4 + 16);
  if (!__OFSUB__(v12, a2))
  {
    result = specialized UnsafeMutablePointer.moveInitialize(from:count:)((v4 + 32 + 8 * a2), v12 - a2, (v4 + 32 + 8 * a1));
    v13 = *(v4 + 16);
    v14 = __OFADD__(v13, v8);
    v15 = v13 - v7;
    if (!v14)
    {
      *(v4 + 16) = v15;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_24:
  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _Deque.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t specialized _Deque.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v40 - v16;
  if (a1 < 0)
  {
    goto LABEL_15;
  }

  v17 = *(a4 + 16);
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v6, &type metadata for _DequeBufferHeader, v17, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v39);
  if (v52 < a2)
  {
    goto LABEL_15;
  }

  v50 = a1;
  v18 = __OFSUB__(a2, a1);
  v19 = a2 - a1;
  if (v18)
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = v6;
  v46 = a2;
  v47 = AssociatedTypeWitness;
  v21 = dispatch thunk of Collection.count.getter();
  v22 = v21 - v19;
  if (__OFSUB__(v21, v19))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = v21;
  v24 = v17;
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v20, &type metadata for _DequeBufferHeader, v17, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v39);
  v45 = v22;
  v18 = __OFADD__(v52, v22);
  v27 = v52 + v22;
  if (!v18)
  {
    type metadata accessor for _Deque._Storage(0, v17, v25, v26);
    v44 = v20;
    _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(v27, 0);
    if (v23 >= v19)
    {
      v28 = v19;
    }

    else
    {
      v28 = v23;
    }

    v29 = v50;
    if (!__OFADD__(v50, v28))
    {
      v43 = v50 + v28;
      v30 = v51;
      v41 = v24;
      dispatch thunk of Collection.startIndex.getter();
      v42 = v19;
      v31 = v49;
      dispatch thunk of Collection.index(_:offsetBy:)();
      v32 = v47;
      v33 = *(v48 + 8);
      v34 = v33(v15, v47);
      MEMORY[0x1EEE9AC00](v34);
      v35 = v41;
      *(&v40 - 12) = v41;
      *(&v40 - 11) = a5;
      *(&v40 - 10) = a6;
      *(&v40 - 9) = v29;
      v36 = v43;
      *(&v40 - 8) = v46;
      *(&v40 - 7) = v36;
      *(&v40 - 6) = v30;
      *(&v40 - 5) = v31;
      *(&v40 - 4) = v45;
      *(&v40 - 3) = v28;
      v39 = v42;
      _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.replaceSubrange<A>(_:with:), (&v40 - 14), v37, v35, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
      return v33(v31, v32);
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _AsyncStreamCriticalStorage.value.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10[-v5];
  _swift_async_stream_lock_lock((v1 + ((*(v7 + 48) + 7) & 0x1FFFFFFF8)));
  (*(v4 + 16))(v6, v1 + *(*v1 + 88), v3);
  v11 = v1;
  v12 = a1;
  _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(v6, partial apply for closure #1 in _AsyncStreamCriticalStorage.value.setter, v10, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v8);
  return (*(v4 + 8))(v6, v3);
}

uint64_t _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1815F2A18()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void partial apply for closure #1 in AsyncStream.init(unfolding:onCancel:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc(80);
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  closure #1 in AsyncStream.init(unfolding:onCancel:)(a1, v5, v7, v6, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1815F2BC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async () -> (@out A?, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc(32);
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  return thunk for @escaping @callee_guaranteed @async () -> (@out A?, @error @owned Error)(a1, v7, v8, v6, a2);
}

void partial apply for closure #1 in AsyncThrowingStream.init<>(unfolding:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc(80);
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  closure #1 in AsyncThrowingStream.init<>(unfolding:)(a1, v6, v7, a2);
}

uint64_t partial apply for closure #1 in static AsyncStream.makeStream(of:bufferingPolicy:)(uint64_t *a1)
{
  v3 = *(v1 + 24);

  *v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t lazy protocol witness table accessor for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock()
{
  result = lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock;
  if (!lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuspendingClock and conformance SuspendingClock()
{
  result = lazy protocol witness table cache variable for type SuspendingClock and conformance SuspendingClock;
  if (!lazy protocol witness table cache variable for type SuspendingClock and conformance SuspendingClock)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock and conformance SuspendingClock);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A)(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc(32);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A)(a1, v4);
}

uint64_t associated type witness table accessor for AsyncIteratorProtocol.Failure : Error in AsyncCompactMapSequence<A, B>.Iterator(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t associated type witness table accessor for AsyncIteratorProtocol.Failure : Error in AsyncDropFirstSequence<A>.Iterator(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type JobPriority and conformance JobPriority()
{
  result = lazy protocol witness table cache variable for type JobPriority and conformance JobPriority;
  if (!lazy protocol witness table cache variable for type JobPriority and conformance JobPriority)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JobPriority and conformance JobPriority);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskPriority and conformance TaskPriority()
{
  result = lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority;
  if (!lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority;
  if (!lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnsafeCurrentTask and conformance UnsafeCurrentTask()
{
  result = lazy protocol witness table cache variable for type UnsafeCurrentTask and conformance UnsafeCurrentTask;
  if (!lazy protocol witness table cache variable for type UnsafeCurrentTask and conformance UnsafeCurrentTask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeCurrentTask and conformance UnsafeCurrentTask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContinuousClock.Instant and conformance ContinuousClock.Instant()
{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuspendingClock.Instant and conformance SuspendingClock.Instant()
{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant);
  }

  return result;
}

__n128 sub_1815F3844(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1815F3880(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t dispatch thunk of Executor.enqueue(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(a1, a2);
}

{
  return (*(a3 + 16))(a1, a2);
}

{
  return (*(a3 + 24))(a1, a2);
}

uint64_t dispatch thunk of SerialExecutor.enqueue(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))(a1, a2);
}

{
  return (*(a3 + 24))(a1, a2);
}

{
  return (*(a3 + 32))(a1, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for UnownedSerialExecutor(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for UnownedSerialExecutor(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
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

uint64_t *initializeBufferWithCopyOfBuffer for AsyncDropWhileSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v11 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v12 < 0xFFFFFFFFuLL)
    {
      *v11 = *v12;
      return a1;
    }

    v13 = *(v12 + 8);
    *v11 = *v12;
    *(v11 + 8) = v13;
  }

  return a1;
}

uint64_t destroy for AsyncDropWhileSequence.Iterator(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8) + 8;
  result = (*v4)(a1, AssociatedTypeWitness);
  if (*((a1 + *(v4 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t initializeWithCopy for AsyncDropWhileSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*v9 < 0xFFFFFFFFuLL)
  {
    *v8 = *v9;
  }

  else
  {
    v10 = *(v9 + 8);
    *v8 = *v9;
    *(v8 + 8) = v10;
  }

  return a1;
}

uint64_t assignWithCopy for AsyncDropWhileSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  if (*v8 < 0xFFFFFFFFuLL)
  {
    if (v10 >= 0xFFFFFFFF)
    {
      v12 = v9[1];
      *v8 = v10;
      v8[1] = v12;

      return a1;
    }

LABEL_7:
    *v8 = *v9;
    return a1;
  }

  if (v10 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  v11 = v9[1];
  *v8 = v10;
  v8[1] = v11;

  return a1;
}

uint64_t initializeWithTake for AsyncDropWhileSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 32) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  if (*v9 < 0xFFFFFFFF)
  {
    *v8 = *v9;
  }

  else
  {
    v11 = v9[1];
    *v8 = v10;
    *(v8 + 8) = v11;
  }

  return a1;
}

uint64_t assignWithTake for AsyncDropWhileSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 24) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  if (*v8 < 0xFFFFFFFFuLL)
  {
    if (v10 >= 0xFFFFFFFF)
    {
      v12 = v9[1];
      *v8 = v10;
      v8[1] = v12;
      return a1;
    }

LABEL_7:
    *v8 = *v9;
    return a1;
  }

  if (v10 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  v11 = v9[1];
  *v8 = v10;
  v8[1] = v11;

  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncDropWhileSequence.Iterator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFE)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for AsyncDropWhileSequence.Iterator(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v12 = a3 - v10 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v10)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v11) = 0;
  }

  else if (v15)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 < 0x7FFFFFFE)
  {
    v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v19 = 0;
      v19[1] = 0;
      *v19 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v19 = a2;
    }
  }

  else
  {
    v18 = *(v7 + 56);

    v18(a1, a2);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncFilterSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v11 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    v13 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v11;
    v13[1] = v12;
  }

  return a1;
}

uint64_t initializeWithCopy for AsyncFilterSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t assignWithCopy for AsyncFilterSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t initializeWithTake for AsyncFilterSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *((*(v6 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AsyncFilterSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *((*(v6 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncFilterSequence.Iterator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for AsyncFilterSequence.Iterator(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v12 = a3 - v10 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v10)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v11) = 0;
  }

  else if (v15)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 < 0x7FFFFFFF)
  {
    v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v19 = a2 & 0x7FFFFFFF;
      v19[1] = 0;
    }

    else
    {
      *v19 = (a2 - 1);
    }
  }

  else
  {
    v18 = *(v7 + 56);

    v18(a1, a2);
  }
}

uint64_t dispatch thunk of AsyncIteratorProtocol.next()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v10 = (v7 + *v7);
  v8 = swift_task_alloc(v7[1]);
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:);

  return v10(a1, a2, a3);
}

uint64_t _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 40);
  v16 = (v13 + *v13);
  v14 = swift_task_alloc(v13[1]);
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata completion function for AsyncCompactMapSequence.Iterator(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncCompactMapSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v11 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    v13 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v11;
    v13[1] = v12;
  }

  return a1;
}

uint64_t initializeWithCopy for AsyncCompactMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t assignWithCopy for AsyncCompactMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t initializeWithTake for AsyncCompactMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *((*(v6 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AsyncCompactMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *((*(v6 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncCompactMapSequence.Iterator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for AsyncCompactMapSequence.Iterator(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v12 = a3 - v10 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v10)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v11) = 0;
  }

  else if (v15)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 < 0x7FFFFFFF)
  {
    v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v19 = a2 & 0x7FFFFFFF;
      v19[1] = 0;
    }

    else
    {
      *v19 = (a2 - 1);
    }
  }

  else
  {
    v18 = *(v7 + 56);

    v18(a1, a2);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncDropFirstSequence(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for AsyncDropFirstSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for AsyncDropFirstSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for AsyncDropFirstSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AsyncDropFirstSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncDropFirstSequence(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for AsyncDropFirstSequence(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t type metadata completion function for AsyncDropFirstSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncDropFirstSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for AsyncDropFirstSequence.Iterator(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for AsyncDropFirstSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *((*(v6 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for AsyncDropFirstSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *((*(v6 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for AsyncDropFirstSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *((*(v6 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AsyncDropFirstSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *((*(v6 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncDropFirstSequence.Iterator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_25:
    v16 = *(v6 + 48);

    return v16(a1);
  }

  v8 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = a2 - v7 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v8)) == 0)
  {
LABEL_24:
    if (v7)
    {
      goto LABEL_25;
    }

    return 0;
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for AsyncDropFirstSequence.Iterator(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = ((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v12 = 0;
    v13 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (((*(v7 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = a3 - v8 + 1;
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

    v13 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(a1 + v9) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_30;
        }

        *(a1 + v9) = 0;
      }

      else if (v12)
      {
        *(a1 + v9) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return;
      }

LABEL_30:
      v16 = *(v7 + 56);

      v16(a1, a2);
      return;
    }
  }

  if (((*(v7 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((*(v7 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v15 = ~v8 + a2;
    bzero(a1, v9);
    *a1 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(a1 + v9) = v14;
    }

    else
    {
      *(a1 + v9) = v14;
    }
  }

  else if (v12)
  {
    *(a1 + v9) = v14;
  }
}

uint64_t type metadata completion function for AsyncThrowingDropWhileSequence.Iterator(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncThrowingDropWhileSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 18 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v11 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = *(v12 + 8);
    *v11 = *v12;
    *(v11 + 8) = v13;
    *(v11 + 16) = *(v12 + 16);
    *(v11 + 17) = *(v12 + 17);
  }

  return a1;
}

uint64_t initializeWithCopy for AsyncThrowingDropWhileSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 8);
  *v8 = *v9;
  *(v8 + 8) = v10;
  *(v8 + 16) = *(v9 + 16);
  *(v8 + 17) = *(v9 + 17);

  return a1;
}

uint64_t assignWithCopy for AsyncThrowingDropWhileSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 8);
  *v8 = *v9;
  *(v8 + 8) = v10;

  *(v8 + 16) = *(v9 + 16);
  *(v8 + 17) = *(v9 + 17);
  return a1;
}

uint64_t initializeWithTake for AsyncThrowingDropWhileSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 32) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  *(v8 + 16) = *(v9 + 16);
  *(v8 + 17) = *(v9 + 17);
  return a1;
}

uint64_t assignWithTake for AsyncThrowingDropWhileSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 24) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;

  *(v8 + 16) = *(v9 + 16);
  *(v8 + 17) = *(v9 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncThrowingDropWhileSequence.Iterator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v10 <= 3)
  {
    v11 = ((a2 - v8 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v11 = 2;
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
      v14 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v10);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v10);
    if (v10 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return v8 + (v17 | v16) + 1;
  }

  if (v13)
  {
    v14 = *(a1 + v10);
    if (*(a1 + v10))
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v7 < 0x7FFFFFFF)
  {
    v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  else
  {
    v18 = *(v6 + 48);

    return v18(a1);
  }
}

void storeEnumTagSinglePayload for AsyncThrowingDropWhileSequence.Iterator(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v10 >= a3)
  {
    v14 = 0;
    if (v10 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v11 <= 3)
    {
      v12 = ((a3 - v10 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v10 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v8 < 0x7FFFFFFF)
      {
        v18 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          *v18 = (a2 - 1);
        }
      }

      else
      {
        v17 = *(v7 + 56);

        v17(a1, a2);
      }

      return;
    }
  }

  v15 = ~v10 + a2;
  bzero(a1, v11);
  if (v11 <= 3)
  {
    v16 = HIWORD(v15) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    *(a1 + v11) = v16;
  }
}

uint64_t type metadata completion function for AsyncThrowingFilterSequence.Iterator(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncThrowingFilterSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v11 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = *(v12 + 8);
    *v11 = *v12;
    *(v11 + 8) = v13;
    *(v11 + 16) = *(v12 + 16);
  }

  return a1;
}

uint64_t destroy for AsyncFilterSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for AsyncThrowingFilterSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 8);
  *v8 = *v9;
  *(v8 + 8) = v10;
  *(v8 + 16) = *(v9 + 16);

  return a1;
}

uint64_t assignWithCopy for AsyncThrowingFilterSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 8);
  *v8 = *v9;
  *(v8 + 8) = v10;

  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t initializeWithTake for AsyncThrowingFilterSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 32) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t assignWithTake for AsyncThrowingFilterSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 24) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;

  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncThrowingFilterSequence.Iterator(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v10 <= 3)
  {
    v11 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v11 = 2;
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
      v14 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v10];
      if (!v14)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v10);
    if (v10 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return v8 + (v17 | v16) + 1;
  }

  if (v13)
  {
    v14 = a1[v10];
    if (a1[v10])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v7 < 0x7FFFFFFF)
  {
    v19 = *(&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  else
  {
    v18 = *(v6 + 48);

    return v18(a1);
  }
}

void storeEnumTagSinglePayload for AsyncThrowingFilterSequence.Iterator(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v10 >= a3)
  {
    v14 = 0;
    if (v10 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v11 <= 3)
    {
      v12 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v10 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v14)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v8 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          *v18 = (a2 - 1);
        }
      }

      else
      {
        v17 = *(v7 + 56);

        v17(a1, a2);
      }

      return;
    }
  }

  v15 = ~v10 + a2;
  bzero(a1, v11);
  if (v11 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v11] = v16;
  }
}

uint64_t type metadata completion function for AsyncFlatMapSequence(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AsyncFlatMapSequence.Iterator(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_getAssociatedTypeWitness();
  if (v6 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Optional();
    if (v7 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncFlatMapSequence.Iterator(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  if (*(v11 + 84))
  {
    v13 = *(v11 + 64);
  }

  else
  {
    v13 = *(v11 + 64) + 1;
  }

  v14 = v12 | *(v8 + 80) & 0xF8;
  if (v14 > 7 || ((*(v8 + 80) | *(v11 + 80)) & 0x100000) != 0 || v13 - ((-17 - (((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + v12)) | v12) > 0x18)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = (v17 + (((v14 | 7) + 16) & ~(v14 | 7)));
  }

  else
  {
    v18 = v10;
    (*(v8 + 16))(a1, a2, AssociatedTypeWitness);
    v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((a2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = v19 + 2;
    v23 = v20 + 2;
    v24 = *(v11 + 48);

    if (v24(v23, 1, v18))
    {
      memcpy(v22, v23, v13);
    }

    else
    {
      (*(v11 + 16))(v22, v23, v18);
      (*(v11 + 56))(v22, 0, 1, v18);
    }

    *(v22 + v13) = *(v23 + v13);
  }

  return a1;
}

uint64_t destroy for AsyncFlatMapSequence.Iterator(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 8;
  (*v6)(a1, AssociatedTypeWitness);
  v7 = (a1 + *(v6 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10 + 16;
  v14 = v9;
  result = (*(v9 + 48))(v11 & ~v10, 1, v8);
  if (!result)
  {
    v13 = *(v14 + 8);

    return v13(v11 & ~v10, v8);
  }

  return result;
}

uint64_t initializeWithCopy for AsyncFlatMapSequence.Iterator(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 16;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 48) + 7;
  v10 = ((v9 + a1) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + a2) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = ((v10 + v15 + 16) & ~v15);
  v17 = ((v11 + v15 + 16) & ~v15);
  v18 = *(v14 + 48);

  if (v18(v17, 1, v13))
  {
    v19 = *(v14 + 84);
    v20 = *(v14 + 64);
    if (v19)
    {
      v21 = *(v14 + 64);
    }

    else
    {
      v21 = v20 + 1;
    }

    memcpy(v16, v17, v21);
  }

  else
  {
    (*(v14 + 16))(v16, v17, v13);
    v23 = *(v14 + 56);
    v22 = v14 + 56;
    v23(v16, 0, 1, v13);
    v19 = *(v22 + 28);
    v20 = *(v22 + 8);
  }

  if (v19)
  {
    v24 = v20;
  }

  else
  {
    v24 = v20 + 1;
  }

  *(v16 + v24) = *(v17 + v24);
  return a1;
}

uint64_t assignWithCopy for AsyncFlatMapSequence.Iterator(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 24;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 40) + 7;
  v10 = ((v9 + a1) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + a2) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;

  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = ((v10 + v15 + 16) & ~v15);
  v17 = ((v11 + v15 + 16) & ~v15);
  v18 = *(v14 + 48);
  LODWORD(v10) = v18(v16, 1, v13);
  v19 = v18(v17, 1, v13);
  if (v10)
  {
    if (!v19)
    {
      (*(v14 + 16))(v16, v17, v13);
      (*(v14 + 56))(v16, 0, 1, v13);
      goto LABEL_12;
    }

    v20 = *(v14 + 84);
    v21 = *(v14 + 64);
  }

  else
  {
    if (!v19)
    {
      (*(v14 + 24))(v16, v17, v13);
      goto LABEL_12;
    }

    (*(v14 + 8))(v16, v13);
    v20 = *(v14 + 84);
    v21 = *(v14 + 64);
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  memcpy(v16, v17, v22);
LABEL_12:
  if (*(v14 + 84))
  {
    v23 = *(v14 + 64);
  }

  else
  {
    v23 = *(v14 + 64) + 1;
  }

  *(v16 + v23) = *(v17 + v23);
  return a1;
}

uint64_t initializeWithTake for AsyncFlatMapSequence.Iterator(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 32;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 32) + 7;
  v10 = ((v9 + a1) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = ((v10 + v14 + 16) & ~v14);
  v16 = ((v11 + v14 + 16) & ~v14);
  if ((*(v13 + 48))(v16, 1, v12))
  {
    v17 = *(v13 + 84);
    v18 = *(v13 + 64);
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 + 1;
    }

    memcpy(v15, v16, v19);
  }

  else
  {
    (*(v13 + 32))(v15, v16, v12);
    v21 = *(v13 + 56);
    v20 = v13 + 56;
    v21(v15, 0, 1, v12);
    v17 = *(v20 + 28);
    v18 = *(v20 + 8);
  }

  if (v17)
  {
    v22 = v18;
  }

  else
  {
    v22 = v18 + 1;
  }

  *(v15 + v22) = *(v16 + v22);
  return a1;
}

uint64_t assignWithTake for AsyncFlatMapSequence.Iterator(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 40;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 24) + 7;
  v10 = ((v9 + a1) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;

  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = ((v10 + v14 + 16) & ~v14);
  v16 = ((v11 + v14 + 16) & ~v14);
  v17 = *(v13 + 48);
  LODWORD(v10) = v17(v15, 1, v12);
  v18 = v17(v16, 1, v12);
  if (v10)
  {
    if (!v18)
    {
      (*(v13 + 32))(v15, v16, v12);
      (*(v13 + 56))(v15, 0, 1, v12);
      goto LABEL_12;
    }

    v19 = *(v13 + 84);
    v20 = *(v13 + 64);
  }

  else
  {
    if (!v18)
    {
      (*(v13 + 40))(v15, v16, v12);
      goto LABEL_12;
    }

    (*(v13 + 8))(v15, v12);
    v19 = *(v13 + 84);
    v20 = *(v13 + 64);
  }

  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 1;
  }

  memcpy(v15, v16, v21);
LABEL_12:
  if (*(v13 + 84))
  {
    v22 = *(v13 + 64);
  }

  else
  {
    v22 = *(v13 + 64) + 1;
  }

  *(v15 + v22) = *(v16 + v22);
  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncFlatMapSequence.Iterator(unsigned __int16 *a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v9 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v8 + 64);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  v19 = 1;
  if (!v12)
  {
    v19 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v15)
  {
    goto LABEL_32;
  }

  v20 = v19 + v18 + ((v17 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17);
  v21 = 8 * v20;
  if (v20 > 3)
  {
    goto LABEL_14;
  }

  v23 = ((a2 - v15 + ~(-1 << v21)) >> v21) + 1;
  if (HIWORD(v23))
  {
    v22 = *(a1 + v20);
    if (v22)
    {
      goto LABEL_21;
    }

LABEL_32:
    if (v9 == v15)
    {
      v25 = *(v8 + 48);

      return v25(a1, v9, AssociatedTypeWitness);
    }

    v27 = ((a1 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v14 & 0x80000000) == 0)
    {
      v28 = *v27;
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      return (v28 + 1);
    }

    if (v12 >= 2)
    {
      v29 = (*(v11 + 48))((v27 + v17 + 16) & ~v17);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v23 > 0xFF)
  {
    v22 = *(a1 + v20);
    if (*(a1 + v20))
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  if (v23 < 2)
  {
    goto LABEL_32;
  }

LABEL_14:
  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_32;
  }

LABEL_21:
  v24 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v24 = 0;
  }

  if (v20)
  {
    if (v20 > 3)
    {
      LODWORD(v20) = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        LODWORD(v20) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v20) = *a1;
      }
    }

    else if (v20 == 1)
    {
      LODWORD(v20) = *a1;
    }

    else
    {
      LODWORD(v20) = *a1;
    }
  }

  return v15 + (v20 | v24) + 1;
}

void storeEnumTagSinglePayload for AsyncFlatMapSequence.Iterator(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = 0;
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = *(v13 + 84);
  v15 = *(v10 + 64);
  if (v14)
  {
    v16 = v14 - 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v13 + 80);
  v18 = *(v13 + 64);
  if (v11 <= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v11;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (!v14)
  {
    ++v18;
  }

  v21 = v18 + ((v17 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17) + 1;
  if (a3 <= v20)
  {
    goto LABEL_23;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v20 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v22))
    {
      v12 = 4;
      if (v20 >= a2)
      {
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v12 = v23;
    }

    else
    {
      v12 = 0;
    }

LABEL_23:
    if (v20 >= a2)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  v12 = 1;
  if (v20 >= a2)
  {
LABEL_33:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_40;
      }

      *&a1[v21] = 0;
    }

    else if (v12)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    if (!a2)
    {
      return;
    }

LABEL_40:
    if (v11 == v20)
    {
      v27 = *(v10 + 56);

      v27(a1, a2, v11, AssociatedTypeWitness);
    }

    else
    {
      v28 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
      if ((v19 & 0x80000000) != 0)
      {
        if (v14 >= 2)
        {
          v29 = *(v13 + 56);

          v29((v28 + v17 + 16) & ~v17, (a2 + 1));
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v28 = a2 & 0x7FFFFFFF;
        v28[1] = 0;
      }

      else
      {
        *v28 = (a2 - 1);
      }
    }

    return;
  }

LABEL_24:
  v24 = ~v20 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v24;
    v25 = 1;
    if (v12 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v25 = (v24 >> (8 * v21)) + 1;
  if (!v21)
  {
LABEL_54:
    if (v12 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v26 = v24 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_54;
  }

  if (v21 == 2)
  {
    *a1 = v26;
    if (v12 > 1)
    {
LABEL_58:
      if (v12 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v12 > 1)
    {
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v12)
  {
    a1[v21] = v25;
  }
}

uint64_t type metadata completion function for AsyncCompactMapSequence(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AsyncThrowingCompactMapSequence.Iterator(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncThrowingCompactMapSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v11 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = *(v12 + 8);
    *v11 = *v12;
    *(v11 + 8) = v13;
    *(v11 + 16) = *(v12 + 16);
  }

  return a1;
}

uint64_t destroy for AsyncCompactMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for AsyncThrowingCompactMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 8);
  *v8 = *v9;
  *(v8 + 8) = v10;
  *(v8 + 16) = *(v9 + 16);

  return a1;
}

uint64_t assignWithCopy for AsyncThrowingCompactMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 8);
  *v8 = *v9;
  *(v8 + 8) = v10;

  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t initializeWithTake for AsyncThrowingCompactMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 32) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t assignWithTake for AsyncThrowingCompactMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 24) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;

  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncThrowingCompactMapSequence.Iterator(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v10 <= 3)
  {
    v11 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v11 = 2;
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
      v14 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v10];
      if (!v14)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v10);
    if (v10 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return v8 + (v17 | v16) + 1;
  }

  if (v13)
  {
    v14 = a1[v10];
    if (a1[v10])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v7 < 0x7FFFFFFF)
  {
    v19 = *(&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  else
  {
    v18 = *(v6 + 48);

    return v18(a1);
  }
}

void storeEnumTagSinglePayload for AsyncThrowingCompactMapSequence.Iterator(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v10 >= a3)
  {
    v14 = 0;
    if (v10 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v11 <= 3)
    {
      v12 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v10 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v14)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v8 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          *v18 = (a2 - 1);
        }
      }

      else
      {
        v17 = *(v7 + 56);

        v17(a1, a2);
      }

      return;
    }
  }

  v15 = ~v10 + a2;
  bzero(a1, v11);
  if (v11 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v11] = v16;
  }
}

uint64_t type metadata completion function for AsyncDropFirstSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncCompactMapSequence(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return v3;
}

uint64_t destroy for AsyncCompactMapSequence(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for AsyncCompactMapSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t assignWithCopy for AsyncCompactMapSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t initializeWithTake for AsyncCompactMapSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AsyncCompactMapSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncCompactMapSequence(_DWORD *a1, unsigned int a2, uint64_t a3)
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

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

_DWORD *storeEnumTagSinglePayload for AsyncCompactMapSequence(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t type metadata completion function for AsyncPrefixWhileSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_getAssociatedTypeWitness();
  if (v6 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncPrefixWhileSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64) + 7;
  if (v9 > 7 || (*(v8 + 80) & 0x100000) != 0 || ((v10 + ((v9 + 1) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v9 & 0xF8 ^ 0x1F8) & (v9 + 16)));
  }

  else
  {
    v14 = ~v9;
    *a1 = *a2;
    v15 = a1 + v9;
    v16 = a2 + v9;
    v17 = (v15 + 1) & v14;
    v18 = (v16 + 1) & v14;
    (*(v8 + 16))(v17, v18, AssociatedTypeWitness);
    v19 = ((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
    v20 = v19[1];
    v21 = ((v10 + v17) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v19;
    v21[1] = v20;
  }

  return a1;
}

uint64_t destroy for AsyncPrefixWhileSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))((a1 + *(*(AssociatedTypeWitness - 8) + 80) + 1) & ~*(*(AssociatedTypeWitness - 8) + 80), AssociatedTypeWitness);
}

_BYTE *initializeWithCopy for AsyncPrefixWhileSequence.Iterator(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = &a1[v10 + 1] & ~v10;
  v12 = &a2[v10 + 1] & ~v10;
  (*(v8 + 16))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 48) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;

  return a1;
}

_BYTE *assignWithCopy for AsyncPrefixWhileSequence.Iterator(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = &a1[v10 + 1] & ~v10;
  v12 = &a2[v10 + 1] & ~v10;
  (*(v8 + 24))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 40) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;

  return a1;
}

_BYTE *initializeWithTake for AsyncPrefixWhileSequence.Iterator(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = &a1[v10 + 1] & ~v10;
  v12 = &a2[v10 + 1] & ~v10;
  (*(v8 + 32))(v11, v12, AssociatedTypeWitness);
  *((*(v9 + 32) + 7 + v11) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 32) + 7 + v12) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_BYTE *assignWithTake for AsyncPrefixWhileSequence.Iterator(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = &a1[v10 + 1] & ~v10;
  v12 = &a2[v10 + 1] & ~v10;
  (*(v8 + 40))(v11, v12, AssociatedTypeWitness);
  *((*(v9 + 24) + 7 + v11) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 24) + 7 + v12) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncPrefixWhileSequence.Iterator(int *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v7 + 80);
  v12 = *(v7 + 64);
  if (!a2)
  {
    return 0;
  }

  v13 = v12 + 7;
  if (v10 >= a2)
  {
    goto LABEL_27;
  }

  v14 = ((v13 + ((v11 + 1) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v10 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_27;
      }
    }

LABEL_24:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v10 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  v23 = (a1 + v11 + 1) & ~v11;
  if (v9 < 0x7FFFFFFF)
  {
    v25 = *((v13 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }

  else
  {
    v24 = *(v8 + 48);

    return v24(v23);
  }
}

void storeEnumTagSinglePayload for AsyncPrefixWhileSequence.Iterator(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 64) + 7;
  v14 = ((v13 + ((v11 + 1) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v17 = 0;
    v18 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((v13 + ((v11 + 1) & ~v11)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a3 - v12 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v21 = (a1 + v11 + 1) & ~v11;
      if (v10 < 0x7FFFFFFF)
      {
        v23 = ((v13 + v21) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v23 = a2 & 0x7FFFFFFF;
          v23[1] = 0;
        }

        else
        {
          *v23 = (a2 - 1);
        }
      }

      else
      {
        v22 = *(v9 + 56);

        v22(v21, a2);
      }

      return;
    }
  }

  if (((v13 + ((v11 + 1) & ~v11)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((v13 + ((v11 + 1) & ~v11)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v20 = ~v12 + a2;
    bzero(a1, v14);
    *a1 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}

uint64_t getEnumTagSinglePayload for TaskPriority(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for TaskPriority(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TaskGroup.Iterator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskGroup.Iterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskGroup(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}