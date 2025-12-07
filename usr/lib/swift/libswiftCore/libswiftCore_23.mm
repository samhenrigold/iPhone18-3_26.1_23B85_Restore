void specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v8 = v3[3] >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    *v1 = v3;
    v8 = v3[3] >> 1;
  }

  v10 = v3[2];
  v11 = v8 - v10;
  if (v11 < 0)
  {
LABEL_17:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!*(a1 + 16))
  {
    a1;
    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (v11 < v2)
  {
    goto LABEL_20;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v2, &v3[4 * v10 + 4]);
  a1;
  if (v2)
  {
    v12 = v3[2];
    v13 = __OFADD__(v12, v2);
    v14 = (v12 + v2);
    if (!v13)
    {
      v3[2] = v14;
      goto LABEL_15;
    }

    __break(1u);
LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_15:
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
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v8 = v3[3] >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    *v1 = v3;
    v8 = v3[3] >> 1;
  }

  v10 = v3[2];
  v11 = v8 - v10;
  if (v11 < 0)
  {
LABEL_17:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!*(a1 + 16))
  {
    a1;
    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (v11 < v2)
  {
    goto LABEL_20;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v2, &v3[2 * v10 + 4]);
  a1;
  if (v2)
  {
    v12 = v3[2];
    v13 = __OFADD__(v12, v2);
    v14 = (v12 + v2);
    if (!v13)
    {
      v3[2] = v14;
      goto LABEL_15;
    }

    __break(1u);
LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_15:
  *v1 = v3;
}

void specialized Array.append<A>(contentsOf:)(unint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v6 = *(a1 + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v5);
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v16 = v7[3] >> 1, v16 < v9))
  {
    if (v8 <= v9)
    {
      v17 = v8 + v6;
    }

    else
    {
      v17 = v8;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v17, 1, v7, a2, a3, a4, a5);
    *v5 = v7;
    v16 = v7[3] >> 1;
  }

  v18 = v7[2];
  v19 = v16 - v18;
  if (v19 < 0)
  {
LABEL_17:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!*(a1 + 16))
  {
    a1;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (v19 < v6)
  {
    goto LABEL_20;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v6, &v7[5 * v18 + 4], a4, a5);
  a1;
  if (v6)
  {
    v20 = v7[2];
    v21 = __OFADD__(v20, v6);
    v22 = (v20 + v6);
    if (!v21)
    {
      v7[2] = v22;
      goto LABEL_15;
    }

    __break(1u);
LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_15:
  *v5 = v7;
}

uint64_t Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v5 = v4;
  v112 = a2;
  v9 = *(a2 + 16);
  v10 = *(v9 - 1);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v113 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v119 = &v105 - v14;
  v17 = type metadata accessor for Optional(0, v9, v15, v16);
  v116 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v117 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v111 = &v105 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v118 = &v105 - v26;
  v27 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v25, v28);
  v123 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v126 = v30;
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v127 = &v105 - v33;
  v34 = *(a4 + 40);
  v124 = a4;
  v35 = v34(a3, a4);
  v36 = Array._getCount()();
  v39 = v36 + v35;
  if (__OFADD__(v36, v35))
  {
    __break(1u);
    goto LABEL_41;
  }

  v120 = v31;
  v121 = v35;
  v125 = v10;
  v115 = v17;
  type metadata accessor for _ArrayBuffer(0, v9, v37, v38);
  v40 = _ArrayBuffer.beginCOWMutation()();
  v110 = v5;
  v122 = a3;
  if (v40 && ((v41 = *v5, v42 = *v5 & 0xFFFFFFFFFFFFFF8, !_swift_isClassOrObjCExistentialType(v9, v9)) ? (v43 = v41) : (v43 = v41 & 0xFFFFFFFFFFFFFF8), v39 <= *(v43 + 24) >> 1))
  {
    v44 = a1;
  }

  else
  {
    v45 = *v5;
    if (_swift_isClassOrObjCExistentialType(v9, v9) && (v45 < 0 || (v45 & 0x4000000000000000) != 0))
    {
      if (v45 < 0)
      {
        v104 = v45;
      }

      else
      {
        v104 = (v45 & 0xFFFFFFFFFFFFFF8);
      }

      v48 = [v104 count];
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v9, v9);
      v47 = v45 & 0xFFFFFFFFFFFFFF8;
      if (!isClassOrObjCExistentialType)
      {
        v47 = v45;
      }

      v48 = *(v47 + 16);
    }

    v44 = a1;
    if (v48 <= v39)
    {
      v49 = v39;
    }

    else
    {
      v49 = v48;
    }

    v41 = _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40, v49, 1, v45, v9);
    *v5 = v41;
    v42 = v41 & 0xFFFFFFFFFFFFFF8;
  }

  if (_swift_isClassOrObjCExistentialType(v9, v9))
  {
    v50 = v42;
  }

  else
  {
    v50 = v41;
  }

  v51 = *(v50 + 16);
  v52 = _swift_isClassOrObjCExistentialType(v9, v9);
  v53 = v125[80];
  v54 = *(v125 + 9);
  if (_swift_isClassOrObjCExistentialType(v9, v9))
  {
    v55 = v42;
  }

  else
  {
    v55 = v41;
  }

  v56 = ((*(v55 + 24) >> 1) - v51);
  if (v56 < 0)
  {
LABEL_41:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v52)
  {
    v57 = v42;
  }

  else
  {
    v57 = v41;
  }

  v114 = v54;
  v58 = v57 + ((v53 + 32) & ~v53) + v54 * v51;
  v59 = v123;
  v60 = v44;
  v61 = v44;
  v62 = v122;
  (*(v27 + 16))(v123, v61, v122);
  v63 = v127;
  v64 = v124[8](v127, v58, v56, v62);
  if (v64 < v121)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v65 = v64;
  (*(v27 + 8))(v60, v62);
  if (v65 >= 1)
  {
    if (_swift_isClassOrObjCExistentialType(v9, v9))
    {
      v66 = v42;
    }

    else
    {
      v66 = v41;
    }

    v67 = *(v66 + 16);
    v68 = v67 + v65;
    if (__OFADD__(v67, v65))
    {
      __break(1u);
LABEL_50:
      v80 = (v125 + 32);
      v105 = (v125 + 8);
      v125 = v56;
      v123 = v59;
      do
      {
        (v124)(v65, v68);
        v83 = v110;
        Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v42);
        v84 = *v83;
        v85 = _swift_isClassOrObjCExistentialType(v9, v9);
        v86 = v84 & 0xFFFFFFFFFFFFFF8;
        v106 = v84 & 0xFFFFFFFFFFFFFF8;
        if (!v85)
        {
          v86 = v84;
        }

        v122 = *(v86 + 24);
        v107 = v84;
        v87 = _ArrayBuffer.firstElementAddress.getter(v84, v9);
        v88 = v68;
        v89 = v87;
        v90 = v117;
        (v41)(v117, v118, v88);
        if ((v56)(v90, 1, v9) == 1)
        {
          v91 = v117;
LABEL_64:
          v68 = v115;
          (v124)(v91, v115);
          v95 = v42;
        }

        else
        {
          v92 = (v122 >> 1);
          v93 = *v80;
          if (v42 > (v122 >> 1))
          {
            v92 = v42;
          }

          v122 = v92;
          v94 = v89 + v114 * v42;
          v91 = v117;
          while (1)
          {
            v93(v62, v91, v9);
            v95 = v122;
            if (v122 == v42)
            {
              break;
            }

            v96 = v63;
            v97 = v41;
            v98 = v118;
            v99 = v115;
            (v124)(v118, v115);
            v100 = v113;
            v93(v113, v119, v9);
            v93(v94, v100, v9);
            ++v42;
            v108(v126, v121);
            v91 = v117;
            v101 = v98;
            v41 = v97;
            v63 = v96;
            v102 = v99;
            v62 = v119;
            (v41)(v117, v101, v102);
            v103 = (v125)(v91, 1, v9);
            v94 += v114;
            if (v103 == 1)
            {
              goto LABEL_64;
            }
          }

          (*v105)(v62, v9);
          v42 = v95;
          v68 = v115;
        }

        v81 = _swift_isClassOrObjCExistentialType(v9, v9);
        v82 = v107;
        if (v81)
        {
          v82 = v106;
        }

        *(v82 + 16) = v95;
        v65 = v111;
        (v41)(v111, v118, v68);
        v56 = v125;
      }

      while ((v125)(v65, 1, v9) != 1);
      goto LABEL_48;
    }

    if (_swift_isClassOrObjCExistentialType(v9, v9))
    {
      v69 = v42;
    }

    else
    {
      v69 = v41;
    }

    *(v69 + 16) = v68;
  }

  if (v65 != v56 || v62 == v112)
  {
    return (*(v120 + 8))(v63, v126);
  }

  if (_swift_isClassOrObjCExistentialType(v9, v9))
  {
    v71 = v42;
  }

  else
  {
    v71 = v41;
  }

  v42 = *(v71 + 16);
  v72 = v126;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v124, v62, v126, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v74 = *(AssociatedConformanceWitness + 16);
  v75 = v118;
  v121 = AssociatedConformanceWitness;
  v108 = v74;
  v109 = AssociatedConformanceWitness + 16;
  (v74)(v72);
  v76 = v116;
  v59 = (v116 + 16);
  v41 = *(v116 + 16);
  v65 = v111;
  v77 = v75;
  v68 = v115;
  (v41)(v111, v77, v115);
  v63 = (v125 + 48);
  v56 = *(v125 + 6);
  v78 = (v56)(v65, 1, v9);
  v124 = *(v76 + 8);
  v116 = v76 + 8;
  v62 = v119;
  if (v78 != 1)
  {
    goto LABEL_50;
  }

LABEL_48:
  v79 = v124;
  (v124)(v118, v68);
  (*(v120 + 8))(v127, v126);
  return (v79)(v65, v68);
}

uint64_t UnsafeMutableBufferPointer.initialize<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v13 + 16))(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  return (*(a7 + 64))(a1, a3, a4, a6, a7);
}

Swift::Int __swiftcall UnsafeMutableBufferPointer.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Void __swiftcall Array.reserveCapacityForAppend(newElementsCount:)(Swift::Int newElementsCount)
{
  v2 = Array._getCount()();
  v3 = __OFADD__(v2, newElementsCount);
  v4 = v2 + newElementsCount;
  if (v3)
  {
    __break(1u);
  }

  else
  {

    Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  }
}

unint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v0);
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    *v0 = v1;
    v3 = *(v1 + 16);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = v3 - 1;
  v5 = *(v1 + 8 * v4 + 32) | (*(v1 + 8 * v4 + 36) << 32);
  *(v1 + 16) = v4;
  *v0 = v1;
  return v5;
}

uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(*v0);
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    *v0 = v1;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = v3 - 1;
  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
  *v0 = v1;
  return result;
}

uint64_t Array._customRemoveLast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Array._makeMutableAndUnique()();
  v5 = *v2;
  v6 = *(a1 + 16);
  if (_swift_isClassOrObjCExistentialType(v6, v6))
  {
    v7 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = v8 - 1;
  if (_swift_isClassOrObjCExistentialType(v6, v6))
  {
    v10 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = v5;
  }

  v14 = *(v6 - 1);
  (*(v14 + 32))(a2, v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v9, v6);
  if (_swift_isClassOrObjCExistentialType(v6, v6))
  {
    v11 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v11 = v5;
  }

  *(v11 + 16) = v9;
  v12 = *(v14 + 56);

  return v12(a2, 0, 1, v6);
}

unint64_t specialized Array.remove(at:)(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    *v1 = v3;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1 || a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v5 - 1;
  v7 = v3 + 8 * a1;
  v8 = *(v7 + 32);
  v7 += 32;
  v9 = *(v7 + 4);
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v7 + 8), v5 - 1 - a1, v7);
  *(v3 + 16) = v6;
  *v1 = v3;
  return v8 | (v9 << 32);
}

uint64_t specialized Array.remove(at:)(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    *v1 = v3;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1 || a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v5 - 1;
  v7 = v5 - 1 - a1;
  v8 = v3 + 16 * a1;
  v9 = *(v8 + 32);
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v8 + 48), v7, (v8 + 32));
  *(v3 + 16) = v6;
  *v1 = v3;
  return v9;
}

{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(*v1);
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    *v1 = v3;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1 || a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v5 - 1;
  v7 = v5 - 1 - a1;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
  v9 = *(v8 + 0x20);
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v8 + 40), v7, (v8 + 32));
  *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
  *v1 = v3;
  return v9;
}

