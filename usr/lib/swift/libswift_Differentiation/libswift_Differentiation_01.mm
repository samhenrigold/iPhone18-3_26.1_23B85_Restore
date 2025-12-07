uint64_t closure #1 in static SIMD<>._vjpAdd(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  SIMD<>.sum()(AssociatedTypeWitness, *(a10 + 16), a1);
  v14 = *(*(AssociatedTypeWitness - 8) + 16);

  return v14(a2, a3, AssociatedTypeWitness);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a3, AssociatedTypeWitness);
  return SIMD<>.sum()(AssociatedTypeWitness, *(a10 + 16), a2);
}

uint64_t SIMD<>.sum()@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v9);
  v11 = v19 - v10;
  v19[0] = *(*(*(a3 + 16) + 8) + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v19[1] = a4;
  dispatch thunk of static SignedNumeric.- prefix(_:)();
  v12 = *(v8 + 8);
  v12(v11, AssociatedTypeWitness);
  result = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (result < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v14 = result;
    if (result)
    {
      v15 = a1;
      v16 = v12;
      result = 0;
      do
      {
        v17 = result + 1;
        v18 = v15;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
        v16(v11, AssociatedTypeWitness);
        v15 = v18;
        result = v17;
      }

      while (v14 != v17);
    }
  }

  return result;
}

uint64_t (*reverse-mode derivative of static SIMD<>.+ infix(_:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static SIMD<>._vjpAdd(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:);
}

{
  static SIMD<>._vjpAdd(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:);
}

uint64_t (*static SIMD<>._jvpAdd(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2)
{
  v81 = a6;
  v82 = a8;
  v87 = a3;
  v88 = a7;
  v79 = a1;
  v80 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v15);
  v73 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v76 = &v71 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v71 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v84 = *(a4 - 8);
  v28 = MEMORY[0x2A1C7C4A8](&v71 - v26, v27);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v34 = &v71 - v33;
  v36 = MEMORY[0x2A1C7C4A8](v32, v35);
  v83 = &v71 - v37;
  v90 = v14;
  v38 = *(v14 + 16);
  v85 = v14 + 16;
  v86 = v36;
  v40 = v39;
  v41 = v38;
  v38(v36, a2);
  dispatch thunk of SIMDStorage.init()();
  v42 = v34;
  v43 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v89 = v30;
  v91 = v12;
  v45 = v86;
  if (v43)
  {
    v46 = 0;
    do
    {
      v41(v24, v45, v40);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v46;
    }

    while (v44 != v46);
  }

  v72 = v24;
  v47 = v90 + 8;
  v48 = *(v90 + 8);
  v48(v45, v40);
  v77 = *(v84 + 32);
  v78 = v84 + 32;
  v77(v83, v42, a4);
  dispatch thunk of SIMDStorage.init()();
  v49 = a4;
  v50 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v50 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v74 = a9;
    v75 = a10;
    v90 = v47;
    v51 = v72;
    v52 = v73;
    v53 = v76;
    v54 = v83;
    v86 = v48;
    if (v50)
    {
      v55 = v40;
      v56 = 0;
      v85 = v50;
      do
      {
        v91 = v56 + 1;
        v57 = v53;
        v58 = v54;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v59 = v52;
        v60 = v52;
        v61 = v51;
        v62 = v49;
        v63 = v86;
        v86(v59, v55);
        v63(v57, v55);
        v49 = v62;
        v51 = v61;
        v52 = v60;
        dispatch thunk of SIMDStorage.subscript.setter();
        v53 = v57;
        v54 = v58;
        v56 = v91;
      }

      while (v85 != v91);
    }

    (*(v84 + 8))(v54, v49);
    v77(v79, v89, v49);
    v64 = swift_allocObject();
    v65 = v80;
    v66 = v81;
    v64[2] = v49;
    v64[3] = v65;
    v67 = v88;
    v64[4] = v66;
    v64[5] = v67;
    v69 = v74;
    v68 = v75;
    v64[6] = v82;
    v64[7] = v69;
    v64[8] = v68;
    return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:);
  }

  return result;
}

{
  v82 = a6;
  v83 = a8;
  v87 = a7;
  v79 = a2;
  v80 = a1;
  v81 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v15);
  v73 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v76 = &v71 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v71 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v84 = *(a4 - 8);
  v28 = MEMORY[0x2A1C7C4A8](&v71 - v26, v27);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v34 = &v71 - v33;
  v36 = MEMORY[0x2A1C7C4A8](v32, v35);
  v88 = &v71 - v37;
  v90 = v14;
  v38 = *(v14 + 16);
  v85 = v14 + 16;
  v86 = v36;
  v40 = v39;
  v41 = v38;
  v38(v36, a3);
  dispatch thunk of SIMDStorage.init()();
  v42 = v34;
  v43 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v89 = v30;
  v91 = v12;
  v45 = v86;
  if (v43)
  {
    v46 = 0;
    do
    {
      v41(v24, v45, v40);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v46;
    }

    while (v44 != v46);
  }

  v72 = v24;
  v47 = v90 + 8;
  v48 = *(v90 + 8);
  v48(v45, v40);
  v77 = *(v84 + 32);
  v78 = v84 + 32;
  v77(v88, v42, a4);
  dispatch thunk of SIMDStorage.init()();
  v49 = a4;
  v50 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v50 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v74 = a9;
    v75 = a10;
    v51 = v79;
    v90 = v47;
    v52 = v72;
    v53 = v73;
    v54 = v76;
    v86 = v48;
    if (v50)
    {
      v55 = v40;
      v56 = 0;
      v85 = v50;
      do
      {
        v91 = v56 + 1;
        v57 = v54;
        v58 = v51;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v59 = v53;
        v60 = v53;
        v61 = v52;
        v62 = v49;
        v63 = v86;
        v86(v59, v55);
        v63(v57, v55);
        v49 = v62;
        v52 = v61;
        v53 = v60;
        dispatch thunk of SIMDStorage.subscript.setter();
        v54 = v57;
        v51 = v58;
        v56 = v91;
      }

      while (v85 != v91);
    }

    (*(v84 + 8))(v88, v49);
    v77(v80, v89, v49);
    v64 = swift_allocObject();
    v65 = v81;
    v66 = v82;
    v64[2] = v49;
    v64[3] = v65;
    v67 = v87;
    v64[4] = v66;
    v64[5] = v67;
    v69 = v74;
    v68 = v75;
    v64[6] = v83;
    v64[7] = v69;
    v64[8] = v68;
    return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:);
  }

  return result;
}

uint64_t (*forward-mode derivative of static SIMD<>.+ infix(_:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2)
{
  static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:);
}

{
  static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:);
}

uint64_t (*static SIMD<>._vjpSubtract(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a6;
  v82 = a8;
  v87 = a3;
  v88 = a7;
  v79 = a1;
  v80 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v15);
  v73 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v76 = &v71 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v71 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v84 = *(a4 - 8);
  v28 = MEMORY[0x2A1C7C4A8](&v71 - v26, v27);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v34 = &v71 - v33;
  v36 = MEMORY[0x2A1C7C4A8](v32, v35);
  v83 = &v71 - v37;
  v90 = v14;
  v38 = *(v14 + 16);
  v85 = v14 + 16;
  v86 = v36;
  v40 = v39;
  v41 = v38;
  v38(v36, a2);
  dispatch thunk of SIMDStorage.init()();
  v42 = v34;
  v43 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v89 = v30;
  v91 = v12;
  v45 = v86;
  if (v43)
  {
    v46 = 0;
    do
    {
      v41(v24, v45, v40);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v46;
    }

    while (v44 != v46);
  }

  v72 = v24;
  v47 = v90 + 8;
  v48 = *(v90 + 8);
  v48(v45, v40);
  v77 = *(v84 + 32);
  v78 = v84 + 32;
  v77(v83, v42, a4);
  dispatch thunk of SIMDStorage.init()();
  v49 = a4;
  v50 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v50 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v74 = a9;
    v75 = a10;
    v90 = v47;
    v51 = v72;
    v52 = v73;
    v53 = v76;
    v54 = v83;
    v86 = v48;
    if (v50)
    {
      v55 = v40;
      v56 = 0;
      v85 = v50;
      do
      {
        v91 = v56 + 1;
        v57 = v53;
        v58 = v54;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v59 = v52;
        v60 = v52;
        v61 = v51;
        v62 = v49;
        v63 = v86;
        v86(v59, v55);
        v63(v57, v55);
        v49 = v62;
        v51 = v61;
        v52 = v60;
        dispatch thunk of SIMDStorage.subscript.setter();
        v53 = v57;
        v54 = v58;
        v56 = v91;
      }

      while (v85 != v91);
    }

    (*(v84 + 8))(v54, v49);
    v77(v79, v89, v49);
    v64 = swift_allocObject();
    v65 = v80;
    v66 = v81;
    v64[2] = v49;
    v64[3] = v65;
    v67 = v88;
    v64[4] = v66;
    v64[5] = v67;
    v69 = v74;
    v68 = v75;
    v64[6] = v82;
    v64[7] = v69;
    v64[8] = v68;
    return partial apply for closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:);
  }

  return result;
}

{
  v82 = a6;
  v83 = a8;
  v87 = a7;
  v79 = a2;
  v80 = a1;
  v81 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v15);
  v73 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v76 = &v71 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v71 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v84 = *(a4 - 8);
  v28 = MEMORY[0x2A1C7C4A8](&v71 - v26, v27);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v34 = &v71 - v33;
  v36 = MEMORY[0x2A1C7C4A8](v32, v35);
  v88 = &v71 - v37;
  v90 = v14;
  v38 = *(v14 + 16);
  v85 = v14 + 16;
  v86 = v36;
  v40 = v39;
  v41 = v38;
  v38(v36, a3);
  dispatch thunk of SIMDStorage.init()();
  v42 = v34;
  v43 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v89 = v30;
  v91 = v12;
  v45 = v86;
  if (v43)
  {
    v46 = 0;
    do
    {
      v41(v24, v45, v40);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v46;
    }

    while (v44 != v46);
  }

  v72 = v24;
  v47 = v90 + 8;
  v48 = *(v90 + 8);
  v48(v45, v40);
  v77 = *(v84 + 32);
  v78 = v84 + 32;
  v77(v88, v42, a4);
  dispatch thunk of SIMDStorage.init()();
  v49 = a4;
  v50 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v50 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v74 = a9;
    v75 = a10;
    v51 = v79;
    v90 = v47;
    v52 = v72;
    v53 = v73;
    v54 = v76;
    v86 = v48;
    if (v50)
    {
      v55 = v40;
      v56 = 0;
      v85 = v50;
      do
      {
        v91 = v56 + 1;
        v57 = v54;
        v58 = v51;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v59 = v53;
        v60 = v53;
        v61 = v52;
        v62 = v49;
        v63 = v86;
        v86(v59, v55);
        v63(v57, v55);
        v49 = v62;
        v52 = v61;
        v53 = v60;
        dispatch thunk of SIMDStorage.subscript.setter();
        v54 = v57;
        v51 = v58;
        v56 = v91;
      }

      while (v85 != v91);
    }

    (*(v84 + 8))(v88, v49);
    v77(v80, v89, v49);
    v64 = swift_allocObject();
    v65 = v81;
    v66 = v82;
    v64[2] = v49;
    v64[3] = v65;
    v67 = v87;
    v64[4] = v66;
    v64[5] = v67;
    v69 = v74;
    v68 = v75;
    v64[6] = v83;
    v64[7] = v69;
    v64[8] = v68;
    return partial apply for closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v75 = a3;
  v76 = a2;
  v77 = a1;
  v73 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v12);
  v69 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v78 = v62 - v16;
  v71 = swift_getAssociatedTypeWitness();
  v72 = a8;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v66 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v65 = v62 - v24;
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v74 = v62 - v27;
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v31 = v62 - v30;
  MEMORY[0x2A1C7C4A8](v29, v32);
  v34 = v62 - v33;
  v35 = *(a10 + 16);
  v36 = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](v36, v37);
  v38 = v73;
  SIMD<>.sum()(AssociatedTypeWitness, v35, v77);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v77 = v18;
  v39 = *(v18 + 16);
  v63 = v17;
  v64 = v31;
  v70 = v34;
  v40 = v39;
  v62[1] = v18 + 16;
  v39(v31, v34, v17);
  v41 = *(v38 + 48);
  v42 = v69;
  dispatch thunk of SIMDStorage.init()();
  v43 = v42;
  v67 = AssociatedTypeWitness;
  v44 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v44 < 0)
  {
    goto LABEL_10;
  }

  v45 = v44;
  v46 = v67;
  v47 = v74;
  v49 = v63;
  v48 = v64;
  v73 = v41;
  if (v44)
  {
    v50 = 0;
    do
    {
      v40(v47, v48, v49);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v50;
    }

    while (v45 != v50);
  }

  v51 = v77 + 8;
  v52 = *(v77 + 8);
  v52(v48, v49);
  (*(v68 + 32))(v78, v43, v46);
  dispatch thunk of SIMDStorage.init()();
  v53 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v53 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v54 = v53;
    v52(v70, v49);
    v55 = v78;
    v77 = v51;
    v56 = v65;
    v57 = v66;
    v58 = v67;
    v70 = v52;
    if (v54)
    {
      v59 = 0;
      v69 = v54;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        swift_getAssociatedConformanceWitness();
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v60 = v70;
        (v70)(v57, v49);
        v60(v56, v49);
        dispatch thunk of SIMDStorage.subscript.setter();
        v55 = v78;
        ++v59;
      }

      while (v69 != v59);
    }

    return (*(v68 + 8))(v55, v58);
  }

  return result;
}

