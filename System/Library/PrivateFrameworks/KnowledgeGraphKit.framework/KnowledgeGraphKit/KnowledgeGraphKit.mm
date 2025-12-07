void __swiftcall MAProgressReporter.split(splitPoints:_:_:)(Swift::tuple_MAProgressReporter_MAProgressReporter_MAProgressReporter_MAProgressReporter *__return_ptr retstr, Swift::Double splitPoints, Swift::Double _, Swift::Double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6460, &qword_25596FD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255970590;
  *(inited + 32) = splitPoints;
  *(inited + 40) = _;
  *(inited + 48) = a4;
  v8 = MAProgressReporter.split(splitPoints:)(inited);
  swift_setDeallocating();
  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x259C43770](0, v8);
    MEMORY[0x259C43770](1, v8);
    MEMORY[0x259C43770](2, v8);
    MEMORY[0x259C43770](3, v8);
    goto LABEL_7;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 < 3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 != 3)
  {
    v10 = *(v8 + 40);
    v11 = *(v8 + 48);
    v12 = *(v8 + 56);
    *(v8 + 32);
    v10;
    v11;
    v13 = v12;
LABEL_7:

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t MAProgressReporter.split(splitPoints:)(uint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_255871DB0(v3 + 1);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = 0.0;
    do
    {
      v6 = v5;
      v5 = *v4;
      v7 = [v1 childProgressReporterFromStart:v6 toEnd:*v4];
      MEMORY[0x259C43240]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2559654F0();
      }

      sub_255965560();
      ++v4;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = 0.0;
  }

  v8 = [v1 childProgressReporterFromStart:v5 toEnd:1.0];
  MEMORY[0x259C43240]();
  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2559654F0();
  }

  sub_255965560();
  return v10;
}

uint64_t sub_255871DB0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_255965B60();
LABEL_9:
    result = sub_2559659E0();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

Swift::Int sub_255871E54@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  result = SparseValues.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int sub_255871E80@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = SparseValues.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v6.value;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

uint64_t sub_255871EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_255871F6C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_255871FC4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25587201C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = type metadata accessor for SparseArray(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);
  return sub_255891CD4(a1, v5, v6);
}

__n128 sub_25587207C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_25587208C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v7[1] = *a1;
  v6 = v4;
  result = ElementIdentifierTupleSet.subscript.getter(&v6, v7);
  *a3 = v7[0];
  return result;
}

uint64_t sub_2558720DC(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v5 = *a3;
  v6 = v3;

  return ElementIdentifierTupleSet.subscript.setter(&v6, &v5);
}