BOOL Array.remove(at:)@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Array._makeMutableAndUnique()();
  v7 = *v3;
  v8 = *(a2 + 16);
  if (_swift_isClassOrObjCExistentialType(v8, v8))
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(v9 + 16);
  if (v10 <= a1 || a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (_swift_isClassOrObjCExistentialType(v8, v8))
  {
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(v8 - 1);
  v13 = *(v12 + 72);
  v14 = (v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + v13 * a1);
  (*(v12 + 32))(a3, v14, v8);
  UnsafeMutablePointer.moveInitialize(from:count:)(&v14[v13], v10 - 1 - a1, v14, v8);
  result = _swift_isClassOrObjCExistentialType(v8, v8);
  if (result)
  {
    v16 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v16 = v7;
  }

  *(v16 + 16) = v10 - 1;
  return result;
}

uint64_t Array.insert(_:at:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for CollectionOfOne(0, v7, a3, a4);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  Array._checkIndex(_:)(a2);
  (*(*(v7 - 8) + 32))(v11, a1, v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v8, v12);
  return Array.replaceSubrange<A>(_:with:)(a2, a2, v11, a3, v8, WitnessTable);
}

Swift::Void __swiftcall Array.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  if (keepingCapacity)
  {
    v3 = v1;
    v4 = *(v1 + 16);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v4, v4);
    v6 = *v2;
    if (isClassOrObjCExistentialType)
    {
      if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0 || (swift_isUniquelyReferenced_nonNull_bridgeObject(v6) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (!swift_isUniquelyReferenced_nonNull_native(v6))
    {
LABEL_6:
      v8 = *v2;
      v9 = Array._getCapacity()();
      v10 = _ContiguousArrayBuffer.init(_uninitializedCount:minimumCapacity:)(0, v9, v4);
      v8;
      *v2 = v10;
      return;
    }

    v20[2] = *v2;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v3, v7);
    RandomAccessCollection<>.indices.getter(v3, WitnessTable, &protocol witness table for Int, v20);
    v12 = v20[0];
    v13 = v20[1];
    v16 = type metadata accessor for EmptyCollection(0, v4, v14, v15);
    v18 = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v16, v17);
    Array.replaceSubrange<A>(_:with:)(v12, v13, v19, v3, v16, v18);
  }

  else
  {
    *v2;
    *v2 = &_swiftEmptyArrayStorage;
  }
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(Swift::UInt64 a1, Swift::String::Index a2, Swift::UInt64 a3, unint64_t a4)
{
  v8 = String.UTF8View.distance(from:to:)(a1, a2);
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

  v9 = v8;
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(v8, 0);
  if (v9 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = v10;
  a4;
  v12._rawBits = a1;
  v13 = specialized Sequence._copySequenceContents(initializing:)(&v26, (v11 + 4), v9, v12, a2._rawBits, a3, a4);
  v14 = v30._rawBits >> 14;
  v15 = v27 >> 14;
  if (v30._rawBits >> 14 != v27 >> 14)
  {
    rawBits = v26._rawBits;
    v18 = v28;
    v19 = v29;
    v20 = (v28 >> 59) & 1;
    if ((v29 & 0x1000000000000000) == 0)
    {
      LOBYTE(v20) = 1;
    }

    v21 = v30._rawBits & 0xC;
    v22 = 4 << v20;
    after = v30._rawBits;
    v23 = v30._rawBits;
    if (v21 == 4 << v20)
    {
      v23 = _StringGuts._slowEnsureMatchingEncoding(_:)(v30)._rawBits;
      v14 = v23 >> 14;
      if (v23 >> 14 < rawBits >> 14)
      {
        goto LABEL_25;
      }
    }

    else if (v14 < v26._rawBits >> 14)
    {
      goto LABEL_25;
    }

    if (v14 < v15)
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        String.UTF8View._foreignSubscript(position:)(v23);
        if (v21 == v22)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v19 & 0x2000000000000000 | v18 & 0x1000000000000000)
        {
          if (v21 != v22)
          {
            goto LABEL_18;
          }

LABEL_30:
          after = _StringGuts._slowEnsureMatchingEncoding(_:)(after)._rawBits;
          if ((v19 & 0x1000000000000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }

        _StringObject.sharedUTF8.getter(v18, v19);
        if (v21 == v22)
        {
          goto LABEL_30;
        }
      }

LABEL_18:
      if ((v19 & 0x1000000000000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_19:
      v24 = v18 & 0xFFFFFFFFFFFFLL;
      if ((v19 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v19) & 0xF;
      }

      if (v24 <= after >> 16)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      String.UTF8View._foreignIndex(after:)(after);
LABEL_23:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_25:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v13 != v9)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v29;
  return v11;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v5 = swift_allocObject(v4, 0x30, 7uLL);
  v6 = _swift_stdlib_malloc_size(v5);
  v7 = v6 - 32;
  if (v6 < 32)
  {
    v7 = v6 - 25;
  }

  v5[2] = 2;
  v5[3] = 2 * (v7 >> 3);
  v5[4] = a1;
  v5[5] = a2;
  return v5;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = a1;
  if (WORD1(a1))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2, a1);
  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v3, 0);
  if (v4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v5;
  v7 = specialized Sequence._copySequenceContents(initializing:)(&v11, v5 + 16, v4, v1);
  v8 = v11;
  if (HIWORD(v11))
  {
    if (v12 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v12 != 1)
  {
LABEL_8:
    v9 = v12;
    Unicode.Scalar.UTF16View.subscript.getter(v12, v11);
    specialized RandomAccessCollection<>.index(after:)(v9, v8);
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 != v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v6;
}

{
  v1 = a1;
  v2 = 2;
  v3 = 3;
  if (a1 >= 0x10000)
  {
    v3 = 4;
  }

  if (a1 > 0x7FF)
  {
    v2 = v3;
  }

  if (a1 >= 0x80)
  {
    v4 = v2;
  }

  else
  {
    v4 = 1;
  }

  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4, a1);
  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(v5, 0);
  if (v6 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v7;
  v9 = specialized Sequence._copySequenceContents(initializing:)(&v13, v7 + 32, v6, v1);
  v10 = v13;
  if (v13 < 0x80)
  {
    v11 = v14;
    if (v14 != 1)
    {
      if (v14)
      {
        goto LABEL_13;
      }

LABEL_31:
      specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v13, v11);
      specialized RandomAccessCollection<>.index(after:)(v11, v10);
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_26;
  }

  if (v13 >= 0x800)
  {
    v11 = v14;
    if (HIWORD(v13))
    {
      if (v14 == 4)
      {
        goto LABEL_26;
      }
    }

    else if (v14 == 3)
    {
      goto LABEL_26;
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      if (HIWORD(v13))
      {
        if (v14 < 4)
        {
          goto LABEL_31;
        }
      }

      else if (v14 < 3)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_13;
  }

  v11 = v14;
  if (v14 != 2)
  {
    if (v14 < 2)
    {
      goto LABEL_31;
    }

LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_26:
  if (v9 != v6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v8;
}

{
  v1 = __clz(a1) >> 3;
  if (v1 == 4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = a1;
  v4 = 4 - v1;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(4 - v1, 0);
  v6 = specialized Sequence._copySequenceContents(initializing:)(&v7, (v5 + 4), v4, v3);
  if (v7)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v6 != v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v5;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String>(0);
  v4 = swift_allocObject(v3, (16 * v1 + 32), 7uLL);
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 17;
  }

  *(v4 + 2) = v1;
  *(v4 + 3) = 2 * (v6 >> 4);
  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v1, v4 + 32);
  return v4;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(unsigned int a1)
{
  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v3 = swift_allocObject(v2, 0x28, 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 25;
  }

  v3[2] = 1;
  v3[3] = 2 * (v5 >> 3);
  v3[4] = a1;
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(unsigned __int16 a1)
{
  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v3 = swift_allocObject(v2, 0x28, 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 25;
  }

  v3[2] = 1;
  v3[3] = 2 * (v5 >> 3);
  v3[4] = a1;
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(unsigned __int8 a1)
{
  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v3 = swift_allocObject(v2, 0x28, 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 25;
  }

  v3[2] = 1;
  v3[3] = 2 * (v5 >> 3);
  v3[4] = a1;
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(int a1)
{
  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v3 = swift_allocObject(v2, 0x28, 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 25;
  }

  v3[2] = 1;
  v3[3] = 2 * (v5 >> 3);
  v3[4] = a1;
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(__int16 a1)
{
  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v3 = swift_allocObject(v2, 0x28, 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 25;
  }

  v3[2] = 1;
  v3[3] = 2 * (v5 >> 3);
  v3[4] = a1;
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(char a1)
{
  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v3 = swift_allocObject(v2, 0x28, 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 25;
  }

  v3[2] = 1;
  v3[3] = 2 * (v5 >> 3);
  v3[4] = a1;
  return v3;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(void *a1)
{
  v2 = specialized RandomAccessCollection<>.distance(from:to:)(0, [a1 count], a1);
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = v2;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCyXl_Tt1gq5Tm(v2, 0);
  if ((v3 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = v4;
  v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, [a1 count], a1);
  if (v3 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  if (v6 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v6;
  swift_unknownObjectRetain(a1);
  specialized _CocoaArrayWrapper._copyContents(subRange:initializing:)(0, v7, (v5 + 4), a1);
  swift_unknownObjectRelease(a1);
  if (v7 != [a1 count])
  {
    v10 = [a1 objectAtIndex_];
    specialized RandomAccessCollection<>.index(after:)(v7, a1);
    swift_unknownObjectRelease(v10);
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v3 > v8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v5;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(HIBYTE(a2) & 0xF, 0);
  v6 = specialized Sequence._copySequenceContents(initializing:)(&v8, v5 + 32, v2, a1, a2);
  if (v10 != (HIBYTE(v9) & 0xF))
  {
    specialized RandomAccessCollection<>.index(after:)(v10, v8, v9);
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v6 != v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v5;
}

{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = String.distance(from:to:)(15, (v5 | (v4 << 16)));
  if (!v6)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = v6;
  v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5Tm(v6, 0, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Character>);
  if (v7 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = v8;
  a2;
  v10 = specialized Sequence._copySequenceContents(initializing:)(v13, v9 + 2, v7, a1, a2);
  v11 = String.Iterator.next()();
  if (v11.value._object)
  {
    v11.value._object;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v10 != v7)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v14;
  return v9;
}

{
  if ((a2 & 0x1000000000000000) == 0)
  {
    v4 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v4 = a1;
    }

    v5 = String.UTF16View._nativeGetOffset(for:)(((v4 << 16) | 7));
    if (v5)
    {
      goto LABEL_5;
    }

    return &_swiftEmptyArrayStorage;
  }

  v5 = String.UTF16View._foreignCount()();
  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_5:
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v5, 0);
  if (v5 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = v6;
  a2;
  v8 = specialized Sequence._copySequenceContents(initializing:)(v11, (v7 + 4), v5, a1, a2);
  *&v9 = String.UTF16View.Iterator.next()();
  if ((v9 & 0x10000) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 != v5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12;
  return v7;
}

{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      goto LABEL_6;
    }

    return &_swiftEmptyArrayStorage;
  }

  v4 = String.UTF8View._foreignCount()();
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_6:
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(v4, 0);
  if (v4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v5;
  v7 = _StringGuts.copyUTF8(into:)(v5 + 32, v4, a1, a2);
  if (v8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 != v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v6;
}

{
  v4._rawBits = specialized Collection.count.getter(a1, a2)._rawBits;
  if (v4._rawBits)
  {
    rawBits = v4._rawBits;
    v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5Tm(v4._rawBits, 0, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Unicode.Scalar>);
    if ((rawBits & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v7 = v6;
    a2;
    v8 = specialized Sequence._copySequenceContents(initializing:)(&v15, (v7 + 4), rawBits, a1, a2);
    v9 = v17;
    if (v17 < v18)
    {
      v10 = v15;
      if ((v16 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v17 << 16));
      }

      else
      {
        if ((v16 & 0x2000000000000000) != 0)
        {
          v14[0] = v15;
          v14[1] = v16 & 0xFFFFFFFFFFFFFFLL;
          v11 = v14;
        }

        else if ((v15 & 0x1000000000000000) != 0)
        {
          v11 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v13 = v17;
          v11 = _StringObject.sharedUTF8.getter(v15, v16);
          v9 = v13;
        }

        _decodeScalar(_:startingAt:)(v11, v10, v9);
      }

      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v8 != rawBits)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v16;
  }

  else
  {
    return &_swiftEmptyArrayStorage;
  }

  return v7;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(char *a1, _BYTE *a2)
{
  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = a2 - a1;
  if (a2 == a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(a2 - a1, 0);
  UnsafeMutableRawBufferPointer._copyContents(initializing:)(v6 + 4, v2, a1, a2);
  v8 = v7;
  if ((*&UnsafeRawBufferPointer.Iterator.next()() & 0x100) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 != v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v6;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(Swift::String::Index a1, Swift::String::Index a2, uint64_t a3, unint64_t a4)
{
  v8 = Substring.distance(from:to:)(a1, a2);
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

  v9 = v8;
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5Tm(v8, 0, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Character>);
  if (v9 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = v10;
  a4;
  v12 = specialized Sequence._copySequenceContents(initializing:)(&v17, v11 + 4, v9, a1._rawBits, a2._rawBits, a3, a4);
  v13._rawBits = v21;
  if ((v21 ^ v18) >= 0x4000)
  {
    Substring.subscript.getter(v21, v17, v18, v19, v20);
    v16 = v15;
    Substring.index(after:)(v13);
    v16;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v12 != v9)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v20;
  return v11;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(Swift::UInt64 a1, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v8 = String.UTF16View.distance(from:to:)(a1, a2);
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

  v9 = v8;
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v8, 0);
  if (v9 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = v10;
  a4;
  v12._rawBits = a1;
  v13 = specialized Sequence._copySequenceContents(initializing:)(&v32, (v11 + 4), v9, v12, a2._rawBits, a3, a4);
  v15 = v36._rawBits >> 14;
  v16 = v33 >> 14;
  if (v36._rawBits >> 14 != v33 >> 14)
  {
    rawBits = v32._rawBits;
    v19 = v34;
    v20 = v35;
    v21 = (v34 >> 59) & 1;
    if ((v35 & 0x1000000000000000) == 0)
    {
      LOBYTE(v21) = 1;
    }

    v22 = v36._rawBits & 0xC;
    v23 = 4 << v21;
    v30 = v36._rawBits;
    v24 = v36._rawBits;
    if (v22 == 4 << v21)
    {
      v24 = _StringGuts._slowEnsureMatchingEncoding(_:)(v36)._rawBits;
      v15 = v24 >> 14;
      if (v24 >> 14 < rawBits >> 14)
      {
        goto LABEL_21;
      }
    }

    else if (v15 < v32._rawBits >> 14)
    {
      goto LABEL_21;
    }

    if (v15 < v16)
    {
      if ((v20 & 0x1000000000000000) != 0)
      {
        String.UTF16View._foreignSubscript(position:)(v24);
        goto LABEL_26;
      }

      if (v24)
      {
        v25 = v24 >> 16;
        if ((v20 & 0x2000000000000000) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v25 = _StringGuts.scalarAlignSlow(_:)(v24)._rawBits >> 16;
        if ((v20 & 0x2000000000000000) == 0)
        {
LABEL_18:
          if ((v19 & 0x1000000000000000) != 0)
          {
            v26 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v26 = _StringObject.sharedUTF8.getter(v19, v20);
          }

          goto LABEL_25;
        }
      }

      v31[0] = v19;
      v31[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      v26 = v31;
LABEL_25:
      v27 = _decodeScalar(_:startingAt:)(v26, v14, v25);
      Unicode.Scalar.UTF16View.subscript.getter(v15 & 3, v27);
LABEL_26:
      if (v22 == v23)
      {
        v30 = _StringGuts._slowEnsureMatchingEncoding(_:)(v30)._rawBits;
      }

      v28 = v19 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v28 = HIBYTE(v20) & 0xF;
      }

      if (v28 > v30 >> 16)
      {
        if ((v20 & 0x1000000000000000) != 0)
        {
          specialized String.UTF16View._foreignIndex(after:)(v30);
        }

        else
        {
          v29 = (v20 >> 62) & 1;
          if ((v20 & 0x2000000000000000) == 0)
          {
            LOBYTE(v29) = v19 < 0;
          }

          if ((v29 & 1) == 0)
          {
            if ((v30 & 0xC001) == 0)
            {
              _StringGuts.scalarAlignSlow(_:)(v30);
            }

            if (!(v20 & 0x2000000000000000 | v19 & 0x1000000000000000))
            {
              _StringObject.sharedUTF8.getter(v19, v20);
            }
          }
        }

        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_21:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v13 != v9)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v35;
  return v11;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(Swift::String::Index a1, Swift::String::Index a2, Swift::UInt64 a3, unint64_t a4)
{
  v8._rawBits = specialized Collection.count.getter(a1, a2, a3, a4)._rawBits;
  if (!v8._rawBits)
  {
    return &_swiftEmptyArrayStorage;
  }

  rawBits = v8._rawBits;
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5Tm(v8._rawBits, 0, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Unicode.Scalar>);
  if ((rawBits & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = v10;
  a4;
  v12._rawBits = a1._rawBits;
  v13 = specialized Sequence._copySequenceContents(initializing:)(&v30, (v11 + 4), rawBits, v12, a2._rawBits, a3, a4);
  v15 = v34._rawBits >> 14;
  v16 = v31 >> 14;
  if (v34._rawBits >> 14 != v31 >> 14)
  {
    v18 = v30._rawBits;
    v20 = v32;
    v19 = v33;
    v21 = (v33 & 0x1000000000000000) == 0 || (v32 & 0x800000000000000) != 0;
    v22 = v34._rawBits & 0xC;
    v23 = 4 << v21;
    v28 = v34._rawBits;
    if ((v34._rawBits & 1) == 0 || v22 == v23)
    {
      v24 = v34._rawBits;
      if (v22 == v23)
      {
        v24 = _StringGuts._slowEnsureMatchingEncoding(_:)(v34)._rawBits;
        v15 = v24 >> 14;
        if (v24 >> 14 < v18 >> 14)
        {
          goto LABEL_9;
        }
      }

      else if (v15 < v30._rawBits >> 14)
      {
        goto LABEL_9;
      }

      if (v15 >= v16)
      {
        goto LABEL_9;
      }

      if ((v24 & 1) == 0)
      {
        v24 = _StringGuts.scalarAlignSlow(_:)(v24)._rawBits;
        if ((v19 & 0x1000000000000000) == 0)
        {
LABEL_23:
          v25 = v24 >> 16;
          if ((v19 & 0x2000000000000000) != 0)
          {
            v29[0] = v20;
            v29[1] = v19 & 0xFFFFFFFFFFFFFFLL;
            _decodeScalar(_:startingAt:)(v29, v14, v25);
            _StringGuts.validateScalarIndex(_:)(v28);
          }

          else
          {
            if ((v20 & 0x1000000000000000) != 0)
            {
              v26 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v26 = _StringObject.sharedUTF8.getter(v20, v19);
            }

            _decodeScalar(_:startingAt:)(v26, v14, v25);
            _StringGuts.validateScalarIndex(_:)(v28);
            if ((v20 & 0x1000000000000000) == 0)
            {
              _StringObject.sharedUTF8.getter(v20, v19);
            }
          }

LABEL_29:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_33:
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v24 & 0xFFFFFFFFFFFF0000));
        v27._rawBits = _StringGuts.validateScalarIndex(_:)(v28)._rawBits;
        String.UnicodeScalarView._foreignIndex(after:)(v27);
        goto LABEL_29;
      }
    }

    else if (v15 >= v16 || (v24 = v34._rawBits, v15 < v30._rawBits >> 14))
    {
LABEL_9:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((v19 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

  if (v13 != rawBits)
  {
    goto LABEL_9;
  }

  v33;
  return v11;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<UInt>();
  v3 = swift_allocObject(v2, 0x28, 7uLL);
  v4 = _swift_stdlib_malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 25;
  }

  v3[2] = 1;
  v3[3] = 2 * (v5 >> 3);
  v3[4] = a1;
  return v3;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5Tm(a2 - a1, 0);
  if (a2 <= a1)
  {
    v7 = 0;
    v6 = v5;
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v6 = v5;
    memmove(v5 + 4, a1, v4);
    v7 = v4;
  }

  if ((*&UnsafeRawBufferPointer.Iterator.next()() & 0x100) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 != v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v6;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return &_swiftEmptyArrayStorage;
  }

  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0);
  v5 = swift_allocObject(v4, (8 * a2 + 32), 7uLL);
  v6 = _swift_stdlib_malloc_size(v5);
  v7 = v6 - 32;
  if (v6 < 32)
  {
    v7 = v6 - 25;
  }

  *(v5 + 2) = a2;
  *(v5 + 3) = (2 * (v7 >> 3)) | 1;
  specialized UnsafeMutablePointer.initialize(from:count:)(a1, a2, v5 + 32);
  return v5;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String>(0);
  v4 = swift_allocObject(v3, (16 * v1 + 32), 7uLL);
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 17;
  }

  v4[2] = v1;
  v4[3] = 2 * (v6 >> 4);
  a1;
  v7 = specialized Sequence._copySequenceContents(initializing:)(v11, v4 + 4, v1, a1);
  if (v11[4])
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v11[3];
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_15:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v9 >= ((v11[2] + 64) >> 6))
    {
      break;
    }

    ++v8;
    if (*(v11[1] + 8 * v9))
    {
      goto LABEL_9;
    }
  }

  if (v7 != v1)
  {
    goto LABEL_15;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v11[0]);
  return v4;
}

{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyArrayStorage;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v2 = [a1 count];
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0);
  v4 = swift_allocObject(v3, (8 * v2 + 32), 7uLL);
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 25;
  }

  *(v4 + 2) = v2;
  *(v4 + 3) = (2 * (v6 >> 3)) | 1;
  v1;
  v7 = specialized _ArrayBuffer._copyContents(initializing:)(v4 + 32, v2, v1);
  if (v7 >> 62)
  {
    v11 = (v7 & 0xFFFFFFFFFFFFFF8);
    if (v7 < 0)
    {
      v11 = v7;
    }

    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = [v11 count];
    v9 = v14;
    v8 = v13;
    v16 = v15;
    v7 = v12;
    if (v13 == v16)
    {
      goto LABEL_8;
    }

LABEL_18:
    v17 = v7;
    v18 = v8;
    v19 = specialized _ArrayBuffer.subscript.read(v22, v8, v7);
    v21 = *v20;
    swift_unknownObjectRetain(*v20);
    (v19)(v22, 0);
    specialized RandomAccessCollection<>.index(after:)(v18, v17);
    swift_unknownObjectRelease(v21);
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 != *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_8:
  if (v9 != v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7;
  return v4;
}

__objc2_class **specialized _copyCollectionToContiguousArray<A>(_:)(char *a1, int64_t a2)
{
  if (!a2)
  {
    return &_swiftEmptyArrayStorage;
  }

  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Int8>();
  v5 = swift_allocObject(v4, (a2 + 32), 7uLL);
  v6 = _swift_stdlib_malloc_size(v5);
  *(v5 + 2) = a2;
  *(v5 + 3) = 2 * v6 - 64;
  specialized UnsafeMutablePointer.initialize(from:count:)(a1, a2, v5 + 32);
  return v5;
}

__objc2_class **_copyCollectionToContiguousArray<A>(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v49 = &v42 - v15;
  v46 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v47 = v19;
  v45 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v42 - v21;
  v23 = *(a3 + 112);
  v48 = a1;
  v24 = v23(a2, a3);
  if (!v24)
  {
    return &_swiftEmptyArrayStorage;
  }

  v25 = v24;
  v43 = v12;
  v44 = v11;
  if (v24 < 1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v26 = getContiguousArrayStorageType<A>(for:)(v8, v8);
  v27 = *(v8 - 1);
  v28 = *(v27 + 72);
  v29 = *(v27 + 80);
  v30 = swift_allocObject(v26, (((v29 + *(v26 + 48)) & ~v29) + v28 * v25), v29 | *(v26 + 52));
  v31 = _swift_stdlib_malloc_size(v30);
  if (!v28 || ((v32 = (v29 + 32) & ~v29, v31 - v32 == 0x8000000000000000) ? (v33 = v28 == -1) : (v33 = 0), v33))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v34 = (v31 - v32) / v28;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v8, v8);
  v30[2] = v25;
  v30[3] = isClassOrObjCExistentialType | (2 * v34);
  (*(v46 + 16))(v18, v48, a2);
  v36 = (*(v6 + 64))(v22, v30 + v32, v25, a2, v6);
  v37 = v6;
  v38 = v47;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v37, a2, v47, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v40 = v49;
  (*(AssociatedConformanceWitness + 16))(v38, AssociatedConformanceWitness);
  LODWORD(v34) = (*(v27 + 48))(v40, 1, v8);
  (*(v43 + 8))(v40, v44);
  if (v34 != 1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v36 != v25)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v45 + 8))(v22, v38);
  return v30;
}

uint64_t protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a3 + 16);
  v7 = specialized Array.init(repeating:count:)(a1, a2, v6, static Array._allocateUninitialized(_:));
  result = (*(*(v6 - 8) + 8))(a1, v6);
  *a4 = v7;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.init<A>(_:) in conformance [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array.init<A>(_:)(a1, a2, a2, a3);
  *a4 = result;
  return result;
}

uint64_t RangeReplaceableCollection.insert<A>(contentsOf:at:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v44 = a6;
  v45 = a1;
  v46 = a4;
  v42 = a5;
  v10 = *(a5 + 8);
  swift_getAssociatedTypeWitness(255, v10, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  swift_getTupleTypeMetadata2(0, v12, v12, "lower upper ", 0);
  v14 = v13;
  v43 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v38 - v20;
  v47 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a3, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v24 = type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v23);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v38 - v27;
  if (((*(AssociatedConformanceWitness + 24))(a2, a2, v12, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v29 = *(v12 - 1);
  v30 = v29;
  v39 = v24;
  v31 = *(v29 + 16);
  v41 = v7;
  v31(v21, a2, v12);
  v31(&v21[*(v14 + 48)], a2, v12);
  v40 = v25;
  v32 = v43;
  (*(v43 + 16))(v18, v21, v14);
  v38 = *(v14 + 48);
  v33 = *(v30 + 32);
  v33(v28, v18, v12);
  v34 = *(v30 + 8);
  v34(&v18[v38], v12);
  (*(v32 + 32))(v18, v21, v14);
  v35 = *(v14 + 48);
  v36 = v39;
  v33(&v28[*(v39 + 36)], &v18[v35], v12);
  v34(v18, v12);
  (*(v42 + 32))(v28, v45, v46, v44, v47);
  return (*(v40 + 8))(v28, v36);
}

unint64_t specialized RangeReplaceableCollection.removeSubrange(_:)(unint64_t result)
{
  v2 = *v1;
  if (result)
  {
    if (!v2)
    {
      goto LABEL_18;
    }

    v3 = *v1;
    while (v3 != result)
    {
      v4 = v3 >= 0x100;
      v3 >>= 8;
      if (!v4)
      {
        goto LABEL_18;
      }
    }
  }

  v5 = HIDWORD(result);
  if (!HIDWORD(result))
  {
    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_18:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *v1;
  while (v6 != HIDWORD(result))
  {
    v4 = v6 >= 0x100;
    v6 >>= 8;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

LABEL_8:
  if (v2 < result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v2 == result)
  {
    if (result < HIDWORD(result))
    {
      goto LABEL_30;
    }

    v7 = 0;
    if (v5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v7 = 0;
    v8 = *v1;
    do
    {
      if (v2 < v8 || v8 <= result)
      {
        goto LABEL_30;
      }

      if (HIBYTE(v7))
      {
        goto LABEL_18;
      }

      v7 |= v8 << (-(__clz(v7) & 0x18) & 0x18);
      v8 >>= 8;
    }

    while (v8 != result);
    if (v2 < HIDWORD(result))
    {
LABEL_30:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v5)
    {
LABEL_25:
      v9 = HIDWORD(result);
      while ((v9 - 1) < HIDWORD(result))
      {
        if (HIBYTE(v7))
        {
          goto LABEL_18;
        }

        v7 |= v9 << (-(__clz(v7) & 0x18) & 0x18);
        v4 = v9 >= 0x100;
        LODWORD(v9) = v9 >> 8;
        if (!v4)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_30;
    }
  }

LABEL_13:
  *v1 = v7;
  return result;
}

uint64_t RangeReplaceableCollection.removeSubrange(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v10 = *(a3 + 32);
  swift_getAssociatedTypeWitness(255, *(*(a3 + 8) + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = type metadata accessor for EmptyCollection(0, v4, v5, v6);
  swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v7, v8);

  return v10(a1);
}

uint64_t specialized RangeReplaceableCollection.removeFirst()()
{
  v1 = v0[1];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2 || (v3 = specialized Collection.first.getter(*v0, v1), !v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = v3;
  specialized RangeReplaceableCollection.removeFirst(_:)(1);
  return v5;
}

unint64_t specialized RangeReplaceableCollection.removeFirst()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = specialized Collection.first.getter(*v0, *(v0 + 8));
  if ((v4 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = 7;
  if (((v2 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
  {
    v6 = 11;
  }

  v11 = String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(15, 1, (v6 | (v3 << 16)));
  if (v11.is_nil)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  rawBits = v11.value._rawBits;
  v8._rawBits = 15;
  v9._rawBits = rawBits;
  specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(v8, v9);
  return v5;
}

uint64_t RangeReplaceableCollection.removeFirst()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness(255, *(v6 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v17 - v13;
  if (((*(v6 + 104))(a1, v6) & 1) != 0 || (Collection.first.getter(a1, v6, v14), v15 = *(v8 - 8), (*(v15 + 48))(v14, 1, v8) == 1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v15 + 32))(a3, v14, v8);
  return (*(a2 + 136))(1, a1, a2);
}

Swift::Int specialized RangeReplaceableCollection.removeFirst(_:)(Swift::Int offsetBy)
{
  if (offsetBy)
  {
    if (offsetBy < 0)
    {
      goto LABEL_12;
    }

    v2 = v1[1];
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = *v1;
    }

    v4 = 7;
    if (((v2 >> 60) & ((*v1 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v9 = String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(15, offsetBy, (v4 | (v3 << 16)));
    if (v9.is_nil)
    {
LABEL_12:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    rawBits = v9.value._rawBits;
    v6._rawBits = 15;
    v7._rawBits = rawBits;

    return specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(v6, v7);
  }

  return offsetBy;
}

void specialized RangeReplaceableCollection.removeFirst(_:)(Swift::Int offsetBy)
{
  if (offsetBy)
  {
    if (offsetBy < 0)
    {
      goto LABEL_12;
    }

    v2 = *v1;
    v3 = v1[1];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *v1;
    }

    v5 = 7;
    if (((v3 >> 60) & ((v2 & 0x800000000000000) == 0)) != 0)
    {
      v5 = 11;
    }

    v12 = String.index(_:offsetBy:limitedBy:)(15, offsetBy, (v5 | (v4 << 16)));
    if (v12.is_nil)
    {
LABEL_12:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    rawBits = v12.value._rawBits;
    v7._rawBits = 15;
    v8._rawBits = rawBits;
    v9._rawBits = _StringGuts.validateScalarRange(_:)(v7, v8, v2, v3)._rawBits;

    _StringGuts.remove(from:to:)(v9, v10);
  }
}

unint64_t specialized RangeReplaceableCollection.removeFirst(_:)(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0 || (v2 = *v1, v3 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*v1, result, 0, *v1), (v3 & 0x100000000) != 0))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v2 < v3)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4 = v2 | (v3 << 32);

    return specialized RangeReplaceableCollection.removeSubrange(_:)(v4);
  }

  return result;
}

Swift::Void __swiftcall RangeReplaceableCollection.removeFirst(_:)(Swift::Int a1)
{
  v4 = v2;
  v5 = v1;
  v7 = *(v2 + 8);
  swift_getAssociatedTypeWitness(255, v7, v1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v74 = v10;
  v72 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v73 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v69 = &v60 - v15;
  v77 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v5, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v18 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v17);
  v70 = *(v18 - 8);
  v71 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v68 = &v60 - v20;
  v23 = type metadata accessor for Optional(0, v9, v21, v22);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v76 = &v60 - v26;
  v27 = *(v9 - 1);
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v75 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v60 - v33;
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v38 = &v60 - v37;
  v40 = MEMORY[0x1EEE9AC00](v36, v39);
  if (!a1)
  {
    return;
  }

  if (a1 < 0)
  {
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v66 = &v60 - v41;
  v67 = AssociatedConformanceWitness;
  v60 = v42;
  v61 = v40;
  v64 = v4;
  v43 = v77;
  v65 = *(v7 + 64);
  v65(v77, v7);
  (*(v7 + 72))(v43, v7);
  v44 = v43;
  v45 = v76;
  (*(v7 + 144))(v38, a1, v34, v44, v7);
  v46 = *(v27 + 8);
  v46(v34, v9);
  v62 = v27 + 8;
  v63 = v46;
  v46(v38, v9);
  if ((*(v27 + 48))(v45, 1, v9) == 1)
  {
    (*(v60 + 8))(v45, v61);
    goto LABEL_7;
  }

  v49 = *(v27 + 32);
  v47 = (v27 + 32);
  v48 = v49;
  v50 = v66;
  v49(v66, v45, v9);
  v51 = v75;
  v76 = v3;
  v65(v77, v7);
  if (((*(v67 + 24))(v51, v50, v9) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v52 = v69;
  v48(v69, v51, v9);
  v53 = v74;
  v48(&v52[*(v74 + 48)], v50, v9);
  v55 = v72;
  v54 = v73;
  (*(v72 + 16))(v73, v52, v53);
  v56 = *(v53 + 48);
  v57 = v68;
  v48(v68, v54, v9);
  v75 = v47;
  v58 = v63;
  v63(&v54[v56], v9);
  (*(v55 + 32))(v54, v52, v53);
  v59 = v71;
  v48(&v57[*(v71 + 36)], &v54[*(v53 + 48)], v9);
  v58(v54, v9);
  (*(v64 + 104))(v57, v77);
  (*(v70 + 8))(v57, v59);
}

uint64_t RangeReplaceableCollection<>.removeAll(where:)(uint64_t (*a1)(char *), char *a2, Class *a3, char *a4, uint64_t a5)
{
  v72 = a2;
  v66 = a5;
  v70 = a4;
  v71 = a1;
  v6 = *(a4 + 1);
  swift_getAssociatedTypeWitness(255, v6, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v65 = v9;
  v63 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v60 = &v56 - v14;
  v67 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v17 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v16);
  v61 = *(v17 - 8);
  v62 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v56 - v19;
  v68 = AssociatedConformanceWitness;
  v22 = type metadata accessor for PartialRangeFrom(0, v8, AssociatedConformanceWitness, v21);
  v59 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v56 - v25;
  v69 = *(v8 - 1);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v34 = &v56 - v33;
  MEMORY[0x1EEE9AC00](v32, v35);
  v37 = &v56 - v36;
  v38 = v73;
  result = MutableCollection._halfStablePartition(isSuffixElement:)(v71, v72, a3, v70, &v56 - v36);
  if (!v38)
  {
    v72 = v30;
    v73 = a3;
    v58 = v22;
    v41 = v68;
    v40 = v69;
    v70 = v20;
    v71 = 0;
    if (((*(*(v68 + 8) + 8))(v37, v37, v8) & 1) == 0 || (v42 = v40, v43 = *(v40 + 32), v44 = v26, v43(v26, v37, v8), (*(v42 + 16))(v34, v26, v8), v45 = v72, (v67[9])(v73), ((*(v41 + 24))(v34, v45, v8, v41) & 1) == 0))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(v59 + 8))(v44, v58);
    v46 = v60;
    v43(v60, v34, v8);
    v47 = v65;
    v43(&v46[*(v65 + 48)], v45, v8);
    v48 = v63;
    v49 = *(v63 + 16);
    v50 = v43;
    v57 = v43;
    v51 = v64;
    v49(v64, v46, v47);
    v72 = *(v47 + 48);
    v53 = v69;
    v52 = v70;
    v50(v70, v51, v8);
    v54 = *(v53 + 8);
    v54(&v72[v51], v8);
    (*(v48 + 32))(v51, v46, v47);
    v55 = v62;
    v57(&v52[*(v62 + 36)], &v51[*(v47 + 48)], v8);
    v54(v51, v8);
    (*(v66 + 104))(v52, v73);
    return (*(v61 + 8))(v52, v55);
  }

  return result;
}

unint64_t static Array.+ infix(_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v11 = a1;
  v6 = type metadata accessor for Array(0, a3, a3, a4);
  a1;
  a2;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v6, v7);
  Array.append<A>(contentsOf:)(&v10, v6, v6, WitnessTable);
  return v11;
}

uint64_t static Array.+= infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v5 = type metadata accessor for Array(0, a3, a3, a4);
  a2;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v5, v6);
  return Array.append<A>(contentsOf:)(&v9, v5, v5, WitnessTable);
}

uint64_t Array.customMirror.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v35 = a1;
  v7 = type metadata accessor for Array(0, a2, a4, a5);
  v32[0] = 0;
  v32[1] = 0;
  a1;
  v8 = static Mirror._superclassIterator<A>(_:_:)(&v35, v32, v7);
  v10 = v9;
  v11 = swift_allocObject(&unk_1EEEADCC8, 0x28, 7uLL);
  v11[2] = v7;
  v11[3] = v7;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v7, v12);
  v11[4] = WitnessTable;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
  v16 = swift_getWitnessTable(protocol conformance descriptor for [A], v7, v15);
  v17 = type metadata accessor for LazyMapSequence(255, v7, v14, v16);
  v34 = WitnessTable;
  v18 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v17, &v34);
  v20 = type metadata accessor for _CollectionBox(0, v17, v18, v19);
  v21 = swift_allocObject(v20, 0x48, 7uLL);
  v21[6] = a1;
  v21[7] = partial apply for closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:);
  v21[8] = v11;
  v22 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v23 = swift_allocObject(v22, 0x18, 7uLL);
  v23[2] = 0;
  a1;
  v24 = Array._getCount()();
  v25 = swift_allocObject(v22, 0x18, 7uLL);
  v25[2] = v24;
  v21[2] = v23;
  v21[3] = &protocol witness table for _IndexBox<A>;
  v21[4] = v25;
  v21[5] = &protocol witness table for _IndexBox<A>;
  v33 = a1;
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

uint64_t Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unint64_t *a4@<X3>, Class *a5@<X4>, const char *a6@<X5>, uint64_t a7@<X6>, Class **a8@<X8>)
{
  v65 = a2;
  v68 = a1;
  v76 = a8;
  v75 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v74 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v16, v15, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v18 = *(v17 - 8);
  v69 = v17;
  v70 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v67 = &v62 - v20;
  v21 = *(a7 + 8);
  v23 = type metadata accessor for LazySequence(0, a6, v21, v22);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v62 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
  v28 = type metadata accessor for LazyMapSequence(0, a6, v27, v21);
  v64 = *(v28 - 8);
  v29 = v64;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v62 - v31;
  v73 = *a3;
  v33 = *a4;
  v34 = a4[1];
  v77[0] = v33;
  v77[1] = v34;
  v66 = a5;
  v35 = static Mirror._superclassIterator<A>(_:_:)(a1, v77, a5);
  v71 = v36;
  v72 = v35;
  outlined consume of Mirror.AncestorRepresentation(v33, v34);
  v37 = *(*(a6 - 1) + 32);
  v37(v26, v65, a6);
  v38 = swift_allocObject(&unk_1EEEADCF0, 0x28, 7uLL);
  v38[2] = a5;
  v38[3] = a6;
  v38[4] = a7;
  v37(v32, v26, a6);
  v39 = &v32[*(v28 + 44)];
  *v39 = closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)partial apply;
  *(v39 + 1) = v38;
  v78 = a7;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v28, &v78);
  v63 = v28;
  v42 = type metadata accessor for _CollectionBox(0, v28, WitnessTable, v41);
  v43 = swift_allocObject(v42, *(v42 + 48), *(v42 + 52));
  (*(v29 + 16))(&v43[*(*v43 + 360)], v32, v28);
  v44 = v67;
  (*(a7 + 64))(a6, a7);
  v45 = v69;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a6, v69, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v48 = type metadata accessor for _IndexBox(0, v45, AssociatedConformanceWitness, v47);
  v49 = swift_allocObject(v48, *(v48 + 48), *(v48 + 52));
  v50 = *(v70 + 32);
  v50(&v49[*(*v49 + 96)], v44, v45);
  (*(a7 + 72))(a6, a7);
  (*(v64 + 8))(v32, v63);
  v51 = swift_allocObject(v48, *(v48 + 48), *(v48 + 52));
  v50(&v51[*(*v51 + 96)], v44, v45);
  *(v43 + 2) = v49;
  *(v43 + 3) = &protocol witness table for _IndexBox<A>;
  *(v43 + 4) = v51;
  *(v43 + 5) = &protocol witness table for _IndexBox<A>;
  v52 = v66;
  v53 = v74;
  (*(v75 + 32))(v74, v68, v66);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v77, v53, v52, v54, 6uLL, v55, v56, v57, v62);
  v59 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v77);
  }

  v60 = v76;
  *v76 = v52;
  v60[1] = v43;
  *(v60 + 16) = v73;
  v61 = v71;
  v60[3] = v72;
  v60[4] = v61;
  *(v60 + 40) = v59;
  return result;
}

Swift::String __swiftcall Collection._makeCollectionDescription(withTypeName:)(Swift::String_optional withTypeName)
{
  v4 = v3;
  v5 = v1;
  object = withTypeName.value._object;
  countAndFlagsBits = withTypeName.value._countAndFlagsBits;
  v8 = *(v2 + 8);
  swift_getAssociatedTypeWitness(0, v8, v1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v117 - v13;
  v17 = type metadata accessor for Optional(0, v10, v15, v16);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v21 = &v117 - v20;
  v123 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v19, v22);
  v122 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v8, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v125 = v24;
  v117 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v124 = &v117 - v26;
  v118 = object;
  if (!object)
  {
    v52 = 0xE100000000000000;
    v53 = 91;
    goto LABEL_36;
  }

  v120 = v11;
  v121 = v3;
  v27 = _StringGuts.init(_initialCapacity:)(4);
  v37 = v28;
  v127 = v27;
  v128 = v28;
  v38 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v38 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38 && (v27 & ~v28 & 0x2000000000000000) == 0)
  {
    v28;
    v50 = 0;
    v51 = 0xE000000000000000;
    v127 = 0;
    goto LABEL_12;
  }

  if ((v28 & 0x2000000000000000) != 0)
  {
    v39 = specialized _SmallString.init(_:appending:)(v27, v28, 0, 0xE000000000000000);
    if ((v41 & 1) == 0)
    {
      v51 = v40;
      v54 = countAndFlagsBits;
      v55 = v39;
      v37;
      0xE000000000000000;
      v50 = v55;
      countAndFlagsBits = v54;
      v127 = v50;
LABEL_12:
      v128 = v51;
      goto LABEL_13;
    }
  }

  _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v29, v30, v31, v32, v33, v34, v35, v36);
  0xE000000000000000;
  v50 = v127;
  v51 = v128;
LABEL_13:
  v56 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v56 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (v56 || (v50 & ~v51 & 0x2000000000000000) != 0)
  {
    if ((v51 & 0x2000000000000000) != 0 && (object & 0x2000000000000000) != 0 && (v57 = specialized _SmallString.init(_:appending:)(v50, v51, countAndFlagsBits, object), (v59 & 1) == 0))
    {
      v70 = v57;
      v69 = v58;
      v51;
      v127 = v70;
      v128 = v69;
      countAndFlagsBits = v70;
    }

    else
    {
      if ((object & 0x2000000000000000) != 0)
      {
        v60 = HIBYTE(object) & 0xF;
      }

      else
      {
        v60 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      _StringGuts.append(_:)(countAndFlagsBits, object, 0, v60, v42, v43, v44, v45, v46, v47, v48, v49);
      countAndFlagsBits = v127;
      v69 = v128;
    }
  }

  else
  {
    object;
    v51;
    v127 = countAndFlagsBits;
    v128 = object;
    v69 = object;
  }

  v71 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v71 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v71 || (countAndFlagsBits & ~v69 & 0x2000000000000000) != 0)
  {
    if ((v69 & 0x2000000000000000) != 0 && (v72 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v69, 0x5B28uLL, 0xE200000000000000), (v74 & 1) == 0))
    {
      v53 = v72;
      v52 = v73;
      v69;
      0xE200000000000000;
    }

    else
    {
      _StringGuts.append(_:)(23336, 0xE200000000000000, 0, 2, v61, v62, v63, v64, v65, v66, v67, v68);
      0xE200000000000000;
      v53 = v127;
      v52 = v128;
    }
  }

  else
  {
    v69;
    v52 = 0xE200000000000000;
    v53 = 23336;
  }

  v11 = v120;
  v4 = v121;
LABEL_36:
  0xE000000000000000;
  v127 = v53;
  v128 = v52;
  (*(v123 + 16))(v122, v4, v5);
  (*(v8 + 32))(v5, v8);
  v75 = v125;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v5, v125, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v77 = *(AssociatedConformanceWitness + 16);
  v122 = (AssociatedConformanceWitness + 16);
  v123 = AssociatedConformanceWitness;
  v121 = v77;
  v77(v75);
  v120 = *(v11 + 6);
  if (v120(v21, 1, v10) != 1)
  {
    v93 = *(v11 + 4);
    v93(v14, v21, v10);
    v94 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
    v119 = xmmword_18071DB30;
    while (1)
    {
      inited = swift_initStackObject(v94, v126);
      *(inited + 1) = v119;
      inited[7] = v10;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
      v93(boxed_opaque_existential_0Tm, v14, v10);
      specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v127);
      0xE000000000000000;
      0xE100000000000000;
      swift_setDeallocating(inited);
      __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
      v121(v125, v123);
      if (v120(v21, 1, v10) == 1)
      {
        break;
      }

      v93(v14, v21, v10);
      v105 = v128;
      v106 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v106 = v127 & 0xFFFFFFFFFFFFLL;
      }

      if (v106 || (v127 & ~v128 & 0x2000000000000000) != 0)
      {
        if (v128 & 0x2000000000000000) == 0 || (v107 = specialized _SmallString.init(_:appending:)(v127, v128, 0x202CuLL, 0xE200000000000000), (v109))
        {
          _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v97, v98, v99, v100, v101, v102, v103, v104);
          0xE200000000000000;
        }

        else
        {
          v110 = v107;
          v111 = v108;
          v105;
          0xE200000000000000;
          v127 = v110;
          v128 = v111;
        }
      }

      else
      {
        v128;
        v127 = 8236;
        v128 = 0xE200000000000000;
      }
    }
  }

  (*(v117 + 8))(v124, v125);
  if (v118)
  {
    v86 = 10589;
  }

  else
  {
    v86 = 93;
  }

  if (v118)
  {
    v87 = 0xE200000000000000;
  }

  else
  {
    v87 = 0xE100000000000000;
  }

  v88 = v128;
  v89 = HIBYTE(v128) & 0xF;
  if ((v128 & 0x2000000000000000) == 0)
  {
    v89 = v127 & 0xFFFFFFFFFFFFLL;
  }

  if (v89 || (v127 & ~v128 & 0x2000000000000000) != 0)
  {
    if ((v128 & 0x2000000000000000) != 0 && (v90 = specialized _SmallString.init(_:appending:)(v127, v128, v86, v87), (v92 & 1) == 0))
    {
      v112 = v90;
      v113 = v91;
      v88;
      v87;
      v87 = v113;
      v86 = v112;
    }

    else
    {
      _StringGuts.append(_:)(v86, v87, 0, HIBYTE(v87) & 3, v78, v79, v80, v81, v82, v83, v84, v85);
      v87;
      v86 = v127;
      v87 = v128;
    }
  }

  else
  {
    v128;
  }

  v114 = v86;
  v115 = v87;
  result._object = v115;
  result._countAndFlagsBits = v114;
  return result;
}

uint64_t Array.description.getter(unint64_t a1, unint64_t *a2)
{
  v3 = a1;
  v4 = *(a2 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v105 = &v95 - v9;
  0xE000000000000000;
  v10 = 91;
  v11 = 0xE100000000000000;
  v108 = 91;
  v109 = 0xE100000000000000;
  v104 = Array._getCount()();
  if (!v104)
  {
    goto LABEL_67;
  }

  v96 = v5;
  v11 = 0;
  v102 = (v4 + 16);
  v103 = v3 & 0xC000000000000001;
  v12 = v4 + 32;
  v13 = 1;
  v101 = xmmword_18071DB30;
  v97 = xmmword_18071DB40;
  v99 = v4;
  v100 = v3;
  v98 = v7;
  while (1)
  {
    v17 = v103 == 0;
    v10 = v17 | ~_swift_isClassOrObjCExistentialType(a2, a2);
    Array._checkSubscript(_:wasNativeTypeChecked:)(v11, v10 & 1);
    if (v10)
    {
      (*(v4 + 16))(v105, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, a2);
      v18 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      goto LABEL_9;
    }

    v53 = _ArrayBuffer._getElementSlowPath(_:)(v11, v3, a2);
    if (v96 != 8)
    {
      goto LABEL_137;
    }

    *&v106 = v53;
    v10 = v53;
    (*v102)(v105, &v106, a2);
    swift_unknownObjectRelease(v10);
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

LABEL_9:
    v19 = *v12;
    (*v12)(v7, v105, a2);
    if (v13)
    {
      goto LABEL_6;
    }

    v20 = v108;
    v10 = v109;
    v21 = HIBYTE(v109) & 0xF;
    v22 = v108 & 0xFFFFFFFFFFFFLL;
    if ((v109 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v109) & 0xF;
    }

    else
    {
      v23 = v108 & 0xFFFFFFFFFFFFLL;
    }

    if (v23 || (v108 & ~v109 & 0x2000000000000000) != 0)
    {
      if ((v109 & 0x2000000000000000) != 0 && v21 <= 0xD)
      {
        v24 = 8 * (HIBYTE(v109) & 7);
        v25 = (-255 << v24) - 1;
        v26 = 44 << v24;
        v27 = v21 + 1;
        if (v21 >= 8)
        {
          v29 = v25 & v109 | v26;
          v28 = 8 * (v27 & 7);
          v3 = v100;
        }

        else
        {
          v20 = v25 & v108 | v26;
          v3 = v100;
          if (v21 != 7)
          {
            v20 = ((-255 << (8 * (v27 & 7u))) - 1) & v20 | (32 << (8 * (v27 & 7u)));
            v50 = v109;
            goto LABEL_48;
          }

          v28 = 0;
          v29 = v109;
        }

        v50 = ((-255 << v28) - 1) & v29 | (32 << v28);
LABEL_48:
        v109;
        0xE200000000000000;
        v51 = 0xE000000000000000;
        if (v20 & 0x8080808080808080 | v50 & 0x80808080808080)
        {
          v51 = 0xA000000000000000;
        }

        v108 = v20;
        v109 = (v51 & 0xFF00000000000000 | (v21 << 56) | v50 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
        goto LABEL_5;
      }

      0xE200000000000000;
      if ((v10 & 0x1000000000000000) != 0)
      {
        v54 = String.UTF8View._foreignCount()();
        v32 = v54 + 2;
        if (__OFADD__(v54, 2))
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }
      }

      else
      {
        v31 = __OFADD__(v23, 2);
        v32 = v23 + 2;
        if (v31)
        {
          goto LABEL_128;
        }
      }

      if ((v20 & ~v10 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
      {
        v33 = _StringGuts.nativeUnusedCapacity.getter(v20, v10);
        if (v34)
        {
          goto LABEL_139;
        }

        if (v32 <= 15)
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            goto LABEL_34;
          }

          if (v33 < 2)
          {
            goto LABEL_28;
          }
        }
      }

      else if (v32 <= 15)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
LABEL_34:
          v36 = v10;
        }

        else
        {
LABEL_28:
          if ((v10 & 0x1000000000000000) != 0)
          {
            v20 = _StringGuts._foreignConvertedToSmall()(v20, v10);
            v36 = v52;
          }

          else
          {
            if ((v20 & 0x1000000000000000) != 0)
            {
              v35 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v35 = _StringObject.sharedUTF8.getter(v20, v10);
              v22 = v57;
            }

            closure #1 in _StringGuts._convertedToSmall()(v35, v22, &v106, v30);
            v36 = *(&v106 + 1);
            v20 = v106;
          }
        }

        v37 = 0xE200000000000000;
        0xE200000000000000;
        v38._rawBits = 131073;
        v39._rawBits = 1;
        v40._rawBits = _StringGuts.validateScalarRange(_:)(v39, v38, 0x202CuLL, 0xE200000000000000)._rawBits;
        if (v40._rawBits < 0x10000)
        {
          v40._rawBits |= 3;
        }

        if (v40._rawBits >> 16 || (v43 = 8236, (v41._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
        {
          v43 = specialized static String._copying(_:)(v40._rawBits, v41, 0x202CuLL, 0xE200000000000000);
          v37 = v44;
          0xE200000000000000;
        }

        if ((v37 & 0x2000000000000000) != 0)
        {
          v37;
        }

        else if ((v37 & 0x1000000000000000) != 0)
        {
          v43 = _StringGuts._foreignConvertedToSmall()(v43, v37);
          v95 = v58;
          v37;
          v37 = v95;
        }

        else
        {
          if ((v43 & 0x1000000000000000) != 0)
          {
            v55 = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v56 = v43 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = _StringObject.sharedUTF8.getter(v43, v37);
          }

          closure #1 in _StringGuts._convertedToSmall()(v55, v56, &v106, v42);
          v37;
          v37 = *(&v106 + 1);
          v43 = v106;
        }

        v45 = specialized _SmallString.init(_:appending:)(v20, v36, v43, v37);
        if (v47)
        {
          goto LABEL_139;
        }

        v48 = v45;
        v49 = v46;
        v10;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v108 = v48;
        v109 = v49;
        goto LABEL_4;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v32, 2);
      v106 = v97;
      0xE200000000000000;
      _StringGuts.appendInPlace(_:isASCII:)(&v106, 2uLL, 1);
      0xE200000000000000;
    }

    else
    {
      v109;
      v108 = 8236;
      v109 = 0xE200000000000000;
    }

LABEL_4:
    v3 = v100;
LABEL_5:
    v4 = v99;
    v7 = v98;
LABEL_6:
    v14 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
    inited = swift_initStackObject(v14, v107);
    *(inited + 1) = v101;
    inited[7] = a2;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
    v19(boxed_opaque_existential_0Tm, v7, a2);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v108);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
    v13 = 0;
    ++v11;
    if (v18 == v104)
    {
      v10 = v108;
      v11 = v109;
LABEL_67:
      v21 = HIBYTE(v11) & 0xF;
      v12 = v10 & 0xFFFFFFFFFFFFLL;
      if ((v11 & 0x2000000000000000) != 0)
      {
        v59 = HIBYTE(v11) & 0xF;
      }

      else
      {
        v59 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (!v59 && (v10 & ~v11 & 0x2000000000000000) == 0)
      {
        v11;
        return 93;
      }

      if ((v11 & 0x2000000000000000) != 0 && v21 != 15)
      {
        if (v21 < 8)
        {
          v10 = ((-255 << (8 * (HIBYTE(v11) & 7u))) - 1) & v10 | (93 << (8 * (HIBYTE(v11) & 7u)));
        }

        goto LABEL_76;
      }

      0xE100000000000000;
      if ((v11 & 0x1000000000000000) == 0)
      {
        v31 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (!v31)
        {
          goto LABEL_79;
        }

        goto LABEL_131;
      }

LABEL_129:
      v88 = String.UTF8View._foreignCount()();
      v61 = v88 + 1;
      if (!__OFADD__(v88, 1))
      {
LABEL_79:
        v62 = v10 & ~v11;
        if ((v62 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
        {
          if (v61 > 15)
          {
            goto LABEL_90;
          }

          if ((v11 & 0x2000000000000000) == 0)
          {
            goto LABEL_85;
          }

          goto LABEL_106;
        }

        v63 = _StringGuts.nativeUnusedCapacity.getter(v10, v11);
        if ((v64 & 1) == 0)
        {
          if (v61 > 15)
          {
            goto LABEL_90;
          }

          if ((v11 & 0x2000000000000000) == 0)
          {
            if (v63 < 1)
            {
LABEL_85:
              if ((v11 & 0x1000000000000000) != 0)
              {
                goto LABEL_127;
              }

              if ((v10 & 0x1000000000000000) != 0)
              {
                v65 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v65 = _StringObject.sharedUTF8.getter(v10, v11);
                v12 = v92;
              }

              closure #1 in _StringGuts._convertedToSmall()(v65, v12, &v106, v60);
              v61 = *(&v106 + 1);
              v10 = v106;
              goto LABEL_107;
            }

LABEL_90:
            v66 = v62 & 0x2000000000000000;
            v67 = _StringGuts.nativeUnusedCapacity.getter(v10, v11);
            if ((v68 & 1) != 0 || v67 <= 0)
            {
              if (v66)
              {
                swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL);
              }

              v69 = _StringGuts.nativeCapacity.getter(v10, v11);
              if (v70)
              {
                v71 = 0;
              }

              else
              {
                v71 = v69;
              }

              if (v71 + 0x4000000000000000 < 0)
              {
                __break(1u);
LABEL_137:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v72 = 2 * v71;
              if (v72 > v61)
              {
                v61 = v72;
              }
            }

            else if (v66 && swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_104;
            }

            _StringGuts.grow(_:)(v61);
LABEL_104:
            v106 = xmmword_18071DB50;
            closure #1 in _StringGuts.append(_:)(&v106, 1uLL, &v108, 1);
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            return v108;
          }

LABEL_106:
          v61 = v11;
          goto LABEL_107;
        }

LABEL_139:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_131:
      __break(1u);
      goto LABEL_132;
    }
  }

  __break(1u);
LABEL_127:
  v10 = _StringGuts._foreignConvertedToSmall()(v10, v11);
  v61 = v87;
LABEL_107:
  v12 = 0xE100000000000000;
  0xE100000000000000;
  v21 = 93;
  v73._rawBits = 1;
  v74._rawBits = 65537;
  v75._rawBits = _StringGuts.validateScalarRange(_:)(v73, v74, 0x5DuLL, 0xE100000000000000)._rawBits;
  if (v75._rawBits < 0x10000)
  {
    v75._rawBits |= 3;
  }

  if (v75._rawBits >> 16 || (v76._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
  {
    v21 = specialized static String._copying(_:)(v75._rawBits, v76, 0x5DuLL, 0xE100000000000000);
    v12 = v77;
    0xE100000000000000;
  }

  if ((v12 & 0x2000000000000000) != 0)
  {
    v12;
    goto LABEL_114;
  }

LABEL_132:
  v89 = v10;
  if ((v12 & 0x1000000000000000) != 0)
  {
    v21 = _StringGuts._foreignConvertedToSmall()(v21, v12);
    v94 = v93;
    v12;
    v12 = v94;
    v10 = v89;
  }

  else
  {
    if ((v21 & 0x1000000000000000) != 0)
    {
      v90 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v91 = v21 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v90 = _StringObject.sharedUTF8.getter(v21, v12);
    }

    closure #1 in _StringGuts._convertedToSmall()(v90, v91, &v106, v60);
    v12;
    v12 = *(&v106 + 1);
    v21 = v106;
  }

LABEL_114:
  v78 = HIBYTE(v61) & 0xF;
  v79 = HIBYTE(v12) & 0xF;
  if (v79 + v78 > 0xF)
  {
    goto LABEL_139;
  }

  0xE100000000000000;
  if (v79)
  {
    v80 = 0;
    v81 = 0;
    v82 = 8 * v78;
    do
    {
      v83 = v12 >> (v80 & 0x38);
      if (v81 < 8)
      {
        v83 = v21 >> v80;
      }

      v84 = (v83 << (v82 & 0x38)) | ((-255 << (v82 & 0x38)) - 1) & v61;
      v85 = (v83 << v82) | ((-255 << v82) - 1) & v10;
      if (v78 <= 7)
      {
        v10 = v85;
      }

      else
      {
        v61 = v84;
      }

      ++v78;
      v82 += 8;
      v80 += 8;
      ++v81;
    }

    while (8 * v79 != v80);
  }

LABEL_76:
  v11;
  0xE100000000000000;
  return v10;
}

void *Array._cPointerArgs()(int64_t a1, unint64_t *a2)
{
  a1;
  if (_swift_isClassOrObjCExistentialType(a2, a2) && (a1 < 0 || (a1 & 0x4000000000000000) != 0))
  {
    if (Array._getCount()())
    {
      v8 = type metadata accessor for _ArrayBuffer(0, a2, v6, v7);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v8, v9);
      return (*(WitnessTable + 56))(v8, WitnessTable);
    }

    a1;
  }

  else
  {
    a1;
    _swift_isClassOrObjCExistentialType(a2, a2);
  }

  if (_swift_isClassOrObjCExistentialType(a2, a2) && (a1 < 0 || (a1 & 0x4000000000000000) != 0))
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    swift_unknownObjectRetain(v4);
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType(a2, a2))
    {
      v4 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v4 = a1;
    }

    a1;
  }

  return v4;
}

id _ContiguousArrayBuffer.owner.getter()
{
  _swift_displayCrashMessage();

  return swift_unknownObjectRetain(v0);
}

__objc2_class **_sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs4Int8V_Tt1g5026_ss15_persistCStringySays4F31VGSgSPyACGSgFySryACGz_SiztXEfU_SPyAFGSiTf1nc_n(uint64_t a1, char *a2, size_t a3)
{
  result = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZs4Int8V_Tt0g5(a1);
  if (a1 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 != a2 || v7 >= &a2[a3])
  {
    v8 = result;
    memmove(v7, a2, a3);
    result = v8;
  }

  if (a1 < a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result[2] = a3;
  return result;
}

unint64_t Array.init(_unsafeUninitializedCapacity:initializingWith:)(uint64_t a1, void (*a2)(void *, uint64_t *), uint64_t a3, unint64_t *a4)
{
  v8 = static Array._allocateUninitialized(_:)(a1, a4);
  v20 = 0;
  if (a1 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = v8;
  v11 = v9;
  v19[0] = v9;
  v19[1] = a1;
  a2(v19, &v20);
  if (v4)
  {
    v12 = v20;
    if (v20 <= a1 && v19[0] && v11 == v19[0])
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a4, a4);
      v14 = v10 & 0xFFFFFFFFFFFFFF8;
      if (!isClassOrObjCExistentialType)
      {
        v14 = v10;
      }

      *(v14 + 16) = v12;
      v10;
      return v10;
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v15 = v20;
  if (v20 > a1 || !v19[0] || v11 != v19[0])
  {
    goto LABEL_16;
  }

  v16 = _swift_isClassOrObjCExistentialType(a4, a4);
  v17 = v10 & 0xFFFFFFFFFFFFFF8;
  if (!v16)
  {
    v17 = v10;
  }

  *(v17 + 16) = v15;
  return v10;
}

uint64_t Array.withUnsafeBufferPointer<A>(_:)(uint64_t (*a1)(void, void), uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v19 = a2;
  v16 = a4;
  v17 = a5;
  v18 = a1;
  if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    return _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tp5(thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<A>) -> (@out A1, @error @owned Error)partial apply, v15, a3, a4);
  }

  if (_swift_isClassOrObjCExistentialType(a4, a4))
  {
    v8 = ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8);
  }

  else
  {
    v8 = a3 + ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80));
  }

  if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = (a3 & 0xFFFFFFFFFFFFFF8);
    }

    v14 = [v13 count];
    if ((v14 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v11 = v14;
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a4, a4);
    v10 = a3 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v10 = a3;
    }

    v11 = *(v10 + 16);
  }

  return a1(v8, v11);
}

void *Array.withUnsafeMutableBufferPointer<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  Array._makeMutableAndUnique()();
  v6 = *v3;
  v7 = *(a3 + 16);
  if (_swift_isClassOrObjCExistentialType(v7, v7))
  {
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v8 + 16);
  if (_swift_isClassOrObjCExistentialType(v7, v7))
  {
    v10 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = v6;
  }

  v13[0] = v10 + ((*(*(v7 - 1) + 80) + 32) & ~*(*(v7 - 1) + 80));
  v11 = v13[0];
  v13[1] = v9;
  a1(v13);
  return $defer #1 <A><A1>() in Array.__abi_withUnsafeMutableBufferPointer<A>(_:)(v13, v11, v9);
}

void *$defer #1 <A><A1>() in Array.__abi_withUnsafeMutableBufferPointer<A>(_:)(void *result, uint64_t a2, uint64_t a3)
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

void *_sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5(void *result, uint64_t a2, uint64_t a3)
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

uint64_t IndexingIterator.init(_elements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *(a2 - 8);
  (*(v11 + 16))(a4, a1, a2);
  v7 = *(a3 + 64);
  type metadata accessor for IndexingIterator(0, a2, a3, v8);
  v7(a2, a3);
  v9 = *(v11 + 8);

  return v9(a1, a2);
}

Swift::Int __swiftcall UnsafeMutableBufferPointer.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t static Array<A>.== infix(_:_:)(unint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4)
{
  v39 = a4;
  v7 = *(a3 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - v12;
  v14 = Array._getCount()();
  if (v14 == Array._getCount()())
  {
    if (!v14 || (v15 = _ArrayBuffer.identity.getter(a1, a3), v15 == _ArrayBuffer.identity.getter(a2, a3)))
    {
      v22 = 1;
    }

    else
    {
      if (v14 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v16 = 0;
      v17 = a1 & 0xC000000000000001;
      v37 = a2 & 0xC000000000000001;
      v38 = (v7 + 16);
      v35 = (v7 + 8);
      v36 = v39 + 8;
      do
      {
        if (!v14)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v33 = v17;
        v18 = (v17 == 0) | ~_swift_isClassOrObjCExistentialType(a3, a3);
        Array._checkSubscript(_:wasNativeTypeChecked:)(v16, v18 & 1);
        if (v18)
        {
          v19 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16;
          v34 = *(v7 + 16);
          v34(v13, v19, a3);
        }

        else
        {
          v25 = v16;
          v26 = _ArrayBuffer._getElementSlowPath(_:)(v16, a1, a3);
          if (v8 != 8)
          {
            goto LABEL_24;
          }

          v40 = v26;
          v27 = v26;
          v34 = *v38;
          v34(v13, &v40, a3);
          swift_unknownObjectRelease(v27);
          v16 = v25;
        }

        v20 = v37 == 0;
        v21 = v20 | ~_swift_isClassOrObjCExistentialType(a3, a3);
        Array._checkSubscript(_:wasNativeTypeChecked:)(v16, v21 & 1);
        v31 = v16;
        v32 = v7;
        if (v21)
        {
          v34(v10, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, a3);
        }

        else
        {
          v28 = _ArrayBuffer._getElementSlowPath(_:)(v16, a2, a3);
          if (v8 != 8)
          {
LABEL_24:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v40 = v28;
          v29 = v28;
          v34(v10, &v40, a3);
          swift_unknownObjectRelease(v29);
        }

        v22 = (*(v39 + 8))(v13, v10, a3);
        v23 = *v35;
        (*v35)(v10, a3);
        v23(v13, a3);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v7 = v32;
        v16 = v31 + 1;
        v24 = v14-- == 1;
        v17 = v33;
      }

      while (!v24);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

BOOL static _Pointer.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 48);
  v7 = v6(a3, a4);
  return v7 == v6(a3, a4);
}

Swift::Int Array<A>.hash(into:)(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4)
{
  v20 = a4;
  v7 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v17 = v8;
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Array._getCount()();
  v19 = a1;
  Hasher._combine(_:)(v10);
  v21 = a2;
  result = Array._getCount()();
  if (result)
  {
    v12 = result;
    if (result >= 1)
    {
      v13 = 0;
      v14 = *(v20 + 24);
      v18 = v21 & 0xC000000000000001;
      while (1)
      {
        if (_swift_isClassOrObjCExistentialType(a3, a3) && v18)
        {
          v15 = _ArrayBuffer._getElementSlowPath(_:)(v13, v21, a3);
          if (v17 != 8)
          {
            goto LABEL_13;
          }

          v22 = v15;
          v16 = v15;
          (*(v7 + 16))(v9, &v22, a3);
          swift_unknownObjectRelease(v16);
        }

        else
        {
          (*(v7 + 16))(v9, v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, a3);
        }

        ++v13;
        v14(v19, a3, v20);
        result = (*(v7 + 8))(v9, a3);
        if (v12 == v13)
        {
          return result;
        }
      }
    }

    __break(1u);
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Int Array<A>.hashValue.getter(unint64_t a1, unint64_t *a2, uint64_t a3)
{
  v18 = a3;
  v5 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = v6;
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0u;
  v25 = 0u;
  v21 = 0;
  v22 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v23 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  v8 = Array._getCount()();
  Hasher._combine(_:)(v8);
  v19 = a1;
  v9 = Array._getCount()();
  if (v9)
  {
    v10 = v9;
    if (v9 >= 1)
    {
      v11 = 0;
      v12 = *(v18 + 24);
      v17 = v19 & 0xC000000000000001;
      while (1)
      {
        if (_swift_isClassOrObjCExistentialType(a2, a2) && v17)
        {
          v13 = _ArrayBuffer._getElementSlowPath(_:)(v11, v19, a2);
          if (v16 != 8)
          {
            goto LABEL_13;
          }

          v20 = v13;
          v14 = v13;
          (*(v5 + 16))(v7, &v20, a2);
          swift_unknownObjectRelease(v14);
        }

        else
        {
          (*(v5 + 16))(v7, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, a2);
        }

        ++v11;
        v12(&v21, a2, v18);
        (*(v5 + 8))(v7, a2);
        if (v10 == v11)
        {
          return Hasher._finalize()();
        }
      }
    }

    __break(1u);
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return Hasher._finalize()();
}

Swift::Int __swiftcall Hashable._rawHashValue(seed:)(Swift::Int seed)
{
  v4 = 0u;
  v5 = 0u;
  v3[0] = 0;
  v3[1] = _swift_stdlib_Hashing_parameters ^ seed ^ 0x736F6D6570736575;
  v3[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v3[3] = _swift_stdlib_Hashing_parameters ^ seed ^ 0x6C7967656E657261;
  v3[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  (*(v1 + 24))(v3);
  return Hasher._finalize()();
}

{
  v3 = v2;
  v4 = v1;
  v5 = specialized Hasher.init(_seed:)(seed, v7);
  (*(v3 + 24))(v7, v4, v3, v5);
  return Hasher._finalize()();
}

void *Array.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  Array._makeMutableAndUnique()();
  v7 = *v4;
  v8 = *(a3 + 16);
  if (_swift_isClassOrObjCExistentialType(v8, v8))
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(v9 + 16);
  if (_swift_isClassOrObjCExistentialType(v8, v8))
  {
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(v8 - 1);
  v13 = v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v17[0] = v13;
  v17[1] = v10;
  v14 = *(v12 + 72);
  v15 = v10 * v14;
  if ((v10 * v14) >> 64 != (v10 * v14) >> 63)
  {
    __break(1u);
LABEL_11:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v15 < 0)
  {
    goto LABEL_11;
  }

  a1(v13, v13 + v15);
  return _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFABSpyxGSiSayxGsAC_pRsd_0_r_0_lIetbyyb_Tpq5(v17, v13, v10);
}

uint64_t _sSwySwSryxGclufCs5UInt8V_Tt0g5(uint64_t result, uint64_t a2)
{
  if (a2 < 0 || a2 && !result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t UnsafeMutableRawBufferPointer.init<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 72);
  v4 = a2 * v3;
  if ((a2 * v3) >> 64 != (a2 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 0 || v4 && !result)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t Array.withUnsafeBytes<A>(_:)(uint64_t (*a1)(void, void), uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v21 = a2;
  v18 = a4;
  v19 = a5;
  v20 = a1;
  if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    return _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5(partial apply for closure #1 in Array.withUnsafeBytes<A>(_:), v17, a3, a4);
  }

  if (_swift_isClassOrObjCExistentialType(a4, a4))
  {
    v8 = a3 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = a3;
  }

  v9 = *(a4 - 1);
  v10 = *(v9 + 80);
  if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    if (a3 < 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = (a3 & 0xFFFFFFFFFFFFFF8);
    }

    v12 = [v16 count];
    if (v12 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType(a4, a4))
    {
      v11 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v11 = a3;
    }

    v12 = *(v11 + 16);
  }

  v13 = *(v9 + 72);
  v14 = v12 * v13;
  if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
  {
    __break(1u);
LABEL_19:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v14 < 0)
  {
    goto LABEL_19;
  }

  return a1(v8 + ((v10 + 32) & ~v10), v8 + ((v10 + 32) & ~v10) + v14);
}

uint64_t _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(uint64_t result, uint64_t a2)
{
  if (a2 < 0 || a2 && !result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t UnsafeRawBufferPointer.init<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 72);
  v4 = a2 * v3;
  if ((a2 * v3) >> 64 != (a2 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 0 || v4 && !result)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

unint64_t _bridgeCocoaArray<A>(_:)(unint64_t a1)
{
  v1 = specialized _bridgeCocoaArray<A>(_:)(a1);

  return v1;
}

__objc2_class **Array._bridgeToObjectiveCImpl()(int64_t a1, unint64_t *a2)
{
  if (_swift_isClassOrObjCExistentialType(a2, a2) && (a1 < 0 || (a1 & 0x4000000000000000) != 0))
  {
    if (a1 < 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    return swift_unknownObjectRetain(v7);
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType(a2, a2))
    {
      v4 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v4 = a1;
    }

    a1;

    return _ContiguousArrayBuffer._asCocoaArray()(v4, a2, v5);
  }
}

swift *static Array._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for __SwiftDeferredNSArray();
  v5 = swift_unknownObjectRetain(a1);
  v6 = swift_dynamicCastClass(v5, v4);
  if (v6)
  {
    v9 = *(v6 + 3);
    v9;
    swift_unknownObjectRelease(a1);
    a1 = v9;
  }

  v10 = type metadata accessor for _ContiguousArrayStorage(0, a2, v7, v8);
  result = swift_dynamicCastClass(a1, v10);
  if (!result)
  {
    swift_unknownObjectRelease(a1);
    return 0;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  v18 = 1;
  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    return (*(*(a4 - 8) + 56))(a5, v18, 1, a4);
  }

  (*(v9 + 32))(v12, v15, v8);
  v21(v12);
  if (!v5)
  {
    (*(v9 + 8))(v12, v8);
    v18 = 0;
    return (*(*(a4 - 8) + 56))(a5, v18, 1, a4);
  }

  result = (*(v9 + 8))(v12, v8);
  __break(1u);
  return result;
}

uint64_t Array<A>._toCustomAnyHashable()@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = type metadata accessor for _ArrayAnyHashableBox(0, a3, a4, a5);
  a2[3] = result;
  a2[4] = &protocol witness table for _ArrayAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

unint64_t _ArrayAnyHashableBox._base.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  a3[3] = type metadata accessor for Array(0, a2, a4, a5);
  *a3 = a1;

  return a1;
}

uint64_t _ArrayAnyHashableBox.subscript.getter@<X0>(Swift::Int a1@<X0>, unint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  Description = a3[-1].Description;
  v11 = Description[8];
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v36 - v15);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v17, v17);
  v19 = ((a2 & 0xC000000000000001) == 0) | ~isClassOrObjCExistentialType;
  Array._checkSubscript(_:wasNativeTypeChecked:)(a1, (a2 & 0xC000000000000001) == 0 || (isClassOrObjCExistentialType & 1) == 0);
  if (v19)
  {
    v20 = Description[2];
    v20(v16, a2 + ((*(Description + 80) + 32) & ~*(Description + 80)) + Description[9] * a1, a3);
  }

  else
  {
    v34 = _ArrayBuffer._getElementSlowPath(_:)(a1, a2, a3);
    if (v11 != 8)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *&v39 = v34;
    v20 = Description[2];
    v35 = v34;
    v20(v16, &v39, a3);
    swift_unknownObjectRelease(v35);
  }

  if (a3 == &type metadata for String)
  {
    *(&v40 + 1) = type metadata accessor for _ConcreteHashableBox(0, &type metadata for String, a4, v21);
    v41 = &protocol witness table for _ConcreteHashableBox<A>;
    v31 = __swift_allocate_boxed_opaque_existential_0Tm(&v39);
    v20(v31, v16, &type metadata for String);
    goto LABEL_10;
  }

  v20(v13, v16, a3);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss35_HasCustomAnyHashableRepresentation_pMd, _ss35_HasCustomAnyHashableRepresentation_pMR);
  if ((swift_dynamicCast(&v39, v13, a3, v22, 6uLL, v23, v24, v25, v36) & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    outlined destroy of _HasContiguousBytes?(&v39, &_ss35_HasCustomAnyHashableRepresentation_pSgMd, _ss35_HasCustomAnyHashableRepresentation_pSgMR);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    goto LABEL_9;
  }

  v26 = *(&v40 + 1);
  v27 = v41;
  v28 = __swift_project_boxed_opaque_existential_0Tm(&v39, *(&v40 + 1));
  MEMORY[0x1EEE9AC00](v28, v28);
  (*(v30 + 16))(&v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (v27[1])(&v36, v26, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(&v39);
  if (!*(&v37 + 1))
  {
LABEL_9:
    outlined destroy of AnyHashable?(&v36);
    *(&v40 + 1) = &unk_1EEEBDCA0;
    v41 = &protocol witness table for _ConcreteHashableBox<A>;
    LOBYTE(v39) = 0;
    _swift_makeAnyHashableUpcastingToHashableBaseType(v16, &v39, a3, a4);
    goto LABEL_10;
  }

  v39 = v36;
  v40 = v37;
  v41 = v38;
LABEL_10:
  v32 = v40;
  *a5 = v39;
  *(a5 + 16) = v32;
  *(a5 + 32) = v41;
  return (Description[1])(v16, a3);
}

uint64_t _convertToAnyHashable<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  return AnyHashable.init<A>(_:)(v8, a2, a3, a4);
}

uint64_t _ArrayAnyHashableBox._isEqual(to:)(uint64_t a1, unint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  v6 = a2;
  Description = a3[-1].Description;
  v8 = *(Description + 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = (&v50 - v13);
  outlined init with copy of MirrorPath(v12, &v65);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15_AnyHashableBox_pMd, _ss15_AnyHashableBox_pMR);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25_ArrayAnyHashableProtocol_pMd, _ss25_ArrayAnyHashableProtocol_pMR);
  if (swift_dynamicCast(&v62, &v65, v15, v16, 6uLL, v17, v18, v19, v50))
  {
    v57 = a4;
    _ss9CodingKey_pWOb_0(&v62, v68);
    v20 = Array._getCount()();
    v22 = v69;
    v21 = v70;
    __swift_project_boxed_opaque_existential_0Tm(v68, v69);
    if (v20 == (*(v21 + 16))(v22, v21))
    {
      if (v20 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v20)
      {
        v23 = 0;
        v24 = v6 & 0xC000000000000001;
        v55 = (Description + 16);
        v56 = (Description + 8);
        do
        {
          if (v20 == v23)
          {
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v54 = v20;
          v53 = v24;
          v25 = (v24 == 0) | ~_swift_isClassOrObjCExistentialType(a3, a3);
          Array._checkSubscript(_:wasNativeTypeChecked:)(v23, v25 & 1);
          if (v25)
          {
            v26 = *(Description + 2);
            v26(v14, (v6 + ((Description[80] + 32) & ~Description[80]) + *(Description + 9) * v23), a3);
          }

          else
          {
            v47 = _ArrayBuffer._getElementSlowPath(_:)(v23, v6, a3);
            if (v8 != 8)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            *&v65 = v47;
            v26 = *v55;
            v48 = v47;
            (*v55)(v14, &v65, a3);
            swift_unknownObjectRelease(v48);
          }

          v52 = v6;
          v51 = Description;
          v50 = v10;
          if (a3 == &type metadata for String)
          {
            *(&v63 + 1) = type metadata accessor for _ConcreteHashableBox(0, &type metadata for String, v57, v27);
            v64 = &protocol witness table for _ConcreteHashableBox<A>;
            v38 = __swift_allocate_boxed_opaque_existential_0Tm(&v62);
            v26(v38, v14, &type metadata for String);
          }

          else
          {
            v26(v10, v14, a3);
            v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss35_HasCustomAnyHashableRepresentation_pMd, _ss35_HasCustomAnyHashableRepresentation_pMR);
            if ((swift_dynamicCast(&v62, v10, a3, v28, 6uLL, v29, v30, v31, v50) & 1) == 0)
            {
              v64 = 0;
              v62 = 0u;
              v63 = 0u;
              outlined destroy of _HasContiguousBytes?(&v62, &_ss35_HasCustomAnyHashableRepresentation_pSgMd, _ss35_HasCustomAnyHashableRepresentation_pSgMR);
              v65 = 0u;
              v66 = 0u;
              v67 = 0;
              v37 = v57;
LABEL_15:
              outlined destroy of AnyHashable?(&v65);
              *(&v63 + 1) = &unk_1EEEBDCA0;
              v64 = &protocol witness table for _ConcreteHashableBox<A>;
              LOBYTE(v62) = 0;
              _swift_makeAnyHashableUpcastingToHashableBaseType(v14, &v62, a3, v37);
              goto LABEL_16;
            }

            v32 = *(&v63 + 1);
            v33 = v64;
            v34 = __swift_project_boxed_opaque_existential_0Tm(&v62, *(&v63 + 1));
            MEMORY[0x1EEE9AC00](v34, v34);
            (*(v36 + 16))(&v50 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
            (v33[1])(&v65, v32, v33);
            __swift_destroy_boxed_opaque_existential_1Tm(&v62);
            v37 = v57;
            if (!*(&v66 + 1))
            {
              goto LABEL_15;
            }

            v62 = v65;
            v63 = v66;
            v64 = v67;
          }

LABEL_16:
          v65 = v62;
          v66 = v63;
          v67 = v64;
          (*v56)(v14, a3);
          v39 = v69;
          v40 = v70;
          __swift_project_boxed_opaque_existential_0Tm(v68, v69);
          (*(v40 + 24))(&v62, v23, v39, v40);
          v41 = *(&v66 + 1);
          v42 = v67;
          __swift_project_boxed_opaque_existential_0Tm(&v65, *(&v66 + 1));
          (v42[1])(v59, v41, v42);
          v43 = v60;
          v44 = v61;
          __swift_project_boxed_opaque_existential_0Tm(v59, v60);
          v45 = *(&v63 + 1);
          v46 = v64;
          __swift_project_boxed_opaque_existential_0Tm(&v62, *(&v63 + 1));
          (v46[1])(v58, v45, v46);
          LOBYTE(v43) = (*(v44 + 16))(v58, v43, v44);
          __swift_destroy_boxed_opaque_existential_1Tm(v58);
          __swift_destroy_boxed_opaque_existential_1Tm(v59);
          outlined destroy of AnyHashable(&v62);
          outlined destroy of AnyHashable(&v65);
          if ((v43 & 1) == 0)
          {
            goto LABEL_22;
          }

          ++v23;
          v20 = v54;
          v6 = v52;
          Description = v51;
          v10 = v50;
          v24 = v53;
        }

        while (v54 != v23);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      return 1;
    }

    else
    {
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      return 0;
    }
  }

  else
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    outlined destroy of _HasContiguousBytes?(&v62, &_ss25_ArrayAnyHashableProtocol_pSgMd, _ss25_ArrayAnyHashableProtocol_pSgMR);
    return 2;
  }
}

Swift::Int _ArrayAnyHashableBox._hashValue.getter(unint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  v7 = 0u;
  v8 = 0u;
  v4 = 0;
  v5 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v6 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  _ArrayAnyHashableBox._hash(into:)(&v4, a1, a2, a3);
  return Hasher.finalize()();
}

__n128 Hasher.init()@<Q0>(uint64_t a1@<X8>)
{
  specialized Hasher.init()(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

void _ArrayAnyHashableBox._hash(into:)(uint64_t a1, unint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  v8 = Array._getCount()();
  Hasher._combine(_:)(v8);
  if ((v8 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8)
  {
    v9 = 0;
    do
    {
      if (v8 == v9)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v10 = v9 + 1;
      _ArrayAnyHashableBox.subscript.getter(v9, a2, a3, a4, v18);
      v11 = v19;
      v12 = v20;
      __swift_project_boxed_opaque_existential_0Tm(v18, v19);
      (*(v12 + 8))(v15, v11, v12);
      v13 = v16;
      v14 = v17;
      __swift_project_boxed_opaque_existential_0Tm(v15, v16);
      (*(v14 + 32))(a1, v13, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      outlined destroy of AnyHashable(v18);
      v9 = v10;
    }

    while (v8 != v10);
  }
}

Swift::Int __swiftcall Hasher.finalize()()
{
  v1 = v0[2];
  v2 = v0[4] ^ *v0;
  v3 = v1 + v0[1];
  v4 = v3 ^ __ROR8__(v1, 51);
  v5 = v2 + v0[3];
  v6 = __ROR8__(v2, 48);
  v7 = (v5 ^ v6) + __ROR8__(v3, 32);
  v8 = v7 ^ __ROR8__(v5 ^ v6, 43);
  v9 = v5 + v4;
  v10 = v9 ^ __ROR8__(v4, 47);
  v11 = (v7 ^ *v0) + v10;
  v12 = v11 ^ __ROR8__(v10, 51);
  v13 = (__ROR8__(v9, 32) ^ 0xFFLL) + v8;
  v14 = __ROR8__(v8, 48);
  v15 = __ROR8__(v11, 32) + (v13 ^ v14);
  v16 = v15 ^ __ROR8__(v13 ^ v14, 43);
  v17 = v12 + v13;
  v18 = v17 ^ __ROR8__(v12, 47);
  v19 = v18 + v15;
  v20 = v19 ^ __ROR8__(v18, 51);
  v21 = __ROR8__(v17, 32) + v16;
  v22 = __ROR8__(v16, 48);
  v23 = __ROR8__(v19, 32) + (v21 ^ v22);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v20 + v21;
  v26 = v25 ^ __ROR8__(v20, 47);
  v27 = (v26 + v23) ^ __ROR8__(v26, 51);
  v28 = __ROR8__(v25, 32) + v24;
  return __ROR8__(v28 ^ __ROR8__(v24, 48), 43) ^ __ROR8__(v27, 47) ^ __ROR8__(v27 + v28, 32) ^ (v27 + v28);
}

Swift::Int __swiftcall _ArrayAnyHashableBox._rawHashValue(_seed:)(Swift::Int _seed)
{
  v47 = v3;
  v4 = v2;
  v5 = v1;
  Description = v2[-1].Description;
  v7 = *(Description + 8);
  v8 = (MEMORY[0x1EEE9AC00])(_seed);
  v9 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v42 - v12);
  v14 = *(&_swift_stdlib_Hashing_parameters + 1);
  v15 = _swift_stdlib_Hashing_parameters ^ v11;
  v16 = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  v17 = _swift_stdlib_Hashing_parameters ^ v11 ^ 0x6C7967656E657261;
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0u;
  v54[0] = 0;
  v54[1] = v15 ^ 0x736F6D6570736575;
  v54[2] = v14 ^ 0x646F72616E646F6DLL;
  v54[3] = v17;
  v54[4] = v16;
  v19 = Array._getCount()();
  Hasher._combine(_:)(v19);
  if ((v19 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v19)
  {
    v20 = 0;
    v21 = v5 & 0xC000000000000001;
    v22 = (Description + 16);
    v46 = (Description + 8);
    do
    {
      if (v19 == v20)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v45 = v21;
      v23 = (v21 == 0) | ~_swift_isClassOrObjCExistentialType(v4, v4);
      Array._checkSubscript(_:wasNativeTypeChecked:)(v20, v23 & 1);
      if (v23)
      {
        v24 = *(Description + 2);
        v24(v13, v5 + ((Description[80] + 32) & ~Description[80]) + *(Description + 9) * v20, v4);
      }

      else
      {
        v40 = _ArrayBuffer._getElementSlowPath(_:)(v20, v5, v4);
        if (v7 != 8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        *&v51 = v40;
        v24 = *v22;
        v42 = v40;
        v24(v13, &v51, v4);
        swift_unknownObjectRelease(v42);
      }

      v44 = v9;
      v43 = v22;
      if (v4 == &type metadata for String)
      {
        *(&v49 + 1) = type metadata accessor for _ConcreteHashableBox(0, &type metadata for String, v47, v25);
        v50 = &protocol witness table for _ConcreteHashableBox<A>;
        v35 = __swift_allocate_boxed_opaque_existential_0Tm(&v48);
        v24(v35, v13, &type metadata for String);
      }

      else
      {
        v24(v9, v13, v4);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss35_HasCustomAnyHashableRepresentation_pMd, _ss35_HasCustomAnyHashableRepresentation_pMR);
        if ((swift_dynamicCast(&v48, v9, v4, v26, 6uLL, v27, v28, v29, v42) & 1) == 0)
        {
          v50 = 0;
          v48 = 0u;
          v49 = 0u;
          outlined destroy of _HasContiguousBytes?(&v48, &_ss35_HasCustomAnyHashableRepresentation_pSgMd, _ss35_HasCustomAnyHashableRepresentation_pSgMR);
          v51 = 0u;
          v52 = 0u;
          v53 = 0;
LABEL_13:
          outlined destroy of AnyHashable?(&v51);
          *(&v49 + 1) = &unk_1EEEBDCA0;
          v50 = &protocol witness table for _ConcreteHashableBox<A>;
          LOBYTE(v48) = 0;
          _swift_makeAnyHashableUpcastingToHashableBaseType(v13, &v48, v4, v47);
          goto LABEL_14;
        }

        v30 = *(&v49 + 1);
        v31 = v50;
        v32 = __swift_project_boxed_opaque_existential_0Tm(&v48, *(&v49 + 1));
        v42 = &v42;
        MEMORY[0x1EEE9AC00](v32, v32);
        (*(v34 + 16))(&v42 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
        (v31[1])(&v51, v30, v31);
        __swift_destroy_boxed_opaque_existential_1Tm(&v48);
        if (!*(&v52 + 1))
        {
          goto LABEL_13;
        }

        v48 = v51;
        v49 = v52;
        v50 = v53;
      }

LABEL_14:
      ++v20;
      v51 = v48;
      v52 = v49;
      v53 = v50;
      (*v46)(v13, v4);
      v36 = *(&v52 + 1);
      v37 = v53;
      __swift_project_boxed_opaque_existential_0Tm(&v51, *(&v52 + 1));
      (v37[1])(&v48, v36, v37);
      v38 = *(&v49 + 1);
      v39 = v50;
      __swift_project_boxed_opaque_existential_0Tm(&v48, *(&v49 + 1));
      (v39[4])(v54, v38, v39);
      __swift_destroy_boxed_opaque_existential_1Tm(&v48);
      outlined destroy of AnyHashable(&v51);
      v9 = v44;
      v21 = v45;
      v22 = v43;
    }

    while (v19 != v20);
  }

  return Hasher._finalize()();
}

__n128 Hasher.init(_seed:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  specialized Hasher.init(_seed:)(a2, v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

Swift::Int __swiftcall Hasher._finalize()()
{
  v1 = v0[2];
  v2 = v1 + v0[1];
  v3 = v2 ^ __ROR8__(v1, 51);
  v4 = v0[4] ^ *v0;
  v5 = v0[3] + v4;
  v6 = __ROR8__(v4, 48);
  v7 = (v5 ^ v6) + __ROR8__(v2, 32);
  v8 = v7 ^ __ROR8__(v5 ^ v6, 43);
  v9 = v5 + v3;
  v10 = v9 ^ __ROR8__(v3, 47);
  v11 = (v7 ^ *v0) + v10;
  v12 = v11 ^ __ROR8__(v10, 51);
  v13 = (__ROR8__(v9, 32) ^ 0xFFLL) + v8;
  v14 = __ROR8__(v8, 48);
  v15 = __ROR8__(v11, 32) + (v13 ^ v14);
  v16 = v15 ^ __ROR8__(v13 ^ v14, 43);
  v17 = v12 + v13;
  v18 = v17 ^ __ROR8__(v12, 47);
  v19 = v18 + v15;
  v20 = v19 ^ __ROR8__(v18, 51);
  v21 = __ROR8__(v17, 32) + v16;
  v22 = __ROR8__(v16, 48);
  v23 = __ROR8__(v19, 32) + (v21 ^ v22);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v20 + v21;
  v26 = v25 ^ __ROR8__(v20, 47);
  v27 = v26 + v23;
  v28 = v27 ^ __ROR8__(v26, 51);
  v29 = __ROR8__(v25, 32) + v24;
  v30 = __ROR8__(v24, 48);
  v31 = __ROR8__(v27, 32) + (v29 ^ v30);
  v32 = v31 ^ __ROR8__(v29 ^ v30, 43);
  v33 = v28 + v29;
  v34 = v33 ^ __ROR8__(v28, 47);
  v35 = __ROR8__(v33, 32);
  v0[3] = v35;
  v0[4] = v32;
  v0[1] = v31;
  v0[2] = v34;
  return v34 ^ v31 ^ v35 ^ v32;
}

uint64_t _ArrayAnyHashableBox._unbox<A>()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, swift *a4@<X8>, uint64_t a5@<X3>)
{
  v15 = a1;
  v8 = type metadata accessor for Array(0, a2, a3, a5);
  a1;
  v12 = swift_dynamicCast(a4, &v15, v8, a3, 6uLL, v9, v10, v11, v14);
  return (*(*(a3 - 1) + 7))(a4, v12 ^ 1u, 1, a3);
}

uint64_t _ArrayAnyHashableBox._downCastConditional<A>(into:)(char *a1, unint64_t a2, uint64_t a3, Class *a4)
{
  v8 = type metadata accessor for Optional(0, a4, a3, a4);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v28 - v12);
  v14 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v11, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2;
  v20 = type metadata accessor for Array(0, a3, v18, v19);
  a2;
  v24 = swift_dynamicCast(v13, &v29, v20, a4, 6uLL, v21, v22, v23, v28);
  v25 = *(v14 + 56);
  if (v24)
  {
    v25(v13, 0, 1, a4);
    v26 = *(v14 + 32);
    v26(v17, v13, a4);
    v26(a1, v17, a4);
  }

  else
  {
    v25(v13, 1, 1, a4);
    (*(v9 + 8))(v13, v8);
  }

  return v24;
}

uint64_t _AnyHashableBox._canonicalBox.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0Tm, v3, a1);
}

void *_allocateUninitializedArray<A>(_:)(uint64_t a1, unint64_t *a2)
{
  if (a1 < 1)
  {

    return static Array._allocateUninitialized(_:)(a1, a2);
  }

  else
  {
    v4 = getContiguousArrayStorageType<A>(for:)(a2, a2);
    v5 = swift_allocObject(v4, (((*(*(a2 - 1) + 80) + *(v4 + 48)) & ~*(*(a2 - 1) + 80)) + *(*(a2 - 1) + 72) * a1), *(*(a2 - 1) + 80) | *(v4 + 52));

    return static Array._adoptStorage(_:count:)(v5, a1);
  }
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, unint64_t *a2)
{
  if (swift_isClassType(a2) && a2)
  {

    return canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage(0, a2, v3, v4);
  }
}

void _deallocateUninitializedArray<A>(_:)(unint64_t a1, unint64_t *a2)
{
  specialized _deallocateUninitializedArray<A>(_:)(a1, a2);

  a1;
}

void static String.+= infix(_:_:)(unint64_t *a1, unint64_t a2, unint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11)
{
  v12 = a1[1];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 || (*a1 & ~v12 & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  else
  {
    a3;
    v12;
    *a1 = a2;
    a1[1] = a3;
  }
}

uint64_t _ArrayBufferProtocol._arrayOutOfPlaceReplace<A>(_:with:count:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  specialized _ArrayBufferProtocol._arrayOutOfPlaceReplace<A>(_:with:count:)(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = *(*(a6 - 8) + 8);

  return v10(a3, a6);
}

uint64_t closure #1 in _ArrayBufferProtocol._arrayOutOfPlaceReplace<A>(_:with:count:)(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, Class *a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness(0, *(*(*(a6 + 8) + 8) + 8), a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v50 = v11;
  v53 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v49 = &v42 - v13;
  swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  v48 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v42 - v21;
  (*(a7 + 64))(a5, a7);
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2)
  {
    v23 = a7 + 80;
    v24 = *(a7 + 80);
    v25 = v53 + 32;
    v46 = a7 + 192;
    v47 = v53 + 16;
    do
    {
      v51 = v24;
      v52 = v23;
      v26 = v24(v54, v22, a5, a7);
      v44 = v22;
      v45 = a1;
      v27 = a5;
      v28 = v15;
      v29 = v26;
      v30 = v53;
      v31 = *(v53 + 16);
      v43 = v25;
      v32 = v49;
      v33 = v19;
      v34 = v50;
      v31(v49);
      v29(v54, 0);
      v15 = v28;
      a5 = v27;
      v35 = v45;
      v36 = v32;
      v37 = v34;
      v19 = v33;
      v25 = v43;
      v22 = v44;
      (*(v30 + 32))(v45, v36, v37);
      (*(a7 + 192))(v22, a5, a7);
      v24 = v51;
      v23 = v52;
      a1 = v35 + *(v30 + 72);
      --a2;
    }

    while (a2);
  }

  (*(a7 + 72))(a5, a7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a5, v15, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v39 = (*(*(AssociatedConformanceWitness + 8) + 8))(v22, v19, v15);
  v40 = *(v48 + 8);
  v40(v19, v15);
  if ((v39 & 1) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (v40)(v22, v15);
}

uint64_t _debugPrecondition(_:_:file:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  result = a1();
  if ((result & 1) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Int __swiftcall _growArrayCapacity(_:)(Swift::Int result)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    result *= 2;
  }

  return result;
}

uint64_t static Int.* infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

__objc2_class **_ArrayBufferProtocol._forceCreateUniqueMutableBufferImpl(countForBuffer:minNewCapacity:requiredCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, uint64_t a5)
{
  v10 = *(a5 + 144);
  v11 = v10(a4, a5);
  v12 = v10(a4, a5);
  if (v11 < a2)
  {
    if (v12 + 0x4000000000000000 < 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    v12 *= 2;
  }

  if (v12 <= a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= a1)
  {
    v14 = a1;
  }

  else
  {
    v14 = v13;
  }

  if (!v14)
  {
    return &_swiftEmptyArrayStorage;
  }

  swift_getAssociatedTypeWitness(0, *(*(*(a5 + 8) + 8) + 8), a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v16 = v15;
  v17 = getContiguousArrayStorageType<A>(for:)(v15, v15);
  v18 = *(*(v16 - 1) + 72);
  v19 = *(*(v16 - 1) + 80);
  v20 = swift_allocObject(v17, (((v19 + *(v17 + 48)) & ~v19) + v18 * v14), v19 | *(v17 + 52));
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18 || ((v22 = v21 - ((v19 + 32) & ~v19), v22 == 0x8000000000000000) ? (v23 = v18 == -1) : (v23 = 0), v23))
  {
LABEL_21:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v24 = v22 / v18;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v16, v16);
  v20[2] = a1;
  v20[3] = isClassOrObjCExistentialType | (2 * v24);
  return v20;
}

Swift::Void __swiftcall _ArrayBufferProtocol._outlinedMakeUniqueBuffer(bufferCount:)(Swift::Int bufferCount)
{
  v3 = v2;
  v4 = v1;
  v6 = (*(v2 + 56))();
  if (!v6)
  {
    v7 = _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(newCount:requiredCapacity:)(bufferCount, bufferCount, v4, v3);
    v11 = v7;
    v8 = default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(v4, v3);
    v10 = v9;
    _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v11, bufferCount, 0, v8, v9, v4, v3);
    v10;
    v6 = v7;
  }

  v6;
}

uint64_t _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(uint64_t a1, Class *a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v78 = a1;
  v66 = a4;
  v9 = *(*(a4 + 8) + 8);
  swift_getAssociatedTypeWitness(0, *(v9 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v79 = v10;
  v72 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v10);
  v80 = &v57 - v11;
  v15 = type metadata accessor for Optional(0, v12, v13, v14);
  v74 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v64 = &v57 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v57 - v24;
  v26 = a3;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v28 = v27;
  v57 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v57 - v30;
  v32 = *(v9 + 112);
  v65 = a2;
  v33 = a2;
  v34 = v5;
  v35 = v32(v33, v9);
  (*(a5 + 32))(v26, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, v26, v28, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v37 = *(AssociatedConformanceWitness + 16);
  v70 = v31;
  v71 = v28;
  v68 = AssociatedConformanceWitness + 16;
  v69 = AssociatedConformanceWitness;
  v67 = v37;
  (v37)(v28);
  v38 = v64;
  v39 = v79;
  v40 = v74;
  v77 = *(v74 + 16);
  v78 = v74 + 16;
  v77(v64, v25, v15);
  v75 = *(v72 + 48);
  v76 = v72 + 48;
  v41 = v75(v38, 1, v39);
  v73 = *(v40 + 8);
  v74 = v40 + 8;
  if (v41 == 1)
  {
LABEL_2:
    v42 = v73;
    v73(v25, v15);
    (*(v57 + 8))(v70, v71);
    return v42(v38, v15);
  }

  else
  {
    v61 = v66 + 160;
    v62 = v66 + 144;
    v44 = (v72 + 32);
    v58 = (v72 + 8);
    v60 = v66 + 128;
    v63 = v34;
    v59 = v15;
    while (1)
    {
      result = v73(v38, v15);
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v46 = v65;
      v47 = v66;
      v48 = _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(v35, v35 + 1, v65, v66);
      v81 = v48;
      v49 = default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(v46, v47);
      v51 = v50;
      _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v81, v35, 0, v49, v50, v46, v47);
      v51;
      v48;
      v45 = (*(v47 + 144))(v46, v47);
      v52 = (*(v47 + 160))(v46, v47);
      v53 = v59;
      v54 = v79;
      (v77)(v19, v25);
      if (v75(v19, 1, v54) == 1)
      {
LABEL_4:
        v15 = v53;
        v73(v19, v53);
        v45 = v35;
      }

      else
      {
        v55 = *v44;
        if (v45 <= v35)
        {
          v45 = v35;
        }

        v56 = v80;
        while (1)
        {
          v55(v56, v19, v54);
          if (v45 == v35)
          {
            break;
          }

          v73(v25, v53);
          v55((v52 + *(v72 + 72) * v35++), v80, v54);
          v67(v71, v69);
          v54 = v79;
          v56 = v80;
          v77(v19, v25, v53);
          if (v75(v19, 1, v54) == 1)
          {
            goto LABEL_4;
          }
        }

        (*v58)(v56, v54);
        v35 = v45;
        v15 = v53;
      }

      (*(v66 + 128))(v45, v65);
      v38 = v64;
      v77(v64, v25, v15);
      if (v75(v38, 1, v79) == 1)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
  }

  return result;
}

void ArraySlice._buffer.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRelease(*v4);
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfCyXl_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v4 < a2)
  {
    goto LABEL_8;
  }

  if (v4 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

BOOL _SliceBuffer.init(_buffer:shiftedToStartIndex:)(_BOOL8 result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v4 < a2)
  {
    goto LABEL_8;
  }

  if (v4 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Int __swiftcall ArraySlice._getCapacity()()
{
  v5 = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
    __break(1u);
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      return v5;
    }

    v6 = v4;
    v7 = v2;
    v8 = v1;
    v9 = result;
    v10 = type metadata accessor for __ContiguousArrayStorageBase();
    v11 = swift_unknownObjectRetain(v9);
    v12 = swift_dynamicCastClass(v11, v10);
    if (!v12)
    {
      swift_unknownObjectRelease(v9);
      v12 = &_swiftEmptyArrayStorage;
    }

    v13 = *(v6 - 8);
    v14 = *(v12 + 2);
    if ((v8 + *(v13 + 72) * v7 + *(v13 + 72) * v5) != (v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v14))
    {
      v12;
      return v5;
    }

    v15 = *(v12 + 3);
    result = v12;
    v16 = (v15 >> 1) - v14;
    v17 = __OFADD__(v5, v16);
    v5 += v16;
    if (!v17)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ArraySlice._makeMutableAndUnique()()
{
  v4 = v0;
  v5 = v3[3];
  v6 = *v3;
  if (v5)
  {
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(*v3);
    *v3 = v6;
    if (isUniquelyReferenced_nonNull)
    {
      return;
    }

    v5 = v3[3];
  }

  v8 = type metadata accessor for _SliceBuffer(0, *(v4 + 16), v1, v2);
  v9 = v3[1];
  v10 = v3[2];
  v14[0] = v6;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v5;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, v8, v11);
  _ArrayBufferProtocol.init(copying:)(v14, v8, WitnessTable, v15);
  v13 = v15[1];
  *v3 = v15[0];
  *(v3 + 1) = v13;
}

Swift::Void __swiftcall ArraySlice._checkSubscript_native(_:)(Swift::Int a1)
{
  if (a1 < v1 || (v2 >> 1) <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

Swift::Void __swiftcall ArraySlice._checkIndex(_:)(Swift::Int a1)
{
  if (a1 > (v2 >> 1) || a1 < v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

id ArraySlice._owner.getter()
{
  _swift_displayCrashMessage();

  return swift_unknownObjectRetain(v0);
}

id protocol witness for _ArrayProtocol._owner.getter in conformance ArraySlice<A>()
{
  _swift_displayCrashMessage();

  return swift_unknownObjectRetain(v0);
}

BOOL protocol witness for _ArrayProtocol.init(_:) in conformance ArraySlice<A>@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BOOL8 *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = *(a2 + 16);
  v8 = type metadata accessor for _SliceBuffer(0, v7, a4, a5);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, v8, v9);
  result = ArraySlice.init<A>(_:)(a1, v7, v8, WitnessTable);
  *a3 = result;
  a3[1] = v12;
  a3[2] = v13;
  a3[3] = v14;
  return result;
}

BOOL ArraySlice.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a4 + 56))(a3, a4);

  return _SliceBuffer.init(_buffer:shiftedToStartIndex:)(v4, 0);
}

id protocol witness for _ArrayProtocol._buffer.getter in conformance ArraySlice<A>@<X0>(__int128 *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return swift_unknownObjectRetain(v2);
}

Swift::Int __swiftcall ArraySlice.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ArraySlice.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Int __swiftcall ArraySlice.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ArraySlice.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

Swift::Int __swiftcall ArraySlice.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall ArraySlice.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = specialized Array.index(_:offsetBy:limitedBy:)(_, offsetBy, limitedBy);
  v5 = v4 & 1;
  result.value = v3;
  result.is_nil = v5;
  return result;
}

Swift::Int __swiftcall ArraySlice.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t ArraySlice.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (a1 < a3 || (a4 >> 1) <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = *(a5 - 8);
  v8 = *(v7 + 16);
  v9 = a2 + *(v7 + 72) * a1;

  return v8(a6, v9, a5);
}

uint64_t key path setter for ArraySlice.subscript(_:) : <A>ArraySlice<A>A(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  type metadata accessor for ArraySlice(0, v5, a3, a4);
  v7 = ArraySlice.subscript.modify(v10, v6);
  (*(*(v5 - 8) + 24))(v8, a1, v5);
  return (v7)(v10, 0);
}

void (*ArraySlice.subscript.modify(uint64_t a1, uint64_t a2))()
{
  ArraySlice._makeMutableAndUnique()();
  if (*(v2 + 16) > a2 || *(v2 + 24) >> 1 <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

uint64_t ArraySlice.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ArraySlice._makeMutableAndUnique()();
  if (v3[2] > a2 || v3[3] >> 1 <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 40);
  v10 = v3[1] + *(v8 + 72) * a2;

  return v9(v10, a1);
}

id key path getter for ArraySlice.subscript(_:) : <A>ArraySlice<A>A@<X0>(uint64_t *a1@<X0>, Swift::Int *a2@<X1>, void *a4@<X8>)
{
  v5 = specialized ArraySlice.subscript.getter(*a2, a2[1], *a1);
  *a4 = v5;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;

  return swift_unknownObjectRetain(v5);
}

void key path setter for ArraySlice.subscript(_:) : <A>ArraySlice<A>A(uint64_t a1, uint64_t a2, Swift::Int *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = type metadata accessor for ArraySlice(0, *(a3 + a4 - 8), a3, a4);
  v11 = swift_unknownObjectRetain(v6);
  ArraySlice.subscript.setter(v11, v7, v8, v9, v4, v5, v10);
}

void ArraySlice.subscript.setter(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, Swift::Int a6, uint64_t a7)
{
  v12 = *v7;
  v13 = *(a7 + 16);
  ArraySlice._checkIndex(_:)(a5);
  ArraySlice._checkIndex(_:)(a6);
  specialized _SliceBuffer.subscript.getter(a5, a6, v12);
  if (v15 + *(*(v13 - 8) + 72) * v14 != a2 + *(*(v13 - 8) + 72) * a3)
  {
    goto LABEL_2;
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
LABEL_2:
    v20[0] = a1;
    v20[1] = a2;
    v20[2] = a3;
    v20[3] = a4;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, a7, v14);
    ArraySlice.replaceSubrange<A>(_:with:)(a5, a6, v20, a7, a7, WitnessTable);
  }
}

void *ArraySlice.replaceSubrange<A>(_:with:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6[2];
  if (v7 > result || (v8 = v6, v10 = v6[3], v11 = v10 >> 1, (v10 >> 1) < a2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v11 - v7;
  if (__OFSUB__(v11, v7))
  {
    __break(1u);
    goto LABEL_23;
  }

  v12 = result;
  v13 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = (*(a6 + 112))(a5, a6);
  v19 = __OFSUB__(result, v13);
  v20 = result - v13;
  if (v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = result;
  if ((v10 & 1) == 0 || (v22 = *v8, isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(*v8), *v8 = v22, !isUniquelyReferenced_nonNull))
  {
LABEL_15:
    v38 = type metadata accessor for _SliceBuffer(0, *(a4 + 16), v17, v18);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, v38, v39);
    specialized _ArrayBufferProtocol._arrayOutOfPlaceReplace<A>(_:with:count:)(v12, a2, a3, v21, v38, a5, WitnessTable, a6);
    v41 = *(*(a5 - 8) + 8);

    return v41(a3, a5);
  }

  v43 = v20;
  v44 = v8[1];
  v24 = type metadata accessor for __ContiguousArrayStorageBase();
  v25 = swift_unknownObjectRetain(v22);
  v26 = swift_dynamicCastClass(v25, v24);
  if (!v26)
  {
    swift_unknownObjectRelease(v22);
    v26 = &_swiftEmptyArrayStorage;
  }

  v27 = *(a4 + 16);
  v28 = *(v27 - 8);
  v29 = v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v30 = *(v26 + 2);
  v31 = *(v28 + 72);
  v32 = v44 + v31 * v7;
  v33 = v45;
  if ((v32 + v31 * v45) == &v29[v31 * v30])
  {
    v35 = *(v26 + 3);
    result = v26;
    v36 = v35 >> 1;
    v33 = v45;
    v37 = v36 - v30;
    v19 = __OFADD__(v45, v37);
    v34 = v45 + v37;
    if (v19)
    {
LABEL_26:
      __break(1u);
      return result;
    }
  }

  else
  {
    result = v26;
    v34 = v45;
  }

  if (__OFADD__(v33, v43))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v34 < &v43[v33])
  {
    goto LABEL_15;
  }

  v42 = type metadata accessor for _SliceBuffer(0, v27, v17, v18);

  return _SliceBuffer.replaceSubrange<A>(_:with:elementsOf:)(v12, a2, v21, a3, v42, a5, a6);
}

void (*ArraySlice.subscript.modify(void *a1, Swift::Int a2, Swift::Int a3, uint64_t a4))(void ***a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x40, 0x15D5uLL);
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
  ArraySlice._checkIndex(_:)(a2);
  ArraySlice._checkIndex(_:)(a3);
  v12 = specialized _SliceBuffer.subscript.getter(a2, a3, v11);
  *v10 = v12;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  swift_unknownObjectRetain(v12);
  return ArraySlice.subscript.modify;
}

void ArraySlice.subscript.modify(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[6];
  v9 = v2[4];
  v8 = v2[5];
  if (a2)
  {
    v10 = swift_unknownObjectRetain(v3);
    ArraySlice.subscript.setter(v10, v4, v5, v6, v9, v8, v7);
    swift_unknownObjectRelease(*v2);
  }

  else
  {
    ArraySlice.subscript.setter(v3, v2[1], v2[2], v2[3], v2[4], v2[5], v2[6]);
  }

  free(v2);
}

uint64_t ArraySlice.count.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  return result;
}

void protocol witness for MutableCollection.subscript.setter in conformance ArraySlice<A>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  ArraySlice._makeMutableAndUnique()();
  if (v6 < v3[2] || v6 >= v3[3] >> 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(*(*(a3 + 16) - 8) + 40))(v3[1] + *(*(*(a3 + 16) - 8) + 72) * v6, a1);

  _swift_displayCrashMessage();
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x28, 0xC7AFuLL);
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = ArraySlice.subscript.modify(v4, *a2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>(void *a1, Swift::Int *a2, uint64_t a3))(void ***a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x118BuLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = v3;
  v7[5] = a3;
  v10 = *a2;
  v9 = a2[1];
  v7[6] = v10;
  v7[7] = v9;
  v11 = *v3;
  ArraySlice._checkIndex(_:)(v10);
  ArraySlice._checkIndex(_:)(v9);
  v12 = specialized _SliceBuffer.subscript.getter(v10, v9, v11);
  *v8 = v12;
  v8[1] = v13;
  v8[2] = v14;
  v8[3] = v15;
  swift_unknownObjectRetain(v12);
  return protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[6];
  v7 = v2[7];
  v9 = v2[5];
  if (a2)
  {
    v10 = swift_unknownObjectRetain(v3);
    ArraySlice.subscript.setter(v10, v4, v5, v6, v8, v7, v9);
    swift_unknownObjectRelease(*v2);
  }

  else
  {
    ArraySlice.subscript.setter(v3, v2[1], v2[2], v2[3], v2[6], v2[7], v2[5]);
  }

  free(v2);
}

void *ArraySlice._withUnsafeMutableBufferPointerIfSupported<A>(_:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = v4[2];
  v8 = v4[3] >> 1;
  v9 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
LABEL_8:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a2 + 16);
  ArraySlice._makeMutableAndUnique()();
  if (v9 < 0)
  {
    goto LABEL_8;
  }

  v13 = v4[1] + *(*(v12 - 8) + 72) * v4[2];
  v15[0] = v13;
  v15[1] = v9;
  a1(v15);
  if (v5)
  {
    return _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tpq5Tm(v15, v13, v9);
  }

  _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tpq5Tm(v15, v13, v9);
  return (*(*(a3 - 8) + 56))(a4, 0, 1, a3);
}

{
  return ArraySlice.withContiguousMutableStorageIfAvailable<A>(_:)(a1, a2, a3, a4);
}

unint64_t _ss12_SliceBufferVyxGSlsSl8endIndex0D0QzvgTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = ArraySlice.endIndex.getter(a1, a2, a3, *(v4 + 24));
  *a4 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ArraySlice<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0xB73AuLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = ArraySlice.subscript.read(v7, *a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*ArraySlice.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7))()
{
  v11 = *(a7 - 8);
  v12 = v11;
  *a1 = a7;
  a1[1] = v11;
  v13 = *(v11 + 64);
  if (swift_coroFrameAlloc)
  {
    v14 = swift_coroFrameAlloc(v13, 0xB8E7uLL);
  }

  else
  {
    v14 = malloc(v13);
  }

  a1[2] = v14;
  if (a2 < a5 || (a6 >> 1) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))();
  return _ArrayBuffer.subscript.read;
}

id protocol witness for Collection.subscript.getter in conformance ArraySlice<A>@<X0>(Swift::Int *a1@<X0>, void *a3@<X8>)
{
  v5 = specialized ArraySlice.subscript.getter(*a1, a1[1], *v3);
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;

  return swift_unknownObjectRetain(v5);
}

uint64_t protocol witness for Collection.indices.getter in conformance ArraySlice<A>@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X8>, uint64_t a3@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, a1, a3);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a2);
}

__n128 protocol witness for Sequence.makeIterator() in conformance ArraySlice<A>@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = v3;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ArraySlice<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

__objc2_class **ArraySlice._copyToContiguousArray()(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v12 = a2;
  v13 = a5;
  v14 = type metadata accessor for __ContiguousArrayStorageBase();
  v15 = swift_unknownObjectRetain_n(a1, 2);
  v16 = swift_dynamicCastClass(v15, v14);
  if (!v16)
  {
    swift_unknownObjectRelease(a1);
    v16 = &_swiftEmptyArrayStorage;
  }

  v17 = *(v16 + 2);
  v18 = v16;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = a1;
  if (v17 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease(v18);
    a5 = v13;
    a2 = v12;
LABEL_2:
    v20[0] = a1;
    v20[1] = a2;
    v20[2] = a3;
    v20[3] = a4;
    v8 = type metadata accessor for ArraySlice(0, a5, a3, a4);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v8, v9);
    v11 = _copyCollectionToContiguousArray<A>(_:)(v20, v8, WitnessTable);
    swift_unknownObjectRelease(a1);
    return v11;
  }

  v11 = swift_dynamicCastClass(a1, v14);
  swift_unknownObjectRelease(a1);
  if (!v11)
  {
    swift_unknownObjectRelease(a1);
    return &_swiftEmptyArrayStorage;
  }

  return v11;
}

__n128 protocol witness for Sequence._copyContents(initializing:) in conformance ArraySlice<A>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ArraySlice._copyContents(initializing:)(v8, a2, a3, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(a4 + 16));
  v6 = v9;
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  *(a1 + 32) = v6;
  return result;
}

char *ArraySlice._copyContents(initializing:)@<X0>(uint64_t *__return_ptr a1@<X8>, char *__dst@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, unint64_t a7@<X5>, unint64_t *a8@<X6>)
{
  v13 = a7 >> 1;
  if (a7 >> 1 != a6)
  {
    if (__dst)
    {
      v14 = v13 - a6;
      if (__OFSUB__(v13, a6))
      {
        __break(1u);
      }

      else if (v14 <= a3)
      {
        __dst = UnsafeMutablePointer.initialize(from:count:)((a5 + *(*(a8 - 1) + 72) * a6), v13 - a6, __dst, a8);
        goto LABEL_7;
      }
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v14 = 0;
  v13 = a6;
LABEL_7:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a7;
  a1[4] = v13;
  a1[5] = v14;
  return __dst;
}

uint64_t ArraySlice.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((((a4 >> 1) - a3) & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  result = a1(a2 + *(*(a5 - 8) + 72) * a3);
  if (!v7)
  {
    return (*(*(a6 - 8) + 56))(a7, 0, 1, a6);
  }

  return result;
}

BOOL ArraySlice.init(arrayLiteral:)(unint64_t a1, unint64_t *a2)
{
  v4 = _ArrayBuffer.requestNativeBuffer()(a1, a2);
  if (!v4)
  {
    v12 = a1;
    v7 = type metadata accessor for Array(0, a2, v5, v6);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v7, v8);
    v4 = _copyCollectionToContiguousArray<A>(_:)(&v12, v7, WitnessTable);
  }

  v10 = v4;
  a1;
  return _SliceBuffer.init(_buffer:shiftedToStartIndex:)(v10, 0);
}

BOOL protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance ArraySlice<A>@<W0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BOOL8 *a3@<X8>)
{
  result = ArraySlice.init(arrayLiteral:)(a1, *(a2 + 16));
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

__objc2_class **ArraySlice.init(repeating:count:)(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = a2;
  if (!a2)
  {
    (*(*(a3 - 1) + 8))(a1, a3);
    return &_swiftEmptyArrayStorage;
  }

  v6 = static ArraySlice._allocateBufferUninitialized(minimumCapacity:)(a2, a3);
  v10 = v9 >> 1;
  v11 = (v9 >> 1) - v8;
  if (__OFSUB__(v9 >> 1, v8))
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v4 - v11;
  if (__OFSUB__(v4, v11))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v6;
  v14 = v7;
  v15 = v8;
  if (!v12)
  {
    goto LABEL_11;
  }

  v16 = type metadata accessor for __ContiguousArrayStorageBase();
  v17 = swift_unknownObjectRetain(v13);
  v18 = swift_dynamicCastClass(v17, v16);
  if (!v18)
  {
    swift_unknownObjectRelease(v13);
    v18 = &_swiftEmptyArrayStorage;
  }

  v19 = *(v18 + 2);
  v20 = __OFADD__(v19, v12);
  v21 = v19 + v12;
  if (v20)
  {
    goto LABEL_21;
  }

  *(v18 + 2) = v21;
  v18;
  if (__OFADD__(v10, v12))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (((v10 + v12) & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  v22 = *(a3 - 1);
  v27 = v22;
  v23 = *(v22 + 72);
  v24 = v14 + v23 * v15;
  v25 = *(v22 + 16);
  do
  {
    if (!v4)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v25(v24, a1, a3);
    v24 += v23;
    --v4;
  }

  while (v4);
  (*(v27 + 8))(a1, a3);
  return v13;
}

BOOL static ArraySlice._allocateBufferUninitialized(minimumCapacity:)(uint64_t a1, unint64_t *a2)
{
  v2 = _ContiguousArrayBuffer.init(_uninitializedCount:minimumCapacity:)(0, a1, a2);

  return _SliceBuffer.init(_buffer:shiftedToStartIndex:)(v2, 0);
}

__objc2_class **_SliceBuffer.count.setter(__objc2_class **result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = result - v5;
  if (__OFSUB__(result, v5))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!v6)
  {
    return result;
  }

  v7 = *v1;
  v8 = type metadata accessor for __ContiguousArrayStorageBase();
  v9 = swift_unknownObjectRetain(v7);
  result = swift_dynamicCastClass(v9, v8);
  if (!result)
  {
    swift_unknownObjectRelease(v7);
    result = &_swiftEmptyArrayStorage;
  }

  v10 = result[2];
  v4 = __OFADD__(v10, v6);
  v11 = &v6[v10];
  if (v4)
  {
    goto LABEL_14;
  }

  result[2] = v11;
  result;
  result = &v6[v3];
  if (__OFADD__(v3, v6))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return _SliceBuffer.endIndex.setter(result);
}

__objc2_class **ArraySlice.init(_uninitializedCount:)(uint64_t a1, unint64_t *a2)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = static ArraySlice._allocateBufferUninitialized(minimumCapacity:)(a1, a2);
  v5 = v4 >> 1;
  v7 = (v4 >> 1) - v6;
  if (__OFSUB__(v4 >> 1, v6))
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = a1 - v7;
  if (__OFSUB__(a1, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v3;
  if (v8)
  {
    v10 = type metadata accessor for __ContiguousArrayStorageBase();
    v11 = swift_unknownObjectRetain(v9);
    v12 = swift_dynamicCastClass(v11, v10);
    if (!v12)
    {
      swift_unknownObjectRelease(v9);
      v12 = &_swiftEmptyArrayStorage;
    }

    v13 = *(v12 + 2);
    v14 = __OFADD__(v13, v8);
    v15 = v13 + v8;
    if (!v14)
    {
      *(v12 + 2) = v15;
      v12;
      if (!__OFADD__(v5, v8))
      {
        if (((v5 + v8) & 0x8000000000000000) == 0)
        {
          return v9;
        }

LABEL_19:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return v9;
}

__objc2_class **static ArraySlice._allocateUninitialized(_:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, __objc2_class ***a3@<X8>)
{
  result = ArraySlice.init(_uninitializedCount:)(a1, a2);
  v6 = *(*(a2 - 1) + 72);
  *a3 = result;
  a3[1] = v7;
  a3[2] = v8;
  a3[3] = v9;
  a3[4] = (v7 + v6 * v8);
  return result;
}

Swift::Void __swiftcall ArraySlice.reserveCapacity(_:)(Swift::Int a1)
{
  v3 = v1;
  v5 = v2[3];
  v6 = *v2;
  v7 = v5 >> 1;
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(*v2);
  *v2 = v6;
  if (!isUniquelyReferenced_nonNull)
  {
    goto LABEL_11;
  }

  v9 = v2[2];
  v10 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
    __break(1u);
    goto LABEL_30;
  }

  v11 = v2[1];
  v12 = type metadata accessor for __ContiguousArrayStorageBase();
  v13 = swift_unknownObjectRetain(v6);
  v14 = swift_dynamicCastClass(v13, v12);
  if (!v14)
  {
    swift_unknownObjectRelease(v6);
    v14 = &_swiftEmptyArrayStorage;
  }

  v15 = *(*(v3 + 16) - 8);
  v16 = *(v14 + 2);
  if ((v11 + *(v15 + 72) * v9 + *(v15 + 72) * v10) == (v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v16))
  {
    v17 = *(v14 + 3);
    v14;
    v18 = (v17 >> 1) - v16;
    v19 = __OFADD__(v10, v18);
    v10 += v18;
    if (!v19)
    {
      goto LABEL_9;
    }

LABEL_30:
    __break(1u);
    return;
  }

  v14;
LABEL_9:
  if (v10 >= a1)
  {
    return;
  }

  v6 = *v2;
LABEL_11:
  v20 = v2[2];
  v21 = v2[3] >> 1;
  v22 = v21 - v20;
  if (__OFSUB__(v21, v20))
  {
    __break(1u);
    goto LABEL_27;
  }

  v23 = v2[1];
  v24 = *(v3 + 16);
  if (v22 > a1)
  {
    a1 = v21 - v20;
  }

  if (!a1)
  {
    v28 = &_swiftEmptyArrayStorage;
    if (v7 >= v20)
    {
      goto LABEL_21;
    }

LABEL_25:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = getContiguousArrayStorageType<A>(for:)(v24, v24);
  v26 = *(*(v24 - 1) + 72);
  v27 = *(*(v24 - 1) + 80);
  v28 = swift_allocObject(v25, (((v27 + *(v25 + 48)) & ~v27) + v26 * a1), v27 | *(v25 + 52));
  v29 = _swift_stdlib_malloc_size(v28);
  if (!v26 || ((v30 = v29 - ((v27 + 32) & ~v27), v30 == 0x8000000000000000) ? (v31 = v26 == -1) : (v31 = 0), v31))
  {
LABEL_28:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v32 = v30 / v26;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v24, v24);
  v28[2] = v22;
  v28[3] = (isClassOrObjCExistentialType | (2 * v32));
  if (v7 < v20)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (__OFSUB__(v7, v20))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  UnsafeMutablePointer.initialize(from:count:)((v23 + *(*(v24 - 1) + 72) * v20), v7 - v20, v28 + ((*(*(v24 - 1) + 80) + 32) & ~*(*(v24 - 1) + 80)), v24);
  v34 = _SliceBuffer.init(_buffer:shiftedToStartIndex:)(v28, v20);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  swift_unknownObjectRelease(v6);
  *v2 = v34;
  v2[1] = v36;
  v2[2] = v38;
  v2[3] = v40;
}

char *_SliceBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  swift_unknownObjectRelease(a4);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = *(*(a8 - 1) + 72);
  if (v13 < 0 || ((v15 = (a5 + v14 * a1), v16 = v14 * v13, v17 = &a3[v16], v18 = &v15[v16], v15 < v17) ? (v19 = v18 > a3) : (v19 = 0), v19))
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_arrayInitWithCopy(a3, v15, v13, a8);
  return v17;
}

Swift::Void __swiftcall ArraySlice._copyToNewBuffer(oldCount:)(Swift::Int oldCount)
{
  v6 = v4[1];
  v14[0] = *v4;
  v14[1] = v6;
  v7 = type metadata accessor for _SliceBuffer(0, *(v1 + 16), v2, v3);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, v7, v8);
  v10 = _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(oldCount, oldCount + 1, v7, WitnessTable);
  *&v14[0] = v10;
  v11 = default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(v7, WitnessTable);
  v13 = v12;
  _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(v14, oldCount, 0, v11, v12, v7, WitnessTable);
  v13;
  v10;
}

Swift::Void __swiftcall ArraySlice._makeUniqueAndReserveCapacityIfNotUnique()()
{
  v1 = v0[3];
  if ((v1 & 1) == 0 || (v2 = *v0, isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(*v0), *v0 = v2, (isUniquelyReferenced_nonNull & 1) == 0))
  {
    v4 = v0[2];
    if (__OFSUB__(v1 >> 1, v4))
    {
      __break(1u);
    }

    else
    {

      ArraySlice._copyToNewBuffer(oldCount:)((v1 >> 1) - v4);
    }
  }
}

Swift::Void __swiftcall ArraySlice._reserveCapacityAssumingUniqueBuffer(oldCount:)(Swift::Int oldCount)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = (v4 >> 1) - v5;
  if (__OFSUB__(v4 >> 1, v5))
  {
    __break(1u);
LABEL_11:

    ArraySlice._copyToNewBuffer(oldCount:)(v3);
    return;
  }

  v7 = v1;
  v3 = oldCount;
  if (v4)
  {
    v8 = *v2;
    v9 = *(v2 + 8);
    v10 = type metadata accessor for __ContiguousArrayStorageBase();
    v11 = swift_unknownObjectRetain(v8);
    v12 = swift_dynamicCastClass(v11, v10);
    if (!v12)
    {
      swift_unknownObjectRelease(v8);
      v12 = &_swiftEmptyArrayStorage;
    }

    v13 = *(*(v7 + 16) - 8);
    v14 = *(v12 + 2);
    if ((v9 + *(v13 + 72) * v5 + *(v13 + 72) * v6) == (v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v14))
    {
      v15 = *(v12 + 3);
      v12;
      v16 = (v15 >> 1) - v14;
      v17 = __OFADD__(v6, v16);
      v6 += v16;
      if (v17)
      {
        __break(1u);
        return;
      }
    }

    else
    {
      v12;
    }
  }

  if (v6 < v3 + 1)
  {
    goto LABEL_11;
  }
}

Swift::Bool __swiftcall _SliceBuffer.isMutableAndUniquelyReferenced()()
{
  if (*(v0 + 24))
  {
    return swift_isUniquelyReferenced_nonNull(*v0);
  }

  else
  {
    return 0;
  }
}

__objc2_class **ArraySlice._appendElementAssumeUniqueAndCapacity(_:newElement:)(__objc2_class **result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24) >> 1;
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = result - v6 + 1;
  if (__OFSUB__(result + 1, v6))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v8)
  {
    v17 = *(a3 + 16);
    goto LABEL_10;
  }

  v10 = a2;
  v11 = *v3;
  v12 = type metadata accessor for __ContiguousArrayStorageBase();
  v13 = swift_unknownObjectRetain(v11);
  result = swift_dynamicCastClass(v13, v12);
  if (!result)
  {
    swift_unknownObjectRelease(v11);
    result = &_swiftEmptyArrayStorage;
  }

  v14 = result[2];
  v15 = __OFADD__(v14, v8);
  v16 = &v8[v14];
  if (v15)
  {
    goto LABEL_15;
  }

  result[2] = v16;
  result;
  result = &v8[v5];
  if (__OFADD__(v5, v8))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v17 = *(a3 + 16);
  _SliceBuffer.endIndex.setter(result);
  a2 = v10;
LABEL_10:
  v18 = *(v17 - 8);
  v19 = *(v18 + 32);
  v20 = *(v3 + 8) + *(v18 + 72) * v4 + *(v18 + 72) * v7;

  return v19(v20, a2, v17);
}

void ArraySlice.append(_:)(uint64_t a1, uint64_t a2)
{
  ArraySlice._makeUniqueAndReserveCapacityIfNotUnique()();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24) >> 1;
  v7 = (v6 - v5);
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
  }

  else
  {
    ArraySlice._reserveCapacityAssumingUniqueBuffer(oldCount:)(v6 - v5);

    ArraySlice._appendElementAssumeUniqueAndCapacity(_:newElement:)(v7, a1, a2);
  }
}

uint64_t ArraySlice.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v5 = v4;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v10, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v53 = type metadata accessor for IteratorSequence(0, v11, AssociatedConformanceWitness, v13);
  v15 = MEMORY[0x1EEE9AC00](v53, v14);
  v52 = &v52 - v16;
  v17 = *(a3 - 1);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v57 = &v52 - v23;
  v58 = a1;
  v24 = (*(a4 + 40))(a3, a4);
  ArraySlice.reserveCapacityForAppend(newElementsCount:)(v24);
  v25 = *(v4 + 16);
  v26 = *(v5 + 24) >> 1;
  v27 = v26 - v25;
  if (__OFSUB__(v26, v25))
  {
    __break(1u);
    goto LABEL_13;
  }

  v55 = v11;
  v28 = *(a2 + 16);
  v29 = *(v5 + 8);
  v59 = v5;
  v30 = *(*(v28 - 8) + 72);
  v54 = v28;
  v31 = ArraySlice._getCapacity()();
  v32 = v31 - v27;
  if (__OFSUB__(v31, v27))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v32 < 0)
  {
    goto LABEL_14;
  }

  v33 = v29 + v30 * v25 + v30 * v27;
  v34 = v58;
  (*(v17 + 16))(v21, v58, a3);
  v35 = v57;
  v36 = (*(a4 + 64))(v57, v33, v32, a3, a4);
  if (v36 < v24)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v37 = v36;
  result = (*(v17 + 8))(v34, a3);
  v42 = v54;
  v41 = v55;
  if (v37 >= 1)
  {
    if (__OFADD__(v27, v37))
    {
      __break(1u);
      return result;
    }

    type metadata accessor for _SliceBuffer(0, v54, v39, v40);
    _SliceBuffer.count.setter((v27 + v37));
  }

  if (v37 != v32)
  {
    return (*(v56 + 8))(v35, v41);
  }

  v43 = v52;
  (*(v56 + 32))(v52, v35, v41);
  v46 = type metadata accessor for _SliceBuffer(0, v42, v44, v45);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, v46, v47);
  v49 = v53;
  v51 = swift_getWitnessTable(protocol conformance descriptor for IteratorSequence<A>, v53, v50);
  return _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(v43, v46, v49, WitnessTable, v51);
}

Swift::Void __swiftcall ArraySlice.reserveCapacityForAppend(newElementsCount:)(Swift::Int newElementsCount)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = ArraySlice._getCapacity()();
  v7 = v4 + newElementsCount;
  if (__OFADD__(v4, newElementsCount))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 < v7)
  {
    if (v6 + 0x4000000000000000 >= 0)
    {
      v8 = 2 * v6;
      if (v8 > v7)
      {
        v7 = v8;
      }

      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    return;
  }

LABEL_7:

  ArraySlice.reserveCapacity(_:)(v7);
}

uint64_t ArraySlice._customRemoveLast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3[2];
  v11 = v3[3];
  v12 = v11 >> 1;
  if (__OFSUB__(v11 >> 1, v10))
  {
    __break(1u);
LABEL_5:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (((v11 >> 1) - v10) <= 0)
  {
    goto LABEL_5;
  }

  v13 = v3[1];
  specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(v12 - 1, *v3, v13, v10, v11);
  (*(v7 + 16))(v9, v13 + *(v7 + 72) * (v12 - 1), v6);
  v16 = type metadata accessor for EmptyCollection(0, v6, v14, v15);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v16, v17);
  ArraySlice.replaceSubrange<A>(_:with:)((v12 - 1), v12, v19, a1, v16, WitnessTable);
  (*(v7 + 32))(a3, v9, v6);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

void *ArraySlice.remove(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[1];
  v8 = *(a2 + 16);
  specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(a1, *v3, v7, v3[2], v3[3]);
  (*(*(v8 - 8) + 16))(a3, v7 + *(*(v8 - 8) + 72) * a1, v8);
  if (__OFADD__(a1, 1))
  {
    __break(1u);
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 + 1 < a1)
  {
    goto LABEL_7;
  }

  v11 = type metadata accessor for EmptyCollection(0, v8, v9, v10);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v11, v12);

  return ArraySlice.replaceSubrange<A>(_:with:)(a1, a1 + 1, v13, a2, v11, WitnessTable);
}

void *ArraySlice.insert(_:at:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for CollectionOfOne(0, v7, a3, a4);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  ArraySlice._checkIndex(_:)(a2);
  (*(*(v7 - 8) + 32))(v11, a1, v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v8, v12);
  return ArraySlice.replaceSubrange<A>(_:with:)(a2, a2, v11, a3, v8, WitnessTable);
}

Swift::Void __swiftcall ArraySlice.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  if (keepingCapacity)
  {
    if (v2[3])
    {
      v3 = v1;
      isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(*v2);
      v6 = v2[3];
      if (isUniquelyReferenced_nonNull)
      {
        v7 = v2[2];
        v31 = *v2;
        v32 = v7;
        v33 = v6;
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v3, v5);
        RandomAccessCollection<>.indices.getter(v3, WitnessTable, &protocol witness table for Int, v30);
        v9 = v30[0];
        v10 = v30[1];
        v13 = type metadata accessor for EmptyCollection(0, *(v3 + 16), v11, v12);
        v15 = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v13, v14);
        ArraySlice.replaceSubrange<A>(_:with:)(v9, v10, v16, v3, v13, v15);
        return;
      }

      v1 = v3;
    }

    v18 = *v2;
    v19 = v2[2];
    v20 = *(v1 + 16);
    v21 = ArraySlice._getCapacity()();
    v22 = _ContiguousArrayBuffer.init(_uninitializedCount:minimumCapacity:)(0, v21, v20);
    v23 = _SliceBuffer.init(_buffer:shiftedToStartIndex:)(v22, v19);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease(v18);
    *v2 = v23;
    v2[1] = v25;
    v2[2] = v27;
    v2[3] = v29;
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage + ((*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80));
    swift_unknownObjectRelease(*v2);
    *v2 = &_swiftEmptyArrayStorage;
    v2[1] = v17;
    *(v2 + 1) = xmmword_180672710;
  }
}

__objc2_class **_SliceBuffer.requestNativeBuffer()(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for __ContiguousArrayStorageBase();
  v9 = swift_unknownObjectRetain_n(a1, 2);
  v10 = swift_dynamicCastClass(v9, v8);
  if (!v10)
  {
    swift_unknownObjectRelease(a1);
    v10 = &_swiftEmptyArrayStorage;
  }

  v11 = *(v10 + 2);
  v10;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease(a1);
    return 0;
  }

  result = swift_dynamicCastClass(a1, v8);
  if (!result)
  {
    swift_unknownObjectRelease(a1);
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

double protocol witness for RangeReplaceableCollection.init() in conformance ArraySlice<A>@<D0>(uint64_t a1@<X8>)
{
  ArraySlice.init()();
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = v2;
  result = 0.0;
  *(a1 + 16) = xmmword_180672710;
  return result;
}

__objc2_class **protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance ArraySlice<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __objc2_class ***a4@<X8>)
{
  result = ArraySlice.init(repeating:count:)(a1, a2, *(a3 + 16));
  *a4 = result;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
  return result;
}

BOOL protocol witness for RangeReplaceableCollection.init<A>(_:) in conformance ArraySlice<A>@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BOOL8 *a5@<X8>)
{
  result = ArraySlice.init<A>(_:)(a1, *(a4 + 16), a2, a3);
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  a5[3] = v9;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection._customRemoveLast(_:) in conformance ArraySlice<A>(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, a2, a3);
  RangeReplaceableCollection<>._customRemoveLast(_:)(a1, a2, WitnessTable);
  return 1;
}

uint64_t specialized RangeReplaceableCollection<>._customRemoveLast(_:)(uint64_t a1)
{
  if (__OFSUB__(0, a1))
  {
    __break(1u);
    goto LABEL_6;
  }

  rawBits = v1->_rawBits;
  v2 = v1[1]._rawBits;
  v4 = v1[2]._rawBits;
  v5 = v1[3]._rawBits;
  v12 = String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(v2, -a1, v1->_rawBits);
  if (v12.is_nil)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v12.value._rawBits;
  if (v12.value._rawBits >> 14 < rawBits >> 14)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5;
  v7._rawBits = v6;
  v8 = _StringGuts.validateScalarRange(_:in:)(rawBits, v7, rawBits, v2, v4, v5);
  v10 = v9;
  v5;
  v1->_rawBits = v8;
  v1[1]._rawBits = v10;
  v1[2]._rawBits = v4;
  v1[3]._rawBits = v5;
  return 1;
}

{
  if (__OFSUB__(0, a1))
  {
    __break(1u);
    goto LABEL_6;
  }

  rawBits = v1->_rawBits;
  v2 = v1[1]._rawBits;
  v5 = v1[2]._rawBits;
  v4 = v1[3]._rawBits;
  v15 = Substring.index(_:offsetBy:limitedBy:)(v2, -a1, v1->_rawBits);
  if (v15.is_nil)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v15.value._rawBits >> 14 < rawBits >> 14)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6._rawBits = v15.value._rawBits;
  v7 = specialized Substring.subscript.getter(rawBits, v6, rawBits, v2, v5, v4);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v12;
  v4;
  v1->_rawBits = v7;
  v1[1]._rawBits = v9;
  v1[2]._rawBits = v11;
  v1[3]._rawBits = v13;
  return 1;
}

uint64_t RangeReplaceableCollection<>._customRemoveLast(_:)(uint64_t a1, Class *a2, void (*a3)(char *, char *))
{
  v81 = a3;
  v6 = *(a3 + 1);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v78 = v9;
  v76 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v77 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v73 = &v69 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v16 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v15);
  v74 = *(v16 - 8);
  v75 = v16;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v72 = &v69 - v19;
  v84 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v18, v20);
  v83 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Optional(0, v8, v22, v23);
  v69 = *(v24 - 8);
  v70 = v24;
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v69 - v27;
  v29 = *(v8 - 1);
  v31 = MEMORY[0x1EEE9AC00](v26, v30);
  v79 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = &v69 - v35;
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v69 - v39;
  MEMORY[0x1EEE9AC00](v38, v41);
  v43 = &v69 - v42;
  v44 = *(v6 + 72);
  v85 = v3;
  v86 = v6;
  v44(a2, v6);
  v45 = __OFSUB__(0, a1);
  v46 = -a1;
  if (v45)
  {
    __break(1u);
    goto LABEL_6;
  }

  v71 = *(v86 + 64);
  v71(a2);
  v47 = *(v81 + 7);
  v82 = a2;
  v47(v40, v46, v36, a2);
  v48 = *(v29 + 8);
  v48(v36, v8);
  v81 = v48;
  v48(v40, v8);
  if ((*(v29 + 48))(v28, 1, v8) == 1)
  {
    (*(v69 + 8))(v28, v70);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v49 = *(v29 + 32);
  v49(v43, v28, v8);
  v50 = v84;
  v51 = v85;
  v52 = v82;
  (*(v84 + 16))(v83, v85, v82);
  v53 = v79;
  (v71)(v52, v86);
  v56 = *(v50 + 8);
  v54 = v50 + 8;
  v55 = v56;
  v56(v51, v52);
  if (((*(AssociatedConformanceWitness + 24))(v53, v43, v8) & 1) == 0)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v84 = v54;
  v57 = v73;
  v49(v73, v53, v8);
  v58 = v78;
  v49(&v57[*(v78 + 48)], v43, v8);
  v60 = v76;
  v59 = v77;
  (*(v76 + 16))(v77, v57, v58);
  v61 = *(v58 + 48);
  AssociatedConformanceWitness = v55;
  v62 = v72;
  v49(v72, v59, v8);
  v63 = &v59[v61];
  v64 = v81;
  v81(v63, v8);
  (*(v60 + 32))(v59, v57, v58);
  v65 = v75;
  v49(&v62[*(v75 + 36)], &v59[*(v58 + 48)], v8);
  v64(v59, v8);
  v66 = v82;
  v67 = v83;
  (*(v86 + 88))(v62, v82);
  (*(v74 + 8))(v62, v65);
  (AssociatedConformanceWitness)(v67, v66);
  return 1;
}

unint64_t specialized RangeReplaceableCollection<>.removeFirst()()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 >> 14 == *v0 >> 14 || (v3 = v0[2], v4 = v0[3], v5 = specialized Collection.first.getter(*v0, v0[1], v3, v4), (v5 & 0x100000000) != 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v5;
  v4;
  v7._rawBits = Substring.UnicodeScalarView.index(after:)(v1)._rawBits;
  if (v2 >> 14 < v7._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  rawBits = v7._rawBits;
  v4;
  v4;
  v9._rawBits = v2;
  v10 = _StringGuts.validateScalarRange(_:in:)(rawBits, v9, v1, v2, v3, v4);
  v12 = v11;
  v4;
  *v0 = v10;
  v0[1] = v12;
  v0[2] = v3;
  v0[3] = v4;
  return v6;
}

uint64_t specialized RangeReplaceableCollection<>.removeFirst()()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 >> 14 == *v0 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = v0[2];
  v3 = v0[3];
  v5 = Substring.subscript.getter(*v0, *v0, v0[1], v4, v3);
  v3;
  v6._rawBits = Substring.index(after:)(v1)._rawBits;
  if (v2 >> 14 < v6._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  rawBits = v6._rawBits;
  v3;
  v8._rawBits = v2;
  v9 = specialized Substring.subscript.getter(rawBits, v8, v1, v2, v4, v3);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v14;
  v3;
  *v0 = v9;
  v0[1] = v11;
  v0[2] = v13;
  v0[3] = v15;
  return v5;
}

uint64_t RangeReplaceableCollection<>.removeFirst()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v75 = a3;
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness(255, v6, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v66 = v9;
  v72 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v70 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v71 = &v61 - v15;
  v77 = *(v8 - 1);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v76 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v74 = &v61 - v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a1, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v26 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v25);
  v68 = *(v26 - 8);
  v69 = v26;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v67 = &v61 - v29;
  v78 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(255, *(v6 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v34 = v33;
  v37 = type metadata accessor for Optional(0, v33, v35, v36);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v61 - v39;
  if (((*(v6 + 104))(a1, v6) & 1) != 0 || (v65 = v8, Collection.first.getter(a1, v6, v40), v41 = *(v34 - 8), (*(v41 + 48))(v40, 1, v34) == 1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v41 + 32))(v75, v40, v34);
  v42 = *(v78 + 16);
  v75 = v32;
  v42(v32, v4, a1);
  (*(v6 + 64))(a1, v6);
  v43 = v74;
  (*(v6 + 184))(v22, a1, v6);
  v44 = v77;
  v45 = v65;
  v64 = *(v77 + 8);
  v64(v22, v65);
  v46 = v76;
  (*(v6 + 72))(a1, v6);
  if (((*(AssociatedConformanceWitness + 24))(v43, v46, v45) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v47 = *(v78 + 8);
  v78 += 8;
  AssociatedConformanceWitness = v47;
  v62 = v6;
  v63 = a1;
  v47(v4, a1);
  v48 = *(v44 + 32);
  v49 = v71;
  v48(v71, v43, v45);
  v50 = v66;
  v48(&v49[*(v66 + 48)], v46, v45);
  v51 = v72;
  v52 = v70;
  (*(v72 + 16))(v70, v49, v50);
  v77 = v4;
  v53 = *(v50 + 48);
  v54 = v67;
  v48(v67, v52, v45);
  v55 = &v52[v53];
  v56 = v64;
  v64(v55, v45);
  (*(v51 + 32))(v52, v49, v50);
  v57 = v69;
  v48(&v54[*(v69 + 36)], &v52[*(v50 + 48)], v45);
  v56(v52, v45);
  v58 = v63;
  v59 = v75;
  (*(v62 + 88))(v54, v63);
  (*(v68 + 8))(v54, v57);
  return (AssociatedConformanceWitness)(v59, v58);
}

void specialized RangeReplaceableCollection<>.removeFirst(_:)(Swift::Int offsetBy)
{
  if (offsetBy)
  {
    if (offsetBy < 0 || (rawBits = v1->_rawBits, v3 = v1[1]._rawBits, v4 = v1[2]._rawBits, v5 = v1[3]._rawBits, v11 = Substring.UnicodeScalarView.index(_:offsetBy:limitedBy:)(v1->_rawBits, offsetBy, v3), v11.is_nil))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v6 = v11.value._rawBits;
    if (v3 >> 14 < v11.value._rawBits >> 14)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v5;
    v7._rawBits = v3;
    v8 = _StringGuts.validateScalarRange(_:in:)(v6, v7, rawBits, v3, v4, v5);
    v10 = v9;
    v5;
    v1->_rawBits = v8;
    v1[1]._rawBits = v10;
    v1[2]._rawBits = v4;
    v1[3]._rawBits = v5;
  }
}

{
  if (offsetBy)
  {
    if (offsetBy < 0 || (rawBits = v1->_rawBits, v3 = v1[1]._rawBits, v5 = v1[2]._rawBits, v4 = v1[3]._rawBits, *&v6 = Substring.index(_:offsetBy:limitedBy:)(v1->_rawBits, offsetBy, v3), (BYTE8(v6) & 1) != 0))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v3 >> 14 < v6 >> 14)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *(&v6 + 1) = v3;
    v7 = specialized Substring.subscript.getter(v6, *(&v6 + 8), rawBits, v3, v5, v4);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v12;
    v4;
    v1->_rawBits = v7;
    v1[1]._rawBits = v9;
    v1[2]._rawBits = v11;
    v1[3]._rawBits = v13;
  }
}

uint64_t RangeReplaceableCollection<>.removeFirst(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v7, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v11 = v10;
  v80 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v81 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v78 = &v69 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v18 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v17);
  v79 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v77 = &v69 - v21;
  v87 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v20, v22);
  v86 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Optional(0, v9, v24, v25);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v69 - v29;
  v84 = *(v9 - 1);
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v69 - v35;
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v69 - v39;
  result = MEMORY[0x1EEE9AC00](v38, v41);
  v82 = &v69 - v45;
  if (!a1)
  {
    return result;
  }

  if (a1 < 0)
  {
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v69 = v44;
  v70 = result;
  v76 = v43;
  v73 = v18;
  v74 = v11;
  (*(v7 + 64))(a2, v7);
  v46 = v4;
  v75 = *(v7 + 72);
  v75(a2, v7);
  (*(v7 + 144))(v40, a1, v36, a2, v7);
  v85 = v7;
  v47 = v84;
  v49 = v84 + 1;
  v48 = v84[1];
  v48(v36, v9);
  v71 = v49;
  v72 = v48;
  v48(v40, v9);
  v50 = v30;
  if ((v47[6])(v30, 1, v9) == 1)
  {
    (*(v69 + 8))(v30, v70);
    goto LABEL_7;
  }

  v51 = v47[4];
  v52 = v82;
  v51(v82, v50, v9);
  v53 = v87;
  (*(v87 + 16))(v86, v4, a2);
  v54 = v76;
  v75(a2, v85);
  v57 = *(v53 + 8);
  v55 = v53 + 8;
  v56 = v57;
  (v57)(v46, a2);
  if (((*(AssociatedConformanceWitness + 24))(v52, v54, v9) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v87 = v55;
  v58 = v78;
  AssociatedConformanceWitness = v46;
  v84 = a2;
  v51(v78, v52, v9);
  v59 = v74;
  v51(&v58[*(v74 + 48)], v54, v9);
  v60 = v80;
  v61 = v81;
  (*(v80 + 16))(v81, v58, v59);
  v62 = *(v59 + 48);
  v63 = v77;
  v51(v77, v61, v9);
  v64 = &v61[v62];
  v82 = v56;
  v65 = v72;
  v72(v64, v9);
  (*(v60 + 32))(v61, v58, v59);
  v66 = v73;
  v51(&v63[*(v73 + 36)], &v61[*(v59 + 48)], v9);
  v65(v61, v9);
  v67 = v86;
  v68 = v84;
  (*(v85 + 88))(v63, v84);
  (*(v79 + 8))(v63, v66);
  return (v82)(v67, v68);
}

uint64_t ArraySlice.customMirror.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40[0] = a1;
  v40[1] = a2;
  v40[2] = a3;
  v40[3] = a4;
  v11 = type metadata accessor for ArraySlice(0, a5, a3, a4);
  v37[0] = 0;
  v37[1] = 0;
  swift_unknownObjectRetain(a1);
  v12 = static Mirror._superclassIterator<A>(_:_:)(v40, v37, v11);
  v34 = v13;
  v36 = v12;
  v14 = swift_allocObject(&unk_1EEEADD18, 0x28, 7uLL);
  v14[2] = v11;
  v14[3] = v11;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v11, v15);
  v14[4] = WitnessTable;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
  v19 = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v11, v18);
  v20 = type metadata accessor for LazyMapSequence(255, v11, v17, v19);
  v39 = WitnessTable;
  v21 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v20, &v39);
  v23 = type metadata accessor for _CollectionBox(0, v20, v21, v22);
  v24 = swift_allocObject(v23, 0x60, 7uLL);
  v24[6] = a1;
  v24[7] = a2;
  v24[8] = a3;
  v24[9] = a4;
  v24[10] = closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)partial apply;
  v24[11] = v14;
  v25 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v26 = swift_allocObject(v25, 0x18, 7uLL);
  v26[2] = a3;
  v27 = swift_allocObject(v25, 0x18, 7uLL);
  v27[2] = a4 >> 1;
  v24[2] = v26;
  v24[3] = &protocol witness table for _IndexBox<A>;
  v24[4] = v27;
  v24[5] = &protocol witness table for _IndexBox<A>;
  v38[0] = a1;
  v38[1] = a2;
  v38[2] = a3;
  v38[3] = a4;
  swift_unknownObjectRetain(a1);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v37, v38, v11, v28, 6uLL, v29, v30, v31, v34);
  v33 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  *a6 = v11;
  *(a6 + 8) = v24;
  *(a6 + 16) = 5;
  *(a6 + 24) = v36;
  *(a6 + 32) = v35;
  *(a6 + 40) = v33;
  return result;
}

uint64_t ArraySlice.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, Swift::Int a5)
{
  v8 = a2;
  v112 = a1;
  v9 = *(a5 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v102 - v14;
  0xE000000000000000;
  v16 = 91;
  v17 = 0xE100000000000000;
  v117 = 91;
  v118 = 0xE100000000000000;
  v111 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
LABEL_63:
    v38 = HIBYTE(v17) & 0xF;
    v28 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v17 & 0x2000000000000000) != 0)
    {
      v66 = HIBYTE(v17) & 0xF;
    }

    else
    {
      v66 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v66 && (v16 & ~v17 & 0x2000000000000000) == 0)
    {
      v17;
      return 93;
    }

    if ((v17 & 0x2000000000000000) != 0 && v38 != 15)
    {
      if (v38 < 8)
      {
        v16 = ((-255 << (8 * (HIBYTE(v17) & 7u))) - 1) & v16 | (93 << (8 * (HIBYTE(v17) & 7u)));
      }

      goto LABEL_72;
    }

    0xE100000000000000;
    if ((v17 & 0x1000000000000000) != 0)
    {
      goto LABEL_125;
    }

    v37 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (!v37)
    {
      goto LABEL_75;
    }

LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v113 = v12;
  v110 = v9 + 16;
  v18 = (v9 + 32);
  v16 = 1;
  v108 = xmmword_18071DB30;
  v102 = xmmword_18071DB40;
  v17 = a3;
  v106 = a4;
  v105 = a3;
  v104 = v8;
  v107 = v9;
  v109 = v15;
  v103 = (v9 + 32);
  while (1)
  {
    specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(v17, v112, v8, a3, a4);
    (*(v9 + 16))(v15, v8 + *(v9 + 72) * v17, a5);
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_123;
    }

    v114 = v17 + 1;
    v19 = v9;
    v24 = v15;
    v25 = *v18;
    v20 = v113;
    (*v18)(v113, v24, a5);
    if (v16)
    {
      goto LABEL_6;
    }

    v26 = v117;
    v16 = v118;
    v27 = HIBYTE(v118) & 0xF;
    v28 = v117 & 0xFFFFFFFFFFFFLL;
    if ((v118 & 0x2000000000000000) != 0)
    {
      v29 = HIBYTE(v118) & 0xF;
    }

    else
    {
      v29 = v117 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29 && (v117 & ~v118 & 0x2000000000000000) == 0)
    {
      v118;
      v117 = 8236;
      v118 = 0xE200000000000000;
      a4 = v106;
      a3 = v105;
LABEL_50:
      v8 = v104;
      v19 = v107;
      goto LABEL_5;
    }

    if ((v118 & 0x2000000000000000) != 0 && v27 <= 0xD)
    {
      v30 = 8 * (HIBYTE(v118) & 7);
      v31 = (-255 << v30) - 1;
      v32 = 44 << v30;
      v33 = v27 + 1;
      if (v27 >= 8)
      {
        v35 = v31 & v118 | v32;
        v34 = 8 * (v33 & 7);
        a3 = v105;
LABEL_44:
        v57 = ((-255 << v34) - 1) & v35 | (32 << v34);
      }

      else
      {
        v26 = v31 & v117 | v32;
        a3 = v105;
        if (v27 == 7)
        {
          v34 = 0;
          v35 = v118;
          goto LABEL_44;
        }

        v26 = ((-255 << (8 * (v33 & 7u))) - 1) & v26 | (32 << (8 * (v33 & 7u)));
        v57 = v118;
      }

      v118;
      0xE200000000000000;
      v58 = 0xE000000000000000;
      if (v26 & 0x8080808080808080 | v57 & 0x80808080808080)
      {
        v58 = 0xA000000000000000;
      }

      v117 = v26;
      v118 = (v58 & 0xFF00000000000000 | (v27 << 56) | v57 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
      a4 = v106;
      goto LABEL_50;
    }

    0xE200000000000000;
    if ((v16 & 0x1000000000000000) != 0)
    {
      break;
    }

    v37 = __OFADD__(v29, 2);
    v38 = v29 + 2;
    if (v37)
    {
      goto LABEL_124;
    }

LABEL_21:
    if ((v26 & ~v16 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v16 & 0xFFFFFFFFFFFFFFFLL))
    {
      v39 = _StringGuts.nativeUnusedCapacity.getter(v26, v16);
      v40 = v107;
      if (v41)
      {
        goto LABEL_134;
      }

      if (v38 <= 15)
      {
        if ((v16 & 0x2000000000000000) != 0)
        {
          goto LABEL_33;
        }

        if (v39 < 2)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v40 = v107;
      if (v38 <= 15)
      {
        if ((v16 & 0x2000000000000000) != 0)
        {
LABEL_33:
          v43 = v16;
        }

        else
        {
LABEL_27:
          if ((v16 & 0x1000000000000000) != 0)
          {
            v26 = _StringGuts._foreignConvertedToSmall()(v26, v16);
            v43 = v59;
          }

          else
          {
            if ((v26 & 0x1000000000000000) != 0)
            {
              v42 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v42 = _StringObject.sharedUTF8.getter(v26, v16);
              v28 = v63;
            }

            closure #1 in _StringGuts._convertedToSmall()(v42, v28, &v115, v36);
            v43 = *(&v115 + 1);
            v26 = v115;
          }
        }

        v44 = 0xE200000000000000;
        0xE200000000000000;
        v45._rawBits = 131073;
        v46._rawBits = 1;
        v47._rawBits = _StringGuts.validateScalarRange(_:)(v46, v45, 0x202CuLL, 0xE200000000000000)._rawBits;
        if (v47._rawBits < 0x10000)
        {
          v47._rawBits |= 3;
        }

        if (v47._rawBits >> 16 || (v50 = 8236, (v48._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
        {
          v50 = specialized static String._copying(_:)(v47._rawBits, v48, 0x202CuLL, 0xE200000000000000);
          v44 = v51;
          0xE200000000000000;
        }

        if ((v44 & 0x2000000000000000) != 0)
        {
          v44;
        }

        else if ((v44 & 0x1000000000000000) != 0)
        {
          v50 = _StringGuts._foreignConvertedToSmall()(v50, v44);
          v65 = v64;
          v44;
          v44 = v65;
        }

        else
        {
          if ((v50 & 0x1000000000000000) != 0)
          {
            v61 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v62 = v50 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v61 = _StringObject.sharedUTF8.getter(v50, v44);
          }

          closure #1 in _StringGuts._convertedToSmall()(v61, v62, &v115, v49);
          v44;
          v44 = *(&v115 + 1);
          v50 = v115;
        }

        v19 = v40;
        v52 = specialized _SmallString.init(_:appending:)(v26, v43, v50, v44);
        if (v54)
        {
          goto LABEL_134;
        }

        v55 = v52;
        v56 = v53;
        v16;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v117 = v55;
        v118 = v56;
        goto LABEL_4;
      }
    }

    v19 = v40;
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v38, 2);
    v115 = v102;
    0xE200000000000000;
    _StringGuts.appendInPlace(_:isASCII:)(&v115, 2uLL, 1);
    0xE200000000000000;
LABEL_4:
    a4 = v106;
    a3 = v105;
    v8 = v104;
LABEL_5:
    v20 = v113;
    v18 = v103;
LABEL_6:
    v21 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
    inited = swift_initStackObject(v21, v116);
    *(inited + 1) = v108;
    inited[7] = a5;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
    v25(boxed_opaque_existential_0Tm, v20, a5);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v117);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
    v16 = 0;
    ++v17;
    v15 = v109;
    v9 = v19;
    if (v114 == v111)
    {
      v16 = v117;
      v17 = v118;
      goto LABEL_63;
    }
  }

  v60 = String.UTF8View._foreignCount()();
  v38 = v60 + 2;
  if (!__OFADD__(v60, 2))
  {
    goto LABEL_21;
  }

LABEL_124:
  __break(1u);
LABEL_125:
  v95 = String.UTF8View._foreignCount()();
  v68 = v95 + 1;
  if (__OFADD__(v95, 1))
  {
    goto LABEL_127;
  }

LABEL_75:
  v69 = v16 & ~v17;
  if ((v69 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v17 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v68 > 15)
    {
      goto LABEL_86;
    }

    if ((v17 & 0x2000000000000000) != 0)
    {
      goto LABEL_102;
    }

LABEL_81:
    if ((v17 & 0x1000000000000000) == 0)
    {
      if ((v16 & 0x1000000000000000) == 0)
      {
        goto LABEL_133;
      }

      v72 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_84:
      closure #1 in _StringGuts._convertedToSmall()(v72, v28, &v115, v67);
      v68 = *(&v115 + 1);
      v16 = v115;
      goto LABEL_103;
    }

LABEL_123:
    v16 = _StringGuts._foreignConvertedToSmall()(v16, v17);
    v68 = v94;
    goto LABEL_103;
  }

  v70 = _StringGuts.nativeUnusedCapacity.getter(v16, v17);
  if (v71)
  {
    goto LABEL_134;
  }

  if (v68 > 15)
  {
    goto LABEL_86;
  }

  if ((v17 & 0x2000000000000000) == 0)
  {
    if (v70 < 1)
    {
      goto LABEL_81;
    }

LABEL_86:
    v73 = v69 & 0x2000000000000000;
    v74 = _StringGuts.nativeUnusedCapacity.getter(v16, v17);
    if ((v75 & 1) == 0 && v74 > 0)
    {
      if (v73 && swift_isUniquelyReferenced_nonNull_native(v17 & 0xFFFFFFFFFFFFFFFLL))
      {
LABEL_100:
        v115 = xmmword_18071DB50;
        closure #1 in _StringGuts.append(_:)(&v115, 1uLL, &v117, 1);
        swift_bridgeObjectRelease_n(0xE100000000000000, 2);
        return v117;
      }

LABEL_99:
      _StringGuts.grow(_:)(v68);
      goto LABEL_100;
    }

    if (v73)
    {
      swift_isUniquelyReferenced_nonNull_native(v17 & 0xFFFFFFFFFFFFFFFLL);
    }

    v76 = _StringGuts.nativeCapacity.getter(v16, v17);
    if (v77)
    {
      v78 = 0;
    }

    else
    {
      v78 = v76;
    }

    if (v78 + 0x4000000000000000 >= 0)
    {
      v79 = 2 * v78;
      if (v79 > v68)
      {
        v68 = v79;
      }

      goto LABEL_99;
    }

    __break(1u);
LABEL_133:
    v72 = _StringObject.sharedUTF8.getter(v16, v17);
    v28 = v99;
    goto LABEL_84;
  }

LABEL_102:
  v68 = v17;
LABEL_103:
  v28 = 0xE100000000000000;
  0xE100000000000000;
  v38 = 93;
  v80._rawBits = 1;
  v81._rawBits = 65537;
  v82._rawBits = _StringGuts.validateScalarRange(_:)(v80, v81, 0x5DuLL, 0xE100000000000000)._rawBits;
  if (v82._rawBits < 0x10000)
  {
    v82._rawBits |= 3;
  }

  if (v82._rawBits >> 16 || (v83._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
  {
    v38 = specialized static String._copying(_:)(v82._rawBits, v83, 0x5DuLL, 0xE100000000000000);
    v28 = v84;
    0xE100000000000000;
  }

  if ((v28 & 0x2000000000000000) != 0)
  {
    v28;
    goto LABEL_110;
  }

LABEL_128:
  v96 = v16;
  if ((v28 & 0x1000000000000000) != 0)
  {
    v38 = _StringGuts._foreignConvertedToSmall()(v38, v28);
    v101 = v100;
    v28;
    v28 = v101;
    v16 = v96;
  }

  else
  {
    if ((v38 & 0x1000000000000000) != 0)
    {
      v97 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v98 = v38 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v97 = _StringObject.sharedUTF8.getter(v38, v28);
    }

    closure #1 in _StringGuts._convertedToSmall()(v97, v98, &v115, v67);
    v28;
    v28 = *(&v115 + 1);
    v38 = v115;
  }

LABEL_110:
  v85 = HIBYTE(v68) & 0xF;
  v86 = HIBYTE(v28) & 0xF;
  if (v86 + v85 > 0xF)
  {
LABEL_134:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  0xE100000000000000;
  if (v86)
  {
    v87 = 0;
    v88 = 0;
    v89 = 8 * v85;
    do
    {
      v90 = v28 >> (v87 & 0x38);
      if (v88 < 8)
      {
        v90 = v38 >> v87;
      }

      v91 = (v90 << (v89 & 0x38)) | ((-255 << (v89 & 0x38)) - 1) & v68;
      v92 = (v90 << v89) | ((-255 << v89) - 1) & v16;
      if (v85 <= 7)
      {
        v16 = v92;
      }

      else
      {
        v68 = v91;
      }

      ++v85;
      v89 += 8;
      v87 += 8;
      ++v88;
    }

    while (8 * v86 != v87);
  }

LABEL_72:
  v17;
  0xE100000000000000;
  return v16;
}

uint64_t ArraySlice.debugDescription.getter(uint64_t a1, uint64_t a2, Swift::Int a3, unint64_t a4, uint64_t a5)
{
  v6 = a5;
  v178 = a4;
  v185 = a1;
  v186 = a2;
  v187 = *(a5 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v180 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v184 = &v175 - v11;
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ArraySlice", 0xAuLL, 1);
  v13 = v12;
  v14 = *(&v12 + 1);
  v192 = 0;
  v193 = 0xE000000000000000;
  v15 = _StringGuts.init(_initialCapacity:)(4);
  v17 = v15;
  v18 = v16;
  *&v191 = v15;
  *(&v191 + 1) = v16;
  v19 = HIBYTE(v16) & 0xF;
  v20 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v21 = v15 & 0xFFFFFFFFFFFFLL;
  }

  v179 = a3;
  if (!v21 && (v15 & ~v16 & 0x2000000000000000) == 0)
  {
    v16;
    v17 = 0;
    v31 = 0xE000000000000000;
    *&v191 = 0;
LABEL_21:
    *(&v191 + 1) = v31;
    goto LABEL_36;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {
    v16;
    0xE000000000000000;
    v30 = 0xA000000000000000;
    if (!(v18 & 0x80808080808080 | *&v17 & 0x8080808080808080))
    {
      v30 = 0xE000000000000000;
    }

    v31 = v30 & 0xFF00000000000000 | (v19 << 56) | v18 & 0xFFFFFFFFFFFFFFLL;
    *&v191 = v17;
    goto LABEL_21;
  }

  0xE000000000000000;
  v23 = v20;
  if ((v18 & 0x1000000000000000) != 0)
  {
    v23 = String.UTF8View._foreignCount()();
    if ((*&v17 & 0x2000000000000000) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((*&v17 & 0x2000000000000000) == 0)
  {
    goto LABEL_34;
  }

  if (swift_isUniquelyReferenced_nonNull_native(v18 & 0xFFFFFFFFFFFFFFFLL))
  {
    v24 = _StringGuts.nativeUnusedCapacity.getter(*&v17, v18);
    if (v25)
    {
      goto LABEL_233;
    }

    if (v23 <= 15 && (v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

LABEL_35:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v23, 0);
    v188 = 0;
    v189 = 0;
    closure #1 in _StringGuts.append(_:)(&v188, 0, &v191, 1);
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    v31 = *(&v191 + 1);
    v17 = v191;
    goto LABEL_36;
  }

LABEL_34:
  if (v23 > 15)
  {
    goto LABEL_35;
  }

LABEL_13:
  if ((v18 & 0x1000000000000000) != 0)
  {
    v27 = _StringGuts._foreignConvertedToSmall()(*&v17, v18);
    v28 = v32;
  }

  else
  {
    if ((*&v17 & 0x1000000000000000) != 0)
    {
      v26 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = _StringObject.sharedUTF8.getter(*&v17, v18);
      v20 = v164;
    }

    closure #1 in _StringGuts._convertedToSmall()(v26, v20, &v188, v22);
    v27 = v188;
    v28 = v189;
  }

  v33 = 0xE000000000000000;
  0xE000000000000000;
  v34._rawBits = 1;
  v35._rawBits = 1;
  v36._rawBits = _StringGuts.validateScalarRange(_:)(v34, v35, 0, 0xE000000000000000)._rawBits;
  if (v36._rawBits < 0x10000)
  {
    v36._rawBits |= 3;
  }

  if (v36._rawBits >> 16 || v37._rawBits >= 0x10000)
  {
    v39 = specialized static String._copying(_:)(v36._rawBits, v37, 0, 0xE000000000000000);
    v33 = v40;
    0xE000000000000000;
  }

  else
  {
    v39 = 0;
  }

  if ((v33 & 0x2000000000000000) != 0)
  {
    v33;
  }

  else if ((v33 & 0x1000000000000000) != 0)
  {
    v39 = _StringGuts._foreignConvertedToSmall()(*&v39, v33);
    v172 = v171;
    v33;
    v33 = v172;
  }

  else
  {
    if ((*&v39 & 0x1000000000000000) != 0)
    {
      v160 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v161 = *&v39 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v160 = _StringObject.sharedUTF8.getter(*&v39, v33);
    }

    closure #1 in _StringGuts._convertedToSmall()(v160, v161, &v188, v38);
    v33;
    v39 = v188;
    v33 = v189;
  }

  v41 = specialized _SmallString.init(_:appending:)(*&v27, v28, *&v39, v33);
  if (v43)
  {
    goto LABEL_233;
  }

  v17 = v41;
  v31 = v42;
  v18;
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
  *&v191 = v17;
  *(&v191 + 1) = v31;
  a3 = v179;
LABEL_36:
  v44 = HIBYTE(v31) & 0xF;
  v45 = *&v17 & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v46 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v46 = *&v17 & 0xFFFFFFFFFFFFLL;
  }

  v47 = v180;
  if (!v46 && (*&v17 & ~v31 & 0x2000000000000000) == 0)
  {
    *(&v12 + 1);
    v31;
    v191 = v12;
    goto LABEL_98;
  }

  LODWORD(v5) = (*(&v12 + 1) & 0x2000000000000000) == 0;
  v48 = HIBYTE(*(&v12 + 1)) & 0xFLL;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v49 = v12 & 0xFFFFFFFFFFFFLL;
    v47 = HIBYTE(*(&v12 + 1)) & 0xFLL;
    if ((*(&v12 + 1) & 0x2000000000000000) != 0)
    {
      goto LABEL_47;
    }

LABEL_46:
    v47 = v49;
    goto LABEL_47;
  }

  if ((*(&v12 + 1) & 0x2000000000000000) == 0)
  {
    v49 = v12 & 0xFFFFFFFFFFFFLL;
    LODWORD(v5) = 1;
    goto LABEL_46;
  }

  v66 = v44 + v48;
  if (v44 + v48 < 0x10)
  {
    if (v48)
    {
      v73 = 0;
      v74 = 0;
      v75 = 8 * v44;
      v76 = 8 * v48;
      v77 = v31;
      do
      {
        v78 = *(&v12 + 1) >> (v73 & 0x38);
        if (v74 < 8)
        {
          v78 = v12 >> v73;
        }

        v79 = (v78 << (v75 & 0x38)) | ((-255 << (v75 & 0x38)) - 1) & v77;
        v80 = (v78 << v75) | ((-255 << v75) - 1) & *&v17;
        if (v44 <= 7)
        {
          v17 = v80;
        }

        else
        {
          v77 = v79;
        }

        ++v44;
        v75 += 8;
        v73 += 8;
        ++v74;
      }

      while (v76 != v73);
    }

    else
    {
      v77 = v31;
    }

    v31;
    v81 = 0xA000000000000000;
    if (!(*&v17 & 0x8080808080808080 | v77 & 0x80808080808080))
    {
      v81 = 0xE000000000000000;
    }

    *&v191 = v17;
    *(&v191 + 1) = v81 & 0xFF00000000000000 | (v66 << 56) | v77 & 0xFFFFFFFFFFFFFFLL;
    a3 = v179;
    goto LABEL_98;
  }

  LODWORD(v5) = 0;
  v49 = v12 & 0xFFFFFFFFFFFFLL;
  v47 = HIBYTE(*(&v12 + 1)) & 0xFLL;
LABEL_47:
  v182 = *&v17 & 0xFFFFFFFFFFFFLL;
  v183 = v49;
  a3 = v47;
  v45 = HIBYTE(*(&v12 + 1)) & 0xFLL;
  if ((*(&v12 + 1) & 0x1000000000000000) != 0)
  {
    goto LABEL_206;
  }

  if ((v31 & 0x1000000000000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_210:
  v156 = String.UTF8View._foreignCount()();
  v51 = v156 + a3;
  if (__OFADD__(v156, a3))
  {
    goto LABEL_212;
  }

LABEL_50:
  if ((*&v17 & ~v31 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v31 & 0xFFFFFFFFFFFFFFFLL))
  {
    v52 = _StringGuts.nativeUnusedCapacity.getter(*&v17, v31);
    if (v53)
    {
      goto LABEL_233;
    }

    if (v51 > 15)
    {
      goto LABEL_61;
    }

    if ((v31 & 0x2000000000000000) == 0)
    {
      if (v52 < a3)
      {
        goto LABEL_56;
      }

LABEL_61:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v51, a3);
      if ((v14 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v13, v14, 0, v47);
        a3 = v179;
      }

      else
      {
        a3 = v179;
        if (v5)
        {
          if ((v13 & 0x1000000000000000) != 0)
          {
            v55 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v56 = v183;
            v57 = v183;
            v47 = v180;
          }

          else
          {
            v165 = _StringObject.sharedUTF8.getter(v13, v14);
            if (v166 < v183)
            {
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v55 = v165;
            v57 = v166;
            a3 = v179;
            v47 = v180;
            v56 = v183;
          }

          v58 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v56, v55, v57);
          closure #1 in _StringGuts.append(_:)(v58, v59, &v191, v13 < 0);
          goto LABEL_98;
        }

        v188 = v13;
        v189 = v14 & 0xFFFFFFFFFFFFFFLL;
        closure #1 in _StringGuts.append(_:)(&v188, v45, &v191, (v14 & 0x4000000000000000) != 0);
      }

      v47 = v180;
      goto LABEL_98;
    }

LABEL_67:
    v45 = v31;
LABEL_68:
    a3 = v179;
    goto LABEL_69;
  }

  if (v51 > 15)
  {
    goto LABEL_61;
  }

  if ((v31 & 0x2000000000000000) != 0)
  {
    goto LABEL_67;
  }

LABEL_56:
  if ((v31 & 0x1000000000000000) != 0)
  {
    v17 = _StringGuts._foreignConvertedToSmall()(*&v17, v31);
    v45 = v149;
    goto LABEL_68;
  }

  a3 = v179;
  if ((*&v17 & 0x1000000000000000) != 0)
  {
    v54 = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v54 = _StringObject.sharedUTF8.getter(*&v17, v31);
    v182 = v167;
  }

  closure #1 in _StringGuts._convertedToSmall()(v54, v182, &v188, v29);
  v17 = v188;
  v45 = v189;
LABEL_69:
  v14;
  v60._rawBits = 1;
  v61._rawBits = (v47 << 16) | 1;
  v62._rawBits = _StringGuts.validateScalarRange(_:)(v60, v61, v13, v14)._rawBits;
  if (v62._rawBits < 0x10000)
  {
    v62._rawBits |= 3;
  }

  if (v62._rawBits >> 16 || v63._rawBits >> 16 != v47)
  {
    v13 = specialized static String._copying(_:)(v62._rawBits, v63, v13, v14);
    v65 = v67;
    v14;
  }

  else
  {
    v65 = v14;
  }

  v47 = v180;
  if ((v65 & 0x2000000000000000) == 0)
  {
    goto LABEL_216;
  }

  v65;
LABEL_80:
  v68 = specialized _SmallString.init(_:appending:)(*&v17, v45, v13, v65);
  if (v70)
  {
    goto LABEL_233;
  }

  v71 = v68;
  v72 = v69;
  v31;
  *&v191 = v71;
  *(&v191 + 1) = v72;
LABEL_98:
  v82 = *(&v191 + 1);
  v83 = HIBYTE(*(&v191 + 1)) & 0xFLL;
  if ((*(&v191 + 1) & 0x2000000000000000) == 0)
  {
    v83 = v191 & 0xFFFFFFFFFFFFLL;
  }

  if (v83 || (v191 & ~*(&v191 + 1) & 0x2000000000000000) != 0)
  {
    if ((*(&v191 + 1) & 0x2000000000000000) != 0 && (v84 = specialized _SmallString.init(_:appending:)(v191, *(&v191 + 1), 0x5B28uLL, 0xE200000000000000), (v86 & 1) == 0))
    {
      v31 = v84;
      v17 = v85;
      v82;
      0xE200000000000000;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(23336, 0xE200000000000000, 0, 2, v87, v88, v89, v90, v91, v92, v93, v94);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      v17 = *(&v191 + 8);
      v31 = v191;
    }
  }

  else
  {
    *(&v191 + 1);
    v17 = 0xE200000000000000;
    v31 = 23336;
  }

  0xE000000000000000;
  v192 = v31;
  v193 = v17;
  v46 = v178;
  v183 = v178 >> 1;
  if (v178 >> 1 != a3)
  {
    v176 = v14;
    v182 = v187 + 16;
    v13 = v187 + 32;
    v17 = 1;
    v181 = xmmword_18071DB30;
    v177 = xmmword_18071DB40;
    v31 = a3;
    while (1)
    {
      v98 = v186;
      specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(v31, v185, v186, a3, v46);
      v99 = v98 + *(v187 + 72) * v31;
      v45 = v184;
      (*(v187 + 16))(v184, v99, v6);
      v14 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        v151._rawBits = (v47 << 16) | 1;
        v152._rawBits = 1;
        v153._rawBits = _StringGuts.validateScalarRange(_:)(v152, v151, v13, v14)._rawBits;
        *&v177 = v154;
        *&v181 = v13;
        if (v153._rawBits >= 0x10000)
        {
          rawBits = v153._rawBits;
        }

        else
        {
          rawBits = v153._rawBits | 3;
        }

        v14;
        v13 = v181;
        a3 = String.UTF8View.distance(from:to:)(rawBits, v177);
        v14;
        if ((v31 & 0x1000000000000000) != 0)
        {
          goto LABEL_210;
        }

LABEL_49:
        v50 = __OFADD__(v46, a3);
        v51 = v46 + a3;
        if (!v50)
        {
          goto LABEL_50;
        }

LABEL_212:
        __break(1u);
LABEL_213:
        v157 = String.UTF8View._foreignCount()();
        v65 = v157 + 2;
        if (!__OFADD__(v157, 2))
        {
          goto LABEL_177;
        }

LABEL_215:
        __break(1u);
LABEL_216:
        if ((v65 & 0x1000000000000000) != 0)
        {
          v13 = _StringGuts._foreignConvertedToSmall()(v13, v65);
          v170 = v169;
          v65;
          v65 = v170;
          a3 = v179;
        }

        else
        {
          if ((v13 & 0x1000000000000000) != 0)
          {
            v158 = ((v65 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v159 = v13 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v158 = _StringObject.sharedUTF8.getter(v13, v65);
          }

          closure #1 in _StringGuts._convertedToSmall()(v158, v159, &v188, v64);
          v65;
          v13 = v188;
          v65 = v189;
        }

        goto LABEL_80;
      }

      v5 = *v13;
      (*v13)(v47, v45, v6);
      if ((v17.i8[0] & 1) == 0)
      {
        break;
      }

LABEL_112:
      v95 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
      inited = swift_initStackObject(v95, v190);
      *(inited + 1) = v181;
      inited[7] = v6;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
      v5(boxed_opaque_existential_0Tm, v47, v6);
      specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v192);
      0xE000000000000000;
      0xE100000000000000;
      swift_setDeallocating(inited);
      __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
      v17 = 0;
      ++v31;
      if (v14 == v183)
      {
        v31 = v192;
        v17 = v193;
        v14 = v176;
        goto LABEL_165;
      }
    }

    v47 = v192;
    v17 = v193;
    v45 = HIBYTE(v193) & 0xF;
    v46 = v192 & 0xFFFFFFFFFFFFLL;
    if ((v193 & 0x2000000000000000) != 0)
    {
      v100 = HIBYTE(v193) & 0xF;
    }

    else
    {
      v100 = v192 & 0xFFFFFFFFFFFFLL;
    }

    if (!v100 && (v192 & ~v193 & 0x2000000000000000) == 0)
    {
      v193;
      v192 = 8236;
      v193 = 0xE200000000000000;
      goto LABEL_110;
    }

    if ((v193 & 0x2000000000000000) != 0 && v45 <= 0xD)
    {
      v101 = 8 * (HIBYTE(v193) & 7);
      v102 = (-255 << v101) - 1;
      v103 = 44 << v101;
      v104 = v45 + 1;
      if (v45 >= 8)
      {
        v106 = v102 & v193 | v103;
        v105 = 8 * (v104 & 7);
        a3 = v179;
      }

      else
      {
        v47 = v102 & v192 | v103;
        a3 = v179;
        if (v45 != 7)
        {
          v47 = ((-255 << (8 * (v104 & 7u))) - 1) & v47 | (32 << (8 * (v104 & 7u)));
          v125 = v193;
          goto LABEL_150;
        }

        v105 = 0;
        v106 = v193;
      }

      v125 = ((-255 << v105) - 1) & v106 | (32 << v105);
LABEL_150:
      v193;
      0xE200000000000000;
      v126 = 0xE000000000000000;
      if (v47 & 0x8080808080808080 | v125 & 0x80808080808080)
      {
        v126 = 0xA000000000000000;
      }

      v192 = v47;
      v193 = (v126 & 0xFF00000000000000 | (v45 << 56) | v125 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
      v46 = v178;
      goto LABEL_111;
    }

    0xE200000000000000;
    if ((*&v17 & 0x1000000000000000) != 0)
    {
      v128 = String.UTF8View._foreignCount()();
      v108 = v128 + 2;
      if (__OFADD__(v128, 2))
      {
        goto LABEL_205;
      }
    }

    else
    {
      v50 = __OFADD__(v100, 2);
      v108 = v100 + 2;
      if (v50)
      {
        goto LABEL_205;
      }
    }

    if ((v47 & ~*&v17 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(*&v17 & 0xFFFFFFFFFFFFFFFLL))
    {
      v109 = _StringGuts.nativeUnusedCapacity.getter(v47, *&v17);
      if (v110)
      {
        goto LABEL_233;
      }

      if (v108 <= 15)
      {
        if ((*&v17 & 0x2000000000000000) == 0)
        {
          if (v109 < 2)
          {
            goto LABEL_133;
          }

          goto LABEL_109;
        }

LABEL_139:
        v112 = v17;
LABEL_140:
        0xE200000000000000;
        v113._rawBits = 1;
        v114._rawBits = 131073;
        v115._rawBits = _StringGuts.validateScalarRange(_:)(v113, v114, 0x202CuLL, 0xE200000000000000)._rawBits;
        if (v115._rawBits < 0x10000)
        {
          v115._rawBits |= 3;
        }

        v45 = Substring.description.getter(v115._rawBits, v116, 0x202CuLL, 0xE200000000000000);
        v118 = v117;
        0xE200000000000000;
        if ((v118 & 0x2000000000000000) != 0)
        {
          v118;
        }

        else if ((v118 & 0x1000000000000000) != 0)
        {
          v45 = _StringGuts._foreignConvertedToSmall()(v45, v118);
          v175 = v132;
          v118;
          v118 = v175;
        }

        else
        {
          if ((v45 & 0x1000000000000000) != 0)
          {
            v129 = ((v118 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v130 = v45 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v129 = _StringObject.sharedUTF8.getter(v45, v118);
          }

          closure #1 in _StringGuts._convertedToSmall()(v129, v130, &v191, v119);
          v118;
          v118 = *(&v191 + 1);
          v45 = v191;
        }

        v120 = specialized _SmallString.init(_:appending:)(v47, v112, v45, v118);
        if (v122)
        {
          goto LABEL_233;
        }

        v123 = v120;
        v124 = v121;
        *&v17;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v192 = v123;
        v193 = v124;
        goto LABEL_110;
      }
    }

    else if (v108 <= 15)
    {
      if ((*&v17 & 0x2000000000000000) == 0)
      {
LABEL_133:
        if ((*&v17 & 0x1000000000000000) != 0)
        {
          v47 = _StringGuts._foreignConvertedToSmall()(v47, *&v17);
          v112 = v127;
        }

        else
        {
          if ((v47 & 0x1000000000000000) != 0)
          {
            v111 = ((*&v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v111 = _StringObject.sharedUTF8.getter(v47, *&v17);
            v46 = v131;
          }

          closure #1 in _StringGuts._convertedToSmall()(v111, v46, &v191, v107);
          v112 = *(&v191 + 1);
          v47 = v191;
        }

        goto LABEL_140;
      }

      goto LABEL_139;
    }

LABEL_109:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v108, 2);
    v191 = v177;
    closure #1 in _StringGuts.append(_:)(&v191, 2uLL, &v192, 1);
    swift_bridgeObjectRelease_n(0xE200000000000000, 2);
LABEL_110:
    v46 = v178;
    a3 = v179;
LABEL_111:
    v47 = v180;
    goto LABEL_112;
  }

LABEL_165:
  a3 = HIBYTE(*&v17) & 0xFLL;
  v6 = v31 & 0xFFFFFFFFFFFFLL;
  if ((*&v17 & 0x2000000000000000) != 0)
  {
    v133 = HIBYTE(*&v17) & 0xFLL;
  }

  else
  {
    v133 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v133 && (v31 & ~*&v17 & 0x2000000000000000) == 0)
  {
    *&v17;
    v14;
    return 10589;
  }

  if ((*&v17 & 0x2000000000000000) == 0 || a3 > 0xD)
  {
    0xE200000000000000;
    if ((*&v17 & 0x1000000000000000) != 0)
    {
      goto LABEL_213;
    }

    v50 = __OFADD__(v133, 2);
    v65 = v133 + 2;
    if (v50)
    {
      goto LABEL_215;
    }

LABEL_177:
    if ((v31 & ~*&v17 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(*&v17 & 0xFFFFFFFFFFFFFFFLL))
    {
      v134 = _StringGuts.nativeUnusedCapacity.getter(v31, *&v17);
      if (v135)
      {
        goto LABEL_233;
      }

      if (v65 > 15)
      {
        goto LABEL_188;
      }

      if ((*&v17 & 0x2000000000000000) == 0)
      {
        if (v134 < 2)
        {
          goto LABEL_183;
        }

LABEL_188:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v65, 2);
        v191 = xmmword_18071DB80;
        closure #1 in _StringGuts.append(_:)(&v191, 2uLL, &v192, 1);
        v14;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        return v192;
      }
    }

    else
    {
      if (v65 > 15)
      {
        goto LABEL_188;
      }

      if ((*&v17 & 0x2000000000000000) == 0)
      {
LABEL_183:
        if ((*&v17 & 0x1000000000000000) != 0)
        {
          v31 = _StringGuts._foreignConvertedToSmall()(v31, *&v17);
          v137 = v150;
        }

        else
        {
          if ((v31 & 0x1000000000000000) != 0)
          {
            v136 = ((*&v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v136 = _StringObject.sharedUTF8.getter(v31, *&v17);
            v6 = v168;
          }

          closure #1 in _StringGuts._convertedToSmall()(v136, v6, &v191, v64);
          v137 = *(&v191 + 1);
          v31 = v191;
        }

LABEL_192:
        0xE200000000000000;
        v138._rawBits = 1;
        v139._rawBits = 131073;
        v140._rawBits = _StringGuts.validateScalarRange(_:)(v138, v139, 0x295DuLL, 0xE200000000000000)._rawBits;
        if (v140._rawBits < 0x10000)
        {
          v140._rawBits |= 3;
        }

        v142 = Substring.description.getter(v140._rawBits, v141, 0x295DuLL, 0xE200000000000000);
        v144 = v143;
        0xE200000000000000;
        if ((v144 & 0x2000000000000000) != 0)
        {
          v144;
        }

        else if ((v144 & 0x1000000000000000) != 0)
        {
          v142 = _StringGuts._foreignConvertedToSmall()(v142, v144);
          v174 = v173;
          v144;
          v144 = v174;
        }

        else
        {
          if ((v142 & 0x1000000000000000) != 0)
          {
            v162 = ((v144 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v163 = v142 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v162 = _StringObject.sharedUTF8.getter(v142, v144);
          }

          closure #1 in _StringGuts._convertedToSmall()(v162, v163, &v191, v145);
          v144;
          v144 = *(&v191 + 1);
          v142 = v191;
        }

        v146 = specialized _SmallString.init(_:appending:)(v31, v137, v142, v144);
        if ((v147 & 1) == 0)
        {
          v31 = v146;
          *&v17;
          v14;
          swift_bridgeObjectRelease_n(0xE200000000000000, 2);
          return v31;
        }

LABEL_233:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v137 = v17;
    goto LABEL_192;
  }

  if (a3 < 8)
  {
    v31 = ((-255 << (8 * (v17.i8[7] & 7u))) - 1) & v31 | (93 << (8 * (v17.i8[7] & 7u)));
    if (a3 != 7)
    {
      v31 = ((-255 << (8 * ((a3 + 1) & 7))) - 1) & v31 | (41 << (8 * ((a3 + 1) & 7)));
    }
  }

  *&v17;
  v14;
  0xE200000000000000;
  return v31;
}

uint64_t ArraySlice.withUnsafeBufferPointer<A>(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  return ArraySlice.withUnsafeBufferPointer<A>(_:)(a1, a2, a3, a4, a5, a6, a7);
}

{
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_5:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((((a6 >> 1) - a5) & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

  return a1(a4 + *(*(a7 - 8) + 72) * a5);
}

uint64_t _ss12_SliceBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_5:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((((a6 >> 1) - a5) & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

  return a1(a4 + *(*(a7 - 8) + 72) * a5);
}

uint64_t _ss12_SliceBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(v15 >> 1, v14))
  {
    __break(1u);
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((((v15 >> 1) - v14) & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  result = v17(v13 + *(*(v16 - 8) + 72) * v14);
  if (v11)
  {
    return (*(v12 + 32))(a11, v19, a9);
  }

  return result;
}

void *ArraySlice.withUnsafeMutableBufferPointer<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
LABEL_5:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = *(a3 + 16);
  ArraySlice._makeMutableAndUnique()();
  if (v7 < 0)
  {
    goto LABEL_5;
  }

  v10 = v4[1] + *(*(v9 - 8) + 72) * v4[2];
  v12[0] = v10;
  v12[1] = v7;
  a1(v12);
  return _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tpq5Tm(v12, v10, v7);
}