{
  v19[0] = a9;
  v19[1] = a2;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v14);
  v16 = v19 - v15;
  v17 = swift_getAssociatedTypeWitness();
  (*(*(v17 - 8) + 16))(a1, a3, v17);
  SIMD<>.sum()(v17, *(a10 + 16), v16);
  dispatch thunk of static SignedNumeric.- prefix(_:)();
  return (*(v13 + 8))(v16, AssociatedTypeWitness);
}

uint64_t (*reverse-mode derivative of static SIMD<>.- infix(_:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static SIMD<>._vjpSubtract(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:);
}

{
  static SIMD<>._vjpSubtract(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:);
}

uint64_t (*static SIMD<>._jvpSubtract(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2)
{
  v81 = a6;
  v82 = a8;
  v87 = a3;
  v88 = a7;
  v79 = a1;
  v80 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v15);
  v73 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v76 = &v71 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v71 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v84 = *(a4 - 8);
  v28 = MEMORY[0x2A1C7C4A8](&v71 - v26, v27);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v34 = &v71 - v33;
  v36 = MEMORY[0x2A1C7C4A8](v32, v35);
  v83 = &v71 - v37;
  v90 = v14;
  v38 = *(v14 + 16);
  v85 = v14 + 16;
  v86 = v36;
  v40 = v39;
  v41 = v38;
  v38(v36, a2);
  dispatch thunk of SIMDStorage.init()();
  v42 = v34;
  v43 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v89 = v30;
  v91 = v12;
  v45 = v86;
  if (v43)
  {
    v46 = 0;
    do
    {
      v41(v24, v45, v40);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v46;
    }

    while (v44 != v46);
  }

  v72 = v24;
  v47 = v90 + 8;
  v48 = *(v90 + 8);
  v48(v45, v40);
  v77 = *(v84 + 32);
  v78 = v84 + 32;
  v77(v83, v42, a4);
  dispatch thunk of SIMDStorage.init()();
  v49 = a4;
  v50 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v50 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v74 = a9;
    v75 = a10;
    v90 = v47;
    v51 = v72;
    v52 = v73;
    v53 = v76;
    v54 = v83;
    v86 = v48;
    if (v50)
    {
      v55 = v40;
      v56 = 0;
      v85 = v50;
      do
      {
        v91 = v56 + 1;
        v57 = v53;
        v58 = v54;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v59 = v52;
        v60 = v52;
        v61 = v51;
        v62 = v49;
        v63 = v86;
        v86(v59, v55);
        v63(v57, v55);
        v49 = v62;
        v51 = v61;
        v52 = v60;
        dispatch thunk of SIMDStorage.subscript.setter();
        v53 = v57;
        v54 = v58;
        v56 = v91;
      }

      while (v85 != v91);
    }

    (*(v84 + 8))(v54, v49);
    v77(v79, v89, v49);
    v64 = swift_allocObject();
    v65 = v80;
    v66 = v81;
    v64[2] = v49;
    v64[3] = v65;
    v67 = v88;
    v64[4] = v66;
    v64[5] = v67;
    v69 = v74;
    v68 = v75;
    v64[6] = v82;
    v64[7] = v69;
    v64[8] = v68;
    return partial apply for closure #1 in static SIMD<>._jvpSubtract(lhs:rhs:);
  }

  return result;
}

{
  v82 = a6;
  v83 = a8;
  v87 = a7;
  v79 = a2;
  v80 = a1;
  v81 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v15);
  v73 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v76 = &v71 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v71 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v84 = *(a4 - 8);
  v28 = MEMORY[0x2A1C7C4A8](&v71 - v26, v27);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v34 = &v71 - v33;
  v36 = MEMORY[0x2A1C7C4A8](v32, v35);
  v88 = &v71 - v37;
  v90 = v14;
  v38 = *(v14 + 16);
  v85 = v14 + 16;
  v86 = v36;
  v40 = v39;
  v41 = v38;
  v38(v36, a3);
  dispatch thunk of SIMDStorage.init()();
  v42 = v34;
  v43 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v89 = v30;
  v91 = v12;
  v45 = v86;
  if (v43)
  {
    v46 = 0;
    do
    {
      v41(v24, v45, v40);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v46;
    }

    while (v44 != v46);
  }

  v72 = v24;
  v47 = v90 + 8;
  v48 = *(v90 + 8);
  v48(v45, v40);
  v77 = *(v84 + 32);
  v78 = v84 + 32;
  v77(v88, v42, a4);
  dispatch thunk of SIMDStorage.init()();
  v49 = a4;
  v50 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v50 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v74 = a9;
    v75 = a10;
    v51 = v79;
    v90 = v47;
    v52 = v72;
    v53 = v73;
    v54 = v76;
    v86 = v48;
    if (v50)
    {
      v55 = v40;
      v56 = 0;
      v85 = v50;
      do
      {
        v91 = v56 + 1;
        v57 = v54;
        v58 = v51;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v59 = v53;
        v60 = v53;
        v61 = v52;
        v62 = v49;
        v63 = v86;
        v86(v59, v55);
        v63(v57, v55);
        v49 = v62;
        v52 = v61;
        v53 = v60;
        dispatch thunk of SIMDStorage.subscript.setter();
        v54 = v57;
        v51 = v58;
        v56 = v91;
      }

      while (v85 != v91);
    }

    (*(v84 + 8))(v88, v49);
    v77(v80, v89, v49);
    v64 = swift_allocObject();
    v65 = v81;
    v66 = v82;
    v64[2] = v49;
    v64[3] = v65;
    v67 = v87;
    v64[4] = v66;
    v64[5] = v67;
    v69 = v74;
    v68 = v75;
    v64[6] = v83;
    v64[7] = v69;
    v64[8] = v68;
    return partial apply for closure #1 in static SIMD<>._jvpSubtract(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a5@<X6>, char *a6@<X7>, uint64_t a7@<X8>, uint64_t a8, void (*a9)(char *, char *, uint64_t, uint64_t))
{
  v71 = a6;
  v67 = a2;
  v65 = a1;
  v69 = a7;
  v68 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v60 = &v58 - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v58 = &v58 - v19;
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v58 - v21;
  v23 = swift_getAssociatedTypeWitness();
  v62 = *(v23 - 8);
  v25 = MEMORY[0x2A1C7C4A8](v23, v24);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25, v28);
  v30 = &v58 - v29;
  v70 = v10;
  v31 = (v10 + 16);
  v32 = v22;
  v33 = v65;
  v34 = *(v10 + 16);
  v65 = v31;
  v34(v22, v33, v9);
  v35 = *(v71 + 6);
  dispatch thunk of SIMDStorage.init()();
  v36 = v27;
  v37 = v23;
  v38 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v39 = v38;
  v61 = v30;
  v71 = v36;
  v40 = v58;
  if (v38)
  {
    v41 = 0;
    do
    {
      v34(v40, v32, v9);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v41;
    }

    while (v39 != v41);
  }

  v42 = v70 + 8;
  v43 = *(v70 + 8);
  v43(v32, v9);
  (*(v62 + 32))(v61, v71, v37);
  dispatch thunk of SIMDStorage.init()();
  v44 = v37;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v70 = v42;
    v46 = v59;
    v47 = v60;
    v48 = v61;
    v65 = v43;
    if (v45)
    {
      v49 = v40;
      v50 = 0;
      v63 = a9;
      v64 = v45;
      do
      {
        v71 = v50 + 1;
        v51 = v48;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v63(v47, v46, v9, AssociatedConformanceWitness);
        v53 = v44;
        v54 = v49;
        v55 = v35;
        v56 = v65;
        v65(v46, v9);
        v56(v47, v9);
        v35 = v55;
        v49 = v54;
        v44 = v53;
        dispatch thunk of SIMDStorage.subscript.setter();
        v48 = v51;
        v50 = v71;
      }

      while (v64 != v71);
    }

    return (*(v62 + 8))(v48, v44);
  }

  return result;
}

