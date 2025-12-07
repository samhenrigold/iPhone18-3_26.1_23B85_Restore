__objc2_class **Set.intersection<A>(_:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, __objc2_class **a5, __objc2_class **a6)
{
  v10 = a2;
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, a1, v15);
  v17 = type metadata accessor for Set(0, a3, a5, v16);
  if (swift_dynamicCast(&v27, v13, a4, v17, 6uLL, v18, v19, v20, v26))
  {
    v21 = v27;
    v22 = Set._Variant.intersection(_:)(v27, v10, a3, a5);
    v21;
    return v22;
  }

  else
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      if (v10 < 0)
      {
        v24 = v10;
      }

      else
      {
        v24 = (v10 & 0xFFFFFFFFFFFFFF8);
      }

      v10;
      v25 = _NativeSet.init(_:capacity:)(v24, [v24 count], a3, a5);
      v10;
      v10 = v25;
    }

    return _NativeSet.genericIntersection<A>(_:)(a1, v10, a3, a4, a5, a6);
  }
}

__objc2_class **Set.formIntersection<A>(_:)(uint64_t a1, uint64_t a2, Class *a3, __objc2_class **a4)
{
  result = Set.intersection<A>(_:)(a1, *v4, *(a2 + 16), a3, *(a2 + 24), a4);
  *v4 = result;
  return result;
}

uint64_t Set.symmetricDifference<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v8 = Set.init<A>(_:)(a1, a3, a4, a5, a6);
  v10 = type metadata accessor for Set(0, a3, a5, v9);
  Set.formSymmetricDifference(_:)(v8, v10);
  return a2;
}

uint64_t Set.formSymmetricDifference<A>(_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v5 = Set.init<A>(_:)(a1, *(a2 + 16), a3, *(a2 + 24), a4);

  return Set.formSymmetricDifference(_:)(v5, a2);
}

