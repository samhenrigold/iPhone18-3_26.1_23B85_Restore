void *_ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tpq5Tm(void *result, uint64_t a2, uint64_t a3)
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

uint64_t _SliceBuffer.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v113 = a4;
  v12 = *(a5 + 16);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v17, v16, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v23 = *(a6 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v30 = v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_37;
  }

  v102 = a6;
  v115 = a7;
  v112 = a3;
  v32 = a3 - v31;
  if (__OFSUB__(a3, v31))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v33 = *(v107 + 16);
  v34 = *(v107 + 24) >> 1;
  v35 = v34 - v33;
  if (__OFSUB__(v34, v33))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    LODWORD(v91) = 0;
    v90 = 9012;
    LOBYTE(WitnessTable) = 2;
    goto LABEL_53;
  }

  v97 = v28;
  v98 = v25;
  v103 = v13;
  v95 = v15;
  v96 = v27;
  v104 = v30;
  v114 = v26;
  v36 = *v107;
  v37 = type metadata accessor for __ContiguousArrayStorageBase();
  v38 = swift_unknownObjectRetain(v36);
  v39 = swift_dynamicCastClass(v38, v37);
  if (!v39)
  {
    swift_unknownObjectRelease(v36);
    v39 = &_swiftEmptyArrayStorage;
  }

  v40 = *(v103 + 72);
  if (!v40)
  {
    goto LABEL_39;
  }

  v101 = v35;
  v41 = v39 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
  v42 = *(v107 + 8) + v40 * v33 - v41;
  if (v40 == -1 && v42 == 0x8000000000000000)
  {
    goto LABEL_52;
  }

  v44 = a1 - v33;
  if (__OFSUB__(a1, v33))
  {
    __break(1u);
    goto LABEL_41;
  }

  v105 = v33;
  v45 = v42 / v40;
  v46 = v44 + v45;
  if (__OFADD__(v44, v45))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v47 = a2 - v105;
  if (__OFSUB__(a2, v105))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v100 = v32;
  v48 = v47 + v45;
  if (__OFADD__(v47, v45))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    LODWORD(v91) = 0;
    v90 = 760;
    LOBYTE(WitnessTable) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v48 < v46)
  {
    goto LABEL_44;
  }

  v106 = v39;
  v49 = v102;
  (*(v23 + 16))(v104, v113, v102);
  v50 = v48 - v46;
  if (__OFSUB__(v48, v46))
  {
    __break(1u);
LABEL_46:
    LODWORD(v91) = 0;
    v90 = 1183;
    LOBYTE(WitnessTable) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v50 < 0)
  {
    goto LABEL_46;
  }

  v51 = &v41[v46 * v40];
  v53 = *(v23 + 8);
  v52 = v23 + 8;
  v99 = v53;
  v53(v113, v49);
  swift_arrayDestroy(v51, v48 - v46, v12);
  v55 = v112 - v50;
  if (__OFSUB__(v112, v50))
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v56 = v112;
  v113 = v40;
  v111 = v40 * v112;
  v57 = (v51 + v40 * v112);
  v58 = v106;
  v59 = v115;
  if (v55)
  {
    v60 = *(v106 + 2);
    if (__OFSUB__(v60, v48))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    UnsafeMutablePointer.moveInitialize(from:count:)(&v41[v48 * v113], v60 - v48, v57, v12);
    v58 = v106;
    v61 = *(v106 + 2);
    v62 = __OFADD__(v61, v55);
    v63 = v61 + v55;
    if (v62)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      LODWORD(v91) = 0;
      v90 = 9019;
      LOBYTE(WitnessTable) = 2;
LABEL_53:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *(v106 + 2) = v63;
  }

  if (v56 <= 0)
  {
    v58;
    v99(v104, v49);
    v85 = v100;
    v86 = v105;
  }

  else
  {
    v94 = v57;
    MEMORY[0x1EEE9AC00](v58, v54);
    v66 = type metadata accessor for _ContiguousArrayBuffer(0, v12, v64, v65);
    v93[-6] = v66;
    v93[-5] = v49;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, v66, v67);
    v90 = v59;
    v91 = v56;
    v92 = v51;
    v68 = v104;
    (*(*(v59 + 8) + 72))(v116, closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)partial apply, &v93[-8], &unk_1EEEAC658, v49);
    if (v116[0])
    {
      v93[1] = v52;
      (*(v59 + 64))(v49, v59);
      v69 = v95;
      v70 = v94;
      if (v111 >= 1)
      {
        v71 = v12;
        v111 = *(v115 + 80);
        v112 = v115 + 80;
        v109 = *(v115 + 192);
        v110 = v115 + 192;
        v108 = (v103 + 16);
        v72 = (v103 + 32);
        v73 = v115;
        do
        {
          v74 = v114;
          v75 = v49;
          v76 = (v111)(v116, v114, v49, v73);
          (*v108)(v69);
          v76(v116, 0);
          v49 = v75;
          (*v72)(v51, v69, v71);
          v51 += v113;
          v109(v74, v75, v73);
        }

        while (v51 < v70);
      }

      v77 = v115;
      v78 = v96;
      v79 = v68;
      (*(v115 + 72))(v49, v115);
      v80 = v98;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v77, v49, v98, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
      v82 = v114;
      v83 = (*(*(AssociatedConformanceWitness + 8) + 8))(v114, v78, v80);
      v84 = *(v97 + 8);
      v84(v78, v80);
      if ((v83 & 1) == 0)
      {
        LODWORD(v91) = 0;
        v90 = 173;
        LOBYTE(WitnessTable) = 2;
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v106;
      v84(v82, v80);
      v99(v79, v49);
    }

    else
    {
      v106;
      v99(v68, v49);
    }

    v85 = v100;
    v86 = v105;
  }

  v62 = __OFADD__(v86, v101);
  v87 = v86 + v101;
  if (v62)
  {
    goto LABEL_48;
  }

  if (__OFADD__(v87, v85))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  return _SliceBuffer.endIndex.setter(v87 + v85);
}

uint64_t static ArraySlice<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v97 = a6;
  v98 = a2;
  v14 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v96 = &v69[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for Optional(255, a9, v16, v17);
  swift_getTupleTypeMetadata2(0, v18, v18, 0, 0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v22 = *(v18 - 1);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = MEMORY[0x1EEE9AC00](v26, &v69[-v27]);
  v30 = &v69[-v29];
  result = MEMORY[0x1EEE9AC00](v28, v31);
  v39 = &v69[-v35];
  v40 = (a4 >> 1) - v36;
  if (__OFSUB__(a4 >> 1, v36))
  {
    __break(1u);
    goto LABEL_36;
  }

  v41 = a8 >> 1;
  if (__OFSUB__(a8 >> 1, a7))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v40 != (a8 >> 1) - a7)
  {
    return 0;
  }

  if (!v40)
  {
    return 1;
  }

  v95 = v34;
  v92 = v14;
  v42 = *(v14 + 72);
  v43 = v98 + v42 * v36;
  if (v43 == v97 + v42 * a7)
  {
    return 1;
  }

  v82 = v38;
  v83 = v42;
  v90 = v33;
  v91 = v41;
  v76 = v37;
  v89 = a7;
  v84 = a4 >> 1;
  v85 = result;
  v81 = v36;
  if (a4 >> 1 != v36)
  {
    v47 = a1;
    v48 = v36;
    result = specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(v36, v47, v98, v36, a4);
    v93 = v48 + 1;
    if (!__OFADD__(v48, 1))
    {
      v44 = v14;
      (*(v14 + 16))(v39, v43, a9);
      v45 = *(v14 + 56);
      v45(v39, 0, 1, a9);
      goto LABEL_10;
    }

LABEL_37:
    __break(1u);
    return result;
  }

  v44 = v14;
  v45 = *(v14 + 56);
  v46 = v36;
  v45(&v69[-v35], 1, 1, a9);
  v93 = v46;
LABEL_10:
  v49 = v95;
  v87 = *(v22 + 16);
  v88 = v22 + 16;
  v87(v30, v39, v18);
  v51 = *(v44 + 48);
  v50 = v44 + 48;
  v94 = v51;
  v52 = v51(v30, 1, a9);
  v53 = v22 + 8;
  v54 = *(v22 + 8);
  if (v52 == 1)
  {
LABEL_11:
    v54(v39, v18);
    v54(v30, v18);
    return 1;
  }

  v75 = (v92 + 16);
  v86 = v92 + 56;
  v80 = (v22 + 32);
  v72 = (v92 + 32);
  v73 = a10;
  v71 = a10 + 8;
  v74 = (v92 + 8);
  v55 = v89;
  v77 = v45;
  v78 = v54;
  v79 = v53;
  while (1)
  {
    v54(v30, v18);
    if (v55 == v91)
    {
      v56 = 1;
      v92 = v91;
    }

    else
    {
      if (v55 < v89 || v55 >= v91)
      {
LABEL_31:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      (*v75)(v90, v97 + v55 * v83, a9);
      v56 = 0;
      v92 = v55 + 1;
    }

    v57 = v90;
    v45(v90, v56, 1, a9);
    v58 = *(v85 + 48);
    v59 = *v80;
    (*v80)(v49, v39, v18);
    v59(&v49[v58], v57, v18);
    v60 = v94;
    if (v94(v49, 1, a9) == 1)
    {
      if (v60(&v49[v58], 1, a9) != 1)
      {
        goto LABEL_33;
      }

      v54 = v78;
      v78(v49, v18);
      goto LABEL_24;
    }

    v61 = v82;
    v87(v82, v49, v18);
    if (v60(&v49[v58], 1, a9) == 1)
    {
      break;
    }

    v62 = &v49[v58];
    v63 = v50;
    v64 = v96;
    (*v72)(v96, v62, a9);
    v70 = (*(v73 + 8))(v61, v64, a9);
    v65 = *v74;
    v66 = v64;
    v50 = v63;
    v49 = v95;
    (*v74)(v66, a9);
    v65(v61, a9);
    v54 = v78;
    v78(v49, v18);
    if ((v70 & 1) == 0)
    {
      return 0;
    }

LABEL_24:
    if (v93 == v84)
    {
      v93 = v84;
      v45 = v77;
      v77(v39, 1, 1, a9);
    }

    else
    {
      v45 = v77;
      if (v93 < v81 || v93 >= v84)
      {
        goto LABEL_31;
      }

      v67 = v93 + 1;
      (*v75)(v39, v98 + v93 * v83, a9);
      v93 = v67;
      v45(v39, 0, 1, a9);
    }

    v87(v30, v39, v18);
    v68 = v94(v30, 1, a9);
    v55 = v92;
    if (v68 == 1)
    {
      goto LABEL_11;
    }
  }

  (*v74)(v61, a9);
LABEL_33:
  (*(v76 + 8))(v49, v85);
  return 0;
}

void ArraySlice<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v13 >> 1;
  if (__OFSUB__(v13 >> 1, v12))
  {
    __break(1u);
    goto LABEL_8;
  }

  v19 = v15;
  v20 = v14;
  Hasher._combine(_:)((v13 >> 1) - v12);
  if (v18 == a4)
  {
    return;
  }

  v21 = a2;
  v22 = v18 - a4;
  if (v18 <= a4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v33 = v20;
  v31 = *(v20 + 24);
  v32 = v20 + 24;
  v23 = v21;
  specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(a4, v21, a3, a4, a5);
  specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(v18 - 1, v23, a3, a4, a5);
  v24 = a3;
  v27 = *(v11 + 16);
  v25 = v11 + 16;
  v26 = v27;
  v28 = *(v25 + 56);
  v29 = v24 + v28 * a4;
  do
  {
    v26(v17, v29, a6);
    v31(v19, a6, v33);
    (*(v25 - 8))(v17, a6);
    v29 += v28;
    --v22;
  }

  while (v22);
}

Swift::Int ArraySlice<A>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = 0u;
  v10 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  ArraySlice<A>.hash(into:)(&v6, a1, a2, a3, a4, a5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> ArraySlice<A>(uint64_t a1, uint64_t a2)
{
  specialized Hasher.init(_seed:)(a1, v5);
  ArraySlice<A>.hash(into:)(v5, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(a2 + 16));
  return Hasher._finalize()();
}

void *ArraySlice.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3] >> 1;
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    __break(1u);
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = *(a3 + 16);
  ArraySlice._makeMutableAndUnique()();
  v9 = *(*(v8 - 8) + 72);
  if (v6 < 0)
  {
    goto LABEL_7;
  }

  v10 = v3[1] + v9 * v3[2];
  v13[0] = v10;
  v13[1] = v6;
  v11 = v6 * v9;
  if ((v6 * v9) >> 64 != (v6 * v9) >> 63)
  {
    __break(1u);
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v11 < 0)
  {
    goto LABEL_9;
  }

  a1(v10, v10 + v11);
  return _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lFADSpyxGSiAByxGsAE_pRsd_0_r_0_lIetbyyb_Tpq5Tm(v13, v10, v6);
}

uint64_t ArraySlice.withUnsafeBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v7 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 < 0)
  {
    goto LABEL_7;
  }

  v8 = *(*(a7 - 8) + 72);
  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    __break(1u);
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v9 < 0)
  {
    goto LABEL_9;
  }

  return a1(a4 + v8 * a5, a4 + v8 * a5 + v9, a3);
}

uint64_t _ArrayProtocol.init(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for _ArrayProtocol, associated type descriptor for _ArrayProtocol._Buffer);
  v7 = v6;
  v8 = *(a3 + 16);
  v9 = *(*(*(swift_getAssociatedConformanceWitness(a3, a2, v6, &protocol requirements base descriptor for _ArrayProtocol, associated conformance descriptor for _ArrayProtocol._ArrayProtocol._Buffer: _ArrayBufferProtocol) + 8) + 8) + 8);

  return RangeReplaceableCollection.init<A>(_:)(a1, a2, v7, v8, v9);
}

uint64_t specialized RangeReplaceableCollection.init<A>(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  (*(a3 + 32))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v6, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v12 = *(AssociatedConformanceWitness + 16);
  v12(&v16, v6, AssociatedConformanceWitness);
  if ((v16 & 0x100) != 0)
  {
    v13 = 0;
  }

  else
  {
    LODWORD(v13) = 0;
    do
    {
      if (BYTE3(v13))
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v13 = ((v16 + 1) << (-(__clz(v13) & 0x18) & 0x18)) | v13;
      v12(&v16, v6, AssociatedConformanceWitness);
    }

    while ((v16 & 0x100) == 0);
  }

  (*(v7 + 8))(v10, v6);
  return v13;
}

{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  v18 = xmmword_18071DB90;
  v19 = 0;
  v20 = 0xE000000000000000;
  (*(a3 + 32))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v6, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v12 = *(AssociatedConformanceWitness + 16);
  v12(&v17, v6, AssociatedConformanceWitness);
  if ((v17 & 0x100000000) == 0)
  {
    do
    {
      v13._rawBits = *(&v18 + 1);
      v14._rawBits = *(&v18 + 1);
      specialized Substring.UnicodeScalarView.replaceSubrange<A>(_:with:)(v13, v14);
      v12(&v17, v6, AssociatedConformanceWitness);
    }

    while (BYTE4(v17) != 1);
  }

  (*(v7 + 8))(v10, v6);
  return v18;
}

uint64_t RangeReplaceableCollection.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a4 + 24))(a2, a4);
  return (*(a4 + 72))(a1, a3, a5, a2, a4);
}

{
  return RangeReplaceableCollection.init<A>(_:)(a1, a4, a2, a5, a3);
}

__objc2_class **_ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, Class *a3, uint64_t a4)
{
  v54 = a1;
  v55 = a2;
  v6 = *(*(*(a4 + 16) + 8) + 8);
  swift_getAssociatedTypeWitness(255, v6, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v46 = *(v11 - 8);
  v47 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v45 - v14;
  v58 = *(v8 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v51 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v45 - v20;
  swift_getAssociatedTypeWitness(0, v6, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v23 = v22;
  v48 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v45 - v25;
  v59 = &_swiftEmptyArrayStorage;
  (*(v6 + 32))(a3, v6);
  v27 = v6;
  v28 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v27, a3, v23, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v31 = AssociatedConformanceWitness + 16;
  v30 = *(AssociatedConformanceWitness + 16);
  v56 = v23;
  v53 = v30;
  v30(v23, AssociatedConformanceWitness);
  v32 = v58;
  v33 = v58 + 48;
  v52 = *(v58 + 48);
  if (v52(v15, 1, v8) == 1)
  {
LABEL_2:
    (*(v48 + 8))(v28, v56);
    (*(v46 + 8))(v15, v47);
    return v59;
  }

  else
  {
    v57 = *(v32 + 32);
    v58 = v32 + 32;
    v49 = v33;
    v50 = (v32 + 8);
    v57(v21, v15, v8);
    while (1)
    {
      v35 = v54(v21);
      if (v4)
      {
        break;
      }

      if (v35)
      {
        v36 = v15;
        v37 = v31;
        v38 = AssociatedConformanceWitness;
        v39 = v28;
        v40 = v51;
        v57(v51, v21, v8);
        v43 = type metadata accessor for ContiguousArray(0, v8, v41, v42);
        v44 = v40;
        v28 = v39;
        AssociatedConformanceWitness = v38;
        v31 = v37;
        v15 = v36;
        ContiguousArray.append(_:)(v44, v43);
      }

      else
      {
        (*v50)(v21, v8);
      }

      v53(v56, AssociatedConformanceWitness);
      if (v52(v15, 1, v8) == 1)
      {
        goto LABEL_2;
      }

      v57(v21, v15, v8);
    }

    (*v50)(v21, v8);
    (*(v48 + 8))(v28, v56);
    return v59;
  }
}

__objc2_class **Sequence._filter(_:)(uint64_t (*a1)(char *), uint64_t a2, Class *a3, uint64_t a4)
{
  v57 = a2;
  v56 = a1;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v47 = *(v11 - 8);
  v48 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v52 = &v46 - v14;
  v59 = *(v8 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v51 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v46 - v20;
  v22 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v19, v23);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v27 = v26;
  v49 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v46 - v29;
  v60 = &_swiftEmptyArrayStorage;
  (*(v22 + 16))(v25, v58, a3);
  v31 = v30;
  v32 = v52;
  (*(a4 + 32))(a3, a4);
  v33 = a3;
  v34 = v27;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v33, v27, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v55 = *(AssociatedConformanceWitness + 16);
  v55(v34, AssociatedConformanceWitness);
  v36 = v59;
  v53 = *(v59 + 48);
  v54 = v59 + 48;
  if (v53(v32, 1, v8) == 1)
  {
LABEL_2:
    (*(v49 + 8))(v31, v34);
    (*(v47 + 8))(v32, v48);
    return v60;
  }

  else
  {
    v58 = *(v36 + 32);
    v59 = v36 + 32;
    v50 = (v36 + 8);
    v58(v21, v32, v8);
    while (1)
    {
      v38 = v56(v21);
      if (v4)
      {
        break;
      }

      if (v38)
      {
        v39 = v31;
        v40 = v34;
        v41 = v51;
        v58(v51, v21, v8);
        v44 = type metadata accessor for ContiguousArray(0, v8, v42, v43);
        v45 = v41;
        v34 = v40;
        v31 = v39;
        v32 = v52;
        ContiguousArray.append(_:)(v45, v44);
      }

      else
      {
        (*v50)(v21, v8);
      }

      v55(v34, AssociatedConformanceWitness);
      if (v53(v32, 1, v8) == 1)
      {
        goto LABEL_2;
      }

      v58(v21, v32, v8);
    }

    (*v50)(v21, v8);
    (*(v49 + 8))(v31, v34);
    return v60;
  }
}

uint64_t UInt8.init(_builtinIntegerLiteral:)(unsigned __int8 *a1, unint64_t a2)
{
  result = 0;
  if (a2 <= 0x9FF && (a2 & 1) == 0)
  {
    return *a1;
  }

  return result;
}

unint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5._rawBits = _StringGuts.validateScalarIndex(_:)(15)._rawBits;
    if ((a2 & 0x1000000000000000) != 0)
    {
      value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v5._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
    }

    else
    {
      v7 = v5._rawBits >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v13;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v11 = a2;
        v12 = v5._rawBits >> 16;
        v8 = _StringObject.sharedUTF8.getter(a1, v11);
        v7 = v12;
      }

      value = _decodeScalar(_:startingAt:)(v8, v6._rawBits, v7);
    }
  }

  else
  {
    value = 0;
  }

  LOBYTE(v13[0]) = v2 == 0;
  return value | ((v2 == 0) << 32);
}

uint64_t specialized Collection.first.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a2)
  {
    v4 = 0;
  }

  else
  {
    if (a1 >= a2 || a1 < 0 || a1 >= a4)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4 = *(a3 + a1);
  }

  return v4 | ((a1 == a2) << 8);
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v5._rawBits = 15;
  return String.subscript.getter(v5, a1, a2);
}

unint64_t specialized Collection.first.getter(Swift::UInt64 a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 ^ a1;
  if ((a2 ^ a1) >= 0x4000)
  {
    v8 = _StringGuts.validateScalarIndex(_:in:)(a1, a1, a2, a3, a4);
    if ((a4 & 0x1000000000000000) != 0)
    {
      value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v8 & 0xFFFFFFFFFFFF0000))._0._value;
    }

    else
    {
      v10 = v8 >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v15[0] = a3;
        v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
        v11 = v15;
      }

      else if ((a3 & 0x1000000000000000) != 0)
      {
        v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v13 = a4;
        v14 = v8 >> 16;
        v11 = _StringObject.sharedUTF8.getter(a3, v13);
        v10 = v14;
      }

      value = _decodeScalar(_:startingAt:)(v11, v9, v10);
    }
  }

  else
  {
    value = 0;
  }

  LOBYTE(v15[0]) = v4 < 0x4000;
  return value | ((v4 < 0x4000) << 32);
}

uint64_t Collection.first.getter@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v27[-v14];
  (*(a2 + 64))(a1, a2);
  (*(a2 + 72))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, a1, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v17 = (*(*(AssociatedConformanceWitness + 8) + 8))(v15, v12, v7);
  v18 = *(v8 + 8);
  v18(v12, v7);
  if (v17)
  {
    v18(v15, v7);
    swift_getAssociatedTypeWitness(0, *(a2 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
  }

  else
  {
    v21 = (*(a2 + 80))(v27, v15, a1, a2);
    v23 = v22;
    swift_getAssociatedTypeWitness(0, *(a2 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v25 = v24;
    v26 = *(v24 - 8);
    (*(v26 + 16))(a3, v23, v24);
    v21(v27, 0);
    v18(v15, v7);
    return (*(v26 + 56))(a3, 0, 1, v25);
  }
}

uint64_t Optional._unsafelyUnwrappedUnchecked.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v3);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v8, v9);
  }

  result = (*(v6 + 8))(v8, a1);
  __break(1u);
  return result;
}