uint64_t (*forward-mode derivative of static SIMD<>.- infix(_:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2)
{
  static SIMD<>._jvpSubtract(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._jvpSubtract(lhs:rhs:);
}

{
  static SIMD<>._jvpSubtract(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._jvpSubtract(lhs:rhs:);
}

uint64_t closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a5@<X6>, char *a6@<X7>, uint64_t a7@<X8>, uint64_t a8, void (*a9)(char *, char *, uint64_t, uint64_t))
{
  v71 = a6;
  v68 = a7;
  v69 = a2;
  v61 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = a5;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v59 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v60 = &v58 - v17;
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v58 = &v58 - v20;
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v58 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v62 = *(v24 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v24, v25);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = &v58 - v30;
  v70 = v11;
  v32 = (v11 + 16);
  v33 = v23;
  v34 = *(v11 + 16);
  v65 = v32;
  v34(v23, v69, v10);
  v35 = *(v71 + 6);
  dispatch thunk of SIMDStorage.init()();
  v36 = v28;
  v37 = v24;
  v38 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v39 = v38;
  v69 = v31;
  v71 = v36;
  v40 = v58;
  if (v38)
  {
    v41 = 0;
    do
    {
      v34(v40, v33, v10);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v41;
    }

    while (v39 != v41);
  }

  v42 = v70 + 8;
  v43 = *(v70 + 8);
  v43(v33, v10);
  (*(v62 + 32))(v69, v71, v37);
  dispatch thunk of SIMDStorage.init()();
  v44 = v37;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v47 = v60;
    v46 = v61;
    v70 = v42;
    v48 = v59;
    v65 = v43;
    if (v45)
    {
      v49 = v40;
      v50 = 0;
      v63 = a9;
      v64 = v45;
      do
      {
        v71 = v50 + 1;
        v51 = v46;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v63(v47, v48, v10, AssociatedConformanceWitness);
        v53 = v44;
        v54 = v49;
        v55 = v35;
        v56 = v65;
        v65(v48, v10);
        v56(v47, v10);
        v35 = v55;
        v49 = v54;
        v44 = v53;
        dispatch thunk of SIMDStorage.subscript.setter();
        v46 = v51;
        v50 = v71;
      }

      while (v64 != v71);
    }

    return (*(v62 + 8))(v69, v44);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a5;
  v82 = a6;
  v96 = a2;
  v78 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v75 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v74 = v73 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v95 = v73 - v21;
  v79 = v22;
  MEMORY[0x2A1C7C4A8](v20, v23);
  v87 = *(a4 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v73 - v24, v25);
  v77 = v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v94 = v73 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v34 = (v73 - v33);
  v76 = v35;
  v37 = MEMORY[0x2A1C7C4A8](v32, v36);
  v93 = v73 - v38;
  v88 = v39;
  v40 = *(v39 + 16);
  v41 = v37;
  v80 = a3;
  v43 = v42;
  v84 = v40;
  v85 = v39 + 16;
  (v40)(v37, a3);
  dispatch thunk of SIMDStorage.init()();
  v86 = a4;
  v44 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v44 < 0)
  {
    goto LABEL_10;
  }

  v45 = v44;
  v91 = v34;
  v92 = a7;
  v83 = a8;
  v46 = v86;
  v47 = v95;
  v48 = v84;
  if (v44)
  {
    v49 = 0;
    do
    {
      v48(v47, v41, v43);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v49;
    }

    while (v45 != v49);
  }

  v50 = v43;
  v51 = v43;
  v52 = *(v88 + 8);
  v90 = v88 + 8;
  v52(v41, v51);
  v53 = *(v87 + 32);
  v73[1] = v87 + 32;
  v73[0] = v53;
  v53(v93, v91, v46);
  dispatch thunk of SIMDStorage.init()();
  v54 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v54 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v55 = v96;
    v56 = v75;
    v57 = v74;
    v58 = v86;
    v91 = v52;
    if (v54)
    {
      v59 = 0;
      v89 = v54;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static Numeric.* infix(_:_:)();
        v60 = v91;
        v91(v56, v50);
        v60(v57, v50);
        dispatch thunk of SIMDStorage.subscript.setter();
        v55 = v96;
        ++v59;
      }

      while (v89 != v59);
    }

    v61 = v87;
    (*(v87 + 8))(v93, v58);
    v62 = v73[0];
    (v73[0])(v78, v94, v58);
    v63 = v95;
    v84(v95, v80, v50);
    v64 = v77;
    (*(v61 + 16))(v77, v55, v58);
    v65 = v88;
    v66 = (*(v88 + 80) + 56) & ~*(v88 + 80);
    v67 = (v79 + *(v61 + 80) + v66) & ~*(v61 + 80);
    v68 = swift_allocObject();
    v69 = v81;
    v70 = v82;
    *(v68 + 2) = v58;
    *(v68 + 3) = v69;
    v71 = v92;
    *(v68 + 4) = v70;
    *(v68 + 5) = v71;
    *(v68 + 6) = v83;
    (*(v65 + 32))(&v68[v66], v63, v50);
    v62(&v68[v67], v64, v58);
    return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v86 = a5;
  v83 = a3;
  v75 = a2;
  v73 = a1;
  v76 = a7;
  v11 = *(a7 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v14);
  v82 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v81 = &v73 - v19;
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v94 = &v73 - v22;
  MEMORY[0x2A1C7C4A8](v21, v23);
  v84 = *(a6 - 8);
  v26 = MEMORY[0x2A1C7C4A8](&v73 - v24, v25);
  v89 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v74 = &v73 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v88 = &v73 - v33;
  v35 = MEMORY[0x2A1C7C4A8](v32, v34);
  v37 = &v73 - v36;
  v39 = MEMORY[0x2A1C7C4A8](v35, v38);
  v87 = &v73 - v40;
  v95 = v13;
  v41 = v39;
  v43 = v42;
  v44 = *(v13 + 16);
  v93 = v13 + 16;
  v44(v39, a4);
  dispatch thunk of SIMDStorage.init()();
  v45 = v37;
  v46 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v46 < 0)
  {
    goto LABEL_14;
  }

  v47 = v46;
  v90 = v11;
  v48 = v94;
  if (v46)
  {
    v49 = 0;
    do
    {
      (v44)(v48, v41, v43);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v49;
    }

    while (v47 != v49);
  }

  v50 = *(v95 + 8);
  v77 = v43;
  v95 += 8;
  v92 = v50;
  v50(v41, v43);
  v51 = *(v84 + 32);
  v80 = v84 + 32;
  v78 = v51;
  v51(v87, v45, a6);
  dispatch thunk of SIMDStorage.init()();
  v79 = a6;
  v52 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v52 < 0)
  {
    goto LABEL_14;
  }

  v93 = a9;
  v53 = v82;
  v54 = v81;
  v55 = v79;
  v56 = v77;
  if (v52)
  {
    v57 = 0;
    v85 = v52;
    do
    {
      v91 = v57 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static Numeric.* infix(_:_:)();
      v58 = v55;
      v59 = v92;
      v92(v53, v56);
      v59(v54, v56);
      v55 = v58;
      dispatch thunk of SIMDStorage.subscript.setter();
      v57 = v91;
    }

    while (v85 != v91);
  }

  v60 = *(v84 + 8);
  v61 = v87;
  v84 += 8;
  v87 = v60;
  (v60)(v61, v55);
  v78(v73, v88, v55);
  dispatch thunk of SIMDStorage.init()();
  v62 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v62 < 0)
  {
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v63 = v82;
    v64 = v81;
    v65 = v79;
    v66 = v77;
    if (v62)
    {
      v67 = 0;
      v88 = v62;
      do
      {
        v91 = v67 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static Numeric.* infix(_:_:)();
        v68 = v63;
        v69 = v63;
        v70 = v92;
        v92(v68, v66);
        v70(v64, v66);
        v63 = v69;
        dispatch thunk of SIMDStorage.subscript.setter();
        v67 = v91;
      }

      while (v88 != v91);
    }

    v71 = v74;
    v78(v74, v89, v65);
    SIMD<>.sum()(v65, *(v93 + 16), v75);
    return (v87)(v71, v65);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2)
{
  v86 = a5;
  v87 = a6;
  v103 = a2;
  v83 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v80 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v79 = v78 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v101 = v78 - v21;
  v84 = v22;
  MEMORY[0x2A1C7C4A8](v20, v23);
  v93 = *(a4 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v78 - v24, v25);
  v82 = v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v100 = v78 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v34 = v78 - v33;
  v81 = v35;
  v37 = MEMORY[0x2A1C7C4A8](v32, v36);
  v89 = v78 - v38;
  v94 = v39;
  v40 = *(v39 + 16);
  v41 = v37;
  v85 = a3;
  v43 = v42;
  v90 = v40;
  v91 = v39 + 16;
  (v40)(v37, a3);
  dispatch thunk of SIMDStorage.init()();
  v44 = v34;
  v92 = a4;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
    goto LABEL_10;
  }

  v46 = v45;
  v99 = a7;
  v88 = a8;
  v47 = v101;
  v48 = v92;
  v49 = v90;
  v102 = v44;
  if (v45)
  {
    v50 = 0;
    do
    {
      v49(v47, v41, v43);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v50;
    }

    while (v46 != v50);
  }

  v51 = v41;
  v52 = v43;
  v53 = *(v94 + 8);
  v97 = v94 + 8;
  v53(v51, v43);
  v54 = *(v93 + 32);
  v78[1] = v93 + 32;
  v78[0] = v54;
  v54(v89, v102, v48);
  dispatch thunk of SIMDStorage.init()();
  v55 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v55 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v56 = v103;
    v57 = v80;
    v58 = v79;
    v59 = v92;
    v60 = v100;
    v61 = v89;
    v98 = v52;
    v96 = v53;
    if (v55)
    {
      v62 = 0;
      v95 = v55;
      do
      {
        v102 = v62 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v63 = v98;
        dispatch thunk of static Numeric.* infix(_:_:)();
        v64 = v96;
        v96(v57, v63);
        v64(v58, v63);
        v60 = v100;
        dispatch thunk of SIMDStorage.subscript.setter();
        v56 = v103;
        v62 = v102;
      }

      while (v95 != v102);
    }

    v65 = v93;
    (*(v93 + 8))(v61, v59);
    v66 = v78[0];
    (v78[0])(v83, v60, v59);
    v67 = v82;
    (*(v65 + 16))(v82, v56, v59);
    v68 = v101;
    v69 = v98;
    v90(v101, v85, v98);
    v70 = (*(v65 + 80) + 56) & ~*(v65 + 80);
    v71 = v94;
    v72 = (v81 + *(v94 + 80) + v70) & ~*(v94 + 80);
    v73 = swift_allocObject();
    v74 = v86;
    v75 = v87;
    *(v73 + 2) = v59;
    *(v73 + 3) = v74;
    v76 = v99;
    *(v73 + 4) = v75;
    *(v73 + 5) = v76;
    *(v73 + 6) = v88;
    v66(&v73[v70], v67, v59);
    (*(v71 + 32))(&v73[v72], v68, v69);
    return partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v126 = a8;
  v105 = a7;
  v102 = a4;
  v101 = a3;
  v104 = a1;
  v106 = a9;
  v11 = *(a6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v112 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v111 = &v101 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v118 = &v101 - v21;
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v109 = &v101 - v24;
  MEMORY[0x2A1C7C4A8](v23, v25);
  v119 = *(a5 - 8);
  v28 = MEMORY[0x2A1C7C4A8](&v101 - v26, v27);
  v124 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v108 = &v101 - v32;
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v123 = &v101 - v35;
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v103 = &v101 - v38;
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v122 = &v101 - v41;
  v43 = MEMORY[0x2A1C7C4A8](v40, v42);
  v45 = &v101 - v44;
  v47 = MEMORY[0x2A1C7C4A8](v43, v46);
  v121 = &v101 - v48;
  v50 = MEMORY[0x2A1C7C4A8](v47, v49);
  v110 = &v101 - v51;
  v128 = v52;
  v53 = v50;
  v55 = v54;
  v113 = *(v52 + 16);
  v114 = v52 + 16;
  v113(v50, a2);
  dispatch thunk of SIMDStorage.init()();
  v56 = a5;
  v57 = v11;
  v58 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v58 < 0)
  {
    goto LABEL_18;
  }

  v59 = v58;
  v60 = v113;
  v129 = v57;
  v61 = v118;
  if (v58)
  {
    v62 = 0;
    do
    {
      v60(v61, v53, v55);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v62;
    }

    while (v59 != v62);
  }

  v63 = *(v128 + 8);
  v107 = v55;
  v127 = v63;
  v128 += 8;
  v63(v53, v55);
  v116 = *(v119 + 32);
  v117 = v119 + 32;
  v116(v121, v45, v56);
  dispatch thunk of SIMDStorage.init()();
  v115 = v56;
  v64 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v64 < 0)
  {
    goto LABEL_18;
  }

  v65 = v111;
  v66 = v112;
  v67 = v129;
  v68 = v115;
  v69 = v118;
  v70 = v107;
  if (v64)
  {
    v71 = 0;
    v120 = v64;
    do
    {
      v125 = v71 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static Numeric.* infix(_:_:)();
      v72 = v69;
      v73 = v68;
      v74 = v67;
      v75 = v127;
      v127(v66, v70);
      v75(v65, v70);
      v67 = v74;
      v68 = v73;
      v69 = v72;
      dispatch thunk of SIMDStorage.subscript.setter();
      v71 = v125;
    }

    while (v120 != v125);
  }

  v76 = v121;
  v121 = *(v119 + 8);
  v119 += 8;
  (v121)(v76, v68);
  v116(v110, v122, v68);
  (v113)(v109, v102, v70);
  dispatch thunk of SIMDStorage.init()();
  v77 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v77 < 0)
  {
    goto LABEL_18;
  }

  v78 = v77;
  v79 = v109;
  v80 = v108;
  v81 = v115;
  v82 = v118;
  v83 = v113;
  if (v77)
  {
    v84 = 0;
    do
    {
      v83(v82, v79, v70);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v84;
    }

    while (v78 != v84);
  }

  v127(v79, v70);
  v116(v123, v80, v81);
  dispatch thunk of SIMDStorage.init()();
  v85 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v85 < 0)
  {
LABEL_18:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v86 = v111;
    v87 = v112;
    v88 = v115;
    v89 = v118;
    v90 = v107;
    if (v85)
    {
      v91 = 0;
      v122 = v85;
      do
      {
        v125 = v91 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static Numeric.* infix(_:_:)();
        v92 = v87;
        v93 = v87;
        v94 = v89;
        v95 = v88;
        v96 = v127;
        v127(v92, v90);
        v96(v86, v90);
        v88 = v95;
        v89 = v94;
        v87 = v93;
        dispatch thunk of SIMDStorage.subscript.setter();
        v91 = v125;
      }

      while (v122 != v125);
    }

    v97 = v121;
    (v121)(v123, v88);
    v98 = v103;
    v116(v103, v124, v88);
    swift_getAssociatedConformanceWitness();
    v99 = v110;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v97(v98, v88);
    return (v97)(v99, v88);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a5;
  v82 = a6;
  v96 = a2;
  v78 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v75 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v74 = v73 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v95 = v73 - v21;
  v79 = v22;
  MEMORY[0x2A1C7C4A8](v20, v23);
  v87 = *(a4 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v73 - v24, v25);
  v77 = v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v94 = v73 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v34 = (v73 - v33);
  v76 = v35;
  v37 = MEMORY[0x2A1C7C4A8](v32, v36);
  v93 = v73 - v38;
  v88 = v39;
  v40 = *(v39 + 16);
  v41 = v37;
  v80 = a3;
  v43 = v42;
  v84 = v40;
  v85 = v39 + 16;
  (v40)(v37, a3);
  dispatch thunk of SIMDStorage.init()();
  v86 = a4;
  v44 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v44 < 0)
  {
    goto LABEL_10;
  }

  v45 = v44;
  v91 = v34;
  v92 = a7;
  v83 = a8;
  v46 = v86;
  v47 = v95;
  v48 = v84;
  if (v44)
  {
    v49 = 0;
    do
    {
      v48(v47, v41, v43);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v49;
    }

    while (v45 != v49);
  }

  v50 = v43;
  v51 = v43;
  v52 = *(v88 + 8);
  v90 = v88 + 8;
  v52(v41, v51);
  v53 = *(v87 + 32);
  v73[1] = v87 + 32;
  v73[0] = v53;
  v53(v93, v91, v46);
  dispatch thunk of SIMDStorage.init()();
  v54 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v54 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v55 = v96;
    v56 = v75;
    v57 = v74;
    v58 = v86;
    v91 = v52;
    if (v54)
    {
      v59 = 0;
      v89 = v54;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v60 = v91;
        v91(v56, v50);
        v60(v57, v50);
        dispatch thunk of SIMDStorage.subscript.setter();
        v55 = v96;
        ++v59;
      }

      while (v89 != v59);
    }

    v61 = v87;
    (*(v87 + 8))(v93, v58);
    v62 = v73[0];
    (v73[0])(v78, v94, v58);
    v63 = v95;
    v84(v95, v80, v50);
    v64 = v77;
    (*(v61 + 16))(v77, v55, v58);
    v65 = v88;
    v66 = (*(v88 + 80) + 56) & ~*(v88 + 80);
    v67 = (v79 + *(v61 + 80) + v66) & ~*(v61 + 80);
    v68 = swift_allocObject();
    v69 = v81;
    v70 = v82;
    *(v68 + 2) = v58;
    *(v68 + 3) = v69;
    v71 = v92;
    *(v68 + 4) = v70;
    *(v68 + 5) = v71;
    *(v68 + 6) = v83;
    (*(v65 + 32))(&v68[v66], v63, v50);
    v62(&v68[v67], v64, v58);
    return partial apply for closure #1 in static SIMD<>._vjpDivide(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpDivide(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  v184 = a5;
  v186 = a3;
  v167 = a2;
  v162 = a1;
  v194 = *(a9 + 16);
  v185 = *(*(v194 + 16) + 8);
  v12 = *(v185 + 16);
  v168 = a7;
  v13 = *(a7 + 48);
  swift_getAssociatedTypeWitness();
  v163 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v14);
  v159[1] = v159 - v15;
  v16 = swift_checkMetadataState();
  v18 = MEMORY[0x2A1C7C4A8](v16, v17);
  v171 = v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v174 = v159 - v22;
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v178 = v159 - v25;
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v177 = v159 - v28;
  v30 = MEMORY[0x2A1C7C4A8](v27, v29);
  v32 = v159 - v31;
  v34 = MEMORY[0x2A1C7C4A8](v30, v33);
  v160 = v159 - v35;
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v170 = v159 - v38;
  MEMORY[0x2A1C7C4A8](v37, v39);
  v182 = *(a6 - 8);
  v42 = MEMORY[0x2A1C7C4A8](v159 - v40, v41);
  v193 = v159 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x2A1C7C4A8](v42, v44);
  v192 = v159 - v46;
  v48 = MEMORY[0x2A1C7C4A8](v45, v47);
  v164 = v159 - v49;
  v51 = MEMORY[0x2A1C7C4A8](v48, v50);
  v172 = v159 - v52;
  v54 = MEMORY[0x2A1C7C4A8](v51, v53);
  v190 = v159 - v55;
  v57 = MEMORY[0x2A1C7C4A8](v54, v56);
  v169 = v159 - v58;
  v60 = MEMORY[0x2A1C7C4A8](v57, v59);
  v189 = v159 - v61;
  v63 = MEMORY[0x2A1C7C4A8](v60, v62);
  v191 = v159 - v64;
  v66 = MEMORY[0x2A1C7C4A8](v63, v65);
  v173 = v159 - v67;
  v69 = MEMORY[0x2A1C7C4A8](v66, v68);
  v166 = v159 - v70;
  v72 = MEMORY[0x2A1C7C4A8](v69, v71);
  v188 = v159 - v73;
  v75 = MEMORY[0x2A1C7C4A8](v72, v74);
  v77 = v159 - v76;
  v79 = MEMORY[0x2A1C7C4A8](v75, v78);
  v187 = v159 - v80;
  v199 = v81;
  v82 = *(v81 + 16);
  v83 = v79;
  v165 = a4;
  v200 = v84;
  v175 = v81 + 16;
  v176 = v82;
  (v82)(v79, a4);
  dispatch thunk of SIMDStorage.init()();
  v85 = v77;
  v179 = a6;
  v86 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v86 < 0)
  {
    goto LABEL_30;
  }

  v87 = v86;
  v88 = v179;
  v89 = v176;
  if (v86)
  {
    v90 = 0;
    do
    {
      v89(v32, v83, v200);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v90;
    }

    while (v87 != v90);
  }

  v196 = v32;
  v198 = *(v199 + 8);
  v199 += 8;
  v198(v83, v200);
  v180 = *(v182 + 32);
  v181 = v182 + 32;
  v180(v187, v85, v88);
  dispatch thunk of SIMDStorage.init()();
  v195 = v13;
  v91 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v91 < 0)
  {
    goto LABEL_30;
  }

  v92 = v198;
  v93 = v178;
  v94 = v177;
  v95 = v179;
  if (v91)
  {
    v96 = 0;
    v183 = v91;
    do
    {
      v197 = v96 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v97 = v200;
      dispatch thunk of static FloatingPoint./ infix(_:_:)();
      v92(v93, v97);
      v92(v94, v97);
      dispatch thunk of SIMDStorage.subscript.setter();
      v96 = v197;
    }

    while (v183 != v197);
  }

  v98 = *(v182 + 8);
  v99 = v187;
  v182 += 8;
  v187 = v98;
  (v98)(v99, v95);
  v180(v162, v188, v95);
  v100 = v200;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v101 = v170;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v102 = v160;
  v103 = v176;
  v176(v160, v101, v100);
  dispatch thunk of SIMDStorage.init()();
  v104 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v104 < 0)
  {
    goto LABEL_30;
  }

  v105 = v104;
  v106 = v196;
  v107 = v169;
  if (v104)
  {
    v108 = 0;
    do
    {
      v103(v106, v102, v200);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v108;
    }

    while (v105 != v108);
  }

  v109 = v102;
  v110 = v198;
  v198(v109, v200);
  v180(v189, v107, v95);
  dispatch thunk of SIMDStorage.init()();
  v111 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v111 < 0)
  {
    goto LABEL_30;
  }

  v112 = v111;
  v110(v170, v200);
  v113 = v178;
  v114 = v177;
  v115 = v195;
  v116 = v179;
  v117 = v189;
  if (v112)
  {
    v118 = 0;
    v188 = a10;
    v197 = v112;
    v119 = v200;
    do
    {
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      swift_getAssociatedConformanceWitness();
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v120 = v116;
      v121 = v115;
      v122 = v198;
      v198(v113, v119);
      v122(v114, v119);
      v115 = v121;
      v116 = v120;
      dispatch thunk of SIMDStorage.subscript.setter();
      v117 = v189;
      ++v118;
    }

    while (v197 != v118);
  }

  (v187)(v117, v116);
  v180(v191, v190, v116);
  v123 = v174;
  v124 = v200;
  dispatch thunk of static Numeric.* infix(_:_:)();
  v176(v171, v123, v124);
  v125 = v164;
  dispatch thunk of SIMDStorage.init()();
  v126 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v126 < 0)
  {
    goto LABEL_30;
  }

  v127 = v126;
  v128 = v171;
  v129 = v196;
  v130 = v176;
  if (v126)
  {
    v131 = 0;
    do
    {
      v130(v129, v128, v200);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v131;
    }

    while (v127 != v131);
  }

  v198(v128, v200);
  v180(v172, v125, v116);
  dispatch thunk of SIMDStorage.init()();
  v132 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v132 < 0)
  {
    goto LABEL_30;
  }

  v134 = v194;
  v133 = v195;
  v135 = v172;
  v136 = v178;
  v137 = v177;
  v138 = v179;
  if (v132)
  {
    v139 = 0;
    v190 = v132;
    do
    {
      v197 = v139 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v140 = v200;
      dispatch thunk of static FloatingPoint./ infix(_:_:)();
      v141 = v136;
      v142 = v136;
      v143 = v134;
      v144 = v133;
      v145 = v135;
      v146 = v198;
      v198(v141, v140);
      v146(v137, v140);
      v135 = v145;
      v133 = v144;
      v134 = v143;
      v136 = v142;
      dispatch thunk of SIMDStorage.subscript.setter();
      v139 = v197;
    }

    while (v190 != v197);
  }

  v147 = v187;
  (v187)(v135, v138);
  v198(v174, v200);
  v147(v191, v138);
  v180(v173, v192, v138);
  dispatch thunk of SIMDStorage.init()();
  v148 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v148 < 0)
  {
LABEL_30:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v149 = v173;
    v150 = v198;
    v151 = v178;
    v152 = v177;
    v153 = v179;
    if (v148)
    {
      v154 = 0;
      v192 = v148;
      do
      {
        v197 = v154 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v155 = v200;
        dispatch thunk of static Numeric.* infix(_:_:)();
        v150(v151, v155);
        v150(v152, v155);
        dispatch thunk of SIMDStorage.subscript.setter();
        v154 = v197;
      }

      while (v192 != v197);
    }

    v156 = v187;
    (v187)(v149, v153);
    v157 = v166;
    v180(v166, v193, v153);
    SIMD<>.sum()(v153, v194, v167);
    return v156(v157, v153);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2)
{
  v81 = a5;
  v82 = a6;
  v96 = a2;
  v78 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v75 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v74 = v73 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v95 = v73 - v21;
  v79 = v22;
  MEMORY[0x2A1C7C4A8](v20, v23);
  v87 = *(a4 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v73 - v24, v25);
  v77 = v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v94 = v73 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v34 = (v73 - v33);
  v76 = v35;
  v37 = MEMORY[0x2A1C7C4A8](v32, v36);
  v93 = v73 - v38;
  v88 = v39;
  v40 = *(v39 + 16);
  v41 = v37;
  v80 = a3;
  v43 = v42;
  v84 = v40;
  v85 = v39 + 16;
  (v40)(v37, a3);
  dispatch thunk of SIMDStorage.init()();
  v86 = a4;
  v44 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v44 < 0)
  {
    goto LABEL_10;
  }

  v45 = v44;
  v91 = v34;
  v92 = a7;
  v83 = a8;
  v46 = v86;
  v47 = v95;
  v48 = v84;
  if (v44)
  {
    v49 = 0;
    do
    {
      v48(v47, v41, v43);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v49;
    }

    while (v45 != v49);
  }

  v50 = v43;
  v51 = v43;
  v52 = *(v88 + 8);
  v90 = v88 + 8;
  v52(v41, v51);
  v53 = *(v87 + 32);
  v73[1] = v87 + 32;
  v73[0] = v53;
  v53(v93, v91, v46);
  dispatch thunk of SIMDStorage.init()();
  v54 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v54 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v55 = v96;
    v56 = v75;
    v57 = v74;
    v58 = v86;
    v91 = v52;
    if (v54)
    {
      v59 = 0;
      v89 = v54;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v60 = v91;
        v91(v56, v50);
        v60(v57, v50);
        dispatch thunk of SIMDStorage.subscript.setter();
        v55 = v96;
        ++v59;
      }

      while (v89 != v59);
    }

    v61 = v87;
    (*(v87 + 8))(v93, v58);
    v62 = v73[0];
    (v73[0])(v78, v94, v58);
    v63 = v95;
    v84(v95, v80, v50);
    v64 = v77;
    (*(v61 + 16))(v77, v55, v58);
    v65 = v88;
    v66 = (*(v88 + 80) + 56) & ~*(v88 + 80);
    v67 = (v79 + *(v61 + 80) + v66) & ~*(v61 + 80);
    v68 = swift_allocObject();
    v69 = v81;
    v70 = v82;
    *(v68 + 2) = v58;
    *(v68 + 3) = v69;
    v71 = v92;
    *(v68 + 4) = v70;
    *(v68 + 5) = v71;
    *(v68 + 6) = v83;
    (*(v65 + 32))(&v68[v66], v63, v50);
    v62(&v68[v67], v64, v58);
    return partial apply for closure #1 in static SIMD<>._jvpDivide(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpDivide(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v161 = a8;
  v135 = a7;
  v134 = a4;
  v132 = a2;
  v131 = a1;
  v153 = a9;
  v11 = *(a6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v141 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v143 = &v131 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v159 = &v131 - v21;
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v145 = &v131 - v24;
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v164 = &v131 - v27;
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v138 = &v131 - v30;
  MEMORY[0x2A1C7C4A8](v29, v31);
  v151 = *(a5 - 8);
  v34 = MEMORY[0x2A1C7C4A8](&v131 - v32, v33);
  v140 = &v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v142 = &v131 - v38;
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v157 = &v131 - v41;
  v43 = MEMORY[0x2A1C7C4A8](v40, v42);
  v137 = &v131 - v44;
  v46 = MEMORY[0x2A1C7C4A8](v43, v45);
  v156 = &v131 - v47;
  v49 = MEMORY[0x2A1C7C4A8](v46, v48);
  v133 = &v131 - v50;
  v52 = MEMORY[0x2A1C7C4A8](v49, v51);
  v155 = &v131 - v53;
  v55 = MEMORY[0x2A1C7C4A8](v52, v54);
  v57 = &v131 - v56;
  v59 = MEMORY[0x2A1C7C4A8](v55, v58);
  v154 = &v131 - v60;
  v62 = MEMORY[0x2A1C7C4A8](v59, v61);
  v139 = &v131 - v63;
  v65 = MEMORY[0x2A1C7C4A8](v62, v64);
  v158 = &v131 - v66;
  v163 = v67;
  v68 = *(v67 + 16);
  v69 = v65;
  v136 = a3;
  v71 = v70;
  v144 = v67 + 16;
  v149 = v68;
  (v68)(v65, a3);
  dispatch thunk of SIMDStorage.init()();
  v72 = v57;
  v73 = a5;
  v165 = v11;
  v74 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v74 < 0)
  {
    goto LABEL_26;
  }

  v75 = v74;
  v76 = v164;
  v77 = v149;
  if (v74)
  {
    v78 = 0;
    do
    {
      v77(v76, v69, v71);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v78;
    }

    while (v75 != v78);
  }

  v79 = *(v163 + 8);
  v150 = v71;
  v162 = v79;
  v163 += 8;
  v79(v69, v71);
  v146 = *(v151 + 32);
  v147 = v151 + 32;
  v146(v154, v72, v73);
  dispatch thunk of SIMDStorage.init()();
  v148 = v73;
  v80 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v80 < 0)
  {
    goto LABEL_26;
  }

  v81 = v159;
  v82 = v145;
  v83 = v165;
  v84 = v148;
  v85 = v150;
  if (v80)
  {
    v86 = 0;
    v152 = v80;
    do
    {
      v160 = v86 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static Numeric.* infix(_:_:)();
      v87 = v84;
      v88 = v83;
      v89 = v162;
      v162(v81, v85);
      v89(v82, v85);
      v83 = v88;
      v84 = v87;
      dispatch thunk of SIMDStorage.subscript.setter();
      v86 = v160;
    }

    while (v152 != v160);
  }

  v90 = *(v151 + 8);
  v91 = v154;
  v151 += 8;
  v154 = v90;
  (v90)(v91, v84);
  v146(v139, v155, v84);
  v149(v138, v132, v85);
  dispatch thunk of SIMDStorage.init()();
  v92 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v92 < 0)
  {
    goto LABEL_26;
  }

  v93 = v92;
  v94 = v164;
  v95 = v148;
  v96 = v149;
  v97 = v150;
  v98 = v138;
  v99 = v137;
  if (v92)
  {
    v100 = 0;
    do
    {
      v96(v94, v98, v97);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v100;
    }

    while (v93 != v100);
  }

  v162(v98, v97);
  v146(v156, v99, v95);
  dispatch thunk of SIMDStorage.init()();
  v101 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v101 < 0)
  {
    goto LABEL_26;
  }

  v102 = v159;
  v103 = v145;
  v104 = v148;
  v105 = v150;
  if (v101)
  {
    v106 = 0;
    v155 = v101;
    do
    {
      v160 = v106 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static Numeric.* infix(_:_:)();
      v107 = v105;
      v108 = v105;
      v109 = v162;
      v162(v102, v107);
      v109(v103, v108);
      v105 = v108;
      dispatch thunk of SIMDStorage.subscript.setter();
      v106 = v160;
    }

    while (v155 != v160);
  }

  v110 = v154;
  (v154)(v156, v104);
  v111 = v133;
  v146(v133, v157, v104);
  swift_getAssociatedConformanceWitness();
  v112 = v139;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v110(v111, v104);
  v110(v112, v104);
  v160 = *(v161 + 16);
  v113 = v143;
  dispatch thunk of static Numeric.* infix(_:_:)();
  v149(v141, v113, v105);
  dispatch thunk of SIMDStorage.init()();
  v114 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v114 < 0)
  {
    goto LABEL_26;
  }

  v115 = v114;
  v116 = v141;
  v117 = v140;
  v119 = v149;
  v118 = v150;
  if (v114)
  {
    v120 = 0;
    do
    {
      v119(v164, v116, v118);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v120;
    }

    while (v115 != v120);
  }

  v162(v116, v118);
  v146(v142, v117, v104);
  dispatch thunk of SIMDStorage.init()();
  v121 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v121 < 0)
  {
LABEL_26:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v122 = v142;
    v123 = v159;
    v124 = v148;
    v125 = v150;
    v126 = v145;
    if (v121)
    {
      v127 = 0;
      v157 = v121;
      do
      {
        v161 = v127 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v128 = v162;
        v162(v123, v125);
        v128(v126, v125);
        v123 = v159;
        dispatch thunk of SIMDStorage.subscript.setter();
        v127 = v161;
      }

      while (v157 != v161);
    }

    v129 = v154;
    (v154)(v122, v124);
    v162(v143, v125);
    return v129(v158, v124);
  }

  return result;
}

