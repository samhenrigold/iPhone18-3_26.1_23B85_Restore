void *MetalDataType.Matrix.deinit()
{

  return v0;
}

uint64_t MetalDataType.Matrix.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *MetalDataType.Function.__allocating_init(resultType:argumentTypes:)(uint64_t a1, unint64_t a2)
{
  swift_allocObject();
  v4 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(a1, a2);

  return v4;
}

char *MetalDataType.Function.init(resultType:argumentTypes:)(uint64_t a1, unint64_t a2)
{
  v2 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(a1, a2);

  return v2;
}

uint64_t MetalDataType.Function.__ivar_destroyer()
{
}

void *MetalDataType.Function.deinit()
{

  return v0;
}

uint64_t MetalDataType.Function.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MetalDataType.AddressSpace.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x746E6174736E6F63;
  v2 = 0x646165726874;
  if (a1 != 2)
  {
    v2 = 0x7267646165726874;
  }

  if (a1)
  {
    v1 = 0x656369766564;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MetalDataType.AddressSpace(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x746E6174736E6F63;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0xE600000000000000;
  v6 = 0x646165726874;
  if (v3 != 2)
  {
    v6 = 0x7267646165726874;
    v5 = 0xEB0000000070756FLL;
  }

  v7 = 0x656369766564;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v7 = 0x746E6174736E6F63;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE800000000000000;
  v11 = 0xE600000000000000;
  v12 = 0x646165726874;
  if (*a2 != 2)
  {
    v12 = 0x7267646165726874;
    v11 = 0xEB0000000070756FLL;
  }

  if (*a2)
  {
    v2 = 0x656369766564;
    v10 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetalDataType.AddressSpace()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MetalDataType.AddressSpace(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetalDataType.AddressSpace(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MetalDataType.AddressSpace@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MetalDataType.AddressSpace.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MetalDataType.AddressSpace(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x746E6174736E6F63;
  v4 = 0xE600000000000000;
  v5 = 0x646165726874;
  if (*v1 != 2)
  {
    v5 = 0x7267646165726874;
    v4 = 0xEB0000000070756FLL;
  }

  if (*v1)
  {
    v3 = 0x656369766564;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t MetalDataType.Pointer.__allocating_init(to:isConst:addressSpace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  swift_allocObject();
  v8 = a4(a1, a2, a3);

  return v8;
}

uint64_t MetalDataType.Reference.init(to:isConst:addressSpace:)(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized MetalDataType.Reference.init(to:isConst:addressSpace:)(a1, a2, a3);

  return v3;
}

void *MetalDataType.Vector.deinit(void (*a1)(void))
{

  a1(*(v1 + 72));
  return v1;
}

uint64_t MetalDataType.Vector.__deallocating_deinit(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 72));

  return swift_deallocClassInstance();
}

uint64_t MetalDataType.const()()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(*v0 + 88);

  v7 = v0[7];
  v8 = v5(v6);
  type metadata accessor for MetalDataType();
  result = swift_allocObject();
  *(result + 32) = v3;
  *(result + 40) = v2;
  *(result + 48) = v1;
  *(result + 64) = 1;
  *(result + 56) = v7;
  *(result + 16) = v8;
  *(result + 24) = v4;
  return result;
}

uint64_t MetalDataType.pointerTo(withAddressSpace:)(uint64_t a1)
{
  v1 = a1;
  type metadata accessor for MetalDataType.Pointer();
  swift_allocObject();

  v3 = specialized MetalDataType.Pointer.init(to:isConst:addressSpace:)(v2, 0, v1);

  return v3;
}

uint64_t one-time initialization function for void()
{
  type metadata accessor for MetalDataType();
  result = swift_allocObject();
  *(result + 32) = 0xE400000000000000;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = 1684631414;
  static MetalDataType.void = result;
  return result;
}

double one-time initialization function for BOOL()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE400000000000000;
  *(v0 + 40) = xmmword_265F22450;
  *(v0 + 64) = 0;
  *&result = 0x100000001;
  *(v0 + 56) = 0x100000001;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 1819242338;
  static MetalDataType.BOOL = v0;
  return result;
}

double one-time initialization function for uint8()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE700000000000000;
  *(v0 + 40) = xmmword_265F22460;
  *(v0 + 64) = 0;
  *&result = 0x100000001;
  *(v0 + 56) = 0x100000001;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F38746E6975;
  static MetalDataType.uint8 = v0;
  return result;
}

uint64_t *MetalDataType.uint8.unsafeMutableAddressor()
{
  if (one-time initialization token for uint8 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.uint8;
}

double one-time initialization function for uint16()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE800000000000000;
  *(v0 + 40) = xmmword_265F22470;
  *(v0 + 64) = 0;
  *&result = 0x200000002;
  *(v0 + 56) = 0x200000002;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F3631746E6975;
  static MetalDataType.uint16 = v0;
  return result;
}

uint64_t *MetalDataType.uint16.unsafeMutableAddressor()
{
  if (one-time initialization token for uint16 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.uint16;
}

double one-time initialization function for uint32()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE800000000000000;
  *(v0 + 40) = xmmword_265F22480;
  *(v0 + 64) = 0;
  *&result = 0x400000004;
  *(v0 + 56) = 0x400000004;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F3233746E6975;
  static MetalDataType.uint32 = v0;
  return result;
}

uint64_t *MetalDataType.uint32.unsafeMutableAddressor()
{
  if (one-time initialization token for uint32 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.uint32;
}

double one-time initialization function for uint64()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE800000000000000;
  *(v0 + 40) = xmmword_265F22490;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F3436746E6975;
  static MetalDataType.uint64 = v0;
  return result;
}

uint64_t *MetalDataType.uint64.unsafeMutableAddressor()
{
  if (one-time initialization token for uint64 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.uint64;
}

double one-time initialization function for int8()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE600000000000000;
  *(v0 + 40) = xmmword_265F224A0;
  *(v0 + 64) = 0;
  *&result = 0x100000001;
  *(v0 + 56) = 0x100000001;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F38746E69;
  static MetalDataType.int8 = v0;
  return result;
}

uint64_t *MetalDataType.int8.unsafeMutableAddressor()
{
  if (one-time initialization token for int8 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.int8;
}

double one-time initialization function for int16()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE700000000000000;
  *(v0 + 40) = xmmword_265F224B0;
  *(v0 + 64) = 0;
  *&result = 0x200000002;
  *(v0 + 56) = 0x200000002;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F3631746E69;
  static MetalDataType.int16 = v0;
  return result;
}

uint64_t *MetalDataType.int16.unsafeMutableAddressor()
{
  if (one-time initialization token for int16 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.int16;
}

double one-time initialization function for int32()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE700000000000000;
  *(v0 + 40) = xmmword_265F224C0;
  *(v0 + 64) = 0;
  *&result = 0x400000004;
  *(v0 + 56) = 0x400000004;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F3233746E69;
  static MetalDataType.int32 = v0;
  return result;
}

uint64_t *MetalDataType.int32.unsafeMutableAddressor()
{
  if (one-time initialization token for int32 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.int32;
}

double one-time initialization function for int64()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE700000000000000;
  *(v0 + 40) = xmmword_265F224D0;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F3436746E69;
  static MetalDataType.int64 = v0;
  return result;
}

uint64_t *MetalDataType.int64.unsafeMutableAddressor()
{
  if (one-time initialization token for int64 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.int64;
}

double one-time initialization function for half()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE400000000000000;
  *(v0 + 40) = xmmword_265F224E0;
  *(v0 + 64) = 0;
  *&result = 0x200000002;
  *(v0 + 56) = 0x200000002;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 1718378856;
  static MetalDataType.half = v0;
  return result;
}

double one-time initialization function for float()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE500000000000000;
  *(v0 + 40) = xmmword_265F224F0;
  *(v0 + 64) = 0;
  *&result = 0x400000004;
  *(v0 + 56) = 0x400000004;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x74616F6C66;
  static MetalDataType.float = v0;
  return result;
}

double one-time initialization function for size_t()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE600000000000000;
  *(v0 + 40) = xmmword_265F22500;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x745F657A6973;
  static MetalDataType.size_t = v0;
  return result;
}

uint64_t *MetalDataType.size_t.unsafeMutableAddressor()
{
  if (one-time initialization token for size_t != -1)
  {
    swift_once();
  }

  return &static MetalDataType.size_t;
}

uint64_t (*static MetalDataType.size_t.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for size_t != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.StringNode.children.modify;
}

double one-time initialization function for ptrdiff()
{
  type metadata accessor for MetalDataType.Number();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xE900000000000074;
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x8000000265F2ECE0;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x5F66666964727470;
  static MetalDataType.ptrdiff = v0;
  return result;
}

uint64_t *MetalDataType.ptrdiff.unsafeMutableAddressor()
{
  if (one-time initialization token for ptrdiff != -1)
  {
    swift_once();
  }

  return &static MetalDataType.ptrdiff;
}