uint64_t sub_255872164(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_255872180@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t sub_255872198@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_255899C90(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_2558721D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_255872244(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = type metadata accessor for Vector(0, *(a2 + a3 - 8), a3, a4);
  return Vector.subscript.getter(v4, v5);
}

void sub_255872300(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

void sub_25587233C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

uint64_t sub_255872364()
{
  v1 = sub_2559651D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_255872438()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255872480()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2558724BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_255872500@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_255872534()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255872574()
{
  v0 = sub_2558725AC();

  return v0;
}

uint64_t sub_2558725DC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255872650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_255872694()
{
  sub_255891CC4();
}

uint64_t sub_2558726BC()
{
  sub_255891CCC();
}

uint64_t SparseValues.startIndex.getter(uint64_t a1)
{
  (*(*(a1 + 24) + 32))(*(a1 + 16));

  return 0;
}

uint64_t SparseValues.isEmpty.getter(uint64_t a1)
{
  (*(*(a1 + 24) + 32))(*(a1 + 16), *(a1 + 24));
  swift_getAssociatedTypeWitness();
  sub_2559655E0();
  swift_getWitnessTable();
  v1 = sub_255965780();

  return v1 & 1;
}

uint64_t sub_25587283C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = (*(*(a1 + 24) + 32))(*(a1 + 16), *(a1 + 24));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = a2(v3, AssociatedTypeWitness);

  return v5;
}

Swift::Int __swiftcall SparseValues.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  (*(*(v2 + 24) + 32))(*(v2 + 16));

  result = _ + offsetBy;
  if (__OFADD__(_, offsetBy))
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall SparseValues.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  (*(*(v3 + 24) + 32))(*(v3 + 16));

  v9 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (offsetBy < 1)
  {
    if (v9 > 0 || v9 <= offsetBy)
    {
LABEL_9:
      v7 = _ + offsetBy;
      if (!__OFADD__(_, offsetBy))
      {
        v8 = 0;
        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v9 < 0 || v9 >= offsetBy)
  {
    goto LABEL_9;
  }

  v7 = 0;
  v8 = 1;
LABEL_13:
  result.value = v7;
  result.is_nil = v8;
  return result;
}

uint64_t SparseValues.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  result = (*(v4 + 40))(v5, v4);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a2)
  {
    v7 = *(result + 8 * a2 + 32);

    (*(v4 + 32))(v5, v4);
    swift_getAssociatedTypeWitness();
    sub_255965640();

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_255872AC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = SparseValues.startIndex.getter(a1);
  *a2 = 0;
  return result;
}

uint64_t sub_255872AEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SparseValues.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_255872B14(uint64_t *a1, unint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v8[5] = v11;
  if (v6)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v13 = v12;
  v8[6] = v12;
  v8[7] = sub_255872D04(v8, *a2, a3);
  *v13 = v14;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v13[*(TupleTypeMetadata2 + 48)], v15, AssociatedTypeWitness);
  return sub_255872C8C;
}

void sub_255872C8C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*sub_255872D04(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  *v8 = SparseValues.subscript.getter(v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_255872E1C;
}

void sub_255872E1C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_255872E6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_255872F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_255965AC0() + 36);
  SparseValues.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = 0;
  return result;
}

uint64_t sub_255872FF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_255873050(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_2558B5970(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t SparseArrayProtocol.reduce<A>(into:update:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = a1;
  v8[7] = a2;
  v8[8] = a3;
  return (*(a6 + 24))(sub_255873264, v8, a5, a4, a6);
}

void *sub_255873170@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, char *)@<X2>, uint64_t x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for SparseBuffer(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  return SparseBuffer.reduce<A>(into:update:)(a2, a3, v15, x8_0);
}

uint64_t SparseArrayProtocol.union<A>(with:combine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a1;
  v15[7] = a2;
  v15[8] = a3;
  v9 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for SparseArray(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  return v9(sub_25587348C, v15, v13, a4, a6);
}

uint64_t sub_255873370(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[1];
  v26[0] = *a1;
  v26[1] = v10;
  v11 = a1[3];
  v26[2] = a1[2];
  v26[3] = v11;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = v26;
  v24 = a3;
  v25 = a4;
  v12 = *(a8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for SparseArray(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  return v12(sub_255877178, v18, v16, a6, a8);
}

uint64_t sub_2558734B4@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *x8_0@<X8>)
{
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  v12 = a1[3];
  v20[2] = a1[2];
  v20[3] = v12;
  v13 = a2[1];
  v20[4] = *a2;
  v20[5] = v13;
  v14 = a2[3];
  v20[6] = a2[2];
  v20[7] = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for SparseBuffer(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  return SparseBuffer.union(with:combine:)(v20, a3, a4, v18, x8_0);
}

uint64_t SparseArrayProtocol.intersection<A, B>(with:combine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a8;
  v14[7] = a9;
  v14[8] = a1;
  v14[9] = a2;
  v14[10] = a3;
  v11 = *(a7 + 24);
  v12 = type metadata accessor for SparseArray(0, a6, a9, a4);
  return v11(sub_255873644, v14, v12, a4, a7);
}

uint64_t sub_255873644(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(v4 + 48);
  v7 = *(v4 + 56);
  v9 = a1[1];
  v20[0] = *a1;
  v20[1] = v9;
  v10 = a1[3];
  v20[2] = a1[2];
  v20[3] = v10;
  v14[2] = v5;
  v14[3] = v6;
  v15 = *(v4 + 32);
  v16 = v8;
  v17 = v7;
  v18 = v20;
  v19 = *(v4 + 72);
  v11 = *(v8 + 24);
  v12 = type metadata accessor for SparseArray(0, v15, v7, a4);
  return v11(sub_25587710C, v14, v12, v6, v8);
}

uint64_t sub_255873714@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X6>, void *x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v12 = a1[1];
  v26[0] = *a1;
  v26[1] = v12;
  v13 = a1[3];
  v26[2] = a1[2];
  v26[3] = v13;
  v14 = a2[1];
  v26[4] = *a2;
  v26[5] = v14;
  v15 = a2[3];
  v26[6] = a2[2];
  v26[7] = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for SparseBuffer(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  return SparseBuffer.intersection<A, B>(with:combine:)(v26, a3, a4, v19, v20, a7, v21, a10, x8_0);
}

uint64_t SparseArrayProtocol.mapSparseValues<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a1;
  v11[7] = a2;
  v8 = *(a5 + 24);
  v9 = type metadata accessor for SparseArray(0, a4, a6, a4);
  return v8(sub_2558739E4, v11, v9, a3, a5);
}

uint64_t sub_2558738FC@<X0>(void *x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for SparseBuffer(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  return sub_2558A65D0(v12, x8_0);
}

uint64_t SparseArrayProtocol<>.transposed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v91 = a4;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v123 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v121 = &v88 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v111 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v110 = &v88 - v11;
  v12 = swift_checkMetadataState();
  v122 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v102 = &v88 - v13;
  v15 = type metadata accessor for SparseValues(0, v12, a3, v14);
  v119 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v101 = &v88 - v16;
  swift_getWitnessTable();
  v114 = v15;
  v106 = sub_255965AC0();
  v116 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v120 = &v88 - v17;
  v104 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v104);
  v100 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v99 = &v88 - v20;
  v115 = a1;
  v21 = *(a1 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = a2;
  v27 = type metadata accessor for SparseValues(0, v25, a2, v26);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v88 - v29;
  swift_getWitnessTable();
  v31 = sub_255965AC0();
  v89 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v88 - v32;
  v113 = a3;
  v103 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v117 = AssociatedTypeWitness;
  v36 = type metadata accessor for SparseArray(255, AssociatedTypeWitness, AssociatedConformanceWitness, v35);
  v37 = MEMORY[0x277D84A28];
  swift_getTupleTypeMetadata2();
  v38 = sub_255965520();
  v125 = v36;
  v39 = sub_2558761AC(v38, v37, v36, MEMORY[0x277D84A38]);

  v40 = v115;
  (*(v21 + 16))(v24, v124, v115);
  (*(v21 + 32))(v30, v24, v40);
  (*(v28 + 16))(v33, v30, v27);
  v90 = v31;
  v41 = *(v31 + 36);
  (*(*(v27 + 24) + 32))(*(v27 + 16));

  v42 = v33;
  (*(v28 + 8))(v30, v27);
  v43 = v27;
  *&v33[v41] = 0;
  if (!SparseValues.endIndex.getter(v27))
  {
    v44 = 0;
    v45 = 0;
    goto LABEL_18;
  }

  v88 = v41;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v98 = *(v104 + 48);
  v97 = (v122 + 32);
  v96 = (v119 + 16);
  v95 = (v119 + 8);
  v108 = (v123 + 8);
  v109 = (v123 + 32);
  v92 = (v116 + 8);
  v47 = v114;
  v48 = v104;
  v94 = v27;
  v93 = v33;
  while (1)
  {
    v53 = *(v48 + 48);
    v54 = v100;
    v107 = v46;
    v119 = SparseValues.subscript.getter(&v100[v53], v46, v43);
    v55 = *v97;
    v56 = v99;
    v57 = v98;
    v58 = &v54[v53];
    v59 = v103;
    (*v97)(&v99[v98], v58, v103);
    v60 = &v56[v57];
    v61 = v102;
    v55(v102, v60, v59);
    v62 = v101;
    v63 = v61;
    v50 = v106;
    v55(v101, v63, v59);
    v64 = v120;
    (*v96)(v120, v62, v47);
    v65 = *(v50 + 36);
    (*(*(v47 + 24) + 32))(*(v47 + 16));

    (*v95)(v62, v47);
    *&v64[v65] = 0;
    if (SparseValues.endIndex.getter(v47))
    {
      break;
    }

    v49 = v120;
LABEL_4:
    v51 = v107 + 1;
    (*v92)(v49, v50);
    v43 = v94;
    v42 = v93;
    v52 = SparseValues.endIndex.getter(v94);
    v46 = v51;
    v48 = v104;
    if (v51 == v52)
    {
      *&v42[v88] = v51;
LABEL_18:
      (*(v89 + 8))(v42, v90);
      v85 = v125;
      WitnessTable = swift_getWitnessTable();
      SparseArray.init(_:)(v39, v85, WitnessTable, v91);
      return sub_2558764A4(v44, v45);
    }
  }

  v105 = v65;
  v66 = 0;
  v67 = v117;
  v116 = *(TupleTypeMetadata2 + 48);
  v68 = v121;
  while (1)
  {
    v122 = v66;
    v123 = v45;
    v70 = *(TupleTypeMetadata2 + 48);
    v71 = v111;
    v124 = SparseValues.subscript.getter(&v111[v70], v66, v47);
    v72 = v110;
    v73 = *v109;
    v74 = v116;
    (*v109)(&v110[v116], &v71[v70], v67);
    v73(v68, &v72[v74], v67);
    v75 = swift_allocObject();
    v77 = v112;
    v76 = v113;
    v75[2] = v115;
    v75[3] = v77;
    v75[4] = v76;
    sub_2558764A4(v44, v123);
    swift_isUniquelyReferenced_nonNull_native();
    *&v127 = v39;
    v78 = v124;
    sub_255875BB8(v124);
    if (__OFADD__(*(v39 + 16), (v79 & 1) == 0))
    {
      break;
    }

    v80 = v79;
    sub_255965AF0();
    v81 = sub_255965AD0();
    v39 = v127;
    if (v81)
    {
      sub_255875BB8(v78);
      v67 = v117;
      v83 = v122;
      if ((v80 & 1) != (v82 & 1))
      {
        goto LABEL_20;
      }

      v68 = v121;
      v84 = v125;
      if ((v80 & 1) == 0)
      {
LABEL_14:
        sub_2558745B4(&v127);
        v126 = v78;
        sub_255965AE0();
        v68 = v121;
      }
    }

    else
    {
      v67 = v117;
      v68 = v121;
      v83 = v122;
      v84 = v125;
      if ((v80 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v66 = v83 + 1;
    SparseArray.append(offset:value:)(v119, v68, v84);
    (*v108)(v68, v67);
    v47 = v114;
    v69 = v120;
    v44 = sub_255876498;
    v45 = v75;
    if (v66 == SparseValues.endIndex.getter(v114))
    {
      *&v69[v105] = v66;
      v44 = sub_255876498;
      v45 = v75;
      v49 = v69;
      v50 = v106;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_20:
  result = sub_255965CA0();
  __break(1u);
  return result;
}

double sub_2558745B4@<D0>(_OWORD *x8_0@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_255965520();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return SparseArray.init(arrayLiteral:)(v6, AssociatedTypeWitness, AssociatedConformanceWitness, x8_0);
}

uint64_t sub_2558746A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return SparseArrayProtocol.union<A>(with:combine:)(a2, a8, &v11, v12, v13, v14, v15);
}

uint64_t SparseArrayProtocol<>.sum()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v13[-v8];
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = a1;
  v20 = AssociatedTypeWitness;
  v21 = a2;
  v22 = AssociatedConformanceWitness;
  v23 = v9;
  v24 = sub_2558764CC;
  v25 = v13;
  (*(a2 + 24))(sub_255873264, v18, AssociatedTypeWitness, a1, a2);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t SparseArrayProtocol<>.sum(along:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a1 == 1)
    {
      SparseArrayProtocol<>.transposed()(a2, a3, a4, &v25);
      v24 = v25;
      swift_getAssociatedTypeWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v17 = type metadata accessor for SparseArray(255, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
      WitnessTable = swift_getWitnessTable();
      v20 = type metadata accessor for SparseArray(0, v17, WitnessTable, v19);
      v21 = swift_getWitnessTable();
      v22 = swift_getWitnessTable();
      SparseArrayProtocol<>.sum(along:)(0, v20, v21, v22, a5);
    }

    else
    {
      type metadata accessor for MatrixAxis(0);
      result = sub_255965C30();
      __break(1u);
    }
  }

  else
  {
    MEMORY[0x28223BE20](0);
    v23[2] = a2;
    v23[3] = a3;
    v23[4] = a4;
    v23[5] = v8;
    swift_getAssociatedTypeWitness();
    v26 = a2;
    v27 = swift_getAssociatedTypeWitness();
    v28 = a3;
    v29 = swift_getAssociatedConformanceWitness();
    v30 = sub_255876540;
    v31 = v23;
    v9 = *(a3 + 24);
    v11 = type metadata accessor for SparseArray(0, v27, v29, v10);
    return v9(sub_2558739E4, &v25, v11, a2, a3);
  }

  return result;
}

uint64_t * infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return SparseArrayProtocol.intersection<A, B>(with:combine:)(a2, sub_2558771D0, v10, v11, v12, AssociatedTypeWitness, v13, v14, AssociatedConformanceWitness);
}

void * infix<A>(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v21[1] = a1;
  v22 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v21 - v12;
  v21[0] = a5;
  v14 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v14);
  v15 = a2;
  swift_getAssociatedConformanceWitness();
  sub_255965C40();
  sub_255965BF0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a5) = sub_255965390();
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  if (a5)
  {
    v17 = sub_255965520();
    SparseArray.init(arrayLiteral:)(v17, AssociatedTypeWitness, AssociatedConformanceWitness, v22);
  }

  else
  {
    v18 = (*(a4 + 32))(a3, a4);
    Vector.init(elements:)(&v23, v18);
    static Vector<A>.*= infix(_:_:)(&v23, v15, AssociatedTypeWitness, v21[0]);
    v19 = v23;
    v20 = (*(a4 + 40))(a3, a4);
    SparseArray.init(values:offsets:)(v19, v20, v22);
  }
}

double *= infix<A>(_:_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for SparseArray(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  WitnessTable = swift_getWitnessTable();
  * infix<A, B>(_:_:)(&v16, a2, v13, a3, WitnessTable, a4, a5);

  result = *&v17;
  *a1 = v17;
  return result;
}

uint64_t SparseArrayProtocol<>.scalingRows(with:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for SparseArray(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  return SparseArrayProtocol.intersection<A, B>(with:combine:)(&v19, sub_2558765B0, v14, a2, v10, v10, a3, WitnessTable, v12);
}

uint64_t SparseArrayProtocol<>.scalingColumns(with:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  SparseArrayProtocol<>.transposed()(a2, a3, a4, v20);
  v19[0] = *a1;
  v19[1] = v20[0];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for SparseArray(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for SparseArray(0, v12, WitnessTable, v14);
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  SparseArrayProtocol<>.scalingRows(with:)(v19, v15, v16, v17, a5);

  v20[0] = v20[1];
  SparseArrayProtocol<>.transposed()(v15, v16, v17, a6);
}

uint64_t SparseArrayProtocol.mapIntersection<A, B>(with:initialValue:update:combine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12[2] = a7;
  v12[3] = a8;
  v12[4] = a9;
  v12[5] = a10;
  v12[6] = a11;
  v12[7] = a1;
  v12[8] = a2;
  v12[9] = a3;
  v12[10] = a4;
  v12[11] = a5;
  v12[12] = a6;
  return (*(a10 + 24))(sub_255876630, v12, a9, a7, a10);
}

void *sub_255875370@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, void (*a4)(uint64_t, char *)@<X3>, uint64_t a5@<X4>, void (*a6)(char *, char *)@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a1[1];
  v26[0] = *a1;
  v26[1] = v15;
  v16 = a1[3];
  v26[2] = a1[2];
  v26[3] = v16;
  v17 = a2[1];
  v26[4] = *a2;
  v26[5] = v17;
  v18 = a2[3];
  v26[6] = a2[2];
  v26[7] = v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = type metadata accessor for SparseBuffer(0, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  return SparseBuffer.mapIntersection<A>(with:initialValue:update:combine:)(v26, a4, a5, a6, a7, v22, x8_0);
}

uint64_t SparseArrayProtocol.dotProduct<A>(with:add:multiply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a8;
  v14[5] = a9;
  v14[6] = a1;
  v14[7] = a2;
  v14[8] = a3;
  v14[9] = a4;
  v14[10] = a5;
  v11 = *(a8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v11(sub_2558766C4, v14, AssociatedTypeWitness, a6, a8);
}

uint64_t sub_255875528(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  v12 = a1[3];
  v17[2] = a1[2];
  v17[3] = v12;
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a10;
  v16[6] = v17;
  v16[7] = a3;
  v16[8] = a4;
  v16[9] = a5;
  v16[10] = a6;
  v13 = *(a10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v13(sub_255877094, v16, AssociatedTypeWitness, a8, a10);
}

uint64_t sub_2558755FC@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t, char *)@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *)@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>, uint64_t a9)
{
  v15 = a1[1];
  v24[0] = *a1;
  v24[1] = v15;
  v16 = a1[3];
  v24[2] = a1[2];
  v24[3] = v16;
  v17 = a2[1];
  v24[4] = *a2;
  v24[5] = v17;
  v18 = a2[3];
  v24[6] = a2[2];
  v24[7] = v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = type metadata accessor for SparseBuffer(0, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  return SparseBuffer.dotProduct(with:add:multiply:)(v24, a3, a4, a5, a6, v22, x8_0);
}

uint64_t SparseArrayProtocol<>.dotProduct<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  v13 = v20;
  v14 = AssociatedTypeWitness;
  return SparseArrayProtocol.dotProduct<A>(with:add:multiply:)(a1, sub_2558766FC, v15, sub_255876788, v8, v16, v17, v18, v19);
}

uint64_t SparseArrayProtocol.sparseKroneckerMap<A, B>(with:combine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = a8;
  v17[7] = a9;
  v17[8] = a1;
  v17[9] = a2;
  v17[10] = a3;
  v11 = *(a7 + 24);
  v12 = type metadata accessor for SparseArray(255, a6, a9, a4);
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for SparseArray(0, v12, WitnessTable, v14);
  return v11(sub_255876800, v17, v15, a4, a7);
}

uint64_t sub_2558758B8(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  v12 = a1[3];
  v20[2] = a1[2];
  v20[3] = v12;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  v19[6] = a9;
  v19[7] = a10;
  v19[8] = v20;
  v19[9] = a3;
  v19[10] = a4;
  v13 = *(a9 + 24);
  v14 = type metadata accessor for SparseArray(255, a7, a10, a4);
  WitnessTable = swift_getWitnessTable();
  v17 = type metadata accessor for SparseArray(0, v14, WitnessTable, v16);
  return v13(sub_255877068, v19, v17, a6, a9);
}

uint64_t sub_2558759B0@<X0>(uint64_t a7@<X6>, void *x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for SparseBuffer(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return SparseBuffer.sparseKroneckerMap<A, B>(with:combine:)(v15, a7, a10, x8_0);
}

unint64_t *sub_255875AF8(unint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *a2 - *result;
  if (*a2 >= *result)
  {
    if ((*a2 - *result) >= 0)
    {
      return (v4 == 0);
    }
  }

  else
  {
    if ((v2 - v3) >= 0)
    {
      v4 = v3 - v2;
      return (v4 == 0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_255875B30@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_255875B4C(uint64_t a1)
{
  sub_255965D50();
  MEMORY[0x259C43B00](a1);
  v2 = sub_255965D90();

  return sub_255875D54(a1, v2);
}

unint64_t sub_255875BB8(uint64_t a1)
{
  v2 = sub_255965D40();

  return sub_255875D54(a1, v2);
}

unint64_t sub_255875BFC(uint64_t a1)
{
  sub_2559651D0();
  sub_255877024(&qword_27F7D60C0, MEMORY[0x277CC9270]);
  v2 = sub_255965310();

  return sub_255875DC0(a1, v2);
}

unint64_t sub_255875C80(uint64_t a1, uint64_t a2)
{
  sub_255965D50();
  sub_255965400();
  v4 = sub_255965D90();

  return sub_255875F6C(a1, a2, v4);
}

unint64_t sub_255875CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255965310();

  return sub_255876024(a1, v6, a2, a3);
}

unint64_t sub_255875D54(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_255875DC0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2559651D0();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_255877024(&qword_27F7D60C8, MEMORY[0x277CC9278]);
      v16 = sub_255965390();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_255875F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_255965C10())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_255876024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_255965390();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_2558761AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_255965570())
  {
    sub_255965BA0();
    v13 = sub_255965B90();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_255965570();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_255965550())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2559659C0();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_255875CF8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_2558764A4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_255876540()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return SparseArrayProtocol<>.sum()(AssociatedTypeWitness, v2, v1);
}

void sub_2558765B0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *(v3 + 32);
  v7 = *(v3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  * infix<A>(_:_:)(a1, a2, AssociatedTypeWitness, v8, v7, a3);
}

uint64_t sub_255876630(_OWORD *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 48);
  v5 = *(v1 + 96);
  v6 = a1[1];
  v17[0] = *a1;
  v17[1] = v6;
  v7 = a1[3];
  v17[2] = a1[2];
  v17[3] = v7;
  v10[2] = v3;
  v10[3] = v2;
  v11 = *(v1 + 32);
  v12 = v4;
  v13 = v17;
  v8 = *(v1 + 80);
  v14 = *(v1 + 64);
  v15 = v8;
  v16 = v5;
  return (*(v4 + 24))(sub_2558770CC, v10, v11);
}

uint64_t sub_255876714(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  v7 = *(v3 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return a3(a1, a2, AssociatedTypeWitness, *(v7 + 8));
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

unint64_t sub_2558768D0()
{
  result = qword_27F7D6018;
  if (!qword_27F7D6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6018);
  }

  return result;
}

uint64_t sub_255876A98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D6010, &qword_25596E000);
    sub_2558768D0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255876BA0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255876C10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_255876D50(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SeededRandomNumberGenerator(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SeededRandomNumberGenerator(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_255876FD8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_255877024(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2559651D0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyNode(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AnyNode(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

KnowledgeGraphKit::DirectedBinaryAdjacency __swiftcall DirectedBinaryAdjacency.init()()
{
  v1 = v0;
  result.adjacency.targetsBySource._rawValue = sub_255879DA8(MEMORY[0x277D84F90]);
  v1->adjacency.targetsBySource._rawValue = result.adjacency.targetsBySource._rawValue;
  return result;
}

void DirectedBinaryAdjacency.sources.getter(uint64_t *a1@<X8>)
{

  sub_255879018(v2, a1);
}

uint64_t DirectedBinaryAdjacency.targets.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *a1 = v5;
  v7 = v3;
  return sub_2558773D4(&v7, a1);
}

uint64_t sub_2558773D4(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_10:
    v12 = *(*(v3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v14 + 16);
      [v15 mutableCopy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_25587AF08();
      swift_dynamicCast();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
      v14 = swift_allocObject();
      *(v14 + 16) = v16;

      *a2 = v14;
    }

    v7 &= v7 - 1;
    [*(v14 + 16) unionWithIdentifierSet_];
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t DirectedBinaryAdjacency.enumerateTargetsBySource(with:)(void (*a1)(uint64_t *, uint64_t *, char *))
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v15 = 0;
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_10:
    v10 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
    v11 = *(*(v3 + 48) + v10);
    v6 &= v6 - 1;
    v13 = *(*(v3 + 56) + v10);
    v14 = v11;

    a1(&v14, &v13, &v15);

    if (v15 == 1)
    {
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    if (v9 >= v7)
    {
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }
}

uint64_t sub_2558776CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v2 = *a1;
  v3 = sub_255879DA8(MEMORY[0x277D84F90]);
  v4 = *(v2 + 16);

  v5 = [v4 startIndex];
  v7 = v6;
  if (v5 == [*(v2 + 16) endIndex])
  {
LABEL_2:

    *v37 = v3;
  }

  else
  {
    v9 = v5;
    while (1)
    {
      v9 = [*(v2 + 16) indexAfterIndex_];
      v7 = v10;
      if (v3[2])
      {
        v11 = sub_255875B4C(v5);
        if (v12)
        {
          [*(*(v3[7] + 8 * v11) + 16) containsIdentifier_];
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_255875B4C(v5);
      v16 = v3[2];
      v17 = (v14 & 1) == 0;
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        break;
      }

      v19 = v14;
      if (v3[3] >= v18)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2558966B4();
        }
      }

      else
      {
        sub_255895430(v18, isUniquelyReferenced_nonNull_native);
        v20 = sub_255875B4C(v5);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_30;
        }

        v15 = v20;
      }

      if ((v19 & 1) == 0)
      {
        v22 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        v3[(v15 >> 6) + 8] |= 1 << v15;
        *(v3[6] + 8 * v15) = v5;
        *(v3[7] + 8 * v15) = v23;
        v24 = v3[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_29;
        }

        v3[2] = v26;
      }

      v27 = v3[7];
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(v27 + 8 * v15);
      if ((v28 & 1) == 0)
      {
        v30 = *(v29 + 16);
        [v30 mutableCopy];
        sub_2559658F0();
        swift_unknownObjectRelease();

        sub_25587AF08();
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v29 = swift_allocObject();
        *(v29 + 16) = v38;

        *(v27 + 8 * v15) = v29;
      }

      v31 = *(v29 + 16);
      [v31 containsIdentifier_];
      [v31 addIdentifier_];

      if (!v3[2])
      {
        goto LABEL_27;
      }

      v32 = sub_255875B4C(v5);
      if ((v33 & 1) == 0)
      {
        goto LABEL_28;
      }

      if ([*(*(v3[7] + 8 * v32) + 16) isEmpty])
      {
        v34 = sub_255875B4C(v5);
        if (v35)
        {
          v36 = v34;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_2558966B4();
          }

          sub_255879214(v36, v3);
        }
      }

      v5 = v9;
      if (v9 == [*(v2 + 16) endIndex])
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_255965CA0();
    __break(1u);
  }

  return result;
}

uint64_t DirectedBinaryAdjacency.setTargets(_:for:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;

  return ElementIdentifierTupleSet.subscript.setter(&v5, &v4);
}

uint64_t DirectedBinaryAdjacency.intersectingSources(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = sub_255879DA8(MEMORY[0x277D84F90]);
  v40 = v6;
  if ([*(v4 + 16) count] >= v5[2])
  {
    v39 = v5;

    sub_25587A388(&v39, v4, &v40);

    v6 = v40;
LABEL_34:
    *a2 = v6;
    return result;
  }

  v7 = *(v4 + 16);

  v8 = [v7 startIndex];
  v10 = v9;
  while (1)
  {
LABEL_3:
    if (v8 == [*(v4 + 16) endIndex])
    {
LABEL_33:

      goto LABEL_34;
    }

    v11 = v8;
LABEL_6:
    v8 = [*(v4 + 16) indexAfterIndex_];
    v10 = v12;
    if (v5[2] && (v13 = sub_255875B4C(v11), (v14 & 1) != 0))
    {
      v15 = *(v5[7] + 8 * v13);
      v16 = *(v15 + 16);
    }

    else
    {
      v16 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
      v15 = swift_allocObject();
      *(v15 + 16) = v16;
    }

    v17 = [v16 isEmpty];
    v18 = v17;
    if (!v6[2])
    {
      break;
    }

    sub_255875B4C(v11);
    if ((v18 & 1) == 0)
    {
      goto LABEL_17;
    }

    v20 = v19;

    if ((v20 & 1) == 0 || (v21 = sub_255875B4C(v11), (v22 & 1) == 0))
    {
LABEL_5:

      v11 = v8;
      if (v8 == [*(v4 + 16) endIndex])
      {
        goto LABEL_33;
      }

      goto LABEL_6;
    }

    v35 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2558966B4();
      v6 = v39;
    }

    sub_255879214(v35, v6);
  }

  if (v17)
  {

    goto LABEL_5;
  }

LABEL_17:
  v38 = a2;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v6;
  v25 = sub_255875B4C(v11);
  v26 = v6[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v6[3] >= v28)
  {
    if ((v23 & 1) == 0)
    {
      v29 = v24;
      sub_2558966B4();
LABEL_21:
      v24 = v29;
    }

    v6 = v39;
    if (v24)
    {
      *(v39[7] + 8 * v25) = v15;

LABEL_27:
      a2 = v38;

      goto LABEL_3;
    }

    v39[(v25 >> 6) + 8] |= 1 << v25;
    *(v6[6] + 8 * v25) = v11;
    *(v6[7] + 8 * v25) = v15;

    v32 = v6[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (!v33)
    {
      v6[2] = v34;
      goto LABEL_27;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v29 = v24;
  sub_255895430(v28, v23);
  v30 = sub_255875B4C(v11);
  if ((v29 & 1) == (v31 & 1))
  {
    v25 = v30;
    goto LABEL_21;
  }

LABEL_37:
  result = sub_255965CA0();
  __break(1u);
  return result;
}

uint64_t DirectedBinaryAdjacency.targets(forSourceIdentifier:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = sub_255875B4C(*a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v8 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    result = swift_allocObject();
    *(result + 16) = v8;
    *a2 = result;
  }

  return result;
}

uint64_t sub_255877F00@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *, void *, uint64_t)@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  *a3 = sub_255879DA8(MEMORY[0x277D84F90]);
  v9 = v7;

  a2(&v9, a3, v6);
}

uint64_t DirectedBinaryAdjacency.subtractingSources(with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  *a2 = sub_255879DA8(MEMORY[0x277D84F90]);
  v7 = v5;

  sub_25587AA1C(&v7, v4, a2);
}

KnowledgeGraphKit::DirectedBinaryAdjacency __swiftcall DirectedBinaryAdjacency.joinOnTargets(_:)(KnowledgeGraphKit::DirectedBinaryAdjacency a1)
{
  v3 = v1;
  v4 = *v2;
  v6 = *a1.adjacency.targetsBySource._rawValue;
  v7 = v4;

  static ElementIdentifierTupleSet.joinOnTargets(_:_:)(&v7, &v6, &v8);

  *v3 = v8;
  return result;
}

Swift::Bool __swiftcall DirectedBinaryAdjacency.contains(source:target:)(KnowledgeGraphKit::ElementIdentifier source, KnowledgeGraphKit::ElementIdentifier target)
{
  v3 = *v2;
  if (*(v3 + 16) && (v4 = *target.rawValue, v5 = sub_255875B4C(*source.rawValue), (v6 & 1) != 0))
  {
    return [*(*(*(v3 + 56) + 8 * v5) + 16) containsIdentifier_];
  }

  else
  {
    return 0;
  }
}

void *DirectedBinaryAdjacency.targets(forSources:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if ([*(*a1 + 16) count] == 1)
  {
    v6 = [*(v4 + 16) startIndex];
    result = [*(v4 + 16) endIndex];
    if (v6 == result)
    {
      __break(1u);
    }

    else if (*(v5 + 16) && (v8 = sub_255875B4C(v6), (v9 & 1) != 0))
    {
      *a2 = *(*(v5 + 56) + 8 * v8);
    }

    else
    {
      v16 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
      result = swift_allocObject();
      result[2] = v16;
      *a2 = result;
    }
  }

  else
  {
    v10 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v26 = v11;
    if ([*(v4 + 16) count] >= *(v5 + 16))
    {
      v25[0] = v5;

      sub_25587AD30(v25, v4, &v26);

      v11 = v26;
    }

    else
    {
      v23 = a2;
      v12 = *(v4 + 16);

      v13 = [v12 startIndex];
      v15 = v14;
      if (v13 != [*(v4 + 16) endIndex])
      {
        v17 = v13;
        do
        {
          v17 = [*(v4 + 16) indexAfterIndex_];
          v15 = v19;
          if (*(v5 + 16))
          {
            v20 = sub_255875B4C(v13);
            if (v21)
            {
              v22 = *(*(v5 + 56) + 8 * v20);

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v11 = v26;
              }

              else
              {
                v18 = *(v11 + 16);
                [v18 mutableCopy];
                sub_2559658F0();
                swift_unknownObjectRelease();

                sub_25587AF08();
                swift_dynamicCast();
                v11 = swift_allocObject();
                *(v11 + 16) = v24;

                v26 = v11;
              }

              [*(v11 + 16) unionWithIdentifierSet_];
            }
          }

          v13 = v17;
        }

        while (v17 != [*(v4 + 16) endIndex]);
      }

      a2 = v23;
    }

    *a2 = v11;
  }

  return result;
}

KnowledgeGraphKit::DirectedBinaryAdjacency __swiftcall DirectedBinaryAdjacency.transposed()()
{
  v49 = v0;
  v2 = *v1;
  v3 = sub_255879DA8(MEMORY[0x277D84F90]);
  v4 = v2 + 64;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  v52 = v2;

  v9 = 0;
  v10 = v3;
  v50 = v8;
  v51 = v2 + 64;
  while (v7)
  {
LABEL_11:
    v13 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
    v53 = v7;
    v54 = *(*(v52 + 48) + v13);
    v14 = *(*(v52 + 56) + v13);
    v15 = *(v14 + 16);
    swift_retain_n();
    v16 = [v15 startIndex];
    v18 = v17;
    if (v16 != [*(v14 + 16) endIndex])
    {
      v11 = v10;
      v19 = v16;
      while (1)
      {
        v20 = v14;
        v19 = [*(v14 + 16) indexAfterIndex_];
        v18 = v21;
        if (*(v11 + 16))
        {
          v22 = sub_255875B4C(v16);
          if (v23)
          {
            [*(*(*(v11 + 56) + 8 * v22) + 16) containsIdentifier_];
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v3;
        v26 = sub_255875B4C(v16);
        v27 = v3[2];
        v28 = (v25 & 1) == 0;
        v29 = v27 + v28;
        if (__OFADD__(v27, v28))
        {
          break;
        }

        v30 = v25;
        if (v3[3] >= v29)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2558966B4();
          }
        }

        else
        {
          sub_255895430(v29, isUniquelyReferenced_nonNull_native);
          v31 = sub_255875B4C(v16);
          if ((v30 & 1) != (v32 & 1))
          {
            goto LABEL_41;
          }

          v26 = v31;
        }

        v11 = v3;

        if ((v30 & 1) == 0)
        {
          v33 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
          v34 = swift_allocObject();
          *(v34 + 16) = v33;
          v56[(v26 >> 6) + 8] |= 1 << v26;
          *(v56[6] + 8 * v26) = v16;
          *(v56[7] + 8 * v26) = v34;
          v35 = v56[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_39;
          }

          v56[2] = v37;
        }

        v38 = v56[7];
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v40 = *(v38 + 8 * v26);
        if ((v39 & 1) == 0)
        {
          v41 = *(v40 + 16);
          [v41 mutableCopy];
          sub_2559658F0();
          swift_unknownObjectRelease();

          sub_25587AF08();
          swift_dynamicCast();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
          v40 = swift_allocObject();
          *(v40 + 16) = v55;

          *(v38 + 8 * v26) = v40;
        }

        v14 = v20;
        v42 = *(v40 + 16);
        [v42 containsIdentifier_];
        [v42 addIdentifier_];

        if (!v56[2])
        {
          goto LABEL_37;
        }

        v43 = sub_255875B4C(v16);
        if ((v44 & 1) == 0)
        {
          goto LABEL_38;
        }

        if ([*(*(v56[7] + 8 * v43) + 16) isEmpty])
        {
          v45 = sub_255875B4C(v16);
          if (v46)
          {
            v47 = v45;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_2558966B4();
            }

            sub_255879214(v47, v11);
          }
        }

        v16 = v19;
        v3 = v11;
        v10 = v11;
        if (v19 == [*(v20 + 16) endIndex])
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v11 = v3;
LABEL_5:
    v7 = (v53 - 1) & v53;

    v3 = v11;
    v8 = v50;
    v4 = v51;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      *v49 = v3;
      return result;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  result.adjacency.targetsBySource._rawValue = sub_255965CA0();
  __break(1u);
  return result;
}

KnowledgeGraphKit::DirectedBinaryAdjacency __swiftcall DirectedBinaryAdjacency.subtracting(_:)(KnowledgeGraphKit::DirectedBinaryAdjacency a1)
{
  v3 = v1;
  v4 = *a1.adjacency.targetsBySource._rawValue;
  v5 = *v2;
  v7 = v4;
  v8 = v5;

  ElementIdentifierTupleSet.subtract(_:)(&v7);
  *v3 = v8;
  return result;
}

KnowledgeGraphKit::DirectedBinaryAdjacency __swiftcall DirectedBinaryAdjacency.union(with:)(KnowledgeGraphKit::DirectedBinaryAdjacency with)
{
  v3 = v1;
  v4 = *v2;
  v6 = *with.adjacency.targetsBySource._rawValue;
  v7 = v4;

  result.adjacency.targetsBySource._rawValue = ElementIdentifierTupleSet.formUnion(_:)(&v6);
  *v3 = v7;
  return result;
}

uint64_t DirectedBinaryAdjacency.targets(minCount:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *v2;
  v4 = *v2 + 64;
  v5 = 1 << *(*v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v71 = v3;
  v72 = v8;
  while (2)
  {
    if (v7)
    {
      goto LABEL_11;
    }

    do
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_54;
      }

      if (v12 >= v8)
      {
        v73 = v9;

        v53 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v54 = swift_allocObject();
        v55 = 0;
        *(v54 + 16) = v53;
        v56 = 1 << *(v11 + 32);
        v57 = -1;
        if (v56 < 64)
        {
          v57 = ~(-1 << v56);
        }

        v58 = v57 & *(v11 + 64);
        v59 = (v56 + 63) >> 6;
        v60 = a1;
        if (!v58)
        {
          goto LABEL_43;
        }

        do
        {
LABEL_41:
          while (1)
          {
            v61 = __clz(__rbit64(v58));
            v58 &= v58 - 1;
            v62 = v61 | (v55 << 6);
            if (*(*(v11 + 56) + 8 * v62) >= v60)
            {
              break;
            }

            if (!v58)
            {
              goto LABEL_43;
            }
          }

          v64 = *(*(v11 + 48) + 8 * v62);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = *(v54 + 16);
            [v65 mutableCopy];
            sub_2559658F0();
            swift_unknownObjectRelease();

            sub_25587AF08();
            swift_dynamicCast();
            v66 = swift_allocObject();
            *(v66 + 16) = v74;
            v60 = a1;

            v54 = v66;
          }

          v67 = *(v54 + 16);
          [v67 containsIdentifier_];
          [v67 addIdentifier_];
        }

        while (v58);
LABEL_43:
        while (1)
        {
          v63 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            break;
          }

          if (v63 >= v59)
          {

            result = sub_2558764A4(v73, 0);
            *a2 = v54;
            return result;
          }

          v58 = *(v11 + 64 + 8 * v63);
          ++v55;
          if (v58)
          {
            v55 = v63;
            goto LABEL_41;
          }
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
    }

    while (!v7);
    v10 = v12;
LABEL_11:
    v13 = *(*(v3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    v14 = *(v13 + 16);
    swift_retain_n();
    v15 = [v14 startIndex];
    v17 = v16;
    if (v15 == [*(v13 + 16) endIndex])
    {
LABEL_5:
      v7 &= v7 - 1;

      v8 = v72;
      continue;
    }

    break;
  }

  v18 = [*(v13 + 16) indexAfterIndex_];
  v20 = v19;
  sub_2558764A4(v9, 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = sub_255875B4C(v15);
  v24 = *(v11 + 16);
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v28 = v23;
  if (*(v11 + 24) < v27)
  {
    sub_2558956C0(v27, isUniquelyReferenced_nonNull_native);
    v22 = sub_255875B4C(v15);
    if ((v28 & 1) != (v29 & 1))
    {
      goto LABEL_57;
    }

LABEL_17:
    if ((v28 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_20:
    v32 = *(v11 + 56);
    v33 = *(v32 + 8 * v22);
    v34 = __CFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_53;
    }

    *(v32 + 8 * v22) = v35;
    if (v18 != [*(v13 + 16) endIndex])
    {
      v36 = v18;
      while (1)
      {
        v36 = [*(v13 + 16) indexAfterIndex_];
        v20 = v37;
        sub_2558764A4(sub_255878EA0, 0);
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v39 = sub_255875B4C(v18);
        v41 = *(v11 + 16);
        v42 = (v40 & 1) == 0;
        v26 = __OFADD__(v41, v42);
        v43 = v41 + v42;
        if (v26)
        {
          goto LABEL_52;
        }

        v44 = v40;
        if (*(v11 + 24) < v43)
        {
          break;
        }

        if (v38)
        {
          goto LABEL_28;
        }

        v51 = v39;
        sub_255896810();
        v39 = v51;
        if ((v44 & 1) == 0)
        {
LABEL_29:
          *(v11 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          *(*(v11 + 48) + 8 * v39) = v18;
          *(*(v11 + 56) + 8 * v39) = 0;
          v46 = *(v11 + 16);
          v26 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v26)
          {
            goto LABEL_56;
          }

          *(v11 + 16) = v47;
        }

LABEL_31:
        v48 = *(v11 + 56);
        v49 = *(v48 + 8 * v39);
        v34 = __CFADD__(v49, 1);
        v50 = v49 + 1;
        if (v34)
        {
          goto LABEL_53;
        }

        *(v48 + 8 * v39) = v50;
        v18 = v36;
        if (v36 == [*(v13 + 16) endIndex])
        {
          goto LABEL_4;
        }
      }

      sub_2558956C0(v43, v38);
      v39 = sub_255875B4C(v18);
      if ((v44 & 1) != (v45 & 1))
      {
        goto LABEL_57;
      }

LABEL_28:
      if ((v44 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

LABEL_4:
    v9 = sub_255878EA0;
    v3 = v71;
    goto LABEL_5;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_17;
  }

  v52 = v22;
  sub_255896810();
  v22 = v52;
  if (v28)
  {
    goto LABEL_20;
  }

LABEL_18:
  *(v11 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  *(*(v11 + 48) + 8 * v22) = v15;
  *(*(v11 + 56) + 8 * v22) = 0;
  v30 = *(v11 + 16);
  v26 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v26)
  {
    *(v11 + 16) = v31;
    goto LABEL_20;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_255965CA0();
  __break(1u);
  return result;
}

Swift::Void __swiftcall DirectedBinaryAdjacency.insert(source:target:)(KnowledgeGraphKit::ElementIdentifier source, KnowledgeGraphKit::ElementIdentifier target)
{
  v2 = *source.rawValue;
  v3 = *target.rawValue;
  v4 = v2;
  ElementIdentifierTupleSet.insert(_:)(&v6, &v5, &v4, &v3);
}

Swift::Void __swiftcall DirectedBinaryAdjacency.remove(source:target:)(KnowledgeGraphKit::ElementIdentifier source, KnowledgeGraphKit::ElementIdentifier target)
{
  v2 = *source.rawValue;
  v4 = *target.rawValue;
  v5 = v2;
  v3._0.rawValue = &v5;
  v3._1.rawValue = &v4;
  ElementIdentifierTupleSet.remove(_:)(v3);
}

Swift::Void __swiftcall DirectedBinaryAdjacency.formUnion(_:)(KnowledgeGraphKit::DirectedBinaryAdjacency a1)
{
  v1 = *a1.adjacency.targetsBySource._rawValue;

  ElementIdentifierTupleSet.formUnion(_:)(&v1);
}

Swift::Void __swiftcall DirectedBinaryAdjacency.subtract(_:)(KnowledgeGraphKit::DirectedBinaryAdjacency a1)
{
  v1 = *a1.adjacency.targetsBySource._rawValue;

  ElementIdentifierTupleSet.subtract(_:)(&v1);
}

Swift::Void __swiftcall DirectedBinaryAdjacency.removeTargets(for:)(KnowledgeGraphKit::ElementIdentifier a1)
{
  v2 = v1;
  v3 = sub_255875B4C(*a1.rawValue);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    v8 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2558966B4();
      v7 = v8;
    }

    sub_255879214(v5, v7);

    *v2 = v7;
  }
}

void sub_255879018(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  v4 = swift_allocObject();
  v5 = 0;
  *(v4 + 16) = v3;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v17 = a1;
  while (v9)
  {
LABEL_10:
    v13 = *(*(a1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v9)))));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = *(v4 + 16);
      [v14 mutableCopy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_25587AF08();
      swift_dynamicCast();
      v15 = swift_allocObject();
      *(v15 + 16) = v18;
      a1 = v17;

      v4 = v15;
    }

    v9 &= v9 - 1;
    v11 = *(v4 + 16);
    [v11 containsIdentifier_];
    [v11 addIdentifier_];
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      *a2 = v4;
      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v5;
    if (v9)
    {
      v5 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_255879214(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_255965940() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_255965D50();
      MEMORY[0x259C43B00](v9);
      result = sub_255965D90();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2558793A8(int64_t a1, uint64_t a2)
{
  v4 = sub_2559651D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_255965940();
    v13 = v11;
    v37 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = *(v14 + 56);
    v35 = (v14 - 8);
    v36 = v15;
    do
    {
      v16 = v8;
      v17 = v38 * v10;
      v18 = v13;
      v19 = v14;
      v36(v7, *(a2 + 48) + v38 * v10, v4);
      sub_25587AFF4();
      v20 = sub_255965310();
      (*v35)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v37)
      {
        if (v21 >= v37 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v38 * a1;
          v26 = v24 + v17 + v38;
          v27 = v38 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v38 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 16 * a1);
          v31 = (v29 + 16 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v37 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }
}

uint64_t sub_255879660(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_255965940() + 1) & ~v5;
    do
    {
      sub_255965D50();

      sub_255965400();
      v10 = sub_255965D90();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_255879810(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_255875B4C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2558966B4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_255895430(v14, a3 & 1);
    v9 = sub_255875B4C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_255965CA0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_2558964FC(v9, a2, a1, v19);
  }
}

uint64_t sub_255879934(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_2559651D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_255875BFC(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_25589695C();
      goto LABEL_9;
    }

    sub_255895940(v18, a4 & 1);
    v21 = sub_255875BFC(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_255965CA0();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_255896540(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_255879B10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_255875C80(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_255896BE8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_255895CF8(v16, a4 & 1);
    v11 = sub_255875C80(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_255965CA0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_255896600(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_255879C58(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_255875C80(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_255896EC0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_255896244(v16, a4 & 1);
    v11 = sub_255875C80(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_255965CA0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_25587B098(a1, v22);
  }

  else
  {
    sub_255896648(v11, a2, a3, a1, v21);
  }
}

void *sub_255879DA8(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60E0, &unk_25596E400);
  v4 = sub_255965B90();
  v5 = a1[4];
  v6 = a1[5];
  v7 = sub_255875B4C(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 7;
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + 8 * v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 1);
    v16 = *v11;

    v9 = sub_255875B4C(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_255879EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D8, &qword_25596F030);
    v3 = sub_255965B90();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_255875C80(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_255879FFC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v45 = v3;

  v9 = 0;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (v9 << 9) | (8 * v11);
    v13 = *(*(v45 + 48) + v12);
    v14 = *(*(*(v45 + 56) + v12) + 16);
    v15 = *(a3 + 16);
    swift_retain_n();
    v16 = v14;
    v17 = v15;
    v18 = [v16 identifierSetByIntersectingIdentifierSet_];
    [v18 mutableCopy];
    sub_2559658F0();
    swift_unknownObjectRelease();

    sub_25587AF08();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    v19 = swift_allocObject();
    *(v19 + 16) = v47;

    v20 = [*(v19 + 16) isEmpty];
    v21 = v20;
    if (*(*a2 + 16))
    {
      sub_255875B4C(v13);
      if ((v21 & 1) == 0)
      {
        goto LABEL_18;
      }

      v23 = v22;

      if (v23 & 1) != 0 && (v24 = sub_255875B4C(v13), (v25))
      {
        v26 = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = *a2;
        v48 = *a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2558966B4();
          v28 = v48;
        }

        sub_255879214(v26, v28);
        *a2 = v28;
      }

      else
      {
LABEL_29:
      }
    }

    else
    {
      if ((v20 & 1) == 0)
      {
LABEL_18:
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v30 = *a2;
        v49 = *a2;
        *a2 = 0x8000000000000000;
        v31 = sub_255875B4C(v13);
        v33 = *(v30 + 16);
        v34 = (v32 & 1) == 0;
        v35 = __OFADD__(v33, v34);
        v36 = v33 + v34;
        if (v35)
        {
          goto LABEL_32;
        }

        v37 = v32;
        if (*(v30 + 24) >= v36)
        {
          if (v29)
          {
            goto LABEL_23;
          }

          v40 = v31;
          sub_2558966B4();
          v31 = v40;
          v39 = v49;
          if ((v37 & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_24:
          *(v39[7] + 8 * v31) = v19;
        }

        else
        {
          sub_255895430(v36, v29);
          v31 = sub_255875B4C(v13);
          if ((v37 & 1) != (v38 & 1))
          {
            goto LABEL_34;
          }

LABEL_23:
          v39 = v49;
          if (v37)
          {
            goto LABEL_24;
          }

LABEL_26:
          v39[(v31 >> 6) + 8] |= 1 << v31;
          *(v39[6] + 8 * v31) = v13;
          *(v39[7] + 8 * v31) = v19;
          v41 = v39[2];
          v35 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v35)
          {
            goto LABEL_33;
          }

          v39[2] = v42;
        }

        *a2 = v39;
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_255965CA0();
  __break(1u);
  return result;
}

uint64_t sub_25587A388(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *a1 + 64;
  v7 = 1 << *(*a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v45 = a2;
  v46 = v5;
  while (v9)
  {
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (v11 << 9) | (8 * v13);
    v15 = *(*(v5 + 48) + v14);
    v16 = *(*(v5 + 56) + v14);
    v17 = *(a2 + 16);

    if (![v17 containsIdentifier_])
    {
      goto LABEL_4;
    }

    v18 = *(v16 + 16);

    v19 = [v18 isEmpty];
    v20 = v19;
    if (*(*a3 + 16))
    {
      sub_255875B4C(v15);
      if ((v20 & 1) == 0)
      {
        goto LABEL_20;
      }

      v22 = v21;

      v5 = v46;
      if (v22 & 1) != 0 && (v23 = sub_255875B4C(v15), (v24))
      {
        v25 = v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *a3;
        v47 = *a3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2558966B4();
          v27 = v47;
        }

        sub_255879214(v25, v27);
        *a3 = v27;
      }

      else
      {
LABEL_4:
      }
    }

    else if (v19)
    {

      v5 = v46;
    }

    else
    {
LABEL_20:
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v29 = a3;
      v30 = v28;
      v31 = *v29;
      v48 = *v29;
      v32 = v29;
      *v29 = 0x8000000000000000;
      v33 = sub_255875B4C(v15);
      v35 = *(v31 + 16);
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        result = sub_255965CA0();
        __break(1u);
        return result;
      }

      v39 = v34;
      if (*(v31 + 24) >= v38)
      {
        if ((v30 & 1) == 0)
        {
          v43 = v33;
          sub_2558966B4();
          v33 = v43;
        }
      }

      else
      {
        sub_255895430(v38, v30);
        v33 = sub_255875B4C(v15);
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_37;
        }
      }

      a3 = v32;
      a2 = v45;
      if (v39)
      {
        *(v48[7] + 8 * v33) = v16;
      }

      else
      {
        v48[(v33 >> 6) + 8] |= 1 << v33;
        *(v48[6] + 8 * v33) = v15;
        *(v48[7] + 8 * v33) = v16;
        v41 = v48[2];
        v37 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v37)
        {
          goto LABEL_36;
        }

        v48[2] = v42;
      }

      *a3 = v48;

      v5 = v46;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_25587A69C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v45 = v3;

  v9 = 0;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (v9 << 9) | (8 * v11);
    v13 = *(*(v45 + 48) + v12);
    v14 = *(*(*(v45 + 56) + v12) + 16);
    v15 = *(a3 + 16);

    v16 = v14;
    v17 = v15;
    v18 = [v16 identifierSetBySubtractingIdentifierSet_];
    [v18 mutableCopy];
    sub_2559658F0();
    swift_unknownObjectRelease();

    sub_25587AF08();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    v19 = swift_allocObject();
    *(v19 + 16) = v47;
    v20 = [v47 isEmpty];
    v21 = v20;
    if (*(*a2 + 16))
    {
      sub_255875B4C(v13);
      if ((v21 & 1) == 0)
      {
        goto LABEL_18;
      }

      v23 = v22;

      if (v23 & 1) != 0 && (v24 = sub_255875B4C(v13), (v25))
      {
        v26 = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = *a2;
        v48 = *a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2558966B4();
          v28 = v48;
        }

        sub_255879214(v26, v28);
        *a2 = v28;
      }

      else
      {
LABEL_29:
      }
    }

    else
    {
      if ((v20 & 1) == 0)
      {
LABEL_18:
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v30 = *a2;
        v49 = *a2;
        *a2 = 0x8000000000000000;
        v31 = sub_255875B4C(v13);
        v33 = *(v30 + 16);
        v34 = (v32 & 1) == 0;
        v35 = __OFADD__(v33, v34);
        v36 = v33 + v34;
        if (v35)
        {
          goto LABEL_32;
        }

        v37 = v32;
        if (*(v30 + 24) >= v36)
        {
          if (v29)
          {
            goto LABEL_23;
          }

          v40 = v31;
          sub_2558966B4();
          v31 = v40;
          v39 = v49;
          if ((v37 & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_24:
          *(v39[7] + 8 * v31) = v19;
        }

        else
        {
          sub_255895430(v36, v29);
          v31 = sub_255875B4C(v13);
          if ((v37 & 1) != (v38 & 1))
          {
            goto LABEL_34;
          }

LABEL_23:
          v39 = v49;
          if (v37)
          {
            goto LABEL_24;
          }

LABEL_26:
          v39[(v31 >> 6) + 8] |= 1 << v31;
          *(v39[6] + 8 * v31) = v13;
          *(v39[7] + 8 * v31) = v19;
          v41 = v39[2];
          v35 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v35)
          {
            goto LABEL_33;
          }

          v39[2] = v42;
        }

        *a2 = v39;
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_255965CA0();
  __break(1u);
  return result;
}

uint64_t sub_25587AA1C(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *a1 + 64;
  v7 = 1 << *(*a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v45 = a2;
  v46 = v5;
  while (v9)
  {
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (v11 << 9) | (8 * v13);
    v15 = *(*(v5 + 48) + v14);
    v16 = *(*(v5 + 56) + v14);
    v17 = *(a2 + 16);

    if ([v17 containsIdentifier_])
    {
      goto LABEL_4;
    }

    v18 = *(v16 + 16);

    v19 = [v18 isEmpty];
    v20 = v19;
    if (*(*a3 + 16))
    {
      sub_255875B4C(v15);
      if ((v20 & 1) == 0)
      {
        goto LABEL_20;
      }

      v22 = v21;

      v5 = v46;
      if (v22 & 1) != 0 && (v23 = sub_255875B4C(v15), (v24))
      {
        v25 = v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *a3;
        v47 = *a3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2558966B4();
          v27 = v47;
        }

        sub_255879214(v25, v27);
        *a3 = v27;
      }

      else
      {
LABEL_4:
      }
    }

    else if (v19)
    {

      v5 = v46;
    }

    else
    {
LABEL_20:
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v29 = a3;
      v30 = v28;
      v31 = *v29;
      v48 = *v29;
      v32 = v29;
      *v29 = 0x8000000000000000;
      v33 = sub_255875B4C(v15);
      v35 = *(v31 + 16);
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        result = sub_255965CA0();
        __break(1u);
        return result;
      }

      v39 = v34;
      if (*(v31 + 24) >= v38)
      {
        if ((v30 & 1) == 0)
        {
          v43 = v33;
          sub_2558966B4();
          v33 = v43;
        }
      }

      else
      {
        sub_255895430(v38, v30);
        v33 = sub_255875B4C(v15);
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_37;
        }
      }

      a3 = v32;
      a2 = v45;
      if (v39)
      {
        *(v48[7] + 8 * v33) = v16;
      }

      else
      {
        v48[(v33 >> 6) + 8] |= 1 << v33;
        *(v48[6] + 8 * v33) = v15;
        *(v48[7] + 8 * v33) = v16;
        v41 = v48[2];
        v37 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v37)
        {
          goto LABEL_36;
        }

        v48[2] = v42;
      }

      *a3 = v48;

      v5 = v46;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_25587AD30(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *a1 + 64;
  v7 = 1 << *(*a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
LABEL_11:
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v15 = *(*(v5 + 48) + v14);
    v16 = *(*(v5 + 56) + v14);
    v17 = *(a2 + 16);

    if ([v17 containsIdentifier_])
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *a3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = *(v19 + 16);
        [v20 mutableCopy];
        sub_2559658F0();
        swift_unknownObjectRelease();

        sub_25587AF08();
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v19 = swift_allocObject();
        *(v19 + 16) = v21;

        *a3 = v19;
      }

      [*(v19 + 16) unionWithIdentifierSet_];
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25587AF08()
{
  result = qword_2810B7360;
  if (!qword_2810B7360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810B7360);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElementIdentifierSet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ElementIdentifierSet(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25587AFF4()
{
  result = qword_27F7D60C0;
  if (!qword_27F7D60C0)
  {
    sub_2559651D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D60C0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

_OWORD *sub_25587B098(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25587B0A8(void *a1, float a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v12 = MEMORY[0x277D84F90];
    result = sub_2558A54D0(0, v4, 0);
    v7 = 0;
    v8 = v12;
    while (v7 < *(v3 + 16))
    {
      v9 = *(v3 + 4 * v7 + 32);
      v11 = *(v12 + 16);
      v10 = *(v12 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_2558A54D0((v10 > 1), v11 + 1, 1);
      }

      ++v7;
      *(v12 + 16) = v11 + 1;
      *(v12 + 4 * v11 + 32) = v9 * a2;
      if (v4 == v7)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
LABEL_9:
    *a1 = v8;
  }

  return result;
}

uint64_t sub_25587B1B4(void *a1, double a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v12 = MEMORY[0x277D84F90];
    result = sub_2558A5784(0, v4, 0);
    v7 = 0;
    v8 = v12;
    while (v7 < *(v3 + 16))
    {
      v9 = *(v3 + 8 * v7 + 32);
      v11 = *(v12 + 16);
      v10 = *(v12 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_2558A5784((v10 > 1), v11 + 1, 1);
      }

      ++v7;
      *(v12 + 16) = v11 + 1;
      *(v12 + 8 * v11 + 32) = v9 * a2;
      if (v4 == v7)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
LABEL_9:
    *a1 = v8;
  }

  return result;
}

id MAFloatVectorWrapper.__allocating_init(floatVector:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MAFloatVectorWrapper.__allocating_init(array:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MAFloatVectorWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAFloatVectorWrapper.init()()
{
  *&v0[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = MEMORY[0x277D84F90];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAFloatVectorWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MAFloatVectorWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAFloatVectorWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*MAMutableFloatVectorWrapper.floatVector.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  a1[2] = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_25587B528;
}

id MAMutableFloatVectorWrapper.__allocating_init(floatVector:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = *a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for MAFloatVectorWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

id _s17KnowledgeGraphKit20MAFloatVectorWrapperC05floatE0AcA0E0VySfG_tcfc_0(void *a1)
{
  *&v1[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MAFloatVectorWrapper();
  return objc_msgSendSuper2(&v3, sel_init);
}

id MAMutableFloatVectorWrapper.__allocating_init(array:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for MAFloatVectorWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

id _s17KnowledgeGraphKit20MAFloatVectorWrapperC5arrayACSaySfG_tcfc_0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MAFloatVectorWrapper();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_25587B674(char *a1, uint64_t a2, uint64_t a3)
{
  *&a1[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = sub_2559654C0();
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MAFloatVectorWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

id MAMutableFloatVectorWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MAMutableFloatVectorWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MAFloatVectorWrapper.__allocating_init(floats:count:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithFloats:a1 count:a2];
}

uint64_t MAFloatVectorWrapper.init(floats:count:)(const void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_2558801D8(a2, 0);
    memcpy(v5 + 4, a1, 4 * a2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v8 = v5;
  v6 = (*(ObjectType + 120))(&v8);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t static MAFloatVectorWrapper.zeros(count:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v2 = result;
      v3 = sub_255965530();
      *(v3 + 16) = v2;
      bzero((v3 + 32), 4 * v2);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    v4 = v3;
    return (*(v1 + 120))(&v4);
  }

  return result;
}

uint64_t static MAFloatVectorWrapper.ones(count:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v2 = result;
      v3 = sub_255965530();
      *(v3 + 16) = v2;
      memset_pattern16((v3 + 32), &unk_25596E4C0, 4 * v2);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    v4 = v3;
    return (*(v1 + 120))(&v4);
  }

  return result;
}

unint64_t static MAFloatVectorWrapper.repeating(float:count:)(unint64_t result, __n128 a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = result;
    if (result)
    {
      v11 = a2.n128_u64[0];
      v4 = sub_255965530();
      *(v4 + 16) = v3;
      v5 = (v4 + 32);
      if (v3 > 7)
      {
        v6 = v3 & 0x7FFFFFFFFFFFFFF8;
        v5 += v3 & 0x7FFFFFFFFFFFFFF8;
        v7 = v11.i32[0];
        a2 = vdupq_lane_s32(v11, 0);
        v8 = (v4 + 48);
        v9 = v3 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v8[-1] = a2;
          *v8 = a2;
          v8 += 2;
          v9 -= 8;
        }

        while (v9);
        if (v6 == v3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v6 = 0;
        v7 = v11.i32[0];
      }

      v10 = v3 - v6;
      do
      {
        *v5++ = v7;
        --v10;
      }

      while (v10);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

LABEL_11:
    v12 = v4;
    return (*(v2 + 120))(&v12, a2);
  }

  __break(1u);
  return result;
}

id MAFloatVectorWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for MAFloatVectorWrapper();
  *a1 = v3;

  return v3;
}

void *MAFloatVectorWrapper.mutableCopy(with:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v4 = type metadata accessor for MAMutableFloatVectorWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v3;
  v7.receiver = v5;
  v7.super_class = type metadata accessor for MAFloatVectorWrapper();

  result = objc_msgSendSuper2(&v7, sel_init);
  a1[3] = v4;
  *a1 = result;
  return result;
}

void *MAMutableFloatVectorWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v4 = type metadata accessor for MAFloatVectorWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v3;
  v7.receiver = v5;
  v7.super_class = v4;

  result = objc_msgSendSuper2(&v7, sel_init);
  a1[3] = v4;
  *a1 = result;
  return result;
}

Swift::Float __swiftcall MAFloatVectorWrapper.float(at:)(Swift::Int at)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(&v5);
  if (at < 0)
  {
    __break(1u);
  }

  else if (*(v5 + 16) > at)
  {
    v4 = *(v5 + 4 * at + 32);

    return v4;
  }

  __break(1u);
  return result;
}

id MAFloatVectorWrapper.vectorBySubtractingScalar(_:)(float a1)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(&v10);
  v2 = v10;
  v9 = v10;
  v3 = sub_2558802E0(*(v10 + 16), sub_255880594);
  v4 = *(v2 + 16);

  if (v4 == *(v3 + 16))
  {
    v6 = type metadata accessor for MAFloatVectorWrapper();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v3;
    v8.receiver = v7;
    v8.super_class = v6;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25587C178(uint64_t (*a1)(void *, uint64_t *), float a2)
{
  (*((*MEMORY[0x277D85000] & *v2) + 0x70))(&v12);
  v4 = v12;
  v11 = v12;
  v5 = sub_2558802E0(*(v12 + 16), a1);
  v6 = *(v4 + 16);

  if (v6 == *(v5 + 16))
  {
    v8 = type metadata accessor for MAFloatVectorWrapper();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v5;
    v10.receiver = v9;
    v10.super_class = v8;
    return objc_msgSendSuper2(&v10, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MAFloatVectorWrapper.vectorByDividingByScalar(_:)(float a1)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(&v10);
  v2 = v10;
  v9 = v10;
  v3 = sub_2558802E0(*(v10 + 16), sub_2558806AC);
  v4 = *(v2 + 16);

  if (v4 == *(v3 + 16))
  {
    v6 = type metadata accessor for MAFloatVectorWrapper();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v3;
    v8.receiver = v7;
    v8.super_class = v6;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_25587C414(void *a1, uint64_t (*a2)(void *, uint64_t *))
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x70))(&v18);
  v7 = v18;
  result = (*((*v5 & *a1) + 0x70))(&v17, v6);
  v9 = *(v7 + 16);
  if (v9 == *(v17 + 16))
  {
    v15 = v17;
    v16 = v7;
    MEMORY[0x28223BE20](result);
    v10 = sub_2558802E0(v9, a2);
    v11 = *(v10 + 16);

    if (v9 == v11)
    {
      v12 = type metadata accessor for MAFloatVectorWrapper();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v10;
      v14.receiver = v13;
      v14.super_class = v12;
      return objc_msgSendSuper2(&v14, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id MAFloatVectorWrapper.vectorByElementwiseRaisingToExponent(_:)(float a1)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(&v8);
  sub_25587F068(&v8, a1);
  v3 = v8;
  v4 = type metadata accessor for MAFloatVectorWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

float MAFloatVectorWrapper.dotProductWithWrapper(_:)(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v11);
  v5 = v11[0];
  (*((*v3 & *a1) + 0x70))(&v10, v4);
  v6 = *(v5 + 16);
  if (v6 != *(v10 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_dotpr((v5 + 32), 1, (v10 + 32), 1, &__C, v6);
  v7 = __C;

  return v7;
}

id MAFloatVectorWrapper.slice(from:to:)(uint64_t a1, uint64_t a2)
{
  (*((*MEMORY[0x277D85000] & *v3) + 0x70))(&v14);
  if (a2 < a1)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a1 < 0)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = v14;
  v6 = *(v14 + 16);
  if (v6 < a1 || v6 < a2)
  {
    goto LABEL_11;
  }

  if (v6 != a2 - a1)
  {
LABEL_12:
    sub_255880084(v2, v2 + 32, a1, (2 * a2) | 1);
    v12 = v11;

    v2 = v12;
  }

  v8 = type metadata accessor for MAFloatVectorWrapper();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v2;
  v13.receiver = v9;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t MAFloatVectorWrapper.count.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(&v3);
  v1 = *(v3 + 16);

  return v1;
}

Swift::Float __swiftcall MAFloatVectorWrapper.sum()()
{
  v0 = MEMORY[0x277CB8788];

  return sub_25587CE0C(v0);
}

Swift::Float __swiftcall MAFloatVectorWrapper.sumOfSquares()()
{
  v0 = MEMORY[0x277CB8798];

  return sub_25587CE0C(v0);
}

Swift::Float __swiftcall MAFloatVectorWrapper.mean()()
{
  v0 = MEMORY[0x277CB8768];

  return sub_25587CE0C(v0);
}

float sub_25587CE0C(void (*a1)(uint64_t, uint64_t, int *, uint64_t))
{
  v7[1] = *MEMORY[0x277D85DE8];
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v7);
  v3 = *(v7[0] + 16);
  v6 = 2143289344;
  a1(v7[0] + 32, 1, &v6, v3);
  v4 = *&v6;

  return v4;
}

float sub_25587CF40(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, int *, uint64_t))
{
  v11[1] = *MEMORY[0x277D85DE8];
  (*((*MEMORY[0x277D85000] & *a1) + 0x70))(v11);
  v5 = v11[0];
  v6 = *(v11[0] + 16);
  v10 = 2143289344;
  v7 = a1;
  a3(v5 + 32, 1, &v10, v6);
  v8 = *&v10;

  return v8;
}

Swift::Float __swiftcall MAFloatVectorWrapper.standardDeviation()()
{
  v4[1] = *MEMORY[0x277D85DE8];
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v4);
  __StandardDeviation = 0;
  vDSP_normalize((v4[0] + 32), 1, 0, 1, &__StandardDeviation + 1, &__StandardDeviation, *(v4[0] + 16));
  v1 = *&__StandardDeviation;

  return v1;
}

void *MAFloatVectorWrapper.data()()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x70))(&v4);
  v2 = *(v4 + 16);
  if (v2 >> 61)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_25587D358(v4 + 32, v4 + 32 + 4 * v2);

    return v3;
  }

  return result;
}

uint64_t sub_25587D358(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_255880910(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_255880A4C(v3, v4);
    }

    else
    {
      v6 = sub_2558809C8(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

id sub_25587D4C8(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x70))(&v9);
  v5 = v9;
  v6 = a1;
  a3(v5, MEMORY[0x277D83A90]);

  v7 = sub_2559653D0();

  return v7;
}

uint64_t sub_25587D5AC(uint64_t (*a1)(uint64_t, void))
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(&v5);
  v3 = a1(v5, MEMORY[0x277D83A90]);

  return v3;
}

id MAFloatVectorWrapper.naturalLogarithm()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(&v6);
  sub_25587D6E8(v6, &v7);

  v1 = v7;
  v2 = type metadata accessor for MAFloatVectorWrapper();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_25587D6E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2558A54D0(0, v3, 0);
    v4 = v12;
    v6 = (a1 + 32);
    v7 = v3;
    do
    {
      v8 = logf(*v6);
      v10 = *(v12 + 16);
      v9 = *(v12 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = v8;
        sub_2558A54D0((v9 > 1), v10 + 1, 1);
        v8 = v11;
      }

      *(v12 + 16) = v10 + 1;
      *(v12 + 4 * v10 + 32) = v8;
      ++v6;
      --v7;
    }

    while (v7);
  }

  *a2 = v4;
  if (v3 != *(v4 + 16))
  {
    __break(1u);
  }
}

id MAFloatVectorWrapper.naturalLogarithmIfPositive()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v1(&v17);
  sub_25587D6E8(v17, &v18);

  v3 = v18;
  v4 = *(v18 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v15 = v1;
    v17 = MEMORY[0x277D84F90];
    v2 = sub_2558A5724(0, v4, 0);
    v5 = v17;
    v6 = (v3 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      v17 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        v2 = sub_2558A5724((v9 > 1), v10 + 1, 1);
        v5 = v17;
      }

      *(v5 + 16) = v10 + 1;
      *(v5 + v10 + 32) = (~v7 & 0x7F800000) == 0;
      --v4;
    }

    while (v4);
    v1 = v15;
  }

  (v1)(&v17, v2);
  sub_25587DA48(v5, v17);

  v11 = v18;
  v12 = type metadata accessor for MAFloatVectorWrapper();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v11;
  v16.receiver = v13;
  v16.super_class = v12;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_25587DA48(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v6 = *v2;
  if (v5 != *(*v2 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = a2;
  if (*(a2 + 16) != v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if (result)
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

LABEL_11:
  result = sub_2558803F4(v6);
  v6 = result;
  *v2 = result;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_5:
  v8 = (v6 + 32);
  v9 = (v4 + 32);
  v10 = (v3 + 32);
  do
  {
    if (*v10 == 1)
    {
      *v8 = *v9;
    }

    ++v8;
    ++v9;
    ++v10;
    --v5;
  }

  while (v5);
LABEL_12:
  *v2 = v6;
  return result;
}

Swift::Void __swiftcall MAMutableFloatVectorWrapper.append(float:)(Swift::Float a1)
{
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_2558913D4(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_2558913D4((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  *&v4[4 * v6 + 32] = a1;
  *(v1 + v3) = v4;
}

uint64_t MAMutableFloatVectorWrapper.append(floats:count:)(char *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v7 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);

  sub_25587DD74(a1, a2);
  *(v2 + v5) = v7;
}

char *sub_25587DD74(char *result, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v8 = *(v4 + 3) >> 1, v8 < v6))
    {
      if (v5 <= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v5;
      }

      result = sub_2558913D4(result, v9, 1, v4);
      v4 = result;
      v8 = *(result + 3) >> 1;
    }

    v10 = *(v4 + 2);
    v11 = v8 - v10;
    if (!a2 || v8 == v10)
    {
      if (v3)
      {
        v5 = &v3[4 * a2];
      }

      else
      {
        v5 = 0;
      }

      if (a2 <= 0)
      {
        v12 = 0;
LABEL_23:
        if (v12 != v11 || v3 == 0 || v3 == v5)
        {
          goto LABEL_31;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (a2 >= v11)
      {
        v12 = v8 - v10;
      }

      else
      {
        v12 = a2;
      }

      v5 = 4 * v12;
      result = memcpy(&v4[4 * v10 + 32], v3, 4 * v12);
      if (v11 >= a2)
      {
        v13 = &v3[v5];
        v5 = &v3[4 * a2];
        if (v12 >= 1)
        {
          v14 = *(v4 + 2);
          v15 = __OFADD__(v14, v12);
          v16 = v14 + v12;
          if (v15)
          {
            __break(1u);
            return result;
          }

          *(v4 + 2) = v16;
        }

        v3 = v13;
        goto LABEL_23;
      }
    }
  }

  __break(1u);
LABEL_34:
  v19 = *(v4 + 2);
  v22 = *v3;
  v20 = (v3 + 4);
  v21 = v22;
  while (1)
  {
    v23 = *(v4 + 3);
    v24 = v23 >> 1;
    if ((v23 >> 1) < v19 + 1)
    {
      break;
    }

    if (v19 < v24)
    {
      goto LABEL_38;
    }

LABEL_35:
    *(v4 + 2) = v19;
  }

  v27 = v4;
  v28 = v19;
  result = sub_2558913D4((v23 > 1), v19 + 1, 1, v27);
  v19 = v28;
  v4 = result;
  v24 = *(result + 3) >> 1;
  if (v19 >= v24)
  {
    goto LABEL_35;
  }

LABEL_38:
  v25 = v19 + 8;
  while (1)
  {
    *&v4[4 * v25] = v21;
    if (v20 == v5)
    {
      break;
    }

    v26 = *v20++;
    v21 = v26;
    if (++v25 - v24 == 8)
    {
      v19 = v24;
      goto LABEL_35;
    }
  }

  *(v4 + 2) = v25 - 7;
LABEL_31:
  *v2 = v4;
  return result;
}

uint64_t sub_25587DF30(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2558913D4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25587E01C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2558915E8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

double *MAMutableFloatVectorWrapper.append(doubles:count:)(double *result, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v4 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v5 = *(v4 + 2);
  v6 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
    __break(1u);
  }

  else
  {
    v8 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
    {
      if (*(v4 + 2) <= v6)
      {
        v10 = v6;
      }

      else
      {
        v10 = *(v4 + 2);
      }

      v4 = sub_2558913D4(isUniquelyReferenced_nonNull_native, v10, 0, v4);
    }

    *(v2 + v3) = v4;

    if (a2)
    {
      v11 = 8 * a2;
      do
      {
        v12 = *v8;
        v13 = *(v2 + v3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2558913D4(0, *(v13 + 2) + 1, 1, v13);
        }

        v15 = *(v13 + 2);
        v14 = *(v13 + 3);
        if (v15 >= v14 >> 1)
        {
          v13 = sub_2558913D4((v14 > 1), v15 + 1, 1, v13);
        }

        ++v8;
        v16 = v12;
        *(v13 + 2) = v15 + 1;
        *&v13[4 * v15 + 32] = v16;
        *(v2 + v3) = v13;

        v11 -= 8;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t MAMutableFloatVectorWrapper.append(vector:)(void *a1)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x70))(&v6);
  v2 = v6;
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v5 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);

  sub_25587DF30(v2);
  *(v1 + v3) = v5;
}

Swift::Void __swiftcall MAMutableFloatVectorWrapper.append(array:)(Swift::OpaquePointer array)
{
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);

  sub_25587DF30(array._rawValue);
  *(v1 + v3) = v4;
}

Swift::Void __swiftcall MAMutableFloatVectorWrapper.setFloat(_:at:)(Swift::Float _, Swift::Int at)
{
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v6 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((at & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_2558803F4(v6);
  if (at < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v6 + 2) <= at)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *&v6[4 * at + 32] = _;
  *(v2 + v5) = v6;
}

void *MAMutableFloatVectorWrapper.subtract(_:)(void *a1)
{
  v2 = v1;
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x70))(&v8);
  v4 = v8;
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v6 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v7 = v6;
  if (*(v6 + 16) == *(v8 + 16))
  {
    swift_bridgeObjectRetain_n();
    sub_25587FACC(v6, v4, &v7);

    *(v2 + v5) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *MAMutableFloatVectorWrapper.add(_:)(void *a1)
{
  v2 = v1;
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x70))(&v8);
  v4 = v8;
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v6 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v7 = v6;
  if (*(v6 + 16) == *(v8 + 16))
  {
    swift_bridgeObjectRetain_n();
    sub_25587FCB4(v6, v4, &v7, MEMORY[0x277CB87A0]);

    *(v2 + v5) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall MAMutableFloatVectorWrapper.subtract(_:)(Swift::Float a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v5 = *(v4 + 16);
  swift_bridgeObjectRetain_n();
  v6 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_2558803F4(v4);
  }

  v7 = -a1;
  MEMORY[0x259C450A0](v4 + 32, 1, &v7, v6 + 32, 1, v5);

  *(v1 + v3) = v6;
}

Swift::Void __swiftcall MAMutableFloatVectorWrapper.add(_:)(Swift::Float a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v5 = *(v4 + 16);
  swift_bridgeObjectRetain_n();
  v6 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_2558803F4(v4);
  }

  v7 = a1;
  MEMORY[0x259C450A0](v4 + 32, 1, &v7, v6 + 32, 1, v5);

  *(v1 + v3) = v6;
}

Swift::Void __swiftcall MAMutableFloatVectorWrapper.divide(_:)(Swift::Float a1)
{
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  swift_bridgeObjectRetain_n();
  sub_25587FF4C(v4, &v4, a1);

  *(v1 + v3) = v4;
}

uint64_t MAMutableFloatVectorWrapper.elementwiseMultiplyByWrapper(_:)(void *a1)
{
  v2 = v1;
  (*((*MEMORY[0x277D85000] & *a1) + 0x70))(&v7);
  v3 = v7;
  v4 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v6 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  swift_bridgeObjectRetain_n();
  sub_25587FCB4(v6, v3, &v6, MEMORY[0x277CB87D0]);

  *(v2 + v4) = v6;
}

uint64_t sub_25587EFEC(void (*a1)(uint64_t *, float), float a2)
{
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v7 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);

  a1(&v7, a2);
  *(v2 + v5) = v7;
}

void sub_25587F068(char **a1, float a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (*(*a1 + 2) >> 31)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = a1;
  v6 = *(*a1 + 2);
  v5 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_5:
    v3 = sub_2558803F4(v3);
    *v2 = v3;
  }

  vvpowsf(v3 + 8, &v5, v3 + 8, &v6);
  *v2 = v3;
}

uint64_t sub_25587F12C(char *a1, float a2, uint64_t a3, void (*a4)(uint64_t *, float))
{
  v7 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v10 = *&a1[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector];
  v8 = a1;

  a4(&v10, a2);
  *&a1[v7] = v10;
}

uint64_t MAFloatVectorWrapper.isApproximatelyEqual(to:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))(&v9);
  v5 = v9;
  (*((*v3 & *a1) + 0x70))(&v8, v4);
  v6 = sub_25587F448(v8, v5, 0.00000011921, 0.00000011921);

  return v6 & 1;
}

uint64_t MAFloatVectorWrapper.isApproximatelyEqual(to:epsilon:)(void *a1, float a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x70))(&v11);
  v7 = v11;
  (*((*v5 & *a1) + 0x70))(&v10, v6);
  v8 = sub_25587F448(v10, v7, 0.0, a2);

  return v8 & 1;
}

uint64_t sub_25587F448(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v4 = *(a2 + 16);
  if (v4 != *(a1 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = (a2 + 32);
    v6 = (a1 + 32);
    do
    {
      v7 = vabds_f32(*v5, *v6);
      if (*v5 != *v6 && v7 > a3)
      {
        v9 = fabsf(*v5) + fabsf(*v6);
        if (v9 <= 3.4028e38)
        {
          if (v9 <= 1.1755e-38)
          {
            if ((v7 * 8.5071e37) > a4)
            {
              return 0;
            }

            goto LABEL_11;
          }
        }

        else
        {
          v9 = 3.4028e38;
        }

        if ((v7 / v9) > a4)
        {
          return 0;
        }
      }

LABEL_11:
      ++v5;
      ++v6;
      --v4;
    }

    while (v4);
  }

  return 1;
}

uint64_t sub_25587F4FC(uint64_t a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 16);
  if (v6 != *(a1 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = (a6 + 32);
    v8 = (a1 + 32);
    do
    {
      v9 = vabds_f32(*v7, *v8);
      if (*v7 != *v8 && v9 > a2)
      {
        v11 = fabsf(*v7) + fabsf(*v8);
        if (v11 <= 3.4028e38)
        {
          if (v11 <= 1.1755e-38)
          {
            if ((v9 * 8.5071e37) > a3)
            {
              return 0;
            }

            goto LABEL_11;
          }
        }

        else
        {
          v11 = 3.4028e38;
        }

        if ((v9 / v11) > a3)
        {
          return 0;
        }
      }

LABEL_11:
      ++v7;
      ++v8;
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t MAFloatVectorWrapper.isEqual(_:)(uint64_t a1)
{
  sub_255880728(a1, v9);
  if (!v9[3])
  {
    sub_255880798(v9);
    goto LABEL_6;
  }

  type metadata accessor for MAFloatVectorWrapper();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v6 = 0;
    return v6 & 1;
  }

  v2 = v8;
  if (v8 == v1)
  {

    v6 = 1;
  }

  else
  {
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v9);
    v5 = v9[0];
    (*((*v3 & *v8) + 0x70))(&v8, v4);
    v6 = sub_25587F9BC(v5, v8);
  }

  return v6 & 1;
}

uint64_t MAFloatVectorWrapper.hash.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(&v4);
  v1 = v4;
  sub_255965D50();
  sub_25587FA18(&v3, v1);

  return sub_255965D90();
}

uint64_t sub_25587F960(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25587F9BC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25587FA18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C43B00](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_255965D70();
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_25587FA80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  if (*(a1 + 16) == v3)
  {
    if (*(a2 + 16) == v3)
    {
      if (*a3)
      {
LABEL_8:
        JUMPOUT(0x259C450D0);
      }

LABEL_7:
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  goto LABEL_7;
}

uint64_t sub_25587FACC(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = *a3;
  v7 = *(*a3 + 2);
  if (*(a1 + 16) != v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = a2;
  if (*(a2 + 16) != v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = a3;
  v4 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_7:
    v6 = sub_2558803F4(v6);
    *v3 = v6;
  }

  result = MEMORY[0x259C450D0](v5 + 32, 1, v4 + 32, 1, v6 + 32, 1, v7);
  *v3 = v6;
  return result;
}

void sub_25587FB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = a7[1];
  if (*(a1 + 16) == v8)
  {
    if (*(a4 + 16) == v8)
    {
      if (*a7)
      {
LABEL_8:
        JUMPOUT(0x259C450D0);
      }

LABEL_7:
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  goto LABEL_7;
}

uint64_t sub_25587FBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7)
{
  v10 = *a7;
  v11 = *(*a7 + 2);
  if (*(a1 + 16) != v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = a4;
  if (*(a4 + 16) != v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a7;
  v8 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v10 = sub_2558803F4(v10);
  }

  result = MEMORY[0x259C450D0](v9 + 32, 1, v8 + 32, 1, v10 + 32, 1, v11);
  *v7 = v10;
  return result;
}

uint64_t sub_25587FC64(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v4 = a3[1];
  if (*(result + 16) != v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) != v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a3)
  {
    return a4(result + 32, 1, a2 + 32, 1, *a3, 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25587FCB4(uint64_t a1, uint64_t a2, char **a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *a3;
  v9 = *(*a3 + 2);
  if (*(a1 + 16) != v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a2;
  if (*(a2 + 16) != v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = a4;
  v4 = a3;
  v7 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_7:
    v8 = sub_2558803F4(v8);
    *v4 = v8;
  }

  result = v5(v7 + 32, 1, v6 + 32, 1, (v8 + 32), 1, v9);
  *v4 = v8;
  return result;
}

uint64_t sub_25587FD64(uint64_t a1, char **a2, float a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(*a2 + 2);
  if (*(a1 + 16) != v7)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = a2;
  v4 = a1;
  v5 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_5:
    v6 = sub_2558803F4(v6);
    *v3 = v6;
  }

  v10 = v5;
  result = MEMORY[0x259C450A0](v4 + 32, 1, &v10, v6 + 32, 1, v7);
  *v3 = v6;
  return result;
}

uint64_t sub_25587FE30(uint64_t a1, float a2, uint64_t a3, uint64_t a4, char **a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = *a5;
  v9 = *(*a5 + 2);
  if (*(a1 + 16) != v9)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = a5;
  v6 = a1;
  v7 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_5:
    v8 = sub_2558803F4(v8);
  }

  v11 = v7;
  result = MEMORY[0x259C450A0](v6 + 32, 1, &v11, v8 + 32, 1, v9);
  *v5 = v8;
  return result;
}

void sub_25587FEF4(uint64_t a1, uint64_t a2, float a3)
{
  v3 = *(a2 + 8);
  if (*(a1 + 16) == v3)
  {
    v4 = a3;
    if (*a2)
    {
      vDSP_vsdiv((a1 + 32), 1, &v4, *a2, 1, v3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25587FF4C(uint64_t a1, char **a2, float a3)
{
  v6 = *a2;
  v7 = *(*a2 + 2);
  if (*(a1 + 16) != v7)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = a2;
  v5 = a3;
  v4 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_5:
    v6 = sub_2558803F4(v6);
    *v3 = v6;
  }

  v9 = v5;
  vDSP_vsdiv((v4 + 32), 1, &v9, v6 + 8, 1, v7);
  *v3 = v6;
}

void *sub_25587FFF0(__objc2_class *a1)
{
  v2 = [a1->cache count];
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  v4 = sub_255880154(v2, 0);

  v5 = sub_2558AA194(v7, (v4 + 4), v3, a1);

  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

void sub_255880084(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C8, &unk_25596E4B0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_255880154(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61B8, &unk_25596E4A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_2558801D8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C8, &unk_25596E4B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_25588025C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C0, &unk_25596EE30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2558802E0(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_255965530();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

char *sub_255880430(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 4 * v5);
    v4 += 4 * v5;
  }

  return v4;
}

uint64_t sub_255880540(void *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v5 = *(v3 + 24);
  v6 = **(v3 + 16);
  result = sub_25587FC64(v6, *v5, a1, a3);
  *a2 = *(v6 + 16);
  return result;
}

uint64_t sub_2558805C8(void *a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, float *, void, uint64_t), float a5)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (*(*a3 + 16) != a1[1])
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v8 = a5;
  if (!*a1)
  {
    goto LABEL_5;
  }

  result = a4(v5 + 32, 1, &v8, *a1, 1);
  *a2 = *(v5 + 16);
  return result;
}

void sub_2558806AC(uint64_t a1, void *a2)
{
  v4 = *(v2 + 24);
  v5 = **(v2 + 16);
  sub_25587FEF4(v5, a1, v4);
  *a2 = *(v5 + 16);
}

uint64_t sub_255880728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60F0, &qword_25596E410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255880798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60F0, &qword_25596E410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255880874(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_255880910(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_2558809C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_255965170();
  swift_allocObject();
  result = sub_255965130();
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

uint64_t sub_255880A4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_255965170();
  swift_allocObject();
  result = sub_255965130();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2559651E0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_255880AF8()
{
  type metadata accessor for GraphStoreManager.GraphStoreManagerRepository();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  qword_27F7D61D0 = v0;
  return result;
}

uint64_t sub_255880B58()
{
  v1 = *v0;
  sub_255965D50();
  MEMORY[0x259C43B00](v1);
  return sub_255965D90();
}

uint64_t sub_255880BCC(uint64_t a1)
{
  v2 = *v1;
  sub_255965D50();
  MEMORY[0x259C43B00](v2);
  return sub_255965D90();
}

uint64_t sub_255880C20(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v4 = sub_255965260();
  MEMORY[0x28223BE20](v4 - 8);
  v39 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_255965850();
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v28 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255965840();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readRunningCount) = 0;
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) = 1;
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_closed) = 0;
  v9 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking;
  v10 = sub_255965530();
  *(v10 + 16) = 4;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v2 + v9) = v10;
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readWriteStore) = 0;
  v11 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_url;
  v29 = sub_2559651D0();
  v31 = *(v29 - 8);
  (*(v31 + 16))(v2 + v11, a1, v29);
  v12 = sub_255888134(0, &qword_27F7D62E8, 0x277D85C78);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62F0, &qword_25596E748);
  v13 = *(v8 + 72);
  v37 = *(v8 + 80);
  v27 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25596E4D0;
  sub_255965820();
  sub_255965830();
  v41 = v14;
  v35 = sub_2558881D0(&qword_27F7D62F8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6300, &qword_25596E750);
  v15 = sub_25588817C(&qword_27F7D6308, &qword_27F7D6300, &qword_25596E750);
  v25 = v7;
  v26 = v15;
  sub_255965930();
  v33 = *MEMORY[0x277D85268];
  v16 = *(v40 + 104);
  v40 += 104;
  v32 = v16;
  v17 = v28;
  v18 = v38;
  v16(v28);
  sub_255965250();
  v24 = v12;
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_executionQueue) = sub_255965870();
  v22[1] = ".knowledgegraph.execution";
  v19 = swift_allocObject();
  v23 = xmmword_25596E4E0;
  *(v19 + 16) = xmmword_25596E4E0;
  sub_255965830();
  v41 = v19;
  sub_255965930();
  v32(v17, v33, v18);
  sub_255965250();
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue) = sub_255965870();
  v20 = swift_allocObject();
  *(v20 + 16) = v23;
  sub_255965830();
  v41 = v20;
  sub_255965930();
  v32(v17, v33, v38);
  sub_255965250();
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_writeFeederQueue) = sub_255965870();
  dispatch_activate(*(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_executionQueue));
  dispatch_activate(*(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue));
  dispatch_activate(*(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_writeFeederQueue));
  (*(v31 + 8))(v30, v29);
  return v2;
}

uint64_t sub_255881208()
{
  if ((*(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) & 1) == 0)
  {
    dispatch_resume(*(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue));
  }

  v1 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_url;
  v2 = sub_2559651D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2558812F4()
{
  sub_255881208();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for GraphStoreManager(uint64_t a1)
{
  result = qword_27F7D6290;
  if (!qword_27F7D6290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255881374(uint64_t a1)
{
  result = sub_2559651D0();
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

uint64_t sub_255881454(uint64_t a1)
{
  v4 = v1;
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = &qword_27F7D6000;
  if (*(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_closed) == 1)
  {
    *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_closed) = 0;
    *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores) = MEMORY[0x277D84F90];

    v2 = 4;
    v6 = sub_255965530();
    *(v6 + 16) = 4;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking) = v6;
  }

  v7 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking;
  v8 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking);
  v9 = v8[2];
  if (!v9)
  {
    goto LABEL_22;
  }

  if (!v8[4])
  {
    v5 = 0;
    goto LABEL_16;
  }

  if (v9 == 1)
  {
    goto LABEL_22;
  }

  if (!v8[5])
  {
    v5 = 1;
    goto LABEL_16;
  }

  if (v9 == 2)
  {
    goto LABEL_22;
  }

  if (!v8[6])
  {
    v5 = 2;
    goto LABEL_16;
  }

  if (v9 == 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8[7])
  {
    sub_255887B10();
    swift_allocError();
    *v10 = 0;
LABEL_33:
    swift_willThrow();
    return v2;
  }

  v5 = 3;
LABEL_16:
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores;
  v11 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores);
  if (!(v11 >> 62))
  {
    if (v5 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_24:
    v2 = objc_allocWithZone(KGDegasGraphStore);
    v14 = sub_2559651B0();
    v15 = [v2 initWithURL_];

    if (!v15)
    {
      sub_255887B10();
      swift_allocError();
      *v20 = 1;
      goto LABEL_33;
    }

    v23[0] = 0;
    v16 = [v15 openWithMode:1 error:v23];
    v2 = v23[0];
    if (!v16)
    {
      v21 = v23[0];
      sub_255965180();

      swift_willThrow();
      return v2;
    }

    v17 = v23[0];
    v2 = v15;
    MEMORY[0x259C43240]();
    if (*((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_27:
      sub_255965560();
      goto LABEL_28;
    }

LABEL_39:
    sub_2559654F0();
    goto LABEL_27;
  }

LABEL_23:
  if (v5 >= sub_255965B60())
  {
    goto LABEL_24;
  }

LABEL_18:
  v12 = *(v1 + v3);
  if ((v12 & 0xC000000000000001) != 0)
  {
    goto LABEL_37;
  }

  if (v5 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_39;
  }

  for (i = *(v12 + 8 * v5 + 32); ; i = MEMORY[0x259C43770](v5))
  {
    v2 = i;
LABEL_28:
    v18 = *(v4 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v7) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_255880408(v18);
    }

    if (v5 < *(v18 + 2))
    {
      break;
    }

    __break(1u);
LABEL_37:
    ;
  }

  *&v18[8 * v5 + 32] = 1;
  *(v4 + v7) = v18;
  return v2;
}

uint64_t sub_2558817A4(uint64_t a1)
{
  v4 = v1;
  v6 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores;
  v7 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores);
  if (v7 >> 62)
  {
LABEL_17:
    v12 = sub_255965B60();
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_19;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v12)
  {
    v2 = 0;
    do
    {
      if (i == v2)
      {
        goto LABEL_21;
      }

      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(v4 + v6);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x259C43770](v2);
      }

      else
      {
        if (v2 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v9 = *(v8 + 8 * v2 + 32);
      }

      v10 = v9;
      sub_255888134(0, &unk_27F7D62D0, 0x277D82BB8);
      v1 = sub_255965880();

      ++v2;
    }

    while ((v1 & 1) == 0);
    a1 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking;
    v1 = *(v4 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + a1) = v1;
    i = v2 - 1;
    if ((result & 1) == 0)
    {
LABEL_19:
      result = sub_255880408(v1);
      v1 = result;
    }

    if (i < *(v1 + 16))
    {
      break;
    }

    __break(1u);
LABEL_21:
    v12 = sub_255965B00();
    __break(1u);
LABEL_22:
    ;
  }

  *(v1 + 8 * v2 + 24) = 0;
  *(v4 + a1) = v1;
  return result;
}

void sub_25588195C()
{
  v1 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readWriteStore;
  v2 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readWriteStore);
  if (v2)
  {
    [v2 close];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores;
  v5 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores);
  if (v5 >> 62)
  {
    v6 = sub_255965B60();
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (v6 >= 1)
  {

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C43770](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 close];
    }

LABEL_12:
    *(v0 + v4) = MEMORY[0x277D84F90];

    v10 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking;
    v11 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + v10) = v11;
    if (isUniquelyReferenced_nonNull_native)
    {
      v13 = *(v11 + 2);
      if (v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = sub_255880408(v11);
      v13 = *(v11 + 2);
      if (v13)
      {
LABEL_14:
        *(v11 + 4) = 0;
        if (v13 != 1)
        {
          *(v11 + 5) = 0;
          if (v13 >= 3)
          {
            *(v11 + 6) = 0;
            if (v13 != 3)
            {
              *(v11 + 7) = 0;
              *(v0 + v10) = v11;
              *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_closed) = 1;
              return;
            }

            goto LABEL_24;
          }

LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_255881B08()
{
  sub_25588195C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255881B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_255881B94);
}

uint64_t sub_255881B94()
{
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_255881C70;
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_2558867D4(v6, &unk_25596E648, v2, v4, v7, v5);
}

uint64_t sub_255881C70()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_255881E18;
  }

  else
  {
    v2 = sub_255881D84;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_255881D84()
{
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }

  return result;
}

uint64_t sub_255881E18()
{
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }

  return result;
}

uint64_t sub_255881EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  return MEMORY[0x2822009F8](sub_255881F38);
}

uint64_t sub_255881F38()
{
  sub_25588195C();

  return MEMORY[0x2822009F8](sub_255881FCC);
}

uint64_t sub_255881FCC()
{
  v1 = v0[4];
  v2 = sub_2559651B0();
  v0[2] = 0;
  LODWORD(v1) = [v1 copyToURL:v2 error:v0 + 2];

  v3 = v0[2];
  if (v1)
  {
    v8 = v0[1];
    v4 = v3;
    v5 = v8;
  }

  else
  {
    v6 = v3;
    sub_255965180();

    swift_willThrow();
    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_2558820F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_255965240();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2558821BC);
}

uint64_t sub_2558821BC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  sub_255882FD8();
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_2558822B8;
  v6 = *(v0 + 72);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return sub_255881B6C(v8, v6, &unk_25596E6C0, v3, v7);
}

uint64_t sub_2558822B8()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25588246C);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_25588246C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2558824D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_255888484;

  return sub_255882658(a1, a3, a4);
}

uint64_t sub_255882590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_255888484;

  return sub_255882AB8(a1, a3, a4, a5);
}

uint64_t sub_255882658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_255965240();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25588271C);
}

void sub_25588271C()
{
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readRunningCount;
  *(v0 + 80) = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readRunningCount;
  v4 = *(v2 + v3);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v3) = v6;
    v7 = *(v0 + 48);
    if (v6 == 4 && *(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) == 1)
    {
      *(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) = 0;
      dispatch_suspend(*(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue));
      v7 = *(v0 + 48);
    }

    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    v9 = *(v0 + 32);
    *(v8 + 16) = v7;
    *(v8 + 24) = v9;
    *(v0 + 16) = MEMORY[0x277D84F90];
    sub_2558881D0(&qword_27F7D62B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62C0, &qword_25596E698);
    sub_25588817C(&qword_27F7D62C8, &qword_27F7D62C0, &qword_25596E698);
    sub_255965930();
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v10[1] = sub_25588292C;
    v11 = *(v0 + 72);
    v12 = *(v0 + 24);

    sub_2558AA784(v12, v11, &unk_25596E728, v8);
  }
}

uint64_t sub_25588292C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_255888488;
  }

  else
  {

    v5 = sub_25588847C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_255882AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_255965240();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255882B80);
}

void sub_255882B80()
{
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readRunningCount;
  *(v0 + 80) = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readRunningCount;
  v4 = *(v2 + v3);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v3) = v6;
    v7 = *(v0 + 48);
    if (v6 == 4 && *(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) == 1)
    {
      *(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) = 0;
      dispatch_suspend(*(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue));
      v7 = *(v0 + 48);
    }

    v8 = *(v0 + 40);
    v9 = swift_task_alloc();
    *(v0 + 88) = v9;
    v10 = *(v0 + 24);
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    *(v9 + 32) = v10;
    sub_255882FD8();
    v11 = swift_task_alloc();
    *(v0 + 96) = v11;
    *v11 = v0;
    v11[1] = sub_255882CD8;
    v12 = *(v0 + 72);
    v13 = *(v0 + 40);
    v14 = *(v0 + 16);

    sub_255881B6C(v14, v12, &unk_25596E6D8, v9, v13);
  }
}

uint64_t sub_255882CD8()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_255882F18;
  }

  else
  {

    v5 = sub_255882E64;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_255882E64()
{
  v2 = v0[10];
  v3 = v0[6];
  v4 = *(v3 + v2);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v2) = v6;
    if ((*(v3 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) & 1) == 0 && v6 < 4)
    {
      v7 = v0[6];
      *(v3 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) = 1;
      dispatch_resume(*(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue));
    }

    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_255882F18()
{
  v1 = v0[10];
  v2 = v0[6];

  v4 = *(v2 + v1);
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = v0[6];
    *(v6 + v0[10]) = v5;
    if ((*(v6 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) & 1) == 0 && v5 < 4)
    {
      v7 = v0[6];
      *(v6 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) = 1;
      dispatch_resume(*(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue));
    }

    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_255882FD8()
{
  sub_255965240();
  sub_2558881D0(&qword_27F7D62B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62C0, &qword_25596E698);
  sub_25588817C(&qword_27F7D62C8, &qword_27F7D62C0, &qword_25596E698);
  return sub_255965930();
}

uint64_t sub_2558830B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a2;

  return MEMORY[0x2822009F8](sub_255883144);
}

uint64_t sub_255883144(uint64_t a1)
{
  v2 = sub_255881454(a1);
  *(v1 + 64) = v2;
  v3 = v2;
  *(v1 + 16) = 0;
  v4 = [v2 beginTransactionWithError_];
  v5 = *(v1 + 16);
  if (v4)
  {
    v6 = *(v1 + 40);
    v3;
    v11 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v1 + 72) = v7;
    *v7 = v1;
    v7[1] = sub_255883334;

    return v11();
  }

  else
  {
    v9 = v5;
    sub_255965180();

    swift_willThrow();
    v10 = *(v1 + 8);

    return v10();
  }
}

uint64_t sub_255883334()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_2558835C8;
  }

  else
  {

    v3 = sub_2558834A4;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2558834A4()
{
  *(v0 + 32) = 0;
  v1 = [*(v0 + 64) commitTransactionWithError_];
  v2 = *(v0 + 32);
  v3 = *(v0 + 64);
  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v6 = v2;
    sub_255965180();

    swift_willThrow();
  }

  sub_2558817A4(v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2558835C8()
{
  v1 = v0[8];

  v0[3] = 0;
  v2 = [v1 rollbackTransactionWithError_];
  v3 = v0[3];
  v4 = v0[10];
  v5 = v0[8];
  if (v2)
  {
    swift_willThrow();
    v6 = v3;
  }

  else
  {
    v7 = v3;
    sub_255965180();

    swift_willThrow();
  }

  sub_2558817A4(v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2558836EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v5[10] = *(a4 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2558837E8);
}

uint64_t sub_2558837E8(uint64_t a1)
{
  v2 = sub_255881454(a1);
  *(v1 + 104) = v2;
  v3 = v2;
  *(v1 + 16) = 0;
  v4 = [v2 beginTransactionWithError_];
  v5 = *(v1 + 16);
  if (v4)
  {
    v6 = *(v1 + 48);
    v7 = v3;
    v13 = (v6 + *v6);
    v8 = swift_task_alloc();
    *(v1 + 112) = v8;
    *v8 = v1;
    v8[1] = sub_2558839F0;
    v9 = *(v1 + 88);

    return (v13)(v9, v7, &off_2867A7550);
  }

  else
  {
    v11 = v5;
    sub_255965180();

    swift_willThrow();

    v12 = *(v1 + 8);

    return v12();
  }
}

uint64_t sub_2558839F0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_255883D14;
  }

  else
  {

    v3 = sub_255883B64;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_255883B64()
{
  v1 = v0[13];
  v2 = *(v0[10] + 32);
  v2(v0[12], v0[11], v0[8]);
  v0[4] = 0;
  v3 = [v1 commitTransactionWithError_];
  v4 = v0[4];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[8];
  if (v3)
  {
    v2(v0[5], v0[12], v0[8]);
    v8 = v4;
  }

  else
  {
    v10 = v0[10];
    v11 = v4;
    sub_255965180();

    swift_willThrow();
    (*(v10 + 8))(v6, v7);
  }

  sub_2558817A4(v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_255883D14()
{
  v1 = v0[13];

  v0[3] = 0;
  v2 = [v1 rollbackTransactionWithError_];
  v3 = v0[3];
  v4 = v0[15];
  v5 = v0[13];
  if (v2)
  {
    swift_willThrow();
    v6 = v3;
  }

  else
  {
    v7 = v3;
    sub_255965180();

    swift_willThrow();
  }

  sub_2558817A4(v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_255883E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_255888484;

  return sub_2558830B0(a1, a3, a4);
}

uint64_t sub_255883F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_255883FC8;

  return sub_2558836EC(a1, a3, a4, a5);
}

uint64_t sub_255883FC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2558840BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_255965240();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255884184);
}

uint64_t sub_255884184()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  sub_255882FD8();
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_255884280;
  v6 = *(v0 + 72);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return sub_255881B6C(v8, v6, &unk_25596E690, v3, v7);
}

uint64_t sub_255884280()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_255888480);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_255884434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_255965240();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2558844FC);
}

uint64_t sub_2558844FC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = *(v0 + 24);
  *(v0 + 80) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  sub_255882FD8();
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_255884600;
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  return sub_255881B6C(v8, v6, &unk_25596E6A8, v3, v7);
}

uint64_t sub_255884600()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_255888480);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2558847B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_255888484;

  return sub_25588487C(a1, a3, a4, a5);
}

uint64_t sub_25588487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v5[11] = *(a4 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255884964);
}

uint64_t sub_255884964()
{
  v1 = *(v0 + 80);
  if (*(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_closed) == 1)
  {
    *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_closed) = 0;
    v1 = *(v0 + 80);
  }

  v2 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readWriteStore;
  v3 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readWriteStore);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readWriteStore);
    goto LABEL_5;
  }

  v13 = objc_allocWithZone(KGDegasGraphStore);
  v14 = sub_2559651B0();
  v4 = [v13 initWithURL_];

  if (v4)
  {
    *(v0 + 16) = 0;
    v15 = [v4 openWithMode:134 error:v0 + 16];
    v16 = *(v0 + 16);
    if ((v15 & 1) == 0)
    {
      v19 = v16;
LABEL_15:
      sub_255965180();

      swift_willThrow();
      goto LABEL_16;
    }

    v17 = *(v1 + v2);
    *(v1 + v2) = v4;
    v18 = v16;
    v4 = v4;

    v3 = 0;
LABEL_5:
    *(v0 + 104) = v4;
    *(v0 + 24) = 0;
    v5 = v3;
    v6 = [v4 beginTransactionWithError_];
    v7 = *(v0 + 24);
    if (v6)
    {
      v8 = *(v0 + 56);
      v9 = v4;
      v22 = (v8 + *v8);
      v10 = swift_task_alloc();
      *(v0 + 112) = v10;
      *v10 = v0;
      v10[1] = sub_255884C50;
      v11 = *(v0 + 96);

      return (v22)(v11, v9, &off_2867A7550);
    }

    v19 = v7;
    goto LABEL_15;
  }

  sub_255887B10();
  swift_allocError();
  *v20 = 1;
  swift_willThrow();
LABEL_16:

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_255884C50()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_255884F34;
  }

  else
  {

    v3 = sub_255884DC4;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_255884DC4()
{
  v1 = v0[13];
  (*(v0[11] + 32))(v0[6], v0[12], v0[9]);
  v0[5] = 0;
  v2 = [v1 commitTransactionWithError_];
  v3 = v0[5];
  v4 = v0[13];
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v7 = v0[11];
    v8 = v0[9];
    v9 = v0[6];
    v10 = v3;
    sub_255965180();

    swift_willThrow();
    (*(v7 + 8))(v9, v8);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_255884F34()
{
  v1 = v0[13];

  v0[4] = 0;
  v2 = [v1 rollbackTransactionWithError_];
  v3 = v0[4];
  v4 = v0[15];
  v5 = v0[13];
  if (v2)
  {
    swift_willThrow();
    v6 = v3;
  }

  else
  {
    v7 = v3;
    sub_255965180();

    swift_willThrow();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_255885048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_255965240();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255885110);
}

uint64_t sub_255885110()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v9 = *(v0 + 24);
  sub_255965230();
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v9;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_255885210;
  v5 = *(v0 + 72);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  return sub_255881B6C(v7, v5, &unk_25596E630, v3, v6);
}

uint64_t sub_255885210()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2558853E8);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2558853E8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_25588544C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2559651D0();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 112);
  if (!*(v9 + 16) || (result = sub_255875BFC(a1), (v11 & 1) == 0))
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    type metadata accessor for GraphStoreManager(0);
    swift_allocObject();
    v15 = sub_255880C20(v8);
    v14 = 1;
    goto LABEL_6;
  }

  v12 = (*(v9 + 56) + 16 * result);
  v13 = v12[1];
  v14 = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    v15 = *v12;
    swift_retain_n();
LABEL_6:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_255879934(v15, v14, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 112) = v18;

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_2558855DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_255965240();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25588569C);
}

uint64_t sub_25588569C()
{
  v1 = v0[3];
  v4 = *(v1 + 112);
  v2 = (v1 + 112);
  v3 = v4;
  if (*(v4 + 16) && (v5 = sub_255875BFC(v0[2]), (v6 & 1) != 0))
  {
    v7 = (*(v3 + 56) + 16 * v5);
    v8 = *v7;
    v0[7] = *v7;
    v9 = v7[1];
    v10 = v0[2];
    if (v9 < 2)
    {

      sub_25588718C(v10);

      return MEMORY[0x2822009F8](sub_2558858D0);
    }

    else
    {
      v11 = v9 - 1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v2;
      *v2 = 0x8000000000000000;
      sub_255879934(v8, v11, v10, isUniquelyReferenced_nonNull_native);
      *v2 = v16;

      v13 = v0[1];

      return v13();
    }
  }

  else
  {
    sub_255965990();

    sub_2559651D0();
    sub_2558881D0(&qword_27F7D6310, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v15 = sub_255965BC0();
    MEMORY[0x259C431B0](v15);

    return sub_255965B00();
  }
}

uint64_t sub_2558858D0()
{
  sub_255965230();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_25588599C;
  v2 = v0[6];
  v3 = v0[7];

  return sub_2558AA784(sub_2558AA784, v2, &unk_25596E760, v3);
}

void sub_25588599C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    MEMORY[0x2822009F8](sub_255885AE8);
  }
}

uint64_t sub_255885B04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255885B6C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_2559651D0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_255965240();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255885C8C);
}

uint64_t sub_255885C8C()
{
  v17 = v0;
  sub_2558881D0(&qword_27F7D60C8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  if (sub_255965390())
  {
    (*(v0[7] + 16))(v0[8], v0[3], v0[6]);
    sub_255888134(0, &qword_27F7D62E0, 0x277D86200);
    v1 = sub_255965890();
    v2 = sub_255965810();
    v3 = os_log_type_enabled(v1, v2);
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    if (v3)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315138;
      v9 = sub_2559651C0();
      v11 = v10;
      (*(v5 + 8))(v4, v6);
      v12 = sub_2558AE848(v9, v11, &v16);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_255870000, v1, v2, "Swapping graph store from %s to same location, doing nothing", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x259C44F80](v8, -1, -1);
      MEMORY[0x259C44F80](v7, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v4, v6);
    }

    v14 = v0[1];

    return v14();
  }

  else
  {
    v13 = v0[4];
    v0[12] = sub_25588544C(v0[3]);
    v0[13] = sub_25588544C(v13);

    return MEMORY[0x2822009F8](sub_255885F1C);
  }
}