{
  v162 = a8;
  v135 = a7;
  v133 = a4;
  v150 = a2;
  v151 = a3;
  v152 = a9;
  v11 = *(a6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v146 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v145 = &v132 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v159 = &v132 - v21;
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v138 = &v132 - v24;
  MEMORY[0x2A1C7C4A8](v23, v25);
  v148 = *(a5 - 8);
  v28 = MEMORY[0x2A1C7C4A8](&v132 - v26, v27);
  v155 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v157 = &v132 - v32;
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v154 = &v132 - v35;
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v137 = &v132 - v38;
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v139 = &v132 - v41;
  v43 = MEMORY[0x2A1C7C4A8](v40, v42);
  v134 = &v132 - v44;
  v46 = MEMORY[0x2A1C7C4A8](v43, v45);
  v153 = &v132 - v47;
  v49 = MEMORY[0x2A1C7C4A8](v46, v48);
  v51 = &v132 - v50;
  v53 = MEMORY[0x2A1C7C4A8](v49, v52);
  v136 = &v132 - v54;
  v56 = MEMORY[0x2A1C7C4A8](v53, v55);
  v140 = &v132 - v57;
  v59 = MEMORY[0x2A1C7C4A8](v56, v58);
  v156 = &v132 - v60;
  v163 = v62;
  v164 = v61;
  v63 = *(v62 + 16);
  v64 = v59;
  v142 = v62 + 16;
  v141 = v63;
  (v63)(v59, a1);
  dispatch thunk of SIMDStorage.init()();
  v65 = a5;
  v66 = v11;
  v67 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v67 < 0)
  {
    goto LABEL_26;
  }

  v68 = v67;
  v69 = v141;
  v70 = v159;
  if (v67)
  {
    v71 = 0;
    do
    {
      v69(v70, v64, v164);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v71;
    }

    while (v68 != v71);
  }

  v72 = *(v163 + 8);
  v163 += 8;
  v161 = v72;
  v72(v64, v164);
  v73 = *(v148 + 32);
  v144 = v148 + 32;
  v143 = v73;
  v73(v136, v51, v65);
  dispatch thunk of SIMDStorage.init()();
  v147 = v65;
  v158 = v66;
  v74 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v74 < 0)
  {
    goto LABEL_26;
  }

  v75 = v145;
  v76 = v146;
  v77 = v158;
  v78 = v159;
  v79 = v147;
  v80 = v136;
  if (v74)
  {
    v81 = 0;
    v149 = v74;
    do
    {
      v160 = v81 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v82 = v164;
      dispatch thunk of static Numeric.* infix(_:_:)();
      v83 = v82;
      v84 = v78;
      v85 = v79;
      v86 = v77;
      v87 = v82;
      v88 = v161;
      v161(v76, v83);
      v88(v75, v87);
      v77 = v86;
      v79 = v85;
      v78 = v84;
      dispatch thunk of SIMDStorage.subscript.setter();
      v81 = v160;
    }

    while (v149 != v160);
  }

  v89 = *(v148 + 8);
  v148 += 8;
  v149 = v89;
  (v89)(v80, v79);
  v143(v140, v153, v79);
  v141(v138, v133, v164);
  dispatch thunk of SIMDStorage.init()();
  v90 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v90 < 0)
  {
    goto LABEL_26;
  }

  v91 = v90;
  v92 = v147;
  v93 = v159;
  v94 = v138;
  v95 = v137;
  v96 = v141;
  if (v90)
  {
    v97 = 0;
    do
    {
      v96(v93, v94, v164);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v97;
    }

    while (v91 != v97);
  }

  v161(v94, v164);
  v143(v139, v95, v92);
  dispatch thunk of SIMDStorage.init()();
  v98 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v98 < 0)
  {
    goto LABEL_26;
  }

  v99 = v145;
  v100 = v146;
  v101 = v147;
  v102 = v159;
  v103 = v139;
  if (v98)
  {
    v104 = 0;
    v153 = v98;
    do
    {
      v160 = v104 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v105 = v164;
      dispatch thunk of static Numeric.* infix(_:_:)();
      v106 = v102;
      v107 = v101;
      v108 = v161;
      v161(v100, v105);
      v108(v99, v105);
      v101 = v107;
      v102 = v106;
      dispatch thunk of SIMDStorage.subscript.setter();
      v104 = v160;
    }

    while (v153 != v160);
  }

  v109 = v149;
  (v149)(v103, v101);
  v110 = v134;
  v143(v134, v154, v101);
  swift_getAssociatedConformanceWitness();
  v111 = v140;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  (v109)(v110, v101);
  (v109)(v111, v101);
  dispatch thunk of SIMDStorage.init()();
  v112 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v112 < 0)
  {
    goto LABEL_26;
  }

  v113 = v145;
  v114 = v146;
  v115 = v158;
  v116 = v147;
  v117 = v161;
  if (v112)
  {
    v118 = 0;
    v154 = v112;
    do
    {
      v160 = v118 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v119 = v115;
      v120 = v117;
      v121 = v164;
      dispatch thunk of static Numeric.* infix(_:_:)();
      v120(v114, v121);
      v122 = v121;
      v117 = v120;
      v115 = v119;
      v117(v113, v122);
      dispatch thunk of SIMDStorage.subscript.setter();
      v118 = v160;
    }

    while (v154 != v160);
  }

  v143(v157, v155, v116);
  dispatch thunk of SIMDStorage.init()();
  v123 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v123 < 0)
  {
LABEL_26:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v125 = v145;
    v124 = v146;
    v126 = v147;
    v127 = v161;
    if (v123)
    {
      v128 = 0;
      v160 = v123;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v129 = v164;
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v127(v124, v129);
        v127(v125, v129);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v128;
      }

      while (v160 != v128);
    }

    v130 = v149;
    (v149)(v157, v126);
    return (v130)(v156, v126);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpMultiply(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a5;
  v86 = a6;
  v97 = a3;
  v82 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v79 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v78 = &v75 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v100 = &v75 - v21;
  v83 = v22;
  MEMORY[0x2A1C7C4A8](v20, v23);
  v92 = *(a4 - 8);
  v26 = MEMORY[0x2A1C7C4A8](&v75 - v24, v25);
  v81 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v90 = &v75 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v34 = &v75 - v33;
  v80 = v35;
  v37 = MEMORY[0x2A1C7C4A8](v32, v36);
  v99 = &v75 - v38;
  v93 = v39;
  v40 = *(v39 + 16);
  v41 = v37;
  v84 = a2;
  v43 = v42;
  v88 = v40;
  v89 = v39 + 16;
  (v40)(v37, a2);
  dispatch thunk of SIMDStorage.init()();
  v44 = v34;
  v91 = a4;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
    goto LABEL_10;
  }

  v46 = v45;
  v98 = a7;
  v87 = a8;
  v47 = v100;
  v48 = v91;
  v49 = v88;
  v101 = v44;
  if (v45)
  {
    v50 = 0;
    do
    {
      v49(v47, v41, v43);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v50;
    }

    while (v46 != v50);
  }

  v51 = *(v93 + 8);
  v75 = v93 + 8;
  v51(v41, v43);
  v52 = *(v92 + 32);
  v77 = v92 + 32;
  v76 = v52;
  v52(v99, v101, v48);
  dispatch thunk of SIMDStorage.init()();
  v53 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v53 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v54 = v79;
    v55 = v78;
    v56 = v90;
    v57 = v99;
    v95 = v51;
    v96 = v43;
    v58 = v91;
    if (v53)
    {
      v59 = 0;
      v94 = v53;
      do
      {
        v101 = v59 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v60 = v96;
        dispatch thunk of static Numeric.* infix(_:_:)();
        v61 = v95;
        v95(v54, v60);
        v61(v55, v60);
        dispatch thunk of SIMDStorage.subscript.setter();
        v57 = v99;
        v59 = v101;
      }

      while (v94 != v101);
    }

    v62 = v92;
    (*(v92 + 8))(v57, v58);
    v63 = v76;
    v76(v82, v56, v58);
    v64 = v81;
    (*(v62 + 16))(v81, v97, v58);
    v65 = v100;
    v66 = v96;
    v88(v100, v84, v96);
    v67 = (*(v62 + 80) + 56) & ~*(v62 + 80);
    v68 = v93;
    v69 = (v80 + *(v93 + 80) + v67) & ~*(v93 + 80);
    v70 = swift_allocObject();
    v71 = v85;
    v72 = v86;
    *(v70 + 2) = v58;
    *(v70 + 3) = v71;
    v73 = v98;
    *(v70 + 4) = v72;
    *(v70 + 5) = v73;
    *(v70 + 6) = v87;
    v63(&v70[v67], v64, v58);
    (*(v68 + 32))(&v70[v69], v65, v66);
    return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v74 = a7;
  v75 = a5;
  v83 = a4;
  v79 = a3;
  v88 = a2;
  v73 = a1;
  v10 = *(a7 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v91 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v12);
  v76 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v77 = &v71 - v17;
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v21 = &v71 - v20;
  v23 = MEMORY[0x2A1C7C4A8](v19, v22);
  v25 = &v71 - v24;
  v80 = *(a6 - 8);
  v27 = MEMORY[0x2A1C7C4A8](v23, v26);
  v89 = (&v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x2A1C7C4A8](v27, v29);
  v90 = &v71 - v31;
  v33 = MEMORY[0x2A1C7C4A8](v30, v32);
  v35 = &v71 - v34;
  MEMORY[0x2A1C7C4A8](v33, v36);
  v72 = &v71 - v37;
  dispatch thunk of SIMDStorage.init()();
  v38 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v38 < 0)
  {
    goto LABEL_14;
  }

  v78 = v25;
  v86 = v35;
  v87 = a9;
  v93 = v21;
  v40 = v76;
  v39 = v77;
  v84 = AssociatedTypeWitness;
  v85 = v10;
  v41 = a6;
  if (v38)
  {
    v42 = 0;
    v81 = (v91 + 8);
    v82 = v38;
    do
    {
      v92 = v42 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v43 = v84;
      dispatch thunk of static Numeric.* infix(_:_:)();
      v44 = *v81;
      (*v81)(v40, v43);
      v44(v39, v43);
      dispatch thunk of SIMDStorage.subscript.setter();
      v42 = v92;
    }

    while (v82 != v92);
  }

  v45 = v80;
  v46 = *(v80 + 32);
  v47 = v72;
  v48 = v86;
  v49 = v41;
  v92 = (v80 + 32);
  v86 = v46;
  (v46)(v72, v48, v41);
  v87 = *(v87 + 16);
  SIMD<>.sum()(v41, v87, v73);
  v50 = *(v45 + 8);
  v80 = v45 + 8;
  v83 = v50;
  v50(v47, v41);
  v51 = v84;
  v52 = *(v91 + 16);
  v52(v78, v75, v84);
  dispatch thunk of SIMDStorage.init()();
  v53 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v53 < 0)
  {
    goto LABEL_14;
  }

  v54 = v53;
  v55 = v93;
  v56 = v78;
  if (v53)
  {
    v57 = 0;
    do
    {
      v52(v55, v56, v51);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v57;
    }

    while (v54 != v57);
  }

  v58 = v91 + 8;
  v59 = *(v91 + 8);
  v59(v56, v51);
  (v86)(v90, v89, v49);
  dispatch thunk of SIMDStorage.init()();
  v60 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v60 < 0)
  {
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v61 = v79;
    v91 = v58;
    v63 = v76;
    v62 = v77;
    v89 = v59;
    v64 = v49;
    if (v60)
    {
      v65 = 0;
      v86 = v60;
      do
      {
        v92 = v65 + 1;
        v66 = v61;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static Numeric.* infix(_:_:)();
        v67 = v51;
        v68 = v51;
        v69 = v89;
        v89(v63, v67);
        v69(v62, v68);
        v51 = v68;
        dispatch thunk of SIMDStorage.subscript.setter();
        v61 = v66;
        v65 = v92;
      }

      while (v86 != v92);
    }

    return v83(v90, v64);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpMultiply(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2)
{
  v89 = a5;
  v90 = a6;
  v100 = a3;
  v86 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v83 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v82 = v79 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v104 = v79 - v21;
  v87 = v22;
  MEMORY[0x2A1C7C4A8](v20, v23);
  v95 = *(a4 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v79 - v24, v25);
  v85 = v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v103 = v79 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v34 = v79 - v33;
  v84 = v35;
  v37 = MEMORY[0x2A1C7C4A8](v32, v36);
  v102 = v79 - v38;
  v96 = v39;
  v40 = *(v39 + 16);
  v41 = v37;
  v88 = a2;
  v43 = v42;
  v92 = v40;
  v93 = v39 + 16;
  (v40)(v37, a2);
  dispatch thunk of SIMDStorage.init()();
  v44 = v34;
  v94 = a4;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
    goto LABEL_10;
  }

  v46 = v45;
  v101 = a7;
  v91 = a8;
  v47 = v94;
  v48 = v104;
  v49 = v92;
  v99 = v44;
  if (v45)
  {
    v50 = 0;
    do
    {
      v49(v48, v41, v43);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v50;
    }

    while (v46 != v50);
  }

  v51 = v41;
  v52 = v43;
  v53 = v43;
  v54 = *(v96 + 8);
  v79[1] = v96 + 8;
  v54(v51, v53);
  v55 = *(v95 + 32);
  v81 = v95 + 32;
  v80 = v55;
  v55(v102, v99, v47);
  dispatch thunk of SIMDStorage.init()();
  v56 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v56 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v57 = v83;
    v58 = v82;
    v59 = v102;
    v98 = v54;
    v99 = v52;
    v60 = v94;
    if (v56)
    {
      v61 = 0;
      v97 = v56;
      v62 = v98;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v63 = v99;
        dispatch thunk of static Numeric.* infix(_:_:)();
        v62(v57, v63);
        v62(v58, v63);
        dispatch thunk of SIMDStorage.subscript.setter();
        v59 = v102;
        ++v61;
      }

      while (v97 != v61);
    }

    v64 = v95;
    (*(v95 + 8))(v59, v60);
    v65 = v60;
    v66 = v60;
    v67 = v80;
    v80(v86, v103, v65);
    v68 = v104;
    v69 = v99;
    v92(v104, v88, v99);
    v70 = v85;
    (*(v64 + 16))(v85, v100, v66);
    v71 = v96;
    v72 = (*(v96 + 80) + 56) & ~*(v96 + 80);
    v73 = (v87 + *(v64 + 80) + v72) & ~*(v64 + 80);
    v74 = swift_allocObject();
    v75 = v89;
    v76 = v90;
    *(v74 + 2) = v66;
    *(v74 + 3) = v75;
    v77 = v101;
    *(v74 + 4) = v76;
    *(v74 + 5) = v77;
    *(v74 + 6) = v91;
    (*(v71 + 32))(&v74[v72], v68, v69);
    v67(&v74[v73], v70, v66);
    return partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v127 = a8;
  v104 = a7;
  v122 = a2;
  v123 = a4;
  v102 = a1;
  v105 = a9;
  v11 = *(a6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v113 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v112 = &v102 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v119 = &v102 - v21;
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v109 = &v102 - v24;
  MEMORY[0x2A1C7C4A8](v23, v25);
  v120 = *(a5 - 8);
  v28 = MEMORY[0x2A1C7C4A8](&v102 - v26, v27);
  v125 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v108 = &v102 - v32;
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v110 = &v102 - v35;
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v103 = &v102 - v38;
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v124 = &v102 - v41;
  v43 = MEMORY[0x2A1C7C4A8](v40, v42);
  v45 = &v102 - v44;
  v47 = MEMORY[0x2A1C7C4A8](v43, v46);
  v106 = &v102 - v48;
  v50 = MEMORY[0x2A1C7C4A8](v47, v49);
  v111 = &v102 - v51;
  v129 = v52;
  v53 = v50;
  v55 = v54;
  v114 = *(v52 + 16);
  v115 = v52 + 16;
  v114(v50, a3);
  dispatch thunk of SIMDStorage.init()();
  v56 = a5;
  v57 = v11;
  v58 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v58 < 0)
  {
    goto LABEL_18;
  }

  v59 = v58;
  v60 = v114;
  v130 = v57;
  v61 = v119;
  if (v58)
  {
    v62 = 0;
    do
    {
      v60(v61, v53, v55);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v62;
    }

    while (v59 != v62);
  }

  v63 = *(v129 + 8);
  v107 = v55;
  v128 = v63;
  v129 += 8;
  v63(v53, v55);
  v117 = *(v120 + 32);
  v118 = v120 + 32;
  v117(v106, v45, v56);
  dispatch thunk of SIMDStorage.init()();
  v116 = v56;
  v64 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v64 < 0)
  {
    goto LABEL_18;
  }

  v65 = v112;
  v66 = v113;
  v67 = v130;
  v68 = v116;
  v69 = v119;
  v70 = v107;
  v71 = v106;
  if (v64)
  {
    v72 = 0;
    v121 = v64;
    do
    {
      v126 = v72 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static Numeric.* infix(_:_:)();
      v73 = v69;
      v74 = v68;
      v75 = v67;
      v76 = v128;
      v128(v66, v70);
      v76(v65, v70);
      v67 = v75;
      v68 = v74;
      v69 = v73;
      dispatch thunk of SIMDStorage.subscript.setter();
      v72 = v126;
    }

    while (v121 != v126);
  }

  v122 = *(v120 + 8);
  v120 += 8;
  v122(v71, v68);
  v117(v111, v124, v68);
  (v114)(v109, v102, v70);
  dispatch thunk of SIMDStorage.init()();
  v77 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v77 < 0)
  {
    goto LABEL_18;
  }

  v78 = v77;
  v79 = v109;
  v80 = v108;
  v81 = v116;
  v82 = v119;
  v83 = v114;
  if (v77)
  {
    v84 = 0;
    do
    {
      v83(v82, v79, v70);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v84;
    }

    while (v78 != v84);
  }

  v128(v79, v70);
  v117(v110, v80, v81);
  dispatch thunk of SIMDStorage.init()();
  v85 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v85 < 0)
  {
LABEL_18:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v86 = v112;
    v87 = v113;
    v88 = v110;
    v89 = v116;
    v90 = v119;
    v91 = v107;
    if (v85)
    {
      v92 = 0;
      v124 = v85;
      do
      {
        v126 = v92 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static Numeric.* infix(_:_:)();
        v93 = v87;
        v94 = v87;
        v95 = v90;
        v96 = v89;
        v97 = v128;
        v128(v93, v91);
        v97(v86, v91);
        v89 = v96;
        v90 = v95;
        v87 = v94;
        dispatch thunk of SIMDStorage.subscript.setter();
        v92 = v126;
      }

      while (v124 != v126);
    }

    v98 = v122;
    v122(v88, v89);
    v99 = v103;
    v117(v103, v125, v89);
    swift_getAssociatedConformanceWitness();
    v100 = v111;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v98(v99, v89);
    return (v98)(v100, v89);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpDivide(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a5;
  v86 = a6;
  v97 = a3;
  v82 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v79 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v78 = &v75 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v100 = &v75 - v21;
  v83 = v22;
  MEMORY[0x2A1C7C4A8](v20, v23);
  v92 = *(a4 - 8);
  v26 = MEMORY[0x2A1C7C4A8](&v75 - v24, v25);
  v81 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v90 = &v75 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v34 = &v75 - v33;
  v80 = v35;
  v37 = MEMORY[0x2A1C7C4A8](v32, v36);
  v99 = &v75 - v38;
  v93 = v39;
  v40 = *(v39 + 16);
  v41 = v37;
  v84 = a2;
  v43 = v42;
  v88 = v40;
  v89 = v39 + 16;
  (v40)(v37, a2);
  dispatch thunk of SIMDStorage.init()();
  v44 = v34;
  v91 = a4;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
    goto LABEL_10;
  }

  v46 = v45;
  v98 = a7;
  v87 = a8;
  v47 = v100;
  v48 = v91;
  v49 = v88;
  v101 = v44;
  if (v45)
  {
    v50 = 0;
    do
    {
      v49(v47, v41, v43);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v50;
    }

    while (v46 != v50);
  }

  v51 = *(v93 + 8);
  v75 = v93 + 8;
  v51(v41, v43);
  v52 = *(v92 + 32);
  v77 = v92 + 32;
  v76 = v52;
  v52(v99, v101, v48);
  dispatch thunk of SIMDStorage.init()();
  v53 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v53 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v54 = v79;
    v55 = v78;
    v56 = v90;
    v57 = v99;
    v95 = v51;
    v96 = v43;
    v58 = v91;
    if (v53)
    {
      v59 = 0;
      v94 = v53;
      do
      {
        v101 = v59 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v60 = v96;
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v61 = v95;
        v95(v54, v60);
        v61(v55, v60);
        dispatch thunk of SIMDStorage.subscript.setter();
        v57 = v99;
        v59 = v101;
      }

      while (v94 != v101);
    }

    v62 = v92;
    (*(v92 + 8))(v57, v58);
    v63 = v76;
    v76(v82, v56, v58);
    v64 = v81;
    (*(v62 + 16))(v81, v97, v58);
    v65 = v100;
    v66 = v96;
    v88(v100, v84, v96);
    v67 = (*(v62 + 80) + 56) & ~*(v62 + 80);
    v68 = v93;
    v69 = (v80 + *(v93 + 80) + v67) & ~*(v93 + 80);
    v70 = swift_allocObject();
    v71 = v85;
    v72 = v86;
    *(v70 + 2) = v58;
    *(v70 + 3) = v71;
    v73 = v98;
    *(v70 + 4) = v72;
    *(v70 + 5) = v73;
    *(v70 + 6) = v87;
    v63(&v70[v67], v64, v58);
    (*(v68 + 32))(&v70[v69], v65, v66);
    return partial apply for closure #1 in static SIMD<>._vjpDivide(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t), uint64_t a8, char *a9)
{
  v112 = a5;
  v127 = a4;
  v123 = a2;
  v124 = a3;
  v109 = a1;
  v113 = a7;
  v10 = *(a7 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v131 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v11);
  v114 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v17 = &v107 - v16;
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v117 = &v107 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v107 - v23;
  v26 = MEMORY[0x2A1C7C4A8](v22, v25);
  v118 = &v107 - v27;
  v119 = *(a6 - 8);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v126 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v110 = &v107 - v33;
  v35 = MEMORY[0x2A1C7C4A8](v32, v34);
  v129 = &v107 - v36;
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v40 = &v107 - v39;
  v42 = MEMORY[0x2A1C7C4A8](v38, v41);
  v115 = &v107 - v43;
  v45 = MEMORY[0x2A1C7C4A8](v42, v44);
  v130 = &v107 - v46;
  v48 = MEMORY[0x2A1C7C4A8](v45, v47);
  v50 = &v107 - v49;
  MEMORY[0x2A1C7C4A8](v48, v51);
  v108 = &v107 - v52;
  dispatch thunk of SIMDStorage.init()();
  v53 = v50;
  v54 = v10;
  v55 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v55 < 0)
  {
    goto LABEL_22;
  }

  v125 = v40;
  v128 = a9;
  v122 = v53;
  v134 = v24;
  v56 = v17;
  v57 = v117;
  if (v55)
  {
    v58 = 0;
    v120 = (v131 + 8);
    v121 = v55;
    do
    {
      v133 = v58 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v59 = AssociatedTypeWitness;
      dispatch thunk of static FloatingPoint./ infix(_:_:)();
      v60 = *v120;
      (*v120)(v56, v59);
      v60(v57, v59);
      dispatch thunk of SIMDStorage.subscript.setter();
      v58 = v133;
    }

    while (v121 != v133);
  }

  v111 = v56;
  v61 = v119;
  v62 = *(v119 + 32);
  v63 = v108;
  v120 = (v119 + 32);
  v116 = v62;
  v62(v108, v122, a6);
  v64 = *(v128 + 2);
  SIMD<>.sum()(a6, v64, v109);
  v65 = *(v61 + 8);
  v119 = v61 + 8;
  v113 = v65;
  v65(v63, a6);
  v109 = v64;
  v112 = *(v64 + 16);
  dispatch thunk of static SignedNumeric.- prefix(_:)();
  dispatch thunk of SIMDStorage.init()();
  v133 = a6;
  v66 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v66 < 0)
  {
    goto LABEL_22;
  }

  v67 = v112;
  v68 = v127;
  v69 = v133;
  v70 = v111;
  v71 = v117;
  if (v66)
  {
    v72 = 0;
    v121 = (v131 + 8);
    v122 = v66;
    do
    {
      v128 = v72 + 1;
      v73 = v71;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v74 = v68;
      v75 = v69;
      v76 = v54;
      v77 = v67;
      v78 = AssociatedTypeWitness;
      dispatch thunk of static Numeric.* infix(_:_:)();
      v79 = *v121;
      (*v121)(v70, v78);
      v80 = v78;
      v67 = v77;
      v54 = v76;
      v69 = v75;
      v68 = v74;
      v79(v73, v80);
      dispatch thunk of SIMDStorage.subscript.setter();
      v71 = v73;
      v72 = v128;
    }

    while (v122 != v128);
  }

  v132 = v54;
  v116(v115, v125, v69);
  v81 = *(v131 + 16);
  v81(v114, v118, AssociatedTypeWitness);
  dispatch thunk of SIMDStorage.init()();
  v82 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v82 < 0)
  {
    goto LABEL_22;
  }

  v83 = v82;
  v84 = v114;
  v85 = v134;
  v86 = v117;
  v87 = v110;
  if (v82)
  {
    v88 = 0;
    do
    {
      v81(v85, v84, AssociatedTypeWitness);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v88;
    }

    while (v83 != v88);
  }

  v89 = *(v131 + 8);
  v131 += 8;
  v128 = v89;
  (v89)(v84, AssociatedTypeWitness);
  v116(v129, v87, v133);
  dispatch thunk of SIMDStorage.init()();
  v90 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v90 < 0)
  {
    goto LABEL_22;
  }

  v91 = v129;
  v92 = v115;
  v93 = v111;
  v94 = v86;
  if (v90)
  {
    v95 = 0;
    v125 = v90;
    do
    {
      v127 = v95 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v96 = AssociatedTypeWitness;
      dispatch thunk of static FloatingPoint./ infix(_:_:)();
      v97 = v92;
      v98 = v128;
      (v128)(v93, v96);
      v98(v86, v96);
      v92 = v97;
      dispatch thunk of SIMDStorage.subscript.setter();
      v91 = v129;
      v95 = v127;
    }

    while (v125 != v127);
  }

  v99 = v133;
  v100 = v113;
  v113(v91, v133);
  v100(v92, v99);
  (v128)(v118, AssociatedTypeWitness);
  v116(v130, v126, v99);
  dispatch thunk of SIMDStorage.init()();
  v101 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v101 < 0)
  {
LABEL_22:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v102 = v130;
    if (v101)
    {
      v103 = 0;
      v127 = v101;
      do
      {
        v129 = v103 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v104 = AssociatedTypeWitness;
        dispatch thunk of static Numeric.* infix(_:_:)();
        v105 = v128;
        (v128)(v93, v104);
        v105(v94, v104);
        dispatch thunk of SIMDStorage.subscript.setter();
        v102 = v130;
        v103 = v129;
      }

      while (v127 != v129);
    }

    return (v113)(v102, v133);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpDivide(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2)
{
  v85 = a5;
  v86 = a6;
  v97 = a3;
  v82 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v79 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v78 = &v75 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v100 = &v75 - v21;
  v83 = v22;
  MEMORY[0x2A1C7C4A8](v20, v23);
  v92 = *(a4 - 8);
  v26 = MEMORY[0x2A1C7C4A8](&v75 - v24, v25);
  v81 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v90 = &v75 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v34 = &v75 - v33;
  v80 = v35;
  v37 = MEMORY[0x2A1C7C4A8](v32, v36);
  v99 = &v75 - v38;
  v93 = v39;
  v40 = *(v39 + 16);
  v41 = v37;
  v84 = a2;
  v43 = v42;
  v88 = v40;
  v89 = v39 + 16;
  (v40)(v37, a2);
  dispatch thunk of SIMDStorage.init()();
  v44 = v34;
  v91 = a4;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
    goto LABEL_10;
  }

  v46 = v45;
  v98 = a7;
  v87 = a8;
  v47 = v100;
  v48 = v91;
  v49 = v88;
  v101 = v44;
  if (v45)
  {
    v50 = 0;
    do
    {
      v49(v47, v41, v43);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v50;
    }

    while (v46 != v50);
  }

  v51 = *(v93 + 8);
  v75 = v93 + 8;
  v51(v41, v43);
  v52 = *(v92 + 32);
  v77 = v92 + 32;
  v76 = v52;
  v52(v99, v101, v48);
  dispatch thunk of SIMDStorage.init()();
  v53 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v53 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v54 = v79;
    v55 = v78;
    v56 = v90;
    v57 = v99;
    v95 = v51;
    v96 = v43;
    v58 = v91;
    if (v53)
    {
      v59 = 0;
      v94 = v53;
      do
      {
        v101 = v59 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v60 = v96;
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v61 = v95;
        v95(v54, v60);
        v61(v55, v60);
        dispatch thunk of SIMDStorage.subscript.setter();
        v57 = v99;
        v59 = v101;
      }

      while (v94 != v101);
    }

    v62 = v92;
    (*(v92 + 8))(v57, v58);
    v63 = v76;
    v76(v82, v56, v58);
    v64 = v81;
    (*(v62 + 16))(v81, v97, v58);
    v65 = v100;
    v66 = v96;
    v88(v100, v84, v96);
    v67 = (*(v62 + 80) + 56) & ~*(v62 + 80);
    v68 = v93;
    v69 = (v80 + *(v93 + 80) + v67) & ~*(v93 + 80);
    v70 = swift_allocObject();
    v71 = v85;
    v72 = v86;
    *(v70 + 2) = v58;
    *(v70 + 3) = v71;
    v73 = v98;
    *(v70 + 4) = v72;
    *(v70 + 5) = v73;
    *(v70 + 6) = v87;
    v63(&v70[v67], v64, v58);
    (*(v68 + 32))(&v70[v69], v65, v66);
    return partial apply for closure #1 in static SIMD<>._jvpDivide(lhs:rhs:);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpInit(repeating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))@<X0>(uint64_t a1@<X8>)
{
  v41 = a6;
  v42 = a7;
  v40 = a5;
  v37 = *(a3 - 8);
  v38 = a1;
  MEMORY[0x2A1C7C4A8](a1, a2);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v35 = &v34 - v18;
  v36 = v12;
  v20 = v19;
  v21 = *(v12 + 16);
  v34 = v12 + 16;
  v21();
  dispatch thunk of SIMDStorage.init()();
  v22 = a3;
  v23 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v23 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v24 = v23;
    v43 = v22;
    v25 = v35;
    if (v23)
    {
      v26 = 0;
      do
      {
        (v21)(v16, v25, v20);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v26;
      }

      while (v24 != v26);
    }

    (*(v36 + 8))(v25, v20);
    v27 = v43;
    (*(v37 + 32))(v38, v9, v43);
    v28 = swift_allocObject();
    v29 = v39;
    v30 = v40;
    v28[2] = v27;
    v28[3] = v29;
    v32 = v41;
    v31 = v42;
    v28[4] = v30;
    v28[5] = v32;
    v28[6] = v31;
    return partial apply for closure #1 in static SIMD<>._vjpInit(repeating:);
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD.init(repeating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))@<X0>(uint64_t a1@<X8>)
{
  static SIMD<>._vjpInit(repeating:)(a1, a2, a3, a4, a5, a6, a7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return partial apply for closure #1 in static SIMD<>._vjpInit(repeating:);
}

uint64_t (*static SIMD<>._jvpInit(repeating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))@<X0>(uint64_t a1@<X8>)
{
  v41 = a6;
  v42 = a7;
  v40 = a5;
  v37 = *(a3 - 8);
  v38 = a1;
  MEMORY[0x2A1C7C4A8](a1, a2);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v35 = &v34 - v18;
  v36 = v12;
  v20 = v19;
  v21 = *(v12 + 16);
  v34 = v12 + 16;
  v21();
  dispatch thunk of SIMDStorage.init()();
  v22 = a3;
  v23 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v23 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v24 = v23;
    v43 = v22;
    v25 = v35;
    if (v23)
    {
      v26 = 0;
      do
      {
        (v21)(v16, v25, v20);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v26;
      }

      while (v24 != v26);
    }

    (*(v36 + 8))(v25, v20);
    v27 = v43;
    (*(v37 + 32))(v38, v9, v43);
    v28 = swift_allocObject();
    v29 = v39;
    v30 = v40;
    v28[2] = v27;
    v28[3] = v29;
    v32 = v41;
    v31 = v42;
    v28[4] = v30;
    v28[5] = v32;
    v28[6] = v31;
    return partial apply for closure #1 in static SIMD<>._jvpInit(repeating:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpInit(repeating:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v24 = v6;
  v12 = *(v6 + 16);
  v14 = &v23 - v13;
  v16 = v15;
  v17 = v12;
  v12();
  dispatch thunk of SIMDStorage.init()();
  v25 = a1;
  v18 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v18 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v26 = a3;
    v19 = v16;
    if (v18)
    {
      v20 = 0;
      do
      {
        v21 = v18;
        (v17)(v10, v14, v19);
        dispatch thunk of SIMDStorage.subscript.setter();
        v18 = v21;
        ++v20;
      }

      while (v21 != v20);
    }

    return (*(v24 + 8))(v14, v19);
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD.init(repeating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1)
{
  static SIMD<>._jvpInit(repeating:)(a1, a2, a3, a4, a5, a6, a7);
  v14 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  v16[7] = partial apply for closure #1 in static SIMD<>._jvpInit(repeating:);
  v16[8] = v14;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.SIMDStorage.Scalar) -> (@out A);
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    goto LABEL_5;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
LABEL_5:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Index out of range", 18, 2, "Swift/ContiguousArrayBuffer.swift", 33, 2, 704, 0);
    __break(1u);
  }
}

uint64_t (*Array.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = *(a4 - 8);
  v9 = v8;
  a1[1] = a4;
  a1[2] = v8;
  v10 = *(v8 + 64);
  if (MEMORY[0x29EDCA1B0])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  a1[3] = v11;
  IsNativeType = Array._hoistableIsNativeTypeChecked()();
  Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (IsNativeType)
  {
    (*(v9 + 16))(v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, a4);
    return Array.subscript.read;
  }

  v15 = _ArrayBuffer._getElementSlowPath(_:)();
  if (v10 == 8)
  {
    *a1 = v15;
    (*(v9 + 16))(v12, a1, a4);
    swift_unknownObjectRelease();
    return Array.subscript.read;
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Can't unsafeBitCast between types of different sizes", 52, 2, "Swift/Builtin.swift", 19, 2, 96, 0);
  __break(1u);
  return result;
}

void Array.subscript.read(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

uint64_t partial apply for closure #1 in Array<A>.DifferentiableView._vjpBase()(uint64_t a1, uint64_t (*a2)(uint64_t, void, void))
{
  a2(a1, *(v2 + 16), *(v2 + 24));
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [A.Differentiable.TangentVector]<A>.DifferentiableView) -> (@owned [A.Differentiable.TangentVector]<A>.DifferentiableView)(uint64_t a1)
{
  v2 = (*(v1 + 32))();

  return v2;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed A) -> (@out A)(uint64_t a1)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed A) -> (@out A)(a1);
}

{
  v3 = *(v1 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_299C2018C()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t objectdestroy_81Tm()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_299C20314()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@in A.Differentiable.TangentVector, @inout [A.Differentiable.TangentVector]<A>.DifferentiableView) -> ()(uint64_t a1, uint64_t a2)
{
  (*(v2 + 32))(a2, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a1, AssociatedTypeWitness);
}

uint64_t specialized Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = static Array._allocateUninitialized(_:)();
  if (a2 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  else
  {
    v8 = v6;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    type metadata accessor for Array();
    return v8;
  }

  return result;
}

uint64_t partial apply for closure #1 in static Array<A>._jvpInit(repeating:count:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return specialized Array.init(repeating:count:)(a1, v3, AssociatedTypeWitness);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Differentiable.TangentVector) -> (@owned [A.Differentiable.TangentVector]<A>.DifferentiableView)(uint64_t a1)
{
  v3 = (*(v1 + 32))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v3;
}

uint64_t sub_299C206A8()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_299C20760()
{

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

__int16 partial apply for closure #1 in static Float16._vjpMultiplyAssign(_:_:)@<H0>(short float *a1@<X0>)
{
  *&result = *(v1 + 16) * *a1;
  *a1 = *(v1 + 18) * *a1;
  return result;
}

__int16 partial apply for closure #1 in static Float16._jvpMultiplyAssign(_:_:)@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  *&result = (*(v2 + 18) * *a2.n128_u16) + (*(v2 + 16) * *a1);
  *a1 = *&result;
  return result;
}

__int16 partial apply for closure #1 in static Float16._vjpDivideAssign(_:_:)@<H0>(short float *a1@<X0>)
{
  v2 = *(v1 + 18);
  *&result = *a1 * (-*(v1 + 16) / (v2 * v2));
  *a1 = *a1 / v2;
  return result;
}

__int16 partial apply for closure #1 in static Float16._jvpDivideAssign(_:_:)@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  *&result = ((*(v2 + 16) * *a1) - (*(v2 + 18) * *a2.n128_u16)) / (*(v2 + 16) * *(v2 + 16));
  *a1 = *&result;
  return result;
}

float partial apply for closure #1 in static Float._vjpMultiplyAssign(_:_:)(float *a1)
{
  result = *(v1 + 16) * *a1;
  *a1 = *(v1 + 20) * *a1;
  return result;
}

float partial apply for closure #1 in static Float._jvpMultiplyAssign(_:_:)(float *a1, float a2)
{
  result = (*(v2 + 20) * a2) + (*(v2 + 16) * *a1);
  *a1 = result;
  return result;
}

float partial apply for closure #1 in static Float._vjpDivideAssign(_:_:)(float *a1)
{
  v2 = *(v1 + 20);
  result = *a1 * (-*(v1 + 16) / (v2 * v2));
  *a1 = *a1 / v2;
  return result;
}

float partial apply for closure #1 in static Float._jvpDivideAssign(_:_:)(float *a1, float a2)
{
  result = ((*(v2 + 16) * *a1) - (*(v2 + 20) * a2)) / (*(v2 + 16) * *(v2 + 16));
  *a1 = result;
  return result;
}

double partial apply for closure #1 in static Double._vjpMultiplyAssign(_:_:)(double *a1)
{
  result = *(v1 + 16) * *a1;
  *a1 = *(v1 + 24) * *a1;
  return result;
}

double partial apply for closure #1 in static Double._jvpMultiplyAssign(_:_:)(double *a1, double a2)
{
  result = *(v2 + 24) * a2 + *(v2 + 16) * *a1;
  *a1 = result;
  return result;
}

double partial apply for closure #1 in static Double._vjpDivideAssign(_:_:)(double *a1)
{
  v2 = *(v1 + 24);
  result = *a1 * (-*(v1 + 16) / (v2 * v2));
  *a1 = *a1 / v2;
  return result;
}

double partial apply for closure #1 in static Double._jvpDivideAssign(_:_:)(double *a1, double a2)
{
  result = (*(v2 + 16) * *a1 - *(v2 + 24) * a2) / (*(v2 + 16) * *(v2 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_299C20B00()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t objectdestroy_325Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2A1C733A0](v0, v7 + v6, v4 | 7);
}

uint64_t objectdestroy_331Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

float partial apply for closure #1 in _vjpPow(_:_:)(float a1)
{
  v3 = *(v1 + 20);
  if (v3 > 0.0)
  {
    v5 = *(v1 + 20);
  }

  else
  {
    v5 = 1.0;
  }

  v4 = *(v1 + 16);
  v6 = (v4 * a1) * powf(v3, v4 + -1.0);
  logf(v5);
  return v6;
}

float partial apply for closure #1 in _jvpPow(_:_:)(float a1, float a2)
{
  v5 = v2[6];
  if (v2[5] > 0.0)
  {
    v6 = v2[5];
  }

  else
  {
    v6 = 1.0;
  }

  v4 = v2[4];
  v7 = (v4 * a1) * powf(v2[5], v4 + -1.0);
  return v7 + ((v5 * a2) * logf(v6));
}

long double partial apply for closure #1 in _vjpPow(_:_:)(double a1)
{
  v3 = *(v1 + 24);
  if (v3 > 0.0)
  {
    v5 = *(v1 + 24);
  }

  else
  {
    v5 = 1.0;
  }

  v4 = *(v1 + 16);
  v6 = v4 * a1 * pow(v3, v4 + -1.0);
  log(v5);
  return v6;
}

long double partial apply for closure #1 in _jvpPow(_:_:)(double a1, double a2)
{
  v5 = v2[4];
  if (v2[3] > 0.0)
  {
    v6 = v2[3];
  }

  else
  {
    v6 = 1.0;
  }

  v4 = v2[2];
  v7 = v4 * a1 * pow(v2[3], v4 + -1.0);
  return v7 + v5 * a2 * log(v6);
}

uint64_t sub_299C2170C()
{

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);
  (v8)((AssociatedTypeWitness - 8), a1, a3, AssociatedTypeWitness);

  return v8(a2, a3, AssociatedTypeWitness);
}

{
  return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpAdd(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpAdd(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, MEMORY[0x29EDC9E50]);
}

{
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, MEMORY[0x29EDC9E50], closure #1 in static SIMD<>._jvpAdd(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, MEMORY[0x29EDC9E50], closure #1 in static SIMD<>._jvpAdd(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:)(a1, a2, a3, v3[2], v3[3], v3[4], v3[5], v3[6], v3[7]);
}

{
  return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpSubtract(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, MEMORY[0x29EDC9E58]);
}

{
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, MEMORY[0x29EDC9E58], closure #1 in static SIMD<>._jvpAdd(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, MEMORY[0x29EDC9E58], closure #1 in static SIMD<>._jvpAdd(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)(a1, a2, closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)(a1, a2, closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._jvpDivide(lhs:rhs:)(a1, a2, closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._vjpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpDivide(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpDivide(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpDivide(lhs:rhs:));
}

uint64_t objectdestroy_1190Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2A1C733A0](v0, v7 + v6, v4 | 7);
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)(a1, a2, closure #1 in static SIMD<>._jvpDivide(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._jvpDivide(lhs:rhs:)(a1, a2, closure #1 in static SIMD<>._jvpDivide(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)(a1, a2, closure #1 in static SIMD<>._jvpDivide(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(*(v3 + 16) - 8);
  v5 = *(v4 + 80);
  return a3(a1, a2, v3 + ((v5 + 48) & ~v5), v3 + ((*(v4 + 64) + v5 + ((v5 + 48) & ~v5)) & ~v5));
}

