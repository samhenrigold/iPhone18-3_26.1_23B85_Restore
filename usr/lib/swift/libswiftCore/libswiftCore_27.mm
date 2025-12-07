uint64_t Collection._partitioningIndex(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v7 = v6;
  v45 = a1;
  v46 = a2;
  swift_getAssociatedTypeWitness(0, *(a4 + 8), a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v44 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v36 - v14;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v36 - v18;
  v20 = (*(a4 + 112))(a3, a4);
  v21 = *(a4 + 64);
  v50 = a5;
  v47 = a3;
  v48 = v5;
  result = v21(a3, a4);
  if (v20 >= 1)
  {
    v23 = *(a4 + 136);
    v40 = a4 + 80;
    v41 = v23;
    v38 = (v12 + 8);
    v39 = (v12 + 16);
    v24 = (v42 + 8);
    v42 = a4 + 136;
    v36[1] = a4 + 184;
    while (1)
    {
      v28 = v47;
      v41(v50, v20 >> 1, v47, a4);
      v29 = (*(a4 + 80))(v49, v19, v28, a4);
      v30 = v44;
      (*v39)(v15);
      v29(v49, 0);
      v31 = v45(v15);
      if (v7)
      {
        break;
      }

      v32 = v31;
      (*v38)(v15, v30);
      v33 = *v24;
      if (v32)
      {
        result = (v33)(v19, v43);
        v20 = v20 >> 1;
      }

      else
      {
        v37 = 0;
        v25 = v15;
        v26 = v43;
        v33(v50, v43);
        (*(a4 + 184))(v19, v47, a4);
        v27 = v26;
        v15 = v25;
        v7 = v37;
        result = (v33)(v19, v27);
        v20 += ~(v20 >> 1);
      }

      if (v20 <= 0)
      {
        return result;
      }
    }

    (*v38)(v15, v30);
    v34 = *v24;
    v35 = v43;
    (*v24)(v19, v43);
    return (v34)(v50, v35);
  }

  return result;
}

uint64_t Sequence.shuffled<A>(using:)(uint64_t a1, Class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v12 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  v23 = (*(a4 + 56))(a2, a4);
  swift_getAssociatedTypeWitness(255, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v16 = type metadata accessor for ContiguousArray(0, v13, v14, v15);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v16, v17);
  v20 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v16, v19);
  MutableCollection<>.shuffle<A>(using:)(a1, v16, a3, WitnessTable, v20, a5);
  return v23;
}

uint64_t specialized MutableCollection<>.shuffle<A>(using:)(uint64_t a1, Class *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v25 = v7;
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v23 - v14;
  v16 = *(v6 + 112);
  result = v16(a2, v6);
  if (result >= 2)
  {
    v18 = v16(a2, v6);
    (*(v6 + 64))(a2, v6);
    if (v18 <= 1)
    {
      v20 = *(v8 + 8);
    }

    else
    {
      v23[3] = a3 + 64;
      v23[4] = v24 + 32;
      v19 = (v8 + 8);
      v23[1] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v23[2] = v6 + 192;
      do
      {
        __buf = 0;
        swift_stdlib_random(&__buf, 8uLL);
        if (v18 > (__buf * v18))
        {
          v22 = -v18 % v18;
          while (v22 > __buf * v18)
          {
            __buf = 0;
            swift_stdlib_random(&__buf, 8uLL);
          }
        }

        (*(v24 + 32))(v15);
        (*(a3 + 64))(v15, v12, a2, a3);
        v20 = *v19;
        (*v19)(v12, v25);
        (*(v6 + 192))(v15, a2, v6);
      }

      while (v18-- > 2);
    }

    return (v20)(v15, v25);
  }

  return result;
}

uint64_t MutableCollection<>.shuffle<A>(using:)(uint64_t a1, Class *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a4;
  v45 = a5;
  v10 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v10, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v46 = v11;
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v43 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v32 - v17;
  v19 = *(v10 + 112);
  result = v19(a2, v10);
  if (result >= 2)
  {
    v33 = v12;
    v21 = v19(a2, v10);
    (*(v10 + 64))(a2, v10);
    if (v21 <= 1)
    {
      return (*(v33 + 8))(v18, v46);
    }

    else
    {
      v41 = v6;
      v42 = v18;
      v39 = v10;
      v40 = a2;
      v22 = *(a6 + 8);
      v36 = v44 + 64;
      v37 = v45 + 32;
      v34 = v10 + 192;
      v35 = (v33 + 8);
      v33 = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v38 = a3;
      for (i = v22(a3, a6); ; i = v22(a3, a6))
      {
        if (v21 > (i * v21))
        {
          v31 = -v21 % v21;
          if (v31 > i * v21)
          {
              ;
            }
          }
        }

        v47 = v21 - 1;
        v24 = a6;
        v25 = v42;
        v26 = v43;
        v27 = v40;
        (*(v45 + 32))(v42);
        (*(v44 + 64))(v25, v26, v27);
        v28 = *v35;
        v29 = v26;
        a6 = v24;
        a3 = v38;
        (*v35)(v29, v46);
        (*(v39 + 192))(v25, v27);
        v30 = v21 <= 2;
        v21 = v47;
        if (v30)
        {
          break;
        }
      }

      return v28(v42, v46);
    }
  }

  return result;
}

uint64_t Sequence.shuffled()(Class *a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v6 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v17 = (*(a2 + 56))(a1, a2);
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = type metadata accessor for ContiguousArray(0, v7, v8, v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v10, v11);
  v14 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v10, v13);
  specialized MutableCollection<>.shuffle<A>(using:)(v14, v10, WitnessTable, v14);
  return v17;
}

uint64_t == infix<A>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v21[1] = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v21 - v16;
  v18 = *(a4 + 24);
  v18(a3, a4);
  v18(a3, a4);
  LOBYTE(a5) = (*(a5 + 8))(v17, v14, v9, a5);
  v19 = *(v10 + 8);
  v19(v14, v9);
  v19(v17, v9);
  return a5 & 1;
}

BOOL != infix<A>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v21[1] = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v21 - v16;
  v18 = *(a4 + 24);
  v18(a3, a4);
  v18(a3, a4);
  LOBYTE(a5) = (*(a5 + 8))(v17, v14, v9, a5);
  v19 = *(v10 + 8);
  v19(v14, v9);
  v19(v17, v9);
  return (a5 & 1) == 0;
}

BOOL != infix<A>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[1] = a2;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v22 - v17;
  v19 = *(a5 + 24);
  v19(a3, a5);
  v19(a3, a5);
  LOBYTE(a6) = (*(a6 + 8))(v18, v15, v10, a6);
  v20 = *(v11 + 8);
  v20(v15, v10);
  v20(v18, v10);
  return (a6 & 1) == 0;
}

uint64_t RawRepresentable<>.hash(into:)(uint64_t a1, Class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  (*(a4 + 24))(a2, a4);
  (*(a5 + 24))(a1, v10, a5);
  return (*(v11 + 8))(v14, v10);
}

uint64_t ExpressibleByStringInterpolation<>.init(stringInterpolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v5[1] = a2;
  return (*(*(a4 + 8) + 32))(v5, a3);
}

Swift::Void __swiftcall ContiguousArray._makeMutableAndUnique()()
{
  v2 = v0;
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    *v1 = _ContiguousArrayBuffer._consumeAndCreateNew()(v3, *(v2 + 16));
  }
}

Swift::Void __swiftcall ContiguousArray._checkSubscript_native(_:)(Swift::Int a1)
{
  if (a1 < 0 || *(v1 + 16) <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

Swift::Void __swiftcall ContiguousArray._checkIndex(_:)(Swift::Int a1)
{
  if (*(v1 + 16) < a1 || a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

id ContiguousArray._owner.getter()
{
  _swift_displayCrashMessage();

  return swift_unknownObjectRetain(v0);
}

id protocol witness for _ArrayProtocol._owner.getter in conformance ContiguousArray<A>()
{
  _swift_displayCrashMessage();

  return swift_unknownObjectRetain(v0);
}

uint64_t protocol witness for _ArrayProtocol.init(_:) in conformance ContiguousArray<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for _ContiguousArrayBuffer(0, *(a2 + 16), a4, a5);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, v7, v8);
  result = Array.init<A>(_:)(a1, v10, v7, WitnessTable);
  *a3 = result;
  return result;
}

uint64_t protocol witness for _ArrayProtocol._buffer.getter in conformance ContiguousArray<A>@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t ContiguousArray.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0 || *(a2 + 16) <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a3 - 8);
  v6 = *(v5 + 16);
  v7 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1;

  return v6(a4, v7);
}

uint64_t key path setter for ContiguousArray.subscript(_:) : <A>ContiguousArray<A>A(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  return key path setter for Array.subscript(_:) : <A>[A]A(a1, a2, a3, a4, type metadata accessor for ContiguousArray, ContiguousArray.subscript.modify);
}

{
  return key path setter for Array.subscript(_:) : <A>[A]A(a1, a2, a3, a4, type metadata accessor for ContiguousArray, ContiguousArray.subscript.setter);
}

uint64_t key path setter for Array.subscript(_:) : <A>[A]A(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t), uint64_t (*a6)(_BYTE *, uint64_t, uint64_t))
{
  v8 = *(a3 + a4 - 8);
  v9 = *a3;
  v10 = a5(0, v8);
  v11 = a6(v14, v9, v10);
  (*(*(v8 - 8) + 24))(v12, a1, v8);
  return v11(v14, 0);
}

void (*ContiguousArray.subscript.modify(uint64_t a1, Swift::Int a2))()
{
  ContiguousArray._makeMutableAndUnique()();
  ContiguousArray._checkSubscript_mutating(_:)(a2);
  return _swift_displayCrashMessage;
}

uint64_t ContiguousArray.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  ContiguousArray._makeMutableAndUnique()();
  v7 = *v3;
  v8 = *(a3 + 16);
  ContiguousArray._checkSubscript_mutating(_:)(a2);
  v9 = *(v8 - 8);
  v10 = *(v9 + 40);
  v11 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2;

  return v10(v11, a1, v8);
}

id key path getter for ContiguousArray.subscript(_:) : <A>ContiguousArray<A>A@<X0>(uint64_t *a1@<X0>, Swift::Int *a2@<X1>, void *a4@<X8>)
{
  v5 = specialized ContiguousArray.subscript.getter(*a2, a2[1], *a1);
  *a4 = v5;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;

  return swift_unknownObjectRetain(v5);
}

uint64_t key path setter for Array.subscript(_:) : <A>[A]A(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t (*a6)(id, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a3;
  v8 = a3[1];
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = a5(0, *(a3 + a4 - 8));
  v14 = swift_unknownObjectRetain(v9);
  return a6(v14, v10, v11, v12, v7, v8, v13);
}

void ContiguousArray.subscript.setter(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, Swift::Int a5, Swift::Int a6, uint64_t a7)
{
  v15 = *v7;
  v16 = *(a7 + 16);
  ContiguousArray._checkIndex(_:)(a5);
  ContiguousArray._checkIndex(_:)(a6);
  ContiguousArray._checkIndex(_:)(a5);
  ContiguousArray._checkIndex(_:)(a6);
  if (a6 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v15 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * a5 != a2 + *(*(v16 - 8) + 72) * a3)
  {
    goto LABEL_3;
  }

  if ((a4 >> 1) < a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a5 == a3 && a4 >> 1 == a6)
  {

    swift_unknownObjectRelease(a1);
  }

  else
  {
LABEL_3:
    v22[0] = a1;
    v22[1] = a2;
    v22[2] = a3;
    v22[3] = a4;
    v19 = type metadata accessor for ArraySlice(0, v16, v17, v18);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v19, v20);
    ContiguousArray.replaceSubrange<A>(_:with:)(a5, a6, v22, a7, v19, WitnessTable);
  }
}

uint64_t ContiguousArray.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5, uint64_t a6)
{
  v7 = v6;
  v12 = *(a4 + 16);
  v86 = *(v12 - 1);
  v87 = a3;
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v15, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v95 = &v79 - v24;
  if (a1 < 0)
  {
    LODWORD(v77) = 0;
    v76 = 1360;
    LOBYTE(v75) = 2;
    goto LABEL_31;
  }

  if (*(*v7 + 16) < a2)
  {
    LODWORD(v77) = 0;
    v76 = 1363;
    LOBYTE(v75) = 2;
LABEL_31:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v93 = a2;
  v25 = __OFSUB__(a2, a1);
  v26 = a2 - a1;
  if (v25)
  {
    __break(1u);
    goto LABEL_33;
  }

  v82 = v14;
  v83 = v23;
  v27 = *(a6 + 112);
  v85 = a5;
  v96 = a6;
  v28 = v27(a5, a6);
  v29 = v28 - v26;
  if (__OFSUB__(v28, v26))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v80 = v21;
  v30 = v12;
  v81 = v17;
  v31 = *v7;
  v32 = *(*v7 + 16);
  v33 = v32 + v29;
  if (__OFADD__(v32, v29))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v34 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v7);
  *v7 = v31;
  if (!isUniquelyReferenced_nonNull_native || v33 > *(v31 + 24) >> 1)
  {
    if (v32 <= v33)
    {
      v36 = v32 + v29;
    }

    else
    {
      v36 = v32;
    }

    ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v36, 1);
    v31 = *v7;
  }

  if (v26 < 0)
  {
LABEL_35:
    LODWORD(v77) = 0;
    v76 = 1183;
    LOBYTE(v75) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v37 = v86;
  v38 = v31 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
  v39 = *(v86 + 72);
  v40 = v38 + v39 * a1;
  v94 = v39;
  v92 = v39 * v34;
  v84 = (v40 + v39 * v34);
  v41 = v30;
  swift_arrayDestroy(v40, v26, v30);
  v44 = v87;
  v45 = v85;
  if (!v29)
  {
    goto LABEL_17;
  }

  v46 = *(v31 + 16);
  if (__OFSUB__(v46, v93))
  {
    __break(1u);
    goto LABEL_37;
  }

  v42 = UnsafeMutablePointer.moveInitialize(from:count:)((v38 + v94 * v93), v46 - v93, v84, v41);
  v47 = *(v31 + 16);
  v25 = __OFADD__(v47, v29);
  v48 = v47 + v29;
  if (v25)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v31 + 16) = v48;
LABEL_17:
  if (v34 <= 0)
  {
    v74 = *(*(v45 - 1) + 8);

    return v74(v44, v45);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v42, v43);
    v51 = type metadata accessor for _ContiguousArrayBuffer(0, v41, v49, v50);
    *(&v79 - 6) = v51;
    *(&v79 - 5) = v45;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, v51, v52);
    v54 = v96;
    v75 = WitnessTable;
    v76 = v96;
    v77 = v34;
    v78 = v40;
    (*(*(v96 + 8) + 72))(v97, closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)partial apply, &v79 - 8, &unk_1EEEAC658, v45);
    if (v97[0])
    {
      v55 = v44;
      (*(v54 + 64))(v45, v54);
      v93 = v41;
      v56 = v82;
      v57 = v84;
      if (v92 >= 1)
      {
        v91 = *(v96 + 80);
        v92 = v96 + 80;
        v89 = *(v96 + 192);
        v90 = v96 + 192;
        v88 = (v37 + 16);
        v58 = (v37 + 32);
        do
        {
          v59 = v45;
          v60 = v55;
          v62 = v95;
          v61 = v96;
          v63 = v91(v97, v95, v59, v96);
          v64 = v93;
          (*v88)(v56);
          v63(v97, 0);
          (*v58)(v40, v56, v64);
          v40 += v94;
          v65 = v62;
          v55 = v60;
          v45 = v59;
          v89(v65, v59, v61);
        }

        while (v40 < v57);
      }

      v66 = v96;
      v67 = v80;
      (*(v96 + 72))(v45, v96);
      v68 = v83;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v66, v45, v83, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
      v70 = v95;
      v71 = (*(*(AssociatedConformanceWitness + 8) + 8))(v95, v67, v68);
      v72 = *(v81 + 8);
      v72(v67, v68);
      if (v71)
      {
        (*(*(v45 - 1) + 8))(v55, v45);
        return (v72)(v70, v68);
      }

LABEL_38:
      LODWORD(v77) = 0;
      v76 = 173;
      LOBYTE(v75) = 2;
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return (*(*(v45 - 1) + 8))(v44, v45);
  }
}

void (*ContiguousArray.subscript.modify(uint64_t **a1, Swift::Int a2, Swift::Int a3, uint64_t a4))(void ***a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x40, 0x952uLL);
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[6] = a4;
  v9[7] = v4;
  v9[4] = a2;
  v9[5] = a3;
  v11 = *v4;
  v12 = *(a4 + 16);
  ContiguousArray._checkIndex(_:)(a2);
  ContiguousArray._checkIndex(_:)(a3);
  if (a3 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
  *v10 = v11;
  v10[1] = v13;
  v10[2] = a2;
  v10[3] = (2 * a3) | 1;
  v11;
  return ContiguousArray.subscript.modify;
}

void Array.subscript.modify(void ***a1, char a2, void (*a3)(id, void *, void *, void *, void *, void *, void *))
{
  v4 = *a1;
  v5 = **a1;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[6];
  v11 = v4[4];
  v10 = v4[5];
  if (a2)
  {
    v12 = swift_unknownObjectRetain(v5);
    a3(v12, v6, v7, v8, v11, v10, v9);
    swift_unknownObjectRelease(*v4);
  }

  else
  {
    a3(v5, v4[1], v4[2], v4[3], v4[4], v4[5], v4[6]);
  }

  free(v4);
}

void protocol witness for MutableCollection.subscript.setter in conformance ContiguousArray<A>(uint64_t a1, Swift::Int *a2, uint64_t a3)
{
  v6 = *a2;
  ContiguousArray._makeMutableAndUnique()();
  v7 = *v3;
  v8 = *(a3 + 16);
  ContiguousArray._checkSubscript_mutating(_:)(v6);
  (*(*(v8 - 8) + 40))(v7 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v6, a1, v8);

  _swift_displayCrashMessage();
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance ContiguousArray<A>(void *a1, Swift::Int *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x28, 0xBD18uLL);
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = ContiguousArray.subscript.modify(v4, *a2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance ContiguousArray<A>(void *a1, uint64_t *a2, uint64_t a3))(void ***a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0xA638uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = v3;
  v7[5] = a3;
  v9 = *a2;
  v10 = a2[1];
  v8[6] = *a2;
  v8[7] = v10;
  v11 = specialized ContiguousArray.subscript.getter(v9, v10, *v3);
  *v8 = v11;
  v8[1] = v12;
  v8[2] = v13;
  v8[3] = v14;
  swift_unknownObjectRetain(v11);
  return protocol witness for MutableCollection.subscript.modify in conformance ContiguousArray<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance [A](void ***a1, char a2, void (*a3)(id, void *, void *, void *, void *, void *, void *))
{
  v4 = *a1;
  v5 = **a1;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v10 = v4[6];
  v9 = v4[7];
  v11 = v4[5];
  if (a2)
  {
    v12 = swift_unknownObjectRetain(v5);
    a3(v12, v6, v7, v8, v10, v9, v11);
    swift_unknownObjectRelease(*v4);
  }

  else
  {
    a3(v5, v4[1], v4[2], v4[3], v4[6], v4[7], v4[5]);
  }

  free(v4);
}

void *ContiguousArray._withUnsafeMutableBufferPointerIfSupported<A>(_:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v14 = a3;
  ContiguousArray._makeMutableAndUnique()();
  v9 = *(*v4 + 16);
  v13[0] = *v4 + ((*(*(*(a2 + 16) - 8) + 80) + 32) & ~*(*(*(a2 + 16) - 8) + 80));
  v10 = v13[0];
  v13[1] = v9;
  a1(v13);
  if (v5)
  {
    return _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tp5Tm(v13, v10, v9);
  }

  v12 = v14;
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tp5Tm(v13, v10, v9);
  return (*(*(v12 - 8) + 56))(a4, 0, 1, v12);
}

{
  return ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:)(a1, a2, a3, a4);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ContiguousArray<A>(void *a1, unint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x28, 0xD6C4uLL);
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  v5[4] = ContiguousArray.subscript.read(v5, *a2, *v2);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

void (*ContiguousArray.subscript.read(uint64_t a1, unint64_t a2, uint64_t a3))()
{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

id protocol witness for Collection.subscript.getter in conformance ContiguousArray<A>@<X0>(Swift::Int *a1@<X0>, void *a3@<X8>)
{
  v5 = specialized ContiguousArray.subscript.getter(*a1, a1[1], *v3);
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;

  return swift_unknownObjectRetain(v5);
}

uint64_t protocol witness for Collection.indices.getter in conformance ContiguousArray<A>@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X8>, uint64_t a3@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, a1, a3);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a2);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ContiguousArray<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t ContiguousArray._copyContents(initializing:)(char *__dst, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    if (!__dst || v5 > a2)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    UnsafeMutablePointer.initialize(from:count:)((a3 + ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80))), v5, __dst, a4);
  }

  return a3;
}

uint64_t ContiguousArray.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t (*a1)(unint64_t, void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = a1(a2 + ((*(*(a3 - 8) + 80) + 32) & ~*(*(a3 - 8) + 80)), *(a2 + 16));
  if (!v5)
  {
    return (*(*(a4 - 8) + 56))(a5, 0, 1, a4);
  }

  return result;
}

unint64_t Array._copyToContiguousArray()(unint64_t a1, unint64_t *a2)
{
  if (_swift_isClassOrObjCExistentialType(a2, a2))
  {
    if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
    {
      v12 = a1;
      v8 = type metadata accessor for Array(0, a2, v4, v5);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v8, v9);
      v11 = _copyCollectionToContiguousArray<A>(_:)(&v12, v8, WitnessTable);
      a1;
      return v11;
    }

    else
    {
      a1;
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
      a1;
      if (isClassOrObjCExistentialType)
      {
        return a1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        return a1;
      }
    }
  }

  else if (_swift_isClassOrObjCExistentialType(a2, a2))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    return a1;
  }
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance ContiguousArray<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Array._copyToContiguousArray()(a1, *(a2 + 16));
  *a3 = result;
  return result;
}

uint64_t Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = specialized Array.init(repeating:count:)(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v6;
}

__objc2_class **static ContiguousArray._allocateUninitialized(_:)(uint64_t a1, unint64_t *a2)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, a2);
  result[2] = a1;
  return result;
}

__objc2_class **ContiguousArray.init(_uninitializedCount:)(uint64_t a1, unint64_t *a2)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, a2);
  result[2] = a1;
  return result;
}

uint64_t specialized ContiguousArray._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2)
{
  return specialized ContiguousArray._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized ContiguousArray._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native(*v3);
  *v3 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {

    return a3();
  }

  return result;
}

uint64_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt32>, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5Tm, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String>, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5Tm, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:));
  *v3 = result;
  return result;
}

__objc2_class **specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(__objc2_class **a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<_DictionaryCodingKey>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized UnsafeMutablePointer.initialize(from:count:));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized UnsafeMutablePointer.initialize(from:count:));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, int64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t), void (*a8)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if ((v13 + 0x4000000000000000) < 0)
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

  v14 = *(a4 + 16);
  v15 = a6(v14, v13, a5);
  v16 = v15;
  if (v11)
  {
    a7(a4 + 32, v14, v15 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    a8(0, v14, v15 + 32, a4);
  }

  a4;
  return v16;
}

__objc2_class **specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(__objc2_class **result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      v11 = swift_allocObject(v10, (40 * v9 + 32), 7uLL);
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v8;
      v11[3] = (2 * ((v12 - 32) / 40));
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v11 + 32);
        *(a4 + 16) = 0;
LABEL_16:
        a4;
        return v11;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v8, v11 + 32, &_ss9CodingKey_pMd, _ss9CodingKey_pMR);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0);
    v11 = swift_allocObject(v10, (8 * v9 + 32), 7uLL);
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v11[2] = v8;
    v11[3] = ((2 * (v13 >> 3)) | 1);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = (a4 + 32);
  v15 = (v11 + 4);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v8, v15);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v14, v8, v15);
  }

  a4;
  return v11;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String>(0);
    v11 = swift_allocObject(v10, (16 * v9 + 32), 7uLL);
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v8;
    v11[3] = (2 * (v13 >> 4));
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = (a4 + 32);
  v15 = (v11 + 4);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v8, v15);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v14, v8, v15);
  }

  a4;
  return v11;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
    v11 = swift_allocObject(v10, (32 * v9 + 32), 7uLL);
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    v11[2] = v8;
    v11[3] = (2 * (v13 >> 5));
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = (a4 + 32);
  v15 = (v11 + 4);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v8, v15);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v14, v8, v15);
  }

  a4;
  return v11;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0);
    v11 = swift_allocObject(v10, (8 * v9 + 32), 7uLL);
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v11[2] = v8;
    v11[3] = ((2 * (v13 >> 3)) | 1);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = (a4 + 32);
  v15 = (v11 + 4);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v8, v15);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v14, v8, v15);
  }

  a4;
  return v11;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Character>();
    v11 = swift_allocObject(v10, (16 * v9 + 32), 7uLL);
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v8;
    v11[3] = (2 * (v13 >> 4));
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = (a4 + 32);
  v15 = (v11 + 4);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v8, v15);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v14, v8, v15);
  }

  a4;
  return v11;
}

__objc2_class **specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(__objc2_class **result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      v10 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Int8>();
      v11 = swift_allocObject(v10, (v9 + 32), 7uLL);
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v8;
      v11[3] = (2 * v12 - 64);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v11 + 32);
        *(a4 + 2) = 0;
LABEL_16:
        a4;
        return v11;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    specialized UnsafeMutablePointer.initialize(from:count:)(a4 + 32, v8, v11 + 32);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