uint64_t static MetalDataType.size_t.getter(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static MetalDataType.size_t.setter(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static MetalDataType.ptrdiff.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for ptrdiff != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.Element.children.modify;
}

double one-time initialization function for uint2()
{
  if (one-time initialization token for uint32 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.uint32;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 2;
  v2 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v12;
  v4 = *(v12 + 16);
  v5 = *(v12 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v12;
    v5 = *(v12 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v12;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  *(v1 + 24) = 0x32746E6975;
  *(v1 + 32) = 0xE500000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v3;
  static MetalDataType.uint2 = v1;
  return result;
}

double one-time initialization function for uint3()
{
  if (one-time initialization token for uint32 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.uint32;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 3;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v15;
  v4 = *(v15 + 16);
  v5 = *(v15 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v15;
    v5 = *(v15 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v15 + 16) = v12 + 1;
  v13 = v15 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;

  *(v1 + 24) = 0x33746E6975;
  *(v1 + 32) = 0xE500000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x1000000010;
  *(v1 + 56) = 0x1000000010;
  *(v1 + 16) = v15;
  static MetalDataType.uint3 = v1;
  return result;
}

double one-time initialization function for uint4()
{
  if (one-time initialization token for uint32 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.uint32;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 4;
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v20;
  v4 = *(v20 + 16);
  v5 = *(v20 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v20;
    v5 = *(v20 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v20;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  v13 = v12 + 1;

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v14 = v20;
  *(v20 + 16) = v13;
  v15 = v20 + 48 * v12;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  *(v15 + 48) = v0;
  *(v15 + 56) = v2;
  *(v15 + 64) = 1;
  *(v15 + 72) = 2;
  v16 = *(v20 + 24);
  v17 = v12 + 2;

  if (v13 >= v16 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17, 1);
    v14 = v20;
  }

  *(v14 + 16) = v17;
  v18 = v14 + 48 * v13;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  *(v18 + 48) = v0;
  *(v18 + 56) = v2;
  *(v18 + 64) = 1;
  *(v18 + 72) = 3;

  *(v1 + 24) = 0x34746E6975;
  *(v1 + 32) = 0xE500000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x1000000010;
  *(v1 + 56) = 0x1000000010;
  *(v1 + 16) = v14;
  static MetalDataType.uint4 = v1;
  return result;
}

double one-time initialization function for int2()
{
  if (one-time initialization token for int32 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.int32;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 2;
  v2 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v12;
  v4 = *(v12 + 16);
  v5 = *(v12 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v12;
    v5 = *(v12 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v12;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  *(v1 + 24) = 846491241;
  *(v1 + 32) = 0xE400000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v3;
  static MetalDataType.int2 = v1;
  return result;
}

double one-time initialization function for int3()
{
  if (one-time initialization token for int32 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.int32;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 3;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v15;
  v4 = *(v15 + 16);
  v5 = *(v15 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v15;
    v5 = *(v15 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v15 + 16) = v12 + 1;
  v13 = v15 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;

  *(v1 + 24) = 863268457;
  *(v1 + 32) = 0xE400000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x1000000010;
  *(v1 + 56) = 0x1000000010;
  *(v1 + 16) = v15;
  static MetalDataType.int3 = v1;
  return result;
}

double one-time initialization function for int4()
{
  if (one-time initialization token for int32 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.int32;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 4;
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v20;
  v4 = *(v20 + 16);
  v5 = *(v20 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v20;
    v5 = *(v20 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v20;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  v13 = v12 + 1;

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v14 = v20;
  *(v20 + 16) = v13;
  v15 = v20 + 48 * v12;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  *(v15 + 48) = v0;
  *(v15 + 56) = v2;
  *(v15 + 64) = 1;
  *(v15 + 72) = 2;
  v16 = *(v20 + 24);
  v17 = v12 + 2;

  if (v13 >= v16 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17, 1);
    v14 = v20;
  }

  *(v14 + 16) = v17;
  v18 = v14 + 48 * v13;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  *(v18 + 48) = v0;
  *(v18 + 56) = v2;
  *(v18 + 64) = 1;
  *(v18 + 72) = 3;

  *(v1 + 24) = 880045673;
  *(v1 + 32) = 0xE400000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x1000000010;
  *(v1 + 56) = 0x1000000010;
  *(v1 + 16) = v14;
  static MetalDataType.int4 = v1;
  return result;
}

double one-time initialization function for float2()
{
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 2;
  v2 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v12;
  v4 = *(v12 + 16);
  v5 = *(v12 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v12;
    v5 = *(v12 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v12;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  *(v1 + 24) = 0x3274616F6C66;
  *(v1 + 32) = 0xE600000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v3;
  static MetalDataType.float2 = v1;
  return result;
}

double one-time initialization function for float3()
{
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 3;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v15;
  v4 = *(v15 + 16);
  v5 = *(v15 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v15;
    v5 = *(v15 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v15 + 16) = v12 + 1;
  v13 = v15 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;

  *(v1 + 24) = 0x3374616F6C66;
  *(v1 + 32) = 0xE600000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x1000000010;
  *(v1 + 56) = 0x1000000010;
  *(v1 + 16) = v15;
  static MetalDataType.float3 = v1;
  return result;
}

double one-time initialization function for float4()
{
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 4;
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v20;
  v4 = *(v20 + 16);
  v5 = *(v20 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v20;
    v5 = *(v20 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v20;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  v13 = v12 + 1;

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v14 = v20;
  *(v20 + 16) = v13;
  v15 = v20 + 48 * v12;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  *(v15 + 48) = v0;
  *(v15 + 56) = v2;
  *(v15 + 64) = 1;
  *(v15 + 72) = 2;
  v16 = *(v20 + 24);
  v17 = v12 + 2;

  if (v13 >= v16 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17, 1);
    v14 = v20;
  }

  *(v14 + 16) = v17;
  v18 = v14 + 48 * v13;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  *(v18 + 48) = v0;
  *(v18 + 56) = v2;
  *(v18 + 64) = 1;
  *(v18 + 72) = 3;

  *(v1 + 24) = 0x3474616F6C66;
  *(v1 + 32) = 0xE600000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x1000000010;
  *(v1 + 56) = 0x1000000010;
  *(v1 + 16) = v14;
  static MetalDataType.float4 = v1;
  return result;
}

double one-time initialization function for half2()
{
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 2;
  v2 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v12;
  v4 = *(v12 + 16);
  v5 = *(v12 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v12;
    v5 = *(v12 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v12;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  *(v1 + 24) = 0x32666C6168;
  *(v1 + 32) = 0xE500000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x400000004;
  *(v1 + 56) = 0x400000004;
  *(v1 + 16) = v3;
  static MetalDataType.half2 = v1;
  return result;
}

double one-time initialization function for half3()
{
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 3;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v15;
  v4 = *(v15 + 16);
  v5 = *(v15 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v15;
    v5 = *(v15 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v15 + 16) = v12 + 1;
  v13 = v15 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;

  *(v1 + 24) = 0x33666C6168;
  *(v1 + 32) = 0xE500000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v15;
  static MetalDataType.half3 = v1;
  return result;
}

double one-time initialization function for half4()
{
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 4;
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v20;
  v4 = *(v20 + 16);
  v5 = *(v20 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v20;
    v5 = *(v20 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v20;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  v13 = v12 + 1;

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v14 = v20;
  *(v20 + 16) = v13;
  v15 = v20 + 48 * v12;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  *(v15 + 48) = v0;
  *(v15 + 56) = v2;
  *(v15 + 64) = 1;
  *(v15 + 72) = 2;
  v16 = *(v20 + 24);
  v17 = v12 + 2;

  if (v13 >= v16 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17, 1);
    v14 = v20;
  }

  *(v14 + 16) = v17;
  v18 = v14 + 48 * v13;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  *(v18 + 48) = v0;
  *(v18 + 56) = v2;
  *(v18 + 64) = 1;
  *(v18 + 72) = 3;

  *(v1 + 24) = 0x34666C6168;
  *(v1 + 32) = 0xE500000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v14;
  static MetalDataType.half4 = v1;
  return result;
}

double one-time initialization function for color3()
{
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 3;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v15;
  v4 = *(v15 + 16);
  v5 = *(v15 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v15;
    v5 = *(v15 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v15 + 16) = v12 + 1;
  v13 = v15 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;

  *(v1 + 24) = 0x33726F6C6F63;
  *(v1 + 32) = 0xE600000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v15;
  static MetalDataType.color3 = v1;
  return result;
}

double one-time initialization function for color4()
{
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half;
  type metadata accessor for MetalDataType.Vector();
  v1 = swift_allocObject();
  *(v1 + 72) = v0;
  *(v1 + 80) = 4;
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v20;
  v4 = *(v20 + 16);
  v5 = *(v20 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v20;
    v5 = *(v20 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;

  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v20;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  v13 = v12 + 1;

  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v14 = v20;
  *(v20 + 16) = v13;
  v15 = v20 + 48 * v12;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  *(v15 + 48) = v0;
  *(v15 + 56) = v2;
  *(v15 + 64) = 1;
  *(v15 + 72) = 2;
  v16 = *(v20 + 24);
  v17 = v12 + 2;

  if (v13 >= v16 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17, 1);
    v14 = v20;
  }

  *(v14 + 16) = v17;
  v18 = v14 + 48 * v13;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  *(v18 + 48) = v0;
  *(v18 + 56) = v2;
  *(v18 + 64) = 1;
  *(v18 + 72) = 3;

  *(v1 + 24) = 0x34726F6C6F63;
  *(v1 + 32) = 0xE600000000000000;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0u;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v14;
  static MetalDataType.color4 = v1;
  return result;
}

double one-time initialization function for float2x2()
{
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float2;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 2;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v15;
  v5 = *(v15 + 16);
  v4 = *(v15 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;

  if (v4 >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v15;
    v4 = *(v15 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v5 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v13);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v12;
  *(v1 + 48) = v11;
  *(v1 + 64) = 0;
  *&result = 0x800000010;
  *(v1 + 56) = 0x800000010;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0x32783274616F6C66;
  static MetalDataType.float2x2 = v1;
  return result;
}

double one-time initialization function for float2x3()
{
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float3;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 3;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v15;
  v5 = *(v15 + 16);
  v4 = *(v15 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;

  if (v4 >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v15;
    v4 = *(v15 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v5 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v13);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v12;
  *(v1 + 48) = v11;
  *(v1 + 64) = 0;
  *&result = 0x1000000020;
  *(v1 + 56) = 0x1000000020;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0x33783274616F6C66;
  static MetalDataType.float2x3 = v1;
  return result;
}

double one-time initialization function for float2x4()
{
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float4;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 4;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v15;
  v5 = *(v15 + 16);
  v4 = *(v15 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;

  if (v4 >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v15;
    v4 = *(v15 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v5 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v13);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v12;
  *(v1 + 48) = v11;
  *(v1 + 64) = 0;
  *&result = 0x1000000020;
  *(v1 + 56) = 0x1000000020;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0x34783274616F6C66;
  static MetalDataType.float2x4 = v1;
  return result;
}

double one-time initialization function for float3x2()
{
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float2;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 2;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v18;
  v4 = *(v18 + 16);
  v5 = *(v18 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v18;
    v5 = *(v18 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v18;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  swift_retain_n();
  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v18 + 16) = v12 + 1;
  v13 = v18 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;
  v15 = *(v0 + 24);
  v14 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v16);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v15;
  *(v1 + 48) = v14;
  *(v1 + 64) = 0;
  *&result = 0x800000018;
  *(v1 + 56) = 0x800000018;
  *(v1 + 16) = v18;
  *(v1 + 24) = 0x32783374616F6C66;
  static MetalDataType.float3x2 = v1;
  return result;
}

double one-time initialization function for float3x3()
{
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float3;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 3;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v18;
  v4 = *(v18 + 16);
  v5 = *(v18 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v18;
    v5 = *(v18 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v18;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  swift_retain_n();
  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v18 + 16) = v12 + 1;
  v13 = v18 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;
  v15 = *(v0 + 24);
  v14 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v16);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v15;
  *(v1 + 48) = v14;
  *(v1 + 64) = 0;
  *&result = 0x1000000030;
  *(v1 + 56) = 0x1000000030;
  *(v1 + 16) = v18;
  *(v1 + 24) = 0x33783374616F6C66;
  static MetalDataType.float3x3 = v1;
  return result;
}

double one-time initialization function for float3x4()
{
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float4;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 4;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v3 = v18;
  v4 = *(v18 + 16);
  v5 = *(v18 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v18;
    v5 = *(v18 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v18;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  swift_retain_n();
  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  *(v18 + 16) = v12 + 1;
  v13 = v18 + 48 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = v0;
  *(v13 + 56) = v2;
  *(v13 + 64) = 1;
  *(v13 + 72) = 2;
  v15 = *(v0 + 24);
  v14 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v16);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v15;
  *(v1 + 48) = v14;
  *(v1 + 64) = 0;
  *&result = 0x1000000030;
  *(v1 + 56) = 0x1000000030;
  *(v1 + 16) = v18;
  *(v1 + 24) = 0x34783374616F6C66;
  static MetalDataType.float3x4 = v1;
  return result;
}

double one-time initialization function for float4x2()
{
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float2;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 2;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v22;
  v4 = *(v22 + 16);
  v5 = *(v22 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v22;
    v5 = *(v22 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v22;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  swift_retain_n();
  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v13 = v22;
  *(v22 + 16) = v12 + 1;
  v14 = v22 + 48 * v12;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0xE000000000000000;
  *(v14 + 48) = v0;
  *(v14 + 56) = v2;
  *(v14 + 64) = 1;
  *(v14 + 72) = 2;

  v16 = *(v22 + 16);
  v15 = *(v22 + 24);
  swift_retain_n();
  if (v16 >= v15 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    v13 = v22;
  }

  *(v13 + 16) = v16 + 1;
  v17 = v13 + 48 * v16;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0xE000000000000000;
  *(v17 + 48) = v0;
  *(v17 + 56) = v2;
  *(v17 + 64) = 1;
  *(v17 + 72) = 3;
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v20);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v19;
  *(v1 + 48) = v18;
  *(v1 + 64) = 0;
  *&result = 0x800000020;
  *(v1 + 56) = 0x800000020;
  *(v1 + 16) = v13;
  *(v1 + 24) = 0x32783474616F6C66;
  static MetalDataType.float4x2 = v1;
  return result;
}

double one-time initialization function for float4x3()
{
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float3;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 3;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v22;
  v4 = *(v22 + 16);
  v5 = *(v22 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v22;
    v5 = *(v22 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v22;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  swift_retain_n();
  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v13 = v22;
  *(v22 + 16) = v12 + 1;
  v14 = v22 + 48 * v12;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0xE000000000000000;
  *(v14 + 48) = v0;
  *(v14 + 56) = v2;
  *(v14 + 64) = 1;
  *(v14 + 72) = 2;

  v16 = *(v22 + 16);
  v15 = *(v22 + 24);
  swift_retain_n();
  if (v16 >= v15 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    v13 = v22;
  }

  *(v13 + 16) = v16 + 1;
  v17 = v13 + 48 * v16;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0xE000000000000000;
  *(v17 + 48) = v0;
  *(v17 + 56) = v2;
  *(v17 + 64) = 1;
  *(v17 + 72) = 3;
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v20);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v19;
  *(v1 + 48) = v18;
  *(v1 + 64) = 0;
  *&result = 0x1000000040;
  *(v1 + 56) = 0x1000000040;
  *(v1 + 16) = v13;
  *(v1 + 24) = 0x33783474616F6C66;
  static MetalDataType.float4x3 = v1;
  return result;
}

double one-time initialization function for float4x4()
{
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.float4;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 4;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v3 = v22;
  v4 = *(v22 + 16);
  v5 = *(v22 + 24);
  v6 = v5 >> 1;
  v7 = v4 + 1;

  if (v5 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v4 + 1, 1);
    v3 = v22;
    v5 = *(v22 + 24);
    v6 = v5 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v4 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v9, 1);
    v3 = v22;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;

  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  swift_retain_n();
  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
  }

  v13 = v22;
  *(v22 + 16) = v12 + 1;
  v14 = v22 + 48 * v12;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0xE000000000000000;
  *(v14 + 48) = v0;
  *(v14 + 56) = v2;
  *(v14 + 64) = 1;
  *(v14 + 72) = 2;

  v16 = *(v22 + 16);
  v15 = *(v22 + 24);
  swift_retain_n();
  if (v16 >= v15 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    v13 = v22;
  }

  *(v13 + 16) = v16 + 1;
  v17 = v13 + 48 * v16;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0xE000000000000000;
  *(v17 + 48) = v0;
  *(v17 + 56) = v2;
  *(v17 + 64) = 1;
  *(v17 + 72) = 3;
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v20);

  *(v1 + 32) = 0xE800000000000000;
  *(v1 + 40) = v19;
  *(v1 + 48) = v18;
  *(v1 + 64) = 0;
  *&result = 0x1000000040;
  *(v1 + 56) = 0x1000000040;
  *(v1 + 16) = v13;
  *(v1 + 24) = 0x34783474616F6C66;
  static MetalDataType.float4x4 = v1;
  return result;
}

double one-time initialization function for half2x2()
{
  if (one-time initialization token for half2 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half2;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 2;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v15;
  v5 = *(v15 + 16);
  v4 = *(v15 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;

  if (v4 >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v15;
    v4 = *(v15 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v5 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v13);

  *(v1 + 32) = 0xE700000000000000;
  *(v1 + 40) = v12;
  *(v1 + 48) = v11;
  *(v1 + 64) = 0;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0x327832666C6168;
  static MetalDataType.half2x2 = v1;
  return result;
}

uint64_t *MetalDataType.half2x2.unsafeMutableAddressor()
{
  if (one-time initialization token for half2x2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.half2x2;
}

double one-time initialization function for half3x3()
{
  if (one-time initialization token for half3 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half3;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 2;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v15;
  v5 = *(v15 + 16);
  v4 = *(v15 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;

  if (v4 >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v15;
    v4 = *(v15 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v5 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v13);

  *(v1 + 32) = 0xE700000000000000;
  *(v1 + 40) = v12;
  *(v1 + 48) = v11;
  *(v1 + 64) = 0;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0x337833666C6168;
  static MetalDataType.half3x3 = v1;
  return result;
}

uint64_t *MetalDataType.half3x3.unsafeMutableAddressor()
{
  if (one-time initialization token for half3x3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.half3x3;
}

double one-time initialization function for half4x4()
{
  if (one-time initialization token for half4 != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.half4;
  type metadata accessor for MetalDataType.Matrix();
  v1 = swift_allocObject();
  *(v1 + 72) = 2;
  *(v1 + 80) = v0;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  swift_retain_n();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v15;
  v5 = *(v15 + 16);
  v4 = *(v15 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;

  if (v4 >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v15;
    v4 = *(v15 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 48 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v0;
  *(v8 + 56) = v2;
  *(v8 + 64) = 1;
  *(v8 + 72) = 0;
  v9 = v5 + 2;
  swift_retain_n();
  if (v6 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v9, 1);
    v3 = v15;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 48 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = v0;
  *(v10 + 56) = v2;
  *(v10 + 64) = 1;
  *(v10 + 72) = 1;
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);

  MEMORY[0x266771550](120, 0xE100000000000000);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v13);

  *(v1 + 32) = 0xE700000000000000;
  *(v1 + 40) = v12;
  *(v1 + 48) = v11;
  *(v1 + 64) = 0;
  *&result = 0x800000008;
  *(v1 + 56) = 0x800000008;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0x347834666C6168;
  static MetalDataType.half4x4 = v1;
  return result;
}

uint64_t *MetalDataType.half4x4.unsafeMutableAddressor()
{
  if (one-time initialization token for half4x4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.half4x4;
}

double one-time initialization function for texture2d_half()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xEF3E666C61683C64;
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x8000000265F2EF80;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x3265727574786574;
  static MetalDataType.texture2d_half = v0;
  return result;
}

double one-time initialization function for texture2d_float()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2EF60;
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x8000000265F2EF40;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000010;
  static MetalDataType.texture2d_float = v0;
  return result;
}

double one-time initialization function for texture2d_short()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2EF00;
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x8000000265F2EEE0;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000010;
  static MetalDataType.texture2d_short = v0;
  return result;
}

double one-time initialization function for texture2d_ushort()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2EEC0;
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x8000000265F2EEA0;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000011;
  static MetalDataType.texture2d_ushort = v0;
  return result;
}

uint64_t one-time initialization function for texture2d_int()
{
  type metadata accessor for MetalDataType();
  result = swift_allocObject();
  *(result + 39) = -18;
  *(result + 40) = 0xD000000000000010;
  *(result + 48) = 0x8000000265F2EFA0;
  *(result + 64) = 0;
  *(result + 56) = 0x800000008;
  *(result + 16) = MEMORY[0x277D84F90];
  strcpy((result + 24), "texture2d<int>");
  static MetalDataType.texture2d_int = result;
  return result;
}

double one-time initialization function for texture2d_uint()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xEF3E746E69753C64;
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x8000000265F2EF20;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x3265727574786574;
  static MetalDataType.texture2d_uint = v0;
  return result;
}

double one-time initialization function for texture3d_half()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xEF3E666C61683C64;
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x8000000265F2F140;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x3365727574786574;
  static MetalDataType.texture3d_half = v0;
  return result;
}

double one-time initialization function for texture3d_float()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2F120;
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x8000000265F2F100;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000010;
  static MetalDataType.texture3d_float = v0;
  return result;
}

double one-time initialization function for texture3d_short()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2EE60;
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x8000000265F2EE40;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000010;
  static MetalDataType.texture3d_short = v0;
  return result;
}

double one-time initialization function for texture3d_ushort()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2EE20;
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x8000000265F2EE00;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000011;
  static MetalDataType.texture3d_ushort = v0;
  return result;
}

uint64_t one-time initialization function for texture3d_int()
{
  type metadata accessor for MetalDataType();
  result = swift_allocObject();
  *(result + 39) = -18;
  *(result + 40) = 0xD000000000000010;
  *(result + 48) = 0x8000000265F2F160;
  *(result + 64) = 0;
  *(result + 56) = 0x800000008;
  *(result + 16) = MEMORY[0x277D84F90];
  strcpy((result + 24), "texture3d<int>");
  static MetalDataType.texture3d_int = result;
  return result;
}

double one-time initialization function for texture3d_uint()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xEF3E746E69753C64;
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x8000000265F2EE80;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x3365727574786574;
  static MetalDataType.texture3d_uint = v0;
  return result;
}

uint64_t one-time initialization function for depth2d_half()
{
  type metadata accessor for MetalDataType();
  result = swift_allocObject();
  *(result + 38) = -4864;
  *(result + 40) = 0xD000000000000018;
  *(result + 48) = 0x8000000265F2EDE0;
  *(result + 64) = 0;
  *(result + 56) = 0x800000008;
  *(result + 16) = MEMORY[0x277D84F90];
  strcpy((result + 24), "depth2d<half>");
  static MetalDataType.depth2d_half = result;
  return result;
}

uint64_t *MetalDataType.depth2d_half.unsafeMutableAddressor()
{
  if (one-time initialization token for depth2d_half != -1)
  {
    swift_once();
  }

  return &static MetalDataType.depth2d_half;
}

uint64_t one-time initialization function for depth2d_float()
{
  type metadata accessor for MetalDataType();
  result = swift_allocObject();
  *(result + 39) = -18;
  *(result + 40) = 0xD000000000000018;
  *(result + 48) = 0x8000000265F2EDC0;
  *(result + 64) = 0;
  *(result + 56) = 0x800000008;
  *(result + 16) = MEMORY[0x277D84F90];
  strcpy((result + 24), "depth2d<float>");
  static MetalDataType.depth2d_float = result;
  return result;
}

uint64_t *MetalDataType.depth2d_float.unsafeMutableAddressor()
{
  if (one-time initialization token for depth2d_float != -1)
  {
    swift_once();
  }

  return &static MetalDataType.depth2d_float;
}

double one-time initialization function for texturecube_half()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2F0E0;
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x8000000265F2F0C0;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000011;
  static MetalDataType.texturecube_half = v0;
  return result;
}

double one-time initialization function for texturecube_float()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2F0A0;
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x8000000265F2F080;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000012;
  static MetalDataType.texturecube_float = v0;
  return result;
}

double one-time initialization function for texture2darray_half()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2F020;
  *(v0 + 40) = 0xD00000000000001BLL;
  *(v0 + 48) = 0x8000000265F2F000;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000015;
  static MetalDataType.texture2darray_half = v0;
  return result;
}

double one-time initialization function for texture2darray_float()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2EFE0;
  *(v0 + 40) = 0xD00000000000001BLL;
  *(v0 + 48) = 0x8000000265F2EFC0;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000016;
  static MetalDataType.texture2darray_float = v0;
  return result;
}

double one-time initialization function for texture2darray_short()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2ED60;
  *(v0 + 40) = 0xD000000000000019;
  *(v0 + 48) = 0x8000000265F2ED40;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000016;
  static MetalDataType.texture2darray_short = v0;
  return result;
}

double one-time initialization function for texture2darray_ushort()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2ED20;
  *(v0 + 40) = 0xD00000000000001ALL;
  *(v0 + 48) = 0x8000000265F2ED00;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000017;
  static MetalDataType.texture2darray_ushort = v0;
  return result;
}

double one-time initialization function for texture2darray_int()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2F060;
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x8000000265F2F040;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000014;
  static MetalDataType.texture2darray_int = v0;
  return result;
}

double one-time initialization function for texture2darray_uint()
{
  type metadata accessor for MetalDataType();
  v0 = swift_allocObject();
  *(v0 + 32) = 0x8000000265F2EDA0;
  *(v0 + 40) = 0xD000000000000017;
  *(v0 + 48) = 0x8000000265F2ED80;
  *(v0 + 64) = 0;
  *&result = 0x800000008;
  *(v0 + 56) = 0x800000008;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0xD000000000000015;
  static MetalDataType.texture2darray_uint = v0;
  return result;
}

void *one-time initialization function for coord()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x64726F6F63, 0xE500000000000000, &outlined read-only object #0 of one-time initialization function for coord);
  static MetalDataType.coord = result;
  return result;
}

uint64_t *MetalDataType.coord.unsafeMutableAddressor()
{
  if (one-time initialization token for coord != -1)
  {
    swift_once();
  }

  return &static MetalDataType.coord;
}

void *one-time initialization function for address()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0x2073736572646441, 0xEC00000065646F4DLL, 0x73736572646461, 0xE700000000000000, &outlined read-only object #0 of one-time initialization function for address);
  static MetalDataType.address = result;
  return result;
}

uint64_t *MetalDataType.address.unsafeMutableAddressor()
{
  if (one-time initialization token for address != -1)
  {
    swift_once();
  }

  return &static MetalDataType.address;
}

void *one-time initialization function for s_address()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0x7365726464412053, 0xEE0065646F4D2073, 0x7365726464615F73, 0xE900000000000073, &outlined read-only object #0 of one-time initialization function for s_address);
  static MetalDataType.s_address = result;
  return result;
}

uint64_t *MetalDataType.s_address.unsafeMutableAddressor()
{
  if (one-time initialization token for s_address != -1)
  {
    swift_once();
  }

  return &static MetalDataType.s_address;
}

void *one-time initialization function for t_address()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0x7365726464412054, 0xEE0065646F4D2073, 0x7365726464615F74, 0xE900000000000073, &outlined read-only object #0 of one-time initialization function for t_address);
  static MetalDataType.t_address = result;
  return result;
}

uint64_t *MetalDataType.t_address.unsafeMutableAddressor()
{
  if (one-time initialization token for t_address != -1)
  {
    swift_once();
  }

  return &static MetalDataType.t_address;
}

void *one-time initialization function for r_address()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0x7365726464412052, 0xEE0065646F4D2073, 0x7365726464615F72, 0xE900000000000073, &outlined read-only object #0 of one-time initialization function for r_address);
  static MetalDataType.r_address = result;
  return result;
}

uint64_t *MetalDataType.r_address.unsafeMutableAddressor()
{
  if (one-time initialization token for r_address != -1)
  {
    swift_once();
  }

  return &static MetalDataType.r_address;
}

void *one-time initialization function for border_color()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x635F726564726F62, 0xEC000000726F6C6FLL, &outlined read-only object #0 of one-time initialization function for border_color);
  static MetalDataType.border_color = result;
  return result;
}

uint64_t *MetalDataType.border_color.unsafeMutableAddressor()
{
  if (one-time initialization token for border_color != -1)
  {
    swift_once();
  }

  return &static MetalDataType.border_color;
}

void *one-time initialization function for filter()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x7265746C6966, 0xE600000000000000, &outlined read-only object #0 of one-time initialization function for filter);
  static MetalDataType.filter = result;
  return result;
}

uint64_t *MetalDataType.filter.unsafeMutableAddressor()
{
  if (one-time initialization token for filter != -1)
  {
    swift_once();
  }

  return &static MetalDataType.filter;
}

void *one-time initialization function for mag_filter()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x746C69665F67616DLL, 0xEA00000000007265, &outlined read-only object #0 of one-time initialization function for mag_filter);
  static MetalDataType.mag_filter = result;
  return result;
}

uint64_t *MetalDataType.mag_filter.unsafeMutableAddressor()
{
  if (one-time initialization token for mag_filter != -1)
  {
    swift_once();
  }

  return &static MetalDataType.mag_filter;
}

void *one-time initialization function for min_filter()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x746C69665F6E696DLL, 0xEA00000000007265, &outlined read-only object #0 of one-time initialization function for min_filter);
  static MetalDataType.min_filter = result;
  return result;
}

uint64_t *MetalDataType.min_filter.unsafeMutableAddressor()
{
  if (one-time initialization token for min_filter != -1)
  {
    swift_once();
  }

  return &static MetalDataType.min_filter;
}

void *one-time initialization function for mip_filter()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x746C69665F70696DLL, 0xEA00000000007265, &outlined read-only object #0 of one-time initialization function for mip_filter);
  static MetalDataType.mip_filter = result;
  return result;
}

uint64_t *MetalDataType.mip_filter.unsafeMutableAddressor()
{
  if (one-time initialization token for mip_filter != -1)
  {
    swift_once();
  }

  return &static MetalDataType.mip_filter;
}

void *one-time initialization function for compare_func()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x5F657261706D6F63, 0xEC000000636E7566, &outlined read-only object #0 of one-time initialization function for compare_func);
  static MetalDataType.compare_func = result;
  return result;
}

uint64_t *MetalDataType.compare_func.unsafeMutableAddressor()
{
  if (one-time initialization token for compare_func != -1)
  {
    swift_once();
  }

  return &static MetalDataType.compare_func;
}

uint64_t *MetalDataType.max_anisotropy.unsafeMutableAddressor()
{
  if (one-time initialization token for max_anisotropy != -1)
  {
    swift_once();
  }

  return &static MetalDataType.max_anisotropy;
}

uint64_t *MetalDataType.lod_clamp.unsafeMutableAddressor()
{
  if (one-time initialization token for lod_clamp != -1)
  {
    swift_once();
  }

  return &static MetalDataType.lod_clamp;
}

uint64_t *MetalDataType.bias.unsafeMutableAddressor()
{
  if (one-time initialization token for bias != -1)
  {
    swift_once();
  }

  return &static MetalDataType.bias;
}

uint64_t *MetalDataType.level.unsafeMutableAddressor()
{
  if (one-time initialization token for level != -1)
  {
    swift_once();
  }

  return &static MetalDataType.level;
}

uint64_t *MetalDataType.min_lod_clamp.unsafeMutableAddressor()
{
  if (one-time initialization token for min_lod_clamp != -1)
  {
    swift_once();
  }

  return &static MetalDataType.min_lod_clamp;
}

uint64_t *MetalDataType.offset.unsafeMutableAddressor()
{
  if (one-time initialization token for offset != -1)
  {
    swift_once();
  }

  return &static MetalDataType.offset;
}

uint64_t *MetalDataType.gradient2d.unsafeMutableAddressor()
{
  if (one-time initialization token for gradient2d != -1)
  {
    swift_once();
  }

  return &static MetalDataType.gradient2d;
}

uint64_t *MetalDataType.gradient3d.unsafeMutableAddressor()
{
  if (one-time initialization token for gradient3d != -1)
  {
    swift_once();
  }

  return &static MetalDataType.gradient3d;
}

uint64_t one-time initialization function for sampler(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  type metadata accessor for MetalDataType();
  result = swift_allocObject();
  *(result + 64) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = a4;
  *(result + 56) = a1;
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = a3;
  *a5 = result;
  return result;
}

uint64_t *MetalDataType.gradientcube.unsafeMutableAddressor()
{
  if (one-time initialization token for gradientcube != -1)
  {
    swift_once();
  }

  return &static MetalDataType.gradientcube;
}

uint64_t static MetalDataType.int.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x266771550](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v26 = *a3;

      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, 1);
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v8;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v4 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x266771550](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v6;
      v35[1] = v5;
      v36 = (v34[7] + 16 * v28);
      *v36 = v26;
      v36[1] = v8;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v38;
      v4 += 4;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeC_ypSgtSgGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeC_ypSgtSgGMR);
  result = static _DictionaryStorage.copy(original:)();
  v7 = result;
  v8 = 0;
  v9 = 1 << *(a5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = result + 8;
  if (v11)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v17 = v14 | (v8 << 6);
      v18 = (*(a5 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      result = *(*(a5 + 56) + 8 * v17);
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v21 = (v7[6] + 16 * v17);
      *v21 = v19;
      v21[1] = v20;
      v22 = v7[7] + 40 * v17;
      *v22 = result;
      *(v22 + 8) = 0u;
      *(v22 + 24) = 0u;
      v23 = v7[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v7[2] = v25;

      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        type metadata accessor for MetalDataType.Enum();
        v26 = swift_allocObject();
        MetalDataType.Enum.init(note:typeName:types:)(a1, a2, a3, a4, v7);
        return v26;
      }

      v16 = *(a5 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = *(a5 + 16);
  if (v10)
  {
    v25 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v25;
    v12 = (a5 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v25 = v11;
      v16 = v11[2];
      v15 = v11[3];

      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v11 = v25;
      }

      v11[2] = v16 + 1;
      v17 = &v11[3 * v16];
      v17[4] = v13;
      v17[5] = v14;
      v17[6] = 0;
      v12 += 2;
      --v10;
    }

    while (v10);

    v7 = a3;
    v6 = a4;
    v9 = a1;
    v8 = a2;
    if (v11[2])
    {
      goto LABEL_7;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCSgGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCSgGMR);
      v18 = static _DictionaryStorage.allocate(capacity:)();
      goto LABEL_10;
    }
  }

  v18 = MEMORY[0x277D84F98];
LABEL_10:
  v25 = v18;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v11, 1, &v25);
  v19 = v25;

  return specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(v9, v8, v7, v6, v19);
}

char *specialized MetalDataType.Function.init(resultType:argumentTypes:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  v26 = *(a1 + 24);
  v27 = *(a1 + 32);

  MEMORY[0x266771550](2632224, 0xE300000000000000);
  if (a2 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {

LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v22 = BidirectionalCollection<>.joined(separator:)();
    v24 = v23;

    MEMORY[0x266771550](v22, v24);

    MEMORY[0x266771550](41, 0xE100000000000000);
    *(v3 + 32) = v27;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 16) = v6;
    *(v3 + 24) = v26;
    return v3;
  }

  v25 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = MEMORY[0x266772030](v8, a2);
        v11 = *(v9 + 24);
        v10 = *(v9 + 32);

        swift_unknownObjectRelease();
        v13 = *(v25 + 16);
        v12 = *(v25 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        ++v8;
        *(v25 + 16) = v13 + 1;
        v14 = v25 + 16 * v13;
        *(v14 + 32) = v11;
        *(v14 + 40) = v10;
      }

      while (v5 != v8);
    }

    else
    {
      v15 = 32;
      do
      {
        v16 = *(a2 + v15);
        v18 = *(v16 + 24);
        v17 = *(v16 + 32);
        v20 = *(v25 + 16);
        v19 = *(v25 + 24);

        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        }

        *(v25 + 16) = v20 + 1;
        v21 = v25 + 16 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = v17;
        v15 += 8;
        --v5;
      }

      while (v5);
    }

    v6 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t specialized MetalDataType.Struct.__allocating_init(note:typeName:fieldSpecs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = *(a5 + 16);
  if (v10)
  {
    v29 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v12 = 0;
    v13 = v29;
    v27 = v5;
    v28 = *(v5 + 16);
    v14 = (v5 + 48);
    while (v28 != v12)
    {
      if (v12 >= *(v5 + 16))
      {
        goto LABEL_12;
      }

      v15 = v10;
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;
      v20 = v29[2];
      v19 = v29[3];

      if (v20 >= v19 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      }

      v29[2] = v20 + 1;
      v21 = &v29[6 * v20];
      v21[9] = v12;
      v21[4] = v16;
      v21[5] = v17;
      v21[6] = v18;
      v21[7] = MEMORY[0x277D84F90];
      *(v21 + 64) = 1;
      v14 += 3;
      ++v12;
      v10 = v15;
      v5 = v27;
      if (v15 == v12)
      {

        v7 = a3;
        v6 = a4;
        v9 = a1;
        v8 = a2;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
LABEL_10:
    type metadata accessor for MetalDataType.Struct();
    v22 = swift_allocObject();
    MetalDataType.Struct.init(note:typeName:fields:)(v9, v8, v7, v6, v13);
    return v22;
  }

  return result;
}

uint64_t specialized MetalDataType.Pointer.init(to:isConst:addressSpace:)(void *a1, char a2, char a3)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = a3;
  v6 = *(*a1 + 136);

  v7 = v6();
  MEMORY[0x266771550](v7);

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](32, 0xE100000000000000);
  v9 = a1[3];
  v8 = a1[4];

  MEMORY[0x266771550](v9, v8);

  MEMORY[0x266771550](10784, 0xE200000000000000);
  if (a2)
  {
    v10 = 0x74736E6F6320;
  }

  else
  {
    v10 = 0;
  }

  if (a2)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x266771550](v10, v11);

  *(v3 + 32) = 0xE000000000000000;
  *(v3 + 40) = 0x207265746E696F50;
  *(v3 + 48) = 0xEB00000000206F74;
  *(v3 + 64) = a2;
  *(v3 + 56) = 0x800000008;
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 24) = 0;
  return v3;
}

uint64_t specialized MetalDataType.Reference.init(to:isConst:addressSpace:)(void *a1, char a2, unsigned __int8 a3)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = a3;
  v4 = 0xE800000000000000;
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  v5 = 0x746E6174736E6F63;
  v6 = 0xE600000000000000;
  v7 = 0x646165726874;
  if (a3 != 2)
  {
    v7 = 0x7267646165726874;
    v6 = 0xEB0000000070756FLL;
  }

  if (a3)
  {
    v5 = 0x656369766564;
    v4 = 0xE600000000000000;
  }

  if (a3 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (a3 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v10 = v3;

  MEMORY[0x266771550](v8, v9);

  MEMORY[0x266771550](32, 0xE100000000000000);
  v14 = a1[3];
  v13 = a1[4];

  MEMORY[0x266771550](v14, v13);

  v15 = a2 & 1;
  if (a2)
  {
    v16 = 0x74736E6F6320;
  }

  else
  {
    v16 = 0;
  }

  if (a2)
  {
    v17 = 0xE600000000000000;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  MEMORY[0x266771550](v16, v17);

  MEMORY[0x266771550](9760, 0xE200000000000000);
  v18 = v26[0];
  v19 = v26[1];
  strcpy(v26, "Reference to ");
  HIWORD(v26[1]) = -4864;

  MEMORY[0x266771550](v14, v13);

  v20 = v26[0];
  v21 = v26[1];
  v22 = *(*a1 + 88);

  v24 = v22(v23);

  *(v10 + 32) = v19;
  *(v10 + 40) = v20;
  *(v10 + 48) = v21;
  *(v10 + 64) = v15;
  *(v10 + 56) = 0x800000008;
  *(v10 + 16) = v24;
  *(v10 + 24) = v18;
  return v10;
}

uint64_t specialized MetalDataType.Struct.getElementFunctionName(for:)(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v5 = v4;

  v8 = *(v2 + 24);

  MEMORY[0x266771550](95, 0xE100000000000000);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v6);

  MEMORY[0x266771550](95, 0xE100000000000000);
  MEMORY[0x266771550](v3, v5);

  return v8;
}

unint64_t specialized MetalDataType.AddressSpace.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MetalDataType.AddressSpace.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type MetalDataType.AddressSpace and conformance MetalDataType.AddressSpace()
{
  result = lazy protocol witness table cache variable for type MetalDataType.AddressSpace and conformance MetalDataType.AddressSpace;
  if (!lazy protocol witness table cache variable for type MetalDataType.AddressSpace and conformance MetalDataType.AddressSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetalDataType.AddressSpace and conformance MetalDataType.AddressSpace);
  }

  return result;
}

uint64_t sub_265DE8894@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for MetalDataType.AddressSpace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetalDataType.AddressSpace(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with copy of (MetalDataType, Any?)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph13MetalDataTypeC_ypSgtSgMd, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t OrderedSet.difference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a7;
  v53 = type metadata accessor for CollectionDifference();
  v13 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v13 - 8);
  v52 = &v48 - v14;
  v62 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v63 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = swift_allocObject();
  v64 = v18;
  *(v18 + 16) = 0;
  v19 = (v18 + 16);
  v20 = swift_allocObject();
  v51 = type metadata accessor for CollectionDifference.Change();
  *(v20 + 16) = Array.init()();
  v50 = (v20 + 16);
  v65 = (v17 + 16);
  swift_beginAccess();
  v66 = v19;
  swift_beginAccess();
  ++v62;
  v59 = v17;
  v60 = a1;
  v58 = v20;
  v56 = a4;
  v55 = a2;
  v57 = a6;
  while (1)
  {
    v22 = *v65;
    if (v22 >= ContiguousArray.count.getter())
    {
      v23 = *v66;
      if (v23 >= ContiguousArray.count.getter())
      {
        break;
      }
    }

    v24 = *v66;
    if (v24 == ContiguousArray.count.getter())
    {
      v47 = 1;
      v25 = a1;
      v26 = a2;
      v27 = v17;
      v28 = v20;
      v29 = a3;
      v30 = a4;
LABEL_9:
      v31 = a5;
      goto LABEL_10;
    }

    if (v22 == ContiguousArray.count.getter())
    {
      v47 = 0;
      v25 = a3;
      v26 = a4;
      v27 = v64;
      v28 = v20;
      v29 = a1;
      v30 = a2;
      goto LABEL_9;
    }

    v32 = v63;
    ContiguousArray.subscript.getter();
    v33 = a4;
    v34 = OrderedSet._find(_:)(v32, a3, a4, a5, a6);
    v36 = v35;
    v61 = *v62;
    v61(v32, a5);
    if (v36)
    {
      v21 = v59;
      a1 = v60;
      v20 = v58;
      remove #1 <A>() in OrderedSet.difference(from:)(v60, a2, v59, v58, a3, v33, a5, a6, 1u);
      a4 = v33;
      v17 = v21;
    }

    else
    {
      if (v34 < v24)
      {
        v47 = 1;
        v17 = v59;
        a1 = v60;
        v25 = v60;
        a2 = v55;
        v26 = v55;
        v27 = v59;
        v20 = v58;
        goto LABEL_14;
      }

      v54 = v34;
      v37 = v63;
      a4 = v56;
      ContiguousArray.subscript.getter();
      v38 = v60;
      a2 = v55;
      v39 = OrderedSet._find(_:)(v37, v60, v55, a5, v57);
      v41 = v40;
      result = (v61)(v37, a5);
      if (v41)
      {
        a6 = v57;
        v20 = v58;
        remove #1 <A>() in OrderedSet.difference(from:)(a3, a4, v64, v58, v38, a2, a5, v57, 0);
        a1 = v38;
        v17 = v59;
      }

      else if (v39 >= v22)
      {
        v20 = v58;
        v17 = v59;
        if (v22 == v39)
        {
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          *v65 = v22 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_33;
          }

          *v66 = v24 + 1;
          a4 = v56;
          a6 = v57;
          a1 = v60;
          a2 = v55;
        }

        else
        {
          if (__OFSUB__(v39, v22))
          {
            goto LABEL_32;
          }

          if (__OFSUB__(v54, v24))
          {
            goto LABEL_34;
          }

          if (v39 - v22 < v54 - v24)
          {
            v47 = 0;
            v25 = a3;
            a4 = v56;
            v26 = v56;
            v27 = v64;
            v28 = v58;
            a1 = v60;
            v29 = v60;
            a2 = v55;
            v30 = v55;
            goto LABEL_15;
          }

          v47 = 1;
          a1 = v60;
          v25 = v60;
          a2 = v55;
          v26 = v55;
          v27 = v59;
LABEL_14:
          v28 = v20;
          v29 = a3;
          a4 = v56;
          v30 = v56;
LABEL_15:
          v31 = a5;
          a6 = v57;
LABEL_10:
          remove #1 <A>() in OrderedSet.difference(from:)(v25, v26, v27, v28, v29, v30, v31, a6, v47);
        }
      }

      else
      {
        a4 = v56;
        a6 = v57;
        v20 = v58;
        a1 = v60;
        a2 = v55;
        remove #1 <A>() in OrderedSet.difference(from:)(a3, v56, v64, v58, v60, v55, a5, v57, 0);
        v17 = v59;
      }
    }
  }

  v43 = v50;
  swift_beginAccess();
  v67 = *v43;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v44 = v52;
  CollectionDifference.init<A>(_:)();
  v45 = v53;
  v46 = *(v53 - 8);
  result = (*(v46 + 48))(v44, 1, v53);
  if (result != 1)
  {
    (*(v46 + 32))(v49, v44, v45);
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_265DE95C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t remove #1 <A>() in OrderedSet.difference(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v27 = a6;
  v28 = a8;
  v29 = a9;
  v12 = type metadata accessor for CollectionDifference.Change();
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  ContiguousArray.subscript.getter();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v20 = *(TupleTypeMetadata3 + 48);
  v21 = &v14[*(TupleTypeMetadata3 + 64)];
  swift_beginAccess();
  *v14 = *(a3 + 16);
  (*(v15 + 16))(&v14[v20], v18, a7);
  *v21 = OrderedSet._find(_:)(v18, a5, v27, a7, v28);
  v21[8] = v22 & 1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for Array();
  Array.append(_:)();
  swift_endAccess();
  (*(v15 + 8))(v18, a7);
  result = swift_beginAccess();
  v24 = *(a3 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v26;
  }

  return result;
}

uint64_t OrderedSet.applying(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OrderedSet.elements.getter(a2, a3, a4);
  v7 = type metadata accessor for Array();
  swift_getWitnessTable();
  RangeReplaceableCollection.applying(_:)();

  v8 = v14;
  if (v14)
  {

    WitnessTable = swift_getWitnessTable();
    v10 = OrderedSet.init<A>(_:)(&v14, a4, v7, a5, WitnessTable);
    v11 = ContiguousArray.count.getter();
    v12 = MEMORY[0x266771860](v8, a4);

    if (v11 == v12)
    {
      return v10;
    }
  }

  return 0;
}

uint64_t one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMd, &_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F227E0;
  *(inited + 32) = 0xD00000000000003BLL;
  *(inited + 40) = 0x8000000265F2F1A0;
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  *(inited + 48) = v1;
  *(inited + 56) = 0xD00000000000003ALL;
  *(inited + 64) = 0x8000000265F2F1E0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #1 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 72) = v2;
  *(inited + 80) = 0xD00000000000003BLL;
  *(inited + 88) = 0x8000000265F2F220;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #2 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 96) = v3;
  *(inited + 104) = 0xD00000000000003ALL;
  *(inited + 112) = 0x8000000265F2F260;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #3 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 120) = v4;
  *(inited + 128) = 0xD000000000000034;
  *(inited + 136) = 0x8000000265F2F2A0;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #4 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 144) = v5;
  *(inited + 152) = 0xD000000000000033;
  *(inited + 160) = 0x8000000265F2F2E0;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #5 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 168) = v6;
  *(inited + 176) = 0xD00000000000003DLL;
  *(inited + 184) = 0x8000000265F2F320;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #6 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 192) = v7;
  *(inited + 200) = 0xD00000000000003CLL;
  *(inited + 208) = 0x8000000265F2F360;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #7 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 216) = v8;
  *(inited + 224) = 0xD00000000000003BLL;
  *(inited + 232) = 0x8000000265F2F3A0;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #8 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 240) = v9;
  *(inited + 248) = 0xD00000000000003ALL;
  *(inited + 256) = 0x8000000265F2F3E0;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #9 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 264) = v10;
  *(inited + 272) = 0xD00000000000003BLL;
  *(inited + 280) = 0x8000000265F2F420;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #10 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 288) = v11;
  *(inited + 296) = 0xD00000000000003ALL;
  *(inited + 304) = 0x8000000265F2F460;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #11 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 312) = v12;
  *(inited + 320) = 0xD000000000000034;
  *(inited + 328) = 0x8000000265F2F4A0;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #12 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 336) = v13;
  *(inited + 344) = 0xD000000000000033;
  *(inited + 352) = 0x8000000265F2F4E0;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #13 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 360) = v14;
  *(inited + 368) = 0xD00000000000003DLL;
  *(inited + 376) = 0x8000000265F2F520;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #14 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 384) = v15;
  *(inited + 392) = 0xD00000000000003CLL;
  *(inited + 400) = 0x8000000265F2F560;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #15 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 408) = v16;
  *(inited + 416) = 0xD000000000000034;
  *(inited + 424) = 0x8000000265F2F5A0;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #16 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 432) = v17;
  *(inited + 440) = 0xD000000000000033;
  *(inited + 448) = 0x8000000265F2F5E0;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #17 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 456) = v18;
  *(inited + 464) = 0xD000000000000034;
  *(inited + 472) = 0x8000000265F2F620;
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #18 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 480) = v19;
  *(inited + 488) = 0xD000000000000033;
  *(inited + 496) = 0x8000000265F2F660;
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #19 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 504) = v20;
  *(inited + 512) = 0xD00000000000002DLL;
  *(inited + 520) = 0x8000000265F2F6A0;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #20 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 528) = v21;
  *(inited + 536) = 0xD00000000000002CLL;
  *(inited + 544) = 0x8000000265F2F6D0;
  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #21 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 552) = v22;
  *(inited + 560) = 0xD000000000000036;
  *(inited + 568) = 0x8000000265F2F700;
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #22 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 576) = v23;
  *(inited + 584) = 0xD000000000000035;
  *(inited + 592) = 0x8000000265F2F740;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #23 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 600) = v24;
  *(inited + 608) = 0xD00000000000003DLL;
  *(inited + 616) = 0x8000000265F2F780;
  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #24 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 624) = v25;
  *(inited + 632) = 0xD00000000000003CLL;
  *(inited + 640) = 0x8000000265F2F7C0;
  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #25 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 648) = v26;
  *(inited + 656) = 0xD00000000000003DLL;
  *(inited + 664) = 0x8000000265F2F800;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #26 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 672) = v27;
  *(inited + 680) = 0xD00000000000003CLL;
  *(inited + 688) = 0x8000000265F2F840;
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #27 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 696) = v28;
  *(inited + 704) = 0xD000000000000036;
  *(inited + 712) = 0x8000000265F2F880;
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #28 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 720) = v29;
  *(inited + 728) = 0xD000000000000035;
  *(inited + 736) = 0x8000000265F2F8C0;
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #29 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 744) = v30;
  *(inited + 752) = 0xD00000000000003FLL;
  *(inited + 760) = 0x8000000265F2F900;
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #30 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 768) = v31;
  *(inited + 776) = 0xD00000000000003ELL;
  *(inited + 784) = 0x8000000265F2F940;
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #31 of one-time initialization function for constantCreateSamplerFunctionNameToMatchingArguments);
  swift_arrayDestroy();
  *(inited + 792) = v32;
  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDyS2SGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SDyS2SGtMd, &_sSS_SDyS2SGtMR);
  result = swift_arrayDestroy();
  constantCreateSamplerFunctionNameToMatchingArguments._rawValue = v33;
  return result;
}

Swift::OpaquePointer *constantCreateSamplerFunctionNameToMatchingArguments.unsafeMutableAddressor()
{
  if (one-time initialization token for constantCreateSamplerFunctionNameToMatchingArguments != -1)
  {
    swift_once();
  }

  return &constantCreateSamplerFunctionNameToMatchingArguments;
}

uint64_t OrderedDictionary.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23[0] = a6;
  v23[1] = a7;
  v12 = type metadata accessor for Mirror.AncestorRepresentation();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v23 - v16;
  v23[5] = a1;
  v23[6] = a2;
  v23[7] = a3;
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a3;
  v18 = *MEMORY[0x277D84BF8];
  v19 = type metadata accessor for Mirror.DisplayStyle();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v21 = v23[0];
  type metadata accessor for OrderedDictionary(0, a4, a5, v23[0]);
  type metadata accessor for OrderedDictionary.Elements(0, a4, a5, v21);
  swift_getWitnessTable();
  default argument 3 of Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)(v14);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t OrderedDictionary.Elements._base.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t (*OrderedDictionary.elements.modify(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 24) = v2;
  v7 = *(v2 + 8);
  *v5 = *v2;
  *(v5 + 8) = v7;
  v8 = a2[2];
  v6[4] = v8;
  v6[5] = a2[4];
  v9 = OrderedSet.init()(v8);
  v11 = v10;
  v12 = a2[3];
  v6[6] = v12;
  v13 = static Array._allocateUninitialized(_:)();
  v14 = MEMORY[0x266772110](v13, v12);
  *v2 = v9;
  *(v2 + 8) = v11;
  *(v2 + 16) = v14;
  return OrderedDictionary.elements.modify;
}

uint64_t OrderedDictionary.Elements.keys.getter(uint64_t a1, uint64_t a2)
{

  return a1;
}

uint64_t OrderedDictionary.elements.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a1;
}

uint64_t key path getter for OrderedDictionary.elements : <A, B>OrderedDictionary<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t key path setter for OrderedDictionary.elements : <A, B>OrderedDictionary<A, B>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];

  v10 = OrderedSet.init()(v5);
  v12 = v11;
  v13 = static Array._allocateUninitialized(_:)();
  v14 = MEMORY[0x266772110](v13, v6);

  *a2 = v10;
  a2[1] = v12;
  a2[2] = v14;
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  $defer #1 <A, B>() in OrderedDictionary.elements.modify(a2, v16);
}

uint64_t (*OrderedDictionary.Elements.values.modify(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 24) = v2;
  v7 = *(v2 + 8);
  *v5 = *v2;
  *(v5 + 8) = v7;
  v8 = a2[2];
  v6[4] = v8;
  v6[5] = a2[4];
  v9 = OrderedSet.init()(v8);
  v11 = v10;
  v12 = a2[3];
  v6[6] = v12;
  v13 = static Array._allocateUninitialized(_:)();
  v14 = MEMORY[0x266772110](v13, v12);
  *v2 = v9;
  *(v2 + 8) = v11;
  *(v2 + 16) = v14;
  return OrderedDictionary.Elements.values.modify;
}

void OrderedDictionary.elements.modify(uint64_t **a1)
{
  v1 = *a1;
  $defer #1 <A, B>() in OrderedDictionary.elements.modify((*a1)[3], *a1);

  free(v1);
}

uint64_t $defer #1 <A, B>() in OrderedDictionary.elements.modify(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  *a1 = *a2;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t OrderedDictionary.elements.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = OrderedSet.init()(a4[2]);
  v10 = v9;
  v11 = a4[3];
  v12 = static Array._allocateUninitialized(_:)();
  v13 = MEMORY[0x266772110](v12, v11);

  *v5 = v8;
  v5[1] = v10;
  v5[2] = v13;
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  $defer #1 <A, B>() in OrderedDictionary.elements.modify(v5, v17);
}

uint64_t OrderedDictionary.Elements.makeIterator()(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a1;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance OrderedDictionary<A, B>.Elements@<X0>(uint64_t *a1@<X8>)
{
  v3 = OrderedDictionary.Elements.makeIterator()(*v1, v1[1], v1[2]);
  v5 = v4;
  v7 = v6;

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = 0;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedDictionary<A, B>.Elements(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = specialized Collection._copyToContiguousArray()(v1, a1, WitnessTable);

  return v4;
}

Swift::Int __swiftcall OrderedDictionary.Elements.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall OrderedDictionary.Elements.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall OrderedDictionary.Elements.formIndex(after:)(Swift::Int *after)
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

Swift::Void __swiftcall OrderedDictionary.Elements.formIndex(before:)(Swift::Int *before)
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

Swift::Int __swiftcall OrderedDictionary.Elements.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall OrderedDictionary.Elements.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (offsetBy < 1)
  {
    if (v3 > 0 || v3 <= offsetBy)
    {
LABEL_9:
      v4 = __OFADD__(_, offsetBy);
      _ += offsetBy;
      if (!v4)
      {
        LOBYTE(offsetBy) = 0;
        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v3 < 0 || v3 >= offsetBy)
  {
    goto LABEL_9;
  }

  _ = 0;
  LOBYTE(offsetBy) = 1;
LABEL_13:
  result.is_nil = offsetBy;
  result.value = _;
  return result;
}

Swift::Int __swiftcall OrderedDictionary.Elements.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedDictionary.Elements.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ContiguousArray.subscript.getter();

  return ContiguousArray.subscript.getter();
}

uint64_t OrderedDictionary.Elements.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a7@<X8>)
{

  result = ContiguousArray.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a7 = a3;
    a7[1] = a4;
    a7[2] = a5;
    a7[3] = a1;
    a7[4] = a2;
  }

  return result;
}

uint64_t OrderedDictionary.Elements.isEmpty.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return Collection.isEmpty.getter() & 1;
}

