uint64_t specialized static SIMD<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a2;
  v80 = a5;
  v78 = *(a5 + 8);
  v9 = *(v78 + 3);
  v10 = *(a4 + 48);
  swift_getAssociatedTypeWitness(255, v10, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v12 = v11;
  swift_getAssociatedTypeWitness(0, v9, v11, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v70 = v13;
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v74 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v84 = v60 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v73 = v60 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v72 = v60 - v25;
  v26 = swift_checkMetadataState(0, v12);
  v27 = *(v26 - 1);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v71 = v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v69 = v60 - v32;
  (*(v10 + 48))(a3, v10);
  v33 = *(v10 + 40);
  v75 = a6;
  v79 = a3;
  v77 = v10;
  result = v33(a3, v10);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = result;
  if (result)
  {
    v37 = v78;
    v38 = type metadata accessor for Range(0, v26, *(*(v78 + 4) + 8), v35);
    v39 = v77;
    v40 = 0;
    v68 = *(swift_getAssociatedConformanceWitness(v77, v79, v26, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable) + 8);
    v66 = *(v68 + 8);
    v67 = v68 + 8;
    v63 = v80 + 88;
    v62 = (v27 + 16);
    v61 = (v14 + 8);
    v60[2] = v37 + 96;
    v60[1] = v39 + 64;
    v83 = a1;
    v64 = v38;
    v65 = v36;
    do
    {
      if (v66(a1, a1 + *(v38 + 36), v26, v68))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v81 = v40;
      v82 = v40 + 1;
      v41 = v80;
      v42 = v71;
      (*(v80 + 88))(v71, a1, v26, v80);
      v43 = v78;
      v44 = v70;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v78, v26, v70, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
      v46 = v26;
      v47 = *(AssociatedConformanceWitness + 96);
      v48 = v72;
      v47(v42, v46, v43, v44, AssociatedConformanceWitness);
      (*v62)(v42, v83, v46);
      v47(v42, v46, v43, v44, AssociatedConformanceWitness);
      v49 = swift_getAssociatedConformanceWitness(v41, v46, v44, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
      swift_getAssociatedConformanceWitness(v41, v46, v44, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: UnsignedInteger);
      v50 = v74;
      specialized RandomNumberGenerator.next<A>(upperBound:)(v48, v44, v49, v74);
      v51 = *v61;
      (*v61)(v48, v44);
      v52 = *(v49 + 80);
      v53 = v73;
      v54 = v49;
      a1 = v83;
      v55 = v84;
      v52(v73, v50, v44, v54);
      v51(v50, v44);
      v51(v55, v44);
      v26 = v46;
      v56 = v69;
      v57 = v53;
      v58 = v65;
      (*(v43 + 12))(v57, v44, AssociatedConformanceWitness, v46, v43);
      v59 = v56;
      v38 = v64;
      result = (*(v77 + 8))(v59, v81, v79);
      v40 = v82;
    }

    while (v58 != v82);
  }

  return result;
}

uint64_t static SIMD<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, swift *a7@<X6>, uint64_t a8@<X8>)
{
  v80 = a4;
  v81 = a6;
  v79 = a2;
  v89 = a7;
  v83 = *(a7 + 1);
  v11 = *(v83 + 3);
  v12 = *(a5 + 48);
  swift_getAssociatedTypeWitness(255, v12, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v14 = v13;
  swift_getAssociatedTypeWitness(0, v11, v13, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v72 = v15;
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v77 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v76 = v62 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v75 = v62 - v25;
  MEMORY[0x1EEE9AC00](v24, v26);
  v74 = v62 - v27;
  v28 = swift_checkMetadataState(0, v14);
  v29 = *(v28 - 1);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v73 = v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v33);
  v71 = v62 - v34;
  (*(v12 + 48))(a3, v12);
  v35 = *(v12 + 40);
  v78 = a8;
  v84 = a3;
  v82 = v12;
  result = v35(a3, v12);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v38 = result;
  if (result)
  {
    v39 = v83;
    v40 = type metadata accessor for Range(0, v28, *(*(v83 + 4) + 8), v37);
    v41 = v29;
    v42 = v82;
    v43 = 0;
    v70 = *(swift_getAssociatedConformanceWitness(v82, v84, v28, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable) + 8);
    v68 = *(v70 + 8);
    v69 = v70 + 8;
    v65 = v89 + 88;
    v64 = (v41 + 16);
    v63 = (v16 + 8);
    v62[1] = v39 + 96;
    v62[0] = v42 + 64;
    v88 = a1;
    v67 = v38;
    v66 = v40;
    do
    {
      if (v68(a1, a1 + *(v40 + 36), v28, v70))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v87 = v43 + 1;
      v44 = v73;
      (*(v89 + 11))(v73, a1, v28);
      v45 = v83;
      v46 = v72;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v83, v28, v72, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
      v48 = v28;
      v49 = *(AssociatedConformanceWitness + 96);
      v50 = v74;
      v85 = AssociatedConformanceWitness;
      v49(v44, v48, v45, v46, AssociatedConformanceWitness);
      (*v64)(v44, v88, v48);
      v86 = v43;
      v51 = v76;
      v49(v44, v48, v45, v46, AssociatedConformanceWitness);
      v52 = swift_getAssociatedConformanceWitness(v89, v48, v46, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
      v53 = v77;
      RandomNumberGenerator.next<A>(upperBound:)(v50, v80, v46, v81, v52, v77);
      v54 = *v63;
      (*v63)(v50, v46);
      v55 = *(v52 + 80);
      v56 = v75;
      v57 = v52;
      a1 = v88;
      v55(v75, v53, v46, v57);
      v54(v53, v46);
      v54(v51, v46);
      v28 = v48;
      v58 = v67;
      v59 = *(v45 + 12);
      v60 = v71;
      v61 = v45;
      v40 = v66;
      v59(v56, v46, v85, v28, v61);
      result = (*(v82 + 8))(v60, v86, v84);
      v43 = v87;
    }

    while (v58 != v87);
  }

  return result;
}

uint64_t specialized static SIMD<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, swift *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v11, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v23 - v15;
  (*(v11 + 48))(a3, v11);
  result = (*(v11 + 40))(a3, v11);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v18 = result;
  v23 = a6;
  v24 = a3;
  if (result)
  {
    v19 = a5;
    v20 = v13;
    v21 = 0;
    do
    {
      v22 = v19;
      specialized static FixedWidthInteger.random<A>(in:using:)(a1, a2, v20, v19, v16);
      result = (*(v11 + 64))(v16, v21, v24, v11);
      v19 = v22;
      ++v21;
    }

    while (v18 != v21);
  }

  return result;
}

uint64_t static SIMD<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a7;
  v30 = a6;
  v13 = *(a5 + 48);
  swift_getAssociatedTypeWitness(0, v13, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v29 - v17;
  (*(v13 + 48))(a3, v13);
  result = (*(v13 + 40))(a3, v13);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v32 = a8;
  v33 = a3;
  v20 = a4;
  v21 = v29;
  v22 = v30;
  v34 = v13;
  if (result)
  {
    v23 = a2;
    v24 = a1;
    v25 = 0;
    v31 = v34 + 64;
    do
    {
      v26 = result;
      v27 = v23;
      v28 = v20;
      static FixedWidthInteger.random<A>(in:using:)(v24, v23, v15, v20, v21, v22, v18);
      (*(v34 + 64))(v18, v25, v33);
      v23 = v27;
      result = v26;
      v20 = v28;
      ++v25;
    }

    while (v26 != v25);
  }

  return result;
}

uint64_t static SIMD<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  return static SIMD<>.random<A>(in:using:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, static BinaryFloatingPoint<>.random<A>(in:using:));
}

{
  return static SIMD<>.random<A>(in:using:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, static BinaryFloatingPoint<>.random<A>(in:using:));
}

uint64_t static SIMD<>.random(in:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  return specialized static SIMD<>.random<A>(in:using:)(a1, a2, a2, a3, a4, a5, specialized static BinaryFloatingPoint<>.random<A>(in:using:), a6);
}

{
  return specialized static SIMD<>.random<A>(in:using:)(a1, a2, a2, a3, a4, a5, specialized static BinaryFloatingPoint<>.random<A>(in:using:), a6);
}

uint64_t specialized static SIMD<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v29 = a7;
  v30 = a6;
  v13 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v13, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v29 - v17;
  (*(v13 + 48))(a3, v13);
  result = (*(v13 + 40))(a3, v13);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v32 = a8;
  v33 = a3;
  v20 = a5;
  v21 = v29;
  v22 = v30;
  v34 = v13;
  if (result)
  {
    v23 = a2;
    v24 = a1;
    v25 = 0;
    v31 = v34 + 64;
    do
    {
      v26 = result;
      v27 = v23;
      v28 = v20;
      v21(v24, v23, v15, v20, v22);
      (*(v34 + 64))(v18, v25, v33);
      v23 = v27;
      result = v26;
      v20 = v28;
      ++v25;
    }

    while (v26 != v25);
  }

  return result;
}

uint64_t static SIMD<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v38 = a7;
  v39 = a8;
  v37 = a6;
  v15 = *(a5 + 48);
  swift_getAssociatedTypeWitness(0, v15, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v36 - v19;
  (*(v15 + 48))(a3, v15);
  v21 = a9;
  result = (*(v15 + 40))(a3, v15);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v23 = v38;
  v24 = v39;
  v25 = v37;
  v43 = v21;
  v44 = a3;
  v45 = v15;
  if (result)
  {
    v26 = a4;
    v27 = v17;
    v28 = v20;
    v29 = 0;
    v41 = a10;
    v42 = result;
    v40 = v45 + 64;
    do
    {
      v30 = a1;
      v31 = v27;
      v32 = v26;
      v33 = v23;
      v34 = a1;
      v35 = v25;
      v41(v30, a2, v27, v26, v23, v25, v24);
      (*(v45 + 64))(v28, v29, v44);
      v27 = v31;
      v23 = v33;
      v26 = v32;
      v25 = v35;
      a1 = v34;
      result = v42;
      ++v29;
    }

    while (v42 != v29);
  }

  return result;
}