uint64_t sub_255885F1C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = swift_task_alloc();
  v0[14] = v3;
  v3[2] = v2;
  v3[3] = &unk_25596E6F8;
  v3[4] = v1;
  v0[2] = MEMORY[0x277D84F90];
  sub_2558881D0(&qword_27F7D62B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62C0, &qword_25596E698);
  sub_25588817C(&qword_27F7D62C8, &qword_27F7D62C0, &qword_25596E698);
  sub_255965930();
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_2558860D8;
  v5 = v0[11];

  return sub_2558AA784(sub_2558AA784, v5, &unk_25596E708, v3);
}

uint64_t sub_2558860D8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2558865E4;
  }

  else
  {

    v5 = sub_255886264;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_255886264()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_2558862FC;
  v2 = *(v0 + 24);

  return sub_2558855DC(v2);
}

uint64_t sub_2558862FC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 144) = v3;
  *v3 = v2;
  v3[1] = sub_255886454;
  v4 = *(v1 + 32);

  return sub_2558855DC(v4);
}

uint64_t sub_255886454()
{

  return MEMORY[0x2822009F8](sub_255886564);
}

uint64_t sub_255886564()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2558865E4()
{

  return MEMORY[0x2822009F8](sub_255886650);
}

uint64_t sub_255886650()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2558866DC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_255888484;

  return v6(a1);
}