uint64_t partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 2);
  v10 = *(v4 + 3);
  v11 = *(v4 + 4);
  v12 = *(v4 + 5);
  v13 = *(v4 + 6);
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  return a4(a1, a2, a3, &v4[v15], &v4[(v15 + *(v14 + 64) + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80)], v9, v10, v11, v12, v13);
}

{
  v7 = *(v4 + 2);
  v8 = *(v4 + 3);
  v9 = *(v4 + 4);
  v10 = *(v4 + 5);
  v11 = *(v4 + 6);
  v12 = (*(*(v7 - 8) + 80) + 56) & ~*(*(v7 - 8) + 80);
  v13 = v12 + *(*(v7 - 8) + 64);
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  return a4(a1, a2, a3, &v4[v12], &v4[(v13 + *(v14 + 80)) & ~*(v14 + 80)], v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_1226Tm()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  (*(v3 + 8))(v0 + v5, AssociatedTypeWitness);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x2A1C733A0](v0, v8 + v9, v10 | 7);
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v3 + 2);
  v8 = *(v3 + 3);
  v9 = *(v3 + 4);
  v10 = *(v3 + 5);
  v11 = *(v3 + 6);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  return a3(a1, a2, &v3[v13], &v3[(v13 + *(v12 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80)], v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_1229Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = v4 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return MEMORY[0x2A1C733A0](v0, v9 + v10, v11 | 7);
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 2);
  v6 = *(v3 + 3);
  v7 = *(v3 + 4);
  v8 = *(v3 + 5);
  v9 = *(v3 + 6);
  v10 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v11 = v10 + *(*(v5 - 8) + 64);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  return a3(a1, a2, &v3[v10], &v3[(v11 + *(v12 + 80)) & ~*(v12 + 80)], v5, v6, v7, v8, v9);
}