uint64_t UnsignedInteger<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v110 = a1;
  v105 = a6;
  v108 = *(a4 + 8);
  v99 = *(*(v108 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v99, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v98 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v97 = &v91 - v13;
  v106 = a2;
  v101 = *(a2 - 1);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v100 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v104 = &v91 - v19;
  v107 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a5[3] + 16);
  swift_getAssociatedTypeWitness(0, v23, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v25 = v24;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v91 - v27;
  v103 = a5[8];
  if (v103(a3, a5))
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v23, a3, v25, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v25, AssociatedConformanceWitness);
    (*(v23 + 24))(v28, a3, v23);
    v30 = (*(*(a5[4] + 8) + 32))(v110, v22, a3);
    (*(v107 + 8))(v22, a3);
    if ((v30 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v94 = v28;
  v95 = v25;
  v96 = v23;
  v102 = v22;
  v31 = a5[16];
  v32 = v110;
  v33 = (v31)(a3, a5);
  v109 = a5;
  v34 = v106;
  if (v33 >= (*(a4 + 56))(v106, a4))
  {
    v92 = v31;
    v35 = v104;
    (*(a4 + 64))(v34, a4);
    v36 = v108;
    v37 = *(v108 + 64);
    v38 = v37(v34, v108);
    v93 = a3;
    if ((v38 ^ v103(a3, v109)))
    {
      v39 = v37(v34, v36);
      v40 = (*(v36 + 128))(v34, v36);
      a3 = v93;
      v41 = v109;
      v42 = v92(v93);
      if (v39)
      {
        if (v42 >= v40)
        {
          v66 = a3;
          v67 = v98;
          v68 = v99;
          v69 = swift_getAssociatedConformanceWitness(v99, v34, v98, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v70 = v97;
          (*(v69 + 8))(&qword_18071E0A8, 256, v67, v69);
          v71 = v100;
          (v68[3])(v70, v34, v68);
          v72 = v104;
          LOBYTE(v67) = (*(*(*(v36 + 32) + 8) + 16))(v104, v71, v34);
          v50 = v34;
          v73 = *(v101 + 8);
          v73(v71, v50);
          if (v67)
          {
            v73(v72, v50);
            goto LABEL_26;
          }

          v74 = v102;
          v75 = v72;
          a3 = v66;
          (v41[12])(v75, v50, v36, v66, v41);
          v32 = v110;
          v49 = (*(*(v41[4] + 8) + 16))(v74, v110, v66);
          (*(v107 + 8))(v74, v66);
        }

        else
        {
          v43 = v102;
          v44 = v110;
          (*(v107 + 16))(v102, v110, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral);
          v45 = v100;
          (*(v36 + 96))(v43, a3, v41, v34, v36);
          v46 = *(v36 + 32);
          v32 = v44;
          v47 = a3;
          v48 = v104;
          v49 = (*(*(v46 + 8) + 16))(v104, v45, v34);
          v50 = v34;
          v51 = *(v101 + 8);
          v51(v45, v50);
          v52 = v48;
          a3 = v47;
          v51(v52, v50);
        }

        v34 = v50;
        if (v49)
        {
LABEL_26:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        v58 = v40 < v42;
        v59 = v107;
        v60 = v102;
        if (v58)
        {
          (v41[12])(v104, v34, v36, a3, v41);
          v32 = v110;
          v61 = (*(*(v41[4] + 8) + 16))(v60, v110, a3);
          (*(v59 + 8))(v60, a3);
        }

        else
        {
          v76 = v95;
          v77 = v96;
          v78 = swift_getAssociatedConformanceWitness(v96, a3, v95, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v79 = v94;
          (*(v78 + 8))(&qword_18071E0A8, 256, v76, v78);
          (*(v77 + 3))(v79, a3, v77);
          v80 = v41;
          v81 = *(*(v41[4] + 8) + 40);
          v82 = v110;
          v83 = v81(v110, v60, a3);
          (*(v59 + 8))(v60, a3);
          if ((v83 & 1) == 0)
          {
            (*(v101 + 8))(v104, v34);
            v32 = v82;
            return (*(v108 + 96))(v32, a3, v109, v34);
          }

          (*(v59 + 16))(v60, v82, a3);
          v84 = v100;
          (*(v36 + 96))(v60, a3, v80, v34, v36);
          v85 = a3;
          v86 = v104;
          v61 = (*(*(*(v36 + 32) + 8) + 16))(v104, v84, v34);
          v87 = v34;
          v88 = *(v101 + 8);
          v88(v84, v87);
          v89 = v86;
          a3 = v85;
          v88(v89, v87);
          v34 = v87;
          v32 = v82;
        }

        if (v61)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v53 = (*(v36 + 128))(v34, v36);
      v54 = v110;
      a3 = v93;
      if (v53 >= (v92)(v93, v109))
      {
        v62 = v102;
        (*(v107 + 16))(v102, v54, a3);
        v63 = v100;
        (*(v36 + 96))(v62, a3, v109, v34, v36);
        v57 = (*(*(*(v36 + 32) + 8) + 16))(v35, v63, v34);
        v64 = v34;
        v65 = *(v101 + 8);
        v65(v63, v64);
        v65(v35, v64);
        v34 = v64;
      }

      else
      {
        v55 = v109;
        v56 = v102;
        (v109[12])(v35, v34, v36, a3, v109);
        v57 = (*(*(v55[4] + 8) + 16))(v56, v54, a3);
        (*(v107 + 8))(v56, a3);
      }

      v32 = v54;
      if (v57)
      {
        goto LABEL_26;
      }
    }
  }

  return (*(v108 + 96))(v32, a3, v109, v34);
}

uint64_t static Unicode.ASCII.encode(_:)(unsigned int a1)
{
  v1 = a1;
  if (a1 > 0x7F)
  {
    v1 = 0;
  }

  return v1 | ((a1 > 0x7F) << 8);
}

uint64_t static BinaryInteger.< infix<A>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
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
    if ((v26 & 1) == 0)
    {
      v32 = v67;
      v39 = v68;
      if (v28 < v30)
      {
        v40 = v66;
        (*(v67 + 16))(v66, v59, a3);
        (*(a6 + 96))(v40, a3, a5, a4, a6);
        v38 = (*(*(*(a6 + 32) + 8) + 16))(v39, v58, a4);
        (*(v69 + 8))(v39, a4);
        return v38 & 1;
      }

      v50 = v64;
      v51 = v65;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v65, a4, v64, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v53 = v63;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v50, AssociatedConformanceWitness);
      (v51[3])(v53, a4, v51);
      v54 = v58;
      LOBYTE(v50) = (*(*(*(a6 + 32) + 8) + 40))(v58, v39, a4);
      v55 = v69;
      (*(v69 + 8))(v39, a4);
      v56 = v59;
      if ((v50 & 1) == 0)
      {
        v38 = 0;
        return v38 & 1;
      }

      (*(v55 + 16))(v39, v54, a4);
      v33 = v66;
      (*(a5 + 96))(v39, a4, a6, a3, a5);
      v34 = (*(*(*(a5 + 32) + 8) + 16))(v56, v33, a3);
      goto LABEL_15;
    }

    v32 = v67;
    v31 = v68;
    if (v30 < v28)
    {
      (*(v69 + 16))(v68, v58, a4);
      v33 = v66;
      (*(a5 + 96))(v31, a4, a6, a3, a5);
      v34 = (*(*(*(a5 + 32) + 8) + 16))(v59, v33, a3);
LABEL_15:
      v38 = v34;
      (*(v32 + 8))(v33, a3);
      return v38 & 1;
    }

    v43 = v61;
    v44 = v62;
    v45 = swift_getAssociatedConformanceWitness(v62, a3, v61, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v46 = v60;
    (*(v45 + 8))(&qword_18071E0A8, 256, v43, v45);
    v47 = v66;
    (v44[3])(v46, a3, v44);
    v48 = v59;
    LOBYTE(v43) = (*(*(*(a5 + 32) + 8) + 16))(v59, v47, a3);
    (*(v32 + 8))(v47, a3);
    v49 = v69;
    if (v43)
    {
      v38 = 1;
    }

    else
    {
      (*(v32 + 16))(v47, v48, a3);
      (*(a6 + 96))(v47, a3, a5, a4, a6);
      v38 = (*(*(*(a6 + 32) + 8) + 16))(v31, v58, a4);
      (*(v49 + 8))(v31, a4);
    }
  }

  else
  {
    v35 = (*(a5 + 128))(a3, a5);
    if (v35 >= (*(a6 + 128))(a4, a6))
    {
      v41 = v68;
      (*(v69 + 16))(v68, a2, a4);
      v42 = v66;
      (*(a5 + 96))(v41, a4, a6, a3, a5);
      v38 = (*(*(*(a5 + 32) + 8) + 16))(a1, v42, a3);
      (*(v67 + 8))(v42, a3);
    }

    else
    {
      v36 = v66;
      (*(v67 + 16))(v66, a1, a3);
      v37 = v68;
      (*(a6 + 96))(v36, a3, a5, a4, a6);
      v38 = (*(*(*(a6 + 32) + 8) + 16))(v37, a2, a4);
      (*(v69 + 8))(v37, a4);
    }
  }

  return v38 & 1;
}

uint64_t static Unicode.ASCII.transcode<A>(_:from:)(int *a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  if (a3 == &type metadata for Unicode.UTF16)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_UIntBufferVys6UInt16VGMd, _ss11_UIntBufferVys6UInt16VGMR);
    swift_getAssociatedTypeWitness(0, a4, &type metadata for Unicode.UTF16, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
    if (v7 == v6)
    {
      v8 = *a1;
      v9 = (*a1 & 0xFF80) != 0;
      if ((*a1 & 0xFF80) != 0)
      {
        LOBYTE(v8) = 0;
      }

      return v8 | (v9 << 8);
    }

LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 != &type metadata for Unicode.UTF8)
  {
    v13 = (*(a4 + 88))(a1, a3, a4);
    v9 = v13 > 0x7F;
    if (v13 <= 0x7F)
    {
      LOBYTE(v8) = v13;
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    return v8 | (v9 << 8);
  }

  swift_getAssociatedTypeWitness(0, a4, &type metadata for Unicode.UTF8, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  if (v11 != &type metadata for _ValidUTF8Buffer)
  {
    goto LABEL_10;
  }

  if (!*a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = (*a1 - 1);
  v9 = v12 < 0;
  v8 = v12 & ~(v12 >> 31);
  return v8 | (v9 << 8);
}

uint64_t _identityCast<A, B>(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 != a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *(*(a4 - 8) + 16);

  return v6(a5, a1, a4);
}

uint64_t UInt32.init(_builtinIntegerLiteral:)(unsigned int *a1, unint64_t a2)
{
  result = 0;
  if (a2 >> 9 <= 0x10 && (a2 & 1) == 0)
  {
    return *a1;
  }

  return result;
}

uint64_t protocol witness for static _UnicodeEncoding.encode(_:) in conformance Unicode.ASCII@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 0x7F)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  a2[1] = result > 0x7F;
  return result;
}

void protocol witness for static _UnicodeEncoding.transcode<A>(_:from:) in conformance Unicode.ASCII(int *a1@<X0>, ValueMetadata *a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (a2 == &type metadata for Unicode.UTF16)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_UIntBufferVys6UInt16VGMd, _ss11_UIntBufferVys6UInt16VGMR);
    swift_getAssociatedTypeWitness(0, a3, &type metadata for Unicode.UTF16, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
    if (v8 == v7)
    {
      v9 = *a1;
      v10 = (*a1 & 0xFF80) != 0;
      if ((*a1 & 0xFF80) != 0)
      {
        LOBYTE(v9) = 0;
      }

      goto LABEL_5;
    }

LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 != &type metadata for Unicode.UTF8)
  {
    v13 = (*(a3 + 88))(a1, a2, a3);
    v10 = v13 > 0x7F;
    if (v13 <= 0x7F)
    {
      LOBYTE(v9) = v13;
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    goto LABEL_5;
  }

  swift_getAssociatedTypeWitness(0, a3, &type metadata for Unicode.UTF8, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  if (v11 != &type metadata for _ValidUTF8Buffer)
  {
    goto LABEL_10;
  }

  if (!*a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = (*a1 - 1);
  v10 = v12 < 0;
  v9 = v12 & ~(v12 >> 31);
LABEL_5:
  *a4 = v9;
  a4[1] = v10;
}

uint64_t Unicode.ASCII.Parser.parseScalar<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(&v5, a2, a3);
  if ((v5 & 0x80u) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v5;
  }

  if (BYTE1(v5))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t Int8.init(_builtinIntegerLiteral:)(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 <= 0x8FF)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for _UnicodeParser.parseScalar<A>(from:) in conformance Unicode.ASCII.Parser@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = Unicode.ASCII.Parser.parseScalar<A>(from:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  return result;
}

Swift::String __swiftcall String.init()()
{
  v0 = 0;
  v1 = 0xE000000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void _assertionFailure(_:_:file:line:flags:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, const char *a6, unint64_t a7, uint64_t a8, unint64_t a9, int a10)
{
  v10 = a9;
  if (a3)
  {
    if (HIDWORD(a1))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a1 >> 16 > 0x10 || (a1 & 0xFFFFF800) == 0xD800)
    {
LABEL_10:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    a1 = _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a1, partial apply for closure #1 in _assertionFailure(_:_:file:line:flags:));
    __break(1u);
  }

  else if (!a1)
  {
    goto LABEL_10;
  }

  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  closure #1 in _assertionFailure(_:_:file:line:flags:)(a1, a2, a4, a5, a6, a7, a8, v10);
  __break(1u);
  goto LABEL_10;
}

uint64_t assert(_:_:file:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void), uint64_t a4, const char *a5, unint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10)
{
  result = a1();
  if ((result & 1) == 0)
  {
    v16 = a3();
    _assertionFailure(_:_:file:line:flags:)(a9, a10, 2, v16, v17, a5, a6, a7, a8, 0);
  }

  return result;
}

void _assertionFailure(_:_:file:line:flags:)(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (HIDWORD(a1))
    {
      goto LABEL_29;
    }

    if (a1 >> 16 > 0x10 || (a1 & 0xFFFFF800) == 0xD800)
    {
      goto LABEL_28;
    }

    a1 = _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a1, partial apply for closure #1 in _assertionFailure(_:_:file:line:flags:));
    __break(1u);
  }

  else if (!a1)
  {
    goto LABEL_28;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v3 = MEMORY[0x1EEE9AC00](a1, a2);
    if (v7)
    {
LABEL_20:
      if (HIDWORD(v5))
      {
        goto LABEL_29;
      }

      if (v5 >> 16 > 0x10 || (v5 & 0xFFFFF800) == 0xD800)
      {
        goto LABEL_28;
      }

      _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(v5, partial apply for closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:));
      __break(1u);
      goto LABEL_24;
    }

    if (!v5)
    {
      goto LABEL_28;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v8 = MEMORY[0x1EEE9AC00](v3, v4);
      if (v16)
      {
LABEL_24:
        if (!(v12 >> 32))
        {
          if (v12 >> 16 <= 0x10 && (v12 & 0xFFFFF800) != 0xD800)
          {
            _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(v12, partial apply for closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:));
            __break(1u);
          }

LABEL_28:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_29:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (!v12)
      {
        goto LABEL_28;
      }

      if ((v13 & 0x8000000000000000) == 0)
      {
        if (v9 >> 31 || v11 >> 31 || v13 >> 31 || HIDWORD(v15))
        {
          goto LABEL_29;
        }

        _swift_stdlib_reportFatalErrorInFile(v8, v9, v10, v11, v12, v13, v15, v14);
        __break(1u);
        goto LABEL_20;
      }
    }
  }

  _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
}

uint64_t _overflowChecked<A>(_:file:line:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v25[1] = a6;
  v25[2] = a3;
  v25[3] = a4;
  swift_getTupleTypeMetadata2(0, a7, &type metadata for Bool, 0, 0);
  v13 = v12;
  v14 = *(v12 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v25 - v20;
  v22 = *(a7 - 1);
  (*(v22 + 16))(v25 - v20, a1, a7);
  v21[*(v13 + 48)] = a2;
  (*(v14 + 16))(v18, v21, v13);
  v23 = v18[*(v13 + 48)];
  (*(v22 + 32))(a8, v18, a7);
  if (v23 == 1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v14 + 8))(v21, v13);
}

uint64_t Int32.init(_builtinIntegerLiteral:)(unsigned int *a1, unint64_t a2)
{
  if (a2 >> 8 <= 0x20)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

uint64_t closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)(const char *a1, uint64_t a2, const char *a3, unint64_t a4, char a5, const char *a6, uint64_t a7, unint64_t a8, int a9)
{
  if ((a5 & 1) == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (!a6)
    {
LABEL_7:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a7 > 0xFFFFFFFF7FFFFFFFLL && a7 < 0x80000000)
    {
      if (!a1)
      {
        goto LABEL_7;
      }

      if (a2 > 0xFFFFFFFF7FFFFFFFLL && a2 < 0x80000000 && !(a4 >> 31) && !HIDWORD(a8))
      {
        _swift_stdlib_reportFatalErrorInFile(a6, a7, a1, a2, a3, a4, a8, a9);
        __break(1u);
      }
    }

LABEL_18:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 >> 32)
  {
    goto LABEL_18;
  }

  if (a3 >> 16 > 0x10 || (a3 & 0xFFFFF800) == 0xD800)
  {
    goto LABEL_7;
  }

  return _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a3, closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)partial apply);
}

void closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)(const char *a1, uint64_t a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, unint64_t a7, int a8)
{
  if (a3)
  {
    if (a4 >= 0xFFFFFFFF80000000 && a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        goto LABEL_8;
      }

      if (a6 >= 0xFFFFFFFF80000000 && a6 < 0x80000000)
      {
        if (!a1)
        {
          goto LABEL_8;
        }

        if (a2 >= 0xFFFFFFFF80000000 && a2 < 0x80000000 && !HIDWORD(a7))
        {
          _swift_stdlib_reportFatalErrorInFile(a3, a4, a5, a6, a1, a2, a7, a8);
          __break(1u);
        }
      }
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_8:
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
}

{
  if (!a3)
  {
    goto LABEL_15;
  }

  if (a4 < 0xFFFFFFFF80000000 || a4 > 0x7FFFFFFF)
  {
    goto LABEL_14;
  }

  if (!a5)
  {
    goto LABEL_15;
  }

  if (a6 < 0xFFFFFFFF80000000 || a6 >= 0x80000000)
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
LABEL_15:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 < 0xFFFFFFFF80000000 || a2 >= 0x80000000 || HIDWORD(a7))
  {
    goto LABEL_14;
  }

  _swift_stdlib_reportFatalErrorInFile(a3, a4, a5, a6, a1, a2, a7, a8);
}

uint64_t StaticString.withUTF8Buffer<A>(_:)(uint64_t (*a1)(unint64_t, uint64_t), uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (HIDWORD(a3))
    {
      LODWORD(v14) = 0;
      v13 = 3053;
      LOBYTE(v12) = 2;
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3 >> 16 <= 0x10 && (a3 & 0xFFFFF800) != 0xD800)
    {
      MEMORY[0x1EEE9AC00](a1, a2);
      v12 = v7;
      v13 = v8;
      v14 = a2;
      return Unicode.Scalar.withUTF8CodeUnits<A>(_:)(partial apply for closure #1 in StaticString.withUTF8Buffer<A>(_:), &v11, v9);
    }

    v10 = 148;
LABEL_14:
    LODWORD(v14) = 0;
    v13 = v10;
    LOBYTE(v12) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
    v10 = 136;
    goto LABEL_14;
  }

  if (a4 < 0)
  {
    LODWORD(v14) = 0;
    v13 = 1410;
    LOBYTE(v12) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1(a3, a4);
}

void closure #1 in _assertionFailure(_:_:file:line:flags:)(const char *a1, uint64_t a2, uint64_t a3, unint64_t a4, const char *a5, unint64_t a6, char a7, unint64_t a8)
{
  v11 = a4;
  v16 = a4;
  if ((v11 & 0x1000000000000000) == 0)
  {
    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v23[0] = a3;
    v23[1] = v11 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v16, v17);
    if (a7)
    {
      if (a5 >> 32)
      {
        goto LABEL_36;
      }

      if (a5 >> 16 <= 0x10 && (a5 & 0xFFFFF800) != 0xD800)
      {
        _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a5, partial apply for closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:));
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    if (!a5)
    {
      goto LABEL_39;
    }

    if ((a6 & 0x8000000000000000) == 0)
    {
      if (!a1)
      {
        goto LABEL_39;
      }

      if (a2 > 0xFFFFFFFF7FFFFFFFLL && a2 < 0x80000000 && !(a6 >> 31) && !HIDWORD(a8))
      {
        v18 = v23;
LABEL_30:
        _swift_stdlib_reportFatalErrorInFile(a1, a2, v18, v19, a5, a6, a8, v20);
        goto LABEL_35;
      }

      goto LABEL_36;
    }

LABEL_37:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  a3 = specialized static String._copying(_:)(a3, v11);
  v22 = v21;
  v11;
  v11 = v22;
  if ((v22 & 0x2000000000000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  if ((a3 & 0x1000000000000000) == 0)
  {
    v16 = _StringObject.sharedUTF8.getter(a3, v11);
  }

  MEMORY[0x1EEE9AC00](v16, v17);
  if ((a7 & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_39;
    }

    if ((a6 & 0x8000000000000000) == 0)
    {
      if (!a1)
      {
        goto LABEL_39;
      }

      if (a2 > 0xFFFFFFFF7FFFFFFFLL && a2 < 0x80000000)
      {
        if (v18)
        {
          if (v19 >= 0x80000000 || a6 >> 31 || HIDWORD(a8))
          {
            goto LABEL_36;
          }

          goto LABEL_30;
        }

LABEL_39:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_36:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_37;
  }

  if (a5 >> 32)
  {
    goto LABEL_36;
  }

  if (a5 >> 16 > 0x10 || (a5 & 0xFFFFF800) == 0xD800)
  {
    goto LABEL_39;
  }

  _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a5, closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:)partial apply);
LABEL_35:
  v11;
}

uint64_t String.withUTF8<A>(_:)(uint64_t (*a1)(void *, uint64_t))
{
  v3 = *v1;
  v4 = v1[1];
  if ((v4 & 0x1000000000000000) != 0)
  {
    v8 = specialized static String._copying(_:)(v3, v1[1]);
    v10 = v9;
    v4;
    v3 = v8;
    *v1 = v8;
    v1[1] = v10;
    v4 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = HIBYTE(v4) & 0xF;
    v12[0] = v3;
    v12[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    v7 = v12;
    return a1(v7, v6);
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v3 & 0x1000000000000000) != 0)
  {
    v5 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter(v3, v4);
  }

  v7 = v5;
  return a1(v7, v6);
}

void closure #1 in _assertionFailure(_:_:flags:)(const char *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = a4;
  a4;
  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    v15[0] = a3;
    v15[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    if (a1)
    {
      if (a2 >= 0xFFFFFFFF80000000 && a2 < 0x80000000)
      {
        _swift_stdlib_reportFatalError(a1, a2, v15, HIBYTE(v6) & 0xF, a5);
        v6;
        return;
      }

LABEL_17:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_19;
  }

  a3 = specialized static String._copying(_:)(a3, v6);
  v13 = v12;
  v6;
  v6 = v13;
  if ((v13 & 0x2000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((a3 & 0x1000000000000000) == 0)
  {
    v10 = _StringObject.sharedUTF8.getter(a3, v6);
    v11 = v14;
    if (a1)
    {
      goto LABEL_5;
    }

LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v11 = a3 & 0xFFFFFFFFFFFFLL;
  if (!a1)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (a2 <= 0xFFFFFFFF7FFFFFFFLL || a2 >= 0x80000000)
  {
    goto LABEL_17;
  }

  if (!v10)
  {
    goto LABEL_19;
  }

  if (v11 >= 0x80000000)
  {
    goto LABEL_17;
  }

  _swift_stdlib_reportFatalError(a1, a2, v10, v11, a5);

  v6;
}

void _unimplementedInitializer(className:initName:file:line:column:)(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (HIDWORD(a1))
    {
      goto LABEL_18;
    }

    if (a1 >> 16 > 0x10 || (a1 & 0xFFFFF800) == 0xD800)
    {
      goto LABEL_17;
    }

    a1 = _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a1, partial apply for closure #1 in _unimplementedInitializer(className:initName:file:line:column:));
    __break(1u);
  }

  else if (!a1)
  {
    goto LABEL_17;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v3 = MEMORY[0x1EEE9AC00](a1, a2);
    if (v12)
    {
      goto LABEL_13;
    }

    if (!v5)
    {
      goto LABEL_17;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(v5, v6, v7, v8, v10, v3, v4, v9, v11);
      __break(1u);
LABEL_13:
      if (!(v5 >> 32))
      {
        if (v5 >> 16 <= 0x10 && (v5 & 0xFFFFF800) != 0xD800)
        {
          _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(v5, partial apply for closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:));
          __break(1u);
        }

LABEL_17:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_18:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
}

void closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(const char *a1, uint64_t a2, const char *a3, uint64_t a4, char a5, const char *a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10)
{
  if (a5)
  {
    if (a3 >> 32)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a3 >> 16 <= 0x10 && (a3 & 0xFFFFF800) != 0xD800)
    {
      _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a3, closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)partial apply);
      return;
    }

LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  if (a4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(a3, a4, a6, a7, a8, a1, a2, a9, a10);
}

void closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(const char *a1, uint64_t a2, const char *a3, unint64_t a4, char a5, const char *a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  if (a5)
  {
    if (a3 >> 32)
    {
      goto LABEL_20;
    }

    if (a3 >> 16 <= 0x10 && (a3 & 0xFFFFF800) != 0xD800)
    {
      _ss7UnicodeO6ScalarV17withUTF8CodeUnitsyxxSRys5UInt8VGKXEKlFyt_Tg5024_ss12StaticStringV14withd14BufferyxxSRys5G20VGXElFxAFXEfU_yt_Tg5AHxRi_zRi0_zlyytIsgyr_Tf1ncn_nTm(a3, partial apply for closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:));
      return;
    }

    goto LABEL_22;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a6)
  {
    goto LABEL_22;
  }

  if (a7 <= 0xFFFFFFFF7FFFFFFFLL || a7 >= 0x80000000)
  {
LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
LABEL_22:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 <= 0xFFFFFFFF7FFFFFFFLL || a2 >= 0x80000000 || a4 >> 31 || HIDWORD(a8) || HIDWORD(a9))
  {
    goto LABEL_20;
  }

  _swift_stdlib_reportUnimplementedInitializerInFile(a6, a7, a1, a2, a3, a4, a8, a9, 0);
}

void closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(const char *a1, uint64_t a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    goto LABEL_14;
  }

  if (a4 < 0xFFFFFFFF80000000 || a4 > 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

  if (!a5)
  {
    goto LABEL_14;
  }

  if (a6 < 0xFFFFFFFF80000000 || a6 >= 0x80000000)
  {
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a1)
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 < 0xFFFFFFFF80000000 || a2 >= 0x80000000 || HIDWORD(a7) || HIDWORD(a8))
  {
    goto LABEL_13;
  }

  _swift_stdlib_reportUnimplementedInitializerInFile(a3, a4, a5, a6, a1, a2, a7, a8, 0);
}

void _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)(Class *a1, uint64_t a2, uint64_t a3, Class *a4)
{
  v7 = _StringGuts.init(_initialCapacity:)(39);
  v17 = v8;
  v88._countAndFlagsBits = v7;
  v88._object = v8;
  v18 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v18 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v18 || (v7 & ~v8 & 0x2000000000000000) != 0)
  {
    if ((0x800000018066BCD0 & 0x2000000000000000 & v8) != 0 && (v19 = specialized _SmallString.init(_:appending:)(v7, v8, 0xD000000000000016, 0x800000018066BCD0 | 0x8000000000000000), (v21 & 1) == 0))
    {
      v23 = v19;
      v24 = v20;
      v17;
      0x800000018066BCD0 | 0x8000000000000000;
      v88._countAndFlagsBits = v23;
      v88._object = v24;
    }

    else
    {
      if ((0x800000018066BCD0 & 0x2000000000000000) != 0)
      {
        v22 = (0x800000018066BCD0 >> 56) & 0xF;
      }

      else
      {
        v22 = 22;
      }

      _StringGuts.append(_:)(0xD000000000000016, 0x800000018066BCD0 | 0x8000000000000000, 0, v22, v9, v10, v11, v12, v13, v14, v15, v16);
      0x800000018066BCD0 | 0x8000000000000000;
    }
  }

  else
  {
    v8;
    v88._countAndFlagsBits = 0xD000000000000016;
    v88._object = (0x800000018066BCD0 | 0x8000000000000000);
  }

  TypeName = swift_getTypeName(a1, 0);
  if (v26 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v27 = TypeName;
  v28 = v26;
  v29 = validateUTF8(_:)(TypeName, v26);
  if ((v29 & 0x8000000000000000) != 0)
  {
    v33 = repairUTF8(_:firstKnownBrokenRange:)(v27, v28, v30, v31);
  }

  else
  {
    v33 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v27, v28, v29 & 1, v32);
  }

  v43 = v33;
  v44 = v34;
  v45 = (v88._object >> 56) & 0xF;
  if ((v88._object & 0x2000000000000000) == 0)
  {
    v45 = v88._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v45 && (v88._countAndFlagsBits & ~v88._object & 0x2000000000000000) == 0)
  {
    v88._object;
    v88._countAndFlagsBits = v43;
    v88._object = v44;
    goto LABEL_30;
  }

  if ((v88._object & 0x2000000000000000) != 0)
  {
    if ((v34 & 0x2000000000000000) != 0)
    {
      v47 = specialized _SmallString.init(_:appending:)(v88._countAndFlagsBits, v88._object, v33, v34);
      if ((v49 & 1) == 0)
      {
        v84 = v47;
        v85 = v48;
        v88._object;
        v44;
        v88._countAndFlagsBits = v84;
        v88._object = v85;
        v44 = v85;
        v43 = v84;
LABEL_30:
        v59 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("(rawValue: ", 0xBuLL, 1);
        countAndFlagsBits = v59._countAndFlagsBits;
        v60 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000) == 0)
        {
          v60 = v43 & 0xFFFFFFFFFFFFLL;
        }

        if (!v60 && (v43 & ~v44 & 0x2000000000000000) == 0)
        {
          v44;
          v88 = v59;
          goto LABEL_41;
        }

        if ((v44 & 0x2000000000000000) != 0)
        {
          if ((v59._object & 0x2000000000000000) != 0)
          {
            v77 = specialized _SmallString.init(_:appending:)(v43, v44, v59._countAndFlagsBits, v59._object);
            if ((v79 & 1) == 0)
            {
              v86 = v77;
              v87 = v78;
              v44;
              v59._object;
              v88._countAndFlagsBits = v86;
              v88._object = v87;
LABEL_41:
              _print_unlocked<A, B>(_:_:)(a2, &v88, a4, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
              object = v88._object;
              v71 = (v88._object >> 56) & 0xF;
              if ((v88._object & 0x2000000000000000) == 0)
              {
                v71 = v88._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
              }

              if (v71 || (v88._countAndFlagsBits & ~v88._object & 0x2000000000000000) != 0)
              {
                if ((v88._object & 0x2000000000000000) != 0 && (v74 = specialized _SmallString.init(_:appending:)(v88._countAndFlagsBits, v88._object, 0x2729uLL, 0xE200000000000000), (v76 & 1) == 0))
                {
                  v80 = v74;
                  v81 = object;
                  v82 = v80;
                  v83 = v75;
                  v81;
                  0xE200000000000000;
                  v73 = v83;
                  v72 = v82;
                  v88._countAndFlagsBits = v82;
                  v88._object = v83;
                }

                else
                {
                  _StringGuts.append(_:)(10025, 0xE200000000000000, 0, 2, v62, v63, v64, v65, v66, v67, v68, v69);
                  0xE200000000000000;
                  v72 = v88._countAndFlagsBits;
                  v73 = v88._object;
                }
              }

              else
              {
                v88._object;
                v72 = 10025;
                v73 = 0xE200000000000000;
                v88._countAndFlagsBits = 10025;
                v88._object = 0xE200000000000000;
              }

              _assertionFailure(_:_:flags:)("Fatal error", 11, 2, v72, v73, 0);
            }

            v61 = (v59._object >> 56) & 0xF;
            countAndFlagsBits = v59._countAndFlagsBits;
LABEL_40:
            _StringGuts.append(_:)(countAndFlagsBits, v59._object, 0, v61, v51, v52, v53, v54, v55, v56, v57, v58);
            v59._object;
            goto LABEL_41;
          }
        }

        else if ((v59._object & 0x2000000000000000) != 0)
        {
          v61 = (v59._object >> 56) & 0xF;
          goto LABEL_40;
        }

        v61 = v59._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        goto LABEL_40;
      }

      goto LABEL_28;
    }
  }

  else if ((v34 & 0x2000000000000000) != 0)
  {
LABEL_28:
    v46 = HIBYTE(v44) & 0xF;
    goto LABEL_29;
  }

  v46 = v33 & 0xFFFFFFFFFFFFLL;
LABEL_29:
  _StringGuts.append(_:)(v43, v44, 0, v46, v35, v36, v37, v38, v39, v40, v41, v42);
  v44;
  v43 = v88._countAndFlagsBits;
  v44 = v88._object;
  goto LABEL_30;
}

void _diagnoseUnexpectedEnumCase<A>(type:)(Class *a1)
{
  v2 = _StringGuts.init(_initialCapacity:)(58);
  v12 = v3;
  v67 = v2;
  v68 = v3;
  v13 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v13 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 || (v2 & ~v3 & 0x2000000000000000) != 0)
  {
    if ((0x800000018066BD00 & 0x2000000000000000 & v3) != 0 && (v14 = specialized _SmallString.init(_:appending:)(v2, v3, 0xD000000000000037, 0x800000018066BD00 | 0x8000000000000000), (v16 & 1) == 0))
    {
      v18 = v14;
      v19 = v15;
      v12;
      0x800000018066BD00 | 0x8000000000000000;
      v67 = v18;
      v68 = v19;
    }

    else
    {
      if ((0x800000018066BD00 & 0x2000000000000000) != 0)
      {
        v17 = (0x800000018066BD00 >> 56) & 0xF;
      }

      else
      {
        v17 = 55;
      }

      _StringGuts.append(_:)(0xD000000000000037, 0x800000018066BD00 | 0x8000000000000000, 0, v17, v4, v5, v6, v7, v8, v9, v10, v11);
      0x800000018066BD00 | 0x8000000000000000;
    }
  }

  else
  {
    v3;
    v67 = 0xD000000000000037;
    v68 = 0x800000018066BD00 | 0x8000000000000000;
  }

  TypeName = swift_getTypeName(a1, 0);
  if (v21 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = TypeName;
  v23 = v21;
  v24 = validateUTF8(_:)(TypeName, v21);
  if ((v24 & 0x8000000000000000) != 0)
  {
    v28 = repairUTF8(_:firstKnownBrokenRange:)(v22, v23, v25, v26);
  }

  else
  {
    v28 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v22, v23, v24 & 1, v27);
  }

  v38 = v29;
  v39 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v39 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39 && (v67 & ~v68 & 0x2000000000000000) == 0)
  {
    v40 = v28;
    v68;
    v49 = v40;
    v67 = v40;
    v68 = v38;
    goto LABEL_28;
  }

  if ((v68 & 0x2000000000000000) != 0)
  {
    if ((v29 & 0x2000000000000000) != 0)
    {
      v57 = v28;
      v58 = specialized _SmallString.init(_:appending:)(v67, v68, v28, v29);
      if ((v60 & 1) == 0)
      {
        v65 = v59;
        v66 = v58;
        v68;
        v38;
        v67 = v66;
        v68 = v65;
        v38 = v65;
        v49 = v66;
LABEL_28:
        v51 = HIBYTE(v38) & 0xF;
        if ((v38 & 0x2000000000000000) == 0)
        {
          v51 = v49 & 0xFFFFFFFFFFFFLL;
        }

        if (v51 || (v49 & ~v38 & 0x2000000000000000) != 0)
        {
          if ((v38 & 0x2000000000000000) != 0 && (v54 = specialized _SmallString.init(_:appending:)(v49, v38, 0x27uLL, 0xE100000000000000), (v56 & 1) == 0))
          {
            v61 = v54;
            v62 = v38;
            v63 = v55;
            v64 = v61;
            v62;
            0xE100000000000000;
            v53 = v64;
            v52 = v63;
          }

          else
          {
            _StringGuts.append(_:)(39, 0xE100000000000000, 0, 1, v41, v42, v43, v44, v45, v46, v47, v48);
            0xE100000000000000;
            v53 = v67;
            v52 = v68;
          }
        }

        else
        {
          v38;
          v52 = 0xE100000000000000;
          v53 = 39;
        }

        _assertionFailure(_:_:flags:)("Fatal error", 11, 2, v53, v52, 0);
      }

      v50 = HIBYTE(v38) & 0xF;
      v28 = v57;
LABEL_27:
      _StringGuts.append(_:)(v28, v38, 0, v50, v30, v31, v32, v33, v34, v35, v36, v37);
      v38;
      v49 = v67;
      v38 = v68;
      goto LABEL_28;
    }
  }

  else if ((v29 & 0x2000000000000000) != 0)
  {
    v50 = HIBYTE(v29) & 0xF;
    goto LABEL_27;
  }

  v50 = v28 & 0xFFFFFFFFFFFFLL;
  goto LABEL_27;
}

uint64_t BidirectionalCollection.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v9 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v9, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  v12 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v25 - v18;
  v20 = *(v12 + 16);
  if (a2 < 0)
  {
    v20(v16, a1, v11);
    v22 = 0;
    v23 = *(a4 + 40);
    do
    {
      --v22;
      v23(v16, a3, a4);
    }

    while (v22 > a2);
    v19 = v16;
  }

  else
  {
    v20(&v25 - v18, a1, v11);
    if (a2)
    {
      v21 = *(v9 + 192);
      do
      {
        v21(v19, a3, v9);
        --a2;
      }

      while (a2);
    }
  }

  return (*(v12 + 32))(v26, v19, v11);
}

uint64_t BidirectionalCollection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Class *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a3;
  v34 = a6;
  v10 = *(a5 + 8);
  swift_getAssociatedTypeWitness(0, v10, a4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v32 - v18;
  v33 = v20;
  v21 = *(v20 + 16);
  if (a2 < 0)
  {
    v21(v16, a1, v12);
    v35 = a4;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a4, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v27 = 0;
    v28 = *(AssociatedConformanceWitness + 8);
    v29 = *(v28 + 8);
    while ((v29(v16, v36, v12, v28) & 1) == 0)
    {
      --v27;
      (*(a5 + 40))(v16, v35, a5);
      if (v27 <= a2)
      {
        v25 = v33;
        v24 = v34;
        (*(v33 + 32))(v34, v16, v12);
        goto LABEL_11;
      }
    }

    v25 = v33;
    (*(v33 + 8))(v16, v12);
    goto LABEL_14;
  }

  v21(&v32 - v18, a1, v12);
  if (a2)
  {
    v22 = *(swift_getAssociatedConformanceWitness(v10, a4, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
    v23 = *(v22 + 8);
    while ((v23(v19, v36, v12, v22) & 1) == 0)
    {
      (*(v10 + 192))(v19, a4, v10);
      if (!--a2)
      {
        goto LABEL_6;
      }
    }

    v25 = v33;
    (*(v33 + 8))(v19, v12);
LABEL_14:
    v30 = 1;
    v24 = v34;
    return (*(v25 + 56))(v24, v30, 1, v12);
  }

LABEL_6:
  v25 = v33;
  v24 = v34;
  (*(v33 + 32))(v34, v19, v12);
LABEL_11:
  v30 = 0;
  return (*(v25 + 56))(v24, v30, 1, v12);
}

unint64_t specialized BidirectionalCollection._index(_:offsetBy:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  if (a2 < 0)
  {
    v18 = 0;
    v21[0]._rawBits = result;
    do
    {
      --v18;
      specialized BidirectionalCollection.formIndex(before:)(v21, a3, a4);
    }

    while (v18 > v6);
    return v21[0]._rawBits;
  }

  else if (a2)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v7 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v8 = (a4 & 0x4000000000000000) != 0;
    }

    else
    {
      v8 = a3 < 0;
    }

    v9 = a4 & 0xFFFFFFFFFFFFFFLL;
    if ((a4 & 0x1000000000000000) != 0)
    {
      v10 = 4 << ((a3 & 0x800000000000000) != 0);
    }

    else
    {
      v10 = 8;
    }

    do
    {
      if ((result & 0xC) == v10)
      {
        v15 = v9;
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
        v9 = v15;
      }

      v11 = result >> 16;
      if (result >> 16 >= v7)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v16 = v9;
        result = specialized String.UTF16View._foreignIndex(after:)(result);
        v9 = v16;
        goto LABEL_13;
      }

      if (v8)
      {
        result = (result & 0xFFFFFFFFFFFF0000) + 65549;
        goto LABEL_13;
      }

      if ((result & 0xC001) != 0)
      {
        if ((a4 & 0x2000000000000000) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v17 = v9;
        result = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
        v9 = v17;
        v11 = result >> 16;
        if ((a4 & 0x2000000000000000) == 0)
        {
LABEL_21:
          v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a3 & 0x1000000000000000) == 0)
          {
            v19 = v9;
            v20 = result;
            v12 = _StringObject.sharedUTF8.getter(a3, a4);
            v9 = v19;
            result = v20;
          }

          v13 = v12[v11];
          if ((v13 & 0x80) == 0)
          {
LABEL_32:
            v14 = 1;
            goto LABEL_33;
          }

          goto LABEL_24;
        }
      }

      v21[0]._rawBits = a3;
      v21[1]._rawBits = v9;
      v13 = *(&v21[0]._rawBits + v11);
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_32;
      }

LABEL_24:
      LODWORD(v14) = __clz(v13 ^ 0xFF) - 24;
      if (v14 != 4)
      {
        v14 = v14;
        goto LABEL_33;
      }

      if ((result & 0xC000) != 0)
      {
        v14 = 4;
LABEL_33:
        result = (result + (v14 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        goto LABEL_13;
      }

      result = result & 0xFFFFFFFFFFFF0000 | 0x4004;
LABEL_13:
      --v6;
    }

    while (v6);
  }

  return result;
}

