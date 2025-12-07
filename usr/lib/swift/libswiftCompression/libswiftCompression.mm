_DWORD *_sSo28compression_stream_operationaSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Compression::Algorithm_optional __swiftcall Algorithm.init(rawValue:)(compression_algorithm rawValue)
{
  if (rawValue > 1793)
  {
    switch(rawValue)
    {
      case COMPRESSION_LZBITMAP:
        *v1 = 4;
        return rawValue;
      case COMPRESSION_LZFSE:
        *v1 = 0;
        return rawValue;
      case COMPRESSION_BROTLI:
        *v1 = 5;
        return rawValue;
    }

LABEL_12:
    *v1 = 6;
    return rawValue;
  }

  if (rawValue == COMPRESSION_LZ4)
  {
    *v1 = 2;
    return rawValue;
  }

  if (rawValue == COMPRESSION_ZLIB)
  {
    *v1 = 1;
    return rawValue;
  }

  if (rawValue != COMPRESSION_LZMA)
  {
    goto LABEL_12;
  }

  *v1 = 3;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Algorithm()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_299A4CE48[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Algorithm(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_299A4CE48[v2]);
  return Hasher._finalize()();
}

Compression::FilterOperation_optional __swiftcall FilterOperation.init(rawValue:)(compression_stream_operation rawValue)
{
  if (rawValue == COMPRESSION_STREAM_DECODE)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == COMPRESSION_STREAM_ENCODE)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FilterOperation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FilterOperation(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance FilterOperation@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

Swift::Int FilterError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A99C0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FilterError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A99C0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FilterError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A99C0](v2);
  return Hasher._finalize()();
}

uint64_t OutputFilter.__allocating_init(_:using:bufferCapacity:writingTo:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v12 = *a1;
  v13 = *a2;
  *(v11 + 88) = 0;
  v17 = v12;
  v16 = v13;
  specialized compression_stream.init(operation:algorithm:)(&v17, &v16, v18);
  if (v5)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v18[1];
    *(v11 + 16) = v18[0];
    *(v11 + 32) = v14;
    *(v11 + 48) = v19;
    *(v11 + 56) = swift_slowAlloc();
    *(v11 + 64) = a3;
    *(v11 + 72) = a4;
    *(v11 + 80) = a5;
  }

  return v11;
}

uint64_t OutputFilter.init(_:using:bufferCapacity:writingTo:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = *a2;
  *(v5 + 88) = 0;
  v15 = v10;
  v14 = v11;
  specialized compression_stream.init(operation:algorithm:)(&v15, &v14, v16);
  if (v6)
  {

    type metadata accessor for OutputFilter();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v16[1];
    *(v5 + 16) = v16[0];
    *(v5 + 32) = v12;
    *(v5 + 48) = v17;
    *(v5 + 56) = swift_slowAlloc();
    *(v5 + 64) = a3;
    *(v5 + 72) = a4;
    *(v5 + 80) = a5;
  }

  return v5;
}

