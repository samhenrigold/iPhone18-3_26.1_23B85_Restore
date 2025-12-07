uint64_t SIMD16<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a4;
  v38 = a6;
  v40 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v20 = v19;
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v34 = v20;
  v35 = a8;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v32 = a7;
  v33 = v23;
  v39 = a3;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v25 = 0;
  v26 = *(v24 + 56);
  do
  {
    v27 = swift_checkMetadataState(0, v33);
    v26(v25, v27, v24);
    (*(*(v37 + 16) + 72))(v15, v39, *(v38 + 8));
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v34, AssociatedConformanceWitness);
  }

  while (v25 != 16);
  v29 = type metadata accessor for SIMD16(0, v39, v32, v28);
  return (*(*(v29 - 8) + 8))(v40, v29);
}

{
  v40 = a6;
  v42 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v37 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v20 = v19;
  v39 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v38 = a8;
  v36 = v20;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v32 = a7;
  v41 = a3;
  v35 = v23;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v25 = 0;
  v33 = *(v24 + 56);
  v34 = v24;
  do
  {
    v26 = swift_checkMetadataState(0, v35);
    v27 = v37;
    v33(v25, v26, v34);
    (*(a4 + 80))(v27, v41, v40);
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v36, AssociatedConformanceWitness);
  }

  while (v25 != 16);
  v29 = type metadata accessor for SIMD16(0, v41, v32, v28);
  return (*(*(v29 - 8) + 8))(v42, v29);
}

uint64_t key path getter for SIMD32.subscript(_:) : <A>SIMD32<A>A(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= 0x20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  v10 = swift_checkMetadataState(0, v7);
  return v9(v3, v10, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD32.subscript(_:) : <A>SIMD32<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v18 - v6;
  v9 = *v8;
  memcpy(&v18 - v6, v10, v11);
  if (v9 >= 0x20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v15 = *(AssociatedConformanceWitness + 64);
  v16 = swift_checkMetadataState(0, v13);
  return v15(v7, v9, v16, AssociatedConformanceWitness);
}

uint64_t (*SIMD32.subscript.modify(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x1395uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 8);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0x1395uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x1395uLL);
    v11 = swift_coroFrameAlloc(v10, 0x1395uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 0x20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t SIMD32.init(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, const void *a15, const void *a16, const void *a17, const void *a18, const void *a19, const void *a20, const void *a21, const void *a22, const void *a23, const void *a24, const void *a25, const void *a26, const void *a27, const void *a28, const void *a29, const void *a30, const void *a31, const void *a32, Class *a33, int **a34)
{
  v55 = a8;
  v53 = a7;
  v51 = a6;
  v50 = a5;
  v49 = a4;
  v77 = a31;
  v78 = a32;
  v76 = a30;
  v73 = a28;
  v74 = a29;
  v71 = a26;
  v72 = a27;
  v69 = a24;
  v70 = a25;
  v67 = a22;
  v68 = a23;
  v65 = a20;
  v66 = a21;
  v63 = a18;
  v64 = a19;
  v61 = a16;
  v62 = a17;
  v60 = a15;
  v37 = *(*(a33 - 1) + 8);
  v58 = a13;
  v59 = a14;
  v57 = a12;
  v56 = a11;
  v54 = a10;
  v52 = a9;
  v38 = MEMORY[0x1EEE9AC00](a1, a2);
  v75 = &v48 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v48 - v40;
  swift_getAssociatedTypeWitness(0, a34, a33, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v43 = v42;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a34, a33, v42, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v43, AssociatedConformanceWitness);
  memcpy(v41, a1, v37);
  v45 = *(AssociatedConformanceWitness + 64);
  v45(v41, 0, v43, AssociatedConformanceWitness);
  memcpy(v41, a2, v37);
  v45(v41, 1, v43, AssociatedConformanceWitness);
  memcpy(v41, a3, v37);
  v45(v41, 2, v43, AssociatedConformanceWitness);
  memcpy(v41, v49, v37);
  v45(v41, 3, v43, AssociatedConformanceWitness);
  memcpy(v41, v50, v37);
  v45(v41, 4, v43, AssociatedConformanceWitness);
  memcpy(v41, v51, v37);
  v45(v41, 5, v43, AssociatedConformanceWitness);
  memcpy(v41, v53, v37);
  v45(v41, 6, v43, AssociatedConformanceWitness);
  memcpy(v41, v55, v37);
  v45(v41, 7, v43, AssociatedConformanceWitness);
  memcpy(v41, v52, v37);
  v45(v41, 8, v43, AssociatedConformanceWitness);
  memcpy(v41, v54, v37);
  v45(v41, 9, v43, AssociatedConformanceWitness);
  memcpy(v41, v56, v37);
  v45(v41, 10, v43, AssociatedConformanceWitness);
  memcpy(v41, v57, v37);
  v45(v41, 11, v43, AssociatedConformanceWitness);
  memcpy(v41, v58, v37);
  v45(v41, 12, v43, AssociatedConformanceWitness);
  memcpy(v41, v59, v37);
  v45(v41, 13, v43, AssociatedConformanceWitness);
  memcpy(v41, v60, v37);
  v45(v41, 14, v43, AssociatedConformanceWitness);
  memcpy(v41, v61, v37);
  v45(v41, 15, v43, AssociatedConformanceWitness);
  memcpy(v41, v62, v37);
  v45(v41, 16, v43, AssociatedConformanceWitness);
  memcpy(v41, v63, v37);
  v45(v41, 17, v43, AssociatedConformanceWitness);
  memcpy(v41, v64, v37);
  v45(v41, 18, v43, AssociatedConformanceWitness);
  memcpy(v41, v65, v37);
  v45(v41, 19, v43, AssociatedConformanceWitness);
  memcpy(v41, v66, v37);
  v45(v41, 20, v43, AssociatedConformanceWitness);
  memcpy(v41, v67, v37);
  v45(v41, 21, v43, AssociatedConformanceWitness);
  memcpy(v41, v68, v37);
  v45(v41, 22, v43, AssociatedConformanceWitness);
  memcpy(v41, v69, v37);
  v45(v41, 23, v43, AssociatedConformanceWitness);
  memcpy(v41, v70, v37);
  v45(v41, 24, v43, AssociatedConformanceWitness);
  memcpy(v41, v71, v37);
  v45(v41, 25, v43, AssociatedConformanceWitness);
  memcpy(v41, v72, v37);
  v45(v41, 26, v43, AssociatedConformanceWitness);
  memcpy(v41, v73, v37);
  v45(v41, 27, v43, AssociatedConformanceWitness);
  memcpy(v41, v74, v37);
  v45(v41, 28, v43, AssociatedConformanceWitness);
  memcpy(v41, v76, v37);
  v45(v41, 29, v43, AssociatedConformanceWitness);
  memcpy(v41, v77, v37);
  v45(v41, 30, v43, AssociatedConformanceWitness);
  v46 = v75;
  memcpy(v75, v78, v37);
  return (v45)(v46, 31, v43, AssociatedConformanceWitness);
}

uint64_t SIMD32.init(lowHalf:highHalf:)(uint64_t a1, uint64_t a2, Class *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v9, AssociatedConformanceWitness);
  v12 = type metadata accessor for SIMD32(0, a3, a4, v11);
  specialized SIMD32.lowHalf.setter(a1, v12);
  v14 = type metadata accessor for SIMD16(0, a3, a4, v13);
  v16 = *(*(v14 - 8) + 8);
  (v16)((v14 - 8), a1, v14);
  specialized SIMD32.highHalf.setter(a2, v12);

  return v16(a2, v14);
}

uint64_t SIMD32.lowHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v9, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 48);
  v21 = v10;
  v22 = a3;
  v12(v10, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v14 = v13;
  v15 = swift_getAssociatedConformanceWitness(v8, v4, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v16 = 0;
  v17 = *(v15 + 56);
  do
  {
    v18 = swift_checkMetadataState(0, v14);
    v17(v16, v18, v15);
    result = (*(AssociatedConformanceWitness + 64))(v7, v16++, v21, AssociatedConformanceWitness);
  }

  while (v16 != 16);
  return result;
}

void (*SIMD32.lowHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xC82AuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD16(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0xC82AuLL);
    v11 = swift_coroFrameAlloc(v10, 0xC82AuLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD32.lowHalf.getter(a2, v12, v11);
  return SIMD32.lowHalf.modify;
}

uint64_t SIMD32.highHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v9, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 48);
  v21 = v10;
  v22 = a3;
  v12(v10, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v14 = v13;
  v15 = swift_getAssociatedConformanceWitness(v8, v4, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v16 = 0;
  v17 = *(v15 + 56);
  do
  {
    v18 = swift_checkMetadataState(0, v14);
    v17(v16 + 16, v18, v15);
    result = (*(AssociatedConformanceWitness + 64))(v7, v16++, v21, AssociatedConformanceWitness);
  }

  while (v16 != 16);
  return result;
}

void (*SIMD32.highHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x9739uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD16(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x9739uLL);
    v11 = swift_coroFrameAlloc(v10, 0x9739uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD32.highHalf.getter(a2, v12, v11);
  return SIMD32.highHalf.modify;
}

uint64_t SIMD32.evenHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v9, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 48);
  v21 = v10;
  v22 = a3;
  v12(v10, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v20 = v13;
  v14 = swift_getAssociatedConformanceWitness(v8, v4, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v15 = 0;
  v16 = 0;
  v17 = *(v14 + 56);
  do
  {
    v18 = swift_checkMetadataState(0, v20);
    v17(v15, v18, v14);
    result = (*(AssociatedConformanceWitness + 64))(v7, v16, v21, AssociatedConformanceWitness);
    v15 += 2;
    ++v16;
  }

  while (v15 != 32);
  return result;
}

void (*SIMD32.evenHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x2693uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD16(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x2693uLL);
    v11 = swift_coroFrameAlloc(v10, 0x2693uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD32.evenHalf.getter(a2, v12, v11);
  return SIMD32.evenHalf.modify;
}

uint64_t SIMD32.oddHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v9, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 48);
  v21 = v10;
  v22 = a3;
  v12(v10, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v20 = v13;
  v14 = swift_getAssociatedConformanceWitness(v8, v4, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v15 = 0;
  v16 = *(v14 + 56);
  for (i = 1; i != 33; i += 2)
  {
    v18 = swift_checkMetadataState(0, v20);
    v16(i, v18, v14);
    result = (*(AssociatedConformanceWitness + 64))(v7, v15++, v21, AssociatedConformanceWitness);
  }

  return result;
}

void (*SIMD32.oddHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x22E3uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD16(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x22E3uLL);
    v11 = swift_coroFrameAlloc(v10, 0x22E3uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD32.oddHalf.getter(a2, v12, v11);
  return SIMD32.oddHalf.modify;
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMD32<A>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 0x20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMD32<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 0x20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance SIMD32<A>(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x5E14uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 8);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0x5E14uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x5E14uLL);
    v11 = swift_coroFrameAlloc(v10, 0x5E14uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 0x20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMD32<A>(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD32<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMD32<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD32<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMD32<A>@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD32<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMD32<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v23[1] = v23 - v7;
  v8 = 0;
  v9 = 1;
  v10 = v23 - v7;
  do
  {
    if (v9)
    {
      v11 = *(v27 + 24);
      swift_getAssociatedTypeWitness(255, v11, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
      v13 = v12;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
      v15 = *(AssociatedConformanceWitness + 56);
      v16 = swift_checkMetadataState(0, v13);
      v15(v8, v16, AssociatedConformanceWitness);
      v17 = v24;
      v15(v8, v16, AssociatedConformanceWitness);
      swift_getAssociatedTypeWitness(255, v11, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
      v19 = v18;
      v20 = swift_getAssociatedConformanceWitness(v11, v3, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
      v21 = swift_getAssociatedConformanceWitness(v20, v19, v3, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v9 = (*(*(v21 + 8) + 8))(v10, v17, v3);
    }

    else
    {
      v9 = 0;
    }

    ++v8;
  }

  while (v8 != 32);
  return v9 & 1;
}

uint64_t SIMD32<>.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a4;
  v38 = a6;
  v40 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v20 = v19;
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v34 = v20;
  v35 = a8;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v32 = a7;
  v33 = v23;
  v39 = a3;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v25 = 0;
  v26 = *(v24 + 56);
  do
  {
    v27 = swift_checkMetadataState(0, v33);
    v26(v25, v27, v24);
    (*(*(v37 + 8) + 96))(v15, v39, *(v38 + 8));
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v34, AssociatedConformanceWitness);
  }

  while (v25 != 32);
  v29 = type metadata accessor for SIMD32(0, v39, v32, v28);
  return (*(*(v29 - 8) + 8))(v40, v29);
}

uint64_t SIMD32<>.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a4;
  v38 = a6;
  v40 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v20 = v19;
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v34 = v20;
  v35 = a8;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v32 = a7;
  v33 = v23;
  v39 = a3;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v25 = 0;
  v26 = *(v24 + 56);
  do
  {
    v27 = swift_checkMetadataState(0, v33);
    v26(v25, v27, v24);
    (*(*(v37 + 8) + 104))(v15, v39, *(v38 + 8));
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v34, AssociatedConformanceWitness);
  }

  while (v25 != 32);
  v29 = type metadata accessor for SIMD32(0, v39, v32, v28);
  return (*(*(v29 - 8) + 8))(v40, v29);
}

uint64_t SIMD32<>.init<A>(_:rounding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, Class *a4@<X3>, uint64_t a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, int **a8@<X7>, uint64_t a9@<X8>)
{
  v48 = a5;
  v49 = a7;
  v46 = a2;
  v51 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v44 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v24, v23, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v26 = v25;
  v47 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a3, v25, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v28 = *(AssociatedConformanceWitness + 48);
  v45 = a9;
  v43 = v26;
  v28(v26, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a8, a4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v39 = a8;
  v50 = a4;
  v42 = v29;
  v30 = swift_getAssociatedConformanceWitness(a8, a4, v29, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v31 = 0;
  v40 = *(v30 + 56);
  v41 = v30;
  do
  {
    v32 = swift_checkMetadataState(0, v42);
    v40(v31, v32, v41);
    v33 = v49;
    v34 = v50;
    (*(*(v49 + 16) + 304))(v46, v50);
    (*(*(v48 + 8) + 80))(v19, v34, v33);
    (*(AssociatedConformanceWitness + 64))(v22, v31++, v43, AssociatedConformanceWitness);
  }

  while (v31 != 32);
  v36 = type metadata accessor for SIMD32(0, v50, v39, v35);
  return (*(*(v36 - 8) + 8))(v51, v36);
}

uint64_t SIMD32.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v1013 = a1;
  v2 = *(a1 + 16);
  v3 = *(*(v2 - 1) + 8);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v981 = &v973 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v989 = &v973 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v997 = &v973 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v1005 = &v973 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v1012 = &v973 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v980 = &v973 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v988 = &v973 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v996 = &v973 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v1004 = &v973 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v1011 = &v973 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v979 = &v973 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v987 = &v973 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v995 = &v973 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v1003 = &v973 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v47 = &v973 - v46;
  v49 = MEMORY[0x1EEE9AC00](v45, v48);
  v978 = &v973 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v986 = &v973 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v994 = &v973 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v1002 = &v973 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58, v60);
  v1010 = &v973 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61, v63);
  v977 = &v973 - v65;
  v67 = MEMORY[0x1EEE9AC00](v64, v66);
  v985 = &v973 - v68;
  v70 = MEMORY[0x1EEE9AC00](v67, v69);
  v993 = &v973 - v71;
  v73 = MEMORY[0x1EEE9AC00](v70, v72);
  v1001 = &v973 - v74;
  v76 = MEMORY[0x1EEE9AC00](v73, v75);
  v1009 = &v973 - v77;
  v79 = MEMORY[0x1EEE9AC00](v76, v78);
  v976 = &v973 - v80;
  v82 = MEMORY[0x1EEE9AC00](v79, v81);
  v984 = &v973 - v83;
  v85 = MEMORY[0x1EEE9AC00](v82, v84);
  v992 = &v973 - v86;
  v88 = MEMORY[0x1EEE9AC00](v85, v87);
  v1000 = &v973 - v89;
  v91 = MEMORY[0x1EEE9AC00](v88, v90);
  v1008 = &v973 - v92;
  v94 = MEMORY[0x1EEE9AC00](v91, v93);
  v975 = &v973 - v95;
  v97 = MEMORY[0x1EEE9AC00](v94, v96);
  v983 = &v973 - v98;
  v100 = MEMORY[0x1EEE9AC00](v97, v99);
  v991 = &v973 - v101;
  v103 = MEMORY[0x1EEE9AC00](v100, v102);
  v999 = &v973 - v104;
  v106 = MEMORY[0x1EEE9AC00](v103, v105);
  v1007 = &v973 - v107;
  v109 = MEMORY[0x1EEE9AC00](v106, v108);
  v974 = &v973 - v110;
  v112 = MEMORY[0x1EEE9AC00](v109, v111);
  v982 = &v973 - v113;
  v115 = MEMORY[0x1EEE9AC00](v112, v114);
  v990 = &v973 - v116;
  v118 = MEMORY[0x1EEE9AC00](v115, v117);
  v998 = &v973 - v119;
  v121 = MEMORY[0x1EEE9AC00](v118, v120);
  v123 = &v973 - v122;
  MEMORY[0x1EEE9AC00](v121, v124);
  v126 = &v973 - v125;
  v127 = _StringGuts.init(_initialCapacity:)(138);
  v129 = v128;
  v1020._countAndFlagsBits = v127;
  v1020._object = v128;
  v130 = HIBYTE(v128) & 0xF;
  if ((v128 & 0x2000000000000000) == 0)
  {
    v130 = v127 & 0xFFFFFFFFFFFFLL;
  }

  if (v130 || (v127 & ~v128 & 0x2000000000000000) != 0)
  {
    if ((v128 & 0x2000000000000000) != 0 && (v131 = specialized _SmallString.init(_:appending:)(v127, v128, 0x3C3233444D4953uLL, 0xE700000000000000), (v133 & 1) == 0))
    {
      v142 = v131;
      v143 = v132;
      v129;
      0xE700000000000000;
      v1020._countAndFlagsBits = v142;
      v1020._object = v143;
    }

    else
    {
      0xE700000000000000;
      _StringGuts.append(_:)(0x3C3233444D4953, 0xE700000000000000, 0, 7, v134, v135, v136, v137, v138, v139, v140, v141);
      swift_bridgeObjectRelease_n(0xE700000000000000, 2);
    }
  }

  else
  {
    v1020._countAndFlagsBits = 0x3C3233444D4953;
    v1020._object = 0xE700000000000000;
    v128;
  }

  TypeName = swift_getTypeName(v2, 0);
  if (v145 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v146 = TypeName;
  v147 = v145;
  if (_allASCII(_:)(TypeName, v145))
  {
    v149 = 1;
LABEL_13:
    if (v147)
    {
      if (v147 > 15)
      {
        v150 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v146, v147, v147, v149 & 1);
        v151 = *(v150 + 24);
        goto LABEL_80;
      }

      v168 = v147 - 8;
      v169 = 8;
      if (v147 < 8)
      {
        v169 = v147;
      }

      if (v147 >= 4)
      {
        v171 = v169 & 0xC;
        v148.i32[0] = *v146;
        v172 = vmovl_u16(*&vmovl_u8(v148));
        v173.i64[0] = v172.u32[0];
        v173.i64[1] = v172.u32[1];
        v174.i64[0] = 255;
        v174.i64[1] = 255;
        v175 = vandq_s8(v173, v174);
        v173.i64[0] = v172.u32[2];
        v173.i64[1] = v172.u32[3];
        v176 = vshlq_u64(vandq_s8(v173, v174), xmmword_18071DBA0);
        v177.i32[1] = 0;
        v178 = vshlq_u64(v175, xmmword_18071DBB0);
        if (v171 != 4)
        {
          v177.i32[0] = *(v146 + 4);
          v179 = vmovl_u16(*&vmovl_u8(v177));
          v180.i64[0] = v179.u32[2];
          v180.i64[1] = v179.u32[3];
          v181 = vandq_s8(v180, v174);
          v180.i64[0] = v179.u32[0];
          v180.i64[1] = v179.u32[1];
          v176 = vorrq_s8(vshlq_u64(v181, xmmword_18071DBD0), v176);
          v178 = vorrq_s8(vshlq_u64(vandq_s8(v180, v174), xmmword_18071DBC0), v178);
        }

        v182 = vorrq_s8(v178, v176);
        v151 = vorr_s8(*v182.i8, *&vextq_s8(v182, v182, 8uLL));
        if (v169 == v171)
        {
          goto LABEL_72;
        }

        v170 = 8 * v171;
      }

      else
      {
        v151 = 0;
        v170 = 0;
        v171 = 0;
      }

      v183 = v169 - v171;
      v184 = (v146 + v171);
      do
      {
        v185 = *v184++;
        v151 |= v185 << (v170 & 0x38);
        v170 += 8;
        --v183;
      }

      while (v183);
LABEL_72:
      if (v147 < 9)
      {
        v186 = 0;
      }

      else
      {
        v186 = 0;
        v187 = 0;
        v188 = (v146 + 8);
        do
        {
          v189 = *v188++;
          v186 |= v189 << v187;
          v187 += 8;
          --v168;
        }

        while (v168);
      }

      v190 = 0xA000000000000000;
      if (((v186 | v151) & 0x8080808080808080) == 0)
      {
        v190 = 0xE000000000000000;
      }

      v150 = v190 | (v147 << 56) | v186;
      goto LABEL_80;
    }

LABEL_59:
    v151 = 0;
    v150 = 0xE000000000000000;
    goto LABEL_80;
  }

  if (!v147)
  {
    goto LABEL_59;
  }

  v152 = 0;
  v153 = (v146 + v147);
  v149 = 1;
  v154 = v146;
  v155 = v146;
  while (1)
  {
    v157 = *v155++;
    v156 = v157;
    if ((v157 & 0x80000000) == 0)
    {
      v158 = 1;
      goto LABEL_20;
    }

    if ((v156 + 11) <= 0xCCu)
    {
      LOBYTE(v1014._countAndFlagsBits) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v156);
      goto LABEL_61;
    }

    if (v156 > 0xDFu)
    {
      break;
    }

    if (v155 == v153 || (*v155 & 0xC0) != 0x80)
    {
LABEL_306:
      LOBYTE(v1014._countAndFlagsBits) = 4;
      goto LABEL_61;
    }

    v149 = 0;
    v155 = v154 + 2;
    v158 = 2;
LABEL_20:
    v152 += v158;
    v154 = v155;
    if (v155 == v153)
    {
      goto LABEL_13;
    }
  }

  if (v156 == 224)
  {
    if (v155 == v153)
    {
      goto LABEL_306;
    }

    if (v154[1] - 192 < 0xFFFFFFE0)
    {
      goto LABEL_308;
    }

    goto LABEL_44;
  }

  if (v156 <= 0xECu)
  {
    goto LABEL_42;
  }

  if (v156 == 237)
  {
    if (v155 == v153)
    {
      goto LABEL_306;
    }

    v159 = v154[1];
    if (v159 > 0x9F || (v159 & 0xC0) != 0x80)
    {
      LOBYTE(v1014._countAndFlagsBits) = 1;
      goto LABEL_61;
    }

    goto LABEL_44;
  }

  if (v156 <= 0xEFu)
  {
LABEL_42:
    if (v155 == v153 || (v154[1] & 0xC0) != 0x80)
    {
      goto LABEL_306;
    }

LABEL_44:
    if (v154 + 2 == v153 || (v154[2] & 0xC0) != 0x80)
    {
      goto LABEL_306;
    }

    v149 = 0;
    v155 = v154 + 3;
    v158 = 3;
    goto LABEL_20;
  }

  if (v156 == 240)
  {
    if (v155 == v153)
    {
      goto LABEL_306;
    }

    if (v154[1] - 192 < 0xFFFFFFD0)
    {
LABEL_308:
      LOBYTE(v1014._countAndFlagsBits) = 3;
      goto LABEL_61;
    }

    goto LABEL_54;
  }

  if (v156 <= 0xF3u)
  {
    if (v155 == v153 || (v154[1] & 0xC0) != 0x80)
    {
      goto LABEL_306;
    }

    goto LABEL_54;
  }

  if (v155 == v153)
  {
    goto LABEL_306;
  }

  v160 = v154[1];
  if (v160 <= 0x8F && (v160 & 0xC0) == 0x80)
  {
LABEL_54:
    if (v154 + 2 == v153 || (v154[2] & 0xC0) != 0x80 || v154 + 3 == v153 || (v154[3] & 0xC0) != 0x80)
    {
      goto LABEL_306;
    }

    v149 = 0;
    v155 = v154 + 4;
    v158 = 4;
    goto LABEL_20;
  }

  LOBYTE(v1014._countAndFlagsBits) = 2;
LABEL_61:
  swift_willThrowTypedImpl(&v1014, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v161 = specialized Collection.subscript.getter(v152, v146, v147);
  v165 = findInvalidRange #1 (_:) in validateUTF8(_:)(v161, v162, v163, v164);
  v151 = repairUTF8(_:firstKnownBrokenRange:)(v146, v147, v165, v166);
  v150 = v167;
LABEL_80:
  v191 = v1020;
  v192 = (v1020._object >> 56) & 0xF;
  if ((v1020._object & 0x2000000000000000) == 0)
  {
    v192 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v192 && (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) == 0)
  {
    v1020._countAndFlagsBits = v151;
    v1020._object = v150;
    v191._object;
    goto LABEL_92;
  }

  if ((v1020._object & 0x2000000000000000) != 0)
  {
    if ((v150 & 0x2000000000000000) != 0)
    {
      v194 = specialized _SmallString.init(_:appending:)(v1020._countAndFlagsBits, v1020._object, v151, v150);
      if (v196)
      {
        goto LABEL_90;
      }

      v278 = v194;
      v279 = v195;
      v150;
      v1020._object;
      v1020._countAndFlagsBits = v278;
      v1020._object = v279;
      goto LABEL_92;
    }

LABEL_88:
    v193 = v151 & 0xFFFFFFFFFFFFLL;
    goto LABEL_91;
  }

  if ((v150 & 0x2000000000000000) == 0)
  {
    goto LABEL_88;
  }

LABEL_90:
  v193 = HIBYTE(v150) & 0xF;
LABEL_91:
  v150;
  _StringGuts.append(_:)(v151, v150, 0, v193, v197, v198, v199, v200, v201, v202, v203, v204);
  swift_bridgeObjectRelease_n(v150, 2);
LABEL_92:
  v205 = v1020;
  v206 = (v1020._object >> 56) & 0xF;
  if ((v1020._object & 0x2000000000000000) == 0)
  {
    v206 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v1006 = v47;
  if (v206 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
  {
    if ((v1020._object & 0x2000000000000000) != 0 && (v207 = specialized _SmallString.init(_:appending:)(v1020._countAndFlagsBits, v1020._object, 0x283EuLL, 0xE200000000000000), (v209 & 1) == 0))
    {
      v218 = v207;
      v219 = v208;
      0xE200000000000000;
      v1020._object;
      v1020._countAndFlagsBits = v218;
      v1020._object = v219;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10302, 0xE200000000000000, 0, 2, v210, v211, v212, v213, v214, v215, v216, v217);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v1020._countAndFlagsBits = 10302;
    v1020._object = 0xE200000000000000;
    v205._object;
  }

  v220 = *(v1013 + 24);
  swift_getAssociatedTypeWitness(255, v220, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v222 = v221;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v220, v2, v221, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v224 = *(AssociatedConformanceWitness + 56);
  v225 = swift_checkMetadataState(0, v222);
  v1013 = v224;
  v224(0, v225, AssociatedConformanceWitness);
  v1015 = v2;
  v226 = __swift_allocate_boxed_opaque_existential_0Tm(&v1014);
  memcpy(v226, v126, v3);
  v227 = v1015;
  v228 = __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
  DynamicType = swift_getDynamicType(v228, v227, 1);
  LODWORD(v227) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
  if (v227)
  {
    memcpy(v123, v126, v3);
    v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1014, v123, v2, v230, 7uLL, v231, v232, v233, v973);
    v234 = v1015;
    v235 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    v236 = (*(v235 + 8))(v234, v235);
    object = v237;
    v247 = v1020;
    v248 = (v1020._object >> 56) & 0xF;
    if ((v1020._object & 0x2000000000000000) == 0)
    {
      v248 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    v249 = v1007;
    if (v248 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v236, v237, v238, v239, v240, v241, v242, v243, v244, v245);
    }

    else
    {
      v1020._countAndFlagsBits = v236;
      v1020._object = v237;
      object = v247._object;
    }

    object;
    __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
  }

  else
  {
    v250 = v998;
    memcpy(v998, v126, v3);
    v254 = swift_dynamicCast(&v1014, v250, v2, &type metadata for String, 6uLL, v251, v252, v253, v973);
    v249 = v1007;
    if ((v254 & 1) == 0)
    {
      v266 = v990;
      memcpy(v990, v126, v3);
      v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
      if (swift_dynamicCast(&v1017, v266, v2, v267, 6uLL, v268, v269, v270, v973))
      {
        _ss9CodingKey_pWOb_0(&v1017, &v1014);
        v271 = v1015;
        v272 = v1016;
        __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
        (*(v272 + 8))(&v1020, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v271, v272);
      }

      else
      {
        v1019 = 0;
        v1017 = 0u;
        v1018 = 0u;
        outlined destroy of _HasContiguousBytes?(&v1017, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
        v273 = v982;
        memcpy(v982, v126, v3);
        v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
        if (!swift_dynamicCast(&v1017, v273, v2, v274, 6uLL, v275, v276, v277, v973))
        {
          v1019 = 0;
          v1017 = 0u;
          v1018 = 0u;
          outlined destroy of _HasContiguousBytes?(&v1017, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
          v280 = v974;
          memcpy(v974, v126, v3);
          v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
          if (!swift_dynamicCast(&v1017, v280, v2, v281, 6uLL, v282, v283, v284, v973))
          {
            v1019 = 0;
            v1017 = 0u;
            v1018 = 0u;
            outlined destroy of _HasContiguousBytes?(&v1017, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
            *(&v1018 + 1) = v2;
            v945 = __swift_allocate_boxed_opaque_existential_0Tm(&v1017);
            memcpy(v945, v126, v3);
            Mirror.init(reflecting:)(&v1017, &v1014);
            v946 = v1014._object;
            v947 = v1016;
            _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v126, &v1014, &v1020, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
            v947;
            v946;
            goto LABEL_129;
          }
        }

        _ss9CodingKey_pWOb_0(&v1017, &v1014);
        v285 = v1015;
        v286 = v1016;
        __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
        v287 = (*(v286 + 8))(v285, v286);
        v297 = v288;
        v298 = v1020;
        v299 = (v1020._object >> 56) & 0xF;
        if ((v1020._object & 0x2000000000000000) == 0)
        {
          v299 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v299 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
        {
          _StringGuts.append(_:)(v287, v288, v289, v290, v291, v292, v293, v294, v295, v296);
        }

        else
        {
          v1020._countAndFlagsBits = v287;
          v1020._object = v288;
          v297 = v298._object;
        }

        v297;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
      goto LABEL_129;
    }

    v263 = v1014._object;
    v264 = v1020;
    v265 = (v1020._object >> 56) & 0xF;
    if ((v1020._object & 0x2000000000000000) == 0)
    {
      v265 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v265 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v1014._countAndFlagsBits, v1014._object, v255, v256, v257, v258, v259, v260, v261, v262);
      v263;
    }

    else
    {
      v1020 = v1014;
      v264._object;
    }
  }

LABEL_129:
  v300 = v1020;
  v301 = (v1020._object >> 56) & 0xF;
  if ((v1020._object & 0x2000000000000000) == 0)
  {
    v301 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v301 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
  {
    if ((v1020._object & 0x2000000000000000) != 0 && (v302 = specialized _SmallString.init(_:appending:)(v1020._countAndFlagsBits, v1020._object, 0x202CuLL, 0xE200000000000000), (v304 & 1) == 0))
    {
      v313 = v302;
      v314 = v303;
      0xE200000000000000;
      v1020._object;
      v1020._countAndFlagsBits = v313;
      v1020._object = v314;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v305, v306, v307, v308, v309, v310, v311, v312);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v1020._countAndFlagsBits = 8236;
    v1020._object = 0xE200000000000000;
    v300._object;
  }

  (v1013)(1, v225, AssociatedConformanceWitness);
  v1015 = v2;
  v315 = __swift_allocate_boxed_opaque_existential_0Tm(&v1014);
  memcpy(v315, v249, v3);
  v316 = v1015;
  v317 = __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
  v318 = swift_getDynamicType(v317, v316, 1);
  LODWORD(v316) = swift_isOptionalType(v318);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
  if (v316)
  {
    memcpy(v123, v249, v3);
    v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1014, v123, v2, v319, 7uLL, v320, v321, v322, v973);
    goto LABEL_140;
  }

  v338 = v999;
  memcpy(v999, v249, v3);
  if (swift_dynamicCast(&v1014, v338, v2, &type metadata for String, 6uLL, v339, v340, v341, v973))
  {
    v342 = v1014._object;
    String.write(_:)(v1014);
    v342;
    goto LABEL_150;
  }

  v356 = v991;
  memcpy(v991, v249, v3);
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v1017, v356, v2, v357, 6uLL, v358, v359, v360, v973))
  {
    _ss9CodingKey_pWOb_0(&v1017, &v1014);
    v361 = v1015;
    v362 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    (*(v362 + 8))(&v1020, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v361, v362);
LABEL_147:
    __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
    goto LABEL_150;
  }

  v1019 = 0;
  v1017 = 0u;
  v1018 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1017, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v839 = v983;
  memcpy(v983, v249, v3);
  v840 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v1017, v839, v2, v840, 6uLL, v841, v842, v843, v973))
  {
    _ss9CodingKey_pWOb_0(&v1017, &v1014);
    v844 = v1015;
    v845 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    v325 = (*(v845 + 8))(v844, v845);
LABEL_141:
    v335 = v326;
    v336 = v1020;
    v337 = (v1020._object >> 56) & 0xF;
    if ((v1020._object & 0x2000000000000000) == 0)
    {
      v337 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v337 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);
    }

    else
    {
      v1020._countAndFlagsBits = v325;
      v1020._object = v326;
      v335 = v336._object;
    }

    v335;
    goto LABEL_147;
  }

  v1019 = 0;
  v1017 = 0u;
  v1018 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1017, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v884 = v975;
  memcpy(v975, v249, v3);
  v885 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v1017, v884, v2, v885, 6uLL, v886, v887, v888, v973))
  {
    _ss9CodingKey_pWOb_0(&v1017, &v1014);
LABEL_140:
    v323 = v1015;
    v324 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    v325 = (*(v324 + 8))(v323, v324);
    goto LABEL_141;
  }

  v1019 = 0;
  v1017 = 0u;
  v1018 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1017, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v1018 + 1) = v2;
  v948 = __swift_allocate_boxed_opaque_existential_0Tm(&v1017);
  memcpy(v948, v249, v3);
  Mirror.init(reflecting:)(&v1017, &v1014);
  v949 = v1014._object;
  v950 = v1016;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v249, &v1014, &v1020, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v950;
  v949;
LABEL_150:
  v343 = v1020;
  v344 = (v1020._object >> 56) & 0xF;
  if ((v1020._object & 0x2000000000000000) == 0)
  {
    v344 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v344 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
  {
    if ((v1020._object & 0x2000000000000000) != 0 && (v345 = specialized _SmallString.init(_:appending:)(v1020._countAndFlagsBits, v1020._object, 0x202CuLL, 0xE200000000000000), (v347 & 1) == 0))
    {
      v363 = v345;
      v364 = v346;
      0xE200000000000000;
      v1020._object;
      v1020._countAndFlagsBits = v363;
      v1020._object = v364;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v348, v349, v350, v351, v352, v353, v354, v355);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v1020._countAndFlagsBits = 8236;
    v1020._object = 0xE200000000000000;
    v343._object;
  }

  v365 = v1008;
  (v1013)(2, v225, AssociatedConformanceWitness);
  v1015 = v2;
  v366 = __swift_allocate_boxed_opaque_existential_0Tm(&v1014);
  memcpy(v366, v365, v3);
  v367 = v1015;
  v368 = __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
  v369 = swift_getDynamicType(v368, v367, 1);
  LODWORD(v367) = swift_isOptionalType(v369);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
  if (v367)
  {
    memcpy(v123, v365, v3);
    v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1014, v123, v2, v370, 7uLL, v371, v372, v373, v973);
    goto LABEL_163;
  }

  v389 = v1000;
  memcpy(v1000, v365, v3);
  if (swift_dynamicCast(&v1014, v389, v2, &type metadata for String, 6uLL, v390, v391, v392, v973))
  {
    v393 = v1014._object;
    String.write(_:)(v1014);
    v393;
    goto LABEL_173;
  }

  v407 = v992;
  memcpy(v992, v365, v3);
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v1017, v407, v2, v408, 6uLL, v409, v410, v411, v973))
  {
    _ss9CodingKey_pWOb_0(&v1017, &v1014);
    v412 = v1015;
    v413 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    (*(v413 + 8))(&v1020, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v412, v413);
LABEL_170:
    __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
    goto LABEL_173;
  }

  v1019 = 0;
  v1017 = 0u;
  v1018 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1017, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v846 = v984;
  memcpy(v984, v365, v3);
  v847 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v1017, v846, v2, v847, 6uLL, v848, v849, v850, v973))
  {
    _ss9CodingKey_pWOb_0(&v1017, &v1014);
    v851 = v1015;
    v852 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    v376 = (*(v852 + 8))(v851, v852);
LABEL_164:
    v386 = v377;
    v387 = v1020;
    v388 = (v1020._object >> 56) & 0xF;
    if ((v1020._object & 0x2000000000000000) == 0)
    {
      v388 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v388 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v376, v377, v378, v379, v380, v381, v382, v383, v384, v385);
    }

    else
    {
      v1020._countAndFlagsBits = v376;
      v1020._object = v377;
      v386 = v387._object;
    }

    v386;
    goto LABEL_170;
  }

  v1019 = 0;
  v1017 = 0u;
  v1018 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1017, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v889 = v976;
  memcpy(v976, v365, v3);
  v890 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v1017, v889, v2, v890, 6uLL, v891, v892, v893, v973))
  {
    _ss9CodingKey_pWOb_0(&v1017, &v1014);
LABEL_163:
    v374 = v1015;
    v375 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    v376 = (*(v375 + 8))(v374, v375);
    goto LABEL_164;
  }

  v1019 = 0;
  v1017 = 0u;
  v1018 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1017, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v1018 + 1) = v2;
  v951 = __swift_allocate_boxed_opaque_existential_0Tm(&v1017);
  memcpy(v951, v365, v3);
  Mirror.init(reflecting:)(&v1017, &v1014);
  v952 = v1014._object;
  v953 = v365;
  v954 = v1016;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v953, &v1014, &v1020, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v954;
  v952;