uint64_t sub_2558867D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_2558867FC);
}

uint64_t sub_2558867FC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D62A0, &unk_25596FCF0);
  v6 = MEMORY[0x277D84950];
  sub_2559656A0();
  sub_255965860();

  v7 = *(v0 + 16);
  *(v0 + 72) = v7;
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_25588694C;
  v9 = *(v0 + 64);
  v10 = *(v0 + 24);

  return MEMORY[0x282200430](v10, v7, v9, v5, v6);
}

uint64_t sub_25588694C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_255886AC4;
  }

  else
  {
    v2 = sub_255886A60;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_255886A60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255886AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255886B28@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A8, &qword_25596E660);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  dispatch_suspend(a1);
  v13 = sub_255965680();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a4;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v15 = a1;

  result = sub_255886F48(0, 0, v12, &unk_25596E670, v14, a4);
  *a5 = result;
  return result;
}

uint64_t sub_255886C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 16) = a4;
  v9 = (a5 + *a5);
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_255886D6C;

  return v9(a1);
}

uint64_t sub_255886D6C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_255886EE4;
  }

  else
  {
    v2 = sub_255886E80;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_255886E80()
{
  dispatch_resume(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255886EE4()
{
  dispatch_resume(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255886F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A8, &qword_25596E660);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_25588797C(a3, &v24[-1] - v11);
  v13 = sub_255965680();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2558879EC(v12);
  }

  else
  {
    sub_255965670();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_255965650();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2559653F0();
      sub_255887A54(v20 + 32, v24);

      v21 = v24[0];
      sub_2558879EC(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2558879EC(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_25588718C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_255875BFC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25589695C();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_2559651D0();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_2558793A8(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_255887268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_255965240();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255887330);
}

uint64_t sub_255887330()
{
  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  sub_255965230();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v6;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_255887430;
  v4 = *(v0 + 56);

  return sub_2558AA784(sub_2558AA784, v4, &unk_25596E740, v2);
}

uint64_t sub_255887430()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_255887640;
  }

  else
  {
    v5 = sub_2558875DC;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2558875DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255887640()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2558876A4()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_255887700(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255888484;

  return sub_2558847B4(a1, v5, v7, v6, v4);
}