uint64_t sub_299C226F4()
{

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.SIMDStorage.Scalar) -> (@out A)(uint64_t a1)
{
  (*(v1 + 56))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

unint64_t lazy protocol witness table accessor for type AnyDerivative and conformance AnyDerivative()
{
  result = lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative;
  if (!lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative;
  if (!lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative;
  if (!lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative);
  }

  return result;
}

__n128 sub_299C22EF8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AnyDerivative(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t initializeWithCopy for AnyDifferentiable(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

uint64_t assignWithTake for AnyDerivative(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyDifferentiable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyDifferentiable(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for Optional<A>.TangentVector(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Optional<A>.TangentVector(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(v6 + 80);
  if (v8 > 7 || (*(v6 + 80) & 0x100000) != 0 || v7 > 0x18)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v8 + 16) & ~v8));

    return a1;
  }

  v12 = AssociatedTypeWitness;
  if (!(*(v6 + 48))(a2, 1, AssociatedTypeWitness))
  {
    (*(v6 + 16))(a1, a2, v12);
    (*(v6 + 56))(a1, 0, 1, v12);
    return a1;
  }

  return memcpy(a1, a2, v7);
}

uint64_t destroy for Optional<A>.TangentVector(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  result = (*(v6 + 48))(a1, 1, AssociatedTypeWitness);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, AssociatedTypeWitness);
  }

  return result;
}

void *initializeWithCopy for Optional<A>.TangentVector(void *a1, const void *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  if ((*(v6 + 48))(a2, 1, AssociatedTypeWitness))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v6 + 56))(a1, 0, 1, AssociatedTypeWitness);
    return a1;
  }
}