LABEL_173:
  v394 = v1020;
  v395 = (v1020._object >> 56) & 0xF;
  if ((v1020._object & 0x2000000000000000) == 0)
  {
    v395 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v395 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
  {
    if ((v1020._object & 0x2000000000000000) != 0 && (v396 = specialized _SmallString.init(_:appending:)(v1020._countAndFlagsBits, v1020._object, 0x202CuLL, 0xE200000000000000), (v398 & 1) == 0))
    {
      v414 = v396;
      v415 = v397;
      0xE200000000000000;
      v1020._object;
      v1020._countAndFlagsBits = v414;
      v1020._object = v415;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v399, v400, v401, v402, v403, v404, v405, v406);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v1020._countAndFlagsBits = 8236;
    v1020._object = 0xE200000000000000;
    v394._object;
  }

  v416 = v1009;
  (v1013)(3, v225, AssociatedConformanceWitness);
  v1015 = v2;
  v417 = __swift_allocate_boxed_opaque_existential_0Tm(&v1014);
  memcpy(v417, v416, v3);
  v418 = v1015;
  v419 = __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
  v420 = swift_getDynamicType(v419, v418, 1);
  LODWORD(v418) = swift_isOptionalType(v420);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
  if (v418)
  {
    memcpy(v123, v416, v3);
    v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1014, v123, v2, v421, 7uLL, v422, v423, v424, v973);
    v425 = v1015;
    v426 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    v427 = (*(v426 + 8))(v425, v426);
    v437 = v428;
    v438 = v1020;
    v439 = (v1020._object >> 56) & 0xF;
    if ((v1020._object & 0x2000000000000000) == 0)
    {
      v439 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v439 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v427, v428, v429, v430, v431, v432, v433, v434, v435, v436);
    }

    else
    {
      v1020._countAndFlagsBits = v427;
      v1020._object = v428;
      v437 = v438._object;
    }

    v440 = v437;
LABEL_191:
    v440;
LABEL_192:
    __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
  }

  else
  {
    v441 = v1001;
    memcpy(v1001, v416, v3);
    if (swift_dynamicCast(&v1014, v441, v2, &type metadata for String, 6uLL, v442, v443, v444, v973))
    {
      v445 = v1014._object;
      String.write(_:)(v1014);
      v445;
    }

    else
    {
      v459 = v993;
      memcpy(v993, v416, v3);
      v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
      if (swift_dynamicCast(&v1017, v459, v2, v460, 6uLL, v461, v462, v463, v973))
      {
        _ss9CodingKey_pWOb_0(&v1017, &v1014);
        v464 = v1015;
        v465 = v1016;
        __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
        (*(v465 + 8))(&v1020, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v464, v465);
        goto LABEL_192;
      }

      v1019 = 0;
      v1017 = 0u;
      v1018 = 0u;
      outlined destroy of _HasContiguousBytes?(&v1017, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v853 = v985;
      memcpy(v985, v416, v3);
      v854 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v1017, v853, v2, v854, 6uLL, v855, v856, v857, v973) || (v1019 = 0, v1017 = 0u, v1018 = 0u, outlined destroy of _HasContiguousBytes?(&v1017, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR), v894 = v977, memcpy(v977, v416, v3), v895 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR), swift_dynamicCast(&v1017, v894, v2, v895, 6uLL, v896, v897, v898, v973)))
      {
        _ss9CodingKey_pWOb_0(&v1017, &v1014);
        v899 = v1015;
        v900 = v1016;
        __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
        v901 = (*(v900 + 8))(v899, v900);
        v903 = v902;
        static String.+= infix(_:_:)(&v1020, v901, v902, v904, v905, v906, v907, v908, v909, v910, v911);
        v440 = v903;
        goto LABEL_191;
      }

      v1019 = 0;
      v1017 = 0u;
      v1018 = 0u;
      outlined destroy of _HasContiguousBytes?(&v1017, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v1018 + 1) = v2;
      v955 = __swift_allocate_boxed_opaque_existential_0Tm(&v1017);
      memcpy(v955, v416, v3);
      Mirror.init(reflecting:)(&v1017, &v1014);
      v956 = v1014._object;
      v957 = v416;
      v958 = v1016;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v957, &v1014, &v1020, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v958;
      v956;
    }
  }

  v446 = v1020;
  v447 = (v1020._object >> 56) & 0xF;
  if ((v1020._object & 0x2000000000000000) == 0)
  {
    v447 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v447 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
  {
    if ((v1020._object & 0x2000000000000000) != 0 && (v448 = specialized _SmallString.init(_:appending:)(v1020._countAndFlagsBits, v1020._object, 0x202CuLL, 0xE200000000000000), (v450 & 1) == 0))
    {
      v466 = v448;
      v467 = v449;
      0xE200000000000000;
      v1020._object;
      v1020._countAndFlagsBits = v466;
      v1020._object = v467;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v451, v452, v453, v454, v455, v456, v457, v458);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v1020._countAndFlagsBits = 8236;
    v1020._object = 0xE200000000000000;
    v446._object;
  }

  v468 = v1010;
  (v1013)(4, v225, AssociatedConformanceWitness);
  v1015 = v2;
  v469 = __swift_allocate_boxed_opaque_existential_0Tm(&v1014);
  memcpy(v469, v468, v3);
  v470 = v1015;
  v471 = __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
  v472 = swift_getDynamicType(v471, v470, 1);
  LODWORD(v470) = swift_isOptionalType(v472);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
  if (v470)
  {
    memcpy(v123, v468, v3);
    v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1014, v123, v2, v473, 7uLL, v474, v475, v476, v973);
    v477 = v1015;
    v478 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    v479 = (*(v478 + 8))(v477, v478);
    v489 = v480;
    v490 = v1020;
    v491 = (v1020._object >> 56) & 0xF;
    if ((v1020._object & 0x2000000000000000) == 0)
    {
      v491 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v491 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v479, v480, v481, v482, v483, v484, v485, v486, v487, v488);
    }

    else
    {
      v1020._countAndFlagsBits = v479;
      v1020._object = v480;
      v489 = v490._object;
    }

    v492 = v489;
LABEL_213:
    v492;
LABEL_214:
    __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
  }

  else
  {
    v501 = v1002;
    memcpy(v1002, v468, v3);
    if (swift_dynamicCast(&v1014, v501, v2, &type metadata for String, 6uLL, v502, v503, v504, v973))
    {
      v505 = v1014._object;
      String.write(_:)(v1014);
      v505;
    }

    else
    {
      v811 = v994;
      memcpy(v994, v468, v3);
      v812 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
      if (swift_dynamicCast(&v1017, v811, v2, v812, 6uLL, v813, v814, v815, v973))
      {
        _ss9CodingKey_pWOb_0(&v1017, &v1014);
        v816 = v1015;
        v817 = v1016;
        __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
        (*(v817 + 8))(&v1020, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v816, v817);
        goto LABEL_214;
      }

      v1019 = 0;
      v1017 = 0u;
      v1018 = 0u;
      outlined destroy of _HasContiguousBytes?(&v1017, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v858 = v986;
      memcpy(v986, v468, v3);
      v859 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v1017, v858, v2, v859, 6uLL, v860, v861, v862, v973) || (v1019 = 0, v1017 = 0u, v1018 = 0u, outlined destroy of _HasContiguousBytes?(&v1017, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR), v912 = v978, memcpy(v978, v468, v3), v913 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR), swift_dynamicCast(&v1017, v912, v2, v913, 6uLL, v914, v915, v916, v973)))
      {
        _ss9CodingKey_pWOb_0(&v1017, &v1014);
        v917 = v1015;
        v918 = v1016;
        __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
        v919 = (*(v918 + 8))(v917, v918);
        v921 = v920;
        static String.+= infix(_:_:)(&v1020, v919, v920, v922, v923, v924, v925, v926, v927, v928, v929);
        v492 = v921;
        goto LABEL_213;
      }

      v1019 = 0;
      v1017 = 0u;
      v1018 = 0u;
      outlined destroy of _HasContiguousBytes?(&v1017, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v1018 + 1) = v2;
      v959 = __swift_allocate_boxed_opaque_existential_0Tm(&v1017);
      memcpy(v959, v468, v3);
      Mirror.init(reflecting:)(&v1017, &v1014);
      v960 = v1014._object;
      v961 = v468;
      v962 = v1016;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v961, &v1014, &v1020, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v962;
      v960;
    }
  }

  v506 = v1020._object;
  v507 = (v1020._object >> 56) & 0xF;
  if ((v1020._object & 0x2000000000000000) == 0)
  {
    v507 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v508 = v1006;
  if (v507 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v493, v494, v495, v496, v497, v498, v499, v500);
    v506 = 0xE200000000000000;
  }

  else
  {
    v1020._countAndFlagsBits = 8236;
    v1020._object = 0xE200000000000000;
  }

  v506;
  (v1013)(5, v225, AssociatedConformanceWitness);
  v1015 = v2;
  v509 = __swift_allocate_boxed_opaque_existential_0Tm(&v1014);
  memcpy(v509, v508, v3);
  v510 = v1015;
  v511 = __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
  v512 = swift_getDynamicType(v511, v510, 1);
  LODWORD(v510) = swift_isOptionalType(v512);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
  if (v510)
  {
    memcpy(v123, v508, v3);
    v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1014, v123, v2, v513, 7uLL, v514, v515, v516, v973);
    goto LABEL_224;
  }

  v538 = v1003;
  memcpy(v1003, v508, v3);
  if (swift_dynamicCast(&v1014, v538, v2, &type metadata for String, 6uLL, v539, v540, v541, v973))
  {
    v542 = v1014._object;
    String.write(_:)(v1014);
    v542;
    goto LABEL_229;
  }

  v818 = v995;
  memcpy(v995, v508, v3);
  v819 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v1017, v818, v2, v819, 6uLL, v820, v821, v822, v973))
  {
    _ss9CodingKey_pWOb_0(&v1017, &v1014);
    v823 = v1015;
    v824 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    (*(v824 + 8))(&v1020, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v823, v824);
    goto LABEL_226;
  }

  v1019 = 0;
  v1017 = 0u;
  v1018 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1017, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v863 = v987;
  memcpy(v987, v508, v3);
  v864 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v1017, v863, v2, v864, 6uLL, v865, v866, v867, v973))
  {
    _ss9CodingKey_pWOb_0(&v1017, &v1014);
    v868 = v1015;
    v869 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    v519 = (*(v869 + 8))(v868, v869);
LABEL_225:
    v529 = v520;
    static String.+= infix(_:_:)(&v1020, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528);
    v529;
LABEL_226:
    __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
    goto LABEL_229;
  }

  v1019 = 0;
  v1017 = 0u;
  v1018 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1017, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v930 = v979;
  memcpy(v979, v508, v3);
  v931 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v1017, v930, v2, v931, 6uLL, v932, v933, v934, v973))
  {
    _ss9CodingKey_pWOb_0(&v1017, &v1014);
LABEL_224:
    v517 = v1015;
    v518 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    v519 = (*(v518 + 8))(v517, v518);
    goto LABEL_225;
  }

  v1019 = 0;
  v1017 = 0u;
  v1018 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1017, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v1018 + 1) = v2;
  v963 = __swift_allocate_boxed_opaque_existential_0Tm(&v1017);
  memcpy(v963, v508, v3);
  Mirror.init(reflecting:)(&v1017, &v1014);
  v964 = v1014._object;
  v965 = v508;
  v966 = v1016;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v965, &v1014, &v1020, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v966;
  v964;