uint64_t OrderedDictionary.Elements._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[1] = a3;
  v12 = a1;
  v11[0] = a2;
  v8 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(&v12, v11, v8, WitnessTable);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Elements(uint64_t *a1, uint64_t *a2, uint64_t a3))()
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
    a1[2] = v9;
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
    a1[2] = v9;
    v10 = malloc(v8);
  }

  v11 = v10;
  a1[3] = v10;
  v12 = *(TupleTypeMetadata2 + 48);
  ContiguousArray.subscript.getter();
  ContiguousArray.subscript.getter();
  (*(*(v4 - 8) + 32))(v9, v11, v4);
  (*(*(v5 - 8) + 32))(v9 + *(TupleTypeMetadata2 + 48), v11 + v12, v5);
  return protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Elements;
}

void protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Elements(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  (*(a1[1] + 8))(v2, *a1);
  free(v1);

  free(v2);
}

double protocol witness for Collection.subscript.getter in conformance OrderedDictionary<A, B>.Elements@<D0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  OrderedDictionary.Elements.subscript.getter(*a1, a1[1], *v3, v3[1], v3[2], v7);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance OrderedDictionary<A, B>.Elements(uint64_t a1)
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.isEmpty.getter in conformance OrderedDictionary<A, B>.Elements(uint64_t a1)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return Collection.isEmpty.getter() & 1;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance OrderedDictionary<A, B>.Elements(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v7 = *a1;
  v6 = *a2;
  v3 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(&v7, &v6, v3, WitnessTable);
}

