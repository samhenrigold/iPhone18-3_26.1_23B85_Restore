uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance TexCoord3<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = TexCoord3.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TexCoord3<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return SIMD.hash(into:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TexCoord3<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE248](a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance TexCoord3<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE250](a1, a2, WitnessTable);
}

uint64_t TexCoord3.init(_:_:_:)(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  return TexCoord3.init(_:_:_:)(a1, a2, a3, a4, a5, a6);
}

{
  v9 = *(*(a4 - 8) + 64);
  v10 = MEMORY[0x28223BE20](a1, a6);
  v13(v11, v12, v10);
  memcpy(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

void (*Point3.x.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.x.getter(a2, v10);
  return Point3.x.modify;
}

void (*Point3.y.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.y.getter(a2, v10);
  return Point3.y.modify;
}

void (*Point3.z.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.z.getter(a2, v10);
  return Point3.z.modify;
}

void (*Point3.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v8[3] = v10;
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[5] = v11;
  Point3.subscript.getter(a2, a3);
  return Point3.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Point3<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Point3.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Point3<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return SIMD.hash(into:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Point3<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE248](a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Point3<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE250](a1, a2, WitnessTable);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TexCoord3<A>(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, float (*a6)(uint64_t, uint64_t))
{
  v8.n128_f32[0] = MEMORY[0x28223BE20](a1, a2);
  v10 = MEMORY[0x28223BE20](v9, v8);
  v12(0, v11, v10);
  a6(0, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (a6(1, a4), a6(1, a4), swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), swift_getAssociatedConformanceWitness(), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    a6(2, a4);
    a6(2, a4);
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void (*Vector3.x.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.x.getter(a2, v10);
  return TexCoord3.x.modify;
}

void (*Vector3.y.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.y.getter(a2, v10);
  return TexCoord3.y.modify;
}

void (*Vector3.z.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.z.getter(a2, v10);
  return TexCoord3.z.modify;
}

void (*Vector3.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v8[3] = v10;
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[5] = v11;
  Point3.subscript.getter(a2, a3);
  return TexCoord3.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Vector3<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Vector3.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Vector3<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return SIMD.hash(into:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Vector3<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE248](a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Vector3<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE250](a1, a2, WitnessTable);
}

void (*Normal3.x.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.x.getter(a2, v10);
  return TexCoord3.x.modify;
}

void (*Normal3.y.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.y.getter(a2, v10);
  return TexCoord3.y.modify;
}

void (*Normal3.z.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.z.getter(a2, v10);
  return TexCoord3.z.modify;
}

uint64_t TexCoord2.init(val:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(a3, a1, AssociatedTypeWitness);
}

uint64_t TexCoord2.init()(uint64_t a1, uint64_t a2, float a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of SIMDStorage.init()();
}

float TexCoord2.subscript.getter(uint64_t a1, uint64_t a2, float a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  dispatch thunk of SIMDStorage.subscript.getter();
  return result;
}

void (*Normal3.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v8[3] = v10;
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[5] = v11;
  Point3.subscript.getter(a2, a3);
  return TexCoord3.subscript.modify;
}

Swift::Int Color3.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  SIMD.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Normal3<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Normal3.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Normal3<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return SIMD.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color3<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  SIMD.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Normal3<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE248](a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Normal3<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE250](a1, a2, WitnessTable);
}

float Half.binade.getter@<S0>(float *a1@<X8>)
{
  v2 = *v1;
  v3 = (*v1 >> 23);
  if (v3 == 255)
  {
    v5 = NAN;
    goto LABEL_7;
  }

  if ((LODWORD(v2) & 0x7FFFFF) == 0 || v3 != 0)
  {
    LODWORD(v5) = LODWORD(v2) & 0xFF800000;
LABEL_7:
    result = v5;
    *a1 = v5;
    return result;
  }

  result = COERCE_FLOAT(COERCE_UNSIGNED_INT(*v1 * 8388600.0) & 0xFF800000) * 0.00000011921;
  *a1 = result;
  return result;
}

uint64_t Half.significandWidth.getter()
{
  v1 = *v0 & 0x7FFFFF;
  v2 = __clz(__rbit32(v1));
  if ((*v0 >> 23) && (*v0 >> 23) != 255)
  {
    v5 = 23 - v2;
    if (v1)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else if ((*v0 & 0x7F800000) != 0 || v1 == 0)
  {
    return -1;
  }

  else
  {
    return 32 - (__clz(v1) + v2 + 1);
  }
}

float Half.ulp.getter@<S0>(float *a1@<X8>)
{
  if ((*v1 >> 23))
  {
    if ((*v1 >> 23) != 255)
    {
      result = COERCE_FLOAT(*v1 & 0x7F800000) * 0.00000011921;
      *a1 = result;
      return result;
    }

    v3 = NAN;
  }

  else
  {
    LODWORD(v3) = 1;
  }

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t Half.exponent.getter()
{
  v1 = *v0;
  v2 = (v1 >> 23);
  if (v2 == 255)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = v1 & 0x7FFFFF;
  if (!(v2 | v4))
  {
    return 0x8000000000000000;
  }

  if (v2)
  {
    return v2 - 127;
  }

  if (v4)
  {
    return -118 - __clz(v4);
  }

  __break(1u);
  return result;
}

void Half.nextUp.getter(float *a1@<X8>)
{
  v2 = *v1 + 0.0;
  if (*v1 != INFINITY)
  {
    LODWORD(v2) += (SLODWORD(v2) >> 31) | 1;
  }

  *a1 = v2;
}

uint64_t Half.init<A>(exactly:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1, a5);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2, v9);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    v15 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v16 = dispatch thunk of BinaryInteger._lowWord.getter();
    v17 = *(v8 + 8);
    v17(a1, a2);
    result = (v17)(v11, a2);
    if (v15)
    {
      v14 = v16;
    }

    else
    {
      v14 = v16;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Float and conformance Float();
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v12 = *(v8 + 8);
    v12(a1, a2);
    result = (v12)(v11, a2);
    v14 = *&v18[3];
  }

  *a4 = v14;
  *(a4 + 4) = 0;
  return result;
}

RealityIO::Half __swiftcall Half.init(integerLiteral:)(Swift::Int64 integerLiteral)
{
  result.underlyingValue = integerLiteral;
  *v1 = integerLiteral;
  return result;
}

float Half.magnitude.getter@<S0>(float *a1@<X8>)
{
  result = fabsf(*v1);
  *a1 = result;
  return result;
}

float static Half.* infix(_:_:)@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 * *a2;
  *a3 = result;
  return result;
}

float static Half.*= infix(_:_:)(float *a1, float *a2)
{
  result = *a2 * *a1;
  *a1 = result;
  return result;
}

float static Half.+ infix(_:_:)@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

float static Half.- infix(_:_:)@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

float static Half./ infix(_:_:)@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 / *a2;
  *a3 = result;
  return result;
}

float static Half./= infix(_:_:)(float *a1, float *a2)
{
  result = *a1 / *a2;
  *a1 = result;
  return result;
}

RealityIO::Half __swiftcall Half.advanced(by:)(Swift::Float by)
{
  result.underlyingValue = *v2 + by;
  *v1 = result.underlyingValue;
  return result;
}

uint64_t Half.round(_:)(uint64_t a1)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3, v6);
  result = (*(v4 + 88))(v8, v3);
  if (result == *MEMORY[0x277D84678])
  {
    *v1 = roundf(*v1);
    return result;
  }

  if (result == *MEMORY[0x277D84670])
  {
    *v1 = rintf(*v1);
    return result;
  }

  if (result == *MEMORY[0x277D84680])
  {
    v10 = *v1;
LABEL_7:
    *v1 = ceilf(v10);
    return result;
  }

  if (result == *MEMORY[0x277D84688])
  {
    v10 = *v1;
LABEL_10:
    *v1 = floorf(v10);
    return result;
  }

  if (result == *MEMORY[0x277D84660])
  {
    *v1 = truncf(*v1);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      v10 = *v1;
      if ((*v1 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    Float._roundSlowPath(_:)();
    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Half.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69796C7265646E75 && a2 == 0xEF65756C6156676ELL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Half.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Half.CodingKeys and conformance Half.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Half.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Half.CodingKeys and conformance Half.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Half.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9RealityIO4HalfV10CodingKeys33_886565F19E140D254DF58611C724D99BLLOGMd, &_ss22KeyedEncodingContainerVy9RealityIO4HalfV10CodingKeys33_886565F19E140D254DF58611C724D99BLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Half.CodingKeys and conformance Half.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

void Half.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

Swift::Int Half.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(LODWORD(v2));
  return Hasher._finalize()();
}

uint64_t Half.init(from:)@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9RealityIO4HalfV10CodingKeys33_886565F19E140D254DF58611C724D99BLLOGMd, &_ss22KeyedDecodingContainerVy9RealityIO4HalfV10CodingKeys33_886565F19E140D254DF58611C724D99BLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Half.CodingKeys and conformance Half.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Half(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9RealityIO4HalfV10CodingKeys33_886565F19E140D254DF58611C724D99BLLOGMd, &_ss22KeyedEncodingContainerVy9RealityIO4HalfV10CodingKeys33_886565F19E140D254DF58611C724D99BLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Half.CodingKeys and conformance Half.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for FloatingPoint.init(_:) in conformance Half()
{
  lazy protocol witness table accessor for type Half and conformance Half();
  lazy protocol witness table accessor for type Int and conformance Int();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return static BinaryFloatingPoint<>._convert<A>(from:)();
}

uint64_t protocol witness for FloatingPoint.init<A>(_:) in conformance Half(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Half and conformance Half();
  v9 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();

  return MEMORY[0x2821FB798](a1, a4, a2, v8, a3, v9);
}

float protocol witness for FloatingPoint.ulp.getter in conformance Half@<S0>(float *a1@<X8>)
{
  if ((*v1 >> 23))
  {
    if ((*v1 >> 23) != 255)
    {
      result = COERCE_FLOAT(*v1 & 0x7F800000) * 0.00000011921;
      *a1 = result;
      return result;
    }

    v3 = NAN;
  }

  else
  {
    LODWORD(v3) = 1;
  }

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t protocol witness for FloatingPoint.exponent.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = Half.exponent.getter();
  *a1 = result;
  return result;
}

float protocol witness for static FloatingPoint./ infix(_:_:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 / *a2;
  *a3 = result;
  return result;
}

float protocol witness for static FloatingPoint./= infix(_:_:) in conformance Half(float *a1, float *a2)
{
  result = *a1 / *a2;
  *a1 = result;
  return result;
}

float protocol witness for FloatingPoint.addingProduct(_:_:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *v3 + (*a1 * *a2);
  *a3 = result;
  return result;
}

float protocol witness for FloatingPoint.addProduct(_:_:) in conformance Half(float *a1, float *a2)
{
  result = *v2 + (*a1 * *a2);
  *v2 = result;
  return result;
}

float *protocol witness for static FloatingPoint.minimum(_:_:) in conformance Half@<X0>(float *result@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (*result > *a2 && ((v4 & 0x7FFFFF) == 0 || (~v4 & 0x7F800000) != 0))
  {
    v3 = *a2;
  }

  *a3 = v3;
  return result;
}

float *protocol witness for static FloatingPoint.maximum(_:_:) in conformance Half@<X0>(float *result@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (*a2 >= *result && ((v4 & 0x7FFFFF) == 0 || (~v4 & 0x7F800000) != 0))
  {
    v3 = *a2;
  }

  *a3 = v3;
  return result;
}

float *protocol witness for static FloatingPoint.minimumMagnitude(_:_:) in conformance Half@<X0>(float *result@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (fabsf(*result) > fabsf(*a2) && ((v4 & 0x7FFFFF) == 0 || (~v4 & 0x7F800000) != 0))
  {
    v3 = *a2;
  }

  *a3 = v3;
  return result;
}

float *protocol witness for static FloatingPoint.maximumMagnitude(_:_:) in conformance Half@<X0>(float *result@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (fabsf(*a2) >= fabsf(*result) && ((v4 & 0x7FFFFF) == 0 || (~v4 & 0x7F800000) != 0))
  {
    v3 = *a2;
  }

  *a3 = v3;
  return result;
}

void protocol witness for FloatingPoint.nextUp.getter in conformance Half(float *a1@<X8>)
{
  v2 = *v1 + 0.0;
  if (*v1 != INFINITY)
  {
    LODWORD(v2) += (SLODWORD(v2) >> 31) | 1;
  }

  *a1 = v2;
}

float protocol witness for FloatingPoint.nextDown.getter in conformance Half@<S0>(float *a1@<X8>)
{
  v2 = 0.0 - *v1;
  if (v2 != INFINITY)
  {
    LODWORD(v2) += (SLODWORD(v2) >> 31) | 1;
  }

  result = 0.0 - v2;
  *a1 = 0.0 - v2;
  return result;
}

BOOL specialized BinaryFloatingPoint.isTotallyOrdered(belowOrEqualTo:)(float a1, float a2)
{
  if (a2 < a1)
  {
    return 1;
  }

  v3 = (LODWORD(a2) >> 23);
  v4 = (LODWORD(a1) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = LODWORD(a1) & 0x7FFFFF;
  v8 = a2 >= 0.0 || v5 >= v6;
  if (v6 < v5)
  {
    v8 = LODWORD(a2) >> 31;
  }

  if (v3 < v4)
  {
    v8 = a2 >= 0.0;
  }

  if (v4 < v3)
  {
    v8 = LODWORD(a2) >> 31;
  }

  if ((LODWORD(a2) ^ LODWORD(a1)) >= 0)
  {
    return v8;
  }

  else
  {
    return LODWORD(a2) >> 31;
  }
}

uint64_t specialized FloatingPoint.floatingPointClass.getter(float a1)
{
  if (a1 < 0.0)
  {
    v1 = 5;
  }

  else
  {
    v1 = 6;
  }

  if (a1 < 0.0)
  {
    v2 = 4;
  }

  else
  {
    v2 = 7;
  }

  if ((LODWORD(a1) & 0x7FFFFF) != 0)
  {
    v1 = v2;
  }

  if (a1 < 0.0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 8;
  }

  if (a1 < 0.0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 9;
  }

  if ((LODWORD(a1) & 0x7FFFFF) != 0)
  {
    v5 = (LODWORD(a1) >> 22) & 1;
  }

  else
  {
    v5 = v4;
  }

  if ((LODWORD(a1) >> 23) != 255)
  {
    v5 = v3;
  }

  if ((LODWORD(a1) >> 23))
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

float protocol witness for ExpressibleByFloatLiteral.init(floatLiteral:) in conformance Half@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float protocol witness for static SignedNumeric.- prefix(_:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = 0.0 - *a1;
  *a2 = result;
  return result;
}

float protocol witness for SignedNumeric.negate() in conformance Half()
{
  result = 0.0 - *v0;
  *v0 = result;
  return result;
}

float protocol witness for Strideable.distance(to:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = *a1 - *v2;
  *a2 = result;
  return result;
}

float protocol witness for Strideable.advanced(by:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

float *protocol witness for static Strideable._step(after:from:by:) in conformance Half(float *result, uint64_t a2, char a3, float *a4, float *a5, float *a6)
{
  v6 = a2;
  v7 = *a6;
  if (a3)
  {
    v8 = v7 + *a4;
LABEL_5:
    *result = v8;
    return v6;
  }

  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v8 = *a5 + (v7 * v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Half()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(LODWORD(v2));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Half()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Half()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(LODWORD(v2));
  return Hasher._finalize()();
}

float protocol witness for Numeric.magnitude.getter in conformance Half@<S0>(float *a1@<X8>)
{
  result = fabsf(*v1);
  *a1 = result;
  return result;
}

float protocol witness for static Numeric.* infix(_:_:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 * *a2;
  *a3 = result;
  return result;
}

float protocol witness for static Numeric.*= infix(_:_:) in conformance Half(float *a1, float *a2)
{
  result = *a2 * *a1;
  *a1 = result;
  return result;
}

float protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

float protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Half(float *a1, float *a2)
{
  result = *a2 + *a1;
  *a1 = result;
  return result;
}

float protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

float protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Half(float *a1, float *a2)
{
  result = *a1 - *a2;
  *a1 = result;
  return result;
}

float protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance Half@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

void HalfSIMDStorage.init()(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + 8))();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v3)
    {
      v4 = v3;
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 16) = v4;
      bzero((v5 + 32), 4 * v4);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    *a2 = v5;
  }
}

unint64_t HalfSIMDStorage.subscript.getter@<X0>(unint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    *a2 = *(*v2 + 4 * result + 32);
    return result;
  }

  __break(1u);
  return result;
}

float key path getter for HalfSIMDStorage.subscript(_:) : <A>HalfSIMDStorage<A>A@<S0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, float *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v8 = v4;
  HalfSIMDStorage.subscript.getter(v5, &v7);
  result = v7;
  *a3 = v7;
  return result;
}

uint64_t key path setter for HalfSIMDStorage.subscript(_:) : <A>HalfSIMDStorage<A>A(int *a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v5 = *a1;
  return HalfSIMDStorage.subscript.setter(&v5, v3);
}

uint64_t HalfSIMDStorage.subscript.setter(int *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  *v2 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    *(v5 + 4 * a2 + 32) = v4;
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*HalfSIMDStorage.subscript.modify(uint64_t (*result)(uint64_t a1, char a2), unint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  *(result + 1) = a3;
  *(result + 2) = v3;
  *result = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v3 + 16) > a2)
  {
    *(result + 6) = *(*v3 + 4 * a2 + 32);
    return HalfSIMDStorage.subscript.modify;
  }

  __break(1u);
  return result;
}

uint64_t HalfSIMDStorage.subscript.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v6 = *(a1 + 24);
    v4 = &v6;
  }

  else
  {
    v7 = *(a1 + 24);
    v4 = &v7;
  }

  return HalfSIMDStorage.subscript.setter(v4, v3);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance HalfSIMDStorage<A>(uint64_t (**a1)(), unint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = HalfSIMDStorage.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance HalfSIMDStorage<A>;
}