LABEL_229:
  v543 = v1011;
  v544 = v1020._object;
  v545 = (v1020._object >> 56) & 0xF;
  if ((v1020._object & 0x2000000000000000) == 0)
  {
    v545 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v545 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v530, v531, v532, v533, v534, v535, v536, v537);
    v544 = 0xE200000000000000;
  }

  else
  {
    v1020._countAndFlagsBits = 8236;
    v1020._object = 0xE200000000000000;
  }

  v544;
  (v1013)(6, v225, AssociatedConformanceWitness);
  v1015 = v2;
  v546 = __swift_allocate_boxed_opaque_existential_0Tm(&v1014);
  memcpy(v546, v543, v3);
  v547 = v1015;
  v548 = __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
  v549 = swift_getDynamicType(v548, v547, 1);
  LODWORD(v547) = swift_isOptionalType(v549);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
  if (v547)
  {
    memcpy(v123, v543, v3);
    v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1014, v123, v2, v550, 7uLL, v551, v552, v553, v973);
    goto LABEL_236;
  }

  v575 = v1004;
  memcpy(v1004, v543, v3);
  if (swift_dynamicCast(&v1014, v575, v2, &type metadata for String, 6uLL, v576, v577, v578, v973))
  {
    v579 = v1014._object;
    String.write(_:)(v1014);
    v579;
    goto LABEL_241;
  }

  v825 = v996;
  memcpy(v996, v543, v3);
  v826 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v1017, v825, v2, v826, 6uLL, v827, v828, v829, v973))
  {
    _ss9CodingKey_pWOb_0(&v1017, &v1014);
    v830 = v1015;
    v831 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    (*(v831 + 8))(&v1020, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v830, v831);
    goto LABEL_238;
  }

  v1019 = 0;
  v1017 = 0u;
  v1018 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1017, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v870 = v988;
  memcpy(v988, v543, v3);
  v871 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v1017, v870, v2, v871, 6uLL, v872, v873, v874, v973))
  {
    _ss9CodingKey_pWOb_0(&v1017, &v1014);
    v875 = v1015;
    v876 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    v556 = (*(v876 + 8))(v875, v876);
LABEL_237:
    v566 = v557;
    static String.+= infix(_:_:)(&v1020, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565);
    v566;
LABEL_238:
    __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
    goto LABEL_241;
  }

  v1019 = 0;
  v1017 = 0u;
  v1018 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1017, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v935 = v980;
  memcpy(v980, v543, v3);
  v936 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v1017, v935, v2, v936, 6uLL, v937, v938, v939, v973))
  {
    _ss9CodingKey_pWOb_0(&v1017, &v1014);
LABEL_236:
    v554 = v1015;
    v555 = v1016;
    __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
    v556 = (*(v555 + 8))(v554, v555);
    goto LABEL_237;
  }

  v1019 = 0;
  v1017 = 0u;
  v1018 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1017, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v1018 + 1) = v2;
  v967 = __swift_allocate_boxed_opaque_existential_0Tm(&v1017);
  memcpy(v967, v543, v3);
  Mirror.init(reflecting:)(&v1017, &v1014);
  v968 = v1014._object;
  v969 = v1016;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v543, &v1014, &v1020, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v969;
  v968;
LABEL_241:
  v580 = v1012;
  v581 = v1020._object;
  v582 = (v1020._object >> 56) & 0xF;
  if ((v1020._object & 0x2000000000000000) == 0)
  {
    v582 = v1020._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v582 || (v1020._countAndFlagsBits & ~v1020._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v567, v568, v569, v570, v571, v572, v573, v574);
    v581 = 0xE200000000000000;
  }

  else
  {
    v1020._countAndFlagsBits = 8236;
    v1020._object = 0xE200000000000000;
  }

  v581;
  (v1013)(7, v225, AssociatedConformanceWitness);
  v1015 = v2;
  v583 = __swift_allocate_boxed_opaque_existential_0Tm(&v1014);
  memcpy(v583, v580, v3);
  v584 = v1015;
  v585 = __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
  v586 = swift_getDynamicType(v585, v584, 1);
  LODWORD(v584) = swift_isOptionalType(v586);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
  if (v584)
  {
    memcpy(v123, v580, v3);
    v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1014, v123, v2, v587, 7uLL, v588, v589, v590, v973);
    goto LABEL_248;
  }

  v612 = v1005;
  memcpy(v1005, v580, v3);
  if (swift_dynamicCast(&v1014, v612, v2, &type metadata for String, 6uLL, v613, v614, v615, v973))
  {
    v616 = v1014._object;
    String.write(_:)(v1014);
    v616;
  }

  else
  {
    v832 = v997;
    memcpy(v997, v580, v3);
    v833 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v1017, v832, v2, v833, 6uLL, v834, v835, v836, v973))
    {
      _ss9CodingKey_pWOb_0(&v1017, &v1014);
      v837 = v1015;
      v838 = v1016;
      __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
      (*(v838 + 8))(&v1020, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v837, v838);
    }

    else
    {
      v1019 = 0;
      v1017 = 0u;
      v1018 = 0u;
      outlined destroy of _HasContiguousBytes?(&v1017, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v877 = v989;
      memcpy(v989, v580, v3);
      v878 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v1017, v877, v2, v878, 6uLL, v879, v880, v881, v973))
      {
        _ss9CodingKey_pWOb_0(&v1017, &v1014);
        v882 = v1015;
        v883 = v1016;
        __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
        v593 = (*(v883 + 8))(v882, v883);
      }

      else
      {
        v1019 = 0;
        v1017 = 0u;
        v1018 = 0u;
        outlined destroy of _HasContiguousBytes?(&v1017, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
        v940 = v981;
        memcpy(v981, v580, v3);
        v941 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
        if (!swift_dynamicCast(&v1017, v940, v2, v941, 6uLL, v942, v943, v944, v973))
        {
          v1019 = 0;
          v1017 = 0u;
          v1018 = 0u;
          outlined destroy of _HasContiguousBytes?(&v1017, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
          *(&v1018 + 1) = v2;
          v970 = __swift_allocate_boxed_opaque_existential_0Tm(&v1017);
          memcpy(v970, v580, v3);
          Mirror.init(reflecting:)(&v1017, &v1014);
          v971 = v1014._object;
          v972 = v1016;
          _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v580, &v1014, &v1020, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
          v972;
          v971;
          goto LABEL_253;
        }

        _ss9CodingKey_pWOb_0(&v1017, &v1014);
LABEL_248:
        v591 = v1015;
        v592 = v1016;
        __swift_project_boxed_opaque_existential_0Tm(&v1014, v1015);
        v593 = (*(v592 + 8))(v591, v592);
      }

      v603 = v594;
      static String.+= infix(_:_:)(&v1020, v593, v594, v595, v596, v597, v598, v599, v600, v601, v602);
      v603;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v1014._countAndFlagsBits);
  }

LABEL_253:
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v604, v605, v606, v607, v608, v609, v610, v611);
  0xE200000000000000;
  v617 = v1013;
  (v1013)(8, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v618, v619, v620, v621, v622, v623, v624, v625);
  0xE200000000000000;
  v617(9, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v626, v627, v628, v629, v630, v631, v632, v633);
  0xE200000000000000;
  v617(10, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v634, v635, v636, v637, v638, v639, v640, v641);
  0xE200000000000000;
  v617(11, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v642, v643, v644, v645, v646, v647, v648, v649);
  0xE200000000000000;
  v617(12, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v650, v651, v652, v653, v654, v655, v656, v657);
  0xE200000000000000;
  v617(13, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v658, v659, v660, v661, v662, v663, v664, v665);
  0xE200000000000000;
  v617(14, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v666, v667, v668, v669, v670, v671, v672, v673);
  0xE200000000000000;
  v617(15, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v674, v675, v676, v677, v678, v679, v680, v681);
  0xE200000000000000;
  v617(16, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v682, v683, v684, v685, v686, v687, v688, v689);
  0xE200000000000000;
  v617(17, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v690, v691, v692, v693, v694, v695, v696, v697);
  0xE200000000000000;
  v617(18, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v698, v699, v700, v701, v702, v703, v704, v705);
  0xE200000000000000;
  v617(19, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v706, v707, v708, v709, v710, v711, v712, v713);
  0xE200000000000000;
  v617(20, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v714, v715, v716, v717, v718, v719, v720, v721);
  0xE200000000000000;
  v617(21, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v722, v723, v724, v725, v726, v727, v728, v729);
  0xE200000000000000;
  v617(22, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v730, v731, v732, v733, v734, v735, v736, v737);
  0xE200000000000000;
  v617(23, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v738, v739, v740, v741, v742, v743, v744, v745);
  0xE200000000000000;
  v617(24, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v746, v747, v748, v749, v750, v751, v752, v753);
  0xE200000000000000;
  v617(25, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v754, v755, v756, v757, v758, v759, v760, v761);
  0xE200000000000000;
  v617(26, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v762, v763, v764, v765, v766, v767, v768, v769);
  0xE200000000000000;
  v617(27, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v770, v771, v772, v773, v774, v775, v776, v777);
  0xE200000000000000;
  v617(28, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v778, v779, v780, v781, v782, v783, v784, v785);
  0xE200000000000000;
  v617(29, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v786, v787, v788, v789, v790, v791, v792, v793);
  0xE200000000000000;
  v617(30, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x202CuLL, 0xE200000000000000, v794, v795, v796, v797, v798, v799, v800, v801);
  0xE200000000000000;
  v617(31, v225, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v123, &v1020, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1020, 0x29uLL, 0xE100000000000000, v802, v803, v804, v805, v806, v807, v808, v809);
  0xE100000000000000;
  return v1020._countAndFlagsBits;
}

uint64_t SIMD32<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a4;
  v38 = a6;
  v40 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v20 = v19;
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v34 = v20;
  v35 = a8;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v32 = a7;
  v33 = v23;
  v39 = a3;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v25 = 0;
  v26 = *(v24 + 56);
  do
  {
    v27 = swift_checkMetadataState(0, v33);
    v26(v25, v27, v24);
    (*(*(v37 + 16) + 72))(v15, v39, *(v38 + 8));
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v34, AssociatedConformanceWitness);
  }

  while (v25 != 32);
  v29 = type metadata accessor for SIMD32(0, v39, v32, v28);
  return (*(*(v29 - 8) + 8))(v40, v29);
}

{
  v40 = a6;
  v42 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v37 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v20 = v19;
  v39 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v38 = a8;
  v36 = v20;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v32 = a7;
  v41 = a3;
  v35 = v23;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v25 = 0;
  v33 = *(v24 + 56);
  v34 = v24;
  do
  {
    v26 = swift_checkMetadataState(0, v35);
    v27 = v37;
    v33(v25, v26, v34);
    (*(a4 + 80))(v27, v41, v40);
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v36, AssociatedConformanceWitness);
  }

  while (v25 != 32);
  v29 = type metadata accessor for SIMD32(0, v41, v32, v28);
  return (*(*(v29 - 8) + 8))(v42, v29);
}