uint64_t Set.formSymmetricDifference(_:)(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = *(a2 + 16);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v97 = (&v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v100 = (&v75 - v11);
  v14 = type metadata accessor for Optional(0, v6, v12, v13);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v84 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v77 = &v75 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v78 = (&v75 - v24);
  MEMORY[0x1EEE9AC00](v23, v25);
  v93 = (&v75 - v26);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v27 = v5;
    }

    else
    {
      v27 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v28 = type metadata accessor for __CocoaSet.Iterator();
    v29 = swift_allocObject(v28, 0xE8, 7uLL);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    *(v29 + 208) = v27;
    *(v29 + 216) = 0;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    *(v29 + 48) = 0u;
    *(v29 + 64) = 0u;
    *(v29 + 80) = 0u;
    *(v29 + 96) = 0u;
    *(v29 + 112) = 0u;
    *(v29 + 128) = 0u;
    *(v29 + 144) = 0u;
    *(v29 + 160) = 0u;
    *(v29 + 176) = 0u;
    *(v29 + 192) = 0u;
    *(v29 + 224) = 0;
    v5 = v29 | 0x8000000000000000;
  }

  else
  {
    v33 = -1 << *(v5 + 32);
    v30 = v5 + 56;
    v34 = ~v33;
    v35 = -v33;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v32 = v36 & *(v5 + 56);
    v31 = v34;
  }

  v90 = 0;
  v86 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  v92 = (v7 + 56);
  v76 = (v15 + 16);
  v75 = (v7 + 48);
  v85 = (v15 + 8);
  v88 = v5;
  v89 = (v7 + 32);
  v82 = v31;
  v83 = v8;
  v37 = (v31 + 64) >> 6;
  v98 = (v7 + 16);
  v99 = (v7 + 8);
  v94 = v14;
  v91 = v30;
  v87 = v37;
  v96 = v6;
  while ((v5 & 0x8000000000000000) == 0)
  {
    v41 = v93;
    if (v32)
    {
      v42 = v90;
      goto LABEL_27;
    }

    v48 = v90;
    do
    {
      v42 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_60;
      }

      if (v42 >= v37)
      {
        goto LABEL_56;
      }

      v32 = *(v30 + 8 * v42);
      ++v48;
    }

    while (!v32);
    v90 = v42;
LABEL_27:
    v49 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    (*(v7 + 16))(v93, *(v5 + 48) + *(v7 + 72) * (v49 | (v42 << 6)), v6);
    (*(v7 + 56))(v41, 0, 1, v6);
LABEL_34:
    (*v89)(v100, v41, v6);
    v57 = *v3;
    if ((*v3 & 0xC000000000000001) != 0)
    {
      if (v57 < 0)
      {
        v58 = *v3;
      }

      else
      {
        v58 = (v57 & 0xFFFFFFFFFFFFFF8);
      }

      if (_swift_isClassOrObjCExistentialType(v6, v6))
      {
        v5 = v88;
        if (v8 == 8)
        {
          v59 = *v100;
          swift_unknownObjectRetain(*v100);
          goto LABEL_41;
        }

LABEL_60:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v73 = v97;
      (*v98)(v97, v100, v6);
      v59 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v73, v6);
      v5 = v88;
LABEL_41:
      v60 = [v58 member_];
      swift_unknownObjectRelease(v59);
      if (!v60)
      {
        v38 = *(v4 + 24);
        goto LABEL_12;
      }

      swift_unknownObjectRelease(v60);
      v38 = *(v4 + 24);
    }

    else
    {
      v38 = *(v4 + 24);
      if (!*(v57 + 16))
      {
        goto LABEL_51;
      }

      v63 = (*(v38 + 32))(*(v57 + 40), v6, *(v4 + 24));
      v64 = -1 << *(v57 + 32);
      v65 = v63 & ~v64;
      v95 = v57 + 56;
      if (((*(v57 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
      {
LABEL_50:
        v8 = v83;
        v6 = v96;
LABEL_51:
        v5 = v88;
LABEL_12:
        v39 = type metadata accessor for Set._Variant(0, v6, v38, v56);
        v40 = v97;
        Set._Variant.insert(_:)(v97, v100, v39);
        goto LABEL_13;
      }

      v80 = v4;
      v81 = v3;
      v66 = v7;
      v67 = ~v64;
      v68 = *(v66 + 72);
      v79 = v66;
      v69 = *(v66 + 16);
      while (1)
      {
        v71 = v96;
        v70 = v97;
        v69(v97, *(v57 + 48) + v68 * v65, v96);
        v72 = (*(*(v38 + 8) + 8))(v70, v100, v71);
        (*v99)(v70, v71);
        if (v72)
        {
          break;
        }

        v65 = (v65 + 1) & v67;
        if (((*(v95 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
        {
          v3 = v81;
          v4 = v80;
          v7 = v79;
          goto LABEL_50;
        }
      }

      v3 = v81;
      v4 = v80;
      v7 = v79;
      v8 = v83;
      v6 = v96;
      v5 = v88;
    }

    v61 = type metadata accessor for Set._Variant(0, v6, v38, v56);
    v62 = v84;
    v40 = v100;
    Set._Variant.remove(_:)(v100, v61, v84);
    (*v85)(v62, v94);
LABEL_13:
    (*v99)(v40, v6);
    v14 = v94;
    v30 = v91;
    v37 = v87;
  }

  v43 = v86;
  v44 = *(v86 + 216);
  if ((v44 & 0x8000000000000000) == 0)
  {
    if (v44 != *(v86 + 224))
    {
      v46 = *(v86 + 24);
      if (v46)
      {
        v47 = v92;
        if (!(v44 >> 60))
        {
          goto LABEL_30;
        }

        __break(1u);
LABEL_62:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_63:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v45 = [*(v86 + 208) countByEnumeratingWithState:v86 + 16 objects:v86 + 80 count:16];
    v43 = v86;
    *(v86 + 224) = v45;
    if (v45)
    {
      *(v43 + 216) = 0;
      v46 = *(v43 + 24);
      if (v46)
      {
        v44 = 0;
        v47 = v92;
LABEL_30:
        v50 = (v46 + 8 * v44);
        if ((v50 & 7) == 0)
        {
          v51 = *v50;
          *(v43 + 216) = v44 + 1;
          swift_unknownObjectRetain(v51);
          if (_swift_isClassOrObjCExistentialType(v6, v6))
          {
            v101 = v51;
            v41 = v93;
            swift_dynamicCast(v93, &v101, qword_1EEEAC710, v6, 7uLL, v52, v53, v54, v75);
            v55 = *v47;
          }

          else
          {
            v55 = *v47;
            v55(v78, 1, 1, v6);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v51, v6, v78);
            (*v76)(v77, v78, v14);
            if ((*v75)(v77, 1, v6) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            swift_unknownObjectRelease(v51);
            (*v85)(v78, v14);
            v41 = v93;
            (*v89)(v93, v77, v6);
          }

          v55(v41, 0, 1, v6);
          goto LABEL_34;
        }

        goto LABEL_62;
      }

      goto LABEL_63;
    }

    *(v43 + 216) = -1;
  }

  v41 = v93;
LABEL_56:
  (*v92)(v41, 1, 1, v6);
  return _sSh8IteratorV8_VariantOySS__GWOe_0(v5);
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance Set<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Set.intersection(_:)(*a1, *v3, *(a2 + 16), *(a2 + 24));
  *a3 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance Set<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>, uint64_t a5@<X2>)
{
  v10 = *v5;
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, a2, a5);
  result = a3(a1, v10, v11, a2, v12, WitnessTable);
  *a4 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance Set<A>(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, a2, a3);

  return Set.formUnion<A>(_:)(a1, a2, a2, WitnessTable);
}

__objc2_class **protocol witness for SetAlgebra.formIntersection(_:) in conformance Set<A>(uint64_t a1, Class *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, a2, a3);

  return Set.formIntersection<A>(_:)(a1, a2, a2, WitnessTable);
}

__objc2_class **protocol witness for SetAlgebra.subtracting(_:) in conformance Set<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, __objc2_class ***a3@<X8>)
{
  result = Set.subtracting(_:)(*a1, *v3, *(a2 + 16), *(a2 + 24));
  *a3 = result;
  return result;
}

__objc2_class **Set.subtracting(_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v8 = [a1 count];
    if ((v6 & 0xC000000000000001) != 0)
    {
LABEL_5:
      if (v6 < 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = (v6 & 0xFFFFFFFFFFFFFF8);
      }

      if (v8 > [v9 count] / 8)
      {
        v19 = v7;
        v6;
        v10 = _NativeSet.init(_:capacity:)(v9, [v9 count], a3, a4);
        v6;
        v6 = v10;
LABEL_13:
        v11 = type metadata accessor for Set(0, a3, a4, a4);
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, v11, v12);
        return _NativeSet.subtracting<A>(_:)(&v19, v6, a3, v11, a4, WitnessTable);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_5;
    }
  }

  if (v8 > *(v6 + 16) >> 3)
  {
    v19 = v7;
    goto LABEL_13;
  }

LABEL_14:
  v18 = v7;
  v19 = v6;
  v15 = type metadata accessor for Set(0, a3, a4, a4);
  v17 = swift_getWitnessTable(protocol conformance descriptor for Set<A>, v15, v16);
  Set._subtract<A>(_:)(&v18, v15, v15, v17);
  return v19;
}

__objc2_class **protocol witness for SetAlgebra.init<A>(_:) in conformance Set<A>@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __objc2_class ***a5@<X8>)
{
  result = Set.init<A>(_:)(a1, *(a4 + 16), a2, *(a4 + 24), a3);
  *a5 = result;
  return result;
}

id Set.subtract(_:)(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, a2, a3);
  return Set._subtract<A>(_:)(&v6, a2, a2, WitnessTable);
}

unint64_t Set.description.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  inited = a1;
  v126 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Optional(0, v6, v7, v8);
  v9 = *(v118 - 8);
  v11 = MEMORY[0x1EEE9AC00](v118 - 8, v10);
  v117 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v116 = &v111 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v125 = (&v111 - v17);
  0xE000000000000000;
  v134 = 91;
  v135 = 0xE100000000000000;
  if ((inited & 0xC000000000000001) != 0)
  {
    if (inited < 0)
    {
      v18 = inited;
    }

    else
    {
      v18 = inited & 0xFFFFFFFFFFFFFF8;
    }

    v19 = type metadata accessor for __CocoaSet.Iterator();
    v20 = swift_allocObject(v19, 0xE8, 7uLL);
    v121 = 0;
    v21 = 0;
    v22 = 0;
    *(v20 + 208) = v18;
    *(v20 + 216) = 0;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 80) = 0u;
    *(v20 + 96) = 0u;
    *(v20 + 112) = 0u;
    *(v20 + 128) = 0u;
    *(v20 + 144) = 0u;
    *(v20 + 160) = 0u;
    *(v20 + 176) = 0u;
    *(v20 + 192) = 0u;
    *(v20 + 224) = 0;
    v23 = v20 | 0x8000000000000000;
  }

  else
  {
    v24 = -1 << *(inited + 32);
    v21 = ~v24;
    v25 = *(inited + 56);
    v121 = inited + 56;
    v26 = -v24;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v22 = v27 & v25;
    v23 = inited;
  }

  v124 = v23 & 0x7FFFFFFFFFFFFFFFLL;
  v28 = (v126 + 56);
  v115 = (v9 + 16);
  v114 = (v126 + 48);
  v113 = (v9 + 8);
  v131 = (v126 + 32);
  v120 = v21;
  v29 = (v21 + 64) >> 6;
  v123 = v126 + 16;
  inited;
  v130 = 0;
  v30 = 1;
  v128 = xmmword_18071DB30;
  v119 = xmmword_18071DB40;
  v31 = v125;
  v127 = v23;
  v129 = v28;
  v122 = v5;
  while ((v23 & 0x8000000000000000) == 0)
  {
    if (v22)
    {
      v34 = v130;
      goto LABEL_27;
    }

    v39 = v130;
    do
    {
      v34 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_127:
        inited = _StringGuts._foreignConvertedToSmall()(inited, v2);
        v23 = v104;
        goto LABEL_114;
      }

      if (v34 >= v29)
      {
        (*v28)(v31, 1, 1, v2);
        _sSh8IteratorV8_VariantOySS__GWOe_0(v23);
        goto LABEL_88;
      }

      v22 = *(v121 + 8 * v34);
      ++v39;
    }

    while (!v22);
    v130 = v34;
LABEL_27:
    v40 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v41 = v126;
    (*(v126 + 16))(v31, *(v23 + 48) + *(v126 + 72) * (v40 | (v34 << 6)), v2);
    (*(v41 + 56))(v31, 0, 1, v2);
    v42 = v131;
LABEL_34:
    v49 = *v42;
    (*v42)(v5, v31, v2);
    if (v30)
    {
      goto LABEL_13;
    }

    v50 = v134;
    inited = v135;
    v51 = HIBYTE(v135) & 0xF;
    v52 = v134 & 0xFFFFFFFFFFFFLL;
    if ((v135 & 0x2000000000000000) != 0)
    {
      v53 = HIBYTE(v135) & 0xF;
    }

    else
    {
      v53 = v134 & 0xFFFFFFFFFFFFLL;
    }

    if (!v53 && (v134 & ~v135 & 0x2000000000000000) == 0)
    {
      v135;
      v134 = 8236;
      v135 = 0xE200000000000000;
      v5 = v122;
      v31 = v125;
      v23 = v127;
      goto LABEL_13;
    }

    if ((v135 & 0x2000000000000000) == 0 || v51 > 0xD)
    {
      0xE200000000000000;
      if ((inited & 0x1000000000000000) != 0)
      {
        v53 = String.UTF8View._foreignCount()();
      }

      v61 = __OFADD__(v53, 2);
      v62 = v53 + 2;
      v23 = v127;
      if (!v61)
      {
        if ((v50 & ~inited & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(inited & 0xFFFFFFFFFFFFFFFLL))
        {
          v63 = _StringGuts.nativeUnusedCapacity.getter(v50, inited);
          if (v64)
          {
            goto LABEL_140;
          }

          if (v62 > 15)
          {
            goto LABEL_11;
          }

          if ((inited & 0x2000000000000000) == 0)
          {
            if (v63 < 2)
            {
LABEL_54:
              if ((inited & 0x1000000000000000) != 0)
              {
                v50 = _StringGuts._foreignConvertedToSmall()(v50, inited);
                v66 = v82;
              }

              else
              {
                if ((v50 & 0x1000000000000000) != 0)
                {
                  v65 = ((inited & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v65 = _StringObject.sharedUTF8.getter(v50, inited);
                  v52 = v87;
                }

                closure #1 in _StringGuts._convertedToSmall()(v65, v52, &v132, v60);
                v66 = *(&v132 + 1);
                v50 = v132;
              }

LABEL_61:
              v67 = 0xE200000000000000;
              0xE200000000000000;
              v68._rawBits = 131073;
              v69._rawBits = 1;
              v70._rawBits = _StringGuts.validateScalarRange(_:)(v69, v68, 0x202CuLL, 0xE200000000000000)._rawBits;
              if (v70._rawBits < 0x10000)
              {
                v70._rawBits |= 3;
              }

              if (v70._rawBits >> 16 || (v73 = 8236, (v71._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
              {
                v73 = specialized static String._copying(_:)(v70._rawBits, v71, 0x202CuLL, 0xE200000000000000);
                v67 = v74;
                0xE200000000000000;
              }

              if ((v67 & 0x2000000000000000) != 0)
              {
                v67;
              }

              else if ((v67 & 0x1000000000000000) != 0)
              {
                v73 = _StringGuts._foreignConvertedToSmall()(v73, v67);
                v112 = v88;
                v67;
                v67 = v112;
              }

              else
              {
                if ((v73 & 0x1000000000000000) != 0)
                {
                  v85 = ((v67 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v86 = v73 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v85 = _StringObject.sharedUTF8.getter(v73, v67);
                }

                closure #1 in _StringGuts._convertedToSmall()(v85, v86, &v132, v72);
                v67;
                v67 = *(&v132 + 1);
                v73 = v132;
              }

              v75 = specialized _SmallString.init(_:appending:)(v50, v66, v73, v67);
              if ((v77 & 1) == 0)
              {
                v78 = v75;
                v79 = v76;
                inited;
                swift_bridgeObjectRelease_n(0xE200000000000000, 2);
                v134 = v78;
                v135 = v79;
                goto LABEL_12;
              }

LABEL_140:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_11:
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v62, 2);
            v132 = v119;
            0xE200000000000000;
            _StringGuts.appendInPlace(_:isASCII:)(&v132, 2uLL, 1);
            0xE200000000000000;
LABEL_12:
            v5 = v122;
            v31 = v125;
            goto LABEL_13;
          }
        }

        else
        {
          if (v62 > 15)
          {
            goto LABEL_11;
          }

          if ((inited & 0x2000000000000000) == 0)
          {
            goto LABEL_54;
          }
        }

        v66 = inited;
        goto LABEL_61;
      }

      __break(1u);
LABEL_131:
      v105 = String.UTF8View._foreignCount()();
      v92 = v105 + 1;
      if (!__OFADD__(v105, 1))
      {
        goto LABEL_100;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      if ((v92 & 0x1000000000000000) != 0)
      {
        v22 = _StringGuts._foreignConvertedToSmall()(v22, v92);
        v110 = v109;
        v92;
        v92 = v110;
      }

      else
      {
        if ((v22 & 0x1000000000000000) != 0)
        {
          v106 = ((v92 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v107 = v22 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v106 = _StringObject.sharedUTF8.getter(v22, v92);
        }

        closure #1 in _StringGuts._convertedToSmall()(v106, v107, &v132, v91);
        v92;
        v92 = *(&v132 + 1);
        v22 = v132;
      }

      goto LABEL_121;
    }

    v54 = 8 * (HIBYTE(v135) & 7);
    v55 = (-255 << v54) - 1;
    v56 = 44 << v54;
    v57 = v51 + 1;
    if (v51 >= 8)
    {
      v59 = v55 & v135 | v56;
      v58 = 8 * (v57 & 7);
      v31 = v125;
LABEL_71:
      v80 = ((-255 << v58) - 1) & v59 | (32 << v58);
    }

    else
    {
      v50 = v55 & v134 | v56;
      v31 = v125;
      if (v51 == 7)
      {
        v58 = 0;
        v59 = v135;
        goto LABEL_71;
      }

      v50 = ((-255 << (8 * (v57 & 7u))) - 1) & v50 | (32 << (8 * (v57 & 7u)));
      v80 = v135;
    }

    v135;
    0xE200000000000000;
    v81 = 0xE000000000000000;
    if (v50 & 0x8080808080808080 | v80 & 0x80808080808080)
    {
      v81 = 0xA000000000000000;
    }

    v134 = v50;
    v135 = (v81 & 0xFF00000000000000 | (v51 << 56) | v80 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v5 = v122;
    v23 = v127;
LABEL_13:
    v32 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
    inited = swift_initStackObject(v32, v133);
    *(inited + 16) = v128;
    *(inited + 56) = v2;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
    v49(boxed_opaque_existential_0Tm, v5, v2);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v134);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm((inited + 32));
    v30 = 0;
    v28 = v129;
  }

  v35 = v124;
  v36 = *(v124 + 216);
  if ((v36 & 0x8000000000000000) == 0)
  {
    if (v36 != *(v124 + 224))
    {
      v38 = *(v124 + 24);
      if (v38)
      {
        if (v36 >> 60)
        {
          __break(1u);
          goto LABEL_129;
        }

LABEL_30:
        v43 = (v38 + 8 * v36);
        if ((v43 & 7) == 0)
        {
          v44 = *v43;
          *(v35 + 216) = v36 + 1;
          swift_unknownObjectRetain(v44);
          if (_swift_isClassOrObjCExistentialType(v2, v2))
          {
            *&v132 = v44;
            swift_dynamicCast(v31, &v132, qword_1EEEAC710, v2, 7uLL, v45, v46, v47, v111);
            v48 = *v28;
            v42 = v131;
          }

          else
          {
            v48 = *v28;
            v83 = v116;
            v48(v116, 1, 1, v2);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v44, v2, v83);
            v84 = v117;
            (*v115)(v117, v83, v118);
            if ((*v114)(v84, 1, v2) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            (*v113)(v83, v118);
            swift_unknownObjectRelease(v44);
            v42 = v131;
            v31 = v125;
            (*v131)(v125, v84, v2);
          }

          v48(v31, 0, 1, v2);
          v23 = v127;
          goto LABEL_34;
        }

LABEL_129:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_139:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v37 = [*(v124 + 208) countByEnumeratingWithState:v124 + 16 objects:v124 + 80 count:16];
    v35 = v124;
    *(v124 + 224) = v37;
    if (v37)
    {
      *(v35 + 216) = 0;
      v38 = *(v35 + 24);
      if (v38)
      {
        v36 = 0;
        goto LABEL_30;
      }

      goto LABEL_139;
    }

    *(v35 + 216) = -1;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v23);
  (*v28)(v31, 1, 1, v2);
LABEL_88:
  inited = v134;
  v2 = v135;
  v22 = HIBYTE(v135) & 0xF;
  v23 = v134 & 0xFFFFFFFFFFFFLL;
  if ((v135 & 0x2000000000000000) != 0)
  {
    v89 = HIBYTE(v135) & 0xF;
  }

  else
  {
    v89 = v134 & 0xFFFFFFFFFFFFLL;
  }

  if (!v89 && (v134 & ~v135 & 0x2000000000000000) == 0)
  {
    v135;
    return 93;
  }

  if ((v135 & 0x2000000000000000) != 0 && v22 != 15)
  {
    if (v22 < 8)
    {
      inited = ((-255 << (8 * (HIBYTE(v135) & 7u))) - 1) & v134 | (93 << (8 * (HIBYTE(v135) & 7u)));
    }

    v135;
    0xE100000000000000;
    return inited;
  }

  0xE100000000000000;
  if ((v2 & 0x1000000000000000) != 0)
  {
    goto LABEL_131;
  }

  v61 = __OFADD__(v89, 1);
  v92 = v89 + 1;
  if (v61)
  {
    goto LABEL_133;
  }

LABEL_100:
  if ((inited & ~v2 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v2 & 0xFFFFFFFFFFFFFFFLL))
  {
    v93 = _StringGuts.nativeUnusedCapacity.getter(inited, v2);
    if (v94)
    {
      goto LABEL_140;
    }

    if (v92 > 15)
    {
      goto LABEL_111;
    }

    if ((v2 & 0x2000000000000000) == 0)
    {
      if (v93 < 1)
      {
        goto LABEL_106;
      }

LABEL_111:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v92, 1);
      v132 = xmmword_18071DB50;
      closure #1 in _StringGuts.append(_:)(&v132, 1uLL, &v134, 1);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v134;
    }

    goto LABEL_113;
  }

  if (v92 > 15)
  {
    goto LABEL_111;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
LABEL_113:
    v23 = v2;
    goto LABEL_114;
  }

LABEL_106:
  if ((v2 & 0x1000000000000000) != 0)
  {
    goto LABEL_127;
  }

  if ((inited & 0x1000000000000000) != 0)
  {
    v95 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v95 = _StringObject.sharedUTF8.getter(inited, v2);
    v23 = v108;
  }

  closure #1 in _StringGuts._convertedToSmall()(v95, v23, &v132, v91);
  v23 = *(&v132 + 1);
  inited = v132;
LABEL_114:
  v92 = 0xE100000000000000;
  0xE100000000000000;
  v22 = 93;
  v96._rawBits = 1;
  v97._rawBits = 65537;
  v98._rawBits = _StringGuts.validateScalarRange(_:)(v96, v97, 0x5DuLL, 0xE100000000000000)._rawBits;
  if (v98._rawBits < 0x10000)
  {
    v98._rawBits |= 3;
  }

  if (v98._rawBits >> 16 || (v99._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
  {
    v22 = specialized static String._copying(_:)(v98._rawBits, v99, 0x5DuLL, 0xE100000000000000);
    v92 = v100;
    0xE100000000000000;
  }

  if ((v92 & 0x2000000000000000) == 0)
  {
    goto LABEL_134;
  }

  v92;
LABEL_121:
  v101 = specialized _SmallString.init(_:appending:)(inited, v23, v22, v92);
  if (v102)
  {
    goto LABEL_140;
  }

  v103 = v101;
  v2;
  swift_bridgeObjectRelease_n(0xE100000000000000, 2);
  return v103;
}

unint64_t Set.debugDescription.getter(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v191 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v188 = &v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v5;
  v8 = type metadata accessor for Optional(0, v5, v6, v7);
  v194 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v186 = (&v180 - v15);
  MEMORY[0x1EEE9AC00](v14, v16);
  v196 = (&v180 - v17);
  v201 = 0;
  v202 = 0xE000000000000000;
  v18 = _StringGuts.init(_initialCapacity:)(4);
  inited = v18;
  v21 = v19;
  v199 = v18;
  v200 = v19;
  v22 = HIBYTE(v19) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24 && (v18 & ~v19 & 0x2000000000000000) == 0)
  {
    v19;
    inited = 0;
    v30 = 0xE000000000000000;
    v199 = 0;
    goto LABEL_33;
  }

  if ((v19 & 0x2000000000000000) != 0)
  {
    v19;
    0xE000000000000000;
    v32 = 0xA000000000000000;
    if (!(v21 & 0x80808080808080 | inited & 0x8080808080808080))
    {
      v32 = 0xE000000000000000;
    }

    v30 = v32 & 0xFF00000000000000 | (v22 << 56) | v21 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_32;
  }

  0xE000000000000000;
  v26 = v23;
  if ((v21 & 0x1000000000000000) != 0)
  {
    v26 = String.UTF8View._foreignCount()();
    if ((inited & 0x2000000000000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((inited & 0x2000000000000000) == 0)
  {
    goto LABEL_35;
  }

  if (swift_isUniquelyReferenced_nonNull_native(v21 & 0xFFFFFFFFFFFFFFFLL))
  {
    v27 = _StringGuts.nativeUnusedCapacity.getter(inited, v21);
    if (v28)
    {
      goto LABEL_206;
    }

    if (v26 <= 15 && (v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

LABEL_36:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v26, 0);
    v197 = 0uLL;
    closure #1 in _StringGuts.append(_:)(&v197, 0, &v199, 1);
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    inited = v199;
    v30 = v200;
    goto LABEL_37;
  }

LABEL_35:
  if (v26 > 15)
  {
    goto LABEL_36;
  }

LABEL_13:
  if ((v21 & 0x1000000000000000) != 0)
  {
    inited = _StringGuts._foreignConvertedToSmall()(inited, v21);
    v30 = v33;
  }

  else
  {
    if ((inited & 0x1000000000000000) != 0)
    {
      v29 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v29 = _StringObject.sharedUTF8.getter(inited, v21);
      v23 = v171;
    }

    closure #1 in _StringGuts._convertedToSmall()(v29, v23, &v197, v25);
    v30 = *(&v197 + 1);
    inited = v197;
  }

  v34 = 0xE000000000000000;
  0xE000000000000000;
  v35._rawBits = 1;
  v36._rawBits = 1;
  v37._rawBits = _StringGuts.validateScalarRange(_:)(v35, v36, 0, 0xE000000000000000)._rawBits;
  if (v37._rawBits < 0x10000)
  {
    v37._rawBits |= 3;
  }

  if (v37._rawBits >> 16 || v38._rawBits >= 0x10000)
  {
    v2 = specialized static String._copying(_:)(v37._rawBits, v38, 0, 0xE000000000000000);
    v34 = v40;
    0xE000000000000000;
  }

  else
  {
    v2 = 0;
  }

  if ((v34 & 0x2000000000000000) == 0)
  {
    goto LABEL_190;
  }

  v34;
  while (1)
  {
    v41 = specialized _SmallString.init(_:appending:)(inited, v30, v2, v34);
    if (v43)
    {
      goto LABEL_206;
    }

    inited = v41;
    v30 = v42;
    v21;
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
LABEL_32:
    v199 = inited;
LABEL_33:
    v200 = v30;
LABEL_37:
    v44 = HIBYTE(v30) & 0xF;
    v21 = inited & 0xFFFFFFFFFFFFLL;
    v45 = (v30 & 0x2000000000000000) != 0 ? HIBYTE(v30) & 0xF : inited & 0xFFFFFFFFFFFFLL;
    if (v45 || (inited & ~v30 & 0x2000000000000000) != 0)
    {
      break;
    }

    inited = 7628115;
    v21 = 0xE300000000000000;
    0xE300000000000000;
LABEL_79:
    v30;
LABEL_80:
    v199 = inited;
    v200 = v21;
LABEL_81:
    v71 = HIBYTE(v21) & 0xF;
    v30 = inited & 0xFFFFFFFFFFFFLL;
    if ((v21 & 0x2000000000000000) != 0)
    {
      v72 = HIBYTE(v21) & 0xF;
    }

    else
    {
      v72 = inited & 0xFFFFFFFFFFFFLL;
    }

    if (!v72 && (inited & ~v21 & 0x2000000000000000) == 0)
    {
      v21;
      v84 = 0xE200000000000000;
      inited = 23336;
      goto LABEL_122;
    }

    if ((v21 & 0x2000000000000000) != 0 && v71 <= 0xD)
    {
      v73 = 8 * (HIBYTE(v21) & 7);
      v74 = (-255 << v73) - 1;
      v75 = 40 << v73;
      v76 = v71 + 1;
      if (v71 >= 8)
      {
        v78 = v74 & v21 | v75;
        v77 = 8 * (v76 & 7);
LABEL_106:
        v85 = ((-255 << v77) - 1) & v78 | (91 << v77);
      }

      else
      {
        inited = v74 & inited | v75;
        if (v71 == 7)
        {
          v77 = 0;
          v78 = v21;
          goto LABEL_106;
        }

        inited = ((-255 << (8 * (v76 & 7u))) - 1) & inited | (91 << (8 * (v76 & 7u)));
        v85 = v21;
      }

      v21;
      0xE200000000000000;
      v97 = 0xA000000000000000;
      if (!(inited & 0x8080808080808080 | v85 & 0x80808080808080))
      {
        v97 = 0xE000000000000000;
      }

      v84 = (v97 & 0xFF00000000000000 | (v71 << 56) | v85 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
      goto LABEL_122;
    }

    0xE200000000000000;
    if ((v21 & 0x1000000000000000) != 0)
    {
      goto LABEL_187;
    }

    v79 = __OFADD__(v72, 2);
    v34 = v72 + 2;
    if (!v79)
    {
      goto LABEL_93;
    }

LABEL_189:
    __break(1u);
LABEL_190:
    if ((v34 & 0x1000000000000000) != 0)
    {
      v2 = _StringGuts._foreignConvertedToSmall()(v2, v34);
      v175 = v174;
      v34;
      v34 = v175;
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v165 = ((v34 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v166 = v2 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v165 = _StringObject.sharedUTF8.getter(v2, v34);
      }

      closure #1 in _StringGuts._convertedToSmall()(v165, v166, &v197, v39);
      v34;
      v34 = *(&v197 + 1);
      v2 = v197;
    }
  }

  if ((v30 & 0x2000000000000000) != 0 && v44 <= 0xC)
  {
    v46 = 8 * HIBYTE(v30);
    v47 = (-255 << (v46 & 0x38)) - 1;
    v48 = 83 << (v46 & 0x38);
    v49 = v44 + 1;
    if (v44 >= 8)
    {
      v51 = v47 & v30 | v48;
      v50 = 8 * (v49 & 7);
LABEL_62:
      v57 = ((-255 << v50) - 1) & v51 | (101 << v50);
      v58 = (v46 + 16) & 0x38;
    }

    else
    {
      inited = v47 & inited | v48;
      if (v44 == 7)
      {
        v50 = 0;
        v51 = v30;
        goto LABEL_62;
      }

      inited = ((-255 << (8 * (v49 & 7u))) - 1) & inited | (101 << (8 * (v49 & 7u)));
      if (v44 < 6)
      {
        inited = ((-255 << ((v46 + 16) & 0x38)) - 1) & inited | (116 << ((v46 + 16) & 0x38));
        v59 = v30;
        goto LABEL_64;
      }

      v58 = 0;
      v57 = v30;
    }

    v59 = ((-255 << v58) - 1) & v57 | (116 << v58);
LABEL_64:
    v30;
    v60 = 0xA000000000000000;
    if (!(inited & 0x8080808080808080 | v59 & 0x80808080808080))
    {
      v60 = 0xE000000000000000;
    }

    v21 = (v60 & 0xFF00000000000000 | (v44 << 56) | v59 & 0xFFFFFFFFFFFFFFLL) + 0x300000000000000;
    goto LABEL_80;
  }

  if ((v30 & 0x1000000000000000) == 0)
  {
    v52 = v45 + 3;
    if (__OFADD__(v45, 3))
    {
      goto LABEL_186;
    }

    goto LABEL_49;
  }

  v163 = String.UTF8View._foreignCount()();
  v52 = v163 + 3;
  if (!__OFADD__(v163, 3))
  {
LABEL_49:
    if ((inited & ~v30 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v30 & 0xFFFFFFFFFFFFFFFLL))
    {
      v53 = _StringGuts.nativeUnusedCapacity.getter(inited, v30);
      if (v54)
      {
        goto LABEL_206;
      }

      if (v52 > 15)
      {
        goto LABEL_60;
      }

      if ((v30 & 0x2000000000000000) != 0)
      {
        goto LABEL_68;
      }

      if (v53 >= 3)
      {
LABEL_60:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v52, 3);
        v197 = xmmword_18071DD10;
        closure #1 in _StringGuts.append(_:)(&v197, 3uLL, &v199, 1);
        inited = v199;
        v21 = v200;
        goto LABEL_81;
      }
    }

    else
    {
      if (v52 > 15)
      {
        goto LABEL_60;
      }

      if ((v30 & 0x2000000000000000) != 0)
      {
LABEL_68:
        v56 = v30;
        goto LABEL_69;
      }
    }

    if ((v30 & 0x1000000000000000) != 0)
    {
      goto LABEL_180;
    }

    if ((inited & 0x1000000000000000) != 0)
    {
      v55 = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v55 = _StringObject.sharedUTF8.getter(inited, v30);
      v21 = v172;
    }

    closure #1 in _StringGuts._convertedToSmall()(v55, v21, &v197, v31);
    v56 = *(&v197 + 1);
    inited = v197;
LABEL_69:
    v2 = 7628115;
    v61 = 0xE300000000000000;
    0xE300000000000000;
    v62._rawBits = 196609;
    v63._rawBits = 1;
    v64._rawBits = _StringGuts.validateScalarRange(_:)(v63, v62, 0x746553uLL, 0xE300000000000000)._rawBits;
    if (v64._rawBits < 0x10000)
    {
      v64._rawBits |= 3;
    }

    if (v64._rawBits >> 16 || (v65._rawBits & 0xFFFFFFFFFFFF0000) != 0x30000)
    {
      v2 = specialized static String._copying(_:)(v64._rawBits, v65, 0x746553uLL, 0xE300000000000000);
      v61 = v67;
      0xE300000000000000;
    }

    if ((v61 & 0x2000000000000000) != 0)
    {
      v61;
    }

    else if ((v61 & 0x1000000000000000) != 0)
    {
      v2 = _StringGuts._foreignConvertedToSmall()(v2, v61);
      v177 = v176;
      v61;
      v61 = v177;
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v167 = ((v61 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v168 = v2 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v167 = _StringObject.sharedUTF8.getter(v2, v61);
      }

      closure #1 in _StringGuts._convertedToSmall()(v167, v168, &v197, v66);
      v61;
      v61 = *(&v197 + 1);
      v2 = v197;
    }

    v68 = specialized _SmallString.init(_:appending:)(inited, v56, v2, v61);
    if (v70)
    {
      goto LABEL_206;
    }

    inited = v68;
    v21 = v69;
    goto LABEL_79;
  }

LABEL_186:
  __break(1u);
LABEL_187:
  v164 = String.UTF8View._foreignCount()();
  v34 = v164 + 2;
  if (__OFADD__(v164, 2))
  {
    goto LABEL_189;
  }

LABEL_93:
  if ((inited & ~v21 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v21 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v34 > 15)
    {
      goto LABEL_104;
    }

    if ((v21 & 0x2000000000000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_108;
  }

  v80 = _StringGuts.nativeUnusedCapacity.getter(inited, v21);
  if (v81)
  {
    goto LABEL_206;
  }

  if (v34 > 15)
  {
    goto LABEL_104;
  }

  if ((v21 & 0x2000000000000000) != 0)
  {
LABEL_108:
    v83 = v21;
    goto LABEL_109;
  }

  if (v80 < 2)
  {
LABEL_99:
    if ((v21 & 0x1000000000000000) != 0)
    {
      inited = _StringGuts._foreignConvertedToSmall()(inited, v21);
      v83 = v162;
    }

    else
    {
      if ((inited & 0x1000000000000000) != 0)
      {
        v82 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v82 = _StringObject.sharedUTF8.getter(inited, v21);
        v30 = v173;
      }

      closure #1 in _StringGuts._convertedToSmall()(v82, v30, &v197, v39);
      v83 = *(&v197 + 1);
      inited = v197;
    }

LABEL_109:
    0xE200000000000000;
    v86._rawBits = 1;
    v87._rawBits = 131073;
    v88._rawBits = _StringGuts.validateScalarRange(_:)(v86, v87, 0x5B28uLL, 0xE200000000000000)._rawBits;
    if (v88._rawBits < 0x10000)
    {
      v88._rawBits |= 3;
    }

    v90 = Substring.description.getter(v88._rawBits, v89, 0x5B28uLL, 0xE200000000000000);
    v92 = v91;
    0xE200000000000000;
    if ((v92 & 0x2000000000000000) != 0)
    {
      v92;
    }

    else if ((v92 & 0x1000000000000000) != 0)
    {
      v90 = _StringGuts._foreignConvertedToSmall()(v90, v92);
      v179 = v178;
      v92;
      v92 = v179;
    }

    else
    {
      if ((v90 & 0x1000000000000000) != 0)
      {
        v169 = ((v92 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v170 = v90 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v169 = _StringObject.sharedUTF8.getter(v90, v92);
      }

      closure #1 in _StringGuts._convertedToSmall()(v169, v170, &v197, v93);
      v92;
      v92 = *(&v197 + 1);
      v90 = v197;
    }

    v94 = specialized _SmallString.init(_:appending:)(inited, v83, v90, v92);
    if ((v96 & 1) == 0)
    {
      inited = v94;
      v84 = v95;
      v21;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      goto LABEL_122;
    }

LABEL_206:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_104:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v34, 2);
  v197 = xmmword_18071DC30;
  closure #1 in _StringGuts.append(_:)(&v197, 2uLL, &v199, 1);
  swift_bridgeObjectRelease_n(0xE200000000000000, 2);
  inited = v199;
  v84 = v200;
LABEL_122:
  0xE000000000000000;
  v201 = inited;
  v202 = v84;
  v98 = v188;
  v184 = v8;
  v185 = v12;
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v99 = v3;
    }

    else
    {
      v99 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v100 = type metadata accessor for __CocoaSet.Iterator();
    v101 = swift_allocObject(v100, 0xE8, 7uLL);
    v102 = 0;
    v103 = 0;
    v104 = 0;
    *(v101 + 208) = v99;
    *(v101 + 216) = 0;
    *(v101 + 16) = 0u;
    *(v101 + 32) = 0u;
    *(v101 + 48) = 0u;
    *(v101 + 64) = 0u;
    *(v101 + 80) = 0u;
    *(v101 + 96) = 0u;
    *(v101 + 112) = 0u;
    *(v101 + 128) = 0u;
    *(v101 + 144) = 0u;
    *(v101 + 160) = 0u;
    *(v101 + 176) = 0u;
    *(v101 + 192) = 0u;
    *(v101 + 224) = 0;
    v105 = v101 | 0x8000000000000000;
  }

  else
  {
    v106 = -1 << *(v3 + 32);
    v103 = ~v106;
    v102 = v3 + 56;
    v107 = -v106;
    if (v107 < 64)
    {
      v108 = ~(-1 << v107);
    }

    else
    {
      v108 = -1;
    }

    v104 = v108 & *(v3 + 56);
    v105 = v3;
  }

  v30 = v190;
  v8 = v105 & 0x7FFFFFFFFFFFFFFFLL;
  v195 = (v191 + 56);
  v183 = (v194 + 16);
  v182 = (v191 + 48);
  v181 = (v194 + 8);
  v12 = (v191 + 32);
  v187 = v103;
  v109 = (v103 + 64) >> 6;
  v189 = v191 + 16;
  v3;
  v194 = 0;
  v3 = 1;
  v192 = xmmword_18071DB30;
  v193 = v105;
  while ((v105 & 0x8000000000000000) == 0)
  {
    if (v104)
    {
      v120 = v194;
      goto LABEL_148;
    }

    v126 = v194;
    do
    {
      v120 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        __break(1u);
LABEL_180:
        inited = _StringGuts._foreignConvertedToSmall()(inited, v30);
        v56 = v161;
        goto LABEL_69;
      }

      if (v120 >= v109)
      {
        (*v195)(v196, 1, 1, v30);
        _sSh8IteratorV8_VariantOySS__GWOe_0(v105);
        goto LABEL_167;
      }

      v104 = *(v102 + 8 * v120);
      ++v126;
    }

    while (!v104);
    v194 = v120;
LABEL_148:
    v127 = __clz(__rbit64(v104));
    v104 &= v104 - 1;
    v128 = v191;
    v129 = *(v105 + 48) + *(v191 + 72) * (v127 | (v120 << 6));
    v130 = v196;
    (*(v191 + 16))(v196, v129, v30);
    v131 = *(v128 + 56);
    v132 = v130;
    v131(v130, 0, 1, v30);
LABEL_155:
    v139 = *v12;
    (*v12)(v98, v132, v30);
    if ((v3 & 1) == 0)
    {
      v140 = v202;
      v141 = HIBYTE(v202) & 0xF;
      if ((v202 & 0x2000000000000000) == 0)
      {
        v141 = v201 & 0xFFFFFFFFFFFFLL;
      }

      if (v141 || (v201 & ~v202 & 0x2000000000000000) != 0)
      {
        if (v202 & 0x2000000000000000) == 0 || (v142 = specialized _SmallString.init(_:appending:)(v201, v202, 0x202CuLL, 0xE200000000000000), (v144))
        {
          0xE200000000000000;
          _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v110, v111, v112, v113, v114, v115, v116, v117);
          swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        }

        else
        {
          v145 = v142;
          v146 = v143;
          v140;
          0xE200000000000000;
          v201 = v145;
          v202 = v146;
        }

        v30 = v190;
      }

      else
      {
        v202;
        v201 = 8236;
        v202 = 0xE200000000000000;
      }
    }

    v118 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
    inited = swift_initStackObject(v118, v198);
    *(inited + 16) = v192;
    *(inited + 56) = v30;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
    v139(boxed_opaque_existential_0Tm, v98, v30);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v201);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm((inited + 32));
    v3 = 0;
    v105 = v193;
  }

  v121 = *(v8 + 216);
  v123 = v195;
  v122 = v196;
  if ((v121 & 0x8000000000000000) == 0)
  {
    if (v121 != *(v8 + 224))
    {
      v125 = *(v8 + 24);
      if (v125)
      {
        if (!(v121 >> 60))
        {
          goto LABEL_151;
        }

        __break(1u);
LABEL_183:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_205:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v124 = [*(v8 + 208) countByEnumeratingWithState:v8 + 16 objects:v8 + 80 count:16];
    *(v8 + 224) = v124;
    if (v124)
    {
      *(v8 + 216) = 0;
      v125 = *(v8 + 24);
      if (v125)
      {
        v121 = 0;
LABEL_151:
        v133 = (v125 + 8 * v121);
        if ((v133 & 7) == 0)
        {
          v134 = *v133;
          *(v8 + 216) = v121 + 1;
          swift_unknownObjectRetain(v134);
          if (_swift_isClassOrObjCExistentialType(v30, v30))
          {
            v199 = v134;
            v132 = v196;
            swift_dynamicCast(v196, &v199, qword_1EEEAC710, v30, 7uLL, v135, v136, v137, v180);
            v138 = *v123;
          }

          else
          {
            v138 = *v123;
            v138(v186, 1, 1, v30);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v134, v30, v186);
            (*v183)(v185, v186, v184);
            if ((*v182)(v185, 1, v30) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            (*v181)(v186, v184);
            swift_unknownObjectRelease(v134);
            v132 = v196;
            (*v12)(v196, v185, v30);
          }

          v138(v132, 0, 1, v30);
          v98 = v188;
          goto LABEL_155;
        }

        goto LABEL_183;
      }

      goto LABEL_205;
    }

    *(v8 + 216) = -1;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v105);
  (*v123)(v122, 1, 1, v30);
LABEL_167:
  v147 = v202;
  v148 = HIBYTE(v202) & 0xF;
  if ((v202 & 0x2000000000000000) == 0)
  {
    v148 = v201 & 0xFFFFFFFFFFFFLL;
  }

  if (v148 || (v201 & ~v202 & 0x2000000000000000) != 0)
  {
    if ((v202 & 0x2000000000000000) != 0 && (v149 = specialized _SmallString.init(_:appending:)(v201, v202, 0x295DuLL, 0xE200000000000000), (v150 & 1) == 0))
    {
      v160 = v149;
      v147;
      0xE300000000000000;
      0xE200000000000000;
      return v160;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10589, 0xE200000000000000, 0, 2, v151, v152, v153, v154, v155, v156, v157, v158);
      0xE300000000000000;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      return v201;
    }
  }

  else
  {
    v202;
    0xE300000000000000;
    return 10589;
  }
}

__objc2_class **Set._Variant.intersection(_:)(unint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v85 = a4;
  v7 = type metadata accessor for Optional(0, a3, a3, a4);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v80 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v23 = (&v68 - v22);
  v86 = a1;
  v24 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (!v24)
    {
      v67 = v85;
      v66 = v86;

      return _NativeSet.intersection(_:)(v66, a2, a3, v67);
    }

    v27 = v85;
    v88 = v86;
    v36 = type metadata accessor for Set(0, a3, v85, v19);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, v36, v37);
    v33 = a2;
    v34 = a3;
    v35 = v36;
    return _NativeSet.genericIntersection<A>(_:)(&v88, v33, v34, v35, v27, WitnessTable);
  }

  if (v24)
  {
    if (a2 < 0)
    {
      v25 = a2;
    }

    else
    {
      v25 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v26 = [v25 count];
    v27 = v85;
    v28 = _NativeSet.init(_:capacity:)(v25, v26, a3, v85);
    v88 = v86;
    v30 = type metadata accessor for Set(0, a3, v27, v29);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, v30, v31);
    v33 = v28;
    v34 = a3;
    v35 = v30;
    return _NativeSet.genericIntersection<A>(_:)(&v88, v33, v34, v35, v27, WitnessTable);
  }

  v74 = v21;
  v75 = v20;
  v76 = v18;
  v77 = &_swiftEmptySetSingleton;
  v88 = &_swiftEmptySetSingleton;
  if (a2 < 0)
  {
    v39 = a2;
  }

  else
  {
    v39 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  v40 = type metadata accessor for __CocoaSet.Iterator();
  v41 = swift_allocObject(v40, 0xE8, 7uLL);
  v42 = 0;
  *(v41 + 1) = 0u;
  v79 = v41 + 2;
  v41[27] = 0;
  v43 = v41 + 27;
  *(v41 + 2) = 0u;
  *(v41 + 3) = 0u;
  *(v41 + 4) = 0u;
  *(v41 + 6) = 0u;
  *(v41 + 7) = 0u;
  *(v41 + 8) = 0u;
  *(v41 + 9) = 0u;
  v44 = v80;
  v73 = (v80 + 56);
  v72 = (v8 + 16);
  *(v41 + 10) = 0u;
  *(v41 + 11) = 0u;
  v71 = (v44 + 48);
  v70 = (v8 + 8);
  v69 = (v44 + 32);
  *(v41 + 12) = 0u;
  *(v41 + 5) = 0u;
  v78 = v41 + 10;
  v81 = v85 + 32;
  v82 = v41 + 27;
  v45 = v86 + 7;
  v41[28] = 0;
  v83 = v41;
  v84 = v44 + 16;
  v46 = (v44 + 8);
  v41[26] = v39;
  while (1)
  {
    if (v42 != v41[28])
    {
      v48 = v41[3];
      if (!v48)
      {
LABEL_44:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v42 >> 60)
      {
        __break(1u);
LABEL_43:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_22;
    }

    v47 = [v41[26] countByEnumeratingWithState:v79 objects:v78 count:16];
    v41[28] = v47;
    if (!v47)
    {
      break;
    }

    v41[27] = 0;
    v48 = v41[3];
    if (!v48)
    {
      goto LABEL_44;
    }

    v42 = 0;
LABEL_22:
    v49 = (v48 + 8 * v42);
    if ((v49 & 7) != 0)
    {
      goto LABEL_43;
    }

    v50 = *v49;
    *v43 = v42 + 1;
    swift_unknownObjectRetain(v50);
    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      v87 = v50;
      swift_dynamicCast(v23, &v87, qword_1EEEAC710, a3, 7uLL, v51, v52, v53, v68);
    }

    else
    {
      v64 = v74;
      (*v73)(v74, 1, 1, a3);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v50, a3, v64);
      v65 = v75;
      (*v72)(v75, v64, v76);
      if ((*v71)(v65, 1, a3) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_unknownObjectRelease(v50);
      (*v70)(v64, v76);
      (*v69)(v23, v65, a3);
    }

    if (v86[2] && (v54 = v86, v55 = (*(v85 + 32))(v86[5], a3), v56 = -1 << *(v54 + 32), v57 = v55 & ~v56, ((*(v45 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) != 0))
    {
      v58 = ~v56;
      v59 = *(v80 + 72);
      v60 = *(v80 + 16);
      while (1)
      {
        v60(v16, v86[6] + v59 * v57, a3);
        v61 = (*(*(v85 + 8) + 8))(v16, v23, a3);
        (*v46)(v16, a3);
        if (v61)
        {
          break;
        }

        v57 = (v57 + 1) & v58;
        if (((*(v45 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v63 = v77[2];
      v43 = v82;
      if (v77[3] <= v63)
      {
        type metadata accessor for _NativeSet(0, a3, v85, v62);
        _NativeSet.resize(capacity:)(&v63->isa + 1);
      }

      v77 = v88;
      _NativeSet._unsafeInsertNew(_:)(v23, v88, a3);
    }

    else
    {
LABEL_14:
      (*v46)(v23, a3);
      v43 = v82;
    }

    v42 = *v43;
    v41 = v83;
    if ((*v43 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }
  }

  *v43 = -1;
LABEL_40:
  v41;
  return v77;
}

uint64_t Dictionary.Index._variant.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  result = (a5)(*v5, *(v5 + 8), *(v5 + 16), a4);
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3 & 1;
  return result;
}

Swift::Bool __swiftcall Set.Index._isUniquelyReferenced()()
{
  if (*(v0 + 16) != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*v0 >= 0)
  {
    v1 = (*v0 & 0xFFFFFFFFFFFFFF8);
  }

  else
  {
    v1 = *v0;
  }

  v2 = type metadata accessor for __CocoaSet.Index.Storage();
  if (!swift_dynamicCastClass(v1, v2))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return !v1 || swift_isUniquelyReferenced_nonNull_native(v1);
}

swift *__CocoaDictionary.Index.handleBitPattern.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1 < 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v4 = a3();
  if (!swift_dynamicCastClass(v3, v4))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v3;
}

unint64_t key path getter for Set.Index._asCocoa : <A>Set<A>.Index@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (*(a1 + 16) != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  *a2 = v3;
  a2[1] = v4;

  return v3;
}

uint64_t (*Set.Index._asCocoa.modify(void *a1))()
{
  a1[2] = v1;
  if (*(v1 + 16) != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v2;
  return Set.Index._asCocoa.modify;
}

void Set.Index._asCocoa.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  sub_180615F30(*v2, *(v2 + 8), 1);
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 1;
}

BOOL static Set.Index.== infix(_:_:)(swift *a1, uint64_t a2, char a3, swift *a4, uint64_t a5, char a6)
{
  v7 = a4;
  if (a3)
  {
    if (a6)
    {
      if (a1 >= 0)
      {
        v9 = (a1 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v9 = a1;
      }

      v10 = type metadata accessor for __CocoaSet.Index.Storage();
      if (!swift_dynamicCastClass(v9, v10))
      {
        goto LABEL_21;
      }

      if (v7 >= 0)
      {
        v7 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      if (!swift_dynamicCastClass(v7, v10))
      {
LABEL_21:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (*(v9 + 2) != *(v7 + 16))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      return a2 == a5;
    }

LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a6)
  {
    goto LABEL_20;
  }

  if (a2 != a5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 == a4;
}

BOOL static Set.Index.< infix(_:_:)(swift *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a4;
  if (a3)
  {
    if (a6)
    {
      if (a1 >= 0)
      {
        v9 = (a1 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v9 = a1;
      }

      v10 = type metadata accessor for __CocoaSet.Index.Storage();
      if (!swift_dynamicCastClass(v9, v10))
      {
        goto LABEL_21;
      }

      if (v7 >= 0)
      {
        v7 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      if (!swift_dynamicCastClass(v7, v10))
      {
LABEL_21:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (*(v9 + 2) != *(v7 + 16))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      return a2 < a5;
    }

LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a6)
  {
    goto LABEL_20;
  }

  if (a2 != a5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 < a4;
}

void Set.Index.hash(into:)(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    a3 = a2;
  }

  Hasher._combine(_:)(a4 & 1);
  Hasher._combine(_:)(a3);
}

Swift::Int Set.Index.hashValue.getter(Swift::UInt a1, Swift::UInt a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    a2 = a1;
  }

  Hasher._combine(_:)(a3 & 1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Set<A>.Index(uint64_t a1)
{
  specialized Hasher.init(_seed:)(a1, v3);
  Set.Index.hash(into:)(v3, *v1, *(v1 + 8), *(v1 + 16));
  return Hasher._finalize()();
}

uint64_t Set.Iterator._variant.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = type metadata accessor for Set.Iterator._Variant(0, *(a1 + 16), *(a1 + 24), a3);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3, v5);
}

__n128 Dictionary.Keys.Iterator._base.setter(uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void, void))
{
  v5 = *(a1 + 32);
  a3(*v3, v3[1], v3[2], v3[3], v3[4]);
  result = *a1;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v7;
  v3[4] = v5;
  return result;
}

__n128 Set.Iterator.init(_variant:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

__n128 Set.Iterator.init(_native:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

double Set.Iterator.init(_cocoa:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1 | 0x8000000000000000;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  return result;
}

uint64_t Dictionary.Iterator._asNative.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *v1;
  v4 = v1[1];
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return v3;
}

__n128 Dictionary.Iterator._asNative.setter(__n128 *a1, uint64_t a2, void (*a3)(unint64_t, unint64_t, unint64_t, unint64_t, unint64_t))
{
  v6 = a1[1];
  v7 = *a1;
  v4 = a1[2].n128_u64[0];
  a3(*v3, v3[1], v3[2], v3[3], v3[4]);
  result = v6;
  *v3 = v7;
  *(v3 + 1) = v6;
  v3[4] = v4;
  return result;
}

void (*Set.Iterator._asNative.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc(0x58, 0x4ABFuLL);
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[5] = v1;
  v5 = *v1;
  v4[6] = *v1;
  v6 = v1[1];
  v4[7] = v6;
  v7 = v1[2];
  v4[8] = v7;
  v8 = v1[3];
  v4[9] = v8;
  v9 = v1[4];
  v4[10] = v9;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v5;
  return Dictionary.Iterator._asNative.modify;
}

void Dictionary.Iterator._asNative.modify(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v13 = (*a1)[1];
  v14 = (*a1)[2];
  v15 = (*a1)[3];
  v7 = (*a1)[9];
  v6 = (*a1)[10];
  v9 = (*a1)[7];
  v8 = (*a1)[8];
  v11 = (*a1)[5];
  v10 = (*a1)[6];
  v12 = (*a1)[4];
  if (a2)
  {
    v5;
    a3(v10, v9, v8, v7, v6);
    *v11 = v5;
    v11[1] = v13;
    v11[2] = v14;
    v11[3] = v15;
    v11[4] = v12;
    *v4;
  }

  else
  {
    a3(v4[6], v4[7], v4[8], v4[9], v4[10]);
    *v11 = v5;
    v11[1] = v13;
    v11[2] = v14;
    v11[3] = v15;
    v11[4] = v12;
  }

  free(v4);
}

uint64_t protocol witness for IteratorProtocol.next() in conformance Set<A>.Iterator@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2 < 0)
  {
    v10 = *(result + 16);
    v11 = __CocoaSet.Iterator.next()();
    if (v11)
    {
      v13 = v11;
      _forceBridgeFromObjectiveC<A>(_:_:)(v11, v10, a2, v12);
      swift_unknownObjectRelease(v13);
      v14 = *(*(v10 - 1) + 7);
      v15 = a2;
      v16 = 0;
    }

    else
    {
      v14 = *(*(v10 - 1) + 7);
      v15 = a2;
      v16 = 1;
    }

    return v14(v15, v16, 1, v10);
  }

  else
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[3];
    v8 = v2[4];
    if (v8)
    {
      v9 = v2[3];
LABEL_13:
      v20 = (v8 - 1) & v8;
      v21 = *(result + 16);
      v22 = *(v21 - 8);
      (*(v22 + 16))(a2, *(v4 + 48) + *(v22 + 72) * (__clz(__rbit64(v8)) | (v9 << 6)), v21);
      result = (*(v22 + 56))(a2, 0, 1, v21);
      v19 = v9;
LABEL_14:
      *v2 = v4;
      v2[1] = v5;
      v2[2] = v6;
      v2[3] = v19;
      v2[4] = v20;
    }

    else
    {
      v17 = (v6 + 64) >> 6;
      if (v17 <= v7 + 1)
      {
        v18 = v7 + 1;
      }

      else
      {
        v18 = (v6 + 64) >> 6;
      }

      v19 = v18 - 1;
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v17)
        {
          result = (*(*(*(result + 16) - 8) + 56))(a2, 1, 1);
          v20 = 0;
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v9);
        ++v7;
        if (v8)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t Set.Iterator.customMirror.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v6 = *(v3 + 16);
  v28[0] = *v3;
  v28[1] = v6;
  v29 = *(v3 + 32);
  v25[0] = 0;
  v25[1] = 0;
  v7 = *(v3 + 16);
  v30[0] = *v3;
  v30[1] = v7;
  v31 = *(v3 + 32);
  v8 = type metadata accessor for Set.Iterator._Variant(0, a1[2], a1[3], a3);
  (*(*(v8 - 8) + 16))(v26, v30, v8);
  v9 = static Mirror._superclassIterator<A>(_:_:)(v28, v25, a1);
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys05EmptyA0VySSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys05EmptyA0VySSSg5label_yp5valuetGGMR);
  v13 = swift_allocObject(v12, 0x30, 7uLL);
  v14 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v15 = swift_allocObject(v14, 0x18, 7uLL);
  v15[2] = 0;
  v16 = swift_allocObject(v14, 0x18, 7uLL);
  v16[2] = 0;
  v13[2] = v15;
  v13[3] = &protocol witness table for _IndexBox<A>;
  v13[4] = v16;
  v13[5] = &protocol witness table for _IndexBox<A>;
  v17 = *(v3 + 16);
  v26[0] = *v3;
  v26[1] = v17;
  v27 = *(v3 + 32);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v25, v26, a1, v18, 6uLL, v19, v20, v21, v24);
  v23 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  *a2 = a1;
  *(a2 + 8) = v13;
  *(a2 + 16) = 9;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v23;
  return result;
}

void Set.customMirror.getter(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v63 = a1;
  v9 = type metadata accessor for Set(0, a2, a3, a5);
  v60[0] = 0;
  v60[1] = 0;
  a1;
  v10 = static Mirror._superclassIterator<A>(_:_:)(&v63, v60, v9);
  v12 = v11;
  v13 = swift_allocObject(&unk_1EEEADF70, 0x28, 7uLL);
  v13[2] = v9;
  v13[3] = v9;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Set<A>, v9, v14);
  v13[4] = WitnessTable;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
  v18 = swift_getWitnessTable(protocol conformance descriptor for Set<A>, v9, v17);
  v19 = type metadata accessor for LazyMapSequence(255, v9, v16, v18);
  v62 = WitnessTable;
  v20 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v19, &v62);
  v22 = type metadata accessor for _CollectionBox(0, v19, v20, v21);
  v24 = swift_allocObject(v22, 0x48, 7uLL);
  v24[6] = a1;
  v24[7] = closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)partial apply;
  v24[8] = v13;
  v25 = a1 & 0xC000000000000001;
  v58 = v10;
  v59 = a1 & 0xC000000000000001;
  v57 = v12;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    a1;
    v27 = [v26 count];
    type metadata accessor for __BridgingBufferStorage(0);
    if ((v27 - 0x1000000000000000) >> 61 == 7)
    {
      if (!__OFADD__(8 * v27, 24))
      {
        v29 = swift_bufferAllocate(v28, (8 * v27 + 24), 7uLL);
        v29[2] = v27;
        [v26 getObjects_];
        v30 = type metadata accessor for __CocoaSet.Index.Storage();
        v31 = swift_allocObject(v30, 0x20, 7uLL);
        v32 = 0;
        *(v31 + 16) = v26;
        *(v31 + 24) = v29;
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v33 = (a1 + 56);
  v34 = -1 << *(a1 + 32);
  v31 = -v34;
  v35 = (63 - v34) >> 6;
  while (1)
  {
    v37 = *v33++;
    v36 = v37;
    if (v37)
    {
      break;
    }

    v25 -= 64;
    if (!--v35)
    {
      goto LABEL_13;
    }
  }

  v31 = __clz(__rbit64(v36)) - v25;
LABEL_13:
  v32 = *(a1 + 36);
LABEL_14:
  v38 = type metadata accessor for Set.Index(255, a2, a3, v23);
  v40 = type metadata accessor for _IndexBox(0, v38, &protocol witness table for Set<A>.Index, v39);
  v41 = swift_allocObject(v40, 0x21, 7uLL);
  v41[2] = v31;
  v41[3] = v32;
  *(v41 + 32) = v59 != 0;
  if (!v59)
  {
    v47 = (1 << *(a1 + 32));
    v48 = *(a1 + 36);
    goto LABEL_22;
  }

  if (a1 < 0)
  {
    v42 = a1;
  }

  else
  {
    v42 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  a1;
  v43 = [v42 count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v43 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_27;
  }

  if (__OFADD__(8 * v43, 24))
  {
LABEL_28:
    __break(1u);
    return;
  }

  v45 = swift_bufferAllocate(v44, (8 * v43 + 24), 7uLL);
  v45[2] = v43;
  [v42 getObjects_];
  v46 = type metadata accessor for __CocoaSet.Index.Storage();
  v47 = swift_allocObject(v46, 0x20, 7uLL);
  v47[2] = v42;
  v47[3] = v45;
  v48 = v45[2];
LABEL_22:
  v49 = swift_allocObject(v40, 0x21, 7uLL);
  v49[2] = v47;
  v49[3] = v48;
  *(v49 + 32) = v59 != 0;
  v24[2] = v41;
  v24[3] = &protocol witness table for _IndexBox<A>;
  v24[4] = v49;
  v24[5] = &protocol witness table for _IndexBox<A>;
  v61 = a1;
  a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  v54 = swift_dynamicCast(v60, &v61, v9, v50, 6uLL, v51, v52, v53, v56);
  v55 = v54;
  if (v54)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
  }

  *a4 = v9;
  *(a4 + 8) = v24;
  *(a4 + 16) = 7;
  *(a4 + 24) = v58;
  *(a4 + 32) = v57;
  *(a4 + 40) = v55;
}

void Set.popFirst()(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v6 = *v3;
  v7 = *(a1 + 16);
  v8 = *v3 & 0xC000000000000001;
  if (v8)
  {
    if (v6 < 0)
    {
      v9 = *v3;
    }

    else
    {
      v9 = (v6 & 0xFFFFFFFFFFFFFF8);
    }

    if ([v9 count])
    {
      v10 = [swift_unknownObjectRetain(v9) count];
      type metadata accessor for __BridgingBufferStorage(0);
      if ((v10 - 0x1000000000000000) >> 61 == 7)
      {
        if (!__OFADD__(8 * v10, 24))
        {
          v12 = swift_bufferAllocate(v11, (8 * v10 + 24), 7uLL);
          v12[2] = v10;
          [v9 getObjects_];
          v6;
          v13 = type metadata accessor for __CocoaSet.Index.Storage();
          v14 = swift_allocObject(v13, 0x20, 7uLL);
          *(v14 + 16) = v9;
          *(v14 + 24) = v12;
          v6;
          v15 = 0;
LABEL_17:
          v23 = type metadata accessor for Set._Variant(0, v7, *(a1 + 24), a3);
          Set._Variant.remove(at:)(v14, v15, v8 != 0, v23, a2);
          sub_180615F30(v14, v15, v8 != 0);
          v22 = 0;
          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  else if (*(v6 + 16))
  {
    v16 = 0;
    v17 = (v6 + 56);
    v18 = -1 << *(v6 + 32);
    v14 = -v18;
    v19 = (63 - v18) >> 6;
    while (1)
    {
      v21 = *v17++;
      v20 = v21;
      if (v21)
      {
        break;
      }

      v16 -= 64;
      if (!--v19)
      {
        goto LABEL_16;
      }
    }

    v14 = __clz(__rbit64(v20)) - v16;
LABEL_16:
    v15 = *(v6 + 36);
    goto LABEL_17;
  }

  v22 = 1;
LABEL_18:
  v24 = *(*(v7 - 8) + 56);

  v24(a2, v22, 1, v7);
}

id Set._Variant.capacity.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 24);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return [a1 count];
}

Swift::Void __swiftcall Set.reserveCapacity(_:)(Swift::Int a1)
{
  type metadata accessor for Set._Variant(0, *(v1 + 16), *(v1 + 24), v2);

  Set._Variant.reserveCapacity(_:)(a1);
}

Swift::Void __swiftcall Set._Variant.reserveCapacity(_:)(Swift::Int a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(v1 + 16);
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = (v5 & 0xFFFFFFFFFFFFFF8);
    }

    v8 = [v7 count];
    if (v8 <= a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = v8;
    }

    *v2 = _NativeSet.init(_:capacity:)(v7, v9, v6, *(v3 + 24));
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v5);
    v12 = isUniquelyReferenced_nonNull_native;
    v14 = *v2;
    v13 = *v2;
    *v2 = 0x8000000000000000;
    if (*(v13 + 24) >= a1)
    {
      if (!isUniquelyReferenced_nonNull_native)
      {
        type metadata accessor for _NativeSet(0, v6, *(v3 + 24), v11);
        _NativeSet.copy()();
      }
    }

    else
    {
      type metadata accessor for _NativeSet(0, v6, *(v3 + 24), v11);
      if (v12)
      {
        _NativeSet.resize(capacity:)(a1);
      }

      else
      {
        _NativeSet.copyAndResize(capacity:)(a1);
      }
    }

    *v2 = v14;
  }
}

uint64_t SetAlgebra.isStrictSuperset(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 144))())
  {
    v7 = (*(*(a3 + 8) + 8))(v3, a1, a2) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t SetAlgebra.isStrictSubset(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((*(a3 + 144))(v4))
  {
    v8 = (*(*(a3 + 8) + 8))(a1, v4, a2) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t Set<>.insert<A>(_:)(swift *a1, uint64_t a2, Class *a3, uint64_t a4)
{
  AnyHashable.init<A>(_:)(a2, a3, a4, v13);
  v6 = specialized Set._Variant.insert(_:)(v14, v13);
  v7 = v15;
  v8 = v16;
  __swift_project_boxed_opaque_existential_0Tm(v14, v15);
  (*(v8 + 48))(v13, v7, v8);
  outlined destroy of AnyHashable(v14);
  swift_dynamicCast(a1, v13, qword_1EEEAC6F8, a3, 7uLL, v9, v10, v11, v13[0]);
  return v6 & 1;
}

uint64_t Set<>.update<A>(with:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, swift *a4@<X8>)
{
  AnyHashable.init<A>(_:)(a1, a2, a3, &v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v4);
  *v16 = *v4;
  *v4 = 0x8000000000000000;
  v8 = specialized _NativeSet.update(with:isUnique:)(&v17, isUniquelyReferenced_nonNull_native, &v21);
  *v4 = *v16;
  v9 = v23;
  if (v23)
  {
    v17 = v21;
    v10 = v24;
    v18 = v22;
    v19 = v23;
    v20 = v24;
    __swift_project_boxed_opaque_existential_0Tm(&v17, v23);
    (*(v10 + 48))(v16, v9, v10);
    outlined destroy of AnyHashable(&v17);
    swift_dynamicCast(a4, v16, qword_1EEEAC6F8, a2, 7uLL, v11, v12, v13, v16[0]);
    return (*(*(a2 - 1) + 7))(a4, 0, 1, a2);
  }

  else
  {
    v15 = *(*(a2 - 1) + 7);

    return v15(a4, 1, 1, a2, v8);
  }
}

uint64_t Set<>.remove<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, swift *a4@<X8>)
{
  v7 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  AnyHashable.init<A>(_:)(v9, a2, a3, &v17);
  specialized Set._Variant.remove(_:)(&v17, &v21);
  outlined destroy of AnyHashable(&v17);
  v10 = v23;
  if (!v23)
  {
    return (*(v7 + 56))(a4, 1, 1, a2);
  }

  v17 = v21;
  v11 = v24;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  __swift_project_boxed_opaque_existential_0Tm(&v17, v23);
  (*(v11 + 48))(v16, v10, v11);
  outlined destroy of AnyHashable(&v17);
  swift_dynamicCast(a4, v16, qword_1EEEAC6F8, a2, 7uLL, v12, v13, v14, v16[0]);
  return (*(v7 + 56))(a4, 0, 1, a2);
}

__objc2_class **_NativeSet.bridged()(__objc2_class **a1, unint64_t *a2, void *a3)
{
  if (one-time initialization token for _bridgeInitializedSuccessfully != -1)
  {
    v11 = a2;
    v12 = a3;
    swift_once(&one-time initialization token for _bridgeInitializedSuccessfully, one-time initialization function for _bridgeInitializedSuccessfully, a3);
    a2 = v11;
    a3 = v12;
  }

  if (!_bridgeInitializedSuccessfully)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _orphanedFoundationSubclassesReparented = 1;
  if (a1 == &_swiftEmptySetSingleton)
  {
    a1 = &_swiftEmptySetSingleton;
    &_swiftEmptySetSingleton;
  }

  else if (a1[2])
  {
    v4 = a3;
    v5 = a2;
    if (_swift_isClassOrObjCExistentialType(a2, a2))
    {
      v7 = type metadata accessor for _SetStorage(0, v5, v4, v6);
      if (!swift_dynamicCastClass(a1, v7))
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v8 = type metadata accessor for _SwiftDeferredNSSet(0, v5, v4, v6);
      v9 = swift_allocObject(v8, 0x20, 7uLL);
      v9[2] = 0;
      v9[3] = a1;
      return v9;
    }
  }

  else
  {
    a1;
    return &_swiftEmptySetSingleton;
  }

  return a1;
}

void *_SwiftSetNSEnumerator.init(_:)(uint64_t a1)
{
  v2 = v1;
  v2[3] = 0;
  v4 = *(a1 + 24);
  v2[2] = v4;
  v5 = v4;
  v7 = _SwiftDeferredNSSet.bridgeElements()(v5, v6);
  a1;
  v8 = v2[3];
  v2[3] = v7;
  v8;
  v9 = 0;
  v10 = v2[2];
  v11 = (v10 + 56);
  v12 = -1 << *(v10 + 32);
  v13 = -v12;
  v14 = (63 - v12) >> 6;
  while (1)
  {
    v16 = *v11++;
    v15 = v16;
    if (v16)
    {
      break;
    }

    v9 -= 64;
    if (!--v14)
    {
      v17 = v13;
      goto LABEL_6;
    }
  }

  v17 = __clz(__rbit64(v15)) - v9;
LABEL_6:
  v2[4] = v17;
  v2[5] = v13;
  return v2;
}

void *_SwiftDeferredNSSet.bridgeElements()(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 96);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  MEMORY[0x1EEE9AC00](v6, v7);
  v10 = (&v37 - v9);
  v12 = atomic_load(v11);
  if (v12)
  {
    type metadata accessor for __BridgingHashBuffer(0);
    v14 = v13;
    v15 = swift_unknownObjectRetain(v12);
    if (!swift_dynamicCastClass(v15, v14))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v38 = v8;
    v46 = v2;
    v16 = v2[3];
    v17 = *(v16 + 32);
    type metadata accessor for __BridgingHashBuffer(0);
    v39 = v18;
    v19 = swift_allocObject(v18, ((8 << v17) + 40), 7uLL);
    v19[2] = v16;
    v19[3] = v16 + 56;
    v40 = v19;
    v41 = v16 + 56;
    v19[4] = ~(-1 << v17);
    if (1 << v17 < 64)
    {
      v20 = ~(-1 << (1 << v17));
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v16 + 56);
    v22 = ((1 << v17) + 63) >> 6;
    v44 = v4 + 16;
    v45 = v4;
    v37 = (v4 + 32);
    v42 = (v4 + 8);
    v43 = v19 + 5;
    v16;
    v23 = 0;
LABEL_8:
    if (v21)
    {
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      goto LABEL_15;
    }

    v25 = v23;
    while (1)
    {
      v23 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v23 >= v22)
      {
        break;
      }

      v26 = *(v41 + 8 * v23);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
LABEL_15:
        v27 = v24 | (v23 << 6);
        (*(v45 + 16))(v10, *(v46[3] + 48) + *(v45 + 72) * v27, v3);
        if (_swift_isClassOrObjCExistentialType(v3, v3))
        {
          if (v5 == 8)
          {
            v28 = *v10;
            v29 = *v42;
            swift_unknownObjectRetain(*v10);
            v29(v10, v3);
            v5 = 8;
            v43[v27] = v28;
            goto LABEL_8;
          }

LABEL_26:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v30 = v38;
        (*v37)(v38, v10, v3);
        v31 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v30, v3);
        v43[v27] = v31;
        goto LABEL_8;
      }
    }

    v32 = v40;
    v40;
    v33 = 0;
    v34 = v46 + 2;
    atomic_compare_exchange_strong(v46 + 2, &v33, v32);
    if (v33)
    {
      swift_unknownObjectRelease(v32);
    }

    v12 = atomic_load(v34);
    if (!v12)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v35 = swift_unknownObjectRetain(v12);
    if (!swift_dynamicCastClass(v35, v39))
    {
LABEL_27:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v32;
  }

  return v12;
}

unint64_t *_SwiftDictionaryNSEnumerator.bridgedKey(at:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 96);
  v4 = *(v3 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = (&v11 - v6);
  v8 = v2[3];
  if (v8)
  {
    v9 = *(v8 + 8 * v5 + 40);
    swift_unknownObjectRetain(v9);
  }

  else
  {
    (*(v4 + 16))(v7, *(v2[2] + 48) + *(v4 + 72) * v5, v3);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)(v7, v3);
    (*(v4 + 8))(v7, v3);
  }

  return v9;
}

unint64_t *_SwiftSetNSEnumerator.nextObject()()
{
  offset = v0[4].offset;
  if (offset == v0[5].offset)
  {
    return 0;
  }

  v0[4].offset = _HashTable.occupiedBucket(after:)(v0[4]).offset;
  return _SwiftDictionaryNSEnumerator.bridgedKey(at:)(offset, v3);
}

id @objc _SwiftDictionaryNSEnumerator.nextObject()(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a1;
  v6 = a3(v5);
  a1;

  return v6;
}

uint64_t @objc _SwiftDictionaryNSEnumerator.countByEnumerating(with:objects:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  a1;
  v10 = a6(a3, a4);
  a1;
  return v10;
}

uint64_t _SwiftDictionaryNSEnumerator.__ivar_destroyer()
{
  *(v0 + 16);
  v1 = *(v0 + 24);

  return v1;
}

void _SwiftDictionaryNSEnumerator.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v0;
  v1;
  v2 = *(v0 + 24);
  v0;
  v2;

  swift_deallocClassInstance(v0);
}

id @objc _SwiftDeferredNSSet.copy(with:)()
{
  v0 = specialized _SwiftDeferredNSDictionary.copy(with:)();

  return swift_unknownObjectRetain(v0);
}

void *_SwiftDeferredNSSet.member(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(*v4 + 96);
  v8 = type metadata accessor for Optional(0, v7, a3, a4);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v41 - v12);
  v14 = *(v7 - 1);
  v16 = MEMORY[0x1EEE9AC00](v11, v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v41 - v20;
  _conditionallyBridgeFromObjectiveC<A>(_:_:)(a1, v7, v13, v22);
  if ((*(v14 + 48))(v13, 1, v7) == 1)
  {
    (*(v9 + 8))(v13, v8);
    return 0;
  }

  v42 = v14;
  (*(v14 + 32))(v21, v13, v7);
  v41 = v4;
  v23 = v4[3];
  v24 = *(v23 + 40);
  v25 = *(v6 + 104);
  v26 = *(v25 + 32);
  v23;
  v45 = v25;
  v27 = v26(v24, v7, v25);
  v46 = v23;
  v28 = -1 << *(v23 + 32);
  v29 = v27 & ~v28;
  v44 = v23 + 56;
  if (((*(v23 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
  {
LABEL_7:
    v46;
    (*(v42 + 8))(v21, v7);
    return 0;
  }

  v43 = ~v28;
  v30 = *(v42 + 16);
  v31 = *(v42 + 72);
  v32 = (v42 + 8);
  while (1)
  {
    v30(v18, *(v46 + 48) + v31 * v29, v7);
    v33 = v21;
    v34 = (*(*(v45 + 8) + 8))(v18, v21, v7);
    v35 = *v32;
    (*v32)(v18, v7);
    if (v34)
    {
      break;
    }

    v29 = (v29 + 1) & v43;
    v21 = v33;
    if (((*(v44 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v46;
  v37 = (v35)(v33, v7);
  v39 = _SwiftDeferredNSSet.bridgeElements()(v37, v38);
  v40 = v39[v29 + 5];
  swift_unknownObjectRetain(v40);
  v39;
  return v40;
}

void *_SwiftDeferredNSSet.objectEnumerator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _SwiftSetNSEnumerator(0, *(*v4 + 96), *(*v4 + 104), a4);
  v6 = swift_allocObject(v5, 0x30, 7uLL);
  v7 = v4;
  _SwiftSetNSEnumerator.init(_:)(v7);
  return v6;
}

id @objc _SwiftDeferredNSDictionary.keyEnumerator()(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a1;
  v6 = a3(v5);
  a1;

  return v6;
}

uint64_t _SwiftDeferredNSSet.countByEnumerating(with:objects:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  v8 = v7 + 56;
  v9 = -1 << *(v7 + 32);
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v31 = *(a1 + 32);
  v32 = *(a1 + 48);
  if (*a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = 0;
    v13 = -v9;
    v24 = (63 - v9) >> 6;
    v25 = (v7 + 56);
    while (1)
    {
      v27 = *v25++;
      v26 = v27;
      if (v27)
      {
        break;
      }

      v23 -= 64;
      if (!--v24)
      {
        goto LABEL_27;
      }
    }

    v13 = __clz(__rbit64(v26)) - v23;
LABEL_27:
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    v12 = &_fastEnumerationStorageMutationsTarget;
    v11 = 1;
    v10 = a2;
    if (a2)
    {
LABEL_3:
      if ((v13 & 0x8000000000000000) == 0)
      {
        v14 = -v9;
        if (v13 + v9 && (v13 >= v14 || ((*(v8 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13) & 1) == 0))
        {
LABEL_38:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v29 = v10;
        v30 = v12;
        v15 = _SwiftDeferredNSSet.bridgeElements()(a1, a2);
        if (a3 < 0)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v16 = 0;
        if (!a3)
        {
          goto LABEL_32;
        }

        while (1)
        {
          if (v16 == a3)
          {
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          if (v13 == v14)
          {
            break;
          }

          if (v16 == 0x1000000000000000)
          {
            __break(1u);
            goto LABEL_38;
          }

          *(a2 + 8 * v16) = v15[v13 + 5];
          v17 = v13 >> 6;
          if ((*(v8 + 8 * (v13 >> 6)) & (-2 << v13)) != 0)
          {
            v13 = __clz(__rbit64(*(v8 + 8 * (v13 >> 6)) & (-2 << v13))) | v13 & 0xFFFFFFFFFFFFFFC0;
          }

          else
          {
            v18 = v17 << 6;
            v19 = v17 + 1;
            v20 = (v7 + 64 + 8 * v17);
            while (v19 < (63 - v9) >> 6)
            {
              v22 = *v20++;
              v21 = v22;
              v18 += 64;
              ++v19;
              if (v22)
              {
                v13 = __clz(__rbit64(v21)) + v18;
                goto LABEL_19;
              }
            }

            v13 = -v9;
          }

LABEL_19:
          if (++v16 == a3)
          {
            v16 = a3;
            v14 = v13;
            goto LABEL_31;
          }
        }

        v13 = -v9;
LABEL_31:
        if ((v14 & 0x8000000000000000) == 0)
        {
LABEL_32:
          v15;
          *a1 = v11;
          *(a1 + 8) = v29;
          *(a1 + 16) = v30;
          *(a1 + 24) = v13;
          *(a1 + 32) = v31;
          *(a1 + 48) = v32;
          return v16;
        }
      }

LABEL_36:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return 0;
}

uint64_t @objc _SwiftSetNSEnumerator.init(coder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 104);
  swift_unknownObjectRetain(a3);

  return a4(v4, v5);
}

void _SwiftDeferredNSSet.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v0;
  swift_unknownObjectRelease(v1);
  v2 = *(v0 + 24);
  v0;
  v2;

  swift_deallocClassInstance(v0);
}

id __CocoaSet.member(for:)(uint64_t a1, id a2)
{
  v2 = [a2 member_];

  return v2;
}

void __CocoaSet.startIndex.getter(void *a1)
{
  v2 = [swift_unknownObjectRetain(a1) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    if (!__OFADD__(8 * v2, 24))
    {
      v4 = swift_bufferAllocate(v3, (8 * v2 + 24), 7uLL);
      v4[2] = v2;
      [a1 getObjects_];
      swift_unknownObjectRelease(a1);
      v5 = type metadata accessor for __CocoaSet.Index.Storage();
      v6 = swift_allocObject(v5, 0x20, 7uLL);
      v6[2] = a1;
      v6[3] = v4;
      swift_unknownObjectRetain(a1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __CocoaSet.endIndex.getter(void *a1)
{
  v2 = [swift_unknownObjectRetain(a1) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    if (!__OFADD__(8 * v2, 24))
    {
      v4 = swift_bufferAllocate(v3, (8 * v2 + 24), 7uLL);
      v4[2] = v2;
      [a1 getObjects_];
      swift_unknownObjectRelease(a1);
      v5 = type metadata accessor for __CocoaSet.Index.Storage();
      v6 = swift_allocObject(v5, 0x20, 7uLL);
      v6[2] = a1;
      v6[3] = v4;
      swift_unknownObjectRetain(a1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t __CocoaSet.index(after:)(int64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = type metadata accessor for __CocoaSet.Index.Storage();
  if (!swift_dynamicCastClass(v6, v7))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v6 + 2) != a3 || *(*(v6 + 3) + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

swift *__CocoaSet.formIndex(after:isUnique:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  if (*a1 < 0)
  {
    v6 = *a1;
  }

  else
  {
    v6 = (*a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = type metadata accessor for __CocoaSet.Index.Storage();
  result = swift_dynamicCastClass(v6, v7);
  if (!result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v6 + 2) != a3 || v5 >= *(*(v6 + 3) + 16))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  a1[1] = v5 + 1;
  return result;
}

void *__CocoaSet.index(for:)(void *a1, id a2)
{
  v4 = [a2 member_];
  if (!v4)
  {
    return 0;
  }

  swift_unknownObjectRelease(v4);
  v5 = [swift_unknownObjectRetain(a2) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v5 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(8 * v5, 24))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = swift_bufferAllocate(v6, (8 * v5 + 24), 7uLL);
  v7[2] = v5;
  [a2 getObjects_];
  swift_unknownObjectRelease(a2);
  if ((v7[2] & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  v8 = 3;
  do
  {
    v9 = v7[v8];
    swift_unknownObjectRetain(v9);
    isEqual = swift_stdlib_NSObject_isEqual(a1, v9);
    swift_unknownObjectRelease(v9);
    ++v8;
  }

  while ((isEqual & 1) == 0);
  v11 = type metadata accessor for __CocoaSet.Index.Storage();
  v12 = swift_allocObject(v11, 0x20, 7uLL);
  v12[2] = a2;
  v12[3] = v7;
  swift_unknownObjectRetain(a2);
  return v12;
}

id __CocoaSet.member(for:)(swift *a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v4 = type metadata accessor for __CocoaSet.Index.Storage();
  if (!swift_dynamicCastClass(v3, v4))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(v3 + 3);
  if (*(v5 + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *(v5 + 8 * a2 + 24);

  return swift_unknownObjectRetain(v6);
}

void __CocoaDictionary.Index.Storage.__deallocating_deinit()
{
  swift_unknownObjectRelease(*(v0 + 16));
  *(v0 + 24);

  swift_deallocClassInstance(v0);
}

uint64_t __CocoaSet.Iterator.init(_:)(uint64_t a1)
{
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 216) = 0;
  *(v1 + 224) = 0;
  *(v1 + 208) = a1;
  return v1;
}

void __CocoaSet.Iterator.__deallocating_deinit()
{
  swift_unknownObjectRelease(*(v0 + 208));

  swift_deallocClassInstance(v0);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance __CocoaDictionary@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(uint64_t)@<X3>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = a1();
  v8 = swift_allocObject(v7, 0xE8, 7uLL);
  result = a2(v6);
  *a3 = v8;
  return result;
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance __CocoaSet()
{
  v1 = *v0;
  v2 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);
  swift_unknownObjectRelease(v1);
  return v2;
}

id protocol witness for IteratorProtocol.next() in conformance __CocoaSet.Iterator@<X0>(uint64_t *a1@<X8>)
{
  result = __CocoaSet.Iterator.next()();
  *a1 = result;
  return result;
}

int64_t Set._bridgeToObjectiveCImpl()(int64_t result, unint64_t *a2, void *a3)
{
  if ((result & 0xC000000000000001) == 0)
  {
    return _NativeSet.bridged()(result, a2, a3);
  }

  if (result >= 0)
  {
    return result & 0xFFFFFFFFFFFFFF8;
  }

  return result;
}

__objc2_class **static Set._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)(__objc2_class **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _SwiftDeferredNSSet(0, a2, a3, a4);
  v8 = swift_unknownObjectRetain(a1);
  v9 = swift_dynamicCastClass(v8, v7);
  if (v9)
  {
    v11 = v9;
    swift_unknownObjectRelease(a1);
    v12 = *(v11 + 3);
    v12;
    swift_unknownObjectRelease(a1);
  }

  else
  {
    v13 = type metadata accessor for _SetStorage(0, a2, a3, v10);
    v12 = swift_dynamicCastClass(a1, v13);
    swift_unknownObjectRelease(a1);
    if (!v12)
    {
      swift_unknownObjectRelease(a1);
      if (a1 == &_swiftEmptySetSingleton)
      {
        return &_swiftEmptySetSingleton;
      }

      else
      {
        return 0;
      }
    }
  }

  return v12;
}

uint64_t _SetBuilder._target.setter(uint64_t a1)
{
  result = *v1;
  *v1 = a1;
  return result;
}

__objc2_class **_SetBuilder.init(count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return &_swiftEmptySetSingleton;
  }

  type metadata accessor for _SetStorage(0, a2, a3, a4);
  return static _SetStorage.allocate(capacity:)(a1);
}

uint64_t _SetBuilder.add(member:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1, a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 16) >= v2[1])
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v4 + 16))(v6);
  return _NativeSet._unsafeInsertNew(_:)(v6, v7, v3);
}

uint64_t _SetBuilder.take()(uint64_t result, uint64_t a2)
{
  if (*(result + 16) != a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void _swift_setDownCastIndirect(unint64_t *a1, __objc2_class ***a2, unint64_t *a3, ValueMetadata *a4, void *a5, uint64_t a6)
{
  v11 = *a1;
  v12 = *a1;
  v13 = _setDownCast<A, B>(_:)(v12, a3, a4, a5, a6);
  v11;
  *a2 = v13;
}

__objc2_class **_setDownCast<A, B>(_:)(int64_t a1, unint64_t *a2, ValueMetadata *a3, void *a4, uint64_t a5)
{
  v109 = a5;
  v106 = *(a2 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v108 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v107 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Optional(0, v13, v14, v15);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v93 - v24;
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v93 - v28;
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v93 - v31;
  if (_swift_isClassOrObjCExistentialType(a2, a2) && _swift_isClassOrObjCExistentialType(a3, a3))
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v34 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v34 = a1;
      }

      v35 = (~(v34 >> 1) & 0x4000000000000000 | v34);
      a1;
    }

    else
    {
      v91 = a1;
      v92 = _NativeSet.bridged()(v91, a2, a4);
      return (~(v92 >> 1) & 0x4000000000000000 | v92);
    }

    return v35;
  }

  v98 = v25;
  v36 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v37 = a1;
    }

    else
    {
      v37 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v38 = [v37 count];
    v104 = v17;
    if (v38)
    {
      goto LABEL_12;
    }

LABEL_14:
    v35 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  v38 = *(a1 + 16);
  v104 = v17;
  if (!v38)
  {
    goto LABEL_14;
  }

LABEL_12:
  type metadata accessor for _SetStorage(0, a3, v109, v33);
  v35 = static _SetStorage.allocate(capacity:)(v38);
LABEL_15:
  v110[1] = v35;
  v101 = v35;
  if (a3 != &type metadata for String)
  {
    v96 = v16;
    v97 = v21;
    v103 = a3;
    if (v36)
    {
      if (a1 < 0)
      {
        v39 = a1;
      }

      else
      {
        v39 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v40 = type metadata accessor for __CocoaSet.Iterator();
      v41 = swift_allocObject(v40, 0xE8, 7uLL);
      v42 = 0;
      v43 = 0;
      v44 = 0;
      *(v41 + 208) = v39;
      *(v41 + 216) = 0;
      *(v41 + 16) = 0u;
      *(v41 + 32) = 0u;
      *(v41 + 48) = 0u;
      *(v41 + 64) = 0u;
      *(v41 + 80) = 0u;
      *(v41 + 96) = 0u;
      *(v41 + 112) = 0u;
      *(v41 + 128) = 0u;
      *(v41 + 144) = 0u;
      *(v41 + 160) = 0u;
      *(v41 + 176) = 0u;
      *(v41 + 192) = 0u;
      *(v41 + 224) = 0;
      v45 = v41 | 0x8000000000000000;
    }

    else
    {
      v53 = -1 << *(a1 + 32);
      v43 = ~v53;
      v42 = a1 + 56;
      v54 = -v53;
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      else
      {
        v55 = -1;
      }

      v44 = v55 & *(a1 + 56);
      v45 = a1;
    }

    v56 = v45 & 0x7FFFFFFFFFFFFFFFLL;
    v105 = (v106 + 56);
    v94 = (v106 + 48);
    v95 = (v104 + 16);
    v93 = (v104 + 8);
    v57 = (v106 + 32);
    v58 = (v43 + 64) >> 6;
    v99 = v43;
    v100 = v106 + 16;
    a1;
    v35;
    v104 = 0;
    v102 = v45;
    while ((v45 & 0x8000000000000000) == 0)
    {
      if (v44)
      {
        v59 = v104;
        goto LABEL_32;
      }

      v66 = v104;
      do
      {
        v59 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (v59 >= v58)
        {
          goto LABEL_54;
        }

        v44 = *(v42 + 8 * v59);
        ++v66;
      }

      while (!v44);
      v104 = v59;
LABEL_32:
      v60 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v61 = v106;
      (*(v106 + 16))(v29, *(v45 + 48) + *(v106 + 72) * (v60 | (v59 << 6)), a2);
      (*(v61 + 56))(v29, 0, 1, a2);
LABEL_33:
      v62 = v108;
      (*v57)(v108, v29, a2);
      v63 = v107;
      v64 = v62;
      v65 = v103;
      swift_dynamicCast(v107, v64, a2, v103, 7uLL);
      _NativeSet._unsafeInsertNew(_:)(v63, v35, v65);
      v45 = v102;
    }

    v67 = *(v56 + 216);
    if ((v67 & 0x8000000000000000) == 0)
    {
      if (v67 != *(v56 + 224))
      {
        v69 = *(v56 + 24);
        if (v69)
        {
          v70 = v105;
          if (v67 >> 60)
          {
            goto LABEL_81;
          }

          goto LABEL_48;
        }

LABEL_83:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v68 = [*(v56 + 208) countByEnumeratingWithState:v56 + 16 objects:v56 + 80 count:16];
      *(v56 + 224) = v68;
      if (v68)
      {
        *(v56 + 216) = 0;
        v69 = *(v56 + 24);
        if (v69)
        {
          v67 = 0;
          v70 = v105;
LABEL_48:
          v71 = (v69 + 8 * v67);
          if ((v71 & 7) == 0)
          {
            v72 = *v71;
            *(v56 + 216) = v67 + 1;
            swift_unknownObjectRetain(v72);
            if (_swift_isClassOrObjCExistentialType(a2, a2))
            {
              v110[0] = v72;
              swift_dynamicCast(v29, v110, qword_1EEEAC710, a2, 7uLL);
              v73 = *v70;
            }

            else
            {
              v73 = *v70;
              v73(v98, 1, 1, a2);
              _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v72, a2, v98);
              (*v95)(v97, v98, v96);
              if ((*v94)(v97, 1, a2) == 1)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              swift_unknownObjectRelease(v72);
              (*v93)(v98, v96);
              (*v57)(v29, v97, a2);
            }

            v73(v29, 0, 1, a2);
            v35 = v101;
            goto LABEL_33;
          }

          goto LABEL_82;
        }

        goto LABEL_83;
      }

      *(v56 + 216) = -1;
    }

LABEL_54:
    (*v105)(v29, 1, 1, a2);
    _sSh8IteratorV8_VariantOySS__GWOe_0(v45);
    goto LABEL_73;
  }

  if (v36)
  {
    if (a1 < 0)
    {
      v46 = a1;
    }

    else
    {
      v46 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v47 = type metadata accessor for __CocoaSet.Iterator();
    v48 = swift_allocObject(v47, 0xE8, 7uLL);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    *(v48 + 208) = v46;
    *(v48 + 216) = 0;
    *(v48 + 16) = 0u;
    *(v48 + 32) = 0u;
    *(v48 + 48) = 0u;
    *(v48 + 64) = 0u;
    *(v48 + 80) = 0u;
    *(v48 + 96) = 0u;
    *(v48 + 112) = 0u;
    *(v48 + 128) = 0u;
    *(v48 + 144) = 0u;
    *(v48 + 160) = 0u;
    *(v48 + 176) = 0u;
    *(v48 + 192) = 0u;
    *(v48 + 224) = 0;
    v52 = v48 | 0x8000000000000000;
  }

  else
  {
    v74 = -1 << *(a1 + 32);
    v50 = ~v74;
    v49 = a1 + 56;
    v75 = -v74;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    else
    {
      v76 = -1;
    }

    v51 = v76 & *(a1 + 56);
    v52 = a1;
  }

  v77 = (v106 + 56);
  v78 = (v50 + 64) >> 6;
  v103 = v50;
  v104 = v106 + 16;
  v79 = (v106 + 32);
  a1;
  v101;
  v105 = 0;
  while ((v52 & 0x8000000000000000) != 0)
  {
    v87 = __CocoaSet.Iterator.next()();
    if (!v87)
    {
      goto LABEL_72;
    }

    v89 = v87;
    _forceBridgeFromObjectiveC<A>(_:_:)(v87, a2, v32, v88);
    swift_unknownObjectRelease(v89);
LABEL_62:
    (*v77)(v32, 0, 1, a2);
    v82 = v108;
    (*v79)(v108, v32, a2);
    v83 = v107;
    swift_dynamicCast(v107, v82, a2, &type metadata for String, 7uLL);
    v85 = type metadata accessor for _NativeSet(0, &type metadata for String, v109, v84);
    _NativeSet._unsafeUpdate(with:)(v83, v85);
  }

  if (v51)
  {
    v80 = v105;
LABEL_61:
    v81 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    (*(v106 + 16))(v32, *(v52 + 48) + *(v106 + 72) * (v81 | (v80 << 6)), a2);
    goto LABEL_62;
  }

  v86 = v105;
  while (1)
  {
    v80 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      goto LABEL_80;
    }

    if (v80 >= v78)
    {
      break;
    }

    v51 = *(v49 + 8 * v80);
    v86 = (v86 + 1);
    if (v51)
    {
      v105 = v80;
      goto LABEL_61;
    }
  }

LABEL_72:
  (*v77)(v32, 1, 1, a2);
  _sSh8IteratorV8_VariantOySS__GWOe_0(v52);
  v35 = v101;
LABEL_73:
  v35;
  return v35;
}

BOOL _swift_setDownCastConditionalIndirect(unint64_t *a1, __objc2_class ***a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *a1;
  v13 = _setDownCastConditional<A, B>(_:)(v11, a3, a4, v12, a6);
  v10;
  if (v13)
  {
    *a2 = v13;
  }

  return v13 != 0;
}

__objc2_class **_setDownCastConditional<A, B>(_:)(int64_t a1, Class *a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v156 = a5;
  v153 = *(a2 - 1);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v147 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v149 = &v130 - v11;
  v14 = type metadata accessor for Optional(0, v12, v12, v13);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = (&v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v148 = (&v130 - v22);
  v141 = *(a3 - 1);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v146 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v155 = &v130 - v28;
  MEMORY[0x1EEE9AC00](v27, v29);
  v145 = &v130 - v30;
  v33 = type metadata accessor for Optional(0, a2, v31, v32);
  v143 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v37 = &v130 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  v154 = &v130 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v152 = &v130 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v151 = &v130 - v46;
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v48 = a1;
    }

    else
    {
      v48 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v49 = [v48 count];
  }

  else
  {
    v49 = *(a1 + 16);
  }

  v133 = v37;
  v134 = v33;
  if (v49)
  {
    type metadata accessor for _SetStorage(0, a3, v156, v45);
    v50 = static _SetStorage.allocate(capacity:)(v49);
  }

  else
  {
    v50 = &_swiftEmptySetSingleton;
  }

  v51 = v154;
  v157[1] = v50;
  v150 = v50;
  v136 = v14;
  v135 = v15;
  if (a3 != &type metadata for String)
  {
    v144 = v19;
    if (v47)
    {
      v52 = a2;
      if (a1 < 0)
      {
        v53 = a1;
      }

      else
      {
        v53 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v54 = type metadata accessor for __CocoaSet.Iterator();
      v55 = swift_allocObject(v54, 0xE8, 7uLL);
      v137 = 0;
      v138 = 0;
      *(v55 + 208) = v53;
      *(v55 + 216) = 0;
      v56 = 0;
      *(v55 + 16) = 0u;
      *(v55 + 32) = 0u;
      *(v55 + 48) = 0u;
      *(v55 + 64) = 0u;
      *(v55 + 80) = 0u;
      *(v55 + 96) = 0u;
      *(v55 + 112) = 0u;
      *(v55 + 128) = 0u;
      *(v55 + 144) = 0u;
      *(v55 + 160) = 0u;
      *(v55 + 176) = 0u;
      *(v55 + 192) = 0u;
      *(v55 + 224) = 0;
      v57 = v55 | 0x8000000000000000;
    }

    else
    {
      v52 = a2;
      v64 = -1;
      v65 = -1 << *(a1 + 32);
      v138 = ~v65;
      v66 = *(a1 + 56);
      v137 = a1 + 56;
      v67 = -v65;
      if (v67 < 64)
      {
        v64 = ~(-1 << v67);
      }

      v56 = v64 & v66;
      v57 = a1;
    }

    v149 = v57;
    v140 = v57 & 0x7FFFFFFFFFFFFFFFLL;
    v148 = (v153 + 56);
    v132 = (v143 + 2);
    v131 = (v153 + 48);
    v130 = (v143 + 1);
    v145 = (v153 + 32);
    v68 = (v138 + 64) >> 6;
    v139 = v153 + 16;
    v142 = (v141 + 6);
    v143 = (v141 + 7);
    v141 += 4;
    a1;
    v69 = 0;
    v70 = v149;
    if ((v149 & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_25:
    v71 = v140;
    v72 = *(v140 + 216);
    v73 = v52;
    v74 = v152;
    if ((v72 & 0x8000000000000000) == 0)
    {
      if (v72 != *(v140 + 224))
      {
        v76 = *(v140 + 24);
        if (v76)
        {
          v77 = v148;
          if (v72 >> 60)
          {
            goto LABEL_76;
          }

          goto LABEL_32;
        }

LABEL_78:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v75 = [*(v140 + 208) countByEnumeratingWithState:v140 + 16 objects:v140 + 80 count:16];
      v71 = v140;
      *(v140 + 224) = v75;
      if (v75)
      {
        *(v71 + 216) = 0;
        v76 = *(v71 + 24);
        if (v76)
        {
          v72 = 0;
          v77 = v148;
LABEL_32:
          v78 = (v76 + 8 * v72);
          if ((v78 & 7) != 0)
          {
            goto LABEL_77;
          }

          v151 = v56;
          v79 = *v78;
          *(v71 + 216) = v72 + 1;
          swift_unknownObjectRetain(v79);
          if (_swift_isClassOrObjCExistentialType(v73, v73))
          {
            v157[0] = v79;
            swift_dynamicCast(v74, v157, qword_1EEEAC710, v73, 7uLL);
            v80 = *v77;
          }

          else
          {
            v80 = *v77;
            v80(v51, 1, 1, v73);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v79, v73, v51);
            v82 = v51;
            v83 = v133;
            v84 = v134;
            (*v132)(v133, v82, v134);
            if ((*v131)(v83, 1, v73) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            swift_unknownObjectRelease(v79);
            (*v130)(v82, v84);
            v74 = v152;
            (*v145)(v152, v83, v73);
          }

          v80(v74, 0, 1, v73);
          v81 = v69;
          v56 = v151;
          while (1)
          {
            v88 = v147;
            (*v145)(v147, v74, v73);
            v89 = v88;
            v90 = v144;
            v91 = swift_dynamicCast(v144, v89, v73, a3, 6uLL);
            (*v143)(v90, v91 ^ 1u, 1, a3);
            v92 = (*v142)(v90, 1, a3);
            v50 = v150;
            if (v92 == 1)
            {
              break;
            }

            v52 = v73;
            v93 = *v141;
            v94 = v146;
            (*v141)(v146, v90, a3);
            v95 = v155;
            v93(v155, v94, a3);
            _NativeSet._unsafeInsertNew(_:)(v95, v50, a3);
            v69 = v81;
            v51 = v154;
            v70 = v149;
            if ((v149 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

LABEL_38:
            v85 = v56;
            v81 = v69;
            v73 = v52;
            v74 = v152;
            if (!v56)
            {
              v86 = v69;
              while (1)
              {
                v81 = v86 + 1;
                if (__OFADD__(v86, 1))
                {
                  break;
                }

                if (v81 >= v68)
                {
                  v96 = v70;
                  (*v148)(v152, 1, 1, v73);
                  v97 = v96;
                  goto LABEL_48;
                }

                v85 = *(v137 + 8 * v81);
                ++v86;
                if (v85)
                {
                  goto LABEL_43;
                }
              }

              __break(1u);
LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_43:
            v151 = v56;
            v56 = (v85 - 1) & v85;
            v87 = v153;
            (*(v153 + 16))(v152, *(v70 + 48) + *(v153 + 72) * (__clz(__rbit64(v85)) | (v81 << 6)), v73);
            (*(v87 + 56))(v74, 0, 1, v73);
          }

          _sSh8IteratorV8_VariantOySS__GWOe_0(v149);
          v50;
          (*(v135 + 8))(v90, v136);
          return 0;
        }

        goto LABEL_78;
      }

      *(v71 + 216) = -1;
      v70 = v149;
    }

    v129 = v70;
    (*v148)(v74, 1, 1, v73);
    v97 = v129;
LABEL_48:
    _sSh8IteratorV8_VariantOySS__GWOe_0(v97);
    return v50;
  }

  if (v47)
  {
    if (a1 < 0)
    {
      v58 = a1;
    }

    else
    {
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v59 = type metadata accessor for __CocoaSet.Iterator();
    v60 = swift_allocObject(v59, 0xE8, 7uLL);
    v61 = 0;
    v62 = 0;
    v63 = 0;
    *(v60 + 208) = v58;
    *(v60 + 216) = 0;
    *(v60 + 16) = 0u;
    *(v60 + 32) = 0u;
    *(v60 + 48) = 0u;
    *(v60 + 64) = 0u;
    *(v60 + 80) = 0u;
    *(v60 + 96) = 0u;
    *(v60 + 112) = 0u;
    *(v60 + 128) = 0u;
    *(v60 + 144) = 0u;
    *(v60 + 160) = 0u;
    *(v60 + 176) = 0u;
    *(v60 + 192) = 0u;
    *(v60 + 224) = 0;
    v154 = v60 | 0x8000000000000000;
  }

  else
  {
    v98 = -1 << *(a1 + 32);
    v62 = ~v98;
    v61 = a1 + 56;
    v99 = -v98;
    if (v99 < 64)
    {
      v100 = ~(-1 << v99);
    }

    else
    {
      v100 = -1;
    }

    v63 = v100 & *(a1 + 56);
    v154 = a1;
  }

  v101 = v151;
  v152 = (v153 + 56);
  v102 = (v62 + 64) >> 6;
  v142 = v62;
  v143 = (v153 + 16);
  v146 = (v141 + 7);
  v147 = (v153 + 32);
  v144 = (v141 + 6);
  v103 = (v141 + 4);
  a1;
  v104 = 0;
  v105 = v154;
  if ((v154 & 0x8000000000000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_54:
  v106 = __CocoaSet.Iterator.next()();
  if (v106)
  {
    v108 = v151;
    v109 = v106;
    _forceBridgeFromObjectiveC<A>(_:_:)(v106, a2, v151, v107);
    v110 = v109;
    v101 = v108;
    swift_unknownObjectRelease(v110);
    v111 = v104;
    v112 = v63;
    while (1)
    {
      (*v152)(v101, 0, 1, a2);
      v115 = v101;
      v116 = v149;
      (*v147)(v149, v115, a2);
      v117 = v116;
      v118 = v148;
      v119 = swift_dynamicCast(v148, v117, a2, &type metadata for String, 6uLL);
      (*v146)(v118, v119 ^ 1u, 1, &type metadata for String);
      if ((*v144)(v118, 1, &type metadata for String) == 1)
      {
        _sSh8IteratorV8_VariantOySS__GWOe_0(v154);
        v150;
        (*(v135 + 8))(v118, v136);
        return 0;
      }

      v120 = v118;
      v121 = *v103;
      v122 = v145;
      (*v103)(v145, v120, &type metadata for String);
      v123 = v155;
      v121(v155, v122, &type metadata for String);
      v125 = type metadata accessor for _NativeSet(0, &type metadata for String, v156, v124);
      _NativeSet._unsafeUpdate(with:)(v123, v125);
      v104 = v111;
      v63 = v112;
      v101 = v151;
      v105 = v154;
      if ((v154 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

LABEL_56:
      v113 = v63;
      v111 = v104;
      if (!v63)
      {
        break;
      }

LABEL_61:
      v112 = (v113 - 1) & v113;
      (*(v153 + 16))(v101, *(v105 + 48) + *(v153 + 72) * (__clz(__rbit64(v113)) | (v111 << 6)), a2);
    }

    v114 = v104;
    while (1)
    {
      v111 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        goto LABEL_75;
      }

      if (v111 >= v102)
      {
        break;
      }

      v113 = *(v61 + 8 * v111);
      ++v114;
      if (v113)
      {
        goto LABEL_61;
      }
    }

    v126 = v105;
    (*v152)(v101, 1, 1, a2);
    v127 = v126;
  }

  else
  {
    (*v152)(v151, 1, 1, a2);
    v127 = v154;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v127);
  return v150;
}

uint64_t _SetStorage.deinit()
{
  if (*(v0 + 16) < 1)
  {
    return v0;
  }

  v1 = *(*v0 + 168);
  if ((*(*(v1 - 8) + 82) & 1) == 0)
  {
    return v0;
  }

  v3 = *(v1 - 8);
  v4 = 0;
  v5 = 1 << *(v0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = *(v0 + 48);
  v8 = v6 & *(v0 + 56);
  for (i = (v5 + 63) >> 6; v8; result = (*(v3 + 8))(v7 + *(v3 + 72) * (v10 | (v4 << 6)), v1))
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    ;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= i)
    {
      return v0;
    }

    v12 = *(v0 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void _SetStorage.__deallocating_deinit()
{
  _SetStorage.deinit();

  swift_deallocClassInstance(v0);
}

id @objc _SetStorage.copy(with:)()
{
  v0 = specialized _SwiftDeferredNSDictionary.copy(with:)();

  return swift_unknownObjectRetain(v0);
}

void *_SetStorage.objectEnumerator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _SwiftSetNSEnumerator(0, *(*v4 + 168), *(*v4 + 176), a4);
  v6 = swift_allocObject(v5, 0x30, 7uLL);
  v7 = v6;
  v8 = 0;
  v6[2] = v4;
  v6[3] = 0;
  v9 = v4 + 7;
  v10 = -1 << *(v4 + 32);
  v11 = -v10;
  v12 = (63 - v10) >> 6;
  while (1)
  {
    v14 = *v9++;
    v13 = v14;
    if (v14)
    {
      break;
    }

    v8 -= 64;
    if (!--v12)
    {
      v15 = v11;
      goto LABEL_6;
    }
  }

  v15 = __clz(__rbit64(v13)) - v8;
LABEL_6:
  v6[4] = v15;
  v6[5] = v11;
  v4;
  return v7;
}

void *@objc _SetStorage.objectEnumerator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = _SetStorage.objectEnumerator()(a1, a2, a3, a4);

  return v4;
}

uint64_t _SetStorage.countByEnumerating(with:objects:count:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = *(*v2 + 168);
  v5 = *(v4 - 1);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v13 = (&v44 - v12);
  v14 = (v2 + 56);
  v15 = -1 << *(v2 + 32);
  v16 = *v9;
  v17 = v9[1];
  v18 = v9[2];
  v19 = v9[3];
  v20 = *(v9 + 3);
  v60 = *(v9 + 2);
  v61 = v20;
  if (!v16)
  {
    goto LABEL_26;
  }

  if (!v3)
  {
    return 0;
  }

LABEL_3:
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  v21 = -v15;
  if (v19 + v15 && (v19 >= v21 || ((*(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19) & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v10 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v10)
  {
    v46 = v17;
    v47 = v16;
    v22 = 0;
    v23 = v5 + 2;
    v44 = (v5 + 4);
    v45 = v11;
    v59 = (v5 + 1);
    v50 = (63 - v15) >> 6;
    v48 = v18;
    v49 = v2 + 64;
    while (1)
    {
      if (v22 == v10)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v19 == v21)
      {
        break;
      }

      v53 = v14;
      v57 = v9;
      v58 = v10;
      v24 = *(v2 + 48) + v5[9] * v19;
      v25 = v5[2];
      v51 = v23;
      v25(v13, v24, v4);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v4, v4);
      v55 = v4;
      v56 = v13;
      v54 = v6;
      v52 = v21;
      if (isClassOrObjCExistentialType)
      {
        if (v6 != 8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v6 = *v13;
        v27 = v5;
        v28 = v3;
        v29 = *v59;
        swift_unknownObjectRetain(*v13);
        v9 = v29(v13, v4);
        v3 = v28;
        v5 = v27;
        if (v22 == 0x1000000000000000)
        {
LABEL_25:
          __break(1u);
LABEL_26:
          v37 = 0;
          v19 = -v15;
          v38 = (63 - v15) >> 6;
          v39 = v14;
          while (1)
          {
            v41 = *v39++;
            v40 = v41;
            if (v41)
            {
              break;
            }

            v37 -= 64;
            if (!--v38)
            {
              goto LABEL_34;
            }
          }

          v19 = __clz(__rbit64(v40)) - v37;
LABEL_34:
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          v18 = &_fastEnumerationStorageMutationsTarget;
          v16 = 1;
          v17 = v3;
          if (!v3)
          {
            return 0;
          }

          goto LABEL_3;
        }
      }

      else
      {
        v36 = v45;
        (*v44)(v45, v13, v4);
        v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v36, v4);
        v6 = v9;
        if (v22 == 0x1000000000000000)
        {
          goto LABEL_25;
        }
      }

      *(v3 + 8 * v22) = v6;
      swift_unknownObjectRelease(v6);
      v30 = v19 >> 6;
      v14 = v53;
      if ((v53[v19 >> 6] & (-2 << v19)) != 0)
      {
        v19 = __clz(__rbit64(v53[v19 >> 6] & (-2 << v19))) | v19 & 0xFFFFFFFFFFFFFFC0;
        v9 = v57;
        v10 = v58;
        v4 = v55;
        v13 = v56;
        v6 = v54;
        v23 = v51;
        v21 = v52;
      }

      else
      {
        v31 = v30 << 6;
        v32 = v30 + 1;
        v33 = (v49 + 8 * v30);
        v9 = v57;
        v10 = v58;
        v4 = v55;
        v13 = v56;
        v6 = v54;
        v23 = v51;
        v21 = v52;
        while (v32 < v50)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            v19 = __clz(__rbit64(v34)) + v31;
            goto LABEL_22;
          }
        }

        v19 = v52;
      }

LABEL_22:
      if (++v22 == v10)
      {
        v22 = v10;
        v21 = v19;
        goto LABEL_39;
      }
    }

    v19 = v21;
LABEL_39:
    v16 = v47;
    v18 = v48;
    v17 = v46;
    if (v21 < 0)
    {
LABEL_40:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    v22 = 0;
  }

  *v9 = v16;
  v9[1] = v17;
  v9[2] = v18;
  v9[3] = v19;
  v42 = v61;
  *(v9 + 2) = v60;
  *(v9 + 3) = v42;
  return v22;
}

uint64_t @objc _SwiftDeferredNSDictionary.countByEnumerating(with:objects:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  a1;
  v11 = a6(a3, a4, a5);
  a1;
  return v11;
}

unint64_t *_SetStorage.member(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *(v7 + 168);
  v9 = type metadata accessor for Optional(0, v8, a3, a4);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = (&v38 - v13);
  v15 = *(v8 - 1);
  v17 = MEMORY[0x1EEE9AC00](v12, v16);
  v19 = (&v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v38 - v21;
  _conditionallyBridgeFromObjectiveC<A>(_:_:)(a1, v8, v14, v23);
  if ((*(v15 + 48))(v14, 1, v8) == 1)
  {
    (*(v10 + 8))(v14, v9);
    return 0;
  }

  (*(v15 + 32))(v22, v14, v8);
  v24 = v5[5];
  v25 = *(*(v7 + 176) + 32);
  v42 = *(v7 + 176);
  v43 = v22;
  v26 = v25(v24, v8);
  v27 = -1 << *(v5 + 32);
  v28 = v26 & ~v27;
  v39 = v5 + 7;
  if (((*(v5 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v28) & 1) == 0)
  {
    v35 = *(v15 + 8);
LABEL_9:
    v35(v43, v8);
    return 0;
  }

  v29 = v15;
  v30 = ~v27;
  v31 = *(v29 + 16);
  v29 += 16;
  v40 = v31;
  v41 = v5;
  v32 = *(v29 + 56);
  v33 = (v29 - 8);
  v38 = (v29 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (1)
  {
    v40(v19, v41[6] + v32 * v28, v8);
    v34 = (*(*(v42 + 8) + 8))(v19, v43, v8);
    v35 = *v33;
    (*v33)(v19, v8);
    if (v34)
    {
      break;
    }

    v28 = (v28 + 1) & v30;
    if (((*(v39 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v35(v43, v8);
  v40(v19, v41[6] + v32 * v28, v8);
  v37 = _bridgeAnythingToObjectiveC<A>(_:)(v19, v8);
  v35(v19, v8);
  return v37;
}

id @objc _SwiftDeferredNSDictionary.object(forKey:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  swift_unknownObjectRetain(a3);
  a1;
  v7 = a4(a3);
  swift_unknownObjectRelease(a3);
  a1;

  return v7;
}

uint64_t (*Set._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return _ArrayBody.count.modify;
}

uint64_t Set._Variant._migrateToNative(_:removing:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v8 = *(a3 + 16);
  v34 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v4;
  *v4;
  v11 = [a1 count];
  v12 = *(a3 + 24);
  v13 = swift_unknownObjectRetain(a1);
  v14 = _NativeSet.init(_:capacity:)(v13, v11, v8, v12);
  v42 = v14;
  v15 = v14[5];
  v16 = *(v12 + 32);
  v14;
  v40 = v12;
  v41 = a2;
  v17 = v16(v15, v8, v12);
  v18 = -1 << *(v14 + 32);
  v19 = v17 & ~v18;
  v36 = v14 + 7;
  if (((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19) & 1) == 0)
  {
LABEL_5:
    v14;
    goto LABEL_6;
  }

  v35 = ~v18;
  v20 = *(v34 + 16);
  v37 = *(v34 + 72);
  v38 = v20;
  v39 = v34 + 16;
  v21 = (v34 + 8);
  while (1)
  {
    v22 = v14;
    v23 = v14[6];
    v24 = v37 * v19;
    v38(v10, v23 + v37 * v19, v8);
    v25 = *(v40 + 8);
    v26 = *(v25 + 8);
    v27 = v26(v10, v41, v8, v25);
    (*v21)(v10, v8);
    if (v27)
    {
      break;
    }

    v19 = (v19 + 1) & v35;
    v14 = v22;
    if (((*(v36 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v22;
  v28 = v33;
  (*(v34 + 32))(v33, *(v22 + 48) + v24, v8);
  type metadata accessor for _NativeSet(0, v8, v40, v29);
  _NativeSet._delete(at:)(v19);
  result = v26(v41, v28, v8, v25);
  if ((result & 1) == 0)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *v32 = v22;
  return result;
}

uint64_t IndexingIterator._position.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 36);
  swift_getAssociatedTypeWitness(0, *(a1 + 24), *(a1 + 16), a2, a3);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v4 + v6, v7);
}

uint64_t IndexingIterator._position.setter(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = *(a2 + 36);
  swift_getAssociatedTypeWitness(0, *(a2 + 24), *(a2 + 16), a3, a4);
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

uint64_t Slice._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(*(a3 + 24) + 160))(a1, a2, *(a3 + 16));
}

{
  return (*(*(a3 + 24) + 176))(a1, a2, *(a3 + 16));
}

uint64_t Slice.indices.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v6, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v49 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v40 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v5, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v47 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v19);
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v20);
  v43 = &v40 - v21;
  v44 = v5;
  swift_getAssociatedTypeWitness(0, v6, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Indices);
  v46 = v22;
  v48 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v45 = &v40 - v24;
  v42 = v6;
  (*(v6 + 96))(v5, v6);
  v25 = *(a1 + 36);
  v26 = *(v8 - 1);
  v27 = v26[2];
  v41 = v17;
  v27(v17, v3, v8);
  v28 = v10;
  v27(&v17[*(v10 + 48)], v3 + v25, v8);
  v29 = v49;
  (*(v49 + 16))(v14, v17, v28);
  v30 = *(v28 + 48);
  v31 = v28;
  v32 = v26[4];
  v33 = v43;
  v32(v43, v14, v8);
  v34 = v26[1];
  v34(&v14[v30], v8);
  (*(v29 + 32))(v14, v41, v31);
  v35 = v47;
  v32(&v33[*(v47 + 36)], &v14[*(v31 + 48)], v8);
  v34(v14, v8);
  v36 = v46;
  v37 = swift_getAssociatedConformanceWitness(v42, v44, v46, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Indices: Collection);
  v38 = v45;
  (*(v37 + 88))(v33, v36, v37);
  (*(v50 + 8))(v33, v35);
  return (*(v48 + 8))(v38, v36);
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5@<X0>(Swift::String::Index a1@<X2>, Swift::String::Index a2@<X3>, unint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t (*a7)(uint64_t)@<X0>)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return (*(*(a5 - 8) + 56))(a6, 1, 1, a5, a3);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v18[0] = a3;
    v18[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v18;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = a3;
    rawBits = a2._rawBits;
    v15 = a4;
    v16 = a1._rawBits;
    v11 = _StringObject.sharedUTF8.getter(a3, a4);
    a1._rawBits = v16;
    a3 = v17;
    a2._rawBits = rawBits;
    a4 = v15;
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5(v11, v12, a1, a2, a3, a4, a7);
  if (!v7)
  {
    return (*(*(a5 - 8) + 56))(a6, 0, 1, a5);
  }

  return result;
}

uint64_t Slice.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[7] = a2;
  v4 = *(a3 + 24);
  v6[2] = *(a3 + 16);
  v6[3] = a4;
  v6[6] = a1;
  return (*(*(v4 + 8) + 72))(partial apply for closure #1 in Slice.withContiguousStorageIfAvailable<A>(_:), v6, a4);
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5(uint64_t a1, uint64_t a2, Swift::String::Index from, Swift::String::Index to, unint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t))
{
  v11 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v13 = from._rawBits & 0xC;
  rawBits = from._rawBits;
  if (v13 == 4 << v11)
  {
    v30 = to._rawBits;
    v32 = from._rawBits;
    v36 = a6;
    v20._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(from)._rawBits;
    to._rawBits = v30;
    from._rawBits = v32;
    a6 = v36;
    rawBits = v20._rawBits;
    if ((v36 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v15 = rawBits >> 16;
      if (v13 != v12)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v31 = to._rawBits;
  v33 = from._rawBits;
  v21 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  if (v21 < rawBits >> 16)
  {
    goto LABEL_27;
  }

  v37 = a6;
  v15 = String.UTF8View._foreignDistance(from:to:)(15, rawBits);
  a6 = v37;
  to._rawBits = v31;
  from._rawBits = v33;
  if (v13 != v12)
  {
    goto LABEL_6;
  }

LABEL_18:
  v34 = v15;
  v38 = a6;
  v22 = to._rawBits;
  v23._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(from)._rawBits;
  to._rawBits = v22;
  a6 = v38;
  from._rawBits = v23._rawBits;
  v15 = v34;
LABEL_6:
  if ((to._rawBits & 0xC) == v12)
  {
    v35 = v15;
    v24 = from._rawBits;
    v25 = a6;
    v26._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(to)._rawBits;
    from._rawBits = v24;
    a6 = v25;
    to._rawBits = v26._rawBits;
    v15 = v35;
    if ((v25 & 0x1000000000000000) == 0)
    {
LABEL_8:
      v16 = (to._rawBits >> 16) - (from._rawBits >> 16);
      v17 = v15 + v16;
      if (!__OFADD__(v15, v16))
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_8;
  }

  v27 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v27 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v27 < from._rawBits >> 16 || v27 < to._rawBits >> 16)
  {
LABEL_27:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v28 = v15;
  v29 = String.UTF8View._foreignDistance(from:to:)(from, to);
  v15 = v28;
  v17 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_9:
  if (v17 < v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v15 < 0 || v17 > a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v18 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v15, v17, a1, a2);
  return a7(v18);
}

uint64_t closure #1 in Slice.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, Class *a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v25 = a4;
  v24[1] = a8;
  v24[2] = a5;
  v26 = a2;
  v24[0] = a1;
  swift_getAssociatedTypeWitness(0, a7, a6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v29 = v11;
  v28 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v24 - v13;
  v27 = type metadata accessor for Slice(0, a6, a7, v15);
  (*(a7 + 64))(a6, a7);
  v16 = *(a7 + 152);
  v17 = v16(v14, a3, a6, a7);
  (*(v28 + 8))(v14, v29);
  v18 = v16(a3, &a3[*(v27 + 36)], a6, a7);
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v19 < v17)
  {
    goto LABEL_7;
  }

  if (v17 < 0 || (v20 = v26, v19 > v26))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(0, *(a7 + 8), a6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v22 = UnsafeBufferPointer.init(rebasing:)(v17, v19, v24[0], v20, v21);
  return v25(v22);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Slice<A>(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0xDFBFuLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Slice.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*Slice.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  swift_getAssociatedTypeWitness(0, *(*(a3 + 24) + 8), *(a3 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(v8, 0x8EFFuLL);
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  Slice.subscript.getter(a2, a3, v9);
  return _ArrayBuffer.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance DefaultIndices<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness(255, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v6 = type metadata accessor for Optional(0, v3, v4, v5);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, 1, 1, v6);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance DefaultIndices<A>@<X0>(unsigned __int16 *a1@<X0>, int *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v13 = *(a1 - 1);
  (*(v13 + 16))(a4, v4, a1);
  WitnessTable = swift_getWitnessTable(a2, a1, v8);
  type metadata accessor for IndexingIterator(0, a1, WitnessTable, v10);
  a3(a1);
  v11 = *(v13 + 8);

  return v11(v4, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance Slice<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t Slice._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v126 = a3;
  v124 = a1;
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness(255, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  swift_getTupleTypeMetadata2(0, v10, v10, "lower upper ", 0);
  v110 = v11;
  v118 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v109 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v108 = &v91 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v107 = type metadata accessor for Range(0, v10, AssociatedConformanceWitness, v17);
  v112 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v18);
  v106 = &v91 - v19;
  v121 = *(v7 + 8);
  swift_getAssociatedTypeWitness(0, v121, v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v21 = v20;
  v115 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v104 = &v91 - v24;
  v122 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v117 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v5, v27);
  v123 = type metadata accessor for IndexingIterator(0, v5, WitnessTable, v29);
  v114 = *(v123 - 8);
  v31 = MEMORY[0x1EEE9AC00](v123, v30);
  v119 = &v91 - v32;
  v125 = v10;
  v33 = *(v10 - 1);
  v111 = v33;
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v91 - v35;
  v135 = v8;
  v136 = v7;
  v120 = a2;
  v137 = a2;
  v138 = v126;
  v37 = *(v5 + 40);
  v128 = v8;
  v105 = v21;
  v40 = type metadata accessor for UnsafeBufferPointer.Iterator(255, v21, v38, v39);
  swift_getTupleTypeMetadata2(0, v40, &type metadata for Int, 0, 0);
  v129 = v41;
  v130 = v7;
  v42 = v7;
  v131 = v4;
  v132 = partial apply for closure #1 in Slice._copyContents(initializing:);
  v133 = &v134;
  v43 = v121[9];
  v44 = v4;
  v116 = v37;
  (v43)(v139, partial apply for closure #1 in Slice.withContiguousStorageIfAvailable<A>(_:), v127, v41, v8);
  if (v140)
  {
    v45 = v118;
    v121 = v7;
    v116 = v8;
    v46 = v122;
    v47 = v117;
    (*(v122 + 32))(v117, v44, v5);
    v48 = v119;
    (*(v46 + 16))(v119, v47, v5);
    v49 = v123;
    v50 = *(v123 + 36);
    v53 = *(v33 + 16);
    v52 = (v33 + 16);
    v51 = v53;
    v53(&v48[v50], v47, v125);
    (*(v46 + 8))(v47, v5);
    v54 = v120;
    v55 = v48;
    if (v120)
    {
      v56 = v126;
      v57 = v124;
      if (v126 < 0)
      {
LABEL_13:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v103 = v51;
      v117 = v52;
      v58 = v121;
      if (v126)
      {
        v59 = 0;
        v102 = (v45 + 16);
        v101 = (v111 + 4);
        ++v111;
        v100 = (v45 + 32);
        v99 = v121 + 20;
        ++v112;
        v98 = v121 + 10;
        v97 = v115 + 16;
        v60 = v121 + 24;
        v96 = v115 + 32;
        v118 = *(AssociatedConformanceWitness + 8);
        v61 = *(v118 + 8);
        AssociatedConformanceWitness = v118 + 8;
        while (1)
        {
          if (v56 == v59)
          {
            goto LABEL_13;
          }

          v62 = v57;
          v120 = v54;
          v63 = &v55[*(v5 + 36)];
          v64 = &v55[v50];
          v94 = v50;
          v65 = v125;
          v95 = v61;
          if (v61(v64, v63, v125, v118))
          {
            break;
          }

          v93 = v59 + 1;
          v66 = v108;
          v92 = v60;
          v67 = v103;
          v103(v108, v119, v65);
          v68 = v110;
          v67(&v66[*(v110 + 48)], v63, v65);
          v69 = v109;
          (*v102)(v109, v66, v68);
          v70 = *(v68 + 48);
          v122 = v5;
          v91 = *v101;
          v71 = v106;
          v91(v106, v69, v65);
          v72 = *v111;
          (*v111)(&v69[v70], v65);
          v73 = v66;
          v55 = v119;
          (*v100)(v69, v73, v68);
          v74 = v107;
          v91(&v71[*(v107 + 36)], &v69[*(v68 + 48)], v65);
          v72(v69, v65);
          v75 = v58[20];
          v76 = v94;
          v77 = v116;
          (v75)(&v55[v94], v71, v116, v121);
          (*v112)(v71, v74);
          v78 = (v121[10])(v139, &v55[v76], v77, v121);
          v79 = v115;
          v80 = v104;
          v81 = v105;
          (*(v115 + 16))(v104);
          v78(v139, 0);
          v60 = v92;
          v82 = v124;
          v56 = v126;
          v83 = v77;
          v58 = v121;
          (v121[24])(&v55[v76], v83, v121);
          v84 = v120;
          v85 = v80;
          v59 = v93;
          (*(v79 + 32))(v120, v85, v81);
          v57 = v82;
          v86 = *(v79 + 72);
          v49 = v123;
          v54 = v84 + v86;
          v5 = v122;
          v50 = v76;
          v61 = v95;
          if (v56 == v59)
          {
            goto LABEL_9;
          }
        }

        (*(v114 + 32))(v62, v55, v49);
        return v59;
      }

      else
      {
LABEL_9:
        (*(v114 + 32))(v57, v55, v49);
      }
    }

    else
    {
      (*(v114 + 32))(v124, v48, v49);
      return 0;
    }
  }

  else
  {
    v56 = v139[2];
    v87 = v125;
    (*(v33 + 16))(v36, v4, v125);
    v88 = *(v7 + 136);
    v89 = v124;
    v88(v36, v56, v8, v42);
    (*(v33 + 8))(v36, v87);
    (*(v122 + 32))(v89, v4, v5);
  }

  return v56;
}

char *closure #1 in Slice._copyContents(initializing:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, Class *a5@<X4>, uint64_t a6@<X5>, char **a7@<X8>)
{
  v8 = result;
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = a2;
    }

    swift_getAssociatedTypeWitness(0, *(a6 + 8), a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v13 = v12;
    result = UnsafeMutablePointer.initialize(from:count:)(v8, v10, a3, v12);
    v14 = *(*(v13 - 1) + 72);
    v15 = &v8[v14 * a2];
    v8 += v14 * v10;
  }

  else if (result)
  {
    swift_getAssociatedTypeWitness(0, *(a6 + 8), a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v10 = 0;
    v17 = *(v16 - 8);
    result = (v16 - 8);
    v15 = &v8[*(v17 + 72) * a2];
  }

  else
  {
    v15 = 0;
    v10 = 0;
  }

  *a7 = v8;
  a7[1] = v15;
  a7[2] = v10;
  return result;
}

char *UnsafeBufferPointer._copyContents(initializing:)(char *__dst, uint64_t a2, char *__src, uint64_t a4, unint64_t *a5)
{
  v5 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = a4;
    }

    UnsafeMutablePointer.initialize(from:count:)(__src, v6, __dst, a5);
    v5 += *(*(a5 - 1) + 72) * v6;
  }

  return v5;
}

uint64_t Slice<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v49 = a1;
  v4 = *(a3 + 8);
  v5 = *(a2 + 16);
  v43[1] = a2;
  v47 = v4;
  v48 = v5;
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v45 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v43 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v44 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v19);
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v20);
  v22 = v43 - v21;
  v23 = *(a2 + 36);
  v24 = *(v8 - 1);
  v25 = v24[2];
  v26 = v17;
  v43[0] = v17;
  v27 = v17;
  v28 = v51;
  v25(v27, v51, v8);
  v25(&v26[*(v10 + 48)], v28 + v23, v8);
  v29 = v45;
  v30 = v10;
  (*(v45 + 16))(v14, v26, v10);
  v31 = *(v10 + 48);
  v32 = v24[4];
  v32(v22, v14, v8);
  v33 = v24[1];
  v33(&v14[v31], v8);
  (*(v29 + 32))(v14, v43[0], v30);
  v34 = v44;
  v32(&v22[*(v44 + 36)], &v14[*(v30 + 48)], v8);
  v33(v14, v8);
  v35 = v48;
  v36 = v49;
  v37 = v47;
  (v47[20])(v49, v22, v48);
  (*(v46 + 8))(v22, v34);
  v38 = (v37[10])(v52, v36, v35);
  v40 = v39;
  swift_getAssociatedTypeWitness(0, v37[1], v35, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v41 - 8) + 16))(v50, v40, v41);
  return v38(v52, 0);
}

uint64_t key path getter for Slice<>.subscript(_:) : <A>Slice<A>A(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return key path getter for DiscontiguousSlice<>.subscript(_:) : <A>DiscontiguousSlice<A>A(a1, a2, a3, type metadata accessor for Slice, Slice<>.subscript.getter);
}

{
  return key path getter for DiscontiguousSlice<>.subscript(_:) : <A>DiscontiguousSlice<A>A(a1, a2, a3, type metadata accessor for Slice, Slice<>.subscript.getter);
}

uint64_t key path setter for Slice<>.subscript(_:) : <A>Slice<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v8 = *(v6 + 8);
  swift_getAssociatedTypeWitness(0, *(v8 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v23 - v13;
  swift_getAssociatedTypeWitness(0, v8, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v23 - v17;
  (*(v19 + 16))(&v23 - v17, a3);
  (*(v11 + 16))(v14, a1, v10);
  v21 = type metadata accessor for Slice(0, v7, v8, v20);
  return Slice<>.subscript.setter(v14, v18, v21, v6);
}

uint64_t Slice<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a1;
  v46 = a2;
  v47 = a4;
  v4 = *(a4 + 8);
  v5 = *(a3 + 16);
  v40 = a3;
  v44 = v4;
  v45 = v5;
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v42 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v38 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v41 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v19);
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v20);
  v22 = &v38 - v21;
  v23 = *(a3 + 36);
  v24 = *(v8 - 1);
  v25 = v24[2];
  v26 = v17;
  v39 = v17;
  v27 = v17;
  v28 = v49;
  v25(v27, v49, v8);
  v25(&v26[*(v10 + 48)], v28 + v23, v8);
  v29 = v42;
  v30 = v10;
  (*(v42 + 16))(v14, v26, v10);
  v31 = *(v10 + 48);
  v32 = v24[4];
  v32(v22, v14, v8);
  v33 = v24[1];
  v33(&v14[v31], v8);
  (*(v29 + 32))(v14, v39, v30);
  v34 = v41;
  v32(&v22[*(v41 + 36)], &v14[*(v30 + 48)], v8);
  v33(v14, v8);
  v35 = v45;
  v36 = v46;
  (v44[20])(v46, v22, v45);
  (*(v43 + 8))(v22, v34);
  return (*(v47 + 24))(v48, v36, v35);
}

void (*Slice<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x58, 0x6DCBuLL);
  }

  else
  {
    v9 = malloc(0x58uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v11 = *(a4 + 8);
  v12 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, *(v11 + 8), v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10[3] = v13;
  v14 = *(v13 - 8);
  v10[4] = v14;
  v15 = *(v14 + 64);
  if (swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc(v15, 0x6DCBuLL);
    v16 = swift_coroFrameAlloc(v15, 0x6DCBuLL);
  }

  else
  {
    v10[5] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v10[6] = v16;
  swift_getAssociatedTypeWitness(0, v11, v12, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10[7] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v10[8] = v19;
  v21 = *(v19 + 64);
  if (swift_coroFrameAlloc)
  {
    v10[9] = swift_coroFrameAlloc(v21, 0x6DCBuLL);
    v22 = swift_coroFrameAlloc(v21, 0x6DCBuLL);
  }

  else
  {
    v10[9] = malloc(v21);
    v22 = malloc(v21);
  }

  v10[10] = v22;
  (*(v20 + 16))();
  Slice<>.subscript.getter(a2, a3, a4, v17);
  return Slice<>.subscript.modify;
}

void Slice<>.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v4 = (*a1)[10];
  if (a2)
  {
    v5 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v9 = v2[4];
    v10 = v2[1];
    v12 = v2[7];
    v11 = *v2;
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v12);
    Slice<>.subscript.setter(v7, v3, v11, v10);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    Slice<>.subscript.setter(v6, v4, *v2, v2[1]);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t Slice<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v51 = a1;
  v4 = *(a3 + 8);
  v5 = *(a2 + 16);
  v43 = a2;
  v46 = v4;
  v47 = v5;
  v48 = a4;
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v44 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v40 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v49 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v19);
  v45 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v20);
  v22 = &v40 - v21;
  v23 = *(a2 + 36);
  v24 = *(v8 - 1);
  v25 = v24[2];
  v41 = v17;
  v26 = v50;
  v25(v17, v50, v8);
  v25(&v17[*(v10 + 48)], v26 + v23, v8);
  v27 = v44;
  (*(v44 + 16))(v14, v17, v10);
  v28 = *(v10 + 48);
  v29 = v24[4];
  v29(v22, v14, v8);
  v42 = v29;
  v30 = v24[1];
  v30(&v14[v28], v8);
  (*(v27 + 32))(v14, v41, v10);
  v29(&v22[*(v49 + 36)], &v14[*(v10 + 48)], v8);
  v30(v14, v8);
  v31 = v43;
  v32 = *(v43 + 40);
  v33 = v47;
  v34 = v50;
  (v46[22])(v51, v22, v47);
  v35 = v45;
  v36 = v49;
  (*(v45 + 8))(v22, v49);
  v37 = v48;
  (*(*(v33 - 1) + 2))(&v48[*(v31 + 40)], v34 + v32, v33);
  (*(v35 + 16))(v22, v51, v36);
  v38 = v42;
  v42(v37, v22, v8);
  return v38(&v37[*(v31 + 36)], &v22[*(v36 + 36)], v8);
}

uint64_t key path getter for DiscontiguousSlice<>.subscript(_:) : <A>DiscontiguousSlice<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a2 + a3 - 8);
  v8 = a4(0, *(a2 + a3 - 16), *(v7 + 8));
  return a5(a2, v8, v7);
}

uint64_t key path setter for Slice<>.subscript(_:) : <A>Slice<A>A(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *&a3[a4 - 8];
  v7 = type metadata accessor for Slice(0, *&a3[a4 - 16], *(v6 + 8), a4);
  return specialized Slice<>.subscript.setter(a1, a3, v7, v6);
}

uint64_t Slice<>.subscript.setter(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  specialized Slice<>.subscript.setter(a1, a2, a3, a4);
  v8 = *(a4 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v9, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v13);
  (*(*(v14 - 8) + 8))(a2, v14);
  v15 = *(*(a3 - 8) + 8);

  return v15(a1, a3);
}

uint64_t (*Slice<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x60, 0xCFA7uLL);
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[3] = a4;
  v8[4] = v4;
  v8[2] = a3;
  v10 = *(a3 - 8);
  v8[5] = v10;
  v11 = *(v10 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[6] = swift_coroFrameAlloc(v11, 0xCFA7uLL);
    v12 = swift_coroFrameAlloc(v11, 0xCFA7uLL);
  }

  else
  {
    v8[6] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v9[7] = v12;
  v14 = *(a4 + 8);
  v15 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, v14, v15, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v17 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v14, v15, v16, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20 = type metadata accessor for Range(0, v17, AssociatedConformanceWitness, v19);
  v9[8] = v20;
  v21 = *(v20 - 8);
  v22 = v21;
  v9[9] = v21;
  v23 = *(v21 + 64);
  if (swift_coroFrameAlloc)
  {
    v9[10] = swift_coroFrameAlloc(v23, 0xCFA7uLL);
    v24 = swift_coroFrameAlloc(v23, 0xCFA7uLL);
  }

  else
  {
    v9[10] = malloc(v23);
    v24 = malloc(v23);
  }

  v9[11] = v24;
  (*(v22 + 16))();
  Slice<>.subscript.getter(a2, a3, a4, v13);
  return Slice<>.subscript.modify;
}

void Slice<>.subscript.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[10];
    v3 = v2[11];
    v5 = v2[8];
    v6 = v2[9];
    v8 = v2[6];
    v7 = v2[7];
    v9 = v2[5];
    v23 = v2[4];
    v10 = v2[2];
    v11 = v2[3];
    (*(v9 + 16))(v8, v7, v10);
    (*(v6 + 32))(v4, v3, v5);
    *v2 = v11;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v10, v2);
    v14 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v10, v13);
    _writeBackMutableSlice<A, B>(_:bounds:slice:)(v23, v4, v8, v10, v10, WitnessTable, v14);
    (*(v6 + 8))(v4, v5);
    v15 = *(v9 + 8);
    v15(v8, v10);
    v15(v7, v10);
  }

  else
  {
    v2[1] = v2[3];
    v4 = v2[10];
    v3 = v2[11];
    v16 = v2[9];
    v24 = v2[8];
    v8 = v2[6];
    v7 = v2[7];
    v18 = v2[4];
    v17 = v2[5];
    v19 = v2[2];
    v20 = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v19, (v2 + 1));
    v22 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v19, v21);
    _writeBackMutableSlice<A, B>(_:bounds:slice:)(v18, v3, v7, v19, v19, v20, v22);
    (*(v16 + 8))(v3, v24);
    (*(v17 + 8))(v7, v19);
  }

  free(v3);
  free(v4);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t Slice<>.withContiguousMutableStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v34 = a1;
  v35 = a2;
  v10 = *(a5 + 8);
  v11 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, v10, v11, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v27 - v14;
  v39 = v11;
  v40 = a4;
  v41 = a5;
  v32 = a3;
  v16 = *(a3 + 40);
  v17 = v37;
  v33 = *(a5 + 80);
  (v33)(&v42, _swift_displayCrashMessage, v38, &unk_1EEEAC658, v11, a5);
  v37 = v17;
  if (v42 == 1)
  {
    return (*(*(a4 - 8) + 56))(v36, 1, 1, a4);
  }

  (*(v10 + 64))(v11, v10);
  v29 = a4;
  v27[1] = v16;
  v19 = *(v10 + 152);
  v28 = v19(v15, v6, v11, v10);
  (*(v30 + 8))(v15, v31);
  v20 = v19(v6, &v6[*(v32 + 36)], v11, v10);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = v28;
  v23 = v29;
  v27[-8] = v11;
  v27[-7] = v23;
  v27[-6] = a5;
  v27[-5] = v24;
  v26 = v34;
  v25 = v35;
  v27[-4] = v22;
  v27[-3] = v26;
  v27[-2] = v25;
  return v33(partial apply for closure #2 in Slice<>.withContiguousMutableStorageIfAvailable<A>(_:));
}

void *closure #2 in Slice<>.withContiguousMutableStorageIfAvailable<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, Class *a6, uint64_t a7, uint64_t a8)
{
  v8 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    __break(1u);
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 < a2)
  {
    goto LABEL_7;
  }

  if (a2 < 0 || a1[1] < v8)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v18[3] = a7;
  v11 = *a1;
  swift_getAssociatedTypeWitness(0, *(*(a8 + 8) + 8), a6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v14 = UnsafeMutableBufferPointer.init(rebasing:)(a2, v8, v11, v13, v12);
  v16 = v15;
  v18[0] = v14;
  v18[1] = v15;
  a4(v18);
  return $defer #1 <A><A1>() in closure #2 in Slice<>.withContiguousMutableStorageIfAvailable<A>(_:)(v18, v14, v16);
}

uint64_t UnsafeBufferPointer.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || a4 < a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t UnsafeMutableBufferPointer.init(rebasing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    result = a3 + *(*(a5 - 8) + 72) * a1;
    v8 = a2 - a1;
    v7 = v8 == 0;
    if (v8 < 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = 0;
    v9 = a2 - a1;
    v7 = v9 == 0;
    if (v9 < 0)
    {
      goto LABEL_7;
    }
  }

  if (!v7 && !result)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void *$defer #1 <A><A1>() in closure #2 in Slice<>.withContiguousMutableStorageIfAvailable<A>(_:)(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    if (*result != a2)
    {
LABEL_6:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  if (result[1] != a3)
  {
    goto LABEL_6;
  }

  return result;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance <> Slice<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x58, 0x2545uLL);
  }

  else
  {
    v9 = malloc(0x58uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = v4;
  v9[1] = a3;
  v11 = *(a4 - 8);
  v9[2] = v11;
  v12 = *(v11 + 8);
  v13 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, *(v12 + 8), v13, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10[3] = v14;
  v15 = *(v14 - 8);
  v10[4] = v15;
  v16 = *(v15 + 64);
  if (swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc(v16, 0x2545uLL);
    v17 = swift_coroFrameAlloc(v16, 0x2545uLL);
  }

  else
  {
    v10[5] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[6] = v17;
  swift_getAssociatedTypeWitness(0, v12, v13, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10[7] = v19;
  v20 = *(v19 - 8);
  v21 = v20;
  v10[8] = v20;
  v22 = *(v20 + 64);
  if (swift_coroFrameAlloc)
  {
    v10[9] = swift_coroFrameAlloc(v22, 0x2545uLL);
    v23 = swift_coroFrameAlloc(v22, 0x2545uLL);
  }

  else
  {
    v10[9] = malloc(v22);
    v23 = malloc(v22);
  }

  v10[10] = v23;
  (*(v21 + 16))();
  Slice<>.subscript.getter(a2, a3, v11, v18);
  return protocol witness for MutableCollection.subscript.modify in conformance <> Slice<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance <> Slice<A>(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v4 = (*a1)[10];
  if (a2)
  {
    v5 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v9 = v2[4];
    v10 = v2[1];
    v11 = v2[2];
    v12 = v2[7];
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v12);
    Slice<>.subscript.setter(v7, v3, v10, v11);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    Slice<>.subscript.setter(v6, v4, v2[1], v2[2]);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance <> Slice<A>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  specialized Slice<>.subscript.setter(a1, a2, a3, v7);
  v8 = *(v7 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v9, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v13);
  (*(*(v14 - 8) + 8))(a2, v14);
  v15 = *(*(a3 - 8) + 8);

  return v15(a1, a3);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance <> Slice<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(unsigned __int16 ***a1, char a2, uint64_t a3)
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x50, 0x3CA1uLL);
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = a4;
  *v8 = v4;
  v10 = *(a4 - 8);
  v11 = *(a3 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[4] = swift_coroFrameAlloc(v12, 0x3CA1uLL);
    v13 = swift_coroFrameAlloc(v12, 0x3CA1uLL);
  }

  else
  {
    v8[4] = malloc(v12);
    v13 = malloc(v12);
  }

  v14 = v13;
  v9[5] = v13;
  v15 = *(v10 + 8);
  v16 = *(a3 + 16);
  swift_getAssociatedTypeWitness(255, v15, v16, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v15, v16, v17, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v21 = type metadata accessor for Range(0, v18, AssociatedConformanceWitness, v20);
  v9[6] = v21;
  v22 = *(v21 - 8);
  v23 = v22;
  v9[7] = v22;
  v24 = *(v22 + 64);
  if (swift_coroFrameAlloc)
  {
    v9[8] = swift_coroFrameAlloc(v24, 0x3CA1uLL);
    v25 = swift_coroFrameAlloc(v24, 0x3CA1uLL);
  }

  else
  {
    v9[8] = malloc(v24);
    v25 = malloc(v24);
  }

  v9[9] = v25;
  (*(v23 + 16))();
  Slice<>.subscript.getter(a2, a3, v10, v14);
  return protocol witness for MutableCollection.subscript.modify in conformance <> Slice<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance <> Slice<A>(unsigned __int16 ***a1, char a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v6 = (*a1)[7];
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[3];
  v17 = (*a1)[2];
  v12 = **a1;
  v11 = (*a1)[1];
  if (a2)
  {
    (*(v10 + 16))(v8, v9, v3[1]);
    (*(v6 + 32))(v4, v5, v7);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v11, v13);
    _writeBackMutableSlice<A, B>(_:bounds:slice:)(v12, v4, v8, v11, v11, v17, WitnessTable);
    (*(v6 + 8))(v4, v7);
    v15 = *(v10 + 8);
    v15(v8, v11);
    v15(v9, v11);
  }

  else
  {
    v16 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v3[1], a3);
    _writeBackMutableSlice<A, B>(_:bounds:slice:)(v12, v5, v9, v11, v11, v17, v16);
    (*(v6 + 8))(v5, v7);
    (*(v10 + 8))(v9, v11);
  }

  free(v5);
  free(v4);
  free(v9);
  free(v8);

  free(v3);
}

uint64_t Slice<>.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 24);
  v7 = *(a2 + 8);
  type metadata accessor for Slice(0, a1, v7, a4);
  v6(a1, a2);
  (*(v7 + 64))(a1, v7);
  return (*(v7 + 72))(a1, v7);
}

uint64_t Slice<>.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 48);
  v9 = *(a4 + 8);
  type metadata accessor for Slice(0, a3, v9, a4);
  v8(a1, a2, a3, a4);
  (*(v9 + 64))(a3, v9);
  return (*(v9 + 72))(a3, v9);
}

uint64_t Slice<>.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 56);
  v10 = *(a4 + 8);
  type metadata accessor for Slice(0, a2, v10, a4);
  v9(a1, a3, a5, a2, a4);
  (*(v10 + 64))(a2, v10);
  return (*(v10 + 72))(a2, v10);
}

uint64_t Slice<>.replaceSubrange<A>(_:with:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v52 = a4;
  v53 = a6;
  v51 = a2;
  v55 = a1;
  v46 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v9;
  v10 = *(v9 + 8);
  v12 = *(v11 + 16);
  v54 = v11;
  swift_getAssociatedTypeWitness(0, v10, v12, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v15 = *(v13 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v45 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v40 - v20;
  v43 = *(v10 + 64);
  v44 = v10 + 64;
  v43(v12, v10);
  v22 = *(v10 + 152);
  v40 = v22(v21, v6, v12, v10);
  v50 = v15;
  v23 = *(v15 + 8);
  v48 = v21;
  v41 = v23;
  v42 = v15 + 8;
  v23(v21, v14);
  v24 = v55;
  v25 = v22(v6, v55, v12, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v12, v14, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v28 = &v24[*(type metadata accessor for Range(0, v14, AssociatedConformanceWitness, v27) + 36)];
  v54 = *(v54 + 36);
  result = v22(v28, &v6[v54], v12, v10);
  v30 = v25 + result;
  if (__OFADD__(v25, result))
  {
    __break(1u);
  }

  else
  {
    v32 = v52;
    v31 = v53;
    v33 = v51;
    result = (*(v53 + 112))(v52, v53);
    v34 = v30 + result;
    if (!__OFADD__(v30, result))
    {
      v35 = v47;
      v36 = *(v46 + 16);
      v46 = v34;
      v36(v47, v33, v32);
      (*(v49 + 32))(v55, v35, v32, v31, v12);
      v37 = v45;
      v43(v12, v10);
      v55 = *(v10 + 136);
      v38 = v48;
      (v55)(v37, v40, v12, v10);
      v41(v37, v14);
      v39 = *(v50 + 40);
      v39(v7, v38, v14);
      (v55)(v7, v46, v12, v10);
      return (v39)(&v7[v54], v38, v14);
    }
  }

  __break(1u);
  return result;
}

uint64_t Slice<>.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v49 = a4;
  v46 = a1;
  v5 = *(a4 + 8);
  v6 = *(v5 + 8);
  v7 = *(a3 + 16);
  v51 = a3;
  swift_getAssociatedTypeWitness(0, v6, v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v43 = &v38 - v11;
  v54 = v7;
  swift_getAssociatedTypeWitness(0, v5, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  v14 = *(v12 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v52 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v38 - v19;
  v21 = *(v5 + 64);
  v22 = v4;
  v55 = *(a3 + 40);
  v41 = v21;
  v42 = v5 + 64;
  v21(v7, v5);
  v50 = *(v5 + 152);
  v39 = v50(v20, v4, v7, v5);
  v23 = v14;
  v24 = *(v14 + 8);
  v24(v20, v13);
  v47 = v23;
  v25 = *(v23 + 16);
  v25(v20, v22, v13);
  v26 = v52;
  v51 = *(v51 + 36);
  v25(v52, &v22[v51], v13);
  v40 = v22;
  v27 = v5;
  v28 = v50(v20, v26, v54, v5);
  v24(v26, v13);
  v50 = v24;
  result = (v24)(v20, v13);
  if (__OFADD__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v30 = v43;
    v31 = *(v44 + 16);
    v44 = v28 + 1;
    v31(v43, v46, v45);
    v32 = *(v49 + 80);
    v53 = v13;
    v33 = v54;
    v34 = v40;
    v32(v30, v48, v54);
    v41(v33, v27);
    v35 = *(v27 + 136);
    v35(v26, v39, v33, v27);
    v36 = v53;
    (v50)(v26, v53);
    v37 = *(v47 + 40);
    v37(v34, v20, v36);
    v35(v34, v44, v33, v27);
    return (v37)(&v34[v51], v20, v53);
  }

  return result;
}

uint64_t Slice<>.insert<A>(contentsOf:at:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v57 = a6;
  v58 = a4;
  v61 = a1;
  v51 = *(a4 - 1);
  v52 = a2;
  MEMORY[0x1EEE9AC00](a1, a2);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v9;
  v10 = *(v9 + 8);
  v12 = *(v11 + 16);
  v13 = v11;
  v56 = v11;
  v62 = v12;
  swift_getAssociatedTypeWitness(0, v10, v12, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  v16 = *(v14 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v59 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v45 - v21;
  v23 = *(v10 + 64);
  v60 = *(v13 + 40);
  v47 = v23;
  v48 = v10 + 64;
  v23(v12, v10);
  v55 = *(v10 + 152);
  v24 = v7;
  v45 = v55(v22, v7, v12, v10);
  v25 = *(v16 + 8);
  v25(v22, v15);
  v54 = v16;
  v26 = *(v16 + 16);
  v26(v22, v24, v15);
  v49 = *(v56 + 36);
  v27 = v59;
  v26(v59, v24 + v49, v15);
  v46 = v24;
  v56 = v10;
  v28 = v55(v22, v27, v62, v10);
  v29 = v57;
  v30 = v28;
  v25(v27, v15);
  v31 = v15;
  v55 = v25;
  v25(v22, v15);
  v32 = v58;
  result = (*(v29 + 112))();
  if (__OFADD__(v30, result))
  {
    __break(1u);
  }

  else
  {
    v34 = v50;
    v35 = *(v51 + 16);
    v51 = v30 + result;
    v35(v50, v61, v32);
    v36 = *(v53 + 88);
    v61 = v31;
    v37 = v46;
    v38 = v32;
    v39 = v62;
    v36(v34, v52, v38, v29, v62);
    v40 = v59;
    v41 = v56;
    v47(v39, v56);
    v58 = *(v41 + 136);
    (v58)(v40, v45, v39, v41);
    v42 = v40;
    v43 = v61;
    (v55)(v42, v61);
    v44 = *(v54 + 40);
    v44(v37, v22, v43);
    (v58)(v37, v51, v39, v41);
    return (v44)(v37 + v49, v22, v43);
  }

  return result;
}

uint64_t Slice<>.remove(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v41 = a1;
  v42 = a3;
  v5 = *(a3 + 8);
  v6 = *(a2 + 16);
  v46 = a2;
  v44 = v6;
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v47 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v33 - v15;
  v17 = *(v5 + 64);
  v48 = *(a2 + 40);
  v38 = v17;
  v39 = v5 + 64;
  v17(v6, v5);
  v45 = *(v5 + 152);
  v35 = v45(v16, v4, v6, v5);
  v18 = *(v10 + 8);
  v18(v16, v9);
  v43 = v10;
  v19 = *(v10 + 16);
  v19(v16, v4, v9);
  v20 = v47;
  v46 = *(v46 + 36);
  v19(v47, v4 + v46, v9);
  v34 = v4;
  v21 = v44;
  v36 = v5;
  v22 = (v45)(v16, v20);
  v23 = v20;
  v18(v20, v9);
  v37 = v9;
  v45 = v18;
  result = (v18)(v16, v9);
  if (__OFSUB__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    v25 = v41;
    v26 = *(v42 + 96);
    v27 = v34;
    v28 = v21;
    v41 = v22 - 1;
    v26(v25, v21);
    v29 = v21;
    v30 = v36;
    v38(v29, v36);
    v42 = *(v30 + 136);
    (v42)(v23, v35, v28, v30);
    v31 = v37;
    (v45)(v23, v37);
    v32 = *(v43 + 40);
    v32(v27, v16, v31);
    (v42)(v27, v41, v28, v30);
    return (v32)(v27 + v46, v16, v31);
  }

  return result;
}

uint64_t Slice<>.removeSubrange(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a2;
  v41 = a1;
  v37 = a3;
  v5 = *(a3 + 8);
  v6 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v30 - v16;
  v18 = *(v5 + 64);
  v43 = *(a2 + 40);
  v39 = v6;
  v33 = v18;
  v34 = v5 + 64;
  v18(v6, v5);
  v42 = *(v5 + 152);
  v30 = v42(v17, v4, v6, v5);
  v19 = *(v10 + 8);
  v19(v17, v9);
  v38 = v10;
  v20 = *(v10 + 16);
  v20(v17, v4, v9);
  v35 = *(v40 + 36);
  v20(v14, v4 + v35, v9);
  v21 = v39;
  v40 = v42(v17, v14, v39, v5);
  v36 = v14;
  v19(v14, v9);
  v31 = v19;
  v32 = v10 + 8;
  v19(v17, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v21, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v24 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v23);
  v25 = v41;
  result = v42(v41, &v41[*(v24 + 36)], v21, v5);
  if (__OFSUB__(v40, result))
  {
    __break(1u);
  }

  else
  {
    v27 = *(v37 + 104);
    v42 = (v40 - result);
    v27(v25, v21);
    v28 = v36;
    v33(v21, v5);
    v41 = *(v5 + 136);
    (v41)(v28, v30, v21, v5);
    v31(v28, v9);
    v29 = *(v38 + 40);
    v29(v4, v17, v9);
    (v41)(v4, v42, v21, v5);
    return (v29)(v4 + v35, v17, v9);
  }

  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance <> Slice<A>(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Slice<>.replaceSubrange<A>(_:with:)(a1, a2, a5, a3, *(a6 - 8), a4);
  v8 = *(*(a3 - 8) + 8);

  return v8(a2, a3);
}

uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance <> Slice<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  Slice<>.insert(_:at:)(a1, a2, a3, v6);
  swift_getAssociatedTypeWitness(0, *(*(v6 + 8) + 8), *(a3 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

uint64_t protocol witness for RangeReplaceableCollection.insert<A>(contentsOf:at:) in conformance <> Slice<A>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Slice<>.insert<A>(contentsOf:at:)(a1, a2, a5, a3, *(a6 - 8), a4);
  v8 = *(*(a3 - 1) + 8);

  return v8(a1, a3);
}

uint64_t Slice<>.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v90 = a7;
  v91 = a2;
  v87 = a6;
  v92 = a4;
  v84 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v85 = &v78[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = v11;
  v12 = *(v11 + 8);
  v14 = *(v13 + 16);
  swift_getAssociatedTypeWitness(0, v12, v14, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v16 = v15;
  v17 = *(v15 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v78[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v78[-v23];
  v94 = a3;
  v25 = *(a3 + 40);
  v26 = *(v12 + 64);
  v96 = v7;
  v80 = v26;
  v81 = (v12 + 64);
  v26(v14, v12);
  v83 = v12;
  v95 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v14, v16, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v27 = *(AssociatedConformanceWitness + 8);
  v28 = *(v27 + 8);
  v29 = v28(a1, v24, v16, v27);
  v88 = v24;
  v89 = v17;
  v31 = *(v17 + 8);
  v30 = (v17 + 8);
  v32 = v24;
  v33 = v16;
  v82 = v31;
  v31(v32, v16);
  v86 = v25;
  if (v29)
  {
    v35 = v96;
    v34 = v97;
    v36 = *(v97 + 64);
    v37 = a1;
    v38 = a1;
    v39 = v95;
    v40 = v36(v96, v38, v95, v97);
    v42 = *(type metadata accessor for Range(0, v33, AssociatedConformanceWitness, v41) + 36);
    AssociatedConformanceWitness = *(v94 + 36);
    v94 = v37;
    result = v36(v37 + v42, &v35[AssociatedConformanceWitness], v39, v34);
    v44 = v40 + result;
    if (!__OFADD__(v40, result))
    {
      v46 = v90;
      v45 = v91;
      v47 = v92;
      result = (*(v90 + 112))(v92, v90);
      if (!__OFADD__(v44, result))
      {
        v48 = v85;
        v49 = *(v84 + 16);
        v84 = v44 + result;
        v49(v85, v45, v47);
        v50 = v96;
        (*(v87 + 32))(v94, v48, v47, v46, v39);
        v51 = v33;
        v52 = v88;
        v80(v39, v83);
        v53 = *(v89 + 40);
        v53(v50, v52, v51);
        (*(v97 + 48))(v50, v84, v39);
        return (v53)(&v50[AssociatedConformanceWitness], v52, v51);
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v80 = v30;
  v54 = a1;
  v55 = v96;
  v79 = v28(a1, v96, v33, v27);
  v56 = v97;
  v57 = *(v97 + 32);
  v81 = v21;
  v58 = a1;
  v59 = v95;
  v57(v58, v95, v97);
  v61 = type metadata accessor for Range(0, v33, AssociatedConformanceWitness, v60);
  v62 = *(v56 + 64);
  v63 = v54 + *(v61 + 36);
  v94 = *(v94 + 36);
  v64 = v62(v63, &v55[v94], v59, v56);
  v65 = v90;
  v66 = v91;
  v67 = v92;
  result = (*(v90 + 112))(v92, v90);
  v68 = v64 + result;
  if (__OFADD__(v64, result))
  {
    goto LABEL_12;
  }

  v69 = __OFADD__(v68, 1);
  v70 = v68 + 1;
  if (v69)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v71 = v55;
  v72 = v65;
  v73 = v54;
  AssociatedConformanceWitness = v70;
  v74 = v85;
  (*(v84 + 16))(v85, v66, v67);
  (*(v87 + 32))(v73, v74, v67, v72, v59);
  v76 = v88;
  v75 = v89;
  v77 = v81;
  if (v79)
  {
    (*(v83 + 184))(v81, v59);
    (*(v75 + 40))(v71, v76, v33);
  }

  (*(v56 + 48))(v77, AssociatedConformanceWitness, v59, v56);
  v82(v77, v33);
  return (*(v75 + 40))(&v71[v94], v76, v33);
}

uint64_t Slice<>.insert(_:at:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a1;
  v62 = a5;
  v63 = a4;
  v8 = *(a4 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, *(v8 + 8), v9, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v60 = v10;
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v59 = &v53 - v12;
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v15 = *(v13 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v57 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v56 = &v53 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v53 - v23;
  v64 = a3;
  v25 = *(v8 + 64);
  v67 = *(a3 + 40);
  v68 = v5;
  v54 = v25;
  v55 = (v8 + 64);
  v25(v9, v8);
  v65 = v9;
  v26 = *(swift_getAssociatedConformanceWitness(v8, v9, v14, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v27 = *(v26 + 8);
  v28 = v27(a2, v24, v14, v26);
  v66 = v15;
  v31 = *(v15 + 8);
  v30 = (v15 + 8);
  v29 = v31;
  v31(v24, v14);
  if (v28)
  {
    v57 = a2;
    v32 = *(v66 + 16);
    v33 = v68;
    v32(v24, v68, v14);
    v64 = *(v64 + 36);
    v34 = v56;
    v32(v56, &v33[v64], v14);
    v35 = (*(v8 + 152))(v24, v34, v65, v8);
    v29(v34, v14);
    result = (v29)(v24, v14);
    if (!__OFADD__(v35, 1))
    {
      v37 = v59;
      (*(v58 + 16))(v59, v61, v60);
      v38 = v68;
      v39 = v65;
      (*(v62 + 80))(v37, v57, v65);
      v54(v39, v8);
      v40 = *(v66 + 40);
      v40(v38, v24, v14);
      (*(v63 + 48))(v38, v35 + 1, v39);
      return (v40)(&v38[v64], v24, v14);
    }

    __break(1u);
    goto LABEL_10;
  }

  v55 = v29;
  v56 = v30;
  v53 = v8;
  v41 = a2;
  v42 = v68;
  LODWORD(v54) = v27(a2, v68, v14, v26);
  v43 = v63;
  v44 = v57;
  v45 = v65;
  (*(v63 + 32))(v41, v65, v63);
  v46 = *(v64 + 36);
  result = (*(v43 + 64))(v41, &v42[v46], v45, v43);
  if (__OFADD__(result, 2))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v47 = v41;
  v48 = v44;
  v49 = result + 2;
  v50 = v59;
  (*(v58 + 16))(v59, v61, v60);
  (*(v62 + 80))(v50, v47, v45);
  if (v54)
  {
    v51 = v68;
    (*(v53 + 184))(v48, v45);
    (*(v66 + 40))(v51, v24, v14);
  }

  v52 = v68;
  (*(v43 + 48))(v48, v49, v45, v43);
  v55(v48, v14);
  return (*(v66 + 40))(&v52[v46], v24, v14);
}

uint64_t Slice<>.insert<A>(contentsOf:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v78 = a7;
  v79 = a1;
  v74 = a6;
  v81 = a4;
  v71 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v72 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v11;
  v12 = *(v11 + 8);
  v14 = *(v13 + 16);
  swift_getAssociatedTypeWitness(0, v12, v14, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v16 = v15;
  v17 = *(v15 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v75 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v70 = &v66 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v66 - v25;
  v77 = a3;
  v27 = *(a3 + 40);
  v28 = *(v12 + 64);
  v80 = v7;
  v84 = v27;
  v68 = v28;
  v69 = (v12 + 64);
  v28(v14, v12);
  v82 = v14;
  v29 = *(swift_getAssociatedConformanceWitness(v12, v14, v16, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v30 = *(v29 + 8);
  v31 = a2;
  v32 = v30(a2, v26, v16, v29);
  v83 = v17;
  v35 = *(v17 + 8);
  v33 = (v17 + 8);
  v34 = v35;
  v35(v26, v16);
  v73 = v31;
  if (v32)
  {
    v36 = *(v83 + 16);
    v37 = v80;
    v36(v26, v80, v16);
    v38 = *(v77 + 36);
    v39 = v70;
    v36(v70, &v37[v38], v16);
    v40 = (*(v12 + 152))(v26, v39, v82, v12);
    v34(v39, v16);
    v34(v26, v16);
    v42 = v78;
    v41 = v79;
    result = (*(v78 + 112))(v81, v78);
    v44 = v40 + result;
    if (!__OFADD__(v40, result))
    {
      v45 = v72;
      v46 = *(v71 + 16);
      v77 = v44;
      v47 = v81;
      v46(v72, v41, v81);
      v48 = *(v74 + 88);
      v79 = v38;
      v49 = v80;
      v50 = v45;
      v51 = v82;
      v48(v50, v73, v47, v42, v82);
      v68(v51, v12);
      v52 = *(v83 + 40);
      v52(v49, v26, v16);
      (*(v76 + 48))(v49, v77, v51);
      return (v52)(&v49[v79], v26, v16);
    }

    __break(1u);
    goto LABEL_11;
  }

  v69 = v34;
  v70 = v33;
  v66 = v12;
  v53 = v80;
  LODWORD(v68) = v30(v31, v80, v16, v29);
  v54 = v76;
  v55 = v82;
  (*(v76 + 32))(v31, v82, v76);
  v56 = *(v54 + 64);
  v77 = *(v77 + 36);
  v57 = v56(v31, &v53[v77], v55, v54);
  v58 = v79;
  v59 = v81;
  v60 = v78;
  result = (*(v78 + 112))();
  v61 = v57 + result;
  if (__OFADD__(v57, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v62 = __OFADD__(v61, 1);
  v63 = v61 + 1;
  if (v62)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v67 = v63;
  v64 = v72;
  (*(v71 + 16))(v72, v58, v59);
  (*(v74 + 88))(v64, v73, v59, v60, v55);
  v65 = v75;
  if (v68)
  {
    (*(v66 + 184))(v75, v55);
    (*(v83 + 40))(v53, v26, v16);
  }

  (*(v54 + 48))(v65, v67, v55, v54);
  v69(v65, v16);
  return (*(v83 + 40))(&v53[v77], v26, v16);
}

uint64_t Slice<>.remove(at:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v57 = a3;
  v58 = a5;
  v8 = *(a3 + 8);
  v9 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, *(v8 + 8), v9, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v51 - v12;
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v15 = *(v13 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v63 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v54 = &v51 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v51 - v23;
  v59 = a2;
  v25 = *(v8 + 64);
  v65 = *(a2 + 40);
  v66 = v5;
  v52 = v25;
  v53 = (v8 + 64);
  v25(v9, v8);
  v62 = v8;
  v64 = v9;
  v26 = *(swift_getAssociatedConformanceWitness(v8, v9, v14, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v27 = *(v26 + 8);
  v28 = a1;
  v29 = v27(a1, v24, v14, v26);
  v30 = *(v15 + 1);
  v30(v24, v14);
  if (v29)
  {
    v63 = v28;
    v31 = v60;
    v32 = v15;
    v33 = *(v15 + 2);
    v34 = v66;
    v33(v24, v66, v14);
    v61 = *(v59 + 36);
    v35 = v54;
    v33(v54, &v61[v34], v14);
    v36 = (*(v62 + 152))(v24, v35, v64);
    v30(v35, v14);
    result = (v30)(v24, v14);
    if (__OFSUB__(v36, 1))
    {
      __break(1u);
    }

    else
    {
      v38 = v32;
      v39 = v66;
      v40 = v64;
      (*(v31 + 96))(v63, v64, v31);
      v52(v40, v62);
      v41 = *(v38 + 5);
      v41(v39, v24, v14);
      (*(v57 + 48))(v39, v36 - 1, v40);
      return (v41)(&v61[v39], v24, v14);
    }
  }

  else
  {
    v52 = (v15 + 8);
    v53 = v30;
    v54 = v15;
    v42 = v28;
    v43 = v66;
    v44 = v27(v28, v66, v14, v26);
    v45 = v57;
    v46 = v64;
    (*(v57 + 32))(v42, v64, v57);
    v47 = *(v59 + 36);
    v59 = (*(v45 + 64))(v42, &v43[v47], v46, v45);
    (*(v60 + 96))(v42, v46);
    if (v44)
    {
      v48 = v66;
      (*(v62 + 184))(v63, v46);
      (*(v54 + 5))(v48, v24, v14);
    }

    v49 = v66;
    v50 = v63;
    (*(v45 + 48))(v63, v59, v46, v45);
    v53(v50, v14);
    (*(v54 + 5))(&v49[v47], v24, v14);
    return (*(v55 + 32))(v58, v61, v56);
  }

  return result;
}

uint64_t Slice<>.removeSubrange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v53 = a4;
  v6 = a2;
  v60 = a3;
  v8 = *(a3 + 8);
  v9 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v12 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v54 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v52 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v48 - v20;
  v56 = v6;
  v22 = *(v8 + 64);
  v61 = *(v6 + 40);
  v50 = v22;
  v51 = (v8 + 64);
  (v22)(v9, v8);
  v57 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v9, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v23 = *(AssociatedConformanceWitness + 8);
  v24 = *(v23 + 8);
  v59 = a1;
  LOBYTE(v6) = v24(a1, v21, v11, v23);
  v58 = v12;
  v27 = *(v12 + 8);
  v25 = (v12 + 8);
  v26 = v27;
  v27(v21, v11);
  if (v6)
  {
    v28 = *(v58 + 16);
    v28(v21, v5, v11);
    v54 = *(v56 + 36);
    v29 = v52;
    v28(v52, &v54[v5], v11);
    v30 = v57;
    v56 = (*(v8 + 152))(v21, v29, v57, v8);
    v26(v29, v11);
    v26(v21, v11);
    v32 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v31);
    v33 = v59;
    v34 = v60;
    result = (*(v60 + 64))(v59, v59 + *(v32 + 36), v30, v60);
    v36 = v56 - result;
    if (!__OFSUB__(v56, result))
    {
      (*(v53 + 104))(v33, v30);
      (v50)(v30, v8);
      v37 = *(v58 + 40);
      v37(v5, v21, v11);
      (*(v34 + 48))(v5, v36, v30, v34);
      return (v37)(&v54[v5], v21, v11);
    }

    __break(1u);
    goto LABEL_11;
  }

  v51 = v26;
  v52 = v25;
  v48 = v8;
  v38 = v59;
  v49 = v24(v59, v5, v11, v23);
  v39 = v60;
  v40 = v57;
  (*(v60 + 32))(v38, v57, v60);
  v41 = *(v39 + 64);
  v50 = *(v56 + 36);
  v56 = v41(v38, &v50[v5], v40, v39);
  v43 = v38 + *(type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v42) + 36);
  result = v41(v38, v43, v40, v39);
  v44 = v56 - result;
  if (__OFSUB__(v56, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v45 = v44 + 1;
  if (__OFADD__(v44, 1))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  (*(v53 + 104))(v59, v40);
  v46 = v58;
  v47 = v54;
  if (v49)
  {
    (*(v48 + 184))(v54, v40);
    (*(v46 + 40))(v5, v21, v11);
  }

  (*(v60 + 48))(v47, v45, v40);
  v51(v47, v11);
  return (*(v46 + 40))(&v50[v5], v21, v11);
}

uint64_t (*_SmallString.leadingRawBits.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return _ArrayBody.count.modify;
}

uint64_t (*_SmallString.trailingRawBits.modify(void *a1))()
{
  *a1 = *(v1 + 8);
  a1[1] = v1;
  return _SmallString.trailingRawBits.modify;
}

unint64_t _SmallString.subscript.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 >= 8)
  {
    a2 = a3;
  }

  return a2 >> (8 * (a1 & 7u));
}

uint64_t (*_SmallString.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x28, 0xFD4CuLL);
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  if (a2 > 7)
  {
    v6 = v2[1];
    v5[3] = v6;
    v7 = _SmallString.subscript.modify;
  }

  else
  {
    v6 = *v2;
    v5[2] = *v2;
    v7 = _SmallString.subscript.modify;
  }

  *(v5 + 32) = v6 >> (8 * (a2 & 7u));
  return v7;
}

void _SmallString.subscript.modify(unsigned __int8 **a1)
{
  v1 = *a1;
  **(v1 + 1) = ((-255 << (8 * (*v1 & 7u))) - 1) & *(v1 + 2) | (v1[32] << (8 * (*v1 & 7u)));
  free(v1);
}

void _SmallString.subscript.modify(void **a1)
{
  v1 = *a1;
  *(v1[1] + 8) = ((-255 << (8 * (*v1 & 7u))) - 1) & v1[3] | (*(v1 + 32) << (8 * (*v1 & 7u)));
  free(v1);
}

uint64_t _SmallString.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, int64x2_t a12)
{
  v92[0] = a3;
  v92[1] = a4 & 0xFFFFFFFFFFFFFFLL;
  if (a1 < 0 || (HIBYTE(a4) & 0xF) < a2 || (v12 = a2 - a1, a2 - a1 < 0))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 == a1)
  {
    return 0;
  }

  if (v12 >= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = a2 - a1;
  }

  v15 = v14 - 1;
  if (v14 < v14 - 1)
  {
    v15 = v14;
  }

  if (v14 == v15)
  {
LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = (v92 + a1);
  v17 = v12 - 8;
  if (v12 >= 8)
  {
    v19 = v14 & 8;
    v20 = vmovl_u8(*v16);
    v21 = vmovl_u16(*v20.i8);
    v22.i64[0] = v21.u32[2];
    v22.i64[1] = v21.u32[3];
    v23 = v22;
    v24 = vmovl_high_u16(v20);
    v22.i64[0] = v24.u32[2];
    v22.i64[1] = v24.u32[3];
    v25 = v22;
    v22.i64[0] = v21.u32[0];
    v22.i64[1] = v21.u32[1];
    v26 = v22;
    v22.i64[0] = v24.u32[0];
    v22.i64[1] = v24.u32[1];
    v27 = vorrq_s8(vorrq_s8(vshlq_u64(v26, xmmword_18071DBB0), vshlq_u64(v22, xmmword_18071DBC0)), vorrq_s8(vshlq_u64(v23, xmmword_18071DBA0), vshlq_u64(v25, xmmword_18071DBD0)));
    v13 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    if (v14 == v19)
    {
      goto LABEL_19;
    }

    v18 = 8 * v19;
  }

  else
  {
    v13 = 0;
    v18 = 0;
    v19 = 0;
  }

  v28 = v14 - v19;
  v29 = v92 + v19 + a1;
  do
  {
    v30 = *v29++;
    *&v13 |= v30 << (v18 & 0x38);
    v18 += 8;
    --v28;
  }

  while (v28);
LABEL_19:
  if (v12 < 9)
  {
    return v13;
  }

  if (v17 <= a2 - a1 - 9)
  {
    goto LABEL_12;
  }

  if (v17 < 4)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_35;
  }

  if (v17 >= 0x10)
  {
    v35 = &v16[1];
    v33 = v17 & 0xFFFFFFFFFFFFFFF0;
    v36 = xmmword_18071DBF0;
    v37 = xmmword_18071DC00;
    v38 = xmmword_18071DC10;
    v39 = xmmword_18071DC20;
    v40 = xmmword_18071DBD0;
    v41 = xmmword_18071DBC0;
    v42 = vdupq_n_s64(0x38uLL);
    a12 = vdupq_n_s64(0x80uLL);
    v43 = xmmword_18071DBA0;
    v34 = 8 * (v17 & 0xFFFFFFFFFFFFFFF0);
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = xmmword_18071DBB0;
    v47 = v17 & 0xFFFFFFFFFFFFFFF0;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    do
    {
      v54 = *v35++;
      v55 = vmovl_u8(*v54.i8);
      v56 = vmovl_high_u16(v55);
      v57.i64[0] = v56.u32[2];
      v57.i64[1] = v56.u32[3];
      v58 = v57;
      v59 = vmovl_high_u8(v54);
      v60 = vmovl_u16(*v59.i8);
      v57.i64[0] = v60.u32[2];
      v57.i64[1] = v60.u32[3];
      v61 = v57;
      v57.i64[0] = v60.u32[0];
      v57.i64[1] = v60.u32[1];
      v62 = v57;
      v57.i64[0] = v56.u32[0];
      v57.i64[1] = v56.u32[1];
      v63 = v57;
      v64 = vmovl_u16(*v55.i8);
      v57.i64[0] = v64.u32[2];
      v57.i64[1] = v64.u32[3];
      v65 = v57;
      v66 = vmovl_high_u16(v59);
      v57.i64[0] = v66.u32[0];
      v57.i64[1] = v66.u32[1];
      v67 = v57;
      v57.i64[0] = v64.u32[0];
      v57.i64[1] = v64.u32[1];
      v68 = v57;
      v57.i64[0] = v66.u32[2];
      v57.i64[1] = v66.u32[3];
      v49 = vorrq_s8(vshlq_u64(v58, vandq_s8(v40, v42)), v49);
      v51 = vorrq_s8(vshlq_u64(v61, vandq_s8(v38, v42)), v51);
      v50 = vorrq_s8(vshlq_u64(v62, vandq_s8(v39, v42)), v50);
      v48 = vorrq_s8(vshlq_u64(v63, vandq_s8(v41, v42)), v48);
      v45 = vorrq_s8(vshlq_u64(v65, vandq_s8(v43, v42)), v45);
      v52 = vorrq_s8(vshlq_u64(v67, vandq_s8(v37, v42)), v52);
      v44 = vorrq_s8(vshlq_u64(v68, vandq_s8(v46, v42)), v44);
      v53 = vorrq_s8(vshlq_u64(v57, vandq_s8(v36, v42)), v53);
      v41 = vaddq_s64(v41, a12);
      v43 = vaddq_s64(v43, a12);
      v46 = vaddq_s64(v46, a12);
      v40 = vaddq_s64(v40, a12);
      v39 = vaddq_s64(v39, a12);
      v38 = vaddq_s64(v38, a12);
      v37 = vaddq_s64(v37, a12);
      v36 = vaddq_s64(v36, a12);
      v47 -= 16;
    }

    while (v47);
    v69 = vorrq_s8(vorrq_s8(vorrq_s8(v44, v50), vorrq_s8(v48, v52)), vorrq_s8(vorrq_s8(v45, v51), vorrq_s8(v49, v53)));
    v31 = vorr_s8(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
    if (v17 == v33)
    {
      return v13;
    }

    if ((v17 & 0xC) == 0)
    {
      v32 = 8 * (v17 & 0xFFFFFFFFFFFFFFF0);
LABEL_35:
      v86 = v33 + a1 + 8;
      v87 = v86 - a2;
      v88 = v92 + v86;
      do
      {
        v89 = *v88++;
        *&v31 |= v89 << (v32 & 0x38);
        v32 += 8;
      }

      while (!__CFADD__(v87++, 1));
      return v13;
    }
  }

  else
  {
    v31 = 0;
    v34 = 0;
    v33 = 0;
  }

  v70 = v33;
  v33 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v32 = 8 * (v17 & 0xFFFFFFFFFFFFFFFCLL);
  v71 = 0uLL;
  v72 = v31;
  v73 = vdupq_n_s64(v34);
  v74 = vaddq_s64(v73, xmmword_18071DBA0);
  v75 = vaddq_s64(v73, xmmword_18071DBB0);
  v76 = (&v92[1] + v70 + a1);
  v77 = v70 - (v17 & 0xFFFFFFFFFFFFFFFCLL);
  v78.i64[0] = 255;
  v78.i64[1] = 255;
  v79 = vdupq_n_s64(0x38uLL);
  v80 = vdupq_n_s64(0x20uLL);
  do
  {
    v81 = *v76++;
    a12.i32[0] = v81;
    v82 = vmovl_u16(*&vmovl_u8(*a12.i8));
    v83.i64[0] = v82.u32[2];
    v83.i64[1] = v82.u32[3];
    v84 = vandq_s8(v83, v78);
    v83.i64[0] = v82.u32[0];
    v83.i64[1] = v82.u32[1];
    a12 = vshlq_u64(vandq_s8(v83, v78), vandq_s8(v75, v79));
    v71 = vorrq_s8(vshlq_u64(v84, vandq_s8(v74, v79)), v71);
    v72 = vorrq_s8(a12, v72);
    v74 = vaddq_s64(v74, v80);
    v75 = vaddq_s64(v75, v80);
    v77 += 4;
  }

  while (v77);
  v85 = vorrq_s8(v72, v71);
  v31 = vorr_s8(*v85.i8, *&vextq_s8(v85, v85, 8uLL));
  if (v17 != v33)
  {
    goto LABEL_35;
  }

  return v13;
}

unint64_t key path getter for _SmallString.subscript(_:) : _SmallString@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, int8x8_t *a3@<X8>, int64x2_t a4@<Q7>)
{
  v4 = *(result + 8);
  v6 = *a2;
  v5 = a2[1];
  v87[0] = *result;
  v87[1] = v4 & 0xFFFFFFFFFFFFFFLL;
  if (v6 < 0 || (HIBYTE(v4) & 0xF) < v5 || (v7 = v5 - v6, v5 - v6 < 0))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v5 == v6)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_41;
  }

  v10 = v7 - 8;
  if (v7 >= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v5 - v6;
  }

  v12 = v11 - 1;
  if (v11 < v11 - 1)
  {
    v12 = v11;
  }

  if (v11 == v12)
  {
LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = (v87 + v6);
  if (v7 > 7)
  {
    v14 = v11 & 8;
    v15 = vmovl_u8(*v13);
    v16 = vmovl_u16(*v15.i8);
    v17.i64[0] = v16.u32[2];
    v17.i64[1] = v16.u32[3];
    v18 = v17;
    v19 = vmovl_high_u16(v15);
    v17.i64[0] = v19.u32[2];
    v17.i64[1] = v19.u32[3];
    v20 = v17;
    v17.i64[0] = v16.u32[0];
    v17.i64[1] = v16.u32[1];
    v21 = v17;
    v17.i64[0] = v19.u32[0];
    v17.i64[1] = v19.u32[1];
    v22 = vorrq_s8(vorrq_s8(vshlq_u64(v21, xmmword_18071DBB0), vshlq_u64(v17, xmmword_18071DBC0)), vorrq_s8(vshlq_u64(v18, xmmword_18071DBA0), vshlq_u64(v20, xmmword_18071DBD0)));
    v8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    if (v11 == v14)
    {
      goto LABEL_19;
    }

    result = 8 * v14;
  }

  else
  {
    v8 = 0;
    result = 0;
    v14 = 0;
  }

  v23 = v11 - v14;
  v24 = v87 + v14 + v6;
  do
  {
    v25 = *v24++;
    *&v8 |= v25 << (result & 0x38);
    result += 8;
    --v23;
  }

  while (v23);
LABEL_19:
  if (v7 >= 9)
  {
    if (v10 <= v5 - v6 - 9)
    {
      goto LABEL_12;
    }

    if (v10 < 4)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      goto LABEL_35;
    }

    if (v10 >= 0x10)
    {
      v30 = &v13[1];
      v28 = v10 & 0xFFFFFFFFFFFFFFF0;
      v31 = xmmword_18071DBF0;
      v32 = xmmword_18071DC00;
      v33 = xmmword_18071DC10;
      v34 = xmmword_18071DC20;
      v35 = xmmword_18071DBD0;
      v36 = xmmword_18071DBC0;
      v37 = vdupq_n_s64(0x38uLL);
      a4 = vdupq_n_s64(0x80uLL);
      v38 = xmmword_18071DBA0;
      v29 = 8 * (v10 & 0xFFFFFFFFFFFFFFF0);
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = xmmword_18071DBB0;
      v42 = v10 & 0xFFFFFFFFFFFFFFF0;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      v48 = 0uLL;
      do
      {
        v49 = *v30++;
        v50 = vmovl_u8(*v49.i8);
        v51 = vmovl_high_u16(v50);
        v52.i64[0] = v51.u32[2];
        v52.i64[1] = v51.u32[3];
        v53 = v52;
        v54 = vmovl_high_u8(v49);
        v55 = vmovl_u16(*v54.i8);
        v52.i64[0] = v55.u32[2];
        v52.i64[1] = v55.u32[3];
        v56 = v52;
        v52.i64[0] = v55.u32[0];
        v52.i64[1] = v55.u32[1];
        v57 = v52;
        v52.i64[0] = v51.u32[0];
        v52.i64[1] = v51.u32[1];
        v58 = v52;
        v59 = vmovl_u16(*v50.i8);
        v52.i64[0] = v59.u32[2];
        v52.i64[1] = v59.u32[3];
        v60 = v52;
        v61 = vmovl_high_u16(v54);
        v52.i64[0] = v61.u32[0];
        v52.i64[1] = v61.u32[1];
        v62 = v52;
        v52.i64[0] = v59.u32[0];
        v52.i64[1] = v59.u32[1];
        v63 = v52;
        v52.i64[0] = v61.u32[2];
        v52.i64[1] = v61.u32[3];
        v44 = vorrq_s8(vshlq_u64(v53, vandq_s8(v35, v37)), v44);
        v46 = vorrq_s8(vshlq_u64(v56, vandq_s8(v33, v37)), v46);
        v45 = vorrq_s8(vshlq_u64(v57, vandq_s8(v34, v37)), v45);
        v43 = vorrq_s8(vshlq_u64(v58, vandq_s8(v36, v37)), v43);
        v40 = vorrq_s8(vshlq_u64(v60, vandq_s8(v38, v37)), v40);
        v47 = vorrq_s8(vshlq_u64(v62, vandq_s8(v32, v37)), v47);
        v39 = vorrq_s8(vshlq_u64(v63, vandq_s8(v41, v37)), v39);
        v48 = vorrq_s8(vshlq_u64(v52, vandq_s8(v31, v37)), v48);
        v36 = vaddq_s64(v36, a4);
        v38 = vaddq_s64(v38, a4);
        v41 = vaddq_s64(v41, a4);
        v35 = vaddq_s64(v35, a4);
        v34 = vaddq_s64(v34, a4);
        v33 = vaddq_s64(v33, a4);
        v32 = vaddq_s64(v32, a4);
        v31 = vaddq_s64(v31, a4);
        v42 -= 16;
      }

      while (v42);
      v64 = vorrq_s8(vorrq_s8(vorrq_s8(v39, v45), vorrq_s8(v43, v47)), vorrq_s8(vorrq_s8(v40, v46), vorrq_s8(v44, v48)));
      v26 = vorr_s8(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
      if (v10 == v28)
      {
        goto LABEL_38;
      }

      if ((v10 & 0xC) == 0)
      {
        v27 = 8 * (v10 & 0xFFFFFFFFFFFFFFF0);
LABEL_35:
        v81 = v28 + v6 + 8;
        v82 = v81 - v5;
        v83 = v87 + v81;
        do
        {
          v84 = *v83++;
          *&v26 |= v84 << (v27 & 0x38);
          v27 += 8;
        }

        while (!__CFADD__(v82++, 1));
        goto LABEL_38;
      }
    }

    else
    {
      v26 = 0;
      v29 = 0;
      v28 = 0;
    }

    v65 = v28;
    v28 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v27 = 8 * (v10 & 0xFFFFFFFFFFFFFFFCLL);
    v66 = 0uLL;
    v67 = v26;
    v68 = vdupq_n_s64(v29);
    v69 = vaddq_s64(v68, xmmword_18071DBA0);
    v70 = vaddq_s64(v68, xmmword_18071DBB0);
    v71 = (&v87[1] + v65 + v6);
    v72 = v65 - (v10 & 0xFFFFFFFFFFFFFFFCLL);
    v73.i64[0] = 255;
    v73.i64[1] = 255;
    v74 = vdupq_n_s64(0x38uLL);
    result = 32;
    v75 = vdupq_n_s64(0x20uLL);
    do
    {
      v76 = *v71++;
      a4.i32[0] = v76;
      v77 = vmovl_u16(*&vmovl_u8(*a4.i8));
      v78.i64[0] = v77.u32[2];
      v78.i64[1] = v77.u32[3];
      v79 = vandq_s8(v78, v73);
      v78.i64[0] = v77.u32[0];
      v78.i64[1] = v77.u32[1];
      a4 = vshlq_u64(vandq_s8(v78, v73), vandq_s8(v70, v74));
      v66 = vorrq_s8(vshlq_u64(v79, vandq_s8(v69, v74)), v66);
      v67 = vorrq_s8(a4, v67);
      v69 = vaddq_s64(v69, v75);
      v70 = vaddq_s64(v70, v75);
      v72 += 4;
    }

    while (v72);
    v80 = vorrq_s8(v67, v66);
    v26 = vorr_s8(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
    if (v10 == v28)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v26 = 0;
LABEL_38:
  v86 = 0xA000000000000000;
  if (((*&v26 | *&v8) & 0x8080808080808080) == 0)
  {
    v86 = 0xE000000000000000;
  }

  v9 = (v86 | (v7 << 56) | *&v26);
LABEL_41:
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t _SmallString.init(_:)(__int32 *a1, uint64_t a2, uint8x8_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 15)
  {
    return 0;
  }

  v4 = 8;
  if (a2 < 8)
  {
    v4 = a2;
  }

  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 > 3)
  {
    v7 = v4 & 0xC;
    a3.i32[0] = *a1;
    v8 = vmovl_u16(*&vmovl_u8(a3));
    v9.i64[0] = v8.u32[0];
    v9.i64[1] = v8.u32[1];
    v10.i64[0] = 255;
    v10.i64[1] = 255;
    v11 = vandq_s8(v9, v10);
    v9.i64[0] = v8.u32[2];
    v9.i64[1] = v8.u32[3];
    v12 = vshlq_u64(vandq_s8(v9, v10), xmmword_18071DBA0);
    v13.i32[1] = 0;
    v14 = vshlq_u64(v11, xmmword_18071DBB0);
    if (v7 != 4)
    {
      v13.i32[0] = a1[1];
      v15 = vmovl_u16(*&vmovl_u8(v13));
      v16.i64[0] = v15.u32[2];
      v16.i64[1] = v15.u32[3];
      v17 = vandq_s8(v16, v10);
      v16.i64[0] = v15.u32[0];
      v16.i64[1] = v15.u32[1];
      v12 = vorrq_s8(vshlq_u64(v17, xmmword_18071DBD0), v12);
      v14 = vorrq_s8(vshlq_u64(vandq_s8(v16, v10), xmmword_18071DBC0), v14);
    }

    v18 = vorrq_s8(v14, v12);
    result = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    if (v4 == v7)
    {
      goto LABEL_16;
    }

    v6 = 8 * v7;
  }

  else
  {
    result = 0;
    v6 = 0;
    v7 = 0;
  }

  v19 = v4 - v7;
  v20 = a1 + v7;
  do
  {
    v21 = *v20++;
    result |= v21 << (v6 & 0x38);
    v6 += 8;
    --v19;
  }

  while (v19);
LABEL_16:
  v22 = 0;
  v23 = a2 - 8;
  if (a2 > 8)
  {
    v24 = 0;
    v25 = a1 + 2;
    do
    {
      v26 = *v25;
      v25 = (v25 + 1);
      v22 |= v26 << v24;
      v24 += 8;
      --v23;
    }

    while (v23);
  }

  return result;
}

uint64_t _SmallString.withUTF8<A>(_:)(uint64_t (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4 & 0xFFFFFFFFFFFFFFLL;
  return a1(v5, HIBYTE(a4) & 0xF);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance _SmallString(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x28, 0xA2A3uLL);
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  v6 = *a2;
  *v5 = v2;
  v5[1] = v6;
  if (v6 > 7)
  {
    v7 = v2[1];
    v5[3] = v7;
    v8 = protocol witness for MutableCollection.subscript.modify in conformance _SmallString;
  }

  else
  {
    v7 = *v2;
    v5[2] = *v2;
    v8 = protocol witness for MutableCollection.subscript.modify in conformance _SmallString;
  }

  *(v5 + 32) = v7 >> (8 * (v6 & 7u));
  return v8;
}

void protocol witness for MutableCollection.subscript.modify in conformance _SmallString(unsigned __int8 **a1)
{
  v1 = *a1;
  **v1 = ((-255 << (8 * (v1[8] & 7u))) - 1) & *(v1 + 2) | (v1[32] << (8 * (v1[8] & 7u)));
  free(v1);
}

void protocol witness for MutableCollection.subscript.modify in conformance _SmallString(void **a1)
{
  v1 = *a1;
  *(*v1 + 8) = ((-255 << (8 * (v1[8] & 7u))) - 1) & *(v1 + 3) | (v1[32] << (8 * (v1[8] & 7u)));
  free(v1);
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance _SmallString@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t *a2@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t protocol witness for BidirectionalCollection.index(before:) in conformance _SmallString@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v2, *(v2 + 8));
  *a2 = result;
  return result;
}

unint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance _SmallString(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v1, *(v1 + 8));
  *a1 = result;
  return result;
}

unint64_t _ss12_SmallStringVSksSk5index_8offsetBy5IndexQzAF_SitFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, *v3, *(v3 + 8));
  *a3 = result;
  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance _SmallString@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *v4;
  v9 = v4[1];
  v10 = specialized RandomAccessCollection<>.distance(from:to:)(*a1, *a3, *v4, v9);
  if (a2 < 1)
  {
    if (v10 <= 0 && v10 > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v7, a2, v8, v9);
    v12 = 0;
    goto LABEL_11;
  }

  if (v10 < 0 || v10 >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  result = 0;
  v12 = 1;
LABEL_11:
  *a4 = result;
  *(a4 + 8) = v12;
  return result;
}

unint64_t protocol witness for Collection.subscript.getter in conformance _SmallString@<X0>(unint64_t result@<X0>, int8x8_t *a2@<X8>, int64x2_t a3@<Q7>)
{
  v5 = *result;
  v4 = *(result + 8);
  v6 = v3[1];
  v87[0] = *v3;
  v87[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v5 < 0 || (HIBYTE(v6) & 0xF) < v4 || (v7 = v4 - v5, v4 - v5 < 0))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v4 == v5)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_41;
  }

  v10 = v7 - 8;
  if (v7 >= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v4 - v5;
  }

  v12 = v11 - 1;
  if (v11 < v11 - 1)
  {
    v12 = v11;
  }

  if (v11 == v12)
  {
LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = (v87 + v5);
  if (v7 > 7)
  {
    v14 = v11 & 8;
    v15 = vmovl_u8(*v13);
    v16 = vmovl_u16(*v15.i8);
    v17.i64[0] = v16.u32[2];
    v17.i64[1] = v16.u32[3];
    v18 = v17;
    v19 = vmovl_high_u16(v15);
    v17.i64[0] = v19.u32[2];
    v17.i64[1] = v19.u32[3];
    v20 = v17;
    v17.i64[0] = v16.u32[0];
    v17.i64[1] = v16.u32[1];
    v21 = v17;
    v17.i64[0] = v19.u32[0];
    v17.i64[1] = v19.u32[1];
    v22 = vorrq_s8(vorrq_s8(vshlq_u64(v21, xmmword_18071DBB0), vshlq_u64(v17, xmmword_18071DBC0)), vorrq_s8(vshlq_u64(v18, xmmword_18071DBA0), vshlq_u64(v20, xmmword_18071DBD0)));
    v8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    if (v11 == v14)
    {
      goto LABEL_19;
    }

    result = 8 * v14;
  }

  else
  {
    v8 = 0;
    result = 0;
    v14 = 0;
  }

  v23 = v11 - v14;
  v24 = v87 + v14 + v5;
  do
  {
    v25 = *v24++;
    *&v8 |= v25 << (result & 0x38);
    result += 8;
    --v23;
  }

  while (v23);
LABEL_19:
  if (v7 >= 9)
  {
    if (v10 <= v4 - v5 - 9)
    {
      goto LABEL_12;
    }

    if (v10 < 4)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      goto LABEL_35;
    }

    if (v10 >= 0x10)
    {
      v30 = &v13[1];
      v28 = v10 & 0xFFFFFFFFFFFFFFF0;
      v31 = xmmword_18071DBF0;
      v32 = xmmword_18071DC00;
      v33 = xmmword_18071DC10;
      v34 = xmmword_18071DC20;
      v35 = xmmword_18071DBD0;
      v36 = xmmword_18071DBC0;
      v37 = vdupq_n_s64(0x38uLL);
      a3 = vdupq_n_s64(0x80uLL);
      v38 = xmmword_18071DBA0;
      v29 = 8 * (v10 & 0xFFFFFFFFFFFFFFF0);
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = xmmword_18071DBB0;
      v42 = v10 & 0xFFFFFFFFFFFFFFF0;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      v48 = 0uLL;
      do
      {
        v49 = *v30++;
        v50 = vmovl_u8(*v49.i8);
        v51 = vmovl_high_u16(v50);
        v52.i64[0] = v51.u32[2];
        v52.i64[1] = v51.u32[3];
        v53 = v52;
        v54 = vmovl_high_u8(v49);
        v55 = vmovl_u16(*v54.i8);
        v52.i64[0] = v55.u32[2];
        v52.i64[1] = v55.u32[3];
        v56 = v52;
        v52.i64[0] = v55.u32[0];
        v52.i64[1] = v55.u32[1];
        v57 = v52;
        v52.i64[0] = v51.u32[0];
        v52.i64[1] = v51.u32[1];
        v58 = v52;
        v59 = vmovl_u16(*v50.i8);
        v52.i64[0] = v59.u32[2];
        v52.i64[1] = v59.u32[3];
        v60 = v52;
        v61 = vmovl_high_u16(v54);
        v52.i64[0] = v61.u32[0];
        v52.i64[1] = v61.u32[1];
        v62 = v52;
        v52.i64[0] = v59.u32[0];
        v52.i64[1] = v59.u32[1];
        v63 = v52;
        v52.i64[0] = v61.u32[2];
        v52.i64[1] = v61.u32[3];
        v44 = vorrq_s8(vshlq_u64(v53, vandq_s8(v35, v37)), v44);
        v46 = vorrq_s8(vshlq_u64(v56, vandq_s8(v33, v37)), v46);
        v45 = vorrq_s8(vshlq_u64(v57, vandq_s8(v34, v37)), v45);
        v43 = vorrq_s8(vshlq_u64(v58, vandq_s8(v36, v37)), v43);
        v40 = vorrq_s8(vshlq_u64(v60, vandq_s8(v38, v37)), v40);
        v47 = vorrq_s8(vshlq_u64(v62, vandq_s8(v32, v37)), v47);
        v39 = vorrq_s8(vshlq_u64(v63, vandq_s8(v41, v37)), v39);
        v48 = vorrq_s8(vshlq_u64(v52, vandq_s8(v31, v37)), v48);
        v36 = vaddq_s64(v36, a3);
        v38 = vaddq_s64(v38, a3);
        v41 = vaddq_s64(v41, a3);
        v35 = vaddq_s64(v35, a3);
        v34 = vaddq_s64(v34, a3);
        v33 = vaddq_s64(v33, a3);
        v32 = vaddq_s64(v32, a3);
        v31 = vaddq_s64(v31, a3);
        v42 -= 16;
      }

      while (v42);
      v64 = vorrq_s8(vorrq_s8(vorrq_s8(v39, v45), vorrq_s8(v43, v47)), vorrq_s8(vorrq_s8(v40, v46), vorrq_s8(v44, v48)));
      v26 = vorr_s8(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
      if (v10 == v28)
      {
        goto LABEL_38;
      }

      if ((v10 & 0xC) == 0)
      {
        v27 = 8 * (v10 & 0xFFFFFFFFFFFFFFF0);
LABEL_35:
        v81 = v28 + v5 + 8;
        v82 = v81 - v4;
        v83 = v87 + v81;
        do
        {
          v84 = *v83++;
          *&v26 |= v84 << (v27 & 0x38);
          v27 += 8;
        }

        while (!__CFADD__(v82++, 1));
        goto LABEL_38;
      }
    }

    else
    {
      v26 = 0;
      v29 = 0;
      v28 = 0;
    }

    v65 = v28;
    v28 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v27 = 8 * (v10 & 0xFFFFFFFFFFFFFFFCLL);
    v66 = 0uLL;
    v67 = v26;
    v68 = vdupq_n_s64(v29);
    v69 = vaddq_s64(v68, xmmword_18071DBA0);
    v70 = vaddq_s64(v68, xmmword_18071DBB0);
    v71 = (&v87[1] + v65 + v5);
    v72 = v65 - (v10 & 0xFFFFFFFFFFFFFFFCLL);
    v73.i64[0] = 255;
    v73.i64[1] = 255;
    v74 = vdupq_n_s64(0x38uLL);
    result = 32;
    v75 = vdupq_n_s64(0x20uLL);
    do
    {
      v76 = *v71++;
      a3.i32[0] = v76;
      v77 = vmovl_u16(*&vmovl_u8(*a3.i8));
      v78.i64[0] = v77.u32[2];
      v78.i64[1] = v77.u32[3];
      v79 = vandq_s8(v78, v73);
      v78.i64[0] = v77.u32[0];
      v78.i64[1] = v77.u32[1];
      a3 = vshlq_u64(vandq_s8(v78, v73), vandq_s8(v70, v74));
      v66 = vorrq_s8(vshlq_u64(v79, vandq_s8(v69, v74)), v66);
      v67 = vorrq_s8(a3, v67);
      v69 = vaddq_s64(v69, v75);
      v70 = vaddq_s64(v70, v75);
      v72 += 4;
    }

    while (v72);
    v80 = vorrq_s8(v67, v66);
    v26 = vorr_s8(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
    if (v10 == v28)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v26 = 0;
LABEL_38:
  v86 = 0xA000000000000000;
  if (((*&v26 | *&v8) & 0x8080808080808080) == 0)
  {
    v86 = 0xE000000000000000;
  }

  v9 = (v86 | (v7 << 56) | *&v26);
LABEL_41:
  *a2 = v8;
  a2[1] = v9;
  return result;
}

void protocol witness for Collection.indices.getter in conformance _SmallString(void *a1@<X8>)
{
  v2 = *(v1 + 15) & 0xF;
  *a1 = 0;
  a1[1] = v2;
}

unint64_t protocol witness for Collection.index(after:) in conformance _SmallString@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v2, *(v2 + 8));
  *a2 = result;
  return result;
}

unint64_t protocol witness for Collection.formIndex(after:) in conformance _SmallString(unint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v1, *(v1 + 8));
  *a1 = result;
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance _SmallString@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t static _StringObject.Nibbles.small(withCount:isASCII:)(uint64_t a1, char a2)
{
  v2 = 0xA000000000000000;
  if (a2)
  {
    v2 = 0xE000000000000000;
  }

  return v2 | (a1 << 56);
}

uint64_t _bytesToUInt64(_:_:)(uint8x16_t *a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 4)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_17;
  }

  if (a2 >= 0x10)
  {
    v12 = a2 & 0x7FFFFFFFFFFFFFF0;
    v14 = xmmword_18071DBF0;
    v15 = xmmword_18071DC00;
    v16 = xmmword_18071DC10;
    v17 = xmmword_18071DC20;
    v13 = 8 * (a2 & 0x7FFFFFFFFFFFFFF0);
    v18 = 0uLL;
    v19 = xmmword_18071DBD0;
    v20 = xmmword_18071DBC0;
    a10 = vdupq_n_s64(0x38uLL);
    v21 = a2 & 0x7FFFFFFFFFFFFFF0;
    v22 = vdupq_n_s64(0x80uLL);
    v23 = a1;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = xmmword_18071DBA0;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = xmmword_18071DBB0;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    do
    {
      v33 = *v23++;
      v34 = vmovl_u8(*v33.i8);
      v35 = vmovl_high_u16(v34);
      v36.i64[0] = v35.u32[2];
      v36.i64[1] = v35.u32[3];
      v37 = v36;
      v38 = vmovl_high_u8(v33);
      v39 = vmovl_u16(*v38.i8);
      v36.i64[0] = v39.u32[2];
      v36.i64[1] = v39.u32[3];
      v40 = v36;
      v36.i64[0] = v39.u32[0];
      v36.i64[1] = v39.u32[1];
      v41 = v36;
      v36.i64[0] = v35.u32[0];
      v36.i64[1] = v35.u32[1];
      v42 = v36;
      v43 = vmovl_u16(*v34.i8);
      v36.i64[0] = v43.u32[2];
      v36.i64[1] = v43.u32[3];
      v44 = v36;
      v45 = vmovl_high_u16(v38);
      v36.i64[0] = v45.u32[0];
      v36.i64[1] = v45.u32[1];
      v46 = v36;
      v36.i64[0] = v43.u32[0];
      v36.i64[1] = v43.u32[1];
      v47 = v36;
      v36.i64[0] = v45.u32[2];
      v36.i64[1] = v45.u32[3];
      v27 = vorrq_s8(vshlq_u64(v37, vandq_s8(v19, a10)), v27);
      v30 = vorrq_s8(vshlq_u64(v40, vandq_s8(v16, a10)), v30);
      v28 = vorrq_s8(vshlq_u64(v41, vandq_s8(v17, a10)), v28);
      v25 = vorrq_s8(vshlq_u64(v42, vandq_s8(v20, a10)), v25);
      v24 = vorrq_s8(vshlq_u64(v44, vandq_s8(v26, a10)), v24);
      v31 = vorrq_s8(vshlq_u64(v46, vandq_s8(v15, a10)), v31);
      v18 = vorrq_s8(vshlq_u64(v47, vandq_s8(v29, a10)), v18);
      v32 = vorrq_s8(vshlq_u64(v36, vandq_s8(v14, a10)), v32);
      v20 = vaddq_s64(v20, v22);
      v26 = vaddq_s64(v26, v22);
      v29 = vaddq_s64(v29, v22);
      v19 = vaddq_s64(v19, v22);
      v17 = vaddq_s64(v17, v22);
      v16 = vaddq_s64(v16, v22);
      v15 = vaddq_s64(v15, v22);
      v14 = vaddq_s64(v14, v22);
      v21 -= 16;
    }

    while (v21);
    v48 = vorrq_s8(vorrq_s8(vorrq_s8(v18, v28), vorrq_s8(v25, v31)), vorrq_s8(vorrq_s8(v24, v30), vorrq_s8(v27, v32)));
    v10 = vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
    if (v12 == a2)
    {
      return v10;
    }

    if ((a2 & 0xC) == 0)
    {
      v11 = 8 * (a2 & 0x7FFFFFFFFFFFFFF0);
LABEL_17:
      v65 = a2 - v12;
      v66 = &a1->u8[v12];
      do
      {
        v67 = *v66++;
        *&v10 |= v67 << (v11 & 0x38);
        v11 += 8;
        --v65;
      }

      while (v65);
      return v10;
    }
  }

  else
  {
    v10 = 0;
    v13 = 0;
    v12 = 0;
  }

  v49 = v12;
  v12 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v11 = 8 * (a2 & 0x7FFFFFFFFFFFFFFCLL);
  v50 = 0uLL;
  v51 = v10;
  v52 = vdupq_n_s64(v13);
  v53 = vaddq_s64(v52, xmmword_18071DBA0);
  v54 = vaddq_s64(v52, xmmword_18071DBB0);
  v55 = (a1->i32 + v49);
  v56 = v49 - (a2 & 0x7FFFFFFFFFFFFFFCLL);
  v57.i64[0] = 255;
  v57.i64[1] = 255;
  v58 = vdupq_n_s64(0x38uLL);
  v59 = vdupq_n_s64(0x20uLL);
  do
  {
    v60 = *v55++;
    a10.i32[0] = v60;
    v61 = vmovl_u16(*&vmovl_u8(*a10.i8));
    v62.i64[0] = v61.u32[2];
    v62.i64[1] = v61.u32[3];
    v63 = vandq_s8(v62, v57);
    v62.i64[0] = v61.u32[0];
    v62.i64[1] = v61.u32[1];
    a10 = vshlq_u64(vandq_s8(v62, v57), vandq_s8(v54, v58));
    v50 = vorrq_s8(vshlq_u64(v63, vandq_s8(v53, v58)), v50);
    v51 = vorrq_s8(a10, v51);
    v53 = vaddq_s64(v53, v59);
    v54 = vaddq_s64(v54, v59);
    v56 += 4;
  }

  while (v56);
  v64 = vorrq_s8(v51, v50);
  v10 = vorr_s8(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
  if (v12 != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

uint64_t Sequence<>.sorted()(Class *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness(0, v10, a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = v11;
  (*(v7 + 16))(v9, v3, a1);
  v26 = (*(a2 + 56))(a1, a2);
  v15 = type metadata accessor for ContiguousArray(0, v12, v13, v14);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v15, v16);
  v19 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v15, v18);
  MutableCollection<>.sort(by:)(partial apply for implicit closure #1 in Sequence<>.sorted(), v21, v15, WitnessTable, v19);
  return v26;
}

uint64_t Sequence.sorted(by:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v11 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v23 = (*(a4 + 56))(a3, a4);
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v15 = type metadata accessor for ContiguousArray(0, v12, v13, v14);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v15, v16);
  v19 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v15, v18);
  MutableCollection<>.sort(by:)(a1, a2, v15, WitnessTable, v19);
  v20 = v23;
  if (v5)
  {
    v23;
  }

  return v20;
}

void *MutableCollection<>.sort()(Class *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness(0, *(*(a2 + 8) + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = v8;
  return MutableCollection<>.sort(by:)(partial apply for implicit closure #1 in MutableCollection<>.sort(), v10, a1, a2, a3);
}

void closure #1 in MutableCollection<>.sort(by:)(uint64_t a1, uint64_t (*a2)(char *, char *), uint64_t a3, Class *a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness(255, *(*(a5 + 8) + 8), a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = type metadata accessor for UnsafeMutableBufferPointer(0, v7, v8, v9);
  UnsafeMutableBufferPointer._stableSortImpl(by:)(a2, a3, v10);
}

void UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  if (v8 < 64)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      LODWORD(v24) = 0;
      v23 = 760;
      LOBYTE(v22) = 2;
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v25 = 0;
    v26 = v8;
    if (!v8)
    {
      return;
    }

LABEL_13:
    v27 = 1;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, a3, a3);
    v18 = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, a3, v17);
    MutableCollection<>._insertionSort(within:sortedEnd:by:)(&v25, &v27, a1, a2, a3, WitnessTable, v18);
    return;
  }

  v9 = 58 - __clz(v8);
  v10 = -1 << v9;
  v11 = v8 >> v9;
  if ((v8 & ~v10) != 0)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= v8)
  {
    v25 = 0;
    v26 = v8;
    goto LABEL_13;
  }

  v13 = MEMORY[0x1EEE9AC00](v8 >> 1, a2);
  v20 = *(a3 + 16);
  v21 = v3;
  v22 = a1;
  v23 = a2;
  v24 = v14;
  v15 = Array.init(_unsafeUninitializedCapacity:initializingWith:)(v13, partial apply for closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), &v19, v20);
  if (!v4)
  {
    v15;
  }
}

uint64_t zip<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 16))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for Zip2Sequence(0, v15);
  return (*(*(a4 - 8) + 16))(a7 + *(v13 + 52), a2, a4);
}

uint64_t Zip2Sequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 24);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 16);
  MEMORY[0x1EEE9AC00](v8, v12);
  (*(v14 + 32))(v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v11);
  v15 = *(a1 + 32);
  (*(v15 + 32))(v11, v15);
  (*(v7 + 32))(v10, v3 + *(a1 + 52), v6);
  v16 = *(a1 + 40);
  v17 = *(v16 + 32);
  *&v18 = v11;
  *(&v18 + 1) = v6;
  *&v19 = v15;
  *(&v19 + 1) = v16;
  v22[0] = v18;
  v22[1] = v19;
  v20 = type metadata accessor for Zip2Sequence.Iterator(0, v22);
  result = v17(v6, v16);
  *(a3 + *(v20 + 56)) = 0;
  return result;
}

uint64_t Zip2Sequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v76 = a2;
  v5 = *(a1 + 40);
  v71 = *(a1 + 24);
  v72 = v5;
  swift_getAssociatedTypeWitness(255, v5, v71, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v10 = type metadata accessor for Optional(0, v6, v8, v9);
  v70 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v73 = &v63 - v13;
  v74 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v12, v14);
  v69 = &v63 - v15;
  v16 = *(a1 + 32);
  v17 = *(a1 + 16);
  swift_getAssociatedTypeWitness(255, v16, v17, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v19 = v18;
  v22 = type metadata accessor for Optional(0, v18, v20, v21);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v63 - v25;
  v75 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v24, v27);
  v30 = *(a1 + 56);
  if (*(v3 + v30) != 1)
  {
    v36 = v3;
    v65 = v29;
    v66 = &v63 - v28;
    v67 = v30;
    v68 = v7;
    v64 = v10;
    swift_getAssociatedTypeWitness(255, v16, v17, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
    v38 = v37;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v16, v17, v37, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v40 = *(AssociatedConformanceWitness + 16);
    v41 = swift_checkMetadataState(0, v38);
    v42 = v36;
    v40(v41, AssociatedConformanceWitness);
    if ((*(v75 + 48))(v26, 1, v19) == 1)
    {
      (*(v65 + 8))(v26, v22);
      v43 = v68;
    }

    else
    {
      v44 = v36;
      v45 = v66;
      v65 = *(v75 + 32);
      (v65)(v66, v26, v19);
      v47 = v71;
      v46 = v72;
      swift_getAssociatedTypeWitness(255, v72, v71, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
      v49 = v48;
      v50 = swift_getAssociatedConformanceWitness(v46, v47, v48, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v51 = *(v50 + 16);
      v52 = swift_checkMetadataState(0, v49);
      v53 = v44;
      v54 = v73;
      v51(v52, v50);
      v55 = v74;
      v43 = v68;
      if ((*(v74 + 48))(v54, 1, v68) != 1)
      {
        v57 = *(v55 + 32);
        v58 = v69;
        v57(v69, v54, v43);
        swift_getTupleTypeMetadata2(0, v19, v43, 0, 0);
        v60 = v59;
        v61 = *(v59 + 48);
        v62 = v76;
        (v65)(v76, v45, v19);
        v57((v62 + v61), v58, v43);
        return (*(*(v60 - 8) + 56))(v62, 0, 1, v60);
      }

      (*(v75 + 8))(v45, v19);
      (*(v70 + 8))(v54, v64);
      v42 = v53;
    }

    *(v42 + v67) = 1;
    swift_getTupleTypeMetadata2(0, v19, v43, 0, 0);
    return (*(*(v56 - 8) + 56))(v76, 1, 1, v56);
  }

  swift_getTupleTypeMetadata2(0, v19, v7, 0, 0);
  v32 = *(*(v31 - 8) + 56);
  v33 = v31;
  v34 = v76;

  return v32(v34, 1, 1, v33);
}

uint64_t MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, void (*a2)(char *), uint64_t (*a3)(char *, char *), uint64_t a4, Class *a5, uint64_t a6, uint64_t a7)
{
  v72 = a7;
  v80 = a3;
  v81 = a4;
  v87 = a2;
  v83 = a6;
  v9 = *(a6 + 8);
  swift_getAssociatedTypeWitness(0, *(v9 + 8), a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v11 = v10;
  v86 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v79 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v78 = v57 - v16;
  swift_getAssociatedTypeWitness(0, v9, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v18 = v17;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v85 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = v57 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = v57 - v27;
  v30 = v29;
  v31 = *(v29 + 16);
  v61 = v29 + 16;
  v60 = v31;
  v31(v57 - v27, v87, v18);
  v62 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a5, v18, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v34 = *(type metadata accessor for Range(0, v18, AssociatedConformanceWitness, v33) + 36);
  v35 = *(AssociatedConformanceWitness + 8);
  v36 = *(v35 + 8);
  v77 = a1;
  v59 = v34;
  v84 = v18;
  v75 = v35 + 8;
  v76 = v35;
  v74 = v36;
  if ((v36)(v28, a1 + v34, v18))
  {
    v37 = *(v30 + 8);
    v38 = v84;
  }

  else
  {
    v69 = *(v83 + 32);
    v70 = v83 + 32;
    v66 = *(v9 + 80);
    v65 = (v86 + 16);
    v71 = (v86 + 8);
    v64 = v72 + 64;
    v73 = (v30 + 8);
    v63 = (v30 + 32);
    v68 = v9 + 80;
    v57[1] = v9 + 192;
    v38 = v84;
    v82 = v9;
    v58 = v28;
    v67 = v25;
    v40 = v66;
    while (2)
    {
      v60(v25, v28, v38);
      v41 = v85;
      v42 = v62;
      while (1)
      {
        v69(v25, v42, v83);
        v43 = v11;
        v44 = v82;
        v86 = v40(v88, v25, v42, v82);
        v87 = *v65;
        v45 = v41;
        v46 = v78;
        v87(v78);
        (v86)(v88, 0);
        v47 = v44;
        v11 = v43;
        v48 = v40(v88, v45, v42, v47);
        v49 = v79;
        v87(v79);
        v48(v88, 0);
        v50 = v89;
        v51 = v80(v46, v49);
        v89 = v50;
        if (v50)
        {
          v54 = *v71;
          (*v71)(v49, v11);
          v54(v46, v11);
          v55 = *v73;
          v56 = v84;
          (*v73)(v85, v84);
          v55(v67, v56);
          return (v55)(v58, v56);
        }

        v52 = v51;
        v53 = *v71;
        (*v71)(v49, v11);
        v53(v46, v11);
        v38 = v84;
        if ((v52 & 1) == 0)
        {
          break;
        }

        v25 = v67;
        v41 = v85;
        (*(v72 + 64))(v67, v85, v42);
        v37 = *v73;
        (*v73)(v25, v38);
        (*v63)(v25, v41, v38);
        if (v74(v25, v77, v38, v76))
        {
          v37(v25, v38);
          goto LABEL_11;
        }
      }

      v37 = *v73;
      (*v73)(v85, v84);
      v25 = v67;
      v37(v67, v38);
LABEL_11:
      v28 = v58;
      (*(v82 + 192))();
      if ((v74(v28, v77 + v59, v38, v76) & 1) == 0)
      {
        continue;
      }

      break;
    }
  }

  return (v37)(v28, v38);
}

uint64_t MutableCollection<>._insertionSort(within:by:)(uint64_t a1, uint64_t (*a2)(char *, char *), uint64_t a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v22 = a3;
  v23 = a6;
  v21 = a2;
  v9 = *(a5 + 8);
  swift_getAssociatedTypeWitness(0, v9, a4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (&v20 - v14);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a4, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v18 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v17);
  result = (*(*(AssociatedConformanceWitness + 8) + 8))(a1, a1 + *(v18 + 36), v11);
  if ((result & 1) == 0)
  {
    (*(v9 + 184))(a1, a4, v9);
    MutableCollection<>._insertionSort(within:sortedEnd:by:)(a1, v15, v21, v22, a4, a5, v23);
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

uint64_t MutableCollection<>._reverse(within:)(uint64_t a1, Class *a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v26 - v15;
  v27 = v9;
  v17 = *(v9 + 16);
  v17(&v26 - v15, a1, v8);
  v32 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v19);
  v17(v13, a1 + *(v20 + 36), v8);
  v21 = *(AssociatedConformanceWitness + 16);
  v35 = v8;
  v31 = AssociatedConformanceWitness;
  if ((v21)(v16, v13, v8, AssociatedConformanceWitness))
  {
    v29 = *(v33 + 40);
    v30 = v33 + 40;
    v28 = *(v34 + 64);
    v22 = v32[24];
    do
    {
      v29(v13, a2, v33);
      v28(v16, v13, a2, v34);
      (v22)(v16, a2, v32);
    }

    while ((v21(v16, v13) & 1) != 0);
  }

  v23 = *(v27 + 8);
  v24 = v35;
  v23(v13, v35);
  return (v23)(v16, v24);
}

uint64_t _merge<A>(low:mid:high:buffer:by:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  v8 = v7;
  v9 = a7;
  v89 = a6;
  v10 = a1;
  v11 = *(a7 - 1);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v84 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v77 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v28 = *(v27 + 72);
  if (!v28 || (v29 = v24 - v10, v24 - v10 == 0x8000000000000000) && v28 == -1 || (v30 = v21 - v24, v21 - v24 == 0x8000000000000000) && v28 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v83 = v26;
  v85 = v21;
  v88 = v23;
  v31 = v29 / v28;
  v93 = v10;
  v92 = v22;
  v32 = v22;
  v33 = v30 / v28;
  if (v29 / v28 >= v30 / v28)
  {
    v90 = v8;
    v36 = v24;
    UnsafeMutablePointer.moveInitialize(from:count:)(v24, v30 / v28, v22, v9);
    v37 = &v32[v33 * v28];
    if (v33 * v28 < 1)
    {
      v42 = v36;
    }

    else
    {
      v81 = -v28;
      v82 = (v11 + 16);
      v38 = (v11 + 8);
      v39 = -v28;
      v87 = v38;
      v40 = &v32[v33 * v28];
      v41 = v85;
      v42 = v36;
      v78 = v32;
      v79 = v10;
      do
      {
        v77 = v37;
        v43 = &v42[v39];
        v80 = &v42[v39];
        v85 = v42;
        while (1)
        {
          if (v42 <= v10)
          {
            v93 = v42;
            v91 = v77;
            goto LABEL_53;
          }

          v44 = v41;
          v45 = v43;
          v86 = v40;
          v46 = &v40[v39];
          v47 = v83;
          v48 = *v82;
          (*v82)(v83, &v40[v39], v9);
          v49 = v84;
          v48(v84, v45, v9);
          v50 = v90;
          v51 = v88(v47, v49);
          v90 = v50;
          if (v50)
          {
            v93 = v85;
            v91 = v37;
            v74 = v49;
            v62 = v47;
            v65 = v9;
            goto LABEL_55;
          }

          v52 = v51;
          v53 = v37;
          v54 = *v87;
          (*v87)(v49, v9);
          v54(v47, v9);
          if (v52)
          {
            break;
          }

          v39 = v81;
          v41 = &v44[v81];
          v37 = v46;
          v55 = v78;
          if (v44 < v86 || v41 >= v86)
          {
            swift_arrayInitWithTakeFrontToBack(&v44[v81], v46, 1, v9);
            v10 = v79;
          }

          else
          {
            v10 = v79;
            if (v44 != v86)
            {
              swift_arrayInitWithTakeBackToFront(&v44[v81], v46, 1, v9);
            }
          }

          v40 = v46;
          v43 = v80;
          v42 = v85;
          if (v46 <= v55)
          {
            goto LABEL_50;
          }
        }

        v41 = &v44[v81];
        v56 = v78;
        if (v44 < v85 || v41 >= v85)
        {
          v58 = v80;
          swift_arrayInitWithTakeFrontToBack(&v44[v81], v80, 1, v9);
          v42 = v58;
          v10 = v79;
          v37 = v53;
        }

        else
        {
          v10 = v79;
          v42 = v80;
          if (v44 != v85)
          {
            v57 = v80;
            swift_arrayInitWithTakeBackToFront(&v44[v81], v80, 1, v9);
            v42 = v57;
          }
        }

        v40 = v86;
        v39 = v81;
      }

      while (v86 > v56);
    }

LABEL_50:
    v93 = v42;
    v91 = v37;
    goto LABEL_53;
  }

  v83 = &v77 - v25;
  v84 = v19;
  v34 = v24;
  UnsafeMutablePointer.moveInitialize(from:count:)(v10, v29 / v28, v22, v9);
  v82 = &v32[v31 * v28];
  v91 = v82;
  if (v31 * v28 < 1 || v34 >= v85)
  {
LABEL_53:
    $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v93, &v92, &v91, v9);
    return 1;
  }

  v59 = v34;
  v80 = *(v11 + 16);
  v81 = v11 + 16;
  v86 = v28;
  v87 = (v11 + 8);
  v60 = v8;
  while (1)
  {
    v61 = v10;
    v62 = v83;
    v63 = v80;
    v64 = v59;
    (v80)(v83, v59, v9);
    v65 = v9;
    v66 = v84;
    (v63)(v84, v32, v65);
    v67 = v88(v62, v66);
    if (v60)
    {
      break;
    }

    v68 = v67;
    v69 = v32;
    v90 = 0;
    v70 = *v87;
    (*v87)(v66, v65);
    v70(v62, v65);
    v9 = v65;
    if (v68)
    {
      v71 = v86;
      v72 = &v64[v86];
      v73 = v61;
      if (v61 < v64 || v61 >= v72)
      {
        swift_arrayInitWithTakeFrontToBack(v61, v64, 1, v9);
        v59 = &v64[v71];
        v60 = v90;
        v32 = v69;
      }

      else
      {
        v60 = v90;
        if (v61 != v64)
        {
          swift_arrayInitWithTakeBackToFront(v61, v64, 1, v9);
        }

        v59 = v72;
        v32 = v69;
      }
    }

    else
    {
      v71 = v86;
      v32 = &v69[v86];
      v73 = v61;
      v59 = v64;
      if (v61 < v69 || v61 >= v32)
      {
        swift_arrayInitWithTakeFrontToBack(v61, v69, 1, v9);
        v59 = v64;
        v71 = v86;
        v60 = v90;
      }

      else
      {
        v60 = v90;
        if (v61 != v69)
        {
          swift_arrayInitWithTakeBackToFront(v61, v69, 1, v9);
          v59 = v64;
          v71 = v86;
        }
      }

      v92 = v32;
    }

    v10 = &v73[v71];
    v93 = v10;
    if (v32 >= v82 || v59 >= v85)
    {
      goto LABEL_53;
    }
  }

  v74 = v66;
LABEL_55:
  v75 = *v87;
  (*v87)(v74, v65);
  v75(v62, v65);
  $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v93, &v92, &v91, v65);
  return 1;
}