void protocol witness for SIMDStorage.subscript.modify in conformance Color3<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t specialized TexCoord3.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  MEMORY[0x28223BE20](a1, a4);
  memcpy(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t specialized Color4.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  MEMORY[0x28223BE20](a1, a4);
  memcpy(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t specialized Color3.red.setter(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  MEMORY[0x28223BE20](a1, a4);
  memcpy(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t specialized TexCoord2.x.setter(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  MEMORY[0x28223BE20](a1, a4);
  memcpy(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of SIMDStorage.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

float specialized Float.init(sign:exponent:significand:)(char a1, unint64_t a2, float a3)
{
  result = -a3;
  if ((a1 & 1) == 0)
  {
    result = a3;
  }

  v5 = (LODWORD(a3) >> 23);
  if (v5 != 255 && v5 | LODWORD(a3) & 0x7FFFFF)
  {
    if (a2 >= -126)
    {
      if (a2 >= 128)
      {
        if (a2 >= 0x17D)
        {
          a2 = 381;
        }

        do
        {
          a2 -= 127;
          result = result * 1.7014e38;
        }

        while (a2 > 0x7F);
      }
    }

    else
    {
      v6 = -378;
      if (a2 > 0xFFFFFFFFFFFFFE86)
      {
        v6 = a2;
      }

      v7 = v6 + 126;
      result = result * 1.1755e-38;
      v8 = v6 + 252;
      v9 = __CFADD__(a2, 252);
      if (a2 >= 0xFFFFFFFFFFFFFF04)
      {
        LODWORD(a2) = v7;
      }

      else
      {
        LODWORD(a2) = v8;
      }

      if (!v9)
      {
        result = result * 1.1755e-38;
      }
    }

    return result * COERCE_FLOAT(((a2 << 23) + 1065353216) & 0x7F800000);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Half.CodingKeys and conformance Half.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys;
  if (!lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys;
  if (!lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys;
  if (!lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys;
  if (!lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys);
  }

  return result;
}

uint64_t associated type witness table accessor for SIMDStorage.Scalar : Decodable in Color3<A>(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type Frame4D and conformance Frame4D()
{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int64 and conformance Int64()
{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

uint64_t associated type witness table accessor for SIMDStorage.Scalar : Decodable in TexCoord2<A>(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  result = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }

  return result;
}

uint64_t keypath_get_24Tm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, void, void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = a4(0, *(a2 + a3 - 24), *(a2 + a3 - 16), *(a2 + a3 - 8));
  return a5(v6, v7);
}

uint64_t keypath_set_25Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void, void, void, void))
{
  v6 = *a3;
  v7 = a5(0, *(a3 + a4 - 24), *(a3 + a4 - 16), *(a3 + a4 - 8));
  return specialized Color4.subscript.setter(a1, v6, v7, v8);
}

uint64_t keypath_get_64Tm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = a4(0, *(a2 + a3 - 16), *(a2 + a3 - 8));
  return a5(v6, v7);
}

uint64_t keypath_set_65Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  v6 = *a3;
  v7 = a5(0, *(a3 + a4 - 16), *(a3 + a4 - 8));
  return specialized TexCoord3.subscript.setter(a1, v6, v7, v8);
}

uint64_t type metadata completion function for Color3(uint64_t a1, float a2)
{
  result = swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Color3(unsigned __int16 *a1, unsigned int a2, uint64_t a3, float a4)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
LABEL_23:
    v13 = *(v6 + 48);

    return v13(a1);
  }

  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((a2 - v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v7)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v7 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for Color3(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4, float a5)
{
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  if (a3 <= v9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
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
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = ~v9 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_39:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v10] = 0;
  }

  else if (v11)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v17 = *(v8 + 56);

  v17(a1, a2);
}

void type metadata completion function for ManagedColor(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ToolsFoundations.Token?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ManagedColor(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *storeEnumTagSinglePayload for ManagedColor(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void type metadata accessor for ToolsFoundations.Token?()
{
  if (!lazy cache variable for type metadata for ToolsFoundations.Token?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ToolsFoundations.Token?);
    }
  }
}

uint64_t type metadata completion function for TexCoord2(uint64_t a1, float a2)
{
  result = swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TexCoord2(unsigned __int16 *a1, unsigned int a2, uint64_t a3, float a4)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
LABEL_23:
    v13 = *(v6 + 48);

    return v13(a1);
  }

  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((a2 - v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v7)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v7 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for TexCoord2(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4, float a5)
{
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  if (a3 <= v9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
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
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = ~v9 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_39:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v10] = 0;
  }

  else if (v11)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v17 = *(v8 + 56);

  v17(a1, a2);
}

uint64_t getEnumTagSinglePayload for Half(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Half(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t type metadata instantiation function for HalfSIMDStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __RKEntityMoveEase.init(inputs:)@<X0>(uint64_t a2@<X8>)
{
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v14);
  if (v3)
  {

LABEL_4:
    lazy protocol witness table accessor for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v5 = v14;
  v6 = RIOPxrTfTokenCopyString();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v15._countAndFlagsBits = v7;
  v15._object = v9;
  v10 = specialized __RKEntityMoveEaseTypeUSD.init(rawValue:)(v15);
  if (v10 == 4)
  {
    goto LABEL_4;
  }

  v12 = type metadata accessor for __RKEntityMoveEase();
  if (v10)
  {
    v13 = MEMORY[0x277CDAE18];
  }

  else
  {
    v13 = MEMORY[0x277CDAE10];
  }

  return (*(*(v12 - 8) + 104))(a2, *v13, v12);
}

uint64_t __RKEntityMoveEaseType.init(inputs:)@<X0>(uint64_t a2@<X8>)
{
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v14);
  if (v3)
  {

LABEL_4:
    lazy protocol witness table accessor for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v5 = v14;
  v6 = RIOPxrTfTokenCopyString();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v15._countAndFlagsBits = v7;
  v15._object = v9;
  v10 = specialized __RKEntityMoveEaseTypeUSD.init(rawValue:)(v15);
  if (v10 == 4)
  {
    goto LABEL_4;
  }

  v12 = type metadata accessor for __RKEntityMoveEaseType();
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v13 = MEMORY[0x277CDAE68];
    }

    else
    {
      v13 = MEMORY[0x277CDAE58];
    }
  }

  else
  {
    v13 = MEMORY[0x277CDAE60];
  }

  return (*(*(v12 - 8) + 104))(a2, *v13, v12);
}

unint64_t lazy protocol witness table accessor for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError);
  }

  return result;
}

unint64_t specialized __RKEntityMoveEaseTypeUSD.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveEaseTypeUSD.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError);
  }

  return result;
}

uint64_t static EntityBuilder.OutputName.getter()
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v0 = static EntityBuilder.OutputName;

  return v0;
}

void one-time initialization function for OutputName(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, void *a4)
{
  v6 = a2(a1);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

uint64_t EntityBuilder.deinit()
{
  RIOBuilderSetSwiftObject();

  return v0;
}

uint64_t EntityBuilder.__deallocating_deinit()
{
  RIOBuilderSetSwiftObject();

  return swift_deallocClassInstance();
}

uint64_t EntityProxy.deinit()
{
  v1 = OBJC_IVAR____TtC9RealityIO11EntityProxy_reEntity;
  __AssetRef.__as<A>(_:)();
  RERelease();
  v2 = type metadata accessor for __EntityRef();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t EntityProxy.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9RealityIO11EntityProxy_reEntity;
  __AssetRef.__as<A>(_:)();
  RERelease();
  v2 = type metadata accessor for __EntityRef();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return swift_deallocClassInstance();
}

uint64_t EntityProxy.name.getter()
{
  __AssetRef.__as<A>(_:)();
  REEntityGetName();
  return String.init(cString:)();
}

uint64_t EntityProxy.parent.getter()
{
  v0 = MEMORY[0x277D841D8];
  __AssetRef.__as<A>(_:)();
  Parent = REEntityGetParent();
  if (!Parent)
  {
    return 0;
  }

  v2 = Parent;
  type metadata accessor for EntityProxy(0);
  v3 = swift_allocObject();
  v5[3] = v0;
  v5[0] = v2;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(v5);
  RERetain();
  return v3;
}

uint64_t type metadata accessor for EntityProxy(uint64_t a1)
{
  result = type metadata singleton initialization cache for EntityProxy;
  if (!type metadata singleton initialization cache for EntityProxy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for EntityProxy(uint64_t a1, float a2)
{
  result = type metadata accessor for __EntityRef();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t EntityBuilder.generateSwiftOutput(for:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OutputEntity = RIOBuilderEntityBuilderGetOutputEntity();
  if (OutputEntity)
  {
    MEMORY[0x28223BE20](OutputEntity, v7);
    v14[2] = v3;
    v14[3] = a1;
    v14[4] = a2;
    v14[5] = v8;
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for closure #1 in EntityBuilder.generateSwiftOutput(for:inputs:);
    *(v9 + 24) = v14;
    v17 = partial apply for thunk for @callee_guaranteed () -> ();
    v18 = v9;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v16 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v16 + 1) = &block_descriptor_22;
    v10 = _Block_copy(&aBlock);

    RIOBuilderInputsPerformBlockSyncOnEngineQueue();
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v13 = objc_getAssociatedObject(v3, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (!v13)
  {
    goto LABEL_8;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v19, &aBlock);
  type metadata accessor for Outputs();
  swift_dynamicCast();
  aBlock = 0u;
  v16 = 0u;

  Outputs.subscript.setter(&aBlock, a1, a2);
}

uint64_t closure #1 in EntityBuilder.generateSwiftOutput(for:inputs:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = objc_getAssociatedObject(a1, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v12, &v13);
    type metadata accessor for Outputs();
    swift_dynamicCast();
    v10 = type metadata accessor for EntityProxy(0);
    v11 = swift_allocObject();
    v14 = MEMORY[0x277D841D8];
    *&v13 = a4;

    static __AssetRef.__fromCore(_:)();
    __swift_destroy_boxed_opaque_existential_0(&v13);
    RERetain();
    v14 = v10;
    *&v13 = v11;
    Outputs.subscript.setter(&v13, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __RKEntityEmphasisAnimationType.init(inputs:)@<X0>(uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v14);
  if (v2)
  {

LABEL_5:
    lazy protocol witness table accessor for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v8 = v14;
  v9 = RIOPxrTfTokenCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  __RKEntityEmphasisAnimationType.init(rawValue:)();
  v10 = type metadata accessor for __RKEntityEmphasisAnimationType();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    outlined destroy of __RKEntityEmphasisAnimationType?(v7);
    goto LABEL_5;
  }

  return (*(v11 + 32))(a2, v7, v10);
}

unint64_t lazy protocol witness table accessor for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError);
  }

  return result;
}

uint64_t outlined destroy of __RKEntityEmphasisAnimationType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized static ColorSpaces.ocioName(fromCGColor:)(CGColor *a1)
{
  v1 = CGColorGetColorSpace(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CGColorSpaceCopyName(v1);

    if (v3)
    {
      v4 = MEMORY[0x266710320](v3);
      if (v4)
      {
        v5 = v4;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v6 = v5;
          static Array._conditionallyBridgeFromObjectiveC(_:result:)();
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t one-time initialization function for rioAudio()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.rioAudio);
  __swift_project_value_buffer(v0, static Logger.rioAudio);
  return Logger.init(subsystem:category:)();
}

uint64_t closure #1 in static ActionBuilder.generateImpulseActionSpecifications(inputs:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for __RKEntityActionSpecification();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a3, v6, v14);
  __RKEntityForceActionArguments.init(target:force:velocity:)();
  (*(v12 + 104))(v16, *MEMORY[0x277CDAF98], v11);
  v17 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *a4 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    *a4 = v17;
  }

  v17[2] = v20 + 1;
  return (*(v12 + 32))(v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v20, v16, v11);
}

uint64_t specialized static ActionBuilder.generateImpulseActionSpecifications(inputs:)()
{
  v0 = type metadata accessor for __RKEntityGroupActionOrder();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA7Vector3VySdG_Tt1g5(&v15);
  v6.n128_u64[0] = vcvt_f32_f64(v15);
  *&v7 = v16;
  v6.n128_u64[1] = v7;
  *&v15.f64[0] = MEMORY[0x277D84F90];
  *&v8 = MEMORY[0x28223BE20](v5, v6);
  *&v14[-32] = &v15;
  *&v14[-16] = v8;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateImpulseActionSpecifications(inputs:), &v14[-48]);
  result = *&v15.f64[0];
  if (*(*&v15.f64[0] + 16) > 1uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v10 = type metadata accessor for __RKEntityActionSpecification();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2619891C0;
    (*(v1 + 104))(v4, *MEMORY[0x277CDAEF8], v0);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    (*(v11 + 104))(v13 + v12, *MEMORY[0x277CDAFA0], v10);

    return v13;
  }

  return result;
}

uint64_t specialized Builder.generateOutputs()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, &static BuilderAssociatedKeys.CoreReference);
  result = swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v9, &v10);
    type metadata accessor for RIOBuilderRef(0);
    swift_dynamicCast();
    v4 = RIOBuilderOutputsCreate();

    v5 = RIOBuilderOutputsGetSwiftObject();
    type metadata accessor for Outputs();
    if (v5)
    {
      v6 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      v6 = Outputs.init(core:)(v4);
    }

    v7 = v6;
    swift_beginAccess();

    objc_setAssociatedObject(v1, &static BuilderAssociatedKeys.OutputsReference, v7, 1);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _BaseBuilder.deinit()
{
  RIOBuilderSetSwiftObject();

  return v0;
}

uint64_t _BaseBuilder.stageSubscription.getter()
{
  v0 = RIOBuilderCopyDirtyStageSubscription();
  v1 = RIOBuilderDirtyStageSubscriptionCopyDirtyStageDescriptors();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    type metadata accessor for RIOBuilderDirtyStageDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v4 = v3;
    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_13:

      v9 = MEMORY[0x277D84F90];
LABEL_14:
      v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO15StageDirtyStateC_SayAFGTt0g5Tf4g_n(v9);

      return v10;
    }
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  v11 = v3;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26670F670](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      ++v7;
      specialized StageDirtyState.__allocating_init(core:)(v8);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v7);

    v9 = v11;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t _BaseBuilder.buildOrder.getter@<X0>(_BYTE *a1@<X8>)
{
  result = RIOBuilderCopyBuildOrder();
  if (result >= 4)
  {
    type metadata accessor for RIOBuilderBuildOrder(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

char *_BaseBuilder.inputDescriptors()()
{
  v0 = RIOBuilderCopyInputsDescriptor();
  v1 = RIOBuilderInputsDescriptorCopyInputDescriptors();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    *&v33 = 0;
    type metadata accessor for RIOBuilderInputDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v4 = v3;
    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_13:

      v7 = MEMORY[0x277D84F90];
LABEL_19:
      v26 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO15InputDescriptorO_SayAFGTt0g5Tf4g_n(v7);

      return v26;
    }
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  v37 = v3;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = v37;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = MEMORY[0x26670F670](v8, v4);
        static InputDescriptor.create(from:)(v9, &v33);
        swift_unknownObjectRelease();
        v10 = v33;
        v11 = v34;
        v12 = v35;
        v13 = v36;
        v37 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          v29 = v34;
          v31 = v33;
          v27 = v35;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
          v12 = v27;
          v11 = v29;
          v10 = v31;
          v7 = v37;
        }

        ++v8;
        *(v7 + 16) = v15 + 1;
        v16 = v7 + 56 * v15;
        *(v16 + 32) = v10;
        *(v16 + 48) = v11;
        *(v16 + 64) = v12;
        *(v16 + 80) = v13;
      }

      while (v5 != v8);
    }

    else
    {
      v17 = 32;
      do
      {
        v18 = *(v4 + v17);
        static InputDescriptor.create(from:)(v18, &v33);

        v19 = v33;
        v20 = v34;
        v21 = v35;
        v22 = v36;
        v37 = v7;
        v24 = *(v7 + 16);
        v23 = *(v7 + 24);
        if (v24 >= v23 >> 1)
        {
          v30 = v34;
          v32 = v33;
          v28 = v35;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
          v21 = v28;
          v20 = v30;
          v19 = v32;
          v7 = v37;
        }

        *(v7 + 16) = v24 + 1;
        v25 = v7 + 56 * v24;
        *(v25 + 32) = v19;
        *(v25 + 48) = v20;
        *(v25 + 64) = v21;
        *(v25 + 80) = v22;
        v17 += 8;
        --v5;
      }

      while (v5);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

char *_BaseBuilder.outputDescriptors()()
{
  v0 = RIOBuilderCopyOutputsDescriptor();
  v1 = RIOBuilderOutputsDescriptorCopyOutputDescriptors();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    type metadata accessor for RIOBuilderOutputDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v4 = v3;
    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_13:

      v8 = MEMORY[0x277D84F90];
LABEL_19:
      v40 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16OutputDescriptorO_SayAFGTt0g5Tf4g_n(v8);

      return v40;
    }
  }

  v24 = v4;
  v5 = __CocoaSet.count.getter();
  v4 = v24;
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  v6 = v4;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v41 = v0;
    v42 = v6;
    v8 = v3;
    v9 = v6;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        MEMORY[0x26670F670](v10, v9);
        v11 = RIOBuilderOutputDescriptorCopyOutputName();
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = RIOBuilderOutputDescriptorCopyOutputIdentifier();
        v16 = RIOPxrTfTokenCopyString();
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = RIOBuilderOutputDescriptorCopyOptionality();
        swift_unknownObjectRelease();
        v22 = *(v8 + 16);
        v21 = *(v8 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        }

        ++v10;
        *(v8 + 16) = v22 + 1;
        v23 = v8 + 40 * v22;
        *(v23 + 32) = v12;
        *(v23 + 40) = v14;
        *(v23 + 48) = v17;
        *(v23 + 56) = v19;
        *(v23 + 64) = v20 == 0;
        v9 = v6;
      }

      while (v5 != v10);
    }

    else
    {
      v25 = 32;
      do
      {
        v26 = *(v9 + v25);
        v27 = RIOBuilderOutputDescriptorCopyOutputName();
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = RIOBuilderOutputDescriptorCopyOutputIdentifier();
        v32 = RIOPxrTfTokenCopyString();
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = RIOBuilderOutputDescriptorCopyOptionality();
        v38 = *(v8 + 16);
        v37 = *(v8 + 24);
        if (v38 >= v37 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        }

        *(v8 + 16) = v38 + 1;
        v39 = v8 + 40 * v38;
        *(v39 + 32) = v28;
        *(v39 + 40) = v30;
        *(v39 + 48) = v33;
        *(v39 + 56) = v35;
        *(v39 + 64) = v36 == 0;
        v25 += 8;
        --v5;
        v9 = v42;
      }

      while (v5);
    }

    v0 = v41;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t _BaseBuilder.__deallocating_deinit()
{
  RIOBuilderSetSwiftObject();

  return swift_deallocClassInstance();
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26670F670](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26670F670](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t specialized static _BaseBuilder.create(from:)(void *a1)
{
  v2 = RIOBuilderGetSwiftObject();
  if (v2)
  {
    v3 = v2;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      return v3;
    }

    swift_unknownObjectRelease();
  }

  v4 = RIOBuilderCopyIdentifier();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  if (static _CFObject.== infix(_:_:)())
  {
    type metadata accessor for EntityBuilder();
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    swift_beginAccess();
    v5 = a1;

    objc_setAssociatedObject(v6, &static BuilderAssociatedKeys.CoreReference, v5, 1);
    swift_endAccess();

    RIOBuilderSetSwiftObject();

    specialized Builder.generateOutputs()();
  }

  else
  {

    return 0;
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

uint64_t SceneDescriptionFoundations.Path.parentPath()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfPathCopyParentPath();
  *a1 = result;
  return result;
}

void *SceneDescriptionFoundations.AssetPath.referencedData.getter()
{
  v0 = RIOPxrSdfAssetPathResolvedPathCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.utf8CString.getter();

  v1 = RIOPxrUtilsCopyCFDataWithArAssetPath();

  if (v1)
  {
    v2 = v1;
    v1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    lazy protocol witness table accessor for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error();
    swift_allocError();
    swift_willThrow();
  }

  return v1;
}

Swift::String __swiftcall SceneDescriptionFoundations.Path.name()()
{
  v0 = RIOPxrSdfPathCopyName();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a6 - 8);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v15, v13);
  if (v9)
  {
    return (*(v12 + 32))(a9, v15, a6);
  }

  return result;
}