uint64_t key path getter for SIMD64.subscript(_:) : <A>SIMD64<A>A(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= 0x40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  v10 = swift_checkMetadataState(0, v7);
  return v9(v3, v10, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD64.subscript(_:) : <A>SIMD64<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v18 - v6;
  v9 = *v8;
  memcpy(&v18 - v6, v10, v11);
  if (v9 >= 0x40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v15 = *(AssociatedConformanceWitness + 64);
  v16 = swift_checkMetadataState(0, v13);
  return v15(v7, v9, v16, AssociatedConformanceWitness);
}

uint64_t (*SIMD64.subscript.modify(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x99F5uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 8);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0x99F5uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x99F5uLL);
    v11 = swift_coroFrameAlloc(v10, 0x99F5uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 0x40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t SIMD64.init(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, const void *a15, const void *a16, const void *a17, const void *a18, const void *a19, const void *a20, const void *a21, const void *a22, const void *a23, const void *a24, const void *a25, const void *a26, const void *a27, const void *a28, const void *a29, const void *a30, const void *a31, const void *a32, const void *a33, const void *a34, const void *a35, const void *a36, const void *a37, const void *a38, const void *a39, const void *a40, const void *a41, const void *a42, const void *a43, const void *a44, const void *a45, const void *a46, const void *a47, const void *a48, const void *a49, const void *a50, const void *a51, const void *a52, const void *a53, const void *a54, const void *a55, const void *a56, const void *a57, const void *a58, const void *a59, const void *a60, const void *a61, const void *a62, const void *a63)
{
  v90 = a8;
  v88 = a7;
  v86 = a6;
  v84 = a5;
  v82 = a4;
  v80 = a3;
  v140 = a63;
  v141 = a64;
  v138 = a61;
  v139 = a62;
  v136 = a59;
  v137 = a60;
  v135 = a58;
  v132 = a56;
  v133 = a57;
  v130 = a54;
  v131 = a55;
  v128 = a52;
  v129 = a53;
  v126 = a50;
  v127 = a51;
  v124 = a48;
  v125 = a49;
  v123 = a47;
  v68 = *(*(a65 - 1) + 8);
  v121 = a45;
  v122 = a46;
  v120 = a44;
  v119 = a43;
  v118 = a42;
  v117 = a41;
  v116 = a40;
  v115 = a39;
  v114 = a38;
  v113 = a37;
  v112 = a36;
  v111 = a35;
  v110 = a34;
  v109 = a33;
  v108 = a32;
  v107 = a31;
  v106 = a30;
  v105 = a29;
  v104 = a28;
  v103 = a27;
  v102 = a26;
  v101 = a25;
  v100 = a24;
  v99 = a23;
  v98 = a22;
  v97 = a21;
  v96 = a20;
  v95 = a19;
  v94 = a18;
  v93 = a17;
  v92 = a16;
  v91 = a15;
  v89 = a14;
  v87 = a13;
  v85 = a12;
  v83 = a11;
  v81 = a10;
  v69 = MEMORY[0x1EEE9AC00](a1, a2);
  v134 = &v79 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = &v79 - v71;
  swift_getAssociatedTypeWitness(0, a66, a65, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v74 = v73;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a66, a65, v73, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v74, AssociatedConformanceWitness);
  memcpy(v72, a1, v68);
  v76 = *(AssociatedConformanceWitness + 64);
  v76(v72, 0, v74, AssociatedConformanceWitness);
  memcpy(v72, a2, v68);
  v76(v72, 1, v74, AssociatedConformanceWitness);
  memcpy(v72, v80, v68);
  v76(v72, 2, v74, AssociatedConformanceWitness);
  memcpy(v72, v82, v68);
  v76(v72, 3, v74, AssociatedConformanceWitness);
  memcpy(v72, v84, v68);
  v76(v72, 4, v74, AssociatedConformanceWitness);
  memcpy(v72, v86, v68);
  v76(v72, 5, v74, AssociatedConformanceWitness);
  memcpy(v72, v88, v68);
  v76(v72, 6, v74, AssociatedConformanceWitness);
  memcpy(v72, v90, v68);
  v76(v72, 7, v74, AssociatedConformanceWitness);
  memcpy(v72, a9, v68);
  v76(v72, 8, v74, AssociatedConformanceWitness);
  memcpy(v72, v81, v68);
  v76(v72, 9, v74, AssociatedConformanceWitness);
  memcpy(v72, v83, v68);
  v76(v72, 10, v74, AssociatedConformanceWitness);
  memcpy(v72, v85, v68);
  v76(v72, 11, v74, AssociatedConformanceWitness);
  memcpy(v72, v87, v68);
  v76(v72, 12, v74, AssociatedConformanceWitness);
  memcpy(v72, v89, v68);
  v76(v72, 13, v74, AssociatedConformanceWitness);
  memcpy(v72, v91, v68);
  v76(v72, 14, v74, AssociatedConformanceWitness);
  memcpy(v72, v92, v68);
  v76(v72, 15, v74, AssociatedConformanceWitness);
  memcpy(v72, v93, v68);
  v76(v72, 16, v74, AssociatedConformanceWitness);
  memcpy(v72, v94, v68);
  v76(v72, 17, v74, AssociatedConformanceWitness);
  memcpy(v72, v95, v68);
  v76(v72, 18, v74, AssociatedConformanceWitness);
  memcpy(v72, v96, v68);
  v76(v72, 19, v74, AssociatedConformanceWitness);
  memcpy(v72, v97, v68);
  v76(v72, 20, v74, AssociatedConformanceWitness);
  memcpy(v72, v98, v68);
  v76(v72, 21, v74, AssociatedConformanceWitness);
  memcpy(v72, v99, v68);
  v76(v72, 22, v74, AssociatedConformanceWitness);
  memcpy(v72, v100, v68);
  v76(v72, 23, v74, AssociatedConformanceWitness);
  memcpy(v72, v101, v68);
  v76(v72, 24, v74, AssociatedConformanceWitness);
  memcpy(v72, v102, v68);
  v76(v72, 25, v74, AssociatedConformanceWitness);
  memcpy(v72, v103, v68);
  v76(v72, 26, v74, AssociatedConformanceWitness);
  memcpy(v72, v104, v68);
  v76(v72, 27, v74, AssociatedConformanceWitness);
  memcpy(v72, v105, v68);
  v76(v72, 28, v74, AssociatedConformanceWitness);
  memcpy(v72, v106, v68);
  v76(v72, 29, v74, AssociatedConformanceWitness);
  memcpy(v72, v107, v68);
  v76(v72, 30, v74, AssociatedConformanceWitness);
  memcpy(v72, v108, v68);
  v76(v72, 31, v74, AssociatedConformanceWitness);
  memcpy(v72, v109, v68);
  v76(v72, 32, v74, AssociatedConformanceWitness);
  memcpy(v72, v110, v68);
  v76(v72, 33, v74, AssociatedConformanceWitness);
  memcpy(v72, v111, v68);
  v76(v72, 34, v74, AssociatedConformanceWitness);
  memcpy(v72, v112, v68);
  v76(v72, 35, v74, AssociatedConformanceWitness);
  memcpy(v72, v113, v68);
  v76(v72, 36, v74, AssociatedConformanceWitness);
  memcpy(v72, v114, v68);
  v76(v72, 37, v74, AssociatedConformanceWitness);
  memcpy(v72, v115, v68);
  v76(v72, 38, v74, AssociatedConformanceWitness);
  memcpy(v72, v116, v68);
  v76(v72, 39, v74, AssociatedConformanceWitness);
  memcpy(v72, v117, v68);
  v76(v72, 40, v74, AssociatedConformanceWitness);
  memcpy(v72, v118, v68);
  v76(v72, 41, v74, AssociatedConformanceWitness);
  memcpy(v72, v119, v68);
  v76(v72, 42, v74, AssociatedConformanceWitness);
  memcpy(v72, v120, v68);
  v76(v72, 43, v74, AssociatedConformanceWitness);
  memcpy(v72, v121, v68);
  v76(v72, 44, v74, AssociatedConformanceWitness);
  memcpy(v72, v122, v68);
  v76(v72, 45, v74, AssociatedConformanceWitness);
  memcpy(v72, v123, v68);
  v76(v72, 46, v74, AssociatedConformanceWitness);
  memcpy(v72, v124, v68);
  v76(v72, 47, v74, AssociatedConformanceWitness);
  memcpy(v72, v125, v68);
  v76(v72, 48, v74, AssociatedConformanceWitness);
  memcpy(v72, v126, v68);
  v76(v72, 49, v74, AssociatedConformanceWitness);
  memcpy(v72, v127, v68);
  v76(v72, 50, v74, AssociatedConformanceWitness);
  memcpy(v72, v128, v68);
  v76(v72, 51, v74, AssociatedConformanceWitness);
  memcpy(v72, v129, v68);
  v76(v72, 52, v74, AssociatedConformanceWitness);
  memcpy(v72, v130, v68);
  v76(v72, 53, v74, AssociatedConformanceWitness);
  memcpy(v72, v131, v68);
  v76(v72, 54, v74, AssociatedConformanceWitness);
  memcpy(v72, v132, v68);
  v76(v72, 55, v74, AssociatedConformanceWitness);
  memcpy(v72, v133, v68);
  v76(v72, 56, v74, AssociatedConformanceWitness);
  memcpy(v72, v135, v68);
  v76(v72, 57, v74, AssociatedConformanceWitness);
  memcpy(v72, v136, v68);
  v76(v72, 58, v74, AssociatedConformanceWitness);
  memcpy(v72, v137, v68);
  v76(v72, 59, v74, AssociatedConformanceWitness);
  memcpy(v72, v138, v68);
  v76(v72, 60, v74, AssociatedConformanceWitness);
  memcpy(v72, v139, v68);
  v76(v72, 61, v74, AssociatedConformanceWitness);
  memcpy(v72, v140, v68);
  v76(v72, 62, v74, AssociatedConformanceWitness);
  v77 = v134;
  memcpy(v134, v141, v68);
  return (v76)(v77, 63, v74, AssociatedConformanceWitness);
}

uint64_t SIMD64.init(lowHalf:highHalf:)(uint64_t a1, uint64_t a2, Class *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v9, AssociatedConformanceWitness);
  v12 = type metadata accessor for SIMD64(0, a3, a4, v11);
  specialized SIMD64.lowHalf.setter(a1, v12);
  v14 = type metadata accessor for SIMD32(0, a3, a4, v13);
  v16 = *(*(v14 - 8) + 8);
  (v16)((v14 - 8), a1, v14);
  specialized SIMD64.highHalf.setter(a2, v12);

  return v16(a2, v14);
}

uint64_t SIMD64.lowHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v9, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 48);
  v21 = v10;
  v22 = a3;
  v12(v10, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v14 = v13;
  v15 = swift_getAssociatedConformanceWitness(v8, v4, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v16 = 0;
  v17 = *(v15 + 56);
  do
  {
    v18 = swift_checkMetadataState(0, v14);
    v17(v16, v18, v15);
    result = (*(AssociatedConformanceWitness + 64))(v7, v16++, v21, AssociatedConformanceWitness);
  }

  while (v16 != 32);
  return result;
}

void (*SIMD64.lowHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x596EuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD32(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x596EuLL);
    v11 = swift_coroFrameAlloc(v10, 0x596EuLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD64.lowHalf.getter(a2, v12, v11);
  return SIMD64.lowHalf.modify;
}

uint64_t SIMD64.highHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v9, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 48);
  v21 = v10;
  v22 = a3;
  v12(v10, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v14 = v13;
  v15 = swift_getAssociatedConformanceWitness(v8, v4, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v16 = 0;
  v17 = *(v15 + 56);
  do
  {
    v18 = swift_checkMetadataState(0, v14);
    v17(v16 + 32, v18, v15);
    result = (*(AssociatedConformanceWitness + 64))(v7, v16++, v21, AssociatedConformanceWitness);
  }

  while (v16 != 32);
  return result;
}

void (*SIMD64.highHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xE372uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD32(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0xE372uLL);
    v11 = swift_coroFrameAlloc(v10, 0xE372uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD64.highHalf.getter(a2, v12, v11);
  return SIMD64.highHalf.modify;
}

uint64_t SIMD64.evenHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v9, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 48);
  v21 = v10;
  v22 = a3;
  v12(v10, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v20 = v13;
  v14 = swift_getAssociatedConformanceWitness(v8, v4, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v15 = 0;
  v16 = 0;
  v17 = *(v14 + 56);
  do
  {
    v18 = swift_checkMetadataState(0, v20);
    v17(v15, v18, v14);
    result = (*(AssociatedConformanceWitness + 64))(v7, v16, v21, AssociatedConformanceWitness);
    v15 += 2;
    ++v16;
  }

  while (v15 != 64);
  return result;
}

void (*SIMD64.evenHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x7C79uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD32(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x7C79uLL);
    v11 = swift_coroFrameAlloc(v10, 0x7C79uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD64.evenHalf.getter(a2, v12, v11);
  return SIMD64.evenHalf.modify;
}

uint64_t SIMD64.oddHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v9, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 48);
  v21 = v10;
  v22 = a3;
  v12(v10, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v20 = v13;
  v14 = swift_getAssociatedConformanceWitness(v8, v4, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v15 = 0;
  v16 = *(v14 + 56);
  for (i = 1; i != 65; i += 2)
  {
    v18 = swift_checkMetadataState(0, v20);
    v16(i, v18, v14);
    result = (*(AssociatedConformanceWitness + 64))(v7, v15++, v21, AssociatedConformanceWitness);
  }

  return result;
}

void (*SIMD64.oddHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x2022uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD32(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x2022uLL);
    v11 = swift_coroFrameAlloc(v10, 0x2022uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD64.oddHalf.getter(a2, v12, v11);
  return SIMD64.oddHalf.modify;
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMD64<A>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 0x40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMD64<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 0x40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance SIMD64<A>(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0xE77FuLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 8);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0xE77FuLL);
    v8[4] = swift_coroFrameAlloc(v10, 0xE77FuLL);
    v11 = swift_coroFrameAlloc(v10, 0xE77FuLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 0x40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMD64<A>(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD64<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMD64<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD64<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMD64<A>@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD64<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMD64<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v23[1] = v23 - v7;
  v8 = 0;
  v9 = 1;
  v10 = v23 - v7;
  do
  {
    if (v9)
    {
      v11 = *(v27 + 24);
      swift_getAssociatedTypeWitness(255, v11, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
      v13 = v12;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
      v15 = *(AssociatedConformanceWitness + 56);
      v16 = swift_checkMetadataState(0, v13);
      v15(v8, v16, AssociatedConformanceWitness);
      v17 = v24;
      v15(v8, v16, AssociatedConformanceWitness);
      swift_getAssociatedTypeWitness(255, v11, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
      v19 = v18;
      v20 = swift_getAssociatedConformanceWitness(v11, v3, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
      v21 = swift_getAssociatedConformanceWitness(v20, v19, v3, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v9 = (*(*(v21 + 8) + 8))(v10, v17, v3);
    }

    else
    {
      v9 = 0;
    }

    ++v8;
  }

  while (v8 != 64);
  return v9 & 1;
}

uint64_t SIMD64<>.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a4;
  v38 = a6;
  v40 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v20 = v19;
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v34 = v20;
  v35 = a8;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v32 = a7;
  v33 = v23;
  v39 = a3;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v25 = 0;
  v26 = *(v24 + 56);
  do
  {
    v27 = swift_checkMetadataState(0, v33);
    v26(v25, v27, v24);
    (*(*(v37 + 8) + 96))(v15, v39, *(v38 + 8));
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v34, AssociatedConformanceWitness);
  }

  while (v25 != 64);
  v29 = type metadata accessor for SIMD64(0, v39, v32, v28);
  return (*(*(v29 - 8) + 8))(v40, v29);
}

uint64_t SIMD64<>.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a4;
  v38 = a6;
  v40 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v20 = v19;
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v34 = v20;
  v35 = a8;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v32 = a7;
  v33 = v23;
  v39 = a3;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v25 = 0;
  v26 = *(v24 + 56);
  do
  {
    v27 = swift_checkMetadataState(0, v33);
    v26(v25, v27, v24);
    (*(*(v37 + 8) + 104))(v15, v39, *(v38 + 8));
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v34, AssociatedConformanceWitness);
  }

  while (v25 != 64);
  v29 = type metadata accessor for SIMD64(0, v39, v32, v28);
  return (*(*(v29 - 8) + 8))(v40, v29);
}

uint64_t SIMD64<>.init<A>(_:rounding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, Class *a4@<X3>, uint64_t a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, int **a8@<X7>, uint64_t a9@<X8>)
{
  v48 = a5;
  v49 = a7;
  v46 = a2;
  v51 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v44 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v24, v23, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v26 = v25;
  v47 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a3, v25, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v28 = *(AssociatedConformanceWitness + 48);
  v45 = a9;
  v43 = v26;
  v28(v26, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a8, a4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v39 = a8;
  v50 = a4;
  v42 = v29;
  v30 = swift_getAssociatedConformanceWitness(a8, a4, v29, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v31 = 0;
  v40 = *(v30 + 56);
  v41 = v30;
  do
  {
    v32 = swift_checkMetadataState(0, v42);
    v40(v31, v32, v41);
    v33 = v49;
    v34 = v50;
    (*(*(v49 + 16) + 304))(v46, v50);
    (*(*(v48 + 8) + 80))(v19, v34, v33);
    (*(AssociatedConformanceWitness + 64))(v22, v31++, v43, AssociatedConformanceWitness);
  }

  while (v31 != 64);
  v36 = type metadata accessor for SIMD64(0, v50, v39, v35);
  return (*(*(v36 - 8) + 8))(v51, v36);
}

uint64_t SIMD64.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v909 = 0;
  v905 = a1;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1EEE9AC00](a1, a2);
  countAndFlagsBits = (&v895 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v895 - v8;
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v901 = &v895 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v904 = &v895 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v907 = &v895 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v897 = &v895 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v898 = &v895 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v900 = &v895 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v903 = &v895 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v895 - v33;
  v908 = v35;
  MEMORY[0x1EEE9AC00](v32, v36);
  v906 = &v895 - v37;
  v38 = _StringGuts.init(_initialCapacity:)(266);
  object = v38;
  v41 = v39;
  v916._countAndFlagsBits = v38;
  v916._object = v39;
  v42 = HIBYTE(v39) & 0xF;
  v43 = v38 & 0xFFFFFFFFFFFFLL;
  if ((v39 & 0x2000000000000000) != 0)
  {
    v44 = HIBYTE(v39) & 0xF;
  }

  else
  {
    v44 = v38 & 0xFFFFFFFFFFFFLL;
  }

  v899 = v9;
  if (v44 || (v38 & ~v39 & 0x2000000000000000) != 0)
  {
    if ((v39 & 0x2000000000000000) != 0 && v42 <= 8)
    {
      v45 = 8 * HIBYTE(v39);
      v46 = (-255 << (v45 & 0x38)) - 1;
      v47 = 83 << (v45 & 0x38);
      if (v42 >= 8)
      {
        v49 = v46 & v39 | v47;
        v48 = 8;
      }

      else
      {
        object = v46 & v38 | v47;
        if (v42 != 7)
        {
          object = ((-255 << ((v45 + 8) & 0x38)) - 1) & object | (73 << ((v45 + 8) & 0x38));
          if (v42 < 6)
          {
            object = ((-255 << ((v45 + 16) & 0x38)) - 1) & object | (77 << ((v45 + 16) & 0x38));
            if (v42 != 5)
            {
              object = ((-255 << ((v45 + 24) & 0x38)) - 1) & object | (68 << ((v45 + 24) & 0x38));
              if (v42 < 4)
              {
                object = ((0xFFFFFF0100000000 << (8 * v42)) - 1) & object | (0x3600000000 << (8 * v42));
                if (v42 != 3)
                {
                  object = ((-255 << ((v45 + 40) & 0x38)) - 1) & object | (52 << ((v45 + 40) & 0x38));
                  if (v42 < 2)
                  {
                    object = ((0xFF01000000000000 << (8 * v42)) - 1) & object | (0x3C000000000000 << (8 * v42));
                    v79 = v39;
                    goto LABEL_38;
                  }

                  v78 = 0;
                  v77 = v39;
LABEL_37:
                  v79 = ((-255 << v78) - 1) & v77 | (60 << v78);
LABEL_38:
                  v39;
                  0xE700000000000000;
                  v80 = 0xA000000000000000;
                  if (!(object & 0x8080808080808080 | v79 & 0x80808080808080))
                  {
                    v80 = 0xE000000000000000;
                  }

                  v916._countAndFlagsBits = object;
                  v916._object = ((v80 & 0xFF00000000000000 | (v42 << 56) | v79 & 0xFFFFFFFFFFFFFFLL) + 0x700000000000000);
                  goto LABEL_43;
                }

                v76 = 0;
                v75 = v39;
LABEL_36:
                v77 = ((-255 << v76) - 1) & v75 | (52 << v76);
                v78 = (v45 + 48) & 0x38;
                goto LABEL_37;
              }

              v74 = 0;
              v73 = v39;
LABEL_35:
              v75 = ((-255 << v74) - 1) & v73 | (54 << v74);
              v76 = (v45 + 40) & 0x38;
              goto LABEL_36;
            }

            v72 = 0;
            v71 = v39;
LABEL_34:
            v73 = ((-255 << v72) - 1) & v71 | (68 << v72);
            v74 = v45 & 0x38 ^ 0x20;
            goto LABEL_35;
          }

          v70 = 0;
          v69 = v39;
LABEL_33:
          v71 = ((-255 << v70) - 1) & v69 | (77 << v70);
          v72 = (v45 + 24) & 0x38;
          goto LABEL_34;
        }

        v48 = 0;
        v49 = v39;
      }

      v69 = ((-255 << v48) - 1) & v49 | (73 << v48);
      v70 = (v45 + 16) & 0x38;
      goto LABEL_33;
    }

    0xE700000000000000;
    if ((v41 & 0x1000000000000000) != 0)
    {
      goto LABEL_274;
    }

    v52 = __OFADD__(v44, 7);
    v53 = v44 + 7;
    if (!v52)
    {
      goto LABEL_13;
    }

LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  v916._countAndFlagsBits = 0x3C3436444D4953;
  v916._object = 0xE700000000000000;
  v68 = v39;
LABEL_42:
  v68;
  while (1)
  {
LABEL_43:
    TypeName = swift_getTypeName(v2, 0);
    if (v82 < 0)
    {
      goto LABEL_266;
    }

    v83 = TypeName;
    v84 = v82;
    v85 = _allASCII(_:)(TypeName, v82);
    v896 = countAndFlagsBits;
    if (!v85)
    {
      if (!v84)
      {
LABEL_92:
        countAndFlagsBits = 0;
        object = 0xE000000000000000;
        goto LABEL_128;
      }

      v41 = 0;
      v88 = (v83 + v84);
      v87 = 1;
      v89 = v83;
      v90 = v83;
      while (1)
      {
        v92 = *v90++;
        v91 = v92;
        if ((v92 & 0x80000000) == 0)
        {
          v93 = 1;
          goto LABEL_53;
        }

        if ((v91 + 11) <= 0xCCu)
        {
          LOBYTE(v910._countAndFlagsBits) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v91);
          goto LABEL_94;
        }

        if (v91 <= 0xDFu)
        {
          if (v90 == v88 || (*v90 & 0xC0) != 0x80)
          {
LABEL_256:
            v872 = 4;
            goto LABEL_257;
          }

          v87 = 0;
          v90 = v89 + 2;
          v93 = 2;
        }

        else
        {
          if (v91 == 224)
          {
            if (v90 == v88)
            {
              goto LABEL_256;
            }

            if (v89[1] - 192 < 0xFFFFFFE0)
            {
              goto LABEL_265;
            }

            goto LABEL_77;
          }

          if (v91 <= 0xECu)
          {
            goto LABEL_75;
          }

          if (v91 == 237)
          {
            if (v90 == v88)
            {
              goto LABEL_256;
            }

            v94 = v89[1];
            if (v94 > 0x9F || (v94 & 0xC0) != 0x80)
            {
              v872 = 1;
              goto LABEL_257;
            }

            goto LABEL_77;
          }

          if (v91 <= 0xEFu)
          {
LABEL_75:
            if (v90 == v88 || (v89[1] & 0xC0) != 0x80)
            {
              goto LABEL_256;
            }

LABEL_77:
            if (v89 + 2 == v88 || (v89[2] & 0xC0) != 0x80)
            {
              goto LABEL_256;
            }

            v87 = 0;
            v90 = v89 + 3;
            v93 = 3;
            goto LABEL_53;
          }

          if (v91 == 240)
          {
            if (v90 == v88)
            {
              goto LABEL_256;
            }

            if (v89[1] - 192 < 0xFFFFFFD0)
            {
              goto LABEL_265;
            }
          }

          else if (v91 <= 0xF3u)
          {
            if (v90 == v88 || (v89[1] & 0xC0) != 0x80)
            {
              goto LABEL_256;
            }
          }

          else
          {
            if (v90 == v88)
            {
              goto LABEL_256;
            }

            v95 = v89[1];
            if (v95 > 0x8F || (v95 & 0xC0) != 0x80)
            {
              v872 = 2;
LABEL_257:
              while (2)
              {
                LOBYTE(v910._countAndFlagsBits) = v872;
LABEL_94:
                swift_willThrowTypedImpl(&v910, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
                v96 = specialized Collection.subscript.getter(v41, v83, v84);
                v101 = findInvalidRange #1 (_:) in validateUTF8(_:)(v96, v97, v98, v99);
                v910._countAndFlagsBits = 0;
                v910._object = 0xE000000000000000;
                if (!__OFADD__(v84, 15))
                {
                  v43 = v100;
                  v41 = &v910;
                  _StringGuts.reserveCapacity(_:)(v84 + 15);
                  v102 = v101;
                  while (1)
                  {
                    v103 = specialized Collection.subscript.getter(v102, v83, v84);
                    v107 = v910._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
                    if ((v910._object & 0x2000000000000000) != 0)
                    {
                      v107 = (v910._object >> 56) & 0xF;
                    }

                    v52 = __OFADD__(v107, v84);
                    v108 = v107 + v84;
                    if (v52)
                    {
                      break;
                    }

                    v109 = v103;
                    if (__OFADD__(v108, 3))
                    {
                      goto LABEL_263;
                    }

                    v110 = v104;
                    countAndFlagsBits = v105;
                    v111 = v106;
                    _StringGuts.reserveCapacity(_:)(v108 + 3);
                    v112 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v109, v110, *&countAndFlagsBits, v111);
                    v114 = v113;
                    object = v910._object;
                    v41 = v910._object & 0xFFFFFFFFFFFFFFFLL;
                    v42 = (v910._object & 0xFFFFFFFFFFFFFFFLL) + 32;
                    specialized UnsafeMutablePointer.initialize(from:count:)(v112, v113, (v42 + (*((v910._object & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
                    v115 = *((object & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL;
                    v116 = v115 + v114;
                    if (__OFADD__(v115, v114))
                    {
                      goto LABEL_264;
                    }

                    v117 = v116 | 0x3000000000000000;
                    *((object & 0xFFFFFFFFFFFFFFFLL) + 0x18) = v116 | 0x3000000000000000;
                    *((object & 0xFFFFFFFFFFFFFFFLL) + 0x20 + (v116 & 0xFFFFFFFFFFFFLL)) = 0;
                    if ((*((object & 0xFFFFFFFFFFFFFFFLL) + 0x10) & 0x8000000000000000) != 0)
                    {
                      v118 = __StringStorage._breadcrumbsAddress.getter();
                      v119 = *v118;
                      *v118 = 0;
                      v119;
                      v117 = *((object & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                    }

                    v910._countAndFlagsBits = v117;
                    v120 = v909;
                    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v910._countAndFlagsBits);
                    v909 = v120;
                    v121 = specialized Collection.subscript.getter(v43, v83, v84);
                    v83 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v121, v122, v123, v124);
                    v84 = v125;
                    if ((validateUTF8(_:)(v83, v125) & 0x8000000000000000) == 0)
                    {
                      __StringStorage.appendInPlace(_:isASCII:)(v83, v84, 0);
                      countAndFlagsBits = *((object & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                      goto LABEL_128;
                    }

                    v43 = v126;
                    if (!v84)
                    {
                      object = v910._object;
                      countAndFlagsBits = v910._countAndFlagsBits;
                      goto LABEL_128;
                    }
                  }

                  __break(1u);
LABEL_263:
                  __break(1u);
LABEL_264:
                  __break(1u);
LABEL_265:
                  v872 = 3;
                  continue;
                }

                break;
              }

              __break(1u);
LABEL_288:
              if ((v41 & 0x1000000000000000) != 0)
              {
                object = _StringGuts._foreignConvertedToSmall()(object, v41);
                v41 = v891;
              }

              else
              {
                if ((object & 0x1000000000000000) != 0)
                {
                  v883 = ((v41 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v883 = _StringObject.sharedUTF8.getter(object, v41);
                  v43 = v894;
                }

                closure #1 in _StringGuts._convertedToSmall()(v883, v43, &v910, v51);
                if (v909)
                {
                  goto LABEL_311;
                }

                v41 = v910._object;
                object = v910._countAndFlagsBits;
              }

LABEL_22:
              v56 = 0x3C3436444D4953;
              v43 = 0xE700000000000000;
              0xE700000000000000;
              v57._rawBits = 1;
              v58._rawBits = 458753;
              v59._rawBits = _StringGuts.validateScalarRange(_:)(v57, v58, 0x3C3436444D4953uLL, 0xE700000000000000)._rawBits;
              if (v59._rawBits < 0x10000)
              {
                v59._rawBits |= 3;
              }

              if (v59._rawBits >> 16 || (v60._rawBits & 0xFFFFFFFFFFFF0000) != 0x70000)
              {
                v56 = specialized static String._copying(_:)(v59._rawBits, v60, 0x3C3436444D4953uLL, 0xE700000000000000);
                v43 = v62;
                0xE700000000000000;
              }

              if ((v43 & 0x2000000000000000) != 0)
              {
                v43;
              }

              else if ((v43 & 0x1000000000000000) != 0)
              {
                v56 = _StringGuts._foreignConvertedToSmall()(v56, v43);
                v893 = v892;
                v43;
                v43 = v893;
              }

              else
              {
                if ((v56 & 0x1000000000000000) != 0)
                {
                  v884 = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v885 = v56 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v884 = _StringObject.sharedUTF8.getter(v56, v43);
                }

                closure #1 in _StringGuts._convertedToSmall()(v884, v885, &v910, v61);
                if (v909)
                {
                  goto LABEL_311;
                }

                v43;
                v43 = v910._object;
                v56 = v910._countAndFlagsBits;
              }

              v63 = specialized _SmallString.init(_:appending:)(object, v41, v56, v43);
              if (v65)
              {
                goto LABEL_301;
              }

              v66 = v63;
              v67 = v64;
              swift_bridgeObjectRelease_n(0xE700000000000000, 2);
              v68 = v916._object;
              v916._countAndFlagsBits = v66;
              v916._object = v67;
              goto LABEL_42;
            }
          }

          if (v89 + 2 == v88 || (v89[2] & 0xC0) != 0x80 || v89 + 3 == v88 || (v89[3] & 0xC0) != 0x80)
          {
            goto LABEL_256;
          }

          v87 = 0;
          v90 = v89 + 4;
          v93 = 4;
        }

LABEL_53:
        v41 += v93;
        v89 = v90;
        if (v90 == v88)
        {
          goto LABEL_46;
        }
      }
    }

    v87 = 1;
LABEL_46:
    if (!v84)
    {
      goto LABEL_92;
    }

    if (v84 > 15)
    {
      object = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v83, v84, v84, v87 & 1);
      countAndFlagsBits = *(object + 24);
      goto LABEL_128;
    }

    v127 = v84 - 8;
    v128 = 8;
    if (v84 < 8)
    {
      v128 = v84;
    }

    if (v84 >= 4)
    {
      v130 = v128 & 0xC;
      v86.i32[0] = *v83;
      v131 = vmovl_u16(*&vmovl_u8(v86));
      v132.i64[0] = v131.u32[0];
      v132.i64[1] = v131.u32[1];
      v133.i64[0] = 255;
      v133.i64[1] = 255;
      v134 = vandq_s8(v132, v133);
      v132.i64[0] = v131.u32[2];
      v132.i64[1] = v131.u32[3];
      v135 = vshlq_u64(vandq_s8(v132, v133), xmmword_18071DBA0);
      v136.i32[1] = 0;
      v137 = vshlq_u64(v134, xmmword_18071DBB0);
      if (v130 != 4)
      {
        v136.i32[0] = *(v83 + 4);
        v138 = vmovl_u16(*&vmovl_u8(v136));
        v139.i64[0] = v138.u32[2];
        v139.i64[1] = v138.u32[3];
        v140 = vandq_s8(v139, v133);
        v139.i64[0] = v138.u32[0];
        v139.i64[1] = v138.u32[1];
        v135 = vorrq_s8(vshlq_u64(v140, xmmword_18071DBD0), v135);
        v137 = vorrq_s8(vshlq_u64(vandq_s8(v139, v133), xmmword_18071DBC0), v137);
      }

      v141 = vorrq_s8(v137, v135);
      countAndFlagsBits = vorr_s8(*v141.i8, *&vextq_s8(v141, v141, 8uLL));
      if (v128 == v130)
      {
        goto LABEL_120;
      }

      v129 = 8 * v130;
    }

    else
    {
      countAndFlagsBits = 0;
      v129 = 0;
      v130 = 0;
    }

    v142 = v128 - v130;
    v143 = (v83 + v130);
    do
    {
      v144 = *v143++;
      *&countAndFlagsBits |= v144 << (v129 & 0x38);
      v129 += 8;
      --v142;
    }

    while (v142);
LABEL_120:
    if (v84 < 9)
    {
      v145 = 0;
    }

    else
    {
      v145 = 0;
      v146 = 0;
      v147 = (v83 + 8);
      do
      {
        v148 = *v147++;
        v145 |= v148 << v146;
        v146 += 8;
        --v127;
      }

      while (v127);
    }

    v149 = 0xA000000000000000;
    if (((v145 | *&countAndFlagsBits) & 0x8080808080808080) == 0)
    {
      v149 = 0xE000000000000000;
    }

    object = v149 | (v84 << 56) | v145;
LABEL_128:
    v41 = v916._countAndFlagsBits;
    v9 = v916._object;
    v150 = (v916._object >> 56) & 0xF;
    v151 = v916._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v916._object & 0x2000000000000000) != 0)
    {
      v151 = (v916._object >> 56) & 0xF;
    }

    if (!v151 && (v916._countAndFlagsBits & ~v916._object & 0x2000000000000000) == 0)
    {
      break;
    }

    v43 = (object & 0x2000000000000000) == 0;
    v152 = HIBYTE(object) & 0xF;
    if ((v916._object & 0x2000000000000000) != 0)
    {
      if ((object & 0x2000000000000000) == 0)
      {
        v895 = HIBYTE(object) & 0xF;
        v42 = *&countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        v43 = 1;
LABEL_137:
        v152 = v42;
        goto LABEL_138;
      }

      v171 = v150 + v152;
      if (v150 + v152 < 0x10)
      {
        if (v152)
        {
          v820 = 0;
          v821 = 0;
          v822 = 8 * v150;
          do
          {
            v823 = object >> (v820 & 0x38);
            if (v821 < 8)
            {
              v823 = *&countAndFlagsBits >> v820;
            }

            v824 = (v823 << (v822 & 0x38)) | ((-255 << (v822 & 0x38)) - 1) & v9;
            v825 = (v823 << v822) | ((-255 << v822) - 1) & v41;
            if (v150 <= 7)
            {
              v41 = v825;
            }

            else
            {
              v9 = v824;
            }

            ++v150;
            v822 += 8;
            v820 += 8;
            ++v821;
          }

          while (8 * v152 != v820);
        }

        object;
        v826 = 0xA000000000000000;
        if (!(v41 & 0x8080808080808080 | v9 & 0x80808080808080))
        {
          v826 = 0xE000000000000000;
        }

        v827 = (v826 & 0xFF00000000000000 | (v171 << 56) | v9 & 0xFFFFFFFFFFFFFFLL);
        v916._object;
        v916._countAndFlagsBits = v41;
        v916._object = v827;
        goto LABEL_178;
      }

      v43 = 0;
      v42 = *&countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v895 = HIBYTE(object) & 0xF;
    }

    else
    {
      v42 = *&countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v895 = HIBYTE(object) & 0xF;
      if ((object & 0x2000000000000000) == 0)
      {
        goto LABEL_137;
      }
    }

LABEL_138:
    v902 = v152;
    if ((object & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(object, 2);
      v873._rawBits = 1;
      v874._rawBits = (v152 << 16) | 1;
      v875._rawBits = _StringGuts.validateScalarRange(_:)(v873, v874, *&countAndFlagsBits, object)._rawBits;
      if (v875._rawBits < 0x10000)
      {
        v875._rawBits |= 3;
      }

      v152 = String.UTF8View.distance(from:to:)(v875, v876);
      object;
      v41 = v916._countAndFlagsBits;
      v9 = v916._object;
      if ((v916._object & 0x1000000000000000) != 0)
      {
LABEL_271:
        v877 = String.UTF8View._foreignCount()();
        v154 = v877 + v152;
        if (!__OFADD__(v877, v152))
        {
          goto LABEL_144;
        }

        goto LABEL_273;
      }
    }

    else
    {
      object;
      if ((v9 & 0x1000000000000000) != 0)
      {
        goto LABEL_271;
      }
    }

    if ((v9 & 0x2000000000000000) != 0)
    {
      v153 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v153 = v41 & 0xFFFFFFFFFFFFLL;
    }

    v154 = v153 + v152;
    if (!__OFADD__(v153, v152))
    {
LABEL_144:
      if ((v41 & ~v9 & 0x2000000000000000) != 0 && (isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v9 & 0xFFFFFFFFFFFFFFFLL), v41 = v916._countAndFlagsBits, v9 = v916._object, isUniquelyReferenced_nonNull_native))
      {
        v156 = _StringGuts.nativeUnusedCapacity.getter(v916._countAndFlagsBits, v916._object);
        if (v157)
        {
          goto LABEL_301;
        }

        if (v154 > 15 || (v9 & 0x2000000000000000) == 0 && v156 >= v152)
        {
LABEL_150:
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v154, v152);
          if ((object & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(*&countAndFlagsBits, object, 0, v902);
          }

          else
          {
            if (!v43)
            {
              v162 = (object >> 62) & 1;
              v910._countAndFlagsBits = countAndFlagsBits;
              v910._object = (object & 0xFFFFFFFFFFFFFFLL);
              v160 = &v910;
              v161 = v895;
              goto LABEL_176;
            }

            if ((*&countAndFlagsBits & 0x1000000000000000) == 0)
            {
              v886 = _StringObject.sharedUTF8.getter(*&countAndFlagsBits, object);
              if (v887 >= v42)
              {
                goto LABEL_312;
              }

LABEL_266:
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v158 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
            for (i = v42; ; i = v887)
            {
              v160 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v42, v158, i);
              v162 = *&countAndFlagsBits >> 63;
LABEL_176:
              closure #1 in _StringGuts.append(_:)(v160, v161, &v916, v162);
              v178 = v909;
              if (!v909)
              {
                break;
              }

LABEL_310:
              v178;
              __break(1u);
LABEL_311:
              v909;
              __break(1u);
LABEL_312:
              v158 = v886;
            }
          }

          swift_bridgeObjectRelease_n(object, 2);
          goto LABEL_178;
        }
      }

      else if (v154 > 15)
      {
        goto LABEL_150;
      }

      v50 = &v917;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v42 = v902;
        goto LABEL_158;
      }

LABEL_277:
      v42 = *(v50 - 32);
      if ((v9 & 0x1000000000000000) != 0)
      {
        v41 = _StringGuts._foreignConvertedToSmall()(v41, v9);
        v9 = v888;
      }

      else
      {
        if ((v41 & 0x1000000000000000) != 0)
        {
          v879 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v880 = v41 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v879 = _StringObject.sharedUTF8.getter(v41, v9);
        }

        closure #1 in _StringGuts._convertedToSmall()(v879, v880, &v910, v51);
        v178 = v909;
        if (v909)
        {
          goto LABEL_310;
        }

        v9 = v910._object;
        v41 = v910._countAndFlagsBits;
      }

LABEL_158:
      object;
      v163._rawBits = 1;
      v164._rawBits = (v42 << 16) | 1;
      v165._rawBits = _StringGuts.validateScalarRange(_:)(v163, v164, *&countAndFlagsBits, object)._rawBits;
      if (v165._rawBits < 0x10000)
      {
        v165._rawBits |= 3;
      }

      if (v165._rawBits >> 16)
      {
        v168 = 0;
      }

      else
      {
        v168 = v166._rawBits >> 16 == v42;
      }

      if (v168)
      {
        v170 = object;
      }

      else
      {
        countAndFlagsBits = specialized static String._copying(_:)(v165._rawBits, v166, *&countAndFlagsBits, object);
        v170 = v169;
        object;
      }

      if ((v170 & 0x2000000000000000) != 0)
      {
        v170;
      }

      else if ((v170 & 0x1000000000000000) != 0)
      {
        countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(*&countAndFlagsBits, v170);
        v890 = v889;
        v170;
        v170 = v890;
      }

      else
      {
        if ((*&countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v881 = ((v170 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v882 = *&countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v881 = _StringObject.sharedUTF8.getter(*&countAndFlagsBits, v170);
        }

        closure #1 in _StringGuts._convertedToSmall()(v881, v882, &v910, v167);
        v178 = v909;
        if (v909)
        {
          goto LABEL_310;
        }

        v170;
        v170 = v910._object;
        countAndFlagsBits = v910._countAndFlagsBits;
      }

      v172 = specialized _SmallString.init(_:appending:)(v41, v9, *&countAndFlagsBits, v170);
      if ((v174 & 1) == 0)
      {
        v175 = v172;
        v176 = v173;
        swift_bridgeObjectRelease_n(object, 2);
        v177 = v916._object;
        v916._countAndFlagsBits = v175;
        v916._object = v176;
        goto LABEL_174;
      }

LABEL_301:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_273:
    __break(1u);
LABEL_274:
    v878 = String.UTF8View._foreignCount()();
    v53 = v878 + 7;
    if (__OFADD__(v878, 7))
    {
      goto LABEL_276;
    }

LABEL_13:
    if ((object & ~v41 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v41 & 0xFFFFFFFFFFFFFFFLL))
    {
      v54 = _StringGuts.nativeUnusedCapacity.getter(object, v41);
      if (v55)
      {
        goto LABEL_301;
      }

      if (v53 <= 15 && ((v41 & 0x2000000000000000) != 0 || v54 <= 6))
      {
LABEL_21:
        if ((v41 & 0x2000000000000000) == 0)
        {
          goto LABEL_288;
        }

        goto LABEL_22;
      }
    }

    else if (v53 <= 15)
    {
      goto LABEL_21;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v53, 7);
    v910 = xmmword_18071DFF0;
    closure #1 in _StringGuts.append(_:)(&v910, 7uLL, &v916, 1);
    swift_bridgeObjectRelease_n(0xE700000000000000, 2);
  }

  v916._countAndFlagsBits = countAndFlagsBits;
  v916._object = object;
  v177 = v9;
LABEL_174:
  v177;
LABEL_178:
  v179 = v905;
  v180 = v916._object;
  v181 = (v916._object >> 56) & 0xF;
  if ((v916._object & 0x2000000000000000) == 0)
  {
    v181 = v916._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v181 || (v916._countAndFlagsBits & ~v916._object & 0x2000000000000000) != 0)
  {
    if ((v916._object & 0x2000000000000000) != 0 && (v182 = specialized _SmallString.init(_:appending:)(v916._countAndFlagsBits, v916._object, 0x283EuLL, 0xE200000000000000), (v184 & 1) == 0))
    {
      v193 = v182;
      v194 = v183;
      0xE200000000000000;
      v916._object;
      v916._countAndFlagsBits = v193;
      v916._object = v194;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10302, 0xE200000000000000, 0, 2, v185, v186, v187, v188, v189, v190, v191, v192);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v916._countAndFlagsBits = 10302;
    v916._object = 0xE200000000000000;
    v180;
  }

  v195 = *(v179 + 24);
  swift_getAssociatedTypeWitness(255, v195, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v197 = v196;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v195, v2, v196, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v199 = *(AssociatedConformanceWitness + 56);
  v200 = swift_checkMetadataState(0, v197);
  v201 = v906;
  v199(0, v200, AssociatedConformanceWitness);
  v911 = v2;
  v202 = __swift_allocate_boxed_opaque_existential_0Tm(&v910);
  v203 = v908;
  memcpy(v202, v201, v908);
  v204 = v911;
  v205 = __swift_project_boxed_opaque_existential_0Tm(&v910, v911);
  DynamicType = swift_getDynamicType(v205, v204, 1);
  LOBYTE(v204) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v910._countAndFlagsBits);
  if (v204)
  {
    memcpy(v34, v201, v203);
    v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v910, v34, v2, v207, 7uLL, v208, v209, v210, v895);
    v211 = v911;
    v212 = v912;
    __swift_project_boxed_opaque_existential_0Tm(&v910, v911);
    v213 = (*(v212 + 8))(v211, v212);
    v223 = v214;
    v224 = v916._object;
    v225 = (v916._object >> 56) & 0xF;
    if ((v916._object & 0x2000000000000000) == 0)
    {
      v225 = v916._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v225 || (v916._countAndFlagsBits & ~v916._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v213, v214, v215, v216, v217, v218, v219, v220, v221, v222);
    }

    else
    {
      v916._countAndFlagsBits = v213;
      v916._object = v214;
      v223 = v224;
    }

    v226 = v223;
LABEL_194:
    v226;
LABEL_195:
    __swift_destroy_boxed_opaque_existential_1Tm(&v910._countAndFlagsBits);
  }

  else
  {
    v227 = v903;
    memcpy(v903, v201, v203);
    if (swift_dynamicCast(&v910, v227, v2, &type metadata for String, 6uLL, v228, v229, v230, v895))
    {
      v239 = v910._object;
      v240 = v916._object;
      v241 = (v916._object >> 56) & 0xF;
      if ((v916._object & 0x2000000000000000) == 0)
      {
        v241 = v916._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v241 || (v916._countAndFlagsBits & ~v916._object & 0x2000000000000000) != 0)
      {
        _StringGuts.append(_:)(v910._countAndFlagsBits, v910._object, v231, v232, v233, v234, v235, v236, v237, v238);
        v242 = v239;
      }

      else
      {
        v916 = v910;
        v242 = v240;
      }

      v242;
    }

    else
    {
      v256 = v201;
      v257 = v900;
      memcpy(v900, v256, v203);
      v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
      if (swift_dynamicCast(&v913, v257, v2, v258, 6uLL, v259, v260, v261, v895))
      {
        _ss9CodingKey_pWOb_0(&v913, &v910);
        v262 = v911;
        v263 = v912;
        __swift_project_boxed_opaque_existential_0Tm(&v910, v911);
        (*(v263 + 8))(&v916, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v262, v263);
        goto LABEL_195;
      }

      v915 = 0;
      v913 = 0u;
      v914 = 0u;
      outlined destroy of _HasContiguousBytes?(&v913, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v810 = v898;
      memcpy(v898, v256, v203);
      v811 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v913, v810, v2, v811, 6uLL, v812, v813, v814, v895) || (v915 = 0, v913 = 0u, v914 = 0u, outlined destroy of _HasContiguousBytes?(&v913, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR), v828 = v897, memcpy(v897, v256, v203), v829 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR), swift_dynamicCast(&v913, v828, v2, v829, 6uLL, v830, v831, v832, v895)))
      {
        _ss9CodingKey_pWOb_0(&v913, &v910);
        v833 = v911;
        v834 = v912;
        __swift_project_boxed_opaque_existential_0Tm(&v910, v911);
        v835 = (*(v834 + 8))(v833, v834);
        v837 = v836;
        static String.+= infix(_:_:)(&v916, v835, v836, v838, v839, v840, v841, v842, v843, v844, v845);
        v226 = v837;
        goto LABEL_194;
      }

      v915 = 0;
      v913 = 0u;
      v914 = 0u;
      outlined destroy of _HasContiguousBytes?(&v913, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v914 + 1) = v2;
      v864 = __swift_allocate_boxed_opaque_existential_0Tm(&v913);
      memcpy(v864, v256, v203);
      Mirror.init(reflecting:)(&v913, &v910);
      v865 = v256;
      v866 = v910._object;
      v867 = v912;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v865, &v910, &v916, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v867;
      v866;
    }
  }

  v243 = v916._object;
  v244 = (v916._object >> 56) & 0xF;
  if ((v916._object & 0x2000000000000000) == 0)
  {
    v244 = v916._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v244 || (v916._countAndFlagsBits & ~v916._object & 0x2000000000000000) != 0)
  {
    if ((v916._object & 0x2000000000000000) != 0 && (v245 = specialized _SmallString.init(_:appending:)(v916._countAndFlagsBits, v916._object, 0x202CuLL, 0xE200000000000000), (v247 & 1) == 0))
    {
      v264 = v245;
      v265 = v246;
      0xE200000000000000;
      v916._object;
      v916._countAndFlagsBits = v264;
      v916._object = v265;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v248, v249, v250, v251, v252, v253, v254, v255);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v916._countAndFlagsBits = 8236;
    v916._object = 0xE200000000000000;
    v243;
  }

  v266 = v907;
  v199(1, v200, AssociatedConformanceWitness);
  v911 = v2;
  v267 = __swift_allocate_boxed_opaque_existential_0Tm(&v910);
  v268 = v908;
  memcpy(v267, v266, v908);
  v269 = v911;
  v270 = __swift_project_boxed_opaque_existential_0Tm(&v910, v911);
  v271 = swift_getDynamicType(v270, v269, 1);
  LOBYTE(v269) = swift_isOptionalType(v271);
  __swift_destroy_boxed_opaque_existential_1Tm(&v910._countAndFlagsBits);
  if (v269)
  {
    memcpy(v34, v266, v268);
    v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v910, v34, v2, v272, 7uLL, v273, v274, v275, v895);
    v276 = v911;
    v277 = v912;
    __swift_project_boxed_opaque_existential_0Tm(&v910, v911);
    v278 = (*(v277 + 8))(v276, v277);
    v288 = v279;
    v289 = v916._object;
    v290 = (v916._object >> 56) & 0xF;
    if ((v916._object & 0x2000000000000000) == 0)
    {
      v290 = v916._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v290 || (v916._countAndFlagsBits & ~v916._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v278, v279, v280, v281, v282, v283, v284, v285, v286, v287);
    }

    else
    {
      v916._countAndFlagsBits = v278;
      v916._object = v279;
      v288 = v289;
    }

    v291 = v288;
LABEL_221:
    v291;
LABEL_222:
    __swift_destroy_boxed_opaque_existential_1Tm(&v910._countAndFlagsBits);
  }

  else
  {
    v300 = v904;
    memcpy(v904, v266, v268);
    if (swift_dynamicCast(&v910, v300, v2, &type metadata for String, 6uLL, v301, v302, v303, v895))
    {
      v304 = v910._object;
      String.write(_:)(v910);
      v304;
    }

    else
    {
      v802 = v266;
      v803 = v901;
      memcpy(v901, v802, v268);
      v804 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
      if (swift_dynamicCast(&v913, v803, v2, v804, 6uLL, v805, v806, v807, v895))
      {
        _ss9CodingKey_pWOb_0(&v913, &v910);
        v808 = v911;
        v809 = v912;
        __swift_project_boxed_opaque_existential_0Tm(&v910, v911);
        (*(v809 + 8))(&v916, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v808, v809);
        goto LABEL_222;
      }

      v915 = 0;
      v913 = 0u;
      v914 = 0u;
      outlined destroy of _HasContiguousBytes?(&v913, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v815 = v899;
      memcpy(v899, v802, v268);
      v816 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v913, v815, v2, v816, 6uLL, v817, v818, v819, v895) || (v915 = 0, v913 = 0u, v914 = 0u, outlined destroy of _HasContiguousBytes?(&v913, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR), v846 = v896, memcpy(v896, v802, v268), v847 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR), swift_dynamicCast(&v913, v846, v2, v847, 6uLL, v848, v849, v850, v895)))
      {
        _ss9CodingKey_pWOb_0(&v913, &v910);
        v851 = v911;
        v852 = v912;
        __swift_project_boxed_opaque_existential_0Tm(&v910, v911);
        v853 = (*(v852 + 8))(v851, v852);
        v855 = v854;
        static String.+= infix(_:_:)(&v916, v853, v854, v856, v857, v858, v859, v860, v861, v862, v863);
        v291 = v855;
        goto LABEL_221;
      }

      v915 = 0;
      v913 = 0u;
      v914 = 0u;
      outlined destroy of _HasContiguousBytes?(&v913, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v914 + 1) = v2;
      v868 = __swift_allocate_boxed_opaque_existential_0Tm(&v913);
      memcpy(v868, v802, v268);
      Mirror.init(reflecting:)(&v913, &v910);
      v869 = v802;
      v870 = v910._object;
      v871 = v912;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v869, &v910, &v916, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v871;
      v870;
    }
  }

  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v292, v293, v294, v295, v296, v297, v298, v299);
  0xE200000000000000;
  v199(2, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v305, v306, v307, v308, v309, v310, v311, v312);
  0xE200000000000000;
  v199(3, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v313, v314, v315, v316, v317, v318, v319, v320);
  0xE200000000000000;
  v199(4, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v321, v322, v323, v324, v325, v326, v327, v328);
  0xE200000000000000;
  v199(5, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v329, v330, v331, v332, v333, v334, v335, v336);
  0xE200000000000000;
  v199(6, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v337, v338, v339, v340, v341, v342, v343, v344);
  0xE200000000000000;
  v199(7, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v345, v346, v347, v348, v349, v350, v351, v352);
  0xE200000000000000;
  v199(8, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v353, v354, v355, v356, v357, v358, v359, v360);
  0xE200000000000000;
  v199(9, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v361, v362, v363, v364, v365, v366, v367, v368);
  0xE200000000000000;
  v199(10, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v369, v370, v371, v372, v373, v374, v375, v376);
  0xE200000000000000;
  v199(11, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v377, v378, v379, v380, v381, v382, v383, v384);
  0xE200000000000000;
  v199(12, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v385, v386, v387, v388, v389, v390, v391, v392);
  0xE200000000000000;
  v199(13, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v393, v394, v395, v396, v397, v398, v399, v400);
  0xE200000000000000;
  v199(14, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v401, v402, v403, v404, v405, v406, v407, v408);
  0xE200000000000000;
  v199(15, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v409, v410, v411, v412, v413, v414, v415, v416);
  0xE200000000000000;
  v199(16, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v417, v418, v419, v420, v421, v422, v423, v424);
  0xE200000000000000;
  v199(17, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v425, v426, v427, v428, v429, v430, v431, v432);
  0xE200000000000000;
  v199(18, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v433, v434, v435, v436, v437, v438, v439, v440);
  0xE200000000000000;
  v199(19, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v441, v442, v443, v444, v445, v446, v447, v448);
  0xE200000000000000;
  v199(20, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v449, v450, v451, v452, v453, v454, v455, v456);
  0xE200000000000000;
  v199(21, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v457, v458, v459, v460, v461, v462, v463, v464);
  0xE200000000000000;
  v199(22, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v465, v466, v467, v468, v469, v470, v471, v472);
  0xE200000000000000;
  v199(23, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v473, v474, v475, v476, v477, v478, v479, v480);
  0xE200000000000000;
  v199(24, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v481, v482, v483, v484, v485, v486, v487, v488);
  0xE200000000000000;
  v199(25, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v489, v490, v491, v492, v493, v494, v495, v496);
  0xE200000000000000;
  v199(26, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v497, v498, v499, v500, v501, v502, v503, v504);
  0xE200000000000000;
  v199(27, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v505, v506, v507, v508, v509, v510, v511, v512);
  0xE200000000000000;
  v199(28, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v513, v514, v515, v516, v517, v518, v519, v520);
  0xE200000000000000;
  v199(29, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v521, v522, v523, v524, v525, v526, v527, v528);
  0xE200000000000000;
  v199(30, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v529, v530, v531, v532, v533, v534, v535, v536);
  0xE200000000000000;
  v199(31, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v537, v538, v539, v540, v541, v542, v543, v544);
  0xE200000000000000;
  v199(32, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v545, v546, v547, v548, v549, v550, v551, v552);
  0xE200000000000000;
  v199(33, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v553, v554, v555, v556, v557, v558, v559, v560);
  0xE200000000000000;
  v199(34, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v561, v562, v563, v564, v565, v566, v567, v568);
  0xE200000000000000;
  v199(35, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v569, v570, v571, v572, v573, v574, v575, v576);
  0xE200000000000000;
  v199(36, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v577, v578, v579, v580, v581, v582, v583, v584);
  0xE200000000000000;
  v199(37, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v585, v586, v587, v588, v589, v590, v591, v592);
  0xE200000000000000;
  v199(38, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v593, v594, v595, v596, v597, v598, v599, v600);
  0xE200000000000000;
  v199(39, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v601, v602, v603, v604, v605, v606, v607, v608);
  0xE200000000000000;
  v199(40, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v609, v610, v611, v612, v613, v614, v615, v616);
  0xE200000000000000;
  v199(41, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v617, v618, v619, v620, v621, v622, v623, v624);
  0xE200000000000000;
  v199(42, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v625, v626, v627, v628, v629, v630, v631, v632);
  0xE200000000000000;
  v199(43, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v633, v634, v635, v636, v637, v638, v639, v640);
  0xE200000000000000;
  v199(44, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v641, v642, v643, v644, v645, v646, v647, v648);
  0xE200000000000000;
  v199(45, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v649, v650, v651, v652, v653, v654, v655, v656);
  0xE200000000000000;
  v199(46, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v657, v658, v659, v660, v661, v662, v663, v664);
  0xE200000000000000;
  v199(47, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v665, v666, v667, v668, v669, v670, v671, v672);
  0xE200000000000000;
  v199(48, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v673, v674, v675, v676, v677, v678, v679, v680);
  0xE200000000000000;
  v199(49, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v681, v682, v683, v684, v685, v686, v687, v688);
  0xE200000000000000;
  v199(50, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v689, v690, v691, v692, v693, v694, v695, v696);
  0xE200000000000000;
  v199(51, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v697, v698, v699, v700, v701, v702, v703, v704);
  0xE200000000000000;
  v199(52, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v705, v706, v707, v708, v709, v710, v711, v712);
  0xE200000000000000;
  v199(53, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v713, v714, v715, v716, v717, v718, v719, v720);
  0xE200000000000000;
  v199(54, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v721, v722, v723, v724, v725, v726, v727, v728);
  0xE200000000000000;
  v199(55, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v729, v730, v731, v732, v733, v734, v735, v736);
  0xE200000000000000;
  v199(56, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v737, v738, v739, v740, v741, v742, v743, v744);
  0xE200000000000000;
  v199(57, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v745, v746, v747, v748, v749, v750, v751, v752);
  0xE200000000000000;
  v199(58, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v753, v754, v755, v756, v757, v758, v759, v760);
  0xE200000000000000;
  v199(59, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v761, v762, v763, v764, v765, v766, v767, v768);
  0xE200000000000000;
  v199(60, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v769, v770, v771, v772, v773, v774, v775, v776);
  0xE200000000000000;
  v199(61, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v777, v778, v779, v780, v781, v782, v783, v784);
  0xE200000000000000;
  v199(62, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x202CuLL, 0xE200000000000000, v785, v786, v787, v788, v789, v790, v791, v792);
  0xE200000000000000;
  v199(63, v200, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v34, &v916, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v916, 0x29uLL, 0xE100000000000000, v793, v794, v795, v796, v797, v798, v799, v800);
  0xE100000000000000;
  return v916._countAndFlagsBits;
}

uint64_t SIMD64<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a4;
  v38 = a6;
  v40 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v20 = v19;
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v34 = v20;
  v35 = a8;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v32 = a7;
  v33 = v23;
  v39 = a3;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v25 = 0;
  v26 = *(v24 + 56);
  do
  {
    v27 = swift_checkMetadataState(0, v33);
    v26(v25, v27, v24);
    (*(*(v37 + 16) + 72))(v15, v39, *(v38 + 8));
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v34, AssociatedConformanceWitness);
  }

  while (v25 != 64);
  v29 = type metadata accessor for SIMD64(0, v39, v32, v28);
  return (*(*(v29 - 8) + 8))(v40, v29);
}

{
  v40 = a6;
  v42 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v37 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v20 = v19;
  v39 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v38 = a8;
  v36 = v20;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v32 = a7;
  v41 = a3;
  v35 = v23;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v25 = 0;
  v33 = *(v24 + 56);
  v34 = v24;
  do
  {
    v26 = swift_checkMetadataState(0, v35);
    v27 = v37;
    v33(v25, v26, v34);
    (*(a4 + 80))(v27, v41, v40);
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v36, AssociatedConformanceWitness);
  }

  while (v25 != 64);
  v29 = type metadata accessor for SIMD64(0, v41, v32, v28);
  return (*(*(v29 - 8) + 8))(v42, v29);
}

uint64_t EnumeratedSequence.Iterator._base.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(a1 + 24), *(a1 + 16), a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, v4, v6);
}

uint64_t EnumeratedSequence.Iterator._base.setter(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  swift_getAssociatedTypeWitness(0, *(a2 + 24), *(a2 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

uint64_t key path getter for SIMD3.subscript(_:) : <A>SIMD3<A>A(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  v10 = swift_checkMetadataState(0, v7);
  return v9(v3, v10, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD3.subscript(_:) : <A>SIMD3<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v18 - v6;
  v9 = *v8;
  memcpy(&v18 - v6, v10, v11);
  if (v9 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v15 = *(AssociatedConformanceWitness + 64);
  v16 = swift_checkMetadataState(0, v13);
  return v15(v7, v9, v16, AssociatedConformanceWitness);
}

uint64_t (*SIMD3.subscript.modify(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0xC9DAuLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 8);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0xC9DAuLL);
    v8[4] = swift_coroFrameAlloc(v10, 0xC9DAuLL);
    v11 = swift_coroFrameAlloc(v10, 0xC9DAuLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

void SIMD2.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v6 = (*a1)[4];
  v5 = (*a1)[5];
  v7 = (*a1)[3];
  v8 = **a1;
  if (a2)
  {
    v9 = (*a1)[3];
  }

  else
  {
    v9 = (*a1)[4];
  }

  memcpy(v9, v5, (*a1)[2]);
  (*(v3 + 64))(v9, v8, v4, v3);
  free(v5);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t SIMD3.init(_:_:_:)(const void *a1, const void *a2, const void *a3, const char *a4, int **a5)
{
  v10 = *(*(a4 - 1) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  swift_getAssociatedTypeWitness(0, a5, v11, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v13, AssociatedConformanceWitness);
  memcpy(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v15 = *(AssociatedConformanceWitness + 64);
  v15(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 0, v13, AssociatedConformanceWitness);
  memcpy(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v15(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v13, AssociatedConformanceWitness);
  memcpy(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  return (v15)(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 2, v13, AssociatedConformanceWitness);
}

uint64_t (*SIMD3.x.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x8EC5uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(a2 + 16);
  v8 = *(*(v7 - 1) + 8);
  v5[1] = v8;
  if (swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc(v8, 0x8EC5uLL);
    v9 = swift_coroFrameAlloc(v8, 0x8EC5uLL);
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v6[3] = v9;
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v10, v7, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v6[4] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState(0, v12);
  v6[5] = v15;
  v14(0, v15, AssociatedConformanceWitness);
  return SIMD4.x.modify;
}

uint64_t (*SIMD3.y.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x7154uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(a2 + 16);
  v8 = *(*(v7 - 1) + 8);
  v5[1] = v8;
  if (swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc(v8, 0x7154uLL);
    v9 = swift_coroFrameAlloc(v8, 0x7154uLL);
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v6[3] = v9;
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v10, v7, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v6[4] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState(0, v12);
  v6[5] = v15;
  v14(1, v15, AssociatedConformanceWitness);
  return SIMD4.y.modify;
}

uint64_t SIMD2.x.getter(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for SIMDScalar, a2);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v8, &protocol requirements base descriptor for SIMDScalar, a3);
  v13 = *(AssociatedConformanceWitness + 56);
  v11 = swift_checkMetadataState(0, v9);

  return v13(a4, v11, AssociatedConformanceWitness);
}

uint64_t key path getter for SIMD2.x : <A>SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  v8 = *(a2 + a3 - 16);
  v9 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v9, v8, &protocol requirements base descriptor for SIMDScalar, a4);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v8, v10, &protocol requirements base descriptor for SIMDScalar, a5);
  v13 = *(AssociatedConformanceWitness + 56);
  v14 = swift_checkMetadataState(0, v11);
  return v13(a6, v14, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD2.x : <A>SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6, uint64_t a7)
{
  v10 = *(a3 + a4 - 16);
  v11 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v13 = &v22 - v12;
  memcpy(&v22 - v12, v14, v15);
  swift_getAssociatedTypeWitness(255, v11, v10, &protocol requirements base descriptor for SIMDScalar, a5);
  v17 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v10, v16, &protocol requirements base descriptor for SIMDScalar, a6);
  v19 = *(AssociatedConformanceWitness + 64);
  v20 = swift_checkMetadataState(0, v17);
  return v19(v13, a7, v20, AssociatedConformanceWitness);
}

uint64_t SIMD2.x.setter(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v9 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1, a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v11, v12, v10);
  v13 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v13, v9, &protocol requirements base descriptor for SIMDScalar, a3);
  v15 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v13, v9, v14, &protocol requirements base descriptor for SIMDScalar, a4);
  v17 = *(AssociatedConformanceWitness + 64);
  v18 = swift_checkMetadataState(0, v15);
  return v17(v11, a5, v18, AssociatedConformanceWitness);
}

void (*SIMD3.z.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x1296uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(a2 + 16);
  v8 = *(*(v7 - 1) + 8);
  v5[1] = v8;
  if (swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc(v8, 0x1296uLL);
    v9 = swift_coroFrameAlloc(v8, 0x1296uLL);
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v6[3] = v9;
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v10, v7, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v6[4] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState(0, v12);
  v6[5] = v15;
  v14(2, v15, AssociatedConformanceWitness);
  return SIMD3.z.modify;
}

void SIMD2.x.modify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v8 = *(*a1 + 16);
  v7 = *(*a1 + 24);
  memcpy(v8, v7, *(*a1 + 8));
  (*(v6 + 64))(v8, a3, v5, v6);
  free(v7);
  free(v8);

  free(v4);
}

Swift::Int SIMDMask.hashValue.getter(unsigned __int16 *a1, int *a2, uint64_t a3)
{
  v9 = 0u;
  v10 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  WitnessTable = swift_getWitnessTable(a2, a1, a3);
  SIMD.hash(into:)(&v6, a1, WitnessTable);
  return Hasher._finalize()();
}

uint64_t protocol witness for SIMDStorage.init() in conformance SIMD2<A>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for SIMDScalar, a3);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v7, &protocol requirements base descriptor for SIMDScalar, a4);
  return (*(AssociatedConformanceWitness + 48))(v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMD3<A>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMD3<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance SIMD3<A>(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x17EDuLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 8);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0x17EDuLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x17EDuLL);
    v11 = swift_coroFrameAlloc(v10, 0x17EDuLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMD3<A>(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD3<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SIMDMask<A>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int *a4)
{
  specialized Hasher.init(_seed:)(a1, v9);
  WitnessTable = swift_getWitnessTable(a4, a2, v6);
  SIMD.hash(into:)(v9, a2, WitnessTable);
  return Hasher._finalize()();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMD3<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD3<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMD3<A>@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD3<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMD3<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v23[1] = v23 - v7;
  v8 = 0;
  v9 = 1;
  v10 = v23 - v7;
  do
  {
    if (v9)
    {
      v11 = *(v27 + 24);
      swift_getAssociatedTypeWitness(255, v11, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
      v13 = v12;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
      v15 = *(AssociatedConformanceWitness + 56);
      v16 = swift_checkMetadataState(0, v13);
      v15(v8, v16, AssociatedConformanceWitness);
      v17 = v24;
      v15(v8, v16, AssociatedConformanceWitness);
      swift_getAssociatedTypeWitness(255, v11, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
      v19 = v18;
      v20 = swift_getAssociatedConformanceWitness(v11, v3, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
      v21 = swift_getAssociatedConformanceWitness(v20, v19, v3, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v9 = (*(*(v21 + 8) + 8))(v10, v17, v3);
    }

    else
    {
      v9 = 0;
    }

    ++v8;
  }

  while (v8 != 3);
  return v9 & 1;
}

uint64_t SIMD3<>.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, void (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v52 = a6;
  v53 = a4;
  v56 = a1;
  v49 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v46 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v17, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v20 = *(AssociatedConformanceWitness + 48);
  v48 = v18;
  v21 = AssociatedConformanceWitness;
  v20(v18);
  v47 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v23 = v22;
  v24 = a7;
  v25 = a3;
  v50 = a3;
  v54 = v23;
  v26 = swift_getAssociatedConformanceWitness(v24, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v55 = v26;
  v27 = *(v26 + 56);
  v28 = swift_checkMetadataState(0, v23);
  v27(0, v28, v26);
  v51 = *(v53 + 1);
  v29 = *(v51 + 96);
  v52 = *(v52 + 8);
  v53 = v29;
  v30 = v46;
  v45 = a2;
  (v29)(v14, v25);
  v31 = v21;
  v43 = *(v21 + 64);
  v44 = v21;
  v32 = v48;
  v43(v30, 0, v48, v31);
  v33 = swift_checkMetadataState(0, v54);
  v27(1, v33, v55);
  v34 = v45;
  v53(v14, v50, v52, v45, v51);
  v35 = v32;
  v36 = v43;
  v37 = v44;
  v43(v30, 1, v35, v44);
  v38 = swift_checkMetadataState(0, v54);
  v27(2, v38, v55);
  v39 = v50;
  v53(v14, v50, v52, v34, v51);
  v36(v30, 2, v48, v37);
  v41 = type metadata accessor for SIMD3(0, v39, v47, v40);
  return (*(*(v41 - 8) + 8))(v56, v41);
}

uint64_t SIMD3<>.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, void (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v52 = a6;
  v53 = a4;
  v56 = a1;
  v49 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v46 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v17, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v20 = *(AssociatedConformanceWitness + 48);
  v48 = v18;
  v21 = AssociatedConformanceWitness;
  v20(v18);
  v47 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v23 = v22;
  v24 = a7;
  v25 = a3;
  v50 = a3;
  v54 = v23;
  v26 = swift_getAssociatedConformanceWitness(v24, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v55 = v26;
  v27 = *(v26 + 56);
  v28 = swift_checkMetadataState(0, v23);
  v27(0, v28, v26);
  v51 = *(v53 + 1);
  v29 = *(v51 + 104);
  v52 = *(v52 + 8);
  v53 = v29;
  v30 = v46;
  v45 = a2;
  (v29)(v14, v25);
  v31 = v21;
  v43 = *(v21 + 64);
  v44 = v21;
  v32 = v48;
  v43(v30, 0, v48, v31);
  v33 = swift_checkMetadataState(0, v54);
  v27(1, v33, v55);
  v34 = v45;
  v53(v14, v50, v52, v45, v51);
  v35 = v32;
  v36 = v43;
  v37 = v44;
  v43(v30, 1, v35, v44);
  v38 = swift_checkMetadataState(0, v54);
  v27(2, v38, v55);
  v39 = v50;
  v53(v14, v50, v52, v34, v51);
  v36(v30, 2, v48, v37);
  v41 = type metadata accessor for SIMD3(0, v39, v47, v40);
  return (*(*(v41 - 8) + 8))(v56, v41);
}

uint64_t SIMD3<>.init<A>(_:rounding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, Class *a4@<X3>, uint64_t a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, int **a8@<X7>, uint64_t a9@<X8>)
{
  v67 = a7;
  v57 = a5;
  v65 = a2;
  v54 = a9;
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v66 = &v49 - v19;
  v53 = v20;
  MEMORY[0x1EEE9AC00](v18, v21);
  v50 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v24, v23, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v26 = v25;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a3, v25, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v63 = v26;
  v64 = AssociatedConformanceWitness;
  (*(AssociatedConformanceWitness + 48))(v26, AssociatedConformanceWitness);
  v51 = a8;
  swift_getAssociatedTypeWitness(255, a8, a4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v29 = v28;
  v30 = a4;
  v59 = v28;
  v31 = swift_getAssociatedConformanceWitness(a8, a4, v28, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v32 = *(v31 + 56);
  v61 = v31;
  v62 = v32;
  v33 = swift_checkMetadataState(0, v29);
  v49 = v16;
  v52 = a1;
  v32(0, v33, v31);
  v34 = v66;
  v35 = v67;
  v36 = *(v67 + 16);
  v58 = v36 + 304;
  v60 = *(v36 + 304);
  v60(v65, v30, v36);
  v37 = *(v57 + 8);
  v56 = *(v37 + 80);
  v57 = v37;
  v38 = v50;
  v56(v34, v30, v35);
  v55 = *(v64 + 64);
  (v55)(v38, 0, v63);
  v39 = swift_checkMetadataState(0, v59);
  v62(1, v39, v61);
  v40 = v66;
  v60(v65, v30, v36);
  v41 = v40;
  v42 = v53;
  (v56)(v41, v30, v67, v53, v57);
  v43 = v63;
  v55(v38, 1, v63, v64);
  v44 = swift_checkMetadataState(0, v59);
  v62(2, v44, v61);
  v45 = v66;
  v60(v65, v30, v36);
  (v56)(v45, v30, v67, v42, v57);
  v55(v38, 2, v43, v64);
  v47 = type metadata accessor for SIMD3(0, v30, v51, v46);
  return (*(*(v47 - 8) + 8))(v52, v47);
}

unint64_t SIMD3.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v423 = a1;
  v2 = *(a1 + 16);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  object = &v409 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v415 = &v409 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v418 = &v409 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v421 = &v409 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v409 - v17;
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v411 = &v409 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v414 = &v409 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v417 = &v409 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v420 = &v409 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v425 = &v409 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v410 = &v409 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v413 = &v409 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v416 = &v409 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v419 = &v409 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v427 = &v409 - v48;
  MEMORY[0x1EEE9AC00](v47, v49);
  v424 = &v409 - v50;
  v51 = _StringGuts.init(_initialCapacity:)(21);
  countAndFlagsBits = v51;
  v54 = v52;
  v434 = v51;
  v435 = v52;
  v55 = HIBYTE(v52) & 0xF;
  v56 = v51 & 0xFFFFFFFFFFFFLL;
  if ((v52 & 0x2000000000000000) != 0)
  {
    v57 = HIBYTE(v52) & 0xF;
  }

  else
  {
    v57 = v51 & 0xFFFFFFFFFFFFLL;
  }

  v426 = v18;
  v412 = &v409 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v57 && (v51 & ~v52 & 0x2000000000000000) == 0)
  {
    v52;
    v434 = 0x3C33444D4953;
    v435 = 0xE600000000000000;
    goto LABEL_46;
  }

  if ((v52 & 0x2000000000000000) != 0 && v55 <= 9)
  {
    v58 = 8 * HIBYTE(v52);
    v59 = (-255 << (v58 & 0x38)) - 1;
    v60 = 83 << (v58 & 0x38);
    v61 = v55 + 1;
    if (v55 >= 8)
    {
      v63 = v59 & v52 | v60;
      v62 = 8 * (v61 & 7);
    }

    else
    {
      countAndFlagsBits = v59 & v51 | v60;
      if (v55 != 7)
      {
        countAndFlagsBits = ((-255 << (8 * (v61 & 7u))) - 1) & countAndFlagsBits | (73 << (8 * (v61 & 7u)));
        if (v55 < 6)
        {
          countAndFlagsBits = ((-255 << ((v58 + 16) & 0x38)) - 1) & countAndFlagsBits | (77 << ((v58 + 16) & 0x38));
          if (v55 != 5)
          {
            countAndFlagsBits = ((-255 << ((v58 + 24) & 0x38)) - 1) & countAndFlagsBits | (68 << ((v58 + 24) & 0x38));
            if (v55 < 4)
            {
              countAndFlagsBits = ((0xFFFFFF0100000000 << (8 * v55)) - 1) & countAndFlagsBits | (0x3300000000 << (8 * v55));
              if (v55 != 3)
              {
                countAndFlagsBits = ((-255 << ((v58 + 40) & 0x38)) - 1) & countAndFlagsBits | (60 << ((v58 + 40) & 0x38));
                v76 = v52;
                goto LABEL_31;
              }

              v75 = 0;
              v74 = v52;
LABEL_30:
              v76 = ((-255 << v75) - 1) & v74 | (60 << v75);
LABEL_31:
              v52;
              0xE600000000000000;
              v77 = 0xA000000000000000;
              if (!(countAndFlagsBits & 0x8080808080808080 | v76 & 0x80808080808080))
              {
                v77 = 0xE000000000000000;
              }

              v434 = countAndFlagsBits;
              v435 = (v77 & 0xFF00000000000000 | (v55 << 56) | v76 & 0xFFFFFFFFFFFFFFLL) + 0x600000000000000;
              goto LABEL_46;
            }

            v73 = 0;
            v72 = v52;
LABEL_29:
            v74 = ((-255 << v73) - 1) & v72 | (51 << v73);
            v75 = (v58 + 40) & 0x38;
            goto LABEL_30;
          }

          v71 = 0;
          v70 = v52;
LABEL_28:
          v72 = ((-255 << v71) - 1) & v70 | (68 << v71);
          v73 = v58 & 0x38 ^ 0x20;
          goto LABEL_29;
        }

        v69 = 0;
        v68 = v52;
LABEL_27:
        v70 = ((-255 << v69) - 1) & v68 | (77 << v69);
        v71 = (v58 + 24) & 0x38;
        goto LABEL_28;
      }

      v62 = 0;
      v63 = v52;
    }

    v68 = ((-255 << v62) - 1) & v63 | (73 << v62);
    v69 = (v58 + 16) & 0x38;
    goto LABEL_27;
  }

  0xE600000000000000;
  if ((v54 & 0x1000000000000000) != 0)
  {
    v403 = String.UTF8View._foreignCount()();
    v55 = v403 + 6;
    if (!__OFADD__(v403, 6))
    {
      goto LABEL_13;
    }

LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  v55 = v57 + 6;
  if (__OFADD__(v57, 6))
  {
    goto LABEL_262;
  }

LABEL_13:
  if ((countAndFlagsBits & ~v54 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v54 & 0xFFFFFFFFFFFFFFFLL))
  {
    v65 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, v54);
    if (v66)
    {
LABEL_270:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v55 > 15)
    {
      goto LABEL_24;
    }

    if ((v54 & 0x2000000000000000) == 0)
    {
      if (v65 < 6)
      {
        goto LABEL_19;
      }

LABEL_24:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v55, 6);
      v428 = xmmword_18071E000;
      closure #1 in _StringGuts.append(_:)(&v428, 6uLL, &v434, 1);
      swift_bridgeObjectRelease_n(0xE600000000000000, 2);
      goto LABEL_46;
    }

LABEL_35:
    object = v54;
    goto LABEL_36;
  }

  if (v55 > 15)
  {
    goto LABEL_24;
  }

  if ((v54 & 0x2000000000000000) != 0)
  {
    goto LABEL_35;
  }

LABEL_19:
  if ((v54 & 0x1000000000000000) != 0)
  {
    countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, v54);
    object = v402;
  }

  else
  {
    if ((countAndFlagsBits & 0x1000000000000000) != 0)
    {
      v67 = ((v54 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v67 = _StringObject.sharedUTF8.getter(countAndFlagsBits, v54);
      v56 = v406;
    }

    closure #1 in _StringGuts._convertedToSmall()(v67, v56, &v428, v64);
    object = v428._object;
    countAndFlagsBits = v428._countAndFlagsBits;
  }

LABEL_36:
  v56 = 0x3C33444D4953;
  v55 = 0xE600000000000000;
  0xE600000000000000;
  v78._rawBits = 1;
  v79._rawBits = 393217;
  v80._rawBits = _StringGuts.validateScalarRange(_:)(v78, v79, 0x3C33444D4953uLL, 0xE600000000000000)._rawBits;
  if (v80._rawBits < 0x10000)
  {
    v80._rawBits |= 3;
  }

  if (v80._rawBits >> 16 || (v81._rawBits & 0xFFFFFFFFFFFF0000) != 0x60000)
  {
    v56 = specialized static String._copying(_:)(v80._rawBits, v81, 0x3C33444D4953uLL, 0xE600000000000000);
    v55 = v82;
    0xE600000000000000;
  }

  if ((v55 & 0x2000000000000000) == 0)
  {
    goto LABEL_264;
  }

  v55;
  while (2)
  {
    v83 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, object, v56, v55);
    if (v85)
    {
      goto LABEL_270;
    }

    v86 = v83;
    v56 = v84;
    v54;
    swift_bridgeObjectRelease_n(0xE600000000000000, 2);
    v434 = v86;
    v435 = v56;
LABEL_46:
    v422 = v2;
    TypeName = swift_getTypeName(v2, 0);
    if (v88 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    object = TypeName;
    countAndFlagsBits = v88;
    if (_allASCII(_:)(TypeName, v88))
    {
      v90 = 1;
LABEL_49:
      if (!countAndFlagsBits)
      {
LABEL_95:
        v92 = 0;
        v91 = 0xE000000000000000;
        goto LABEL_115;
      }

      if (countAndFlagsBits > 15)
      {
        v91 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(object, countAndFlagsBits, countAndFlagsBits, v90 & 1);
        v92 = *(v91 + 24);
        goto LABEL_115;
      }

      v131 = countAndFlagsBits - 8;
      v132 = 8;
      if (countAndFlagsBits < 8)
      {
        v132 = countAndFlagsBits;
      }

      if (countAndFlagsBits >= 4)
      {
        v134 = v132 & 0xC;
        v89.i32[0] = *object;
        v354 = vmovl_u16(*&vmovl_u8(v89));
        v355.i64[0] = v354.u32[0];
        v355.i64[1] = v354.u32[1];
        v356.i64[0] = 255;
        v356.i64[1] = 255;
        v357 = vandq_s8(v355, v356);
        v355.i64[0] = v354.u32[2];
        v355.i64[1] = v354.u32[3];
        v358 = vshlq_u64(vandq_s8(v355, v356), xmmword_18071DBA0);
        v359.i32[1] = 0;
        v360 = vshlq_u64(v357, xmmword_18071DBB0);
        if (v134 != 4)
        {
          v359.i32[0] = *(object + 1);
          v361 = vmovl_u16(*&vmovl_u8(v359));
          v362.i64[0] = v361.u32[2];
          v362.i64[1] = v361.u32[3];
          v363 = vandq_s8(v362, v356);
          v362.i64[0] = v361.u32[0];
          v362.i64[1] = v361.u32[1];
          v358 = vorrq_s8(vshlq_u64(v363, xmmword_18071DBD0), v358);
          v360 = vorrq_s8(vshlq_u64(vandq_s8(v362, v356), xmmword_18071DBC0), v360);
        }

        v364 = vorrq_s8(v360, v358);
        v92 = vorr_s8(*v364.i8, *&vextq_s8(v364, v364, 8uLL));
        if (v132 != v134)
        {
          v133 = 8 * v134;
          goto LABEL_222;
        }
      }

      else
      {
        v92 = 0;
        v133 = 0;
        v134 = 0;
LABEL_222:
        v365 = v132 - v134;
        v366 = &object[v134];
        do
        {
          v367 = *v366++;
          v92 |= v367 << (v133 & 0x38);
          v133 += 8;
          --v365;
        }

        while (v365);
      }

      if (countAndFlagsBits < 9)
      {
        v368 = 0;
        v135 = v422;
        v136 = v426;
      }

      else
      {
        v368 = 0;
        v369 = 0;
        v370 = (object + 8);
        v135 = v422;
        v136 = v426;
        do
        {
          v371 = *v370++;
          v368 |= v371 << v369;
          v369 += 8;
          --v131;
        }

        while (v131);
      }

      v372 = 0xA000000000000000;
      if (((v368 | v92) & 0x8080808080808080) == 0)
      {
        v372 = 0xE000000000000000;
      }

      v91 = v372 | (countAndFlagsBits << 56) | v368;
      goto LABEL_116;
    }

    if (!countAndFlagsBits)
    {
      goto LABEL_95;
    }

    v54 = 0;
    v93 = &object[countAndFlagsBits];
    v90 = 1;
    v94 = object;
    v95 = object;
    while (1)
    {
      v97 = *v95++;
      v96 = v97;
      if ((v97 & 0x80000000) == 0)
      {
        v98 = 1;
        goto LABEL_56;
      }

      if ((v96 + 11) <= 0xCCu)
      {
        LOBYTE(v428._countAndFlagsBits) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v96);
        goto LABEL_97;
      }

      if (v96 > 0xDFu)
      {
        break;
      }

      if (v95 == v93 || (*v95 & 0xC0) != 0x80)
      {
LABEL_249:
        v401 = 4;
        goto LABEL_250;
      }

      v90 = 0;
      v95 = v94 + 2;
      v98 = 2;
LABEL_56:
      v54 += v98;
      v94 = v95;
      if (v95 == v93)
      {
        goto LABEL_49;
      }
    }

    if (v96 == 224)
    {
      if (v95 == v93)
      {
        goto LABEL_249;
      }

      if (v94[1] - 192 < 0xFFFFFFE0)
      {
        goto LABEL_257;
      }

      goto LABEL_80;
    }

    if (v96 <= 0xECu)
    {
      goto LABEL_78;
    }

    if (v96 == 237)
    {
      if (v95 == v93)
      {
        goto LABEL_249;
      }

      v99 = v94[1];
      if (v99 > 0x9F || (v99 & 0xC0) != 0x80)
      {
        v401 = 1;
        goto LABEL_250;
      }

      goto LABEL_80;
    }

    if (v96 <= 0xEFu)
    {
LABEL_78:
      if (v95 == v93 || (v94[1] & 0xC0) != 0x80)
      {
        goto LABEL_249;
      }

LABEL_80:
      if (v94 + 2 == v93 || (v94[2] & 0xC0) != 0x80)
      {
        goto LABEL_249;
      }

      v90 = 0;
      v95 = v94 + 3;
      v98 = 3;
      goto LABEL_56;
    }

    if (v96 == 240)
    {
      if (v95 == v93)
      {
        goto LABEL_249;
      }

      if (v94[1] - 192 < 0xFFFFFFD0)
      {
LABEL_257:
        v401 = 3;
        goto LABEL_250;
      }

      goto LABEL_90;
    }

    if (v96 <= 0xF3u)
    {
      if (v95 == v93 || (v94[1] & 0xC0) != 0x80)
      {
        goto LABEL_249;
      }

      goto LABEL_90;
    }

    if (v95 == v93)
    {
      goto LABEL_249;
    }

    v100 = v94[1];
    if (v100 <= 0x8F && (v100 & 0xC0) == 0x80)
    {
LABEL_90:
      if (v94 + 2 == v93 || (v94[2] & 0xC0) != 0x80 || v94 + 3 == v93 || (v94[3] & 0xC0) != 0x80)
      {
        goto LABEL_249;
      }

      v90 = 0;
      v95 = v94 + 4;
      v98 = 4;
      goto LABEL_56;
    }

    v401 = 2;
LABEL_250:
    LOBYTE(v428._countAndFlagsBits) = v401;
LABEL_97:
    swift_willThrowTypedImpl(&v428, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
    v101 = specialized Collection.subscript.getter(v54, object, countAndFlagsBits);
    v106 = findInvalidRange #1 (_:) in validateUTF8(_:)(v101, v102, v103, v104);
    v428._countAndFlagsBits = 0;
    v428._object = 0xE000000000000000;
    if (__OFADD__(countAndFlagsBits, 15))
    {
LABEL_263:
      __break(1u);
LABEL_264:
      if ((v55 & 0x1000000000000000) != 0)
      {
        v56 = _StringGuts._foreignConvertedToSmall()(v56, v55);
        v408 = v407;
        v55;
        v55 = v408;
      }

      else
      {
        if ((v56 & 0x1000000000000000) != 0)
        {
          v404 = ((v55 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v405 = v56 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v404 = _StringObject.sharedUTF8.getter(v56, v55);
        }

        closure #1 in _StringGuts._convertedToSmall()(v404, v405, &v428, v64);
        v55;
        v55 = v428._object;
        v56 = v428._countAndFlagsBits;
      }

      continue;
    }

    break;
  }

  v55 = v105;
  v54 = &v428;
  _StringGuts.reserveCapacity(_:)(countAndFlagsBits + 15);
  v107 = v106;
  while (1)
  {
    v108 = specialized Collection.subscript.getter(v107, object, countAndFlagsBits);
    v112 = v428._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v428._object & 0x2000000000000000) != 0)
    {
      v112 = (v428._object >> 56) & 0xF;
    }

    v113 = __OFADD__(v112, countAndFlagsBits);
    v114 = v112 + countAndFlagsBits;
    if (v113)
    {
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
      goto LABEL_257;
    }

    v56 = v108;
    if (__OFADD__(v114, 3))
    {
      goto LABEL_255;
    }

    v2 = v109;
    v115 = v110;
    v116 = v111;
    _StringGuts.reserveCapacity(_:)(v114 + 3);
    v117 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v56, v2, v115, v116);
    v119 = v118;
    v54 = v428._object & 0xFFFFFFFFFFFFFFFLL;
    v56 = (v428._object & 0xFFFFFFFFFFFFFFFLL) + 32;
    specialized UnsafeMutablePointer.initialize(from:count:)(v117, v118, (v56 + (*((v428._object & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
    v120 = *(v54 + 24) & 0xFFFFFFFFFFFFLL;
    v121 = v120 + v119;
    if (__OFADD__(v120, v119))
    {
      goto LABEL_256;
    }

    v122 = v121 | 0x3000000000000000;
    *(v54 + 24) = v121 | 0x3000000000000000;
    *(v56 + (v121 & 0xFFFFFFFFFFFFLL)) = 0;
    if ((*(v54 + 16) & 0x8000000000000000) != 0)
    {
      v123 = __StringStorage._breadcrumbsAddress.getter();
      v124 = *v123;
      *v123 = 0;
      v124;
      v122 = *(v54 + 24);
    }

    v428._countAndFlagsBits = v122;
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v428._countAndFlagsBits);
    v125 = specialized Collection.subscript.getter(v55, object, countAndFlagsBits);
    object = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v125, v126, v127, v128);
    countAndFlagsBits = v129;
    if ((validateUTF8(_:)(object, v129) & 0x8000000000000000) == 0)
    {
      break;
    }

    v55 = v130;
    if (!countAndFlagsBits)
    {
      goto LABEL_114;
    }
  }

  _StringGuts.appendInPlace(_:isASCII:)(object, countAndFlagsBits, 0);
LABEL_114:
  v91 = v428._object;
  v92 = v428._countAndFlagsBits;
LABEL_115:
  v135 = v422;
  v136 = v426;
LABEL_116:
  v137 = v435;
  v138 = HIBYTE(v435) & 0xF;
  if ((v435 & 0x2000000000000000) == 0)
  {
    v138 = v434 & 0xFFFFFFFFFFFFLL;
  }

  if (!v138 && (v434 & ~v435 & 0x2000000000000000) == 0)
  {
    v435;
    v434 = v92;
    v435 = v91;
    goto LABEL_128;
  }

  if ((v435 & 0x2000000000000000) != 0)
  {
    if ((v91 & 0x2000000000000000) != 0)
    {
      v140 = specialized _SmallString.init(_:appending:)(v434, v435, v92, v91);
      if (v142)
      {
        goto LABEL_126;
      }

      v352 = v140;
      v353 = v141;
      v137;
      v91;
      v434 = v352;
      v435 = v353;
      v91 = v353;
      v92 = v352;
      goto LABEL_128;
    }

LABEL_124:
    v139 = v92 & 0xFFFFFFFFFFFFLL;
    goto LABEL_127;
  }

  if ((v91 & 0x2000000000000000) == 0)
  {
    goto LABEL_124;
  }

LABEL_126:
  v139 = HIBYTE(v91) & 0xF;
LABEL_127:
  v91;
  _StringGuts.append(_:)(v92, v91, 0, v139, v143, v144, v145, v146, v147, v148, v149, v150);
  swift_bridgeObjectRelease_n(v91, 2);
  v92 = v434;
  v91 = v435;
LABEL_128:
  v151 = HIBYTE(v91) & 0xF;
  if ((v91 & 0x2000000000000000) == 0)
  {
    v151 = v92 & 0xFFFFFFFFFFFFLL;
  }

  if (v151 || (v92 & ~v91 & 0x2000000000000000) != 0)
  {
    if ((v91 & 0x2000000000000000) != 0 && (v152 = specialized _SmallString.init(_:appending:)(v92, v91, 0x283EuLL, 0xE200000000000000), (v154 & 1) == 0))
    {
      v163 = v152;
      v164 = v153;
      v91;
      0xE200000000000000;
      v434 = v163;
      v435 = v164;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10302, 0xE200000000000000, 0, 2, v155, v156, v157, v158, v159, v160, v161, v162);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v91;
    v434 = 10302;
    v435 = 0xE200000000000000;
  }

  v165 = *(v423 + 24);
  swift_getAssociatedTypeWitness(255, v165, v135, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v167 = v166;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v165, v135, v166, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v169 = *(AssociatedConformanceWitness + 56);
  v170 = swift_checkMetadataState(0, v167);
  v171 = v424;
  v169(0, v170, AssociatedConformanceWitness);
  v429 = v135;
  v172 = __swift_allocate_boxed_opaque_existential_0Tm(&v428);
  memcpy(v172, v171, v3);
  v173 = v429;
  v174 = __swift_project_boxed_opaque_existential_0Tm(&v428, v429);
  DynamicType = swift_getDynamicType(v174, v173, 1);
  LODWORD(v173) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v428._countAndFlagsBits);
  if (v173)
  {
    v176 = v427;
    memcpy(v427, v171, v3);
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v428, v176, v135, v177, 7uLL, v178, v179, v180, v409);
    goto LABEL_140;
  }

  v195 = v419;
  memcpy(v419, v171, v3);
  if ((swift_dynamicCast(&v428, v195, v135, &type metadata for String, 6uLL, v196, v197, v198, v409) & 1) == 0)
  {
    v222 = v416;
    memcpy(v416, v171, v3);
    v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v431, v222, v135, v223, 6uLL, v224, v225, v226, v409))
    {
      _ss9CodingKey_pWOb_0(&v431, &v428);
      v227 = v429;
      v228 = v430;
      __swift_project_boxed_opaque_existential_0Tm(&v428, v429);
      (*(v228 + 8))(&v434, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v227, v228);
    }

    else
    {
      v433 = 0;
      v431 = 0u;
      v432 = 0u;
      outlined destroy of _HasContiguousBytes?(&v431, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v331 = v413;
      memcpy(v413, v171, v3);
      v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v431, v331, v135, v332, 6uLL, v333, v334, v335, v409))
      {
        _ss9CodingKey_pWOb_0(&v431, &v428);
        v336 = v429;
        v337 = v430;
        __swift_project_boxed_opaque_existential_0Tm(&v428, v429);
        v183 = (*(v337 + 8))(v336, v337);
      }

      else
      {
        v433 = 0;
        v431 = 0u;
        v432 = 0u;
        outlined destroy of _HasContiguousBytes?(&v431, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
        v376 = v410;
        memcpy(v410, v171, v3);
        v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
        if (!swift_dynamicCast(&v431, v376, v135, v377, 6uLL, v378, v379, v380, v409))
        {
          v433 = 0;
          v431 = 0u;
          v432 = 0u;
          outlined destroy of _HasContiguousBytes?(&v431, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
          *(&v432 + 1) = v135;
          v392 = __swift_allocate_boxed_opaque_existential_0Tm(&v431);
          memcpy(v392, v171, v3);
          Mirror.init(reflecting:)(&v431, &v428);
          v393 = v428._object;
          v394 = v430;
          _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v171, &v428, &v434, 0, v135, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
          v394;
          v393;
          goto LABEL_153;
        }

        _ss9CodingKey_pWOb_0(&v431, &v428);
LABEL_140:
        v181 = v429;
        v182 = v430;
        __swift_project_boxed_opaque_existential_0Tm(&v428, v429);
        v183 = (*(v182 + 8))(v181, v182);
      }

      v193 = v184;
      v194 = HIBYTE(v435) & 0xF;
      if ((v435 & 0x2000000000000000) == 0)
      {
        v194 = v434 & 0xFFFFFFFFFFFFLL;
      }

      if (v194 || (v434 & ~v435 & 0x2000000000000000) != 0)
      {
        _StringGuts.append(_:)(v183, v184, v185, v186, v187, v188, v189, v190, v191, v192);
        v193;
      }

      else
      {
        v373 = v183;
        v435;
        v434 = v373;
        v435 = v193;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v428._countAndFlagsBits);
    goto LABEL_153;
  }

  v207 = v428._object;
  v208 = HIBYTE(v435) & 0xF;
  if ((v435 & 0x2000000000000000) == 0)
  {
    v208 = v434 & 0xFFFFFFFFFFFFLL;
  }

  if (v208 || (v434 & ~v435 & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(v428._countAndFlagsBits, v428._object, v199, v200, v201, v202, v203, v204, v205, v206);
    v207;
  }

  else
  {
    v391 = v428._countAndFlagsBits;
    v435;
    v434 = v391;
    v435 = v207;
  }

LABEL_153:
  v209 = v435;
  v210 = HIBYTE(v435) & 0xF;
  if ((v435 & 0x2000000000000000) == 0)
  {
    v210 = v434 & 0xFFFFFFFFFFFFLL;
  }

  if (v210 || (v434 & ~v435 & 0x2000000000000000) != 0)
  {
    if ((v435 & 0x2000000000000000) != 0 && (v211 = specialized _SmallString.init(_:appending:)(v434, v435, 0x202CuLL, 0xE200000000000000), (v213 & 1) == 0))
    {
      v229 = v211;
      v230 = v212;
      v209;
      0xE200000000000000;
      v434 = v229;
      v435 = v230;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v214, v215, v216, v217, v218, v219, v220, v221);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v435;
    v434 = 8236;
    v435 = 0xE200000000000000;
  }

  v231 = v425;
  v169(1, v170, AssociatedConformanceWitness);
  v429 = v135;
  v232 = __swift_allocate_boxed_opaque_existential_0Tm(&v428);
  memcpy(v232, v231, v3);
  v233 = v429;
  v234 = __swift_project_boxed_opaque_existential_0Tm(&v428, v429);
  v235 = swift_getDynamicType(v234, v233, 1);
  LODWORD(v233) = swift_isOptionalType(v235);
  __swift_destroy_boxed_opaque_existential_1Tm(&v428._countAndFlagsBits);
  if (v233)
  {
    v236 = v427;
    memcpy(v427, v231, v3);
    v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v428, v236, v135, v237, 7uLL, v238, v239, v240, v409);
    goto LABEL_166;
  }

  v255 = v420;
  memcpy(v420, v231, v3);
  if (swift_dynamicCast(&v428, v255, v135, &type metadata for String, 6uLL, v256, v257, v258, v409))
  {
    v259 = v428._object;
    String.write(_:)(v428);
    v259;
    goto LABEL_175;
  }

  v273 = v417;
  memcpy(v417, v231, v3);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v431, v273, v135, v274, 6uLL, v275, v276, v277, v409))
  {
    _ss9CodingKey_pWOb_0(&v431, &v428);
    v278 = v429;
    v279 = v430;
    __swift_project_boxed_opaque_existential_0Tm(&v428, v429);
    (*(v279 + 8))(&v434, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v278, v279);
LABEL_172:
    __swift_destroy_boxed_opaque_existential_1Tm(&v428._countAndFlagsBits);
    goto LABEL_175;
  }

  v433 = 0;
  v431 = 0u;
  v432 = 0u;
  outlined destroy of _HasContiguousBytes?(&v431, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v338 = v414;
  memcpy(v414, v231, v3);
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v431, v338, v135, v339, 6uLL, v340, v341, v342, v409))
  {
    _ss9CodingKey_pWOb_0(&v431, &v428);
    v343 = v429;
    v344 = v430;
    __swift_project_boxed_opaque_existential_0Tm(&v428, v429);
    v243 = (*(v344 + 8))(v343, v344);
LABEL_167:
    v253 = v244;
    v254 = HIBYTE(v435) & 0xF;
    if ((v435 & 0x2000000000000000) == 0)
    {
      v254 = v434 & 0xFFFFFFFFFFFFLL;
    }

    if (v254 || (v434 & ~v435 & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v243, v244, v245, v246, v247, v248, v249, v250, v251, v252);
      v253;
    }

    else
    {
      v374 = v243;
      v435;
      v434 = v374;
      v435 = v253;
    }

    goto LABEL_172;
  }

  v433 = 0;
  v431 = 0u;
  v432 = 0u;
  outlined destroy of _HasContiguousBytes?(&v431, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v381 = v411;
  memcpy(v411, v231, v3);
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v431, v381, v135, v382, 6uLL, v383, v384, v385, v409))
  {
    _ss9CodingKey_pWOb_0(&v431, &v428);
LABEL_166:
    v241 = v429;
    v242 = v430;
    __swift_project_boxed_opaque_existential_0Tm(&v428, v429);
    v243 = (*(v242 + 8))(v241, v242);
    goto LABEL_167;
  }

  v433 = 0;
  v431 = 0u;
  v432 = 0u;
  outlined destroy of _HasContiguousBytes?(&v431, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v432 + 1) = v135;
  v395 = __swift_allocate_boxed_opaque_existential_0Tm(&v431);
  memcpy(v395, v231, v3);
  Mirror.init(reflecting:)(&v431, &v428);
  v396 = v428._object;
  v397 = v430;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v231, &v428, &v434, 0, v135, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v397;
  v396;
LABEL_175:
  v260 = v435;
  v261 = HIBYTE(v435) & 0xF;
  if ((v435 & 0x2000000000000000) == 0)
  {
    v261 = v434 & 0xFFFFFFFFFFFFLL;
  }

  if (v261 || (v434 & ~v435 & 0x2000000000000000) != 0)
  {
    if ((v435 & 0x2000000000000000) != 0 && (v262 = specialized _SmallString.init(_:appending:)(v434, v435, 0x202CuLL, 0xE200000000000000), (v264 & 1) == 0))
    {
      v280 = v262;
      v281 = v263;
      v260;
      0xE200000000000000;
      v434 = v280;
      v435 = v281;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v265, v266, v267, v268, v269, v270, v271, v272);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v435;
    v434 = 8236;
    v435 = 0xE200000000000000;
  }

  v169(2, v170, AssociatedConformanceWitness);
  v429 = v135;
  v282 = __swift_allocate_boxed_opaque_existential_0Tm(&v428);
  memcpy(v282, v136, v3);
  v283 = v429;
  v284 = __swift_project_boxed_opaque_existential_0Tm(&v428, v429);
  v285 = swift_getDynamicType(v284, v283, 1);
  LODWORD(v283) = swift_isOptionalType(v285);
  __swift_destroy_boxed_opaque_existential_1Tm(&v428._countAndFlagsBits);
  if (v283)
  {
    v286 = v427;
    memcpy(v427, v136, v3);
    v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v428, v286, v135, v287, 7uLL, v288, v289, v290, v409);
    goto LABEL_188;
  }

  v305 = v421;
  memcpy(v421, v136, v3);
  if (swift_dynamicCast(&v428, v305, v135, &type metadata for String, 6uLL, v306, v307, v308, v409))
  {
    v309 = v428._object;
    String.write(_:)(v428);
    v309;
    goto LABEL_197;
  }

  v323 = v418;
  memcpy(v418, v136, v3);
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v431, v323, v135, v324, 6uLL, v325, v326, v327, v409))
  {
    _ss9CodingKey_pWOb_0(&v431, &v428);
    v328 = v429;
    v329 = v430;
    __swift_project_boxed_opaque_existential_0Tm(&v428, v429);
    (*(v329 + 8))(&v434, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v328, v329);
LABEL_194:
    __swift_destroy_boxed_opaque_existential_1Tm(&v428._countAndFlagsBits);
    goto LABEL_197;
  }

  v433 = 0;
  v431 = 0u;
  v432 = 0u;
  outlined destroy of _HasContiguousBytes?(&v431, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v345 = v415;
  memcpy(v415, v136, v3);
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v431, v345, v135, v346, 6uLL, v347, v348, v349, v409))
  {
    _ss9CodingKey_pWOb_0(&v431, &v428);
    v350 = v429;
    v351 = v430;
    __swift_project_boxed_opaque_existential_0Tm(&v428, v429);
    v293 = (*(v351 + 8))(v350, v351);
LABEL_189:
    v303 = v294;
    v304 = HIBYTE(v435) & 0xF;
    if ((v435 & 0x2000000000000000) == 0)
    {
      v304 = v434 & 0xFFFFFFFFFFFFLL;
    }

    if (v304 || (v434 & ~v435 & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v293, v294, v295, v296, v297, v298, v299, v300, v301, v302);
      v303;
    }

    else
    {
      v375 = v293;
      v435;
      v434 = v375;
      v435 = v303;
    }

    goto LABEL_194;
  }

  v433 = 0;
  v431 = 0u;
  v432 = 0u;
  outlined destroy of _HasContiguousBytes?(&v431, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v386 = v412;
  memcpy(v412, v136, v3);
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v431, v386, v135, v387, 6uLL, v388, v389, v390, v409))
  {
    _ss9CodingKey_pWOb_0(&v431, &v428);
LABEL_188:
    v291 = v429;
    v292 = v430;
    __swift_project_boxed_opaque_existential_0Tm(&v428, v429);
    v293 = (*(v292 + 8))(v291, v292);
    goto LABEL_189;
  }

  v433 = 0;
  v431 = 0u;
  v432 = 0u;
  outlined destroy of _HasContiguousBytes?(&v431, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v432 + 1) = v135;
  v398 = __swift_allocate_boxed_opaque_existential_0Tm(&v431);
  memcpy(v398, v136, v3);
  Mirror.init(reflecting:)(&v431, &v428);
  v399 = v428._object;
  v400 = v430;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v136, &v428, &v434, 0, v135, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v400;
  v399;
LABEL_197:
  v310 = v435;
  v311 = HIBYTE(v435) & 0xF;
  if ((v435 & 0x2000000000000000) == 0)
  {
    v311 = v434 & 0xFFFFFFFFFFFFLL;
  }

  if (v311 || (v434 & ~v435 & 0x2000000000000000) != 0)
  {
    if ((v435 & 0x2000000000000000) != 0 && (v312 = specialized _SmallString.init(_:appending:)(v434, v435, 0x29uLL, 0xE100000000000000), (v313 & 1) == 0))
    {
      v330 = v312;
      v310;
      0xE100000000000000;
      return v330;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v314, v315, v316, v317, v318, v319, v320, v321);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v434;
    }
  }

  else
  {
    v435;
    return 41;
  }
}

uint64_t SIMD3<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, void (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v52 = a6;
  v53 = a4;
  v56 = a1;
  v49 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v46 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v17, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v20 = *(AssociatedConformanceWitness + 48);
  v48 = v18;
  v21 = AssociatedConformanceWitness;
  v20(v18);
  v47 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v23 = v22;
  v24 = a7;
  v25 = a3;
  v50 = a3;
  v54 = v23;
  v26 = swift_getAssociatedConformanceWitness(v24, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v55 = v26;
  v27 = *(v26 + 56);
  v28 = swift_checkMetadataState(0, v23);
  v27(0, v28, v26);
  v51 = *(v53 + 2);
  v29 = *(v51 + 72);
  v52 = *(v52 + 8);
  v53 = v29;
  v30 = v46;
  v45 = a2;
  (v29)(v14, v25);
  v31 = v21;
  v43 = *(v21 + 64);
  v44 = v21;
  v32 = v48;
  v43(v30, 0, v48, v31);
  v33 = swift_checkMetadataState(0, v54);
  v27(1, v33, v55);
  v34 = v45;
  v53(v14, v50, v52, v45, v51);
  v35 = v32;
  v36 = v43;
  v37 = v44;
  v43(v30, 1, v35, v44);
  v38 = swift_checkMetadataState(0, v54);
  v27(2, v38, v55);
  v39 = v50;
  v53(v14, v50, v52, v34, v51);
  v36(v30, 2, v48, v37);
  v41 = type metadata accessor for SIMD3(0, v39, v47, v40);
  return (*(*(v41 - 8) + 8))(v56, v41);
}

uint64_t SIMD3<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a4;
  v51 = a6;
  v52 = a1;
  v44 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v43 = v19;
  (*(AssociatedConformanceWitness + 48))(v19, AssociatedConformanceWitness);
  v41 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v21 = v20;
  v45 = a3;
  v47 = v20;
  v22 = swift_getAssociatedConformanceWitness(a7, a3, v20, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v23 = *(v22 + 56);
  v48 = v22;
  v49 = v23;
  v24 = swift_checkMetadataState(0, v21);
  v23(0, v24, v22);
  v25 = v51;
  v46 = *(v50 + 80);
  v40 = a2;
  v46(v14, a3, v51, a2);
  v26 = v43;
  v39 = *(AssociatedConformanceWitness + 64);
  (v39)(v17, 0, v43);
  v27 = swift_checkMetadataState(0, v47);
  v49(1, v27, v48);
  v28 = v25;
  v29 = v40;
  v30 = v50;
  (v46)(v14, v45, v28, v40, v50);
  v31 = v26;
  v32 = AssociatedConformanceWitness;
  v33 = v39;
  v39(v17, 1, v31, AssociatedConformanceWitness);
  v34 = swift_checkMetadataState(0, v47);
  v49(2, v34, v48);
  v35 = v45;
  (v46)(v14, v45, v51, v29, v30);
  v33(v17, 2, v43, v32);
  v37 = type metadata accessor for SIMD3(0, v35, v41, v36);
  return (*(*(v37 - 8) + 8))(v52, v37);
}

double (*UInt8.SIMD2Storage.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1, double a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 17) = BYTE4(v4);
  v6 = v4;
  *(a1 + 18) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return UInt8.SIMD2Storage.subscript.modify;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance UInt8.SIMD2Storage(uint64_t a1, uint64_t a2))(uint64_t a1, double a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 17) = BYTE4(v4);
  v6 = v4;
  *(a1 + 18) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return UInt8.SIMD2Storage.subscript.modify;
}

int8x8_t (*UInt8.SIMD4Storage.subscript.modify(uint64_t a1, uint64_t a2, uint8x8_t a3))(uint64_t a1, uint8x8_t a2)
{
  *a1 = a2;
  *(a1 + 8) = v3;
  a3.i32[0] = *v3;
  *(a1 + 16) = *v3;
  v5 = vmovl_u8(a3).u64[0];
  *(a1 + 20) = *(&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (a2 & 3)));
  return UInt8.SIMD4Storage.subscript.modify;
}

int8x8_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt8.SIMD4Storage(uint64_t a1, uint64_t a2, uint8x8_t a3))(uint64_t a1, uint8x8_t a2)
{
  *a1 = a2;
  *(a1 + 8) = v3;
  a3.i32[0] = *v3;
  *(a1 + 16) = *v3;
  v5 = vmovl_u8(a3).u64[0];
  *(a1 + 20) = *(&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (a2 & 3)));
  return UInt8.SIMD4Storage.subscript.modify;
}

double (*UInt8.SIMD8Storage.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + (a2 & 7));
  return UInt8.SIMD8Storage.subscript.modify;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance UInt8.SIMD8Storage(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + (a2 & 7));
  return UInt8.SIMD8Storage.subscript.modify;
}

uint64_t (*UInt8.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xD95uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 32) = *(&v8 | a2 & 0xF);
  return UInt8.SIMD16Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt8.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x7897uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 32) = *(&v8 | a2 & 0xF);
  return UInt8.SIMD16Storage.subscript.modify;
}