uint64_t OrderedDictionary.Elements.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _StringGuts.grow(_:)(34);

  v5 = _typeName(_:qualified:)();
  MEMORY[0x266771550](v5);

  MEMORY[0x266771550](8236, 0xE200000000000000);
  v6 = _typeName(_:qualified:)();
  MEMORY[0x266771550](v6);

  MEMORY[0x266771550](0x6E656D656C452E3ELL, 0xEA00000000007374);
  v7._countAndFlagsBits = 0xD000000000000012;
  v7._object = 0x8000000265F2F980;
  countAndFlagsBits = OrderedDictionary._debugDescription(typeName:)(v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t OrderedDictionary.Elements.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22[0] = a6;
  v22[1] = a7;
  v12 = type metadata accessor for Mirror.AncestorRepresentation();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v22 - v16;
  v22[5] = a1;
  v22[6] = a2;
  v22[7] = a3;
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v18 = *MEMORY[0x277D84BF0];
  v19 = type metadata accessor for Mirror.DisplayStyle();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  type metadata accessor for OrderedDictionary.Elements(0, a4, a5, v22[0]);
  swift_getWitnessTable();
  default argument 3 of Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)(v14);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

Swift::Int OrderedDictionary.Elements<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Hasher.init(_seed:)();
  OrderedDictionary<>.hash(into:)(v15, a1, a2, a3, a4, a5, a6, a7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> OrderedDictionary<A, B>.Elements(uint64_t a1)
{
  Hasher.init(_seed:)();
  OrderedDictionary.Elements<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t OrderedDictionary.Elements<>.sort()(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for OrderedDictionary(0, a1[2], a1[3], a1[4]);

  return OrderedDictionary<>.sort()(v3, a2);
}

uint64_t OrderedDictionary.Elements.shuffle<A>(using:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OrderedDictionary(0, a2[2], a2[3], a2[4]);

  return OrderedDictionary.shuffle<A>(using:)(a1, v7, a3, a4);
}

uint64_t OrderedDictionary.Elements.shuffle()(void *a1, uint64_t (*a2)(uint64_t))
{
  v2 = type metadata accessor for OrderedDictionary(0, a1[2], a1[3], a1[4]);

  return a2(v2);
}

Swift::Void __swiftcall OrderedDictionary.Elements.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  type metadata accessor for OrderedDictionary(0, v1[2], v1[3], v1[4]);

  OrderedDictionary.removeAll(keepingCapacity:)(keepingCapacity);
}

uint64_t OrderedDictionary.Elements.remove(at:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for OrderedDictionary(0, a4[2], a4[3], a4[4]);

  return OrderedDictionary.remove(at:)(a1, a2, a3, v7);
}

uint64_t OrderedDictionary.Elements.swapAt(_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = type metadata accessor for OrderedDictionary(0, a3[2], a3[3], a3[4]);

  return a4(a1, a2, v6);
}

uint64_t OrderedDictionary.Elements.removeSubrange<A>(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OrderedDictionary(0, a2[2], a2[3], a2[4]);

  return OrderedDictionary.removeSubrange<A>(_:)(a1, v7, a3, a4);
}

uint64_t OrderedDictionary.Elements.removeLast()(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = type metadata accessor for OrderedDictionary(0, a3[2], a3[3], a3[4]);

  return a4(a1, a2, v6);
}

uint64_t OrderedDictionary.Elements.removeLast(_:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for OrderedDictionary(0, a2[2], a2[3], a2[4]);

  return a3(a1, v4);
}

__n128 sub_265DEBF34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t type metadata instantiation function for OrderedDictionary.Elements(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_SSs5NeverOTg5128_s11ShaderGraph18SGREMaterialSourceC5graph13configurationAcA7SGGraphC_AA23SGMaterialConfigurationCtKcfcS2S3key_SS5valuet_tXEfU8_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v24;
  v4 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v21 = v1;
  v22 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v23 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_SS5valuetMd, &_sSS3key_SS5valuetMR);
    result = _print_unlocked<A, B>(_:_:)();
    v12 = *(v24 + 16);
    v11 = *(v24 + 24);
    if (v12 >= v11 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
    }

    *(v24 + 16) = v12 + 1;
    v13 = v24 + 16 * v12;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v10);
    if ((v14 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v22;
    if (v22 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (v6 & 0x3F));
    if (v15)
    {
      v9 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v18 = (a1 + 72 + 8 * v10);
      while (v17 < (v9 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = outlined consume of [String : String].Index._Variant(v6, v22, 0);
          v9 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : String].Index._Variant(v6, v22, 0);
    }

LABEL_4:
    v7 = v23 + 1;
    v6 = v9;
    if (v23 + 1 == v21)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t SGREMaterialSource.name.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___SGREMaterialSource_graph) + OBJC_IVAR___SGGraph_name);

  return v1;
}

uint64_t SGREMaterialSource.debugHashSummary.getter(uint64_t a1)
{
  Hasher.init()();
  SHA512Digest.hash(into:)();
  Hasher.finalize()();
  v11 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v1 = v11;
  lazy protocol witness table accessor for type UInt and conformance UInt();
  v2 = String.init<A>(_:radix:uppercase:)();
  v5 = *(v11 + 16);
  v4 = *(v11 + 24);
  if (v5 >= v4 >> 1)
  {
    v9 = v2;
    v10 = v3;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v10;
    v2 = v9;
    v1 = v11;
  }

  *(v1 + 16) = v5 + 1;
  v6 = v1 + 16 * v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v7 = BidirectionalCollection<>.joined(separator:)();

  return v7;
}

uint64_t *SGREMaterialFunctionConstantValues.empty.unsafeMutableAddressor()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  return &static SGREMaterialFunctionConstantValues.empty;
}