uint64_t static SceneDescriptionFoundations.Path.Empty.getter@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPathCreateEmptyPath();
  *a2 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.AssetPath.Empty.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfAssetPathCreateEmptyPath();
  *a1 = result;
  return result;
}

uint64_t SceneDescriptionFoundations.Path.primPath()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfPathCopyPrimPath();
  *a1 = result;
  return result;
}

Swift::String __swiftcall SceneDescriptionFoundations.Path.elementString()()
{
  v0 = RIOPxrSdfPathCopyElementString();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t SceneDescriptionFoundations.Path.description.getter()
{
  v0 = RIOPxrSdfPathCopyString();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SceneDescriptionFoundations.Path()
{
  v0 = RIOPxrSdfPathCopyString();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t static SceneDescriptionFoundations.Path.AbsoluteRoot.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfPathCreateAbsoluteRootPath();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.Path.ReflexiveRelative.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfPathCreateReflexiveRelativePath();
  *a1 = result;
  return result;
}

uint64_t String.isIsValidPathIdentifier()(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = String.utf8CString.getter();
  v5 = a3(v4 + 32);

  return v5;
}

uint64_t SceneDescriptionFoundations.Path.targetPath()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfPathCopyTargetPath();
  *a1 = result;
  return result;
}

char *SceneDescriptionFoundations.Path.prefixes()(uint64_t (*a1)(void))
{
  v2 = a1(*v1);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrSdfPathRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v5 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_13:

      return MEMORY[0x277D84F90];
    }
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = v4;
    if ((v5 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = MEMORY[0x26670F670](i, v5);
        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          v13 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v10 = v13;
        }

        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v10;
      }
    }

    else
    {
      v14 = 32;
      do
      {
        v15 = *(v4 + 16);
        v16 = *(v4 + 24);
        v17 = *(v5 + v14);
        if (v15 >= v16 >> 1)
        {
          v18 = v16 > 1;
          v19 = v17;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v15 + 1, 1);
          v17 = v19;
        }

        *(v4 + 16) = v15 + 1;
        *(v4 + 8 * v15 + 32) = v17;
        v14 += 8;
        --v6;
      }

      while (v6);
    }

    return v8;
  }

  __break(1u);
  return result;
}

Swift::tuple_String_String __swiftcall SceneDescriptionFoundations.Path.variantSelection()()
{
  v0 = RIOPxrSdfPathCopyVariantSelection();
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v1 = MEMORY[0x277D84F90];
    v2 = *(MEMORY[0x277D84F90] + 16);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    v3 = 0;
    v7 = 0xE000000000000000;
    v4 = 0xE000000000000000;
    goto LABEL_6;
  }

  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  v1 = MEMORY[0x277D84F90];
  v2 = *(MEMORY[0x277D84F90] + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = v1 + 32 + 16 * v2;
  v6 = *(v5 - 16);
  v7 = *(v5 - 8);

LABEL_6:

  v8 = v3;
  v9 = v4;
  v10 = v6;
  v11 = v7;
  result._1._object = v11;
  result._1._countAndFlagsBits = v10;
  result._0._object = v9;
  result._0._countAndFlagsBits = v8;
  return result;
}

uint64_t SceneDescriptionFoundations.Path.primOrPrimVariantSelectionPath()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfPathCopyPrimOrPrimVariantSelectionPath();
  *a1 = result;
  return result;
}

uint64_t SceneDescriptionFoundations.Path.absoluteRootOrPrimPath()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfPathCopyAbsoluteRootOrPrimPath();
  *a1 = result;
  return result;
}

Swift::Bool __swiftcall SceneDescriptionFoundations.Path.hasPrefix(_:)(Swift::String a1)
{
  String.utf8CString.getter();
  v1 = RIOPxrSdfPathCreateFromCString();

  HasPrefix = RIOPxrSdfPathHasPrefix();

  return HasPrefix;
}

void SceneDescriptionFoundations.Path.replaceName(_:)(void *a1)
{
  CopyReplacingName = RIOPxrSdfPathCreateCopyReplacingName();

  *v1 = CopyReplacingName;
}

uint64_t SceneDescriptionFoundations.Path.replacingName(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPathCreateCopyReplacingName();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall SceneDescriptionFoundations.Path.stripAllVariantSelections()()
{
  CopyStrippingAllVariantSelections = RIOPxrSdfPathCreateCopyStrippingAllVariantSelections();

  *v0 = CopyStrippingAllVariantSelections;
}

uint64_t SceneDescriptionFoundations.Path.strippingAllVariantSelections()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfPathCreateCopyStrippingAllVariantSelections();
  *a1 = result;
  return result;
}

void SceneDescriptionFoundations.Path.append(_:)(void *a1)
{
  CopyAppendingPath = RIOPxrSdfPathCreateCopyAppendingPath();

  *v1 = CopyAppendingPath;
}

uint64_t SceneDescriptionFoundations.Path.appending(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPathCreateCopyAppendingPath();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.appendChild(_:)(void *a1)
{
  CopyAppendingChild = RIOPxrSdfPathCreateCopyAppendingChild();

  *v1 = CopyAppendingChild;
}

uint64_t SceneDescriptionFoundations.Path.appendingChild(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPathCreateCopyAppendingChild();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.appendProperty(_:)(void *a1)
{
  CopyAppendingProperty = RIOPxrSdfPathCreateCopyAppendingProperty();

  *v1 = CopyAppendingProperty;
}

uint64_t SceneDescriptionFoundations.Path.appendingProperty(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPathCreateCopyAppendingProperty();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall SceneDescriptionFoundations.Path.appendVariantSelection(variantSet:variant:)(Swift::String variantSet, Swift::String variant)
{
  String.utf8CString.getter();
  String.utf8CString.getter();
  CopyAppendingVariantSelection = RIOPxrSdfPathCreateCopyAppendingVariantSelection();

  *v2 = CopyAppendingVariantSelection;
}

uint64_t SceneDescriptionFoundations.Path.appendingVariantSelection(variantSet:variant:)@<X0>(uint64_t *a5@<X8>)
{
  String.utf8CString.getter();
  String.utf8CString.getter();
  CopyAppendingVariantSelection = RIOPxrSdfPathCreateCopyAppendingVariantSelection();

  *a5 = CopyAppendingVariantSelection;
  return result;
}

void SceneDescriptionFoundations.Path.appendTarget(_:)(void *a1)
{
  CopyAppendingTarget = RIOPxrSdfPathCreateCopyAppendingTarget();

  *v1 = CopyAppendingTarget;
}

uint64_t SceneDescriptionFoundations.Path.appendingTarget(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPathCreateCopyAppendingTarget();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.appendRelationalAttribute(_:)(void *a1)
{
  CopyAppendingRelationalAttribute = RIOPxrSdfPathCreateCopyAppendingRelationalAttribute();

  *v1 = CopyAppendingRelationalAttribute;
}

uint64_t SceneDescriptionFoundations.Path.appendingRelationalAttribute(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPathCreateCopyAppendingRelationalAttribute();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.replaceTargetPath(_:)(void *a1)
{
  CopyReplacingTargetPath = RIOPxrSdfPathCreateCopyReplacingTargetPath();

  *v1 = CopyReplacingTargetPath;
}

uint64_t SceneDescriptionFoundations.Path.replacingTargetPath(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPathCreateCopyReplacingTargetPath();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.appendMapper(_:)(void *a1)
{
  CopyAppendingMapper = RIOPxrSdfPathCreateCopyAppendingMapper();

  *v1 = CopyAppendingMapper;
}

uint64_t SceneDescriptionFoundations.Path.appendingMapper(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPathCreateCopyAppendingMapper();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.appendMapperArg(_:)(void *a1)
{
  CopyAppendingMapperArg = RIOPxrSdfPathCreateCopyAppendingMapperArg();

  *v1 = CopyAppendingMapperArg;
}

uint64_t SceneDescriptionFoundations.Path.appendingMapperArg(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPathCreateCopyAppendingMapperArg();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall SceneDescriptionFoundations.Path.appendExpression()()
{
  CopyAppendingExpression = RIOPxrSdfPathCreateCopyAppendingExpression();

  *v0 = CopyAppendingExpression;
}

uint64_t SceneDescriptionFoundations.Path.appendingExpression()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfPathCreateCopyAppendingExpression();
  *a1 = result;
  return result;
}

void SceneDescriptionFoundations.Path.appendElement(_:)(void *a1)
{
  CopyAppendingElementToken = RIOPxrSdfPathCreateCopyAppendingElementToken();

  *v1 = CopyAppendingElementToken;
}

uint64_t SceneDescriptionFoundations.Path.appendingElement(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPathCreateCopyAppendingElementToken();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.replacePrefix(_:with:fixTargetPaths:)(void *a1, void *a2, char a3)
{
  CopyReplacingPrefix = RIOPxrSdfPathCreateCopyReplacingPrefix();

  *v3 = CopyReplacingPrefix;
}

uint64_t SceneDescriptionFoundations.Path.replacingPrefix(_:with:fixTargetPaths:)@<X0>(uint64_t *a4@<X8>)
{
  result = RIOPxrSdfPathCreateCopyReplacingPrefix();
  *a4 = result;
  return result;
}

uint64_t SceneDescriptionFoundations.Path.commonPrefix(with:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPathCopyCommonPrefix();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.makeAbsolutePath(with:)(void *a1)
{
  CopyMakingAbsolutePath = RIOPxrSdfPathCreateCopyMakingAbsolutePath();

  *v1 = CopyMakingAbsolutePath;
}

uint64_t SceneDescriptionFoundations.Path.makingAbsolutePath(with:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPathCreateCopyMakingAbsolutePath();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.makeRelativePath(with:)(void *a1)
{
  CopyMakingRelativePath = RIOPxrSdfPathCreateCopyMakingRelativePath();

  *v1 = CopyMakingRelativePath;
}

uint64_t SceneDescriptionFoundations.Path.makingRelativePath(with:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPathCreateCopyMakingRelativePath();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.removeCommonSuffix(_:stopAtRootPrim:)(id *a1, char a2)
{
  CopyRemovingCommonSuffix = RIOPxrSdfPathCreateCopyRemovingCommonSuffix();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOPxrSdfPathRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v5 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_12:
      EmptyPath = RIOPxrSdfPathCreateEmptyPath();

      v12 = RIOPxrSdfPathCreateEmptyPath();
      goto LABEL_13;
    }
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) == 0)
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      v8 = v6 - 1;
      if (!__OFSUB__(v6, 1))
      {
        if (v8 < v7)
        {
          v9 = *(v5 + 32 + 8 * v8);
          EmptyPath = *(v5 + 32);
          v11 = v9;
LABEL_9:
          v12 = v11;

LABEL_13:

          *v2 = EmptyPath;
          *a1 = v12;
          return;
        }

        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  EmptyPath = MEMORY[0x26670F670](0, v5);
  if (!__OFSUB__(v6, 1))
  {
    v11 = MEMORY[0x26670F670](v6 - 1, v5);
    goto LABEL_9;
  }

LABEL_19:
  __break(1u);
}

void *SceneDescriptionFoundations.Path.removingCommonSuffix(_:stopAtRootPrim:)(uint64_t *a1, void *a2, void *a3, char a4)
{
  CopyRemovingCommonSuffix = RIOPxrSdfPathCreateCopyRemovingCommonSuffix();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    type metadata accessor for RIOPxrSdfPathRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v9 = v8;
    if (!(v8 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_13:

      v12 = MEMORY[0x277D84F90];
      v18 = *(MEMORY[0x277D84F90] + 16);
      if (v18)
      {
LABEL_20:
        v27 = v12[4];
        *a1 = v27;
        v28 = v12[v18 + 3];
        v29 = v27;
        v20 = v28;

        goto LABEL_21;
      }

LABEL_14:
      EmptyPath = RIOPxrSdfPathCreateEmptyPath();

      *a1 = EmptyPath;
      result = RIOPxrSdfPathCreateEmptyPath();
      v20 = result;
LABEL_21:
      *a2 = v20;
      return result;
    }
  }

  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = v8;
    if ((v9 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = MEMORY[0x26670F670](i, v9);
        v16 = v12[2];
        v15 = v12[3];
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v14 = v17;
        }

        v12[2] = v16 + 1;
        v12[v16 + 4] = v14;
      }
    }

    else
    {
      v21 = 32;
      do
      {
        v22 = *(v8 + 16);
        v23 = *(v8 + 24);
        v24 = *(v9 + v21);
        if (v22 >= v23 >> 1)
        {
          v25 = v23 > 1;
          v26 = v24;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25, v22 + 1, 1);
          v24 = v26;
        }

        *(v8 + 16) = v22 + 1;
        *(v8 + 8 * v22 + 32) = v24;
        v21 += 8;
        --v10;
      }

      while (v10);
    }

    v18 = v12[2];
    if (v18)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.removeDescendentPaths()()
{
  v1 = Array<A>.removingDescendentPaths()(*v0);

  *v0 = v1;
  return result;
}

uint64_t Array<A>.removeAncestorPaths()()
{
  v1 = Array<A>.removingAncestorPaths()(*v0);

  *v0 = v1;
  return result;
}

char *Array<A>.conciseRelativePaths()(uint64_t a1, uint64_t (*a2)(Class))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      v8 = v7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  type metadata accessor for RIOPxrSdfPathRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = a2(isa);

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v11 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_6;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_6:
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_7;
      }

LABEL_16:

      return MEMORY[0x277D84F90];
    }
  }

  v12 = __CocoaSet.count.getter();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_7:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = v4;
    if ((v11 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v12; ++i)
      {
        v16 = MEMORY[0x26670F670](i, v11);
        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        if (v18 >= v17 >> 1)
        {
          v19 = v16;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v16 = v19;
        }

        *(v14 + 16) = v18 + 1;
        *(v14 + 8 * v18 + 32) = v16;
      }
    }

    else
    {
      v20 = 32;
      do
      {
        v21 = *(v14 + 16);
        v22 = *(v14 + 24);
        v23 = *(v11 + v20);
        if (v21 >= v22 >> 1)
        {
          v24 = v22 > 1;
          v25 = v23;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24, v21 + 1, 1);
          v23 = v25;
        }

        *(v14 + 16) = v21 + 1;
        *(v14 + 8 * v21 + 32) = v23;
        v20 += 8;
        --v12;
      }

      while (v12);
    }

    return v14;
  }

  __break(1u);
  return result;
}

Swift::Int SceneDescriptionFoundations.AssetPath.Error.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  return Hasher._finalize()();
}

uint64_t SceneDescriptionFoundations.AssetPath.assetPath.getter()
{
  v0 = RIOPxrSdfAssetPathAssetPathCopyString();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

void SceneDescriptionFoundations.Path.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(*v3);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x26670F080](v5, v7);

  MEMORY[0x26670F080](62, 0xE100000000000000);
}