uint64_t (*UInt8.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x9EBEuLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 48) = *(v9 + (a2 & 0x1F));
  return UInt8.SIMD32Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt8.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x2AF8uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 48) = *(v9 + (a2 & 0x1F));
  return UInt8.SIMD32Storage.subscript.modify;
}

uint64_t (*UInt8.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x70B1uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 80) = *(v11 + (a2 & 0x3F));
  return UInt8.SIMD64Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt8.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0xB08uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 80) = *(v11 + (a2 & 0x3F));
  return UInt8.SIMD64Storage.subscript.modify;
}

uint64_t Int8.SIMD2Storage.subscript.getter(char a1, __int16 a2)
{
  LODWORD(v2) = a2;
  HIDWORD(v2) = HIBYTE(a2);
  v4 = v2;
  return *(&v4 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a1 & 1)));
}

__n128 _ss5UInt8V12SIMD2StorageVyABSicipADTK_0@<Q0>(_BYTE *a1@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>, double a4@<D0>)
{
  LOBYTE(a4) = *a1;
  BYTE4(a4) = a1[1];
  v4 = (&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1)));
  v6 = a4;
  *a3 = *v4;
  result.n128_u32[0] = LODWORD(a4);
  result.n128_u8[4] = BYTE4(a4);
  return result;
}