uint64_t SGREMaterialSource.uniforms.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t SGREMaterialSource.containsPreReleaseNodes.getter()
{
  v1 = OBJC_IVAR___SGREMaterialSource_containsPreReleaseNodes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SGREMaterialSource.containsPreReleaseNodes.setter(char a1)
{
  v3 = OBJC_IVAR___SGREMaterialSource_containsPreReleaseNodes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Class SGREMaterialSource.SHA512Hash.getter()
{
  v1 = OBJC_IVAR___SGREMaterialSource_edgeDigest;
  v2 = type metadata accessor for SHA512Digest();
  v9 = v2;
  v10 = lazy protocol witness table accessor for type SHA512Digest and conformance SHA512Digest();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v0 + v1, v2);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v6, v7);
  return isa;
}

uint64_t SGREMaterialSource.edgeDigest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SGREMaterialSource_edgeDigest;
  v4 = type metadata accessor for SHA512Digest();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *SGREMaterialSource.init(graph:configuration:)(void *a1, void *a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for SHA512Digest();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v272 = &v257 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v273._rawValue = &v257 - v11;
  v12 = OBJC_IVAR___SGREMaterialSource_graph;
  *&v4[OBJC_IVAR___SGREMaterialSource_graph] = a1;
  v278 = OBJC_IVAR___SGREMaterialSource_config;
  *&v4[OBJC_IVAR___SGREMaterialSource_config] = a2;
  v13 = *((*MEMORY[0x277D85000] & *a2) + 0x78);
  v14 = (*MEMORY[0x277D85000] & *a2) + 120;
  v283 = a1;
  v271 = a2;
  v15 = a2;
  v269 = v14;
  v270 = v13;
  v16 = v13();
  if (v16 >> 62)
  {
    v87 = v16;
    v17 = __CocoaSet.count.getter();
    v16 = v87;
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v281 = v15;
  v282 = v4;
  v276 = v7;
  v277 = v8;
  v279 = v12;
  if (v17)
  {
    v18 = v16;
    v299 = MEMORY[0x277D84F90];
    v19 = &v299;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_91;
    }

    v346 = v17;
    v20 = 0;
    v21 = v299;
    v22 = v18;
    v23 = v18 & 0xC000000000000001;
    v24 = v18;
    do
    {
      if (v23)
      {
        v25 = MEMORY[0x266772030](v20, v22);
      }

      else
      {
        v25 = *(v22 + 8 * v20 + 32);
      }

      v26 = v25;
      v27 = &v25[OBJC_IVAR___SGInput_name];
      swift_beginAccess();
      v8 = *v27;
      v28 = *(v27 + 1);

      v299 = v21;
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v21 = v299;
      }

      v20 = (v20 + 1);
      *(v21 + 16) = v30 + 1;
      v31 = v21 + 16 * v30;
      *(v31 + 32) = v8;
      *(v31 + 40) = v28;
      v22 = v24;
    }

    while (v346 != v20);
  }

  v32 = v283;
  v346 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

  v33 = OBJC_IVAR___SGGraph_inputs;
  swift_beginAccess();
  v275._rawValue = v33;
  v19 = *&v33[v32];
  v293 = MEMORY[0x277D84F90];
  if (v19 >> 62)
  {
    v34 = __CocoaSet.count.getter();
  }

  else
  {
    v34 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (v34)
  {
    v35 = 0;
    v286._rawValue = (v19 & 0xFFFFFFFFFFFFFF8);
    v287 = (v19 & 0xC000000000000001);
    v274 = v19;
    v285 = (v19 + 32);
    v36 = v346 + 7;
    while (1)
    {
      while (1)
      {
        if (v287)
        {
          v37 = MEMORY[0x266772030](v35, v274);
        }

        else
        {
          if (v35 >= *(v286._rawValue + 2))
          {
            goto LABEL_77;
          }

          v37 = v285[v35];
        }

        v38 = v37;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          SGGraph.topologicalSort()(&v300);
          if (v3)
          {
LABEL_79:
            v284._rawValue = v3;

            goto LABEL_80;
          }

          v58 = v300;
          v345[0] = v300;
          specialized TopologicalSort.surfaceNodeElement(ofType:)(0, v300, &v304);
          v284._rawValue = 0;
LABEL_84:
          v82 = v304;
          if (v304)
          {
            v83 = v305;
            v84 = v302;
            v266 = v301;
            v267 = v306;
            v85 = v303;
            rawValue = v284._rawValue;
            specialized conditionallyInsertDiscardNode(from:in:)(v304, v305, v306, v58, v302);
            v284._rawValue = rawValue;
            if (rawValue)
            {

              outlined destroy of [Input](v345, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);

              v337 = v85;
              outlined destroy of [Input](&v337, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);

              goto LABEL_80;
            }

            v264 = v58;
            v265 = v84;
            v92 = inferTextureAssignments(from:)(v19);
            v284._rawValue = 0;
            v260 = v85;
            v261 = v83;
            v262 = v82;
            v263 = v92;
            mapUniforms(_:)(v92);
            v94 = v93;
            v95 = 0;
            v96 = *(v93 + 16);
            v97 = MEMORY[0x277D84F90];
LABEL_93:
            v98 = 48 * v95;
            while (v96 != v95)
            {
              if (v95 >= *(v94 + 16))
              {
                __break(1u);
                goto LABEL_124;
              }

              ++v95;
              v99 = v98 + 48;
              v100 = *(v94 + v98 + 72);
              v98 += 48;
              if ((v100 & 1) == 0)
              {
                v101 = v94 + v99;
                v102 = *(v94 + v99 - 16);
                v258 = *(v101 - 8);
                v259 = v102;
                v103 = *(v101 + 8);
                v104 = *(v101 + 16);

                outlined copy of TextureSource(v103, v104);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97[2] + 1, 1, v97);
                }

                v106 = v97[2];
                v105 = v97[3];
                if (v106 >= v105 >> 1)
                {
                  v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1, v97);
                }

                v97[2] = v106 + 1;
                v107 = &v97[4 * v106];
                v108 = v258;
                v107[4] = v259;
                v107[5] = v108;
                v107[6] = v103;
                v107[7] = v104;
                goto LABEL_93;
              }
            }

            if (v97[2])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
              v109 = static _DictionaryStorage.allocate(capacity:)();
            }

            else
            {
              v109 = MEMORY[0x277D84F98];
            }

            v293 = v109;

            v111 = v284._rawValue;
            specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v110, 1, &v293);
            v112 = v111;
            if (v111)
            {
              goto LABEL_193;
            }

            swift_bridgeObjectRelease_n();
            v113 = v293;
            *&v282[OBJC_IVAR___SGREMaterialSource_textures] = v293;
            v293 = 0;
            v114 = v283;
            v346 = v113;

            v287 = v114;
            specialized SGDataTypeGraph.init(_:idSequence:constants:)(v114, &v293, MEMORY[0x277D84F90], &v307);
            v284._rawValue = 0;
            SGDataTypeGraph.topologicalSort()(v312);
            v115 = v284._rawValue;
            v116 = specialized inferContainsPrereleaseNodes(in:)(v264);
            v284._rawValue = v115;
            if (v115)
            {

              outlined destroy of [Input](v345, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);

              v338 = v260;
              outlined destroy of [Input](&v338, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);

              outlined destroy of SGDataTypeGraph.TopologicalSort(v312);
              v336 = v308;
              outlined destroy of String(&v336);
              v335 = v309;
              outlined destroy of [Input](&v335, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
              v334 = v310;
              outlined destroy of [Input](&v334, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
              v333 = v311;
              v117 = &v333;
LABEL_110:
              outlined destroy of [Input](v117, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);

              v57 = 0;
              v56 = 1;
              goto LABEL_62;
            }

            v282[OBJC_IVAR___SGREMaterialSource_containsPreReleaseNodes] = v116 & 1;
            v118 = v284._rawValue;
            v119 = specialized SGDataTypeGraph.structuralEdgeList(topologicalSort:textureMapping:)(v312, v346);
            v284._rawValue = v118;
            if (v118)
            {

              outlined destroy of [Input](v345, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);

              v339 = v260;
              outlined destroy of [Input](&v339, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);

              outlined destroy of SGDataTypeGraph.TopologicalSort(v312);
              v332 = v308;
              outlined destroy of String(&v332);
              v331 = v309;
              outlined destroy of [Input](&v331, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
              v330 = v310;
              outlined destroy of [Input](&v330, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
              v329 = v311;
              v117 = &v329;
              goto LABEL_110;
            }

            v120 = v119;
            outlined destroy of SGDataTypeGraph.TopologicalSort(v312);
            v121 = v284._rawValue;
            edgeListDigest(_:)(v120, v273._rawValue);
            v97 = v121;
            if (v121)
            {

              outlined destroy of [Input](v345, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);

              v340 = v260;
              outlined destroy of [Input](&v340, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);

              v328 = v308;
              outlined destroy of String(&v328);
              v327 = v309;
              outlined destroy of [Input](&v327, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
              v326 = v310;
              outlined destroy of [Input](&v326, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
              v325 = v311;
              outlined destroy of [Input](&v325, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);

              v57 = 0;
              v56 = 1;
              v284._rawValue = v121;
              goto LABEL_62;
            }

            v122 = *(v277 + 32);
            v257 = OBJC_IVAR___SGREMaterialSource_edgeDigest;
            v122(&v282[OBJC_IVAR___SGREMaterialSource_edgeDigest], v273._rawValue, v276);
            v263 = v296;
            if (v296[2])
            {
              v123 = 0xE000000000000000;
              v293 = 0;
              v294 = 0xE000000000000000;
              _StringGuts.grow(_:)(44);

              v293 = 0xD000000000000014;
              v294 = 0x8000000265F2F9A0;
              v124 = *&v287[OBJC_IVAR___SGGraph_name];
              v125 = *&v287[OBJC_IVAR___SGGraph_name + 8];

              MEMORY[0x266771550](v124, v125);

              MEMORY[0x266771550](0xD000000000000016, 0x8000000265F2F9C0);
              v126 = v263;
              if (v263[2] == 1)
              {
                v127 = 0;
              }

              else
              {
                v127 = 115;
              }

              if (v263[2] != 1)
              {
                v123 = 0xE100000000000000;
              }

              MEMORY[0x266771550](v127, v123);

              MEMORY[0x266771550](2236474, 0xE300000000000000);

              v129 = v293;
              v128 = v294;
              v293 = v126;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
              lazy protocol witness table accessor for type [String] and conformance [A]();
              v130 = BidirectionalCollection<>.joined(separator:)();
              v132 = v131;

              v293 = v129;
              v294 = v128;

              MEMORY[0x266771550](v130, v132);

              MEMORY[0x266771550](34, 0xE100000000000000);

              v134 = v293;
              v133 = v294;
              if (one-time initialization token for logger != -1)
              {
                swift_once();
              }

              v135 = type metadata accessor for Logger();
              __swift_project_value_buffer(v135, logger);

              v95 = Logger.logObject.getter();
              v136 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v95, v136))
              {
                v137 = swift_slowAlloc();
                v138 = swift_slowAlloc();
                v293 = v138;
                *v137 = 136315138;
                v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v133, &v293);

                *(v137 + 4) = v139;
                _os_log_impl(&dword_265D7D000, v95, v136, "%s", v137, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v138);
                MEMORY[0x266773120](v138, -1, -1);
                MEMORY[0x266773120](v137, -1, -1);
              }

              else
              {
LABEL_124:
              }
            }

            v140 = static DebugConfig.debugMode;

            v141 = specialized Set.contains(_:)(3, v140);

            if ((v141 & 1) == 0)
            {
              v142 = static DebugConfig.debugMode;

              v143 = specialized Set.contains(_:)(6, v142);

              if ((v143 & 1) == 0)
              {

                goto LABEL_183;
              }
            }

            v144 = v276;
            v145 = v272;
            (*(v277 + 16))(v272, &v282[v257], v276);
            v146 = SHA512Digest.description.getter();
            v148 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v146, v147);
            v150 = v149;
            v152 = v151;
            v154 = v153;

            v258 = MEMORY[0x2667714E0](v148, v150, v152, v154);
            v259 = v155;

            (*(v277 + 8))(v145, v144);
            v275._rawValue = *(v283 + v275._rawValue);
            if (v275._rawValue >> 62)
            {
              v273._rawValue = __CocoaSet.count.getter();
              if (!v273._rawValue)
              {
                goto LABEL_141;
              }

LABEL_130:
              v288 = MEMORY[0x277D84F90];
              v156 = v273._rawValue;

              v112 = &v288;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v156 & ~(v156 >> 63), 0);
              if ((v156 & 0x8000000000000000) == 0)
              {
                v157 = 0;
                v284._rawValue = v288;
                v158 = v275._rawValue & 0xC000000000000001;
                do
                {
                  if (v158)
                  {
                    v159 = MEMORY[0x266772030](v157, v275._rawValue);
                  }

                  else
                  {
                    v159 = *(v275._rawValue + v157 + 4);
                  }

                  v160 = v159;
                  v162 = *&v159[OBJC_IVAR___SGInput_name];
                  v161 = *&v159[OBJC_IVAR___SGInput_name + 8];
                  v291 = v162;
                  v292 = v161;

                  MEMORY[0x266771550](8250, 0xE200000000000000);
                  v163 = v291;
                  v164 = v292;
                  swift_beginAccess();
                  v165 = SGDataType.stringValue.getter();
                  v167 = v166;
                  v291 = v163;
                  v292 = v164;

                  MEMORY[0x266771550](v165, v167);

                  v168 = v291;
                  v169 = v292;
                  v288 = v284._rawValue;
                  v171 = *(v284._rawValue + 2);
                  v170 = *(v284._rawValue + 3);
                  if (v171 >= v170 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v171 + 1, 1);
                    v284._rawValue = v288;
                  }

                  ++v157;
                  v172 = v284._rawValue;
                  *(v284._rawValue + 2) = v171 + 1;
                  v173 = &v172[16 * v171];
                  *(v173 + 4) = v168;
                  *(v173 + 5) = v169;
                }

                while (v273._rawValue != v157);

                goto LABEL_142;
              }

              __break(1u);
            }

            else
            {
              v273._rawValue = *((v275._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v273._rawValue)
              {
                goto LABEL_130;
              }

LABEL_141:
              v284._rawValue = MEMORY[0x277D84F90];
LABEL_142:
              if ((v286._rawValue & 0x8000000000000000) == 0 && (v286._rawValue & 0x4000000000000000) == 0)
              {
                v273._rawValue = *(v286._rawValue + 2);
                if (v273._rawValue)
                {
                  goto LABEL_145;
                }

LABEL_155:

                v275._rawValue = MEMORY[0x277D84F90];
LABEL_156:
                v192 = v270(v191);
                v193 = v192;
                if (!(v192 >> 62))
                {
                  v273._rawValue = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v273._rawValue)
                  {
                    goto LABEL_158;
                  }

LABEL_168:

                  v286._rawValue = MEMORY[0x277D84F90];
LABEL_169:
                  v273._rawValue = (*((*MEMORY[0x277D85000] & *v281) + 0x60))(v211);
                  if (!(v273._rawValue >> 62))
                  {
                    v271 = *((v273._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v271)
                    {
                      goto LABEL_171;
                    }

LABEL_181:

                    v214._rawValue = MEMORY[0x277D84F90];
LABEL_182:
                    v273._rawValue = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_SSs5NeverOTg5128_s11ShaderGraph18SGREMaterialSourceC5graph13configurationAcA7SGGraphC_AA23SGMaterialConfigurationCtKcfcS2S3key_SS5valuet_tXEfU8_Tf1cn_n(v346);

                    v297 = 0;
                    v298 = 0xE000000000000000;
                    _StringGuts.grow(_:)(188);
                    MEMORY[0x266771550](0xD000000000000022, 0x8000000265F2FA00);
                    v224 = &v287[OBJC_IVAR___SGGraph_name];
                    v225 = *&v287[OBJC_IVAR___SGGraph_name];
                    v226 = *&v287[OBJC_IVAR___SGGraph_name + 8];

                    MEMORY[0x266771550](v225, v226);

                    MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2FA30);
                    MEMORY[0x266771550](v258, v259);
                    MEMORY[0x266771550](0xD000000000000032, 0x8000000265F2FA50);
                    v227 = logArray(_:tabs:)(v284, 1);

                    MEMORY[0x266771550](v227._countAndFlagsBits, v227._object);

                    MEMORY[0x266771550](0x6D726F66696E750ALL, 0xEB000000000A3A73);
                    v228 = logArray(_:tabs:)(v275, 1);

                    MEMORY[0x266771550](v228._countAndFlagsBits, v228._object);

                    MEMORY[0x266771550](0xD000000000000019, 0x8000000265F2FA90);
                    v229 = logArray(_:tabs:)(v286, 1);

                    MEMORY[0x266771550](v229._countAndFlagsBits, v229._object);

                    MEMORY[0x266771550](0xD000000000000011, 0x8000000265F2FAB0);
                    v230 = logArray(_:tabs:)(v273, 1);

                    MEMORY[0x266771550](v230._countAndFlagsBits, v230._object);

                    MEMORY[0x266771550](0xD000000000000013, 0x8000000265F2FAD0);
                    v231 = logArray(_:tabs:)(v214, 1);

                    MEMORY[0x266771550](v231._countAndFlagsBits, v231._object);

                    v232 = v297;
                    v233 = v298;
                    v297 = v268;
                    v298 = v274;

                    MEMORY[0x266771550](170536714, 0xE400000000000000);

                    MEMORY[0x266771550](v232, v233);

                    MEMORY[0x266771550](170863114, 0xE400000000000000);

                    v234 = v297;
                    v235 = v298;
                    v236 = *(v224 + 1);
                    v297 = *v224;
                    v298 = v236;

                    MEMORY[0x266771550](95, 0xE100000000000000);
                    MEMORY[0x266771550](v258, v259);

                    MEMORY[0x266771550](0x656372756F735FLL, 0xE700000000000000);
                    v274 = v298;
                    specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v234, v235, v297, v298, 7630692, 0xE300000000000000);

LABEL_183:

                    v237 = static DebugConfig.debugMode;

                    v238 = specialized Set.contains(_:)(3, v237);

                    if (v238)
                    {
                      specialized createGraphDotText<A>(representing:)(&v307);
                      v286._rawValue = v239;
                      v346 = v240;
                      if (v97)
                      {
                        outlined destroy of [Input](v345, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);

                        v342 = v260;
                        outlined destroy of [Input](&v342, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);

                        v320 = v308;
                        outlined destroy of String(&v320);
                        v319 = v309;
                        outlined destroy of [Input](&v319, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
                        v318 = v310;
                        outlined destroy of [Input](&v318, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
                        v317 = v311;
                        outlined destroy of [Input](&v317, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);

                        v56 = 1;
                        v284._rawValue = v97;
                        v57 = 1;
                        goto LABEL_62;
                      }

                      v316 = v308;
                      outlined destroy of String(&v316);
                      v315 = v309;
                      outlined destroy of [Input](&v315, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
                      v314 = v310;
                      outlined destroy of [Input](&v314, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
                      v313 = v311;
                      outlined destroy of [Input](&v313, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
                      v297 = 0;
                      v298 = 0xE000000000000000;
                      _StringGuts.grow(_:)(26);
                      v242 = *&v287[OBJC_IVAR___SGGraph_name];
                      v241 = *&v287[OBJC_IVAR___SGGraph_name + 8];

                      v297 = v242;
                      v298 = v241;
                      MEMORY[0x266771550](95, 0xE100000000000000);
                      v243 = v277;
                      v244 = v272;
                      (*(v277 + 16))(v272, &v282[v257], v276);
                      v245 = SHA512Digest.description.getter();
                      v247 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v245, v246);
                      v249 = v248;
                      v251 = v250;
                      v253 = v252;

                      v254 = MEMORY[0x2667714E0](v247, v249, v251, v253);
                      v256 = v255;

                      (*(v243 + 8))(v244, v276);
                      MEMORY[0x266771550](v254, v256);

                      MEMORY[0x266771550](0xD000000000000015, 0x8000000265F2F9E0);
                      specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v286._rawValue, v346, v297, v298, 7630692, 0xE300000000000000);
                      outlined destroy of [Input](v345, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);

                      v343 = v260;
                      outlined destroy of [Input](&v343, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);
                    }

                    else
                    {
                      outlined destroy of [Input](v345, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);

                      v341 = v260;
                      outlined destroy of [Input](&v341, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);

                      v324 = v308;
                      outlined destroy of String(&v324);
                      v323 = v309;
                      outlined destroy of [Input](&v323, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
                      v322 = v310;
                      outlined destroy of [Input](&v322, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
                      v321 = v311;
                      outlined destroy of [Input](&v321, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
                    }

                    v295.receiver = v282;
                    v295.super_class = ObjectType;
                    v76 = objc_msgSendSuper2(&v295, sel_init);

                    return v76;
                  }

                  v271 = __CocoaSet.count.getter();
                  if (!v271)
                  {
                    goto LABEL_181;
                  }

LABEL_171:
                  v290 = MEMORY[0x277D84F90];
                  v212 = v271;
                  v112 = &v290;
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v212 & ~(v212 >> 63), 0);
                  if ((v212 & 0x8000000000000000) == 0)
                  {
                    v213 = 0;
                    v214._rawValue = v290;
                    v270 = (v273._rawValue & 0xC000000000000001);
                    do
                    {
                      if (v270)
                      {
                        v215 = MEMORY[0x266772030](v213, v273._rawValue);
                      }

                      else
                      {
                        v215 = *(v273._rawValue + v213 + 4);
                      }

                      v216 = v215;
                      v218 = *&v215[OBJC_IVAR___SGGeometryPropertyDefinition_name];
                      v217 = *&v215[OBJC_IVAR___SGGeometryPropertyDefinition_name + 8];
                      v297 = v218;
                      v298 = v217;

                      MEMORY[0x266771550](540945696, 0xE400000000000000);
                      MEMORY[0x266771550](*&v216[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName], *&v216[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName + 8]);

                      v220 = v297;
                      v219 = v298;
                      v290 = v214._rawValue;
                      v222 = *(v214._rawValue + 2);
                      v221 = *(v214._rawValue + 3);
                      if (v222 >= v221 >> 1)
                      {
                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v221 > 1), v222 + 1, 1);
                        v214._rawValue = v290;
                      }

                      v213 = (v213 + 1);
                      *(v214._rawValue + 2) = v222 + 1;
                      v223 = v214._rawValue + 16 * v222;
                      *(v223 + 4) = v220;
                      *(v223 + 5) = v219;
                    }

                    while (v271 != v213);

                    goto LABEL_182;
                  }

LABEL_192:
                  __break(1u);
LABEL_193:

                  __break(1u);
                  return result;
                }

                v273._rawValue = __CocoaSet.count.getter();
                if (!v273._rawValue)
                {
                  goto LABEL_168;
                }

LABEL_158:
                v290 = MEMORY[0x277D84F90];
                v194 = v273._rawValue;
                v112 = &v290;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v194 & ~(v194 >> 63), 0);
                if ((v194 & 0x8000000000000000) == 0)
                {
                  v195 = 0;
                  v286._rawValue = v290;
                  v270 = (v193 & 0xC000000000000001);
                  do
                  {
                    if (v270)
                    {
                      v196 = MEMORY[0x266772030](v195, v193);
                    }

                    else
                    {
                      v196 = *(v193 + 8 * v195 + 32);
                    }

                    v197 = v196;
                    v199 = *&v196[OBJC_IVAR___SGInput_name];
                    v198 = *&v196[OBJC_IVAR___SGInput_name + 8];
                    v297 = v199;
                    v298 = v198;

                    MEMORY[0x266771550](8250, 0xE200000000000000);
                    v200 = v297;
                    v201 = v298;
                    swift_beginAccess();
                    v202 = SGDataType.stringValue.getter();
                    v204 = v203;
                    v297 = v200;
                    v298 = v201;

                    MEMORY[0x266771550](v202, v204);

                    v205 = v297;
                    v206 = v298;
                    v290 = v286._rawValue;
                    v208 = *(v286._rawValue + 2);
                    v207 = *(v286._rawValue + 3);
                    if (v208 >= v207 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v207 > 1), v208 + 1, 1);
                      v286._rawValue = v290;
                    }

                    v195 = v195 + 1;
                    v209 = v286._rawValue;
                    *(v286._rawValue + 2) = v208 + 1;
                    v210 = &v209[16 * v208];
                    *(v210 + 4) = v205;
                    *(v210 + 5) = v206;
                  }

                  while (v273._rawValue != v195);

                  goto LABEL_169;
                }

LABEL_191:
                __break(1u);
                goto LABEL_192;
              }

              v273._rawValue = __CocoaSet.count.getter();
              if (!v273._rawValue)
              {
                goto LABEL_155;
              }