uint64_t static SceneDescriptionFoundations.Path.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  lazy protocol witness table accessor for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef(a4, a5, a6);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t SceneDescriptionFoundations.Path.hash(into:)(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(0);
  lazy protocol witness table accessor for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef(a3, a4, a5);
  return _CFObject.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SceneDescriptionFoundations.Path(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  a5(0);
  lazy protocol witness table accessor for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef(a6, a7, a8);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SceneDescriptionFoundations.AssetPath()
{
  v0 = RIOPxrSdfAssetPathAssetPathCopyString();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SceneDescriptionFoundations.Path(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(*v5, a2);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  MEMORY[0x26670F080](v7, v9);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return a3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SceneDescriptionFoundations.Path(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  (a4)(0, a2, a3);
  lazy protocol witness table accessor for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef(a5, a6, a7);
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SceneDescriptionFoundations.Path(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  Hasher.init(_seed:)();
  a4(0);
  lazy protocol witness table accessor for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef(a5, a6, a7);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByStringLiteral.init(stringLiteral:) in conformance SceneDescriptionFoundations.Path@<X0>(uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = String.utf8CString.getter();

  v6 = a2(v5 + 32);

  *a3 = v6;
  return result;
}

uint64_t SceneDescriptionFoundations.Path.init(_:)@<X0>(uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v6 = String.utf8CString.getter();

  v7 = a3(v6 + 32);

  *a4 = v7;
  return result;
}

uint64_t SceneDescriptionFoundations.AssetPath.init(_:_:)@<X0>(uint64_t *a5@<X8>)
{
  String.utf8CString.getter();

  String.utf8CString.getter();

  v6 = RIOPxrSdfAssetPathCreateFromCStringWithResolvedPath();

  *a5 = v6;
  return result;
}

uint64_t SceneDescriptionFoundations.AssetPath.resolvedPath.getter()
{
  v0 = RIOPxrSdfAssetPathResolvedPathCopyString();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

unint64_t lazy protocol witness table accessor for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error()
{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error);
  }

  return result;
}

void SceneDescriptionFoundations.AssetPath.dependencies.getter(uint64_t *a1@<X8>)
{
  v2 = RIOPxrUsdUtilsCopyAllDependencies();
  v3 = RIODependencyDescriptorCopyLayers();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOPxrSdfLayerRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v4 = MEMORY[0x277D84F90];
  v5 = RIODependencyDescriptorCopyAssets();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v6 = MEMORY[0x277D84F90];
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v7 = RIODependencyDescriptorCopyUnresolvedPaths();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v8 = MEMORY[0x277D84F90];
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
}

void SceneDescriptionFoundations.AssetPath.withReferencedData<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = RIOPxrSdfAssetPathResolvedPathCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.utf8CString.getter();

  v7 = RIOPxrArAssetCreate();

  if (v7)
  {
    v16 = v7;
    MEMORY[0x28223BE20](v8, v9);
    v14[2] = a3;
    v14[3] = v7;
    v14[4] = a1;
    v14[5] = a2;
    type metadata accessor for RIOPxrArAssetRef(0);
    v11 = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(&v16, v13, partial apply for closure #1 in SceneDescriptionFoundations.AssetPath.withReferencedData<A>(_:), v14, v11, v12, a3, MEMORY[0x277D84950], &v15);
  }

  else
  {
    lazy protocol witness table accessor for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t closure #1 in SceneDescriptionFoundations.AssetPath.withReferencedData<A>(_:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t *a5)
{
  CFDataNoCopy = RIOPxrArAssetCreateCFDataNoCopy();
  if (CFDataNoCopy)
  {
    v7 = CFDataNoCopy;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Data._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  lazy protocol witness table accessor for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error();
  v8 = swift_allocError();
  result = swift_willThrow();
  *a5 = v8;
  return result;
}

uint64_t lazy protocol witness table accessor for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath()
{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneDescriptionFoundations.Dependencies(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for SceneDescriptionFoundations.Dependencies(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SceneDescriptionFoundations.Reference.description.getter()
{
  v0 = RIOPxrSdfReferenceCopyAssetPathString();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  MEMORY[0x26670F080](v1, v3);

  MEMORY[0x26670F080](3944256, 0xE300000000000000);
  result = RIOPxrSdfReferenceCopyPrimPath();
  if (result)
  {
    v5 = result;
    v6 = RIOPxrSdfPathCopyString();
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    MEMORY[0x26670F080](v7, v9);

    MEMORY[0x26670F080](62, 0xE100000000000000);
    return 64;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SceneDescriptionFoundations.Reference.assetPath.getter()
{
  v0 = RIOPxrSdfReferenceCopyAssetPathString();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t SceneDescriptionFoundations.Reference.primPath.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfReferenceCopyPrimPath();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SceneDescriptionFoundations.Reference.debugDescription.getter()
{
  strcpy(v2, "<Reference: ");
  v0 = SceneDescriptionFoundations.Reference.description.getter();
  MEMORY[0x26670F080](v0);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return v2[0];
}

uint64_t SceneDescriptionFoundations.Reference.hash(into:)(uint64_t a1)
{
  type metadata accessor for RIOPxrSdfReferenceRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfReferenceRef and conformance RIOPxrSdfReferenceRef();
  return _CFObject.hash(into:)();
}

unint64_t lazy protocol witness table accessor for type RIOPxrSdfReferenceRef and conformance RIOPxrSdfReferenceRef()
{
  result = lazy protocol witness table cache variable for type RIOPxrSdfReferenceRef and conformance RIOPxrSdfReferenceRef;
  if (!lazy protocol witness table cache variable for type RIOPxrSdfReferenceRef and conformance RIOPxrSdfReferenceRef)
  {
    type metadata accessor for RIOPxrSdfReferenceRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RIOPxrSdfReferenceRef and conformance RIOPxrSdfReferenceRef);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference()
{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference);
  }

  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SceneDescriptionFoundations.Reference()
{
  strcpy(v2, "<Reference: ");
  v0 = SceneDescriptionFoundations.Reference.description.getter();
  MEMORY[0x26670F080](v0);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return v2[0];
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SceneDescriptionFoundations.Reference(uint64_t a1)
{
  type metadata accessor for RIOPxrSdfReferenceRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfReferenceRef and conformance RIOPxrSdfReferenceRef();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SceneDescriptionFoundations.Reference()
{
  Hasher.init(_seed:)();
  type metadata accessor for RIOPxrSdfReferenceRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfReferenceRef and conformance RIOPxrSdfReferenceRef();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SceneDescriptionFoundations.Reference.init(_:_:)@<X0>(void **a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  String.utf8CString.getter();

  v6 = RIOPxrSdfReferenceCreateFromCStringWithAssetPathAndPrimPath();

  *a4 = v6;
  return result;
}

uint64_t key path setter for SceneDescriptionFoundations.Reference.assetPath : SceneDescriptionFoundations.Reference(void *a1, uint64_t *a2)
{
  String.utf8CString.getter();
  RIOPxrSdfReferenceSetAssetPath();
}

uint64_t SceneDescriptionFoundations.Reference.assetPath.setter(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();

  RIOPxrSdfReferenceSetAssetPath();
}

uint64_t (*SceneDescriptionFoundations.Reference.assetPath.modify(uint64_t *a1))()
{
  a1[2] = *v1;
  v3 = RIOPxrSdfReferenceCopyAssetPathString();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return SceneDescriptionFoundations.Reference.assetPath.modify;
}

uint64_t SceneDescriptionFoundations.Reference.assetPath.modify(void *a1, char a2)
{
  String.utf8CString.getter();
  if (a2)
  {
    RIOPxrSdfReferenceSetAssetPath();
  }

  else
  {

    RIOPxrSdfReferenceSetAssetPath();
  }
}

void SceneDescriptionFoundations.Reference.primPath.setter(id *a1)
{
  v1 = *a1;
  RIOPxrSdfReferenceSetPrimPath();
}

uint64_t (*SceneDescriptionFoundations.Reference.primPath.modify(uint64_t (**a1)()))()
{
  a1[1] = *v1;
  result = RIOPxrSdfReferenceCopyPrimPath();
  if (result)
  {
    *a1 = result;
    return SceneDescriptionFoundations.Reference.primPath.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void SceneDescriptionFoundations.Reference.primPath.modify(id *a1)
{
  v1 = *a1;
  RIOPxrSdfReferenceSetPrimPath();
}

uint64_t closure #1 in static ActionBuilder.generateSpinActionSpecifications(inputs:)(double a1, double a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v31 = a3;
  v30 = a6;
  v7 = type metadata accessor for __RKEntitySpinDirectionType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for __RKEntityActionSpecification();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a5, v12, v20);
  v23 = v30;
  (*(v8 + 104))(v11, *MEMORY[0x277CDAF28], v7);
  __RKEntitySpinActionArguments.init(target:duration:iterations:direction:axis:)();
  (*(v18 + 104))(v22, *MEMORY[0x277CDAF80], v17);
  v24 = *v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
    *v23 = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
    *v23 = v24;
  }

  v24[2] = v27 + 1;
  return (*(v18 + 32))(v24 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v27, v22, v17);
}

uint64_t specialized static ActionBuilder.generateSpinActionSpecifications(inputs:)()
{
  v0 = type metadata accessor for __RKEntityGroupActionOrder();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n(0x6E6F697461727564, 0xE800000000000000, v3);
  v7 = v6;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n(0x6974756C6F766572, 0xEB00000000736E6FLL, *&v6);
  v9 = v8;
  v10 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA7Vector3VySdG_Tt1g5(&v19);
  v11.n128_u64[0] = vcvt_f32_f64(v19);
  *&v12 = v20;
  v11.n128_u64[1] = v12;
  *&v19.f64[0] = MEMORY[0x277D84F90];
  *&v13 = MEMORY[0x28223BE20](v10, v11);
  *(&v19 - 6) = &v19;
  *(&v19 - 5) = v7;
  *(&v19 - 4) = v9;
  *(&v19 - 1) = v13;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateSpinActionSpecifications(inputs:), (&v19 - 4));
  result = *&v19.f64[0];
  if (*(*&v19.f64[0] + 16) > 1uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v15 = type metadata accessor for __RKEntityActionSpecification();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2619891C0;
    (*(v1 + 104))(v5, *MEMORY[0x277CDAEF8], v0);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    (*(v16 + 104))(v18 + v17, *MEMORY[0x277CDAFA0], v15);

    return v18;
  }

  return result;
}

void static ActionBuilder.generateAudioActionSpecifications(inputs:)(uint64_t a1, float a2)
{
  v3 = v2;
  v5 = type metadata accessor for __RKAudioSpatialModeSelection();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for __RKEntityAudioActionType();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(v111);
  v109 = v14;
  v110 = v11;
  v108 = v6;
  v15 = v111[0];
  v16 = RIOPxrTfTokenCopyString();
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(v111);
  v106 = v9;
  v107 = v10;
  v20 = v5;
  v21 = v111[0];
  v22 = RIOPxrTfTokenCopyString();
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n(1852399975, 0xE400000000000000, v26);
  v104 = v23;
  v105 = v25;
  v103 = v3;
  v28 = v27;
  Inputs.prim.getter();
  if (String.count.getter() <= 0)
  {
    v29 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v29 = RIOPxrTfTokenCreateWithCString();
  }

  v30 = v29;
  HasAttribute = RIOPxrUsdPrimHasAttribute();
  v32 = HasAttribute;
  v33 = v107;
  if (!HasAttribute)
  {

    outlined copy of Object.Error(0);

    v111[0] = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v111[0]);
    v35 = 0;
LABEL_27:
    outlined consume of Result<AnyAttribute, Object.Error>(v35, v32 ^ 1);
    return;
  }

  v102 = 0;
  v34 = RIOPxrUsdPrimCopyAttribute();

  type metadata accessor for AnyAttribute();
  v35 = swift_allocObject();
  v35[2] = v34;

  EmptyValue = RIOPxrUsdAttributeCopyValue();
  if (!EmptyValue)
  {
    EmptyValue = RIOPxrVtValueCreateEmptyValue();
  }

  v37 = EmptyValue;
  v38 = RIOPxrVtValueCopyAssetPath();

  outlined consume of Result<AnyAttribute, Object.Error>(v35, 0);
  v39 = v105;
  if (!v38)
  {

    goto LABEL_27;
  }

  v40 = RIOPxrUsdAttributeCopyValue();
  if (!v40)
  {
    v40 = RIOPxrVtValueCreateEmptyValue();
  }

  v97 = v38;
  v98 = v35;
  v41 = v40;
  v42 = RIOPxrVtValueCopyAssetPath();

  if (!v42)
  {
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v43 = v33;
  v96 = v42;
  v44 = RIOPxrSdfAssetPathResolvedPathCopyString();
  v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v101 = v45;

  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  v46 = *(v110 + 104);
  v46(v109, *MEMORY[0x277CDAED8], v33);
  v47 = v20;
  if (v17 == 0x6573756170 && v19 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v48 = MEMORY[0x277CDAEE8];
LABEL_15:
    v49 = v109;
LABEL_16:
    (*(v110 + 8))(v49, v43);
    v46(v49, *v48, v43);
    goto LABEL_17;
  }

  if (v17 == 1886352499 && v19 == 0xE400000000000000)
  {

    v48 = MEMORY[0x277CDAEE0];
    goto LABEL_15;
  }

  v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v49 = v109;
  if (v93)
  {
    v48 = MEMORY[0x277CDAEE0];
    goto LABEL_16;
  }

LABEL_17:
  v50 = v108;
  v51 = *(v108 + 104);
  v51(v106, *MEMORY[0x277CDAF30], v20);
  v52 = v104;
  if (v104 == 0x6C616974617073 && v39 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v53 = MEMORY[0x277CDAF38];
LABEL_21:
    v54 = v106;
LABEL_22:
    (*(v50 + 8))(v54, v20);
    v55 = (v51)(v54, *v53, v20);
    goto LABEL_23;
  }

  if (v52 == 0x69746170536E6F6ELL && v39 == 0xEA00000000006C61)
  {

    v53 = MEMORY[0x277CDAF40];
    goto LABEL_21;
  }

  v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v54 = v106;
  if (v94)
  {
    v53 = MEMORY[0x277CDAF40];
    goto LABEL_22;
  }

LABEL_23:
  v111[0] = 93;
  v111[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v55, v56);
  *(&v95 - 2) = v111;
  v58 = v100;
  v57 = v101;
  specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), (&v95 - 4), v100, v101);
  if (v59)
  {

    v60 = v57;
  }

  else
  {
    v61 = String.subscript.getter();
    v58 = MEMORY[0x26670F020](v61);
    v60 = v62;
    v57 = v101;
  }

  v63 = HIBYTE(v60) & 0xF;
  if ((v60 & 0x2000000000000000) == 0)
  {
    v63 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63)
  {

    v76 = static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_2619891C0;
    v78 = v97;
    v79 = RIOPxrSdfAssetPathAssetPathCopyString();
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    *(v77 + 56) = MEMORY[0x277D837D0];
    *(v77 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v77 + 32) = v80;
    *(v77 + 40) = v82;
    type metadata accessor for OS_os_log();
    v83 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v76, &dword_26187B000, v83, "ActionBuilder AudioAction unable to resolve path %@", 51, 2, v77);

    outlined consume of Result<AnyAttribute, Object.Error>(v98, 0);

    (*(v50 + 8))(v54, v47);
    (*(v110 + 8))(v49, v107);
LABEL_49:

    return;
  }

  v64 = RIOBuilderInputsGetImportSession();
  if (!v64)
  {
    goto LABEL_56;
  }

  v65 = v64;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_57:
    __break(1u);
    return;
  }

  ServiceLocator = REEngineGetServiceLocator();
  v68 = MEMORY[0x2667102E0](ServiceLocator);
  if (!v68)
  {

    v84 = v110;
    if (one-time initialization token for rioAudio != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    __swift_project_value_buffer(v85, static Logger.rioAudio);
    v86 = static os_log_type_t.error.getter();
    v87 = Logger.logObject.getter();
    v88 = os_log_type_enabled(v87, v86);
    v89 = v98;
    if (v88)
    {
      v90 = swift_slowAlloc();
      v109 = SwiftObject;
      v91 = v90;
      *v90 = 0;
      _os_log_impl(&dword_26187B000, v87, v86, "generateAudioActionSpecifications could not get an AssetManager.", v90, 2u);
      MEMORY[0x266713AD0](v91, -1, -1);
    }

    outlined consume of Result<AnyAttribute, Object.Error>(v89, 0);
    (*(v50 + 8))(v54, v47);
    (*(v84 + 8))(v49, v107);
    goto LABEL_49;
  }

  v69 = v68;
  v109 = SwiftObject;
  v70 = swift_allocObject();
  *(v70 + 16) = 0;
  v106 = (v70 + 16);
  *(v70 + 24) = 0xE000000000000000;
  v71 = swift_allocObject();
  *(v71 + 24) = 0;
  *(v71 + 16) = 0;
  *(v71 + 32) = -256;
  v72 = swift_allocObject();
  v72[2] = v100;
  v72[3] = v57;
  v72[4] = v99;
  v72[5] = v71;
  v73 = v103;
  v72[6] = v69;
  v72[7] = v73;
  v72[8] = a1;
  v72[9] = v70;

  v74 = closure #3 in static ActionBuilder.generateAudioActionSpecifications(inputs:)(a1, partial apply for closure #2 in static ActionBuilder.generateAudioActionSpecifications(inputs:), v72, (v71 + 16));
  v111[0] = MEMORY[0x277D84F90];
  if (v74)
  {
    MEMORY[0x28223BE20](v74, v75);
    *(&v95 - 6) = v111;
    *(&v95 - 5) = v106;
    *(&v95 - 4) = v49;
    *(&v95 - 3) = v54;
    *(&v95 - 2) = v28;
    specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #4 in static ActionBuilder.generateAudioActionSpecifications(inputs:), (&v95 - 8));
  }

  outlined consume of Result<AnyAttribute, Object.Error>(v98, 0);

  v92 = v110;
  (*(v108 + 8))(v54, v47);
  (*(v92 + 8))(v49, v107);
}

void closure #2 in static ActionBuilder.generateAudioActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  String.utf8CString.getter();
  swift_beginAccess();
  v12 = RIOPxrUtilsCopyCFDataWithArAssetPath();
  swift_endAccess();

  if (!v12)
  {
    swift_beginAccess();
    v37 = *(a4 + 16);
    v38 = *(a4 + 24);
    *(a4 + 16) = a1;
    *(a4 + 24) = a2;
    v39 = *(a4 + 32);
    v40 = 256;
LABEL_16:
    *(a4 + 32) = v40;
    outlined consume of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>?(v37, v38, v39);

    return;
  }

  REAudioFileAssetConfigurationCreate();
  v13 = REAudioFileAssetCreateWithMappedDataAndConfiguration();
  if (!v13)
  {

    swift_beginAccess();
    v37 = *(a4 + 16);
    v38 = *(a4 + 24);
    *(a4 + 16) = a1;
    *(a4 + 24) = a2;
    v39 = *(a4 + 32);
    v40 = 257;
    goto LABEL_16;
  }

  v14 = v13;
  if (one-time initialization token for savedRef != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static ActionBuilder.savedRef;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  static ActionBuilder.savedRef = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    static ActionBuilder.savedRef = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  *&v15[8 * v18 + 32] = v14;
  static ActionBuilder.savedRef = v15;
  swift_endAccess();
  v19 = RIOBuilderInputsGetImportSession();
  if (!v19)
  {
    __break(1u);
    goto LABEL_18;
  }

  v20 = v19;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();
  RIOImportSessionQueueAssetForLoad();

  v22 = RIOBuilderInputsGetImportSession();
  if (v22)
  {
    v23 = v22;
    v24 = RIOImportSessionGetSwiftObject();

    if (v24)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = v14;
      v26 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;

      swift_beginAccess();
      v27 = *(v24 + v26);
      aBlock[4] = partial apply for closure #1 in closure #2 in static ActionBuilder.generateAudioActionSpecifications(inputs:);
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_18_0;
      v28 = _Block_copy(aBlock);
      v29 = v27;

      RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue();
      _Block_release(v28);

      v30 = REAssetHandleCopyAssetIdentifierString();
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      swift_beginAccess();
      *(a8 + 16) = v31;
      *(a8 + 24) = v33;

      swift_beginAccess();
      v34 = *(a4 + 16);
      v35 = *(a4 + 24);
      *(a4 + 16) = v31;
      *(a4 + 24) = v33;
      v36 = *(a4 + 32);
      *(a4 + 32) = 0;
      outlined consume of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>?(v34, v35, v36);
      return;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t closure #3 in static ActionBuilder.generateAudioActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v19[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v19[5] = v7;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed () -> ();
  v19[3] = &block_descriptor_23;
  v8 = _Block_copy(v19);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v10 = *(a4 + 8);
    if (v10 >> 8 <= 0xFE)
    {
      if ((v10 & 0x100) == 0)
      {
        return 1;
      }

      v12 = *a4;
      v11 = a4[1];
      outlined copy of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>(v12, v11, v10, 1);
      v13 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_2619891C0;
      v15 = description.getter in AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)(v12, v11, v10 & 1);
      v17 = v16;
      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      type metadata accessor for OS_os_log();
      v18 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v13, &dword_26187B000, v18, "%@", 2, 2, v14);
      outlined consume of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>?(v12, v11, v10);
    }

    return 0;
  }

  return result;
}

uint64_t description.getter in AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _StringGuts.grow(_:)(72);
    v5 = 0xD000000000000046;
    v6 = 0x8000000261997F20;
  }

  else
  {
    _StringGuts.grow(_:)(56);
    v6 = 0x8000000261997F70;
    v5 = 0xD000000000000036;
  }

  MEMORY[0x26670F080](v5, v6);
  MEMORY[0x26670F080](a1, a2);
  return 0;
}

uint64_t closure #4 in static ActionBuilder.generateAudioActionSpecifications(inputs:)(double a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v43 = a4;
  v44 = a7;
  v41 = a6;
  v37 = a3;
  v38 = a5;
  v42 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v7);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for __RKAudioSpatialModeSelection();
  v9 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for __RKEntityAudioActionType();
  v13 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for __RKEntityActionSpecification();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v37, v17, v25);
  swift_beginAccess();
  (*(v13 + 16))(v16, v41, v35);
  (*(v9 + 16))(v12, v44, v36);
  v28 = v43;
  (*(v40 + 104))(v39, *MEMORY[0x277CDB010], v42);

  __RKEntityAudioActionArguments.init(target:path:type:spatialMode:volume:loops:multiplePerformBehavior:)();
  (*(v23 + 104))(v27, *MEMORY[0x277CDAF90], v22);
  v29 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
    *v28 = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v29);
    *v28 = v29;
  }

  v29[2] = v32 + 1;
  return (*(v23 + 32))(v29 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v32, v27, v22);
}

unint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

id outlined copy of Object.Error(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t outlined consume of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return outlined consume of AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)(a1, a2);
  }

  else
  {
  }
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined copy of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return outlined copy of AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)(a1, a2);
  }

  else
  {
  }
}