double (*Int8.SIMD2Storage.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1, double a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 17) = BYTE4(v4);
  v6 = v4;
  *(a1 + 18) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return UInt8.SIMD2Storage.subscript.modify;
}

__n128 _ss5UInt8V12SIMD2StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _BYTE *a2@<X8>, double a3@<D0>)
{
  LOBYTE(a3) = *v3;
  BYTE4(a3) = v3[1];
  v5 = a3;
  *a2 = *(&v5 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a1 & 1)));
  result.n128_u32[0] = LODWORD(a3);
  result.n128_u8[4] = BYTE4(a3);
  return result;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD2Storage(uint64_t a1, uint64_t a2))(uint64_t a1, double a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 17) = BYTE4(v4);
  v6 = v4;
  *(a1 + 18) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD2Storage;
}

double protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD2Storage(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 16);
  BYTE4(a2) = *(a1 + 17);
  v2 = *(a1 + 8);
  v3 = (&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a1 & 1)));
  v4 = *(a1 + 18);
  v6 = a2;
  *v3 = v4;
  result = v6;
  v2[1] = BYTE4(v6);
  *v2 = LOBYTE(result);
  return result;
}

uint64_t Int8.SIMD4Storage.subscript.getter(char a1, __int32 a2, int8x8_t a3)
{
  a3.i32[0] = a2;
  v4 = vzip1_s8(a3, a3);
  return *(&v4 & 0xFFFFFFFFFFFFFFF9 | (2 * (a1 & 3)));
}