uint64_t key path getter for SIMDMask.subscript(_:) : <A>SIMDMask<A>A@<X0>(unint64_t *a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v42 = a3;
  v4 = *(a1 + a2 - 32);
  v5 = *(*(a1 + a2 - 16) + 8);
  v6 = *(*(v5 + 24) + 16);
  v7 = *(*(a1 + a2 - 24) + 48);
  swift_getAssociatedTypeWitness(255, v7, v4, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v40 = v6;
  swift_getAssociatedTypeWitness(0, v6, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v40 - v13;
  v15 = swift_checkMetadataState(0, v9);
  v41 = *(v15 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v40 - v21;
  v23 = *a1;
  v24 = (*(v7 + 40))(v4, v7);
  if ((v24 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v23 >= v24)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v7 + 56))(v23, v4, v7);
  v25 = *(v5 + 64);
  if ((v25(v15, v5) & 1) == 0)
  {
    v32 = v25(v15, v5);
    v26 = (*(v5 + 128))(v15, v5);
    if (v32)
    {
      if (v26 > 64)
      {
        goto LABEL_9;
      }

      v37 = v40;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v40, v15, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v11, AssociatedConformanceWitness);
      v37[3](v14, v15, v37);
      LOBYTE(v37) = (*(*(*(v5 + 32) + 8) + 16))(v22, v19, v15);
      v39 = *(v41 + 8);
      v39(v19, v15);
      if (v37)
      {
        result = (v39)(v22, v15);
        LOBYTE(v31) = 1;
        goto LABEL_17;
      }

      v36 = (*(v5 + 120))(v15, v5);
      result = (v39)(v22, v15);
    }

    else
    {
      if (v26 >= 64)
      {
        result = (*(v41 + 8))(v22, v15);
        LOBYTE(v31) = 0;
        goto LABEL_17;
      }

      v36 = (*(v5 + 120))(v15, v5);
      result = (*(v41 + 8))(v22, v15);
    }

    v31 = v36 >> 63;
    goto LABEL_17;
  }

  v26 = (*(v5 + 128))(v15, v5);
  if (v26 >= 64)
  {
LABEL_9:
    v43 = 0;
    v33 = *(v5 + 96);
    v34 = lazy protocol witness table accessor for type Int and conformance Int(v26, v27, v28);
    v33(&v43, &type metadata for Int, v34, v15, v5);
    LOBYTE(v31) = (*(*(*(v5 + 32) + 8) + 16))(v22, v19, v15);
    v35 = *(v41 + 8);
    v35(v19, v15);
    result = (v35)(v22, v15);
    goto LABEL_17;
  }

  v29 = (*(v5 + 120))(v15, v5);
  result = (*(v41 + 8))(v22, v15);
  v31 = v29 >> 63;
LABEL_17:
  *v42 = v31 & 1;
  return result;
}

uint64_t key path setter for SIMDMask.subscript(_:) : <A>SIMDMask<A>A(unsigned __int8 *a1, swift *a2, unint64_t *a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 32);
  v8 = *(*(*(*(a3 + a4 - 16) + 8) + 24) + 16);
  v9 = *(*(a3 + a4 - 24) + 48);
  swift_getAssociatedTypeWitness(255, v9, v7, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v11 = v10;
  v30[0] = v8;
  swift_getAssociatedTypeWitness(0, v8, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v30 - v15;
  v17 = swift_checkMetadataState(0, v11);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v30 - v19;
  v21 = *a3;
  v22 = *a1;
  v23 = *(v9 + 40);
  v30[1] = a2;
  v24 = v23(v7, v9);
  if ((v24 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v21 >= v24)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = v30[0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v30[0], v17, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  if (v22)
  {
    v27 = &unk_18071E0B0;
    v28 = 257;
  }

  else
  {
    v27 = &qword_18071E0A8;
    v28 = 256;
  }

  (*(AssociatedConformanceWitness + 8))(v27, v28, v13, AssociatedConformanceWitness);
  (*(v25 + 3))(v16, v17, v25);
  return (*(v9 + 64))(v20, v21, v7, v9);
}

void (*SIMDMask.subscript.modify(void *a1, unint64_t a2, void *a3))(uint64_t a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x80, 0xF7BBuLL);
  }

  else
  {
    v7 = malloc(0x80uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[2] = a2;
  v7[3] = v3;
  v9 = *(a3[4] + 8);
  v10 = *(*(v9 + 24) + 16);
  v7[4] = v10;
  v11 = *(a3[3] + 48);
  v7[5] = v11;
  v12 = a3[2];
  v7[6] = v12;
  swift_getAssociatedTypeWitness(255, v11, v12, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v14 = v13;
  v48 = v10;
  swift_getAssociatedTypeWitness(0, v10, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v16 = v15;
  v8[7] = v15;
  v17 = *(*(v15 - 8) + 64);
  if (swift_coroFrameAlloc)
  {
    v18 = swift_coroFrameAlloc(v17, 0xF7BBuLL);
  }

  else
  {
    v18 = malloc(v17);
  }

  v47 = v18;
  v8[8] = v18;
  v19 = swift_checkMetadataState(0, v14);
  v8[9] = v19;
  v49 = *(v19 - 1);
  v20 = *(v49 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[10] = swift_coroFrameAlloc(v20, 0xF7BBuLL);
    v8[11] = swift_coroFrameAlloc(v20, 0xF7BBuLL);
    v21 = swift_coroFrameAlloc(v20, 0xF7BBuLL);
    v8[12] = v21;
    v22 = swift_coroFrameAlloc(v20, 0xF7BBuLL);
  }

  else
  {
    v8[10] = malloc(v20);
    v8[11] = malloc(v20);
    v21 = malloc(v20);
    v8[12] = v21;
    v22 = malloc(v20);
  }

  v23 = v22;
  v8[13] = v22;
  v24 = *(v11 + 40);
  v8[14] = v24;
  v25 = v24(v12, v11);
  if ((v25 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v25 <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v21;
  (*(v11 + 56))(a2, v12, v11);
  v26 = *(v9 + 64);
  if (v26(v19, v9))
  {
    v27 = (*(v9 + 128))(v19, v9);
    if (v27 < 64)
    {
LABEL_15:
      v30 = (*(v9 + 120))(v19, v9);
      (*(v49 + 8))(v23, v19);
      v31 = v30 >> 63;
      goto LABEL_21;
    }

    v8[1] = 0;
    v36 = *(v9 + 96);
    v37 = lazy protocol witness table accessor for type Int and conformance Int(v27, v28, v29);
    v39 = v8 + 1;
    v38 = v46;
LABEL_20:
    v36(v39, &type metadata for Int, v37, v19, v9);
    LOBYTE(v31) = (*(*(*(v9 + 32) + 8) + 16))(v23, v38, v19);
    v40 = *(v49 + 8);
    v40(v38, v19);
    v40(v23, v19);
    goto LABEL_21;
  }

  v32 = v26(v19, v9);
  v33 = (*(v9 + 128))(v19, v9);
  if ((v32 & 1) == 0)
  {
    if (v33 >= 64)
    {
      (*(v49 + 8))(v23, v19);
      LOBYTE(v31) = 0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (v33 > 64)
  {
    *v8 = 0;
    v36 = *(v9 + 96);
    v37 = lazy protocol witness table accessor for type Int and conformance Int(v33, v34, v35);
    v38 = v46;
    v39 = v8;
    goto LABEL_20;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v48, v19, v16, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v16, AssociatedConformanceWitness);
  (v48[3])(v47, v19, v48);
  v43 = (*(*(*(v9 + 32) + 8) + 16))(v23, v46, v19);
  v44 = *(v49 + 8);
  v44(v46, v19);
  if (v43)
  {
    v44(v23, v19);
    LOBYTE(v31) = 1;
  }

  else
  {
    v45 = (*(v9 + 120))(v19, v9);
    v44(v23, v19);
    v31 = v45 >> 63;
  }

LABEL_21:
  *(v8 + 120) = v31 & 1;
  return SIMDMask.subscript.modify;
}

void SIMDMask.subscript.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 120);
  v5 = (*(*a1 + 112))(*(*a1 + 48));
  if ((a2 & 1) == 0)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v17 = v3[2];
      if (v5 > v17)
      {
        v28 = v3[12];
        v29 = v3[13];
        v7 = v3[10];
        v16 = v3[11];
        v9 = v3[8];
        v18 = v3[9];
        v19 = v3[7];
        v21 = v3[4];
        v20 = v3[5];
        v27 = v3[6];
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v21, v18, v19, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        if (v4)
        {
          v23 = 257;
        }

        else
        {
          v23 = 256;
        }

        if (v4)
        {
          v24 = &unk_18071E0B0;
        }

        else
        {
          v24 = &qword_18071E0A8;
        }

        (*(AssociatedConformanceWitness + 8))(v24, v23, v19, AssociatedConformanceWitness);
        (*(v21 + 3))(v9, v18, v21);
        (*(v20 + 64))(v16, v17, v27, v20);
        goto LABEL_21;
      }

LABEL_13:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_24:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  v6 = v3[2];
  if (v5 <= v6)
  {
    goto LABEL_13;
  }

  v28 = v3[12];
  v29 = v3[13];
  v7 = v3[10];
  v9 = v3[8];
  v8 = v3[9];
  v10 = v3[7];
  v25 = v3[6];
  v26 = v3[11];
  v12 = v3[4];
  v11 = v3[5];
  v13 = swift_getAssociatedConformanceWitness(v12, v8, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  if (v4)
  {
    v14 = 257;
  }

  else
  {
    v14 = 256;
  }

  if (v4)
  {
    v15 = &unk_18071E0B0;
  }

  else
  {
    v15 = &qword_18071E0A8;
  }

  (*(v13 + 8))(v15, v14, v10, v13);
  (*(v12 + 3))(v9, v8, v12);
  v16 = v26;
  (*(v11 + 64))(v7, v6, v25, v11);
LABEL_21:
  free(v29);
  free(v28);
  free(v16);
  free(v7);
  free(v9);

  free(v3);
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMDMask<A>@<X0>(unint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v41 = a3;
  v4 = *(a2[4] + 8);
  v5 = *(*(v4 + 24) + 16);
  v6 = a2[2];
  v7 = *(a2[3] + 48);
  swift_getAssociatedTypeWitness(255, v7, v6, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v39 = v5;
  swift_getAssociatedTypeWitness(0, v5, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v39 - v13;
  v15 = swift_checkMetadataState(0, v9);
  v40 = *(v15 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v39 - v21;
  v23 = (*(v7 + 40))(v6, v7);
  if ((v23 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v23 <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v7 + 56))(a1, v6, v7);
  v24 = *(v4 + 64);
  if ((v24(v15, v4) & 1) == 0)
  {
    v31 = v24(v15, v4);
    v25 = (*(v4 + 128))(v15, v4);
    if (v31)
    {
      if (v25 > 64)
      {
        goto LABEL_9;
      }

      v36 = v39;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v39, v15, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v11, AssociatedConformanceWitness);
      v36[3](v14, v15, v36);
      LOBYTE(v36) = (*(*(*(v4 + 32) + 8) + 16))(v22, v19, v15);
      v38 = *(v40 + 8);
      v38(v19, v15);
      if (v36)
      {
        result = (v38)(v22, v15);
        LOBYTE(v30) = 1;
        goto LABEL_17;
      }

      v35 = (*(v4 + 120))(v15, v4);
      result = (v38)(v22, v15);
    }

    else
    {
      if (v25 >= 64)
      {
        result = (*(v40 + 8))(v22, v15);
        LOBYTE(v30) = 0;
        goto LABEL_17;
      }

      v35 = (*(v4 + 120))(v15, v4);
      result = (*(v40 + 8))(v22, v15);
    }

    v30 = v35 >> 63;
    goto LABEL_17;
  }

  v25 = (*(v4 + 128))(v15, v4);
  if (v25 >= 64)
  {
LABEL_9:
    v42 = 0;
    v32 = *(v4 + 96);
    v33 = lazy protocol witness table accessor for type Int and conformance Int(v25, v26, v27);
    v32(&v42, &type metadata for Int, v33, v15, v4);
    LOBYTE(v30) = (*(*(*(v4 + 32) + 8) + 16))(v22, v19, v15);
    v34 = *(v40 + 8);
    v34(v19, v15);
    result = (v34)(v22, v15);
    goto LABEL_17;
  }

  v28 = (*(v4 + 120))(v15, v4);
  result = (*(v40 + 8))(v22, v15);
  v30 = v28 >> 63;
LABEL_17:
  *v41 = v30 & 1;
  return result;
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMDMask<A>(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v6 = *(*(*(a3[4] + 8) + 24) + 16);
  v7 = a3[2];
  v8 = *(a3[3] + 48);
  swift_getAssociatedTypeWitness(255, v8, v7, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  swift_getAssociatedTypeWitness(0, v6, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v27 - v14;
  v16 = swift_checkMetadataState(0, v10);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - v18;
  v20 = *a1;
  v21 = *(v8 + 40);
  v28 = v3;
  v22 = v21(v7, v8);
  if ((v22 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v22 <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v16, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  if (v20)
  {
    v24 = &unk_18071E0B0;
    v25 = 257;
  }

  else
  {
    v24 = &qword_18071E0A8;
    v25 = 256;
  }

  (*(AssociatedConformanceWitness + 8))(v24, v25, v12, AssociatedConformanceWitness);
  (*(v6 + 24))(v15, v16, v6);
  return (*(v8 + 64))(v19, a2, v7, v8);
}

void (*protocol witness for SIMDStorage.subscript.modify in conformance SIMDMask<A>(void *a1, unint64_t a2, void *a3))(uint64_t a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x80, 0x47FuLL);
  }

  else
  {
    v7 = malloc(0x80uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[2] = a2;
  v7[3] = v3;
  v9 = *(a3[4] + 8);
  v10 = *(*(v9 + 24) + 16);
  v7[4] = v10;
  v11 = *(a3[3] + 48);
  v7[5] = v11;
  v12 = a3[2];
  v7[6] = v12;
  swift_getAssociatedTypeWitness(255, v11, v12, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v14 = v13;
  v48 = v10;
  swift_getAssociatedTypeWitness(0, v10, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v16 = v15;
  v8[7] = v15;
  v17 = *(*(v15 - 8) + 64);
  if (swift_coroFrameAlloc)
  {
    v18 = swift_coroFrameAlloc(v17, 0x47FuLL);
  }

  else
  {
    v18 = malloc(v17);
  }

  v47 = v18;
  v8[8] = v18;
  v19 = swift_checkMetadataState(0, v14);
  v8[9] = v19;
  v49 = *(v19 - 1);
  v20 = *(v49 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[10] = swift_coroFrameAlloc(v20, 0x47FuLL);
    v8[11] = swift_coroFrameAlloc(v20, 0x47FuLL);
    v21 = swift_coroFrameAlloc(v20, 0x47FuLL);
    v8[12] = v21;
    v22 = swift_coroFrameAlloc(v20, 0x47FuLL);
  }

  else
  {
    v8[10] = malloc(v20);
    v8[11] = malloc(v20);
    v21 = malloc(v20);
    v8[12] = v21;
    v22 = malloc(v20);
  }

  v23 = v22;
  v8[13] = v22;
  v24 = *(v11 + 40);
  v8[14] = v24;
  v25 = v24(v12, v11);
  if ((v25 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v25 <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v21;
  (*(v11 + 56))(a2, v12, v11);
  v26 = *(v9 + 64);
  if (v26(v19, v9))
  {
    v27 = (*(v9 + 128))(v19, v9);
    if (v27 < 64)
    {
LABEL_15:
      v30 = (*(v9 + 120))(v19, v9);
      (*(v49 + 8))(v23, v19);
      v31 = v30 >> 63;
      goto LABEL_21;
    }

    v8[1] = 0;
    v36 = *(v9 + 96);
    v37 = lazy protocol witness table accessor for type Int and conformance Int(v27, v28, v29);
    v39 = v8 + 1;
    v38 = v46;
LABEL_20:
    v36(v39, &type metadata for Int, v37, v19, v9);
    LOBYTE(v31) = (*(*(*(v9 + 32) + 8) + 16))(v23, v38, v19);
    v40 = *(v49 + 8);
    v40(v38, v19);
    v40(v23, v19);
    goto LABEL_21;
  }

  v32 = v26(v19, v9);
  v33 = (*(v9 + 128))(v19, v9);
  if ((v32 & 1) == 0)
  {
    if (v33 >= 64)
    {
      (*(v49 + 8))(v23, v19);
      LOBYTE(v31) = 0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (v33 > 64)
  {
    *v8 = 0;
    v36 = *(v9 + 96);
    v37 = lazy protocol witness table accessor for type Int and conformance Int(v33, v34, v35);
    v38 = v46;
    v39 = v8;
    goto LABEL_20;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v48, v19, v16, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v16, AssociatedConformanceWitness);
  (v48[3])(v47, v19, v48);
  v43 = (*(*(*(v9 + 32) + 8) + 16))(v23, v46, v19);
  v44 = *(v49 + 8);
  v44(v46, v19);
  if (v43)
  {
    v44(v23, v19);
    LOBYTE(v31) = 1;
  }

  else
  {
    v45 = (*(v9 + 120))(v19, v9);
    v44(v23, v19);
    v31 = v45 >> 63;
  }

LABEL_21:
  *(v8 + 120) = v31 & 1;
  return protocol witness for SIMDStorage.subscript.modify in conformance SIMDMask<A>;
}

void protocol witness for SIMDStorage.subscript.modify in conformance SIMDMask<A>(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 120);
  v5 = (*(*a1 + 112))(*(*a1 + 48));
  if ((a2 & 1) == 0)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v17 = v3[2];
      if (v5 > v17)
      {
        v28 = v3[12];
        v29 = v3[13];
        v7 = v3[10];
        v16 = v3[11];
        v9 = v3[8];
        v18 = v3[9];
        v19 = v3[7];
        v21 = v3[4];
        v20 = v3[5];
        v27 = v3[6];
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v21, v18, v19, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        if (v4)
        {
          v23 = 257;
        }

        else
        {
          v23 = 256;
        }

        if (v4)
        {
          v24 = &unk_18071E0B0;
        }

        else
        {
          v24 = &qword_18071E0A8;
        }

        (*(AssociatedConformanceWitness + 8))(v24, v23, v19, AssociatedConformanceWitness);
        (*(v21 + 3))(v9, v18, v21);
        (*(v20 + 64))(v16, v17, v27, v20);
        goto LABEL_21;
      }

LABEL_13:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_24:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  v6 = v3[2];
  if (v5 <= v6)
  {
    goto LABEL_13;
  }

  v28 = v3[12];
  v29 = v3[13];
  v7 = v3[10];
  v9 = v3[8];
  v8 = v3[9];
  v10 = v3[7];
  v25 = v3[6];
  v26 = v3[11];
  v12 = v3[4];
  v11 = v3[5];
  v13 = swift_getAssociatedConformanceWitness(v12, v8, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  if (v4)
  {
    v14 = 257;
  }

  else
  {
    v14 = 256;
  }

  if (v4)
  {
    v15 = &unk_18071E0B0;
  }

  else
  {
    v15 = &qword_18071E0A8;
  }

  (*(v13 + 8))(v15, v14, v10, v13);
  (*(v12 + 3))(v9, v8, v12);
  v16 = v26;
  (*(v11 + 64))(v7, v6, v25, v11);
LABEL_21:
  free(v29);
  free(v28);
  free(v16);
  free(v7);
  free(v9);

  free(v3);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMDMask<A>(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMDMask<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMDMask<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMDMask<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMDMask<A>@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMDMask<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMDMask<A>(uint64_t a1, uint64_t a2, void *a3)
{
  v123 = a2;
  v4 = *(a3[4] + 8);
  v5 = *(*(v4 + 24) + 16);
  v6 = a3[2];
  v7 = *(a3[3] + 48);
  swift_getAssociatedTypeWitness(255, v7, v6, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v126 = v5;
  swift_getAssociatedTypeWitness(0, v5, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v120 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v121 = &v103 - v12;
  v13 = swift_checkMetadataState(0, v9);
  v14 = *(v13 - 1);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v122 = &v103 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v103 - v23;
  v124 = *(v7 + 40);
  v125 = a1;
  v25 = v124(v6, v7);
  if (v25 < 0)
  {
LABEL_48:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v26 = v25;
  if (v25)
  {
    v119 = v18;
    v27 = 0;
    v28 = v7 + 56;
    v29 = v4 + 64;
    v30 = v4 + 128;
    v31 = (v14 + 8);
    v32 = v4 + 120;
    v33 = v126 + 24;
    v34 = v4 + 96;
    v35 = v25 - 1;
    v36 = 1;
    while (1)
    {
      if ((v36 & 1) == 0)
      {
        v36 = 0;
        if (v35 == v27)
        {
          return v36 & 1;
        }

        goto LABEL_11;
      }

      v112 = v35;
      v113 = v33;
      v114 = v34;
      v115 = v32;
      v116 = v30;
      v117 = v29;
      v118 = v28;
      v37 = v124(v6, v7);
      if (v37 < 0)
      {
        goto LABEL_48;
      }

      if (v27 >= v37)
      {
        goto LABEL_47;
      }

      v110 = v6;
      v111 = v31;
      v107 = *(v7 + 56);
      v107(v27, v6, v7);
      v38 = v24;
      v39 = *(v4 + 64);
      v40 = v39(v13, v4);
      v108 = v39;
      if (v40)
      {
        v106 = *(v4 + 128);
        v41 = v106(v13, v4);
        v44 = v38;
        if (v41 >= 64)
        {
          v127[0] = 0;
          v55 = *(v4 + 96);
          v56 = lazy protocol witness table accessor for type Int and conformance Int(v41, v42, v43);
          v57 = v122;
          v55(v127, &type metadata for Int, v56, v13, v4);
          v109 = (*(*(*(v4 + 32) + 8) + 16))(v44, v57, v13);
          v58 = v57;
          v46 = *v111;
          (*v111)(v58, v13);
          v46(v44, v13);
        }

        else
        {
          v45 = (*(v4 + 120))(v13, v4);
          v46 = *v111;
          (*v111)(v38, v13);
          v109 = v45 >> 63;
        }

        v51 = v110;
      }

      else
      {
        v47 = v39(v13, v4);
        v106 = *(v4 + 128);
        v48 = v106(v13, v4);
        v44 = v38;
        if (v47)
        {
          v51 = v110;
          if (v48 > 64)
          {
            v127[0] = 0;
            v109 = *(v4 + 96);
            v52 = lazy protocol witness table accessor for type Int and conformance Int(v48, v49, v50);
            v53 = v122;
            (v109)(v127, &type metadata for Int, v52, v13, v4);
            v109 = (*(*(*(v4 + 32) + 8) + 16))(v44, v53, v13);
            v54 = v53;
            v46 = *v111;
            (*v111)(v54, v13);
            v46(v44, v13);
            goto LABEL_25;
          }

          v61 = v126;
          v62 = v120;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v126, v13, v120, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v62, AssociatedConformanceWitness);
          v64 = v61;
          v65 = *(v61 + 3);
          v66 = v122;
          v65(v121, v13, v64);
          LOBYTE(v62) = (*(*(*(v4 + 32) + 8) + 16))(v44, v66, v13);
          v105 = *v111;
          v105(v66, v13);
          if (v62)
          {
            v67 = v105;
            v105(v44, v13);
            v46 = v67;
            v60 = 1;
          }

          else
          {
            v109 = (*(v4 + 120))(v13, v4);
            v68 = v105;
            v105(v44, v13);
            v46 = v68;
            v60 = v109 >> 63;
          }
        }

        else
        {
          v51 = v110;
          if (v48 >= 64)
          {
            v46 = *v111;
            (*v111)(v44, v13);
            v109 = 0;
            goto LABEL_25;
          }

          v59 = (*(v4 + 120))(v13, v4);
          v46 = *v111;
          (*v111)(v44, v13);
          v60 = v59 >> 63;
        }

        v109 = v60;
      }

LABEL_25:
      v69 = v124(v51, v7);
      if (v69 < 0)
      {
        goto LABEL_48;
      }

      if (v27 >= v69)
      {
LABEL_47:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v70 = v51;
      v104 = v44;
      v105 = v46;
      v71 = v119;
      v107(v27, v70, v7);
      v72 = v108;
      if ((v108)(v13, v4))
      {
        v73 = v71;
        v74 = v106(v13, v4);
        if (v74 >= 64)
        {
          v127[0] = 0;
          v88 = *(v4 + 96);
          v89 = lazy protocol witness table accessor for type Int and conformance Int(v74, v75, v76);
          v90 = v122;
          v88(v127, &type metadata for Int, v89, v13, v4);
          LOBYTE(v78) = (*(*(*(v4 + 32) + 8) + 16))(v73, v90, v13);
          v91 = v90;
          v31 = v111;
          v92 = v105;
          v105(v91, v13);
          v92(v73, v13);
        }

        else
        {
          v77 = (*(v4 + 120))(v13, v4);
          v31 = v111;
          v105(v71, v13);
          v78 = v77 >> 63;
        }

        v24 = v104;
        goto LABEL_35;
      }

      v79 = v72(v13, v4);
      v80 = v106(v13, v4);
      if ((v79 & 1) == 0)
      {
        v24 = v104;
        if (v80 < 64)
        {
          v93 = v119;
          v94 = (*(v4 + 120))(v13, v4);
          v95 = v93;
          v31 = v111;
          v105(v95, v13);
          v78 = v94 >> 63;
        }

        else
        {
          v31 = v111;
          v105(v119, v13);
          LOBYTE(v78) = 0;
        }

        goto LABEL_35;
      }

      v24 = v104;
      if (v80 > 64)
      {
        v127[0] = 0;
        v83 = *(v4 + 96);
        v84 = lazy protocol witness table accessor for type Int and conformance Int(v80, v81, v82);
        v85 = v122;
        v83(v127, &type metadata for Int, v84, v13, v4);
        LOBYTE(v78) = (*(*(*(v4 + 32) + 8) + 16))(v119, v85, v13);
        v86 = v85;
        v31 = v111;
        v87 = v105;
        v105(v86, v13);
        v87(v119, v13);
LABEL_35:
        v6 = v110;
        goto LABEL_36;
      }

      v96 = v126;
      v97 = v120;
      v98 = swift_getAssociatedConformanceWitness(v126, v13, v120, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      (*(v98 + 8))(&qword_18071E0A8, 256, v97, v98);
      v99 = v122;
      (*(v96 + 3))(v121, v13, v96);
      LOBYTE(v97) = (*(*(*(v4 + 32) + 8) + 16))(v119, v99, v13);
      v100 = v99;
      v31 = v111;
      v105(v100, v13);
      v6 = v110;
      if (v97)
      {
        v105(v119, v13);
        LOBYTE(v78) = 1;
      }

      else
      {
        v101 = v119;
        v108 = (*(v4 + 120))(v13, v4);
        v105(v101, v13);
        v78 = v108 >> 63;
      }

LABEL_36:
      v36 = v109 ^ v78 ^ 1;
      v35 = v112;
      v33 = v113;
      v29 = v117;
      v28 = v118;
      v32 = v115;
      v30 = v116;
      v34 = v114;
      if (v112 == v27)
      {
        return v36 & 1;
      }

LABEL_11:
      if (v26 == ++v27)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }
  }

  v36 = 1;
  return v36 & 1;
}

uint64_t specialized static SIMDMask.random<A>(using:)@<X0>(Class *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(*(*(a3 + 8) + 24) + 16);
  v7 = *(a2 + 48);
  swift_getAssociatedTypeWitness(255, v7, a1, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v39 = v6;
  swift_getAssociatedTypeWitness(0, v6, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v31 - v12;
  v14 = swift_checkMetadataState(0, v9);
  MEMORY[0x1EEE9AC00](v14, v15);
  v37 = &v31 - v16;
  (*(v7 + 48))(a1, v7);
  v17 = *(v7 + 40);
  result = v17(a1, v7);
  if (result < 0)
  {
    goto LABEL_12;
  }

  v19 = result;
  v36 = v13;
  if (result)
  {
    v20 = 0;
    v34 = v7 + 64;
    v35 = v39 + 24;
    while (1)
    {
      __buf = 0;
      swift_stdlib_random(&__buf, 8uLL);
      v21 = __buf;
      v22 = v17(a1, v7);
      if (v22 < 0)
      {
        break;
      }

      if (v20 >= v22)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v32 = v17;
      v23 = v38;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v39, v14, v38, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v25 = *(AssociatedConformanceWitness + 8);
      v33 = a4;
      v26 = v36;
      if ((v21 & 0x20000) != 0)
      {
        v27 = &qword_18071E0A8;
        v28 = 256;
      }

      else
      {
        v27 = &unk_18071E0B0;
        v28 = 257;
      }

      v25(v27, v28, v23, AssociatedConformanceWitness);
      v29 = v37;
      (*(v39 + 3))(v26, v14);
      v30 = v29;
      a4 = v33;
      result = (*(v7 + 64))(v30, v20++, a1, v7);
      v17 = v32;
      if (v19 == v20)
      {
        return result;
      }
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t static SIMDMask.random<A>(using:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a2;
  v12 = *(*(*(a6 + 8) + 24) + 16);
  v13 = *(a4 + 48);
  swift_getAssociatedTypeWitness(255, v13, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v15 = v14;
  v56 = v12;
  swift_getAssociatedTypeWitness(0, v12, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v52 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v43 - v18;
  v20 = swift_checkMetadataState(0, v15);
  MEMORY[0x1EEE9AC00](v20, v21);
  v51 = &v43 - v22;
  (*(v13 + 48))(v9, v13);
  v54 = *(v13 + 40);
  v55 = a7;
  v53 = v13 + 40;
  result = v54(v9, v13);
  if (result < 0)
  {
    goto LABEL_12;
  }

  v50 = v19;
  if (result)
  {
    v24 = 0;
    v25 = a5 + 8;
    v26 = *(a5 + 8);
    v46 = v13 + 64;
    v47 = v56 + 24;
    v48 = a1;
    v49 = result;
    while (1)
    {
      v27 = a3;
      v28 = a3;
      v29 = a5;
      v30 = v25;
      v31 = v26;
      v32 = v26(v28, a5);
      v33 = v54(v9, v13);
      if (v33 < 0)
      {
        break;
      }

      if (v24 >= v33)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v45 = v20;
      v34 = v52;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v56, v20, v52, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v36 = *(AssociatedConformanceWitness + 8);
      v44 = v9;
      v37 = v50;
      if ((v32 & 0x20000) != 0)
      {
        v38 = &qword_18071E0A8;
        v39 = 256;
      }

      else
      {
        v38 = &unk_18071E0B0;
        v39 = 257;
      }

      v36(v38, v39, v34, AssociatedConformanceWitness);
      v40 = v51;
      v41 = v37;
      v20 = v45;
      (*(v56 + 3))(v41, v45);
      v42 = v40;
      v9 = v44;
      (*(v13 + 64))(v42, v24++, v44, v13);
      result = v49;
      a5 = v29;
      a3 = v27;
      v25 = v30;
      v26 = v31;
      if (v49 == v24)
      {
        return result;
      }
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t SIMD<>.leadingZeroBitCount.getter@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = a1;
  v9 = *(a2 + 48);
  swift_getAssociatedTypeWitness(0, v9, a1, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v11 = v10;
  v12 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v37 - v18;
  (*(v9 + 48))(v7, v9);
  result = (*(v9 + 40))(v7, v9);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result)
  {
    v21 = v12;
    v22 = v11;
    v23 = 0;
    v24 = *(v9 + 56);
    v39 = a3 + 152;
    v40 = v24;
    v41 = v9 + 56;
    v42 = result;
    v37 = v9 + 64;
    v38 = (v21 + 8);
    v43 = v9;
    v44 = v16;
    do
    {
      v45 = v23 + 1;
      v40(v23, v7, v9);
      v25 = (*(a3 + 152))(v22, a3);
      v26 = (*v38)(v16, v22);
      v46 = v25;
      v27 = v19;
      v28 = *(a3 + 8);
      v29 = a4;
      v30 = v7;
      v31 = v5;
      v32 = *(v28 + 88);
      v35 = lazy protocol witness table accessor for type Int and conformance Int(v26, v33, v34);
      v36 = v28;
      v19 = v27;
      v32(&v46, &type metadata for Int, v35, v22, v36);
      v5 = v31;
      v7 = v30;
      a4 = v29;
      v9 = v43;
      v16 = v44;
      (*(v43 + 64))(v19, v23, v7, v43);
      result = v42;
      v23 = v45;
    }

    while (v42 != v45);
  }

  return result;
}

uint64_t SIMD<>.trailingZeroBitCount.getter@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 48);
  swift_getAssociatedTypeWitness(0, v7, a1, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v31 - v16;
  (*(v7 + 48))(a1, v7);
  result = (*(v7 + 40))(a1, v7);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = v9;
  if (result)
  {
    v19 = 0;
    v20 = *(v7 + 56);
    v32 = (v10 + 8);
    v33 = v20;
    v34 = v7 + 56;
    v35 = a4;
    v31[1] = v7 + 64;
    v37 = v7;
    v38 = v14;
    v36 = result;
    do
    {
      v40 = v19 + 1;
      v33(v19, a1, v7);
      v21 = a3;
      v22 = *(a3 + 8);
      v23 = v39;
      v24 = (*(v22 + 144))(v39, v22);
      v25 = (*v32)(v14, v23);
      v41 = v24;
      v26 = *(v22 + 88);
      v29 = lazy protocol witness table accessor for type Int and conformance Int(v25, v27, v28);
      v30 = v22;
      a3 = v21;
      v26(&v41, &type metadata for Int, v29, v23, v30);
      v7 = v37;
      v14 = v38;
      (*(v37 + 64))(v17, v19, a1, v37);
      result = v36;
      v19 = v40;
    }

    while (v36 != v40);
  }

  return result;
}

uint64_t SIMD<>.nonzeroBitCount.getter@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = a1;
  v9 = *(a2 + 48);
  swift_getAssociatedTypeWitness(0, v9, a1, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v11 = v10;
  v12 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v37 - v18;
  (*(v9 + 48))(v7, v9);
  result = (*(v9 + 40))(v7, v9);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result)
  {
    v21 = v12;
    v22 = v11;
    v23 = 0;
    v24 = *(v9 + 56);
    v39 = a3 + 144;
    v40 = v24;
    v41 = v9 + 56;
    v42 = result;
    v37 = v9 + 64;
    v38 = (v21 + 8);
    v43 = v9;
    v44 = v16;
    do
    {
      v45 = v23 + 1;
      v40(v23, v7, v9);
      v25 = (*(a3 + 144))(v22, a3);
      v26 = (*v38)(v16, v22);
      v46 = v25;
      v27 = v19;
      v28 = *(a3 + 8);
      v29 = a4;
      v30 = v7;
      v31 = v5;
      v32 = *(v28 + 88);
      v35 = lazy protocol witness table accessor for type Int and conformance Int(v26, v33, v34);
      v36 = v28;
      v19 = v27;
      v32(&v46, &type metadata for Int, v35, v22, v36);
      v5 = v31;
      v7 = v30;
      a4 = v29;
      v9 = v43;
      v16 = v44;
      (*(v43 + 64))(v19, v23, v7, v43);
      result = v42;
      v23 = v45;
    }

    while (v42 != v45);
  }

  return result;
}

uint64_t static SIMD<>.~ prefix(_:)@<X0>(Class *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 48);
  swift_getAssociatedTypeWitness(0, v7, a1, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v27 - v16;
  (*(v7 + 48))(a1, v7);
  result = (*(v7 + 40))(a1, v7);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v32 = v17;
  v33 = a3;
  v31 = v9;
  if (result)
  {
    v19 = a4;
    v20 = 0;
    v21 = *(v7 + 56);
    v28 = (v10 + 8);
    v29 = v21;
    v30 = v7 + 56;
    v27[1] = v7 + 64;
    do
    {
      v22 = result;
      v29(v20, a1, v7);
      v23 = v19;
      v24 = v31;
      v25 = v32;
      (*(*(v33 + 8) + 184))(v14, v31);
      (*v28)(v14, v24);
      v26 = v25;
      v19 = v23;
      (*(v7 + 64))(v26, v20, a1, v7);
      result = v22;
      ++v20;
    }

    while (v22 != v20);
  }

  return result;
}

uint64_t static SIMD<>.& infix(_:_:)@<X0>(uint64_t a1@<X1>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v42 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v32 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v32 - v20;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = a5;
  v40 = a1;
  v37 = v14;
  v38 = v21;
  if (result)
  {
    v23 = 0;
    v24 = *(v8 + 56);
    v33 = (v42 + 8);
    v34 = v24;
    v35 = v8 + 56;
    v36 = result;
    v32[1] = v8 + 64;
    do
    {
      v42 = v23 + 1;
      v25 = v18;
      v26 = v34;
      v34(v23, v5, v8);
      v27 = v37;
      v26(v23, v5, v8);
      v28 = v5;
      v29 = v38;
      (*(*(v41 + 8) + 192))(v25, v27, v10);
      v30 = *v33;
      (*v33)(v27, v10);
      v30(v25, v10);
      v31 = v29;
      v5 = v28;
      (*(v8 + 64))(v31, v23, v28, v8);
      v18 = v25;
      result = v36;
      v23 = v42;
    }

    while (v36 != v42);
  }

  return result;
}

uint64_t static SIMD<>.^ infix(_:_:)@<X0>(uint64_t a1@<X1>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v42 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v32 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v32 - v20;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = a5;
  v40 = a1;
  v37 = v14;
  v38 = v21;
  if (result)
  {
    v23 = 0;
    v24 = *(v8 + 56);
    v33 = (v42 + 8);
    v34 = v24;
    v35 = v8 + 56;
    v36 = result;
    v32[1] = v8 + 64;
    do
    {
      v42 = v23 + 1;
      v25 = v18;
      v26 = v34;
      v34(v23, v5, v8);
      v27 = v37;
      v26(v23, v5, v8);
      v28 = v5;
      v29 = v38;
      (*(*(v41 + 8) + 224))(v25, v27, v10);
      v30 = *v33;
      (*v33)(v27, v10);
      v30(v25, v10);
      v31 = v29;
      v5 = v28;
      (*(v8 + 64))(v31, v23, v28, v8);
      v18 = v25;
      result = v36;
      v23 = v42;
    }

    while (v36 != v42);
  }

  return result;
}

uint64_t static SIMD<>.| infix(_:_:)@<X0>(uint64_t a1@<X1>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v42 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v32 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v32 - v20;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = a5;
  v40 = a1;
  v37 = v14;
  v38 = v21;
  if (result)
  {
    v23 = 0;
    v24 = *(v8 + 56);
    v33 = (v42 + 8);
    v34 = v24;
    v35 = v8 + 56;
    v36 = result;
    v32[1] = v8 + 64;
    do
    {
      v42 = v23 + 1;
      v25 = v18;
      v26 = v34;
      v34(v23, v5, v8);
      v27 = v37;
      v26(v23, v5, v8);
      v28 = v5;
      v29 = v38;
      (*(*(v41 + 8) + 208))(v25, v27, v10);
      v30 = *v33;
      (*v33)(v27, v10);
      v30(v25, v10);
      v31 = v29;
      v5 = v28;
      (*(v8 + 64))(v31, v23, v28, v8);
      v18 = v25;
      result = v36;
      v23 = v42;
    }

    while (v36 != v42);
  }

  return result;
}

uint64_t static SIMD<>.&<< infix(_:_:)@<X0>(uint64_t a1@<X1>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v39 = a1;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v41 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v31 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v31 - v20;
  (*(v8 + 48))(a2, v8);
  result = (*(v8 + 40))(a2, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = a4;
  v37 = v21;
  v38 = a5;
  if (result)
  {
    v23 = a2;
    v24 = 0;
    v25 = *(v8 + 56);
    v33 = v40 + 216;
    v34 = v25;
    v35 = v8 + 56;
    v36 = result;
    v31[1] = v8 + 64;
    v32 = (v41 + 8);
    do
    {
      v41 = v24 + 1;
      v26 = v34;
      v34(v24, v23, v8);
      v26(v24, v23, v8);
      v27 = v23;
      v28 = v37;
      (*(v40 + 216))(v18, v14, v10);
      v29 = *v32;
      (*v32)(v14, v10);
      v29(v18, v10);
      v30 = v28;
      v23 = v27;
      (*(v8 + 64))(v30, v24, v27, v8);
      result = v36;
      v24 = v41;
    }

    while (v36 != v41);
  }

  return result;
}

uint64_t static SIMD<>.&>> infix(_:_:)@<X0>(uint64_t a1@<X1>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v39 = a1;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v41 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v31 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v31 - v20;
  (*(v8 + 48))(a2, v8);
  result = (*(v8 + 40))(a2, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = a4;
  v37 = v21;
  v38 = a5;
  if (result)
  {
    v23 = a2;
    v24 = 0;
    v25 = *(v8 + 56);
    v33 = v40 + 200;
    v34 = v25;
    v35 = v8 + 56;
    v36 = result;
    v31[1] = v8 + 64;
    v32 = (v41 + 8);
    do
    {
      v41 = v24 + 1;
      v26 = v34;
      v34(v24, v23, v8);
      v26(v24, v23, v8);
      v27 = v23;
      v28 = v37;
      (*(v40 + 200))(v18, v14, v10);
      v29 = *v32;
      (*v32)(v14, v10);
      v29(v18, v10);
      v30 = v28;
      v23 = v27;
      (*(v8 + 64))(v30, v24, v27, v8);
      result = v36;
      v24 = v41;
    }

    while (v36 != v41);
  }

  return result;
}

uint64_t static SIMD<>.&+ infix(_:_:)@<X0>(uint64_t a1@<X1>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v43 = a1;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v45 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v34 - v20;
  (*(v8 + 48))(a2, v8);
  result = (*(v8 + 40))(a2, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v44 = a4;
  v41 = v21;
  v42 = a5;
  v40 = v10;
  if (result)
  {
    v23 = a2;
    v24 = v18;
    v25 = v14;
    v26 = 0;
    v27 = *(v8 + 56);
    v36 = v44 + 80;
    v37 = v27;
    v38 = v8 + 56;
    v39 = result;
    v34 = v8 + 64;
    v35 = (v45 + 8);
    do
    {
      v45 = v26 + 1;
      v28 = v37;
      v37(v26, v23, v8);
      v28(v26, v23, v8);
      v29 = v23;
      v30 = v40;
      v31 = v41;
      (*(v44 + 80))(v41, v25, v40);
      v32 = *v35;
      (*v35)(v25, v30);
      v32(v24, v30);
      v33 = v31;
      v23 = v29;
      (*(v8 + 64))(v33, v26, v29, v8);
      result = v39;
      v26 = v45;
    }

    while (v39 != v45);
  }

  return result;
}

uint64_t static SIMD<>.&* infix(_:_:)@<X0>(uint64_t a1@<X1>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v43 = a1;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v45 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v34 - v20;
  (*(v8 + 48))(a2, v8);
  result = (*(v8 + 40))(a2, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v44 = a4;
  v41 = v21;
  v42 = a5;
  v40 = v10;
  if (result)
  {
    v23 = a2;
    v24 = v18;
    v25 = v14;
    v26 = 0;
    v27 = *(v8 + 56);
    v36 = v44 + 96;
    v37 = v27;
    v38 = v8 + 56;
    v39 = result;
    v34 = v8 + 64;
    v35 = (v45 + 8);
    do
    {
      v45 = v26 + 1;
      v28 = v37;
      v37(v26, v23, v8);
      v28(v26, v23, v8);
      v29 = v23;
      v30 = v40;
      v31 = v41;
      (*(v44 + 96))(v41, v24, v40);
      v32 = *v35;
      (*v35)(v25, v30);
      v32(v24, v30);
      v33 = v31;
      v23 = v29;
      (*(v8 + 64))(v33, v26, v29, v8);
      result = v39;
      v26 = v45;
    }

    while (v39 != v45);
  }

  return result;
}

uint64_t static SIMD<>./ infix(_:_:)@<X0>(uint64_t a1@<X1>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v42 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v32 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v32 - v20;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = a5;
  v40 = a1;
  v37 = v14;
  v38 = v21;
  if (result)
  {
    v23 = 0;
    v24 = *(v8 + 56);
    v33 = (v42 + 8);
    v34 = v24;
    v35 = v8 + 56;
    v36 = result;
    v32[1] = v8 + 64;
    do
    {
      v42 = v23 + 1;
      v25 = v18;
      v26 = v34;
      v34(v23, v5, v8);
      v27 = v37;
      v26(v23, v5, v8);
      v28 = v5;
      v29 = v38;
      (*(*(v41 + 8) + 152))(v25, v27, v10);
      v30 = *v33;
      (*v33)(v27, v10);
      v30(v25, v10);
      v31 = v29;
      v5 = v28;
      (*(v8 + 64))(v31, v23, v28, v8);
      v18 = v25;
      result = v36;
      v23 = v42;
    }

    while (v36 != v42);
  }

  return result;
}

{
  v39 = a1;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v41 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v31 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v31 - v20;
  (*(v8 + 48))(a2, v8);
  result = (*(v8 + 40))(a2, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = a4;
  v37 = v21;
  v38 = a5;
  if (result)
  {
    v23 = a2;
    v24 = 0;
    v25 = *(v8 + 56);
    v33 = v40 + 192;
    v34 = v25;
    v35 = v8 + 56;
    v36 = result;
    v31[1] = v8 + 64;
    v32 = (v41 + 8);
    do
    {
      v41 = v24 + 1;
      v26 = v34;
      v34(v24, v23, v8);
      v26(v24, v23, v8);
      v27 = v23;
      v28 = v37;
      (*(v40 + 192))(v18, v14, v10);
      v29 = *v32;
      (*v32)(v14, v10);
      v29(v18, v10);
      v30 = v28;
      v23 = v27;
      (*(v8 + 64))(v30, v24, v27, v8);
      result = v36;
      v24 = v41;
    }

    while (v36 != v41);
  }

  return result;
}

uint64_t static SIMD<>.% infix(_:_:)@<X0>(uint64_t a1@<X1>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v42 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v32 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v32 - v20;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = a5;
  v40 = a1;
  v37 = v14;
  v38 = v21;
  if (result)
  {
    v23 = 0;
    v24 = *(v8 + 56);
    v33 = (v42 + 8);
    v34 = v24;
    v35 = v8 + 56;
    v36 = result;
    v32[1] = v8 + 64;
    do
    {
      v42 = v23 + 1;
      v25 = v18;
      v26 = v34;
      v34(v23, v5, v8);
      v27 = v37;
      v26(v23, v5, v8);
      v28 = v5;
      v29 = v38;
      (*(*(v41 + 8) + 168))(v25, v27, v10);
      v30 = *v33;
      (*v33)(v27, v10);
      v30(v25, v10);
      v31 = v29;
      v5 = v28;
      (*(v8 + 64))(v31, v23, v28, v8);
      v18 = v25;
      result = v36;
      v23 = v42;
    }

    while (v36 != v42);
  }

  return result;
}

uint64_t static SIMD<>.+ infix(_:_:)@<X0>(uint64_t a1@<X1>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v42 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v32 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v32 - v20;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = a5;
  v40 = a1;
  v37 = v14;
  v38 = v21;
  if (result)
  {
    v23 = 0;
    v24 = *(v8 + 56);
    v33 = (v42 + 8);
    v34 = v24;
    v35 = v8 + 56;
    v36 = result;
    v32[1] = v8 + 64;
    do
    {
      v42 = v23 + 1;
      v25 = v18;
      v26 = v34;
      v34(v23, v5, v8);
      v27 = v37;
      v26(v23, v5, v8);
      v28 = v5;
      v29 = v38;
      (*(*(*(*(v41 + 16) + 8) + 8) + 24))(v25, v27, v10);
      v30 = *v33;
      (*v33)(v27, v10);
      v30(v25, v10);
      v31 = v29;
      v5 = v28;
      (*(v8 + 64))(v31, v23, v28, v8);
      v18 = v25;
      result = v36;
      v23 = v42;
    }

    while (v36 != v42);
  }

  return result;
}

uint64_t static SIMD<>.- infix(_:_:)@<X0>(uint64_t a1@<X1>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v42 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v32 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v32 - v20;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = a5;
  v40 = a1;
  v37 = v14;
  v38 = v21;
  if (result)
  {
    v23 = 0;
    v24 = *(v8 + 56);
    v33 = (v42 + 8);
    v34 = v24;
    v35 = v8 + 56;
    v36 = result;
    v32[1] = v8 + 64;
    do
    {
      v42 = v23 + 1;
      v25 = v18;
      v26 = v34;
      v34(v23, v5, v8);
      v27 = v37;
      v26(v23, v5, v8);
      v28 = v5;
      v29 = v38;
      (*(*(*(*(v41 + 16) + 8) + 8) + 40))(v25, v27, v10);
      v30 = *v33;
      (*v33)(v27, v10);
      v30(v25, v10);
      v31 = v29;
      v5 = v28;
      (*(v8 + 64))(v31, v23, v28, v8);
      v18 = v25;
      result = v36;
      v23 = v42;
    }

    while (v36 != v42);
  }

  return result;
}

uint64_t static SIMD<>.* infix(_:_:)@<X0>(uint64_t a1@<X1>, Class *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v42 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v32 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v32 - v20;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = a5;
  v40 = a1;
  v37 = v14;
  v38 = v21;
  if (result)
  {
    v23 = 0;
    v24 = *(v8 + 56);
    v33 = (v42 + 8);
    v34 = v24;
    v35 = v8 + 56;
    v36 = result;
    v32[1] = v8 + 64;
    do
    {
      v42 = v23 + 1;
      v25 = v18;
      v26 = v34;
      v34(v23, v5, v8);
      v27 = v37;
      v26(v23, v5, v8);
      v28 = v5;
      v29 = v38;
      (*(*(*(v41 + 16) + 8) + 64))(v25, v27, v10);
      v30 = *v33;
      (*v33)(v27, v10);
      v30(v25, v10);
      v31 = v29;
      v5 = v28;
      (*(v8 + 64))(v31, v23, v28, v8);
      v18 = v25;
      result = v36;
      v23 = v42;
    }

    while (v36 != v42);
  }

  return result;
}

uint64_t SIMD<>.addingProduct(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a1;
  v52 = a2;
  v53 = a5;
  v6 = a3;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v54 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v43 - v17;
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v43 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v43 - v24;
  (*(v8 + 48))(v6, v8);
  result = (*(v8 + 40))(v6, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v49 = v14;
  v50 = a6;
  if (result)
  {
    v27 = v10;
    v28 = v18;
    v29 = v25;
    v30 = v22;
    v31 = 0;
    v32 = *(v8 + 56);
    v45 = v53 + 256;
    v46 = v32;
    v47 = v8 + 56;
    v48 = result;
    v43 = v8 + 64;
    v44 = (v54 + 8);
    v55 = v27;
    do
    {
      v54 = v31 + 1;
      v33 = v46;
      v46(v31, v6, v8);
      v33(v31, v6, v8);
      v34 = v6;
      v35 = v29;
      v36 = v30;
      v37 = v28;
      v38 = v8;
      v39 = v49;
      v33(v31, v34, v38);
      (*(v53 + 256))(v37, v39, v55);
      v40 = *v44;
      v41 = v39;
      v8 = v38;
      v28 = v37;
      v30 = v36;
      v29 = v35;
      v6 = v34;
      v42 = v55;
      (*v44)(v41, v55);
      v40(v28, v42);
      v40(v30, v42);
      (*(v8 + 64))(v29, v31, v6, v8);
      result = v48;
      v31 = v54;
    }

    while (v48 != v54);
  }

  return result;
}

{
  v78 = a2;
  v80 = a5;
  v81 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v77 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v68 = &v66 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v67 = &v66 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v70 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v69 = *(a3 - 1);
  v26 = MEMORY[0x1EEE9AC00](&v66 - v24, v25);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v66 - v31;
  v83 = v10;
  v33 = v30;
  v35 = v34;
  v74 = *(v10 + 16);
  v74(v30, a1);
  v36 = *(v8 + 48);
  v79 = v8 + 48;
  v76 = v36;
  (v36)(a3, v8);
  v37 = *(v8 + 40);
  v75 = v8 + 40;
  v73 = v37;
  v38 = v37(a3, v8);
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v82 = v32;
  v84 = v28;
  v85 = a3;
  v39 = v35;
  v40 = v70;
  v41 = v74;
  if (v38)
  {
    v42 = 0;
    do
    {
      v43 = v38;
      v44 = v39;
      v41(v40, v33, v39);
      (*(v8 + 64))(v40, v42, v85, v8);
      v38 = v43;
      v39 = v44;
      ++v42;
    }

    while (v43 != v42);
  }

  v45 = v83 + 8;
  v46 = *(v83 + 8);
  v47 = v39;
  v46(v33, v39);
  v48 = v85;
  (*(v69 + 32))(v82, v84, v85);
  (v76)(v48, v8);
  v49 = v73(v48, v8);
  if (v49 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = v8;
  v83 = v45;
  v52 = v67;
  v51 = v68;
  v79 = v50;
  v53 = v70;
  if (v49)
  {
    v54 = v46;
    v55 = 0;
    v56 = *(v79 + 56);
    v72 = v80 + 256;
    v73 = v56;
    v75 = v79 + 56;
    v76 = v49;
    v71 = v79 + 64;
    v74 = v54;
    do
    {
      v84 = v55 + 1;
      v57 = v79;
      v58 = v73;
      (v73)(v55, v48, v79);
      v58(v55, v48, v57);
      v59 = v53;
      v60 = v52;
      v61 = v51;
      v62 = v77;
      v58(v55, v85, v57);
      (*(v80 + 256))(v61, v62, v47);
      v63 = v62;
      v51 = v61;
      v52 = v60;
      v53 = v59;
      v64 = v74;
      v48 = v85;
      v74(v63, v47);
      v64(v51, v47);
      v64(v52, v47);
      (*(v57 + 64))(v53, v55, v48, v57);
      v55 = v84;
    }

    while (v76 != v84);
  }

  return (*(v69 + 8))(v82, v48);
}

{
  v78 = a1;
  v80 = a5;
  v81 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v77 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v68 = &v66 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v67 = &v66 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v70 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v69 = *(a3 - 1);
  v26 = MEMORY[0x1EEE9AC00](&v66 - v24, v25);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v66 - v31;
  v83 = v10;
  v33 = v30;
  v35 = v34;
  v74 = *(v10 + 16);
  v74(v30, a2);
  v36 = *(v8 + 48);
  v79 = v8 + 48;
  v76 = v36;
  (v36)(a3, v8);
  v37 = *(v8 + 40);
  v75 = v8 + 40;
  v73 = v37;
  v38 = v37(a3, v8);
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v82 = v32;
  v84 = v28;
  v85 = a3;
  v39 = v35;
  v40 = v70;
  v41 = v74;
  if (v38)
  {
    v42 = 0;
    do
    {
      v43 = v38;
      v44 = v39;
      v41(v40, v33, v39);
      (*(v8 + 64))(v40, v42, v85, v8);
      v38 = v43;
      v39 = v44;
      ++v42;
    }

    while (v43 != v42);
  }

  v45 = v83 + 8;
  v46 = *(v83 + 8);
  v47 = v39;
  v46(v33, v39);
  v48 = v85;
  (*(v69 + 32))(v82, v84, v85);
  (v76)(v48, v8);
  v49 = v73(v48, v8);
  if (v49 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = v8;
  v83 = v45;
  v52 = v67;
  v51 = v68;
  v79 = v50;
  v53 = v70;
  if (v49)
  {
    v54 = v46;
    v55 = 0;
    v56 = *(v79 + 56);
    v72 = v80 + 256;
    v73 = v56;
    v75 = v79 + 56;
    v76 = v49;
    v71 = v79 + 64;
    v74 = v54;
    do
    {
      v84 = v55 + 1;
      v57 = v79;
      v58 = v73;
      (v73)(v55, v48, v79);
      v58(v55, v48, v57);
      v59 = v53;
      v60 = v52;
      v61 = v51;
      v62 = v77;
      v58(v55, v85, v57);
      (*(v80 + 256))(v61, v62, v47);
      v63 = v62;
      v51 = v61;
      v52 = v60;
      v53 = v59;
      v64 = v74;
      v48 = v85;
      v74(v63, v47);
      v64(v51, v47);
      v64(v52, v47);
      (*(v57 + 64))(v53, v55, v48, v57);
      v55 = v84;
    }

    while (v76 != v84);
  }

  return (*(v69 + 8))(v82, v48);
}

uint64_t SIMD<>.squareRoot()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 48);
  swift_getAssociatedTypeWitness(0, v8, a1, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v30 - v17;
  (*(v8 + 48))(a1, v8);
  result = (*(v8 + 40))(a1, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a4;
  v37 = a3;
  v35 = v10;
  if (result)
  {
    v20 = v4;
    v21 = v15;
    v22 = a1;
    v23 = 0;
    v24 = *(v8 + 56);
    v32 = v37 + 240;
    v33 = v24;
    v34 = v8 + 56;
    v30 = v8 + 64;
    v31 = (v11 + 8);
    do
    {
      v25 = result;
      v26 = v20;
      v33(v23, v22, v8);
      v27 = v18;
      v28 = v35;
      (*(v37 + 240))(v35);
      v29 = v28;
      v18 = v27;
      (*v31)(v21, v29);
      (*(v8 + 64))(v27, v23, v22, v8);
      v20 = v26;
      result = v25;
      ++v23;
    }

    while (v25 != v23);
  }

  return result;
}

uint64_t SIMD<>.rounded(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v10, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v12 = v11;
  v36 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v32 - v18;
  (*(v10 + 48))(a2, v10);
  result = (*(v10 + 40))(a2, v10);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = a1;
  v40 = a4;
  v37 = v12;
  v38 = a5;
  if (result)
  {
    v21 = v5;
    v22 = v19;
    v23 = a2;
    v24 = 0;
    v25 = *(v10 + 56);
    v34 = v40 + 304;
    v35 = v25;
    v26 = (v36 + 8);
    v36 = v10 + 56;
    v32[1] = v10 + 64;
    v33 = v26;
    do
    {
      v27 = result;
      v28 = v21;
      v35(v24, v23, v10);
      v29 = v23;
      v30 = v37;
      (*(v40 + 304))(v39, v37);
      v31 = v30;
      v23 = v29;
      (*v33)(v16, v31);
      (*(v10 + 64))(v22, v24, v29, v10);
      v21 = v28;
      result = v27;
      ++v24;
    }

    while (v27 != v24);
  }

  return result;
}

uint64_t static SIMDMask..! prefix(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a4;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v50 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v44 - v17;
  v19 = *(a2 - 1);
  v21 = MEMORY[0x1EEE9AC00](v16, v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v27 = MEMORY[0x1EEE9AC00](&v44 - v25, v26);
  v46 = &v44 - v28;
  v29 = v27;
  (*(v19 + 16))(v27, a1, a2);
  (*(v8 + 48))(a2, v8);
  v30 = (*(v8 + 40))(a2, v8);
  if (v30 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v44 = v19;
  v45 = a5;
  v31 = a2;
  v51 = v18;
  v53 = v23;
  v32 = v29;
  if (v30)
  {
    v33 = 0;
    v34 = *(v8 + 56);
    v48 = (v50 + 8);
    v49 = v34;
    v50 = v8 + 56;
    v47 = v8 + 64;
    do
    {
      v35 = v30;
      v36 = v31;
      v49(v33);
      v37 = v51;
      (*(*(v52 + 8) + 184))(v14, v10);
      (*v48)(v14, v10);
      (*(v8 + 64))(v37, v33, v36, v8);
      v31 = v36;
      v30 = v35;
      ++v33;
    }

    while (v35 != v33);
  }

  v38 = v44;
  v39 = v32;
  v40 = v31;
  (*(v44 + 8))(v39);
  v41 = *(v38 + 32);
  v42 = v46;
  v41(v46, v53, v40);
  return (v41)(v45, v42, v40);
}

uint64_t static SIMDMask..& infix(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a5;
  v70 = a2;
  v61 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v65 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v58 = &v56 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v68 = &v56 - v19;
  v20 = *(a3 - 1);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v56 - v27;
  MEMORY[0x1EEE9AC00](v26, v29);
  v32 = MEMORY[0x1EEE9AC00](&v56 - v30, v31);
  v60 = &v56 - v33;
  v34 = *(v20 + 16);
  v71 = v32;
  v34(v32, a1, a3);
  v35 = v28;
  v34(v28, v70, a3);
  v36 = v24;
  (*(v8 + 48))(a3, v8);
  v37 = (*(v8 + 40))(a3, v8);
  if (v37 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v20;
  v38 = a3;
  v39 = v58;
  v40 = v59;
  v69 = v35;
  v70 = v36;
  if (v37)
  {
    v41 = v8;
    v42 = 0;
    v43 = *(v8 + 56);
    v63 = (v65 + 8);
    v64 = v43;
    v65 = v8 + 56;
    v66 = v37;
    v62 = v8 + 64;
    do
    {
      v44 = v39;
      v45 = v40;
      v46 = v64;
      v64(v42, v38, v41);
      v46(v42, v38, v41);
      v40 = v45;
      v39 = v44;
      v47 = v38;
      v48 = v68;
      (*(*(v67 + 8) + 192))(v44, v40, v10);
      v49 = *v63;
      (*v63)(v40, v10);
      v49(v44, v10);
      v50 = v48;
      v38 = v47;
      (*(v41 + 64))(v50, v42++, v47, v41);
    }

    while (v66 != v42);
  }

  v51 = v57;
  v52 = *(v57 + 8);
  v52(v69, v38);
  v52(v71, v38);
  v53 = *(v51 + 32);
  v54 = v60;
  v53(v60, v70, v38);
  return (v53)(v61, v54, v38);
}

uint64_t static SIMDMask..^ infix(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a5;
  v70 = a2;
  v61 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v65 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v58 = &v56 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v68 = &v56 - v19;
  v20 = *(a3 - 1);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v56 - v27;
  MEMORY[0x1EEE9AC00](v26, v29);
  v32 = MEMORY[0x1EEE9AC00](&v56 - v30, v31);
  v60 = &v56 - v33;
  v34 = *(v20 + 16);
  v71 = v32;
  v34(v32, a1, a3);
  v35 = v28;
  v34(v28, v70, a3);
  v36 = v24;
  (*(v8 + 48))(a3, v8);
  v37 = (*(v8 + 40))(a3, v8);
  if (v37 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v20;
  v38 = a3;
  v39 = v58;
  v40 = v59;
  v69 = v35;
  v70 = v36;
  if (v37)
  {
    v41 = v8;
    v42 = 0;
    v43 = *(v8 + 56);
    v63 = (v65 + 8);
    v64 = v43;
    v65 = v8 + 56;
    v66 = v37;
    v62 = v8 + 64;
    do
    {
      v44 = v39;
      v45 = v40;
      v46 = v64;
      v64(v42, v38, v41);
      v46(v42, v38, v41);
      v40 = v45;
      v39 = v44;
      v47 = v38;
      v48 = v68;
      (*(*(v67 + 8) + 224))(v44, v40, v10);
      v49 = *v63;
      (*v63)(v40, v10);
      v49(v44, v10);
      v50 = v48;
      v38 = v47;
      (*(v41 + 64))(v50, v42++, v47, v41);
    }

    while (v66 != v42);
  }

  v51 = v57;
  v52 = *(v57 + 8);
  v52(v69, v38);
  v52(v71, v38);
  v53 = *(v51 + 32);
  v54 = v60;
  v53(v60, v70, v38);
  return (v53)(v61, v54, v38);
}

uint64_t static SIMDMask..| infix(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a5;
  v70 = a2;
  v61 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v65 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v58 = &v56 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v68 = &v56 - v19;
  v20 = *(a3 - 1);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v56 - v27;
  MEMORY[0x1EEE9AC00](v26, v29);
  v32 = MEMORY[0x1EEE9AC00](&v56 - v30, v31);
  v60 = &v56 - v33;
  v34 = *(v20 + 16);
  v71 = v32;
  v34(v32, a1, a3);
  v35 = v28;
  v34(v28, v70, a3);
  v36 = v24;
  (*(v8 + 48))(a3, v8);
  v37 = (*(v8 + 40))(a3, v8);
  if (v37 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v20;
  v38 = a3;
  v39 = v58;
  v40 = v59;
  v69 = v35;
  v70 = v36;
  if (v37)
  {
    v41 = v8;
    v42 = 0;
    v43 = *(v8 + 56);
    v63 = (v65 + 8);
    v64 = v43;
    v65 = v8 + 56;
    v66 = v37;
    v62 = v8 + 64;
    do
    {
      v44 = v39;
      v45 = v40;
      v46 = v64;
      v64(v42, v38, v41);
      v46(v42, v38, v41);
      v40 = v45;
      v39 = v44;
      v47 = v38;
      v48 = v68;
      (*(*(v67 + 8) + 208))(v44, v40, v10);
      v49 = *v63;
      (*v63)(v40, v10);
      v49(v44, v10);
      v50 = v48;
      v38 = v47;
      (*(v41 + 64))(v50, v42++, v47, v41);
    }

    while (v66 != v42);
  }

  v51 = v57;
  v52 = *(v57 + 8);
  v52(v69, v38);
  v52(v71, v38);
  v53 = *(v51 + 32);
  v54 = v60;
  v53(v60, v70, v38);
  return (v53)(v61, v54, v38);
}

uint64_t static SIMD<>.& infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a5;
  v69 = a2;
  v71 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v70 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v62 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v59 - v21, v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v61 = &v59 - v28;
  v29 = v27;
  v31 = v30;
  v32 = *(v10 + 16);
  v32(v27, a1);
  v66 = *(v8 + 48);
  v67 = (v8 + 48);
  (v66)(a3, v8);
  v64 = *(v8 + 40);
  v65 = v8 + 40;
  v33 = v64(a3, v8);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v72 = a3;
  v73 = v10;
  v34 = v31;
  v35 = v70;
  v74 = v25;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      (v32)(v35, v29, v34);
      (*(v8 + 64))(v35, v36, v72, v8);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v73 + 8);
  v40 = v73 + 8;
  v41 = v34;
  v39(v29, v34);
  v42 = v61;
  v43 = v72;
  (*(v62 + 32))(v61, v74, v72);
  (v66)(v43, v8);
  v44 = v43;
  v45 = v64(v43, v8);
  if (v45 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v41;
  v73 = v40;
  v47 = v44;
  v48 = v59;
  v49 = v60;
  v50 = v42;
  v67 = v39;
  if (v45)
  {
    v51 = 0;
    v64 = *(v8 + 56);
    v65 = v8 + 56;
    v63 = v8 + 64;
    v66 = v45;
    do
    {
      v74 = v51 + 1;
      v52 = v64;
      (v64)(v51, v47, v8);
      v52(v51, v47, v8);
      v53 = v70;
      (*(*(v68 + 8) + 192))(v48, v49, v46);
      v54 = v49;
      v55 = v49;
      v56 = v47;
      v57 = v67;
      v67(v54, v46);
      v57(v48, v46);
      v47 = v56;
      v49 = v55;
      (*(v8 + 64))(v53, v51, v47, v8);
      v51 = v74;
    }

    while (v66 != v74);
  }

  return (*(v62 + 8))(v50, v47);
}

{
  v68 = a5;
  v61 = a1;
  v70 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v69 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v62 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v59 - v21, v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v73 = &v59 - v28;
  v29 = v27;
  v31 = v30;
  v32 = *(v10 + 16);
  v32(v27, a2);
  v66 = *(v8 + 48);
  v67 = (v8 + 48);
  (v66)(a3, v8);
  v64 = *(v8 + 40);
  v65 = v8 + 40;
  v33 = v64(a3, v8);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v71 = a3;
  v72 = v10;
  v34 = v31;
  v35 = v69;
  v74 = v25;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      (v32)(v35, v29, v34);
      (*(v8 + 64))(v35, v36, v71, v8);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v72 + 8);
  v40 = v72 + 8;
  v41 = v34;
  v39(v29, v34);
  v42 = v71;
  (*(v62 + 32))(v73, v74, v71);
  (v66)(v42, v8);
  v43 = v42;
  v44 = v64(v42, v8);
  if (v44 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v41;
  v47 = v60;
  v46 = v61;
  v72 = v40;
  v48 = v43;
  v49 = v59;
  v67 = v39;
  if (v44)
  {
    v50 = 0;
    v64 = *(v8 + 56);
    v65 = v8 + 56;
    v63 = v8 + 64;
    v66 = v44;
    do
    {
      v74 = v50 + 1;
      v51 = v46;
      v52 = v64;
      (v64)(v50, v48, v8);
      v52(v50, v48, v8);
      v53 = v69;
      (*(*(v68 + 8) + 192))(v49, v47, v45);
      v54 = v47;
      v55 = v47;
      v56 = v48;
      v57 = v67;
      v67(v54, v45);
      v57(v49, v45);
      v48 = v56;
      v47 = v55;
      (*(v8 + 64))(v53, v50, v48, v8);
      v46 = v51;
      v50 = v74;
    }

    while (v66 != v74);
  }

  return (*(v62 + 8))(v73, v48);
}

uint64_t static SIMD<>.^ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a5;
  v69 = a2;
  v71 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v70 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v62 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v59 - v21, v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v61 = &v59 - v28;
  v29 = v27;
  v31 = v30;
  v32 = *(v10 + 16);
  v32(v27, a1);
  v66 = *(v8 + 48);
  v67 = (v8 + 48);
  (v66)(a3, v8);
  v64 = *(v8 + 40);
  v65 = v8 + 40;
  v33 = v64(a3, v8);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v72 = a3;
  v73 = v10;
  v34 = v31;
  v35 = v70;
  v74 = v25;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      (v32)(v35, v29, v34);
      (*(v8 + 64))(v35, v36, v72, v8);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v73 + 8);
  v40 = v73 + 8;
  v41 = v34;
  v39(v29, v34);
  v42 = v61;
  v43 = v72;
  (*(v62 + 32))(v61, v74, v72);
  (v66)(v43, v8);
  v44 = v43;
  v45 = v64(v43, v8);
  if (v45 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v41;
  v73 = v40;
  v47 = v44;
  v48 = v59;
  v49 = v60;
  v50 = v42;
  v67 = v39;
  if (v45)
  {
    v51 = 0;
    v64 = *(v8 + 56);
    v65 = v8 + 56;
    v63 = v8 + 64;
    v66 = v45;
    do
    {
      v74 = v51 + 1;
      v52 = v64;
      (v64)(v51, v47, v8);
      v52(v51, v47, v8);
      v53 = v70;
      (*(*(v68 + 8) + 224))(v48, v49, v46);
      v54 = v49;
      v55 = v49;
      v56 = v47;
      v57 = v67;
      v67(v54, v46);
      v57(v48, v46);
      v47 = v56;
      v49 = v55;
      (*(v8 + 64))(v53, v51, v47, v8);
      v51 = v74;
    }

    while (v66 != v74);
  }

  return (*(v62 + 8))(v50, v47);
}

{
  v68 = a5;
  v61 = a1;
  v70 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v69 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v62 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v59 - v21, v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v73 = &v59 - v28;
  v29 = v27;
  v31 = v30;
  v32 = *(v10 + 16);
  v32(v27, a2);
  v66 = *(v8 + 48);
  v67 = (v8 + 48);
  (v66)(a3, v8);
  v64 = *(v8 + 40);
  v65 = v8 + 40;
  v33 = v64(a3, v8);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v71 = a3;
  v72 = v10;
  v34 = v31;
  v35 = v69;
  v74 = v25;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      (v32)(v35, v29, v34);
      (*(v8 + 64))(v35, v36, v71, v8);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v72 + 8);
  v40 = v72 + 8;
  v41 = v34;
  v39(v29, v34);
  v42 = v71;
  (*(v62 + 32))(v73, v74, v71);
  (v66)(v42, v8);
  v43 = v42;
  v44 = v64(v42, v8);
  if (v44 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v41;
  v47 = v60;
  v46 = v61;
  v72 = v40;
  v48 = v43;
  v49 = v59;
  v67 = v39;
  if (v44)
  {
    v50 = 0;
    v64 = *(v8 + 56);
    v65 = v8 + 56;
    v63 = v8 + 64;
    v66 = v44;
    do
    {
      v74 = v50 + 1;
      v51 = v46;
      v52 = v64;
      (v64)(v50, v48, v8);
      v52(v50, v48, v8);
      v53 = v69;
      (*(*(v68 + 8) + 224))(v49, v47, v45);
      v54 = v47;
      v55 = v47;
      v56 = v48;
      v57 = v67;
      v67(v54, v45);
      v57(v49, v45);
      v48 = v56;
      v47 = v55;
      (*(v8 + 64))(v53, v50, v48, v8);
      v46 = v51;
      v50 = v74;
    }

    while (v66 != v74);
  }

  return (*(v62 + 8))(v73, v48);
}

uint64_t static SIMD<>.| infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a5;
  v69 = a2;
  v71 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v70 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v62 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v59 - v21, v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v61 = &v59 - v28;
  v29 = v27;
  v31 = v30;
  v32 = *(v10 + 16);
  v32(v27, a1);
  v66 = *(v8 + 48);
  v67 = (v8 + 48);
  (v66)(a3, v8);
  v64 = *(v8 + 40);
  v65 = v8 + 40;
  v33 = v64(a3, v8);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v72 = a3;
  v73 = v10;
  v34 = v31;
  v35 = v70;
  v74 = v25;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      (v32)(v35, v29, v34);
      (*(v8 + 64))(v35, v36, v72, v8);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v73 + 8);
  v40 = v73 + 8;
  v41 = v34;
  v39(v29, v34);
  v42 = v61;
  v43 = v72;
  (*(v62 + 32))(v61, v74, v72);
  (v66)(v43, v8);
  v44 = v43;
  v45 = v64(v43, v8);
  if (v45 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v41;
  v73 = v40;
  v47 = v44;
  v48 = v59;
  v49 = v60;
  v50 = v42;
  v67 = v39;
  if (v45)
  {
    v51 = 0;
    v64 = *(v8 + 56);
    v65 = v8 + 56;
    v63 = v8 + 64;
    v66 = v45;
    do
    {
      v74 = v51 + 1;
      v52 = v64;
      (v64)(v51, v47, v8);
      v52(v51, v47, v8);
      v53 = v70;
      (*(*(v68 + 8) + 208))(v48, v49, v46);
      v54 = v49;
      v55 = v49;
      v56 = v47;
      v57 = v67;
      v67(v54, v46);
      v57(v48, v46);
      v47 = v56;
      v49 = v55;
      (*(v8 + 64))(v53, v51, v47, v8);
      v51 = v74;
    }

    while (v66 != v74);
  }

  return (*(v62 + 8))(v50, v47);
}

{
  v68 = a5;
  v61 = a1;
  v70 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v69 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v62 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v59 - v21, v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v73 = &v59 - v28;
  v29 = v27;
  v31 = v30;
  v32 = *(v10 + 16);
  v32(v27, a2);
  v66 = *(v8 + 48);
  v67 = (v8 + 48);
  (v66)(a3, v8);
  v64 = *(v8 + 40);
  v65 = v8 + 40;
  v33 = v64(a3, v8);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v71 = a3;
  v72 = v10;
  v34 = v31;
  v35 = v69;
  v74 = v25;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      (v32)(v35, v29, v34);
      (*(v8 + 64))(v35, v36, v71, v8);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v72 + 8);
  v40 = v72 + 8;
  v41 = v34;
  v39(v29, v34);
  v42 = v71;
  (*(v62 + 32))(v73, v74, v71);
  (v66)(v42, v8);
  v43 = v42;
  v44 = v64(v42, v8);
  if (v44 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v41;
  v47 = v60;
  v46 = v61;
  v72 = v40;
  v48 = v43;
  v49 = v59;
  v67 = v39;
  if (v44)
  {
    v50 = 0;
    v64 = *(v8 + 56);
    v65 = v8 + 56;
    v63 = v8 + 64;
    v66 = v44;
    do
    {
      v74 = v50 + 1;
      v51 = v46;
      v52 = v64;
      (v64)(v50, v48, v8);
      v52(v50, v48, v8);
      v53 = v69;
      (*(*(v68 + 8) + 208))(v49, v47, v45);
      v54 = v47;
      v55 = v47;
      v56 = v48;
      v57 = v67;
      v67(v54, v45);
      v57(v49, v45);
      v48 = v56;
      v47 = v55;
      (*(v8 + 64))(v53, v50, v48, v8);
      v46 = v51;
      v50 = v74;
    }

    while (v66 != v74);
  }

  return (*(v62 + 8))(v73, v48);
}

uint64_t static SIMD<>.&<< infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a2;
  v67 = a5;
  v69 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v57 = &v57 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v68 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v60 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v57 - v21, v22);
  v25 = (&v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v59 = &v57 - v28;
  v30 = v29;
  v31 = v27;
  v61 = *(v29 + 16);
  v61(v27, a1, v10);
  v64 = *(v8 + 48);
  v65 = (v8 + 48);
  v64(a3, v8);
  v62 = *(v8 + 40);
  v63 = (v8 + 40);
  v32 = v62(a3, v8);
  if (v32 < 0)
  {
    goto LABEL_10;
  }

  v33 = v10;
  v70 = v25;
  v71 = v30;
  v34 = v68;
  v72 = a3;
  v35 = v61;
  if (v32)
  {
    v36 = 0;
    do
    {
      v37 = v32;
      v38 = v33;
      v35(v34, v31, v33);
      (*(v8 + 64))(v34, v36, v72, v8);
      v32 = v37;
      v33 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v71 + 8);
  v40 = v33;
  v41 = v71 + 8;
  v39(v31, v33);
  v42 = v59;
  v43 = v72;
  (*(v60 + 32))(v59, v70, v72);
  v64(v43, v8);
  v44 = v62(v43, v8);
  if (v44 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v43;
  v70 = v39;
  v71 = v41;
  v47 = v57;
  v46 = v58;
  if (v44)
  {
    v48 = 0;
    v49 = *(v8 + 56);
    v62 = (v67 + 216);
    v63 = v49;
    v64 = (v8 + 56);
    v65 = v44;
    v61 = (v8 + 64);
    do
    {
      v72 = (v48 + 1);
      v50 = v63;
      v63(v48, v45, v8);
      v50(v48, v45, v8);
      v51 = v68;
      (*(v67 + 216))(v47, v46, v40);
      v52 = v46;
      v53 = v46;
      v54 = v45;
      v55 = v70;
      v70(v52, v40);
      v55(v47, v40);
      v45 = v54;
      v46 = v53;
      (*(v8 + 64))(v51, v48, v45, v8);
      v48 = v72;
    }

    while (v65 != v72);
  }

  return (*(v60 + 8))(v42, v45);
}

{
  v65 = a5;
  v58 = a1;
  v67 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v57 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v56 = &v56 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v66 = &v56 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v59 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v56 - v21, v22);
  v25 = (&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v70 = &v56 - v28;
  v30 = v29;
  v31 = v27;
  v60 = *(v29 + 16);
  v60(v27, a2, v10);
  v63 = *(v8 + 48);
  v64 = (v8 + 48);
  v63(a3, v8);
  v61 = *(v8 + 40);
  v62 = (v8 + 40);
  v32 = v61(a3, v8);
  if (v32 < 0)
  {
    goto LABEL_10;
  }

  v33 = v10;
  v68 = v25;
  v69 = v30;
  v34 = v66;
  v71 = a3;
  v35 = v60;
  if (v32)
  {
    v36 = 0;
    do
    {
      v37 = v32;
      v38 = v33;
      v35(v34, v31, v33);
      (*(v8 + 64))(v34, v36, v71, v8);
      v32 = v37;
      v33 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v69 + 8);
  v40 = v33;
  v41 = v69 + 8;
  v39(v31, v33);
  v42 = v71;
  (*(v59 + 32))(v70, v68, v71);
  v63(v42, v8);
  v43 = v61(v42, v8);
  if (v43 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v44 = v42;
  v45 = v57;
  v68 = v39;
  v69 = v41;
  v46 = v56;
  if (v43)
  {
    v47 = 0;
    v48 = *(v8 + 56);
    v61 = (v65 + 216);
    v62 = v48;
    v63 = (v8 + 56);
    v64 = v43;
    v60 = (v8 + 64);
    do
    {
      v71 = (v47 + 1);
      v49 = v62;
      v62(v47, v44, v8);
      v49(v47, v44, v8);
      v50 = v66;
      (*(v65 + 216))(v46, v45, v40);
      v51 = v45;
      v52 = v45;
      v53 = v44;
      v54 = v68;
      v68(v51, v40);
      v54(v46, v40);
      v44 = v53;
      v45 = v52;
      (*(v8 + 64))(v50, v47, v44, v8);
      v47 = v71;
    }

    while (v64 != v71);
  }

  return (*(v59 + 8))(v70, v44);
}

uint64_t static SIMD<>.&>> infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a2;
  v67 = a5;
  v69 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v57 = &v57 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v68 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v60 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v57 - v21, v22);
  v25 = (&v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v59 = &v57 - v28;
  v30 = v29;
  v31 = v27;
  v61 = *(v29 + 16);
  v61(v27, a1, v10);
  v64 = *(v8 + 48);
  v65 = (v8 + 48);
  v64(a3, v8);
  v62 = *(v8 + 40);
  v63 = (v8 + 40);
  v32 = v62(a3, v8);
  if (v32 < 0)
  {
    goto LABEL_10;
  }

  v33 = v10;
  v70 = v25;
  v71 = v30;
  v34 = v68;
  v72 = a3;
  v35 = v61;
  if (v32)
  {
    v36 = 0;
    do
    {
      v37 = v32;
      v38 = v33;
      v35(v34, v31, v33);
      (*(v8 + 64))(v34, v36, v72, v8);
      v32 = v37;
      v33 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v71 + 8);
  v40 = v33;
  v41 = v71 + 8;
  v39(v31, v33);
  v42 = v59;
  v43 = v72;
  (*(v60 + 32))(v59, v70, v72);
  v64(v43, v8);
  v44 = v62(v43, v8);
  if (v44 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v43;
  v70 = v39;
  v71 = v41;
  v47 = v57;
  v46 = v58;
  if (v44)
  {
    v48 = 0;
    v49 = *(v8 + 56);
    v62 = (v67 + 200);
    v63 = v49;
    v64 = (v8 + 56);
    v65 = v44;
    v61 = (v8 + 64);
    do
    {
      v72 = (v48 + 1);
      v50 = v63;
      v63(v48, v45, v8);
      v50(v48, v45, v8);
      v51 = v68;
      (*(v67 + 200))(v47, v46, v40);
      v52 = v46;
      v53 = v46;
      v54 = v45;
      v55 = v70;
      v70(v52, v40);
      v55(v47, v40);
      v45 = v54;
      v46 = v53;
      (*(v8 + 64))(v51, v48, v45, v8);
      v48 = v72;
    }

    while (v65 != v72);
  }

  return (*(v60 + 8))(v42, v45);
}

{
  v65 = a5;
  v58 = a1;
  v67 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v57 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v56 = &v56 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v66 = &v56 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v59 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v56 - v21, v22);
  v25 = (&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v70 = &v56 - v28;
  v30 = v29;
  v31 = v27;
  v60 = *(v29 + 16);
  v60(v27, a2, v10);
  v63 = *(v8 + 48);
  v64 = (v8 + 48);
  v63(a3, v8);
  v61 = *(v8 + 40);
  v62 = (v8 + 40);
  v32 = v61(a3, v8);
  if (v32 < 0)
  {
    goto LABEL_10;
  }

  v33 = v10;
  v68 = v25;
  v69 = v30;
  v34 = v66;
  v71 = a3;
  v35 = v60;
  if (v32)
  {
    v36 = 0;
    do
    {
      v37 = v32;
      v38 = v33;
      v35(v34, v31, v33);
      (*(v8 + 64))(v34, v36, v71, v8);
      v32 = v37;
      v33 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v69 + 8);
  v40 = v33;
  v41 = v69 + 8;
  v39(v31, v33);
  v42 = v71;
  (*(v59 + 32))(v70, v68, v71);
  v63(v42, v8);
  v43 = v61(v42, v8);
  if (v43 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v44 = v42;
  v45 = v57;
  v68 = v39;
  v69 = v41;
  v46 = v56;
  if (v43)
  {
    v47 = 0;
    v48 = *(v8 + 56);
    v61 = (v65 + 200);
    v62 = v48;
    v63 = (v8 + 56);
    v64 = v43;
    v60 = (v8 + 64);
    do
    {
      v71 = (v47 + 1);
      v49 = v62;
      v62(v47, v44, v8);
      v49(v47, v44, v8);
      v50 = v66;
      (*(v65 + 200))(v46, v45, v40);
      v51 = v45;
      v52 = v45;
      v53 = v44;
      v54 = v68;
      v68(v51, v40);
      v54(v46, v40);
      v44 = v53;
      v45 = v52;
      (*(v8 + 64))(v50, v47, v44, v8);
      v47 = v71;
    }

    while (v64 != v71);
  }

  return (*(v59 + 8))(v70, v44);
}

uint64_t static SIMD<>.&+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a2;
  v75 = a5;
  v77 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v63 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v76 = &v63 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v68 = *(a3 - 1);
  v24 = MEMORY[0x1EEE9AC00](&v63 - v22, v23);
  v26 = (&v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v67 = &v63 - v29;
  v31 = v30;
  v32 = *(v30 + 16);
  v69 = v28;
  v66 = v32;
  v32(v28, a1, v10);
  v72 = *(v8 + 48);
  v73 = v8 + 48;
  v72(a3, v8);
  v33 = v26;
  v34 = a3;
  v70 = *(v8 + 40);
  v71 = (v8 + 40);
  v35 = v70(a3, v8);
  if (v35 < 0)
  {
    goto LABEL_10;
  }

  v36 = v35;
  v64 = v17;
  v78 = v33;
  v79 = v31;
  v37 = v10;
  v38 = v76;
  v39 = v69;
  v80 = v34;
  v40 = v66;
  if (v35)
  {
    v41 = 0;
    do
    {
      v40(v38, v39, v10);
      (*(v8 + 64))(v38, v41++, v80, v8);
    }

    while (v36 != v41);
  }

  v42 = *(v79 + 8);
  v43 = v39;
  v44 = v79 + 8;
  v42(v43, v10);
  v45 = v67;
  v46 = v80;
  (*(v68 + 32))(v67, v78, v80);
  v72(v46, v8);
  v47 = v70(v46, v8);
  if (v47 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v48 = v46;
  v78 = v42;
  v79 = v44;
  v50 = v64;
  v49 = v65;
  if (v47)
  {
    v51 = 0;
    v52 = *(v8 + 56);
    v70 = (v75 + 80);
    v71 = v52;
    v72 = (v8 + 56);
    v73 = v47;
    v69 = v8 + 64;
    do
    {
      v80 = (v51 + 1);
      v53 = v71;
      v71(v51, v48, v8);
      v53(v51, v48, v8);
      v54 = v48;
      v55 = v76;
      (*(v75 + 80))(v76, v49, v37);
      v56 = v49;
      v57 = v37;
      v58 = v49;
      v59 = v37;
      v60 = v78;
      v78(v56, v57);
      v60(v50, v59);
      v37 = v59;
      v49 = v58;
      v61 = v55;
      v48 = v54;
      (*(v8 + 64))(v61, v51, v54, v8);
      v51 = v80;
    }

    while (v73 != v80);
  }

  return (*(v68 + 8))(v45, v48);
}

{
  v75 = a5;
  v66 = a1;
  v77 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v67 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v64 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v76 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v69 = *(a3 - 1);
  v24 = MEMORY[0x1EEE9AC00](&v64 - v22, v23);
  v26 = (&v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v80 = &v64 - v29;
  v31 = v30;
  v32 = *(v30 + 16);
  v70 = v28;
  v68 = v32;
  v32(v28, a2, v10);
  v73 = *(v8 + 48);
  v74 = v8 + 48;
  v73(a3, v8);
  v33 = v26;
  v34 = a3;
  v71 = *(v8 + 40);
  v72 = (v8 + 40);
  v35 = v71(a3, v8);
  if (v35 < 0)
  {
    goto LABEL_10;
  }

  v36 = v35;
  v65 = v17;
  v78 = v33;
  v79 = v31;
  v37 = v10;
  v38 = v76;
  v39 = v70;
  v81 = v34;
  v40 = v68;
  if (v35)
  {
    v41 = 0;
    do
    {
      v40(v38, v39, v10);
      (*(v8 + 64))(v38, v41++, v81, v8);
    }

    while (v36 != v41);
  }

  v42 = *(v79 + 8);
  v43 = v39;
  v44 = v79 + 8;
  v42(v43, v10);
  v45 = v81;
  (*(v69 + 32))(v80, v78, v81);
  v73(v45, v8);
  v46 = v71(v45, v8);
  if (v46 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v47 = v45;
  v48 = v66;
  v49 = v67;
  v78 = v42;
  v79 = v44;
  v50 = v65;
  if (v46)
  {
    v51 = 0;
    v52 = *(v8 + 56);
    v71 = (v75 + 80);
    v72 = v52;
    v73 = (v8 + 56);
    v74 = v46;
    v70 = v8 + 64;
    do
    {
      v81 = (v51 + 1);
      v53 = v48;
      v54 = v72;
      v72(v51, v47, v8);
      v54(v51, v47, v8);
      v55 = v47;
      v56 = v76;
      (*(v75 + 80))(v76, v49, v37);
      v57 = v49;
      v58 = v37;
      v59 = v49;
      v60 = v37;
      v61 = v78;
      v78(v57, v58);
      v61(v50, v60);
      v37 = v60;
      v49 = v59;
      v62 = v56;
      v47 = v55;
      (*(v8 + 64))(v62, v51, v55, v8);
      v48 = v53;
      v51 = v81;
    }

    while (v74 != v81);
  }

  return (*(v69 + 8))(v80, v47);
}

uint64_t static SIMD<>.&- infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a2;
  v75 = a5;
  v77 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v63 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v76 = &v63 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v68 = *(a3 - 1);
  v24 = MEMORY[0x1EEE9AC00](&v63 - v22, v23);
  v26 = (&v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v67 = &v63 - v29;
  v31 = v30;
  v32 = *(v30 + 16);
  v69 = v28;
  v66 = v32;
  v32(v28, a1, v10);
  v72 = *(v8 + 48);
  v73 = v8 + 48;
  v72(a3, v8);
  v33 = v26;
  v34 = a3;
  v70 = *(v8 + 40);
  v71 = (v8 + 40);
  v35 = v70(a3, v8);
  if (v35 < 0)
  {
    goto LABEL_10;
  }

  v36 = v35;
  v64 = v17;
  v78 = v33;
  v79 = v31;
  v37 = v10;
  v38 = v76;
  v39 = v69;
  v80 = v34;
  v40 = v66;
  if (v35)
  {
    v41 = 0;
    do
    {
      v40(v38, v39, v10);
      (*(v8 + 64))(v38, v41++, v80, v8);
    }

    while (v36 != v41);
  }

  v42 = *(v79 + 8);
  v43 = v39;
  v44 = v79 + 8;
  v42(v43, v10);
  v45 = v67;
  v46 = v80;
  (*(v68 + 32))(v67, v78, v80);
  v72(v46, v8);
  v47 = v70(v46, v8);
  if (v47 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v48 = v46;
  v78 = v42;
  v79 = v44;
  v50 = v64;
  v49 = v65;
  if (v47)
  {
    v51 = 0;
    v52 = *(v8 + 56);
    v70 = (v75 + 88);
    v71 = v52;
    v72 = (v8 + 56);
    v73 = v47;
    v69 = v8 + 64;
    do
    {
      v80 = (v51 + 1);
      v53 = v71;
      v71(v51, v48, v8);
      v53(v51, v48, v8);
      v54 = v48;
      v55 = v76;
      (*(v75 + 88))(v76, v49, v37);
      v56 = v49;
      v57 = v37;
      v58 = v49;
      v59 = v37;
      v60 = v78;
      v78(v56, v57);
      v60(v50, v59);
      v37 = v59;
      v49 = v58;
      v61 = v55;
      v48 = v54;
      (*(v8 + 64))(v61, v51, v54, v8);
      v51 = v80;
    }

    while (v73 != v80);
  }

  return (*(v68 + 8))(v45, v48);
}

{
  v75 = a5;
  v66 = a1;
  v77 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v67 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v64 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v76 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v69 = *(a3 - 1);
  v24 = MEMORY[0x1EEE9AC00](&v64 - v22, v23);
  v26 = (&v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v80 = &v64 - v29;
  v31 = v30;
  v32 = *(v30 + 16);
  v70 = v28;
  v68 = v32;
  v32(v28, a2, v10);
  v73 = *(v8 + 48);
  v74 = v8 + 48;
  v73(a3, v8);
  v33 = v26;
  v34 = a3;
  v71 = *(v8 + 40);
  v72 = (v8 + 40);
  v35 = v71(a3, v8);
  if (v35 < 0)
  {
    goto LABEL_10;
  }

  v36 = v35;
  v65 = v17;
  v78 = v33;
  v79 = v31;
  v37 = v10;
  v38 = v76;
  v39 = v70;
  v81 = v34;
  v40 = v68;
  if (v35)
  {
    v41 = 0;
    do
    {
      v40(v38, v39, v10);
      (*(v8 + 64))(v38, v41++, v81, v8);
    }

    while (v36 != v41);
  }

  v42 = *(v79 + 8);
  v43 = v39;
  v44 = v79 + 8;
  v42(v43, v10);
  v45 = v81;
  (*(v69 + 32))(v80, v78, v81);
  v73(v45, v8);
  v46 = v71(v45, v8);
  if (v46 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v47 = v45;
  v48 = v66;
  v49 = v67;
  v78 = v42;
  v79 = v44;
  v50 = v65;
  if (v46)
  {
    v51 = 0;
    v52 = *(v8 + 56);
    v71 = (v75 + 88);
    v72 = v52;
    v73 = (v8 + 56);
    v74 = v46;
    v70 = v8 + 64;
    do
    {
      v81 = (v51 + 1);
      v53 = v48;
      v54 = v72;
      v72(v51, v47, v8);
      v54(v51, v47, v8);
      v55 = v47;
      v56 = v76;
      (*(v75 + 88))(v76, v49, v37);
      v57 = v49;
      v58 = v37;
      v59 = v49;
      v60 = v37;
      v61 = v78;
      v78(v57, v58);
      v61(v50, v60);
      v37 = v60;
      v49 = v59;
      v62 = v56;
      v47 = v55;
      (*(v8 + 64))(v62, v51, v55, v8);
      v48 = v53;
      v51 = v81;
    }

    while (v74 != v81);
  }

  return (*(v69 + 8))(v80, v47);
}

uint64_t static SIMD<>.&* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a2;
  v75 = a5;
  v77 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v63 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v76 = &v63 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v68 = *(a3 - 1);
  v24 = MEMORY[0x1EEE9AC00](&v63 - v22, v23);
  v26 = (&v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v67 = &v63 - v29;
  v31 = v30;
  v32 = *(v30 + 16);
  v69 = v28;
  v66 = v32;
  v32(v28, a1, v10);
  v72 = *(v8 + 48);
  v73 = v8 + 48;
  v72(a3, v8);
  v33 = v26;
  v34 = a3;
  v70 = *(v8 + 40);
  v71 = (v8 + 40);
  v35 = v70(a3, v8);
  if (v35 < 0)
  {
    goto LABEL_10;
  }

  v36 = v35;
  v64 = v17;
  v78 = v33;
  v79 = v31;
  v37 = v10;
  v38 = v76;
  v39 = v69;
  v80 = v34;
  v40 = v66;
  if (v35)
  {
    v41 = 0;
    do
    {
      v40(v38, v39, v10);
      (*(v8 + 64))(v38, v41++, v80, v8);
    }

    while (v36 != v41);
  }

  v42 = *(v79 + 8);
  v43 = v39;
  v44 = v79 + 8;
  v42(v43, v10);
  v45 = v67;
  v46 = v80;
  (*(v68 + 32))(v67, v78, v80);
  v72(v46, v8);
  v47 = v70(v46, v8);
  if (v47 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v48 = v46;
  v78 = v42;
  v79 = v44;
  v50 = v64;
  v49 = v65;
  if (v47)
  {
    v51 = 0;
    v52 = *(v8 + 56);
    v70 = (v75 + 96);
    v71 = v52;
    v72 = (v8 + 56);
    v73 = v47;
    v69 = v8 + 64;
    do
    {
      v80 = (v51 + 1);
      v53 = v71;
      v71(v51, v48, v8);
      v53(v51, v48, v8);
      v54 = v48;
      v55 = v76;
      (*(v75 + 96))(v76, v50, v37);
      v56 = v49;
      v57 = v37;
      v58 = v49;
      v59 = v37;
      v60 = v78;
      v78(v56, v57);
      v60(v50, v59);
      v37 = v59;
      v49 = v58;
      v61 = v55;
      v48 = v54;
      (*(v8 + 64))(v61, v51, v54, v8);
      v51 = v80;
    }

    while (v73 != v80);
  }

  return (*(v68 + 8))(v45, v48);
}

{
  v75 = a5;
  v66 = a1;
  v77 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v67 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v64 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v76 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v69 = *(a3 - 1);
  v24 = MEMORY[0x1EEE9AC00](&v64 - v22, v23);
  v26 = (&v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v80 = &v64 - v29;
  v31 = v30;
  v32 = *(v30 + 16);
  v70 = v28;
  v68 = v32;
  v32(v28, a2, v10);
  v73 = *(v8 + 48);
  v74 = v8 + 48;
  v73(a3, v8);
  v33 = v26;
  v34 = a3;
  v71 = *(v8 + 40);
  v72 = (v8 + 40);
  v35 = v71(a3, v8);
  if (v35 < 0)
  {
    goto LABEL_10;
  }

  v36 = v35;
  v65 = v17;
  v78 = v33;
  v79 = v31;
  v37 = v10;
  v38 = v76;
  v39 = v70;
  v81 = v34;
  v40 = v68;
  if (v35)
  {
    v41 = 0;
    do
    {
      v40(v38, v39, v10);
      (*(v8 + 64))(v38, v41++, v81, v8);
    }

    while (v36 != v41);
  }

  v42 = *(v79 + 8);
  v43 = v39;
  v44 = v79 + 8;
  v42(v43, v10);
  v45 = v81;
  (*(v69 + 32))(v80, v78, v81);
  v73(v45, v8);
  v46 = v71(v45, v8);
  if (v46 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v47 = v45;
  v48 = v66;
  v49 = v67;
  v78 = v42;
  v79 = v44;
  v50 = v65;
  if (v46)
  {
    v51 = 0;
    v52 = *(v8 + 56);
    v71 = (v75 + 96);
    v72 = v52;
    v73 = (v8 + 56);
    v74 = v46;
    v70 = v8 + 64;
    do
    {
      v81 = (v51 + 1);
      v53 = v48;
      v54 = v72;
      v72(v51, v47, v8);
      v54(v51, v47, v8);
      v55 = v47;
      v56 = v76;
      (*(v75 + 96))(v76, v50, v37);
      v57 = v49;
      v58 = v37;
      v59 = v49;
      v60 = v37;
      v61 = v78;
      v78(v57, v58);
      v61(v50, v60);
      v37 = v60;
      v49 = v59;
      v62 = v56;
      v47 = v55;
      (*(v8 + 64))(v62, v51, v55, v8);
      v48 = v53;
      v51 = v81;
    }

    while (v74 != v81);
  }

  return (*(v69 + 8))(v80, v47);
}

uint64_t static SIMD<>./ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a5;
  v69 = a2;
  v71 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v70 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v62 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v59 - v21, v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v61 = &v59 - v28;
  v29 = v27;
  v31 = v30;
  v32 = *(v10 + 16);
  v32(v27, a1);
  v66 = *(v8 + 48);
  v67 = (v8 + 48);
  (v66)(a3, v8);
  v64 = *(v8 + 40);
  v65 = v8 + 40;
  v33 = v64(a3, v8);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v72 = a3;
  v73 = v10;
  v34 = v31;
  v35 = v70;
  v74 = v25;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      (v32)(v35, v29, v34);
      (*(v8 + 64))(v35, v36, v72, v8);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v73 + 8);
  v40 = v73 + 8;
  v41 = v34;
  v39(v29, v34);
  v42 = v61;
  v43 = v72;
  (*(v62 + 32))(v61, v74, v72);
  (v66)(v43, v8);
  v44 = v43;
  v45 = v64(v43, v8);
  if (v45 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v41;
  v73 = v40;
  v47 = v44;
  v48 = v59;
  v49 = v60;
  v50 = v42;
  v67 = v39;
  if (v45)
  {
    v51 = 0;
    v64 = *(v8 + 56);
    v65 = v8 + 56;
    v63 = v8 + 64;
    v66 = v45;
    do
    {
      v74 = v51 + 1;
      v52 = v64;
      (v64)(v51, v47, v8);
      v52(v51, v47, v8);
      v53 = v70;
      (*(*(v68 + 8) + 152))(v48, v49, v46);
      v54 = v49;
      v55 = v49;
      v56 = v47;
      v57 = v67;
      v67(v54, v46);
      v57(v48, v46);
      v47 = v56;
      v49 = v55;
      (*(v8 + 64))(v53, v51, v47, v8);
      v51 = v74;
    }

    while (v66 != v74);
  }

  return (*(v62 + 8))(v50, v47);
}

{
  v68 = a5;
  v61 = a1;
  v70 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v69 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v62 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v59 - v21, v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v73 = &v59 - v28;
  v29 = v27;
  v31 = v30;
  v32 = *(v10 + 16);
  v32(v27, a2);
  v66 = *(v8 + 48);
  v67 = (v8 + 48);
  (v66)(a3, v8);
  v64 = *(v8 + 40);
  v65 = v8 + 40;
  v33 = v64(a3, v8);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v71 = a3;
  v72 = v10;
  v34 = v31;
  v35 = v69;
  v74 = v25;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      (v32)(v35, v29, v34);
      (*(v8 + 64))(v35, v36, v71, v8);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v72 + 8);
  v40 = v72 + 8;
  v41 = v34;
  v39(v29, v34);
  v42 = v71;
  (*(v62 + 32))(v73, v74, v71);
  (v66)(v42, v8);
  v43 = v42;
  v44 = v64(v42, v8);
  if (v44 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v41;
  v47 = v60;
  v46 = v61;
  v72 = v40;
  v48 = v43;
  v49 = v59;
  v67 = v39;
  if (v44)
  {
    v50 = 0;
    v64 = *(v8 + 56);
    v65 = v8 + 56;
    v63 = v8 + 64;
    v66 = v44;
    do
    {
      v74 = v50 + 1;
      v51 = v46;
      v52 = v64;
      (v64)(v50, v48, v8);
      v52(v50, v48, v8);
      v53 = v69;
      (*(*(v68 + 8) + 152))(v49, v47, v45);
      v54 = v47;
      v55 = v47;
      v56 = v48;
      v57 = v67;
      v67(v54, v45);
      v57(v49, v45);
      v48 = v56;
      v47 = v55;
      (*(v8 + 64))(v53, v50, v48, v8);
      v46 = v51;
      v50 = v74;
    }

    while (v66 != v74);
  }

  return (*(v62 + 8))(v73, v48);
}

{
  v66 = a2;
  v67 = a5;
  v69 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v57 = &v57 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v68 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v60 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v57 - v21, v22);
  v25 = (&v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v59 = &v57 - v28;
  v30 = v29;
  v31 = v27;
  v61 = *(v29 + 16);
  v61(v27, a1, v10);
  v64 = *(v8 + 48);
  v65 = (v8 + 48);
  v64(a3, v8);
  v62 = *(v8 + 40);
  v63 = (v8 + 40);
  v32 = v62(a3, v8);
  if (v32 < 0)
  {
    goto LABEL_10;
  }

  v33 = v10;
  v70 = v25;
  v71 = v30;
  v34 = v68;
  v72 = a3;
  v35 = v61;
  if (v32)
  {
    v36 = 0;
    do
    {
      v37 = v32;
      v38 = v33;
      v35(v34, v31, v33);
      (*(v8 + 64))(v34, v36, v72, v8);
      v32 = v37;
      v33 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v71 + 8);
  v40 = v33;
  v41 = v71 + 8;
  v39(v31, v33);
  v42 = v59;
  v43 = v72;
  (*(v60 + 32))(v59, v70, v72);
  v64(v43, v8);
  v44 = v62(v43, v8);
  if (v44 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v43;
  v70 = v39;
  v71 = v41;
  v47 = v57;
  v46 = v58;
  if (v44)
  {
    v48 = 0;
    v49 = *(v8 + 56);
    v62 = (v67 + 192);
    v63 = v49;
    v64 = (v8 + 56);
    v65 = v44;
    v61 = (v8 + 64);
    do
    {
      v72 = (v48 + 1);
      v50 = v63;
      v63(v48, v45, v8);
      v50(v48, v45, v8);
      v51 = v68;
      (*(v67 + 192))(v47, v46, v40);
      v52 = v46;
      v53 = v46;
      v54 = v45;
      v55 = v70;
      v70(v52, v40);
      v55(v47, v40);
      v45 = v54;
      v46 = v53;
      (*(v8 + 64))(v51, v48, v45, v8);
      v48 = v72;
    }

    while (v65 != v72);
  }

  return (*(v60 + 8))(v42, v45);
}

{
  v65 = a5;
  v58 = a1;
  v67 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v57 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v56 = &v56 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v66 = &v56 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v59 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v56 - v21, v22);
  v25 = (&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v70 = &v56 - v28;
  v30 = v29;
  v31 = v27;
  v60 = *(v29 + 16);
  v60(v27, a2, v10);
  v63 = *(v8 + 48);
  v64 = (v8 + 48);
  v63(a3, v8);
  v61 = *(v8 + 40);
  v62 = (v8 + 40);
  v32 = v61(a3, v8);
  if (v32 < 0)
  {
    goto LABEL_10;
  }

  v33 = v10;
  v68 = v25;
  v69 = v30;
  v34 = v66;
  v71 = a3;
  v35 = v60;
  if (v32)
  {
    v36 = 0;
    do
    {
      v37 = v32;
      v38 = v33;
      v35(v34, v31, v33);
      (*(v8 + 64))(v34, v36, v71, v8);
      v32 = v37;
      v33 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v69 + 8);
  v40 = v33;
  v41 = v69 + 8;
  v39(v31, v33);
  v42 = v71;
  (*(v59 + 32))(v70, v68, v71);
  v63(v42, v8);
  v43 = v61(v42, v8);
  if (v43 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v44 = v42;
  v45 = v57;
  v68 = v39;
  v69 = v41;
  v46 = v56;
  if (v43)
  {
    v47 = 0;
    v48 = *(v8 + 56);
    v61 = (v65 + 192);
    v62 = v48;
    v63 = (v8 + 56);
    v64 = v43;
    v60 = (v8 + 64);
    do
    {
      v71 = (v47 + 1);
      v49 = v62;
      v62(v47, v44, v8);
      v49(v47, v44, v8);
      v50 = v66;
      (*(v65 + 192))(v46, v45, v40);
      v51 = v45;
      v52 = v45;
      v53 = v44;
      v54 = v68;
      v68(v51, v40);
      v54(v46, v40);
      v44 = v53;
      v45 = v52;
      (*(v8 + 64))(v50, v47, v44, v8);
      v47 = v71;
    }

    while (v64 != v71);
  }

  return (*(v59 + 8))(v70, v44);
}

uint64_t static SIMD<>.% infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a5;
  v69 = a2;
  v71 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v70 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v62 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v59 - v21, v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v61 = &v59 - v28;
  v29 = v27;
  v31 = v30;
  v32 = *(v10 + 16);
  v32(v27, a1);
  v66 = *(v8 + 48);
  v67 = (v8 + 48);
  (v66)(a3, v8);
  v64 = *(v8 + 40);
  v65 = v8 + 40;
  v33 = v64(a3, v8);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v72 = a3;
  v73 = v10;
  v34 = v31;
  v35 = v70;
  v74 = v25;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      (v32)(v35, v29, v34);
      (*(v8 + 64))(v35, v36, v72, v8);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v73 + 8);
  v40 = v73 + 8;
  v41 = v34;
  v39(v29, v34);
  v42 = v61;
  v43 = v72;
  (*(v62 + 32))(v61, v74, v72);
  (v66)(v43, v8);
  v44 = v43;
  v45 = v64(v43, v8);
  if (v45 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v41;
  v73 = v40;
  v47 = v44;
  v48 = v59;
  v49 = v60;
  v50 = v42;
  v67 = v39;
  if (v45)
  {
    v51 = 0;
    v64 = *(v8 + 56);
    v65 = v8 + 56;
    v63 = v8 + 64;
    v66 = v45;
    do
    {
      v74 = v51 + 1;
      v52 = v64;
      (v64)(v51, v47, v8);
      v52(v51, v47, v8);
      v53 = v70;
      (*(*(v68 + 8) + 168))(v48, v49, v46);
      v54 = v49;
      v55 = v49;
      v56 = v47;
      v57 = v67;
      v67(v54, v46);
      v57(v48, v46);
      v47 = v56;
      v49 = v55;
      (*(v8 + 64))(v53, v51, v47, v8);
      v51 = v74;
    }

    while (v66 != v74);
  }

  return (*(v62 + 8))(v50, v47);
}

{
  v68 = a5;
  v61 = a1;
  v70 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v69 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v62 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v59 - v21, v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v73 = &v59 - v28;
  v29 = v27;
  v31 = v30;
  v32 = *(v10 + 16);
  v32(v27, a2);
  v66 = *(v8 + 48);
  v67 = (v8 + 48);
  (v66)(a3, v8);
  v64 = *(v8 + 40);
  v65 = v8 + 40;
  v33 = v64(a3, v8);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v71 = a3;
  v72 = v10;
  v34 = v31;
  v35 = v69;
  v74 = v25;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      (v32)(v35, v29, v34);
      (*(v8 + 64))(v35, v36, v71, v8);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v72 + 8);
  v40 = v72 + 8;
  v41 = v34;
  v39(v29, v34);
  v42 = v71;
  (*(v62 + 32))(v73, v74, v71);
  (v66)(v42, v8);
  v43 = v42;
  v44 = v64(v42, v8);
  if (v44 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v41;
  v47 = v60;
  v46 = v61;
  v72 = v40;
  v48 = v43;
  v49 = v59;
  v67 = v39;
  if (v44)
  {
    v50 = 0;
    v64 = *(v8 + 56);
    v65 = v8 + 56;
    v63 = v8 + 64;
    v66 = v44;
    do
    {
      v74 = v50 + 1;
      v51 = v46;
      v52 = v64;
      (v64)(v50, v48, v8);
      v52(v50, v48, v8);
      v53 = v69;
      (*(*(v68 + 8) + 168))(v49, v47, v45);
      v54 = v47;
      v55 = v47;
      v56 = v48;
      v57 = v67;
      v67(v54, v45);
      v57(v49, v45);
      v48 = v56;
      v47 = v55;
      (*(v8 + 64))(v53, v50, v48, v8);
      v46 = v51;
      v50 = v74;
    }

    while (v66 != v74);
  }

  return (*(v62 + 8))(v73, v48);
}

uint64_t static SIMD<>.&= infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v52 = a2;
  v53 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v42 = v8;
  v55 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v40 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v40 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v45 = v26;
  v28 = &v40 - v27;
  v43 = *(v26 + 32);
  v44 = v26 + 32;
  v43();
  (*(v7 + 48))(v5, v7);
  v29 = (*(v7 + 40))(v5, v7);
  if (v29 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = a1;
  v30 = v42;
  v51 = v20;
  v54 = v24;
  v31 = v28;
  if (v29)
  {
    v32 = 0;
    v33 = *(v7 + 56);
    v47 = (v55 + 8);
    v48 = v33;
    v49 = v7 + 56;
    v50 = v29;
    v46 = v7 + 64;
    do
    {
      v55 = v32 + 1;
      v34 = v5;
      v35 = v5;
      v36 = v48;
      v48(v32, v35, v7);
      v36(v32, v34, v7);
      v37 = v51;
      (*(*(v53 + 8) + 192))(v16, v12, v30);
      v38 = *v47;
      (*v47)(v12, v30);
      v38(v16, v30);
      (*(v7 + 64))(v37, v32, v34, v7);
      v5 = v34;
      v32 = v55;
    }

    while (v50 != v55);
  }

  (*(v45 + 8))(v31, v5);
  return (v43)(v41, v54, v5);
}

uint64_t static SIMD<>.^= infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v52 = a2;
  v53 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v42 = v8;
  v55 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v40 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v40 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v45 = v26;
  v28 = &v40 - v27;
  v43 = *(v26 + 32);
  v44 = v26 + 32;
  v43();
  (*(v7 + 48))(v5, v7);
  v29 = (*(v7 + 40))(v5, v7);
  if (v29 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = a1;
  v30 = v42;
  v51 = v20;
  v54 = v24;
  v31 = v28;
  if (v29)
  {
    v32 = 0;
    v33 = *(v7 + 56);
    v47 = (v55 + 8);
    v48 = v33;
    v49 = v7 + 56;
    v50 = v29;
    v46 = v7 + 64;
    do
    {
      v55 = v32 + 1;
      v34 = v5;
      v35 = v5;
      v36 = v48;
      v48(v32, v35, v7);
      v36(v32, v34, v7);
      v37 = v51;
      (*(*(v53 + 8) + 224))(v16, v12, v30);
      v38 = *v47;
      (*v47)(v12, v30);
      v38(v16, v30);
      (*(v7 + 64))(v37, v32, v34, v7);
      v5 = v34;
      v32 = v55;
    }

    while (v50 != v55);
  }

  (*(v45 + 8))(v31, v5);
  return (v43)(v41, v54, v5);
}

uint64_t static SIMD<>.|= infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v52 = a2;
  v53 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v42 = v8;
  v55 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v40 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v40 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v45 = v26;
  v28 = &v40 - v27;
  v43 = *(v26 + 32);
  v44 = v26 + 32;
  v43();
  (*(v7 + 48))(v5, v7);
  v29 = (*(v7 + 40))(v5, v7);
  if (v29 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = a1;
  v30 = v42;
  v51 = v20;
  v54 = v24;
  v31 = v28;
  if (v29)
  {
    v32 = 0;
    v33 = *(v7 + 56);
    v47 = (v55 + 8);
    v48 = v33;
    v49 = v7 + 56;
    v50 = v29;
    v46 = v7 + 64;
    do
    {
      v55 = v32 + 1;
      v34 = v5;
      v35 = v5;
      v36 = v48;
      v48(v32, v35, v7);
      v36(v32, v34, v7);
      v37 = v51;
      (*(*(v53 + 8) + 208))(v16, v12, v30);
      v38 = *v47;
      (*v47)(v12, v30);
      v38(v16, v30);
      (*(v7 + 64))(v37, v32, v34, v7);
      v5 = v34;
      v32 = v55;
    }

    while (v50 != v55);
  }

  (*(v45 + 8))(v31, v5);
  return (v43)(v41, v54, v5);
}

uint64_t static SIMD<>.&<<= infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v53 = a2;
  v54 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v56 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v41 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v41 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v45 = v27;
  v28 = *(v27 + 32);
  v42 = &v41 - v29;
  v43 = v28;
  v44 = v27 + 32;
  v28();
  (*(v7 + 48))(v5, v7);
  v30 = (*(v7 + 40))(v5, v7);
  if (v30 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = a1;
  v52 = v21;
  v55 = v25;
  v31 = v42;
  if (v30)
  {
    v32 = 0;
    v33 = *(v7 + 56);
    v48 = v54 + 216;
    v49 = v33;
    v50 = v7 + 56;
    v51 = v30;
    v46 = v7 + 64;
    v47 = (v56 + 8);
    do
    {
      v56 = v32 + 1;
      v34 = v5;
      v35 = v5;
      v36 = v9;
      v37 = v49;
      v49(v32, v35, v7);
      v37(v32, v34, v7);
      v9 = v36;
      v38 = v52;
      (*(v54 + 216))(v17, v13, v36);
      v39 = *v47;
      (*v47)(v13, v36);
      v39(v17, v36);
      (*(v7 + 64))(v38, v32, v34, v7);
      v5 = v34;
      v32 = v56;
    }

    while (v51 != v56);
  }

  (*(v45 + 8))(v31, v5);
  return (v43)(v41, v55, v5);
}

uint64_t static SIMD<>.&>>= infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v53 = a2;
  v54 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v56 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v41 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v41 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v45 = v27;
  v28 = *(v27 + 32);
  v42 = &v41 - v29;
  v43 = v28;
  v44 = v27 + 32;
  v28();
  (*(v7 + 48))(v5, v7);
  v30 = (*(v7 + 40))(v5, v7);
  if (v30 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = a1;
  v52 = v21;
  v55 = v25;
  v31 = v42;
  if (v30)
  {
    v32 = 0;
    v33 = *(v7 + 56);
    v48 = v54 + 200;
    v49 = v33;
    v50 = v7 + 56;
    v51 = v30;
    v46 = v7 + 64;
    v47 = (v56 + 8);
    do
    {
      v56 = v32 + 1;
      v34 = v5;
      v35 = v5;
      v36 = v9;
      v37 = v49;
      v49(v32, v35, v7);
      v37(v32, v34, v7);
      v9 = v36;
      v38 = v52;
      (*(v54 + 200))(v17, v13, v36);
      v39 = *v47;
      (*v47)(v13, v36);
      v39(v17, v36);
      (*(v7 + 64))(v38, v32, v34, v7);
      v5 = v34;
      v32 = v56;
    }

    while (v51 != v56);
  }

  (*(v45 + 8))(v31, v5);
  return (v43)(v41, v55, v5);
}

uint64_t static SIMD<>.&+= infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v5 = a3;
  v58 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v62 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v45 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v45 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v49 = v27;
  v28 = *(v27 + 32);
  v46 = &v45 - v29;
  v47 = v28;
  v48 = v27 + 32;
  v28();
  (*(v7 + 48))(v5, v7);
  v30 = (*(v7 + 40))(v5, v7);
  if (v30 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = a1;
  v56 = v9;
  v57 = v21;
  v59 = v7;
  v61 = v25;
  v31 = v46;
  if (v30)
  {
    v32 = v13;
    v33 = 0;
    v34 = *(v59 + 56);
    v52 = v60 + 80;
    v53 = v34;
    v54 = v59 + 56;
    v55 = v30;
    v50 = v59 + 64;
    v51 = v62 + 8;
    v35 = (v62 + 8);
    do
    {
      v62 = v33 + 1;
      v36 = v17;
      v37 = v5;
      v38 = v5;
      v39 = v59;
      v40 = v53;
      v53(v33, v38, v59);
      v40(v33, v37, v39);
      v41 = v56;
      v42 = v57;
      (*(v60 + 80))(v57, v32, v56);
      v43 = *v35;
      (*v35)(v32, v41);
      v43(v36, v41);
      (*(v39 + 64))(v42, v33, v37, v39);
      v17 = v36;
      v5 = v37;
      v33 = v62;
    }

    while (v55 != v62);
  }

  (*(v49 + 8))(v31, v5);
  return (v47)(v45, v61, v5);
}

uint64_t static SIMD<>.&-= infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v5 = a3;
  v58 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v62 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v45 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v45 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v49 = v27;
  v28 = *(v27 + 32);
  v46 = &v45 - v29;
  v47 = v28;
  v48 = v27 + 32;
  v28();
  (*(v7 + 48))(v5, v7);
  v30 = (*(v7 + 40))(v5, v7);
  if (v30 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = a1;
  v56 = v9;
  v57 = v21;
  v59 = v7;
  v61 = v25;
  v31 = v46;
  if (v30)
  {
    v32 = v13;
    v33 = 0;
    v34 = *(v59 + 56);
    v52 = v60 + 88;
    v53 = v34;
    v54 = v59 + 56;
    v55 = v30;
    v50 = v59 + 64;
    v51 = v62 + 8;
    v35 = (v62 + 8);
    do
    {
      v62 = v33 + 1;
      v36 = v17;
      v37 = v5;
      v38 = v5;
      v39 = v59;
      v40 = v53;
      v53(v33, v38, v59);
      v40(v33, v37, v39);
      v41 = v56;
      v42 = v57;
      (*(v60 + 88))(v57, v32, v56);
      v43 = *v35;
      (*v35)(v32, v41);
      v43(v36, v41);
      (*(v39 + 64))(v42, v33, v37, v39);
      v17 = v36;
      v5 = v37;
      v33 = v62;
    }

    while (v55 != v62);
  }

  (*(v49 + 8))(v31, v5);
  return (v47)(v45, v61, v5);
}

uint64_t static SIMD<>.&*= infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v5 = a3;
  v58 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v62 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v45 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v45 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v49 = v27;
  v28 = *(v27 + 32);
  v46 = &v45 - v29;
  v47 = v28;
  v48 = v27 + 32;
  v28();
  (*(v7 + 48))(v5, v7);
  v30 = (*(v7 + 40))(v5, v7);
  if (v30 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = a1;
  v56 = v9;
  v57 = v21;
  v59 = v7;
  v61 = v25;
  v31 = v46;
  if (v30)
  {
    v32 = v13;
    v33 = 0;
    v34 = *(v59 + 56);
    v52 = v60 + 96;
    v53 = v34;
    v54 = v59 + 56;
    v55 = v30;
    v50 = v59 + 64;
    v51 = v62 + 8;
    v35 = (v62 + 8);
    do
    {
      v62 = v33 + 1;
      v36 = v5;
      v37 = v17;
      v38 = v5;
      v39 = v59;
      v40 = v53;
      v53(v33, v38, v59);
      v40(v33, v36, v39);
      v41 = v56;
      v42 = v57;
      (*(v60 + 96))(v57, v37, v56);
      v43 = *v35;
      (*v35)(v32, v41);
      v43(v37, v41);
      (*(v39 + 64))(v42, v33, v36, v39);
      v17 = v37;
      v5 = v36;
      v33 = v62;
    }

    while (v55 != v62);
  }

  (*(v49 + 8))(v31, v5);
  return (v47)(v45, v61, v5);
}

uint64_t static SIMD<>./= infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v52 = a2;
  v53 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v42 = v8;
  v55 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v40 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v40 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v45 = v26;
  v28 = &v40 - v27;
  v43 = *(v26 + 32);
  v44 = v26 + 32;
  v43();
  (*(v7 + 48))(v5, v7);
  v29 = (*(v7 + 40))(v5, v7);
  if (v29 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = a1;
  v30 = v42;
  v51 = v20;
  v54 = v24;
  v31 = v28;
  if (v29)
  {
    v32 = 0;
    v33 = *(v7 + 56);
    v47 = (v55 + 8);
    v48 = v33;
    v49 = v7 + 56;
    v50 = v29;
    v46 = v7 + 64;
    do
    {
      v55 = v32 + 1;
      v34 = v5;
      v35 = v5;
      v36 = v48;
      v48(v32, v35, v7);
      v36(v32, v34, v7);
      v37 = v51;
      (*(*(v53 + 8) + 152))(v16, v12, v30);
      v38 = *v47;
      (*v47)(v12, v30);
      v38(v16, v30);
      (*(v7 + 64))(v37, v32, v34, v7);
      v5 = v34;
      v32 = v55;
    }

    while (v50 != v55);
  }

  (*(v45 + 8))(v31, v5);
  return (v43)(v41, v54, v5);
}

{
  v53 = a2;
  v54 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v56 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v41 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v41 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v45 = v27;
  v28 = *(v27 + 32);
  v42 = &v41 - v29;
  v43 = v28;
  v44 = v27 + 32;
  v28();
  (*(v7 + 48))(v5, v7);
  v30 = (*(v7 + 40))(v5, v7);
  if (v30 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = a1;
  v52 = v21;
  v55 = v25;
  v31 = v42;
  if (v30)
  {
    v32 = 0;
    v33 = *(v7 + 56);
    v48 = v54 + 192;
    v49 = v33;
    v50 = v7 + 56;
    v51 = v30;
    v46 = v7 + 64;
    v47 = (v56 + 8);
    do
    {
      v56 = v32 + 1;
      v34 = v5;
      v35 = v5;
      v36 = v9;
      v37 = v49;
      v49(v32, v35, v7);
      v37(v32, v34, v7);
      v9 = v36;
      v38 = v52;
      (*(v54 + 192))(v17, v13, v36);
      v39 = *v47;
      (*v47)(v13, v36);
      v39(v17, v36);
      (*(v7 + 64))(v38, v32, v34, v7);
      v5 = v34;
      v32 = v56;
    }

    while (v51 != v56);
  }

  (*(v45 + 8))(v31, v5);
  return (v43)(v41, v55, v5);
}

uint64_t static SIMD<>.%= infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v52 = a2;
  v53 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v42 = v8;
  v55 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v40 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v40 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v45 = v26;
  v28 = &v40 - v27;
  v43 = *(v26 + 32);
  v44 = v26 + 32;
  v43();
  (*(v7 + 48))(v5, v7);
  v29 = (*(v7 + 40))(v5, v7);
  if (v29 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = a1;
  v30 = v42;
  v51 = v20;
  v54 = v24;
  v31 = v28;
  if (v29)
  {
    v32 = 0;
    v33 = *(v7 + 56);
    v47 = (v55 + 8);
    v48 = v33;
    v49 = v7 + 56;
    v50 = v29;
    v46 = v7 + 64;
    do
    {
      v55 = v32 + 1;
      v34 = v5;
      v35 = v5;
      v36 = v48;
      v48(v32, v35, v7);
      v36(v32, v34, v7);
      v37 = v51;
      (*(*(v53 + 8) + 168))(v16, v12, v30);
      v38 = *v47;
      (*v47)(v12, v30);
      v38(v16, v30);
      (*(v7 + 64))(v37, v32, v34, v7);
      v5 = v34;
      v32 = v55;
    }

    while (v50 != v55);
  }

  (*(v45 + 8))(v31, v5);
  return (v43)(v41, v54, v5);
}

uint64_t static SIMD<>.&= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), Class *a3, uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v88 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v73 = &v69 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v86 = &v69 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v69 - v23;
  v25 = *(a3 - 1);
  v27 = MEMORY[0x1EEE9AC00](v22, v26);
  v90 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = (&v69 - v31);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v89 = &v69 - v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v37 = *(v25 + 32);
  v85 = &v69 - v38;
  v39 = a1;
  v76 = v37;
  v77 = v25 + 32;
  v37();
  v91 = v10;
  v40 = *(v10 + 16);
  v74 = v10 + 16;
  v75 = v24;
  v79 = v9;
  v41 = v40;
  v40(v24, v88, v9);
  v82 = *(v7 + 48);
  v83 = v7 + 48;
  v82(a3, v7);
  v42 = *(v7 + 40);
  v78 = v7;
  v80 = v42;
  v81 = (v7 + 40);
  v43 = v42(a3, v7);
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v70 = v25;
  v71 = v14;
  v72 = v39;
  v46 = v78;
  v45 = v79;
  v47 = v86;
  v87 = a3;
  v88 = v32;
  v48 = v75;
  if (v43)
  {
    v49 = 0;
    do
    {
      v50 = v48;
      v51 = v45;
      v41(v47, v48, v45);
      (*(v46 + 64))(v47, v49, v87, v46);
      v48 = v50;
      v45 = v51;
      ++v49;
    }

    while (v44 != v49);
  }

  v52 = v87;
  v53 = v91 + 8;
  v54 = *(v91 + 8);
  v54(v48, v45);
  (v76)(v89, v88, v52);
  v82(v52, v46);
  v55 = v46;
  v56 = v52;
  v57 = v80(v52, v55);
  if (v57 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v91 = v53;
  v58 = v71;
  v59 = v73;
  v61 = v78;
  v60 = v79;
  v88 = v54;
  if (v57)
  {
    v62 = 0;
    v81 = *(v78 + 56);
    v82 = (v78 + 56);
    v80 = (v78 + 64);
    v83 = v57;
    do
    {
      v63 = v81;
      v81(v62, v56, v61);
      v63(v62, v56, v61);
      v64 = v86;
      (*(*(v84 + 8) + 192))(v59, v58, v60);
      v65 = v56;
      v66 = v88;
      v88(v58, v60);
      v66(v59, v60);
      v56 = v65;
      (*(v61 + 64))(v64, v62++, v65, v61);
    }

    while (v83 != v62);
  }

  v67 = *(v70 + 8);
  v67(v89, v56);
  v67(v85, v56);
  return (v76)(v72, v90, v56);
}

uint64_t static SIMD<>.^= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), Class *a3, uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v88 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v73 = &v69 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v86 = &v69 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v69 - v23;
  v25 = *(a3 - 1);
  v27 = MEMORY[0x1EEE9AC00](v22, v26);
  v90 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = (&v69 - v31);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v89 = &v69 - v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v37 = *(v25 + 32);
  v85 = &v69 - v38;
  v39 = a1;
  v76 = v37;
  v77 = v25 + 32;
  v37();
  v91 = v10;
  v40 = *(v10 + 16);
  v74 = v10 + 16;
  v75 = v24;
  v79 = v9;
  v41 = v40;
  v40(v24, v88, v9);
  v82 = *(v7 + 48);
  v83 = v7 + 48;
  v82(a3, v7);
  v42 = *(v7 + 40);
  v78 = v7;
  v80 = v42;
  v81 = (v7 + 40);
  v43 = v42(a3, v7);
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v70 = v25;
  v71 = v14;
  v72 = v39;
  v46 = v78;
  v45 = v79;
  v47 = v86;
  v87 = a3;
  v88 = v32;
  v48 = v75;
  if (v43)
  {
    v49 = 0;
    do
    {
      v50 = v48;
      v51 = v45;
      v41(v47, v48, v45);
      (*(v46 + 64))(v47, v49, v87, v46);
      v48 = v50;
      v45 = v51;
      ++v49;
    }

    while (v44 != v49);
  }

  v52 = v87;
  v53 = v91 + 8;
  v54 = *(v91 + 8);
  v54(v48, v45);
  (v76)(v89, v88, v52);
  v82(v52, v46);
  v55 = v46;
  v56 = v52;
  v57 = v80(v52, v55);
  if (v57 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v91 = v53;
  v58 = v71;
  v59 = v73;
  v61 = v78;
  v60 = v79;
  v88 = v54;
  if (v57)
  {
    v62 = 0;
    v81 = *(v78 + 56);
    v82 = (v78 + 56);
    v80 = (v78 + 64);
    v83 = v57;
    do
    {
      v63 = v81;
      v81(v62, v56, v61);
      v63(v62, v56, v61);
      v64 = v86;
      (*(*(v84 + 8) + 224))(v59, v58, v60);
      v65 = v56;
      v66 = v88;
      v88(v58, v60);
      v66(v59, v60);
      v56 = v65;
      (*(v61 + 64))(v64, v62++, v65, v61);
    }

    while (v83 != v62);
  }

  v67 = *(v70 + 8);
  v67(v89, v56);
  v67(v85, v56);
  return (v76)(v72, v90, v56);
}

uint64_t static SIMD<>.|= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), Class *a3, uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v88 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v73 = &v69 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v86 = &v69 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v69 - v23;
  v25 = *(a3 - 1);
  v27 = MEMORY[0x1EEE9AC00](v22, v26);
  v90 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = (&v69 - v31);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v89 = &v69 - v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v37 = *(v25 + 32);
  v85 = &v69 - v38;
  v39 = a1;
  v76 = v37;
  v77 = v25 + 32;
  v37();
  v91 = v10;
  v40 = *(v10 + 16);
  v74 = v10 + 16;
  v75 = v24;
  v79 = v9;
  v41 = v40;
  v40(v24, v88, v9);
  v82 = *(v7 + 48);
  v83 = v7 + 48;
  v82(a3, v7);
  v42 = *(v7 + 40);
  v78 = v7;
  v80 = v42;
  v81 = (v7 + 40);
  v43 = v42(a3, v7);
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v70 = v25;
  v71 = v14;
  v72 = v39;
  v46 = v78;
  v45 = v79;
  v47 = v86;
  v87 = a3;
  v88 = v32;
  v48 = v75;
  if (v43)
  {
    v49 = 0;
    do
    {
      v50 = v48;
      v51 = v45;
      v41(v47, v48, v45);
      (*(v46 + 64))(v47, v49, v87, v46);
      v48 = v50;
      v45 = v51;
      ++v49;
    }

    while (v44 != v49);
  }

  v52 = v87;
  v53 = v91 + 8;
  v54 = *(v91 + 8);
  v54(v48, v45);
  (v76)(v89, v88, v52);
  v82(v52, v46);
  v55 = v46;
  v56 = v52;
  v57 = v80(v52, v55);
  if (v57 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v91 = v53;
  v58 = v71;
  v59 = v73;
  v61 = v78;
  v60 = v79;
  v88 = v54;
  if (v57)
  {
    v62 = 0;
    v81 = *(v78 + 56);
    v82 = (v78 + 56);
    v80 = (v78 + 64);
    v83 = v57;
    do
    {
      v63 = v81;
      v81(v62, v56, v61);
      v63(v62, v56, v61);
      v64 = v86;
      (*(*(v84 + 8) + 208))(v59, v58, v60);
      v65 = v56;
      v66 = v88;
      v88(v58, v60);
      v66(v59, v60);
      v56 = v65;
      (*(v61 + 64))(v64, v62++, v65, v61);
    }

    while (v83 != v62);
  }

  v67 = *(v70 + 8);
  v67(v89, v56);
  v67(v85, v56);
  return (v76)(v72, v90, v56);
}

uint64_t static SIMD<>.&<<= infix(_:_:)(uint64_t a1, char *a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v80 = a5;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v70 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v69 = &v67 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v82 = &v67 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v67 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v87 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = (&v67 - v30);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v86 = &v67 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v68 = v36;
  v37 = *(v36 + 32);
  v81 = &v67 - v38;
  v39 = a1;
  v73 = v37;
  v74 = v36 + 32;
  v37();
  v40 = *(v11 + 16);
  v79 = v24;
  v71 = v40;
  v72 = v11 + 16;
  v40(v24, a2, v10);
  v77 = *(v8 + 48);
  v78 = v8 + 48;
  v77(a3, v8);
  v41 = v31;
  v75 = *(v8 + 40);
  v76 = v8 + 40;
  v42 = v75(a3, v8);
  if (v42 < 0)
  {
    goto LABEL_10;
  }

  v43 = v42;
  v84 = a3;
  v85 = v11;
  v67 = v39;
  v44 = v82;
  v45 = v79;
  v83 = v41;
  v46 = v71;
  if (v42)
  {
    v47 = 0;
    do
    {
      v46(v44, v45, v10);
      (*(v8 + 64))(v44, v47++, v84, v8);
    }

    while (v43 != v47);
  }

  v48 = *(v85 + 8);
  v49 = v85 + 8;
  v48(v45, v10);
  v50 = v84;
  (v73)(v86, v83, v84);
  v77(v50, v8);
  v51 = v50;
  v52 = v75(v50, v8);
  if (v52 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v53 = v10;
  v54 = v8;
  v55 = v51;
  v85 = v49;
  v56 = v69;
  v57 = v70;
  v83 = v48;
  if (v52)
  {
    v58 = v54;
    v59 = 0;
    v60 = *(v54 + 56);
    v76 = v80 + 216;
    v77 = v60;
    v78 = v54 + 56;
    v79 = v52;
    v75 = (v54 + 64);
    do
    {
      v61 = v77;
      (v77)(v59, v55, v58);
      v61(v59, v55, v58);
      v62 = v82;
      (*(v80 + 216))(v56, v57, v53);
      v63 = v55;
      v64 = v83;
      v83(v57, v53);
      v64(v56, v53);
      v55 = v63;
      (*(v58 + 64))(v62, v59++, v63, v58);
    }

    while (v79 != v59);
  }

  v65 = *(v68 + 8);
  v65(v86, v55);
  v65(v81, v55);
  return (v73)(v67, v87, v55);
}

uint64_t static SIMD<>.&>>= infix(_:_:)(uint64_t a1, char *a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v80 = a5;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v70 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v69 = &v67 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v82 = &v67 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v67 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v87 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = (&v67 - v30);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v86 = &v67 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v68 = v36;
  v37 = *(v36 + 32);
  v81 = &v67 - v38;
  v39 = a1;
  v73 = v37;
  v74 = v36 + 32;
  v37();
  v40 = *(v11 + 16);
  v79 = v24;
  v71 = v40;
  v72 = v11 + 16;
  v40(v24, a2, v10);
  v77 = *(v8 + 48);
  v78 = v8 + 48;
  v77(a3, v8);
  v41 = v31;
  v75 = *(v8 + 40);
  v76 = v8 + 40;
  v42 = v75(a3, v8);
  if (v42 < 0)
  {
    goto LABEL_10;
  }

  v43 = v42;
  v84 = a3;
  v85 = v11;
  v67 = v39;
  v44 = v82;
  v45 = v79;
  v83 = v41;
  v46 = v71;
  if (v42)
  {
    v47 = 0;
    do
    {
      v46(v44, v45, v10);
      (*(v8 + 64))(v44, v47++, v84, v8);
    }

    while (v43 != v47);
  }

  v48 = *(v85 + 8);
  v49 = v85 + 8;
  v48(v45, v10);
  v50 = v84;
  (v73)(v86, v83, v84);
  v77(v50, v8);
  v51 = v50;
  v52 = v75(v50, v8);
  if (v52 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v53 = v10;
  v54 = v8;
  v55 = v51;
  v85 = v49;
  v56 = v69;
  v57 = v70;
  v83 = v48;
  if (v52)
  {
    v58 = v54;
    v59 = 0;
    v60 = *(v54 + 56);
    v76 = v80 + 200;
    v77 = v60;
    v78 = v54 + 56;
    v79 = v52;
    v75 = (v54 + 64);
    do
    {
      v61 = v77;
      (v77)(v59, v55, v58);
      v61(v59, v55, v58);
      v62 = v82;
      (*(v80 + 200))(v56, v57, v53);
      v63 = v55;
      v64 = v83;
      v83(v57, v53);
      v64(v56, v53);
      v55 = v63;
      (*(v58 + 64))(v62, v59++, v63, v58);
    }

    while (v79 != v59);
  }

  v65 = *(v68 + 8);
  v65(v86, v55);
  v65(v81, v55);
  return (v73)(v67, v87, v55);
}

uint64_t static SIMD<>.&+= infix(_:_:)(uint64_t a1, char *a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v74 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v73 = &v70 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v85 = &v70 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v70 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v90 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = (&v70 - v30);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v89 = &v70 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v72 = v36;
  v37 = *(v36 + 32);
  v84 = &v70 - v38;
  v39 = a1;
  v76 = v37;
  v77 = v36 + 32;
  v37();
  v40 = v11;
  v41 = v11 + 16;
  v42 = *(v11 + 16);
  v43 = v24;
  v78 = v41;
  v75 = v42;
  v42(v24, a2, v10);
  v81 = *(v8 + 48);
  v82 = v8 + 48;
  v81(a3, v8);
  v44 = v31;
  v45 = v8;
  v79 = *(v8 + 40);
  v80 = (v8 + 40);
  v46 = v79(a3, v8);
  if (v46 < 0)
  {
    goto LABEL_10;
  }

  v47 = v46;
  v87 = a3;
  v88 = v40;
  v48 = v10;
  v71 = v39;
  v49 = v85;
  v86 = v44;
  v50 = v75;
  if (v46)
  {
    v51 = 0;
    do
    {
      v50(v49, v43, v48);
      (*(v45 + 64))(v49, v51++, v87, v45);
    }

    while (v47 != v51);
  }

  v52 = *(v88 + 8);
  v53 = v48;
  v54 = v88 + 8;
  v52(v43, v48);
  v55 = v87;
  (v76)(v89, v86, v87);
  v81(v55, v45);
  v56 = v79(v55, v45);
  if (v56 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v45;
  v88 = v54;
  v58 = v73;
  v59 = v74;
  v86 = v52;
  if (v56)
  {
    v60 = v53;
    v61 = v57;
    v62 = 0;
    v63 = *(v57 + 56);
    v79 = (v83 + 80);
    v80 = v63;
    v81 = (v57 + 56);
    v82 = v56;
    v78 = v57 + 64;
    do
    {
      v64 = v80;
      v80(v62, v55, v61);
      v64(v62, v55, v61);
      v65 = v85;
      (*(v83 + 80))(v85, v59, v60);
      v66 = v55;
      v67 = v86;
      v86(v59, v60);
      v67(v58, v60);
      v55 = v66;
      (*(v61 + 64))(v65, v62++, v66, v61);
    }

    while (v82 != v62);
  }

  v68 = *(v72 + 8);
  v68(v89, v55);
  v68(v84, v55);
  return (v76)(v71, v90, v55);
}

uint64_t static SIMD<>.&-= infix(_:_:)(uint64_t a1, char *a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v74 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v73 = &v70 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v85 = &v70 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v70 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v90 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = (&v70 - v30);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v89 = &v70 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v72 = v36;
  v37 = *(v36 + 32);
  v84 = &v70 - v38;
  v39 = a1;
  v76 = v37;
  v77 = v36 + 32;
  v37();
  v40 = v11;
  v41 = v11 + 16;
  v42 = *(v11 + 16);
  v43 = v24;
  v78 = v41;
  v75 = v42;
  v42(v24, a2, v10);
  v81 = *(v8 + 48);
  v82 = v8 + 48;
  v81(a3, v8);
  v44 = v31;
  v45 = v8;
  v79 = *(v8 + 40);
  v80 = (v8 + 40);
  v46 = v79(a3, v8);
  if (v46 < 0)
  {
    goto LABEL_10;
  }

  v47 = v46;
  v87 = a3;
  v88 = v40;
  v48 = v10;
  v71 = v39;
  v49 = v85;
  v86 = v44;
  v50 = v75;
  if (v46)
  {
    v51 = 0;
    do
    {
      v50(v49, v43, v48);
      (*(v45 + 64))(v49, v51++, v87, v45);
    }

    while (v47 != v51);
  }

  v52 = *(v88 + 8);
  v53 = v48;
  v54 = v88 + 8;
  v52(v43, v48);
  v55 = v87;
  (v76)(v89, v86, v87);
  v81(v55, v45);
  v56 = v79(v55, v45);
  if (v56 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v45;
  v88 = v54;
  v58 = v73;
  v59 = v74;
  v86 = v52;
  if (v56)
  {
    v60 = v53;
    v61 = v57;
    v62 = 0;
    v63 = *(v57 + 56);
    v79 = (v83 + 88);
    v80 = v63;
    v81 = (v57 + 56);
    v82 = v56;
    v78 = v57 + 64;
    do
    {
      v64 = v80;
      v80(v62, v55, v61);
      v64(v62, v55, v61);
      v65 = v85;
      (*(v83 + 88))(v85, v59, v60);
      v66 = v55;
      v67 = v86;
      v86(v59, v60);
      v67(v58, v60);
      v55 = v66;
      (*(v61 + 64))(v65, v62++, v66, v61);
    }

    while (v82 != v62);
  }

  v68 = *(v72 + 8);
  v68(v89, v55);
  v68(v84, v55);
  return (v76)(v71, v90, v55);
}

uint64_t static SIMD<>.&*= infix(_:_:)(uint64_t a1, char *a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v74 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v73 = &v70 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v85 = &v70 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v70 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v90 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = (&v70 - v30);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v89 = &v70 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v72 = v36;
  v37 = *(v36 + 32);
  v84 = &v70 - v38;
  v39 = a1;
  v76 = v37;
  v77 = v36 + 32;
  v37();
  v40 = v11;
  v41 = v11 + 16;
  v42 = *(v11 + 16);
  v43 = v24;
  v78 = v41;
  v75 = v42;
  v42(v24, a2, v10);
  v81 = *(v8 + 48);
  v82 = v8 + 48;
  v81(a3, v8);
  v44 = v31;
  v45 = v8;
  v79 = *(v8 + 40);
  v80 = (v8 + 40);
  v46 = v79(a3, v8);
  if (v46 < 0)
  {
    goto LABEL_10;
  }

  v47 = v46;
  v87 = a3;
  v88 = v40;
  v48 = v10;
  v71 = v39;
  v49 = v85;
  v86 = v44;
  v50 = v75;
  if (v46)
  {
    v51 = 0;
    do
    {
      v50(v49, v43, v48);
      (*(v45 + 64))(v49, v51++, v87, v45);
    }

    while (v47 != v51);
  }

  v52 = *(v88 + 8);
  v53 = v48;
  v54 = v88 + 8;
  v52(v43, v48);
  v55 = v87;
  (v76)(v89, v86, v87);
  v81(v55, v45);
  v56 = v79(v55, v45);
  if (v56 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v45;
  v88 = v54;
  v58 = v73;
  v59 = v74;
  v86 = v52;
  if (v56)
  {
    v60 = v53;
    v61 = v57;
    v62 = 0;
    v63 = *(v57 + 56);
    v79 = (v83 + 96);
    v80 = v63;
    v81 = (v57 + 56);
    v82 = v56;
    v78 = v57 + 64;
    do
    {
      v64 = v80;
      v80(v62, v55, v61);
      v64(v62, v55, v61);
      v65 = v85;
      (*(v83 + 96))(v85, v58, v60);
      v66 = v55;
      v67 = v86;
      v86(v59, v60);
      v67(v58, v60);
      v55 = v66;
      (*(v61 + 64))(v65, v62++, v66, v61);
    }

    while (v82 != v62);
  }

  v68 = *(v72 + 8);
  v68(v89, v55);
  v68(v84, v55);
  return (v76)(v71, v90, v55);
}

uint64_t static SIMD<>./= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), Class *a3, uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v88 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v73 = &v69 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v86 = &v69 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v69 - v23;
  v25 = *(a3 - 1);
  v27 = MEMORY[0x1EEE9AC00](v22, v26);
  v90 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = (&v69 - v31);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v89 = &v69 - v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v37 = *(v25 + 32);
  v85 = &v69 - v38;
  v39 = a1;
  v76 = v37;
  v77 = v25 + 32;
  v37();
  v91 = v10;
  v40 = *(v10 + 16);
  v74 = v10 + 16;
  v75 = v24;
  v79 = v9;
  v41 = v40;
  v40(v24, v88, v9);
  v82 = *(v7 + 48);
  v83 = v7 + 48;
  v82(a3, v7);
  v42 = *(v7 + 40);
  v78 = v7;
  v80 = v42;
  v81 = (v7 + 40);
  v43 = v42(a3, v7);
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v70 = v25;
  v71 = v14;
  v72 = v39;
  v46 = v78;
  v45 = v79;
  v47 = v86;
  v87 = a3;
  v88 = v32;
  v48 = v75;
  if (v43)
  {
    v49 = 0;
    do
    {
      v50 = v48;
      v51 = v45;
      v41(v47, v48, v45);
      (*(v46 + 64))(v47, v49, v87, v46);
      v48 = v50;
      v45 = v51;
      ++v49;
    }

    while (v44 != v49);
  }

  v52 = v87;
  v53 = v91 + 8;
  v54 = *(v91 + 8);
  v54(v48, v45);
  (v76)(v89, v88, v52);
  v82(v52, v46);
  v55 = v46;
  v56 = v52;
  v57 = v80(v52, v55);
  if (v57 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v91 = v53;
  v58 = v71;
  v59 = v73;
  v61 = v78;
  v60 = v79;
  v88 = v54;
  if (v57)
  {
    v62 = 0;
    v81 = *(v78 + 56);
    v82 = (v78 + 56);
    v80 = (v78 + 64);
    v83 = v57;
    do
    {
      v63 = v81;
      v81(v62, v56, v61);
      v63(v62, v56, v61);
      v64 = v86;
      (*(*(v84 + 8) + 152))(v59, v58, v60);
      v65 = v56;
      v66 = v88;
      v88(v58, v60);
      v66(v59, v60);
      v56 = v65;
      (*(v61 + 64))(v64, v62++, v65, v61);
    }

    while (v83 != v62);
  }

  v67 = *(v70 + 8);
  v67(v89, v56);
  v67(v85, v56);
  return (v76)(v72, v90, v56);
}

uint64_t static SIMD<>.%= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), Class *a3, uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v88 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v73 = &v69 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v86 = &v69 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v69 - v23;
  v25 = *(a3 - 1);
  v27 = MEMORY[0x1EEE9AC00](v22, v26);
  v90 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = (&v69 - v31);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v89 = &v69 - v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v37 = *(v25 + 32);
  v85 = &v69 - v38;
  v39 = a1;
  v76 = v37;
  v77 = v25 + 32;
  v37();
  v91 = v10;
  v40 = *(v10 + 16);
  v74 = v10 + 16;
  v75 = v24;
  v79 = v9;
  v41 = v40;
  v40(v24, v88, v9);
  v82 = *(v7 + 48);
  v83 = v7 + 48;
  v82(a3, v7);
  v42 = *(v7 + 40);
  v78 = v7;
  v80 = v42;
  v81 = (v7 + 40);
  v43 = v42(a3, v7);
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v70 = v25;
  v71 = v14;
  v72 = v39;
  v46 = v78;
  v45 = v79;
  v47 = v86;
  v87 = a3;
  v88 = v32;
  v48 = v75;
  if (v43)
  {
    v49 = 0;
    do
    {
      v50 = v48;
      v51 = v45;
      v41(v47, v48, v45);
      (*(v46 + 64))(v47, v49, v87, v46);
      v48 = v50;
      v45 = v51;
      ++v49;
    }

    while (v44 != v49);
  }

  v52 = v87;
  v53 = v91 + 8;
  v54 = *(v91 + 8);
  v54(v48, v45);
  (v76)(v89, v88, v52);
  v82(v52, v46);
  v55 = v46;
  v56 = v52;
  v57 = v80(v52, v55);
  if (v57 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v91 = v53;
  v58 = v71;
  v59 = v73;
  v61 = v78;
  v60 = v79;
  v88 = v54;
  if (v57)
  {
    v62 = 0;
    v81 = *(v78 + 56);
    v82 = (v78 + 56);
    v80 = (v78 + 64);
    v83 = v57;
    do
    {
      v63 = v81;
      v81(v62, v56, v61);
      v63(v62, v56, v61);
      v64 = v86;
      (*(*(v84 + 8) + 168))(v59, v58, v60);
      v65 = v56;
      v66 = v88;
      v88(v58, v60);
      v66(v59, v60);
      v56 = v65;
      (*(v61 + 64))(v64, v62++, v65, v61);
    }

    while (v83 != v62);
  }

  v67 = *(v70 + 8);
  v67(v89, v56);
  v67(v85, v56);
  return (v76)(v72, v90, v56);
}

void static SIMD<>.+ infix(_:_:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4BCuLL, 0);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4CBuLL, 0);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4DAuLL, 0);
}

void static SIMD<>.- infix(_:_:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4C1uLL, 0);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4D0uLL, 0);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4DFuLL, 0);
}

void static SIMD<>.* infix(_:_:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4C6uLL, 0);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4D5uLL, 0);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4E4uLL, 0);
}

void static SIMD<>.+= infix(_:_:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4E9uLL, 0);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4F8uLL, 0);
}

void static SIMD<>.-= infix(_:_:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4EEuLL, 0);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4FDuLL, 0);
}

void static SIMD<>.*= infix(_:_:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4F3uLL, 0);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x502uLL, 0);
}

uint64_t static SIMD<>.- prefix(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v90 = a1;
  v93 = a4;
  v84 = *(a2 - 1);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v96 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v92 = &v78 - v9;
  v83 = *(v10 + 48);
  swift_getAssociatedTypeWitness(0, v83, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v12 = v11;
  v13 = *(v11 - 1);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v82 = &v78 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v91 = &v78 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = &v78 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v78 - v29;
  v81 = *(*(a3 + 16) + 8);
  v31 = *(v81 + 16);
  swift_getAssociatedTypeWitness(0, v31, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v78 - v35;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v31, v12, v33, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v33, AssociatedConformanceWitness);
  (*(v31 + 24))(v36, v12, v31);
  v95 = v13;
  v38 = *(v13 + 16);
  v85 = v30;
  v86 = v38;
  v39 = v30;
  v40 = v12;
  v41 = v12;
  v42 = v83;
  v87 = (v13 + 16);
  (v38)(v27, v39, v41);
  v43 = v42[6];
  (v43)(a2, v42);
  v88 = v42[5];
  v89 = (v42 + 5);
  v44 = (v88)(a2, v42);
  if (v44 < 0)
  {
    goto LABEL_10;
  }

  v79 = v43;
  v80 = v42 + 6;
  v78 = v17;
  v45 = v40;
  v46 = v91;
  v94 = a2;
  v47 = v27;
  v48 = v86;
  v49 = v42;
  if (v44)
  {
    v50 = 0;
    do
    {
      v51 = v44;
      v52 = v45;
      (v48)(v46, v47, v45);
      (v49[8])(v46, v50, v94, v49);
      v44 = v51;
      v45 = v52;
      ++v50;
    }

    while (v51 != v50);
  }

  v53 = v94;
  v54 = v95 + 8;
  v55 = *(v95 + 8);
  v56 = v47;
  v57 = v45;
  v55(v56, v45);
  v58 = v92;
  (*(v84 + 32))(v92, v96, v53);
  (v79)(v53, v49);
  v59 = v53;
  v60 = (v88)(v53, v49);
  if (v60 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v61 = v60;
  v55(v85, v57);
  v62 = v58;
  v95 = v54;
  v63 = v78;
  v89 = v55;
  v65 = v81;
  v64 = v82;
  if (v61)
  {
    v66 = v49;
    v67 = v57;
    v68 = 0;
    v86 = v66[7];
    v87 = v66 + 7;
    v85 = (v66 + 8);
    v88 = v61;
    do
    {
      v96 = v68 + 1;
      v69 = v64;
      v70 = v86;
      (v86)(v68, v59, v66);
      (v70)(v68, v59, v66);
      v71 = *(*(v65 + 8) + 40);
      v72 = v65;
      v73 = v59;
      v74 = v91;
      v71(v69, v63, v67);
      v75 = v89;
      v89(v63, v67);
      v75(v69, v67);
      v76 = v74;
      v59 = v73;
      v65 = v72;
      (v66[8])(v76, v68, v59, v66);
      v64 = v69;
      v62 = v92;
      v68 = v96;
    }

    while (v88 != v96);
  }

  return (*(v84 + 8))(v62, v59);
}

uint64_t static SIMD<>.- infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v70 = a2;
  v72 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v61 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v60 = &v60 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v71 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v63 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v60 - v21, v22);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v62 = &v60 - v28;
  v29 = v27;
  v31 = v30;
  v32 = *(v10 + 16);
  v32(v27, a1);
  v67 = *(v8 + 48);
  v68 = (v8 + 48);
  (v67)(a3, v8);
  v65 = *(v8 + 40);
  v66 = v8 + 40;
  v33 = v65(a3, v8);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v73 = a3;
  v74 = v10;
  v34 = v31;
  v35 = v71;
  v75 = v25;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      (v32)(v35, v29, v34);
      (*(v8 + 64))(v35, v36, v73, v8);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v74 + 8);
  v40 = v74 + 8;
  v41 = v34;
  v39(v29, v34);
  v42 = v62;
  v43 = v73;
  (*(v63 + 32))(v62, v75, v73);
  (v67)(v43, v8);
  v44 = v43;
  v45 = v65(v43, v8);
  if (v45 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v41;
  v74 = v40;
  v47 = v44;
  v48 = v60;
  v49 = v61;
  v50 = v8;
  v51 = v42;
  v68 = v39;
  if (v45)
  {
    v52 = 0;
    v65 = *(v50 + 56);
    v66 = v50 + 56;
    v64 = v50 + 64;
    v67 = v45;
    do
    {
      v75 = v52 + 1;
      v53 = v65;
      (v65)(v52, v47, v50);
      v53(v52, v47, v50);
      v54 = v71;
      (*(*(*(*(v69 + 16) + 8) + 8) + 40))(v48, v49, v46);
      v55 = v49;
      v56 = v49;
      v57 = v47;
      v58 = v68;
      v68(v55, v46);
      v58(v48, v46);
      v47 = v57;
      v49 = v56;
      (*(v50 + 64))(v54, v52, v47, v50);
      v52 = v75;
    }

    while (v67 != v75);
  }

  return (*(v63 + 8))(v51, v47);
}

{
  v67 = a5;
  v60 = a1;
  v69 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v58 = &v58 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v68 = &v58 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v61 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v58 - v21, v22);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v72 = &v58 - v28;
  v29 = *(v10 + 16);
  v30 = v27;
  v32 = v31;
  v62 = v10 + 16;
  v33 = v29;
  (v29)(v27, a2);
  v65 = *(v8 + 48);
  v66 = (v8 + 48);
  (v65)(a3, v8);
  v63 = *(v8 + 40);
  v64 = (v8 + 40);
  v34 = v63(a3, v8);
  if (v34 < 0)
  {
    goto LABEL_10;
  }

  v70 = a3;
  v71 = v10;
  v35 = v32;
  v36 = v68;
  v73 = v25;
  if (v34)
  {
    v37 = 0;
    do
    {
      v38 = v34;
      v39 = v35;
      v33(v36, v30, v35);
      (*(v8 + 64))(v36, v37, v70, v8);
      v34 = v38;
      v35 = v39;
      ++v37;
    }

    while (v38 != v37);
  }

  v40 = *(v71 + 8);
  v41 = v30;
  v42 = v71 + 8;
  v43 = v35;
  v40(v41, v35);
  v44 = v70;
  (*(v61 + 32))(v72, v73, v70);
  (v65)(v44, v8);
  v45 = v63(v44, v8);
  if (v45 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v59;
  v71 = v42;
  v47 = v44;
  v48 = v58;
  v66 = v40;
  if (v45)
  {
    v49 = 0;
    v50 = *(v8 + 56);
    v63 = (v8 + 56);
    v64 = v50;
    v62 = v8 + 64;
    v65 = v45;
    do
    {
      v73 = v49 + 1;
      v51 = v64;
      v64(v49, v47, v8);
      v51(v49, v47, v8);
      v52 = v68;
      (*(*(*(*(v67 + 16) + 8) + 8) + 40))(v48, v46, v43);
      v53 = v46;
      v54 = v46;
      v55 = v47;
      v56 = v66;
      v66(v53, v43);
      v56(v48, v43);
      v47 = v55;
      v46 = v54;
      (*(v8 + 64))(v52, v49, v47, v8);
      v49 = v73;
    }

    while (v65 != v73);
  }

  return (*(v61 + 8))(v72, v47);
}

uint64_t static SIMD<>.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v70 = a2;
  v72 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v61 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v60 = &v60 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v71 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v63 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v60 - v21, v22);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v62 = &v60 - v28;
  v29 = v27;
  v31 = v30;
  v32 = *(v10 + 16);
  v32(v27, a1);
  v67 = *(v8 + 48);
  v68 = (v8 + 48);
  (v67)(a3, v8);
  v65 = *(v8 + 40);
  v66 = v8 + 40;
  v33 = v65(a3, v8);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v73 = a3;
  v74 = v10;
  v34 = v31;
  v35 = v71;
  v75 = v25;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      (v32)(v35, v29, v34);
      (*(v8 + 64))(v35, v36, v73, v8);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v74 + 8);
  v40 = v74 + 8;
  v41 = v34;
  v39(v29, v34);
  v42 = v62;
  v43 = v73;
  (*(v63 + 32))(v62, v75, v73);
  (v67)(v43, v8);
  v44 = v43;
  v45 = v65(v43, v8);
  if (v45 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v41;
  v74 = v40;
  v47 = v44;
  v48 = v60;
  v49 = v61;
  v50 = v8;
  v51 = v42;
  v68 = v39;
  if (v45)
  {
    v52 = 0;
    v65 = *(v50 + 56);
    v66 = v50 + 56;
    v64 = v50 + 64;
    v67 = v45;
    do
    {
      v75 = v52 + 1;
      v53 = v65;
      (v65)(v52, v47, v50);
      v53(v52, v47, v50);
      v54 = v71;
      (*(*(*(*(v69 + 16) + 8) + 8) + 24))(v48, v49, v46);
      v55 = v49;
      v56 = v49;
      v57 = v47;
      v58 = v68;
      v68(v55, v46);
      v58(v48, v46);
      v47 = v57;
      v49 = v56;
      (*(v50 + 64))(v54, v52, v47, v50);
      v52 = v75;
    }

    while (v67 != v75);
  }

  return (*(v63 + 8))(v51, v47);
}

{
  v67 = a5;
  v60 = a1;
  v69 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v58 = &v58 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v68 = &v58 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v61 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v58 - v21, v22);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v72 = &v58 - v28;
  v29 = *(v10 + 16);
  v30 = v27;
  v32 = v31;
  v62 = v10 + 16;
  v33 = v29;
  (v29)(v27, a2);
  v65 = *(v8 + 48);
  v66 = (v8 + 48);
  (v65)(a3, v8);
  v63 = *(v8 + 40);
  v64 = (v8 + 40);
  v34 = v63(a3, v8);
  if (v34 < 0)
  {
    goto LABEL_10;
  }

  v70 = a3;
  v71 = v10;
  v35 = v32;
  v36 = v68;
  v73 = v25;
  if (v34)
  {
    v37 = 0;
    do
    {
      v38 = v34;
      v39 = v35;
      v33(v36, v30, v35);
      (*(v8 + 64))(v36, v37, v70, v8);
      v34 = v38;
      v35 = v39;
      ++v37;
    }

    while (v38 != v37);
  }

  v40 = *(v71 + 8);
  v41 = v30;
  v42 = v71 + 8;
  v43 = v35;
  v40(v41, v35);
  v44 = v70;
  (*(v61 + 32))(v72, v73, v70);
  (v65)(v44, v8);
  v45 = v63(v44, v8);
  if (v45 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v59;
  v71 = v42;
  v47 = v44;
  v48 = v58;
  v66 = v40;
  if (v45)
  {
    v49 = 0;
    v50 = *(v8 + 56);
    v63 = (v8 + 56);
    v64 = v50;
    v62 = v8 + 64;
    v65 = v45;
    do
    {
      v73 = v49 + 1;
      v51 = v64;
      v64(v49, v47, v8);
      v51(v49, v47, v8);
      v52 = v68;
      (*(*(*(*(v67 + 16) + 8) + 8) + 24))(v48, v46, v43);
      v53 = v46;
      v54 = v46;
      v55 = v47;
      v56 = v66;
      v66(v53, v43);
      v56(v48, v43);
      v47 = v55;
      v46 = v54;
      (*(v8 + 64))(v52, v49, v47, v8);
      v49 = v73;
    }

    while (v65 != v73);
  }

  return (*(v61 + 8))(v72, v47);
}

uint64_t static SIMD<>.* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a5;
  v69 = a2;
  v71 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v70 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v62 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v59 - v21, v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v61 = &v59 - v28;
  v29 = v27;
  v31 = v30;
  v32 = *(v10 + 16);
  v32(v27, a1);
  v66 = *(v8 + 48);
  v67 = (v8 + 48);
  (v66)(a3, v8);
  v64 = *(v8 + 40);
  v65 = v8 + 40;
  v33 = v64(a3, v8);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v72 = a3;
  v73 = v10;
  v34 = v31;
  v35 = v70;
  v74 = v25;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      (v32)(v35, v29, v34);
      (*(v8 + 64))(v35, v36, v72, v8);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v73 + 8);
  v40 = v73 + 8;
  v41 = v34;
  v39(v29, v34);
  v42 = v61;
  v43 = v72;
  (*(v62 + 32))(v61, v74, v72);
  (v66)(v43, v8);
  v44 = v43;
  v45 = v64(v43, v8);
  if (v45 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v41;
  v73 = v40;
  v47 = v44;
  v48 = v59;
  v49 = v60;
  v50 = v42;
  v67 = v39;
  if (v45)
  {
    v51 = 0;
    v64 = *(v8 + 56);
    v65 = v8 + 56;
    v63 = v8 + 64;
    v66 = v45;
    do
    {
      v74 = v51 + 1;
      v52 = v64;
      (v64)(v51, v47, v8);
      v52(v51, v47, v8);
      v53 = v70;
      (*(*(*(v68 + 16) + 8) + 64))(v48, v49, v46);
      v54 = v49;
      v55 = v49;
      v56 = v47;
      v57 = v67;
      v67(v54, v46);
      v57(v48, v46);
      v47 = v56;
      v49 = v55;
      (*(v8 + 64))(v53, v51, v47, v8);
      v51 = v74;
    }

    while (v66 != v74);
  }

  return (*(v62 + 8))(v50, v47);
}

{
  v68 = a5;
  v61 = a1;
  v70 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v69 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v62 = *(a3 - 1);
  v23 = MEMORY[0x1EEE9AC00](&v59 - v21, v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v73 = &v59 - v28;
  v29 = v27;
  v31 = v30;
  v32 = *(v10 + 16);
  v32(v27, a2);
  v66 = *(v8 + 48);
  v67 = (v8 + 48);
  (v66)(a3, v8);
  v64 = *(v8 + 40);
  v65 = v8 + 40;
  v33 = v64(a3, v8);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v71 = a3;
  v72 = v10;
  v34 = v31;
  v35 = v69;
  v74 = v25;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      (v32)(v35, v29, v34);
      (*(v8 + 64))(v35, v36, v71, v8);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v39 = *(v72 + 8);
  v40 = v72 + 8;
  v41 = v34;
  v39(v29, v34);
  v42 = v71;
  (*(v62 + 32))(v73, v74, v71);
  (v66)(v42, v8);
  v43 = v42;
  v44 = v64(v42, v8);
  if (v44 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v41;
  v47 = v60;
  v46 = v61;
  v72 = v40;
  v48 = v43;
  v49 = v59;
  v67 = v39;
  if (v44)
  {
    v50 = 0;
    v64 = *(v8 + 56);
    v65 = v8 + 56;
    v63 = v8 + 64;
    v66 = v44;
    do
    {
      v74 = v50 + 1;
      v51 = v46;
      v52 = v64;
      (v64)(v50, v48, v8);
      v52(v50, v48, v8);
      v53 = v69;
      (*(*(*(v68 + 16) + 8) + 64))(v49, v47, v45);
      v54 = v47;
      v55 = v47;
      v56 = v48;
      v57 = v67;
      v67(v54, v45);
      v57(v49, v45);
      v48 = v56;
      v47 = v55;
      (*(v8 + 64))(v53, v50, v48, v8);
      v46 = v51;
      v50 = v74;
    }

    while (v66 != v74);
  }

  return (*(v62 + 8))(v73, v48);
}

uint64_t static SIMD<>.+= infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v52 = a2;
  v53 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v42 = v8;
  v55 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v40 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v40 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v45 = v26;
  v28 = &v40 - v27;
  v43 = *(v26 + 32);
  v44 = v26 + 32;
  v43();
  (*(v7 + 48))(v5, v7);
  v29 = (*(v7 + 40))(v5, v7);
  if (v29 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = a1;
  v30 = v42;
  v51 = v20;
  v54 = v24;
  v31 = v28;
  if (v29)
  {
    v32 = 0;
    v33 = *(v7 + 56);
    v47 = (v55 + 8);
    v48 = v33;
    v49 = v7 + 56;
    v50 = v29;
    v46 = v7 + 64;
    do
    {
      v55 = v32 + 1;
      v34 = v5;
      v35 = v5;
      v36 = v48;
      v48(v32, v35, v7);
      v36(v32, v34, v7);
      v37 = v51;
      (*(*(*(*(v53 + 16) + 8) + 8) + 24))(v16, v12, v30);
      v38 = *v47;
      (*v47)(v12, v30);
      v38(v16, v30);
      (*(v7 + 64))(v37, v32, v34, v7);
      v5 = v34;
      v32 = v55;
    }

    while (v50 != v55);
  }

  (*(v45 + 8))(v31, v5);
  return (v43)(v41, v54, v5);
}

uint64_t static SIMD<>.-= infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v52 = a2;
  v53 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v42 = v8;
  v55 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v40 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v40 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v45 = v26;
  v28 = &v40 - v27;
  v43 = *(v26 + 32);
  v44 = v26 + 32;
  v43();
  (*(v7 + 48))(v5, v7);
  v29 = (*(v7 + 40))(v5, v7);
  if (v29 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = a1;
  v30 = v42;
  v51 = v20;
  v54 = v24;
  v31 = v28;
  if (v29)
  {
    v32 = 0;
    v33 = *(v7 + 56);
    v47 = (v55 + 8);
    v48 = v33;
    v49 = v7 + 56;
    v50 = v29;
    v46 = v7 + 64;
    do
    {
      v55 = v32 + 1;
      v34 = v5;
      v35 = v5;
      v36 = v48;
      v48(v32, v35, v7);
      v36(v32, v34, v7);
      v37 = v51;
      (*(*(*(*(v53 + 16) + 8) + 8) + 40))(v16, v12, v30);
      v38 = *v47;
      (*v47)(v12, v30);
      v38(v16, v30);
      (*(v7 + 64))(v37, v32, v34, v7);
      v5 = v34;
      v32 = v55;
    }

    while (v50 != v55);
  }

  (*(v45 + 8))(v31, v5);
  return (v43)(v41, v54, v5);
}

uint64_t static SIMD<>.*= infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v52 = a2;
  v53 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v42 = v8;
  v55 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v40 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v40 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v45 = v26;
  v28 = &v40 - v27;
  v43 = *(v26 + 32);
  v44 = v26 + 32;
  v43();
  (*(v7 + 48))(v5, v7);
  v29 = (*(v7 + 40))(v5, v7);
  if (v29 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = a1;
  v30 = v42;
  v51 = v20;
  v54 = v24;
  v31 = v28;
  if (v29)
  {
    v32 = 0;
    v33 = *(v7 + 56);
    v47 = (v55 + 8);
    v48 = v33;
    v49 = v7 + 56;
    v50 = v29;
    v46 = v7 + 64;
    do
    {
      v55 = v32 + 1;
      v34 = v5;
      v35 = v5;
      v36 = v48;
      v48(v32, v35, v7);
      v36(v32, v34, v7);
      v37 = v51;
      (*(*(*(v53 + 16) + 8) + 64))(v16, v12, v30);
      v38 = *v47;
      (*v47)(v12, v30);
      v38(v16, v30);
      (*(v7 + 64))(v37, v32, v34, v7);
      v5 = v34;
      v32 = v55;
    }

    while (v50 != v55);
  }

  (*(v45 + 8))(v31, v5);
  return (v43)(v41, v54, v5);
}

uint64_t static SIMD<>.+= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), Class *a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v83 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v70 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v69 = &v66 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v81 = &v66 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v66 - v22;
  v24 = *(a3 - 1);
  v26 = MEMORY[0x1EEE9AC00](v21, v25);
  v85 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = (&v66 - v30);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v84 = &v66 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v36 = *(v24 + 32);
  v80 = &v66 - v37;
  v38 = a1;
  v72 = v36;
  v73 = v24 + 32;
  v36();
  v86 = v10;
  v39 = *(v10 + 16);
  v71 = v23;
  v74 = v9;
  v40 = v39;
  v39(v23, v83, v9);
  v77 = *(v7 + 48);
  v78 = v7 + 48;
  v77(a3, v7);
  v75 = *(v7 + 40);
  v76 = (v7 + 40);
  v41 = v75(a3, v7);
  if (v41 < 0)
  {
    goto LABEL_10;
  }

  v67 = v24;
  v68 = v38;
  v42 = v74;
  v43 = v7;
  v44 = v81;
  v82 = a3;
  v83 = v31;
  v45 = v71;
  if (v41)
  {
    v46 = 0;
    do
    {
      v47 = v41;
      v48 = v45;
      v49 = v42;
      v40(v44, v45, v42);
      (*(v43 + 64))(v44, v46, v82, v43);
      v45 = v48;
      v42 = v49;
      v41 = v47;
      ++v46;
    }

    while (v47 != v46);
  }

  v50 = v82;
  v51 = v86 + 8;
  v52 = *(v86 + 8);
  v52(v45, v42);
  (v72)(v84, v83, v50);
  v77(v50, v43);
  v53 = v50;
  v54 = v75(v50, v43);
  if (v54 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v55 = v43;
  v86 = v51;
  v57 = v69;
  v56 = v70;
  v58 = v74;
  v83 = v52;
  if (v54)
  {
    v59 = 0;
    v76 = *(v55 + 56);
    v77 = (v55 + 56);
    v75 = (v55 + 64);
    v78 = v54;
    do
    {
      v60 = v76;
      v76(v59, v53, v55);
      v60(v59, v53, v55);
      v61 = v81;
      (*(*(*(*(v79 + 16) + 8) + 8) + 24))(v57, v56, v58);
      v62 = v53;
      v63 = v83;
      v83(v56, v58);
      v63(v57, v58);
      v53 = v62;
      (*(v55 + 64))(v61, v59++, v62, v55);
    }

    while (v78 != v59);
  }

  v64 = *(v67 + 8);
  v64(v84, v53);
  v64(v80, v53);
  return (v72)(v68, v85, v53);
}

uint64_t static SIMD<>.-= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), Class *a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v83 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v70 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v69 = &v66 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v81 = &v66 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v66 - v22;
  v24 = *(a3 - 1);
  v26 = MEMORY[0x1EEE9AC00](v21, v25);
  v85 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = (&v66 - v30);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v84 = &v66 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v36 = *(v24 + 32);
  v80 = &v66 - v37;
  v38 = a1;
  v72 = v36;
  v73 = v24 + 32;
  v36();
  v86 = v10;
  v39 = *(v10 + 16);
  v71 = v23;
  v74 = v9;
  v40 = v39;
  v39(v23, v83, v9);
  v77 = *(v7 + 48);
  v78 = v7 + 48;
  v77(a3, v7);
  v75 = *(v7 + 40);
  v76 = (v7 + 40);
  v41 = v75(a3, v7);
  if (v41 < 0)
  {
    goto LABEL_10;
  }

  v67 = v24;
  v68 = v38;
  v42 = v74;
  v43 = v7;
  v44 = v81;
  v82 = a3;
  v83 = v31;
  v45 = v71;
  if (v41)
  {
    v46 = 0;
    do
    {
      v47 = v41;
      v48 = v45;
      v49 = v42;
      v40(v44, v45, v42);
      (*(v43 + 64))(v44, v46, v82, v43);
      v45 = v48;
      v42 = v49;
      v41 = v47;
      ++v46;
    }

    while (v47 != v46);
  }

  v50 = v82;
  v51 = v86 + 8;
  v52 = *(v86 + 8);
  v52(v45, v42);
  (v72)(v84, v83, v50);
  v77(v50, v43);
  v53 = v50;
  v54 = v75(v50, v43);
  if (v54 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v55 = v43;
  v86 = v51;
  v57 = v69;
  v56 = v70;
  v58 = v74;
  v83 = v52;
  if (v54)
  {
    v59 = 0;
    v76 = *(v55 + 56);
    v77 = (v55 + 56);
    v75 = (v55 + 64);
    v78 = v54;
    do
    {
      v60 = v76;
      v76(v59, v53, v55);
      v60(v59, v53, v55);
      v61 = v81;
      (*(*(*(*(v79 + 16) + 8) + 8) + 40))(v57, v56, v58);
      v62 = v53;
      v63 = v83;
      v83(v56, v58);
      v63(v57, v58);
      v53 = v62;
      (*(v55 + 64))(v61, v59++, v62, v55);
    }

    while (v78 != v59);
  }

  v64 = *(v67 + 8);
  v64(v84, v53);
  v64(v80, v53);
  return (v72)(v68, v85, v53);
}

uint64_t static SIMD<>.*= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), Class *a3, uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v88 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v73 = &v69 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v86 = &v69 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v69 - v23;
  v25 = *(a3 - 1);
  v27 = MEMORY[0x1EEE9AC00](v22, v26);
  v90 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = (&v69 - v31);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v89 = &v69 - v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v37 = *(v25 + 32);
  v85 = &v69 - v38;
  v39 = a1;
  v76 = v37;
  v77 = v25 + 32;
  v37();
  v91 = v10;
  v40 = *(v10 + 16);
  v74 = v10 + 16;
  v75 = v24;
  v79 = v9;
  v41 = v40;
  v40(v24, v88, v9);
  v82 = *(v7 + 48);
  v83 = v7 + 48;
  v82(a3, v7);
  v42 = *(v7 + 40);
  v78 = v7;
  v80 = v42;
  v81 = (v7 + 40);
  v43 = v42(a3, v7);
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  v44 = v43;
  v70 = v25;
  v71 = v14;
  v72 = v39;
  v46 = v78;
  v45 = v79;
  v47 = v86;
  v87 = a3;
  v88 = v32;
  v48 = v75;
  if (v43)
  {
    v49 = 0;
    do
    {
      v50 = v48;
      v51 = v45;
      v41(v47, v48, v45);
      (*(v46 + 64))(v47, v49, v87, v46);
      v48 = v50;
      v45 = v51;
      ++v49;
    }

    while (v44 != v49);
  }

  v52 = v87;
  v53 = v91 + 8;
  v54 = *(v91 + 8);
  v54(v48, v45);
  (v76)(v89, v88, v52);
  v82(v52, v46);
  v55 = v46;
  v56 = v52;
  v57 = v80(v52, v55);
  if (v57 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v91 = v53;
  v58 = v71;
  v59 = v73;
  v61 = v78;
  v60 = v79;
  v88 = v54;
  if (v57)
  {
    v62 = 0;
    v81 = *(v78 + 56);
    v82 = (v78 + 56);
    v80 = (v78 + 64);
    v83 = v57;
    do
    {
      v63 = v81;
      v81(v62, v56, v61);
      v63(v62, v56, v61);
      v64 = v86;
      (*(*(*(v84 + 16) + 8) + 64))(v59, v58, v60);
      v65 = v56;
      v66 = v88;
      v88(v58, v60);
      v66(v59, v60);
      v56 = v65;
      (*(v61 + 64))(v64, v62++, v65, v61);
    }

    while (v83 != v62);
  }

  v67 = *(v70 + 8);
  v67(v89, v56);
  v67(v85, v56);
  return (v76)(v72, v90, v56);
}

uint64_t static SIMD<>./= infix(_:_:)(uint64_t a1, char *a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v80 = a5;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v70 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v69 = &v67 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v82 = &v67 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v67 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v87 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = (&v67 - v30);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v86 = &v67 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v68 = v36;
  v37 = *(v36 + 32);
  v81 = &v67 - v38;
  v39 = a1;
  v73 = v37;
  v74 = v36 + 32;
  v37();
  v40 = *(v11 + 16);
  v79 = v24;
  v71 = v40;
  v72 = v11 + 16;
  v40(v24, a2, v10);
  v77 = *(v8 + 48);
  v78 = v8 + 48;
  v77(a3, v8);
  v41 = v31;
  v75 = *(v8 + 40);
  v76 = v8 + 40;
  v42 = v75(a3, v8);
  if (v42 < 0)
  {
    goto LABEL_10;
  }

  v43 = v42;
  v84 = a3;
  v85 = v11;
  v67 = v39;
  v44 = v82;
  v45 = v79;
  v83 = v41;
  v46 = v71;
  if (v42)
  {
    v47 = 0;
    do
    {
      v46(v44, v45, v10);
      (*(v8 + 64))(v44, v47++, v84, v8);
    }

    while (v43 != v47);
  }

  v48 = *(v85 + 8);
  v49 = v85 + 8;
  v48(v45, v10);
  v50 = v84;
  (v73)(v86, v83, v84);
  v77(v50, v8);
  v51 = v50;
  v52 = v75(v50, v8);
  if (v52 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v53 = v10;
  v54 = v8;
  v55 = v51;
  v85 = v49;
  v56 = v69;
  v57 = v70;
  v83 = v48;
  if (v52)
  {
    v58 = v54;
    v59 = 0;
    v60 = *(v54 + 56);
    v76 = v80 + 192;
    v77 = v60;
    v78 = v54 + 56;
    v79 = v52;
    v75 = (v54 + 64);
    do
    {
      v61 = v77;
      (v77)(v59, v55, v58);
      v61(v59, v55, v58);
      v62 = v82;
      (*(v80 + 192))(v56, v57, v53);
      v63 = v55;
      v64 = v83;
      v83(v57, v53);
      v64(v56, v53);
      v55 = v63;
      (*(v58 + 64))(v62, v59++, v63, v58);
    }

    while (v79 != v59);
  }

  v65 = *(v68 + 8);
  v65(v86, v55);
  v65(v81, v55);
  return (v73)(v67, v87, v55);
}

uint64_t SIMD<>.addProduct(_:_:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v68 = a5;
  v65 = a1;
  v66 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v70 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v52 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v56 = &v52 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v53 = &v52 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v28);
  v57 = v29;
  v31 = &v52 - v30;
  v54 = *(v29 + 32);
  v55 = v29 + 32;
  v54();
  (*(v7 + 48))(a3, v7);
  v32 = v27;
  v33 = (*(v7 + 40))(a3, v7);
  if (v33 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v52 = v5;
  v64 = v13;
  v67 = v7;
  v34 = a3;
  v35 = v56;
  v36 = v53;
  v69 = v32;
  v37 = v31;
  if (v33)
  {
    v38 = v17;
    v39 = 0;
    v40 = *(v67 + 56);
    v60 = v68 + 256;
    v61 = v40;
    v62 = v67 + 56;
    v63 = v33;
    v58 = v67 + 64;
    v59 = (v70 + 8);
    v71 = v9;
    v72 = v37;
    do
    {
      v70 = v39 + 1;
      v41 = v67;
      v42 = v61;
      v61(v39, v34, v67);
      v42(v39, v34, v41);
      v43 = v36;
      v44 = v34;
      v45 = v35;
      v46 = v38;
      v47 = v64;
      v42(v39, v44, v41);
      (*(v68 + 256))(v46, v47, v71);
      v48 = *v59;
      v49 = v47;
      v38 = v46;
      v35 = v45;
      v34 = v44;
      v36 = v43;
      v50 = v71;
      (*v59)(v49, v71);
      v48(v38, v50);
      v48(v35, v50);
      (*(v41 + 64))(v36, v39, v34, v41);
      v37 = v72;
      v39 = v70;
    }

    while (v63 != v70);
  }

  (*(v57 + 8))(v37, v34);
  return (v54)(v52, v69, v34);
}

{
  v6 = v5;
  v83 = a2;
  v84 = a5;
  v9 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v9, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v11 = v10;
  v12 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v82 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v73 = &v69 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v72 = &v69 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v86 = &v69 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v69 - v27;
  v29 = *(a3 - 1);
  v31 = MEMORY[0x1EEE9AC00](v26, v30);
  v89 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = (&v69 - v35);
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v88 = &v69 - v39;
  MEMORY[0x1EEE9AC00](v38, v40);
  v41 = *(v29 + 32);
  v85 = &v69 - v42;
  v75 = v41;
  v76 = v29 + 32;
  v41();
  v90 = v12;
  v43 = *(v12 + 16);
  v74 = v28;
  v79 = v43;
  (v43)(v28, a1, v11);
  v80 = *(v9 + 48);
  v81 = v9 + 48;
  v80(a3, v9);
  v77 = *(v9 + 40);
  v78 = v9 + 40;
  v44 = v77(a3, v9);
  if (v44 < 0)
  {
    goto LABEL_10;
  }

  v70 = v29;
  v71 = v6;
  v91 = a3;
  v45 = v86;
  v46 = v74;
  v87 = v36;
  v47 = v79;
  if (v44)
  {
    v48 = 0;
    do
    {
      v49 = v44;
      v47(v45, v46, v11);
      (*(v9 + 64))(v45, v48, v91, v9);
      v44 = v49;
      ++v48;
    }

    while (v49 != v48);
  }

  v50 = v90 + 8;
  v51 = *(v90 + 8);
  v52 = v11;
  v51(v46, v11);
  v53 = v91;
  (v75)(v88, v87, v91);
  v80(v53, v9);
  v54 = v77(v53, v9);
  if (v54 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v90 = v50;
  v55 = v9;
  v57 = v72;
  v56 = v73;
  if (v54)
  {
    v58 = 0;
    v80 = *(v55 + 56);
    v81 = v55 + 56;
    v77 = (v55 + 64);
    v78 = v84 + 256;
    v87 = v54;
    v79 = v51;
    do
    {
      v91 = (v58 + 1);
      v59 = v52;
      v60 = v80;
      (v80)(v58, v53, v55);
      v60(v58, v53, v55);
      v61 = v57;
      v62 = v56;
      v63 = v82;
      v60(v58, v53, v55);
      v52 = v59;
      v64 = v86;
      (*(v84 + 256))(v62, v63, v59);
      v65 = v63;
      v56 = v62;
      v57 = v61;
      v66 = v79;
      v79(v65, v59);
      v66(v56, v59);
      v66(v57, v59);
      (*(v55 + 64))(v64, v58, v53, v55);
      v58 = v91;
    }

    while (v87 != v91);
  }

  v67 = *(v70 + 8);
  v67(v88, v53);
  v67(v85, v53);
  return (v75)(v71, v89, v53);
}

{
  v6 = v5;
  v83 = a1;
  v84 = a5;
  v9 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v9, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v11 = v10;
  v12 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v82 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v73 = &v69 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v72 = &v69 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v86 = &v69 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v69 - v27;
  v29 = *(a3 - 1);
  v31 = MEMORY[0x1EEE9AC00](v26, v30);
  v89 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = (&v69 - v35);
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v88 = &v69 - v39;
  MEMORY[0x1EEE9AC00](v38, v40);
  v41 = *(v29 + 32);
  v85 = &v69 - v42;
  v75 = v41;
  v76 = v29 + 32;
  v41();
  v90 = v12;
  v43 = *(v12 + 16);
  v74 = v28;
  v79 = v43;
  (v43)(v28, a2, v11);
  v80 = *(v9 + 48);
  v81 = v9 + 48;
  v80(a3, v9);
  v77 = *(v9 + 40);
  v78 = v9 + 40;
  v44 = v77(a3, v9);
  if (v44 < 0)
  {
    goto LABEL_10;
  }

  v70 = v29;
  v71 = v6;
  v91 = a3;
  v45 = v86;
  v46 = v74;
  v87 = v36;
  v47 = v79;
  if (v44)
  {
    v48 = 0;
    do
    {
      v49 = v44;
      v47(v45, v46, v11);
      (*(v9 + 64))(v45, v48, v91, v9);
      v44 = v49;
      ++v48;
    }

    while (v49 != v48);
  }

  v50 = v90 + 8;
  v51 = *(v90 + 8);
  v52 = v11;
  v51(v46, v11);
  v53 = v91;
  (v75)(v88, v87, v91);
  v80(v53, v9);
  v54 = v77(v53, v9);
  if (v54 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v90 = v50;
  v55 = v9;
  v57 = v72;
  v56 = v73;
  if (v54)
  {
    v58 = 0;
    v80 = *(v55 + 56);
    v81 = v55 + 56;
    v77 = (v55 + 64);
    v78 = v84 + 256;
    v87 = v54;
    v79 = v51;
    do
    {
      v91 = (v58 + 1);
      v59 = v52;
      v60 = v80;
      (v80)(v58, v53, v55);
      v60(v58, v53, v55);
      v61 = v57;
      v62 = v56;
      v63 = v82;
      v60(v58, v53, v55);
      v52 = v59;
      v64 = v86;
      (*(v84 + 256))(v62, v63, v59);
      v65 = v63;
      v56 = v62;
      v57 = v61;
      v66 = v79;
      v79(v65, v59);
      v66(v56, v59);
      v66(v57, v59);
      (*(v55 + 64))(v64, v58, v53, v55);
      v58 = v91;
    }

    while (v87 != v91);
  }

  v67 = *(v70 + 8);
  v67(v88, v53);
  v67(v85, v53);
  return (v75)(v71, v89, v53);
}