uint64_t outlined consume of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>?(uint64_t result, uint64_t a2, __int16 a3)
{
  if (HIBYTE(a3) != 255)
  {
    return outlined consume of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>(result, a2, a3, HIBYTE(a3) & 1);
  }

  return result;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v5);
    type metadata accessor for EntityProxy(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), &_sSay10RealityKit29__RKEntityActionSpecificationOGMd, &_sSay10RealityKit29__RKEntityActionSpecificationOGMR);
}

{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMd, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMR);
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t, __n128), uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  (a2)(0, v8, 0);
  v9 = v16;
  if (v8)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v16 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        (a2)(v11 > 1, v12 + 1, 1);
        v9 = v16;
      }

      *(v9 + 16) = v12 + 1;
      *(v9 + 8 * v12 + 32) = v14;
      if (!--v8)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

void Inputs.createIBLAsset(on:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit10__AssetRefVSgMd, &_s10RealityKit10__AssetRefVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v47 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  EmptyValue = RIOPxrUsdAttributeCopyValue();
  if (!EmptyValue)
  {
    EmptyValue = RIOPxrVtValueCreateEmptyValue();
  }

  v11 = EmptyValue;
  v12 = RIOPxrVtValueCopyAssetPath();

  if (!v12)
  {
    goto LABEL_6;
  }

  if (RIOPxrSdfAssetPathIsEmpty())
  {

LABEL_6:
    if (one-time initialization token for importTextures != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.importTextures;
    v14 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("Cannot createIBLAsset for empty assetPath.", 42, 2, &dword_26187B000, v13, v14, MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
    *(swift_allocObject() + 16) = 0;
    return;
  }

  v47 = v6;
  v48 = v5;
  v15 = RIOPxrSdfAssetPathResolvedPathCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  if (URL.pathExtension.getter() == 0x657974696C616572 && v16 == 0xEA0000000000766ELL)
  {

    goto LABEL_21;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
LABEL_21:
    type metadata accessor for EnvironmentResource();
    v26 = RIOPxrSdfAssetPathAssetPathCopyString();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static EnvironmentResource.__load(contentsOf:withName:)();

    dispatch thunk of EnvironmentResource.coreIBLAsset.getter();
    v27 = type metadata accessor for __AssetRef();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 48))(v4, 1, v27);
    v31 = v47;
    v30 = v48;
    if (v29 == 1)
    {

      outlined destroy of Any?(v4, &_s10RealityKit10__AssetRefVSgMd, &_s10RealityKit10__AssetRefVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
      *(swift_allocObject() + 16) = 0;
    }

    else
    {
      __AssetRef.__as<A>(_:)();
      (*(v28 + 8))(v4, v27);
      v39 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
      *(swift_allocObject() + 16) = v39;
      RERetain();
    }

    (*(v31 + 8))(v9, v30);
    return;
  }

  v19 = RIOBuilderInputsGetImportSession();
  if (!v19)
  {
    __break(1u);
    goto LABEL_33;
  }

  v20 = v19;
  SwiftObject = RIOImportSessionGetSwiftObject();

  v23 = v47;
  v22 = v48;
  if (!SwiftObject)
  {
LABEL_33:
    __break(1u);
    return;
  }

  ServiceLocator = REEngineGetServiceLocator();
  if (MEMORY[0x2667102E0]() && MEMORY[0x2667102F0](ServiceLocator))
  {
    if (RIOBuilderInputsCreateCubeMapTextureAsset())
    {
      v25 = REAssetManagerImageBasedLightMemoryAssetCreateWithCubeMapNullable();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
      *(swift_allocObject() + 16) = v25;
      (*(v23 + 8))(v9, v22);
      return;
    }

    if (one-time initialization token for importTextures != -1)
    {
      swift_once();
    }

    v40 = static OS_os_log.importTextures;
    v41 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_2619891C0;
    v43 = RIOPxrSdfAssetPathAssetPathCopyString();
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    *(v42 + 56) = MEMORY[0x277D837D0];
    *(v42 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v42 + 32) = v44;
    *(v42 + 40) = v46;
    os_log(_:dso:log:type:_:)("Could not create a cubemap for asset %{public}s.", 50, 2, &dword_26187B000, v40, v41, v42);
  }

  else
  {
    if (one-time initialization token for importTextures != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.importTextures;
    v33 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_2619891C0;
    v35 = RIOPxrSdfAssetPathAssetPathCopyString();
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    os_log(_:dso:log:type:_:)("Could not find necessary services to createIBLAsset %{public}s.", 65, 2, &dword_26187B000, v32, v33, v34);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
  *(swift_allocObject() + 16) = 0;
  (*(v23 + 8))(v9, v22);
}

uint64_t one-time initialization function for importTextures()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.importTextures = result;
  return result;
}

uint64_t Inputs.primPath.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOBuilderInputsCopyPrimPath();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *Inputs.prim.getter()
{
  result = RIOBuilderInputsCopyStage();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v1 = result;
  result = RIOBuilderInputsCopyPrimPath();
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v2 = result;
  if (RIOPxrUsdStageHasPrimAtPrimPath())
  {
    v3 = RIOPxrTfTokenEmpty();
    PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  }

  else
  {
    PrimIfNeeded = RIOPxrUsdPrimCreateEmpty();
    v3 = v1;
    v1 = v2;
  }

  type metadata accessor for Prim();
  result = swift_allocObject();
  result[2] = PrimIfNeeded;
  return result;
}

uint64_t Inputs.stage.getter()
{
  result = RIOBuilderInputsCopyStage();
  if (result)
  {
    v1 = result;
    type metadata accessor for Stage();
    result = swift_allocObject();
    *(result + 16) = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id Inputs.stageDelta.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v7 = v1[6];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v7;

  v5 = v4;

  return v7;
}

uint64_t Inputs.subscript.getter@<X0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = v3;
  v6 = Inputs.fetchBuildersAndOutputNames(key:)(a2, a3);
  v8 = v7;
  if (!v6[2])
  {

LABEL_7:
    *a1 = 0u;
    a1[1] = 0u;
    return result;
  }

  v9 = v6[4];
  v10 = v6[5];
  swift_unknownObjectRetain();

  if (!v8[2])
  {

    result = swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v11 = v8[4];
  v12 = v8[5];

  ObjectType = swift_getObjectType();
  v14 = Builder.outputs.getter(ObjectType, v10);
  MEMORY[0x28223BE20](v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v20)
  {
    outlined init with take of Any(&v19, a1);
    swift_unknownObjectRelease();
  }

  else
  {
    outlined destroy of Any?(&v19, &_sypSgMd, &_sypSgMR);
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v9)
    {
      swift_unknownObjectRetain();
      EntityBuilder.generateSwiftOutput(for:inputs:)(v11, v12, v4);
      v17 = Builder.outputs.getter(ObjectType, v10);
      MEMORY[0x28223BE20](v17, v18);
      OS_dispatch_queue.sync<A>(execute:)();

      return swift_unknownObjectRelease_n();
    }

    *a1 = 0u;
    a1[1] = 0u;
    swift_unknownObjectRelease();
  }
}

char *Inputs.accumulatedValues(forKey:)(uint64_t a1, uint64_t a2)
{
  result = Inputs.fetchBuildersAndOutputNames(key:)(a1, a2);
  v4 = result;
  v5 = *(result + 2);
  if (v5)
  {
    v6 = 0;
    v7 = v3 + 40;
    v8 = result + 40;
    v28 = MEMORY[0x277D84F90];
    v25 = v5 - 1;
    v32 = result;
    v31 = v3;
    v30 = v5;
    v27 = v3 + 40;
    v26 = result + 40;
    do
    {
      v9 = (v7 + 16 * v6);
      v10 = &v8[16 * v6];
      while (1)
      {
        if (v6 >= *(v4 + 2))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        if (v6 >= *(v3 + 16))
        {
          goto LABEL_23;
        }

        v38 = v6;
        v12 = *(v10 - 1);
        v11 = *v10;
        v35 = v10;
        v36 = v9;
        v13 = *(v9 - 1);
        v14 = *v9;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();

        v33 = ObjectType;
        v34 = v11;
        v16 = Builder.outputs.getter(ObjectType, v11);
        v37 = &v24;
        MEMORY[0x28223BE20](v16, v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
        OS_dispatch_queue.sync<A>(execute:)();

        if (v40)
        {
          break;
        }

        outlined destroy of Any?(&v39, &_sypSgMd, &_sypSgMR);
        swift_getObjectType();
        if (swift_conformsToProtocol2() && v12)
        {
          swift_unknownObjectRetain();
          EntityBuilder.generateSwiftOutput(for:inputs:)(v13, v14, v29);
          v18 = Builder.outputs.getter(v33, v34);
          MEMORY[0x28223BE20](v18, v19);
          OS_dispatch_queue.sync<A>(execute:)();

          swift_unknownObjectRelease();

          if (*(&v42 + 1))
          {
            goto LABEL_14;
          }

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v41 = 0u;
          v42 = 0u;
        }

        v4 = v32;
        v6 = v38 + 1;
        result = outlined destroy of Any?(&v41, &_sypSgMd, &_sypSgMR);
        v9 = v36 + 2;
        v10 = v35 + 2;
        v3 = v31;
        if (v30 == v6)
        {
          goto LABEL_21;
        }
      }

      outlined init with take of Any(&v39, &v41);
LABEL_14:
      outlined init with take of Any(&v41, v43);
      outlined init with copy of Any(v43, &v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
      }

      v21 = *(v28 + 2);
      v20 = *(v28 + 3);
      if (v21 >= v20 >> 1)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v28);
      }

      v22 = v38;
      v6 = v38 + 1;
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v43);
      v23 = v28;
      *(v28 + 2) = v21 + 1;
      result = outlined init with take of Any(&v41, &v23[32 * v21 + 32]);
      v4 = v32;
      v3 = v31;
      v7 = v27;
      v8 = v26;
    }

    while (v25 != v22);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

LABEL_21:

  return v28;
}

void Inputs.importSession.getter()
{
  v0 = RIOBuilderInputsGetImportSession();
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = v0;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_7:
    __break(1u);
    return;
  }
}

uint64_t Inputs.getEntity(forKey:)(uint64_t a1, uint64_t a2)
{
  Inputs.subscript.getter(&v4, a1, a2);
  if (v5)
  {
    type metadata accessor for EntityProxy(0);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(&v4, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

uint64_t Inputs.getEntities(forKey:)(uint64_t a1, uint64_t a2)
{
  v2 = Inputs.accumulatedValues(forKey:)(a1, a2);
  v3 = specialized _arrayConditionalCast<A, B>(_:)(v2);

  if (v3)
  {
    return v3;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

void Inputs.performBlockLaterWithEntity(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = RIOBuilderInputsGetImportSession();
  if (v6)
  {
    v7 = v6;
    SwiftObject = RIOImportSessionGetSwiftObject();

    if (SwiftObject)
    {
      v9 = swift_allocObject();
      v9[2] = a1;
      v9[3] = a2;
      v9[4] = a3;
      v10 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;

      swift_beginAccess();
      v11 = *(SwiftObject + v10);
      aBlock[4] = partial apply for closure #1 in Inputs.performBlockLaterWithEntity(_:_:);
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_24;
      v12 = _Block_copy(aBlock);

      v13 = v11;

      RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue();
      _Block_release(v12);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in Inputs.performBlockLaterWithEntity(_:_:)(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for Entity();
  static Entity.__fromCore(_:)();
  a2();
}

uint64_t Inputs.performBlockSyncOnEngineQueue(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v8[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_9_0;
  v5 = _Block_copy(v8);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void *Inputs.StageDelta.init(core:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = RIOBuilderStageDeltaCopyDirtyMetadata();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    *&v27 = 0;
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v7 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_13:

      v10 = MEMORY[0x277D84F90];
LABEL_19:
      v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v10);

      v24 = RIOBuilderStageDeltaCopyPrimDelta();

      result = Inputs.PrimDelta.init(core:)(v24, &v27);
      v25 = v28;
      v26 = v27;
      *a2 = v23;
      *(a2 + 8) = v26;
      *(a2 + 24) = v25;
      *(a2 + 32) = v3;
      return result;
    }
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  *&v27 = v6;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = v27;
    if ((v7 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v8; ++i)
      {
        v12 = MEMORY[0x26670F670](i, v7);
        *&v27 = v10;
        v14 = *(v10 + 16);
        v13 = *(v10 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v12;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v12 = v15;
          v10 = v27;
        }

        *(v10 + 16) = v14 + 1;
        *(v10 + 8 * v14 + 32) = v12;
      }
    }

    else
    {
      v16 = 32;
      do
      {
        v17 = *(v7 + v16);
        *&v27 = v10;
        v18 = *(v10 + 16);
        v19 = *(v10 + 24);
        v20 = v17;
        if (v18 >= v19 >> 1)
        {
          v21 = v19 > 1;
          v22 = v20;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21, v18 + 1, 1);
          v20 = v22;
          v10 = v27;
        }

        *(v10 + 16) = v18 + 1;
        *(v10 + 8 * v18 + 32) = v20;
        v16 += 8;
        --v8;
      }

      while (v8);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t Inputs.fetchBuildersAndOutputNames(key:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84F90];
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = MEMORY[0x26670EFB0](a1, a2);
  AllBuildersAndOutputNamesProvidingValuesWithName = RIOBuilderInputsGetAllBuildersAndOutputNamesProvidingValuesWithName();

  if (!AllBuildersAndOutputNamesProvidingValuesWithName)
  {

    return MEMORY[0x277D84F90];
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOBuilderRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13RIOBuilderRefaGMd, &_sSaySo13RIOBuilderRefaGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Builder_pMd, &_s9RealityIO7Builder_pMR);
  lazy protocol witness table accessor for type [RIOBuilderRef] and conformance [A]();
  v9 = Sequence.flatMap<A>(_:)();

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CFStringRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v10 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_7;
    }

LABEL_16:
    v11 = __CocoaSet.count.getter();
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_17:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v10 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_16;
  }

LABEL_7:
  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_8:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
  }

  v12 = v4;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    do
    {
      v14 = MEMORY[0x26670F670](v13, v10);
      v17 = String.init(_:)(v14);
      object = v17._object;
      countAndFlagsBits = v17._countAndFlagsBits;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        object = v17._object;
        countAndFlagsBits = v17._countAndFlagsBits;
      }

      ++v13;
      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = countAndFlagsBits;
      *(v20 + 40) = object;
    }

    while (v11 != v13);
  }

  else
  {
    v21 = 32;
    do
    {
      v24 = String.init(_:)(*(v10 + v21));
      v23 = v24._object;
      v22 = v24._countAndFlagsBits;
      v26 = *(v4 + 16);
      v25 = *(v4 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v23 = v24._object;
        v22 = v24._countAndFlagsBits;
      }

      *(v4 + 16) = v26 + 1;
      v27 = v4 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v23;
      v21 += 8;
      --v11;
    }

    while (v11);
  }

LABEL_23:
  v28 = *(v9 + 16);
  v29 = *(v12 + 16);

  if (v28 != v29)
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}

uint64_t closure #1 in Inputs.fetchBuildersAndOutputNames(key:)@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = RIOBuilderGetSwiftObject();
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    swift_unknownObjectRelease();
LABEL_4:
    v5 = specialized static _BaseBuilder.create(from:)(v3);
    result = v7;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

uint64_t Inputs.deinit()
{
  v1 = *(v0 + 40);

  return v0;
}

uint64_t Inputs.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

id Inputs.StageDelta.primDelta.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v4 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v4;

  return v4;
}

uint64_t Inputs.StageDelta.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  specialized Set.hash(into:)(a1, v3);
  specialized Set.hash(into:)(a1, v4);

  return specialized Set.hash(into:)(a1, v5);
}

uint64_t static Inputs.StageDelta.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ9RealityIO6InputsC13PropertyDeltaV_Tt1g5(v3, v5);
}