double _ss5UInt8V12SIMD4StorageVyABSicipADTK_0@<D0>(__int32 *a1@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>, uint8x8_t a4@<D0>)
{
  a4.i32[0] = *a1;
  *&result = vmovl_u8(a4).u64[0];
  v5 = (&v6 & 0xFFFFFFFFFFFFFFF9 | (2 * (*a2 & 3)));
  v6 = result;
  *a3 = *v5;
  return result;
}

int8x8_t (*Int8.SIMD4Storage.subscript.modify(uint64_t a1, uint64_t a2, uint8x8_t a3))(uint64_t a1, uint8x8_t a2)
{
  *a1 = a2;
  *(a1 + 8) = v3;
  a3.i32[0] = *v3;
  *(a1 + 16) = *v3;
  v5 = vmovl_u8(a3).u64[0];
  *(a1 + 20) = *(&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (a2 & 3)));
  return UInt8.SIMD4Storage.subscript.modify;
}

double _ss5UInt8V12SIMD4StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<D0>(char a1@<W0>, _BYTE *a2@<X8>, uint8x8_t a3@<D0>)
{
  a3.i32[0] = *v3;
  *&result = vmovl_u8(a3).u64[0];
  v5 = result;
  *a2 = *(&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (a1 & 3)));
  return result;
}