LABEL_145:
              v297 = MEMORY[0x277D84F90];
              v174 = v273._rawValue;
              v112 = &v297;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v174 & ~(v174 >> 63), 0);
              if ((v174 & 0x8000000000000000) == 0)
              {
                v175 = 0;
                v275._rawValue = v297;
                v264 = v286._rawValue & 0xC000000000000001;
                do
                {
                  if (v264)
                  {
                    v176 = MEMORY[0x266772030](v175, v286._rawValue);
                  }

                  else
                  {
                    v176 = *(v286._rawValue + v175 + 4);
                  }

                  v177 = v176;
                  v179 = *&v176[OBJC_IVAR___SGInput_name];
                  v178 = *&v176[OBJC_IVAR___SGInput_name + 8];
                  v288 = v179;
                  v289 = v178;

                  MEMORY[0x266771550](8250, 0xE200000000000000);
                  v180 = v288;
                  v181 = v289;
                  swift_beginAccess();
                  v182 = SGDataType.stringValue.getter();
                  v184 = v183;
                  v288 = v180;
                  v289 = v181;

                  MEMORY[0x266771550](v182, v184);

                  v185 = v288;
                  v186 = v289;
                  v297 = v275._rawValue;
                  v188 = *(v275._rawValue + 2);
                  v187 = *(v275._rawValue + 3);
                  if (v188 >= v187 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v187 > 1), v188 + 1, 1);
                    v275._rawValue = v297;
                  }

                  ++v175;
                  v189 = v275._rawValue;
                  *(v275._rawValue + 2) = v188 + 1;
                  v190 = &v189[16 * v188];
                  *(v190 + 4) = v185;
                  *(v190 + 5) = v186;
                }

                while (v273._rawValue != v175);

                goto LABEL_156;
              }
            }

            __break(1u);
            goto LABEL_191;
          }

          lazy protocol witness table accessor for type APIError and conformance APIError();
          v88 = swift_allocError();
          *v89 = xmmword_265F22B90;
          *(v89 + 16) = 24;
          v284._rawValue = v88;
          swift_willThrow();
          outlined destroy of [Input](v345, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
          v90 = v301;
          v91 = v303;

          v344 = v91;
          outlined destroy of [Input](&v344, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);
LABEL_80:

LABEL_43:
          v56 = 0;
          v57 = 0;
          goto LABEL_63;
        }

        if (v346[2])
        {
          break;
        }

LABEL_17:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v19 = &v293;
        specialized ContiguousArray._endMutation()();
        if (v35 == v34)
        {
          goto LABEL_35;
        }
      }

      v40 = *&v37[OBJC_IVAR___SGInput_name];
      v41 = *&v37[OBJC_IVAR___SGInput_name + 8];
      v8 = v346;
      Hasher.init(_seed:)();

      String.hash(into:)();
      v42 = Hasher._finalize()();
      v43 = -1 << *(v8 + 32);
      v19 = v42 & ~v43;
      if (((*(v36 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
LABEL_16:

        goto LABEL_17;
      }

      v8 = ~v43;
      while (1)
      {
        v44 = (v346[6] + 16 * v19);
        v45 = *v44 == v40 && v44[1] == v41;
        if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v19 = (v19 + 1) & v8;
        if (((*(v36 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v35 == v34)
      {
LABEL_35:
        v15 = v293;
        v32 = v283;
        break;
      }
    }
  }

  v7 = OBJC_IVAR___SGREMaterialSource_uniforms;
  *&v282[OBJC_IVAR___SGREMaterialSource_uniforms] = v15;
  v46 = one-time initialization token for debugMode;

  if (v46 != -1)
  {
    swift_once();
  }

  v8 = &static DebugConfig.debugMode;
  swift_beginAccess();
  v47 = static DebugConfig.debugMode;

  v48 = specialized Set.contains(_:)(3, v47);

  if (v48 & 1) != 0 || (v49 = static DebugConfig.debugMode, , v50 = specialized Set.contains(_:)(6, v49), , (v50) || (v51 = static DebugConfig.debugMode, , v52 = specialized Set.contains(_:)(1, v51), , (v52))
  {
    v53 = v284._rawValue;
    v54 = createDotText(representing:)(v32);
    v284._rawValue = v53;
    if (v53)
    {

      goto LABEL_43;
    }

    v268 = v54;
    v274 = v55;
  }

  else
  {
    v268 = 0;
    v274 = 0xE000000000000000;
  }

  v287 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo10SGDataTypeV_Tt0g5Tf4g_n(&outlined read-only object #0 of SGREMaterialSource.init(graph:configuration:));
  v19 = *(v32 + v275._rawValue);
  if (!(v19 >> 62))
  {
    v58 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_48;
  }

LABEL_91:
  v58 = __CocoaSet.count.getter();
LABEL_48:
  v285 = v7;
  v286._rawValue = v15;

  if (!v58)
  {
LABEL_58:

    v19 = v283;
    SGGraph.collapseConstantAndPassthroughNodes()();
    if (v63)
    {
      v284._rawValue = v63;

      goto LABEL_61;
    }

    SGGraph.removeUnconnectedNodesAndEdges()();
    v8 = &static DebugConfig.debugMode;
    if (!v79)
    {
      v296 = MEMORY[0x277D84F90];
      MEMORY[0x28223BE20](v78);
      *(&v257 - 2) = &v296;
      v81 = v80;
      specialized SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(v81, 1, protocol witness for static Equatable.== infix(_:_:) in conformance MaterialXDataType.Kind.SetCodingKeys, 0, partial apply for closure #3 in SGREMaterialSource.init(graph:configuration:));

      SGGraph.replaceDeprecatedAndRedundantNodes()();
      if (!v3)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    v284._rawValue = v79;

    goto LABEL_80;
  }

  v59 = 0;
  while (1)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x266772030](v59, v19);
    }

    else
    {
      if (v59 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v60 = *(v19 + 8 * v59 + 32);
    }

    v61 = v60;
    v8 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v293 = v60;
    v62 = v284._rawValue;
    closure #2 in SGREMaterialSource.init(graph:configuration:)(&v293, v287, v283);
    v284._rawValue = v62;
    if (v62)
    {
      break;
    }

    ++v59;
    if (v8 == v58)
    {
      goto LABEL_58;
    }
  }

LABEL_61:
  v56 = 0;
  v57 = 0;
LABEL_62:
  v8 = &static DebugConfig.debugMode;
LABEL_63:
  v64 = *v8;

  v65 = specialized Set.contains(_:)(3, v64);

  if (v65 & 1) != 0 || (v66 = *v8, , v67 = specialized Set.contains(_:)(6, v66), , (v67))
  {
    v68 = v283;
    v69 = createDotText(representing:)(v283);
    v70 = *(v68 + OBJC_IVAR___SGGraph_name + 8);
    v297 = *(v68 + OBJC_IVAR___SGGraph_name);
    v298 = v70;
    v71 = v69;
    v73 = v72;

    MEMORY[0x266771550](0x735F524F5252455FLL, 0xED0000656372756FLL);
    specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v71, v73, v297, v298, 7630692, 0xE300000000000000);
  }

  type metadata accessor for SGError();
  v74 = v284._rawValue;
  v75 = v284._rawValue;
  SGError.__allocating_init(_:)(v74);
  swift_willThrow();

  v76 = v282;

  if (v56)
  {
  }

  if (v57)
  {
    (*(v277 + 8))(&v76[OBJC_IVAR___SGREMaterialSource_edgeDigest], v276);
  }

  swift_deallocPartialClassInstance();
  return v76;
}

void closure #2 in SGREMaterialSource.init(graph:configuration:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = OBJC_IVAR___SGInput_type;
  swift_beginAccess();
  if (specialized Set.contains(_:)(*(v5 + v6), a2))
  {
    _StringGuts.grow(_:)(30);

    v24 = 0xD00000000000001CLL;
    v25 = 0x8000000265F2FFC0;
    v26 = 0x8000000265F2FFC0;
    v7 = SGDataType.stringValue.getter();
    MEMORY[0x266771550](v7);

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136315138;
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000265F2FFC0, &v24);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_265D7D000, v9, v10, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x266773120](v12, -1, -1);
      MEMORY[0x266773120](v11, -1, -1);
    }

    else
    {
    }

    v14 = *(a3 + OBJC_IVAR___SGGraph_argumentsNode);
    v15 = MEMORY[0x266771450](*(v5 + OBJC_IVAR___SGInput_name), *(v5 + OBJC_IVAR___SGInput_name + 8));
    v16 = [v14 outputNamed_];

    if (v16)
    {
      v17 = SGOutput.edges.getter();
      if (v17 >> 62)
      {
        v23 = __CocoaSet.count.getter();

        if (!v23)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v18)
        {
LABEL_11:

          return;
        }
      }

      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      v24 = 0xD00000000000001CLL;
      v25 = v26;
      v19 = SGDataType.stringValue.getter();
      MEMORY[0x266771550](v19);

      MEMORY[0x266771550](0xD000000000000014, 0x8000000265F2FFE0);
      v20 = v24;
      v21 = v25;
      lazy protocol witness table accessor for type APIError and conformance APIError();
      swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v21;
      *(v22 + 16) = 7;
      swift_willThrow();
      goto LABEL_11;
    }
  }
}

uint64_t closure #3 in SGREMaterialSource.init(graph:configuration:)(uint64_t a1, uint64_t a2, char **a3)
{
  v3 = (a1 + OBJC_IVAR___SGNode_data);
  if (*(a1 + OBJC_IVAR___SGNode_data + 80) <= 0x3Fu)
  {
    v4 = v3[5];
    if (v4 != 1 && v4 != 3)
    {
      v7 = *v3;
      v6 = v3[1];
      if (v4 == 2)
      {
        lazy protocol witness table accessor for type APIError and conformance APIError();
        swift_allocError();
        *v8 = v7;
        *(v8 + 8) = v6;
        *(v8 + 16) = 0;
        swift_willThrow();
      }

      v10 = a1;
      v11 = *a3;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v11;
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = a3;
      }

      else
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        v14 = a3;
        v11 = v46;
        *a3 = v46;
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v47 = v14;
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v11);
        a1 = v10;
        *v47 = v11;
      }

      else
      {
        a1 = v10;
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[16 * v16];
      *(v17 + 4) = v7;
      *(v17 + 5) = v6;
    }
  }

  v18 = *(a1 + OBJC_IVAR___SGNode_inputs);
  v50 = MEMORY[0x277D84F90];
  v19 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
LABEL_48:
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 0;
  v51 = MEMORY[0x277D84F90];
  while (v20 != v21)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x266772030](v21, v18);
    }

    else
    {
      if (v21 >= *(v19 + 16))
      {
        goto LABEL_45;
      }

      v22 = *(v18 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    ++v21;
    if (Strong)
    {
      MEMORY[0x266771770]();
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v51 = v50;
      v21 = v24;
    }
  }

  v26 = v51;
  if (v51 >> 62)
  {
    v27 = __CocoaSet.count.getter();
    v26 = v51;
    if (v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v27 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
LABEL_28:
      v28 = 0;
      v48 = v26 & 0xFFFFFFFFFFFFFF8;
      v49 = v26 & 0xC000000000000001;
      while (1)
      {
        if (v49)
        {
          v29 = MEMORY[0x266772030](v28, v26);
        }

        else
        {
          if (v28 >= *(v48 + 16))
          {
            goto LABEL_47;
          }

          v29 = *(v26 + 8 * v28 + 32);
        }

        v18 = v29;
        v19 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_46;
        }

        v30 = *(v29 + OBJC_IVAR___SGEdge_from);
        v31 = OBJC_IVAR___SGOutput_type;
        swift_beginAccess();
        v32 = *(v30 + v31);
        v33 = v32 - 32;
        if (v32 - 32) <= 0x18 && ((0x1F680DBu >> v33))
        {
          v32 = qword_265F22C60[v33];
        }

        v34 = *(v18 + OBJC_IVAR___SGEdge_to);
        v35 = OBJC_IVAR___SGInput_type;
        swift_beginAccess();
        v36 = *(v34 + v35);
        v37 = v36 - 32;
        if (v36 - 32) <= 0x18 && ((0x1F680DBu >> v37))
        {
          v36 = qword_265F22C60[v37];
        }

        specialized SGDataType.materialXDataType.getter(v32);

        v38 = specialized SGDataType.materialXDataType.getter(v36);
        if ((MaterialXDataType.isEqual(to:)(v38) & 1) == 0)
        {

          _StringGuts.grow(_:)(18);
          v39 = SGDataType.stringValue.getter();
          v41 = v40;

          MEMORY[0x266771550](10272, 0xE200000000000000);
          v42 = MaterialXDataType.description.getter();
          MEMORY[0x266771550](v42);

          MEMORY[0x266771550](0x203D212029, 0xE500000000000000);
          v43 = SGDataType.stringValue.getter();
          MEMORY[0x266771550](v43);

          MEMORY[0x266771550](10272, 0xE200000000000000);
          v44 = MaterialXDataType.description.getter();
          MEMORY[0x266771550](v44);

          MEMORY[0x266771550](41, 0xE100000000000000);
          lazy protocol witness table accessor for type APIError and conformance APIError();
          swift_allocError();
          *v45 = v39;
          *(v45 + 8) = v41;
          *(v45 + 16) = 5;
          swift_willThrow();
        }

        ++v28;
        v26 = v51;
        if (v19 == v27)
        {
        }
      }
    }
  }
}