__objc2_class **specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(__objc2_class **result, int64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, __objc2_class *, __objc2_class **), void (*a7)(uint64_t, __objc2_class *, __objc2_class **))
{
  v10 = result;
  if (a3)
  {
    v11 = *(a4 + 24);
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = *(a4 + 16);
  if (v12 <= v13)
  {
    v14 = *(a4 + 16);
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = a5(0);
    v16 = swift_allocObject(v15, (32 * v14 + 32), 7uLL);
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v13;
    v16[3] = (2 * (v18 >> 5));
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  v19 = a4 + 32;
  v20 = v16 + 4;
  if (v10)
  {
    a6(v19, v13, v20);
    *(a4 + 16) = 0;
  }

  else
  {
    a7(v19, v13, v20);
  }

  a4;
  return v16;
}

__objc2_class **_ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(__objc2_class **result, int64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 24);
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
    v12 = getContiguousArrayStorageType<A>(for:)(a5, a5);
    v13 = *(*(a5 - 1) + 72);
    v14 = *(*(a5 - 1) + 80);
    v15 = swift_allocObject(v12, (((v14 + *(v12 + 48)) & ~v14) + v13 * v11), v14 | *(v12 + 52));
    v16 = _swift_stdlib_malloc_size(v15);
    if (!v13 || ((v17 = v16 - ((v14 + 32) & ~v14), v17 == 0x8000000000000000) ? (v18 = v13 == -1) : (v18 = 0), v18))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v19 = v17 / v13;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a5, a5);
    v15[2] = v10;
    v15[3] = (isClassOrObjCExistentialType | (2 * v19));
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
  }

  v21 = (*(*(a5 - 1) + 80) + 32) & ~*(*(a5 - 1) + 80);
  v22 = (a4 + v21);
  v23 = v15 + v21;
  if (v7)
  {
    UnsafeMutablePointer.moveInitialize(from:count:)(v22, v10, v23, a5);
    *(a4 + 16) = 0;
  }

  else
  {
    UnsafeMutablePointer.initialize(from:count:)(v22, v10, v23, a5);
  }

  a4;
  return v15;
}

Swift::Void __swiftcall ContiguousArray._copyToNewBuffer(oldCount:)(Swift::Int oldCount)
{
  v13 = *v4;
  v6 = type metadata accessor for _ContiguousArrayBuffer(0, *(v1 + 16), v2, v3);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, v6, v7);
  v9 = _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(oldCount, oldCount + 1, v6, WitnessTable);
  v13 = v9;
  v10 = default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(v6, WitnessTable);
  v12 = v11;
  _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v13, oldCount, 0, v10, v11, v6, WitnessTable);
  v12;
  v9;
}

uint64_t specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(void, uint64_t, uint64_t))
{
  v2 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v2;
  if ((result & 1) == 0)
  {
    v4 = *(v2 + 16) + 1;

    return a1(0, v4, 1);
  }

  return result;
}

Swift::Void __swiftcall ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v0);
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16) + 1;

    ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 1);
  }
}

__objc2_class **specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(__objc2_class **result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), result + 1, 1);
  }

  return result;
}

Swift::Void __swiftcall ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(Swift::Int oldCount)
{
  v2 = *(*v1 + 24);
  if (oldCount + 1 > (v2 >> 1))
  {
    ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v2 > 1, oldCount + 1, 1);
  }
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v4 + 16) = result + 1;
  v5 = v4 + 16 * result;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  return result;
}

_OWORD *specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, _OWORD *a2)
{
  v3 = *v2;
  *(v3 + 16) = a1 + 1;
  return outlined init with take of Any(a2, (v3 + 32 * a1 + 32));
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = result + 1;
  *(v3 + 8 * result + 32) = a2;
  return result;
}

uint64_t ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v4 + 16) = a1 + 1;
  v5 = *(*(a3 + 16) - 8);
  return (*(v5 + 32))(v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1, a2);
}

uint64_t specialized ContiguousArray.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 24) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1);
    v3 = *v1;
    v8 = *(*v1 + 24) >> 1;
  }

  v10 = *(v3 + 16);
  v11 = v8 - v10;
  if (v8 - v10 < 0)
  {
LABEL_42:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = specialized Sequence._copySequenceContents(initializing:)(&v36, (v3 + 16 * v10 + 32), v11, a1);
  if (result < v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result)
  {
    v13 = *(v3 + 16);
    v14 = __OFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      __break(1u);
      return result;
    }

    *(v3 + 16) = v15;
  }

  v35 = v36;
  if (result == v11)
  {
    v16 = *(v3 + 16);
    v17 = v37;
    v18 = v39;
    if (v40)
    {
      v34 = v1;
      v19 = (v40 - 1) & v40;
      v20 = __clz(__rbit64(v40)) | (v39 << 6);
      v21 = (v38 + 64) >> 6;
    }

    else
    {
      v21 = (v38 + 64) >> 6;
      do
      {
        v22 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_40;
        }

        if (v22 >= v21)
        {
          goto LABEL_37;
        }

        v23 = *(v37 + 8 * v22);
        ++v18;
      }

      while (!v23);
      v34 = v1;
      v19 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) | (v22 << 6);
      v18 = v22;
    }

    v24 = (*(v36 + 48) + 16 * v20);
    v25 = *v24;
    v26 = v24[1];
    v39 = v18;
    v40 = v19;
    v26;
    while (1)
    {
LABEL_24:
      v27 = *(v3 + 24);
      if (v16 + 1 > (v27 >> 1))
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v16 + 1, 1);
      }

      v3 = *v34;
      v28 = *(*v34 + 24) >> 1;
      if (v16 < v28)
      {
        break;
      }

      *(v3 + 16) = v16;
    }

LABEL_29:
    v31 = (v3 + 32 + 16 * v16);
    *v31 = v25;
    v31[1] = v26;
    ++v16;
    if (v19)
    {
      goto LABEL_28;
    }

    v32 = v18;
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v21)
      {
        *(v3 + 16) = v16;
        v1 = v34;
        goto LABEL_37;
      }

      v19 = *(v17 + 8 * v33);
      ++v32;
      if (v19)
      {
        v18 = v33;
LABEL_28:
        v29 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v30 = (*(v35 + 48) + ((v18 << 10) | (16 * v29)));
        v25 = *v30;
        v26 = v30[1];
        v26;
        if (v16 != v28)
        {
          goto LABEL_29;
        }

        v16 = v28;
        *(v3 + 16) = v28;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_37:
  result = _sSh8IteratorV8_VariantOySS__GWOe_0(v35);
  *v1 = v3;
  return result;
}

void specialized ContiguousArray.append<A>(contentsOf:)(unint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 24) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1);
    v3 = *v1;
    v8 = *(*v1 + 24) >> 1;
  }

  v10 = *(v3 + 16);
  v11 = __OFSUB__(v8, v10);
  v12 = v8 - v10;
  if (v11)
  {
    goto LABEL_18;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (!*(a1 + 16))
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v12 < v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v2, (v3 + 16 * v10 + 32));
  if (v2)
  {
    v13 = *(v3 + 16);
    v11 = __OFADD__(v13, v2);
    v14 = v13 + v2;
    if (!v11)
    {
      *(v3 + 16) = v14;
      goto LABEL_16;
    }

    __break(1u);
LABEL_22:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_16:
  a1;
  *v1 = v3;
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
    goto LABEL_41;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 24) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1);
    v3 = *v1;
    v8 = *(*v1 + 24) >> 1;
  }

  v10 = *(v3 + 16);
  v11 = v8 - v10;
  if (v8 - v10 < 0)
  {
LABEL_41:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    if (!v2)
    {
      if (v8 == v10)
      {
        goto LABEL_18;
      }

LABEL_36:
      a1;
      goto LABEL_38;
    }

    goto LABEL_44;
  }

  if (v11 < v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v2, (v3 + 32 * v10 + 32));
  if (v2)
  {
    v13 = *(v3 + 16);
    v14 = __OFADD__(v13, v2);
    v15 = v13 + v2;
    if (!v14)
    {
      *(v3 + 16) = v15;
      goto LABEL_14;
    }

    __break(1u);
LABEL_44:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_14:
  if (v2 != v11)
  {
    goto LABEL_36;
  }

  v10 = *(v3 + 16);
LABEL_18:
  v25 = 0u;
  v26 = 0u;
  outlined init with copy of Any?(&v25, &v23);
  if (v24)
  {
    v16 = v12;
    do
    {
      outlined destroy of Any?(&v23);
      v18 = *(v3 + 24);
      if (v10 + 1 > (v18 >> 1))
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v10 + 1, 1);
      }

      v3 = *v1;
      v19 = *(*v1 + 24);
      outlined init with copy of Any?(&v25, &v21);
      if (v22)
      {
        if (v10 <= (v19 >> 1))
        {
          v17 = v19 >> 1;
        }

        else
        {
          v17 = v10;
        }

        v20 = (v3 + 32 * v10 + 32);
        while (1)
        {
          outlined init with take of Any(&v21, &v23);
          if (v17 == v10)
          {
            break;
          }

          outlined destroy of Any?(&v25);
          outlined init with take of Any(&v23, v20);
          if (v16 == v12)
          {
            v25 = 0u;
            v26 = 0u;
            v16 = v12;
          }

          else
          {
            if (v16 >= *(a1 + 16))
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            outlined init with copy of Any(a1 + 32 + 32 * v16++, &v25);
          }

          outlined init with copy of Any?(&v25, &v21);
          v20 += 2;
          ++v10;
          if (!v22)
          {
            goto LABEL_20;
          }
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v23);
        v10 = v17;
      }

      else
      {
LABEL_20:
        outlined destroy of Any?(&v21);
        v17 = v10;
      }

      *(v3 + 16) = v17;
      outlined init with copy of Any?(&v25, &v23);
    }

    while (v24);
  }

  outlined destroy of Any?(&v25);
  a1;
  outlined destroy of Any?(&v23);
LABEL_38:
  *v1 = v3;
}

uint64_t ContiguousArray.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v5 = v4;
  v72 = a2;
  v9 = *(a2 + 16);
  v78 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1, v9);
  v91 = v11;
  v92 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional(0, v11, v12, v13);
  v86 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v72 - v21;
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v72 - v25;
  v27 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v24, v28);
  v87 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v82 = v30;
  v73 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v83 = &v72 - v32;
  v33 = *(a4 + 40);
  v89 = a3;
  v90 = a1;
  v88 = a4;
  v34 = v33(a3, a4);
  v35 = *v5;
  v36 = *(*v5 + 16);
  v37 = v36 + v34;
  if (__OFADD__(v36, v34))
  {
    __break(1u);
    goto LABEL_32;
  }

  v85 = v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v35);
  *v5 = v35;
  if (!isUniquelyReferenced_nonNull_native || (v39 = *(v35 + 24) >> 1, v39 < v37))
  {
    if (v36 <= v37)
    {
      v40 = v37;
    }

    else
    {
      v40 = v36;
    }

    ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v40, 1);
    v35 = *v5;
    v39 = *(*v5 + 24) >> 1;
  }

  v41 = *(v35 + 16);
  v42 = v39 - v41;
  if (v39 - v41 < 0)
  {
LABEL_32:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v43 = *(v78 + 72);
  v75 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v84 = v43;
  v81 = v35 + v75 + v43 * v41;
  v44 = v89;
  (*(v27 + 16))(v87, v90, v89);
  v45 = *(v88 + 8);
  v46 = v81;
  v81 = v42;
  v47 = v45(v83, v46, v42, v44);
  if (v47 < v85)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v48 = v47;
  result = (*(v27 + 8))(v90, v44);
  v50 = v92;
  if (v48 >= 1)
  {
    v51 = *(v35 + 16);
    v52 = __OFADD__(v51, v48);
    v53 = v51 + v48;
    if (v52)
    {
      __break(1u);
      return result;
    }

    *(v35 + 16) = v53;
  }

  if (v48 != v81)
  {
    return (*(v73 + 8))(v83, v82);
  }

  v54 = *(v35 + 16);
  v55 = v82;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v88, v89, v82, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v57 = *(AssociatedConformanceWitness + 16);
  v80 = AssociatedConformanceWitness + 16;
  v81 = AssociatedConformanceWitness;
  v79 = v57;
  (v57)(v55);
  v58 = v86;
  v89 = *(v86 + 16);
  v90 = v86 + 16;
  (v89)(v22, v26, v14);
  v59 = v78;
  v87 = *(v78 + 48);
  v88 = (v78 + 48);
  v60 = (v87)(v22, 1, v91);
  v85 = *(v58 + 8);
  v86 = v58 + 8;
  if (v60 != 1)
  {
    v62 = (v59 + 32);
    v74 = (v59 + 8);
    v76 = v22;
    v77 = v5;
    do
    {
      v85(v22, v14);
      v78 = *v5;
      v64 = *(v78 + 24);
      v65 = v64 >> 1;
      if ((v64 >> 1) < v54 + 1)
      {
        ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v54 + 1, 1);
        v78 = *v5;
        v65 = *(v78 + 24) >> 1;
      }

      v66 = v14;
      (v89)(v18, v26, v14);
      if ((v87)(v18, 1, v91) == 1)
      {
        v67 = v91;
LABEL_30:
        v14 = v66;
        v85(v18, v66);
        v69 = v54;
      }

      else
      {
        v68 = *v62;
        if (v54 <= v65)
        {
          v69 = v65;
        }

        else
        {
          v69 = v54;
        }

        v70 = v78 + v75 + v84 * v54;
        v67 = v91;
        while (1)
        {
          v68(v50, v18, v67);
          if (v69 == v54)
          {
            break;
          }

          v85(v26, v66);
          v68(v70, v92, v67);
          ++v54;
          v79(v82, v81);
          v67 = v91;
          v50 = v92;
          (v89)(v18, v26, v66);
          v71 = (v87)(v18, 1, v67);
          v70 += v84;
          if (v71 == 1)
          {
            goto LABEL_30;
          }
        }

        (*v74)(v50, v67);
        v54 = v69;
        v14 = v66;
      }

      *(v78 + 16) = v69;
      v22 = v76;
      (v89)(v76, v26, v14);
      v63 = (v87)(v22, 1, v67);
      v5 = v77;
    }

    while (v63 != 1);
  }

  v61 = v85;
  v85(v26, v14);
  (*(v73 + 8))(v83, v82);
  return v61(v22, v14);
}

Swift::Void __swiftcall ContiguousArray.reserveCapacityForAppend(newElementsCount:)(Swift::Int newElementsCount)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = v3 + newElementsCount;
  if (__OFADD__(v3, newElementsCount))
  {
    __break(1u);
LABEL_12:
    if (v3 <= v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_8;
  }

  LODWORD(newElementsCount) = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v2;
  if (newElementsCount)
  {
    if (v4 <= *(v2 + 24) >> 1)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

LABEL_8:

  ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(newElementsCount, v5, 1);
}

uint64_t ContiguousArray._customRemoveLast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ContiguousArray._makeMutableAndUnique()();
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (!v6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = v6 - 1;
  v8 = *(a1 + 16);
  v11 = *(v8 - 8);
  (*(v11 + 32))(a2, v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * (v6 - 1), v8);
  *(v5 + 16) = v7;
  v9 = *(v11 + 56);

  return v9(a2, 0, 1, v8);
}

char *ContiguousArray.remove(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ContiguousArray._makeMutableAndUnique()();
  v7 = *v3;
  v8 = *(*v3 + 16);
  if (v8 <= a1 || a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = *(a2 + 16);
  v10 = *(v9 - 1);
  v11 = *(v10 + 72);
  v12 = (v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1);
  (*(v10 + 32))(a3, v12, v9);
  result = UnsafeMutablePointer.moveInitialize(from:count:)(&v12[v11], v8 - 1 - a1, v12, v9);
  *(v7 + 16) = v8 - 1;
  return result;
}

uint64_t ContiguousArray.insert(_:at:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for CollectionOfOne(0, v7, a3, a4);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  ContiguousArray._checkIndex(_:)(a2);
  (*(*(v7 - 8) + 32))(v11, a1, v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v8, v12);
  return ContiguousArray.replaceSubrange<A>(_:with:)(a2, a2, v11, a3, v8, WitnessTable);
}

Swift::Void __swiftcall ContiguousArray.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v4 = *v2;
  if (keepingCapacity)
  {
    v5 = v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4);
    v8 = *v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v19[2] = *v2;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v5, v7);
      RandomAccessCollection<>.indices.getter(v5, WitnessTable, &protocol witness table for Int, v19);
      v10 = v19[0];
      v11 = v19[1];
      v14 = type metadata accessor for EmptyCollection(0, *(v5 + 16), v12, v13);
      v16 = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v14, v15);
      ContiguousArray.replaceSubrange<A>(_:with:)(v10, v11, v17, v5, v14, v16);
    }

    else
    {
      v18 = _ContiguousArrayBuffer.init(_uninitializedCount:minimumCapacity:)(0, *(v8 + 24) >> 1, *(v5 + 16));
      v8;
      *v2 = v18;
    }
  }

  else
  {
    v4;
    *v2 = &_swiftEmptyArrayStorage;
  }
}

uint64_t _ContiguousArrayBuffer.requestNativeBuffer()()
{
  _swift_displayCrashMessage();

  return v0;
}

uint64_t protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance ContiguousArray<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a3 + 16);
  v7 = specialized Array.init(repeating:count:)(a1, a2, v6, static ContiguousArray._allocateUninitialized(_:));
  result = (*(*(v6 - 8) + 8))(a1, v6);
  *a4 = v7;
  return result;
}

uint64_t ContiguousArray.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v35 = a1;
  v7 = type metadata accessor for ContiguousArray(0, a2, a4, a5);
  v32[0] = 0;
  v32[1] = 0;
  a1;
  v8 = static Mirror._superclassIterator<A>(_:_:)(&v35, v32, v7);
  v10 = v9;
  v11 = swift_allocObject(&unk_1EEEADDB8, 0x28, 7uLL);
  v11[2] = v7;
  v11[3] = v7;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v7, v12);
  v11[4] = WitnessTable;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
  v16 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v7, v15);
  v17 = type metadata accessor for LazyMapSequence(255, v7, v14, v16);
  v34 = WitnessTable;
  v18 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v17, &v34);
  v20 = type metadata accessor for _CollectionBox(0, v17, v18, v19);
  v21 = swift_allocObject(v20, 0x48, 7uLL);
  v21[6] = a1;
  v21[7] = closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)partial apply;
  v21[8] = v11;
  v22 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v23 = swift_allocObject(v22, 0x18, 7uLL);
  v23[2] = 0;
  v24 = *(a1 + 16);
  v25 = swift_allocObject(v22, 0x18, 7uLL);
  v25[2] = v24;
  v21[2] = v23;
  v21[3] = &protocol witness table for _IndexBox<A>;
  v21[4] = v25;
  v21[5] = &protocol witness table for _IndexBox<A>;
  v33 = a1;
  a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v32, &v33, v7, v26, 6uLL, v27, v28, v29, v32[0]);
  v31 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  *a3 = v7;
  *(a3 + 8) = v21;
  *(a3 + 16) = 5;
  *(a3 + 24) = v8;
  *(a3 + 32) = v10;
  *(a3 + 40) = v31;
  return result;
}