uint64_t static Inputs.PrimDelta.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ9RealityIO6InputsC13PropertyDeltaV_Tt1g5(v2, v3);
}

uint64_t Inputs.PrimDelta.init(core:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v4 = RIOBuilderPrimDeltaCopyDirtyMetadata();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    *&v42 = 0;
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v7 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_13:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v7 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

LABEL_3:
  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  *&v42 = v6;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v10 = v42;
  if ((v7 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v8; ++i)
    {
      v12 = MEMORY[0x26670F670](i, v7);
      *&v42 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = v3;
        v16 = a2;
        v17 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v17;
        a2 = v16;
        v3 = v15;
        v6 = MEMORY[0x277D84F90];
        v10 = v42;
      }

      *(v10 + 16) = v14 + 1;
      *(v10 + 8 * v14 + 32) = v12;
    }
  }

  else
  {
    v18 = v3;
    v19 = a2;
    v20 = 32;
    do
    {
      v21 = *(v7 + v20);
      *&v42 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      v24 = v21;
      if (v23 >= v22 >> 1)
      {
        v25 = v22 > 1;
        v26 = v24;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25, v23 + 1, 1);
        v24 = v26;
        v10 = v42;
      }

      *(v10 + 16) = v23 + 1;
      *(v10 + 8 * v23 + 32) = v24;
      v20 += 8;
      --v8;
    }

    while (v8);

    a2 = v19;
    v3 = v18;
    v6 = MEMORY[0x277D84F90];
  }

LABEL_19:
  v27 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v10);

  v28 = RIOBuilderPrimDeltaCopyPropertyDeltas();

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *&v42 = 0;
    type metadata accessor for RIOBuilderPropertyDeltaRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v29 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_21;
    }
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_21:
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_22;
      }

LABEL_33:

      v32 = MEMORY[0x277D84F90];
LABEL_34:
      v39 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO6InputsC13PropertyDeltaV_SayAHGTt0g5Tf4g_n(v32);

      *a2 = v27;
      a2[1] = v39;
      a2[2] = v3;
      return result;
    }
  }

  v30 = __CocoaSet.count.getter();
  if (!v30)
  {
    goto LABEL_33;
  }

LABEL_22:
  v44 = v6;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30 & ~(v30 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v41 = v27;
    v31 = 0;
    v32 = v44;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x26670F670](v31, v29);
      }

      else
      {
        v33 = *(v29 + 8 * v31 + 32);
      }

      Inputs.PropertyDelta.init(core:)(v33, &v42);
      v34 = v42;
      v35 = v43;
      v44 = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);
      if (v37 >= v36 >> 1)
      {
        v40 = v42;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v34 = v40;
        v32 = v44;
      }

      ++v31;
      *(v32 + 16) = v37 + 1;
      v38 = v32 + 24 * v37;
      *(v38 + 32) = v34;
      *(v38 + 48) = v35;
    }

    while (v30 != v31);

    v27 = v41;
    goto LABEL_34;
  }

LABEL_36:
  __break(1u);
  return result;
}

Swift::Int Inputs.StageDelta.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v5, v1);
  specialized Set.hash(into:)(v5, v2);
  specialized Set.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Inputs.StageDelta()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v5, v1);
  specialized Set.hash(into:)(v5, v2);
  specialized Set.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Inputs.StageDelta(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  specialized Set.hash(into:)(a1, v3);
  specialized Set.hash(into:)(a1, v4);

  return specialized Set.hash(into:)(a1, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Inputs.StageDelta()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v5, v1);
  specialized Set.hash(into:)(v5, v2);
  specialized Set.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Inputs.StageDelta(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ9RealityIO6InputsC13PropertyDeltaV_Tt1g5(v3, v5);
}

uint64_t Inputs.PrimDelta.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  specialized Set.hash(into:)(a1, v3);

  return specialized Set.hash(into:)(a1, v4);
}

void Inputs.PropertyDelta.init(core:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v4 = RIOBuilderPropertyDeltaCopyDirtyMetadata();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v7 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_13:

      v9 = MEMORY[0x277D84F90];
LABEL_19:
      v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v9);

      v22 = RIOBuilderPropertyDeltaCopyPropertyName();

      *a2 = v21;
      a2[1] = v22;
      a2[2] = v3;
      return;
    }
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v6;
    if ((v7 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v8; ++i)
      {
        v11 = MEMORY[0x26670F670](i, v7);
        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          v14 = v11;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v11 = v14;
        }

        *(v9 + 16) = v13 + 1;
        *(v9 + 8 * v13 + 32) = v11;
      }
    }

    else
    {
      v15 = 32;
      do
      {
        v16 = *(v6 + 16);
        v17 = *(v6 + 24);
        v18 = *(v7 + v15);
        if (v16 >= v17 >> 1)
        {
          v19 = v17 > 1;
          v20 = v18;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19, v16 + 1, 1);
          v18 = v20;
        }

        *(v6 + 16) = v16 + 1;
        *(v6 + 8 * v16 + 32) = v18;
        v15 += 8;
        --v8;
      }

      while (v8);
    }

    goto LABEL_19;
  }

  __break(1u);
}

Swift::Int Inputs.PrimDelta.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v4, v1);
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Inputs.PrimDelta()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v4, v1);
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Inputs.PrimDelta(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  specialized Set.hash(into:)(a1, v3);

  return specialized Set.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Inputs.PrimDelta()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v4, v1);
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Inputs.PrimDelta(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ9RealityIO6InputsC13PropertyDeltaV_Tt1g5(v2, v3);
}

id Inputs.PropertyDelta.propertyName.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

uint64_t Inputs.PropertyDelta.hash(into:)(__int128 *a1)
{
  specialized Set.hash(into:)(a1, *v1);
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  return _CFObject.hash(into:)();
}

unint64_t static Inputs.PropertyDelta.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  v4 = v2;
  v5 = v3;
  v6 = static _CFObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Inputs.PropertyDelta(__int128 *a1)
{
  specialized Set.hash(into:)(a1, *v1);
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Inputs.PropertyDelta()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v3, v1);
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

unint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Inputs.PropertyDelta(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  v4 = v2;
  v5 = v3;
  v6 = static _CFObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type Inputs.StageDelta and conformance Inputs.StageDelta()
{
  result = lazy protocol witness table cache variable for type Inputs.StageDelta and conformance Inputs.StageDelta;
  if (!lazy protocol witness table cache variable for type Inputs.StageDelta and conformance Inputs.StageDelta)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Inputs.StageDelta and conformance Inputs.StageDelta);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Inputs.PrimDelta and conformance Inputs.PrimDelta()
{
  result = lazy protocol witness table cache variable for type Inputs.PrimDelta and conformance Inputs.PrimDelta;
  if (!lazy protocol witness table cache variable for type Inputs.PrimDelta and conformance Inputs.PrimDelta)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Inputs.PrimDelta and conformance Inputs.PrimDelta);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Inputs.StageDelta(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for Inputs.StageDelta(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type [RIOBuilderRef] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [RIOBuilderRef] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RIOBuilderRef] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13RIOBuilderRefaGMd, &_sSaySo13RIOBuilderRefaGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RIOBuilderRef] and conformance [A]);
  }

  return result;
}

uint64_t __RKEntityActionAnimationStyle.init(inputs:)@<X0>(uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v14);
  if (v2)
  {

LABEL_5:
    lazy protocol witness table accessor for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v8 = v14;
  v9 = RIOPxrTfTokenCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  __RKEntityActionAnimationStyle.init(rawValue:)();
  v10 = type metadata accessor for __RKEntityActionAnimationStyle();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    outlined destroy of __RKEntityActionAnimationStyle?(v7);
    goto LABEL_5;
  }

  return (*(v11 + 32))(a2, v7, v10);
}

unint64_t lazy protocol witness table accessor for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError);
  }

  return result;
}

uint64_t outlined destroy of __RKEntityActionAnimationStyle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static ActionBuilder.generateEmphasizeActionSpecifications(inputs:)(double a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v32 = a3;
  v33 = a4;
  v34 = type metadata accessor for __RKEntityEmphasisAnimationType();
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for __RKEntityActionAnimationStyle();
  v10 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for __RKEntityActionSpecification();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v32, v14, v22);
  v25 = v33;
  (*(v10 + 16))(v13, v35, v31);
  (*(v6 + 16))(v9, v36, v34);
  __RKEntityEmphasisActionArguments.init(target:duration:iterations:animationStyle:emphasisAnimationType:)();
  (*(v20 + 104))(v24, *MEMORY[0x277CDAFB0], v19);
  v26 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
    *v25 = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v26);
    *v25 = v26;
  }

  v26[2] = v29 + 1;
  return (*(v20 + 32))(v26 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v29, v24, v19);
}

uint64_t specialized static ActionBuilder.generateEmphasizeActionSpecifications(inputs:)(uint64_t a1)
{
  v1 = type metadata accessor for __RKEntityGroupActionOrder();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for __RKEntityActionAnimationStyle();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for __RKEntityEmphasisAnimationType();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n(0x6E6F697461727564, 0xE800000000000000, v20);
  v40 = v12;
  v41 = v22;
  v39 = v4;
  v42 = v9;
  v24 = v23;

  __RKEntityEmphasisAnimationType.init(inputs:)(v16);
  v25 = v17;
  (*(v18 + 56))(v16, 0, 1, v17);
  v26 = v41;
  (*(v18 + 32))(v41, v16, v25);

  v27 = v8;
  __RKEntityActionAnimationStyle.init(inputs:)(v8);
  v28 = v45;
  v29 = v8;
  v30 = v42;
  (*(v45 + 56))(v29, 0, 1, v42);
  v31 = v40;
  v32 = (*(v28 + 32))(v40, v27, v30);
  v46 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v32, v33);
  *(&v38 - 4) = &v46;
  *(&v38 - 3) = v24;
  *(&v38 - 2) = v31;
  *(&v38 - 1) = v26;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateEmphasizeActionSpecifications(inputs:), (&v38 - 6));
  v34 = v46;
  if (*(v46 + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v38 = type metadata accessor for __RKEntityActionSpecification();
    v35 = *(v38 - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_2619891C0;
    (*(v43 + 104))(v39, *MEMORY[0x277CDAEF8], v44);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    (*(v35 + 104))(v34 + v36, *MEMORY[0x277CDAFA0], v38);
    v28 = v45;
  }

  (*(v28 + 8))(v31, v30);
  (*(v18 + 8))(v26, v25);
  return v34;
}

void GroupActionSchema.performCount.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "performCount");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void VisibilityActionSchema.moveDistance.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "moveDistance");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t (*CollideTriggerSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*CollideTriggerSchema.affectedObjects.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*CollideTriggerSchema.colliders.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x726564696C6C6F63;
  a1[1] = 0xE900000000000073;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*NotificationTriggerSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*NotificationTriggerSchema.identifier.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x696669746E656469;
  a1[1] = 0xEA00000000007265;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ProximityToCameraTriggerSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ProximityToCameraTriggerSchema.affectedObjects.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ProximityToCameraTriggerSchema.distance.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x65636E6174736964;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*SceneTransitionTriggerSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*SceneTransitionTriggerSchema.type.modify(void *a1))(uint64_t a1)
{
  *a1 = 1701869940;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TapTriggerSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TapTriggerSchema.affectedObjects.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*AudioActionSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*AudioActionSchema.affectedObjects.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*AudioActionSchema.audio.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6F69647561;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*AudioActionSchema.auralMode.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x646F4D6C61727561;
  a1[1] = 0xE900000000000065;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*AudioActionSchema.gain.modify(void *a1))(uint64_t a1)
{
  *a1 = 1852399975;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*AudioActionSchema.multiplePerformOperation.modify(void *a1))(uint64_t a1)
{
  *a1 = 0xD000000000000018;
  a1[1] = 0x8000000261994400;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*AudioActionSchema.type.modify(void *a1))(uint64_t a1)
{
  *a1 = 1701869940;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ChangeSceneActionSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ChangeSceneActionSchema.scene.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x656E656373;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*EmphasisActionSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*EmphasisActionSchema.affectedObjects.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*EmphasisActionSchema.duration.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*EmphasisActionSchema.motionType.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x79546E6F69746F6DLL;
  a1[1] = 0xEA00000000006570;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*EmphasisActionSchema.style.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x656C797473;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*GroupActionSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*GroupActionSchema.actions.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x736E6F69746361;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*GroupActionSchema.duration.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*GroupActionSchema.loops.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x73706F6F6CLL;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*GroupActionSchema.performCount.modify(uint64_t a1))(uint64_t a1)
{
  strcpy(a1, "performCount");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*GroupActionSchema.type.modify(void *a1))(uint64_t a1)
{
  *a1 = 1701869940;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ImpulseActionSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ImpulseActionSchema.affectedObjects.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ImpulseActionSchema.velocity.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x797469636F6C6576;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*LookAtCameraActionSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*LookAtCameraActionSchema.affectedObjects.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*LookAtCameraActionSchema.duration.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*LookAtCameraActionSchema.front.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x746E6F7266;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*LookAtCameraActionSchema.upVector.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x726F746365567075;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*NotificationActionSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*NotificationActionSchema.affectedObjects.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*NotificationActionSchema.identifier.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x696669746E656469;
  a1[1] = 0xEA00000000007265;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*OrbitActionSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*OrbitActionSchema.affectedObjects.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*OrbitActionSchema.axis.modify(void *a1))(uint64_t a1)
{
  *a1 = 1936291937;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*OrbitActionSchema.center.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x7265746E6563;
  a1[1] = 0xE600000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*OrbitActionSchema.duration.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*OrbitActionSchema.revolutions.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6974756C6F766572;
  a1[1] = 0xEB00000000736E6FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*OrbitActionSchema.alignToPath.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x506F546E67696C61;
  a1[1] = 0xEB00000000687461;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*SpinActionSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*SpinActionSchema.affectedObjects.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*SpinActionSchema.axis.modify(void *a1))(uint64_t a1)
{
  *a1 = 1936291937;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*SpinActionSchema.duration.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*SpinActionSchema.revolutions.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6974756C6F766572;
  a1[1] = 0xEB00000000736E6FLL;
  return RigidSchema.xformOpOrder.modify;
}

uint64_t (*StartAnimationSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*StartAnimationSchema.affectedObjects.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*StartAnimationSchema.multiplePerformOperation.modify(void *a1))(uint64_t a1)
{
  *a1 = 0xD000000000000018;
  a1[1] = 0x8000000261994400;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*StartAnimationSchema.animationSpeed.modify(char *a1))(uint64_t a1)
{
  strcpy(a1, "animationSpeed");
  a1[15] = -18;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*StartAnimationSchema.duration.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*StartAnimationSchema.reversed.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6465737265766572;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*StartAnimationSchema.reverses.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x7365737265766572;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*StartAnimationSchema.start.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x7472617473;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TransformActionSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TransformActionSchema.affectedObjects.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TransformActionSchema.duration.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TransformActionSchema.easeType.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6570795465736165;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TransformActionSchema.relativeToObject.modify(void *a1))(uint64_t a1)
{
  *a1 = 0xD000000000000010;
  a1[1] = 0x80000002619945A0;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TransformActionSchema.type.modify(void *a1))(uint64_t a1)
{
  *a1 = 1701869940;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TransformActionSchema.xformTarget.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x7261546D726F6678;
  a1[1] = 0xEB00000000746567;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.affectedObjects.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.duration.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.easeType.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6570795465736165;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.motionType.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x79546E6F69746F6DLL;
  a1[1] = 0xEA00000000006570;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.moveDistance.modify(uint64_t a1))(uint64_t a1)
{
  strcpy(a1, "moveDistance");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.style.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x656C797473;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.type.modify(void *a1))(uint64_t a1)
{
  *a1 = 1701869940;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*WaitActionSchema.infoID.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*WaitActionSchema.duration.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

void *keypath_getTm_1@<X0>(void *(*a1)(void *__return_ptr)@<X3>, void *a2@<X8>)
{
  result = a1(v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t keypath_setTm_1(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v7 = *a1;
  v6 = a1[1];
  v9[0] = v7;
  v9[1] = v6;

  return a5(v9);
}

uint64_t closure #1 in static TriggerBuilder.generateCollisionTriggerSpecifications(inputs:)(float a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a3, v6, v9);
  v12 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    *a4 = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
    *a4 = v12;
  }

  v12[2] = v15 + 1;
  return (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v11, v6);
}

uint64_t closure #2 in static TriggerBuilder.generateCollisionTriggerSpecifications(inputs:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = type metadata accessor for __RKEntityTriggerSpecification();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 16))(v11, a2, v15);
  *&v11[v13] = *a4;
  *&v11[v14] = MEMORY[0x277D84F90];
  (*(v8 + 104))(v11, *MEMORY[0x277CDAFE0], v7);
  v16 = *a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    *a3 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    *a3 = v16;
  }

  v16[2] = v19 + 1;
  return (*(v8 + 32))(v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, v11, v7);
}