void specialized createGraphDotText<A>(representing:)(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph010SGDataTypeE0VGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph010SGDataTypeE0VGMR);
  inited = swift_initStackObject();
  v4 = *(a1 + 4);
  v41 = *(a1 + 3);
  v35 = *(a1 + 8);
  v34 = v4;
  v5 = *a1;
  inited[1] = xmmword_265F1F670;
  inited[2] = v5;
  v6 = a1[2];
  inited[3] = a1[1];
  inited[4] = v6;
  outlined init with copy of String(&v35, v33);
  outlined init with copy of [Input](&v41, v33, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
  outlined init with copy of [Input](&v34, v33, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);

  v8 = specialized SGDataTypeGraph.subgraphs()(v7);
  v33[0] = inited;
  specialized Array.append<A>(contentsOf:)(v8);
  v9 = v33[0];
  v10 = *(v33[0] + 16);
  if (v10)
  {
    v33[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = 0;
    v12 = v33[0];
    v13 = *(v9 + 16);
    if (v13 >= v10)
    {
      v13 = v10;
    }

    v31 = v9;
    v32 = v13;
    v14 = (v9 + 72);
    v30 = v10;
    while (v32 != v11)
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_16;
      }

      v15 = *(v14 - 3);
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;
      v36 = *(v14 - 5);
      v37 = v15;
      v38 = v16;
      v39 = v17;
      v40 = v18;

      v19 = specialized graphDotText<A>(representing:index:)(&v36, v11);
      if (v1)
      {

        type metadata accessor for SGError();
        v26 = v1;
        SGError.__allocating_init(_:)(v1);
        swift_willThrow();

        return;
      }

      v21 = v19;
      v22 = v20;

      v33[0] = v12;
      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v12 = v33[0];
      }

      ++v11;
      *(v12 + 16) = v24 + 1;
      v25 = v12 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v14 += 6;
      v9 = v31;
      v1 = 0;
      if (v30 == v11)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
LABEL_14:
    v33[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(136);
    MEMORY[0x266771550](0xD000000000000083, 0x8000000265F2FD30);
    MEMORY[0x266771550](v27, v29);

    MEMORY[0x266771550](8194570, 0xE300000000000000);
  }
}

Swift::Int SGREMaterialSource.hash.getter(uint64_t a1)
{
  Hasher.init()();
  SHA512Digest.hash(into:)();
  return Hasher.finalize()();
}

id SGREMaterialSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGREMaterialFunctionConstantValues.scalarFunctionConstants.getter()
{
  v1 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SGREMaterialFunctionConstantValues.scalarFunctionConstants.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SGREMaterialFunctionConstantValues.vectorFunctionConstants.getter()
{
  v1 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SGREMaterialFunctionConstantValues.vectorFunctionConstants.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id one-time initialization function for empty()
{
  v0 = MEMORY[0x277D84F90];
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So7NSArrayCTt0g5Tf4g_n(v0);
  v3 = objc_allocWithZone(type metadata accessor for SGREMaterialFunctionConstantValues());
  result = SGREMaterialFunctionConstantValues.init(scalarFunctionConstants:vectorFunctionConstants:)(v1, v2);
  static SGREMaterialFunctionConstantValues.empty = result;
  return result;
}

id static SGREMaterialFunctionConstantValues.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static SGREMaterialFunctionConstantValues.empty;

  return v1;
}

id SGREMaterialFunctionConstantValues.init(scalarFunctionConstants:vectorFunctionConstants:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x277CBEB38);
  *&v2[v6] = NSDictionary.init(dictionaryLiteral:)();
  v7 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
  *&v2[v7] = NSDictionary.init(dictionaryLiteral:)();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(a1, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);

  v8 = objc_allocWithZone(MEMORY[0x277CBEB38]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithDictionary_];

  swift_beginAccess();
  v11 = *&v2[v6];
  *&v2[v6] = v10;

  specialized _dictionaryUpCast<A, B, C, D>(_:)(a2, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);

  v12 = objc_allocWithZone(MEMORY[0x277CBEB38]);
  v13 = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithDictionary_];

  swift_beginAccess();
  v15 = *&v3[v7];
  *&v3[v7] = v14;

  v18.receiver = v3;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1, unint64_t *a2, void *a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v4 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v4 + 64;

  v11 = 0;
  while (v7)
  {
LABEL_15:
    v15 = __clz(__rbit64(v7)) | (v11 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *(*(a1 + 56) + 8 * v15);
    *&v36[0] = *v16;
    *(&v36[0] + 1) = v17;

    v18;
    swift_dynamicCast();
    type metadata accessor for NSArray(0, a2, a3);
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    outlined init with take of Any(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    outlined init with take of Any(v35, v36);
    result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
    v19 = -1 << *(v4 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v9 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v9 + 8 * v21);
        if (v25 != -1)
        {
          v12 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v12 = __clz(__rbit64((-1 << v20) & ~*(v9 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v7 &= v7 - 1;
    *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v4 + 48) + 40 * v12;
    *v13 = v28;
    *(v13 + 16) = v29;
    *(v13 + 32) = v30;
    result = outlined init with take of Any(v36, (*(v4 + 56) + 32 * v12));
    ++*(v4 + 16);
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return v4;
    }

    v7 = *(a1 + 64 + 8 * v14);
    ++v11;
    if (v7)
    {
      v11 = v14;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id SGREMaterialFunctionConstantValues.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x277CBEB38);
  *&v0[v2] = NSDictionary.init(dictionaryLiteral:)();
  v3 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
  *&v0[v3] = NSDictionary.init(dictionaryLiteral:)();
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t specialized graphDotText<A>(representing:index:)(__int128 *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v219 = *(a1 + 5);
  v152 = v4;
  MEMORY[0x266771550]();
  *&v188 = a2;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v6);

  *&v199 = 95;
  *(&v199 + 1) = 0xE100000000000000;

  v7 = &v199;
  MEMORY[0x266771550](95, 0xE100000000000000);
  v8 = v219;

  v155 = v199;
  v153 = v5;

  v9 = specialized Graph.nodes.getter(v8);
  v10 = *(v9 + 16);
  if (!v10)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v11 = 0;
  v12 = v9 + 64;
  v13 = -v10;
  v14 = MEMORY[0x277D84F90];
  do
  {
    v15 = *(v9 + 16);
    if (v11 > v15)
    {
      v15 = v11;
    }

    v16 = -v15;
    v17 = (v12 + 40 * v11++);
    while (1)
    {
      if (v16 + v11 == 1)
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v18 = *(v17 - 2);
      v19 = v18 >> 62;
      if (!(v18 >> 62))
      {
        v20 = *(v17 - 2);
        v21 = 32;
        goto LABEL_12;
      }

      if (v19 != 1)
      {
        break;
      }

      v20 = v18 & 0x3FFFFFFFFFFFFFFFLL;
      v21 = 40;
LABEL_12:
      if (!*(*(v20 + v21) + 16))
      {
        v22 = v19 ? (v18 & 0x3FFFFFFFFFFFFFFFLL) + 48 : v18 + 40;
        if (*(*v22 + 16))
        {
          v150 = v12;
          v23 = v9;
          goto LABEL_19;
        }
      }

      ++v11;
      v17 += 5;
      if (v13 + v11 == 1)
      {
        goto LABEL_26;
      }
    }

    v150 = v12;
    v23 = v9;
LABEL_19:
    v24 = *(v17 - 3);
    i = *(v17 - 4);
    v151 = v24;
    v26 = *(v17 - 1);
    v25 = *v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v199 = v14;
    v156 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
      v14 = v199;
    }

    v9 = v23;
    v29 = *(v14 + 16);
    v28 = *(v14 + 24);
    if (v29 >= v28 >> 1)
    {
      v149 = v23;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      v9 = v23;
      v14 = v199;
    }

    *(v14 + 16) = v29 + 1;
    v30 = (v14 + 40 * v29);
    v12 = v150;
    v31 = v151;
    v30[4] = i;
    v30[5] = v31;
    v32 = v156;
    v30[6] = v18;
    v30[7] = v32;
    v30[8] = v25;
    v8 = v219;
    v7 = &v199;
  }

  while (v13 + v11);
LABEL_26:

  v34 = a1[1];
  v199 = *a1;
  v200 = v34;
  v201 = a1[2];
  MEMORY[0x28223BE20](v33);
  v145 = &v199;
  v146 = v155;
  v35 = v157;
  v151 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(partial apply for specialized closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:), v144, v14);

  v36 = specialized Graph.nodes.getter(v8);
  v37 = *(v36 + 16);
  if (!v37)
  {
    v40 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

  v38 = 0;
  v39 = v36 + 64;
  v7 = -v37;
  v40 = MEMORY[0x277D84F90];
  while (2)
  {
    v41 = *(v36 + 16);
    if (v38 > v41)
    {
      v41 = v38;
    }

    v42 = -v41;
    v43 = (v39 + 40 * v38++);
    while (2)
    {
      if (v42 + v38 == 1)
      {
        goto LABEL_94;
      }

      v44 = *(v43 - 2);
      v45 = v44 >> 62;
      if (!(v44 >> 62))
      {
        v46 = *(v43 - 2);
        v47 = 40;
        goto LABEL_37;
      }

      if (v45 != 1)
      {
        goto LABEL_31;
      }

      v46 = v44 & 0x3FFFFFFFFFFFFFFFLL;
      v47 = 48;
LABEL_37:
      if (*(*(v46 + v47) + 16) || (v45 ? (v48 = (v44 & 0x3FFFFFFFFFFFFFFFLL) + 40) : (v48 = v44 + 32), !*(*v48 + 16)))
      {
LABEL_31:
        ++v38;
        v43 += 5;
        if (v7 + v38 == 1)
        {
          goto LABEL_49;
        }

        continue;
      }

      break;
    }

    v157 = v36;
    v49 = *(v43 - 4);
    v149 = *(v43 - 3);
    v150 = v49;
    v50 = *v43;
    i = *(v43 - 1);
    v156 = v50;

    v51 = swift_isUniquelyReferenced_nonNull_native();
    *&v199 = v40;
    if ((v51 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 16) + 1, 1);
      v40 = v199;
    }

    v53 = *(v40 + 16);
    v52 = *(v40 + 24);
    v54 = v53 + 1;
    v36 = v157;
    if (v53 >= v52 >> 1)
    {
      v148 = v53 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
      v54 = v148;
      v36 = v157;
      v40 = v199;
    }

    *(v40 + 16) = v54;
    v55 = (v40 + 40 * v53);
    v56 = v149;
    v55[4] = v150;
    v55[5] = v56;
    v57 = i;
    v55[6] = v44;
    v55[7] = v57;
    v55[8] = v156;
    v8 = v219;
    if (v7 + v38)
    {
      continue;
    }

    break;
  }

LABEL_49:

  v59 = a1[1];
  v199 = *a1;
  v200 = v59;
  v201 = a1[2];
  MEMORY[0x28223BE20](v58);
  v145 = &v199;
  v146 = v155;
  v150 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)specialized partial apply, v144, v40);

  v60 = specialized Graph.nodes.getter(v8);
  v61 = *(v60 + 16);
  if (v61)
  {
    v7 = 0;
    v62 = v60 + 64;
    v63 = -v61;
    v64 = MEMORY[0x277D84F90];
    while (2)
    {
      v65 = *(v60 + 16);
      if (v7 > v65)
      {
        v65 = v7;
      }

      v66 = -v65;
      v67 = (v62 + 40 * v7++);
LABEL_55:
      if (v66 + v7 == 1)
      {
        goto LABEL_95;
      }

      v68 = *(v67 - 2);
      v69 = v68 >> 62;
      if (v68 >> 62)
      {
        if (v69 == 1)
        {
          v70 = v68 & 0x3FFFFFFFFFFFFFFFLL;
          v71 = 40;
          goto LABEL_60;
        }
      }

      else
      {
        v70 = *(v67 - 2);
        v71 = 32;
LABEL_60:
        if (*(*(v70 + v71) + 16))
        {
          v72 = v69 ? (v68 & 0x3FFFFFFFFFFFFFFFLL) + 48 : v68 + 40;
          if (*(*v72 + 16))
          {
            v157 = v60;
            v73 = *(v67 - 4);
            v147 = *(v67 - 3);
            v148 = v73;
            v74 = *v67;
            v149 = *(v67 - 1);
            i = v74;

            v75 = swift_isUniquelyReferenced_nonNull_native();
            *&v199 = v64;
            v156 = v62;
            if ((v75 & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 16) + 1, 1);
              v64 = v199;
            }

            v77 = *(v64 + 16);
            v76 = *(v64 + 24);
            v60 = v157;
            if (v77 >= v76 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1);
              v60 = v157;
              v64 = v199;
            }

            *(v64 + 16) = v77 + 1;
            v78 = (v64 + 40 * v77);
            v79 = v147;
            v78[4] = v148;
            v78[5] = v79;
            v80 = v149;
            v78[6] = v68;
            v78[7] = v80;
            v78[8] = i;
            v8 = v219;
            v62 = v156;
            if (v63 + v7)
            {
              continue;
            }

            goto LABEL_72;
          }
        }
      }

      break;
    }

    ++v7;
    v67 += 5;
    if (v63 + v7 == 1)
    {
      goto LABEL_72;
    }

    goto LABEL_55;
  }

  v64 = MEMORY[0x277D84F90];
LABEL_72:

  v82 = a1[1];
  v199 = *a1;
  v200 = v82;
  v201 = a1[2];
  MEMORY[0x28223BE20](v81);
  v145 = &v199;
  v146 = v155;
  v148 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)specialized partial apply, v144, v64);
  v7 = v35;

  v84 = specialized Graph.sinkNodes()(v83);
  EdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n = _s11ShaderGraph0B0V22DepthFirstEdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n(v8, v84);
  v87 = v86;
  v89 = v88;

  v216 = EdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n;
  v217 = v87;
  v218 = v89;
  v219 = EdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n;

  v157 = v87;

  specialized Graph.DepthFirstEdgeIterator.next()(&v210);
  v90 = MEMORY[0x277D84F90];
  if (!*(&v211 + 1))
  {
LABEL_83:

    v104 = v90[2];
    v149 = v35;
    if (!v104)
    {

      v219 = MEMORY[0x277D84F90];
LABEL_92:
      *&v199 = 0;
      *(&v199 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(528);
      MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2FDC0);
      v128 = v152;
      v129 = v153;
      MEMORY[0x266771550](v152, v153);
      MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F2FDE0);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0x22202020200A0A22, 0xE800000000000000);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE10);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE50);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0x22203E2D2022315FLL, 0xE800000000000000);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0x22203E2D2022325FLL, 0xE800000000000000);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000029, 0x8000000265F2FE70);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000035, 0x8000000265F2FEA0);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0x2020200A3B22315FLL, 0xED00002020202020);
      *&v188 = v151;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v156 = lazy protocol witness table accessor for type [String] and conformance [A]();
      v157 = v130;
      v131 = BidirectionalCollection<>.joined(separator:)();
      v133 = v132;

      MEMORY[0x266771550](v131, v133);

      MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000034, 0x8000000265F2FF00);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0x2020200A3B22325FLL, 0xED00002020202020);
      *&v188 = v148;
      v134 = BidirectionalCollection<>.joined(separator:)();
      v136 = v135;

      MEMORY[0x266771550](v134, v136);

      MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
      MEMORY[0x266771550](v128, v129);
      MEMORY[0x266771550](0xD000000000000036, 0x8000000265F2FF40);
      MEMORY[0x266771550](v128, v129);

      MEMORY[0x266771550](0x2020200A3B22335FLL, 0xED00002020202020);
      *&v188 = v150;
      v137 = BidirectionalCollection<>.joined(separator:)();
      v139 = v138;

      MEMORY[0x266771550](v137, v139);

      MEMORY[0x266771550](0xA0A7D202020200ALL, 0xEC00000020202020);
      *&v188 = v219;
      v140 = BidirectionalCollection<>.joined(separator:)();
      v142 = v141;

      MEMORY[0x266771550](v140, v142);

      MEMORY[0x266771550](32010, 0xE200000000000000);
      return v199;
    }

    *&v169 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v104, 0);
    if (v104 <= v90[2])
    {
      v219 = v169;
      v157 = v104 - 1;
      v105 = 32;
      for (i = v90; ; v90 = i)
      {
        v156 = v105;
        v106 = v90 + v105;
        v107 = *v106;
        v108 = *(v106 + 2);
        v200 = *(v106 + 1);
        v201 = v108;
        v199 = v107;
        v109 = *(v106 + 3);
        v110 = *(v106 + 4);
        v111 = *(v106 + 6);
        v204 = *(v106 + 5);
        v205 = v111;
        v202 = v109;
        v203 = v110;
        v112 = *(v106 + 7);
        v113 = *(v106 + 8);
        v114 = *(v106 + 9);
        v209 = v106[160];
        v207 = v113;
        v208 = v114;
        v206 = v112;
        v115 = v114;
        v116 = *(&v113 + 1);
        v117 = v204;
        v118 = v203;
        v119 = *(&v202 + 1);
        v120 = v199;
        outlined init with copy of [Input](&v199, &v188, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtMR);
        v121 = specialized closure #1 in graphDotText<A>(representing:index:)(v120, v119, v118, *(&v118 + 1), v117, v116, v115, v155, *(&v155 + 1));
        v123 = v122;
        outlined destroy of [Input](&v199, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtMR);
        v124 = v219;
        *&v169 = v219;
        v126 = *(v219 + 2);
        v125 = *(v219 + 3);
        if (v126 >= v125 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1);
          v124 = v169;
        }

        *(v124 + 2) = v126 + 1;
        v219 = v124;
        v127 = &v124[16 * v126];
        *(v127 + 4) = v121;
        *(v127 + 5) = v123;
        if (!v157)
        {
          break;
        }

        --v157;
        v105 = v156 + 168;
      }

      goto LABEL_92;
    }

LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  while (1)
  {
    v184 = v212;
    v185 = v213;
    v186 = v214;
    v187 = v215;
    v182 = v210;
    v183 = v211;
    closure #1 in SGDataTypeGraph.edges.getter(&v182, a1, &v199);
    if (v35)
    {
      break;
    }

    v180[2] = v184;
    v180[3] = v185;
    v180[4] = v186;
    v181 = v187;
    v180[0] = v182;
    v180[1] = v183;
    outlined destroy of [Input](v180, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
    v196 = v207;
    v197 = v208;
    v198 = v209;
    v192 = v203;
    v193 = v204;
    v194 = v205;
    v195 = v206;
    v188 = v199;
    v189 = v200;
    v190 = v201;
    v191 = v202;
    if (_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgWOg(&v188) == 1)
    {
      v177 = v207;
      v178 = v208;
      v179 = v209;
      v173 = v203;
      v174 = v204;
      v175 = v205;
      v176 = v206;
      v169 = v199;
      v170 = v200;
      v171 = v201;
      v172 = v202;
      outlined destroy of [Input](&v169, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgMR);
    }

    else
    {
      v177 = v207;
      v178 = v208;
      v179 = v209;
      v173 = v203;
      v174 = v204;
      v175 = v205;
      v176 = v206;
      v169 = v199;
      v170 = v200;
      v171 = v201;
      v172 = v202;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90[2] + 1, 1, v90);
      }

      v91 = v90;
      v92 = v90[2];
      v93 = v91;
      v94 = v91[3];
      if (v92 >= v94 >> 1)
      {
        v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v92 + 1, 1, v93);
      }

      v162 = v173;
      v163 = v174;
      v160 = v171;
      v161 = v172;
      v168 = v179;
      v166 = v177;
      v167 = v178;
      v164 = v175;
      v165 = v176;
      v158 = v169;
      v159 = v170;
      v93[2] = v92 + 1;
      v95 = &v93[21 * v92];
      v90 = v93;
      v96 = v158;
      v97 = v160;
      *(v95 + 3) = v159;
      *(v95 + 4) = v97;
      *(v95 + 2) = v96;
      v98 = v161;
      v99 = v162;
      v100 = v164;
      *(v95 + 7) = v163;
      *(v95 + 8) = v100;
      *(v95 + 5) = v98;
      *(v95 + 6) = v99;
      v101 = v165;
      v102 = v166;
      v103 = v167;
      *(v95 + 192) = v168;
      *(v95 + 10) = v102;
      *(v95 + 11) = v103;
      *(v95 + 9) = v101;
    }

    specialized Graph.DepthFirstEdgeIterator.next()(&v210);
    if (!*(&v211 + 1))
    {
      goto LABEL_83;
    }
  }

LABEL_97:

  v190 = v184;
  v191 = v185;
  v192 = v186;
  LOBYTE(v193) = v187;
  v188 = v182;
  v189 = v183;
  outlined destroy of [Input](&v188, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v41 = a3;
  v5 = a2[1];
  v49[0] = *a2;
  v49[1] = v5;
  v49[2] = a2[2];
  v6 = a1[2];
  specialized SGDataTypeGraph.Personality.dotLabel.getter(v6);
  v7 = lazy protocol witness table accessor for type String and conformance String();
  v8 = MEMORY[0x277D837D0];
  v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v11 = v10;

  *&v42 = v9;
  *(&v42 + 1) = v11;
  v47 = 62;
  v48 = 0xE100000000000000;
  v45 = 15964;
  v46 = 0xE200000000000000;
  v35 = v7;
  v36 = v7;
  v34[0] = v8;
  v34[1] = v7;
  v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v40 = v12;

  *&v42 = *a1;
  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  v38 = v13;
  v14 = *(a1 + 1);
  v42 = *a1;
  v43 = v14;
  v44 = a1[4];
  MEMORY[0x28223BE20](v37);
  v35 = &v42;
  v16 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.inputs.getter, v34, 0, v15);
  MEMORY[0x28223BE20](v16);
  v35 = v49;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V5InputVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(partial apply for specialized closure #1 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:), v34, v16);
  v18 = v17;

  *&v42 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;

  v23 = *(a1 + 1);
  v42 = *a1;
  v43 = v23;
  v44 = a1[4];
  v24 = v19;
  v25 = v50;
  MEMORY[0x28223BE20](v22);
  v35 = &v42;
  v27 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.outputs.getter, v34, 0, v26);
  MEMORY[0x28223BE20](v27);
  v35 = v49;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V6OutputVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(partial apply for specialized closure #2 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:), v34, v27);
  v29 = v28;

  *&v42 = v29;
  v30 = BidirectionalCollection<>.joined(separator:)();
  v32 = v31;

  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  *&v42 = 34;
  *(&v42 + 1) = 0xE100000000000000;
  v47 = v37;
  v48 = v38;

  MEMORY[0x266771550](v41, v25);

  MEMORY[0x266771550](v47, v48);

  MEMORY[0x266771550](0x6C6562616C5B2022, 0xEC0000007B7B223DLL);
  MEMORY[0x266771550](v24, v21);

  MEMORY[0x266771550](2129021, 0xE300000000000000);
  MEMORY[0x266771550](v39, v40);

  MEMORY[0x266771550](2065726496, 0xE400000000000000);
  MEMORY[0x266771550](v30, v32);

  MEMORY[0x266771550](1562541437, 0xE400000000000000);
  return v42;
}

unint64_t lazy protocol witness table accessor for type SHA512Digest and conformance SHA512Digest()
{
  result = lazy protocol witness table cache variable for type SHA512Digest and conformance SHA512Digest;
  if (!lazy protocol witness table cache variable for type SHA512Digest and conformance SHA512Digest)
  {
    type metadata accessor for SHA512Digest();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SHA512Digest and conformance SHA512Digest);
  }

  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t type metadata accessor for SGREMaterialSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for SGREMaterialSource;
  if (!type metadata singleton initialization cache for SGREMaterialSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SGREMaterialSource(uint64_t a1)
{
  result = type metadata accessor for SHA512Digest();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return partial apply for specialized closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(a1, a2);
}

{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v8;
  v13 = *(a1 + 32);
  v9 = v6[1];
  v14[0] = *v6;
  v14[1] = v9;
  v14[2] = v6[2];
  result = specialized closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(v12, v14, v5, v7);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v11;
  }

  return result;
}

uint64_t specialized closure #1 in graphDotText<A>(representing:index:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = dispatch thunk of CustomStringConvertible.description.getter();
  v34 = v10;

  MEMORY[0x266771550](a8, a9);

  v11 = v32;
  v12 = v34;
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  v35 = v13;

  MEMORY[0x266771550](a8, a9);

  MEMORY[0x266771550](v11, v12);

  MEMORY[0x266771550](14882, 0xE200000000000000);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v16 = v15;

  MEMORY[0x266771550](v14, v16);

  MEMORY[0x266771550](0x5F74757074756FLL, 0xE700000000000000);

  MEMORY[0x266771550](25914, 0xE200000000000000);
  MEMORY[0x266771550](v33, v35);

  MEMORY[0x266771550](14882, 0xE200000000000000);
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v19 = v18;

  MEMORY[0x266771550](v17, v19);

  MEMORY[0x266771550](0x5F7475706E69, 0xE600000000000000);

  MEMORY[0x266771550](30522, 0xE200000000000000);
  v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = &v20[16 * v22];
  *(v23 + 4) = 0xD000000000000033;
  *(v23 + 5) = 0x8000000265F2FF80;
  v24 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v24);

  MEMORY[0x266771550](34, 0xE100000000000000);
  v26 = *(v20 + 2);
  v25 = *(v20 + 3);
  if (v26 >= v25 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v20);
  }

  *(v20 + 2) = v26 + 1;
  v27 = &v20[16 * v26];
  *(v27 + 4) = 0x6562616C6C696174;
  *(v27 + 5) = 0xEB00000000223D6CLL;
  MEMORY[0x266771550](540945696, 0xE400000000000000);
  MEMORY[0x266771550](34, 0xE100000000000000);

  MEMORY[0x266771550](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v28 = BidirectionalCollection<>.joined(separator:)();
  v30 = v29;

  MEMORY[0x266771550](v28, v30);

  MEMORY[0x266771550](93, 0xE100000000000000);

  MEMORY[0x266771550](23328, 0xE200000000000000);

  return 34;
}

uint64_t _s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgWOg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t partial apply for specialized closure #1 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(*(a1 + 16), *(a1 + 24), 0x5F7475706E69, 0xE600000000000000);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(*(a1 + 16), *(a1 + 24), 0x5F74757074756FLL, 0xE700000000000000);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v8 = v7;

  MEMORY[0x266771550](v6, v8);

  MEMORY[0x266771550](a3, a4);

  MEMORY[0x266771550](62, 0xE100000000000000);
  MEMORY[0x266771550](a1, a2);
  return 60;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
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

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t GeomPropDef.init(name:type:geomprop:space:index:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 41) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10 & 1;
  return result;
}

uint64_t GeomPropDef.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GeomPropDef.geomprop.getter()
{
  v1 = *(v0 + 24);
  outlined copy of GeomPropDef.GeomProp(v1, *(v0 + 32), *(v0 + 40));
  return v1;
}

uint64_t outlined copy of GeomPropDef.GeomProp(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t GeomPropDef.Space.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C65646F6DLL;
  }

  if (a1 == 1)
  {
    return 0x7463656A626FLL;
  }

  return 0x646C726F77;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GeomPropDef.Space(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7463656A626FLL;
  if (v2 != 1)
  {
    v4 = 0x646C726F77;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C65646F6DLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7463656A626FLL;
  if (*a2 != 1)
  {
    v8 = 0x646C726F77;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C65646F6DLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeomPropDef.Space()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GeomPropDef.Space(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeomPropDef.Space(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GeomPropDef.Space@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized GeomPropDef.Space.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GeomPropDef.Space(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7463656A626FLL;
  if (v2 != 1)
  {
    v5 = 0x646C726F77;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C65646F6DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t GeomPropDef.GeomProp.paramGetterNodeDefName(type:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return GeomPropDef.BuiltinGeomProp.paramGetterNodeDefName(type:)(a1, a2);
  }

  _StringGuts.grow(_:)(65);
  MEMORY[0x266771550](0xD00000000000002FLL, 0x8000000265F30000);
  MEMORY[0x266771550](a2, a3);
  MEMORY[0x266771550](0x7420687469772027, 0xED00002720657079);
  v6 = MaterialXDataType.description.getter();
  MEMORY[0x266771550](v6);

  MEMORY[0x266771550](39, 0xE100000000000000);
  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v7 = 31;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

unint64_t GeomPropDef.BuiltinGeomProp.paramGetterNodeDefName(type:)(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  if (a2 <= 2u)
  {
    v3 = 0xD000000000000011;
    if (a2 != 1)
    {
      v3 = 0xD000000000000012;
    }

    if (a2)
    {
      return v3;
    }

    return v2;
  }

  if (a2 == 3)
  {
    return 0xD000000000000014;
  }

  if (a2 == 4)
  {
    if (one-time initialization token for vector2 != -1)
    {
      swift_once();
    }

    if (MaterialXDataType.isEqual(to:)(a1))
    {
      return v2;
    }

    if (one-time initialization token for float2 != -1)
    {
      swift_once();
    }

    if (MaterialXDataType.isEqual(to:)(a1))
    {
      return v2;
    }

    if (one-time initialization token for vector3 != -1)
    {
      swift_once();
    }

    if (MaterialXDataType.isEqual(to:)(a1))
    {
      return v2;
    }

    if (one-time initialization token for float3 != -1)
    {
      swift_once();
    }

    if (MaterialXDataType.isEqual(to:)(a1))
    {
      return v2;
    }

    if (one-time initialization token for vector4 != -1)
    {
      swift_once();
    }

    if (MaterialXDataType.isEqual(to:)(a1))
    {
      return v2;
    }

    if (one-time initialization token for float4 != -1)
    {
      swift_once();
    }

    if (MaterialXDataType.isEqual(to:)(a1))
    {
      return v2;
    }

LABEL_40:
    _StringGuts.grow(_:)(40);
    MEMORY[0x266771550](0xD000000000000012, 0x8000000265F30030);
    v6 = MaterialXDataType.description.getter();
    MEMORY[0x266771550](v6);

    MEMORY[0x266771550](0xD000000000000011, 0x8000000265F30050);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x266771550](39, 0xE100000000000000);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    v2 = swift_allocError();
    *v7 = 31;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v2;
  }

  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(a1))
  {
    return 0xD000000000000012;
  }

  if (one-time initialization token for color3 != -1)
  {
    swift_once();
  }

  if ((MaterialXDataType.isEqual(to:)(a1) & 1) == 0)
  {
    if (one-time initialization token for color4 != -1)
    {
      swift_once();
    }

    if ((MaterialXDataType.isEqual(to:)(a1) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  return v2;
}

uint64_t GeomPropDef.BuiltinGeomProp.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E6F697469736F70;
  v2 = 0x6E65676E61746962;
  v3 = 0x64726F6F63786574;
  if (a1 != 4)
  {
    v3 = 0x6F6C6F636D6F6567;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6C616D726F6ELL;
  if (a1 != 1)
  {
    v4 = 0x746E65676E6174;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GeomPropDef.BuiltinGeomProp(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = *a2;
  v5 = 0x6E65676E61746962;
  v6 = 0xE900000000000074;
  v7 = 0xE800000000000000;
  v8 = 0x64726F6F63786574;
  if (v2 != 4)
  {
    v8 = 0x6F6C6F636D6F6567;
    v7 = 0xE900000000000072;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6C616D726F6ELL;
  if (v2 != 1)
  {
    v10 = 0x746E65676E6174;
    v9 = 0xE700000000000000;
  }

  if (*a1)
  {
    v3 = v9;
  }

  else
  {
    v10 = 0x6E6F697469736F70;
  }

  if (*a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (*a2 > 2u)
  {
    if (v4 == 3)
    {
      v13 = 0xE900000000000074;
      if (v11 != 0x6E65676E61746962)
      {
        goto LABEL_34;
      }
    }

    else if (v4 == 4)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x64726F6F63786574)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 0xE900000000000072;
      if (v11 != 0x6F6C6F636D6F6567)
      {
LABEL_34:
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (*a2)
  {
    if (v4 == 1)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x6C616D726F6ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x746E65676E6174)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x6E6F697469736F70)
    {
      goto LABEL_34;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GeomPropDef.BuiltinGeomProp@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized GeomPropDef.BuiltinGeomProp.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GeomPropDef.BuiltinGeomProp(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F697469736F70;
  v5 = 0xE900000000000074;
  v6 = 0x6E65676E61746962;
  v7 = 0xE800000000000000;
  v8 = 0x64726F6F63786574;
  if (v2 != 4)
  {
    v8 = 0x6F6C6F636D6F6567;
    v7 = 0xE900000000000072;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6C616D726F6ELL;
  if (v2 != 1)
  {
    v10 = 0x746E65676E6174;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeomPropDef.BuiltinGeomProp()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GeomPropDef.BuiltinGeomProp(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeomPropDef.BuiltinGeomProp(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t specialized GeomPropDef.BuiltinGeomProp.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GeomPropDef.BuiltinGeomProp.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized GeomPropDef.Space.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GeomPropDef.Space.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type GeomPropDef.Space and conformance GeomPropDef.Space()
{
  result = lazy protocol witness table cache variable for type GeomPropDef.Space and conformance GeomPropDef.Space;
  if (!lazy protocol witness table cache variable for type GeomPropDef.Space and conformance GeomPropDef.Space)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeomPropDef.Space and conformance GeomPropDef.Space);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeomPropDef.BuiltinGeomProp and conformance GeomPropDef.BuiltinGeomProp()
{
  result = lazy protocol witness table cache variable for type GeomPropDef.BuiltinGeomProp and conformance GeomPropDef.BuiltinGeomProp;
  if (!lazy protocol witness table cache variable for type GeomPropDef.BuiltinGeomProp and conformance GeomPropDef.BuiltinGeomProp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeomPropDef.BuiltinGeomProp and conformance GeomPropDef.BuiltinGeomProp);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [GeomPropDef.BuiltinGeomProp] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [GeomPropDef.BuiltinGeomProp] and conformance [A];
  if (!lazy protocol witness table cache variable for type [GeomPropDef.BuiltinGeomProp] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph11GeomPropDefV07BuiltincD0OGMd, &_sSay11ShaderGraph11GeomPropDefV07BuiltincD0OGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [GeomPropDef.BuiltinGeomProp] and conformance [A]);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GeomPropDef(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for GeomPropDef(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeomPropDef.BuiltinGeomProp(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GeomPropDef.BuiltinGeomProp(uint64_t result, unsigned int a2, unsigned int a3)
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

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = MEMORY[0x277D84F90];
  for (i = a1 + 32; ; i += 40)
  {
    v7 = *(i + 16);
    v21[0] = *i;
    v21[1] = v7;
    v8 = *(i + 32);
    v22 = v8;
    v14 = *(i + 16);
    v15 = v21[0];
    v23[0] = *(i + 24);
    v24 = v7;
    outlined init with copy of SGDataTypeGraph.PersonalityKind(&v24, v16);
    outlined init with copy of String(v23, v16);
    userGraphNode(in:from:)(a2, v21, v17);
    if (v2)
    {
      break;
    }

    v20 = v17[0];
    outlined init with copy of SGDataTypeGraph.PersonalityKind(&v24, v16);
    outlined init with copy of String(v23, v16);
    outlined destroy of NodePersonality(&v20);
    v19 = v17[1];
    outlined destroy of [Input](&v19, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v18 = v17[2];
    outlined destroy of [Input](&v18, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined destroy of SGDataTypeGraph.PersonalityKind(&v24);
    outlined destroy of String(v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
    }

    v10 = v5[2];
    v9 = v5[3];
    if (v10 >= v9 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v5);
    }

    v11 = v17[3];
    v5[2] = v10 + 1;
    v12 = &v5[6 * v10];
    *(v12 + 2) = v15;
    *(v12 + 3) = v14;
    v12[8] = v8;
    v12[9] = v11;
    if (!--v3)
    {
      return v5;
    }
  }

  outlined destroy of SGDataTypeGraph.PersonalityKind(&v24);
  outlined destroy of String(v23);

  return v5;
}