int8x8_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD4Storage(uint64_t a1, uint64_t a2, uint8x8_t a3))(uint64_t a1, uint8x8_t a2)
{
  *a1 = a2;
  *(a1 + 8) = v3;
  a3.i32[0] = *v3;
  *(a1 + 16) = *v3;
  v5 = vmovl_u8(a3).u64[0];
  *(a1 + 20) = *(&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (a2 & 3)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD4Storage;
}

int8x8_t protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD4Storage(uint64_t a1, uint8x8_t a2)
{
  a2.i32[0] = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (&v6 & 0xFFFFFFFFFFFFFFF9 | (2 * (*a1 & 3)));
  v4 = *(a1 + 20);
  v6 = vmovl_u8(a2).u64[0];
  *v3 = v4;
  result = vuzp1_s8(v6, v6);
  *v2 = result.i32[0];
  return result;
}

double _ss5UInt8V12SIMD8StorageVyABSicipADTK_0@<D0>(double *a1@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  result = *a1;
  v4 = (&v5 | *a2 & 7);
  v5 = *a1;
  *a3 = *v4;
  return result;
}

double (*Int8.SIMD8Storage.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + (a2 & 7));
  return UInt8.SIMD8Storage.subscript.modify;
}

double _ss5UInt8V12SIMD8StorageVs11SIMDStoragessAEPxycfCTW_0@<D0>(void *a1@<X8>)
{
  result = 0.0;
  *a1 = 0;
  return result;
}

double _ss5UInt8V12SIMD8StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<D0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  result = *v2;
  v4 = *v2;
  *a2 = *(&v4 | a1 & 7);
  return result;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD8Storage(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + (a2 & 7));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD8Storage;
}

double protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD8Storage(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (&v5 | *a1 & 7);
  v3 = *(a1 + 24);
  v5 = *(a1 + 16);
  *v2 = v3;
  result = v5;
  *v1 = v5;
  return result;
}

__n128 _ss5UInt8V13SIMD16StorageVyABSicipADTK_0@<Q0>(__n128 *a1@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  result = *a1;
  v4 = (&v5 | *a2 & 0xF);
  v5 = *a1;
  *a3 = *v4;
  return result;
}

uint64_t (*Int8.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x1BFBuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 32) = *(&v8 | a2 & 0xF);
  return UInt8.SIMD16Storage.subscript.modify;
}

double protocol witness for SIMDStorage.init() in conformance Float16.SIMD8Storage@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  return result;
}

__n128 _ss5UInt8V13SIMD16StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  result = *v2;
  *a2 = *(&v4 | a1 & 0xF);
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x5E81uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 32) = *(&v8 | a2 & 0xF);
  return protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD16Storage;
}

void UInt8.SIMD16Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[3];
  v3 = (&v5 | v1[2] & 0xF);
  v4 = *(v1 + 32);
  v5 = *v1;
  *v3 = v4;
  *v2 = v5;
  free(v1);
}

__n128 _ss5UInt8V13SIMD32StorageVyABSicipADTK_0@<Q0>(__n128 *a1@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  result = *a1;
  *a3 = *(&v4 + (*a2 & 0x1F));
  return result;
}

uint64_t (*Int8.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xB7A9uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 48) = *(v9 + (a2 & 0x1F));
  return UInt8.SIMD32Storage.subscript.modify;
}

double protocol witness for SIMDStorage.init() in conformance Double.SIMD4Storage@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 _ss5UInt8V13SIMD32StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  result = *v2;
  *a2 = *(&v4 + (a1 & 0x1F));
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x223AuLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 48) = *(v9 + (a2 & 0x1F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD32Storage;
}

void UInt8.SIMD32Storage.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 40);
  *(v4 + (*(v1 + 32) & 0x1F)) = *(v1 + 48);
  v3 = v4[1];
  *v2 = v4[0];
  v2[1] = v3;
  free(v1);
}

void Int8.SIMD64Storage._value.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[2] = a3;
  v4[3] = a4;
  *v4 = a1;
  v4[1] = a2;
}

uint64_t Int8.SIMD64Storage.subscript.getter(char a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[0] = a2;
  v6[1] = a3;
  return *(v6 + (a1 & 0x3F));
}

__n128 _ss5UInt8V13SIMD64StorageVyABSicipADTK_0@<Q0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = *a2 & 0x3F;
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  v7[0] = result;
  v7[1] = v4;
  *a3 = *(v7 + v6);
  return result;
}

uint64_t (*Int8.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x5261uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 80) = *(v11 + (a2 & 0x3F));
  return UInt8.SIMD64Storage.subscript.modify;
}

double protocol witness for SIMDStorage.init() in conformance Double.SIMD8Storage@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 _ss5UInt8V13SIMD64StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 48);
  v6[2] = *(v2 + 32);
  v6[3] = v5;
  v6[0] = result;
  v6[1] = v4;
  *a2 = *(v6 + (a1 & 0x3F));
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x8B81uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 80) = *(v11 + (a2 & 0x3F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD64Storage;
}

__n128 UInt8.SIMD64Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v5 = *(v1 + 9);
  v6 = v1[4] & 0x3F;
  v7 = *(v1 + 80);
  v14 = v1[2];
  v15 = v4;
  v12 = v2;
  v13 = v3;
  *(&v12 + v6) = v7;
  v9 = v12;
  v8 = v13;
  v10 = v15;
  v5[2] = v14;
  v5[3] = v10;
  *v5 = v9;
  v5[1] = v8;
  free(v1);
  return result;
}

double (*UInt16.SIMD2Storage.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1, double a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 18) = WORD2(v4);
  v6 = v4;
  *(a1 + 20) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return UInt16.SIMD2Storage.subscript.modify;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance UInt16.SIMD2Storage(uint64_t a1, uint64_t a2))(uint64_t a1, double a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 18) = WORD2(v4);
  v6 = v4;
  *(a1 + 20) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return UInt16.SIMD2Storage.subscript.modify;
}

double (*UInt16.SIMD4Storage.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 2 * (a2 & 3));
  return UInt16.SIMD4Storage.subscript.modify;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance UInt16.SIMD4Storage(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 2 * (a2 & 3));
  return UInt16.SIMD4Storage.subscript.modify;
}

uint64_t (*UInt16.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xDB8AuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 16) = *(&v8 & 0xFFFFFFFFFFFFFFF1 | (2 * (a2 & 7)));
  return UInt16.SIMD8Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt16.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x4066uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 16) = *(&v8 & 0xFFFFFFFFFFFFFFF1 | (2 * (a2 & 7)));
  return UInt16.SIMD8Storage.subscript.modify;
}

uint64_t (*UInt16.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xBDD6uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 24) = *(v9 + (a2 & 0xF));
  return UInt16.SIMD16Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt16.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x48uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 24) = *(v9 + (a2 & 0xF));
  return UInt16.SIMD16Storage.subscript.modify;
}

uint64_t (*UInt16.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0xB03FuLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 40) = *(v11 + (a2 & 0x1F));
  return UInt16.SIMD32Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt16.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x99C4uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 40) = *(v11 + (a2 & 0x1F));
  return UInt16.SIMD32Storage.subscript.modify;
}

uint64_t (*UInt16.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0xB342uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 72) = *(v15 + (a2 & 0x3F));
  return UInt16.SIMD64Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt16.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x48C0uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 72) = *(v15 + (a2 & 0x3F));
  return UInt16.SIMD64Storage.subscript.modify;
}

uint64_t Int16.SIMD2Storage.subscript.getter(char a1, __int32 a2, uint16x4_t a3)
{
  a3.i32[0] = a2;
  v4 = vmovl_u16(a3).u64[0];
  return *(&v4 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a1 & 1)));
}

__n128 _ss6UInt16V12SIMD2StorageVyABSicipADTK_0@<Q0>(_WORD *a1@<X0>, _DWORD *a2@<X1>, _WORD *a3@<X8>, double a4@<D0>)
{
  LOWORD(a4) = *a1;
  WORD2(a4) = a1[1];
  v4 = (&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1)));
  v6 = a4;
  *a3 = *v4;
  result.n128_u32[0] = LODWORD(a4);
  result.n128_u16[2] = WORD2(a4);
  return result;
}

double (*Int16.SIMD2Storage.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1, double a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 18) = WORD2(v4);
  v6 = v4;
  *(a1 + 20) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return UInt16.SIMD2Storage.subscript.modify;
}

__n128 _ss6UInt16V12SIMD2StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _WORD *a2@<X8>, double a3@<D0>)
{
  LOWORD(a3) = *v3;
  WORD2(a3) = v3[1];
  v5 = a3;
  *a2 = *(&v5 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a1 & 1)));
  result.n128_u32[0] = LODWORD(a3);
  result.n128_u16[2] = WORD2(a3);
  return result;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD2Storage(uint64_t a1, uint64_t a2))(uint64_t a1, double a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 18) = WORD2(v4);
  v6 = v4;
  *(a1 + 20) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD2Storage;
}

double protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD2Storage(uint64_t a1, double a2)
{
  LOWORD(a2) = *(a1 + 16);
  WORD2(a2) = *(a1 + 18);
  v2 = *(a1 + 8);
  v3 = (&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a1 & 1)));
  v4 = *(a1 + 20);
  v6 = a2;
  *v3 = v4;
  result = v6;
  v2[1] = WORD2(v6);
  *v2 = LOWORD(result);
  return result;
}

double _ss6UInt16V12SIMD4StorageVyABSicipADTK_0@<D0>(double *a1@<X0>, _DWORD *a2@<X1>, _WORD *a3@<X8>)
{
  result = *a1;
  v4 = (&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (*a2 & 3)));
  v5 = *a1;
  *a3 = *v4;
  return result;
}

double (*Int16.SIMD4Storage.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 2 * (a2 & 3));
  return UInt16.SIMD4Storage.subscript.modify;
}

double _ss6UInt16V12SIMD4StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<D0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *v2;
  v4 = *v2;
  *a2 = *(&v4 & 0xFFFFFFFFFFFFFFF9 | (2 * (a1 & 3)));
  return result;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD4Storage(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 2 * (a2 & 3));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD4Storage;
}

double protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD4Storage(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (*a1 & 3)));
  v3 = *(a1 + 24);
  v5 = *(a1 + 16);
  *v2 = v3;
  result = v5;
  *v1 = v5;
  return result;
}

__n128 _ss6UInt16V12SIMD8StorageVyABSicipADTK_0@<Q0>(__n128 *a1@<X0>, _DWORD *a2@<X1>, _WORD *a3@<X8>)
{
  result = *a1;
  v4 = (&v5 & 0xFFFFFFFFFFFFFFF1 | (2 * (*a2 & 7)));
  v5 = *a1;
  *a3 = *v4;
  return result;
}

uint64_t (*Int16.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xD7D5uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 16) = *(&v8 & 0xFFFFFFFFFFFFFFF1 | (2 * (a2 & 7)));
  return UInt16.SIMD8Storage.subscript.modify;
}

__n128 _ss6UInt16V12SIMD8StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *v2;
  *a2 = *(&v4 & 0xFFFFFFFFFFFFFFF1 | (2 * (a1 & 7)));
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x511BuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 16) = *(&v8 & 0xFFFFFFFFFFFFFFF1 | (2 * (a2 & 7)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD8Storage;
}

void UInt16.SIMD8Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[3];
  v3 = (&v5 & 0xFFFFFFFFFFFFFFF1 | (2 * (v1[2] & 7)));
  v4 = *(v1 + 16);
  v5 = *v1;
  *v3 = v4;
  *v2 = v5;
  free(v1);
}

__n128 _ss6UInt16V13SIMD16StorageVyABSicipADTK_0@<Q0>(__n128 *a1@<X0>, _DWORD *a2@<X1>, _WORD *a3@<X8>)
{
  result = *a1;
  *a3 = *(&v4 + (*a2 & 0xF));
  return result;
}

uint64_t (*Int16.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x7D3FuLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 24) = *(v9 + (a2 & 0xF));
  return UInt16.SIMD16Storage.subscript.modify;
}

__n128 _ss6UInt16V13SIMD16StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *v2;
  *a2 = *(&v4 + (a1 & 0xF));
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xD1E3uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 24) = *(v9 + (a2 & 0xF));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD16Storage;
}

void UInt16.SIMD16Storage.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 40);
  *(v4 + (*(v1 + 32) & 0xF)) = *(v1 + 48);
  v3 = v4[1];
  *v2 = v4[0];
  v2[1] = v3;
  free(v1);
}

void Int16.SIMD32Storage._value.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[2] = a3;
  v4[3] = a4;
  *v4 = a1;
  v4[1] = a2;
}

uint64_t Int16.SIMD32Storage.subscript.getter(char a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[0] = a2;
  v6[1] = a3;
  return *(v6 + (a1 & 0x1F));
}

__n128 _ss6UInt16V13SIMD32StorageVyABSicipADTK_0@<Q0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, _WORD *a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = *a2 & 0x1F;
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  v7[0] = result;
  v7[1] = v4;
  *a3 = *(v7 + v6);
  return result;
}

uint64_t (*Int16.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x19BEuLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 40) = *(v11 + (a2 & 0x1F));
  return UInt16.SIMD32Storage.subscript.modify;
}

__n128 _ss6UInt16V13SIMD32StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 48);
  v6[2] = *(v2 + 32);
  v6[3] = v5;
  v6[0] = result;
  v6[1] = v4;
  *a2 = *(v6 + (a1 & 0x1F));
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x25F2uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 40) = *(v11 + (a2 & 0x1F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD32Storage;
}

__n128 UInt16.SIMD32Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v5 = *(v1 + 9);
  v6 = v1[4] & 0x1F;
  v7 = *(v1 + 40);
  v14 = v1[2];
  v15 = v4;
  v12 = v2;
  v13 = v3;
  *(&v12 + v6) = v7;
  v9 = v12;
  v8 = v13;
  v10 = v15;
  v5[2] = v14;
  v5[3] = v10;
  *v5 = v9;
  v5[1] = v8;
  free(v1);
  return result;
}

__n128 Int16.SIMD64Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Int16.SIMD64Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v8;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Int16.SIMD64Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t Int16.SIMD64Storage.subscript.getter(char a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v10[6] = v1[6];
  v10[7] = v8;
  v10[4] = v6;
  v10[5] = v7;
  v10[2] = v4;
  v10[3] = v5;
  v10[0] = v2;
  v10[1] = v3;
  return *(v10 + (a1 & 0x3F));
}

__n128 _ss6UInt16V13SIMD64StorageVyABSicipADTK_0@<Q0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, _WORD *a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  v9 = *(a1 + 112);
  v10 = *a2 & 0x3F;
  v11[6] = *(a1 + 96);
  v11[7] = v9;
  v11[4] = v7;
  v11[5] = v8;
  v11[2] = v5;
  v11[3] = v6;
  v11[0] = result;
  v11[1] = v4;
  *a3 = *(v11 + v10);
  return result;
}

uint64_t (*Int16.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x521EuLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 72) = *(v15 + (a2 & 0x3F));
  return UInt16.SIMD64Storage.subscript.modify;
}

double protocol witness for SIMDStorage.init() in conformance Double.SIMD16Storage@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 _ss6UInt16V13SIMD64StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 64);
  v8 = *(v2 + 80);
  v9 = *(v2 + 112);
  v10[6] = *(v2 + 96);
  v10[7] = v9;
  v10[4] = v7;
  v10[5] = v8;
  v10[2] = v5;
  v10[3] = v6;
  v10[0] = result;
  v10[1] = v4;
  *a2 = *(v10 + (a1 & 0x3F));
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x32BDuLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 72) = *(v15 + (a2 & 0x3F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD64Storage;
}

__n128 UInt16.SIMD64Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v9 = *(v1 + 17);
  v10 = v1[8] & 0x3F;
  v11 = *(v1 + 72);
  v26 = v1[6];
  v27 = v8;
  v24 = v6;
  v25 = v7;
  v22 = v4;
  v23 = v5;
  v20 = v2;
  v21 = v3;
  *(&v20 + v10) = v11;
  v13 = v20;
  v12 = v21;
  v15 = v22;
  v14 = v23;
  v17 = v24;
  v16 = v25;
  v18 = v27;
  v9[6] = v26;
  v9[7] = v18;
  v9[4] = v17;
  v9[5] = v16;
  v9[2] = v15;
  v9[3] = v14;
  *v9 = v13;
  v9[1] = v12;
  free(v1);
  return result;
}

double (*UInt32.SIMD2Storage.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 4 * (a2 & 1));
  return UInt32.SIMD2Storage.subscript.modify;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance UInt32.SIMD2Storage(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 4 * (a2 & 1));
  return UInt32.SIMD2Storage.subscript.modify;
}

uint64_t (*UInt32.SIMD4Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x6ED7uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 8) = *(&v8 & 0xFFFFFFFFFFFFFFF3 | (4 * (a2 & 3)));
  return UInt32.SIMD4Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt32.SIMD4Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x231DuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 8) = *(&v8 & 0xFFFFFFFFFFFFFFF3 | (4 * (a2 & 3)));
  return UInt32.SIMD4Storage.subscript.modify;
}

uint64_t (*UInt32.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xCB13uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 12) = *(v9 + (a2 & 7));
  return UInt32.SIMD8Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt32.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xDA39uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 12) = *(v9 + (a2 & 7));
  return UInt32.SIMD8Storage.subscript.modify;
}

uint64_t (*UInt32.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0xA94FuLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 20) = *(v11 + (a2 & 0xF));
  return UInt32.SIMD16Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt32.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x4EECuLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 20) = *(v11 + (a2 & 0xF));
  return UInt32.SIMD16Storage.subscript.modify;
}

uint64_t (*UInt32.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x5E4EuLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 36) = *(v15 + (a2 & 0x1F));
  return UInt32.SIMD32Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt32.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x19C5uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 36) = *(v15 + (a2 & 0x1F));
  return UInt32.SIMD32Storage.subscript.modify;
}

uint64_t (*UInt32.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0x471FuLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[32] = a2;
  v5[33] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  *(v5 + 68) = *(v23 + (a2 & 0x3F));
  return UInt32.SIMD64Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt32.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0x4911uLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[32] = a2;
  v5[33] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  *(v5 + 68) = *(v23 + (a2 & 0x3F));
  return UInt32.SIMD64Storage.subscript.modify;
}

double (*Int32.SIMD2Storage.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 4 * (a2 & 1));
  return UInt32.SIMD2Storage.subscript.modify;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD2Storage(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 4 * (a2 & 1));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD2Storage;
}

double protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD2Storage(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (&v5 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a1 & 1)));
  v3 = *(a1 + 24);
  v5 = *(a1 + 16);
  *v2 = v3;
  result = v5;
  *v1 = v5;
  return result;
}

uint64_t (*Int32.SIMD4Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xD219uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 8) = *(&v8 & 0xFFFFFFFFFFFFFFF3 | (4 * (a2 & 3)));
  return UInt32.SIMD4Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD4Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xE15AuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 8) = *(&v8 & 0xFFFFFFFFFFFFFFF3 | (4 * (a2 & 3)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD4Storage;
}

void UInt32.SIMD4Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[3];
  v3 = (&v5 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1[2] & 3)));
  v4 = *(v1 + 8);
  v5 = *v1;
  *v3 = v4;
  *v2 = v5;
  free(v1);
}

uint64_t (*Int32.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xBFF0uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 12) = *(v9 + (a2 & 7));
  return UInt32.SIMD8Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x379DuLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 12) = *(v9 + (a2 & 7));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD8Storage;
}

void UInt32.SIMD8Storage.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 40);
  *(v4 + (*(v1 + 32) & 7)) = *(v1 + 48);
  v3 = v4[1];
  *v2 = v4[0];
  v2[1] = v3;
  free(v1);
}

void Int32.SIMD16Storage._value.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[2] = a3;
  v4[3] = a4;
  *v4 = a1;
  v4[1] = a2;
}

uint64_t Int32.SIMD16Storage.subscript.getter(char a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[0] = a2;
  v6[1] = a3;
  return *(v6 + (a1 & 0xF));
}

uint64_t (*Int32.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x3C93uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 20) = *(v11 + (a2 & 0xF));
  return UInt32.SIMD16Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0xDC0CuLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 20) = *(v11 + (a2 & 0xF));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD16Storage;
}

__n128 UInt32.SIMD16Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v5 = *(v1 + 9);
  v6 = v1[4] & 0xF;
  v7 = *(v1 + 20);
  v14 = v1[2];
  v15 = v4;
  v12 = v2;
  v13 = v3;
  *(&v12 + v6) = v7;
  v9 = v12;
  v8 = v13;
  v10 = v15;
  v5[2] = v14;
  v5[3] = v10;
  *v5 = v9;
  v5[1] = v8;
  free(v1);
  return result;
}

__n128 Int32.SIMD32Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Int32.SIMD32Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v8;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Int32.SIMD32Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t (*Int32.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x3DB8uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 36) = *(v15 + (a2 & 0x1F));
  return UInt32.SIMD32Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x8A2DuLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 36) = *(v15 + (a2 & 0x1F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD32Storage;
}

__n128 UInt32.SIMD32Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v9 = *(v1 + 17);
  v10 = v1[8] & 0x1F;
  v11 = *(v1 + 36);
  v26 = v1[6];
  v27 = v8;
  v24 = v6;
  v25 = v7;
  v22 = v4;
  v23 = v5;
  v20 = v2;
  v21 = v3;
  *(&v20 + v10) = v11;
  v13 = v20;
  v12 = v21;
  v15 = v22;
  v14 = v23;
  v17 = v24;
  v16 = v25;
  v18 = v27;
  v9[6] = v26;
  v9[7] = v18;
  v9[4] = v17;
  v9[5] = v16;
  v9[2] = v15;
  v9[3] = v14;
  *v9 = v13;
  v9[1] = v12;
  free(v1);
  return result;
}

__n128 Int32.SIMD64Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);
  v9 = *(v1 + 112);
  v10 = *(v1 + 128);
  v11 = *(v1 + 144);
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  v14 = *(v1 + 192);
  v15 = *(v1 + 208);
  v16 = *(v1 + 240);
  *(a1 + 224) = *(v1 + 224);
  *(a1 + 240) = v16;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Int32.SIMD64Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v10 = *(a1 + 128);
  v11 = *(a1 + 144);
  v12 = *(a1 + 160);
  v13 = *(a1 + 176);
  v14 = *(a1 + 192);
  v15 = *(a1 + 208);
  v16 = *(a1 + 240);
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = v16;
  *(v1 + 192) = v14;
  *(v1 + 208) = v15;
  *(v1 + 160) = v12;
  *(v1 + 176) = v13;
  *(v1 + 128) = v10;
  *(v1 + 144) = v11;
  *(v1 + 96) = v8;
  *(v1 + 112) = v9;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Int32.SIMD64Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t (*Int32.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0xD510uLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[32] = a2;
  v5[33] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  *(v5 + 68) = *(v23 + (a2 & 0x3F));
  return UInt32.SIMD64Storage.subscript.modify;
}

double protocol witness for SIMDStorage.init() in conformance Double.SIMD32Storage@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0x6416uLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[32] = a2;
  v5[33] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  *(v5 + 68) = *(v23 + (a2 & 0x3F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD64Storage;
}

void UInt32.SIMD64Storage.subscript.modify(void **a1)
{
  v2 = *a1;
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = v2[9];
  v13 = v2[10];
  v14 = v2[11];
  v15 = v2[12];
  v16 = v2[13];
  v17 = v2[15];
  v18 = *(v2 + 33);
  v19 = v2[16] & 0x3F;
  v20 = *(v2 + 68);
  v50 = v2[14];
  v51 = v17;
  v48 = v15;
  v49 = v16;
  v46 = v13;
  v47 = v14;
  v44 = v11;
  v45 = v12;
  v42 = v9;
  v43 = v10;
  v40 = v7;
  v41 = v8;
  v38 = v5;
  v39 = v6;
  v36 = v3;
  v37 = v4;
  *(&v36 + v19) = v20;
  v22 = v36;
  v21 = v37;
  v24 = v38;
  v23 = v39;
  v26 = v40;
  v25 = v41;
  v28 = v42;
  v27 = v43;
  v30 = v44;
  v29 = v45;
  v32 = v46;
  v31 = v47;
  v34 = v48;
  v33 = v49;
  v35 = v51;
  v18[14] = v50;
  v18[15] = v35;
  v18[12] = v34;
  v18[13] = v33;
  v18[10] = v32;
  v18[11] = v31;
  v18[8] = v30;
  v18[9] = v29;
  v18[6] = v28;
  v18[7] = v27;
  v18[4] = v26;
  v18[5] = v25;
  v18[2] = v24;
  v18[3] = v23;
  *v18 = v22;
  v18[1] = v21;

  free(v2);
}