void OutputFilter.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  swift_getAssociatedTypeWitness();
  v49 = a3;
  v5 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v44 = &v35 - v7;
  v8 = type metadata accessor for Optional();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v42 = &v35 - v9;
  v10 = swift_checkMetadataState();
  MEMORY[0x2A1C7C4A8](v10);
  v38 = &v35 - v11;
  v39 = v12;
  v40 = v5;
  v47 = swift_getAssociatedTypeWitness();
  v41 = *(v47 - 8);
  MEMORY[0x2A1C7C4A8](v47);
  v46 = &v35 - v13;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v45 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v35 - v18;
  v20 = *(a2 - 8);
  v21 = *(v20 + 48);
  if (v21(v48, 1, a2) == 1)
  {
    goto LABEL_4;
  }

  v37 = *(v15 + 16);
  v37(v19, v48, v14);
  if (v21(v19, 1, a2) == 1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v22 = dispatch thunk of Collection.isEmpty.getter();
  v36 = *(v20 + 8);
  v36(v19, a2);
  if (v22)
  {
LABEL_4:
    OutputFilter.finalize()();
    return;
  }

  if (*(v50 + 88) == 1)
  {
    lazy protocol witness table accessor for type FilterError and conformance FilterError();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    return;
  }

  v24 = v45;
  v37(v45, v48, v14);
  if (v21(v24, 1, a2) == 1)
  {
    goto LABEL_15;
  }

  dispatch thunk of DataProtocol.regions.getter();
  v36(v24, a2);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v42;
  v48 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v27 = v43;
  v45 = *(v43 + 48);
  v28 = (v45)(v26, 1, AssociatedTypeWitness);
  v29 = v44;
  if (v28 == 1)
  {
LABEL_12:
    (*(v41 + 8))(v46, v47);
  }

  else
  {
    v43 = *(v27 + 32);
    v30 = (v27 + 8);
    while (1)
    {
      v31 = (v43)(v29, v26, AssociatedTypeWitness);
      MEMORY[0x2A1C7C4A8](v31);
      v32 = v49;
      v33 = v50;
      *(&v35 - 4) = a2;
      *(&v35 - 3) = v32;
      *(&v35 - 2) = v33;
      *(&v35 - 1) = v29;
      swift_getAssociatedConformanceWitness();
      v34 = v51;
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      if (v34)
      {
        break;
      }

      v51 = 0;
      (*v30)(v29, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      if ((v45)(v26, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_12;
      }
    }

    (*(v41 + 8))(v46, v47);
    (*v30)(v29, AssociatedTypeWitness);
  }
}

uint64_t closure #1 in OutputFilter.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v31 = type metadata accessor for Data.Deallocator();
  v27 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = dispatch thunk of Collection.count.getter();
  result = swift_beginAccess();
  *(a2 + 40) = v10;
  if (!a1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  *(a2 + 32) = a1;
  if (v10 >= 1)
  {
    LODWORD(v29) = *MEMORY[0x29EDB9B50];
    v28 = (v27 + 104);
    v12 = (v27 + 8);
    while (1)
    {
      v13 = *(a2 + 56);
      swift_beginAccess();
      v14 = *(a2 + 64);
      *(a2 + 16) = v13;
      *(a2 + 24) = v14;
      LODWORD(v13) = compression_stream_process((a2 + 16), 0);
      result = swift_endAccess();
      if (v13 == -1)
      {
        lazy protocol witness table accessor for type FilterError and conformance FilterError();
        swift_allocError();
        *v26 = 1;
        return swift_willThrow();
      }

      v15 = *(a2 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        break;
      }

      if (v17 > 0)
      {
        v18 = v31;
        (*v28)(v9, v29, v31);
        Data.Deallocator._deallocator.getter();
        type metadata accessor for __DataStorage();
        swift_allocObject();

        v19 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
        v20 = __DataStorage._capacity.modify();
        *v21 |= 0x8000000000000000;
        v20(v30, 0);
        v22 = specialized Data._Representation.init(_:count:)(v19, v17);
        v24 = v23;

        (*v12)(v9, v18);
        v25 = *(a2 + 72);
        outlined copy of Data._Representation(v22, v24);
        v25(v22, v24);
        outlined consume of Data._Representation(v22, v24);
        result = outlined consume of Data._Representation(v22, v24);
        if (v5)
        {
          return result;
        }
      }

      if (*(a2 + 40) <= 0)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OutputFilter.finalize()()
{
  v2 = v0;
  v24 = type metadata accessor for Data.Deallocator();
  v3 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v2 + 88) & 1) == 0)
  {
    swift_beginAccess();
    *(v2 + 40) = 0;
    v22 = *MEMORY[0x29EDB9B50];
    v20 = (v3 + 8);
    v21 = (v3 + 104);
    while (1)
    {
      v6 = *(v2 + 56);
      swift_beginAccess();
      v7 = *(v2 + 64);
      *(v2 + 16) = v6;
      *(v2 + 24) = v7;
      v8 = compression_stream_process((v2 + 16), 1);
      swift_endAccess();
      if (v8 == COMPRESSION_STATUS_ERROR)
      {
        lazy protocol witness table accessor for type FilterError and conformance FilterError();
        swift_allocError();
        *v19 = 1;
        swift_willThrow();
        return;
      }

      v9 = *(v2 + 24);
      v10 = v7 - v9;
      if (__OFSUB__(v7, v9))
      {
        break;
      }

      if (v10 >= 1)
      {
        v11 = v24;
        (*v21)(v5, v22, v24);
        Data.Deallocator._deallocator.getter();
        type metadata accessor for __DataStorage();
        swift_allocObject();

        v12 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
        v13 = __DataStorage._capacity.modify();
        *v14 |= 0x8000000000000000;
        v13(v23, 0);
        v15 = specialized Data._Representation.init(_:count:)(v12, v10);
        v17 = v16;

        (*v20)(v5, v11);
        v18 = *(v2 + 72);
        outlined copy of Data._Representation(v15, v17);
        v18(v15, v17);
        outlined consume of Data._Representation(v15, v17);
        outlined consume of Data._Representation(v15, v17);
        if (v1)
        {
          return;
        }
      }

      if (v8 == COMPRESSION_STATUS_END)
      {
        *(v2 + 88) = 1;
        (*(v2 + 72))(0, 0xF000000000000000);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t OutputFilter.deinit()
{
  OutputFilter.finalize()();
  if (v1)
  {
    MEMORY[0x29C2A9AD0](v1);
  }

  MEMORY[0x29C2A9B90](*(v0 + 56), -1, -1);
  swift_beginAccess();
  compression_stream_destroy((v0 + 16));
  swift_endAccess();

  return v0;
}

uint64_t OutputFilter.__deallocating_deinit()
{
  OutputFilter.finalize()();
  if (v1)
  {
    MEMORY[0x29C2A9AD0](v1);
  }

  MEMORY[0x29C2A9B90](*(v0 + 56), -1, -1);
  swift_beginAccess();
  compression_stream_destroy((v0 + 16));
  swift_endAccess();

  return swift_deallocClassInstance();
}

uint64_t InputFilter.InputFilterBuffer.withUnsafeBytes<A>(_:)@<X0>(uint64_t (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v43 = a2;
  v44 = a1;
  v47 = a4;
  v37 = *v4;
  v5 = v37;
  v6 = v37[13];
  v7 = v37[11];
  swift_getAssociatedTypeWitness();
  v51 = v6;
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v42 = AssociatedTypeWitness;
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v39 = &v36 - v10;
  v11 = swift_checkMetadataState();
  v38 = *(v11 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v48 = &v36 - v13;
  v14 = *(v7 - 1);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v36 - v15;
  v40 = v8;
  v17 = swift_getAssociatedTypeWitness();
  v49 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v36 - v18;
  if (*(v4 + v5[15]))
  {
    (*(v14 + 16))(v16, v4 + v37[14], v7);
    v20 = v4;
    dispatch thunk of DataProtocol.regions.getter();
    (*(v14 + 8))(v16, v7);
    v21 = *(*v4 + 128);
    swift_beginAccess();
    v37 = v7;
    v22 = v11;
    v23 = v17;
    v24 = v41;
    v25 = v42;
    v26 = v39;
    (*(v41 + 16))(v39, v4 + v21, v42);
    v27 = v48;
    v28 = dispatch thunk of Collection.subscript.read();
    (*(v49 + 16))(v19);
    v28(v50, 0);
    (*(v24 + 8))(v26, v25);
    v29 = (*(v38 + 8))(v27, v22);
    MEMORY[0x2A1C7C4A8](v29);
    v30 = v44;
    *(&v36 - 4) = v45;
    *(&v36 - 3) = v20;
    v31 = v43;
    *(&v36 - 2) = v30;
    *(&v36 - 1) = v31;
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Optional();
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    return (*(v49 + 8))(v19, v23);
  }

  else
  {
    v34 = v45;
    v33 = v46;
    v35 = v47;
    result = v44(0, 0);
    if (!v33)
    {
      return (*(*(v34 - 8) + 56))(v35, 0, 1, v34);
    }
  }

  return result;
}

uint64_t InputFilter.InputFilterBuffer.advance(by:)(uint64_t a1)
{
  v2 = v1;
  v61 = *v1;
  v4 = v61[13];
  v5 = v61[11];
  swift_getAssociatedTypeWitness();
  v58 = v4;
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v53 = &v46 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v59 = *(v8 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v8);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v46 - v12;
  v57 = v5;
  v14 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v16 = &v46 - v15;
  v56 = swift_checkMetadataState();
  result = MEMORY[0x2A1C7C4A8](v56);
  v63 = &v46 - v19;
  v20 = v61[17];
  v21 = *&v2[v20];
  v22 = __OFSUB__(v21, a1);
  v23 = v21 < a1;
  v24 = v21 - a1;
  if (v23)
  {
    lazy protocol witness table accessor for type FilterError and conformance FilterError();
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  *&v2[v20] = v24;
  v26 = *(*v2 + 120);
  v27 = *&v2[v26];
  v22 = __OFSUB__(v27, a1);
  v28 = v27 - a1;
  if (v22)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v46 = *(*v2 + 120);
  v47 = v18;
  *&v2[v26] = v28;
  v29 = v20;
  v30 = v57;
  (*(v14 + 16))(v16, &v2[*(*v2 + 112)], v57);
  dispatch thunk of DataProtocol.regions.getter();
  (*(v14 + 8))(v16, v30);
  v31 = *(*v2 + 128);
  v52 = v29;
  v32 = *&v2[v29];
  v61 = v6;
  v33 = v56;
  if (!v32)
  {
    v34 = v59++;
    v60 = (v34 + 2);
    v35 = (v48 + 2);
    ++v48;
    v49 = v35;
    v50 = v2;
    v51 = v31;
    do
    {
      swift_beginAccess();
      dispatch thunk of Collection.formIndex(after:)();
      swift_endAccess();
      v36 = *v60;
      (*v60)(v13, &v2[v31], v8);
      v37 = v55;
      dispatch thunk of Collection.endIndex.getter();
      swift_getAssociatedConformanceWitness();
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *v59;
      v40 = v37;
      v2 = v50;
      v31 = v51;
      (*v59)(v40, v8);
      v39(v13, v8);
      if (v38)
      {
        break;
      }

      v36(v13, &v2[v31], v8);
      v41 = dispatch thunk of Collection.subscript.read();
      v42 = v53;
      v43 = AssociatedTypeWitness;
      (*v49)(v53);
      v41(v62, 0);
      v39(v13, v8);
      swift_getAssociatedConformanceWitness();
      v44 = dispatch thunk of Collection.count.getter();
      v33 = v56;
      (*v48)(v42, v43);
      *&v2[v52] = v44;
    }

    while (!v44);
  }

  if (!*&v2[v46] || *&v2[v52])
  {
    return (*(v47 + 8))(v63, v33);
  }

  lazy protocol witness table accessor for type FilterError and conformance FilterError();
  swift_allocError();
  *v45 = 0;
  swift_willThrow();
  return (*(v47 + 8))(v63, v33);
}

uint64_t InputFilter.InputFilterBuffer.__deallocating_deinit()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112), *(*v0 + 88));
  v1 = *(*v0 + 128);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return swift_deallocClassInstance();
}

__n128 InputFilter._stream.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v3;
  result = *(v1 + 64);
  *(a1 + 24) = result;
  return result;
}

uint64_t InputFilter.__allocating_init(_:using:bufferCapacity:readingFrom:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  InputFilter.init(_:using:bufferCapacity:readingFrom:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t *InputFilter.init(_:using:bufferCapacity:readingFrom:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *a1;
  v12 = *a2;
  v5[10] = 0;
  *(v5 + 44) = 0;
  v18 = v11;
  v17 = v12;
  v13 = v10;
  specialized compression_stream.init(operation:algorithm:)(&v18, &v17, v19);
  if (v6)
  {

    type metadata accessor for InputFilter(0, *(v13 + 80), *(v13 + 88), v14);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v19[1];
    *(v5 + 5) = v19[0];
    *(v5 + 7) = v15;
    v5[9] = v20;
    v5[2] = a3;
    v5[3] = a4;
    v5[4] = a5;
  }

  return v5;
}

uint64_t InputFilter.readData(ofLength:)(uint64_t result)
{
  if (result < 1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(v1 + 89))
  {
    return 0;
  }

  v3 = result;
  v7 = specialized Data.init(count:)(result);
  v8 = v4;
  MEMORY[0x2A1C7C4A8](v7);
  v6[2] = v1;
  v6[3] = v3;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for closure #1 in InputFilter.readData(ofLength:), v6);
  if (v2)
  {
    return outlined consume of Data._Representation(v7, v8);
  }

  swift_beginAccess();
  v5 = *(v1 + 48);
  result = v3 - v5;
  if (__OFSUB__(v3, v5))
  {
    goto LABEL_11;
  }

  if (result < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  Data._Representation.count.setter();
  return v7;
}

uint64_t closure #1 in InputFilter.readData(ofLength:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v37 = *a2;
  v7 = *(v37 + 80);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v44 = &v32 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v32 - v14;
  if (a1)
  {
    swift_beginAccess();
    a2[5] = a1;
    a2[6] = a3;
    result = swift_beginAccess();
    if (a2[6] >= 1)
    {
      v36 = v7 - 8;
      v40 = (v9 + 16);
      v41 = (v9 + 8);
      v17 = MEMORY[0x29EDCA180];
      v38 = v15;
      v39 = v8;
      while (1)
      {
        if (*(a2 + 89))
        {
          return result;
        }

        v19 = a2[10];
        if (v19 && *(v19 + *(*v19 + 120)))
        {
LABEL_8:
          MEMORY[0x2A1C7C4A8](result);
          *(&v32 - 2) = a2;
          *(&v32 - 1) = v19;

          InputFilter.InputFilterBuffer.withUnsafeBytes<A>(_:)(partial apply for closure #1 in closure #1 in InputFilter.readData(ofLength:), (&v32 - 4), v17 + 8, &v42);

          if (v3)
          {
            return result;
          }

          goto LABEL_9;
        }

        if ((a2[11] & 1) == 0)
        {
          break;
        }

LABEL_7:
        if (v19)
        {
          goto LABEL_8;
        }

        v29 = *(a2 + 88);
        swift_beginAccess();
        v30 = compression_stream_process(a2 + 1, v29);
        swift_endAccess();
        if (v30 == COMPRESSION_STATUS_END)
        {
          *(a2 + 89) = 1;
        }

        else if (v30 == COMPRESSION_STATUS_ERROR)
        {
          goto LABEL_23;
        }

LABEL_9:
        result = swift_beginAccess();
        if (a2[6] <= 0)
        {
          return result;
        }
      }

      result = (a2[3])(a2[2]);
      if (v3)
      {
        return result;
      }

      v20 = *v40;
      v21 = v44;
      (*v40)(v44, v15, v8);
      v22 = *(v7 - 8);
      v23 = *(v22 + 48);
      if (v23(v21, 1, v7) == 1)
      {
        (*v41)(v21, v8);
      }

      else
      {
        v33 = *(v37 + 88);
        v24 = v21;
        v25 = dispatch thunk of Collection.count.getter();
        v34 = *(v22 + 8);
        v34(v24, v7);
        if (v25)
        {
          v26 = v35;
          v20(v35, v38, v39);
          result = v23(v26, 1, v7);
          if (result == 1)
          {
            __break(1u);
            return result;
          }

          *&v42 = v7;
          *(&v42 + 1) = v7;
          *&v43 = v33;
          *(&v43 + 1) = v33;
          v27 = type metadata accessor for InputFilter.InputFilterBuffer(0, &v42);
          v28 = *(v27 + 96);
          v42 = *(v27 + 80);
          v43 = v28;
          type metadata accessor for InputFilter.InputFilterBuffer(0, &v42);
          v18 = swift_allocObject();
          specialized InputFilter.InputFilterBuffer.init(_:)(v26);
          v34(v26, v7);
          goto LABEL_6;
        }
      }

      v18 = 0;
      *(a2 + 88) = 1;
LABEL_6:
      v15 = v38;
      v8 = v39;
      a2[10] = v18;

      result = (*v41)(v15, v8);
      v19 = a2[10];
      v17 = MEMORY[0x29EDCA180];
      goto LABEL_7;
    }
  }

  else
  {
LABEL_23:
    lazy protocol witness table accessor for type FilterError and conformance FilterError();
    swift_allocError();
    *v31 = 1;
    return swift_willThrow();
  }

  return result;
}

compression_stream *InputFilter.deinit()
{
  swift_beginAccess();
  compression_stream_destroy(v0 + 1);
  swift_endAccess();

  return v0;
}

uint64_t InputFilter.__deallocating_deinit()
{
  InputFilter.deinit();

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance compression_algorithm()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance compression_algorithm(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v23 = *MEMORY[0x29EDCA608];
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      outlined consume of Data._Representation(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_299A4C890;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      outlined consume of Data._Representation(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      a1(&v22, &v22 + BYTE6(v5));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v8;
    v3[1] = v9;
    return;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    a1(&v22, &v22);
    return;
  }

  outlined consume of Data._Representation(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_299A4C890;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  v13 = __DataStorage._bytes.getter();
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = __DataStorage._offset.getter();
  v16 = v11 - v15;
  if (__OFSUB__(v11, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v12, v11);
  v18 = v12 - v11;
  if (v17)
  {
    goto LABEL_17;
  }

  v19 = MEMORY[0x29C2A9820]();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  a1(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v10 | 0x8000000000000000;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t))
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;

  v5 = __DataStorage._bytes.getter();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = __DataStorage._offset.getter();
  v8 = v3 - v7;
  if (__OFSUB__(v3, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v4 - v3;
  v10 = MEMORY[0x29C2A9820]();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v6 + v8, v6 + v8 + v11);
}

uint64_t specialized compression_stream.init(operation:algorithm:)@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *a2;
  *&v10.dst_ptr = 0xFFFFFFFFFFFFFFFFLL;
  *&v10.src_size = 0uLL;
  v10.src_ptr = -1;
  result = compression_stream_init(&v10, v4, dword_299A4CE48[v5]);
  if (result)
  {
    lazy protocol witness table accessor for type FilterError and conformance FilterError();
    swift_allocError();
    *v7 = 0;
    return swift_willThrow();
  }

  else
  {
    src_ptr = v10.src_ptr;
    v9 = *&v10.src_size;
    *a3 = *&v10.dst_ptr;
    *(a3 + 16) = src_ptr;
    *(a3 + 24) = v9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FilterError and conformance FilterError()
{
  result = lazy protocol witness table cache variable for type FilterError and conformance FilterError;
  if (!lazy protocol witness table cache variable for type FilterError and conformance FilterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterError and conformance FilterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterError and conformance FilterError;
  if (!lazy protocol witness table cache variable for type FilterError and conformance FilterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterError and conformance FilterError);
  }

  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data._Representation.init(_:count:)(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = MEMORY[0x29C2A9820]();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = specialized Data.InlineData.init(_:)(v3, v7);

  return v8;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

char *specialized InputFilter.InputFilterBuffer.init(_:)(uint64_t a1)
{
  v2 = v1;
  v64 = a1;
  v3 = *v1;
  v4 = v3[13];
  v5 = v3[11];
  swift_getAssociatedTypeWitness();
  v70 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v55 = &v48 - v6;
  v71 = swift_getAssociatedTypeWitness();
  v69 = *(v71 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v71);
  v58 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v68 = &v48 - v9;
  v67 = swift_checkMetadataState();
  v73 = *(v67 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v67);
  v63 = &v48 - v11;
  v12 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v48 - v13;
  v15 = v3[14];
  v17 = v12 + 16;
  v16 = *(v12 + 16);
  v66 = v15;
  v16(&v15[v2], v64, v5);
  v16(v14, &v15[v2], v5);
  v18 = v16;
  v62 = v16;
  v65 = v4;
  v19 = dispatch thunk of Collection.count.getter();
  v20 = *(v12 + 8);
  v20(v14, v5);
  v60 = v20;
  v64 = v12 + 8;
  *&v2[*(*v2 + 120)] = v19;
  v54 = *(*v2 + 136);
  *&v2[v54] = 0;
  v18(v14, &v66[v2], v5);
  v21 = v63;
  dispatch thunk of DataProtocol.regions.getter();
  v20(v14, v5);
  v22 = v67;
  dispatch thunk of Collection.startIndex.getter();
  v23 = *(v73 + 8);
  v73 += 8;
  v61 = v23;
  v23(v21, v22);
  v24 = *(*v2 + 128);
  v25 = v68;
  v26 = v69;
  v27 = v71;
  (*(v69 + 32))(&v2[v24], v68, v71);
  swift_beginAccess();
  v28 = *(v26 + 16);
  v51 = v24;
  v29 = &v2[v24];
  v30 = v25;
  v50 = v26 + 16;
  v49 = v28;
  v28(v25, v29, v27);
  v52 = v17;
  v62(v14, &v66[v2], v5);
  dispatch thunk of DataProtocol.regions.getter();
  v53 = v5;
  v60(v14, v5);
  v31 = v58;
  v32 = v67;
  dispatch thunk of Collection.endIndex.getter();
  v61(v21, v32);
  v33 = v71;
  swift_getAssociatedConformanceWitness();
  v34 = v30;
  v35 = v33;
  LOBYTE(v33) = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v26 + 8);
  v36(v31, v35);
  v69 = v26 + 8;
  v36(v34, v35);
  if ((v33 & 1) == 0)
  {
    v37 = v53;
    v62(v14, &v66[v2], v53);
    v66 = v36;
    v38 = v63;
    dispatch thunk of DataProtocol.regions.getter();
    v60(v14, v37);
    v39 = v68;
    v49(v68, &v2[v51], v71);
    v40 = v67;
    v41 = dispatch thunk of Collection.subscript.read();
    v42 = v56;
    v43 = v55;
    v44 = AssociatedTypeWitness;
    (*(v56 + 16))(v55);
    v41(v72, 0);
    (v66)(v39, v71);
    v61(v38, v40);
    swift_getAssociatedConformanceWitness();
    v45 = dispatch thunk of Collection.count.getter();
    (*(v42 + 8))(v43, v44);
    *&v2[v54] = v45;
  }

  v46 = v59;
  InputFilter.InputFilterBuffer.advance(by:)(0);
  if (v46)
  {
  }

  return v2;
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Algorithm and conformance Algorithm()
{
  result = lazy protocol witness table cache variable for type Algorithm and conformance Algorithm;
  if (!lazy protocol witness table cache variable for type Algorithm and conformance Algorithm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Algorithm and conformance Algorithm);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Algorithm] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Algorithm] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Algorithm] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11Compression9AlgorithmOGMd, &_sSay11Compression9AlgorithmOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Algorithm] and conformance [A]);
  }

  return result;
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

unint64_t lazy protocol witness table accessor for type FilterOperation and conformance FilterOperation()
{
  result = lazy protocol witness table cache variable for type FilterOperation and conformance FilterOperation;
  if (!lazy protocol witness table cache variable for type FilterOperation and conformance FilterOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterOperation and conformance FilterOperation);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Algorithm(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Algorithm(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilterOperation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FilterOperation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for InputFilter.InputFilterBuffer(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

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

uint64_t getEnumTagSinglePayload for compression_stream(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for compression_stream(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void type metadata accessor for compression_stream(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type compression_algorithm and conformance compression_algorithm(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in InputFilter.InputFilterBuffer.withUnsafeBytes<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!result)
  {
    goto LABEL_7;
  }

  v6 = *(v3 + 16);
  v7 = *(*(v3 + 24) + *(**(v3 + 24) + 136));
  if (__OFSUB__(0, v7))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  result = (*(v3 + 32))(a2 - v7, a2);
  if (!v4)
  {
    return (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in InputFilter.readData(ofLength:)(uint64_t result, uint64_t a2)
{
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = *(v2 + 16);
  swift_beginAccess();
  v6 = a2 - v4;
  *(v5 + 56) = v4;
  *(v5 + 64) = v6;
  v7 = compression_stream_process((v5 + 40), *(v5 + 88));
  swift_endAccess();
  if (v7 != COMPRESSION_STATUS_ERROR)
  {
    if (v7 == COMPRESSION_STATUS_END)
    {
      *(v5 + 89) = 1;
    }

    swift_beginAccess();
    v8 = *(v5 + 64);
    result = v6 - v8;
    if (!__OFSUB__(v6, v8))
    {
      return InputFilter.InputFilterBuffer.advance(by:)(result);
    }

    __break(1u);
    goto LABEL_10;
  }

  lazy protocol witness table accessor for type FilterError and conformance FilterError();
  swift_allocError();
  *v9 = 1;
  return swift_willThrow();
}