Swift::UInt64 specialized BidirectionalCollection._index(_:offsetBy:)(Swift::UInt64 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    v11 = 0;
    if ((a4 & 0x1000000000000000) != 0)
    {
      v12 = 4 << ((a3 & 0x800000000000000) != 0);
    }

    else
    {
      v12 = 8;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      if ((result & 0xC) == v12)
      {
        v14 = a2;
        v15 = a3;
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
        a2 = v14;
        a3 = v15;
        if (!(result >> 14))
        {
          goto LABEL_33;
        }
      }

      else if (!(result >> 14))
      {
        goto LABEL_33;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        if (v13 < result >> 16)
        {
LABEL_33:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v16 = a2;
        v17 = a3;
        result = String.UTF8View._foreignIndex(before:)(result)._rawBits;
        a3 = v17;
        a2 = v16;
      }

      else
      {
        result = (result & 0xFFFFFFFFFFFF0000) - 65532;
      }

      if (--v11 <= a2)
      {
        return result;
      }
    }
  }

  if (a2)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v5 = 4 << ((a3 & 0x800000000000000) != 0);
    }

    else
    {
      v5 = 8;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v6 = a3 & 0xFFFFFFFFFFFFLL;
    }

    do
    {
      while ((result & 0xC) == v5)
      {
        v7 = a2;
        v8 = a3;
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
        a2 = v7;
        a3 = v8;
        if ((a4 & 0x1000000000000000) == 0)
        {
          goto LABEL_11;
        }

LABEL_14:
        if (v6 <= result >> 16)
        {
          goto LABEL_33;
        }

        v9 = a2;
        v10 = a3;
        result = String.UTF8View._foreignIndex(after:)(result)._rawBits;
        a3 = v10;
        a2 = v9 - 1;
        if (v9 == 1)
        {
          return result;
        }
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        goto LABEL_14;
      }

LABEL_11:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t StrideTo.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = v3;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = type metadata accessor for StrideToIterator(0, v7, v8, a3);
  v10 = a2 + v9[11];
  swift_getTupleTypeMetadata2(0, byte_1EEEBE0E0, v7, "index value ", 0);
  v18 = *(v11 + 48);
  v12 = *(v7 - 1);
  v13 = *(v12 + 32);
  v13(v10 + v18, v4, v7);
  v13(a2 + v9[9], v4 + *(a1 + 36), v7);
  v14 = *(a1 + 40);
  v15 = v9[10];
  swift_getAssociatedTypeWitness(0, v8, v7, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  (*(*(v16 - 8) + 32))(a2 + v15, v4 + v14, v16);
  result = (*(v12 + 16))(a2, v10 + v18, v7);
  *v10 = 0;
  *(v10 + 8) = 0;
  return result;
}

uint64_t StrideToIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v63 = a2;
  v5 = *(a1 + 16);
  swift_getTupleTypeMetadata2(0, byte_1EEEBE0E0, v5, "index value ", 0);
  v7 = v6;
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v59 = &v53 - v9;
  v61 = *(a1 + 24);
  v10 = v61;
  swift_getAssociatedTypeWitness(0, v61, v5, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v12 = v11;
  v62 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v53 - v14;
  v16 = *(*(swift_getAssociatedConformanceWitness(v10, v5, v12, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v16, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v18 = v17;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v53 - v21;
  v23 = *(v5 - 1);
  v25 = MEMORY[0x1EEE9AC00](v20, v24);
  v56 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v60 = a1;
  v28 = v3 + *(a1 + 44);
  v58 = v7;
  v29 = *(v23 + 16);
  v54 = *(v7 + 48);
  v55 = v28;
  v64 = &v53 - v30;
  v29();
  v31 = *(a1 + 40);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v16, v12, v18, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v18, AssociatedConformanceWitness);
  v33 = v22;
  v34 = v31;
  (*(v16 + 24))(v33, v12, v16);
  v35 = v61;
  v36 = swift_getAssociatedConformanceWitness(v61, v5, v12, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: Comparable);
  LOBYTE(v18) = (*(v36 + 40))(v3 + v31, v15, v12, v36);
  v37 = v12;
  v38 = v35;
  (*(v62 + 8))(v15, v37);
  v39 = *(v60 + 36);
  v40 = v35[1];
  if ((v18 & 1) == 0)
  {
    if (((*(v40 + 3))(v64, v3 + v39, v5) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    (*(v23 + 8))(v64, v5);
    v51 = 1;
    v50 = v63;
    return (*(v23 + 56))(v50, v51, 1, v5);
  }

  if ((*(v40 + 4))(v64, v3 + v39, v5))
  {
    goto LABEL_5;
  }

LABEL_3:
  v41 = v58;
  v42 = v59;
  v43 = v55;
  (*(v57 + 16))(v59, v55, v58);
  v44 = *(v41 + 48);
  v45 = v3 + v34;
  v46 = v56;
  v47 = (v38[7])(v56, *v42, v42[8], &v42[v44], v3, v45, v5, v38);
  v49 = v48;
  (*(v23 + 8))(&v42[v44], v5);
  *v43 = v47;
  *(v43 + 8) = v49 & 1;
  (*(v23 + 40))(v43 + v54, v46, v5);
  v50 = v63;
  (*(v23 + 32))(v63, v64, v5);
  v51 = 0;
  return (*(v23 + 56))(v50, v51, 1, v5);
}

unint64_t specialized BidirectionalCollection._index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a2;
  if (a2 < 0)
  {
    v16 = 0;
    v18[0]._rawBits = result;
    while ((v18[0]._rawBits ^ a3) >= 0x4000)
    {
      --v16;
      specialized BidirectionalCollection.formIndex(before:)(v18, a4, a5);
      if (v16 <= v8)
      {
        return v18[0]._rawBits;
      }
    }

    return 0;
  }

  else if (a2)
  {
    if ((a5 & 0x1000000000000000) != 0)
    {
      v9 = 4 << ((a4 & 0x800000000000000) != 0);
    }

    else
    {
      v9 = 8;
    }

    if ((a5 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v10 = a4 & 0xFFFFFFFFFFFFLL;
    }

    if ((a5 & 0x2000000000000000) != 0)
    {
      v11 = (a5 & 0x4000000000000000) != 0;
    }

    else
    {
      v11 = a4 < 0;
    }

    do
    {
      if ((result ^ a3) < 0x4000)
      {
        return 0;
      }

      if ((result & 0xC) == v9)
      {
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
      }

      v12 = result >> 16;
      if (result >> 16 >= v10)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = specialized String.UTF16View._foreignIndex(after:)(result);
        goto LABEL_13;
      }

      if (v11)
      {
        result = (result & 0xFFFFFFFFFFFF0000) + 65549;
        goto LABEL_13;
      }

      if ((result & 0xC001) != 0)
      {
        if ((a5 & 0x2000000000000000) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
        v12 = result >> 16;
        if ((a5 & 0x2000000000000000) == 0)
        {
LABEL_23:
          v13 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a4 & 0x1000000000000000) == 0)
          {
            v17 = result;
            v13 = _StringObject.sharedUTF8.getter(a4, a5);
            result = v17;
          }

          v14 = v13[v12];
          if ((v14 & 0x80) == 0)
          {
LABEL_34:
            v15 = 1;
            goto LABEL_35;
          }

          goto LABEL_26;
        }
      }

      v18[0]._rawBits = a4;
      v18[1]._rawBits = a5 & 0xFFFFFFFFFFFFFFLL;
      v14 = *(&v18[0]._rawBits + v12);
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_34;
      }

LABEL_26:
      LODWORD(v15) = __clz(v14 ^ 0xFF) - 24;
      if (v15 != 4)
      {
        v15 = v15;
        goto LABEL_35;
      }

      if ((result & 0xC000) != 0)
      {
        v15 = 4;
LABEL_35:
        result = (result + (v15 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        goto LABEL_13;
      }

      result = result & 0xFFFFFFFFFFFF0000 | 0x4004;
LABEL_13:
      --v8;
    }

    while (v8);
  }

  return result;
}

Swift::UInt64 specialized BidirectionalCollection._index(_:offsetBy:limitedBy:)(Swift::UInt64 result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2 < 0)
  {
    v14 = 0;
    if ((a5 & 0x1000000000000000) != 0)
    {
      v15 = 4 << ((a4 & 0x800000000000000) != 0);
    }

    else
    {
      v15 = 8;
    }

    if ((a5 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v16 = a4 & 0xFFFFFFFFFFFFLL;
    }

    while ((result ^ a3) >= 0x4000)
    {
      if ((result & 0xC) == v15)
      {
        v17 = a2;
        v18 = a3;
        v19 = a4;
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
        a2 = v17;
        a3 = v18;
        a4 = v19;
        if (!(result >> 14))
        {
          goto LABEL_37;
        }
      }

      else if (!(result >> 14))
      {
        goto LABEL_37;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        if (v16 < result >> 16)
        {
LABEL_37:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v20 = a2;
        v21 = a3;
        v22 = a4;
        result = String.UTF8View._foreignIndex(before:)(result)._rawBits;
        a4 = v22;
        a3 = v21;
        a2 = v20;
      }

      else
      {
        result = (result & 0xFFFFFFFFFFFF0000) - 65532;
      }

      if (--v14 <= a2)
      {
        return result;
      }
    }

    return 0;
  }

  else if (a2)
  {
    if ((a5 & 0x1000000000000000) != 0)
    {
      v6 = 4 << ((a4 & 0x800000000000000) != 0);
    }

    else
    {
      v6 = 8;
    }

    if ((a5 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v7 = a4 & 0xFFFFFFFFFFFFLL;
    }

    do
    {
      while (1)
      {
        if ((result ^ a3) < 0x4000)
        {
          return 0;
        }

        if ((result & 0xC) != v6)
        {
          break;
        }

        v8 = a2;
        v9 = a3;
        v10 = a4;
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
        a2 = v8;
        a3 = v9;
        a4 = v10;
        if ((a5 & 0x1000000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_15:
        if (v7 <= result >> 16)
        {
          goto LABEL_37;
        }

        v11 = a2;
        v12 = a3;
        v13 = a4;
        result = String.UTF8View._foreignIndex(after:)(result)._rawBits;
        a4 = v13;
        a3 = v12;
        a2 = v11 - 1;
        if (v11 == 1)
        {
          return result;
        }
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        goto LABEL_15;
      }

LABEL_12:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t Collection._advanceForward(_:by:limitedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Class *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a3;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v23 - v15;
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v23 = v14;
  v24 = a6;
  (*(v14 + 16))(v16, a1, v12);
  if (a2)
  {
    v17 = *(swift_getAssociatedConformanceWitness(a5, a4, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
    v18 = *(v17 + 8);
    while ((v18(v16, v25, v12, v17) & 1) == 0)
    {
      (*(a5 + 192))(v16, a4, a5);
      if (!--a2)
      {
        goto LABEL_6;
      }
    }

    v20 = v23;
    (*(v23 + 8))(v16, v12);
    v21 = 1;
    v19 = v24;
  }

  else
  {
LABEL_6:
    v20 = v23;
    v19 = v24;
    (*(v23 + 32))(v24, v16, v12);
    v21 = 0;
  }

  return (*(v20 + 56))(v19, v21, 1, v12);
}

uint64_t specialized BidirectionalCollection._distance(from:to:)(Swift::UInt64 rawBits, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a2 >> 14;
  if (rawBits >> 14 < a2 >> 14)
  {
    v6 = 0;
    v7 = (a3 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v7) = 1;
    }

    v8 = 4 << v7;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v9 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if ((rawBits & 0xC) == v8)
      {
        rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
        if ((a4 & 0x1000000000000000) == 0)
        {
LABEL_7:
          rawBits = (rawBits & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_8;
        }
      }

      else if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_7;
      }

      if (v9 <= rawBits >> 16)
      {
        goto LABEL_38;
      }

      rawBits = String.UTF8View._foreignIndex(after:)(rawBits)._rawBits;
LABEL_8:
      ++v6;
      if (v5 == rawBits >> 14)
      {
        return v10;
      }
    }
  }

  if (v5 >= rawBits >> 14)
  {
    return 0;
  }

  v10 = 0;
  v11 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v13 = a3 & 0xFFFFFFFFFFFFLL;
  }

  do
  {
    if (__OFSUB__(v10--, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if ((rawBits & 0xC) == v12)
    {
      rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
      if (!(rawBits >> 14))
      {
        goto LABEL_38;
      }
    }

    else if (!(rawBits >> 14))
    {
      goto LABEL_38;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      if (v13 < rawBits >> 16)
      {
LABEL_38:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      rawBits = String.UTF8View._foreignIndex(before:)(rawBits)._rawBits;
    }

    else
    {
      rawBits = (rawBits & 0xFFFFFFFFFFFF0000) - 65532;
    }
  }

  while (v5 != rawBits >> 14);
  return v10;
}

uint64_t BidirectionalCollection._distance(from:to:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v29 = a4;
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v27 - v12;
  (*(v10 + 16))(&v27 - v12, a1, v9);
  v30 = v7;
  v31 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a3, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  if ((*(AssociatedConformanceWitness + 16))(v13, a2, v9, AssociatedConformanceWitness))
  {
    v15 = *(*(AssociatedConformanceWitness + 8) + 8);
    v29 = *(AssociatedConformanceWitness + 8);
    v16 = v15;
    result = (v15)(v13, a2, v9);
    if ((result & 1) == 0)
    {
      v18 = a2;
      v28 = v10;
      v19 = 0;
      v20 = v30[24];
      while (1)
      {
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        (v20)(v13, v31, v30);
        result = v16(v13, v18, v9, v29);
        ++v19;
        if (result)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }
  }

  else if ((*(AssociatedConformanceWitness + 40))(v13, a2, v9, AssociatedConformanceWitness))
  {
    v22 = *(AssociatedConformanceWitness + 8);
    v23 = *(v22 + 8);
    result = v23(v13, a2, v9, v22);
    if ((result & 1) == 0)
    {
      v24 = a2;
      v28 = v10;
      v21 = 0;
      v25 = *(v29 + 40);
      while (!__OFSUB__(v21--, 1))
      {
        v25(v13, v31, v29);
        result = v23(v13, v24, v9, v22);
        if (result)
        {
LABEL_13:
          v10 = v28;
          goto LABEL_14;
        }
      }

      goto LABEL_16;
    }
  }

  v21 = 0;
LABEL_14:
  (*(v10 + 8))(v13, v9);
  return v21;
}

uint64_t BidirectionalCollection<>.popLast()@<X0>(Class *a1@<X0>, void (**a2)(char *, Class *)@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v99 = a3;
  v101 = a2;
  v6 = a2[1];
  swift_getAssociatedTypeWitness(255, v6, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v93 = v9;
  v91 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v92 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v87 = &v83 - v15;
  v97 = *(v8 - 1);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v94 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v96 = &v83 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v100 = &v83 - v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a1, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v25 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v24);
  v89 = *(v25 - 8);
  v90 = v25;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v88 = &v83 - v28;
  v29 = *(a1 - 1);
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v83 - v35;
  swift_getAssociatedTypeWitness(255, *(v6 + 1), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v38 = v37;
  v41 = type metadata accessor for Optional(0, v37, v39, v40);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v45 = &v83 - v44;
  v105 = v38;
  v104 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v43, v46);
  v48 = &v83 - v47;
  v49 = *(v6 + 13);
  v102 = a1;
  v103 = v4;
  v98 = v6;
  if (v49(a1, v6))
  {
    v50 = v105;
    v51 = *(v104 + 56);
    v52 = v99;

    return v51(v52, 1, 1, v50);
  }

  else
  {
    BidirectionalCollection.last.getter(v102, v101, v45);
    if ((*(v104 + 48))(v45, 1, v105) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v54 = *(v104 + 32);
    v84 = v48;
    v85 = v54;
    v86 = v104 + 32;
    v54(v48, v45, v105);
    v55 = *(v29 + 16);
    v83 = v36;
    v57 = v102;
    v56 = v103;
    v55(v36, v103, v102);
    v58 = v98;
    (*(v98 + 8))(v57, v98);
    v55(v33, v56, v57);
    v59 = v94;
    (*(v58 + 9))(v57, v58);
    v61 = *(v29 + 8);
    v60 = v29 + 8;
    (v61)(v56, v57);
    v62 = v96;
    v101[4](v59, v57);
    v63 = v97;
    v94 = *(v97 + 8);
    (v94)(v59, v8);
    v64 = v33;
    v65 = v100;
    v66 = v57;
    v67 = v62;
    v101 = v61;
    (v61)(v64, v66);
    if (((*(AssociatedConformanceWitness + 24))(v65, v62, v8) & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    AssociatedConformanceWitness = v60;
    v68 = *(v63 + 32);
    v69 = v87;
    v68(v87, v65, v8);
    v70 = v93;
    v68(&v69[*(v93 + 48)], v67, v8);
    v71 = v91;
    v72 = v92;
    (*(v91 + 16))(v92, v69, v70);
    v73 = *(v70 + 48);
    v74 = v88;
    v68(v88, v72, v8);
    v75 = &v72[v73];
    v76 = v94;
    (v94)(v75, v8);
    (*(v71 + 32))(v72, v69, v70);
    v77 = *(v70 + 48);
    v78 = v90;
    v68(&v74[*(v90 + 36)], &v72[v77], v8);
    v76(v72, v8);
    v79 = v102;
    v80 = v83;
    (*(v98 + 11))(v74, v102);
    (*(v89 + 8))(v74, v78);
    (v101)(v80, v79);
    v81 = v99;
    v82 = v105;
    v85(v99, v84, v105);
    return (*(v104 + 56))(v81, 0, 1, v82);
  }
}

unint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 7;
    if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
    {
      v5 = 11;
    }

    v6._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)((v5 | (v2 << 16)))._rawBits;
    if (!(v6._rawBits >> 14))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v19._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v6)._rawBits;
      v20._rawBits = _StringGuts.validateScalarIndex(_:)(v19)._rawBits;
      value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v20._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v24 = a1;
        v25 = a2 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v24 + (v6._rawBits >> 16) - 1) & 0xC0) == 0x80)
        {
          v13 = &v24 + (v6._rawBits >> 16) - 2;
          v11 = 1;
          do
          {
            ++v11;
            v14 = *v13--;
          }

          while ((v14 & 0xC0) == 0x80);
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          rawBits = v6._rawBits;
          v7 = _StringObject.sharedUTF8.getter(a1, a2);
          v6._rawBits = rawBits;
        }

        v8 = 0;
        v9 = v7 + (v6._rawBits >> 16) - 1;
        do
        {
          v10 = *(v9 + v8--) & 0xC0;
        }

        while (v10 == 128);
        v11 = -v8;
      }

      v16._rawBits = _StringGuts.validateScalarIndex(_:)(((v6._rawBits - (v11 << 16)) & 0xFFFFFFFFFFFF0000 | 5))._rawBits >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v24 = a1;
        v25 = a2 & 0xFFFFFFFFFFFFFFLL;
        v17 = &v24;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v17 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v21 = a2;
        v22 = v16._rawBits;
        v17 = _StringObject.sharedUTF8.getter(a1, v21);
        v16._rawBits = v22;
      }

      value = _decodeScalar(_:startingAt:)(v17, v15._rawBits, v16._rawBits);
    }
  }

  else
  {
    value = 0;
  }

  LOBYTE(v24) = v2 == 0;
  return value | ((v2 == 0) << 32);
}

unint64_t specialized BidirectionalCollection.last.getter(unint64_t a1, Swift::String::Index a2, uint64_t a3, unint64_t a4)
{
  v4 = a1 >> 14;
  v5 = a2._rawBits >> 14;
  if (a1 >> 14 == a2._rawBits >> 14)
  {
    value = 0;
    goto LABEL_3;
  }

  v10._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a2)._rawBits;
  if (!(v10._rawBits >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    rawBits = String.UnicodeScalarView._foreignIndex(before:)(v10)._rawBits;
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v28 = a3;
      v29 = a4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v28 + (v10._rawBits >> 16) - 1) & 0xC0) == 0x80)
      {
        v17 = &v28 + (v10._rawBits >> 16) - 2;
        v16 = 1;
        do
        {
          ++v16;
          v18 = *v17--;
        }

        while ((v18 & 0xC0) == 0x80);
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v27 = v10._rawBits;
        v12 = _StringObject.sharedUTF8.getter(a3, a4);
        v10._rawBits = v27;
      }

      v13 = 0;
      v14 = v12 + (v10._rawBits >> 16) - 1;
      do
      {
        v15 = *(v14 + v13--) & 0xC0;
      }

      while (v15 == 128);
      v16 = -v13;
    }

    rawBits = (v10._rawBits - (v16 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
  }

  v20 = (a4 & 0x1000000000000000) == 0 || (a3 & 0x800000000000000) != 0;
  v21 = 4 << v20;
  if ((rawBits & 0xC) == v21 || (rawBits & 1) == 0)
  {
    if ((rawBits & 0xC) == v21)
    {
      rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    }

    if (rawBits >> 14 >= v4 && rawBits >> 14 < v5)
    {
      if ((rawBits & 1) == 0)
      {
        rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      }

      goto LABEL_34;
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (rawBits >> 14 < v4 || rawBits >> 14 >= v5)
  {
    goto LABEL_38;
  }

LABEL_34:
  if ((a4 & 0x1000000000000000) != 0)
  {
    value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((rawBits & 0xFFFFFFFFFFFF0000))._0._value;
  }

  else
  {
    v23 = rawBits >> 16;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v28 = a3;
      v29 = a4 & 0xFFFFFFFFFFFFFFLL;
      v24 = &v28;
    }

    else if ((a3 & 0x1000000000000000) != 0)
    {
      v24 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v25 = a4;
      v26 = rawBits >> 16;
      v24 = _StringObject.sharedUTF8.getter(a3, v25);
      v23 = v26;
    }

    value = _decodeScalar(_:startingAt:)(v24, v11._rawBits, v23);
  }

LABEL_3:
  LOBYTE(v28) = v4 == v5;
  return value | ((v4 == v5) << 32);
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6._rawBits = String.index(before:)((v5 | (v2 << 16)))._rawBits;
  return String.subscript.getter(v6, a1, a2);
}

uint64_t BidirectionalCollection.last.getter@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness(0, v6, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v27[-v15];
  if ((*(v6 + 104))(a1, v6))
  {
    swift_getAssociatedTypeWitness(0, *(v6 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v18 = *(*(v17 - 8) + 56);

    return v18(a3, 1, 1, v17);
  }

  else
  {
    (*(v6 + 72))(a1, v6);
    (*(a2 + 32))(v13, a1, a2);
    v20 = *(v9 + 8);
    v20(v13, v8);
    v21 = (*(v6 + 80))(v27, v16, a1, v6);
    v23 = v22;
    swift_getAssociatedTypeWitness(0, *(v6 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v25 = v24;
    v26 = *(v24 - 8);
    (*(v26 + 16))(a3, v23, v24);
    v21(v27, 0);
    v20(v16, v8);
    return (*(v26 + 56))(a3, 0, 1, v25);
  }
}

uint64_t BidirectionalCollection<>.removeLast()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 8);
  swift_getAssociatedTypeWitness(255, v7, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v11 = *(v10 - 8);
  v81 = v10;
  v82 = v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v79 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v77 = v75 - v17;
  v87 = *(v9 - 1);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v84 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v85 = v75 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v86 = v75 - v25;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a1, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v80 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v26);
  v78 = *(v80 - 8);
  v28 = MEMORY[0x1EEE9AC00](v80, v27);
  v76 = v75 - v29;
  v30 = *(a1 - 1);
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v34 = v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v35);
  v37 = v75 - v36;
  v89 = v7;
  swift_getAssociatedTypeWitness(255, *(v7 + 8), a1, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v39 = v38;
  v42 = type metadata accessor for Optional(0, v38, v40, v41);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v45 = v75 - v44;
  v88 = a1;
  v46 = a1;
  v47 = a2;
  BidirectionalCollection.last.getter(v46, a2, v75 - v44);
  v48 = *(v39 - 8);
  if ((*(v48 + 48))(v45, 1, v39) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v48 + 32))(a3, v45, v39);
  v49 = *(v30 + 16);
  v75[0] = v37;
  v50 = v37;
  v51 = v30;
  v52 = v88;
  v49(v50, v3, v88);
  v53 = v89;
  v54 = v86;
  (*(v89 + 64))(v52, v89);
  v49(v34, v3, v52);
  v55 = v84;
  (*(v53 + 72))(v52, v53);
  v58 = *(v51 + 8);
  v56 = (v51 + 8);
  v57 = v58;
  v75[1] = v3;
  v58(v3, v52);
  v59 = v47;
  v60 = *(v47 + 32);
  v61 = v85;
  v60(v55, v52, v59);
  v84 = *(v87 + 1);
  (v84)(v55, v9);
  v58(v34, v52);
  if (((*(AssociatedConformanceWitness + 24))(v54, v61, v9) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v62 = *(v87 + 4);
  v87 = v57;
  v63 = v77;
  v62(v77, v86, v9);
  v64 = v81;
  v62(&v63[*(v81 + 48)], v61, v9);
  v86 = v56;
  v65 = v82;
  v66 = v79;
  (*(v82 + 16))(v79, v63, v64);
  v67 = *(v64 + 48);
  v68 = v76;
  v62(v76, v66, v9);
  v69 = &v66[v67];
  v70 = v84;
  (v84)(v69, v9);
  (*(v65 + 32))(v66, v63, v64);
  v71 = v80;
  v62(&v68[*(v80 + 36)], &v66[*(v64 + 48)], v9);
  v70(v66, v9);
  v72 = v88;
  v73 = v75[0];
  (*(v89 + 88))(v68, v88);
  (*(v78 + 8))(v68, v71);
  return v87(v73, v72);
}

uint64_t BidirectionalCollection<>.removeLast(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v87 = a3;
  v5 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v5, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v9 = v8;
  v83 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v81 = &v70 - v15;
  v16 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, a2, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v18 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v17);
  v82 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v80 = &v70 - v21;
  v89 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v20, v22);
  v88 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Optional(0, v7, v24, v25);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v86 = &v70 - v29;
  v90 = *(v7 - 1);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v84 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = &v70 - v35;
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v70 - v39;
  result = MEMORY[0x1EEE9AC00](v38, v41);
  if (!v44)
  {
    return result;
  }

  if (v44 < 0)
  {
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v71 = v45;
  v72 = result;
  v79 = &v70 - v43;
  v74 = v18;
  v75 = v13;
  v76 = v9;
  v46 = v44;
  (*(v5 + 72))(a2, v5);
  v47 = -v46;
  v48 = v3;
  v77 = *(v16 + 64);
  v78 = v16 + 64;
  v77(a2, v16);
  v49 = v86;
  (*(v87 + 56))(v40, v47, v36, a2);
  v50 = v90;
  v51 = v90 + 8;
  v52 = *(v90 + 8);
  v52(v36, v7);
  v87 = v51;
  v73 = v52;
  v52(v40, v7);
  if ((*(v50 + 48))(v49, 1, v7) == 1)
  {
    (*(v71 + 8))(v49, v72);
    goto LABEL_7;
  }

  v53 = *(v50 + 32);
  v90 = v50 + 32;
  v54 = v79;
  v53(v79, v49, v7);
  v55 = v89;
  (*(v89 + 16))(v88, v48, a2);
  v56 = v84;
  v77(a2, v16);
  v58 = *(v55 + 8);
  v57 = v55 + 8;
  v86 = v58;
  (v58)(v48, a2);
  if (((*(AssociatedConformanceWitness + 24))(v56, v54, v7) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v59 = a2;
  v60 = v81;
  v84 = v48;
  AssociatedConformanceWitness = v59;
  v78 = v16;
  v53(v81, v56, v7);
  v61 = v76;
  v53(&v60[*(v76 + 48)], v54, v7);
  v89 = v57;
  v62 = v83;
  v63 = v75;
  (*(v83 + 16))(v75, v60, v61);
  v64 = *(v61 + 48);
  v65 = v80;
  v53(v80, v63, v7);
  v66 = v73;
  v73(&v63[v64], v7);
  (*(v62 + 32))(v63, v60, v61);
  v67 = v74;
  v53(&v65[*(v74 + 36)], &v63[*(v61 + 48)], v7);
  v66(v63, v7);
  v68 = AssociatedConformanceWitness;
  v69 = v88;
  (*(v78 + 88))(v65, AssociatedConformanceWitness);
  (*(v82 + 8))(v65, v67);
  return (v86)(v69, v68);
}

uint64_t static SignedNumeric.- prefix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, a1, a2);
  return (*(a3 + 24))(a2, a3);
}

{
  (*(*(a2 - 8) + 16))(a4, a1, a2);
  return (*(a3 + 24))(a2, a3);
}

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = specialized UnsafeBufferPointer.index(_:offsetBy:limitedBy:)(a3, -a1, a2);
  if (v6)
  {
    v7 = a2;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 > a3)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t BidirectionalCollection.dropLast(_:)@<X0>(void (*a1)(void, void)@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a1;
  v83 = a4;
  v88 = a3;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v82 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v79 = &v75 - v16;
  v93 = v6;
  v91 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v18 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v17);
  v81 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v80 = &v75 - v20;
  v23 = type metadata accessor for Optional(0, v8, v21, v22);
  v85 = *(v23 - 8);
  v86 = v23;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v92 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v75 - v29;
  v31 = *(v8 - 1);
  v33 = MEMORY[0x1EEE9AC00](v28, v32);
  v87 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v75 - v37;
  v40 = MEMORY[0x1EEE9AC00](v36, v39);
  v42 = &v75 - v41;
  MEMORY[0x1EEE9AC00](v40, v43);
  v84 = &v75 - v44;
  if ((v90 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v90;
  v76 = v18;
  v77 = v14;
  v78 = v10;
  v46 = v93;
  v47 = v91;
  (v93[9])(v91, v93);
  v90 = v46[8];
  (v90)(v47, v46);
  (*(v88 + 56))(v42, -v45, v38, v47);
  v48 = (v31 + 8);
  v49 = *(v31 + 8);
  v49(v38, v8);
  v88 = v49;
  v49(v42, v8);
  v51 = v85;
  v50 = v86;
  v52 = v92;
  (*(v85 + 32))(v92, v30, v86);
  v53 = (*(v31 + 48))(v52, 1, v8);
  v75 = v31;
  if (v53 == 1)
  {
    v54 = v84;
    v55 = v93;
    (v90)(v47, v93);
    (*(v51 + 8))(v92, v50);
    v56 = v4;
    v57 = v47;
    v58 = v55;
    v59 = v54;
  }

  else
  {
    v59 = v84;
    (*(v31 + 32))(v84, v92, v8);
    v56 = v4;
    v57 = v47;
    v58 = v93;
  }

  v60 = v87;
  (v90)(v57, v58);
  if (((*(AssociatedConformanceWitness + 24))(v60, v59, v8) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v90 = v48;
  v61 = *(v75 + 32);
  v92 = v56;
  v62 = v79;
  v61(v79, v60, v8);
  v63 = v78;
  v61(&v62[*(v78 + 48)], v59, v8);
  v64 = v82;
  v65 = v77;
  (*(v82 + 16))(v77, v62, v63);
  v66 = *(v63 + 48);
  v67 = v80;
  v61(v80, v65, v8);
  v68 = &v65[v66];
  v69 = v88;
  (v88)(v68, v8);
  (*(v64 + 32))(v65, v62, v63);
  v70 = *(v63 + 48);
  v71 = v76;
  v61(&v67[*(v76 + 36)], &v65[v70], v8);
  v69(v65, v8);
  v72 = v92;
  v73 = v91;
  (v93[11])(v67, v91);
  (*(*(v73 - 1) + 1))(v72, v73);
  return (*(v81 + 8))(v67, v71);
}

uint64_t specialized BidirectionalCollection.suffix(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = specialized UnsafeBufferPointer.index(_:offsetBy:limitedBy:)(a3, -a1, a2);
  if (v6)
  {
    result = a2;
  }

  if (result > a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result < a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t BidirectionalCollection.suffix(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a4;
  v91 = a3;
  v7 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v7, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v11 = v10;
  v86 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v83 = &v75 - v17;
  v94 = v7;
  v95 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a2, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v20 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v19);
  v85 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v84 = &v75 - v22;
  v25 = type metadata accessor for Optional(0, v9, v23, v24);
  v88 = *(v25 - 8);
  v89 = v25;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v93 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v31 = *(v9 - 1);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v90 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v75 - v37;
  v40 = MEMORY[0x1EEE9AC00](v36, v39);
  v42 = &v75 - v41;
  MEMORY[0x1EEE9AC00](v40, v43);
  v92 = &v75 - v45;
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v82 = AssociatedConformanceWitness;
  v77 = v15;
  v78 = v20;
  v79 = v11;
  v47 = v94;
  v46 = v95;
  v48 = v44;
  v80 = v94[9];
  v81 = v94 + 9;
  (v80)(v95, v94);
  v76 = v47[8];
  (v76)(v46, v47);
  (*(v91 + 56))(v42, -a1, v38, v46);
  v49 = *(v31 + 8);
  v49(v38, v9);
  v91 = v49;
  v49(v42, v9);
  v51 = v88;
  v50 = v89;
  v52 = v93;
  (*(v88 + 32))(v93, v48, v89);
  v53 = v31;
  if ((*(v31 + 48))(v52, 1, v9) == 1)
  {
    v55 = v94;
    v54 = v95;
    (v76)(v95, v94);
    (*(v51 + 8))(v93, v50);
    v56 = v4;
    v57 = v54;
    v58 = v55;
    v59 = v92;
  }

  else
  {
    v59 = v92;
    (*(v31 + 32))(v92, v93, v9);
    v56 = v4;
    v58 = v94;
    v57 = v95;
  }

  v60 = v90;
  (v80)(v57, v58);
  if (((*(v82 + 24))(v59, v60, v9) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v61 = *(v53 + 32);
  v62 = v83;
  v61(v83, v59, v9);
  v93 = v56;
  v63 = v79;
  v61(&v62[*(v79 + 48)], v60, v9);
  v64 = v86;
  v65 = v77;
  (*(v86 + 16))(v77, v62, v63);
  v66 = *(v63 + 48);
  v67 = v84;
  v61(v84, v65, v9);
  v68 = &v65[v66];
  v69 = v91;
  (v91)(v68, v9);
  (*(v64 + 32))(v65, v62, v63);
  v70 = *(v63 + 48);
  v71 = v78;
  v61(&v67[*(v78 + 36)], &v65[v70], v9);
  v69(v65, v9);
  v72 = v93;
  v73 = v95;
  (v94[11])(v67, v95);
  (*(*(v73 - 1) + 1))(v72, v73);
  return (*(v85 + 8))(v67, v71);
}

unint64_t static UInt./ infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 / a2;
}

unint64_t static UInt.% infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 % a2;
}

uint64_t static FixedWidthInteger.&* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  return (*(a2 + 96))(a3, a1);
}

{
  return (*(a2 + 96))(a3, a1);
}

Swift::Bool __swiftcall _UnsafeBitset.uncheckedInsert(_:)(Swift::Int a1)
{
  v2 = (a1 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v3 = 1 << a1;
  v4 = *(v1 + v2);
  result = (v4 & (1 << a1)) == 0;
  *(v1 + v2) = v4 | v3;
  return result;
}

Swift::Bool __swiftcall _UnsafeBitset.Word.uncheckedInsert(_:)(Swift::Int a1)
{
  v2 = 1 << a1;
  result = (*v1 & (1 << a1)) == 0;
  *v1 |= v2;
  return result;
}

Swift::Bool __swiftcall _UnsafeBitset.uncheckedRemove(_:)(Swift::Int a1)
{
  v2 = (a1 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v3 = 1 << a1;
  v4 = *(v1 + v2);
  result = (v4 & (1 << a1)) != 0;
  *(v1 + v2) = v4 & ~v3;
  return result;
}

Swift::Bool __swiftcall _UnsafeBitset.Word.uncheckedRemove(_:)(Swift::Int a1)
{
  v2 = 1 << a1;
  result = (*v1 & (1 << a1)) != 0;
  *v1 &= ~v2;
  return result;
}

unint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(unint64_t result, unint64_t a2, int64x2_t *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2)
  {
    if (a2 < 4)
    {
      v3 = 0;
LABEL_8:
      v7 = a2 - v3;
      v8 = &a3->i64[v3];
      do
      {
        *v8++ = result;
        --v7;
      }

      while (v7);
      return result;
    }

    v3 = a2 & 0x7FFFFFFFFFFFFFFCLL;
    v4 = vdupq_n_s64(result);
    v5 = a3 + 1;
    v6 = a2 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v5[-1] = v4;
      *v5 = v4;
      v5 += 2;
      v6 -= 4;
    }

    while (v6);
    if (v3 != a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = a2;
  if (a2)
  {
    v7 = result;
    v8 = *(a4 - 8);
    v9 = *(v8 + 24);
    v10 = *(v8 + 72);
    do
    {
      result = v9(a3, v7, a4);
      a3 += v10;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t _UnsafeBitset.count.getter(int8x8_t *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    goto LABEL_7;
  }

  v2 = 0;
  if (a2)
  {
    while (1)
    {
      v3 = *a1++;
      v4 = vcnt_s8(v3);
      v4.i16[0] = vaddlv_u8(v4);
      v5 = __OFADD__(v2, v4.u32[0]);
      v2 += v4.u32[0];
      if (v5)
      {
        break;
      }

      if (!--a2)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v2;
}

Swift::Int_optional __swiftcall _UnsafeBitset.Iterator.next()()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = 0;
    v0[3] = (v1 - 1) & v1;
    v3 = __clz(__rbit64(v1)) | (v0[2] << 6);
  }

  else
  {
    v4 = v0[1];
    v5 = v0[2];
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6 >= v4)
      {
        v3 = 0;
        v2 = 1;
        goto LABEL_10;
      }

      v0[2] = v6;
      v7 = *(*v0 + 8 * v6);
      v0[3] = v7;
      ++v5;
      if (v7)
      {
        v2 = 0;
        v0[3] = (v7 - 1) & v7;
        v3 = __clz(__rbit64(v7)) | (v6 << 6);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

LABEL_10:
  result.value = v3;
  result.is_nil = v2;
  return result;
}

Swift::Int_optional __swiftcall _UnsafeBitset.Word.next()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = __clz(__rbit64(v1));
    *v0 = (v1 - 1) & v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v1 == 0;
  result.value = v2;
  result.is_nil = v3;
  return result;
}

Swift::Int protocol witness for IteratorProtocol.next() in conformance _UnsafeBitset.Iterator@<X0>(uint64_t a1@<X8>)
{
  v3 = _UnsafeBitset.Iterator.next()();
  *a1 = v3.value;
  *(a1 + 8) = v3.is_nil;
  return v3.value;
}

void protocol witness for Sequence.makeIterator() in conformance _UnsafeBitset(uint64_t **a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  *a1 = v2;
  a1[1] = v3;
  a1[2] = 0;
  a1[3] = v4;
}

uint64_t Collection._copyToContiguousArray()(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = a3(v3, a1, a2);
  (*(*(a1 - 8) + 8))(v3, a1);
  return v5;
}

uint64_t static FixedWidthInteger.&<< infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v11, v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13);
  (*(*(a5 + 8) + 96))(v13, a4, a6, a3);
  (*(a5 + 216))(a1, v18, a3, a5);
  return (*(v15 + 8))(v18, a3);
}

unint64_t _UnsafeBitset.Word.maximum.getter(unint64_t a1)
{
  v1 = 63 - __clz(a1);
  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t static UnsignedInteger<>.max.getter(Class *a1, uint64_t a2)
{
  v3 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 8);
  v8 = *(*(v7 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v8, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v16 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a1, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
  (*(v8 + 24))(v13, a1, v8);
  (*(v7 + 184))(v5, a1, v7);
  return (*(v3 + 8))(v5, a1);
}

uint64_t _ss6UInt64Vs17FixedWidthIntegerssACP15nonzeroBitCountSivgTW_0()
{
  v1 = vcnt_s8(*v0);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

void protocol witness for IteratorProtocol.next() in conformance _UnsafeBitset.Word(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = __clz(__rbit64(v2));
    *v1 = (v2 - 1) & v2;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 == 0;
}

uint64_t closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(char *a1, uint64_t a2, char *__src, uint64_t a4, uint64_t (*a5)(char *, uint64_t))
{
  if (a4 < 0 || (&a1[8 * a4] > __src ? (v5 = &__src[8 * a4] > a1) : (v5 = 0), v5))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  memcpy(a1, __src, 8 * a4);
  return a5(a1, a2);
}

uint64_t static FixedWidthInteger.>> infix<A>(_:_:)@<X0>(uint64_t a1@<X1>, Class *a2@<X2>, Class *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v6 = a5;
  v8 = a3;
  v159 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v159, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v158 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v157 = &v154 - v14;
  v169 = *(a4 + 8);
  v172 = *(*(v169 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v172, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v167 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v154 - v18;
  v170 = *(v8 - 1);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v160 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v162 = &v154 - v25;
  v26 = *(a2 - 1);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v166 = &v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v171 = &v154 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v173 = &v154 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v177 = &v154 - v38;
  MEMORY[0x1EEE9AC00](v37, v39);
  v40 = v26[2];
  v168 = &v154 - v41;
  v40();
  v42 = *(a4 + 56);
  v174 = a4;
  v175 = v42;
  v176 = a4 + 56;
  v43 = v42(a2, a4);
  v44 = -v43;
  if (__OFSUB__(0, v43))
  {
    __break(1u);
LABEL_65:
    v155 = v26;
    (a4)(v173, a2);
    v145 = v174;
    v146 = v175(a2, v174);
    if (!__OFSUB__(0, v146))
    {
      if (-v146 < v6)
      {
        v147 = (a4)(v44, a2);
        v178[0] = -v6;
        v148 = v8[12];
        v151 = lazy protocol witness table accessor for type Int and conformance Int(v147, v149, v150);
        v142 = v171;
        v148(v178, &type metadata for Int, v151, a2, v8);
        v143 = v177;
        (*(v145 + 216))(v177, v142, a2, v145);
        goto LABEL_63;
      }

      goto LABEL_73;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    (a4)(v177, a2);
    v152 = v164;
    v153 = v44;
    return (v170)(v152, v153, a2);
  }

  v164 = a6;
  a4 = *(v6 + 64);
  v45 = (a4)(v8, v6);
  v165 = v19;
  v163 = a4;
  if (v45)
  {
    v161 = *(v6 + 128);
    v46 = v161(v8, v6);
    if (v46 < 64)
    {
      v49 = (*(v6 + 120))(v8, v6);
      v50 = v174;
      if (v49 >= v44)
      {
        goto LABEL_18;
      }

LABEL_16:
      v64 = v175(a2, v50);
      v6 = -v64;
      if (__OFSUB__(0, v64))
      {
        __break(1u);
        goto LABEL_71;
      }

      v44 = v177;
      goto LABEL_30;
    }

    goto LABEL_8;
  }

  a4 = (a4)(v8, v6);
  v161 = *(v6 + 128);
  v46 = v161(v8, v6);
  if ((a4 & 1) == 0)
  {
    v50 = v174;
    if (v46 >= 64)
    {
      if (v44 > 0)
      {
        v178[0] = v44;
        a4 = v6 + 96;
        v44 = *(v6 + 96);
        v54 = lazy protocol witness table accessor for type Int and conformance Int(v46, v47, v48);
        v55 = v162;
        (v44)(v178, &type metadata for Int, v54, v8, v6);
        v56 = (*(*(*(v6 + 32) + 8) + 16))(a1, v55, v8);
        v57 = v55;
        v50 = v174;
        (*(v170 + 8))(v57, v8);
        if (v56)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_18;
    }

LABEL_15:
    if ((*(v6 + 120))(v8, v6) >= v44)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v46 <= 64)
  {
    v58 = v158;
    a4 = v159;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v159, v8, v158, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v60 = *(AssociatedConformanceWitness + 8);
    v156 = a1;
    v61 = v157;
    v60(&qword_18071E0A8, 256, v58, AssociatedConformanceWitness);
    v62 = v162;
    v63 = v61;
    a1 = v156;
    (*(a4 + 24))(v63, v8, a4);
    LOBYTE(v58) = (*(*(*(v6 + 32) + 8) + 16))(a1, v62, v8);
    (*(v170 + 8))(v62, v8);
    v50 = v174;
    if (v58)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_8:
  v178[0] = v44;
  a4 = v6 + 96;
  v44 = *(v6 + 96);
  v51 = lazy protocol witness table accessor for type Int and conformance Int(v46, v47, v48);
  v52 = v162;
  (v44)(v178, &type metadata for Int, v51, v8, v6);
  v53 = (*(*(*(v6 + 32) + 8) + 16))(a1, v52, v8);
  (*(v170 + 8))(v52, v8);
  v50 = v174;
  if (v53)
  {
    goto LABEL_16;
  }

LABEL_18:
  v65 = v175(a2, v50);
  v66 = v163(v8, v6);
  v156 = v6 + 128;
  v67 = v161(v8, v6);
  if (v66)
  {
    if (v67 <= 64)
    {
      v75 = (*(v6 + 120))(v8, v6);
      v44 = v177;
      if (v65 >= v75)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v178[0] = v65;
      v70 = *(v6 + 96);
      v71 = lazy protocol witness table accessor for type Int and conformance Int(v67, v68, v69);
      v72 = v162;
      v70(v178, &type metadata for Int, v71, v8, v6);
      v73 = (*(*(*(v6 + 32) + 8) + 16))(v72, a1, v8);
      v74 = v72;
      v50 = v174;
      (*(v170 + 8))(v74, v8);
      v44 = v177;
      if ((v73 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_29;
  }

  v44 = v177;
  if (v67 < 64)
  {
    if (v65 >= (*(v6 + 120))(v8, v6))
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v65 < 0 || (v178[0] = v65, v76 = *(v6 + 96), v77 = lazy protocol witness table accessor for type Int and conformance Int(v67, v68, v69), v78 = v162, v76(v178, &type metadata for Int, v77, v8, v6), v44 = v177, v79 = (*(*(*(v6 + 32) + 8) + 16))(v78, a1, v8), v80 = v78, v50 = v174, (*(v170 + 8))(v80, v8), (v79 & 1) != 0))
  {
LABEL_29:
    v6 = v175(a2, v50);
LABEL_30:
    v81 = v172;
    goto LABEL_56;
  }

LABEL_31:
  v82 = v160;
  (*(v170 + 16))(v160, a1, v8);
  v83 = v163(v8, v6);
  v84 = v161;
  if ((v83 & 1) == 0 || v161(v8, v6) < 65)
  {
    goto LABEL_45;
  }

  v85 = v163;
  if ((v163(v8, v6) & 1) == 0)
  {
    v155 = v26;
    v94 = v82;
    v95 = v85(v8, v6);
    v96 = v94;
    v97 = v84(v8, v6);
    if ((v95 & 1) == 0)
    {
      v84 = v161;
      v82 = v94;
      v26 = v155;
      if (v97 >= 64)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (v97 <= 64)
    {
      v104 = v158;
      v105 = v159;
      v106 = swift_getAssociatedConformanceWitness(v159, v8, v158, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v107 = v157;
      (*(v106 + 8))(&qword_18071E0A8, 256, v104, v106);
      v108 = v162;
      (v105[3])(v107, v8, v105);
      v82 = v96;
      LOBYTE(v104) = (*(*(*(v6 + 32) + 8) + 16))(v96, v108, v8);
      (*(v170 + 8))(v108, v8);
      v50 = v174;
      v84 = v161;
      v26 = v155;
      if ((v104 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v178[0] = 0x8000000000000000;
      v100 = *(v6 + 96);
      v101 = lazy protocol witness table accessor for type Int and conformance Int(v97, v98, v99);
      v102 = v162;
      v100(v178, &type metadata for Int, v101, v8, v6);
      v82 = v94;
      v103 = (*(*(*(v6 + 32) + 8) + 16))(v94, v102, v8);
      (*(v170 + 8))(v102, v8);
      v50 = v174;
      v84 = v161;
      v26 = v155;
      if ((v103 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

LABEL_49:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v86 = v84(v8, v6);
  if (v86 < 64)
  {
LABEL_44:
    (*(v6 + 120))(v8, v6);
    goto LABEL_45;
  }

  v178[0] = 0x8000000000000000;
  v155 = v26;
  v89 = *(v6 + 96);
  v90 = lazy protocol witness table accessor for type Int and conformance Int(v86, v87, v88);
  v91 = v162;
  v89(v178, &type metadata for Int, v90, v8, v6);
  v26 = v155;
  v84 = v161;
  v92 = (*(*(*(v6 + 32) + 8) + 16))(v82, v91, v8);
  v93 = v91;
  v50 = v174;
  (*(v170 + 8))(v93, v8);
  if (v92)
  {
    goto LABEL_49;
  }

LABEL_45:
  v161 = (v6 + 64);
  v109 = v84(v8, v6);
  v110 = v84;
  v81 = v172;
  if (v109 <= 64 && (v110(v8, v6) != 64 || (v163(v8, v6) & 1) != 0))
  {
    goto LABEL_55;
  }

  v155 = v26;
  v111 = v163(v8, v6);
  v112 = v110(v8, v6);
  if (v111)
  {
    if (v112 >= 65)
    {
      goto LABEL_48;
    }
  }

  else if (v112 >= 64)
  {
LABEL_48:
    v178[0] = 0x7FFFFFFFFFFFFFFFLL;
    v115 = *(v6 + 96);
    v116 = lazy protocol witness table accessor for type Int and conformance Int(v112, v113, v114);
    v117 = v162;
    v115(v178, &type metadata for Int, v116, v8, v6);
    v82 = v160;
    v118 = (*(*(*(v6 + 32) + 8) + 16))(v117, v160, v8);
    v119 = v117;
    v50 = v174;
    (*(v170 + 8))(v119, v8);
    v26 = v155;
    if (v118)
    {
      goto LABEL_49;
    }

    goto LABEL_55;
  }

  v82 = v160;
  (*(v6 + 120))(v8, v6);
  v26 = v155;
LABEL_55:
  v6 = (*(v6 + 120))(v8, v6);
  (*(v170 + 8))(v82, v8);
  v44 = v177;
LABEL_56:
  a4 = v26[4];
  (a4)(v44, v168, a2);
  v8 = v169;
  v120 = (*(v169 + 64))(a2, v169);
  v170 = a4;
  if (v120)
  {
    v121 = v175(a2, v50);
    if (!__OFSUB__(v121, 1))
    {
      v178[0] = v121 - 1;
      v124 = v8[12];
      v125 = lazy protocol witness table accessor for type Int and conformance Int(v121, v122, v123);
      v126 = v26;
      v127 = v50;
      v128 = v171;
      v124(v178, &type metadata for Int, v125, a2, v8);
      (*(v127 + 200))(v177, v128, a2, v127);
      v129 = v126[1];
      v26 = v126;
      v81 = v172;
      v129(v128, a2);
      v130 = v167;
      v131 = swift_getAssociatedConformanceWitness(v81, a2, v167, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v132 = v165;
      goto LABEL_60;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v133 = v167;
  v131 = swift_getAssociatedConformanceWitness(v81, a2, v167, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v132 = v165;
  (*(v131 + 8))(&qword_18071E0A8, 256, v133, v131);
  (v81[3])(v132, a2, v81);
  v130 = v133;
LABEL_60:
  (*(v131 + 8))(&qword_18071E0A8, 256, v130, v131);
  v44 = v166;
  (v81[3])(v132, a2, v81);
  v134 = v26[1];
  ++v26;
  a4 = v134;
  if (v6 < 0)
  {
    goto LABEL_65;
  }

  (a4)(v44, a2);
  v135 = v174;
  if (v6 < v175(a2, v174))
  {
    v136 = (a4)(v173, a2);
    v178[0] = v6;
    v137 = v8[12];
    v140 = lazy protocol witness table accessor for type Int and conformance Int(v136, v138, v139);
    v141 = v135;
    v142 = v171;
    v137(v178, &type metadata for Int, v140, a2, v8);
    v143 = v177;
    (*(v141 + 200))(v177, v142, a2, v141);
LABEL_63:
    (a4)(v142, a2);
    return (a4)(v143, a2);
  }

  (a4)(v177, a2);
  v152 = v164;
  v153 = v173;
  return (v170)(v152, v153, a2);
}

BOOL static Bool.random()()
{
  __buf = 0;
  swift_stdlib_random(&__buf, 8uLL);
  return (__buf & 0x20000) == 0;
}

uint64_t Bool.description.getter(char a1)
{
  if (a1)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Bool()
{
  if (*v0)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Bool()
{
  v1 = *v0;
  specialized Hasher.init(_seed:)(0, v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Bool(uint64_t a1)
{
  v2 = *v1;
  specialized Hasher.init(_seed:)(a1, v4);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Bool_optional __swiftcall Bool.init(_:)(Swift::String a1)
{
  if (a1._countAndFlagsBits == 1702195828 && a1._object == 0xE400000000000000)
  {
    object = a1._object;
LABEL_11:
    object;
    return 1;
  }

  if ((~a1._object & 0x6000000000000000) == 0)
  {
    if (a1._countAndFlagsBits != 0x65736C6166 || a1._object != 0xE500000000000000)
    {
      a1._object;
      return 2;
    }

    goto LABEL_16;
  }

  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = a1._object;
  if (_stringCompareInternal(_:_:expecting:)(a1._countAndFlagsBits, a1._object, 1702195828, 0xE400000000000000, 0))
  {
    object = v5;
    goto LABEL_11;
  }

  a1._object = v5;
  if (countAndFlagsBits == 0x65736C6166 && v5 == 0xE500000000000000)
  {
LABEL_16:
    a1._object;
    return 0;
  }

  v6 = _stringCompareInternal(_:_:expecting:)(countAndFlagsBits, v5, 0x65736C6166, 0xE500000000000000, 0);
  v5;
  result.value = 0;
  if ((v6 & 1) == 0)
  {
    return 2;
  }

  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Bool(unint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 1702195828 && a2 == 0xE400000000000000)
  {
    v6 = a2;
    goto LABEL_11;
  }

  if ((~a2 & 0x6000000000000000) != 0)
  {
    v8 = a2;
    if ((_stringCompareInternal(_:_:expecting:)(a1, a2, 1702195828, 0xE400000000000000, 0) & 1) == 0)
    {
      a2 = v8;
      if (a1 != 0x65736C6166 || v8 != 0xE500000000000000)
      {
        v9 = _stringCompareInternal(_:_:expecting:)(a1, v8, 0x65736C6166, 0xE500000000000000, 0);
        v8;
        v5 = 0;
        if (v9)
        {
          goto LABEL_17;
        }

        goto LABEL_9;
      }

LABEL_16:
      a2;
      v5 = 0;
      goto LABEL_17;
    }

    v6 = v8;
LABEL_11:
    v6;
    v5 = 1;
    goto LABEL_17;
  }

  if (a1 == 0x65736C6166 && a2 == 0xE500000000000000)
  {
    goto LABEL_16;
  }

  a2;
LABEL_9:
  v5 = 2;
LABEL_17:
  *a3 = v5;
}

uint64_t _SwiftCreateBridgedArray_DoNotCall(values:numValues:)(char *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  if ((result & 0x8000000000000000) == 0 && (result & 0x4000000000000000) == 0)
  {
    if (one-time initialization token for _bridgeInitializedSuccessfully != -1)
    {
      v6 = result;
      swift_once(&one-time initialization token for _bridgeInitializedSuccessfully, one-time initialization function for _bridgeInitializedSuccessfully, v3);
      result = v6;
    }

    if (!_bridgeInitializedSuccessfully)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    _orphanedFoundationSubclassesReparented = 1;
    if (*(result + 16))
    {
      v4 = result;
      v5 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0);
      v4;
      _swift_setClassMetadata(v5, v4);
      result = v4;
    }

    else
    {
      v4 = &_swiftEmptyArrayStorage;
    }

    result;
    return v4;
  }

  return result;
}

void *_SwiftCreateBridgedMutableArray(char *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v3 = type metadata accessor for _SwiftNSMutableArray();
  result = swift_allocObject(v3, 0x18, 7uLL);
  result[2] = v2;
  return result;
}

void *_SwiftCreateBridgedMutableArray_DoNotCall(values:numValues:)(char *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v3 = type metadata accessor for _SwiftNSMutableArray();
  result = swift_allocObject(v3, 0x18, 7uLL);
  result[2] = v2;
  return result;
}

objc_class *one-time initialization function for _bridgeInitializedSuccessfully()
{
  result = swift_stdlib_connectNSBaseClasses();
  _bridgeInitializedSuccessfully = result & 1;
  return result;
}

uint64_t static _BridgeableMetatype._forceBridgeFromObjectiveC(_:result:)(void *a1, void *a2)
{
  v9 = a1;
  swift_unknownObjectRetain(a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, _syXlXpMR);
  result = swift_dynamicCast(&v8, &v9, qword_1EEEAC710, v3, 7uLL, v4, v5, v6, v8);
  *a2 = v8;
  return result;
}

uint64_t static _BridgeableMetatype._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, void *a2)
{
  v10 = a1;
  swift_unknownObjectRetain(a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, _syXlXpMR);
  result = swift_dynamicCast(&v9, &v10, qword_1EEEAC710, v3, 6uLL, v4, v5, v6, v9);
  if (result)
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return result;
}

uint64_t static _BridgeableMetatype._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = a1;
  swift_unknownObjectRetain(a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, _syXlXpMR);
  result = swift_dynamicCast(&v9, &v10, qword_1EEEAC710, v3, 7uLL, v4, v5, v6, v8);
  *a2 = v9;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance _BridgeableMetatype(void *a1, void *a2)
{
  v9 = a1;
  swift_unknownObjectRetain(a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, _syXlXpMR);
  result = swift_dynamicCast(&v8, &v9, qword_1EEEAC710, v3, 7uLL, v4, v5, v6, v8);
  *a2 = v8;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance _BridgeableMetatype(void *a1, void *a2)
{
  v10 = a1;
  swift_unknownObjectRetain(a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, _syXlXpMR);
  result = swift_dynamicCast(&v9, &v10, qword_1EEEAC710, v3, 6uLL, v4, v5, v6, v9);
  if (result)
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return result;
}

unint64_t *_bridgeAnythingToObjectiveC<A>(_:)(id *a1, unsigned __int8 *a2)
{
  v4 = *(a2 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  if (_swift_isClassOrObjCExistentialType(v6, v6))
  {
    if (v5 != 8)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return swift_unknownObjectRetain(*a1);
  }

  else
  {
    (*(v4 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
    return _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)((&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0)), a2);
  }
}

id _bridgeAnyObjectToAny(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    ObjectType = swift_getObjectType(a1);
    a1 = v3;
    v5 = v3;
  }

  else
  {
    v5 = 0;
    ObjectType = qword_1EEEBE040;
  }

  a2[3] = ObjectType;
  *a2 = v5;

  return swift_unknownObjectRetain(a1);
}

uint64_t _forceBridgeFromObjectiveC<A>(_:_:)@<X0>(void *a1@<X0>, Class *a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v7 = type metadata accessor for Optional(0, a2, a2, a4);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (&v18 - v14);
  if (_swift_isClassOrObjCExistentialType(a2, a2))
  {
    v19 = a1;
    swift_unknownObjectRetain(a1);
    return swift_dynamicCast(a3, &v19, qword_1EEEAC710, a2, 7uLL);
  }

  else
  {
    v17 = *(a2 - 1);
    (*(v17 + 56))(v15, 1, 1, a2);
    _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(a1, a2, v15);
    (*(v8 + 16))(v12, v15, v7);
    if ((*(v17 + 48))(v12, 1, a2) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(v8 + 8))(v15, v7);
    return (*(v17 + 32))(a3, v12, a2);
  }
}

uint64_t _forceBridgeFromObjectiveC_bridgeable<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional(0, a2, a2, a3);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v19 - v15;
  v17 = *(a2 - 8);
  (*(v17 + 56))(&v19 - v15, 1, 1, a2);
  (*(a3 + 24))(a1, v16, a2, a3);
  (*(v9 + 16))(v13, v16, v8);
  if ((*(v17 + 48))(v13, 1, a2) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v9 + 8))(v16, v8);
  return (*(v17 + 32))(a4, v13, a2);
}

uint64_t _conditionallyBridgeFromObjectiveC<A>(_:_:)@<X0>(void *a1@<X0>, Class *a2@<X2>, swift *a3@<X8>, uint64_t a4@<X3>)
{
  v7 = type metadata accessor for Optional(0, a2, a2, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v17 - v10);
  if (_swift_isClassOrObjCExistentialType(a2, a2))
  {
    v18 = a1;
    swift_unknownObjectRetain(a1);
    v15 = swift_dynamicCast(a3, &v18, qword_1EEEAC710, a2, 6uLL, v12, v13, v14, v17);
    return (*(*(a2 - 1) + 7))(a3, v15 ^ 1u, 1, a2);
  }

  else
  {
    (*(*(a2 - 1) + 7))(v11, 1, 1, a2);
    _bridgeNonVerbatimFromObjectiveCConditional<A>(_:_:_:)(a1, a2, v11);
    return (*(v8 + 32))(a3, v11, v7);
  }
}

id _bridgeNonVerbatimFromObjectiveCToAny(void *a1, void *a2)
{
  outlined destroy of Any?(a2);
  a2[3] = swift_getObjectType(a1);
  *a2 = a1;

  return swift_unknownObjectRetain(a1);
}

uint64_t _bridgeNonVerbatimBoxedValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional(0, a3, a3, a4);
  (*(*(v7 - 8) + 8))(a2, v7);
  v10 = *(a3 - 8);
  (*(v10 + 16))(a2, a1, a3);
  v8 = *(v10 + 56);

  return v8(a2, 0, 1, a3);
}

BOOL _isBridgedToObjectiveC<A>(_:)(uint64_t a1, unint64_t *a2)
{
  if (_swift_isClassOrObjCExistentialType(a2, a2))
  {
    return 1;
  }

  return _isBridgedNonVerbatimToObjectiveC<A>(_:)(a2, a2, v3);
}

void _getBridgedObjectiveCType<A>(_:)(uint64_t a1, swift *a2)
{
  if (!_swift_isClassOrObjCExistentialType(a2, a2))
  {

    _getBridgedNonVerbatimObjectiveCType<A>(_:)(a2, a2, v3);
  }
}

uint64_t AutoreleasingUnsafeMutablePointer.pointee.getter@<X0>(id *a1@<X0>, Class *a2@<X1>, swift *a3@<X8>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>)
{
  v8 = *a1;
  if (v8)
  {
    v8 = swift_unknownObjectRetain(v8);
  }

  v11 = v8;
  return swift_dynamicCast(a3, &v11, qword_1EEEBE040, a2, 7uLL, a4, a5, a6, v10);
}

uint64_t key path getter for AutoreleasingUnsafeMutablePointer.pointee : <A>AutoreleasingUnsafeMutablePointer<A>@<X0>(id **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, swift *a4@<X8>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>)
{
  v8 = *(a2 + a3 - 8);
  v9 = **a1;
  if (v9)
  {
    v9 = swift_unknownObjectRetain(v9);
  }

  v12 = v9;
  return swift_dynamicCast(a4, &v12, qword_1EEEBE040, v8, 7uLL, a5, a6, a7, v11);
}

id key path setter for AutoreleasingUnsafeMutablePointer.pointee : <A>AutoreleasingUnsafeMutablePointer<A>(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = (&v14 - v6);
  (*(v8 + 16))(&v14 - v6);
  v9 = *a2;
  swift_dynamicCast(&v15, v7, v5, qword_1EEEBE040, 7uLL, v10, v11, v12, v14);
  result = v15;
  *v9 = result;
  return result;
}

id AutoreleasingUnsafeMutablePointer.pointee.setter(void *a1, void *a2, Class *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_dynamicCast(&v11, a1, a3, qword_1EEEBE040, 7uLL, a6, a7, a8, v10);
  result = v11;
  *a2 = result;
  return result;
}

uint64_t _unsafeReferenceCast<A, B>(_:to:)@<X0>(uint64_t a1@<X0>, Class *a2@<X2>, Class *a3@<X3>, swift *a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  return swift_dynamicCast(a4, v8, a2, a3, 7uLL, v10, v11, v12, v14);
}

void (*AutoreleasingUnsafeMutablePointer.pointee.modify(void *a1, id *a2, Class *a3))(uint64_t *a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x40, 0xF8A2uLL);
  }

  else
  {
    v6 = malloc(0x40uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[3] = a2;
  v6[4] = a3;
  v8 = *(a3 - 1);
  v6[5] = v8;
  v9 = *(v8 + 64);
  if (swift_coroFrameAlloc)
  {
    v6[6] = swift_coroFrameAlloc(v9, 0xF8A2uLL);
    v10 = swift_coroFrameAlloc(v9, 0xF8A2uLL);
  }

  else
  {
    v6[6] = malloc(v9);
    v10 = malloc(v9);
  }

  v14 = v10;
  v7[7] = v10;
  v15 = *a2;
  if (*a2)
  {
    v15 = swift_unknownObjectRetain(v15);
  }

  *v7 = v15;
  swift_dynamicCast(v14, v7, qword_1EEEBE040, a3, 7uLL, v11, v12, v13, v17);
  return AutoreleasingUnsafeMutablePointer.pointee.modify;
}

void AutoreleasingUnsafeMutablePointer.pointee.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  (*(*(v3 + 40) + 16))(*(*a1 + 48), *(v3 + 56), *(v3 + 32));
  v9 = *(v3 + 48);
  v8 = *(v3 + 56);
  v11 = *(v3 + 24);
  v10 = *(v3 + 32);
  if (a2)
  {
    v12 = 8;
  }

  else
  {
    v12 = 16;
  }

  swift_dynamicCast((v3 + v12), *(v3 + 48), *(v3 + 32), qword_1EEEBE040, 7uLL, v5, v6, v7, v13);
  *v11 = *(v3 + v12);
  (*(v4 + 8))(v8, v10);
  free(v8);
  free(v9);

  free(v3);
}

uint64_t AutoreleasingUnsafeMutablePointer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, swift *a4@<X8>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>)
{
  v9 = *(a2 + *(*(a3 - 1) + 9) * a1);
  if (v9)
  {
    v9 = swift_unknownObjectRetain(v9);
  }

  v12 = v9;
  return swift_dynamicCast(a4, &v12, qword_1EEEBE040, a3, 7uLL, a5, a6, a7, v11);
}

uint64_t _Pointer.advanced(by:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v6 = (*(a3 + 48))(a2, a3);
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for _Pointer, associated type descriptor for _Pointer.Pointee);
  return (*(a3 + 56))(v6 + *(*(v7 - 8) + 72) * a1, a2, a3);
}

void protocol witness for Hashable.hash(into:) in conformance AutoreleasingUnsafeMutablePointer<A>(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AutoreleasingUnsafeMutablePointer<A>, a2, a3);

  _Pointer.hash(into:)(a1, a2, WitnessTable);
}

void _Pointer.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22[1] = a1;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = type metadata accessor for Optional(0, v9, v10, v11);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v22 - v19;
  memcpy(v22 - v19, v4, v8);
  (*(v7 + 56))(v20, 0, 1, a2);
  (*(v13 + 32))(v17, v20, v12);
  if ((*(v7 + 48))(v17, 1, a2) == 1)
  {
    (*(v13 + 8))(v17, v12);
    v21 = 0;
  }

  else
  {
    memcpy(v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v8);
    v21 = (*(a3 + 48))(a2, a3);
  }

  Hasher._combine(_:)(v21);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutoreleasingUnsafeMutablePointer<A>(Swift::Int a1, unsigned __int16 *a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for AutoreleasingUnsafeMutablePointer<A>, a2, a3);

  return _Pointer._rawHashValue(seed:)(a1);
}

Swift::Int __swiftcall _Pointer._rawHashValue(seed:)(Swift::Int seed)
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v24 = seed;
  v7 = *(v1 - 8);
  v8 = *(v7 + 64);
  (MEMORY[0x1EEE9AC00])(seed);
  v12 = type metadata accessor for Optional(0, v9, v10, v11);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v23 - v19;
  memcpy(&v23 - v19, v4, v8);
  (*(v7 + 56))(v20, 0, 1, v6);
  (*(v13 + 32))(v17, v20, v12);
  if ((*(v7 + 48))(v17, 1, v6) == 1)
  {
    (*(v13 + 8))(v17, v12);
    v21 = 0;
  }

  else
  {
    memcpy(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v8);
    v21 = (*(v5 + 48))(v6, v5);
  }

  return specialized static Hasher._hash(seed:_:)(v24, v21);
}

void *_sSPyxGSxsRi_zrlSx8distance2to6StrideQzx_tFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(*(a2 + 16) - 8) + 72);
  if (!v4 || ((v5 = *result - *v3, v4 == -1) ? (v6 = v5 == 0x8000000000000000) : (v6 = 0), v6))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = v5 / v4;
  return result;
}

uint64_t _Pointer.distance(to:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  v6 = v5(a2, a3);
  v7 = v5(a2, a3);
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for _Pointer, associated type descriptor for _Pointer.Pointee);
  v9 = *(*(v8 - 8) + 72);
  if (!v9 || (v6 - v7 == 0x8000000000000000 ? (v10 = v9 == -1) : (v10 = 0), v10))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (v6 - v7) / v9;
}

uint64_t static Strideable._step(after:from:by:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  static Strideable._step(after:from:by:)(a1, a2, a3 & 1, a4, a5, a6, a7, a8);
  return 0;
}

{
  swift_getTupleTypeMetadata2(0, byte_1EEEBE0E0, a7, "index value ", 0);
  v15 = v14;
  v16 = *(v14 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v22 - v19;
  *v20 = a2;
  v20[8] = a3 & 1;
  (*(*(a7 - 1) + 16))(&v22 + *(v18 + 48) - v19, a4, a7);
  (*(a8 + 48))(a6, a7, a8);
  (*(v16 + 8))(v20, v15);
  return 0;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutoreleasingUnsafeMutablePointer<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AutoreleasingUnsafeMutablePointer<A>, a1, a3);

  return _Pointer.debugDescription.getter(a1, WitnessTable);
}

uint64_t _Pointer.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 48))(a1);

  return OpaquePointer.debugDescription.getter(v2);
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance AutoreleasingUnsafeMutablePointer<A>@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AutoreleasingUnsafeMutablePointer<A>, a1, a2);

  return _Pointer.customMirror.getter(a1, WitnessTable, a3);
}

uint64_t specialized _Pointer.customMirror.getter@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
  v7 = swift_allocObject(v6, 0x50, 7uLL);
  *(v7 + 1) = xmmword_18071DB30;
  strcpy(v7 + 32, "pointerValue");
  *(v7 + 45) = 0;
  *(v7 + 23) = -5120;
  v7[9] = &type metadata for UInt64;
  v7[6] = a1;
  v23[0] = 0;
  v23[1] = 0;
  v8 = static Mirror._superclassIterator<A>(_:_:)(&v25, v23, a2);
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v12 = swift_allocObject(v11, 0x48, 7uLL);
  v12[6] = v7;
  v12[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v12[8] = 0;
  v13 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v14 = swift_allocObject(v13, 0x18, 7uLL);
  v14[2] = 0;
  v15 = swift_allocObject(v13, 0x18, 7uLL);
  v15[2] = 1;
  v12[2] = v14;
  v12[3] = &protocol witness table for _IndexBox<A>;
  v12[4] = v15;
  v12[5] = &protocol witness table for _IndexBox<A>;
  v24 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v23, &v24, a2, v16, 6uLL, v17, v18, v19, v22);
  v21 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  *a3 = a2;
  *(a3 + 8) = v12;
  *(a3 + 16) = 9;
  *(a3 + 24) = v8;
  *(a3 + 32) = v10;
  *(a3 + 40) = v21;
  return result;
}

uint64_t _Pointer.customMirror.getter@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*(a1 - 1) + 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v32 - v11;
  v14 = (*(v13 + 48))(v10);
  memcpy(v12, v3, v6);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
  v16 = swift_allocObject(v15, 0x50, 7uLL);
  *(v16 + 1) = xmmword_18071DB30;
  strcpy(v16 + 32, "pointerValue");
  *(v16 + 45) = 0;
  *(v16 + 23) = -5120;
  v16[9] = &type metadata for UInt64;
  v16[6] = v14;
  v32[0] = 0;
  v32[1] = 0;
  v17 = static Mirror._superclassIterator<A>(_:_:)(v12, v32, a1);
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v21 = swift_allocObject(v20, 0x48, 7uLL);
  v21[6] = v16;
  v21[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v21[8] = 0;
  v22 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v23 = swift_allocObject(v22, 0x18, 7uLL);
  v23[2] = 0;
  v24 = swift_allocObject(v22, 0x18, 7uLL);
  v24[2] = 1;
  v21[2] = v23;
  v21[3] = &protocol witness table for _IndexBox<A>;
  v21[4] = v24;
  v21[5] = &protocol witness table for _IndexBox<A>;
  memcpy(v8, v12, v6);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v32, v8, a1, v25, 6uLL, v26, v27, v28, v31);
  v30 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  *a3 = a1;
  *(a3 + 8) = v21;
  *(a3 + 16) = 9;
  *(a3 + 24) = v17;
  *(a3 + 32) = v19;
  *(a3 + 40) = v30;
  return result;
}

uint64_t _sSLsE1goiySbx_xtFZs8AnyIndexV_Tt1gq5(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType(a3);
  v9 = (*(a4 + 8))(ObjectType, a4);
  v10 = swift_getObjectType(a1);
  if (v9 != (*(a2 + 8))(v10, a2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = swift_getObjectType(a3);
  return (*(a4 + 32))(a1, a2, v11, a4) & 1;
}

uint64_t _Pointer.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 48))(a2, a3);
  v6 = *(a3 + 56);

  return v6(v5, a2, a3);
}

{
  return (*(a3 + 56))(a1, a2);
}

uint64_t static FixedWidthInteger.<< infix<A>(_:_:)@<X0>(uint64_t (*a1)(uint64_t, char *, uint64_t)@<X1>, Class *a2@<X2>, Class *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = a5;
  v9 = a3;
  v180 = a1;
  v166 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v166, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v165 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v164 = v162 - v14;
  v174 = *(a4 + 8);
  v177 = *(*(v174 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v177, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v16 = v15;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v172 = v162 - v19;
  v175 = *(v9 - 1);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v167 = v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v168 = v162 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v171 = v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v176 = v162 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v178 = v162 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v183 = v162 - v37;
  MEMORY[0x1EEE9AC00](v36, v38);
  v179 = v39;
  v40 = *(v39 + 16);
  v173 = v162 - v41;
  v40();
  v42 = *(a4 + 56);
  v184 = a4;
  v181 = v42;
  v182 = a4 + 56;
  v43 = v42(a2, a4);
  v44 = -v43;
  if (__OFSUB__(0, v43))
  {
    __break(1u);
LABEL_64:
    v179 = v6;
    (v9)(v44, a2);
    v152 = v184;
    v153 = v181(a2, v184);
    if (!__OFSUB__(0, v153))
    {
      v44 = v183;
      if (-v153 < v16)
      {
        v154 = (v9)(v178, a2);
        v185[0] = -v16;
        v155 = *(v7 + 96);
        v158 = lazy protocol witness table accessor for type Int and conformance Int(v154, v156, v157);
        v159 = v176;
        v155(v185, &type metadata for Int, v158, a2, v7);
        (*(v152 + 200))(v44, v159, a2, v152);
        (v9)(v159, a2);
        v150 = v44;
        return (v9)(v150, a2);
      }

      goto LABEL_72;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    (v9)(v44, a2);
    v160 = v169;
    v161 = v178;
    return v180(v160, v161, a2);
  }

  v169 = a6;
  v45 = v7 + 64;
  v46 = *(v7 + 64);
  v47 = v46(v9, v7);
  v170 = v16;
  if ((v47 & 1) == 0)
  {
    v53 = v46(v9, v7);
    v48 = *(v7 + 128);
    v49 = v180;
    v50 = v48(v9, v7);
    if (v53)
    {
      v163 = v48;
      if (v50 <= 64)
      {
        v65 = v165;
        v66 = v166;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v166, v9, v165, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v68 = v164;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v65, AssociatedConformanceWitness);
        v69 = v168;
        (v66[3])(v68, v9, v66);
        v49 = v180;
        LOBYTE(v65) = (*(*(*(v7 + 32) + 8) + 16))(v180, v69, v9);
        (*(v175 + 8))(v69, v9);
        v48 = v163;
        if ((v65 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v185[0] = v44;
        v44 = *(v7 + 96);
        v54 = lazy protocol witness table accessor for type Int and conformance Int(v50, v51, v52);
        v55 = v46;
        v56 = v168;
        (v44)(v185, &type metadata for Int, v54, v9, v7);
        v57 = v180;
        v58 = (*(*(*(v7 + 32) + 8) + 16))(v180, v56, v9);
        v59 = v56;
        v46 = v55;
        v49 = v57;
        (*(v175 + 8))(v59, v9);
        v48 = v163;
        if ((v58 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_15:
      v70 = v181(a2, v184);
      v16 = -v70;
      if (__OFSUB__(0, v70))
      {
        __break(1u);
        goto LABEL_70;
      }

      v44 = v183;
      goto LABEL_29;
    }

    if (v50 < 64)
    {
      goto LABEL_14;
    }

    if (v44 <= 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v185[0] = v44;
    v44 = *(v7 + 96);
    v60 = lazy protocol witness table accessor for type Int and conformance Int(v50, v51, v52);
    v163 = (v7 + 64);
    v61 = v46;
    v62 = v168;
    (v44)(v185, &type metadata for Int, v60, v9, v7);
    v63 = (*(*(*(v7 + 32) + 8) + 16))(v180, v62, v9);
    v64 = v62;
    v46 = v61;
    v49 = v180;
    v45 = v163;
    (*(v175 + 8))(v64, v9);
    if ((v63 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v48 = *(v7 + 128);
  v49 = v180;
  v50 = v48(v9, v7);
  if (v50 >= 64)
  {
    goto LABEL_11;
  }

LABEL_14:
  if ((*(v7 + 120))(v9, v7) < v44)
  {
    goto LABEL_15;
  }

LABEL_17:
  v71 = v181(a2, v184);
  v72 = v46(v9, v7);
  v162[1] = v7 + 128;
  v73 = v48(v9, v7);
  if (v72)
  {
    if (v73 <= 64)
    {
      v82 = (*(v7 + 120))(v9, v7);
      v44 = v183;
      if (v71 >= v82)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v185[0] = v71;
      v76 = *(v7 + 96);
      v77 = lazy protocol witness table accessor for type Int and conformance Int(v73, v74, v75);
      v163 = v45;
      v78 = v46;
      v79 = v168;
      v76(v185, &type metadata for Int, v77, v9, v7);
      v80 = (*(*(*(v7 + 32) + 8) + 16))(v79, v180, v9);
      v81 = v79;
      v46 = v78;
      v49 = v180;
      v45 = v163;
      (*(v175 + 8))(v81, v9);
      v44 = v183;
      if ((v80 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

LABEL_28:
    v16 = v181(a2, v184);
LABEL_29:
    v89 = v177;
    goto LABEL_55;
  }

  v44 = v183;
  if (v73 < 64)
  {
    if (v71 >= (*(v7 + 120))(v9, v7))
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v71 < 0)
  {
    goto LABEL_28;
  }

  v185[0] = v71;
  v83 = *(v7 + 96);
  v84 = lazy protocol witness table accessor for type Int and conformance Int(v73, v74, v75);
  v163 = v45;
  v85 = v46;
  v86 = v168;
  v83(v185, &type metadata for Int, v84, v9, v7);
  v44 = v183;
  v87 = (*(*(*(v7 + 32) + 8) + 16))(v86, v180, v9);
  v88 = v86;
  v46 = v85;
  v49 = v180;
  v45 = v163;
  (*(v175 + 8))(v88, v9);
  if (v87)
  {
    goto LABEL_28;
  }

LABEL_30:
  v90 = v167;
  (*(v175 + 16))(v167, v49, v9);
  if ((v46(v9, v7) & 1) == 0 || v48(v9, v7) < 65)
  {
    goto LABEL_44;
  }

  if ((v46(v9, v7) & 1) == 0)
  {
    v101 = v46(v9, v7);
    v102 = v48(v9, v7);
    if ((v101 & 1) == 0)
    {
      if (v102 >= 64)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v163 = v48;
    if (v102 <= 64)
    {
      v111 = v165;
      v112 = v166;
      v113 = swift_getAssociatedConformanceWitness(v166, v9, v165, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v114 = v164;
      (*(v113 + 8))(&qword_18071E0A8, 256, v111, v113);
      v115 = v112;
      v116 = v112[3];
      v117 = v168;
      (v116)(v114, v9, v115);
      LOBYTE(v111) = (*(*(*(v7 + 32) + 8) + 16))(v90, v117, v9);
      (*(v175 + 8))(v117, v9);
      v48 = v163;
      if ((v111 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v185[0] = 0x8000000000000000;
      v105 = *(v7 + 96);
      v106 = lazy protocol witness table accessor for type Int and conformance Int(v102, v103, v104);
      v107 = v46;
      v108 = v168;
      v105(v185, &type metadata for Int, v106, v9, v7);
      v109 = (*(*(*(v7 + 32) + 8) + 16))(v90, v108, v9);
      v110 = v108;
      v46 = v107;
      (*(v175 + 8))(v110, v9);
      v48 = v163;
      if ((v109 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

LABEL_48:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v91 = v48(v9, v7);
  if (v91 < 64)
  {
LABEL_43:
    (*(v7 + 120))(v9, v7);
    goto LABEL_44;
  }

  v185[0] = 0x8000000000000000;
  v163 = v45;
  v94 = v48;
  v95 = *(v7 + 96);
  v96 = lazy protocol witness table accessor for type Int and conformance Int(v91, v92, v93);
  v97 = v46;
  v98 = v168;
  v95(v185, &type metadata for Int, v96, v9, v7);
  v48 = v94;
  v99 = (*(*(*(v7 + 32) + 8) + 16))(v90, v98, v9);
  v100 = v98;
  v46 = v97;
  (*(v175 + 8))(v100, v9);
  if (v99)
  {
    goto LABEL_48;
  }

LABEL_44:
  v118 = v46;
  v119 = v48(v9, v7);
  v89 = v177;
  if (v119 <= 64 && (v48(v9, v7) != 64 || (v118(v9, v7) & 1) != 0))
  {
    goto LABEL_54;
  }

  v120 = v118(v9, v7);
  v121 = v48(v9, v7);
  if (v120)
  {
    if (v121 >= 65)
    {
      goto LABEL_47;
    }

LABEL_53:
    (*(v7 + 120))(v9, v7);
    goto LABEL_54;
  }

  if (v121 < 64)
  {
    goto LABEL_53;
  }

LABEL_47:
  v185[0] = 0x7FFFFFFFFFFFFFFFLL;
  v124 = *(v7 + 96);
  v125 = lazy protocol witness table accessor for type Int and conformance Int(v121, v122, v123);
  v126 = v168;
  v124(v185, &type metadata for Int, v125, v9, v7);
  v127 = (*(*(*(v7 + 32) + 8) + 16))(v126, v90, v9);
  (*(v175 + 8))(v126, v9);
  if (v127)
  {
    goto LABEL_48;
  }

LABEL_54:
  v16 = (*(v7 + 120))(v9, v7);
  (*(v175 + 8))(v90, v9);
  v44 = v183;
LABEL_55:
  v128 = *(v179 + 32);
  v128(v44, v173, a2);
  v7 = v174;
  v129 = (*(v174 + 64))(a2, v174);
  v180 = v128;
  if (v129)
  {
    v130 = v181(a2, v184);
    if (!__OFSUB__(v130, 1))
    {
      v185[0] = v130 - 1;
      v133 = *(v7 + 96);
      v134 = lazy protocol witness table accessor for type Int and conformance Int(v130, v131, v132);
      v135 = v179;
      v136 = v184;
      v137 = v176;
      v133(v185, &type metadata for Int, v134, a2, v7);
      (*(v136 + 200))(v183, v137, a2, v136);
      v89 = v177;
      (*(v135 + 8))(v137, a2);
      v138 = v170;
      v139 = swift_getAssociatedConformanceWitness(v89, a2, v170, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v140 = v172;
      goto LABEL_59;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v138 = v170;
  v139 = swift_getAssociatedConformanceWitness(v89, a2, v170, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v140 = v172;
  (*(v139 + 8))(&qword_18071E0A8, 256, v138, v139);
  (v89[3])(v140, a2, v89);
  v135 = v179;
LABEL_59:
  (*(v139 + 8))(&qword_18071E0A8, 256, v138, v139);
  v44 = v171;
  (v89[3])(v140, a2, v89);
  v141 = *(v135 + 8);
  v6 = v135 + 8;
  v9 = v141;
  if (v16 < 0)
  {
    goto LABEL_64;
  }

  (v9)(v178, a2);
  v142 = v184;
  if (v16 < v181(a2, v184))
  {
    v143 = (v9)(v44, a2);
    v185[0] = v16;
    v144 = *(v7 + 96);
    v147 = lazy protocol witness table accessor for type Int and conformance Int(v143, v145, v146);
    v148 = v176;
    v144(v185, &type metadata for Int, v147, a2, v7);
    v149 = v183;
    (*(v142 + 216))(v183, v148, a2, v142);
    (v9)(v148, a2);
    v150 = v149;
    return (v9)(v150, a2);
  }

  (v9)(v183, a2);
  v160 = v169;
  v161 = v44;
  return v180(v160, v161, a2);
}

unint64_t _BridgeStorage.isObjC.getter(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 1;
  }

  else
  {
    return (a1 >> 62) & 1;
  }
}

void *ManagedBufferPointer.init(_uncheckedBufferClass:minimumCapacity:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  v6 = v5 + 1;
  v7 = *(v4 + 64);
  v8 = (v5 + 16) & ~v5;
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = *(a4 - 8);
  v12 = *(v11 + 80);
  v13 = v12 + 1;
  v14 = __CFADD__(v10, v12 + 1);
  v15 = v10 + v12 + 1;
  if (v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = *(v11 + 72);
  v17 = a2 * v16;
  if ((a2 * v16) >> 64 != (a2 * v16) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = (v15 - 1) & ~v12;
  if (__OFADD__(v18, v17))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v13 > v6)
  {
    v6 = v13;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  return swift_bufferAllocate(result, (v18 + v17), v6 - 1);
}

uint64_t static UInt.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __CFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t _roundUpImpl(_:toAlignment:)(uint64_t result, uint64_t a2)
{
  if (!__CFADD__(result, a2))
  {
    return (result + a2 - 1) & -a2;
  }

  __break(1u);
  return result;
}

id _reinterpretCastToAnyObject<A>(_:)(void **a1, uint64_t a2)
{
  if (*(*(a2 - 8) + 64) != 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *a1;

  return swift_unknownObjectRetain(v3);
}

BOOL != infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return a1 != a2;
}

{
  if (a1)
  {
    if (a2)
    {
      return a1 != a2;
    }

    return 1;
  }

  return a2 != 0;
}

BOOL == infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return a1 == a2;
    }

    return 0;
  }

  return !a2;
}

id unsafeDowncast<A>(_:to:)(void *a1, uint64_t a2, Class *a3)
{
  v11 = a1;
  swift_unknownObjectRetain(a1);
  if (!swift_dynamicCast(&v10, &v11, qword_1EEEAC710, a3, 6uLL, v5, v6, v7, v9))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_unknownObjectRelease(v10);
  return swift_unknownObjectRetain(a1);
}

uint64_t _class_getInstancePositiveExtentSize(_:)(uint64_t a1)
{
  _swift_getObjCClassInstanceExtents(a1);
  if (v1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v1;
}

BOOL static BinaryInteger.>= infix<A>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v68 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v68, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v67 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v66 = &v61 - v14;
  v65 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v65, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v64 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v63 = &v61 - v18;
  v72 = *(a4 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v71 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v20, v22);
  v69 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a5 + 64);
  v25 = v24(a3, a5);
  if (((v25 ^ (*(a6 + 64))(a4, a6)) & 1) == 0)
  {
    v35 = (*(a5 + 128))(a3, a5);
    if (v35 >= (*(a6 + 128))(a4, a6))
    {
      v44 = v71;
      (*(v72 + 16))(v71, a2, a4);
      v45 = v69;
      (*(a5 + 96))(v44, a4, a6, a3, a5);
      v38 = (*(*(*(a5 + 32) + 8) + 16))(a1, v45, a3);
      v39 = *(v70 + 8);
      v40 = v45;
      v43 = a3;
      goto LABEL_11;
    }

    v36 = v69;
    (*(v70 + 16))(v69, a1, a3);
    v37 = v71;
    (*(a6 + 96))(v36, a3, a5, a4, a6);
    v38 = (*(*(*(a6 + 32) + 8) + 16))(v37, a2, a4);
    v39 = *(v72 + 8);
    v40 = v37;
LABEL_9:
    v43 = a4;
LABEL_11:
    v39(v40, v43);
    return (v38 & 1) == 0;
  }

  v26 = v24(a3, a5);
  v27 = *(a5 + 128);
  v62 = a1;
  v28 = v27(a3, a5);
  v29 = *(a6 + 128);
  v61 = a2;
  v30 = v29(a4, a6);
  if ((v26 & 1) == 0)
  {
    v32 = v70;
    v41 = v71;
    if (v28 >= v30)
    {
      v53 = v67;
      v54 = v68;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v68, a4, v67, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v56 = v66;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v53, AssociatedConformanceWitness);
      (v54[3])(v56, a4, v54);
      v57 = v61;
      LOBYTE(v53) = (*(*(*(a6 + 32) + 8) + 40))(v61, v41, a4);
      v58 = v72;
      (*(v72 + 8))(v41, a4);
      v59 = v62;
      if ((v53 & 1) == 0)
      {
        v38 = 0;
        return (v38 & 1) == 0;
      }

      (*(v58 + 16))(v41, v57, a4);
      v33 = v69;
      (*(a5 + 96))(v41, a4, a6, a3, a5);
      v34 = (*(*(*(a5 + 32) + 8) + 16))(v59, v33, a3);
      goto LABEL_16;
    }

    v42 = v69;
    (*(v70 + 16))(v69, v62, a3);
    (*(a6 + 96))(v42, a3, a5, a4, a6);
    v38 = (*(*(*(a6 + 32) + 8) + 16))(v41, v61, a4);
    v39 = *(v72 + 8);
    v40 = v41;
    goto LABEL_9;
  }

  v32 = v70;
  v31 = v71;
  if (v30 < v28)
  {
    (*(v72 + 16))(v71, v61, a4);
    v33 = v69;
    (*(a5 + 96))(v31, a4, a6, a3, a5);
    v34 = (*(*(*(a5 + 32) + 8) + 16))(v62, v33, a3);
LABEL_16:
    v38 = v34;
    (*(v32 + 8))(v33, a3);
    return (v38 & 1) == 0;
  }

  v46 = v64;
  v47 = v65;
  v48 = swift_getAssociatedConformanceWitness(v65, a3, v64, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v49 = v63;
  (*(v48 + 8))(&qword_18071E0A8, 256, v46, v48);
  v50 = v69;
  (v47[3])(v49, a3, v47);
  v51 = v62;
  LOBYTE(v46) = (*(*(*(a5 + 32) + 8) + 16))(v62, v50, a3);
  (*(v32 + 8))(v50, a3);
  v52 = v72;
  if (v46)
  {
    v38 = 1;
  }

  else
  {
    (*(v32 + 16))(v50, v51, a3);
    (*(a6 + 96))(v50, a3, a5, a4, a6);
    v38 = (*(*(*(a6 + 32) + 8) + 16))(v31, v61, a4);
    (*(v52 + 8))(v31, a4);
  }

  return (v38 & 1) == 0;
}

id _bridgeObject(toNonTaggedObjC:)(int64_t a1)
{
  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return swift_unknownObjectRetain(a1);
}

uint64_t _nativeObject(fromBridge:)(int64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  a1;
  return v1;
}

char *_getSuperclass(_:)(unint64_t *a1)
{
  if (!swift_isClassType(a1) || !a1)
  {
    return 0;
  }

  return _swift_class_getSuperclass(a1);
}

unint64_t *_unsafeDowncastToAnyObject(fromAny:)(void *a1)
{
  v1 = a1[3];
  v2 = __swift_project_boxed_opaque_existential_0Tm(a1, v1);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v1, v1);
  if (isClassOrObjCExistentialType)
  {
    if (*(*(v1 - 1) + 64) != 8)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return swift_unknownObjectRetain(*v2);
  }

  else
  {
    MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType, v4);
    v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v2, v1);
    return _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v7, v1);
  }
}

uint64_t StaticString.utf8Start.getter(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || !result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void Character._str.setter(uint64_t a1, uint64_t a2)
{
  v2[1];
  *v2 = a1;
  v2[1] = a2;
}

Swift::String __swiftcall Character.init(_:)(Swift::String a1)
{
  if ((a1._object & 0x2000000000000000) != 0)
  {
    v1 = HIBYTE(a1._object) & 0xF;
  }

  else
  {
    v1 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4._rawBits = _StringGuts.validateCharacterIndex(_:)(15)._rawBits;
  if (String._uncheckedIndex(after:)(v4)._rawBits >> 14 != 4 * v1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!(object & 0x2000000000000000 | countAndFlagsBits & 0x1000000000000000))
  {
    countAndFlagsBits = specialized static String._copying(_:)(countAndFlagsBits, object);
    v8 = v7;
    object;
    object = v8;
  }

  v5 = countAndFlagsBits;
  v6 = object;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

BOOL String.isEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 == 0;
}

Swift::String::Index __swiftcall String.index(after:)(Swift::String::Index after)
{
  v1._rawBits = _StringGuts.validateCharacterIndex(_:)(after)._rawBits;

  return String._uncheckedIndex(after:)(v1);
}

unsigned __int8 *protocol witness for _ExpressibleByBuiltinExtendedGraphemeClusterLiteral.init(_builtinExtendedGraphemeClusterLiteral:utf8CodeUnitCount:isASCII:) in conformance Character@<X0>(unsigned __int8 *result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2)
  {
    if (a2 <= 0xF)
    {
      v7 = a2 - 8;
      v8 = 8;
      if (a2 < 8)
      {
        v8 = a2;
      }

      v9 = v8 - 1;
      if (a2 < v8 - 1)
      {
        v9 = a2;
      }

      if (v8 == v9)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v5 = *result;
      if (a2 != 1)
      {
        v5 |= result[1] << 8;
        if (a2 != 2)
        {
          v5 |= result[2] << 16;
          if (a2 != 3)
          {
            v5 |= result[3] << 24;
            if (a2 != 4)
            {
              v5 |= result[4] << 32;
              if (a2 != 5)
              {
                v5 |= result[5] << 40;
                if (a2 != 6)
                {
                  v5 |= result[6] << 48;
                  if (a2 != 7)
                  {
                    v5 |= result[7] << 56;
                  }
                }
              }
            }
          }
        }
      }

      if (a2 < 9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = result + 8;
        do
        {
          v13 = *v12++;
          v10 |= v13 << v11;
          v11 += 8;
          --v7;
        }

        while (v7);
      }

      v14 = 0xA000000000000000;
      if (((v10 | v5) & 0x8080808080808080) == 0)
      {
        v14 = 0xE000000000000000;
      }

      v6 = v14 | (a2 << 56) | v10;
    }

    else
    {
      v4 = a2 | 0xC000000000000000;
      if ((a3 & 1) == 0)
      {
        v4 = a2;
      }

      v5 = v4 | 0x1000000000000000;
      v6 = (result + 0x7FFFFFFFFFFFFFE0) | 0x8000000000000000;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a4 = v5;
  a4[1] = v6;
  return result;
}

uint64_t protocol witness for _ExpressibleByBuiltinUnicodeScalarLiteral.init(_builtinUnicodeScalarLiteral:) in conformance Character@<X0>(uint64_t *a1@<X8>, unsigned int a2@<W0>)
{
  result = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance StaticBigInt@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance _GenericIndexKey()
{
  v1 = *v0;
  v0[1];
  return v1;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Character(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a2;
  v6 = a1;
  v7._rawBits = _StringGuts.validateCharacterIndex(_:)(15)._rawBits;
  if (String._uncheckedIndex(after:)(v7)._rawBits >> 14 != 4 * v4)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!(v5 & 0x2000000000000000 | v6 & 0x1000000000000000))
  {
    v6 = specialized static String._copying(_:)(v6, v5);
    v9 = v8;
    v5;
    v5 = v9;
  }

  *a3 = v6;
  a3[1] = v5;
}

void String.debugDescription.getter(uint64_t a1, unint64_t a2)
{
  v2 = 34;
  v249 = 34;
  v250 = 0xE100000000000000;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v240 = v3;
  if (v3)
  {
    v4 = a2;
    v5 = 0;
    v234 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v235 = a2 & 0xFFFFFFFFFFFFFFLL;
    v6 = 1;
    while (1)
    {
      while (1)
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v5 << 16));
          scalarLength = v10.scalarLength;
          value = v10._0._value;
        }

        else
        {
          if ((v4 & 0x2000000000000000) != 0)
          {
            v247 = a1;
            v248 = v235;
            v7 = &v247;
          }

          else
          {
            v7 = v234;
            if ((a1 & 0x1000000000000000) == 0)
            {
              v7 = _StringObject.sharedUTF8.getter(a1, v4);
            }
          }

          value = _decodeScalar(_:startingAt:)(v7, a2, v5);
        }

        v5 += scalarLength;
        switch(value)
        {
          case '""':
            v11 = 0xE200000000000000;
            v12 = 8796;
            goto LABEL_20;
          case '\\':
            v11 = 0xE200000000000000;
            v12 = 23644;
            goto LABEL_20;
          case '\'':
            v11 = 0xE200000000000000;
            v12 = 10076;
            goto LABEL_20;
        }

        if (value - 127 > 0xFFFFFFA0)
        {
          break;
        }

        if (value > 9)
        {
          if (value == 10)
          {
            v11 = 0xE200000000000000;
            v12 = 28252;
            goto LABEL_20;
          }

          if (value == 13)
          {
            v11 = 0xE200000000000000;
            v12 = 29276;
            goto LABEL_20;
          }
        }

        else
        {
          if (!value)
          {
            v11 = 0xE200000000000000;
            v12 = 12380;
            goto LABEL_20;
          }

          if (value == 9)
          {
            v11 = 0xE200000000000000;
            v12 = 29788;
            goto LABEL_20;
          }
        }

        if (value > 0x7F)
        {
          break;
        }

        v78 = value;
        v79 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)((value >> 4) | 0x30);
        v81 = v80;
        v82 = specialized static String.+ infix(_:_:)(0x7B755CuLL, 0xE300000000000000, v79, v80);
        v84 = v83;
        0xE300000000000000;
        v81;
        if ((v78 & 0xFu) >= 0xA)
        {
          v85 = (v78 & 0xF) + 55;
        }

        else
        {
          v85 = v78 & 0xF | 0x30;
        }

        v86 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v85);
        v88 = v87;
        v89 = specialized static String.+ infix(_:_:)(v82, v84, v86, v87);
        v91 = v90;
        v84;
        v88;
        v12 = specialized static String.+ infix(_:_:)(v89, v91, 0x7DuLL, 0xE100000000000000);
        v11 = v92;
        v91;
        0xE100000000000000;
LABEL_20:
        v14 = v249;
        v13 = v250;
        v15 = HIBYTE(v250) & 0xF;
        v16 = v249 & 0xFFFFFFFFFFFFLL;
        if ((v250 & 0x2000000000000000) != 0)
        {
          v17 = HIBYTE(v250) & 0xF;
        }

        else
        {
          v17 = v249 & 0xFFFFFFFFFFFFLL;
        }

        if (!v17 && (v249 & ~v250 & 0x2000000000000000) == 0)
        {
          v250;
          v249 = v12;
          v250 = v11;
          goto LABEL_6;
        }

        v242 = v5;
        v18 = HIBYTE(v11) & 0xF;
        if ((v250 & 0x2000000000000000) == 0)
        {
          v238 = (v11 & 0x2000000000000000) == 0;
          v19 = v12 & 0xFFFFFFFFFFFFLL;
          v20 = HIBYTE(v11) & 0xF;
          if ((v11 & 0x2000000000000000) != 0)
          {
LABEL_31:
            if ((v11 & 0x1000000000000000) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_78;
          }

LABEL_30:
          v20 = v19;
          goto LABEL_31;
        }

        if ((v11 & 0x2000000000000000) == 0)
        {
          v19 = v12 & 0xFFFFFFFFFFFFLL;
          v238 = 1;
          goto LABEL_30;
        }

        v49 = v15 + v18;
        if (v15 + v18 < 0x10)
        {
          if (v18)
          {
            v68 = 0;
            v69 = 0;
            v70 = 8 * v15;
            v71 = 8 * v18;
            v72 = v250;
            v5 = v242;
            do
            {
              v73 = v11 >> (v68 & 0x38);
              if (v69 < 8)
              {
                v73 = v12 >> v68;
              }

              v74 = (v73 << (v70 & 0x38)) | ((-255 << (v70 & 0x38)) - 1) & v72;
              v75 = (v73 << v70) | ((-255 << v70) - 1) & *&v14;
              if (v15 <= 7)
              {
                v14 = v75;
              }

              else
              {
                v72 = v74;
              }

              ++v15;
              v70 += 8;
              v68 += 8;
              ++v69;
            }

            while (v71 != v68);
          }

          else
          {
            v72 = v250;
            v5 = v242;
          }

          v250;
          v11;
          v77 = 0xA000000000000000;
          if (!(*&v14 & 0x8080808080808080 | v72 & 0x80808080808080))
          {
            v77 = 0xE000000000000000;
          }

          v67 = v77 & 0xFF00000000000000 | (v49 << 56) | v72 & 0xFFFFFFFFFFFFFFLL;
LABEL_122:
          v249 = v14;
          v250 = v67;
          goto LABEL_6;
        }

        v238 = 0;
        v19 = v12 & 0xFFFFFFFFFFFFLL;
        v20 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x1000000000000000) == 0)
        {
LABEL_32:
          v11;
          v22 = v20;
          if ((v13 & 0x1000000000000000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_81;
        }

LABEL_78:
        swift_bridgeObjectRetain_n(v11, 2);
        v50._rawBits = 1;
        v51._rawBits = (v20 << 16) | 1;
        v52._rawBits = _StringGuts.validateScalarRange(_:)(v50, v51, v12, v11)._rawBits;
        if (v52._rawBits < 0x10000)
        {
          v52._rawBits |= 3;
        }

        v22 = String.UTF8View.distance(from:to:)(v52, v53);
        v11;
        if ((v13 & 0x1000000000000000) == 0)
        {
LABEL_33:
          v23 = __OFADD__(v17, v22);
          v24 = v17 + v22;
          if (v23)
          {
            goto LABEL_289;
          }

          goto LABEL_34;
        }

LABEL_81:
        v54 = String.UTF8View._foreignCount()();
        v24 = v54 + v22;
        if (__OFADD__(v54, v22))
        {
LABEL_289:
          __break(1u);
LABEL_290:
          v22;
          v230._rawBits = specialized Collection.dropFirst(_:)(1, v13, v22)._rawBits;
          v232 = v231;
          v245 = v14;
          v246 = v20;
          v249 = 0;
          v250 = 0xE000000000000000;
          specialized String.UnicodeScalarView.append<A>(contentsOf:)(v230, v251, v233, v231);
          0xE000000000000000;
          v232;
          goto LABEL_291;
        }

LABEL_34:
        v236 = v19;
        v25 = *&v14 & ~v13;
        if ((v25 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v13 & 0xFFFFFFFFFFFFFFFLL))
        {
          v26 = _StringGuts.nativeUnusedCapacity.getter(*&v14, v13);
          if (v27)
          {
            goto LABEL_296;
          }

          if (v24 <= 15)
          {
            if ((v13 & 0x2000000000000000) != 0)
            {
              goto LABEL_65;
            }

            if (v26 < v22)
            {
              goto LABEL_40;
            }
          }
        }

        else if (v24 <= 15)
        {
          if ((v13 & 0x2000000000000000) != 0)
          {
LABEL_65:
            v29 = v13;
            goto LABEL_66;
          }

LABEL_40:
          if ((v13 & 0x1000000000000000) != 0)
          {
            v14 = _StringGuts._foreignConvertedToSmall()(*&v14, v13);
            v29 = v169;
LABEL_66:
            v5 = v242;
          }

          else
          {
            v5 = v242;
            if ((*&v14 & 0x1000000000000000) != 0)
            {
              v28 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v28 = _StringObject.sharedUTF8.getter(*&v14, v13);
              v16 = v189;
            }

            closure #1 in _StringGuts._convertedToSmall()(v28, v16, &v247, v21);
            v14 = v247;
            v29 = v248;
          }

          v11;
          v41._rawBits = 1;
          v42._rawBits = (v20 << 16) | 1;
          v43._rawBits = _StringGuts.validateScalarRange(_:)(v41, v42, v12, v11)._rawBits;
          if (v43._rawBits < 0x10000)
          {
            v43._rawBits |= 3;
          }

          if (v43._rawBits >> 16 || v44._rawBits >> 16 != v20)
          {
            v12 = specialized static String._copying(_:)(v43._rawBits, v44, v12, v11);
            v46 = v55;
            v11;
            if ((v46 & 0x2000000000000000) == 0)
            {
              goto LABEL_72;
            }
          }

          else
          {
            v46 = v11;
            if ((v11 & 0x2000000000000000) == 0)
            {
LABEL_72:
              if ((v46 & 0x1000000000000000) != 0)
              {
                v12 = _StringGuts._foreignConvertedToSmall()(v12, v46);
                v193 = v192;
                v46;
                v46 = v193;
              }

              else
              {
                if ((v12 & 0x1000000000000000) != 0)
                {
                  v47 = ((v46 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v48 = v12 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v47 = _StringObject.sharedUTF8.getter(v12, v46);
                }

                closure #1 in _StringGuts._convertedToSmall()(v47, v48, &v247, v45);
                v46;
                v12 = v247;
                v46 = v248;
              }

              goto LABEL_87;
            }
          }

          v46;
LABEL_87:
          v56 = HIBYTE(v29) & 0xF;
          v57 = HIBYTE(v46) & 0xF;
          v58 = v57 + v56;
          if (v57 + v56 > 0xF)
          {
            goto LABEL_296;
          }

          v11;
          if (v57)
          {
            v59 = 0;
            v60 = 0;
            v61 = 8 * v56;
            v62 = 8 * v57;
            v4 = a2;
            do
            {
              v63 = v46 >> (v59 & 0x38);
              if (v60 < 8)
              {
                v63 = v12 >> v59;
              }

              v64 = (v63 << (v61 & 0x38)) | ((-255 << (v61 & 0x38)) - 1) & v29;
              v65 = (v63 << v61) | ((-255 << v61) - 1) & *&v14;
              if (v56 <= 7)
              {
                v14 = v65;
              }

              else
              {
                v29 = v64;
              }

              ++v56;
              v61 += 8;
              v59 += 8;
              ++v60;
            }

            while (v62 != v59);
          }

          else
          {
            v4 = a2;
          }

          v11;
          v13;
          v66 = 0xA000000000000000;
          if (!(*&v14 & 0x8080808080808080 | v29 & 0x80808080808080))
          {
            v66 = 0xE000000000000000;
          }

          v67 = v66 & 0xFF00000000000000 | (v58 << 56) | v29 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_122;
        }

        v30 = v25 & 0x2000000000000000;
        v31 = _StringGuts.nativeUnusedCapacity.getter(*&v14, v13);
        if ((v32 & 1) != 0 || v31 < v22)
        {
          if (v30)
          {
            swift_isUniquelyReferenced_nonNull_native(v13 & 0xFFFFFFFFFFFFFFFLL);
          }

          v33 = 2 * _StringGuts.nativeCapacity.getter(*&v14, v13);
          if (v34)
          {
            v33 = 0;
          }

          if (v33 > v24)
          {
            v24 = v33;
          }
        }

        else if (v30 && swift_isUniquelyReferenced_nonNull_native(v13 & 0xFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_54;
        }

        _StringGuts.grow(_:)(v24);
LABEL_54:
        v4 = a2;
        if ((v11 & 0x1000000000000000) != 0)
        {
          _StringGuts._foreignAppendInPlace(_:)(v12, v11, 0, v20);
          swift_bridgeObjectRelease_n(v11, 2);
        }

        else
        {
          if (v238)
          {
            if ((v12 & 0x1000000000000000) != 0)
            {
              v35 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v36 = v236;
              v37 = v236;
            }

            else
            {
              v187 = _StringObject.sharedUTF8.getter(v12, v11);
              v36 = v236;
              if (v188 < v236)
              {
                goto LABEL_292;
              }

              v35 = v187;
              v37 = v188;
            }

            v5 = v242;
            v11;
            v38 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v36, v35, v37);
            v39 = v250 & 0xFFFFFFFFFFFFFFFLL;
            __StringStorage.appendInPlace(_:isASCII:)(v38, v40, v12 < 0);
            v249 = *(v39 + 24);
            v11;
            goto LABEL_6;
          }

          v247 = v12;
          v248 = v11 & 0xFFFFFFFFFFFFFFLL;
          v11;
          v76 = v250 & 0xFFFFFFFFFFFFFFFLL;
          __StringStorage.appendInPlace(_:isASCII:)(&v247, HIBYTE(v11) & 0xF, (v11 & 0x4000000000000000) != 0);
          v11;
          v249 = *(v76 + 24);
        }

        v5 = v242;
LABEL_6:
        v6 = 1;
        if (v5 >= v240)
        {
          v2 = v249;
          v183 = v250;
          goto LABEL_259;
        }
      }

      v94 = v249;
      v93 = v250;
      if (v6)
      {
        v95 = value;
        LODWORD(v247) = 0;
        v96 = specialized BidirectionalCollection.last.getter(v249, v250);
        if ((v96 & 0x100000000) != 0)
        {
          goto LABEL_297;
        }

        v97 = _GraphemeBreakingState.shouldBreak(between:and:)(v96, v95);
        value = v95;
        if (!v97)
        {
          v128 = Unicode.Scalar._escaped(asASCII:)(1);
          object = v128.value._object;
          if (v128.value._object)
          {
            countAndFlagsBits = v128.value._countAndFlagsBits;
          }

          else
          {
            countAndFlagsBits = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v95);
          }

          v130 = object;
          v167 = HIBYTE(v93) & 0xF;
          if ((v93 & 0x2000000000000000) == 0)
          {
            v167 = v94 & 0xFFFFFFFFFFFFLL;
          }

          if (!v167 && (v94 & ~v93 & 0x2000000000000000) == 0)
          {
            v93;
            v249 = countAndFlagsBits;
            v250 = v130;
            goto LABEL_6;
          }

          if ((v93 & 0x2000000000000000) != 0)
          {
            if ((object & 0x2000000000000000) == 0)
            {
              goto LABEL_227;
            }

            v171 = specialized _SmallString.init(_:appending:)(v94, v93, countAndFlagsBits, object);
            if ((v173 & 1) == 0)
            {
              v184 = v171;
              v185 = v172;
              v93;
              v130;
              v249 = v184;
              v250 = v185;
              goto LABEL_6;
            }

LABEL_235:
            v168 = HIBYTE(v130) & 0xF;
          }

          else
          {
            if ((object & 0x2000000000000000) != 0)
            {
              goto LABEL_235;
            }

LABEL_227:
            v168 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          }

          v130;
          _StringGuts.append(_:)(countAndFlagsBits, v130, 0, v168, v174, v175, v176, v177, v178, v179, v180, v181);
          swift_bridgeObjectRelease_n(v130, 2);
          goto LABEL_6;
        }
      }

      v243 = v5;
      v247 = v94;
      v248 = v93;
      v249 = 0;
      v250 = 0xE000000000000000;
      v99 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(value);
      v100 = v98;
      v101 = (v98 & 0x2000000000000000) == 0;
      v102 = HIBYTE(v93) & 0xF;
      v103 = HIBYTE(v98) & 0xF;
      if ((v93 & 0x2000000000000000) == 0)
      {
        break;
      }

      if ((v98 & 0x2000000000000000) == 0)
      {
        v104 = v99 & 0xFFFFFFFFFFFFLL;
        v101 = 1;
LABEL_136:
        v105 = v104;
LABEL_137:
        v239 = v104;
        if ((v98 & 0x1000000000000000) == 0)
        {
          goto LABEL_138;
        }

        goto LABEL_184;
      }

      v139 = v103 + v102;
      if (v103 + v102 < 0x10)
      {
        v98;
        if (v103)
        {
          v159 = 0;
          v160 = 0;
          v161 = 8 * v102;
          v162 = 8 * v103;
          v163 = v93;
          v4 = a2;
          v5 = v243;
          do
          {
            v164 = v100 >> (v159 & 0x38);
            if (v160 < 8)
            {
              v164 = v99 >> v159;
            }

            v165 = (v164 << (v161 & 0x38)) | ((-255 << (v161 & 0x38)) - 1) & v163;
            v166 = (v164 << v161) | ((-255 << v161) - 1) & v94;
            if (v102 <= 7)
            {
              v94 = v166;
            }

            else
            {
              v163 = v165;
            }

            ++v102;
            v161 += 8;
            v159 += 8;
            ++v160;
          }

          while (v162 != v159);
        }

        else
        {
          v163 = v93;
          v4 = a2;
          v5 = v243;
        }

        v93;
        0xE000000000000000;
        v182 = 0xA000000000000000;
        if (!(v94 & 0x8080808080808080 | v163 & 0x80808080808080))
        {
          v182 = 0xE000000000000000;
        }

        v158 = v182 & 0xFF00000000000000 | (v139 << 56) | v163 & 0xFFFFFFFFFFFFFFLL;
LABEL_242:
        v247 = v94;
        v248 = v158;
        goto LABEL_243;
      }

      v101 = 0;
      v105 = HIBYTE(v98) & 0xF;
      v239 = v99 & 0xFFFFFFFFFFFFLL;
      if ((v98 & 0x1000000000000000) == 0)
      {
LABEL_138:
        v98;
        v106 = v105;
        if ((v93 & 0x1000000000000000) != 0)
        {
          goto LABEL_187;
        }

        goto LABEL_139;
      }

LABEL_184:
      swift_bridgeObjectRetain_n(v98, 2);
      v140._rawBits = 1;
      v141._rawBits = (v105 << 16) | 1;
      v142._rawBits = _StringGuts.validateScalarRange(_:)(v140, v141, v99, v100)._rawBits;
      if (v142._rawBits < 0x10000)
      {
        v142._rawBits |= 3;
      }

      v106 = String.UTF8View.distance(from:to:)(v142, v143);
      v100;
      if ((v93 & 0x1000000000000000) != 0)
      {
LABEL_187:
        v144 = String.UTF8View._foreignCount()();
        v108 = v144 + v106;
        if (__OFADD__(v144, v106))
        {
          goto LABEL_293;
        }

        goto LABEL_143;
      }

LABEL_139:
      if ((v93 & 0x2000000000000000) != 0)
      {
        v107 = HIBYTE(v93) & 0xF;
      }

      else
      {
        v107 = v94 & 0xFFFFFFFFFFFFLL;
      }

      v108 = v107 + v106;
      if (__OFADD__(v107, v106))
      {
LABEL_293:
        __break(1u);
LABEL_294:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_143:
      v109 = v94 & ~v93;
      if ((v109 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v93 & 0xFFFFFFFFFFFFFFFLL))
      {
        v110 = _StringGuts.nativeUnusedCapacity.getter(v94, v93);
        if (v111)
        {
          goto LABEL_296;
        }

        if (v108 <= 15)
        {
          if ((v93 & 0x2000000000000000) != 0)
          {
            v100;
            v115 = v93;
            v5 = v243;
            goto LABEL_173;
          }

          if (v110 < v106)
          {
            v100;
            v5 = v243;
            goto LABEL_150;
          }
        }
      }

      else if (v108 <= 15)
      {
        v100;
        v5 = v243;
        if ((v93 & 0x2000000000000000) != 0)
        {
          v115 = v93;
          goto LABEL_173;
        }

LABEL_150:
        if ((v93 & 0x1000000000000000) != 0)
        {
          v94 = _StringGuts._foreignConvertedToSmall()(v94, v93);
          v115 = v186;
        }

        else
        {
          if ((v94 & 0x1000000000000000) != 0)
          {
            v113 = ((v93 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v114 = v94 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v113 = _StringObject.sharedUTF8.getter(v94, v93);
          }

          closure #1 in _StringGuts._convertedToSmall()(v113, v114, &v245, v112);
          v94 = v245;
          v115 = v246;
        }

LABEL_173:
        v100;
        v131._rawBits = 1;
        v132._rawBits = (v105 << 16) | 1;
        v133._rawBits = _StringGuts.validateScalarRange(_:)(v131, v132, v99, v100)._rawBits;
        if (v133._rawBits < 0x10000)
        {
          v133._rawBits |= 3;
        }

        if (v133._rawBits >> 16 || v134._rawBits >> 16 != v105)
        {
          v99 = specialized static String._copying(_:)(v133._rawBits, v134, v99, v100);
          v136 = v146;
          v100;
          if ((v136 & 0x2000000000000000) == 0)
          {
            goto LABEL_178;
          }
        }

        else
        {
          v136 = v100;
          if ((v100 & 0x2000000000000000) == 0)
          {
LABEL_178:
            if ((v136 & 0x1000000000000000) != 0)
            {
              v99 = _StringGuts._foreignConvertedToSmall()(v99, v136);
              v195 = v194;
              v136;
              v136 = v195;
            }

            else
            {
              if ((v99 & 0x1000000000000000) != 0)
              {
                v137 = ((v136 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v138 = v99 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v137 = _StringObject.sharedUTF8.getter(v99, v136);
              }

              closure #1 in _StringGuts._convertedToSmall()(v137, v138, &v245, v135);
              v136;
              v99 = v245;
              v136 = v246;
            }

            goto LABEL_195;
          }
        }

        v136;
LABEL_195:
        v147 = HIBYTE(v115) & 0xF;
        v148 = HIBYTE(v136) & 0xF;
        v149 = v148 + v147;
        if (v148 + v147 > 0xF)
        {
LABEL_296:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v100;
        if (v148)
        {
          v150 = 0;
          v151 = 0;
          v152 = 8 * v147;
          v153 = 8 * v148;
          v4 = a2;
          do
          {
            v154 = v136 >> (v150 & 0x38);
            if (v151 < 8)
            {
              v154 = v99 >> v150;
            }

            v155 = (v154 << (v152 & 0x38)) | ((-255 << (v152 & 0x38)) - 1) & v115;
            v156 = (v154 << v152) | ((-255 << v152) - 1) & v94;
            if (v147 <= 7)
            {
              v94 = v156;
            }

            else
            {
              v115 = v155;
            }

            ++v147;
            v152 += 8;
            v150 += 8;
            ++v151;
          }

          while (v153 != v150);
        }

        else
        {
          v4 = a2;
        }

        0xE000000000000000;
        v93;
        v157 = 0xA000000000000000;
        if (!(v94 & 0x8080808080808080 | v115 & 0x80808080808080))
        {
          v157 = 0xE000000000000000;
        }

        v158 = v157 & 0xFF00000000000000 | (v149 << 56) | v115 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_242;
      }

      v116 = v109 & 0x2000000000000000;
      v117 = _StringGuts.nativeUnusedCapacity.getter(v94, v93);
      if ((v118 & 1) != 0 || v117 < v106)
      {
        if (v116)
        {
          swift_isUniquelyReferenced_nonNull_native(v93 & 0xFFFFFFFFFFFFFFFLL);
        }

        v119 = 2 * _StringGuts.nativeCapacity.getter(v94, v93);
        if (v120)
        {
          v119 = 0;
        }

        if (v119 > v108)
        {
          v108 = v119;
        }

LABEL_163:
        _StringGuts.grow(_:)(v108);
        goto LABEL_164;
      }

      if (!v116 || !swift_isUniquelyReferenced_nonNull_native(v93 & 0xFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_163;
      }

LABEL_164:
      if ((v100 & 0x1000000000000000) != 0)
      {
        v100;
        _StringGuts._foreignAppendInPlace(_:)(v99, v100, 0, v105);
        0xE000000000000000;
        v145 = v100;
LABEL_233:
        v145;
        v4 = a2;
        v5 = v243;
        goto LABEL_243;
      }

      if (!v101)
      {
        v100;
        v245 = v99;
        v246 = v100 & 0xFFFFFFFFFFFFFFLL;
        v100;
        v170 = (v248 & 0xFFFFFFFFFFFFFFFLL);
        __StringStorage.appendInPlace(_:isASCII:)(&v245, v103, (v100 & 0x4000000000000000) != 0);
        v247 = v170[3];
        v145 = 0xE000000000000000;
        goto LABEL_233;
      }

      if ((v99 & 0x1000000000000000) != 0)
      {
        v121 = (v100 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v122 = v239;
        v123 = v239;
      }

      else
      {
        v190 = _StringObject.sharedUTF8.getter(v99, v100);
        v122 = v239;
        if (v191 < v239)
        {
LABEL_292:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v121 = v190;
        v123 = v191;
      }

      v4 = a2;
      v5 = v243;
      v100;
      v124 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v122, v121, v123);
      v125 = (v248 & 0xFFFFFFFFFFFFFFFLL);
      __StringStorage.appendInPlace(_:isASCII:)(v124, v126, v99 < 0);
      v247 = v125[3];
      0xE000000000000000;
      v100;
LABEL_243:
      v6 = 0;
      v2 = v247;
      v183 = v248;
      v249 = v247;
      v250 = v248;
      if (v5 >= v240)
      {
        goto LABEL_259;
      }
    }

    v104 = v99 & 0xFFFFFFFFFFFFLL;
    v105 = HIBYTE(v98) & 0xF;
    if ((v98 & 0x2000000000000000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_137;
  }

  v183 = 0xE100000000000000;
LABEL_259:
  v247 = 34;
  v248 = 0xE100000000000000;
  v196 = HIBYTE(v183) & 0xF;
  if ((v183 & 0x2000000000000000) == 0)
  {
    v196 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v196)
  {
    while (1)
    {
      v13 = v247;
      v22 = v248;
      v202 = specialized Collection.first.getter(v247, v248);
      if ((v202 & 0x100000000) != 0)
      {
        break;
      }

      v245 = v2;
      v246 = v183;
      v249 = 0;
      v250 = 0xE000000000000000;
      v203 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v202);
      v205 = v204;
      _StringGuts.append(_:)(v203, v204, v206, v207, v208, v209, v210, v211, v212, v213);
      v205;
      v14 = v245;
      v20 = v246;
      v246;
      0xE000000000000000;
      v214 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v214 = v14;
      }

      if (((v20 >> 60) & ((*&v14 & 0x800000000000000) == 0)) != 0)
      {
        v215 = 11;
      }

      else
      {
        v215 = 7;
      }

      v216._rawBits = v215 | (v214 << 16);
      v217._rawBits = String.index(before:)(v216)._rawBits;
      v20;
      v218._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(v216)._rawBits;
      if (!(v218._rawBits >> 14))
      {
        goto LABEL_294;
      }

      rawBits = v218._rawBits;
      v20;
      if ((v20 & 0x1000000000000000) != 0)
      {
        v224 = String.UnicodeScalarView._foreignIndex(before:)(rawBits)._rawBits;
        v20;
      }

      else
      {
        if ((v20 & 0x2000000000000000) != 0)
        {
          v221 = 0;
          v245 = v14;
          v246 = v20 & 0xFFFFFFFFFFFFFFLL;
          do
          {
            v223 = *(&v244 + (rawBits >> 16) + v221--) & 0xC0;
          }

          while (v223 == 128);
        }

        else
        {
          if ((*&v14 & 0x1000000000000000) != 0)
          {
            v220 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v220 = _StringObject.sharedUTF8.getter(*&v14, v20);
          }

          v221 = 0;
          do
          {
            v222 = v220[(rawBits >> 16) - 1 + v221--] & 0xC0;
          }

          while (v222 == 128);
        }

        v20;
        v224 = (rawBits - -65536 * v221) & 0xFFFFFFFFFFFF0000;
      }

      if (v217._rawBits >> 14 >= v224 >> 14)
      {
        goto LABEL_290;
      }

      v245 = v14;
      v246 = v20;
      specialized RangeReplaceableCollection<>.removeLast()();
      v226 = v245;
      v225 = v246;
      v246;
      0xE000000000000000;
      v245 = v226;
      v246 = v225;
      v225;
      v227 = specialized RangeReplaceableCollection<>.removeLast()();
      0xE000000000000000;
      v249 = v245;
      v250 = v246;
      v228 = Unicode.Scalar._escaped(asASCII:)(1);
      v197 = v228.value._object;
      if (v228.value._object)
      {
        v198 = v228.value._countAndFlagsBits;
      }

      else
      {
        v198 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v227);
      }

      v229 = v197;
      v199._rawBits = 15;
      v200._rawBits = 15;
      specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(v199, v200, v198, v229);
      v229;
      v2 = v249;
      v183 = v250;
      v201 = HIBYTE(v250) & 0xF;
      if ((v250 & 0x2000000000000000) == 0)
      {
        v201 = v249 & 0xFFFFFFFFFFFFLL;
      }

      if (!v201)
      {
        goto LABEL_291;
      }
    }

LABEL_297:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_291:
  v248;
}

uint64_t static String.== infix(_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  if ((~a2 & 0x6000000000000000) != 0 || (a4 & 0x6000000000000000) != 0x6000000000000000)
  {
    return _stringCompareInternal(_:_:expecting:)(a1, a2, a3, a4, 0);
  }

  return 0;
}

uint64_t static Character.< infix(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  if ((~a2 & 0x6000000000000000) != 0 || (a4 & 0x6000000000000000) != 0x6000000000000000)
  {
    return _stringCompareInternal(_:_:expecting:)(a1, a2, a3, a4, 1);
  }

  v5 = bswap64(a1) < bswap64(a3);
  v6 = bswap64(a2) < bswap64(a4);
  if (a1 == a3)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

void String.hash(into:)(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  if ((a3 & 0x1000000000000000) != 0 || (v3 & 0x4000000000000000) == 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    _StringGutsSlice._normalizedHash(into:)(a1, a2, a3, 0, v8);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v9[0] = a2;
      v9[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v6 = v9;
      v7 = v9 + (HIBYTE(a3) & 0xF);
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v4 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v5 = a2 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter(a2, a3);
      }

      v6 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v4, v5);
    }

    Hasher.combine(bytes:)(*&v6);
    Hasher._combine(_:)(0xFFu);
  }
}

uint64_t _CocoaArrayWrapper.contiguousStorage(_:)(uint64_t a1, uint64_t a2, id a3)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  v5 = [a3 countByEnumeratingWithState:v7 objects:0 count:0];
  result = 0;
  if (v5 >= a2)
  {
    if (!*(&v7[0] + 1))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return *(&v7[0] + 1) + 8 * a1;
  }

  return result;
}

void _SliceBuffer.init(owner:subscriptBaseAddress:indices:hasNativeBuffer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

double _makeSwiftNSFastEnumerationState()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t protocol witness for BidirectionalCollection.index(before:) in conformance _CocoaArrayWrapper@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance _CocoaArrayWrapper(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v1);
  *a1 = result;
  return result;
}

unint64_t _ss18_CocoaArrayWrapperVSksSk5index_8offsetBy5IndexQzAF_SitFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, *v3);
  *a3 = result;
  return result;
}

id protocol witness for Collection.endIndex.getter in conformance _CocoaArrayWrapper@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  *a1 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance _CocoaArrayWrapper(void *a1, void *a2))(uint64_t a1)
{
  v4 = [*v2 objectAtIndex_];
  *a1 = v4;
  a1[1] = v4;
  return protocol witness for Collection.subscript.read in conformance _CocoaArrayWrapper;
}

__objc2_class *protocol witness for Collection.subscript.getter in conformance _CocoaArrayWrapper@<X0>(uint64_t *a1@<X0>, __objc2_class ***a2@<X8>)
{
  result = _CocoaArrayWrapper.subscript.getter(*a1, a1[1], *v2);
  *a2 = &result->isa;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

unint64_t protocol witness for Collection.indices.getter in conformance _CocoaArrayWrapper@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  if ((result & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a1 = 0;
  a1[1] = result;
  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance _CocoaArrayWrapper@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *v4;
  v9 = specialized RandomAccessCollection<>.distance(from:to:)(*a1, *a3, *v4);
  if (a2 < 1)
  {
    if (v9 <= 0 && v9 > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v7, a2, v8);
    v11 = 0;
    goto LABEL_11;
  }

  if (v9 < 0 || v9 >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  result = 0;
  v11 = 1;
LABEL_11:
  *a4 = result;
  *(a4 + 8) = v11;
  return result;
}

unint64_t protocol witness for Collection.index(after:) in conformance _CocoaArrayWrapper@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t protocol witness for Collection.formIndex(after:) in conformance _CocoaArrayWrapper(unint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v1);
  *a1 = result;
  return result;
}

unint64_t _ss18_CocoaArrayWrapperVSlsSl5countSivgTW_0()
{
  v1 = *v0;
  v2 = [*v0 count];

  return specialized RandomAccessCollection<>.distance(from:to:)(0, v2, v1);
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance _CocoaArrayWrapper()
{
  v1 = *v0;
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);
  swift_unknownObjectRelease(v1);
  return v2;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance _CocoaArrayWrapper(id *a1, uint64_t a2, uint64_t a3)
{
  *a1 = _CocoaArrayWrapper._copyContents(initializing:)(a2, a3, *v3);
  a1[1] = v5;
  return v6;
}

unint64_t specialized CodingKey.description.getter(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v298 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = _int64ToString(_:radix:uppercase:)(a3, 10, 0, swift_int64ToString);
    v298 = v7;
  }

  v8 = _StringGuts.init(_initialCapacity:)(35);
  v10 = v8;
  v11 = v9;
  v301._countAndFlagsBits = v8;
  v301._object = v9;
  v12 = HIBYTE(v9) & 0xF;
  v13 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v14 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 && (v8 & ~v9 & 0x2000000000000000) == 0)
  {
    v9;
    v22 = 0xE000000000000000;
    v301._countAndFlagsBits = 0;
LABEL_24:
    v301._object = v22;
    goto LABEL_35;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    v9;
    v13 = 0xE000000000000000;
    0xE000000000000000;
    v21 = 0xA000000000000000;
    if (!(v11 & 0x80808080808080 | v10 & 0x8080808080808080))
    {
      v21 = 0xE000000000000000;
    }

    v22 = (v21 & 0xFF00000000000000 | (v12 << 56) | v11 & 0xFFFFFFFFFFFFFFLL);
    v301._countAndFlagsBits = v10;
    goto LABEL_24;
  }

  0xE000000000000000;
  v16 = v13;
  if ((v11 & 0x1000000000000000) != 0)
  {
    v16 = String.UTF8View._foreignCount()();
    if ((v10 & 0x2000000000000000) == 0)
    {
LABEL_33:
      if (v16 <= 15)
      {
        goto LABEL_16;
      }

LABEL_34:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v16, 0);
      v299 = 0;
      v300 = 0;
      closure #1 in _StringGuts.append(_:)(&v299, 0, &v301, 1);
      swift_bridgeObjectRelease_n(0xE000000000000000, 2);
      goto LABEL_35;
    }
  }

  else if ((v10 & 0x2000000000000000) == 0)
  {
    goto LABEL_33;
  }

  if (!swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_33;
  }

  v17 = _StringGuts.nativeUnusedCapacity.getter(v10, v11);
  if (v18)
  {
    goto LABEL_336;
  }

  if (v16 > 15 || (v17 & 0x8000000000000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_16:
  if ((v11 & 0x1000000000000000) != 0)
  {
    v20 = _StringGuts._foreignConvertedToSmall()(v10, v11);
    v13 = v23;
  }

  else
  {
    if ((v10 & 0x1000000000000000) != 0)
    {
      v19 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v19 = _StringObject.sharedUTF8.getter(v10, v11);
      v13 = v280;
    }

    closure #1 in _StringGuts._convertedToSmall()(v19, v13, &v299, v15);
    v20 = v299;
    v13 = v300;
  }

  0xE000000000000000;
  v24._rawBits = 1;
  v25._rawBits = 1;
  v26._rawBits = _StringGuts.validateScalarRange(_:)(v24, v25, 0, 0xE000000000000000)._rawBits;
  if (v26._rawBits < 0x10000)
  {
    v26._rawBits |= 3;
  }

  v28 = Substring.description.getter(v26._rawBits, v27, 0, 0xE000000000000000);
  v4 = v29;
  0xE000000000000000;
  if ((v4 & 0x2000000000000000) == 0)
  {
    goto LABEL_326;
  }

  v4;
  while (2)
  {
    v31 = specialized _SmallString.init(_:appending:)(*&v20, v13, *&v28, v4);
    if (v33)
    {
      goto LABEL_336;
    }

    v34 = v31;
    v35 = v32;
    v11;
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    v301._countAndFlagsBits = v34;
    v301._object = v35;
LABEL_35:
    TypeName = swift_getTypeName(&type metadata for _DictionaryCodingKey, 0);
    if (v37 < 0)
    {
      goto LABEL_307;
    }

    v38 = TypeName;
    v39 = v37;
    v20 = 0;
    v296 = v6;
    if (_allASCII(_:)(TypeName, v37))
    {
      v41 = 1;
LABEL_38:
      if (!v39)
      {
LABEL_84:
        v43 = 0;
        object = 0xE000000000000000;
        goto LABEL_115;
      }

      if (v39 > 15)
      {
        object = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v38, v39, v39, v41 & 1);
        v43 = *(object + 24);
        goto LABEL_115;
      }

      v75 = v39 - 8;
      v76 = 8;
      if (v39 < 8)
      {
        v76 = v39;
      }

      if (v39 >= 4)
      {
        v78 = v76 & 0xC;
        v40.i32[0] = *v38;
        v79 = vmovl_u16(*&vmovl_u8(v40));
        v80.i64[0] = v79.u32[0];
        v80.i64[1] = v79.u32[1];
        v81.i64[0] = 255;
        v81.i64[1] = 255;
        v82 = vandq_s8(v80, v81);
        v80.i64[0] = v79.u32[2];
        v80.i64[1] = v79.u32[3];
        v83 = vshlq_u64(vandq_s8(v80, v81), xmmword_18071DBA0);
        v84.i32[1] = 0;
        v85 = vshlq_u64(v82, xmmword_18071DBB0);
        if (v78 != 4)
        {
          v84.i32[0] = *(v38 + 4);
          v86 = vmovl_u16(*&vmovl_u8(v84));
          v87.i64[0] = v86.u32[2];
          v87.i64[1] = v86.u32[3];
          v88 = vandq_s8(v87, v81);
          v87.i64[0] = v86.u32[0];
          v87.i64[1] = v86.u32[1];
          v83 = vorrq_s8(vshlq_u64(v88, xmmword_18071DBD0), v83);
          v85 = vorrq_s8(vshlq_u64(vandq_s8(v87, v81), xmmword_18071DBC0), v85);
        }

        v89 = vorrq_s8(v85, v83);
        v43 = vorr_s8(*v89.i8, *&vextq_s8(v89, v89, 8uLL));
        if (v76 != v78)
        {
          v77 = 8 * v78;
          goto LABEL_105;
        }
      }

      else
      {
        v43 = 0;
        v77 = 0;
        v78 = 0;
LABEL_105:
        v90 = v76 - v78;
        v91 = (v38 + v78);
        do
        {
          v92 = *v91++;
          v43 |= v92 << (v77 & 0x38);
          v77 += 8;
          --v90;
        }

        while (v90);
      }

      if (v39 < 9)
      {
        v93 = 0;
      }

      else
      {
        v93 = 0;
        v94 = 0;
        v95 = (v38 + 8);
        do
        {
          v96 = *v95++;
          v93 |= v96 << v94;
          v94 += 8;
          --v75;
        }

        while (v75);
      }

      v97 = 0xA000000000000000;
      if (((v93 | v43) & 0x8080808080808080) == 0)
      {
        v97 = 0xE000000000000000;
      }

      object = v97 | (v39 << 56) | v93;
      goto LABEL_115;
    }

    if (!v39)
    {
      goto LABEL_84;
    }

    v11 = 0;
    v44 = (v38 + v39);
    v41 = 1;
    v45 = v38;
    v46 = v38;
    while (1)
    {
      v48 = *v46++;
      v47 = v48;
      if ((v48 & 0x80000000) == 0)
      {
        v49 = 1;
        goto LABEL_45;
      }

      if ((v47 + 11) <= 0xCCu)
      {
        LOBYTE(v299) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v47);
        goto LABEL_86;
      }

      if (v47 > 0xDFu)
      {
        break;
      }

      if (v46 == v44 || (*v46 & 0xC0) != 0x80)
      {
LABEL_302:
        v271 = 4;
        goto LABEL_303;
      }

      v41 = 0;
      v46 = v45 + 2;
      v49 = 2;
LABEL_45:
      v11 += v49;
      v45 = v46;
      if (v46 == v44)
      {
        goto LABEL_38;
      }
    }

    if (v47 == 224)
    {
      if (v46 == v44)
      {
        goto LABEL_302;
      }

      if (v45[1] - 192 < 0xFFFFFFE0)
      {
        goto LABEL_306;
      }

      goto LABEL_69;
    }

    if (v47 <= 0xECu)
    {
      goto LABEL_67;
    }

    if (v47 == 237)
    {
      if (v46 == v44)
      {
        goto LABEL_302;
      }

      v50 = v45[1];
      if (v50 > 0x9F || (v50 & 0xC0) != 0x80)
      {
        v271 = 1;
        goto LABEL_303;
      }

      goto LABEL_69;
    }

    if (v47 <= 0xEFu)
    {
LABEL_67:
      if (v46 == v44 || (v45[1] & 0xC0) != 0x80)
      {
        goto LABEL_302;
      }

LABEL_69:
      if (v45 + 2 == v44 || (v45[2] & 0xC0) != 0x80)
      {
        goto LABEL_302;
      }

      v41 = 0;
      v46 = v45 + 3;
      v49 = 3;
      goto LABEL_45;
    }

    if (v47 == 240)
    {
      if (v46 == v44)
      {
        goto LABEL_302;
      }

      if (v45[1] - 192 < 0xFFFFFFD0)
      {
LABEL_306:
        v271 = 3;
        goto LABEL_303;
      }

      goto LABEL_79;
    }

    if (v47 <= 0xF3u)
    {
      if (v46 == v44 || (v45[1] & 0xC0) != 0x80)
      {
        goto LABEL_302;
      }

      goto LABEL_79;
    }

    if (v46 == v44)
    {
      goto LABEL_302;
    }

    v51 = v45[1];
    if (v51 <= 0x8F && (v51 & 0xC0) == 0x80)
    {
LABEL_79:
      if (v45 + 2 == v44 || (v45[2] & 0xC0) != 0x80 || v45 + 3 == v44 || (v45[3] & 0xC0) != 0x80)
      {
        goto LABEL_302;
      }

      v41 = 0;
      v46 = v45 + 4;
      v49 = 4;
      goto LABEL_45;
    }

    v271 = 2;
LABEL_303:
    LOBYTE(v299) = v271;
LABEL_86:
    swift_willThrowTypedImpl(&v299, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
    v52 = specialized Collection.subscript.getter(v11, v38, v39);
    v28 = findInvalidRange #1 (_:) in validateUTF8(_:)(v52, v53, v54, v55);
    v299 = 0;
    v300 = 0xE000000000000000;
    if (__OFADD__(v39, 15))
    {
      __break(1u);
LABEL_326:
      if ((v4 & 0x1000000000000000) != 0)
      {
        v28 = _StringGuts._foreignConvertedToSmall()(*&v28, v4);
        v294 = v293;
        v4;
        v4 = v294;
      }

      else
      {
        if ((*&v28 & 0x1000000000000000) != 0)
        {
          v278 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v279 = *&v28 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v278 = _StringObject.sharedUTF8.getter(*&v28, v4);
        }

        closure #1 in _StringGuts._convertedToSmall()(v278, v279, &v299, v30);
        v4;
        v28 = v299;
        v4 = v300;
      }

      continue;
    }

    break;
  }

  v13 = v56;
  v11 = &v299;
  _StringGuts.reserveCapacity(_:)(v39 + 15);
  v57 = v28;
  while (1)
  {
    v58 = specialized Collection.subscript.getter(v57, v38, v39);
    v62 = v299 & 0xFFFFFFFFFFFFLL;
    if ((v300 & 0x2000000000000000) != 0)
    {
      v62 = HIBYTE(v300) & 0xF;
    }

    v63 = __OFADD__(v62, v39);
    v64 = v62 + v39;
    if (v63)
    {
      __break(1u);
LABEL_305:
      __break(1u);
      goto LABEL_306;
    }

    v65 = v58;
    if (__OFADD__(v64, 3))
    {
      goto LABEL_305;
    }

    v4 = v59;
    v66 = v60;
    v6 = v61;
    _StringGuts.reserveCapacity(_:)(v64 + 3);
    v67 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v65, v4, v66, v6);
    v11 = &v299;
    _StringGuts.appendInPlace(_:isASCII:)(v67, v68, 0);
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v299);
    v69 = specialized Collection.subscript.getter(v13, v38, v39);
    v38 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v69, v70, v71, v72);
    v39 = v73;
    if ((validateUTF8(_:)(v38, v73) & 0x8000000000000000) == 0)
    {
      break;
    }

    v13 = v74;
    if (!v39)
    {
      goto LABEL_100;
    }
  }

  _StringGuts.appendInPlace(_:isASCII:)(v38, v39, 0);
LABEL_100:
  v43 = v299;
  object = v300;
LABEL_115:
  countAndFlagsBits = v301._countAndFlagsBits;
  v99 = (v301._object >> 56) & 0xF;
  v100 = v301._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v301._object & 0x2000000000000000) != 0)
  {
    v100 = (v301._object >> 56) & 0xF;
  }

  if (v100 || (v301._countAndFlagsBits & ~v301._object & 0x2000000000000000) != 0)
  {
    if ((v301._object & 0x2000000000000000) == 0)
    {
      if ((object & 0x2000000000000000) != 0)
      {
        v101 = HIBYTE(object) & 0xF;
        goto LABEL_124;
      }

LABEL_123:
      v101 = v43 & 0xFFFFFFFFFFFFLL;
      goto LABEL_124;
    }

    if ((object & 0x2000000000000000) == 0)
    {
      goto LABEL_123;
    }

    v101 = HIBYTE(object) & 0xF;
    v115 = v99 + v101;
    if (v99 + v101 > 0xF)
    {
LABEL_124:
      object;
      _StringGuts.append(_:)(v43, object, 0, v101, v102, v103, v104, v105, v106, v107, v108, v109);
      swift_bridgeObjectRelease_n(object, 2);
      v43 = v301._countAndFlagsBits;
      object = v301._object;
    }

    else
    {
      if (v101)
      {
        v116 = 0;
        v117 = 0;
        v118 = 8 * v99;
        v119 = 8 * v101;
        v120 = v301._object;
        do
        {
          v121 = object >> (v116 & 0x38);
          if (v117 < 8)
          {
            v121 = v43 >> v116;
          }

          v122 = (v121 << (v118 & 0x38)) | ((-255 << (v118 & 0x38)) - 1) & v120;
          v123 = (v121 << v118) | ((-255 << v118) - 1) & countAndFlagsBits;
          if (v99 <= 7)
          {
            countAndFlagsBits = v123;
          }

          else
          {
            v120 = v122;
          }

          ++v99;
          v118 += 8;
          v116 += 8;
          ++v117;
        }

        while (v119 != v116);
      }

      else
      {
        v120 = v301._object;
      }

      v301._object;
      object;
      v185 = 0xA000000000000000;
      if (!(countAndFlagsBits & 0x8080808080808080 | v120 & 0x80808080808080))
      {
        v185 = 0xE000000000000000;
      }

      object = v185 & 0xFF00000000000000 | (v115 << 56) | v120 & 0xFFFFFFFFFFFFFFLL;
      v301._countAndFlagsBits = countAndFlagsBits;
      v301._object = object;
      v43 = countAndFlagsBits;
    }
  }

  else
  {
    v301._object;
    v301._countAndFlagsBits = v43;
    v301._object = object;
  }

  v110 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("(stringValue: ", 0xFuLL, 1);
  v111 = v110._countAndFlagsBits;
  v112 = v110._object;
  v113 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v113 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v113 && (v43 & ~object & 0x2000000000000000) == 0)
  {
    object;
    v301 = v110;
    goto LABEL_150;
  }

  if ((object & 0x2000000000000000) != 0)
  {
    if ((v110._object & 0x2000000000000000) == 0)
    {
      goto LABEL_133;
    }

    v124 = specialized _SmallString.init(_:appending:)(v43, object, v110._countAndFlagsBits, v110._object);
    if (v126)
    {
      goto LABEL_145;
    }

    v136 = v124;
    v137 = v125;
    object;
    v110._object;
    v301._countAndFlagsBits = v136;
    v301._object = v137;
    v112 = v137;
    v111 = v136;
LABEL_150:
    v127 = a2;
    goto LABEL_151;
  }

  if ((v110._object & 0x2000000000000000) == 0)
  {
LABEL_133:
    v114 = v110._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_146;
  }

LABEL_145:
  v114 = (v110._object >> 56) & 0xF;
LABEL_146:
  v127 = a2;
  v110._object;
  _StringGuts.append(_:)(v110._countAndFlagsBits, v110._object, 0, v114, v128, v129, v130, v131, v132, v133, v134, v135);
  swift_bridgeObjectRelease_n(v110._object, 2);
  v111 = v301._countAndFlagsBits;
  v112 = v301._object;
LABEL_151:
  v138 = HIBYTE(v112) & 0xF;
  v139 = *&v111 & 0xFFFFFFFFFFFFLL;
  if ((v112 & 0x2000000000000000) != 0)
  {
    v140 = HIBYTE(v112) & 0xF;
  }

  else
  {
    v140 = *&v111 & 0xFFFFFFFFFFFFLL;
  }

  if (!v140 && (*&v111 & ~v112 & 0x2000000000000000) == 0)
  {
    v127;
    v112;
    v301._countAndFlagsBits = a1;
    v301._object = v127;
    goto LABEL_219;
  }

  v141 = (v127 & 0x2000000000000000) == 0;
  v142 = HIBYTE(v127) & 0xF;
  if ((v112 & 0x2000000000000000) == 0)
  {
    v143 = a1 & 0xFFFFFFFFFFFFLL;
    v144 = HIBYTE(v127) & 0xF;
    if ((v127 & 0x2000000000000000) == 0)
    {
LABEL_160:
      v144 = v143;
    }

    v295 = v143;
    if ((v127 & 0x1000000000000000) == 0)
    {
      goto LABEL_162;
    }

LABEL_186:
    v145 = v127;
    swift_bridgeObjectRetain_n(v127, 3);
    v167._rawBits = 1;
    v168._rawBits = (v144 << 16) | 1;
    v169._rawBits = _StringGuts.validateScalarRange(_:)(v167, v168, a1, v127)._rawBits;
    if (v169._rawBits < 0x10000)
    {
      v169._rawBits |= 3;
    }

    v149 = String.UTF8View.distance(from:to:)(v169, v170);
    v145;
    if ((v112 & 0x1000000000000000) != 0)
    {
      goto LABEL_189;
    }

LABEL_163:
    v63 = __OFADD__(v140, v149);
    v150 = v140 + v149;
    if (v63)
    {
      goto LABEL_191;
    }

LABEL_164:
    if ((*&v111 & ~v112 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v112 & 0xFFFFFFFFFFFFFFFLL))
    {
      v151 = _StringGuts.nativeUnusedCapacity.getter(*&v111, v112);
      if (v152)
      {
        goto LABEL_336;
      }

      v153 = (v112 >> 61) & 1;
      if (v151 < v149)
      {
        LODWORD(v153) = 1;
      }

      if (v150 <= 15 && v153)
      {
        goto LABEL_171;
      }
    }

    else if (v150 <= 15)
    {
LABEL_171:
      if ((v112 & 0x2000000000000000) != 0)
      {
        v139 = v112;
      }

      else if ((v112 & 0x1000000000000000) != 0)
      {
        v111 = _StringGuts._foreignConvertedToSmall()(*&v111, v112);
        v139 = v285;
      }

      else
      {
        if ((*&v111 & 0x1000000000000000) != 0)
        {
          v272 = ((v112 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v272 = _StringObject.sharedUTF8.getter(*&v111, v112);
          v139 = v291;
        }

        closure #1 in _StringGuts._convertedToSmall()(v272, v139, &v299, v148);
        v111 = v299;
        v139 = v300;
      }

      v145;
      v154._rawBits = 1;
      v155._rawBits = (v144 << 16) | 1;
      rawBits = _StringGuts.validateScalarRange(_:)(v154, v155, a1, v145)._rawBits;
      if (rawBits < 0x10000)
      {
        rawBits |= 3uLL;
      }

      if (rawBits >> 16 || v147._rawBits >> 16 != v144)
      {
        goto LABEL_192;
      }

      v157 = v145;
      v158 = a1;
LABEL_193:
      if ((v157 & 0x2000000000000000) != 0)
      {
        v157;
      }

      else if ((v157 & 0x1000000000000000) != 0)
      {
        v158 = _StringGuts._foreignConvertedToSmall()(v158, v157);
        v287 = v286;
        v157;
        v157 = v287;
      }

      else
      {
        if ((v158 & 0x1000000000000000) != 0)
        {
          v273 = ((v157 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v274 = v158 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v273 = _StringObject.sharedUTF8.getter(v158, v157);
        }

        closure #1 in _StringGuts._convertedToSmall()(v273, v274, &v299, v156);
        v157;
        v158 = v299;
        v157 = v300;
      }

      v172 = specialized _SmallString.init(_:appending:)(*&v111, v139, v158, v157);
      if ((v174 & 1) == 0)
      {
        v175 = v172;
        v176 = v173;
        v112;
        swift_bridgeObjectRelease_n(v145, 2);
        v301._countAndFlagsBits = v175;
        v301._object = v176;
        goto LABEL_219;
      }

      goto LABEL_336;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v150, v149);
    if ((v145 & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(a1, v145, 0, v144);
    }

    else
    {
      if (v141)
      {
        v159 = a1;
        if ((a1 & 0x1000000000000000) != 0)
        {
          v160 = (v145 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v161 = v295;
          v162 = v295;
        }

        else
        {
          v281 = _StringObject.sharedUTF8.getter(a1, v145);
          if (v282 < v295)
          {
            goto LABEL_307;
          }

          v160 = v281;
          v162 = v282;
          v159 = a1;
          v161 = v295;
        }

        v163 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v161, v160, v162);
        v165 = v159 >> 63;
      }

      else
      {
        v165 = (v145 >> 62) & 1;
        v299 = a1;
        v300 = v145 & 0xFFFFFFFFFFFFFFLL;
        v163 = &v299;
        v164 = v142;
      }

      closure #1 in _StringGuts.append(_:)(v163, v164, &v301, v165);
    }

    swift_bridgeObjectRelease_n(v145, 2);
    goto LABEL_219;
  }

  if ((v127 & 0x2000000000000000) == 0)
  {
    v143 = a1 & 0xFFFFFFFFFFFFLL;
    v141 = 1;
    goto LABEL_160;
  }

  v166 = v138 + v142;
  if (v138 + v142 >= 0x10)
  {
    v141 = 0;
    v144 = HIBYTE(v127) & 0xF;
    v295 = a1 & 0xFFFFFFFFFFFFLL;
    if ((v127 & 0x1000000000000000) != 0)
    {
      goto LABEL_186;
    }

LABEL_162:
    v145 = v127;
    rawBits = swift_bridgeObjectRetain_n(v127, 2);
    v149 = v144;
    if ((v112 & 0x1000000000000000) == 0)
    {
      goto LABEL_163;
    }

LABEL_189:
    rawBits = String.UTF8View._foreignCount()();
    v150 = rawBits + v149;
    if (!__OFADD__(rawBits, v149))
    {
      goto LABEL_164;
    }

LABEL_191:
    __break(1u);
LABEL_192:
    v158 = specialized static String._copying(_:)(rawBits, v147, a1, v145);
    v157 = v171;
    v145;
    goto LABEL_193;
  }

  if (v142)
  {
    v177 = 0;
    v178 = 0;
    v179 = 8 * v138;
    v180 = 8 * v142;
    v181 = v112;
    do
    {
      v182 = v127 >> (v177 & 0x38);
      if (v178 < 8)
      {
        v182 = a1 >> v177;
      }

      v183 = (v182 << (v179 & 0x38)) | ((-255 << (v179 & 0x38)) - 1) & v181;
      v184 = (v182 << v179) | ((-255 << v179) - 1) & *&v111;
      if (v138 <= 7)
      {
        v111 = v184;
      }

      else
      {
        v181 = v183;
      }

      ++v138;
      v179 += 8;
      v177 += 8;
      ++v178;
    }

    while (v180 != v177);
  }

  else
  {
    v181 = v112;
  }

  v112;
  v186 = 0xA000000000000000;
  if (!(*&v111 & 0x8080808080808080 | v181 & 0x80808080808080))
  {
    v186 = 0xE000000000000000;
  }

  v301._countAndFlagsBits = v111;
  v301._object = (v186 & 0xFF00000000000000 | (v166 << 56) | v181 & 0xFFFFFFFFFFFFFFLL);
LABEL_219:
  v187 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", intValue: ", 0xDuLL, 1);
  v188 = v187._countAndFlagsBits;
  v189 = v187._object;
  v190 = v301._object;
  v191 = (v301._object >> 56) & 0xF;
  if ((v301._object & 0x2000000000000000) == 0)
  {
    v191 = v301._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v191 && (v301._countAndFlagsBits & ~v301._object & 0x2000000000000000) == 0)
  {
    v301._object;
    v301 = v187;
    goto LABEL_231;
  }

  if ((v301._object & 0x2000000000000000) != 0)
  {
    if ((v187._object & 0x2000000000000000) != 0)
    {
      v193 = specialized _SmallString.init(_:appending:)(v301._countAndFlagsBits, v301._object, v187._countAndFlagsBits, v187._object);
      if (v195)
      {
        goto LABEL_229;
      }

      v247 = v193;
      v248 = v194;
      v190;
      v187._object;
      v301._countAndFlagsBits = v247;
      v301._object = v248;
      v189 = v248;
      v188 = v247;
      goto LABEL_231;
    }

LABEL_227:
    v192 = v187._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_230;
  }

  if ((v187._object & 0x2000000000000000) == 0)
  {
    goto LABEL_227;
  }

LABEL_229:
  v192 = (v187._object >> 56) & 0xF;
LABEL_230:
  v187._object;
  _StringGuts.append(_:)(v187._countAndFlagsBits, v187._object, 0, v192, v196, v197, v198, v199, v200, v201, v202, v203);
  swift_bridgeObjectRelease_n(v187._object, 2);
  v188 = v301._countAndFlagsBits;
  v189 = v301._object;
LABEL_231:
  v204 = HIBYTE(v189) & 0xF;
  v205 = *&v188 & 0xFFFFFFFFFFFFLL;
  if ((v189 & 0x2000000000000000) != 0)
  {
    v206 = HIBYTE(v189) & 0xF;
  }

  else
  {
    v206 = *&v188 & 0xFFFFFFFFFFFFLL;
  }

  if (!v206 && (*&v188 & ~v189 & 0x2000000000000000) == 0)
  {
    v189;
    v301._countAndFlagsBits = v296;
    v301._object = v298;
    goto LABEL_293;
  }

  v207 = (v298 & 0x2000000000000000) == 0;
  v208 = HIBYTE(v298) & 0xF;
  if ((v189 & 0x2000000000000000) == 0)
  {
    v209 = *&v296 & 0xFFFFFFFFFFFFLL;
    v210 = HIBYTE(v298) & 0xF;
    if ((v298 & 0x2000000000000000) == 0)
    {
LABEL_240:
      v210 = v209;
    }

    if ((v298 & 0x1000000000000000) == 0)
    {
      goto LABEL_242;
    }

LABEL_267:
    swift_bridgeObjectRetain_n(v298, 2);
    v242._rawBits = 1;
    v243._rawBits = (v210 << 16) | 1;
    v244._rawBits = _StringGuts.validateScalarRange(_:)(v242, v243, *&v296, v298)._rawBits;
    if (v244._rawBits < 0x10000)
    {
      v244._rawBits |= 3;
    }

    v212 = String.UTF8View.distance(from:to:)(v244, v245);
    v298;
    if ((v189 & 0x1000000000000000) != 0)
    {
      goto LABEL_270;
    }

LABEL_243:
    v63 = __OFADD__(v206, v212);
    v213 = v206 + v212;
    if (v63)
    {
      goto LABEL_272;
    }

LABEL_244:
    if ((*&v188 & ~v189 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v189 & 0xFFFFFFFFFFFFFFFLL))
    {
      v214 = _StringGuts.nativeUnusedCapacity.getter(*&v188, v189);
      if (v215)
      {
        goto LABEL_336;
      }

      v216 = (v189 >> 61) & 1;
      if (v214 < v212)
      {
        LODWORD(v216) = 1;
      }

      if (v213 <= 15 && v216)
      {
        goto LABEL_251;
      }
    }

    else if (v213 <= 15)
    {
LABEL_251:
      if ((v189 & 0x2000000000000000) != 0)
      {
        v217 = v189;
        v218 = v298;
        v219 = v296;
      }

      else
      {
        v219 = v296;
        if ((v189 & 0x1000000000000000) != 0)
        {
          v188 = _StringGuts._foreignConvertedToSmall()(*&v188, v189);
          v217 = v288;
          v218 = v298;
        }

        else
        {
          if ((*&v188 & 0x1000000000000000) != 0)
          {
            v275 = ((v189 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v275 = _StringObject.sharedUTF8.getter(*&v188, v189);
            v205 = v292;
          }

          closure #1 in _StringGuts._convertedToSmall()(v275, v205, &v299, v211);
          v188 = v299;
          v217 = v300;
          v218 = v298;
        }
      }

      v220 = (v210 << 16) | 1;
      v221 = v218;
      v218;
      v222._rawBits = 1;
      v223._rawBits = v220;
      v224._rawBits = _StringGuts.validateScalarRange(_:)(v222, v223, v219, v221)._rawBits;
      if (v224._rawBits < 0x10000)
      {
        v224._rawBits |= 3;
      }

      v226 = Substring.description.getter(v224._rawBits, v225, v219, v221);
      v228 = v227;
      v221;
      if ((v228 & 0x2000000000000000) != 0)
      {
        v228;
      }

      else if ((v228 & 0x1000000000000000) != 0)
      {
        v226 = _StringGuts._foreignConvertedToSmall()(v226, v228);
        v290 = v289;
        v228;
        v228 = v290;
      }

      else
      {
        if ((v226 & 0x1000000000000000) != 0)
        {
          v276 = ((v228 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v277 = v226 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v276 = _StringObject.sharedUTF8.getter(v226, v228);
        }

        closure #1 in _StringGuts._convertedToSmall()(v276, v277, &v299, v229);
        v228;
        v226 = v299;
        v228 = v300;
      }

      v230 = specialized _SmallString.init(_:appending:)(*&v188, v217, v226, v228);
      if ((v232 & 1) == 0)
      {
        v233 = v230;
        v234 = v231;
        v189;
        swift_bridgeObjectRelease_n(v298, 2);
        v301._countAndFlagsBits = v233;
        v301._object = v234;
        goto LABEL_293;
      }

LABEL_336:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v213, v212);
    v212 = v298;
    if ((v298 & 0x1000000000000000) != 0)
    {
      goto LABEL_273;
    }

    v235 = v296;
    if (!v207)
    {
      v299 = v296;
      v300 = v298 & 0xFFFFFFFFFFFFFFLL;
      closure #1 in _StringGuts.append(_:)(&v299, v208, &v301, (v298 & 0x4000000000000000) != 0);
      goto LABEL_287;
    }

    if ((*&v296 & 0x1000000000000000) != 0)
    {
      v236 = (v298 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v237 = v209;
LABEL_264:
      v238 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v209, v236, v237);
      closure #1 in _StringGuts.append(_:)(v238, v239, &v301, v235 < 0);
      v240 = v298;
      goto LABEL_288;
    }

    v283 = _StringObject.sharedUTF8.getter(*&v296, v298);
    if (v284 >= v209)
    {
      v236 = v283;
      v237 = v284;
      v235 = v296;
      goto LABEL_264;
    }

LABEL_307:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v298 & 0x2000000000000000) == 0)
  {
    v209 = *&v296 & 0xFFFFFFFFFFFFLL;
    v207 = 1;
    goto LABEL_240;
  }

  v241 = v204 + v208;
  if (v204 + v208 < 0x10)
  {
    if (v208)
    {
      v249 = 0;
      v250 = 0;
      v251 = 8 * v204;
      v252 = v189;
      do
      {
        v253 = v298 >> (v249 & 0x38);
        if (v250 < 8)
        {
          v253 = *&v296 >> v249;
        }

        v254 = (v253 << (v251 & 0x38)) | ((-255 << (v251 & 0x38)) - 1) & v252;
        v255 = (v253 << v251) | ((-255 << v251) - 1) & *&v188;
        if (v204 <= 7)
        {
          v188 = v255;
        }

        else
        {
          v252 = v254;
        }

        ++v204;
        v251 += 8;
        v249 += 8;
        ++v250;
      }

      while (8 * v208 != v249);
    }

    else
    {
      v252 = v189;
    }

    v189;
    v298;
    v256 = 0xA000000000000000;
    if (!(*&v188 & 0x8080808080808080 | v252 & 0x80808080808080))
    {
      v256 = 0xE000000000000000;
    }

    v301._countAndFlagsBits = v188;
    v301._object = (v256 & 0xFF00000000000000 | (v241 << 56) | v252 & 0xFFFFFFFFFFFFFFLL);
  }

  else
  {
    v207 = 0;
    v209 = *&v296 & 0xFFFFFFFFFFFFLL;
    v210 = HIBYTE(v298) & 0xF;
    if ((v298 & 0x1000000000000000) != 0)
    {
      goto LABEL_267;
    }

LABEL_242:
    v298;
    v212 = v210;
    if ((v189 & 0x1000000000000000) == 0)
    {
      goto LABEL_243;
    }

LABEL_270:
    v246 = String.UTF8View._foreignCount()();
    v213 = v246 + v212;
    if (!__OFADD__(v246, v212))
    {
      goto LABEL_244;
    }

LABEL_272:
    __break(1u);
LABEL_273:
    _StringGuts._foreignAppendInPlace(_:)(*&v296, v212, 0, v210);
LABEL_287:
    v240 = v212;
LABEL_288:
    swift_bridgeObjectRelease_n(v240, 2);
  }

LABEL_293:
  v257 = v301._object;
  v258 = (v301._object >> 56) & 0xF;
  if ((v301._object & 0x2000000000000000) == 0)
  {
    v258 = v301._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v258 || (v301._countAndFlagsBits & ~v301._object & 0x2000000000000000) != 0)
  {
    if ((v301._object & 0x2000000000000000) != 0 && (v259 = specialized _SmallString.init(_:appending:)(v301._countAndFlagsBits, v301._object, 0x29uLL, 0xE100000000000000), (v260 & 1) == 0))
    {
      v270 = v259;
      v257;
      0xE100000000000000;
      return v270;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v261, v262, v263, v264, v265, v266, v267, v268);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v301._countAndFlagsBits;
    }
  }

  else
  {
    v301._object;
    return 41;
  }
}

{
  if (a4)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = _int64ToString(_:radix:uppercase:)(a3, 10, 0, swift_int64ToString);
  }

  v300 = v5;
  v7 = _StringGuts.init(_initialCapacity:)(35);
  v9 = v7;
  v10 = v8;
  v303._countAndFlagsBits = v7;
  v303._object = v8;
  v11 = HIBYTE(v8) & 0xF;
  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 && (v7 & ~v8 & 0x2000000000000000) == 0)
  {
    v8;
    v35 = 0xE000000000000000;
    v303._countAndFlagsBits = 0;
LABEL_30:
    v303._object = v35;
    goto LABEL_34;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v8;
    0xE000000000000000;
    v34 = 0xA000000000000000;
    if (!(v10 & 0x80808080808080 | v9 & 0x8080808080808080))
    {
      v34 = 0xE000000000000000;
    }

    v35 = (v34 & 0xFF00000000000000 | (v11 << 56) | v10 & 0xFFFFFFFFFFFFFFLL);
    v303._countAndFlagsBits = v9;
    goto LABEL_30;
  }

  0xE000000000000000;
  v15 = v12;
  if ((v10 & 0x1000000000000000) != 0)
  {
    v15 = String.UTF8View._foreignCount()();
    if ((v9 & 0x2000000000000000) == 0)
    {
LABEL_32:
      if (v15 < 16)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }
  }

  else if ((v9 & 0x2000000000000000) == 0)
  {
    goto LABEL_32;
  }

  if (!swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_32;
  }

  v16 = _StringGuts.nativeUnusedCapacity.getter(v9, v10);
  if (v17)
  {
    goto LABEL_334;
  }

  if (v15 <= 15 && (v16 & 0x8000000000000000) != 0)
  {
LABEL_16:
    if ((v10 & 0x1000000000000000) == 0)
    {
      if ((v9 & 0x1000000000000000) != 0)
      {
        v18 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v18 = _StringObject.sharedUTF8.getter(v9, v10);
        v12 = v280;
      }

      closure #1 in _StringGuts._convertedToSmall()(v18, v12, &v301, v14);
      v19 = v301;
      v20 = v302;
      goto LABEL_20;
    }

    goto LABEL_323;
  }

LABEL_33:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v15, 0);
  v301 = 0;
  v302 = 0;
  closure #1 in _StringGuts.append(_:)(&v301, 0, &v303, 1);
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
LABEL_34:
  while (2)
  {
    TypeName = swift_getTypeName(&type metadata for _GenericIndexKey, 0);
    if (v37 < 0)
    {
      goto LABEL_304;
    }

    v38 = TypeName;
    v39 = v37;
    v9 = 0;
    v296 = v6;
    if (_allASCII(_:)(TypeName, v37))
    {
      v41 = 1;
LABEL_37:
      if (!v39)
      {
LABEL_83:
        v43 = 0;
        object = 0xE000000000000000;
        goto LABEL_114;
      }

      if (v39 > 15)
      {
        object = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v38, v39, v39, v41 & 1);
        v43 = *(object + 24);
        goto LABEL_114;
      }

      v78 = v39 - 8;
      v79 = 8;
      if (v39 < 8)
      {
        v79 = v39;
      }

      if (v39 > 3)
      {
        v81 = v79 & 0xC;
        v40.i32[0] = *v38;
        v82 = vmovl_u16(*&vmovl_u8(v40));
        v83.i64[0] = v82.u32[0];
        v83.i64[1] = v82.u32[1];
        v84.i64[0] = 255;
        v84.i64[1] = 255;
        v85 = vandq_s8(v83, v84);
        v83.i64[0] = v82.u32[2];
        v83.i64[1] = v82.u32[3];
        v86 = vshlq_u64(vandq_s8(v83, v84), xmmword_18071DBA0);
        v87.i32[1] = 0;
        v88 = vshlq_u64(v85, xmmword_18071DBB0);
        if (v81 != 4)
        {
          v87.i32[0] = *(v38 + 4);
          v89 = vmovl_u16(*&vmovl_u8(v87));
          v90.i64[0] = v89.u32[2];
          v90.i64[1] = v89.u32[3];
          v91 = vandq_s8(v90, v84);
          v90.i64[0] = v89.u32[0];
          v90.i64[1] = v89.u32[1];
          v86 = vorrq_s8(vshlq_u64(v91, xmmword_18071DBD0), v86);
          v88 = vorrq_s8(vshlq_u64(vandq_s8(v90, v84), xmmword_18071DBC0), v88);
        }

        v92 = vorrq_s8(v88, v86);
        v43 = vorr_s8(*v92.i8, *&vextq_s8(v92, v92, 8uLL));
        if (v79 != v81)
        {
          v80 = 8 * v81;
          goto LABEL_104;
        }
      }

      else
      {
        v43 = 0;
        v80 = 0;
        v81 = 0;
LABEL_104:
        v93 = v79 - v81;
        v94 = (v38 + v81);
        do
        {
          v95 = *v94++;
          v43 |= v95 << (v80 & 0x38);
          v80 += 8;
          --v93;
        }

        while (v93);
      }

      if (v39 < 9)
      {
        v96 = 0;
      }

      else
      {
        v96 = 0;
        v97 = 0;
        v98 = (v38 + 8);
        do
        {
          v99 = *v98++;
          v96 |= v99 << v97;
          v97 += 8;
          --v78;
        }

        while (v78);
      }

      v100 = 0xA000000000000000;
      if (((v96 | v43) & 0x8080808080808080) == 0)
      {
        v100 = 0xE000000000000000;
      }

      object = v100 | (v39 << 56) | v96;
      goto LABEL_114;
    }

    if (!v39)
    {
      goto LABEL_83;
    }

    v10 = 0;
    v44 = (v38 + v39);
    v41 = 1;
    v45 = v38;
    v46 = v38;
    while (1)
    {
      v48 = *v46++;
      v47 = v48;
      if ((v48 & 0x80000000) == 0)
      {
        v49 = 1;
        goto LABEL_44;
      }

      if ((v47 + 11) < 0xCDu)
      {
        LOBYTE(v301) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v47);
        goto LABEL_85;
      }

      if (v47 >= 0xE0u)
      {
        break;
      }

      if (v46 == v44 || (*v46 & 0xC0) != 0x80)
      {
LABEL_300:
        LOBYTE(v301) = 4;
        goto LABEL_85;
      }

      v41 = 0;
      v46 = v45 + 2;
      v49 = 2;
LABEL_44:
      v10 += v49;
      v45 = v46;
      if (v46 == v44)
      {
        goto LABEL_37;
      }
    }

    if (v47 == 224)
    {
      if (v46 == v44)
      {
        goto LABEL_300;
      }

      if (v45[1] - 192 <= 0xFFFFFFDF)
      {
        goto LABEL_303;
      }

      goto LABEL_68;
    }

    if (v47 <= 0xECu)
    {
      goto LABEL_66;
    }

    if (v47 == 237)
    {
      if (v46 == v44)
      {
        goto LABEL_300;
      }

      v50 = v45[1];
      if (v50 > 0x9F || (v50 & 0xC0) != 0x80)
      {
        LOBYTE(v301) = 1;
        goto LABEL_85;
      }

      goto LABEL_68;
    }

    if (v47 <= 0xEFu)
    {
LABEL_66:
      if (v46 == v44 || (v45[1] & 0xC0) != 0x80)
      {
        goto LABEL_300;
      }

LABEL_68:
      if (v45 + 2 == v44 || (v45[2] & 0xC0) != 0x80)
      {
        goto LABEL_300;
      }

      v41 = 0;
      v46 = v45 + 3;
      v49 = 3;
      goto LABEL_44;
    }

    if (v47 == 240)
    {
      if (v46 == v44)
      {
        goto LABEL_300;
      }

      if (v45[1] - 192 < 0xFFFFFFD0)
      {
LABEL_303:
        LOBYTE(v301) = 3;
        goto LABEL_85;
      }

      goto LABEL_78;
    }

    if (v47 <= 0xF3u)
    {
      if (v46 == v44 || (v45[1] & 0xC0) != 0x80)
      {
        goto LABEL_300;
      }

      goto LABEL_78;
    }

    if (v46 == v44)
    {
      goto LABEL_300;
    }

    v51 = v45[1];
    if (v51 <= 0x8F && (v51 & 0xC0) == 0x80)
    {
LABEL_78:
      if (v45 + 2 == v44 || (v45[2] & 0xC0) != 0x80 || v45 + 3 == v44 || (v45[3] & 0xC0) != 0x80)
      {
        goto LABEL_300;
      }

      v41 = 0;
      v46 = v45 + 4;
      v49 = 4;
      goto LABEL_44;
    }

    LOBYTE(v301) = 2;
LABEL_85:
    swift_willThrowTypedImpl(&v301, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
    v52 = specialized Collection.subscript.getter(v10, v38, v39);
    v57 = findInvalidRange #1 (_:) in validateUTF8(_:)(v52, v53, v54, v55);
    v301 = 0;
    v302 = 0xE000000000000000;
    if (__OFADD__(v39, 15))
    {
      __break(1u);
LABEL_323:
      v19 = _StringGuts._foreignConvertedToSmall()(v9, v10);
      v20 = v277;
LABEL_20:
      0xE000000000000000;
      v21._rawBits = 1;
      v22._rawBits = 1;
      v23._rawBits = _StringGuts.validateScalarRange(_:)(v21, v22, 0, 0xE000000000000000)._rawBits;
      if (v23._rawBits < 0x10000)
      {
        v23._rawBits |= 3;
      }

      v25 = Substring.description.getter(v23._rawBits, v24, 0, 0xE000000000000000);
      v27 = v26;
      0xE000000000000000;
      if ((v27 & 0x2000000000000000) != 0)
      {
        v27;
      }

      else if ((v27 & 0x1000000000000000) != 0)
      {
        v25 = _StringGuts._foreignConvertedToSmall()(v25, v27);
        v294 = v293;
        v27;
        v27 = v294;
      }

      else
      {
        if ((v25 & 0x1000000000000000) != 0)
        {
          v278 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v279 = v25 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v278 = _StringObject.sharedUTF8.getter(v25, v27);
        }

        closure #1 in _StringGuts._convertedToSmall()(v278, v279, &v301, v28);
        v27;
        v25 = v301;
        v27 = v302;
      }

      v29 = specialized _SmallString.init(_:appending:)(*&v19, v20, v25, v27);
      if (v31)
      {
        goto LABEL_334;
      }

      v32 = v29;
      v33 = v30;
      v10;
      swift_bridgeObjectRelease_n(0xE000000000000000, 2);
      v303._countAndFlagsBits = v32;
      v303._object = v33;
      continue;
    }

    break;
  }

  v58 = v56;
  v10 = &v301;
  _StringGuts.reserveCapacity(_:)(v39 + 15);
  v59 = v57;
  while (1)
  {
    v60 = specialized Collection.subscript.getter(v59, v38, v39);
    v64 = v301 & 0xFFFFFFFFFFFFLL;
    if ((v302 & 0x2000000000000000) != 0)
    {
      v64 = HIBYTE(v302) & 0xF;
    }

    v65 = __OFADD__(v64, v39);
    v66 = v64 + v39;
    if (v65)
    {
      __break(1u);
LABEL_302:
      __break(1u);
      goto LABEL_303;
    }

    v67 = v60;
    if (__OFADD__(v66, 3))
    {
      goto LABEL_302;
    }

    v68 = v61;
    v69 = v62;
    v6 = v63;
    _StringGuts.reserveCapacity(_:)(v66 + 3);
    v70 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v67, v68, v69, v6);
    v10 = &v301;
    _StringGuts.appendInPlace(_:isASCII:)(v70, v71, 0);
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v301);
    v72 = specialized Collection.subscript.getter(v58, v38, v39);
    v38 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v72, v73, v74, v75);
    v39 = v76;
    if ((validateUTF8(_:)(v38, v76) & 0x8000000000000000) == 0)
    {
      break;
    }

    v58 = v77;
    if (!v39)
    {
      goto LABEL_99;
    }
  }

  _StringGuts.appendInPlace(_:isASCII:)(v38, v39, 0);
LABEL_99:
  v43 = v301;
  object = v302;
LABEL_114:
  countAndFlagsBits = v303._countAndFlagsBits;
  v102 = (v303._object >> 56) & 0xF;
  v103 = v303._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v303._object & 0x2000000000000000) != 0)
  {
    v103 = (v303._object >> 56) & 0xF;
  }

  if (v103 || (v303._countAndFlagsBits & ~v303._object & 0x2000000000000000) != 0)
  {
    if ((v303._object & 0x2000000000000000) == 0)
    {
      if ((object & 0x2000000000000000) != 0)
      {
        v104 = HIBYTE(object) & 0xF;
        goto LABEL_123;
      }

LABEL_122:
      v104 = v43 & 0xFFFFFFFFFFFFLL;
      goto LABEL_123;
    }

    if ((object & 0x2000000000000000) == 0)
    {
      goto LABEL_122;
    }

    v104 = HIBYTE(object) & 0xF;
    v118 = v102 + v104;
    if (v102 + v104 > 0xF)
    {
LABEL_123:
      object;
      _StringGuts.append(_:)(v43, object, 0, v104, v105, v106, v107, v108, v109, v110, v111, v112);
      swift_bridgeObjectRelease_n(object, 2);
      v43 = v303._countAndFlagsBits;
      object = v303._object;
    }

    else
    {
      if (v104)
      {
        v119 = 0;
        v120 = 0;
        v121 = 8 * v102;
        v122 = 8 * v104;
        v123 = v303._object;
        do
        {
          v124 = object >> (v119 & 0x38);
          if (v120 < 8)
          {
            v124 = v43 >> v119;
          }

          v125 = (v124 << (v121 & 0x38)) | ((-255 << (v121 & 0x38)) - 1) & v123;
          v126 = (v124 << v121) | ((-255 << v121) - 1) & countAndFlagsBits;
          if (v102 <= 7)
          {
            countAndFlagsBits = v126;
          }

          else
          {
            v123 = v125;
          }

          ++v102;
          v121 += 8;
          v119 += 8;
          ++v120;
        }

        while (v122 != v119);
      }

      else
      {
        v123 = v303._object;
      }

      v303._object;
      object;
      v187 = 0xA000000000000000;
      if (!(countAndFlagsBits & 0x8080808080808080 | v123 & 0x80808080808080))
      {
        v187 = 0xE000000000000000;
      }

      object = v187 & 0xFF00000000000000 | (v118 << 56) | v123 & 0xFFFFFFFFFFFFFFLL;
      v303._countAndFlagsBits = countAndFlagsBits;
      v303._object = object;
      v43 = countAndFlagsBits;
    }
  }

  else
  {
    v303._object;
    v303._countAndFlagsBits = v43;
    v303._object = object;
  }

  v113 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("(stringValue: ", 0xFuLL, 1);
  v114 = v113._countAndFlagsBits;
  v115 = v113._object;
  v116 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v116 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v116 && (v43 & ~object & 0x2000000000000000) == 0)
  {
    object;
    v303 = v113;
    goto LABEL_149;
  }

  if ((object & 0x2000000000000000) != 0)
  {
    if ((v113._object & 0x2000000000000000) == 0)
    {
      goto LABEL_132;
    }

    v127 = specialized _SmallString.init(_:appending:)(v43, object, v113._countAndFlagsBits, v113._object);
    if (v129)
    {
      goto LABEL_144;
    }

    v140 = v127;
    v141 = v128;
    object;
    v113._object;
    v303._countAndFlagsBits = v140;
    v303._object = v141;
    v115 = v141;
    v114 = v140;
LABEL_149:
    v139 = v300;
    v130 = a2;
    goto LABEL_150;
  }

  if ((v113._object & 0x2000000000000000) == 0)
  {
LABEL_132:
    v117 = v113._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_145;
  }

LABEL_144:
  v117 = (v113._object >> 56) & 0xF;
LABEL_145:
  v130 = a2;
  v113._object;
  _StringGuts.append(_:)(v113._countAndFlagsBits, v113._object, 0, v117, v131, v132, v133, v134, v135, v136, v137, v138);
  swift_bridgeObjectRelease_n(v113._object, 2);
  v114 = v303._countAndFlagsBits;
  v115 = v303._object;
  v139 = v300;
LABEL_150:
  v142 = HIBYTE(v115) & 0xF;
  v143 = *&v114 & 0xFFFFFFFFFFFFLL;
  if ((v115 & 0x2000000000000000) != 0)
  {
    v144 = HIBYTE(v115) & 0xF;
  }

  else
  {
    v144 = *&v114 & 0xFFFFFFFFFFFFLL;
  }

  if (!v144 && (*&v114 & ~v115 & 0x2000000000000000) == 0)
  {
    v130;
    v115;
    v303._countAndFlagsBits = a1;
    v303._object = v130;
    goto LABEL_217;
  }

  v145 = (v130 & 0x2000000000000000) == 0;
  v146 = HIBYTE(v130) & 0xF;
  if ((v115 & 0x2000000000000000) == 0)
  {
    v147 = a1 & 0xFFFFFFFFFFFFLL;
    v148 = HIBYTE(v130) & 0xF;
    if ((v130 & 0x2000000000000000) == 0)
    {
LABEL_159:
      v148 = v147;
    }

    v295 = v147;
    if ((v130 & 0x1000000000000000) == 0)
    {
      goto LABEL_161;
    }

LABEL_185:
    v149 = v130;
    swift_bridgeObjectRetain_n(v130, 3);
    v169._rawBits = 1;
    v170._rawBits = (v148 << 16) | 1;
    v171._rawBits = _StringGuts.validateScalarRange(_:)(v169, v170, a1, v130)._rawBits;
    if (v171._rawBits < 0x10000)
    {
      v171._rawBits |= 3;
    }

    v153 = String.UTF8View.distance(from:to:)(v171, v172);
    v149;
    if ((v115 & 0x1000000000000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_162:
    v65 = __OFADD__(v144, v153);
    v154 = v144 + v153;
    if (v65)
    {
      goto LABEL_190;
    }

LABEL_163:
    if ((*&v114 & ~v115 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v115 & 0xFFFFFFFFFFFFFFFLL))
    {
      v155 = _StringGuts.nativeUnusedCapacity.getter(*&v114, v115);
      if (v156)
      {
        goto LABEL_334;
      }

      v157 = (v115 >> 61) & 1;
      if (v155 < v153)
      {
        LOBYTE(v157) = 1;
      }

      if (v154 <= 15 && (v157 & 1) != 0)
      {
        goto LABEL_170;
      }
    }

    else if (v154 < 16)
    {
LABEL_170:
      if ((v115 & 0x2000000000000000) != 0)
      {
        v143 = v115;
      }

      else if ((v115 & 0x1000000000000000) != 0)
      {
        v114 = _StringGuts._foreignConvertedToSmall()(*&v114, v115);
        v143 = v285;
      }

      else
      {
        if ((*&v114 & 0x1000000000000000) != 0)
        {
          v271 = ((v115 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v271 = _StringObject.sharedUTF8.getter(*&v114, v115);
          v143 = v291;
        }

        closure #1 in _StringGuts._convertedToSmall()(v271, v143, &v301, v152);
        v114 = v301;
        v143 = v302;
      }

      v149;
      v158._rawBits = 1;
      v159._rawBits = (v148 << 16) | 1;
      rawBits = _StringGuts.validateScalarRange(_:)(v158, v159, a1, v149)._rawBits;
      if (rawBits < 0x10000)
      {
        rawBits |= 3uLL;
      }

      if (rawBits >> 16 || v151._rawBits >> 16 != v148)
      {
        goto LABEL_191;
      }

      v161 = v149;
LABEL_192:
      v139 = v300;
      if ((v161 & 0x2000000000000000) != 0)
      {
        v161;
        v174 = specialized _SmallString.init(_:appending:)(*&v114, v143, a1, v161);
      }

      else if ((v161 & 0x1000000000000000) != 0)
      {
        v299 = _StringGuts._foreignConvertedToSmall()(a1, v161);
        v287 = v286;
        v161;
        v174 = specialized _SmallString.init(_:appending:)(*&v114, v143, v299, v287);
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v272 = ((v161 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v273 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v272 = _StringObject.sharedUTF8.getter(a1, v161);
        }

        closure #1 in _StringGuts._convertedToSmall()(v272, v273, &v301, v160);
        v161;
        v174 = specialized _SmallString.init(_:appending:)(*&v114, v143, v301, v302);
      }

      if ((v176 & 1) == 0)
      {
        v177 = v174;
        v178 = v175;
        v115;
        swift_bridgeObjectRelease_n(v149, 2);
        v303._countAndFlagsBits = v177;
        v303._object = v178;
        goto LABEL_217;
      }

      goto LABEL_334;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v154, v153);
    if ((v149 & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(a1, v149, 0, v148);
    }

    else
    {
      if (v145)
      {
        v162 = a1;
        if ((a1 & 0x1000000000000000) != 0)
        {
          v163 = (v149 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v164 = v295;
          v165 = v295;
          v139 = v300;
        }

        else
        {
          v281 = _StringObject.sharedUTF8.getter(a1, v149);
          if (v282 < v295)
          {
            goto LABEL_304;
          }

          v163 = v281;
          v165 = v282;
          v162 = a1;
          v139 = v300;
          v164 = v295;
        }

        v166 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v164, v163, v165);
        closure #1 in _StringGuts.append(_:)(v166, v167, &v303, v162 < 0);
        swift_bridgeObjectRelease_n(v149, 2);
        goto LABEL_217;
      }

      v301 = a1;
      v302 = v149 & 0xFFFFFFFFFFFFFFLL;
      closure #1 in _StringGuts.append(_:)(&v301, v146, &v303, (v149 & 0x4000000000000000) != 0);
    }

    swift_bridgeObjectRelease_n(v149, 2);
    v139 = v300;
    goto LABEL_217;
  }

  if ((v130 & 0x2000000000000000) == 0)
  {
    v147 = a1 & 0xFFFFFFFFFFFFLL;
    v145 = 1;
    goto LABEL_159;
  }

  v168 = v142 + v146;
  if (v142 + v146 >= 0x10)
  {
    v145 = 0;
    v148 = HIBYTE(v130) & 0xF;
    v295 = a1 & 0xFFFFFFFFFFFFLL;
    if ((v130 & 0x1000000000000000) != 0)
    {
      goto LABEL_185;
    }

LABEL_161:
    v149 = v130;
    rawBits = swift_bridgeObjectRetain_n(v130, 2);
    v153 = v148;
    if ((v115 & 0x1000000000000000) == 0)
    {
      goto LABEL_162;
    }

LABEL_188:
    rawBits = String.UTF8View._foreignCount()();
    v154 = rawBits + v153;
    if (!__OFADD__(rawBits, v153))
    {
      goto LABEL_163;
    }

LABEL_190:
    __break(1u);
LABEL_191:
    a1 = specialized static String._copying(_:)(rawBits, v151, a1, v149);
    v161 = v173;
    v149;
    goto LABEL_192;
  }

  if (v146)
  {
    v179 = 0;
    v180 = 0;
    v181 = 8 * v142;
    v182 = 8 * v146;
    v183 = v115;
    do
    {
      v184 = v130 >> (v179 & 0x38);
      if (v180 < 8)
      {
        v184 = a1 >> v179;
      }

      v185 = (v184 << (v181 & 0x38)) | ((-255 << (v181 & 0x38)) - 1) & v183;
      v186 = (v184 << v181) | ((-255 << v181) - 1) & *&v114;
      if (v142 <= 7)
      {
        v114 = v186;
      }

      else
      {
        v183 = v185;
      }

      ++v142;
      v181 += 8;
      v179 += 8;
      ++v180;
    }

    while (v182 != v179);
  }

  else
  {
    v183 = v115;
  }

  v115;
  v188 = 0xA000000000000000;
  if (!(*&v114 & 0x8080808080808080 | v183 & 0x80808080808080))
  {
    v188 = 0xE000000000000000;
  }

  v303._countAndFlagsBits = v114;
  v303._object = (v188 & 0xFF00000000000000 | (v168 << 56) | v183 & 0xFFFFFFFFFFFFFFLL);
LABEL_217:
  v189 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", intValue: ", 0xDuLL, 1);
  v190 = v189._countAndFlagsBits;
  v191 = v189._object;
  v192 = v303._object;
  v193 = (v303._object >> 56) & 0xF;
  if ((v303._object & 0x2000000000000000) == 0)
  {
    v193 = v303._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v193 && (v303._countAndFlagsBits & ~v303._object & 0x2000000000000000) == 0)
  {
    v303._object;
    v303 = v189;
    goto LABEL_229;
  }

  if ((v303._object & 0x2000000000000000) != 0)
  {
    if ((v189._object & 0x2000000000000000) != 0)
    {
      v195 = specialized _SmallString.init(_:appending:)(v303._countAndFlagsBits, v303._object, v189._countAndFlagsBits, v189._object);
      if (v197)
      {
        goto LABEL_227;
      }

      v247 = v195;
      v248 = v196;
      v192;
      v189._object;
      v303._countAndFlagsBits = v247;
      v303._object = v248;
      v191 = v248;
      v190 = v247;
      goto LABEL_229;
    }

LABEL_225:
    v194 = v189._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_228;
  }

  if ((v189._object & 0x2000000000000000) == 0)
  {
    goto LABEL_225;
  }

LABEL_227:
  v194 = (v189._object >> 56) & 0xF;
LABEL_228:
  v189._object;
  _StringGuts.append(_:)(v189._countAndFlagsBits, v189._object, 0, v194, v198, v199, v200, v201, v202, v203, v204, v205);
  swift_bridgeObjectRelease_n(v189._object, 2);
  v190 = v303._countAndFlagsBits;
  v191 = v303._object;
LABEL_229:
  v206 = HIBYTE(v191) & 0xF;
  v207 = *&v190 & 0xFFFFFFFFFFFFLL;
  if ((v191 & 0x2000000000000000) != 0)
  {
    v208 = HIBYTE(v191) & 0xF;
  }

  else
  {
    v208 = *&v190 & 0xFFFFFFFFFFFFLL;
  }

  if (!v208 && (*&v190 & ~v191 & 0x2000000000000000) == 0)
  {
    v191;
    v303._countAndFlagsBits = v296;
    v303._object = v139;
    goto LABEL_291;
  }

  v209 = (v139 & 0x2000000000000000) == 0;
  v210 = HIBYTE(v139) & 0xF;
  if ((v191 & 0x2000000000000000) == 0)
  {
    v211 = v296 & 0xFFFFFFFFFFFFLL;
    v212 = HIBYTE(v139) & 0xF;
    if ((v139 & 0x2000000000000000) == 0)
    {
LABEL_238:
      v212 = v211;
    }

    v298 = v211;
    if ((v139 & 0x1000000000000000) == 0)
    {
      goto LABEL_240;
    }

LABEL_265:
    swift_bridgeObjectRetain_n(v139, 2);
    v241._rawBits = 1;
    v242._rawBits = (v212 << 16) | 1;
    v243._rawBits = _StringGuts.validateScalarRange(_:)(v241, v242, v296, v139)._rawBits;
    if (v243._rawBits < 0x10000)
    {
      v243._rawBits |= 3;
    }

    v245 = String.UTF8View.distance(from:to:)(v243, v244);
    v246 = v139;
    v214 = v245;
    v246;
    if ((v191 & 0x1000000000000000) != 0)
    {
      goto LABEL_268;
    }

LABEL_241:
    v215 = v208 + v214;
    if (__OFADD__(v208, v214))
    {
      goto LABEL_270;
    }

LABEL_242:
    if ((*&v190 & ~v191 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v191 & 0xFFFFFFFFFFFFFFFLL))
    {
      v216 = _StringGuts.nativeUnusedCapacity.getter(*&v190, v191);
      v208 = v296;
      if (v217)
      {
        goto LABEL_334;
      }

      v218 = (v191 >> 61) & 1;
      if (v216 < v214)
      {
        LOBYTE(v218) = 1;
      }

      if (v215 <= 15 && (v218 & 1) != 0)
      {
        goto LABEL_249;
      }
    }

    else
    {
      v208 = v296;
      if (v215 < 16)
      {
LABEL_249:
        if ((v191 & 0x2000000000000000) != 0)
        {
          v219 = v191;
          v220 = v300;
        }

        else
        {
          v220 = v300;
          if ((v191 & 0x1000000000000000) != 0)
          {
            v190 = _StringGuts._foreignConvertedToSmall()(*&v190, v191);
            v219 = v288;
          }

          else
          {
            if ((*&v190 & 0x1000000000000000) != 0)
            {
              v274 = ((v191 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v274 = _StringObject.sharedUTF8.getter(*&v190, v191);
              v207 = v292;
            }

            closure #1 in _StringGuts._convertedToSmall()(v274, v207, &v301, v213);
            v190 = v301;
            v219 = v302;
          }
        }

        v220;
        v221._rawBits = 1;
        v222._rawBits = (v212 << 16) | 1;
        v223._rawBits = _StringGuts.validateScalarRange(_:)(v221, v222, v208, v220)._rawBits;
        if (v223._rawBits < 0x10000)
        {
          v223._rawBits |= 3;
        }

        v225 = Substring.description.getter(v223._rawBits, v224, v208, v220);
        v227 = v226;
        v220;
        if ((v227 & 0x2000000000000000) != 0)
        {
          v227;
        }

        else if ((v227 & 0x1000000000000000) != 0)
        {
          v225 = _StringGuts._foreignConvertedToSmall()(v225, v227);
          v290 = v289;
          v227;
          v227 = v290;
        }

        else
        {
          if ((v225 & 0x1000000000000000) != 0)
          {
            v275 = ((v227 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v276 = v225 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v275 = _StringObject.sharedUTF8.getter(v225, v227);
          }

          closure #1 in _StringGuts._convertedToSmall()(v275, v276, &v301, v228);
          v227;
          v225 = v301;
          v227 = v302;
        }

        v229 = specialized _SmallString.init(_:appending:)(*&v190, v219, v225, v227);
        if ((v231 & 1) == 0)
        {
          v232 = v229;
          v233 = v230;
          v191;
          swift_bridgeObjectRelease_n(v220, 2);
          v303._countAndFlagsBits = v232;
          v303._object = v233;
          goto LABEL_291;
        }

LABEL_334:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v215, v214);
    v215 = v300;
    if ((v300 & 0x1000000000000000) != 0)
    {
      goto LABEL_271;
    }

    if (!v209)
    {
      v239 = (v300 >> 62) & 1;
      v301 = v208;
      v302 = v300 & 0xFFFFFFFFFFFFFFLL;
      v237 = &v301;
      v238 = v210;
      goto LABEL_285;
    }

    if ((v208 & 0x1000000000000000) != 0)
    {
      v234 = (v300 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v235 = v298;
      v236 = v298;
LABEL_262:
      v237 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v235, v234, v236);
      v239 = v208 >> 63;
LABEL_285:
      closure #1 in _StringGuts.append(_:)(v237, v238, &v303, v239);
      goto LABEL_286;
    }

    v283 = _StringObject.sharedUTF8.getter(v208, v300);
    if (v284 >= v298)
    {
      v234 = v283;
      v236 = v284;
      v235 = v298;
      v215 = v300;
      goto LABEL_262;
    }

LABEL_304:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v139 & 0x2000000000000000) == 0)
  {
    v211 = v296 & 0xFFFFFFFFFFFFLL;
    v209 = 1;
    goto LABEL_238;
  }

  v240 = v206 + v210;
  if (v206 + v210 < 0x10)
  {
    if (v210)
    {
      v249 = 0;
      v250 = 0;
      v251 = 8 * v206;
      v252 = v191;
      do
      {
        v253 = v139 >> (v249 & 0x38);
        if (v250 < 8)
        {
          v253 = v296 >> v249;
        }

        v254 = (v253 << (v251 & 0x38)) | ((-255 << (v251 & 0x38)) - 1) & v252;
        v255 = (v253 << v251) | ((-255 << v251) - 1) & *&v190;
        if (v206 <= 7)
        {
          v190 = v255;
        }

        else
        {
          v252 = v254;
        }

        ++v206;
        v251 += 8;
        v249 += 8;
        ++v250;
      }

      while (8 * v210 != v249);
    }

    else
    {
      v252 = v191;
    }

    v191;
    v139;
    v256 = 0xA000000000000000;
    if (!(*&v190 & 0x8080808080808080 | v252 & 0x80808080808080))
    {
      v256 = 0xE000000000000000;
    }

    v303._countAndFlagsBits = v190;
    v303._object = (v256 & 0xFF00000000000000 | (v240 << 56) | v252 & 0xFFFFFFFFFFFFFFLL);
  }

  else
  {
    v209 = 0;
    v212 = HIBYTE(v139) & 0xF;
    v298 = v296 & 0xFFFFFFFFFFFFLL;
    if ((v139 & 0x1000000000000000) != 0)
    {
      goto LABEL_265;
    }

LABEL_240:
    v139;
    v214 = v212;
    if ((v191 & 0x1000000000000000) == 0)
    {
      goto LABEL_241;
    }

LABEL_268:
    v208 = String.UTF8View._foreignCount()();
    v215 = v208 + v214;
    if (!__OFADD__(v208, v214))
    {
      goto LABEL_242;
    }

LABEL_270:
    __break(1u);
LABEL_271:
    _StringGuts._foreignAppendInPlace(_:)(v208, v215, 0, v212);
LABEL_286:
    swift_bridgeObjectRelease_n(v215, 2);
  }

LABEL_291:
  v257 = v303._object;
  v258 = (v303._object >> 56) & 0xF;
  if ((v303._object & 0x2000000000000000) == 0)
  {
    v258 = v303._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v258 || (v303._countAndFlagsBits & ~v303._object & 0x2000000000000000) != 0)
  {
    if ((v303._object & 0x2000000000000000) != 0 && (v259 = specialized _SmallString.init(_:appending:)(v303._countAndFlagsBits, v303._object, 0x29uLL, 0xE100000000000000), (v260 & 1) == 0))
    {
      v270 = v259;
      v257;
      0xE100000000000000;
      return v270;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v261, v262, v263, v264, v265, v266, v267, v268);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v303._countAndFlagsBits;
    }
  }

  else
  {
    v303._object;
    return 41;
  }
}