uint64_t ContiguousArray.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v97 - v9;
  0xE000000000000000;
  v11 = 91;
  v12 = 0xE100000000000000;
  v108 = 91;
  v109 = 0xE100000000000000;
  v13 = *(a1 + 16);
  if (!v13)
  {
LABEL_62:
    v24 = HIBYTE(v12) & 0xF;
    v22 = v11 & 0xFFFFFFFFFFFFLL;
    if ((v12 & 0x2000000000000000) != 0)
    {
      v61 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v61 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v61 && (v11 & ~v12 & 0x2000000000000000) == 0)
    {
      v12;
      return 93;
    }

    if ((v12 & 0x2000000000000000) != 0 && v24 != 15)
    {
      if (v24 < 8)
      {
        v11 = ((-255 << (8 * (HIBYTE(v12) & 7u))) - 1) & v11 | (93 << (8 * (HIBYTE(v12) & 7u)));
      }

      goto LABEL_71;
    }

    0xE100000000000000;
    if ((v12 & 0x1000000000000000) != 0)
    {
      goto LABEL_123;
    }

    v34 = __OFADD__(v61, 1);
    v63 = v61 + 1;
    if (!v34)
    {
      goto LABEL_74;
    }

    goto LABEL_125;
  }

  v15 = *(v4 + 16);
  v14 = v4 + 16;
  v105 = v15;
  v12 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v16 = *(v14 + 56);
  v17 = (v14 + 16);
  v18 = 1;
  v104 = xmmword_18071DB30;
  v99 = xmmword_18071DB40;
  v102 = v7;
  v103 = v14;
  v100 = v16;
  v101 = v10;
  v15(v10, v12, a2);
  while (1)
  {
    v22 = *v17;
    (*v17)(v7, v10, a2);
    if ((v18 & 1) == 0)
    {
      break;
    }

LABEL_6:
    v19 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
    inited = swift_initStackObject(v19, v107);
    *(inited + 1) = v104;
    inited[7] = a2;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
    (v22)(boxed_opaque_existential_0Tm, v7, a2);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v108);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
    v18 = 0;
    v12 += v16;
    if (!--v13)
    {
      v11 = v108;
      v12 = v109;
      goto LABEL_62;
    }

    v105(v10, v12, a2);
  }

  v23 = v108;
  v11 = v109;
  v24 = HIBYTE(v109) & 0xF;
  v25 = v108 & 0xFFFFFFFFFFFFLL;
  if ((v109 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v109) & 0xF;
  }

  else
  {
    v26 = v108 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26 && (v108 & ~v109 & 0x2000000000000000) == 0)
  {
    v109;
    v108 = 8236;
    v109 = 0xE200000000000000;
    goto LABEL_4;
  }

  if ((v109 & 0x2000000000000000) != 0 && v24 <= 0xD)
  {
    v27 = 8 * (HIBYTE(v109) & 7);
    v28 = (-255 << v27) - 1;
    v29 = 44 << v27;
    v30 = v24 + 1;
    if (v24 >= 8)
    {
      v32 = v28 & v109 | v29;
      v31 = 8 * (v30 & 7);
      v10 = v101;
    }

    else
    {
      v23 = v28 & v108 | v29;
      v10 = v101;
      if (v24 != 7)
      {
        v23 = ((-255 << (8 * (v30 & 7u))) - 1) & v23 | (32 << (8 * (v30 & 7u)));
        v53 = v109;
        goto LABEL_47;
      }

      v31 = 0;
      v32 = v109;
    }

    v53 = ((-255 << v31) - 1) & v32 | (32 << v31);
LABEL_47:
    v109;
    0xE200000000000000;
    v54 = 0xE000000000000000;
    if (v23 & 0x8080808080808080 | v53 & 0x80808080808080)
    {
      v54 = 0xA000000000000000;
    }

    v108 = v23;
    v109 = (v54 & 0xFF00000000000000 | (v24 << 56) | v53 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v7 = v102;
    goto LABEL_5;
  }

  0xE200000000000000;
  if ((v11 & 0x1000000000000000) == 0)
  {
    v34 = __OFADD__(v26, 2);
    v35 = v26 + 2;
    if (v34)
    {
      goto LABEL_122;
    }

LABEL_21:
    if ((v23 & ~v11 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
    {
      v36 = _StringGuts.nativeUnusedCapacity.getter(v23, v11);
      if (v37)
      {
        goto LABEL_132;
      }

      if (v35 <= 15)
      {
        if ((v11 & 0x2000000000000000) == 0)
        {
          if (v36 < 2)
          {
            goto LABEL_27;
          }

          goto LABEL_3;
        }

LABEL_33:
        v39 = v11;
LABEL_34:
        v40 = 0xE200000000000000;
        0xE200000000000000;
        v41._rawBits = 131073;
        v42._rawBits = 1;
        v43._rawBits = _StringGuts.validateScalarRange(_:)(v42, v41, 0x202CuLL, 0xE200000000000000)._rawBits;
        if (v43._rawBits < 0x10000)
        {
          v43._rawBits |= 3;
        }

        if (v43._rawBits >> 16 || (v46 = 8236, (v44._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
        {
          v46 = specialized static String._copying(_:)(v43._rawBits, v44, 0x202CuLL, 0xE200000000000000);
          v40 = v47;
          0xE200000000000000;
        }

        if ((v40 & 0x2000000000000000) != 0)
        {
          v40;
        }

        else if ((v40 & 0x1000000000000000) != 0)
        {
          v46 = _StringGuts._foreignConvertedToSmall()(v46, v40);
          v98 = v60;
          v40;
          v40 = v98;
        }

        else
        {
          if ((v46 & 0x1000000000000000) != 0)
          {
            v57 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v58 = v46 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = _StringObject.sharedUTF8.getter(v46, v40);
          }

          closure #1 in _StringGuts._convertedToSmall()(v57, v58, &v106, v45);
          v40;
          v40 = *(&v106 + 1);
          v46 = v106;
        }

        v48 = specialized _SmallString.init(_:appending:)(v23, v39, v46, v40);
        if (v50)
        {
          goto LABEL_132;
        }

        v51 = v48;
        v52 = v49;
        v11;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v108 = v51;
        v109 = v52;
        goto LABEL_4;
      }
    }

    else if (v35 <= 15)
    {
      if ((v11 & 0x2000000000000000) == 0)
      {
LABEL_27:
        if ((v11 & 0x1000000000000000) != 0)
        {
          v23 = _StringGuts._foreignConvertedToSmall()(v23, v11);
          v39 = v55;
        }

        else
        {
          if ((v23 & 0x1000000000000000) != 0)
          {
            v38 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v38 = _StringObject.sharedUTF8.getter(v23, v11);
            v25 = v59;
          }

          closure #1 in _StringGuts._convertedToSmall()(v38, v25, &v106, v33);
          v39 = *(&v106 + 1);
          v23 = v106;
        }

        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_3:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v35, 2);
    v106 = v99;
    0xE200000000000000;
    _StringGuts.appendInPlace(_:isASCII:)(&v106, 2uLL, 1);
    0xE200000000000000;
LABEL_4:
    v7 = v102;
    v10 = v101;
LABEL_5:
    v16 = v100;
    goto LABEL_6;
  }

  v56 = String.UTF8View._foreignCount()();
  v35 = v56 + 2;
  if (!__OFADD__(v56, 2))
  {
    goto LABEL_21;
  }

LABEL_122:
  __break(1u);
LABEL_123:
  v90 = String.UTF8View._foreignCount()();
  v63 = v90 + 1;
  if (__OFADD__(v90, 1))
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

LABEL_74:
  v64 = v11 & ~v12;
  if ((v64 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v12 & 0xFFFFFFFFFFFFFFFLL))
  {
    v65 = _StringGuts.nativeUnusedCapacity.getter(v11, v12);
    if ((v66 & 1) == 0)
    {
      if (v63 > 15)
      {
        goto LABEL_85;
      }

      if ((v12 & 0x2000000000000000) == 0)
      {
        if (v65 < 1)
        {
          goto LABEL_80;
        }

LABEL_85:
        v68 = v64 & 0x2000000000000000;
        v69 = _StringGuts.nativeUnusedCapacity.getter(v11, v12);
        if ((v70 & 1) == 0 && v69 > 0)
        {
          if (v68 && swift_isUniquelyReferenced_nonNull_native(v12 & 0xFFFFFFFFFFFFFFFLL))
          {
LABEL_99:
            v106 = xmmword_18071DB50;
            closure #1 in _StringGuts.append(_:)(&v106, 1uLL, &v108, 1);
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            return v108;
          }

LABEL_98:
          _StringGuts.grow(_:)(v63);
          goto LABEL_99;
        }

        if (v68)
        {
          swift_isUniquelyReferenced_nonNull_native(v12 & 0xFFFFFFFFFFFFFFFLL);
        }

        v71 = _StringGuts.nativeCapacity.getter(v11, v12);
        if (v72)
        {
          v73 = 0;
        }

        else
        {
          v73 = v71;
        }

        if (v73 + 0x4000000000000000 >= 0)
        {
          v74 = 2 * v73;
          if (v74 > v63)
          {
            v63 = v74;
          }

          goto LABEL_98;
        }

        __break(1u);
LABEL_131:
        v67 = _StringObject.sharedUTF8.getter(v11, v12);
        v22 = v94;
        goto LABEL_83;
      }

LABEL_101:
      v63 = v12;
      goto LABEL_102;
    }

LABEL_132:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v63 > 15)
  {
    goto LABEL_85;
  }

  if ((v12 & 0x2000000000000000) != 0)
  {
    goto LABEL_101;
  }

LABEL_80:
  if ((v12 & 0x1000000000000000) != 0)
  {
    v11 = _StringGuts._foreignConvertedToSmall()(v11, v12);
    v63 = v89;
  }

  else
  {
    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_131;
    }

    v67 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_83:
    closure #1 in _StringGuts._convertedToSmall()(v67, v22, &v106, v62);
    v63 = *(&v106 + 1);
    v11 = v106;
  }

LABEL_102:
  v22 = 0xE100000000000000;
  0xE100000000000000;
  v24 = 93;
  v75._rawBits = 1;
  v76._rawBits = 65537;
  v77._rawBits = _StringGuts.validateScalarRange(_:)(v75, v76, 0x5DuLL, 0xE100000000000000)._rawBits;
  if (v77._rawBits < 0x10000)
  {
    v77._rawBits |= 3;
  }

  if (v77._rawBits >> 16 || (v78._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
  {
    v24 = specialized static String._copying(_:)(v77._rawBits, v78, 0x5DuLL, 0xE100000000000000);
    v22 = v79;
    0xE100000000000000;
  }

  if ((v22 & 0x2000000000000000) != 0)
  {
    v22;
    goto LABEL_109;
  }

LABEL_126:
  v91 = v11;
  if ((v22 & 0x1000000000000000) != 0)
  {
    v24 = _StringGuts._foreignConvertedToSmall()(v24, v22);
    v96 = v95;
    v22;
    v22 = v96;
    v11 = v91;
  }

  else
  {
    if ((v24 & 0x1000000000000000) != 0)
    {
      v92 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v93 = v24 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v92 = _StringObject.sharedUTF8.getter(v24, v22);
    }

    closure #1 in _StringGuts._convertedToSmall()(v92, v93, &v106, v62);
    v22;
    v22 = *(&v106 + 1);
    v24 = v106;
  }

LABEL_109:
  v80 = HIBYTE(v63) & 0xF;
  v81 = HIBYTE(v22) & 0xF;
  if (v81 + v80 > 0xF)
  {
    goto LABEL_132;
  }

  0xE100000000000000;
  if (v81)
  {
    v82 = 0;
    v83 = 0;
    v84 = 8 * v80;
    do
    {
      v85 = v22 >> (v82 & 0x38);
      if (v83 < 8)
      {
        v85 = v24 >> v82;
      }

      v86 = (v85 << (v84 & 0x38)) | ((-255 << (v84 & 0x38)) - 1) & v63;
      v87 = (v85 << v84) | ((-255 << v84) - 1) & v11;
      if (v80 <= 7)
      {
        v11 = v87;
      }

      else
      {
        v63 = v86;
      }

      ++v80;
      v84 += 8;
      v82 += 8;
      ++v83;
    }

    while (8 * v81 != v82);
  }

LABEL_71:
  v12;
  0xE100000000000000;
  return v11;
}

uint64_t ContiguousArray.debugDescription.getter(char *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v183 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v188 = &v180 - v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ContiguousArray", 0xFuLL, 1);
  countAndFlagsBits = v9._countAndFlagsBits;
  object = v9._object;
  v193 = 0;
  v194 = 0xE000000000000000;
  v12 = _StringGuts.init(_initialCapacity:)(4);
  v14 = v12;
  v15 = v13;
  *&v192 = v12;
  *(&v192 + 1) = v13;
  v16 = HIBYTE(v13) & 0xF;
  v17 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v18 = v12 & 0xFFFFFFFFFFFFLL;
  }

  v184 = v4;
  if (!v18 && (v12 & ~v13 & 0x2000000000000000) == 0)
  {
    v13;
    v14 = 0;
    v28 = 0xE000000000000000;
    *&v192 = 0;
LABEL_21:
    *(&v192 + 1) = v28;
    goto LABEL_37;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    v13;
    0xE000000000000000;
    v27 = 0xA000000000000000;
    if (!(v15 & 0x80808080808080 | v14 & 0x8080808080808080))
    {
      v27 = 0xE000000000000000;
    }

    v28 = v27 & 0xFF00000000000000 | (v16 << 56) | v15 & 0xFFFFFFFFFFFFFFLL;
    *&v192 = v14;
    goto LABEL_21;
  }

  0xE000000000000000;
  v20 = v17;
  if ((v15 & 0x1000000000000000) != 0)
  {
    v20 = String.UTF8View._foreignCount()();
    if ((v14 & 0x2000000000000000) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((v14 & 0x2000000000000000) == 0)
  {
    goto LABEL_34;
  }

  if (swift_isUniquelyReferenced_nonNull_native(v15 & 0xFFFFFFFFFFFFFFFLL))
  {
    v21 = _StringGuts.nativeUnusedCapacity.getter(v14, v15);
    if (v22)
    {
      goto LABEL_230;
    }

    if (v20 <= 15 && (v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (v20 <= 15)
  {
LABEL_13:
    if ((v15 & 0x1000000000000000) != 0)
    {
      v24 = _StringGuts._foreignConvertedToSmall()(v14, v15);
      v25 = v29;
    }

    else
    {
      if ((v14 & 0x1000000000000000) != 0)
      {
        v23 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v23 = _StringObject.sharedUTF8.getter(v14, v15);
        v17 = v169;
      }

      closure #1 in _StringGuts._convertedToSmall()(v23, v17, &v189, v19);
      v24 = v189;
      v25 = v190;
    }

    v30 = 0xE000000000000000;
    0xE000000000000000;
    v31._rawBits = 1;
    v32._rawBits = 1;
    v33._rawBits = _StringGuts.validateScalarRange(_:)(v31, v32, 0, 0xE000000000000000)._rawBits;
    if (v33._rawBits < 0x10000)
    {
      v33._rawBits |= 3;
    }

    if (v33._rawBits >> 16 || v34._rawBits >= 0x10000)
    {
      v36 = specialized static String._copying(_:)(v33._rawBits, v34, 0, 0xE000000000000000);
      v30 = v37;
      0xE000000000000000;
    }

    else
    {
      v36 = 0;
    }

    if ((v30 & 0x2000000000000000) != 0)
    {
      v30;
    }

    else if ((v30 & 0x1000000000000000) != 0)
    {
      v36 = _StringGuts._foreignConvertedToSmall()(*&v36, v30);
      v177 = v176;
      v30;
      v30 = v177;
    }

    else
    {
      if ((*&v36 & 0x1000000000000000) != 0)
      {
        v164 = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v165 = *&v36 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v164 = _StringObject.sharedUTF8.getter(*&v36, v30);
      }

      closure #1 in _StringGuts._convertedToSmall()(v164, v165, &v189, v35);
      v30;
      v36 = v189;
      v30 = v190;
    }

    v38 = specialized _SmallString.init(_:appending:)(*&v24, v25, *&v36, v30);
    if (v40)
    {
      goto LABEL_230;
    }

    v14 = v38;
    v28 = v39;
    v15;
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    *&v192 = v14;
    *(&v192 + 1) = v28;
    goto LABEL_36;
  }

LABEL_35:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v20, 0);
  v189 = 0;
  v190 = 0;
  closure #1 in _StringGuts.append(_:)(&v189, 0, &v192, 1);
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
  v28 = *(&v192 + 1);
  v14 = v192;
LABEL_36:
  countAndFlagsBits = v9._countAndFlagsBits;
LABEL_37:
  v41 = HIBYTE(v28) & 0xF;
  v42 = v14 & 0xFFFFFFFFFFFFLL;
  if ((v28 & 0x2000000000000000) != 0)
  {
    v43 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v43 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43 && (v14 & ~v28 & 0x2000000000000000) == 0)
  {
    v9._object;
    v28;
    *&v192 = countAndFlagsBits;
    *(&v192 + 1) = v9._object;
    goto LABEL_97;
  }

  LODWORD(v44) = (v9._object & 0x2000000000000000) == 0;
  v45 = (v9._object >> 56) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v186 = (v9._object >> 56) & 0xF;
    v187 = v3;
    v46 = countAndFlagsBits;
    v47 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    countAndFlagsBits = v186;
    if ((v9._object & 0x2000000000000000) != 0)
    {
      goto LABEL_48;
    }

LABEL_47:
    countAndFlagsBits = v47;
    goto LABEL_48;
  }

  if ((v9._object & 0x2000000000000000) == 0)
  {
    v186 = (v9._object >> 56) & 0xF;
    v187 = v3;
    v46 = countAndFlagsBits;
    v47 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    LODWORD(v44) = 1;
    goto LABEL_47;
  }

  v65 = v41 + v45;
  if (v41 + v45 < 0x10)
  {
    if (v45)
    {
      v72 = 0;
      v73 = 0;
      v74 = 8 * v41;
      v75 = 8 * v45;
      v76 = v28;
      do
      {
        v77 = v9._object >> (v72 & 0x38);
        if (v73 < 8)
        {
          v77 = countAndFlagsBits >> v72;
        }

        v78 = (v77 << (v74 & 0x38)) | ((-255 << (v74 & 0x38)) - 1) & v76;
        v79 = (v77 << v74) | ((-255 << v74) - 1) & v14;
        if (v41 <= 7)
        {
          v14 = v79;
        }

        else
        {
          v76 = v78;
        }

        ++v41;
        v74 += 8;
        v72 += 8;
        ++v73;
      }

      while (v75 != v72);
    }

    else
    {
      v76 = v28;
    }

    v28;
    v80 = 0xA000000000000000;
    if (!(v14 & 0x8080808080808080 | v76 & 0x80808080808080))
    {
      v80 = 0xE000000000000000;
    }

    *&v192 = v14;
    *(&v192 + 1) = v80 & 0xFF00000000000000 | (v65 << 56) | v76 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_97;
  }

  v186 = (v9._object >> 56) & 0xF;
  v187 = v3;
  LODWORD(v44) = 0;
  v46 = countAndFlagsBits;
  v47 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  countAndFlagsBits = v186;
LABEL_48:
  *&v185 = v47;
  v48 = countAndFlagsBits;
  if ((v9._object & 0x1000000000000000) != 0)
  {
    goto LABEL_203;
  }

  if ((v28 & 0x1000000000000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_207:
  v160 = String.UTF8View._foreignCount()();
  v50 = v160 + v48;
  if (__OFADD__(v160, v48))
  {
    goto LABEL_209;
  }

LABEL_51:
  if ((v14 & ~v28 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v28 & 0xFFFFFFFFFFFFFFFLL))
  {
    v51 = _StringGuts.nativeUnusedCapacity.getter(v14, v28);
    if (v52)
    {
      goto LABEL_230;
    }

    if (v50 > 15)
    {
      goto LABEL_62;
    }

    if ((v28 & 0x2000000000000000) == 0)
    {
      if (v51 < v48)
      {
        goto LABEL_57;
      }

LABEL_62:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v50, v48);
      if ((object & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(*&v46, object, 0, countAndFlagsBits);
        v3 = v187;
      }

      else if (v44)
      {
        v54 = v46;
        if ((*&v46 & 0x1000000000000000) != 0)
        {
          v55 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
          v56 = v185;
          v57 = v185;
          v3 = v187;
        }

        else
        {
          v3 = v187;
          v170 = _StringObject.sharedUTF8.getter(v54, object);
          if (v171 < v185)
          {
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v55 = v170;
          v57 = v171;
          v56 = v185;
        }

        v58 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v56, v55, v57);
        closure #1 in _StringGuts.append(_:)(v58, v59, &v192, v54 < 0);
      }

      else
      {
        v189 = v46;
        v190 = object & 0xFFFFFFFFFFFFFFLL;
        closure #1 in _StringGuts.append(_:)(&v189, v186, &v192, (object & 0x4000000000000000) != 0);
        v3 = v187;
      }

      goto LABEL_97;
    }
  }

  else
  {
    if (v50 > 15)
    {
      goto LABEL_62;
    }

    if ((v28 & 0x2000000000000000) == 0)
    {
LABEL_57:
      if ((v28 & 0x1000000000000000) != 0)
      {
        v14 = _StringGuts._foreignConvertedToSmall()(v14, v28);
        v42 = v151;
      }

      else
      {
        if ((v14 & 0x1000000000000000) != 0)
        {
          v53 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v53 = _StringObject.sharedUTF8.getter(v14, v28);
          v42 = v172;
        }

        closure #1 in _StringGuts._convertedToSmall()(v53, v42, &v189, v26);
        v14 = v189;
        v42 = v190;
      }

      goto LABEL_69;
    }
  }

  v42 = v28;
LABEL_69:
  object;
  v60._rawBits = 1;
  v61._rawBits = (countAndFlagsBits << 16) | 1;
  v62._rawBits = _StringGuts.validateScalarRange(_:)(v60, v61, *&v46, object)._rawBits;
  if (v62._rawBits < 0x10000)
  {
    v62._rawBits |= 3;
  }

  if (v62._rawBits >> 16 || v63._rawBits >> 16 != countAndFlagsBits)
  {
    v46 = specialized static String._copying(_:)(v62._rawBits, v63, *&v46, object);
    countAndFlagsBits = v66;
    object;
  }

  else
  {
    countAndFlagsBits = object;
  }

  if ((countAndFlagsBits & 0x2000000000000000) == 0)
  {
    goto LABEL_213;
  }

  countAndFlagsBits;
  while (1)
  {
    v67 = specialized _SmallString.init(_:appending:)(v14, v42, *&v46, countAndFlagsBits);
    if (v69)
    {
      goto LABEL_230;
    }

    v70 = v67;
    v71 = v68;
    v28;
    *&v192 = v70;
    *(&v192 + 1) = v71;
    v3 = v187;
LABEL_97:
    v81 = *(&v192 + 1);
    v82 = HIBYTE(*(&v192 + 1)) & 0xFLL;
    if ((*(&v192 + 1) & 0x2000000000000000) == 0)
    {
      v82 = v192 & 0xFFFFFFFFFFFFLL;
    }

    if (v82 || (v192 & ~*(&v192 + 1) & 0x2000000000000000) != 0)
    {
      if ((*(&v192 + 1) & 0x2000000000000000) != 0 && (v83 = specialized _SmallString.init(_:appending:)(v192, *(&v192 + 1), 0x5B28uLL, 0xE200000000000000), (v85 & 1) == 0))
      {
        v14 = v83;
        v50 = v84;
        v81;
        0xE200000000000000;
      }

      else
      {
        0xE200000000000000;
        _StringGuts.append(_:)(23336, 0xE200000000000000, 0, 2, v86, v87, v88, v89, v90, v91, v92, v93);
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v50 = *(&v192 + 1);
        v14 = v192;
      }
    }

    else
    {
      *(&v192 + 1);
      v50 = 0xE200000000000000;
      v14 = 23336;
    }

    0xE000000000000000;
    v193 = v14;
    v194 = v50;
    v94 = v3;
    v46 = *(v3 + 16);
    if (!*&v46)
    {
LABEL_163:
      v134 = HIBYTE(v50) & 0xF;
      v42 = v14 & 0xFFFFFFFFFFFFLL;
      if ((v50 & 0x2000000000000000) != 0)
      {
        v135 = HIBYTE(v50) & 0xF;
      }

      else
      {
        v135 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (!v135 && (v14 & ~v50 & 0x2000000000000000) == 0)
      {
        v50;
        object;
        return 10589;
      }

      if ((v50 & 0x2000000000000000) != 0 && v134 <= 0xD)
      {
        if (v134 < 8)
        {
          v14 = ((-255 << (8 * (HIBYTE(v50) & 7u))) - 1) & v14 | (93 << (8 * (HIBYTE(v50) & 7u)));
          if (v134 != 7)
          {
            v14 = ((-255 << (8 * ((v134 + 1) & 7))) - 1) & v14 | (41 << (8 * ((v134 + 1) & 7)));
          }
        }

        v50;
        object;
        0xE200000000000000;
        return v14;
      }

      0xE200000000000000;
      if ((v50 & 0x1000000000000000) != 0)
      {
        goto LABEL_210;
      }

      v49 = __OFADD__(v135, 2);
      v2 = v135 + 2;
      if (!v49)
      {
        break;
      }

      goto LABEL_212;
    }

    v181 = object;
    v95 = *(v184 + 16);
    countAndFlagsBits = &v94[(*(v184 + 80) + 32) & ~*(v184 + 80)];
    v186 = *(v184 + 72);
    v187 = v95;
    v44 = (v184 + 32);
    v96 = 1;
    v185 = xmmword_18071DB30;
    v182 = xmmword_18071DB40;
    v97 = v183;
    v184 += 16;
    while (1)
    {
      v28 = v188;
      (v187)(v188, countAndFlagsBits, v2);
      object = *v44;
      (*v44)(v97, v28, v2);
      if (v96)
      {
        goto LABEL_110;
      }

      v43 = v193;
      v14 = v194;
      v101 = HIBYTE(v194) & 0xF;
      v42 = v193 & 0xFFFFFFFFFFFFLL;
      if ((v194 & 0x2000000000000000) != 0)
      {
        v28 = HIBYTE(v194) & 0xF;
      }

      else
      {
        v28 = v193 & 0xFFFFFFFFFFFFLL;
      }

      if (!v28 && (v193 & ~v194 & 0x2000000000000000) == 0)
      {
        v194;
        v193 = 8236;
        v126 = 0xE200000000000000;
        goto LABEL_150;
      }

      if ((v194 & 0x2000000000000000) != 0 && v101 <= 0xD)
      {
        v102 = 8 * (HIBYTE(v194) & 7);
        v103 = (-255 << v102) - 1;
        v104 = 44 << v102;
        v105 = v101 + 1;
        if (v101 >= 8)
        {
          v107 = v103 & v194 | v104;
          v106 = 8 * (v105 & 7);
LABEL_144:
          v125 = ((-255 << v106) - 1) & v107 | (32 << v106);
        }

        else
        {
          v43 = v103 & v193 | v104;
          if (v101 == 7)
          {
            v106 = 0;
            v107 = v194;
            goto LABEL_144;
          }

          v43 = ((-255 << (8 * (v105 & 7u))) - 1) & v43 | (32 << (8 * (v105 & 7u)));
          v125 = v194;
        }

        v194;
        0xE200000000000000;
        v127 = 0xE000000000000000;
        if (v43 & 0x8080808080808080 | v125 & 0x80808080808080)
        {
          v127 = 0xA000000000000000;
        }

        v126 = (v127 & 0xFF00000000000000 | (v101 << 56) | v125 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
        v193 = v43;
LABEL_150:
        v194 = v126;
        goto LABEL_109;
      }

      0xE200000000000000;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v49 = __OFADD__(v28, 2);
        v28 += 2;
        if (v49)
        {
          break;
        }

        goto LABEL_124;
      }

      v129 = String.UTF8View._foreignCount()();
      v28 = v129 + 2;
      if (__OFADD__(v129, 2))
      {
        break;
      }

LABEL_124:
      if ((v43 & ~v14 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v14 & 0xFFFFFFFFFFFFFFFLL))
      {
        v109 = _StringGuts.nativeUnusedCapacity.getter(v43, v14);
        if (v110)
        {
          goto LABEL_230;
        }

        if (v28 <= 15)
        {
          if ((v14 & 0x2000000000000000) != 0)
          {
            goto LABEL_136;
          }

          if (v109 < 2)
          {
            goto LABEL_130;
          }
        }
      }

      else if (v28 <= 15)
      {
        if ((v14 & 0x2000000000000000) != 0)
        {
LABEL_136:
          v112 = v14;
        }

        else
        {
LABEL_130:
          if ((v14 & 0x1000000000000000) != 0)
          {
            v43 = _StringGuts._foreignConvertedToSmall()(v43, v14);
            v112 = v128;
          }

          else
          {
            if ((v43 & 0x1000000000000000) != 0)
            {
              v111 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v111 = _StringObject.sharedUTF8.getter(v43, v14);
              v42 = v132;
            }

            closure #1 in _StringGuts._convertedToSmall()(v111, v42, &v192, v108);
            v112 = *(&v192 + 1);
            v43 = v192;
          }
        }

        0xE200000000000000;
        v113._rawBits = 1;
        v114._rawBits = 131073;
        v115._rawBits = _StringGuts.validateScalarRange(_:)(v113, v114, 0x202CuLL, 0xE200000000000000)._rawBits;
        if (v115._rawBits < 0x10000)
        {
          v115._rawBits |= 3;
        }

        v117 = Substring.description.getter(v115._rawBits, v116, 0x202CuLL, 0xE200000000000000);
        v28 = v118;
        0xE200000000000000;
        if ((v28 & 0x2000000000000000) != 0)
        {
          v28;
        }

        else if ((v28 & 0x1000000000000000) != 0)
        {
          v117 = _StringGuts._foreignConvertedToSmall()(v117, v28);
          v180 = v133;
          v28;
          v28 = v180;
        }

        else
        {
          if ((v117 & 0x1000000000000000) != 0)
          {
            v130 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v131 = v117 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v130 = _StringObject.sharedUTF8.getter(v117, v28);
          }

          closure #1 in _StringGuts._convertedToSmall()(v130, v131, &v192, v119);
          v28;
          v28 = *(&v192 + 1);
          v117 = v192;
        }

        v120 = specialized _SmallString.init(_:appending:)(v43, v112, v117, v28);
        if (v122)
        {
          goto LABEL_230;
        }

        v123 = v120;
        v124 = v121;
        v14;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v193 = v123;
        v194 = v124;
        goto LABEL_109;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v28, 2);
      v192 = v182;
      closure #1 in _StringGuts.append(_:)(&v192, 2uLL, &v193, 1);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
LABEL_109:
      v97 = v183;
LABEL_110:
      v98 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
      inited = swift_initStackObject(v98, v191);
      *(inited + 1) = v185;
      inited[7] = v2;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
      (object)(boxed_opaque_existential_0Tm, v97, v2);
      specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v193);
      0xE000000000000000;
      0xE100000000000000;
      swift_setDeallocating(inited);
      __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
      v96 = 0;
      countAndFlagsBits += v186;
      if (!--*&v46)
      {
        v14 = v193;
        v50 = v194;
        object = v181;
        goto LABEL_163;
      }
    }

    __break(1u);
LABEL_203:
    v153._rawBits = (countAndFlagsBits << 16) | 1;
    v154._rawBits = 1;
    v155 = v46;
    v156._rawBits = _StringGuts.validateScalarRange(_:)(v154, v153, *&v46, object)._rawBits;
    *&v182 = v157;
    if (v156._rawBits >= 0x10000)
    {
      rawBits = v156._rawBits;
    }

    else
    {
      rawBits = v156._rawBits | 3;
    }

    object;
    v159._rawBits = rawBits;
    v46 = v155;
    v48 = String.UTF8View.distance(from:to:)(v159, v182);
    object;
    if ((v28 & 0x1000000000000000) != 0)
    {
      goto LABEL_207;
    }

LABEL_50:
    v49 = __OFADD__(v43, v48);
    v50 = v43 + v48;
    if (!v49)
    {
      goto LABEL_51;
    }

LABEL_209:
    __break(1u);
LABEL_210:
    v161 = String.UTF8View._foreignCount()();
    v2 = v161 + 2;
    if (!__OFADD__(v161, 2))
    {
      break;
    }

LABEL_212:
    __break(1u);
LABEL_213:
    if ((countAndFlagsBits & 0x1000000000000000) != 0)
    {
      v46 = _StringGuts._foreignConvertedToSmall()(*&v46, countAndFlagsBits);
      v175 = v174;
      countAndFlagsBits;
      countAndFlagsBits = v175;
    }

    else
    {
      if ((*&v46 & 0x1000000000000000) != 0)
      {
        v162 = ((countAndFlagsBits & 0xFFFFFFFFFFFFFFFLL) + 32);
        v163 = *&v46 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v162 = _StringObject.sharedUTF8.getter(*&v46, countAndFlagsBits);
      }

      closure #1 in _StringGuts._convertedToSmall()(v162, v163, &v189, v64);
      countAndFlagsBits;
      v46 = v189;
      countAndFlagsBits = v190;
    }
  }

  if ((v14 & ~v50 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v50 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v2 > 15)
    {
      goto LABEL_186;
    }

    if ((v50 & 0x2000000000000000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_189;
  }

  v136 = _StringGuts.nativeUnusedCapacity.getter(v14, v50);
  if (v137)
  {
    goto LABEL_230;
  }

  if (v2 > 15)
  {
    goto LABEL_186;
  }

  if ((v50 & 0x2000000000000000) != 0)
  {
LABEL_189:
    v139 = v50;
    goto LABEL_190;
  }

  if (v136 < 2)
  {
LABEL_181:
    if ((v50 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts._foreignConvertedToSmall()(v14, v50);
      v139 = v152;
    }

    else
    {
      if ((v14 & 0x1000000000000000) != 0)
      {
        v138 = ((v50 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v138 = _StringObject.sharedUTF8.getter(v14, v50);
        v42 = v173;
      }

      closure #1 in _StringGuts._convertedToSmall()(v138, v42, &v192, v64);
      v139 = *(&v192 + 1);
      v14 = v192;
    }

LABEL_190:
    0xE200000000000000;
    v140._rawBits = 1;
    v141._rawBits = 131073;
    v142._rawBits = _StringGuts.validateScalarRange(_:)(v140, v141, 0x295DuLL, 0xE200000000000000)._rawBits;
    if (v142._rawBits < 0x10000)
    {
      v142._rawBits |= 3;
    }

    v144 = Substring.description.getter(v142._rawBits, v143, 0x295DuLL, 0xE200000000000000);
    v146 = v145;
    0xE200000000000000;
    if ((v146 & 0x2000000000000000) != 0)
    {
      v146;
    }

    else
    {
      v166 = object;
      if ((v146 & 0x1000000000000000) != 0)
      {
        v144 = _StringGuts._foreignConvertedToSmall()(v144, v146);
        v179 = v178;
        v146;
        v146 = v179;
        object = v166;
      }

      else
      {
        if ((v144 & 0x1000000000000000) != 0)
        {
          v167 = ((v146 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v168 = v144 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v167 = _StringObject.sharedUTF8.getter(v144, v146);
        }

        closure #1 in _StringGuts._convertedToSmall()(v167, v168, &v192, v147);
        v146;
        v146 = *(&v192 + 1);
        v144 = v192;
      }
    }

    v148 = specialized _SmallString.init(_:appending:)(v14, v139, v144, v146);
    if ((v149 & 1) == 0)
    {
      v14 = v148;
      v50;
      object;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      return v14;
    }

LABEL_230:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_186:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v2, 2);
  v192 = xmmword_18071DB80;
  closure #1 in _StringGuts.append(_:)(&v192, 2uLL, &v193, 1);
  object;
  swift_bridgeObjectRelease_n(0xE200000000000000, 2);
  return v193;
}

uint64_t ContiguousArray.withUnsafeBufferPointer<A>(_:)(uint64_t (*a1)(unint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  return ContiguousArray.withUnsafeBufferPointer<A>(_:)(a1, a2, a3, a4);
}

{
  return a1(a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)), *(a3 + 16));
}

uint64_t _ss22_ContiguousArrayBufferV010withUnsafeC7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v15 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)), *(v15 + 16), v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a6);
  }

  return result;
}

void *ContiguousArray.withUnsafeMutableBufferPointer<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a4;
  ContiguousArray._makeMutableAndUnique()();
  v7 = *(*v4 + 16);
  v10[0] = *v4 + ((*(*(*(a3 + 16) - 8) + 80) + 32) & ~*(*(*(a3 + 16) - 8) + 80));
  v8 = v10[0];
  v10[1] = v7;
  a1(v10);
  return _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tp5Tm(v10, v8, v7);
}

void *_ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tp5Tm(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    v3 = *result == a2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || result[1] != a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t static ContiguousArray<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 16);
  if (v11 == *(v7 + 16))
  {
    if (!v11 || v6 == v7)
    {
      v19 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = v6 + v12;
      v14 = v7 + v12;
      v16 = *(v8 + 16);
      v15 = v8 + 16;
      v17 = *(v15 + 56);
      v21 = a4 + 8;
      v22 = v16;
      v18 = (v15 - 8);
      do
      {
        v22(v10, v13, a3);
        v19 = (*(a4 + 8))(v10, v14, a3, a4);
        (*v18)(v10, a3);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v14 += v17;
        v13 += v17;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

void ContiguousArray<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v16 = a1;
  Hasher._combine(_:)(v12);
  if (v12)
  {
    v15 = *(v8 + 16);
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    do
    {
      v15(v10, v13, a3);
      (*(a4 + 24))(v16, a3, a4);
      (*(v8 + 8))(v10, a3);
      v13 += v14;
      --v12;
    }

    while (v12);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> [A](uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void, void, uint64_t))
{
  v7 = *(a3 - 8);
  v8 = specialized Hasher.init(_seed:)(a1, v10);
  (a4)(v10, *v4, *(a2 + 16), v7, v8);
  return Hasher._finalize()();
}

void *ContiguousArray.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  ContiguousArray._makeMutableAndUnique()();
  v7 = *(*v4 + 16);
  v8 = *(*(a3 + 16) - 8);
  v9 = *v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13[0] = v9;
  v13[1] = v7;
  v10 = *(v8 + 72);
  v11 = v7 * v10;
  if ((v7 * v10) >> 64 != (v7 * v10) >> 63)
  {
    __break(1u);
LABEL_5:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v11 < 0)
  {
    goto LABEL_5;
  }

  a1(v9, v9 + v11);
  return _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tp5Tm(v13, v9, v7);
}

uint64_t ContiguousArray.withUnsafeBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(v4 + 80);
  v6 = *(a3 + 16);
  v7 = *(v4 + 72);
  v8 = v6 * v7;
  if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
  {
    __break(1u);
LABEL_5:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 < 0)
  {
    goto LABEL_5;
  }

  return a1(a3 + ((v5 + 32) & ~v5), a3 + ((v5 + 32) & ~v5) + v8);
}

BOOL Array._providesContiguousBytesNoCopy.getter(uint64_t a1, unint64_t *a2)
{
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
  v5 = (a1 & 0x4000000000000000) == 0 && a1 >= 0;
  return !isClassOrObjCExistentialType || v5;
}

BOOL protocol witness for _HasContiguousBytes._providesContiguousBytesNoCopy.getter in conformance [A](uint64_t a1)
{
  v2 = *v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(*(a1 + 16), *(a1 + 16));
  v5 = (v2 & 0x4000000000000000) == 0 && v2 >= 0;
  return !isClassOrObjCExistentialType || v5;
}

uint64_t UnsafeBufferPointer.withUnsafeBytes<A>(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return UnsafeBufferPointer.withUnsafeBytes<A>(_:)(a1, a2, a3, a4, a5);
}

{
  v6 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(a3, *(*(a5 - 8) + 72) * a4);
  return a1(v6);
}

uint64_t _Pointer.init(_:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(*(a2 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](*(a2 - 8), a2);
  if ((*(v16 + 48))(a1, 1, a2) == 1)
  {
    v11 = type metadata accessor for Optional(0, a2, v9, v10);
    (*(*(v11 - 8) + 8))(a1, v11);
    v12 = *(v16 + 56);

    return v12(a4, 1, 1, a2);
  }

  else
  {
    memcpy(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
    v14 = (*(a3 + 48))(a2, a3);
    (*(a3 + 56))(v14, a2, a3);
    return (*(v16 + 56))(a4, 0, 1, a2);
  }
}

uint64_t UnsafeMutableRawBufferPointer.withUnsafeBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
  }

  else
  {
    v4 = 0;
  }

  return a1(a3, v4);
}

void String.withUnsafeBytes<A>(_:)(void (*a1)(void *, char *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  a4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    a3 = specialized static String._copying(_:)(a3, v4);
    v12 = v11;
    v4;
    v4 = v12;
    if ((v12 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v13[0] = a3;
    v13[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    v9 = v13;
    v10 = v13 + (HIBYTE(v4) & 0xF);
    goto LABEL_8;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a3 & 0x1000000000000000) != 0)
  {
    v7 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = _StringObject.sharedUTF8.getter(a3, v4);
  }

  v9 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v7, v8);
LABEL_8:
  a1(v9, v10);
  v4;
}

void protocol witness for _HasContiguousBytes.withUnsafeBytes<A>(_:) in conformance String(void (*a1)(void *, char *))
{
  v4 = *v1;
  v3 = v1[1];
  v3;
  if ((v3 & 0x1000000000000000) != 0)
  {
    v4 = specialized static String._copying(_:)(v4, v3);
    v10 = v9;
    v3;
    v3 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v11[0] = v4;
    v11[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v7 = v11;
    v8 = v11 + (HIBYTE(v3) & 0xF);
    goto LABEL_8;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v4 & 0x1000000000000000) != 0)
  {
    v5 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter(v4, v3);
  }

  v7 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v5, v6);
LABEL_8:
  a1(v7, v8);
  v3;
}

void Substring.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  a6;
  Substring.withUTF8<A>(_:)(partial apply for closure #1 in Substring.withUnsafeBytes<A>(_:));
  a6;
}

uint64_t closure #1 in Substring.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2 < 0)
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2)
  {
    if (!a1)
    {
      goto LABEL_9;
    }
  }

  else if (!a1)
  {
    v3 = 0;
    return a3(a1, v3);
  }

  v3 = a2 + a1;
  return a3(a1, v3);
}

uint64_t Substring.withUTF8<A>(_:)(uint64_t (*a1)(char *))
{
  v3 = v1[3];
  if ((v3 & 0x1000000000000000) != 0)
  {
    Substring._slowMakeContiguousUTF8()();
    v3 = v1[3];
  }

  v4 = v1[2];
  v5 = *v1 >> 16;
  v6 = v1[1] >> 16;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v14[0] = v1[2];
    v14[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v3) & 0xF) >= v6 && v6 - v5 >= 0)
    {
      v9 = v14 + v5;
      return a1(v9);
    }

    goto LABEL_12;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
    v11 = *v1 >> 16;
    v12 = v1[2];
    v15 = v1[1] >> 16;
    v7 = _StringObject.sharedUTF8.getter(v12, v3);
    v5 = v11;
    v8 = v13;
    v6 = v15;
    if (v8 >= v15)
    {
      goto LABEL_6;
    }

LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0xFFFFFFFFFFFFLL) < v6)
  {
    goto LABEL_12;
  }

LABEL_6:
  v9 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v5, v6, v7, v8);
  return a1(v9);
}

void protocol witness for _HasContiguousBytes.withUnsafeBytes<A>(_:) in conformance Substring()
{
  v1 = *(v0 + 24);
  v1;
  Substring.withUTF8<A>(_:)(closure #1 in Substring.withUnsafeBytes<A>(_:)partial apply);
  v1;
}

uint64_t ClosedRange.init(uncheckedBounds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a2;
  v53 = a5;
  swift_getTupleTypeMetadata2(0, a3, a3, "lower upper ", 0);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v48 = &v44 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v52 = &v44 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v51 = &v44 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v44 - v24;
  v26 = *(a3 - 1);
  v27 = *(v26 + 32);
  v27(&v44 - v24, a1, a3);
  v28 = *(v9 + 48);
  v27(&v25[v28], v50, a3);
  if (((*(a4 + 24))(v25, &v25[v28], a3, a4) & 1) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v47 = a4;
  v45 = *(v10 + 16);
  v29 = v51;
  v45(v51, v25, v9);
  v50 = *(v9 + 48);
  v46 = *(v10 + 32);
  v44 = v27;
  v30 = v26;
  v31 = v52;
  v46();
  v32 = *(v9 + 48);
  v33 = v48;
  v34 = v29;
  v35 = v44;
  v44(v48, v34, a3);
  v35(&v33[*(v9 + 48)], &v31[v32], a3);
  v36 = v35;
  v37 = v49;
  v45(v49, v33, v9);
  v38 = *(v9 + 48);
  v36(v53, v37, a3);
  v39 = *(v30 + 8);
  v39(&v37[v38], a3);
  (v46)(v37, v33, v9);
  v40 = *(v9 + 48);
  v42 = type metadata accessor for ClosedRange(0, a3, v47, v41);
  v36(v53 + *(v42 + 36), &v37[v40], a3);
  v39(v37, a3);
  v39(v52, a3);
  return (v39)(&v51[v50], a3);
}

uint64_t ClosedRange.relative<A>(to:)@<X0>(uint64_t a1@<X1>, void (*a2)(char *, char *, char *)@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v33 = a2;
  v34 = a4;
  v6 = *(a1 + 16);
  v31 = a1;
  swift_getTupleTypeMetadata2(0, v6, v6, "lower upper ", 0);
  v9 = v8;
  v32 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v31 - v16;
  v18 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v15, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 184))(v4 + *(a1 + 36), v33, a3);
  (*(v18 + 16))(v17, v4, v6);
  v22 = *(v18 + 32);
  v22(&v17[*(v9 + 48)], v21, v6);
  v33 = v22;
  v23 = v32;
  (*(v32 + 16))(v13, v17, v9);
  v24 = *(v9 + 48);
  v25 = v34;
  v22(v34, v13, v6);
  v26 = *(v18 + 8);
  v26(&v13[v24], v6);
  (*(v23 + 32))(v13, v17, v9);
  v27 = *(v9 + 48);
  v29 = type metadata accessor for Range(0, v6, *(v31 + 24), v28);
  v33(&v25[*(v29 + 36)], &v13[v27], v6);
  return (v26)(v13, v6);
}

uint64_t ClosedRange.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  if ((*(v6 + 32))(a1, v3, v7, v6))
  {
    return (*(v6 + 24))(a1, v3 + *(a2 + 36), v7, v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ClosedRange<>._customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(a3 + 8);
  v9 = *(v8 + 24);
  if (v9(v4, a1, v7, v8))
  {
    v10 = v9(a1, v4 + *(a2 + 36), v7, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t static ClosedRange<>.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v35 = &v35 - v9;
  v37 = v10;
  v13 = type metadata accessor for ClosedRange<>.Index(0, v11, v10, v12);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13, v15);
  v40 = &v35 - v16;
  swift_getTupleTypeMetadata2(0, v13, v13, 0, 0);
  v18 = v17;
  v19 = *(v17 - 1);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v35 - v22;
  v24 = *(v21 + 48);
  v38 = v14;
  v25 = *(v14 + 16);
  v25(&v35 - v22, v39, v13);
  v25(&v23[v24], a2, v13);
  v39 = v5;
  v26 = *(v5 + 48);
  if (v26(v23, 1, a3) == 1)
  {
    v27 = 1;
    if (v26(&v23[v24], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v25(v40, v23, v13);
    if (v26(&v23[v24], 1, a3) != 1)
    {
      v28 = v39;
      v29 = *(v39 + 32);
      v30 = v35;
      v29(v35, v40, a3);
      v31 = &v23[v24];
      v32 = v36;
      v29(v36, v31, a3);
      v27 = (*(*(*(v37 + 8) + 8) + 8))(v30, v32, a3);
      v33 = *(v28 + 8);
      v33(v32, a3);
      v33(v30, a3);
LABEL_8:
      v19 = v38;
      goto LABEL_9;
    }

    (*(v39 + 8))(v40, a3);
  }

  v27 = 0;
  v13 = v18;
LABEL_9:
  (*(v19 + 8))(v23, v13);
  return v27 & 1;
}

uint64_t static ClosedRange<>.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v35 = &v35 - v9;
  v37 = v10;
  v13 = type metadata accessor for ClosedRange<>.Index(0, v11, v10, v12);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13, v15);
  v40 = &v35 - v16;
  swift_getTupleTypeMetadata2(0, v13, v13, 0, 0);
  v18 = v17;
  v19 = *(v17 - 1);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v35 - v22;
  v24 = *(v21 + 48);
  v38 = v14;
  v25 = *(v14 + 16);
  v25(&v35 - v22, v39, v13);
  v25(&v23[v24], a2, v13);
  v39 = v5;
  v26 = *(v5 + 48);
  if (v26(v23, 1, a3) == 1)
  {
    v27 = 0;
    v13 = v18;
  }

  else
  {
    v25(v40, v23, v13);
    if (v26(&v23[v24], 1, a3) == 1)
    {
      (*(v39 + 8))(v40, a3);
      v27 = 1;
    }

    else
    {
      v28 = v39;
      v29 = *(v39 + 32);
      v30 = v35;
      v29(v35, v40, a3);
      v31 = &v23[v24];
      v32 = v36;
      v29(v36, v31, a3);
      v27 = (*(*(v37 + 8) + 16))(v30, v32, a3);
      v33 = *(v28 + 8);
      v33(v32, a3);
      v33(v30, a3);
    }

    v19 = v38;
  }

  (*(v19 + 8))(v23, v13);
  return v27 & 1;
}

void ClosedRange<>.Index<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    Hasher._combine(_:)(1u);
  }

  else
  {
    (*(v6 + 32))(v9, v12, v5);
    Hasher._combine(_:)(0);
    (*(a3 + 24))(a1, v5, a3);
    (*(v6 + 8))(v9, v5);
  }
}

Swift::Int ClosedRange<>.Index<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0u;
  v19 = 0u;
  v15 = 0;
  v16 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v17 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  (*(v12 + 16))(v11, v2);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    Hasher._combine(_:)(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v11, v4);
    Hasher._combine(_:)(0);
    (*(a2 + 24))(&v15, v4, a2);
    (*(v5 + 8))(v8, v4);
  }

  return Hasher._finalize()();
}

uint64_t ClosedRange<>.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v8 = *(v5 - 8);
  (*(v8 + 16))(a2, v3, v5);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t ClosedRange<>.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v39 = a1;
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v8, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v10 = v9;
  v36 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9, v11);
  v35 = &v34 - v12;
  v13 = *(*(swift_getAssociatedConformanceWitness(a3, v8, v10, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v13, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v34 - v18;
  v20 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v17, v21);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ClosedRange<>.Index(0, v8, a3, a4);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v34 - v26;
  (*(v28 + 16))(&v34 - v26, v39);
  if ((*(v20 + 48))(v27, 1, v8) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v20 + 32))(v23, v27, v8);
  if ((*(*(*(a3 + 8) + 8) + 8))(v23, v37 + *(a2 + 36), v8))
  {
    v29 = 1;
    v30 = v38;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v13, v10, v15, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v15, AssociatedConformanceWitness);
    v32 = v35;
    (*(v13 + 24))(v19, v10, v13);
    v30 = v38;
    (*(a3 + 48))(v32, v8, a3);
    (*(v36 + 8))(v32, v10);
    v29 = 0;
  }

  (*(v20 + 8))(v23, v8);
  return (*(v20 + 56))(v30, v29, 1, v8);
}

uint64_t ClosedRange<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a1;
  v37 = a2;
  v38 = a5;
  v7 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v7, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v9 = v8;
  v36 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v35 - v11;
  v13 = *(*(swift_getAssociatedConformanceWitness(a3, v7, v9, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v13, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v35 - v18;
  v20 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v17, v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ClosedRange<>.Index(0, v7, a3, a4);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v35 - v26;
  (*(v28 + 16))(&v35 - v26, v39);
  if ((*(v20 + 48))(v27, 1, v7) != 1)
  {
    (*(v20 + 32))(v23, v27, v7);
    if ((*(*(a3 + 8) + 40))(v23, v40, v7))
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v13, v9, v15, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      (*(AssociatedConformanceWitness + 8))(&unk_18071E0B0, 257, v15, AssociatedConformanceWitness);
      (*(v13 + 24))(v19, v9, v13);
      v32 = v38;
      (*(a3 + 48))(v12, v7, a3);
      (*(v36 + 8))(v12, v9);
      (*(v20 + 8))(v23, v7);
      return (*(v20 + 56))(v32, 0, 1, v7);
    }

LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v29 = v37;
  v30 = v40;
  if (((*(*(a3 + 8) + 32))(v40 + *(v37 + 36), v40, v7) & 1) == 0)
  {
    goto LABEL_7;
  }

  v31 = v30 + *(v29 + 36);
  v32 = v38;
  (*(v20 + 16))(v38, v31, v7);
  return (*(v20 + 56))(v32, 0, 1, v7);
}

uint64_t ClosedRange<>.index(_:offsetBy:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, char *a6@<X8>)
{
  v155 = a2;
  v153 = a1;
  v149 = a6;
  v151 = a3;
  v8 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, a4, v8, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v10 = v9;
  v140 = *(swift_getAssociatedConformanceWitness(a4, v8, v9, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8);
  v144 = *(v140 + 16);
  swift_getAssociatedTypeWitness(0, v144, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v143 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v142 = v135 - v13;
  v150 = swift_checkMetadataState(0, v10);
  v152 = *(v150 - 1);
  v15 = MEMORY[0x1EEE9AC00](v150, v14);
  v141 = v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v145 = v135 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v146 = v135 - v22;
  v23 = *(v8 - 1);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v139 = (v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = v135 - v28;
  v148 = a5;
  v30 = type metadata accessor for ClosedRange<>.Index(0, v8, a4, a5);
  v31 = *(v30 - 8);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v35 = v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v135 - v37;
  v39 = *(v31 + 16);
  v39(v135 - v37, v153, v30);
  v40 = (*(v23 + 48))(v38, 1, v8);
  v147 = a4;
  if (v40 != 1)
  {
    v136 = *(v23 + 32);
    v135[1] = (v23 + 32);
    (v136)(v29, v38, v8);
    v44 = *(a4 + 40);
    v45 = &v154[*(v151 + 36)];
    v46 = v146;
    v153 = v29;
    v44(v45, v8, a4);
    v47 = *(v148 + 1);
    v48 = *(v47 + 64);
    v49 = v48();
    v50 = v8;
    v51 = v46;
    v52 = a4;
    v138 = v23;
    v151 = v47 + 64;
    v148 = v48;
    if (v49)
    {
      v53 = v150;
      v137 = *(v47 + 128);
      v54 = v137(v150, v47);
      v57 = v152;
      v58 = v155;
      if (v54 < 64)
      {
        v59 = (*(v47 + 120))(v53, v47);
        v62 = v59 < v58;
        v63 = v58;
        v64 = v145;
        if (!v62)
        {
          goto LABEL_27;
        }

LABEL_24:
        v135[0] = v50;
        v88 = v51;
        v89 = v143;
        v90 = v144;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v144, v53, v143, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v92 = *(AssociatedConformanceWitness + 8);
        v93 = v142;
        v150 = AssociatedConformanceWitness;
        v139 = v92;
        (v92)(&unk_18071E0B0, 257, v89);
        v136 = v90[3];
        (v136)(v93, v53, v90);
        v94 = v141;
        (*(*(v140 + 8) + 40))(v88, v64, v53);
        v95 = *(v57 + 8);
        v152 = v57 + 8;
        v154 = v95;
        (v95)(v64, v53);
        v96 = v148;
        if ((v148)(v53, v47))
        {
          v97 = v137(v53, v47);
          v100 = v138;
          if (v97 < 64)
          {
LABEL_34:
            v124 = (*(v47 + 120))(v53, v47);
            v119 = v154;
            (v154)(v94, v53);
            v125 = v146;
            v116 = v135[0];
            if (v124 != v155)
            {
              goto LABEL_44;
            }

LABEL_43:
            (v119)(v125, v53);
            (*(v100 + 8))(v153, v116);
            return (*(v100 + 56))(v149, 1, 1, v116);
          }

          v156[0] = v155;
          v120 = *(v47 + 96);
          v121 = lazy protocol witness table accessor for type Int and conformance Int(v97, v98, v99);
          v122 = v145;
          v120(v156, &type metadata for Int, v121, v53, v47);
          v116 = v135[0];
          v123 = swift_getAssociatedConformanceWitness(v147, v135[0], v53, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
          v118 = (*(*(v123 + 8) + 8))(v94, v122, v53);
          v119 = v154;
          (v154)(v122, v53);
          goto LABEL_41;
        }

        v109 = (v96)(v53, v47);
        v110 = v137(v53, v47);
        if (v109)
        {
          v113 = v145;
          if (v110 > 64)
          {
            v156[0] = v155;
            v114 = *(v47 + 96);
            v115 = lazy protocol witness table accessor for type Int and conformance Int(v110, v111, v112);
            v114(v156, &type metadata for Int, v115, v53, v47);
            v116 = v135[0];
            v117 = swift_getAssociatedConformanceWitness(v147, v135[0], v53, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
            v118 = (*(*(v117 + 8) + 8))(v94, v113, v53);
            v119 = v154;
            (v154)(v113, v53);
            (v119)(v94, v53);
            v100 = v138;
            goto LABEL_42;
          }

          v126 = v142;
          v139(&qword_18071E0A8, 256);
          (v136)(v126, v53, v144);
          v116 = v135[0];
          v127 = swift_getAssociatedConformanceWitness(v147, v135[0], v53, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
          LOBYTE(v126) = (*(v127 + 32))(v94, v113, v53, v127);
          v119 = v154;
          (v154)(v113, v53);
          v100 = v138;
          v128 = v155;
          if (v126)
          {
            v129 = (*(v47 + 120))(v53, v47);
            (v119)(v94, v53);
            v125 = v146;
            if (v129 != v128)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }
        }

        else
        {
          v100 = v138;
          if (v110 < 64)
          {
            goto LABEL_34;
          }

          v116 = v135[0];
          v119 = v154;
          if ((v155 & 0x8000000000000000) == 0)
          {
            v156[0] = v155;
            v130 = *(v47 + 96);
            v131 = lazy protocol witness table accessor for type Int and conformance Int(v110, v111, v112);
            v132 = v145;
            v130(v156, &type metadata for Int, v131, v53, v47);
            v133 = swift_getAssociatedConformanceWitness(v147, v116, v53, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
            v118 = (*(*(v133 + 8) + 8))(v94, v132, v53);
            v134 = v132;
            v119 = v154;
            (v154)(v134, v53);
LABEL_41:
            (v119)(v94, v53);
LABEL_42:
            v125 = v146;
            if ((v118 & 1) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }
        }

        (v119)(v94, v53);
        goto LABEL_44;
      }

      v156[0] = v155;
      v73 = v51;
      v74 = v50;
      v75 = *(v47 + 96);
      v76 = lazy protocol witness table accessor for type Int and conformance Int(v54, v55, v56);
      v64 = v145;
      v75(v156, &type metadata for Int, v76, v53, v47);
      v50 = v74;
      v51 = v73;
      v77 = swift_getAssociatedConformanceWitness(v52, v50, v53, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
      v78 = (*(v77 + 16))(v73, v64, v53, v77);
      goto LABEL_17;
    }

    v53 = v150;
    v65 = (v48)(v150, v47);
    v137 = *(v47 + 128);
    v59 = v137(v53, v47);
    v66 = v155;
    if (v65)
    {
      if (v59 > 64)
      {
        v156[0] = v155;
        v67 = v51;
        v68 = v50;
        v69 = *(v47 + 96);
        v70 = lazy protocol witness table accessor for type Int and conformance Int(v59, v60, v61);
        v64 = v145;
        v69(v156, &type metadata for Int, v70, v53, v47);
        v50 = v68;
        v51 = v67;
        v71 = swift_getAssociatedConformanceWitness(v52, v50, v53, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
        v72 = (*(v71 + 16))(v67, v64, v53, v71);
        v57 = v152;
        goto LABEL_18;
      }

      v83 = v143;
      v82 = v144;
      v84 = swift_getAssociatedConformanceWitness(v144, v53, v143, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v85 = v142;
      (*(v84 + 8))(&qword_18071E0A8, 256, v83, v84);
      v86 = v145;
      (v82[3])(v85, v53, v82);
      v87 = swift_getAssociatedConformanceWitness(v52, v50, v53, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
      LOBYTE(v83) = (*(v87 + 16))(v51, v86, v53, v87);
      (*(v152 + 8))(v86, v53);
      if (v83)
      {
        v64 = v145;
        v57 = v152;
        goto LABEL_24;
      }
    }

    else if (v59 >= 64)
    {
      v63 = v155;
      v64 = v145;
      v57 = v152;
      if (v155 < 1)
      {
LABEL_27:
        v156[0] = v63;
        v101 = *(v47 + 88);
        v102 = lazy protocol witness table accessor for type Int and conformance Int(v59, v60, v61);
        v101(v156, &type metadata for Int, v102, v53, v47);
        v103 = v147;
        v104 = v139;
        v105 = v153;
        (*(v147 + 6))(v64, v50, v147);
        v106 = *(v57 + 8);
        v106(v64, v53);
        if (((*(*(v103 + 1) + 32))(v104, v154, v50) & 1) == 0)
        {
          goto LABEL_44;
        }

        v106(v51, v53);
        v107 = v138;
        (*(v138 + 8))(v105, v50);
        v108 = v149;
        (v136)(v149, v104, v50);
        return (*(v107 + 56))(v108, 0, 1, v50);
      }

      v156[0] = v155;
      v79 = *(v47 + 96);
      v80 = lazy protocol witness table accessor for type Int and conformance Int(v59, v60, v61);
      v79(v156, &type metadata for Int, v80, v53, v47);
      v81 = swift_getAssociatedConformanceWitness(v147, v50, v53, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
      v78 = (*(v81 + 16))(v51, v64, v53, v81);
LABEL_17:
      v72 = v78;
LABEL_18:
      v59 = (*(v57 + 8))(v64, v53);
      v63 = v155;
      if ((v72 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v59 = (*(v47 + 120))(v53, v47);
    v62 = v59 < v66;
    v63 = v66;
    v64 = v145;
    v57 = v152;
    if (!v62)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v41 = v155;
  if (v155)
  {
    if (v155 < 0)
    {
      v42 = v151;
      (*(v23 + 16))(v35, &v154[*(v151 + 36)], v8);
      (*(v23 + 56))(v35, 0, 1, v8);
      ClosedRange<>.index(_:offsetBy:)(v35, v41 + 1, v42, v147, v148, v149);
      return (*(v31 + 8))(v35, v30);
    }

LABEL_44:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (v39)(v149, v153, v30);
}

BOOL static BinaryInteger.<= infix<A>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v68 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v68, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v67 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v66 = &v61 - v14;
  v65 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v65, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v64 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v63 = &v61 - v18;
  v72 = *(a3 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v71 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v20, v22);
  v69 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a6 + 64);
  v25 = v24(a4, a6);
  if (((v25 ^ (*(a5 + 64))(a3, a5)) & 1) == 0)
  {
    v35 = (*(a6 + 128))(a4, a6);
    if (v35 >= (*(a5 + 128))(a3, a5))
    {
      v44 = v71;
      (*(v72 + 16))(v71, a1, a3);
      v45 = v69;
      (*(a6 + 96))(v44, a3, a5, a4, a6);
      v38 = (*(*(*(a6 + 32) + 8) + 16))(a2, v45, a4);
      v39 = *(v70 + 8);
      v40 = v45;
      v43 = a4;
      goto LABEL_11;
    }

    v36 = v69;
    (*(v70 + 16))(v69, a2, a4);
    v37 = v71;
    (*(a5 + 96))(v36, a4, a6, a3, a5);
    v38 = (*(*(*(a5 + 32) + 8) + 16))(v37, a1, a3);
    v39 = *(v72 + 8);
    v40 = v37;
LABEL_9:
    v43 = a3;
LABEL_11:
    v39(v40, v43);
    return (v38 & 1) == 0;
  }

  v26 = v24(a4, a6);
  v27 = *(a6 + 128);
  v62 = a2;
  v28 = v27(a4, a6);
  v29 = *(a5 + 128);
  v61 = a1;
  v30 = v29(a3, a5);
  if ((v26 & 1) == 0)
  {
    v32 = v70;
    v41 = v71;
    if (v28 >= v30)
    {
      v53 = v67;
      v54 = v68;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v68, a3, v67, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v56 = v66;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v53, AssociatedConformanceWitness);
      (v54[3])(v56, a3, v54);
      v57 = v61;
      LOBYTE(v53) = (*(*(*(a5 + 32) + 8) + 40))(v61, v41, a3);
      v58 = v72;
      (*(v72 + 8))(v41, a3);
      v59 = v62;
      if ((v53 & 1) == 0)
      {
        v38 = 0;
        return (v38 & 1) == 0;
      }

      (*(v58 + 16))(v41, v57, a3);
      v33 = v69;
      (*(a6 + 96))(v41, a3, a5, a4, a6);
      v34 = (*(*(*(a6 + 32) + 8) + 16))(v59, v33, a4);
      goto LABEL_16;
    }

    v42 = v69;
    (*(v70 + 16))(v69, v62, a4);
    (*(a5 + 96))(v42, a4, a6, a3, a5);
    v38 = (*(*(*(a5 + 32) + 8) + 16))(v41, v61, a3);
    v39 = *(v72 + 8);
    v40 = v41;
    goto LABEL_9;
  }

  v32 = v70;
  v31 = v71;
  if (v30 < v28)
  {
    (*(v72 + 16))(v71, v61, a3);
    v33 = v69;
    (*(a6 + 96))(v31, a3, a5, a4, a6);
    v34 = (*(*(*(a6 + 32) + 8) + 16))(v62, v33, a4);
LABEL_16:
    v38 = v34;
    (*(v32 + 8))(v33, a4);
    return (v38 & 1) == 0;
  }

  v46 = v64;
  v47 = v65;
  v48 = swift_getAssociatedConformanceWitness(v65, a4, v64, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v49 = v63;
  (*(v48 + 8))(&qword_18071E0A8, 256, v46, v48);
  v50 = v69;
  (v47[3])(v49, a4, v47);
  v51 = v62;
  LOBYTE(v46) = (*(*(*(a6 + 32) + 8) + 16))(v62, v50, a4);
  (*(v32 + 8))(v50, a4);
  v52 = v72;
  if (v46)
  {
    v38 = 1;
  }

  else
  {
    (*(v32 + 16))(v50, v51, a4);
    (*(a5 + 96))(v50, a4, a6, a3, a5);
    v38 = (*(*(*(a5 + 32) + 8) + 16))(v31, v61, a3);
    (*(v52 + 8))(v31, a3);
  }

  return (v38 & 1) == 0;
}

unint64_t specialized numericCast<A, B>(_:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0 || result >= 0x100)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t _ss11numericCastyq_xSzRzSzR_r0_lFxSiSzRzSiRs_r0_lIetnd_Tpq5_0(uint64_t a1, Class *a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v48 - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v50 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v48 - v17;
  v51 = v19;
  (*(v19 + 16))(&v48 - v17, a1, a2);
  v52 = *(a3 + 64);
  v20 = v52(a2, a3);
  v21 = *(a3 + 128);
  if ((v20 & 1) != 0 && v21(a2, a3) >= 65)
  {
    v49 = v6;
    v53 = 0x8000000000000000;
    v22 = v52;
    if (v52(a2, a3))
    {
      v23 = v21(a2, a3);
      if (v23 < 64)
      {
LABEL_13:
        (*(a3 + 120))(a2, a3);
        goto LABEL_14;
      }
    }

    else
    {
      v26 = v22(a2, a3);
      v23 = v21(a2, a3);
      if ((v26 & 1) == 0)
      {
        if (v23 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v23 <= 64)
      {
        v31 = v49;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v49, a2, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v8, AssociatedConformanceWitness);
        v33 = v50;
        (*(v31 + 3))(v12, a2, v31);
        v34 = (*(*(*(a3 + 32) + 8) + 16))(v18, v33, a2);
        (*(v51 + 8))(v33, a2);
        if (v34)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v27 = *(a3 + 96);
    v28 = lazy protocol witness table accessor for type Int and conformance Int(v23, v24, v25);
    v29 = v50;
    v27(&v53, &type metadata for Int, v28, a2, a3);
    v30 = (*(*(*(a3 + 32) + 8) + 16))(v18, v29, a2);
    (*(v51 + 8))(v29, a2);
    if (v30)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  v35 = v21(a2, a3);
  v37 = v51;
  v36 = v52;
  if (v35 > 64 || v21(a2, a3) == 64 && (v36(a2, a3) & 1) == 0)
  {
    v53 = 0x7FFFFFFFFFFFFFFFLL;
    v38 = v36(a2, a3);
    v39 = v21(a2, a3);
    if (v38)
    {
      if (v39 > 64)
      {
        goto LABEL_17;
      }
    }

    else if (v39 >= 64)
    {
LABEL_17:
      v42 = *(a3 + 96);
      v43 = lazy protocol witness table accessor for type Int and conformance Int(v39, v40, v41);
      v44 = v50;
      v42(&v53, &type metadata for Int, v43, a2, a3);
      v45 = (*(*(*(a3 + 32) + 8) + 16))(v44, v18, a2);
      (*(v37 + 8))(v44, a2);
      if ((v45 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(a3 + 120))(a2, a3);
  }

LABEL_24:
  v46 = (*(a3 + 120))(a2, a3);
  (*(v37 + 8))(v18, a2);
  return v46;
}

uint64_t specialized numericCast<A, B>(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v38 - v11;
  v13 = *(a2 - 1);
  v15 = MEMORY[0x1EEE9AC00](v10, v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v38 - v19;
  (*(v13 + 16))(&v38 - v19, a1, a2);
  v41 = *(a3 + 64);
  if (v41(a2, a3))
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v8, AssociatedConformanceWitness);
    (*(v6 + 24))(v12, a2, v6);
    v22 = (*(*(*(a3 + 32) + 8) + 32))(v20, v17, a2);
    (*(v13 + 8))(v17, a2);
    if ((v22 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v42 = v13;
  v39 = v6;
  v40 = v17;
  v23 = *(a3 + 128);
  if (v23(a2, a3) > 63)
  {
    v43 = -1;
    v24 = v41(a2, a3);
    v25 = v23(a2, a3);
    if (v24)
    {
      if (v25 <= 64)
      {
        v28 = v39;
        v29 = swift_getAssociatedConformanceWitness(v39, a2, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(v29 + 8))(&qword_18071E0A8, 256, v8, v29);
        v30 = v40;
        (*(v28 + 3))(v12, a2, v28);
        v31 = (*(*(*(a3 + 32) + 8) + 40))(v20, v30, a2);
        (*(v42 + 8))(v30, a2);
        if ((v31 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (v25 <= 64)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

    v32 = *(a3 + 96);
    v33 = lazy protocol witness table accessor for type UInt and conformance UInt(v25, v26, v27);
    v34 = v40;
    v32(&v43, &type metadata for UInt, v33, a2, a3);
    v35 = (*(*(*(a3 + 32) + 8) + 16))(v34, v20, a2);
    (*(v42 + 8))(v34, a2);
    if (v35)
    {
LABEL_13:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

LABEL_12:
  v36 = (*(a3 + 120))(a2, a3);
  (*(v42 + 8))(v20, a2);
  return v36;
}

{
  v6 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v38 - v11;
  v13 = *(a2 - 1);
  v15 = MEMORY[0x1EEE9AC00](v10, v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v38 - v19;
  (*(v13 + 16))(&v38 - v19, a1, a2);
  v41 = *(a3 + 64);
  if (v41(a2, a3))
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v8, AssociatedConformanceWitness);
    (*(v6 + 24))(v12, a2, v6);
    v22 = (*(*(*(a3 + 32) + 8) + 32))(v20, v17, a2);
    (*(v13 + 8))(v17, a2);
    if ((v22 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v42 = v13;
  v39 = v6;
  v40 = v17;
  v23 = *(a3 + 128);
  if (v23(a2, a3) > 7)
  {
    v43 = -1;
    v24 = v41(a2, a3);
    v25 = v23(a2, a3);
    if (v24)
    {
      if (v25 <= 8)
      {
        v28 = v39;
        v29 = swift_getAssociatedConformanceWitness(v39, a2, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(v29 + 8))(&qword_18071E0A8, 256, v8, v29);
        v30 = v40;
        (*(v28 + 3))(v12, a2, v28);
        v31 = (*(*(*(a3 + 32) + 8) + 40))(v20, v30, a2);
        (*(v42 + 8))(v30, a2);
        if ((v31 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (v25 <= 8)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

    v32 = *(a3 + 96);
    v33 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v25, v26, v27);
    v34 = v40;
    v32(&v43, &type metadata for UInt8, v33, a2, a3);
    v35 = (*(*(*(a3 + 32) + 8) + 16))(v34, v20, a2);
    (*(v42 + 8))(v34, a2);
    if (v35)
    {
LABEL_13:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

LABEL_12:
  v36 = (*(a3 + 120))(a2, a3);
  (*(v42 + 8))(v20, a2);
  return v36;
}

uint64_t numericCast<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  return (*(a5 + 88))(v10, a2, a4, a3, a5);
}

uint64_t static BinaryInteger.== infix<A>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v65 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v65, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v64 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v63 = &v58 - v14;
  v62 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v62, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v61 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v60 = &v58 - v18;
  v69 = *(a4 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v68 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v20, v22);
  v66 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a5 + 64);
  v25 = v24(a3, a5);
  if ((v25 ^ (*(a6 + 64))(a4, a6)))
  {
    v26 = v24(a3, a5);
    v27 = *(a5 + 128);
    v59 = a1;
    v28 = v27(a3, a5);
    v29 = *(a6 + 128);
    v58 = a2;
    v30 = v29(a4, a6);
    if (v26)
    {
      v32 = v67;
      v31 = v68;
      if (v30 < v28)
      {
        (*(v69 + 16))(v68, v58, a4);
        v33 = v66;
        (*(a5 + 96))(v31, a4, a6, a3, a5);
        v34 = (*(*(*(a5 + 16) + 8) + 8))(v59, v33, a3);
LABEL_15:
        v38 = v34;
        (*(v32 + 8))(v33, a3);
        return v38 & 1;
      }

      v43 = v61;
      v44 = v62;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v62, a3, v61, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v46 = v60;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v43, AssociatedConformanceWitness);
      v47 = v66;
      (v44[3])(v46, a3, v44);
      v48 = v59;
      LOBYTE(v43) = (*(*(*(a5 + 32) + 8) + 32))(v59, v47, a3);
      (*(v32 + 8))(v47, a3);
      v49 = v69;
      if (v43)
      {
        (*(v32 + 16))(v47, v48, a3);
        (*(a6 + 96))(v47, a3, a5, a4, a6);
        v38 = (*(*(*(a6 + 16) + 8) + 8))(v31, v58, a4);
        (*(v49 + 8))(v31, a4);
        return v38 & 1;
      }
    }

    else
    {
      v32 = v67;
      v39 = v68;
      if (v28 < v30)
      {
        v40 = v66;
        (*(v67 + 16))(v66, v59, a3);
        (*(a6 + 96))(v40, a3, a5, a4, a6);
        v38 = (*(*(*(a6 + 16) + 8) + 8))(v39, v58, a4);
        (*(v69 + 8))(v39, a4);
        return v38 & 1;
      }

      v50 = v64;
      v51 = v65;
      v52 = swift_getAssociatedConformanceWitness(v65, a4, v64, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v53 = v63;
      (*(v52 + 8))(&qword_18071E0A8, 256, v50, v52);
      (v51[3])(v53, a4, v51);
      v54 = v58;
      LOBYTE(v50) = (*(*(*(a6 + 32) + 8) + 32))(v58, v39, a4);
      v55 = v69;
      (*(v69 + 8))(v39, a4);
      v56 = v59;
      if (v50)
      {
        (*(v55 + 16))(v39, v54, a4);
        v33 = v66;
        (*(a5 + 96))(v39, a4, a6, a3, a5);
        v34 = (*(*(*(a5 + 16) + 8) + 8))(v56, v33, a3);
        goto LABEL_15;
      }
    }

    v38 = 0;
    return v38 & 1;
  }

  v35 = (*(a5 + 128))(a3, a5);
  if (v35 >= (*(a6 + 128))(a4, a6))
  {
    v41 = v68;
    (*(v69 + 16))(v68, a2, a4);
    v42 = v66;
    (*(a5 + 96))(v41, a4, a6, a3, a5);
    v38 = (*(*(*(a5 + 16) + 8) + 8))(a1, v42, a3);
    (*(v67 + 8))(v42, a3);
  }

  else
  {
    v36 = v66;
    (*(v67 + 16))(v66, a1, a3);
    v37 = v68;
    (*(a6 + 96))(v36, a3, a5, a4, a6);
    v38 = (*(*(*(a6 + 16) + 8) + 8))(v37, a2, a4);
    (*(v69 + 8))(v37, a4);
  }

  return v38 & 1;
}

uint64_t ClosedRange<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, int **a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v62 = a3;
  v7 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, a4, v7, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v9 = v8;
  v66 = *(swift_getAssociatedConformanceWitness(a4, v7, v8, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8);
  v64 = *(v66 + 16);
  swift_getAssociatedTypeWitness(0, v64, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v60 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v60 - v12;
  v13 = swift_checkMetadataState(0, v9);
  v70 = *(v13 - 1);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v63 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v65 = &v60 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v69 = &v60 - v22;
  v23 = *(v7 - 1);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v60 - v29;
  v68 = a4;
  v71 = a5;
  v31 = type metadata accessor for ClosedRange<>.Index(255, v7, a4, a5);
  swift_getTupleTypeMetadata2(0, v31, v31, 0, 0);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v36 = &v60 - v35;
  v37 = *(v34 + 56);
  v38 = *(*(v31 - 1) + 16);
  v38(&v60 - v35, v72, v31);
  v38(&v36[v37], v73, v31);
  v39 = v23[6];
  v40 = v39(v36, 1, v7);
  v41 = v39(&v36[v37], 1, v7);
  v42 = v41;
  if (v40 != 1)
  {
    v44 = v23[4];
    v44(v30, v36, v7);
    if (v42 != 1)
    {
      v44(v27, &v36[v37], v7);
      v57 = v69;
      (v68[5])(v27, v7);
      v58 = v23[1];
      v58(v27, v7);
      v58(v30, v7);
      v43 = _ss11numericCastyq_xSzRzSzR_r0_lFxSiSzRzSiRs_r0_lIetnd_Tpq5_0(v57, v13, *(v71 + 8));
      (*(v70 + 8))(v57, v13);
      return v43;
    }

    v45 = v64;
    v46 = v60;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v64, v13, v60, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v48 = v61;
    (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v46, AssociatedConformanceWitness);
    v49 = v65;
    (v45[3])(v48, v13, v45);
    v50 = v63;
    (v68[5])(v67 + *(v62 + 36), v7);
    (v23[1])(v30, v7);
    v51 = v69;
    (*(*(v66 + 8) + 24))(v49, v50, v13);
    goto LABEL_7;
  }

  if (v41 != 1)
  {
    (v23[4])(v30, &v36[v37], v7);
    v49 = v65;
    (v68[5])(v30, v7);
    (v23[1])(v30, v7);
    v52 = v64;
    v53 = v60;
    v54 = swift_getAssociatedConformanceWitness(v64, v13, v60, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v55 = v61;
    (*(v54 + 8))(&qword_1806729C0, 512, v53, v54);
    v50 = v63;
    (v52[3])(v55, v13, v52);
    v51 = v69;
    (*(*(v66 + 8) + 40))(v49, v50, v13);
LABEL_7:
    v56 = *(v70 + 8);
    v56(v50, v13);
    v56(v49, v13);
    v43 = _ss11numericCastyq_xSzRzSzR_r0_lFxSiSzRzSiRs_r0_lIetnd_Tpq5_0(v51, v13, *(v71 + 8));
    v56(v51, v13);
    return v43;
  }

  return 0;
}

uint64_t ClosedRange<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a2 + 16);
  v8 = type metadata accessor for ClosedRange<>.Index(0, v7, a3, a4);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1);
  v13 = *(v7 - 8);
  if ((*(v13 + 48))(v11, 1, v7) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v13 + 32))(a5, v11, v7);
}

{
  return ClosedRange<>.subscript.getter(a1, a2, a3, a4, type metadata accessor for ClosedRange<>.Index, &protocol witness table for ClosedRange<A><>.Index, protocol conformance descriptor for <> ClosedRange<A>, a5);
}

uint64_t ClosedRange<>._customIndexOfEquatableElement(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = *(a2 + 16);
  v13 = *(a3 + 8);
  v14 = *(v13 + 24);
  if (v14(v6, a1, v12, v13) & 1) != 0 && (v14(a1, v6 + *(a2 + 36), v12, v13))
  {
    v15 = *(v12 - 8);
    (*(v15 + 16))(a5, a1, v12);
    (*(v15 + 56))(a5, 0, 1, v12);
    v16 = type metadata accessor for ClosedRange<>.Index(0, v12, a3, a4);
    (*(*(v16 - 8) + 56))(a5, 0, 1, v16);
    v19 = 0;
  }

  else
  {
    v16 = type metadata accessor for ClosedRange<>.Index(255, v12, a3, a4);
    v19 = 1;
  }

  v20 = type metadata accessor for Optional(0, v16, v17, v18);
  v21 = *(*(v20 - 8) + 56);

  return v21(a5, v19, 1, v20);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance <> ClosedRange<A>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x28, 0x7135uLL);
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = ClosedRange<>.subscript.read(v8, a2, a3, *(a4 - 8), *(a4 - 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*ClosedRange<>.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void)
{
  v7 = *(a3 + 16);
  *a1 = v7;
  v8 = type metadata accessor for ClosedRange<>.Index(0, v7, a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0xB78EuLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  a1[1] = v11;
  v13 = *(v7 - 8);
  v14 = v13;
  a1[2] = v13;
  v15 = *(v13 + 64);
  if (swift_coroFrameAlloc)
  {
    v16 = swift_coroFrameAlloc(v15, 0xB78EuLL);
  }

  else
  {
    v16 = malloc(v15);
  }

  v17 = v16;
  a1[3] = v16;
  (*(v9 + 16))(v12, a2, v8);
  if ((*(v14 + 48))(v12, 1, v7) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v14 + 32))(v17, v12, v7);
  return ClosedRange<>.subscript.read;
}

void ClosedRange<>.subscript.read(void *a1)
{
  v1 = a1[3];
  v2 = a1[1];
  (*(a1[2] + 8))(v1, *a1);
  free(v1);

  free(v2);
}

uint64_t Collection<>.indices.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a1 - 8) + 16))(a3, v3, a1);
  v6 = *(a2 + 64);
  type metadata accessor for DefaultIndices(0, a1, a2, v7);
  v6(a1, a2);
  return (*(a2 + 72))(a1, a2);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance <> ClosedRange<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a3 - 16);
  v7 = *(a3 - 8);
  v9 = type metadata accessor for ClosedRange<>.Index(0, *(a2 + 16), v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v15 - v12;
  (*(v10 + 32))(&v15 - v12, a1, v9);
  a4(v13, a2, v7, v8);
  return (*(v10 + 8))(v13, v9);
}

uint64_t static Comparable...< infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, char *, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, char *, uint64_t)@<X7>, uint64_t a9@<X8>)
{
  v37 = a7;
  v39 = a5;
  v40 = a6;
  swift_getTupleTypeMetadata2(0, a3, a3, "lower upper ", 0);
  v16 = v15;
  v17 = *(v15 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v37 - v23;
  if (((*(a4 + 24))(a1, a2, a3, a4) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = *(a3 - 1);
  v40 = a8;
  v26 = v25;
  v27 = a1;
  v28 = a2;
  v29 = a9;
  v38 = a9;
  v30 = *(v25 + 16);
  v39 = a4;
  v30(v24, v27, a3);
  v30(&v24[*(v16 + 48)], v28, a3);
  (*(v17 + 16))(v21, v24, v16);
  v31 = *(v16 + 48);
  v32 = *(v26 + 32);
  v32(v29, v21, a3);
  v33 = *(v26 + 8);
  v33(&v21[v31], a3);
  (*(v17 + 32))(v21, v24, v16);
  v34 = *(v16 + 48);
  v35 = v40(0, a3, v39);
  v32(v38 + *(v35 + 36), &v21[v34], a3);
  return (v33)(v21, a3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> ClosedRange<A><>.Index(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  v7 = specialized Hasher.init(_seed:)(a1, v9);
  (a4)(v9, a2, v6, v7);
  return Hasher._finalize()();
}

unint64_t ClosedRange.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v269 = a1;
  v272 = *(a1 + 16);
  v2 = *(v272 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v271 = &v264 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _StringGuts.init(_initialCapacity:)(14);
  v6 = v5;
  v276._countAndFlagsBits = v4;
  v276._object = v5;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ClosedRange(", 0xCuLL, 1);
  countAndFlagsBits = v7._countAndFlagsBits;
  v9 = HIBYTE(v6) & 0xF;
  v10 = *&v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v11 = *&v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 && (*&v4 & ~v6 & 0x2000000000000000) == 0)
  {
    v6;
    v276 = v7;
    goto LABEL_68;
  }

  v12 = (v7._object & 0x2000000000000000) == 0;
  v13 = (v7._object >> 56) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v273 = v2;
    v14 = v7._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v15 = (v7._object >> 56) & 0xF;
    if ((v7._object & 0x2000000000000000) != 0)
    {
LABEL_12:
      v268 = v14;
      if ((v7._object & 0x1000000000000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_40;
    }

LABEL_11:
    v15 = v14;
    goto LABEL_12;
  }

  if ((v7._object & 0x2000000000000000) == 0)
  {
    v273 = v2;
    v14 = v7._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v12 = 1;
    goto LABEL_11;
  }

  v35 = v13 + v9;
  if (v13 + v9 < 0x10)
  {
    if (v13)
    {
      v47 = 0;
      v48 = 0;
      v49 = 8 * v9;
      v50 = v6;
      do
      {
        v51 = v7._object >> (v47 & 0x38);
        if (v48 < 8)
        {
          v51 = v7._countAndFlagsBits >> v47;
        }

        v52 = (v51 << (v49 & 0x38)) | ((-255 << (v49 & 0x38)) - 1) & v50;
        v53 = (v51 << v49) | ((-255 << v49) - 1) & *&v4;
        if (v9 <= 7)
        {
          v4 = v53;
        }

        else
        {
          v50 = v52;
        }

        ++v9;
        v49 += 8;
        v47 += 8;
        ++v48;
      }

      while (8 * v13 != v47);
    }

    else
    {
      v50 = v6;
    }

    v6;
    v7._object;
    v54 = 0xA000000000000000;
    if (!(*&v4 & 0x8080808080808080 | v50 & 0x80808080808080))
    {
      v54 = 0xE000000000000000;
    }

    v276._countAndFlagsBits = v4;
    v276._object = (v54 & 0xFF00000000000000 | (v35 << 56) | v50 & 0xFFFFFFFFFFFFFFLL);
    goto LABEL_68;
  }

  v273 = v2;
  v12 = 0;
  v15 = (v7._object >> 56) & 0xF;
  v268 = (v7._countAndFlagsBits & 0xFFFFFFFFFFFFLL);
  if ((v7._object & 0x1000000000000000) == 0)
  {
LABEL_13:
    v7._object;
    v17 = v15;
    if ((v6 & 0x1000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_43:
    v40 = String.UTF8View._foreignCount()();
    v19 = v40 + v17;
    if (!__OFADD__(v40, v17))
    {
      goto LABEL_15;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_40:
  swift_bridgeObjectRetain_n(v7._object, 2);
  v36._rawBits = 1;
  v37._rawBits = (v15 << 16) | 1;
  v38._rawBits = _StringGuts.validateScalarRange(_:)(v36, v37, v7._countAndFlagsBits, v7._object)._rawBits;
  if (v38._rawBits < 0x10000)
  {
    v38._rawBits |= 3;
  }

  v17 = String.UTF8View.distance(from:to:)(v38, v39);
  v7._object;
  if ((v6 & 0x1000000000000000) != 0)
  {
    goto LABEL_43;
  }

LABEL_14:
  v18 = __OFADD__(v11, v17);
  v19 = v11 + v17;
  if (v18)
  {
    goto LABEL_45;
  }

LABEL_15:
  if ((*&v4 & ~v6 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v19 > 15)
    {
      goto LABEL_26;
    }

    if ((v6 & 0x2000000000000000) == 0)
    {
LABEL_21:
      if ((v6 & 0x1000000000000000) != 0)
      {
        v4 = _StringGuts._foreignConvertedToSmall()(*&v4, v6);
        v23 = v137;
      }

      else
      {
        if ((*&v4 & 0x1000000000000000) != 0)
        {
          v22 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v22 = _StringObject.sharedUTF8.getter(*&v4, v6);
          v10 = v253;
        }

        closure #1 in _StringGuts._convertedToSmall()(v22, v10, &v274, v16);
        v4 = v274;
        v23 = v275;
      }

      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v20 = _StringGuts.nativeUnusedCapacity.getter(*&v4, v6);
  if (v21)
  {
    goto LABEL_320;
  }

  if (v19 > 15)
  {
    goto LABEL_26;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
LABEL_32:
    v23 = v6;
LABEL_33:
    v7._object;
    v29._rawBits = 1;
    v30._rawBits = (v15 << 16) | 1;
    v31._rawBits = _StringGuts.validateScalarRange(_:)(v29, v30, v7._countAndFlagsBits, v7._object)._rawBits;
    if (v31._rawBits < 0x10000)
    {
      v31._rawBits |= 3;
    }

    if (v31._rawBits >> 16 || v32._rawBits >> 16 != v15)
    {
      countAndFlagsBits = specialized static String._copying(_:)(v31._rawBits, v32, v7._countAndFlagsBits, v7._object);
      object = v41;
      v7._object;
    }

    else
    {
      object = v7._object;
    }

    v2 = v273;
    if ((object & 0x2000000000000000) != 0)
    {
      object;
    }

    else if ((object & 0x1000000000000000) != 0)
    {
      countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(*&countAndFlagsBits, object);
      v257 = v256;
      object;
      object = v257;
    }

    else
    {
      if ((*&countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v238 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
        v239 = *&countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v238 = _StringObject.sharedUTF8.getter(*&countAndFlagsBits, object);
      }

      closure #1 in _StringGuts._convertedToSmall()(v238, v239, &v274, v33);
      object;
      countAndFlagsBits = v274;
      object = v275;
    }

    v42 = specialized _SmallString.init(_:appending:)(*&v4, v23, *&countAndFlagsBits, object);
    if (v44)
    {
      goto LABEL_320;
    }

    v45 = v42;
    v46 = v43;
    v6;
    swift_bridgeObjectRelease_n(v7._object, 2);
    v276._countAndFlagsBits = v45;
    v276._object = v46;
    goto LABEL_68;
  }

  if (v20 < v17)
  {
    goto LABEL_21;
  }

LABEL_26:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v19, v17);
  if ((v7._object & 0x1000000000000000) != 0)
  {
LABEL_46:
    _StringGuts._foreignAppendInPlace(_:)(v7._countAndFlagsBits, v7._object, 0, v15);
LABEL_63:
    swift_bridgeObjectRelease_n(v7._object, 2);
    v2 = v273;
    goto LABEL_68;
  }

  if (!v12)
  {
    v274 = v7._countAndFlagsBits;
    v275 = v7._object & 0xFFFFFFFFFFFFFFLL;
    closure #1 in _StringGuts.append(_:)(&v274, (v7._object >> 56) & 0xF, &v276, (v7._object & 0x4000000000000000) != 0);
    goto LABEL_63;
  }

  v2 = v273;
  if ((v7._countAndFlagsBits & 0x1000000000000000) != 0)
  {
    v24 = (v7._object & 0xFFFFFFFFFFFFFFFLL) + 32;
    v25 = v268;
    v26 = v268;
  }

  else
  {
    v247 = _StringObject.sharedUTF8.getter(v7._countAndFlagsBits, v7._object);
    if (v248 < v268)
    {
      goto LABEL_316;
    }

    v24 = v247;
    v26 = v248;
    v25 = v268;
  }

  v27 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v25, v24, v26);
  closure #1 in _StringGuts.append(_:)(v27, v28, &v276, v7._countAndFlagsBits < 0);
  swift_bridgeObjectRelease_n(v7._object, 2);
LABEL_68:
  v55 = v2 + 16;
  v56 = *(v2 + 16);
  v57 = v271;
  v58 = v272;
  (v56)(v271, v270, v272);
  v274 = 0;
  v275 = 0xE000000000000000;
  _debugPrint_unlocked<A, B>(_:_:)(v57, &v274, v58, &type metadata for String, &protocol witness table for String);
  v60 = *(v2 + 8);
  v59 = v2 + 8;
  v268 = v60;
  v60(v57, v58);
  v62 = v274;
  v61 = v275;
  v64 = v276._countAndFlagsBits;
  v63 = v276._object;
  v65 = (v276._object >> 56) & 0xF;
  v66 = v276._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v276._object & 0x2000000000000000) != 0)
  {
    v67 = (v276._object >> 56) & 0xF;
  }

  else
  {
    v67 = v276._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v67 && (v276._countAndFlagsBits & ~v276._object & 0x2000000000000000) == 0)
  {
    v276._object;
    v276._countAndFlagsBits = v62;
    v276._object = v61;
    goto LABEL_150;
  }

  v267 = v56;
  v68 = (v275 & 0x2000000000000000) == 0;
  v56 = HIBYTE(v275) & 0xF;
  if ((v276._object & 0x2000000000000000) == 0)
  {
    v273 = v59;
    v69 = *&v274 & 0xFFFFFFFFFFFFLL;
    v70 = (HIBYTE(v275) & 0xF);
    if ((v275 & 0x2000000000000000) != 0)
    {
      goto LABEL_79;
    }

LABEL_78:
    v70 = v69;
    goto LABEL_79;
  }

  if ((v275 & 0x2000000000000000) == 0)
  {
    v273 = v59;
    v69 = *&v274 & 0xFFFFFFFFFFFFLL;
    v68 = 1;
    goto LABEL_78;
  }

  v98 = v65 + v56;
  if (v65 + v56 < 0x10)
  {
    if (v56)
    {
      v110 = 0;
      v111 = 0;
      v112 = 8 * v65;
      v113 = 8 * v56;
      v114 = v276._object;
      v56 = v267;
      do
      {
        v115 = v275 >> (v110 & 0x38);
        if (v111 < 8)
        {
          v115 = *&v274 >> v110;
        }

        v116 = (v115 << (v112 & 0x38)) | ((-255 << (v112 & 0x38)) - 1) & v114;
        v117 = (v115 << v112) | ((-255 << v112) - 1) & *&v64;
        if (v65 <= 7)
        {
          v64 = v117;
        }

        else
        {
          v114 = v116;
        }

        ++v65;
        v112 += 8;
        v110 += 8;
        ++v111;
      }

      while (v113 != v110);
    }

    else
    {
      v114 = v276._object;
      v56 = v267;
    }

    v276._object;
    v61;
    v136 = 0xA000000000000000;
    if (!(*&v64 & 0x8080808080808080 | v114 & 0x80808080808080))
    {
      v136 = 0xE000000000000000;
    }

    v276._countAndFlagsBits = v64;
    v276._object = (v136 & 0xFF00000000000000 | (v98 << 56) | v114 & 0xFFFFFFFFFFFFFFLL);
    goto LABEL_150;
  }

  v273 = v59;
  v68 = 0;
  v69 = *&v274 & 0xFFFFFFFFFFFFLL;
  v70 = (HIBYTE(v275) & 0xF);
LABEL_79:
  v265 = v68;
  v264 = v69;
  v266 = v55;
  if ((v275 & 0x1000000000000000) == 0)
  {
    v275;
    v72 = v70;
    if ((v63 & 0x1000000000000000) == 0)
    {
      goto LABEL_81;
    }

LABEL_186:
    v143 = String.UTF8View._foreignCount()();
    v73 = v143 + v72;
    if (!__OFADD__(v143, v72))
    {
      goto LABEL_82;
    }

LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  swift_bridgeObjectRetain_n(v275, 2);
  v139._rawBits = 1;
  v140._rawBits = (*&v70 << 16) | 1;
  v141._rawBits = _StringGuts.validateScalarRange(_:)(v139, v140, v62, v61)._rawBits;
  if (v141._rawBits < 0x10000)
  {
    v141._rawBits |= 3;
  }

  v72 = String.UTF8View.distance(from:to:)(v141, v142);
  v61;
  if ((v63 & 0x1000000000000000) != 0)
  {
    goto LABEL_186;
  }

LABEL_81:
  v18 = __OFADD__(v67, v72);
  v73 = v67 + v72;
  if (v18)
  {
    goto LABEL_188;
  }

LABEL_82:
  v74 = *&v64 & ~v63;
  if ((v74 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v63 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v73 > 15)
    {
      goto LABEL_93;
    }

    if ((v63 & 0x2000000000000000) == 0)
    {
LABEL_88:
      if ((v63 & 0x1000000000000000) != 0)
      {
        v64 = _StringGuts._foreignConvertedToSmall()(*&v64, v63);
        v78 = v138;
      }

      else
      {
        if ((*&v64 & 0x1000000000000000) != 0)
        {
          v77 = ((v63 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v77 = _StringObject.sharedUTF8.getter(*&v64, v63);
          v66 = v254;
        }

        closure #1 in _StringGuts._convertedToSmall()(v77, v66, &v274, v71);
        v64 = v274;
        v78 = v275;
      }

      goto LABEL_111;
    }

    goto LABEL_110;
  }

  v75 = _StringGuts.nativeUnusedCapacity.getter(*&v64, v63);
  if (v76)
  {
    goto LABEL_320;
  }

  if (v73 > 15)
  {
    goto LABEL_93;
  }

  if ((v63 & 0x2000000000000000) != 0)
  {
LABEL_110:
    v78 = v63;
LABEL_111:
    v61;
    v92._rawBits = 1;
    v93._rawBits = (*&v70 << 16) | 1;
    v94._rawBits = _StringGuts.validateScalarRange(_:)(v92, v93, v62, v61)._rawBits;
    if (v94._rawBits < 0x10000)
    {
      v94._rawBits |= 3;
    }

    if (v94._rawBits >> 16 || v95._rawBits >> 16 != *&v70)
    {
      v62 = specialized static String._copying(_:)(v94._rawBits, v95, v62, v61);
      v97 = v99;
      v61;
    }

    else
    {
      v97 = v61;
    }

    if ((v97 & 0x2000000000000000) != 0)
    {
      v97;
    }

    else if ((v97 & 0x1000000000000000) != 0)
    {
      v62 = _StringGuts._foreignConvertedToSmall()(v62, v97);
      v259 = v258;
      v97;
      v97 = v259;
    }

    else
    {
      if ((v62 & 0x1000000000000000) != 0)
      {
        v240 = ((v97 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v241 = v62 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v240 = _StringObject.sharedUTF8.getter(v62, v97);
      }

      closure #1 in _StringGuts._convertedToSmall()(v240, v241, &v274, v96);
      v97;
      v62 = v274;
      v97 = v275;
    }

    v100 = HIBYTE(v78) & 0xF;
    v101 = HIBYTE(v97) & 0xF;
    v102 = v101 + v100;
    if (v101 + v100 > 0xF)
    {
      goto LABEL_320;
    }

    v61;
    if (v101)
    {
      v103 = 0;
      v104 = 0;
      v105 = 8 * v100;
      do
      {
        v106 = v97 >> (v103 & 0x38);
        if (v104 < 8)
        {
          v106 = v62 >> v103;
        }

        v107 = (v106 << (v105 & 0x38)) | ((-255 << (v105 & 0x38)) - 1) & v78;
        v108 = (v106 << v105) | ((-255 << v105) - 1) & *&v64;
        if (v100 <= 7)
        {
          v64 = v108;
        }

        else
        {
          v78 = v107;
        }

        ++v100;
        v105 += 8;
        v103 += 8;
        ++v104;
      }

      while (8 * v101 != v103);
    }

    v63;
    v61;
    v109 = 0xA000000000000000;
    if (!(*&v64 & 0x8080808080808080 | v78 & 0x80808080808080))
    {
      v109 = 0xE000000000000000;
    }

    v276._countAndFlagsBits = v64;
    v276._object = (v109 & 0xFF00000000000000 | (v102 << 56) | v78 & 0xFFFFFFFFFFFFFFLL);
    goto LABEL_149;
  }

  if (v75 < v72)
  {
    goto LABEL_88;
  }

LABEL_93:
  v79 = (v74 & 0x2000000000000000);
  v80 = _StringGuts.nativeUnusedCapacity.getter(*&v64, v63);
  if ((v81 & 1) != 0 || v80 < v72)
  {
    if (v79)
    {
      swift_isUniquelyReferenced_nonNull_native(v63 & 0xFFFFFFFFFFFFFFFLL);
    }

    v82 = _StringGuts.nativeCapacity.getter(*&v64, v63);
    if (v84)
    {
      v85 = 0;
    }

    else
    {
      v85 = v82;
    }

    if (v85 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_306:
      if ((v73 & 0x1000000000000000) != 0)
      {
        v79 = _StringGuts._foreignConvertedToSmall()(*&v79, v73);
        v263 = v262;
        v73;
        v73 = v263;
      }

      else
      {
        if ((*&v79 & 0x1000000000000000) != 0)
        {
          v244 = ((v73 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v245 = *&v79 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v244 = _StringObject.sharedUTF8.getter(*&v79, v73);
        }

        closure #1 in _StringGuts._convertedToSmall()(v244, v245, &v274, v83);
        v73;
        v79 = v274;
        v73 = v275;
      }

      goto LABEL_175;
    }

    v86 = 2 * v85;
    if (v86 > v73)
    {
      v73 = v86;
    }

    goto LABEL_103;
  }

  if (!*&v79 || !swift_isUniquelyReferenced_nonNull_native(v63 & 0xFFFFFFFFFFFFFFFLL))
  {
LABEL_103:
    _StringGuts.grow(_:)(v73);
  }

  if ((v61 & 0x1000000000000000) != 0)
  {
    _StringGuts._foreignAppendInPlace(_:)(v62, v61, 0, *&v70);
LABEL_148:
    swift_bridgeObjectRelease_n(v61, 2);
LABEL_149:
    v56 = v267;
    goto LABEL_150;
  }

  if (!v265)
  {
    v274 = v62;
    v275 = v61 & 0xFFFFFFFFFFFFFFLL;
    closure #1 in _StringGuts.append(_:)(&v274, HIBYTE(v61) & 0xF, &v276, (v61 & 0x4000000000000000) != 0);
    goto LABEL_148;
  }

  if ((v62 & 0x1000000000000000) != 0)
  {
    v87 = (v61 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v88 = v264;
    v89 = v264;
    v56 = v267;
  }

  else
  {
    v249 = _StringObject.sharedUTF8.getter(v62, v61);
    if (v250 < v264)
    {
      goto LABEL_316;
    }

    v87 = v249;
    v89 = v250;
    v56 = v267;
    v88 = v264;
  }

  v90 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v88, v87, v89);
  closure #1 in _StringGuts.append(_:)(v90, v91, &v276, v62 < 0);
  swift_bridgeObjectRelease_n(v61, 2);
LABEL_150:
  v61 = v276._countAndFlagsBits;
  v63 = v276._object;
  v118 = (v276._object >> 56) & 0xF;
  v73 = v276._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v276._object & 0x2000000000000000) != 0)
  {
    v119 = (v276._object >> 56) & 0xF;
  }

  else
  {
    v119 = v276._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v119 && (v276._countAndFlagsBits & ~v276._object & 0x2000000000000000) == 0)
  {
    v276._object;
    v61 = 0;
    v126 = 0xE000000000000000;
LABEL_192:
    v273 = v126;
    goto LABEL_193;
  }

  if ((v276._object & 0x2000000000000000) != 0)
  {
    v276._object;
    0xE000000000000000;
    v125 = 0xA000000000000000;
    if (!(v63 & 0x80808080808080 | v61 & 0x8080808080808080))
    {
      v125 = 0xE000000000000000;
    }

    v126 = v125 & 0xFF00000000000000 | (v118 << 56) | v63 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_192;
  }

  0xE000000000000000;
  v121 = v61 & 0xFFFFFFFFFFFFLL;
  if ((v63 & 0x1000000000000000) == 0)
  {
    if ((v61 & 0x2000000000000000) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_158;
  }

LABEL_189:
  v121 = String.UTF8View._foreignCount()();
  if ((v61 & 0x2000000000000000) == 0)
  {
LABEL_190:
    if (v121 <= 15)
    {
      goto LABEL_162;
    }

    goto LABEL_191;
  }

LABEL_158:
  if (!swift_isUniquelyReferenced_nonNull_native(v63 & 0xFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_190;
  }

  v122 = _StringGuts.nativeUnusedCapacity.getter(v61, v63);
  if (v123)
  {
    goto LABEL_320;
  }

  if (v121 > 15 || (v122 & 0x8000000000000000) == 0)
  {
LABEL_191:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v121, 0);
    v274 = 0;
    v275 = 0;
    closure #1 in _StringGuts.append(_:)(&v274, 0, &v276, 1);
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    v61 = v276._countAndFlagsBits;
    v126 = v276._object;
    goto LABEL_192;
  }

LABEL_162:
  if ((v63 & 0x1000000000000000) != 0)
  {
    v70 = _StringGuts._foreignConvertedToSmall()(v61, v63);
    v66 = v127;
  }

  else
  {
    if ((v61 & 0x1000000000000000) != 0)
    {
      v124 = ((v63 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v124 = _StringObject.sharedUTF8.getter(v61, v63);
      v73 = v246;
    }

    closure #1 in _StringGuts._convertedToSmall()(v124, v73, &v274, v120);
    v70 = v274;
    v66 = v275;
  }

  0xE000000000000000;
  v128._rawBits = 1;
  v129._rawBits = 1;
  v130._rawBits = _StringGuts.validateScalarRange(_:)(v128, v129, 0, 0xE000000000000000)._rawBits;
  if (v130._rawBits < 0x10000)
  {
    v130._rawBits |= 3;
  }

  v79 = Substring.description.getter(v130._rawBits, v131, 0, 0xE000000000000000);
  v73 = v132;
  0xE000000000000000;
  if ((v73 & 0x2000000000000000) == 0)
  {
    goto LABEL_306;
  }

  v73;
LABEL_175:
  v133 = specialized _SmallString.init(_:appending:)(*&v70, v66, *&v79, v73);
  if (v135)
  {
    goto LABEL_320;
  }

  v61 = v133;
  v273 = v134;
  v63;
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
LABEL_193:
  v144 = _StringGuts.init(_initialCapacity:)(6);
  v154 = v144;
  v276._countAndFlagsBits = v144;
  v276._object = v145;
  v155 = HIBYTE(v145) & 0xF;
  v156 = v144 & 0xFFFFFFFFFFFFLL;
  if ((v145 & 0x2000000000000000) != 0)
  {
    v156 = HIBYTE(v145) & 0xF;
  }

  if (v156 || (v144 & ~v145 & 0x2000000000000000) != 0)
  {
    if ((v145 & 0x2000000000000000) == 0 || v155 > 0xC)
    {
      _StringGuts.append(_:)(3026478, 0xE300000000000000, 0, 3, v146, v147, v148, v149, v150, v151, v152, v153);
      0xE300000000000000;
      v154 = v276._countAndFlagsBits;
      v163 = v276._object;
      goto LABEL_211;
    }

    v157 = 8 * HIBYTE(v145);
    v158 = (-255 << (v157 & 0x38)) - 1;
    v159 = 46 << (v157 & 0x38);
    v160 = v155 + 1;
    if (v155 >= 8)
    {
      v162 = v158 & v145 | v159;
      v161 = 8 * (v160 & 7);
    }

    else
    {
      v154 = (v158 & v144 | v159);
      if (v155 != 7)
      {
        v154 = (((-255 << (8 * (v160 & 7u))) - 1) & *&v154 | (46 << (8 * (v160 & 7u))));
        if (v155 < 6)
        {
          v154 = (((-255 << ((v157 + 16) & 0x38)) - 1) & *&v154 | (46 << ((v157 + 16) & 0x38)));
          v166 = v145;
          goto LABEL_206;
        }

        v165 = 0;
        v164 = v145;
LABEL_205:
        v166 = ((-255 << v165) - 1) & v164 | (46 << v165);
LABEL_206:
        v145;
        0xE300000000000000;
        v167 = 0xA000000000000000;
        if (!(*&v154 & 0x8080808080808080 | v166 & 0x80808080808080))
        {
          v167 = 0xE000000000000000;
        }

        v163 = (v167 & 0xFF00000000000000 | (v155 << 56) | v166 & 0xFFFFFFFFFFFFFFLL) + 0x300000000000000;
        goto LABEL_210;
      }

      v161 = 0;
      v162 = v145;
    }

    v164 = ((-255 << v161) - 1) & v162 | (46 << v161);
    v165 = (v157 + 16) & 0x38;
    goto LABEL_205;
  }

  v154 = 3026478;
  v145;
  v163 = 0xE300000000000000;
LABEL_210:
  v276._countAndFlagsBits = v154;
  v276._object = v163;
LABEL_211:
  v169 = v271;
  v168 = v272;
  (v56)(v271, v270 + *(v269 + 36), v272);
  v274 = 0;
  v275 = 0xE000000000000000;
  _debugPrint_unlocked<A, B>(_:_:)(v169, &v274, v168, &type metadata for String, &protocol witness table for String);
  v268(v169, v168);
  v171 = v274;
  v170 = v275;
  v172 = HIBYTE(v163) & 0xF;
  v173 = *&v154 & 0xFFFFFFFFFFFFLL;
  if ((v163 & 0x2000000000000000) != 0)
  {
    v174 = HIBYTE(v163) & 0xF;
  }

  else
  {
    v174 = *&v154 & 0xFFFFFFFFFFFFLL;
  }

  if (!v174 && (*&v154 & ~v163 & 0x2000000000000000) == 0)
  {
    v163;
    v276._countAndFlagsBits = v171;
    v276._object = v170;
    goto LABEL_282;
  }

  v272 = v61;
  v175 = (v275 & 0x2000000000000000) == 0;
  v176 = HIBYTE(v275) & 0xF;
  if ((v163 & 0x2000000000000000) == 0)
  {
    v177 = *&v274 & 0xFFFFFFFFFFFFLL;
    v178 = HIBYTE(v275) & 0xF;
    if ((v275 & 0x2000000000000000) != 0)
    {
LABEL_222:
      v271 = v177;
      if ((v275 & 0x1000000000000000) == 0)
      {
        goto LABEL_223;
      }

      goto LABEL_251;
    }

LABEL_221:
    v178 = v177;
    goto LABEL_222;
  }

  if ((v275 & 0x2000000000000000) == 0)
  {
    v177 = *&v274 & 0xFFFFFFFFFFFFLL;
    v175 = 1;
    goto LABEL_221;
  }

  v197 = v172 + v176;
  if (v172 + v176 >= 0x10)
  {
    v175 = 0;
    v178 = HIBYTE(v275) & 0xF;
    v271 = (*&v274 & 0xFFFFFFFFFFFFLL);
    if ((v275 & 0x1000000000000000) == 0)
    {
LABEL_223:
      v275;
      v180 = v178;
      if ((v163 & 0x1000000000000000) == 0)
      {
        goto LABEL_224;
      }

      goto LABEL_254;
    }

LABEL_251:
    swift_bridgeObjectRetain_n(v275, 2);
    v198._rawBits = 1;
    v199._rawBits = (v178 << 16) | 1;
    v200._rawBits = _StringGuts.validateScalarRange(_:)(v198, v199, v171, v170)._rawBits;
    if (v200._rawBits < 0x10000)
    {
      v200._rawBits |= 3;
    }

    v180 = String.UTF8View.distance(from:to:)(v200, v201);
    v170;
    if ((v163 & 0x1000000000000000) == 0)
    {
LABEL_224:
      v18 = __OFADD__(v174, v180);
      v181 = v174 + v180;
      if (!v18)
      {
LABEL_225:
        if ((*&v154 & ~v163 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v163 & 0xFFFFFFFFFFFFFFFLL))
        {
          v182 = _StringGuts.nativeUnusedCapacity.getter(*&v154, v163);
          if (v183)
          {
            goto LABEL_320;
          }

          if (v181 > 15)
          {
            goto LABEL_236;
          }

          if ((v163 & 0x2000000000000000) == 0)
          {
            if (v182 < v180)
            {
LABEL_231:
              if ((v163 & 0x1000000000000000) == 0)
              {
                v61 = v272;
                if ((*&v154 & 0x1000000000000000) != 0)
                {
                  v184 = ((v163 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v184 = _StringObject.sharedUTF8.getter(*&v154, v163);
                  v173 = v255;
                }

                closure #1 in _StringGuts._convertedToSmall()(v184, v173, &v274, v179);
                v154 = v274;
                v185 = v275;
LABEL_244:
                v170;
                v191._rawBits = 1;
                v192._rawBits = (v178 << 16) | 1;
                v193._rawBits = _StringGuts.validateScalarRange(_:)(v191, v192, v171, v170)._rawBits;
                if (v193._rawBits < 0x10000)
                {
                  v193._rawBits |= 3;
                }

                if (v193._rawBits >> 16 || v194._rawBits >> 16 != v178)
                {
                  v171 = specialized static String._copying(_:)(v193._rawBits, v194, v171, v170);
                  v196 = v203;
                  v170;
                }

                else
                {
                  v196 = v170;
                }

                if ((v196 & 0x2000000000000000) != 0)
                {
                  v196;
                }

                else if ((v196 & 0x1000000000000000) != 0)
                {
                  v171 = _StringGuts._foreignConvertedToSmall()(v171, v196);
                  v261 = v260;
                  v196;
                  v196 = v261;
                  v61 = v272;
                }

                else
                {
                  if ((v171 & 0x1000000000000000) != 0)
                  {
                    v242 = ((v196 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v243 = v171 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v242 = _StringObject.sharedUTF8.getter(v171, v196);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v242, v243, &v274, v195);
                  v196;
                  v171 = v274;
                  v196 = v275;
                }

                v204 = specialized _SmallString.init(_:appending:)(*&v154, v185, v171, v196);
                if ((v206 & 1) == 0)
                {
                  v207 = v204;
                  v208 = v205;
                  v163;
                  swift_bridgeObjectRelease_n(v170, 2);
                  v276._countAndFlagsBits = v207;
                  v276._object = v208;
                  goto LABEL_282;
                }

LABEL_320:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v154 = _StringGuts._foreignConvertedToSmall()(*&v154, v163);
              v185 = v237;
LABEL_243:
              v61 = v272;
              goto LABEL_244;
            }

LABEL_236:
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v181, v180);
            if ((v170 & 0x1000000000000000) == 0)
            {
              if (v175)
              {
                if ((v171 & 0x1000000000000000) != 0)
                {
                  v186 = (v170 & 0xFFFFFFFFFFFFFFFLL) + 32;
                  v187 = v271;
                  v61 = v272;
                  v188 = v271;
LABEL_240:
                  v189 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v187, v186, v188);
                  closure #1 in _StringGuts.append(_:)(v189, v190, &v276, v171 < 0);
                  swift_bridgeObjectRelease_n(v170, 2);
                  goto LABEL_282;
                }

                v251 = _StringObject.sharedUTF8.getter(v171, v170);
                if (v252 >= v271)
                {
                  v186 = v251;
                  v188 = v252;
                  v187 = v271;
                  v61 = v272;
                  goto LABEL_240;
                }

LABEL_316:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v274 = v171;
              v275 = v170 & 0xFFFFFFFFFFFFFFLL;
              closure #1 in _StringGuts.append(_:)(&v274, HIBYTE(v170) & 0xF, &v276, (v170 & 0x4000000000000000) != 0);
              goto LABEL_276;
            }

LABEL_257:
            _StringGuts._foreignAppendInPlace(_:)(v171, v170, 0, v178);
LABEL_276:
            swift_bridgeObjectRelease_n(v170, 2);
            v61 = v272;
            goto LABEL_282;
          }
        }

        else
        {
          if (v181 > 15)
          {
            goto LABEL_236;
          }

          if ((v163 & 0x2000000000000000) == 0)
          {
            goto LABEL_231;
          }
        }

        v185 = v163;
        goto LABEL_243;
      }

LABEL_256:
      __break(1u);
      goto LABEL_257;
    }

LABEL_254:
    v202 = String.UTF8View._foreignCount()();
    v181 = v202 + v180;
    if (!__OFADD__(v202, v180))
    {
      goto LABEL_225;
    }

    goto LABEL_256;
  }

  if (v176)
  {
    v209 = 0;
    v210 = 0;
    v211 = 8 * v172;
    v212 = 8 * v176;
    v213 = v163;
    v61 = v272;
    do
    {
      v214 = v275 >> (v209 & 0x38);
      if (v210 < 8)
      {
        v214 = *&v274 >> v209;
      }

      v215 = (v214 << (v211 & 0x38)) | ((-255 << (v211 & 0x38)) - 1) & v213;
      v216 = (v214 << v211) | ((-255 << v211) - 1) & *&v154;
      if (v172 <= 7)
      {
        v154 = v216;
      }

      else
      {
        v213 = v215;
      }

      ++v172;
      v211 += 8;
      v209 += 8;
      ++v210;
    }

    while (v212 != v209);
  }

  else
  {
    v213 = v163;
    v61 = v272;
  }

  v163;
  v170;
  v217 = 0xA000000000000000;
  if (!(*&v154 & 0x8080808080808080 | v213 & 0x80808080808080))
  {
    v217 = 0xE000000000000000;
  }

  v276._countAndFlagsBits = v154;
  v276._object = (v217 & 0xFF00000000000000 | (v197 << 56) | v213 & 0xFFFFFFFFFFFFFFLL);
LABEL_282:
  v218 = v276._object;
  v219 = (v276._object >> 56) & 0xF;
  if ((v276._object & 0x2000000000000000) == 0)
  {
    v219 = v276._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v219 || (v276._countAndFlagsBits & ~v276._object & 0x2000000000000000) != 0)
  {
    if ((v276._object & 0x2000000000000000) != 0 && (v220 = specialized _SmallString.init(_:appending:)(v276._countAndFlagsBits, v276._object, 0x29uLL, 0xE100000000000000), (v222 & 1) == 0))
    {
      v233 = v220;
      v232 = v221;
      v218;
      0xE100000000000000;
      v231 = v233;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v223, v224, v225, v226, v227, v228, v229, v230);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      v231 = v276._countAndFlagsBits;
      v232 = v276._object;
    }
  }

  else
  {
    v276._object;
    v232 = 0xE100000000000000;
    v231 = 41;
  }

  v234 = v273;
  v235 = specialized static String.+ infix(_:_:)(v61, v273, v231, v232);
  v234;
  v232;
  return v235;
}

uint64_t String.init<A>(reflecting:)(uint64_t a1, Class *a2)
{
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  _debugPrint_unlocked<A, B>(_:_:)(a1, v5, a2, &type metadata for String, &protocol witness table for String);
  (*(*(a2 - 1) + 1))(a1, a2);
  return v5[0];
}

uint64_t Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *v12;
  v15 = v13[1];
  v34[0] = *v13;
  v14 = v34[0];
  v34[1] = v15;
  v32 = static Mirror._superclassIterator<A>(_:_:)(v9, v34, v16);
  v18 = v17;
  outlined consume of Mirror.AncestorRepresentation(v14, v15);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v20 = swift_allocObject(v19, 0x48, 7uLL);
  v20[6] = a2;
  v20[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v20[8] = 0;
  v21 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v22 = swift_allocObject(v21, 0x18, 7uLL);
  v22[2] = 0;
  v23 = *(a2 + 16);
  v24 = swift_allocObject(v21, 0x18, 7uLL);
  v24[2] = v23;
  v20[2] = v22;
  v20[3] = &protocol witness table for _IndexBox<A>;
  v20[4] = v24;
  v20[5] = &protocol witness table for _IndexBox<A>;
  (*(v8 + 32))(v11, a1, a3);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v34, v11, a3, v25, 6uLL, v26, v27, v28, v31);
  v30 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  *a4 = a3;
  *(a4 + 8) = v20;
  *(a4 + 16) = v33;
  *(a4 + 24) = v32;
  *(a4 + 32) = v18;
  *(a4 + 40) = v30;
  return result;
}

uint64_t ClosedRange<>.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v60 = a4;
  v61 = a1;
  swift_getTupleTypeMetadata2(0, a2, a2, "lower upper ", 0);
  v57 = *(v6 - 8);
  v58 = v6;
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v56 = &v50 - v11;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v13 = v12;
  v54 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v50 - v15;
  v17 = *(*(swift_getAssociatedConformanceWitness(a3, a2, v13, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v17, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v19 = v18;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v50 - v22;
  v24 = *(a2 - 1);
  v26 = MEMORY[0x1EEE9AC00](v21, v25);
  v52 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v51 = &v50 - v29;
  v55 = a3;
  v30 = *(a3 + 8);
  v32 = type metadata accessor for Range(0, a2, v30, v31);
  v33 = *(v32 + 36);
  v53 = v30;
  if ((*(*(v30 + 8) + 8))(v61, v61 + v33, a2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v17, v13, v19, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&unk_18071E0B0, 257, v19, AssociatedConformanceWitness);
  (*(v17 + 24))(v23, v13, v17);
  v35 = v61;
  v36 = v51;
  (*(v55 + 48))(v16, a2);
  (*(v54 + 8))(v16, v13);
  v37 = v50;
  v38 = v52;
  (*(v50 + 16))(v52, v35, a2);
  (*(*(v32 - 8) + 8))(v35, v32);
  v39 = *(v37 + 32);
  v40 = v56;
  v39(v56, v38, a2);
  v41 = v58;
  v39(&v40[*(v58 + 48)], v36, a2);
  v42 = v57;
  v43 = v59;
  (*(v57 + 16))(v59, v40, v41);
  v44 = *(v41 + 48);
  v39(v60, v43, a2);
  v45 = *(v37 + 8);
  v45(&v43[v44], a2);
  (*(v42 + 32))(v43, v40, v41);
  v46 = *(v41 + 48);
  v48 = type metadata accessor for ClosedRange(0, a2, v53, v47);
  v39(&v60[*(v48 + 36)], &v43[v46], a2);
  return (v45)(v43, a2);
}

uint64_t ClosedRange.overlaps(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(v7 + 16);
  if (v8(a1 + *(a2 + 36), v3, v6, v7))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8(v3 + *(a2 + 36), a1, v6, v7) ^ 1;
  }

  return v9 & 1;
}

{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if ((*(v6 + 16))(v3 + *(a2 + 36), a1, v5, v6) & 1) != 0 || (v8 = *(type metadata accessor for Range(0, v5, v6, v7) + 36), ((*(v6 + 24))(a1 + v8, v3, v5, v6)))
  {
    v9 = 0;
  }

  else
  {
    v9 = (*(*(v6 + 8) + 8))(a1, a1 + v8, v5) ^ 1;
  }

  return v9 & 1;
}

uint64_t Range.overlaps(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = type metadata accessor for ClosedRange(0, v8, v9, a4);
  if ((*(v9 + 16))(a1 + *(v10 + 36), v5, v8, v9) & 1) != 0 || (v11 = *(a2 + 36), ((*(v9 + 24))(v5 + v11, a1, v8, v9)))
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(*(v9 + 8) + 8))(v5, v5 + v11, v8) ^ 1;
  }

  return v12 & 1;
}

uint64_t ClosedRange<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  return ClosedRange<>.encode(to:)(a1, a2, a3);
}

{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v7);
  (*(v8 + 32))(v16, v7, v8);
  v9 = v17;
  v10 = v18;
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  v11 = *(a2 + 16);
  (*(v10 + 160))(v3, v11, a3, v9, v10);
  if (!v4)
  {
    v12 = *(a2 + 36);
    v13 = v17;
    v14 = v18;
    __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    (*(v14 + 160))(v3 + v12, v11, a3, v13, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t __EmptyArrayStorage._withVerbatimBridgedUnsafeBuffer<A>(_:)@<X0>(uint64_t (*a1)(void, void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = a1(0, 0);
  if (!v3)
  {
    return (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }

  return result;
}

void *__EmptyArrayStorage._getNonVerbatimBridgingBuffer()()
{
  type metadata accessor for __BridgingBufferStorage(0);
  result = swift_bufferAllocate(v0, 0x18, 7uLL);
  result[2] = 0;
  return result;
}

uint64_t __ContiguousArrayStorageBase.withUnsafeBufferOfObjects<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v11 = type metadata accessor for Optional(0, a3, a3, a5);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v18 - v14;
  result = (*(*v5 + 112))(a1, a2, a3);
  if (!v6)
  {
    v17 = *(a3 - 8);
    if ((*(v17 + 48))(v15, 1, a3) == 1)
    {
      result = (*(v12 + 8))(v15, v11);
      __break(1u);
    }

    else
    {
      return (*(v17 + 32))(a4, v15, a3);
    }
  }

  return result;
}

uint64_t *_ContiguousArrayStorage.deinit()
{
  v1 = *(*(*v0 + 144) - 8);
  swift_arrayDestroy(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0[2], *(*v0 + 144));
  return v0;
}

void _ContiguousArrayStorage.__deallocating_deinit()
{
  v1 = *(*(*v0 + 144) - 8);
  swift_arrayDestroy(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0[2], *(*v0 + 144));

  swift_deallocClassInstance(v0);
}

uint64_t UnsafeBufferPointer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return UnsafeBufferPointer.subscript.getter(a1, a2, a3, a4, a5);
}

{
  if (a1 < 0 || a3 <= a1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a4 - 8);
  v6 = *(v5 + 16);
  v7 = a2 + *(v5 + 72) * a1;

  return v6(a5, v7, a4);
}

uint64_t _ContiguousArrayStorage.objectAtSubscript(_:)(uint64_t a1)
{
  if (a1 < 0 || v1[2] <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *(&v1[a1] + ((*(*(*(*v1 + 144) - 8) + 80) + 32) & ~*(*(*(*v1 + 144) - 8) + 80)));
}

void *_ContiguousArrayStorage.getObjects(_:range:)(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    goto LABEL_12;
  }

  v4 = v3[2];
  if (v4 < a2)
  {
    goto LABEL_12;
  }

  v5 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v5 < 0 || v4 < v5)
  {
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v4)
  {
    return result;
  }

  if ((a3 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_15;
  }

  v7 = 8 * a3;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  v6 = *(*(*v3 + 144) - 8);
  v8 = &v3[a2] + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return memmove(result, v8, v7);
}

Swift::Void __swiftcall UnsafeMutableRawPointer.copyMemory(from:byteCount:)(Swift::UnsafeRawPointer from, Swift::Int byteCount)
{
  if (byteCount < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  memmove(v2, from._rawValue, byteCount);
}

uint64_t _ContiguousArrayStorage._withVerbatimBridgedUnsafeBuffer<A>(_:)@<X0>(uint64_t (*a1)(char *, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v17 = a2;
  v18 = a1;
  v9 = *v5;
  v10 = type metadata accessor for Optional(0, a3, a3, a5);
  v19 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v17 - v12;
  v14 = *(*(a3 - 8) + 56);
  v14(a4, 1, 1, a3);
  v15 = *(v9 + 144);
  result = _swift_isClassOrObjCExistentialType(v15, v15);
  if (result)
  {
    (*(v19 + 8))(a4, v10);
    result = v18(&v5[(*(*(v15 - 1) + 80) + 32) & ~*(*(v15 - 1) + 80)], *(v5 + 2));
    if (!v6)
    {
      v14(v13, 0, 1, a3);
      return (*(v19 + 32))(a4, v13, v10);
    }
  }

  return result;
}

void _ContiguousArrayStorage._getNonVerbatimBridgingBuffer()(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 144);
  v4 = *(v3 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v20 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v18 - v8);
  v10 = v2[2];
  type metadata accessor for __BridgingBufferStorage(0);
  if (v10 >> 60)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(8 * v10, 24))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v21 = swift_bufferAllocate(v11, (8 * v10 + 24), 7uLL);
  v21[2] = v10;
  if (v10)
  {
    v12 = v21 + 3;
    v22 = *(v4 + 16);
    v13 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    v19 = (v4 + 32);
    do
    {
      v22(v9, v13, v3);
      if (_swift_isClassOrObjCExistentialType(v3, v3))
      {
        if (v23 != 8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v15 = *v9;
        v16 = *(v4 + 8);
        swift_unknownObjectRetain(*v9);
        v16(v9, v3);
      }

      else
      {
        v17 = v20;
        (*v19)(v20, v9, v3);
        v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v17, v3);
      }

      *v12++ = v15;
      v13 += v14;
      --v10;
    }

    while (v10);
  }
}

Swift::Void __swiftcall _ContiguousArrayBuffer._initStorageHeader(count:capacity:)(Swift::Int count, Swift::Int capacity)
{
  v4 = v2;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v3, v3);
  *(v4 + 16) = count;
  *(v4 + 24) = isClassOrObjCExistentialType | (2 * capacity);
}

uint64_t _ss22_ContiguousArrayBufferV017withUnsafeMutableC7Pointeryqd__qd__SryxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(*v7 + ((*(*(*(v14 + 16) - 8) + 80) + 32) & ~*(*(*(v14 + 16) - 8) + 80)), *(*v7 + 16), v13);
  if (v8)
  {
    return (*(v11 + 32))(a7, v13, a5);
  }

  return result;
}

uint64_t _ContiguousArrayBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(uint64_t a1)
{
  if (swift_isUniquelyReferenced_nonNull_native(*v1) && a1 <= *(*v1 + 24) >> 1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

void (*_ContiguousArrayBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x50, 0xC940uLL);
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = a4;
  *v8 = a2;
  v10 = *(a4 - 8);
  v11 = v10;
  v8[3] = v10;
  v12 = *(v10 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[4] = swift_coroFrameAlloc(v12, 0xC940uLL);
    v13 = swift_coroFrameAlloc(v12, 0xC940uLL);
  }

  else
  {
    v8[4] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[5] = v13;
  v15 = *(v11 + 16);
  v14 = v11 + 16;
  *(v9 + 18) = *(v14 + 64);
  v9[6] = *(v14 + 56);
  v9[7] = v15;
  v9[8] = v14 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15();
  return _ContiguousArrayBuffer.subscript.modify;
}

void _ContiguousArrayBuffer.subscript.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[5];
    v5 = v2[3];
    v4 = v2[4];
    v6 = v2[2];
    (*(v5 + 24))(v2[1] + ((*(v2 + 72) + 32) & ~*(v2 + 72)) + *v2 * v2[6], v3, v6);
    (*(v5 + 8))(v3, v6);
  }

  else
  {
    v7 = v2[7];
    v3 = v2[5];
    v8 = v2[3];
    v4 = v2[4];
    v9 = v2[2];
    v10 = v2[1] + ((*(v2 + 72) + 32) & ~*(v2 + 72)) + *v2 * v2[6];
    (*(v8 + 32))(v4, v3, v9);
    v7(v3, v10, v9);
    (*(v8 + 8))(v3, v9);
    (*(v8 + 40))(v10, v4, v9);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t key path getter for _ContiguousArrayBuffer.count : <A>_ContiguousArrayBuffer<A>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContiguousArray.count.getter(*a1);
  *a2 = result;
  return result;
}

uint64_t (*_ContiguousArrayBuffer.count.modify(void *a1, uint64_t a2))()
{
  *a1 = *(a2 + 16);
  a1[1] = a2;
  return _ContiguousArrayBuffer.count.modify;
}

id key path getter for _ContiguousArrayBuffer.subscript(_:) : <A>_ContiguousArrayBuffer<A>A@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a4@<X8>)
{
  v5 = specialized _ContiguousArrayBuffer.subscript.getter(*a2, a2[1], *a1);
  *a4 = v5;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;

  return swift_unknownObjectRetain(v5);
}

uint64_t key path setter for _ArrayBuffer.subscript(_:) : <A>_ArrayBuffer<A>A(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t (*a6)(uint64_t))
{
  v7 = *a1;
  v8 = a5(0, *(a3 + a4 - 8));
  swift_unknownObjectRetain(v7);
  return a6(v8);
}

void (*_ContiguousArrayBuffer.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(id *a1, uint64_t a2)
{
  if (a3 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *v4;
  v7 = *v4 + ((*(*(*(a4 + 16) - 8) + 80) + 32) & ~*(*(*(a4 + 16) - 8) + 80));
  *a1 = *v4;
  a1[1] = v7;
  a1[2] = a2;
  a1[3] = (2 * a3) | 1;
  v6;
  return _ContiguousArrayBuffer.subscript.modify;
}

void *__SwiftDeferredNSArray.__allocating_init(_nativeStorage:)(uint64_t a1)
{
  result = swift_allocObject(v1, 0x20, 7uLL);
  result[2] = 0;
  result[3] = a1;
  return result;
}

char *protocol witness for _ArrayBufferProtocol._copyContents(subRange:initializing:) in conformance _ContiguousArrayBuffer<A>(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = *v4;
  v6 = specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:)(a1, a2, a3, *v4, *(a4 + 16));
  v5;
  return v6;
}

uint64_t protocol witness for _ArrayBufferProtocol.requestNativeBuffer() in conformance _ContiguousArrayBuffer<A>()
{
  _swift_displayCrashMessage();

  return v0;
}

uint64_t protocol witness for _ArrayBufferProtocol.withUnsafeBufferPointer<A>(_:) in conformance _ArrayBuffer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void *, void))
{
  v9[2] = *(a4 + 16);
  v9[3] = a3;
  v9[4] = a1;
  v9[5] = a2;
  return a7(a6, v9, *v7);
}

uint64_t _ss12_ArrayBufferVyxGs01_aB8ProtocolssADP010withUnsafeB7Pointeryqd__qd__SRy7ElementQzGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFTWTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v13(v10);
  if (v6)
  {
    return (*(v9 + 32))(a6, v12, a4);
  }

  return result;
}

uint64_t protocol witness for _ArrayBufferProtocol.withUnsafeMutableBufferPointer<A>(_:) in conformance _ArrayBuffer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void *, uint64_t, uint64_t))
{
  v8[2] = *(a4 + 16);
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = a2;
  return (a7)(a6, v8, a4, a3, a5);
}

uint64_t _ss12_ArrayBufferVyxGs01_aB8ProtocolssADP017withUnsafeMutableB7Pointeryqd__qd__Sry7ElementQzGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFTWTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v13(v10);
  if (v6)
  {
    return (*(v9 + 32))(a6, v12, a4);
  }

  return result;
}

uint64_t (*protocol witness for _ArrayBufferProtocol.count.modify in conformance _ContiguousArrayBuffer<A>(void *a1))()
{
  v2 = *v1;
  a1[1] = *v1;
  *a1 = *(v2 + 16);
  return protocol witness for _ArrayBufferProtocol.count.modify in conformance _ContiguousArrayBuffer<A>;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance _ContiguousArrayBuffer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  v11 = *v3;
  (*(v6 + 32))(v8, a1, v5);
  v12 = v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10;
  (*(v6 + 16))(a1, v12, v5);
  (*(v6 + 8))(a1, v5);
  return (*(v6 + 40))(v12, v8, v5);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance _ContiguousArrayBuffer<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x50, 0x57B7uLL);
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 16);
  *v7 = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v7[1] = v10;
  v12 = *(v10 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[2] = swift_coroFrameAlloc(v12, 0x57B7uLL);
    v13 = swift_coroFrameAlloc(v12, 0x57B7uLL);
  }

  else
  {
    v7[2] = malloc(v12);
    v13 = malloc(v12);
  }

  v14 = *a2;
  v8[3] = v13;
  v8[4] = v14;
  v8[5] = *v3;
  v16 = *(v11 + 16);
  v15 = v11 + 16;
  *(v8 + 18) = *(v15 + 64);
  v8[6] = *(v15 + 56);
  v8[7] = v16;
  v8[8] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16();
  return protocol witness for MutableCollection.subscript.modify in conformance _ContiguousArrayBuffer<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance _ContiguousArrayBuffer<A>(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[3];
    v4 = v2[2];
    (*(v2[1] + 40))(v2[5] + ((*(v2 + 72) + 32) & ~*(v2 + 72)) + v2[4] * v2[6], v3, *v2);
  }

  else
  {
    v5 = v2[7];
    v3 = v2[3];
    v6 = v2[1];
    v4 = v2[2];
    v7 = *v2;
    v8 = v2[5] + ((*(v2 + 72) + 32) & ~*(v2 + 72)) + v2[4] * v2[6];
    (*(v6 + 32))(v4, v3, *v2);
    v5(v3, v8, v7);
    (*(v6 + 8))(v3, v7);
    (*(v6 + 40))(v8, v4, v7);
  }

  free(v3);
  free(v4);

  free(v2);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance _ContiguousArrayBuffer<A>(uint64_t *a1, uint64_t *a2, uint64_t a3))(id *a1, uint64_t a2)
{
  v4 = a2[1];
  if (v4 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *a2;
  v7 = *v3;
  v8 = *v3 + ((*(*(*(a3 + 16) - 8) + 80) + 32) & ~*(*(*(a3 + 16) - 8) + 80));
  *a1 = *v3;
  a1[1] = v8;
  a1[2] = v6;
  a1[3] = (2 * v4) | 1;
  v7;
  return _ContiguousArrayBuffer.subscript.modify;
}

uint64_t += infix<A, B>(_:_:)(uint64_t *a1, uint64_t a2, unint64_t *a3, Class *a4, uint64_t a5)
{
  v69 = a3;
  v64 = type metadata accessor for Optional(0, a3, a3, a4);
  v9 = *(v64 - 8);
  v11 = MEMORY[0x1EEE9AC00](v64, v10);
  v65 = &v54 - v12;
  v13 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = *(a5 + 8);
  v62 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v16;
  swift_getAssociatedTypeWitness(0, v16, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v68 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v67 = &v54 - v20;
  v57 = a1;
  v21 = *a1;
  v22 = *(v21 + 16);
  v23 = a2;
  v66 = *(a5 + 112);
  result = v66(a4, a5);
  v61 = v22;
  v27 = __OFADD__(v22, result);
  v28 = v22 + result;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v25 = *(v21 + 24);
    v26 = v25 >> 1;
    v59 = v18;
    v60 = v13;
    if ((v25 >> 1) >= v28)
    {
      v57 = v9;
      v29 = *(v69 - 1);
      v30 = a5;
      v31 = *(v29 + 80);
      v32 = *(v29 + 72);
      v33 = v66(a4, v30);
      if (v33 < 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v34 = v33;
      v58 = v29;
      v35 = v21 + ((v31 + 32) & ~v31) + v32 * v61;
      *(v21 + 16) = v28;
      v9 = v57;
      goto LABEL_5;
    }
  }

  if ((v26 + 0x4000000000000000) < 0)
  {
    __break(1u);
    return result;
  }

  v44 = v69;
  v45 = _ContiguousArrayBuffer.init(_uninitializedCount:minimumCapacity:)(v28, v25 & 0xFFFFFFFFFFFFFFFELL, v69);
  v46 = *(v44 - 1);
  v55 = v45;
  v56 = v46;
  v58 = v46;
  v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v48 = v45 + v47;
  v49 = v61;
  UnsafeMutablePointer.moveInitialize(from:count:)((v21 + v47), v61, v45 + v47, v44);
  *(v21 + 16) = 0;
  v21;
  v50 = v56;
  *v57 = v55;
  v51 = &v48[*(v50 + 72) * v49];
  v52 = v66(a4, a5);
  v35 = UnsafeMutableBufferPointer.init(start:count:)(v51, v52);
  v34 = v53;
LABEL_5:
  v36 = v60;
  (*(v60 + 16))(v62, v23, a4);
  v37 = v63;
  v38 = (v63[8])(v67, v35, v34, a4, v63);
  v39 = v68;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v37, a4, v68, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v41 = v65;
  (*(AssociatedConformanceWitness + 16))(v39, AssociatedConformanceWitness);
  v42 = (*(v58 + 48))(v41, 1, v69);
  (v9[1])(v41, v64);
  if (v42 != 1 || (v43 = v59, v38 != v34))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v36 + 8))(v23, a4);
  return (*(v43 + 8))(v67, v68);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance _ContiguousArrayBuffer<A>@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a2, a4);

  return RandomAccessCollection<>.index(before:)(a1, a2, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t _ss22_ContiguousArrayBufferVyxGSlsSl5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a3, a3);

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t _ss22_ContiguousArrayBufferVyxGSlsSl5index_8offsetBy07limitedF05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a4, a3);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t _ss22_ContiguousArrayBufferVyxGSlsSl8distance4from2toSi5IndexQz_AHtFTW_0(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a3, a3);

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t protocol witness for Collection.endIndex.getter in conformance _ContiguousArrayBuffer<A>@<X0>(uint64_t *a1@<X8>)
{
  result = ContiguousArray.count.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance _ContiguousArrayBuffer<A>(void *a1))()
{
  if (swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc(0x28, 0x365CuLL);
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _ContiguousArrayBuffer.subscript.read();
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

id protocol witness for Collection.subscript.getter in conformance _ContiguousArrayBuffer<A>@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v5 = specialized _ContiguousArrayBuffer.subscript.getter(*a1, a1[1], *v3);
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;

  return swift_unknownObjectRetain(v5);
}

uint64_t protocol witness for Collection.indices.getter in conformance _ContiguousArrayBuffer<A>@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X8>, uint64_t a3@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a1, a3);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a2);
}

uint64_t protocol witness for Collection.index(after:) in conformance _ContiguousArrayBuffer<A>@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a2, a4);

  return RandomAccessCollection<>.index(after:)(a1, a2, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance _ContiguousArrayBuffer<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance _ArrayBuffer<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, void))
{
  *a1 = (a6)(a2, a3, *v6, *(a4 + 16), a5);
  a1[1] = v8;
  return v9;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *&v26 = a1;
  *(&v26 + 1) = a2;
  *&v27 = a3;
  *(&v27 + 1) = a4;
  *&v28 = a1;
  BYTE8(v28) = 1;
  v4 = &_swiftEmptyArrayStorage;
  *v29 = &_swiftEmptyArrayStorage;
  v29[8] = 0;
  *&v29[12] = 0x1000000000000;
  a4;
  result = specialized Unicode._InternalNFD.Iterator.next()();
  v6 = 0;
  if ((result & 0x100000000) == 0)
  {
    v7 = &_swiftEmptySetSingleton;
    while (1)
    {
      if (!v6)
      {
        v8 = v4[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = result;
        v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        v12 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Unicode.Scalar>();
        v13 = swift_allocObject(v12, (4 * v11 + 32), 7uLL);
        v14 = _swift_stdlib_malloc_size(v13);
        v15 = v14 - 32;
        if (v14 < 32)
        {
          v15 = v14 - 29;
        }

        v16 = v15 >> 2;
        v13[2] = v11;
        v13[3] = (2 * (v15 >> 2));
        v17 = (v13 + 4);
        v18 = v4[3] >> 1;
        if (v4[2])
        {
          if (v13 != v4 || v17 >= v4 + 4 * v18 + 32)
          {
            memmove(v13 + 4, v4 + 4, 4 * v18);
          }

          v4[2] = 0;
        }

        v7 = (v17 + 4 * v18);
        v6 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
        v4;
        v4 = v13;
        result = v9;
      }

      v20 = __OFSUB__(v6--, 1);
      if (v20)
      {
        break;
      }

      *v7 = result;
      v7 = (v7 + 4);
      result = specialized Unicode._InternalNFD.Iterator.next()();
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v24[2] = v28;
  v24[3] = *v29;
  v25 = *&v29[16];
  v24[0] = v26;
  v24[1] = v27;
  result = outlined destroy of Unicode._NFD.Iterator(v24);
  v21 = v4[3];
  if (v21 < 2)
  {
    return v4;
  }

  v22 = v21 >> 1;
  v20 = __OFSUB__(v22, v6);
  v23 = (v22 - v6);
  if (!v20)
  {
    v4[2] = v23;
    return v4;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = 1;
  v46 = 1;
  *&v48 = a1;
  *(&v48 + 1) = a2;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  *&v49 = a3;
  *(&v49 + 1) = a4;
  *&v50 = a1;
  WORD4(v50) = 1;
  BYTE10(v50) = (v4 & 0x4000000000000000) != 0;
  LOBYTE(v51) = 1;
  v5 = &_swiftEmptyArrayStorage;
  *(&v51 + 1) = &_swiftEmptyArrayStorage;
  LOBYTE(v52) = 0;
  *(&v52 + 4) = 0x1000000000000;
  *&v53 = &_swiftEmptyArrayStorage;
  BYTE8(v53) = 0;
  HIDWORD(v53) = 0;
  v54 = 1;
  v6 = a4;
  v8 = 0;
  for (i = &_swiftEmptySetSingleton; ; i = (i + 4))
  {
    MEMORY[0x1EEE9AC00](v6, v7);
    if (BYTE9(v50) != 1)
    {
      if (BYTE10(v50))
      {
        v6 = specialized closure #1 in Unicode._InternalNFC.Iterator.next()(&v48, v10);
        if ((v6 & 0x100000000) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v6 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v50 + 8, closure #1 in Unicode._InternalNFC.Iterator.next()specialized partial apply);
        if ((v6 & 0x100000000) == 0)
        {
LABEL_21:
          v11 = v6;
LABEL_22:
          if (v8)
          {
            goto LABEL_36;
          }

LABEL_23:
          v19 = v5[3];
          if (((v19 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_56;
          }

          v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
          if (v20 <= 1)
          {
            v21 = 1;
          }

          else
          {
            v21 = v20;
          }

          v22 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Unicode.Scalar>();
          v23 = swift_allocObject(v22, (4 * v21 + 32), 7uLL);
          v24 = _swift_stdlib_malloc_size(v23);
          v25 = v24 - 32;
          if (v24 < 32)
          {
            v25 = v24 - 29;
          }

          v26 = v25 >> 2;
          v23[2] = v21;
          v23[3] = (2 * (v25 >> 2));
          v27 = (v23 + 4);
          v28 = v5[3] >> 1;
          if (v5[2])
          {
            v29 = v5 + 4;
            if (v23 != v5 || v27 >= v29 + 4 * v28)
            {
              memmove(v23 + 4, v29, 4 * v28);
            }

            v5[2] = 0;
          }

          i = (v27 + 4 * v28);
          v8 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;
          v6 = v5;
          v5 = v23;
          goto LABEL_36;
        }
      }
    }

    BYTE9(v50) = 1;
    if (BYTE10(v50))
    {
      goto LABEL_51;
    }

    v6 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v50 + 8);
    v11 = v6;
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_22;
    }

    v12 = HIDWORD(v53);
    v13 = v54;
    HIDWORD(v53) = v6;
    v54 = 1;
    if (v13 != 1)
    {
      v11 = v12;
      if (v8)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    v14 = v53;
    v15 = *(v53 + 16);
    if (!v15)
    {
      break;
    }

    if ((BYTE8(v53) & 1) == 0)
    {
      v16 = v15 - 1;
      if (v15 != 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v53);
        *&v53 = v14;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
        }

        *&v53 = v14;
        v32 = &v14[v15 + 3] + 2;
        v33 = v14 + 18;
        v34 = 1;
        do
        {
          if (v34 - 1 != v16)
          {
            v36 = v14[2];
            if (v34 - 1 >= v36 || v16 >= v36)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v37 = *v33;
            v38 = *(v33 - 1);
            v39 = *v32;
            *(v33 - 1) = *(v32 - 1);
            *v33 = v39;
            *(v32 - 1) = v38;
            *v32 = v37;
          }

          --v16;
          v32 -= 4;
          v33 += 4;
        }

        while (v34++ < v16);
        *&v53 = v14;
      }

      BYTE8(v53) = 1;
      if (!v14[2])
      {
        goto LABEL_57;
      }
    }

    v6 = swift_isUniquelyReferenced_nonNull_native(v14);
    *&v53 = v14;
    if (v6)
    {
      v17 = v14[2];
      if (!v17)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
      v14 = v6;
      *&v53 = v6;
      v17 = *(v6 + 16);
      if (!v17)
      {
LABEL_58:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v18 = (v17 - 1);
    v11 = v14[v18 + 4];
    v14[2] = v18;
    *&v53 = v14;
    if (!v8)
    {
      goto LABEL_23;
    }

LABEL_36:
    v30 = __OFSUB__(v8--, 1);
    if (v30)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *i = v11;
  }

  BYTE8(v53) = 0;
LABEL_51:
  v44[4] = v52;
  v44[5] = v53;
  v45 = v54;
  v44[0] = v48;
  v44[1] = v49;
  v44[3] = v51;
  v44[2] = v50;
  result = outlined destroy of Unicode._NFC.Iterator(v44);
  v41 = v5[3];
  if (v41 < 2)
  {
    return v5;
  }

  v42 = v41 >> 1;
  v30 = __OFSUB__(v42, v8);
  v43 = (v42 - v8);
  if (!v30)
  {
    v5[2] = v43;
    return v5;
  }

  __break(1u);
  return result;
}

__objc2_class **specialized _copySequenceToContiguousArray<A>(_:)(void *a1)
{
  v2 = type metadata accessor for __CocoaDictionary.Iterator();
  v3 = swift_allocObject(v2, 0xE8, 7uLL);
  *(v3 + 1) = 0u;
  v3[27] = 0;
  v4 = v3 + 27;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 12) = 0u;
  *(v3 + 5) = 0u;
  v3[28] = 0;
  v3[26] = a1;
  swift_unknownObjectRetain(a1);
  v5 = 0;
  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  v8 = &_swiftEmptySetSingleton;
  while (v6 != v3[28])
  {
    v10 = v3[3];
    if (!v10)
    {
      goto LABEL_36;
    }

    if (v6 >> 60)
    {
      __break(1u);
LABEL_32:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_8:
    v11 = (v10 + 8 * v6);
    if ((v11 & 7) != 0)
    {
      goto LABEL_32;
    }

    v12 = *v11;
    v3[27] = v6 + 1;
    v13 = v3[26];
    swift_unknownObjectRetain(v12);
    v14 = [v13 &sel:v12 objectForKey:?];
    if (!v14)
    {
      goto LABEL_36;
    }

    if (!v5)
    {
      v15 = v7[3];
      if (((v15 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_34;
      }

      v16 = v14;
      v17 = v15 & 0xFFFFFFFFFFFFFFFELL;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXl3key_yXl5valuetGMd, _ss23_ContiguousArrayStorageCyyXl3key_yXl5valuetGMR);
      v20 = swift_allocObject(v19, (16 * v18 + 32), 7uLL);
      v21 = _swift_stdlib_malloc_size(v20);
      v22 = v21 - 32;
      if (v21 < 32)
      {
        v22 = v21 - 17;
      }

      v23 = v22 >> 4;
      v20[2] = v18;
      v20[3] = (2 * (v22 >> 4));
      v24 = (v20 + 4);
      v25 = v7[3] >> 1;
      if (v7[2])
      {
        v26 = v7 + 4;
        if (v20 != v7 || v24 >= v26 + 16 * v25)
        {
          memmove(v20 + 4, v26, 16 * v25);
        }

        v7[2] = 0;
      }

      v8 = (v24 + 16 * v25);
      v5 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;
      v7;
      v7 = v20;
      v14 = v16;
      v4 = v3 + 27;
    }

    v27 = __OFSUB__(v5--, 1);
    if (v27)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    *v8 = v12;
    v8[1] = v14;
    v8 += 2;
    v6 = *v4;
    if ((*v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_27;
    }
  }

  v9 = [v3[26] countByEnumeratingWithState:v3 + 2 objects:v3 + 10 count:16];
  v3[28] = v9;
  if (v9)
  {
    v3[27] = 0;
    v10 = v3[3];
    if (!v10)
    {
      goto LABEL_36;
    }

    v6 = 0;
    goto LABEL_8;
  }

  *v4 = -1;
LABEL_27:
  v3;
  v28 = v7[3];
  if (v28 >= 2)
  {
    v29 = v28 >> 1;
    v27 = __OFSUB__(v29, v5);
    v30 = (v29 - v5);
    if (v27)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v7[2] = v30;
  }

  return v7;
}

{
  v2 = type metadata accessor for __CocoaSet.Iterator();
  v3 = swift_allocObject(v2, 0xE8, 7uLL);
  *(v3 + 1) = 0u;
  v3[27] = 0;
  v4 = v3 + 27;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 12) = 0u;
  *(v3 + 5) = 0u;
  v3[28] = 0;
  v3[26] = a1;
  swift_unknownObjectRetain(a1);
  v5 = 0;
  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  v8 = &_swiftEmptySetSingleton;
  while (v6 != v3[28])
  {
    v10 = v3[3];
    if (!v10)
    {
      goto LABEL_35;
    }

    if (v6 >> 60)
    {
      __break(1u);
LABEL_31:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_8:
    v11 = (v10 + 8 * v6);
    if ((v11 & 7) != 0)
    {
      goto LABEL_31;
    }

    v12 = *v11;
    *v4 = v6 + 1;
    swift_unknownObjectRetain(v12);
    if (!v5)
    {
      v13 = v7[3];
      if (((v13 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_33;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      v16 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0);
      v17 = swift_allocObject(v16, (8 * v15 + 32), 7uLL);
      v18 = _swift_stdlib_malloc_size(v17);
      v19 = v18 - 32;
      if (v18 < 32)
      {
        v19 = v18 - 25;
      }

      v20 = v19 >> 3;
      v17[2] = v15;
      v17[3] = ((2 * (v19 >> 3)) | 1);
      v21 = (v17 + 4);
      v22 = v7[3] >> 1;
      if (v7[2])
      {
        v23 = v7 + 4;
        if (v17 != v7 || v21 >= v23 + 8 * v22)
        {
          memmove(v17 + 4, v23, 8 * v22);
        }

        v7[2] = 0;
      }

      v8 = (v21 + 8 * v22);
      v5 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v22;
      v7;
      v7 = v17;
    }

    v24 = __OFSUB__(v5--, 1);
    if (v24)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *v8++ = v12;
    v6 = *v4;
    if ((*v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }
  }

  v9 = [v3[26] countByEnumeratingWithState:v3 + 2 objects:v3 + 10 count:16];
  v3[28] = v9;
  if (v9)
  {
    v3[27] = 0;
    v10 = v3[3];
    if (!v10)
    {
      goto LABEL_35;
    }

    v6 = 0;
    goto LABEL_8;
  }

  *v4 = -1;
LABEL_26:
  v3;
  v25 = v7[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v24 = __OFSUB__(v26, v5);
    v27 = (v26 - v5);
    if (v24)
    {
      goto LABEL_34;
    }

    v7[2] = v27;
  }

  return v7;
}

__objc2_class **specialized _copySequenceToContiguousArray<A>(_:)(__objc2_class **result)
{
  v1 = &_swiftEmptyArrayStorage;
  if (result)
  {
    v2 = result;
    v3 = 0;
    v4 = &_swiftEmptySetSingleton;
    while (1)
    {
      if (!v3)
      {
        v5 = v1[3];
        if (((v5 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
        if (v6 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        v8 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt8>();
        v9 = swift_allocObject(v8, (v7 + 32), 7uLL);
        v10 = 2 * _swift_stdlib_malloc_size(v9) - 64;
        v9[2] = v7;
        v9[3] = v10;
        v11 = (v9 + 4);
        v12 = v1[3] >> 1;
        if (v1[2])
        {
          if (v9 != v1 || v11 >= v1 + v12 + 32)
          {
            memmove(v9 + 4, v1 + 4, v12);
          }

          v1[2] = 0;
        }

        v4 = (v11 + v12);
        v3 = (v10 >> 1) - v12;
        result = v1;
        v1 = v9;
      }

      v14 = __OFSUB__(v3--, 1);
      if (v14)
      {
        break;
      }

      *v4 = v2 - 1;
      v4 = (v4 + 1);
      v15 = v2 > 0xFF;
      v2 >>= 8;
      if (!v15)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = 0;
LABEL_21:
  v16 = v1[3];
  if (v16 < 2)
  {
    return v1;
  }

  v17 = v16 >> 1;
  v14 = __OFSUB__(v17, v3);
  v18 = (v17 - v3);
  if (!v14)
  {
    v1[2] = v18;
    return v1;
  }

LABEL_27:
  __break(1u);
  return result;
}

__objc2_class **specialized _copySequenceToContiguousArray<A>(_:)(unint64_t *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    goto LABEL_54;
  }

  result = &_swiftEmptyArrayStorage;
  if (!a2)
  {
    v15 = 0;
    v12 = 0;
    v14 = &_swiftEmptySetSingleton;
    goto LABEL_27;
  }

  v5 = 0;
  for (i = 0; i != a2; ++i)
  {
    v7 = v5;
    v8 = vcnt_s8(a1[i]);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    v10 = __OFADD__(v5, v8.u32[0]);
    v5 += v8.u32[0];
    if (v10)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  if (!v5)
  {
    v15 = 0;
    v12 = 0;
    v14 = &_swiftEmptySetSingleton;
    v13 = *a1;
    goto LABEL_22;
  }

  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(v5, 0);
  if (v5 < 0)
  {
    goto LABEL_54;
  }

  v11 = 0;
  v12 = 0;
  v13 = *a1;
  v14 = result + 4;
  v15 = (result[3] >> 1) - (v9 + v7);
  do
  {
    if (v11 == v5)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v13)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
    }

    else
    {
      v17 = v12;
      do
      {
        v12 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_52;
        }

        if (v12 >= a2)
        {
          goto LABEL_57;
        }

        v18 = a1[v12];
        ++v17;
      }

      while (!v18);
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
    }

    ++v11;
    *v14++ = (v16 | (v12 << 6));
  }

  while (v11 != v5);
LABEL_22:
  if (v13)
  {
LABEL_23:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = v19 | (v12 << 6);
    if (!v15)
    {
      goto LABEL_32;
    }

LABEL_24:
    v10 = __OFSUB__(v15--, 1);
    if (!v10)
    {
      goto LABEL_44;
    }

    goto LABEL_53;
  }

LABEL_27:
  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_51;
    }

    if (v12 >= a2)
    {
      break;
    }

    v22 = a1[v12];
    ++v21;
    if (v22)
    {
      v13 = (v22 - 1) & v22;
      v20 = __clz(__rbit64(v22)) | (v12 << 6);
      if (v15)
      {
        goto LABEL_24;
      }

LABEL_32:
      v23 = result[3];
      if (((v23 >> 1) + 0x4000000000000000) < 0)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      v26 = result;
      v27 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Int>();
      v28 = swift_allocObject(v27, (8 * v25 + 32), 7uLL);
      v29 = _swift_stdlib_malloc_size(v28);
      v31 = v29 - 32;
      v30 = v29 < 32;
      v32 = v29 - 25;
      v33 = v26;
      if (v30)
      {
        v31 = v32;
      }

      v34 = v31 >> 3;
      v28[2] = v25;
      v28[3] = (2 * (v31 >> 3));
      v35 = (v28 + 4);
      v36 = v26[3] >> 1;
      if (v26[2])
      {
        v37 = v26 + 4;
        if (v28 != v26 || v35 >= v37 + 8 * v36)
        {
          memmove(v28 + 4, v37, 8 * v36);
          v33 = v26;
        }

        *(v33 + 16) = 0;
      }

      v14 = (v35 + 8 * v36);
      v38 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - v36;
      v33;
      result = v28;
      v10 = __OFSUB__(v38, 1);
      v15 = v38 - 1;
      if (v10)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v14++ = v20;
      if (v13)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }
  }

  v39 = result[3];
  if (v39 >= 2)
  {
    v40 = v39 >> 1;
    v10 = __OFSUB__(v40, v15);
    v41 = (v40 - v15);
    if (v10)
    {
      goto LABEL_56;
    }

    result[2] = v41;
  }

  return result;
}