uint64_t specialized static TriggerBuilder.generateCollisionTriggerSpecifications(inputs:)()
{
  v0 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  v5 = &v7;
  specialized Inputs.forEachTriggerObjectPathInProperty(named:inputName:callback:)(0x726564696C6C6F63, 0xE900000000000073, partial apply for closure #1 in static TriggerBuilder.generateCollisionTriggerSpecifications(inputs:), v4);
  if (*(v7 + 16))
  {
    v6 = v0;
    MEMORY[0x28223BE20](v7, v1);
    v3[2] = &v6;
    v3[3] = &v7;
    specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #2 in static TriggerBuilder.generateCollisionTriggerSpecifications(inputs:), v3);
    v0 = v6;
  }

  return v0;
}

unint64_t SceneDescriptionFoundations.AttributeSpec.description.getter()
{
  _StringGuts.grow(_:)(28);

  v0 = RIOPxrSdfAttributeSpecCopyLayer();
  v1 = RIOPxrSdfLayerCopyIdentifier();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x26670F080](v2, v4);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0xD000000000000019;
}

unint64_t SceneDescriptionFoundations.AttributeSpec.debugDescription.getter()
{
  _StringGuts.grow(_:)(19);

  v0 = SceneDescriptionFoundations.AttributeSpec.description.getter();
  MEMORY[0x26670F080](v0);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t key path setter for Outputs.subscript(_:) : Outputs(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  outlined init with copy of Any?(a1, v6);

  return Outputs.subscript.setter(v6, v4, v3);
}

double closure #1 in Outputs.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 32);
  if (*(v8 + 16))
  {

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v10)
    {
      outlined init with copy of Any(*(v8 + 56) + 32 * v9, a4);

      return result;
    }
  }

  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