void *assignWithCopy for Optional<A>.TangentVector(void *a1, void *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, AssociatedTypeWitness);
  v9 = v7(a2, 1, AssociatedTypeWitness);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, AssociatedTypeWitness);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, AssociatedTypeWitness);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v6 + 56))(a1, 0, 1, AssociatedTypeWitness);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

void *initializeWithTake for Optional<A>.TangentVector(void *a1, const void *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  if ((*(v6 + 48))(a2, 1, AssociatedTypeWitness))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
    (*(v6 + 56))(a1, 0, 1, AssociatedTypeWitness);
    return a1;
  }
}

void *assignWithTake for Optional<A>.TangentVector(void *a1, void *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, AssociatedTypeWitness);
  v9 = v7(a2, 1, AssociatedTypeWitness);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, AssociatedTypeWitness);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 40))(a1, a2, AssociatedTypeWitness);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
    (*(v6 + 56))(a1, 0, 1, AssociatedTypeWitness);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t getEnumTagSinglePayload for Optional<A>.TangentVector(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((a2 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
        }

        if (v9)
        {
          if (v9 > 3)
          {
            LODWORD(v9) = 4;
          }

          if (v9 > 2)
          {
            if (v9 == 3)
            {
              LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v9) = *a1;
            }
          }

          else if (v9 == 1)
          {
            LODWORD(v9) = *a1;
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        return v8 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v7 < 2)
  {
    return 0;
  }

  v15 = (*(v6 + 48))(a1);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for Optional<A>.TangentVector(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v10 = 0;
    v11 = *(v8 + 64) + 1;
  }

  if (a3 <= v10)
  {
    goto LABEL_15;
  }

  if (v11 <= 3)
  {
    v12 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v12))
    {
      v7 = 4;
      if (v10 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }

LABEL_15:
    if (v10 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v7 = 1;
  if (v10 >= a2)
  {
LABEL_25:
    if (v7 > 1)
    {
      if (v7 != 2)
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

    else if (v7)
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
    if (v9 >= 2)
    {
      v17 = *(v8 + 56);

      v17(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v14 = ~v10 + a2;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v14;
    v15 = 1;
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = (v14 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_39:
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v16 = v14 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_39;
  }

  if (v11 == 2)
  {
    *a1 = v16;
    if (v7 > 1)
    {
LABEL_43:
      if (v7 == 2)
      {
        *&a1[v11] = v15;
      }

      else
      {
        *&a1[v11] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v7 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v7)
  {
    a1[v11] = v15;
  }
}

uint64_t type metadata completion function for _ConcreteDerivativeBox(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _ConcreteDerivativeBox(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 16) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1, a2);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for _ConcreteDerivativeBox(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for _ConcreteDerivativeBox(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>)
  {
    swift_getCanonicalSpecializedMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>);
  }

  return result;
}

uint64_t outlined init with copy of AnyDerivative(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Array.subscript.getter()
{
  return MEMORY[0x2A1C726F8]();
}

{
  return MEMORY[0x2A1C72700]();
}