uint64_t Outputs.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *(v3 + 16);
  outlined init with copy of Any?(a1, v15);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  v10 = v15[1];
  *(v9 + 40) = v15[0];
  *(v9 + 56) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in Outputs.subscript.setter;
  *(v11 + 24) = v9;
  v14[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed () -> ();
  v14[3] = &block_descriptor_25;
  v12 = _Block_copy(v14);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  outlined destroy of Any?(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in Outputs.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any?(a4, v11);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v11, a2, a3);
  swift_endAccess();
  outlined init with copy of Any?(a4, v11);
  if (v12)
  {
    if (swift_dynamicCast())
    {
      v7 = MEMORY[0x26670EFB0]();
      v8 = [v7 UTF8String];
      v9 = v7;
      if (v8)
      {

        v10 = MEMORY[0x26670EFB0](a2, a3);
        RIOBuilderOutputsStoreValueWithName();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    outlined destroy of Any?(v11);
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*Outputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  MEMORY[0x28223BE20](v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  return Outputs.subscript.modify;
}

void Outputs.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 64);
  if (a2)
  {
    outlined init with copy of Any?(*a1, v2 + 32);

    Outputs.subscript.setter(v2 + 32, v4, v3);
    outlined destroy of Any?(v2);
  }

  else
  {

    Outputs.subscript.setter(v2, v4, v3);
  }

  free(v2);
}

void *Outputs.init(core:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v11 - 8, v12);
  type metadata accessor for OS_dispatch_queue();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v4);
  v2[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2[3] = a1;
  v2[4] = v13;
  RIOBuilderOutputsSetSwiftObject();
  return v2;
}

uint64_t Outputs.deinit()
{
  RIOBuilderOutputsSetSwiftObject();

  return v0;
}

uint64_t Outputs.__deallocating_deinit()
{
  RIOBuilderOutputsSetSwiftObject();

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v7 = a1;
  v6 = a2;
  AudioConstants.AudioFile.CalibrationMode.rawValue.getter(&v5);
  AudioConstants.AudioFile.CalibrationMode.rawValue.getter(&v4);
  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v2 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v2 & 1;
}

{
  if (a1)
  {
    if (String.count.getter() > 0)
    {
LABEL_5:
      v7 = RIOPxrTfTokenCreateWithCString();
      if (a2)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (String.count.getter() > 0)
  {
    goto LABEL_5;
  }

  v7 = RIOPxrTfTokenEmpty();
  if (a2)
  {
LABEL_6:
    if (String.count.getter() > 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v3 = RIOPxrTfTokenEmpty();
    goto LABEL_12;
  }

LABEL_9:
  if (String.count.getter() <= 0)
  {
    goto LABEL_11;
  }

LABEL_10:
  v3 = RIOPxrTfTokenCreateWithCString();
LABEL_12:
  v6 = v3;
  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v4 & 1;
}

id AudioConstants.AudioFile.CalibrationMode.levelToken.getter@<X0>(void *a1@<X8>)
{
  if (*v1 <= 1u)
  {
    if (String.count.getter() >= 1)
    {
      goto LABEL_5;
    }

LABEL_6:
    result = RIOPxrTfTokenEmpty();
    goto LABEL_7;
  }

  if (String.count.getter() < 1)
  {
    goto LABEL_6;
  }

LABEL_5:
  result = RIOPxrTfTokenCreateWithCString();
LABEL_7:
  *a1 = result;
  return result;
}

void AudioConstants.AudioFile.Normalization.init(rawValue:)(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (String.count.getter() < 1)
  {
    v4 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v4 = RIOPxrTfTokenCreateWithCString();
  }

  v5 = v4;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  v6 = static _CFObject.== infix(_:_:)();

  if (v6)
  {

    v7 = 0;
  }

  else
  {
    if (String.count.getter() < 1)
    {
      v8 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v8 = RIOPxrTfTokenCreateWithCString();
    }

    v9 = v8;
    v10 = static _CFObject.== infix(_:_:)();

    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a2 = v7;
}

void AudioConstants.AudioFile.CalibrationMode.init(rawValue:)(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (String.count.getter() < 1)
  {
    v4 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v4 = RIOPxrTfTokenCreateWithCString();
  }

  v5 = v4;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  v6 = static _CFObject.== infix(_:_:)();

  if (v6)
  {

    v7 = 0;
  }

  else
  {
    if (String.count.getter() < 1)
    {
      v8 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v8 = RIOPxrTfTokenCreateWithCString();
    }

    v9 = v8;
    v10 = static _CFObject.== infix(_:_:)();

    if (v10)
    {

      v7 = 1;
    }

    else
    {
      if (String.count.getter() < 1)
      {
        v11 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v11 = RIOPxrTfTokenCreateWithCString();
      }

      v12 = v11;
      v13 = static _CFObject.== infix(_:_:)();

      if (v13)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }
  }

  *a2 = v7;
}

float AudioConstants.AudioFile.CalibrationMode.defaultValue.getter()
{
  result = 80.0;
  if (*v0 != 1)
  {
    return 0.0;
  }

  return result;
}

id one-time initialization function for randomizeStart()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static AudioConstants.AudioFile.randomizeStart = result;
  return result;
}

id AudioConstants.AudioFile.CalibrationMode.rawValue.getter@<X0>(void *a1@<X8>)
{
  if (!*v1)
  {
    if (String.count.getter() >= 1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (*v1 == 1)
  {
    if (String.count.getter() >= 1)
    {
      goto LABEL_8;
    }

LABEL_9:
    result = RIOPxrTfTokenEmpty();
    goto LABEL_10;
  }

  if (String.count.getter() < 1)
  {
    goto LABEL_9;
  }

LABEL_8:
  result = RIOPxrTfTokenCreateWithCString();
LABEL_10:
  *a1 = result;
  return result;
}

void protocol witness for Hashable.hash(into:) in conformance AudioConstants.AudioFile.CalibrationMode(uint64_t a1)
{
  v4 = *v1;
  AudioConstants.AudioFile.CalibrationMode.rawValue.getter(&v3);
  v2 = v3;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioConstants.AudioFile.CalibrationMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v4 = v1;
  AudioConstants.AudioFile.CalibrationMode.rawValue.getter(&v3);
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

id AudioConstants.AudioFile.Normalization.rawValue.getter@<X0>(void *a1@<X8>)
{
  if (*v1)
  {
    if (String.count.getter() >= 1)
    {
      goto LABEL_5;
    }

LABEL_6:
    result = RIOPxrTfTokenEmpty();
    goto LABEL_7;
  }

  if (String.count.getter() < 1)
  {
    goto LABEL_6;
  }

LABEL_5:
  result = RIOPxrTfTokenCreateWithCString();
LABEL_7:
  *a1 = result;
  return result;
}

void protocol witness for Hashable.hash(into:) in conformance AudioConstants.AudioFile.Normalization(uint64_t a1)
{
  v4 = *v1;
  AudioConstants.AudioFile.Normalization.rawValue.getter(&v3);
  v2 = v3;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioConstants.AudioFile.Normalization()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v4 = v1;
  AudioConstants.AudioFile.Normalization.rawValue.getter(&v3);
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AudioConstants.AudioFile.CalibrationMode and conformance AudioConstants.AudioFile.CalibrationMode()
{
  result = lazy protocol witness table cache variable for type AudioConstants.AudioFile.CalibrationMode and conformance AudioConstants.AudioFile.CalibrationMode;
  if (!lazy protocol witness table cache variable for type AudioConstants.AudioFile.CalibrationMode and conformance AudioConstants.AudioFile.CalibrationMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioConstants.AudioFile.CalibrationMode and conformance AudioConstants.AudioFile.CalibrationMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioConstants.AudioFile.Normalization and conformance AudioConstants.AudioFile.Normalization()
{
  result = lazy protocol witness table cache variable for type AudioConstants.AudioFile.Normalization and conformance AudioConstants.AudioFile.Normalization;
  if (!lazy protocol witness table cache variable for type AudioConstants.AudioFile.Normalization and conformance AudioConstants.AudioFile.Normalization)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioConstants.AudioFile.Normalization and conformance AudioConstants.AudioFile.Normalization);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AudioConstants.AudioFile.CalibrationMode] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioConstants.AudioFile.Normalization(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioConstants.AudioFile.Normalization(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t ObjectsChangeNoticePublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ObjectsChangeNoticeSubscription(0, a2, a3, a4);
  swift_allocObject();
  v7 = specialized ObjectsChangeNoticeSubscription.init(_:)(a1, v6);
  v9[3] = v5;
  v9[4] = swift_getWitnessTable();
  v9[0] = v7;
  dispatch thunk of Subscriber.receive(subscription:)();
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t closure #1 in ObjectsChangeNoticeSubscription.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (*(result + 16))
    {
      swift_beginAccess();
      v8 = *(v7 + 24);
      static Subscribers.Demand.unlimited.getter();
      result = static Subscribers.Demand.== infix(_:_:)();
      if (result)
      {
        goto LABEL_6;
      }

      if (v8 < 0)
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v8)
      {
LABEL_6:
        swift_beginAccess();
        v9 = *(v7 + 24);
        static Subscribers.Demand.unlimited.getter();
        if (static Subscribers.Demand.== infix(_:_:)())
        {
LABEL_13:
          swift_endAccess();
          ObjectsChangeInfo.init(_:)(a1, &v15);
          v11 = dispatch thunk of Subscriber.receive(_:)();

          swift_beginAccess();
          v12 = *(v7 + 24);
          static Subscribers.Demand.unlimited.getter();
          if (static Subscribers.Demand.== infix(_:_:)())
          {
LABEL_22:
            swift_endAccess();
          }

          static Subscribers.Demand.unlimited.getter();
          v13 = static Subscribers.Demand.== infix(_:_:)();
          v14 = static Subscribers.Demand.unlimited.getter();
          if (v13)
          {
LABEL_21:
            *(v7 + 24) = v14;
            goto LABEL_22;
          }

          result = static Subscribers.Demand.== infix(_:_:)();
          if (result)
          {
LABEL_19:
            v14 = static Subscribers.Demand.unlimited.getter();
            goto LABEL_21;
          }

          if (((v12 | v11) & 0x8000000000000000) == 0)
          {
            v14 = v12 + v11;
            if (!__OFADD__(v12, v11))
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_21;
              }

LABEL_29:
              __break(1u);
              return result;
            }

            goto LABEL_19;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        static Subscribers.Demand.unlimited.getter();
        result = static Subscribers.Demand.== infix(_:_:)();
        if (result)
        {
          v10 = static Subscribers.Demand.unlimited.getter();
LABEL_12:
          *(v7 + 24) = v10;
          goto LABEL_13;
        }

        if ((v9 & 0x8000000000000000) == 0)
        {
          if (v9)
          {
            v10 = v9 - 1;
            goto LABEL_12;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }
  }

  return result;
}

uint64_t ObjectsChangeNoticeSubscription.request(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
    return swift_endAccess();
  }

  static Subscribers.Demand.unlimited.getter();
  v4 = static Subscribers.Demand.== infix(_:_:)();
  v5 = static Subscribers.Demand.unlimited.getter();
  if (v4)
  {
LABEL_9:
    *(v1 + 24) = v5;
    return swift_endAccess();
  }

  result = static Subscribers.Demand.== infix(_:_:)();
  if (result)
  {
    goto LABEL_7;
  }

  if ((v3 | a1) < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v3 + a1;
  if (__OFADD__(v3, a1))
  {
LABEL_7:
    v5 = static Subscribers.Demand.unlimited.getter();
    goto LABEL_9;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t ObjectsChangeNoticeSubscription.cancel()()
{
  result = *(v0 + 16);
  if (result)
  {
    return MEMORY[0x2821554A8]();
  }

  return result;
}

uint64_t ObjectsChangeNoticeSubscription.deinit()
{
  v1 = direct field offset for ObjectsChangeNoticeSubscription.combineIdentifier;
  v2 = type metadata accessor for CombineIdentifier();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ObjectsChangeNoticeSubscription.__deallocating_deinit()
{
  ObjectsChangeNoticeSubscription.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CustomCombineIdentifierConvertible.combineIdentifier.getter in conformance ObjectsChangeNoticeSubscription<A>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for ObjectsChangeNoticeSubscription.combineIdentifier;
  v5 = type metadata accessor for CombineIdentifier();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *specialized ObjectsChangeNoticeSubscription.init(_:)(uint64_t a1, __n128 a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = aBlock - v7;
  v2[2] = 0;
  v2[3] = static Subscribers.Demand.none.getter();
  CombineIdentifier.init()();
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v5;
  *(v11 + 3) = *(v4 + 88);
  *(v11 + 4) = v9;
  (*(v6 + 32))(&v11[v10], v8, v5);
  aBlock[4] = partial apply for closure #1 in ObjectsChangeNoticeSubscription.init(_:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
  aBlock[3] = &block_descriptor_26;
  v12 = _Block_copy(aBlock);

  v13 = RIOPxrUsdNoticeObjectsChangedAddNoticeCallback();
  _Block_release(v12);

  v14 = v2[2];
  v2[2] = v13;

  return v2;
}

uint64_t type metadata completion function for ObjectsChangeNoticeSubscription(uint64_t a1)
{
  result = type metadata accessor for CombineIdentifier();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static OutputDescriptor.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

void OutputDescriptor.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  MEMORY[0x26670FA20](0);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int OutputDescriptor.hashValue.getter()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance OutputDescriptor()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance OutputDescriptor(uint64_t a1)
{
  v2 = *(v1 + 32);
  MEMORY[0x26670FA20](0);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OutputDescriptor()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance OutputDescriptor(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for OutputDescriptor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OutputDescriptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in static ActionBuilder.generateStartAnimationActionSpecifications(inputs:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  v36 = a8;
  v37 = a9;
  v34 = a7;
  v35 = a6;
  v10 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for __RKEntityActionSpecification();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a5, v15, v23);
  v26 = v10;
  v27 = v35;
  (*(v11 + 16))(v14, v34, v26);
  __RKEntityStartAnimateActionArguments.init(target:loopCount:multiplePerformBehavior:clipStart:clipDuration:clipReversed:animationSpeed:clipReverses:)();
  (*(v21 + 104))(v25, *MEMORY[0x277CDAF68], v20);
  v28 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v27 = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
    *v27 = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v28);
    *v27 = v28;
  }

  v28[2] = v31 + 1;
  return (*(v21 + 32))(v28 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v31, v25, v20);
}

uint64_t specialized static ActionBuilder.generateStartAnimationActionSpecifications(inputs:)(uint64_t a1)
{
  v1 = type metadata accessor for __RKEntityGroupActionOrder();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMd, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n(0x7472617473, 0xE500000000000000, v13);
  v17 = v16;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n(0x6E6F697461727564, 0xE800000000000000, *&v16);
  v19 = v18;
  v20 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSb_Tt1g5Tf4ndn_n(0x6465737265766572, 0xE800000000000000, *&v18);
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n(0x6F6974616D696E61, 0xEE0064656570536ELL, v21);
  v23 = v22;
  LODWORD(v31) = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSb_Tt1g5Tf4ndn_n(0x7365737265766572, 0xE800000000000000, *&v22);

  __RKEntityActionMultiplePerformBehavior.init(inputs:)(v9);
  (*(v11 + 56))(v9, 0, 1, v10);
  v24 = (*(v11 + 32))(v15, v9, v10);
  v32 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v24, v25);
  *(&v30 - 8) = &v32;
  *(&v30 - 7) = v15;
  *(&v30 - 6) = v17;
  *(&v30 - 5) = v19;
  *(&v30 - 32) = v20 & 1;
  *(&v30 - 3) = v23;
  *(&v30 - 16) = v31 & 1;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateStartAnimationActionSpecifications(inputs:), (&v30 - 10));
  v26 = v32;
  if (*(v32 + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v31 = type metadata accessor for __RKEntityActionSpecification();
    v27 = *(v31 - 8);
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2619891C0;
    (*(v2 + 104))(v5, *MEMORY[0x277CDAEF8], v1);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    (*(v27 + 104))(v26 + v28, *MEMORY[0x277CDAFA0], v31);
  }

  (*(v11 + 8))(v15, v10);
  return v26;
}

Swift::Int SceneDescriptionFoundations.Variability.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SceneDescriptionFoundations.Variability and conformance SceneDescriptionFoundations.Variability()
{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.Variability and conformance SceneDescriptionFoundations.Variability;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.Variability and conformance SceneDescriptionFoundations.Variability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.Variability and conformance SceneDescriptionFoundations.Variability);
  }

  return result;
}

uint64_t specialized RIOPxrVtValueRef.mapUSDValue<A>()()
{
  v0 = RIOPxrVtValueCopyString();
  if (v0)
  {
    v1 = v0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t closure #1 in ReferenceImageBuilder.stageSubscription.getter()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v1;
  v3 = inited + 32;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v5 = v4;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(v3);
  v6 = closure #1 in closure #1 in ReferenceImageBuilder.stageSubscription.getter();
  type metadata accessor for TypeNamePrimDirtyState();
  v7 = swift_allocObject();
  v7[5] = v5;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v8);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v6);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v7[2] = v11;
  v7[3] = v6;
  v7[4] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_26198A640;
  *(v14 + 32) = v7;

  specialized Sequence.forEach(_:)(v14);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v11;
}

uint64_t closure #1 in closure #1 in ReferenceImageBuilder.stageSubscription.getter()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v1 = v0;
  type metadata accessor for NamedPropertyDirtyState();
  v2 = swift_allocObject();
  v2[4] = v1;
  v3 = v1;
  v4 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v2[2] = v4;
  v2[3] = v6;

  if (String.count.getter() < 1)
  {
    v7 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v7 = RIOPxrTfTokenCreateWithCString();
  }

  v8 = v7;
  v9 = swift_allocObject();
  v9[4] = v8;
  v10 = v8;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v4);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v9[2] = v4;
  v9[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A9D0;
  *(inited + 32) = v2;
  *(inited + 40) = v9;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v4;
}

void closure #1 in ReferenceImageBuilder.ImageReferenceState.init(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v22 - v4;
  v6 = RIOBuilderInputsCopyStage();
  if (!v6)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  v8 = RIOPxrUsdStageCopyRootLayer();
  HasCustomLayerMetaData = RIOPxrSdfLayerHasCustomLayerMetaData();

  if (!HasCustomLayerMetaData)
  {
    goto LABEL_12;
  }

  v10 = RIOBuilderInputsCopyStage();
  if (!v10)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v11 = v10;
  if (String.count.getter() < 1)
  {
    v12 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v12 = RIOPxrTfTokenCreateWithCString();
  }

  v13 = v12;
  v14 = RIOPxrUsdStageCopyRootLayer();
  v15 = RIOPxrSdfLayerCopyCustomLayerDataValue();

  if (!v15)
  {

    goto LABEL_12;
  }

  v16 = specialized RIOPxrVtValueRef.mapUSDValue<A>()();
  v18 = v17;

  if (!v18 || (v22[0] = v16, v22[1] = v18, Regex.init(_regexString:version:)(), lazy protocol witness table accessor for type String and conformance String(), lazy protocol witness table accessor for type Regex<Substring> and conformance Regex<A>(), v19 = BidirectionalCollection<>.starts<A>(with:)(), (*(v2 + 8))(v5, v1), , (v19 & 1) == 0))
  {
LABEL_12:
    v20 = RIOBuilderInputsCopyStage();
    if (v20)
    {
      v21 = v20;
      RIOPxrUsdStageGetMetersPerUnit();

      return;
    }

    goto LABEL_15;
  }
}

void ReferenceImageBuilder.run(inputs:)(uint64_t a1)
{
  v2 = v1;

  specialized ReferenceImageBuilder.ImageReferenceState.init(_:)(v3, v20);
  if (v20[1])
  {
    v5 = v20[4];
    v4 = v20[5];
    v7 = v20[6];
    v6 = v20[7];
    v8 = [objc_allocWithZone(MEMORY[0x277CE5348]) initWithCGImage:v20[2] orientation:1 physicalWidth:*v20];
    v9 = dispatch thunk of __USDARReferenceProvidingPlugin.createFullSchemePath(group:name:)();
    v11 = v10;
    v12 = MEMORY[0x26670EFB0]();
    [v8 setName_];

    v13._countAndFlagsBits = v9;
    v13._object = v11;
    __USDARReferenceProvidingPlugin.registerARReference(_:forFullSchemePath:)(v8, v13);

    swift_beginAccess();
    v14 = objc_getAssociatedObject(v1, &static BuilderAssociatedKeys.OutputsReference);
    swift_endAccess();
    if (v14)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(v17, &v18);
      type metadata accessor for Outputs();
      swift_dynamicCast();
      v15 = MEMORY[0x277D837D0];
      v19 = MEMORY[0x277D837D0];
      *&v18 = v7;
      *(&v18 + 1) = v6;

      Outputs.subscript.setter(&v18, 0x656372756F736572, 0xED0000656D616E5FLL);

      swift_beginAccess();
      v16 = objc_getAssociatedObject(v2, &static BuilderAssociatedKeys.OutputsReference);
      swift_endAccess();
      if (v16)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        outlined init with take of Any(v17, &v18);
        swift_dynamicCast();
        v19 = v15;
        *&v18 = v5;
        *(&v18 + 1) = v4;

        Outputs.subscript.setter(&v18, 0x656372756F736572, 0xEE0070756F72675FLL);

        outlined destroy of ReferenceImageBuilder.ImageReferenceState?(v20);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

Swift::Int protocol witness for Builder.outputDescriptors() in conformance ReferenceImageBuilder()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16OutputDescriptorO_Tt0g5Tf4g_n(&outlined read-only object #0 of ReferenceImageBuilder.outputDescriptors());
  swift_arrayDestroy();
  return v0;
}

CGImageRef specialized static CGImageRef.image(with:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      return 0;
    }
  }

  else if (v2)
  {
    if (a1 == a1 >> 32)
    {
      return 0;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = CGImageSourceCreateWithData(isa, 0);

  if (v4)
  {
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v4);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, PrimaryImageIndex, 0);

    return ImageAtIndex;
  }

  return 0;
}

uint64_t specialized ReferenceImageBuilder.stageSubscription.getter()
{
  v0 = closure #1 in ReferenceImageBuilder.stageSubscription.getter();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  v2 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(MEMORY[0x277D84FA0], v0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v2;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v1;
}

void specialized ReferenceImageBuilder.ImageReferenceState.init(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v4 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v4 = RIOPxrTfTokenCreateWithCString();
  }

  v5 = v4;
  if (!RIOPxrUsdPrimHasAttribute())
  {

    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();

LABEL_18:

    outlined consume of Object.Error(0);
    goto LABEL_19;
  }

  v6 = RIOPxrUsdPrimCopyAttribute();

  type metadata accessor for AnyAttribute();
  v7 = swift_allocObject();
  v7[2] = v6;
  if (String.count.getter() <= 0)
  {
    v8 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v8 = RIOPxrTfTokenCreateWithCString();
  }

  v9 = v8;
  if (!RIOPxrUsdPrimHasAttribute())
  {

    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();

    outlined consume of Result<AnyAttribute, Object.Error>(v7, 0);
    goto LABEL_18;
  }

  v10 = RIOPxrUsdPrimCopyAttribute();

  v11 = swift_allocObject();
  v11[2] = v10;
  EmptyValue = RIOPxrUsdAttributeCopyValue();
  if (!EmptyValue)
  {
    EmptyValue = RIOPxrVtValueCreateEmptyValue();
  }

  v13 = EmptyValue;
  v14 = RIOPxrVtValueCopyAssetPath();

  if (!v14)
  {
    outlined consume of Result<AnyAttribute, Object.Error>(v7, 0);
    outlined consume of Result<AnyAttribute, Object.Error>(v11, 0);

    CFDataNoCopy = 0;
    goto LABEL_21;
  }

  v15 = RIOPxrUsdAttributeCopyValue();
  if (!v15)
  {
    v15 = RIOPxrVtValueCreateEmptyValue();
  }

  v16 = v15;
  Float = RIOPxrVtValueGetFloat();

  if (Float)
  {
    closure #1 in ReferenceImageBuilder.ImageReferenceState.init(_:)(a1);
    v19 = RIOPxrSdfAssetPathResolvedPathCopyString();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.utf8CString.getter();
    v20 = RIOPxrArAssetCreate();

    if (v20)
    {
      CFDataNoCopy = RIOPxrArAssetCreateCFDataNoCopy();
      if (!CFDataNoCopy)
      {
        outlined consume of Result<AnyAttribute, Object.Error>(v7, 0);
        outlined consume of Result<AnyAttribute, Object.Error>(v11, 0);

        goto LABEL_20;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static Data._conditionallyBridgeFromObjectiveC(_:result:)();
      }

      outlined consume of Result<AnyAttribute, Object.Error>(v7, 0);
      outlined consume of Result<AnyAttribute, Object.Error>(v11, 0);
    }

    else
    {
      outlined consume of Result<AnyAttribute, Object.Error>(v7, 0);
      outlined consume of Result<AnyAttribute, Object.Error>(v11, 0);
    }
  }

  else
  {

    outlined consume of Result<AnyAttribute, Object.Error>(v11, 0);
    outlined consume of Result<AnyAttribute, Object.Error>(v7, 0);
  }

LABEL_19:
  CFDataNoCopy = 0;
LABEL_20:
  v14 = 0;
LABEL_21:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = CFDataNoCopy;
  a2[5] = v14;
  a2[6] = 0;
  a2[7] = 0;
}

uint64_t specialized ReferenceImageBuilder.clear(inputs:)()
{
  v1 = v0;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v5, &v6);
    type metadata accessor for Outputs();
    swift_dynamicCast();
    v6 = 0u;
    v7 = 0u;
    Outputs.subscript.setter(&v6, 0x656372756F736572, 0xED0000656D616E5FLL);

    swift_beginAccess();
    v4 = objc_getAssociatedObject(v1, &static BuilderAssociatedKeys.OutputsReference);
    result = swift_endAccess();
    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(v5, &v6);
      swift_dynamicCast();
      v6 = 0u;
      v7 = 0u;
      Outputs.subscript.setter(&v6, 0x656372756F736572, 0xEE0070756F72675FLL);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of ReferenceImageBuilder.ImageReferenceState?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21ReferenceImageBuilderC0dC5StateVSgMd, &_s9RealityIO21ReferenceImageBuilderC0dC5StateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Regex<Substring> and conformance Regex<A>()
{
  result = lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>;
  if (!lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ReferenceImageBuilder.ImageReferenceState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ReferenceImageBuilder.ImageReferenceState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in static ActionBuilder.generateTransformAnimationActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v36 = a3;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v31 - v7;
  v32 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for __RKEntityActionSpecification();
  v18 = *(v31 - 8);
  v20 = MEMORY[0x28223BE20](v31, v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v14 + 16);
  v23(v17, v33, v13, v20);
  (*(v9 + 16))(v12, v34, v32);
  (v23)(v8, v35, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  v24 = v36;
  v25 = v31;
  __RKEntityStartAnimateActionArguments.init(target:loopCount:multiplePerformBehavior:clipStart:clipDuration:clipReversed:animationSpeed:clipReverses:muteAudio:audioGain:targetAnimation:)();
  (*(v18 + 104))(v22, *MEMORY[0x277CDAF68], v25);
  v26 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
    *v24 = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v26);
    *v24 = v26;
  }

  v26[2] = v29 + 1;
  return (*(v18 + 32))(v26 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v29, v22, v25);
}

void *specialized static ActionBuilder.generateTransformAnimationActionSpecifications(inputs:)(uint64_t a1)
{
  v50 = type metadata accessor for __RKEntityGroupActionOrder();
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v1);
  v51 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMd, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v44 - v5;
  v7 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = specialized Inputs.pathsForRelationship(named:requestContext:)(0x6F6974616D696E61, 0xE90000000000006ELL, v18);
  v47 = v14;
  v48 = v20;
  v45 = v6;
  v46 = v10;
  v49 = v16;
  if (!*(v21 + 16))
  {

    return MEMORY[0x277D84F90];
  }

  v23 = *(v21 + 32);

  result = RIOBuilderInputsCopyStage();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v24 = result;
  HasPrimAtPrimPath = RIOPxrUsdStageHasPrimAtPrimPath();

  if (!HasPrimAtPrimPath)
  {

    return MEMORY[0x277D84F90];
  }

  v26 = v47;
  Inputs.identifierForEntity(withInputKey:)(0x6F6974616D696E61, 0xEF797469746E456ELL, v47);
  v27 = v49;
  v28 = v15;
  if ((*(v49 + 48))(v26, 1, v15) == 1)
  {

    outlined destroy of UUID?(v26);
    return MEMORY[0x277D84F90];
  }

  v44 = v23;
  (*(v27 + 32))(v48, v26, v15);

  v29 = v45;
  __RKEntityActionMultiplePerformBehavior.init(inputs:)(v45);
  v30 = v53;
  (*(v53 + 56))(v29, 0, 1, v7);
  v31 = v46;
  v32 = v7;
  v33 = (*(v30 + 32))();
  v54 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v33, v34);
  *(&v44 - 4) = &v54;
  *(&v44 - 3) = v31;
  v35 = v48;
  *(&v44 - 2) = v48;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateTransformAnimationActionSpecifications(inputs:), (&v44 - 6));
  v36 = v54;
  v38 = v51;
  v37 = v52;
  if (*(v54 + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v39 = type metadata accessor for __RKEntityActionSpecification();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_2619891C0;
    (*(v37 + 104))(v38, *MEMORY[0x277CDAEF8], v50);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    v42 = v36 + v41;
    v35 = v48;
    v43 = v39;
    v30 = v53;
    (*(v40 + 104))(v42, *MEMORY[0x277CDAFA0], v43);
    v28 = v15;
  }

  (*(v30 + 8))(v31, v32);
  (*(v49 + 8))(v35, v28);
  return v36;
}

uint64_t closure #1 in static ActionBuilder.generateOrbitActionSpecifications(inputs:)(double a1, double a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unsigned int a8)
{
  v39 = a8;
  v38 = a3;
  v35 = a7;
  v36 = a6;
  v34 = a5;
  v37 = type metadata accessor for __RKEntitySpinDirectionType();
  v8 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v15.n128_f32[0] = MEMORY[0x28223BE20](v12, v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v15);
  v20 = &v34 - v19;
  v21 = type metadata accessor for __RKEntityActionSpecification();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v13 + 16);
  v27(v20, v34, v12, v24);
  (v27)(v17, v35, v12);
  v28 = v36;
  (*(v8 + 104))(v11, *MEMORY[0x277CDAF28], v37);
  __RKEntityOrbitEntityActionArguments.init(target:pivotTarget:duration:rotations:orbitalAxis:orientToPath:spinDirection:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:)();
  (*(v22 + 104))(v26, *MEMORY[0x277CDAF50], v21);
  v29 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
    *v28 = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v29);
    *v28 = v29;
  }

  v29[2] = v32 + 1;
  return (*(v22 + 32))(v29 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v32, v26, v21);
}

uint64_t specialized static ActionBuilder.generateOrbitActionSpecifications(inputs:)()
{
  v0 = type metadata accessor for __RKEntityGroupActionOrder();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = specialized Inputs.pathsForRelationship(named:requestContext:)(0x7265746E6563, 0xE600000000000000, v12);
  if (!*(v15 + 16))
  {

    return MEMORY[0x277D84F90];
  }

  v33 = v1;
  v16 = *(v15 + 32);

  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n(0x6E6F697461727564, 0xE800000000000000, v17);
  v19 = v18;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n(0x6974756C6F766572, 0xEB00000000736E6FLL, *&v18);
  v21 = v20;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA7Vector3VySdG_Tt1g5(v34);
  v31 = v34[0];
  *v32 = v34[1];
  v23 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSb_Tt1g5Tf4ndn_n(0x506F546E67696C61, 0xEB00000000687461, *v34);
  Inputs.identifierForEntity(withInputKey:)(0x6E457265746E6563, 0xEC00000079746974, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of UUID?(v8);

    return MEMORY[0x277D84F90];
  }

  v24 = (*(v10 + 32))(v14, v8, v9);
  v25.n128_u64[0] = vcvt_f32_f64(v31);
  *&v26 = v32[0];
  v25.n128_u64[1] = v26;
  *&v34[0] = MEMORY[0x277D84F90];
  *&v27 = MEMORY[0x28223BE20](v24, v25);
  *(&v31 - 8) = v34;
  *(&v31 - 7) = v14;
  *(&v31 - 6) = v19;
  *(&v31 - 5) = v21;
  *(&v31 - 2) = v27;
  *(&v31 - 16) = v23 & 1;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateOrbitActionSpecifications(inputs:), (&v31 - 5));
  v28 = *&v34[0];
  if (*(*&v34[0] + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    *&v32[0] = type metadata accessor for __RKEntityActionSpecification();
    v29 = *(*&v32[0] - 8);
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2619891C0;
    (*(v33 + 104))(v4, *MEMORY[0x277CDAEF8], v0);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    (*(v29 + 104))(v28 + v30, *MEMORY[0x277CDAFA0], *&v32[0]);
  }

  (*(v10 + 8))(v14, v9);
  return v28;
}

id memoryConstraintLogObject()
{
  if (memoryConstraintLogObject_once != -1)
  {
    dispatch_once(&memoryConstraintLogObject_once, &__block_literal_global_0);
  }

  v1 = memoryConstraintLogObject__logObject;

  return v1;
}

uint64_t __memoryConstraintLogObject_block_invoke()
{
  memoryConstraintLogObject__logObject = os_log_create("com.apple.RealityIO", "MemoryConstraints");

  return MEMORY[0x2821F96F8]();
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x28211D098](percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t __AssetLoadRequest.add(asset:)()
{
  return MEMORY[0x2821291A8]();
}

{
  return MEMORY[0x2821291B0]();
}

uint64_t Entity.ComponentSet.subscript.setter()
{
  return MEMORY[0x282129C38]();
}

{
  return MEMORY[0x282129C78]();
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = MEMORY[0x28211E9E8](a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}