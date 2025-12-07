uint64_t lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for PartialRangeFrom<Int>);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PartialRangeFrom<A>, v1);
    lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A> = result;
  }

  return result;
}

uint64_t type metadata completion function for FeatureMatrixBuilder(uint64_t a1)
{
  v4[0] = &value witness table for Builtin.BridgeObject + 64;
  v4[1] = &value witness table for Builtin.BridgeObject + 64;
  v4[2] = &unk_3407D8;
  v1 = type metadata accessor for DenseMatrix(319, *(a1 + 16), *(a1 + 24));
  if (v2 <= 0x3F)
  {
    v4[3] = *(v1 - 8) + 64;
    v1 = 0;
    swift_initStructMetadata(a1, 0, 4, v4, a1 + 32);
  }

  return v1;
}

uint64_t initializeBufferWithCopyOfBuffer for FeatureMatrixBuilder(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = v4 + ((v3 + 16) & ~v3);
  }

  else
  {
    v5 = a1;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    v6 = *(a3 + 44);
    v10 = a1 + v6;
    v7 = a2 + v6;
    v8 = type metadata accessor for DenseMatrix(0, *(a3 + 16), *(a3 + 24));
    v11 = *(*(v8 - 8) + 16);

    v11(v10, v7, v8);
  }

  return v5;
}

uint64_t destroy for FeatureMatrixBuilder(void *a1, uint64_t a2)
{
  *a1;
  a1[1];
  v2 = a1 + *(a2 + 44);
  v3 = type metadata accessor for DenseMatrix(0, *(a2 + 16), *(a2 + 24));
  return (*(*(v3 - 8) + 8))(v2, v3);
}

uint64_t initializeWithCopy for FeatureMatrixBuilder(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a3 + 44);
  v7 = a1 + v3;
  v4 = a2 + v3;
  v5 = type metadata accessor for DenseMatrix(0, *(a3 + 16), *(a3 + 24));
  v8 = *(*(v5 - 8) + 16);

  v8(v7, v4, v5);
  return a1;
}

uint64_t *assignWithCopy for FeatureMatrixBuilder(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  *a1 = *a2;

  v4;
  v5 = a1[1];
  a1[1] = a2[1];

  v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 44);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for DenseMatrix(0, *(a3 + 16), *(a3 + 24));
  (*(*(v9 - 8) + 24))(v7, v8, v9);
  return a1;
}

uint64_t initializeWithTake for FeatureMatrixBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a3 + 44);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for DenseMatrix(0, *(a3 + 16), *(a3 + 24));
  (*(*(v6 - 8) + 32))(v4, v5, v6);
  return a1;
}

uint64_t *assignWithTake for FeatureMatrixBuilder(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;
  v5;
  v6 = a1[1];
  a1[1] = a2[1];
  v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 44);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = type metadata accessor for DenseMatrix(0, *(a3 + 16), *(a3 + 24));
  (*(*(v10 - 8) + 40))(v8, v9, v10);
  return a1;
}

uint64_t sub_DD83B(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*a1 & 0xFFFFFFFF00000001) == 0)
    {
      return (*a1 >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for DenseMatrix(0, *(a3 + 16), *(a3 + 24));
    return __swift_getEnumTagSinglePayload(a1 + *(a3 + 44), a2, v5);
  }

  return result;
}

uint64_t sub_DD8BB(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for DenseMatrix(0, *(a4 + 16), *(a4 + 24));
    return __swift_storeEnumTagSinglePayload(a1 + *(a4 + 44), a2, a2, v5);
  }

  return result;
}

_UNKNOWN **one-time initialization function for predictor()
{
  *&static JaccardSimilarity.predictor = &type metadata for JaccardSimilarityPredictor;
  result = &protocol witness table for JaccardSimilarityPredictor;
  *(&static JaccardSimilarity.predictor + 1) = &protocol witness table for JaccardSimilarityPredictor;
  return result;
}

{
  *&static PearsonSimilarity.predictor = &type metadata for PearsonSimilarityPredictor;
  result = &protocol witness table for PearsonSimilarityPredictor;
  *(&static PearsonSimilarity.predictor + 1) = &protocol witness table for PearsonSimilarityPredictor;
  return result;
}

{
  *&static CosineSimilarity.predictor = &type metadata for CosineSimilarityPredictor;
  result = &protocol witness table for CosineSimilarityPredictor;
  *(&static CosineSimilarity.predictor + 1) = &protocol witness table for CosineSimilarityPredictor;
  return result;
}

void *static JaccardSimilarity.buildItemStatistics(ratings:count:)(void *a1, uint64_t a2)
{
  ML14ItemStatisticsVySdG_Tt1g5 = _sSa9repeating5countSayxGx_SitcfC8CreateML14ItemStatisticsVySdG_Tt1g5(0, a2, 0.0);
  v17 = a1[3];
  v18 = a1[4];
  v19 = a1[5];
  outlined retain of [Int](&v17);
  outlined retain of [Int](&v18);
  outlined retain of ContiguousArray<Double>(&v19);
  _s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(a1);
  while (1)
  {
    specialized SparseMatrix.IndexedSequence.Iterator.next()();
    if (v5)
    {
      break;
    }

    v6 = v3;
    v7 = v4 & 0x7FFFFFFFFFFFFFFFLL;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(ML14ItemStatisticsVySdG_Tt1g5);
    v9 = 0.0;
    if (v7)
    {
      v9 = 1.0;
    }

    if (!isUniquelyReferenced_nonNull_native)
    {
      v20 = v9;
      v14 = specialized _ArrayBuffer._consumeAndCreateNew()(ML14ItemStatisticsVySdG_Tt1g5);
      v9 = v20;
      ML14ItemStatisticsVySdG_Tt1g5 = v14;
    }

    if (v6 < 0)
    {
      BUG();
    }

    if (v6 >= ML14ItemStatisticsVySdG_Tt1g5[2])
    {
      BUG();
    }

    v10 = 2 * v6;
    *&ML14ItemStatisticsVySdG_Tt1g5[v10 + 5] = v9 + *&ML14ItemStatisticsVySdG_Tt1g5[v10 + 5];
    v11 = ML14ItemStatisticsVySdG_Tt1g5[v10 + 4];
    v12 = __OFADD__(1, v11);
    v13 = v11 + 1;
    if (v12)
    {
      BUG();
    }

    ML14ItemStatisticsVySdG_Tt1g5[v10 + 4] = v13;
  }

  *&v16[6] = *&v16[15];
  *&v16[4] = *&v16[13];
  *&v16[2] = *&v16[11];
  *v16 = *&v16[9];
  outlined release of SparseMatrix<Double>.MajorCollection(v16);
  return ML14ItemStatisticsVySdG_Tt1g5;
}

void static JaccardSimilarityPredictor.updatePrediction(_:itemScore:neighborScore:)(double *a1, double a2, double a3)
{
  if (a2 != 0.0)
  {
    *a1 = a3 + *a1;
  }
}

double static JaccardSimilarityPredictor.finalizePrediction(_:userRatingCount:)(uint64_t a1, double a2)
{
  v2 = 1;
  if (a1 >= 2)
  {
    v2 = a1;
  }

  return a2 / v2;
}

uint64_t static MLDataColumn.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.== infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.== infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.== infix(_:_:));
}

uint64_t static MLDataColumn.!= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.!= infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.!= infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.!= infix(_:_:));
}

uint64_t static MLDataColumn.> infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.> infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.> infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.> infix(_:_:));
}

uint64_t static MLDataColumn.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.< infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.< infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.< infix(_:_:));
}

uint64_t static MLDataColumn.>= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.>= infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.>= infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.>= infix(_:_:));
}

uint64_t static MLDataColumn.<= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.<= infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.<= infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.<= infix(_:_:));
}

uint64_t static MLDataColumn.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t *))
{
  v17 = a5;
  v6 = v5;
  v7 = *a2;
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  v13 = *a1;
  v14 = v8;
  v15 = v7;
  v16 = v9;
  outlined copy of Result<_DataTable, Error>(v13, v8);
  outlined copy of Result<_DataTable, Error>(v7, v9);
  v17(&v13, &v15);
  outlined consume of Result<_DataTable, Error>(v15, v16);
  outlined consume of Result<_DataTable, Error>(v13, v14);
  result = v11;
  *v6 = v11;
  *(v6 + 8) = v12;
  return result;
}

{
  v18 = v5;
  v20 = a2;
  v19 = a5;
  v8 = *(a1 + 8);
  v16 = *a1;
  v7 = v16;
  v17 = v8;
  v13[3] = a3;
  v13[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, v20, a3);
  outlined copy of Result<_DataTable, Error>(v7, v8);
  v19(&v16, v13);
  outlined consume of Result<_DataTable, Error>(v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  result = v14;
  v11 = v15;
  v12 = v18;
  *v18 = v14;
  *(v12 + 8) = v11;
  return result;
}

{
  v18 = v5;
  v19 = a5;
  v7 = *a2;
  v8 = *(a2 + 8);
  v13[3] = a3;
  v13[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  v16 = v7;
  v17 = v8;
  outlined copy of Result<_DataTable, Error>(v7, v8);
  v19(v13, &v16);
  outlined consume of Result<_DataTable, Error>(v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  result = v14;
  v11 = v15;
  v12 = v18;
  *v18 = v14;
  *(v12 + 8) = v11;
  return result;
}

uint64_t static MLDataColumn<>./ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v8 = *a1;
  v9 = v3;
  v10 = v2;
  v11 = v4;
  outlined copy of Result<_DataTable, Error>(v8, v3);
  outlined copy of Result<_DataTable, Error>(v2, v4);
  static MLUntypedColumn./ infix(_:_:)(&v8, &v10);
  outlined consume of Result<_DataTable, Error>(v10, v11);
  outlined consume of Result<_DataTable, Error>(v8, v9);
  _s8CreateML15MLUntypedColumnV3map2toAA06MLDataD0VyxGxm_tAA0G16ValueConvertibleRzlFSi_Tt0B5(v6, v7);
  return outlined consume of Result<_DataTable, Error>(v6, v7);
}

{
  v2 = *a2;
  v3 = *(a2 + 8);
  v7[3] = &type metadata for Int;
  v7[4] = &protocol witness table for Int;
  v7[0] = a1;
  v10 = v2;
  v11 = v3;
  outlined copy of Result<_DataTable, Error>(v2, v3);
  static MLUntypedColumn./ infix(_:_:)(v7, &v10);
  outlined consume of Result<_DataTable, Error>(v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  v4 = v8;
  v5 = v9;
  _s8CreateML15MLUntypedColumnV3map2toAA06MLDataD0VyxGxm_tAA0G16ValueConvertibleRzlFSi_Tt0B5(v8, v9);
  return outlined consume of Result<_DataTable, Error>(v4, v5);
}

{
  v2 = *(a1 + 8);
  v9 = *a1;
  v10 = v2;
  v6[3] = &type metadata for Int;
  v6[4] = &protocol witness table for Int;
  v6[0] = a2;
  outlined copy of Result<_DataTable, Error>(v9, v2);
  static MLUntypedColumn./ infix(_:_:)(&v9, v6);
  outlined consume of Result<_DataTable, Error>(v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  v3 = v7;
  v4 = v8;
  _s8CreateML15MLUntypedColumnV3map2toAA06MLDataD0VyxGxm_tAA0G16ValueConvertibleRzlFSi_Tt0B5(v7, v8);
  return outlined consume of Result<_DataTable, Error>(v3, v4);
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn./ infix(_:_:));
}

uint64_t _s8CreateML15MLUntypedColumnV3map2toAA06MLDataD0VyxGxm_tAA0G16ValueConvertibleRzlFSi_Tt0B5(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v20 = swift_allocError(&type metadata for MLCreateError, v4, 0, 0);
  *v5 = 0xD00000000000001ALL;
  *(v5 + 8) = "', but got size " + 0x8000000000000000;
  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  *(v5 + 48) = 1;
  if (a2)
  {
    v21 = v3;
    v19 = a1;
    swift_errorRetain(a1);
    outlined copy of Result<_DataTable, Error>(a1, 1);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v7 = _getErrorEmbeddedNSError<A>(_:)(&v19, v6, &protocol self-conformance witness table for Error);
    if (v7)
    {
      v8 = v7;
      outlined consume of Result<_DataTable, Error>(a1, 1);
    }

    else
    {
      v8 = swift_allocError(v6, &protocol self-conformance witness table for Error, 0, 0);
      *v11 = a1;
    }

    v22 = 1;
    v20;
    result = outlined consume of Result<_DataTable, Error>(a1, 1);
    v13 = v22;
  }

  else
  {
    v9 = *(*(a1 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(a1, 0);
    v10 = specialized handling<A, B, C, D>(_:_:_:_:)(v9, 0, 0);
    v14 = v10;
    v21 = v3;
    if (!v10)
    {
      BUG();
    }

    v13 = 0;
    v15 = type metadata accessor for CMLColumn();
    v16 = swift_allocObject(v15, 24, 7);
    *(v16 + 16) = v14;
    v17 = type metadata accessor for _UntypedColumn();
    v8 = swift_allocObject(v17, 24, 7);
    *(v8 + 16) = v16;
    v20;
    result = outlined consume of Result<_DataTable, Error>(a1, 0);
  }

  v18 = v21;
  *v21 = v8;
  *(v18 + 8) = v13 & 1;
  return result;
}

uint64_t static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.+ infix(_:_:));
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.+ infix(_:_:));
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.+ infix(_:_:));
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2);
}

uint64_t static MLDataColumn<>.- infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.- infix(_:_:));
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.- infix(_:_:));
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.- infix(_:_:));
}

{
  return static MLDataColumn<>.- infix(_:_:)(a1, a2);
}

uint64_t static MLDataColumn<>.* infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.* infix(_:_:));
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.* infix(_:_:));
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.* infix(_:_:));
}

{
  return static MLDataColumn<>.* infix(_:_:)(a1, a2);
}

uint64_t static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t *))
{
  v5 = v3;
  v6 = *a2;
  v7 = *(a2 + 8);
  v10[3] = &type metadata for Int;
  v10[4] = &protocol witness table for Int;
  v10[0] = a1;
  v13 = v6;
  v14 = v7;
  outlined copy of Result<_DataTable, Error>(v6, v7);
  a3(v10, &v13);
  outlined consume of Result<_DataTable, Error>(v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  result = v11;
  v9 = v12;
  *v5 = v11;
  *(v5 + 8) = v9;
  return result;
}

uint64_t static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, void *))
{
  v5 = v3;
  v6 = *(a1 + 8);
  v12 = *a1;
  v13 = v6;
  v9[3] = &type metadata for Int;
  v9[4] = &protocol witness table for Int;
  v9[0] = a2;
  outlined copy of Result<_DataTable, Error>(v12, v6);
  a3(&v12, v9);
  outlined consume of Result<_DataTable, Error>(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  result = v10;
  v8 = v11;
  *v5 = v10;
  *(v5 + 8) = v8;
  return result;
}

uint64_t static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, double a2)
{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn.+ infix(_:_:), a2);
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn.+ infix(_:_:), a2);
}

uint64_t static MLDataColumn<>.- infix(_:_:)(uint64_t a1, double a2)
{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn.- infix(_:_:), a2);
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn.- infix(_:_:), a2);
}

uint64_t static MLDataColumn<>.* infix(_:_:)(uint64_t a1, double a2)
{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn.* infix(_:_:), a2);
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn.* infix(_:_:), a2);
}

uint64_t static MLDataColumn<>./ infix(_:_:)(uint64_t a1, double a2)
{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn./ infix(_:_:), a2);
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn./ infix(_:_:), a2);
}

uint64_t static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, void (*a2)(double *, uint64_t *), double a3)
{
  v5 = v3;
  v6 = *a1;
  v7 = *(a1 + 8);
  *&v10[3] = &type metadata for Double;
  *&v10[4] = &protocol witness table for Double;
  v10[0] = a3;
  v13 = v6;
  v14 = v7;
  outlined copy of Result<_DataTable, Error>(v6, v7);
  a2(v10, &v13);
  outlined consume of Result<_DataTable, Error>(v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  result = v11;
  v9 = v12;
  *v5 = v11;
  *(v5 + 8) = v9;
  return result;
}

uint64_t static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, void (*a2)(uint64_t *, double *), double a3)
{
  v5 = v3;
  v6 = *(a1 + 8);
  v12 = *a1;
  v13 = v6;
  *&v9[3] = &type metadata for Double;
  *&v9[4] = &protocol witness table for Double;
  v9[0] = a3;
  outlined copy of Result<_DataTable, Error>(v12, v6);
  a2(&v12, v9);
  outlined consume of Result<_DataTable, Error>(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  result = v10;
  v8 = v11;
  *v5 = v10;
  *(v5 + 8) = v8;
  return result;
}

uint64_t static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t *))
{
  v15 = a3;
  v4 = v3;
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  v11 = *a1;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  outlined copy of Result<_DataTable, Error>(v11, v6);
  outlined copy of Result<_DataTable, Error>(v5, v7);
  v15(&v11, &v13);
  outlined consume of Result<_DataTable, Error>(v13, v14);
  outlined consume of Result<_DataTable, Error>(v11, v12);
  result = v9;
  *v4 = v9;
  *(v4 + 8) = v10;
  return result;
}

uint64_t MLActivityClassifier.DataSource.gatherAnnotatedFeatures(featureColumns:labelColumn:recordingFileColumn:)(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v14 = a4;
  v15 = a3;
  v17 = v5;
  v16 = v7;
  v9 = *(*(type metadata accessor for MLActivityClassifier.DataSource.Columns(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  result = MLActivityClassifier.DataSource.gatherData(featureColumns:labelColumn:recordingFileColumn:)(a1, a2, v15, v14, a5);
  if (!v6)
  {
    MLActivityClassifier.DataSource.Columns.buildDataFrame()();
    return outlined destroy of MLActivityClassifier.ModelParameters(&v13, type metadata accessor for MLActivityClassifier.DataSource.Columns);
  }

  return result;
}

uint64_t MLActivityClassifier.DataSource.labeledSensorData(featureColumns:labelColumn:recordingFileColumn:)(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, __m128 a6)
{
  v22 = a4;
  v27 = v6;
  v23 = v7;
  v24 = v8;
  v25 = a5;
  v26 = a1;
  v11 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v28 = &v22;
  v14 = *(*(type metadata accessor for MLActivityClassifier.DataSource.Columns(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  if (!a3)
  {
    a2 = 0x6C6562616CLL;
  }

  v17 = 0xE500000000000000;
  if (a3)
  {
    v17 = a3;
  }

  v29 = &v22;
  v18 = v23;
  MLActivityClassifier.DataSource.gatherData(featureColumns:labelColumn:recordingFileColumn:)(v26, a2, v17, v22, v25);
  result = v17;
  if (!v18)
  {
    v20 = v28;
    v21 = v29;
    MLActivityClassifier.DataSource.Columns.buildDataFrame()();
    MLDataTable.init(_:convertArraysToShapedArrays:)(v20, 0, a6);
    return outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLActivityClassifier.DataSource.Columns);
  }

  return result;
}

uint64_t MLActivityClassifier.DataSource.stratifiedSplit(proportions:seed:featureColumns:labelColumn:recordingFileColumn:)(__int128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, __m128 xmm0_0, unint64_t a7)
{
  v141 = v8;
  v144 = a2;
  v146 = a1;
  v14 = ((a5 >> 56) & 0xF);
  v15 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v14 = v15;
  }

  v16 = a4;
  if (v14)
  {
    v14 = a5;
  }

  else
  {
    v16 = 0;
  }

  v17 = (HIBYTE(a7) & 0xF);
  if ((a7 & 0x2000000000000000) == 0)
  {
    v17 = (a6 & 0xFFFFFFFFFFFFLL);
  }

  v18 = a6;
  if (v17)
  {
    v17 = a7;
  }

  else
  {
    v18 = 0;
  }

  result = MLActivityClassifier.DataSource.labeledSensorData(featureColumns:labelColumn:recordingFileColumn:)(a3, v16, v14, v18, v17, xmm0_0);
  v20 = v9;
  if (v9)
  {
    return result;
  }

  v151._object = a5;
  v151._countAndFlagsBits = a4;
  v148._countAndFlagsBits = a6;
  v21 = v155;
  LOBYTE(v154._countAndFlagsBits) = v156;
  if (v156)
  {
    outlined copy of Result<_DataTable, Error>(v155, 1);
    v22 = tc_v1_flex_list_create(0);
    if (!v22)
    {
      BUG();
    }

    v23 = v22;
    v24 = type metadata accessor for CMLSequence();
    v25 = swift_allocObject(v24, 25, 7);
    v25[2] = v23;
    *(v25 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v21, 1);
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v155, 0);
    _DataTable.columnNames.getter();
    v20 = 0;
    outlined consume of Result<_DataTable, Error>(v155, 0);
    v25 = countAndFlagsBits;
  }

  v161._countAndFlagsBits = v148._countAndFlagsBits;
  v161._object = a7;
  v26 = alloca(24);
  v27 = alloca(32);
  v136 = &v161;
  v28 = v20;
  v29 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v134, v25);
  v157 = v28;

  if ((v29 & 1) == 0)
  {
    v34 = "Unable to map to type Int." + 0x8000000000000000;
    v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
    v37 = 0xD00000000000001CLL;
LABEL_50:
    *v36 = v37;
    *(v36 + 8) = v34;
    *(v36 + 16) = 0;
    *(v36 + 32) = 0;
    *(v36 + 48) = 0;
    swift_willThrow();
    return outlined consume of Result<_DataTable, Error>(v155, v156);
  }

  if (LOBYTE(v154._countAndFlagsBits))
  {
    outlined copy of Result<_DataTable, Error>(v21, 1);
    v30 = tc_v1_flex_list_create(0);
    if (!v30)
    {
      BUG();
    }

    v31 = v30;
    v32 = type metadata accessor for CMLSequence();
    v33 = swift_allocObject(v32, 25, 7);
    v33[2] = v31;
    *(v33 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v21, 1);
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v21, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v21, 0);
    v33 = countAndFlagsBits;
  }

  v161 = v151;
  v38 = alloca(24);
  v39 = alloca(24);
  v136 = &v161;
  v40 = v157;
  v41 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v134, v33);
  v148._object = v40;

  if ((v41 & 1) == 0)
  {
    v34 = "Invalid recordingFileColumn." + 0x8000000000000000;
    v72 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v72, 0, 0);
    v37 = 0xD000000000000014;
    goto LABEL_50;
  }

  v161._countAndFlagsBits = v21;
  LOBYTE(v161._object) = v154._countAndFlagsBits;
  v42._countAndFlagsBits = v148._countAndFlagsBits;
  v42._object = a7;
  MLDataTable.subscript.getter(v42);
  v137 = countAndFlagsBits;
  v138 = object;
  MLUntypedColumn.dropDuplicates()();
  outlined consume of Result<_DataTable, Error>(v137, v138);
  countAndFlagsBits = v161._countAndFlagsBits;
  object = v161._object;
  v43 = Array<A>.init(_:)(&countAndFlagsBits, *xmm0_0.i64);
  v44 = v43[2];

  v139 = v43;
  ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5(v43, 0, v44);
  v153 = _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5(_swiftEmptyArrayStorage, v44);
  v152 = _sSa9repeating5countSayxGx_SitcfCSaySSG_Tt1g5(_swiftEmptyArrayStorage, v44);
  countAndFlagsBits = v21;
  object = v154._countAndFlagsBits;
  v42._countAndFlagsBits = v148._countAndFlagsBits;
  v42._object = a7;
  MLDataTable.subscript.getter(v42);
  countAndFlagsBits = v161._countAndFlagsBits;
  object = v161._object;
  v45 = Array<A>.init(_:)(&countAndFlagsBits, *xmm0_0.i64);
  v145 = v45[2];
  v140 = v45;
  if (v145)
  {
    v46 = (v45 + 6);
    v154._countAndFlagsBits = 0;
    while (1)
    {
      v47 = ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5;
      if (!ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5[2])
      {
        BUG();
      }

      v48 = *(v46 - 2);
      v49 = *(v46 - 1);
      v157 = v46;
      v50 = *v46;
      outlined copy of MLDataValue(v48, v49, *v46);
      outlined copy of MLDataValue(v48, v49, v50);
      *&v51 = v48;
      *(&v51 + 1) = v49;
      specialized __RawDictionaryStorage.find<A>(_:)(v51, v50, *xmm0_0.i64);
      if ((v53 & 1) == 0)
      {
        outlined consume of MLDataValue(v48, v49, v50);
        BUG();
      }

      v54 = *(v47[7] + 8 * v52);
      v142 = v49;
      outlined consume of MLDataValue(v48, v49, v50);
      v55 = v153;
      if (!swift_isUniquelyReferenced_nonNull_native(v153))
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew()(v55);
      }

      if (v54 < 0)
      {
        BUG();
      }

      if (v54 >= v55[2])
      {
        BUG();
      }

      v149 = v48;
      v150 = v50;
      v56 = v54;
      v57 = v55[v54 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v57);
      v59 = v56;
      v55[v56 + 4] = v57;
      v153 = v55;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
        v55[v56 + 4] = v57;
      }

      v60 = v57[2];
      if (v57[3] >> 1 <= v60)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57[3] >= 2uLL, v60 + 1, 1, v57);
        v153[v59 + 4] = v57;
      }

      v57[2] = v60 + 1;
      v61 = v154._countAndFlagsBits;
      v57[v60 + 4] = v154._countAndFlagsBits;
      v62 = v61;
      specialized MLDataTable.subscript.getter(v151, v155, v156);
      v63 = countAndFlagsBits;
      v64 = object;
      if (object)
      {
        goto LABEL_39;
      }

      outlined copy of Result<_DataTable, Error>(countAndFlagsBits, 0);
      _UntypedColumn.valueAtIndex(index:)(v62, *xmm0_0.i64);
      outlined consume of Result<_DataTable, Error>(v63, 0);
      v65 = v161._countAndFlagsBits;
      if (v162 != 2)
      {
        break;
      }

      v158 = v161._object;
      v64 = 0;
LABEL_40:
      outlined consume of Result<_DataTable, Error>(v63, v64);
      v66 = v152;
      if (!swift_isUniquelyReferenced_nonNull_native(v152))
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew()(v66);
      }

      if (v59 >= v66[2])
      {
        BUG();
      }

      v143 = v65;
      v67 = v66[v59 + 4];
      v68 = swift_isUniquelyReferenced_nonNull_native(v67);
      v152 = v66;
      v66[v59 + 4] = v67;
      if (!v68)
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67[2] + 1, 1, v67);
        v152[v59 + 4] = v67;
      }

      v69 = v67[2];
      if (v67[3] >> 1 <= v69)
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v67[3] >= 2uLL, v69 + 1, 1, v67);
        v152[v59 + 4] = v67;
      }

      v70 = v154._countAndFlagsBits + 1;
      v67[2] = v69 + 1;
      v71 = 2 * v69;
      v67[v71 + 4] = v143;
      v67[v71 + 5] = v158;
      outlined consume of MLDataValue(v149, v142, v150);
      v46 = (v157 + 3);
      v154._countAndFlagsBits = v70;
      if (v145 == v70)
      {
        goto LABEL_53;
      }
    }

    outlined consume of MLDataValue(v161._countAndFlagsBits, v161._object, v162);
LABEL_39:
    v65 = 0;
    v158 = 0xE000000000000000;
    goto LABEL_40;
  }

LABEL_53:
  ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5;
  v140;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v73, v135);
  *(inited + 16) = 3;
  *(inited + 24) = 6;
  *(inited + 32) = 0x73656369646E69;
  *(inited + 40) = 0xE700000000000000;
  v161._countAndFlagsBits = v153;
  v75 = alloca(24);
  v76 = alloca(32);
  v136 = &v161;

  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 56) = v77 & 1;
  v161._countAndFlagsBits;
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  v78 = v152;
  v161._countAndFlagsBits = v152;
  v79 = alloca(24);
  v80 = alloca(32);
  v136 = &v161;

  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(_s8CreateML15MLUntypedColumnVyACxcSTRzAA22MLDataValueConvertible7ElementRpzlufcAA08_UntypedD0CyKXEfU_SaySaySSGG_TG5TA_0);
  *(inited + 88) = v81 & 1;
  v161._countAndFlagsBits;
  strcpy((inited + 96), "recordingFile");
  *(inited + 110) = -4864;
  v161._countAndFlagsBits = v139;
  v82 = alloca(24);
  v83 = alloca(32);
  v136 = &v161;
  *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 120) = v84 & 1;
  v161._countAndFlagsBits;
  v85 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  v86 = v148._object;
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v85);
  if (v86)
  {
    v153;
    v78;
    return outlined consume of Result<_DataTable, Error>(v155, v156);
  }

  v87 = v144;
  if (v144 < 0)
  {
    BUG();
  }

  v148._object = v161._countAndFlagsBits;
  v88 = v161._object;
  v89 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v89, 136, 7);
  countAndFlagsBits = MersenneTwisterGenerator.init(seed:)(v87);
  specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(v146, &countAndFlagsBits, v148._object, v88, 0x6C6562616CLL, 0xE500000000000000, *xmm0_0.i64);
  LODWORD(v146) = v88;
  v154._countAndFlagsBits = 0;

  v158 = v161._countAndFlagsBits;
  LOBYTE(v145) = v161._object;
  countAndFlagsBits = v155;
  object = v156;
  v90._countAndFlagsBits = v148._countAndFlagsBits;
  v90._object = a7;
  MLDataTable.subscript.getter(v90);
  v91 = v161._countAndFlagsBits;
  v92 = v161._object;
  if (LOBYTE(v161._object))
  {
    v93 = -1;
  }

  else
  {

    v93 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v91, 0);
  }

  outlined consume of Result<_DataTable, Error>(v91, v92);
  v157 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v93);
  countAndFlagsBits = v158;
  object = v145;
  LODWORD(v151._countAndFlagsBits) = v145;
  outlined copy of Result<_DataTable, Error>(v158, v145);
  v94._countAndFlagsBits = 0x73656369646E69;
  v94._object = 0xE700000000000000;
  MLDataTable.subscript.getter(v94);
  outlined consume of Result<_DataTable, Error>(countAndFlagsBits, object);
  v95 = v161._countAndFlagsBits;
  if (LOBYTE(v161._object) == 1)
  {
    outlined consume of Result<_DataTable, Error>(v161._countAndFlagsBits, 1);
LABEL_105:
    BUG();
  }

  v96 = CMLColumn.size.getter();
  outlined consume of Result<_DataTable, Error>(v95, 0);
  outlined consume of Result<_DataTable, Error>(v95, 0);
  v144 = v96;
  v97 = v96 == 0;
  v98 = v153;
  if (v96 < 0)
  {
    goto LABEL_105;
  }

  v99 = v152;
  v100 = v154._countAndFlagsBits;
  v101 = v158;
  if (!v97)
  {
    v151._object = 0;
    while (!v145)
    {
      v102 = v101[2];
      outlined copy of Result<_DataTable, Error>(v101, 0);

      v103 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v102, 0x73656369646E69, 0xE700000000000000);
      v154._countAndFlagsBits = v100;
      if (v100)
      {
        v154._countAndFlagsBits;

LABEL_101:
        v161._countAndFlagsBits = 0;
        v161._object = 0xE000000000000000;
        _StringGuts.grow(_:)(34);
        v161._object;
        v161._countAndFlagsBits = 0xD00000000000001FLL;
        v161._object = "ml.activityclassifier" + 0x8000000000000000;
        v130._countAndFlagsBits = 0x73656369646E69;
        v130._object = 0xE700000000000000;
        String.append(_:)(v130);
        v130._object = 0xE100000000000000;
        v130._countAndFlagsBits = 34;
        String.append(_:)(v130);
        v154 = v161;
        v131 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        v132 = swift_allocError(&type metadata for MLCreateError, v131, 0, 0);
        *v133 = v154;
        *(v133 + 16) = 0;
        *(v133 + 32) = 0;
        *(v133 + 48) = 1;
        outlined consume of Result<_DataTable, Error>(v158, v151._countAndFlagsBits);
        outlined consume of Result<_DataTable, Error>(v132, 1);
LABEL_102:
        BUG();
      }

      v104 = v103;

      outlined consume of Result<_DataTable, Error>(v101, 0);
      v105 = type metadata accessor for _UntypedColumn();
      v106 = swift_allocObject(v105, 24, 7);
      *(v106 + 16) = v104;

      _UntypedColumn.valueAtIndex(index:)(v151._object, *xmm0_0.i64);
      outlined consume of Result<_DataTable, Error>(v106, 0);
      outlined consume of Result<_DataTable, Error>(v106, 0);
      if (v162 != 3)
      {
        goto LABEL_102;
      }

      ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5 = v161._object;
      v107 = v161._countAndFlagsBits;

      if (CMLSequence.size.getter())
      {
        v108 = 0;
        v143 = v107;
        while (1)
        {
          v109 = v154._countAndFlagsBits;
          v110 = CMLSequence.value(at:)(v108);
          v154._countAndFlagsBits = v109;
          if (v109)
          {
            swift_unexpectedError(v154._countAndFlagsBits, "CreateML/SequenceType.swift", 27, 1, 36);
            BUG();
          }

          MLDataValue.init(_:)(v110, *xmm0_0.i64);
          v142 = v161._object;
          v111 = v161._countAndFlagsBits;
          v112 = v162;
          v150 = v162;
          outlined copy of MLDataValue(v161._countAndFlagsBits, v161._object, v162);
          v149 = v111;
          outlined consume of MLDataValue(v111, v142, v150);
          if (v108 >= CMLSequence.size.getter())
          {
            BUG();
          }

          if (v112)
          {
            BUG();
          }

          v113 = v108;
          v114 = v158;
          outlined copy of Result<_DataTable, Error>(v158, 0);
          v115._countAndFlagsBits = 0x6F69746974726170;
          v115._object = 0xE90000000000006ELL;
          specialized MLDataTable.subscript.getter(v115, v114, v151._countAndFlagsBits);
          outlined consume of Result<_DataTable, Error>(v114, 0);
          v116 = countAndFlagsBits;
          if (object)
          {
            break;
          }

          outlined copy of Result<_DataTable, Error>(countAndFlagsBits, 0);
          _UntypedColumn.valueAtIndex(index:)(v151._object, *xmm0_0.i64);
          outlined consume of Result<_DataTable, Error>(v116, 0);
          v119 = v161._countAndFlagsBits;
          if (v162)
          {
            outlined consume of MLDataValue(v161._countAndFlagsBits, v161._object, v162);
            v117 = v116;
            v118 = 0;
            goto LABEL_75;
          }

          outlined consume of Result<_DataTable, Error>(v116, 0);
          v120 = v157;
          if (!swift_isUniquelyReferenced_nonNull_native(v157))
          {
LABEL_82:
            v120 = specialized _ArrayBuffer._consumeAndCreateNew()(v120);
          }

LABEL_77:
          if (v149 < 0)
          {
            BUG();
          }

          if (v149 >= v120[2])
          {
            BUG();
          }

          v157 = v120;
          v120[v149 + 4] = v119;
          v108 = v113 + 1;
          v107 = v143;
          if (v113 + 1 == CMLSequence.size.getter())
          {
            goto LABEL_83;
          }
        }

        v117 = countAndFlagsBits;
        v118 = 1;
LABEL_75:
        outlined consume of Result<_DataTable, Error>(v117, v118);
        v120 = v157;
        v119 = 0;
        if (!swift_isUniquelyReferenced_nonNull_native(v157))
        {
          goto LABEL_82;
        }

        v119 = 0;
        goto LABEL_77;
      }

LABEL_83:
      v121 = v151._object + 1;

      outlined consume of MLDataValue(v107, ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5, 3);
      v151._object = v121;
      v97 = v121 == v144;
      v99 = v152;
      v98 = v153;
      v100 = v154._countAndFlagsBits;
      v101 = v158;
      if (v97)
      {
        goto LABEL_84;
      }
    }

    swift_willThrow();
    outlined copy of Result<_DataTable, Error>(v101, 1);
    goto LABEL_101;
  }

LABEL_84:
  v154._countAndFlagsBits = v100;
  v98;
  v99;
  v161._countAndFlagsBits = v157;
  v122 = alloca(24);
  v123 = alloca(32);
  v136 = &v161;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  v126 = v125;
  v161._countAndFlagsBits;
  MLDataTable.willMutate()();
  v161._countAndFlagsBits = ML14_UntypedColumnC_s5Error_pTt1g5;
  LOBYTE(v161._object) = v126 & 1;
  LODWORD(v157) = v126;
  outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v126);
  MLDataTable.addImpl(newColumn:named:)(&v161, 0x6F69746974726170, 0xE90000000000006ELL);
  outlined consume of Result<_DataTable, Error>(v161._countAndFlagsBits, v161._object);
  v127 = v156;
  if (v156)
  {
    outlined consume of Result<_DataTable, Error>(v148._object, v146);
    outlined consume of Result<_DataTable, Error>(v158, v151._countAndFlagsBits);
    v128 = v155;
  }

  else
  {
    v128 = v155;
    outlined copy of Result<_DataTable, Error>(v155, 0);
    _DataTable.columnNamesDidChange()();
    outlined consume of Result<_DataTable, Error>(v128, 0);
    outlined consume of Result<_DataTable, Error>(v148._object, v146);
    outlined consume of Result<_DataTable, Error>(v158, v151._countAndFlagsBits);
  }

  v129 = v141;
  outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v157);
  *v129 = v128;
  *(v129 + 8) = v127;
  outlined copy of Result<_DataTable, Error>(v128, v127);
  return outlined consume of Result<_DataTable, Error>(v128, v127);
}

uint64_t specialized _UntypedColumn.init<A>(_:)(uint64_t a1, double a2)
{
  v55 = v2;
  v4 = tc_v1_flex_list_create(0);
  if (!v4)
  {
    BUG();
  }

  v5 = v4;
  v6 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v6, v45);
  *(inited + 16) = v5;
  v50 = inited;
  *(inited + 24) = 1;
  v9 = *(a1 + 16);
  v48 = v3;
  v49 = a1;
  if (v9)
  {
    v10 = (a1 + 48);
    LOBYTE(v8) = 6;
    v53 = v8;
    v11 = v55;
    while (1)
    {
      v46 = v9;
      v12 = *(v10 - 2);
      v13 = *v10;
      v52 = *(v10 - 1);
      v51 = v13;
      switch(v13)
      {
        case 0:
        case 1:
          goto LABEL_9;
        case 2:
        case 4:

          goto LABEL_9;
        case 3:

          goto LABEL_9;
        case 5:
          v12;
LABEL_9:
          if (v53 == 6)
          {
            switch(v13)
            {
              case 0:
                goto LABEL_13;
              case 1:
                goto LABEL_25;
              case 2:
                goto LABEL_20;
              case 3:
                goto LABEL_23;
              case 4:
                goto LABEL_18;
              case 5:
                goto LABEL_29;
            }
          }

          break;
        case 6:
          v55 = v11;
          type metadata accessor for CMLFeatureValue();
          v14 = CMLFeatureValue.__allocating_init()();
          goto LABEL_16;
      }

      switch(v13)
      {
        case 0:
          if (v53)
          {
            goto LABEL_40;
          }

LABEL_13:
          v15 = v11;
          v16 = specialized handling<A, B>(_:_:)(v12);
          if (v11)
          {
            v43 = 100;
            goto LABEL_51;
          }

          v17 = v16;
          v55 = 0;
          if (!v16)
          {
            BUG();
          }

          v53 = 0;
          v18 = type metadata accessor for CMLFeatureValue();
          swift_allocObject(v18, 25, 7);
          v14 = CMLFeatureValue.init(rawValue:ownsValue:)(v17, 1);
LABEL_16:
          v19 = v14;
          goto LABEL_31;
        case 1:
          if (v53 != 1)
          {
            goto LABEL_40;
          }

LABEL_25:
          a2 = *&v12;
          v15 = v11;
          v24 = specialized handling<A, B>(_:_:)();
          if (v11)
          {
            v43 = 153;
LABEL_51:
            v44 = v15;
LABEL_52:
            swift_unexpectedError(v44, "CreateML/MLDataValueConvertible.swift", 37, 1, v43);
            BUG();
          }

          v25 = v24;
          v55 = 0;
          if (!v24)
          {
            BUG();
          }

          v26 = type metadata accessor for CMLFeatureValue();
          swift_allocObject(v26, 25, 7);
          v20 = CMLFeatureValue.init(rawValue:ownsValue:)(v25, 1);
          v19 = v20;
          LOBYTE(v20) = 1;
          goto LABEL_30;
        case 2:
          if (v53 != 2)
          {
            goto LABEL_40;
          }

LABEL_20:
          type metadata accessor for CMLFeatureValue();
          v55 = v11;
          v21 = v12;
          v22 = v52;
          swift_bridgeObjectRetain_n(v52, 2);
          v47 = v21;
          v23 = v55;
          CMLFeatureValue.__allocating_init(_:)(v21, v22);
          v55 = v23;
          if (!v23)
          {
            JUMPOUT(0xDFAB5);
          }

          v43 = 170;
          v44 = v55;
          goto LABEL_52;
        case 3:
          if (v53 != 3)
          {
            goto LABEL_40;
          }

LABEL_23:
          v55 = v11;
          v54 = v12;
          swift_retain_n(v12, 2);
          v19 = MLDataValue.SequenceType.featureValue.getter(a2);

          outlined consume of MLDataValue(v12, v52, v51);
          LOBYTE(v20) = 3;
          goto LABEL_30;
        case 4:
          if (v53 != 4)
          {
            goto LABEL_40;
          }

LABEL_18:
          v55 = v11;
          v54 = v12;
          swift_bridgeObjectRetain_n(v12, 2);
          v19 = MLDataValue.DictionaryType.featureValue.getter(v12, 2);
          v54;
          outlined consume of MLDataValue(v12, v52, v51);
          LOBYTE(v20) = 4;
          goto LABEL_30;
        case 5:
          if (v53 != 5)
          {
LABEL_40:
            v38 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v38, 0, 0);
            *v39 = 0xD000000000000027;
            *(v39 + 8) = "Invalid labelColumn." + 0x8000000000000000;
            *(v39 + 16) = 0;
            *(v39 + 32) = 0;
            *(v39 + 48) = 1;
            swift_willThrow();
            swift_setDeallocating(v50);
            v40 = CMLFeatureValue.deinit();
            swift_deallocClassInstance(v40, 25, 7);
            outlined consume of MLDataValue(v12, v52, v51);
            v49;
LABEL_41:
            v31 = v48;
LABEL_42:
            v41 = type metadata accessor for _UntypedColumn();
            swift_deallocPartialClassInstance(v31, v41, 24, 7);
            return v31;
          }

LABEL_29:
          v55 = v11;
          v54 = v12;
          v27 = v12;
          v27;
          v19 = MLDataValue.MultiArrayType.featureValue.getter();

          outlined consume of MLDataValue(v12, v52, v51);
          LOBYTE(v20) = 5;
LABEL_30:
          v53 = v20;
LABEL_31:
          v28 = v55;
          CMLSequence.append(_:)(v19);
          v11 = v28;
          if (v28)
          {
            v49;
            swift_setDeallocating(v50);
            v33 = CMLFeatureValue.deinit();
            swift_deallocClassInstance(v33, 25, 7);
            outlined consume of MLDataValue(v12, v52, v51);

            goto LABEL_41;
          }

          outlined consume of MLDataValue(v12, v52, v51);
          v10 += 24;
          v9 = v46 - 1;
          if (v46 == 1)
          {
            goto LABEL_35;
          }

          break;
      }
    }
  }

  v11 = v55;
LABEL_35:
  v49;
  v29 = v50;
  v30 = specialized handling<A, B>(_:_:)(*(v50 + 16));
  v31 = v48;
  if (v11)
  {
    swift_setDeallocating(v29);
    v32 = CMLFeatureValue.deinit();
    swift_deallocClassInstance(v32, 25, 7);
    goto LABEL_42;
  }

  v34 = v30;
  v55 = 0;
  if (!v30)
  {
    BUG();
  }

  swift_setDeallocating(v29);
  v35 = CMLFeatureValue.deinit();
  swift_deallocClassInstance(v35, 25, 7);
  v36 = type metadata accessor for CMLColumn();
  v37 = swift_allocObject(v36, 24, 7);
  *(v37 + 16) = v34;
  *(v31 + 16) = v37;
  return v31;
}

void *protocol witness for MLDataValueConvertible.init() in conformance String()
{
  *result = 0;
  result[1] = 0xE000000000000000;
  return result;
}

uint64_t specialized closure #1 in MLUntypedColumn.init<A>(_:)(uint64_t a1, double a2)
{
  v2 = type metadata accessor for _UntypedColumn();
  swift_allocObject(v2, 24, 7);

  return specialized _UntypedColumn.init<A>(_:)(a1, a2);
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew()(a1);
}

{
  v2 = a1 & 0xFFFFFFFFFFFFF8;
  if ((a1 & 0x4000000000000001) != 0)
  {
    if (a1)
    {
      v2 = a1;
    }

    v3 = _CocoaArrayWrapper.endIndex.getter(v2);
  }

  else
  {
    v3 = *(v2 + 16);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew()(a1);
}

uint64_t specialized closure #1 in MLUntypedColumn.init<A>(_:)(void *a1, void *a2)
{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, a2, specialized closure #1 in MLUntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, a2, specialized closure #1 in MLUntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, a2, specialized closure #1 in MLUntypedColumn.init<A>(_:));
}

uint64_t specialized closure #1 in MLUntypedColumn.init<A>(_:)(void *a1, void *a2, uint64_t (*a3)(void))
{
  v5 = v3;
  result = a3(*a1);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *v5 = result;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLActivityClassifier.DataSource(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    if (EnumCaseMultiPayload == 2)
    {
      v14 = type metadata accessor for DataFrame(0);
      (*(*(v14 - 8) + 16))(a1, a2, v14);
      v19 = 2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v17 = type metadata accessor for URL(0);
        (*(*(v17 - 8) + 16))(a1, a2, v17);
        v16 = a3;
        v15 = 0;
        goto LABEL_9;
      }

      v7 = type metadata accessor for URL(0);
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
      v9 = v8[12];
      *(a1 + v9) = *(a2 + v9);
      *(a1 + v9 + 8) = *(a2 + v9 + 8);
      v10 = v8[16];
      *(a1 + v10) = *(a2 + v10);
      *(a1 + v10 + 8) = *(a2 + v10 + 8);
      v11 = v8[20];
      *(a1 + v11) = *(a2 + v11);
      *(a1 + v11 + 8) = *(a2 + v11 + 8);
      v12 = v8[24];
      *(a1 + v12) = *(a2 + v12);
      *(a1 + v12 + 8) = *(a2 + v12 + 8);

      v19 = 1;
    }

    v15 = v19;
    v16 = a3;
LABEL_9:
    swift_storeEnumTagMultiPayload(a1, v16, v15);
    return v3;
  }

  v13 = *a2;
  *v3 = *a2;
  v3 = (v13 + ((v4 + 16) & ~v4));

  return v3;
}

uint64_t destroy for MLActivityClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 2)
  {
    v3 = type metadata accessor for DataFrame(0);
  }

  else
  {
    if (result == 1)
    {
      v4 = type metadata accessor for URL(0);
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
      *(a1 + v5[12] + 8);
      *(a1 + v5[16] + 8);
      *(a1 + v5[20] + 8);
      return *(a1 + v5[24] + 8);
    }

    if (result)
    {
      return result;
    }

    v3 = type metadata accessor for URL(0);
  }

  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t initializeWithCopy for MLActivityClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v11 = type metadata accessor for DataFrame(0);
LABEL_6:
    (*(*(v11 - 8) + 16))(a1, a2, v11);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v11 = type metadata accessor for URL(0);
    goto LABEL_6;
  }

  v5 = type metadata accessor for URL(0);
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
  v7 = v6[12];
  *(a1 + v7) = *(a2 + v7);
  *(a1 + v7 + 8) = *(a2 + v7 + 8);
  v8 = v6[16];
  *(a1 + v8) = *(a2 + v8);
  *(a1 + v8 + 8) = *(a2 + v8 + 8);
  v9 = v6[20];
  *(a1 + v9) = *(a2 + v9);
  *(a1 + v9 + 8) = *(a2 + v9 + 8);
  v10 = v6[24];
  *(a1 + v10) = *(a2 + v10);
  *(a1 + v10 + 8) = *(a2 + v10 + 8);

LABEL_7:
  swift_storeEnumTagMultiPayload(a1, a3, EnumCaseMultiPayload);
  return a1;
}

uint64_t assignWithCopy for MLActivityClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLActivityClassifier.DataSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    if (EnumCaseMultiPayload == 2)
    {
      v11 = type metadata accessor for DataFrame(0);
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v5 = type metadata accessor for URL(0);
        (*(*(v5 - 8) + 16))(a1, a2, v5);
        v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        v7 = v6[12];
        *(a1 + v7) = *(a2 + v7);
        *(a1 + v7 + 8) = *(a2 + v7 + 8);
        v8 = v6[16];
        *(a1 + v8) = *(a2 + v8);
        *(a1 + v8 + 8) = *(a2 + v8 + 8);
        v9 = v6[20];
        *(a1 + v9) = *(a2 + v9);
        *(a1 + v9 + 8) = *(a2 + v9 + 8);
        v10 = v6[24];
        *(a1 + v10) = *(a2 + v10);
        *(a1 + v10 + 8) = *(a2 + v10 + 8);

LABEL_8:
        swift_storeEnumTagMultiPayload(a1, a3, EnumCaseMultiPayload);
        return a1;
      }

      v11 = type metadata accessor for URL(0);
    }

    (*(*(v11 - 8) + 16))(a1, a2, v11);
    goto LABEL_8;
  }

  return a1;
}

uint64_t type metadata accessor for MLActivityClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLActivityClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLActivityClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLActivityClassifier.DataSource);
  }

  return result;
}

uint64_t initializeWithTake for MLActivityClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
LABEL_6:
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v7 = type metadata accessor for URL(0);
    goto LABEL_6;
  }

  v5 = type metadata accessor for URL(0);
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
  *(a1 + v6[12]) = *(a2 + v6[12]);
  *(a1 + v6[16]) = *(a2 + v6[16]);
  *(a1 + v6[20]) = *(a2 + v6[20]);
  *(a1 + v6[24]) = *(a2 + v6[24]);
LABEL_7:
  swift_storeEnumTagMultiPayload(a1, a3, EnumCaseMultiPayload);
  return a1;
}

uint64_t assignWithTake for MLActivityClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLActivityClassifier.DataSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    if (EnumCaseMultiPayload == 2)
    {
      v7 = type metadata accessor for DataFrame(0);
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v5 = type metadata accessor for URL(0);
        (*(*(v5 - 8) + 32))(a1, a2, v5);
        v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        *(a1 + v6[12]) = *(a2 + v6[12]);
        *(a1 + v6[16]) = *(a2 + v6[16]);
        *(a1 + v6[20]) = *(a2 + v6[20]);
        *(a1 + v6[24]) = *(a2 + v6[24]);
LABEL_8:
        swift_storeEnumTagMultiPayload(a1, a3, EnumCaseMultiPayload);
        return a1;
      }

      v7 = type metadata accessor for URL(0);
    }

    (*(*(v7 - 8) + 32))(a1, a2, v7);
    goto LABEL_8;
  }

  return a1;
}

uint64_t type metadata completion function for MLActivityClassifier.DataSource(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    v7[0] = *(result - 8) + 64;
    swift_getTupleTypeLayout(v6, 0, 5);
    v7[1] = v6;
    result = type metadata accessor for DataFrame(319);
    if (v5 <= 0x3F)
    {
      v7[2] = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload(a1, 256, 3, v7, v3, v4);
      return 0;
    }
  }

  return result;
}

uint64_t static MLModel.compile(_:)()
{
  v1 = Model.serialized()();
  v0[20] = v1;
  v0[21] = v2;
  v3 = v1;
  v4 = v2;
  type metadata accessor for MLModelAsset();
  outlined copy of Data._Representation(v3, v4);
  v5 = @nonobjc MLModelAsset.__allocating_init(specification:)(v3, v4);
  v0[22] = v5;
  v6 = v5;
  v11 = objc_opt_self(MLModel);
  v7 = objc_allocWithZone(MLModelConfiguration);
  v8 = [v7 init];
  v0[23] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = static MLModel.compile(_:);
  v9 = swift_continuation_init((v0 + 2), 1);
  v0[17] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UnsafeContinuation<MLModel, Error>);
  v0[14] = v9;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned MLModel?, @unowned NSError?) -> () with result type MLModel;
  v0[13] = &block_descriptor_3;
  [v11 loadModelAsset:v6 configuration:v8 completionHandler:v0 + 10];
  return swift_continuation_await((v0 + 2));
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = static MLModel.compile(_:);
  }

  else
  {
    v2 = static MLModel.compile(_:);
  }

  return swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  outlined consume of Data._Representation(*(v0 + 160), *(v0 + 168));

  v3 = *(v0 + 144);
  return (*(v0 + 8))(v3);
}

{
  v5 = *(v0 + 184);
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  swift_willThrow();
  outlined consume of Data._Representation(v2, v3);

  return (*(v0 + 8))();
}

uint64_t type metadata accessor for MLModelAsset()
{
  result = lazy cache variable for type metadata for MLModelAsset;
  if (!lazy cache variable for type metadata for MLModelAsset)
  {
    v1 = objc_opt_self(MLModelAsset);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for MLModelAsset = result;
  }

  return result;
}

id @nonobjc MLModelAsset.__allocating_init(specification:)(uint64_t a1, unint64_t a2)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = 0;
  v4 = [ObjCClassFromMetadata modelAssetWithSpecificationData:isa error:&v9];
  v5 = v4;

  v6 = v9;
  if (v5)
  {
    v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)(v6);

    swift_willThrow();
  }

  outlined consume of Data._Representation(a1, a2);
  return v5;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned MLModel?, @unowned NSError?) -> () with result type MLModel(uint64_t a1, void *a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v4, v5);
  }

  else
  {
    if (!a2)
    {
      BUG();
    }

    v7 = a2;
    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v4, v7);
  }
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  v3 = swift_allocError(v2, &protocol self-conformance witness table for Error, 0, 0);
  *v4 = a2;
  return swift_continuation_throwingResumeWithError(a1, v3);
}

void MLDecisionTreeRegressor.predictions(from:)(uint64_t a1)
{
  v20 = v2;
  v19 = v1;
  v5 = type metadata accessor for DataFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v17 = &v15;
  v10 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 28);
  v16 = v3;
  v11._rawValue = *(v3 + v10);
  v18 = a1;
  DataFrame.validateContainsColumns(_:context:)(v11, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v20 = v6;
    v13 = v17;
    v14 = v16;
    TreeRegressorModel.applied(to:eventHandler:)(v18, 0, 0);
    DataFrame.subscript.getter(*v14, v14[1]);
    (*(v20 + 8))(v13, v5);
  }
}

uint64_t type metadata accessor for MLDecisionTreeRegressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLDecisionTreeRegressor;
  if (!type metadata singleton initialization cache for MLDecisionTreeRegressor)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLDecisionTreeRegressor);
  }

  return result;
}

uint64_t *MLDecisionTreeRegressor.predictions(from:)(uint64_t a1, __m128 a2)
{
  v15 = v3;
  v16 = v2;
  v17 = type metadata accessor for DataFrame(0);
  v18 = *(v17 - 8);
  v4 = *(v18 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(a1 + 8);
  v13 = *a1;
  v14 = v10;
  outlined copy of Result<_DataTable, Error>(v13, v10);
  DataFrame.init(_:)(&v13);
  v11 = v15;
  MLDecisionTreeRegressor.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

void MLDecisionTreeRegressor.evaluation(on:)(uint64_t a1)
{
  v3 = v2;
  v5 = v1;
  v6 = type metadata accessor for MLDecisionTreeRegressor(0);
  v7._rawValue = *(v3 + *(v6 + 28));
  v16 = a1;
  DataFrame.validateContainsColumns(_:context:)(v7, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (v8 || (v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>), inited = swift_initStackObject(v9, v15), v11 = v3, v12 = inited, *(inited + 16) = 1, *(inited + 24) = 2, v13 = *(v6 + 24), v14 = *(v11 + v13 + 8), *(v12 + 32) = *(v11 + v13), *(v12 + 40) = v14, , DataFrame.validateContainsColumns(_:context:)(v12, __PAIR128__(0xE500000000000000, 0x6C6562614CLL)), swift_setDeallocating(v12), specialized _ContiguousArrayStorage.__deallocating_deinit(), v8))
  {
    *v5 = v8;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }

  else
  {
    TreeRegressorModel.computeMetrics(on:)(v16);
  }
}

uint64_t MLDecisionTreeRegressor.evaluation(on:)(uint64_t a1)
{
  v11 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(a1 + 8);
  v9 = *a1;
  v10 = v7;
  outlined copy of Result<_DataTable, Error>(v9, v7);
  DataFrame.init(_:)(&v9);
  MLDecisionTreeRegressor.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

NSURL *MLDecisionTreeRegressor.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v43 = v3;
  v48 = a2;
  v49 = a1;
  v4 = *(*(type metadata accessor for TreeRegressorModel(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v45 = &v33;
  v46 = type metadata accessor for Model(0);
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v42 = &v33;
  v11 = type metadata accessor for URL(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  qmemcpy(v41, v48, sizeof(v41));
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v49, 0xD000000000000015, ("v24@?0@MLModel8@NSError16" + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v44 = 0;
    v50 = &v33;
    v47 = v7;
    v48 = v11;
    v49 = v12;
    outlined init with copy of MLTrainingSessionParameters(v43, v45, type metadata accessor for TreeRegressorModel);
    v17 = *&v41[8];
    if (*&v41[8])
    {
      v18 = *v41;
      v19 = *&v41[16];
      v20 = *&v41[24];
      v21 = *&v41[32];
      v22 = *&v41[48];
      v23 = *&v41[56];
      v24 = *&v41[64];
    }

    else
    {
      v25 = NSFullUserName();
      v26 = v25;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)(v26);
      v17 = v27;

      v20 = "RandomForestRegressor" + 0x8000000000000000;
      v35[0] = v18;
      v35[1] = v17;
      v35[2] = 0xD000000000000033;
      v35[3] = "RandomForestRegressor" + 0x8000000000000000;
      v36 = 0;
      v37 = 49;
      v38 = 0xE100000000000000;
      v39 = 0;
      *v40 = v18;
      *&v40[8] = v17;
      *&v40[16] = 0xD000000000000033;
      *&v40[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v40[32] = 0;
      *&v40[48] = 49;
      *&v40[56] = 0xE100000000000000;
      *&v40[64] = 0;
      outlined retain of MLModelMetadata(v35);
      outlined release of MLModelMetadata(v40);
      v23 = 0xE100000000000000;
      v22 = 49;
      v21 = 0;
      v19 = 0xD000000000000033;
      v24 = 0;
    }

    *v40 = v18;
    *&v40[8] = v17;
    *&v40[16] = v19;
    *&v40[24] = v20;
    *&v40[32] = v21;
    *&v40[48] = v22;
    *&v40[56] = v23;
    *&v40[64] = v24;
    qmemcpy(v34, v40, sizeof(v34));
    outlined retain of MLModelMetadata?(v41);
    v28 = v42;
    v29 = v45;
    v30 = v44;
    specialized CoreMLExportable.export(metadata:)(v34);
    v31 = v48;
    outlined release of MLModelMetadata(v40);
    outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for TreeRegressorModel);
    if (v30)
    {
      return (*(v49 + 8))(v50, v31);
    }

    else
    {
      Model.write(to:)(v50);
      v32 = v49;
      (*(v47 + 8))(v28, v46);
      return (*(v32 + 8))(v50, v31);
    }
  }

  return result;
}

uint64_t MLDecisionTreeRegressor.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v17 = v3;
  v21 = a3;
  v19 = a2;
  v18 = a1;
  v22 = type metadata accessor for URL.DirectoryHint(0);
  v20 = *(v22 - 8);
  v4 = *(v20 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v23 = v16;
  v10 = type metadata accessor for URL(0);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  qmemcpy(v16, v21, sizeof(v16));
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v10);
  (*(v20 + 104))(v16, enum case for URL.DirectoryHint.inferFromPath(_:), v22);
  v14 = v19;

  URL.init(filePath:directoryHint:relativeTo:)(v18, v14, v16, v23);
  MLDecisionTreeRegressor.write(to:metadata:)(v16, v16);
  return (*(v24 + 8))(v16, v10);
}

unint64_t MLDecisionTreeRegressor.description.getter()
{
  v1 = type metadata accessor for MLDecisionTreeRegressor(0);
  v20 = MLDecisionTreeRegressor.ModelParameters.description.getter();
  v3 = v2;
  v4 = *(v1 + 36);
  v15 = *(v0 + v4);
  v17 = *(v0 + v4 + 8);
  v19 = *(v0 + v4 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v15, v17, v19);
  v22 = MLRegressorMetrics.description.getter();
  v6 = v5;
  outlined consume of Result<_RegressorMetrics, Error>(v15, v17, v19);
  v7 = *(v1 + 40);
  LOBYTE(v1) = *(v0 + v7 + 16) & 1;
  v16 = *(v0 + v7);
  v18 = *(v0 + v7 + 8);
  outlined copy of Result<_RegressorMetrics, Error>(v16, v18, *(v0 + v7 + 16));
  v14._countAndFlagsBits = MLRegressorMetrics.description.getter();
  v14._object = v8;
  outlined consume of Result<_RegressorMetrics, Error>(v16, v18, v1);
  v9._countAndFlagsBits = v20;
  v21 = v3;
  v9._object = v3;
  String.append(_:)(v9);
  v9._countAndFlagsBits = v22;
  v9._object = v6;
  String.append(_:)(v9);
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  v9._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  String.append(_:)(v9);
  ("ActivityClassifier\n\nParameters\n" + 0x8000000000000000);
  if (v1)
  {
    v10 = v6;
    object = v14._object;
  }

  else
  {
    String.append(_:)(v14);
    v12._countAndFlagsBits = 0xD000000000000020;
    object = ("\nPerformance on Training Data\n" + 0x8000000000000000);
    v12._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    String.append(_:)(v12);
    v6;
    v10 = v14._object;
  }

  v10;
  object;
  v21;
  return 0xD000000000000022;
}

NSAttributedString MLDecisionTreeRegressor.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLDecisionTreeRegressor.description.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

void MLDecisionTreeRegressor.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLDecisionTreeRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLDecisionTreeRegressor.targetColumn.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLDecisionTreeRegressor(0) + 24));

  return v1;
}

uint64_t MLDecisionTreeRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLDecisionTreeRegressor.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLDecisionTreeRegressor.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLDecisionTreeRegressor(0);
  return outlined init with copy of MLDecisionTreeRegressor.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLDecisionTreeRegressor.trainingMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 36);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t MLDecisionTreeRegressor.validationMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 40);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t static MLDecisionTreeRegressor._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLDecisionTreeRegressor._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a3;
  v6[3] = a2;
  v6[2] = a1;
  return swift_task_switch(MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:)()
{
  v11 = *(v0 + 48);
  v10 = *(v0 + 32);
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MLDecisionTreeRegressor(0);
  *(v0 + 64) = v2;
  v3 = v2[9];
  *(v0 + 96) = v3;
  *(v1 + v3 + 16) = 0;
  *(v1 + v3) = 0;
  v4 = v2[10];
  *(v0 + 100) = v4;
  v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v6 = swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
  *v7 = 0xD0000000000000C0;
  *(v7 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v7 + 16) = 0;
  *(v7 + 32) = 0;
  *(v7 + 48) = 0;
  *(v1 + v4) = v6;
  *(v1 + v4 + 8) = 0;
  *(v1 + v4 + 16) = 1;
  *(v1 + v2[7]) = v11;
  *(v1 + v2[6]) = v10;
  v8 = swift_task_alloc(288);
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v3 + *(v1 + 20)) = *(v0 + 88);
  outlined init with take of MLClassifierMetrics(v4, v3, type metadata accessor for TreeRegressorModel);
  v5 = *(v1 + 32);
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  *(v3 + v5 + 48) = v2[3];
  *(v3 + v5 + 32) = v8;
  *(v3 + v5 + 16) = v7;
  *(v3 + v5) = v6;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 100);
  v2 = *(v0 + 96);
  v6 = *(v0 + 48);
  v7 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  outlined destroy of MLDecisionTreeRegressor.ModelParameters(*(v0 + 56));
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for TreeRegressorModel);
  v7;
  v6;
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v2), *(v3 + v2 + 8), *(v3 + v2 + 16));
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v1), *(v3 + v1 + 8), *(v3 + v1 + 16));
  return (*(v0 + 8))();
}

uint64_t MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 72);
  v4 = *v2;
  *(*v2 + 80) = v1;
  v5;
  if (v1)
  {
    v6 = MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  else
  {
    *(v4 + 88) = a1;
    v6 = MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(void (*a1)(uint64_t *, uint64_t *, uint64_t), uint64_t a2, void *a3, Swift::Int a4, uint64_t a5)
{
  quantity = a4;
  v122 = a3;
  v7 = v5;
  v113 = a2;
  v118 = v6;
  v125 = a5;
  v121 = a1;
  v128 = type metadata accessor for DataFrame(0);
  v119 = *(v128 - 8);
  v8 = *(v119 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v107 = &v92;
  v104 = *(type metadata accessor for TreeRegressorModel(0) - 8);
  v11 = *(v104 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v102 = &v92;
  v103 = v11;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v120 = &v92;
  v100 = type metadata accessor for TreeRegressor(0);
  v16 = *(*(v100 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v116 = &v92;
  v112 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v19 = *(*(v112 - 1) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v129 = &v92;
  v111 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v22 = *(*(v111 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v110 = &v92;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v106 = &v92;
  v27 = alloca(v22);
  v28 = alloca(v22);
  v123 = &v92;
  v126 = type metadata accessor for BoostedTreeConfiguration(0);
  v127 = *(v126 - 8);
  v29 = *(v127 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v101 = &v92;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v109 = &v92;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v36 = type metadata accessor for MLDecisionTreeRegressor(0);
  v37 = *(v36 + 36);
  *(v7 + v37 + 16) = 0;
  v114 = v37;
  *(v7 + v37) = 0;
  v105 = v36;
  v38 = *(v36 + 40);
  v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v40 = swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
  *v41 = 0xD0000000000000C0;
  *(v41 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v41 + 16) = 0;
  *(v41 + 32) = 0;
  *(v41 + 48) = 0;
  *(v7 + v38) = v40;
  *(v7 + v38 + 8) = 0;
  v108 = v38;
  v117 = v7;
  *(v7 + v38 + 16) = 1;
  v42 = v125;
  v43 = v125;
  outlined init with copy of MLDecisionTreeRegressor.ModelParameters(v125, &v94);
  BoostedTreeConfiguration.init()(v43);
  BoostedTreeConfiguration.maximumIterations.setter(1);
  BoostedTreeConfiguration.learningRate.setter(1.0);
  BoostedTreeConfiguration.maximumDepth.setter(v96);
  BoostedTreeConfiguration.minimumLossReduction.setter(v97);
  BoostedTreeConfiguration.minimumChildWeight.setter(v98);
  v124 = &v92;
  BoostedTreeConfiguration.randomSeed.setter(v99);
  outlined destroy of MLDecisionTreeRegressor.ModelParameters(&v94);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, &v92, &demangling cache variable for type metadata for Any?);
  if (!v93)
  {
    BUG();
  }

  v44 = v117 + v114;
  v45 = v123;
  v46 = (v123 + *(v111 + 48));
  outlined init with take of Any(&v92, &v94);
  swift_dynamicCast(v129, &v94, &type metadata for Any + 8, v112, 7);
  v47 = v118;
  MLDecisionTreeRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v45, v46, v121);
  if (v47)
  {
    v122;
    quantity;
    outlined destroy of MLDecisionTreeRegressor.ModelParameters(v125);
    (*(v119 + 8))(v121, v128);
    outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
    (*(v127 + 8))(v124, v126);
    v48 = v117;
LABEL_7:
    outlined consume of Result<_RegressorMetrics, Error>(*v44, *(v44 + 8), *(v44 + 16));
    return outlined consume of Result<_RegressorMetrics, Error>(*(v48 + v108), *(v48 + v108 + 8), *(v48 + v108 + 16));
  }

  v114 = v44;
  outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  v49 = quantity;
  v50 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v123, v113, v122, quantity);
  v129 = 0;
  v51 = v50;
  v49;
  v52 = *(v127 + 16);
  v53 = v109;
  v52(v109, v124, v126);
  v54 = v52;
  v55 = v116;
  *v116 = v113;
  *(v55 + 1) = v122;
  v118 = v51;
  *(v55 + 2) = v51;
  *(v55 + 3) = v51;
  *(v55 + 4) = 0xD000000000000013;
  *(v55 + 5) = "raining samples." + 0x8000000000000000;
  v56 = v101;
  v54(v101, v53, v126);
  swift_bridgeObjectRetain_n(v118, 2);

  v57 = v56;
  v58 = v126;
  BaseTreeRegressor.init(configuration:)(v57);
  v127 = *(v127 + 8);
  (v127)(v109, v58);
  v59 = v122;
  v60 = v129;
  TreeRegressor.fitted(to:validateOn:eventHandler:)(v123, v46, 0, 0);
  v129 = v60;
  if (v60)
  {
    v59;
    v118;
    outlined destroy of MLDecisionTreeRegressor.ModelParameters(v125);
    (*(v119 + 8))(v121, v128);
    outlined destroy of MLActivityClassifier.ModelParameters(v55, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v127)(v124, v58);
    v48 = v117;
LABEL_6:
    v44 = v114;
    goto LABEL_7;
  }

  if (!AnalyticsReporter.init()())
  {
    v62 = v123;
    v63 = v106;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, v106, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v64 = v63 + *(v111 + 48);
    quantity = DataFrame.shape.getter(v62);
    (*(v119 + 8))(v63, v128);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_decisionTreeRegressor, __PAIR128__(("vectorized_features" + 0x8000000000000000), 0xD000000000000015), quantity);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v64, &demangling cache variable for type metadata for DataFrame?);
  }

  v65 = v105;
  v66 = v105[6];
  v67 = v117;
  *(v117 + v66) = v113;
  *(v67 + v66 + 8) = v122;
  quantity = v67 + v65[8];
  outlined init with copy of MLDecisionTreeRegressor.ModelParameters(v125, quantity);
  *(v67 + v65[7]) = v118;
  v68 = v102;
  outlined init with copy of MLTrainingSessionParameters(v120, v102, type metadata accessor for TreeRegressorModel);
  v69 = *(v104 + 80);
  v70 = ~*(v104 + 80) & (v69 + 16);
  v71 = swift_allocObject(&unk_390E08, v70 + v103, v69 | 7);
  outlined init with take of MLClassifierMetrics(v68, v71 + v70, type metadata accessor for TreeRegressorModel);
  v72 = v129;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:), v71);
  if (v72)
  {
    v129 = v72;

    outlined destroy of MLDecisionTreeRegressor.ModelParameters(v125);
    (*(v119 + 8))(v121, v128);
    outlined destroy of MLActivityClassifier.ModelParameters(v120, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v127)(v124, v126);
    v118;
    v122;
    v48 = v117;
LABEL_13:
    outlined destroy of MLDecisionTreeRegressor.ModelParameters(quantity);
    goto LABEL_6;
  }

  v74 = v73;

  v75 = v65[5];
  v112 = v74;
  v48 = v117;
  *(v117 + v75) = v74;
  outlined init with copy of MLTrainingSessionParameters(v120, v48, type metadata accessor for TreeRegressorModel);
  v76 = v123;
  TreeRegressorModel.computeMetrics(on:)(v123);
  v129 = 0;
  v77 = v95;
  v78 = v114;
  outlined consume of Result<_RegressorMetrics, Error>(*v114, *(v114 + 8), *(v114 + 16));
  *v78 = v94;
  *(v78 + 16) = v77;
  v79 = v110;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v76, v110, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v80 = v79 + *(v111 + 48);
  if (__swift_getEnumTagSinglePayload(v80, 1, v128) == 1)
  {
    outlined destroy of MLDecisionTreeRegressor.ModelParameters(v125);
    v81 = *(v119 + 8);
    v81(v121, v128);
    outlined destroy of MLActivityClassifier.ModelParameters(v120, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v76, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v127)(v124, v126);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v80, &demangling cache variable for type metadata for DataFrame?);
    return (v81)(v79, v128);
  }

  else
  {
    v82 = v107;
    v83 = v80;
    v84 = v128;
    v85 = v119;
    (*(v119 + 32))(v107, v83, v128);
    v86 = *(v85 + 8);
    v86(v110, v84);
    v87 = v129;
    TreeRegressorModel.computeMetrics(on:)(v82);
    v129 = v87;
    if (v87)
    {
      outlined destroy of MLDecisionTreeRegressor.ModelParameters(v125);
      v88 = v128;
      v86(v121, v128);
      v86(v82, v88);
      outlined destroy of MLActivityClassifier.ModelParameters(v120, type metadata accessor for TreeRegressorModel);
      outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for TreeRegressor);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      (v127)(v124, v126);
      outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for TreeRegressorModel);
      v118;
      v122;

      goto LABEL_13;
    }

    outlined destroy of MLDecisionTreeRegressor.ModelParameters(v125);
    v89 = v128;
    v86(v121, v128);
    v86(v82, v89);
    outlined destroy of MLActivityClassifier.ModelParameters(v120, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v127)(v124, v126);
    v90 = v95;
    v91 = v108;
    result = outlined consume of Result<_RegressorMetrics, Error>(*(v48 + v108), *(v48 + v108 + 8), *(v48 + v108 + 16));
    *(v48 + v91) = v94;
    *(v48 + v91 + 16) = v90;
  }

  return result;
}

uint64_t closure #1 in MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  v5;
  if (v1)
  {
    return (*(v6 + 8))();
  }

  *(v4 + 32) = a1;
  return swift_task_switch(closure #1 in MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, Swift::Int a4, uint64_t a5)
{
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v6 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(a1 + 8);
  v11 = *a1;
  v12 = v9;
  DataFrame.init(_:)(&v11);
  outlined init with copy of MLDecisionTreeRegressor.ModelParameters(a5, &v11);
  MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLDecisionTreeRegressor.ModelParameters(a5);
}

uint64_t MLDecisionTreeRegressor.init(checkpoint:)(uint64_t a1)
{
  v62 = v2;
  v79 = a1;
  v3 = v1;
  v71 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v4 = *(*(v71 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v72 = v59;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v70 = v59;
  v69 = *(type metadata accessor for TreeRegressorModel(0) - 8);
  v9 = *(v69 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v67 = v59;
  v68 = v9;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v78 = v59;
  v63 = type metadata accessor for BoostedTreeConfiguration(0);
  v64 = *(v63 - 8);
  v14 = *(v64 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v65 = v59;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v77 = v59;
  v76 = type metadata accessor for TreeRegressor(0);
  v19 = *(*(v76 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v74 = v59;
  v22 = type metadata accessor for MLDecisionTreeRegressor(0);
  v23 = *(v22 + 36);
  *(v3 + v23 + 16) = 0;
  v61 = v23;
  *(v3 + v23) = 0;
  v75 = v22;
  v24 = *(v22 + 40);
  v66 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v25 = swift_allocError(&type metadata for MLCreateError, v66, 0, 0);
  *v26 = 0xD0000000000000C0;
  *(v26 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v26 + 16) = 0;
  *(v26 + 32) = 0;
  *(v26 + 48) = 0;
  *(v3 + v24) = v25;
  *(v3 + v24 + 8) = 0;
  v73 = v3;
  v60 = v24;
  *(v3 + v24 + 16) = 1;
  v27 = v79;
  switch(*(v27 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v28 = 0x696C616974696E69;
      v29 = 0xEB0000000064657ALL;
      break;
    case 1:
      v28 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      v30 = 0xE800000000000000;
      0;
      goto LABEL_9;
    case 3:
      v28 = 0x697461756C617665;
LABEL_7:
      v29 = 0xEA0000000000676ELL;
      break;
    case 4:
      v29 = 0xEB00000000676E69;
      v28 = 0x636E657265666E69;
      break;
    case 5:
      JUMPOUT(0xE2F70);
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)(v28, v29, 0x676E696E69617274, 0xE800000000000000, 0);
  v30 = v29;
  v29;
  if (v31)
  {
LABEL_9:
    v32 = v77;
    BoostedTreeConfiguration.init()(v30);
    v33 = v74;
    *v74 = 0;
    v33[1] = 0xE000000000000000;
    v33[2] = _swiftEmptyArrayStorage;
    v33[3] = _swiftEmptyArrayStorage;
    v33[4] = 0xD000000000000013;
    v33[5] = ("raining samples." + 0x8000000000000000);
    v34 = v65;
    v35 = v32;
    v36 = v63;
    v37 = v64;
    (*(v64 + 16))(v65, v35, v63);
    BaseTreeRegressor.init(configuration:)(v34);
    (*(v37 + 8))(v77, v36);
    v38 = lazy protocol witness table accessor for type TreeRegressor and conformance TreeRegressor();
    v39 = v78;
    v40 = v79;
    v41 = v62;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v79, v76, v38);
    if (!v41)
    {
      v43 = v67;
      outlined init with copy of MLTrainingSessionParameters(v39, v67, type metadata accessor for TreeRegressorModel);
      v44 = *(v69 + 80);
      v45 = ~*(v69 + 80) & (v44 + 16);
      v46 = swift_allocObject(&unk_390E30, v45 + v68, v44 | 7);
      outlined init with take of MLClassifierMetrics(v43, v46 + v45, type metadata accessor for TreeRegressorModel);
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLDecisionTreeRegressor.init(checkpoint:), v46);
      v48 = v47;

      v50 = v73;
      *(v73 + v75[5]) = v48;
      outlined init with copy of MLTrainingSessionParameters(v78, v50, type metadata accessor for TreeRegressorModel);
      v51 = v70;
      *v70 = 0;
      *(v51 + 16) = 256;
      v76 = 0;
      v52 = v71;
      swift_storeEnumTagMultiPayload(v51, v71, 0);
      v53 = v75[8];
      v77 = (v50 + v53);
      *(v50 + v53 + 16) = 0;
      *(v50 + v53) = 0;
      *(v50 + v53 + 32) = 6;
      *(v50 + v53 + 40) = _mm_loadh_ps(&qword_33D880);
      *(v50 + v53 + 56) = 42;
      v54 = v72;
      outlined init with copy of MLTrainingSessionParameters(v51, v72, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
      v59[3] = v52;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
      outlined init with take of MLClassifierMetrics(v54, boxed_opaque_existential_0, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
      outlined assign with take of Any?(v59, v77);
      outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
      v56 = v75;
      v57 = v75[6];
      *(v50 + v57) = 0;
      *(v50 + v57 + 8) = 0xE000000000000000;
      outlined destroy of MLActivityClassifier.ModelParameters(v79, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v78, type metadata accessor for TreeRegressorModel);
      outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for TreeRegressor);
      result = v56[7];
      *(v50 + result) = _swiftEmptyArrayStorage;
      return result;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v33, type metadata accessor for TreeRegressor);
  }

  else
  {
    swift_allocError(&type metadata for MLCreateError, v66, 0, 0);
    *v42 = 0xD000000000000042;
    *(v42 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
    *(v42 + 16) = 0;
    *(v42 + 32) = 0;
    *(v42 + 48) = 0;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v79, type metadata accessor for MLCheckpoint);
  }

  v49 = v73;
  outlined consume of Result<_RegressorMetrics, Error>(*(v73 + v61), *(v73 + v61 + 8), *(v73 + v61 + 16));
  return outlined consume of Result<_RegressorMetrics, Error>(*(v49 + v60), *(v49 + v60 + 8), *(v49 + v60 + 16));
}

void *static MLDecisionTreeRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = a2;
  v7 = type metadata accessor for DataFrame(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *(a1 + 8);
  v19 = *a1;
  v20 = v12;
  outlined copy of Result<_DataTable, Error>(v19, v12);
  DataFrame.init(_:)(&v19);
  v13 = static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLDecisionTreeRegressor>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

__int128 *static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v7 = type metadata accessor for DataFrame(0);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(a1 + 8);
  v14 = *a1;
  v15 = v11;
  outlined copy of Result<_DataTable, Error>(v14, v11);
  DataFrame.init(_:)(&v14);
  v12 = static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLDecisionTreeRegressor.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLDecisionTreeRegressor>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

__int128 *static MLDecisionTreeRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t *, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLDecisionTreeRegressor>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

__int128 *static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t *, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = v6;
  v59 = a6;
  v55 = a5;
  v56 = a4;
  v57 = a3;
  v51 = a2;
  v50 = a1;
  v7 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v54 = &v42;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v52 = &v42;
  v12 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v53 = &v42;
  v15 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v19 = *(*(v62 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v61 = &v42;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v58 = &v42;
  v24 = alloca(v19);
  v25 = alloca(v19);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v55, &v42, &demangling cache variable for type metadata for Any?);
  if (!v43)
  {
    BUG();
  }

  v26 = (&v42 + *(v62 + 48));
  v60 = &v42;
  outlined init with take of Any(&v42, &v44);
  v27 = v60;
  swift_dynamicCast(&v42, &v44, &type metadata for Any + 8, v15, 7);
  v28 = v63;
  MLDecisionTreeRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v27, v26, v50);
  outlined destroy of MLActivityClassifier.ModelParameters(&v42, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  if (!v28)
  {
    v29 = v58;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v58, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v30 = v62;
    v63 = v29 + *(v62 + 48);
    v31 = v27;
    v32 = v61;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v61, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v62 = v32 + *(v30 + 48);
    outlined init with copy of MLDecisionTreeRegressor.ModelParameters(v55, &v44);

    v33 = v57;

    v34 = v53;
    BoostedTreeConfiguration.init()(v33);
    BoostedTreeConfiguration.maximumIterations.setter(1);
    BoostedTreeConfiguration.learningRate.setter(1.0);
    BoostedTreeConfiguration.maximumDepth.setter(v46);
    BoostedTreeConfiguration.minimumLossReduction.setter(v47);
    BoostedTreeConfiguration.minimumChildWeight.setter(v48);
    BoostedTreeConfiguration.randomSeed.setter(v49);
    outlined destroy of MLDecisionTreeRegressor.ModelParameters(&v44);
    v35 = v52;
    outlined init with copy of MLTrainingSessionParameters(v59, v52, type metadata accessor for MLTrainingSessionParameters);
    v36 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
    swift_allocObject(v36, *(v36 + 48), *(v36 + 52));
    v37 = TreeRegressorTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(v58, v62, v51, v57, v56, v34, v35);
    v38 = type metadata accessor for DataFrame(0);
    (*(*(v38 - 8) + 8))(v61, v38);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v63, &demangling cache variable for type metadata for DataFrame?);
    v45 = v36;
    v46 = &protocol witness table for TreeRegressorTrainingSessionDelegate;
    *&v44 = v37;
    v39 = v54;
    outlined init with copy of MLTrainingSessionParameters(v59, v54, type metadata accessor for MLTrainingSessionParameters);
    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>);
    swift_allocObject(v40, *(v40 + 48), *(v40 + 52));

    v27 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v44, v39, 2);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  }

  return v27;
}

uint64_t static MLDecisionTreeRegressor.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = TreeRegressorTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for TreeRegressorTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 2);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLDecisionTreeRegressor.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  if (a2)
  {
    v19 = a1;
    swift_storeEnumTagMultiPayload(&v19, v6, 1);
    swift_errorRetain(a1);
    v23(&v19);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_390E68, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:)()
{

  v1 = swift_task_alloc(80);
  v0[6] = v1;
  *v1 = v0;
  v1[1] = closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 40);
  (*(v0 + 24))(v1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);
  v1;
  return (*(v0 + 8))();
}

uint64_t MLDecisionTreeRegressor.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[25] = a2;
  v2[24] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?);
  v2[26] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLDecisionTreeRegressor(0);
  v2[27] = v4;
  v2[28] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v2[29] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BoostedTreeConfiguration(0);
  v2[30] = v6;
  v7 = *(v6 - 8);
  v2[31] = v7;
  v2[32] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[33] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v2[34] = v9;
  v2[35] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLDecisionTreeRegressor.init(delegate:), 0, 0);
}

uint64_t MLDecisionTreeRegressor.init(delegate:)()
{
  v1 = v0[34];
  v2 = v0[33];
  v3 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v0[25];
  swift_beginAccess(v3, (v0 + 18), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v4 = v0[35];
  v5 = v0[34];
  v6 = v0[32];
  v18 = v0[31];
  v15 = v0[30];
  v16 = v0[29];
  v7 = v0[25];
  v14 = v0[26];
  outlined init with take of MLClassifierMetrics(v0[33], v4, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v18 + 16))(v6, v4 + v5[8], v15);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4 + v5[5], v16, &demangling cache variable for type metadata for DataFrame?);
  MLDecisionTreeRegressor.ModelParameters.init(configuration:validation:)(v6, v16);
  v8 = v5[6];
  v17 = *(v4 + v8);
  v19 = *(v4 + v8 + 8);
  v9 = *(v4 + v5[7]);
  v10 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v7;
  swift_beginAccess(v10, (v0 + 21), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v14, &demangling cache variable for type metadata for TreeRegressorModel?);
  v11 = type metadata accessor for TreeRegressorModel(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
  {
    BUG();
  }

  outlined init with copy of MLDecisionTreeRegressor.ModelParameters((v0 + 2), (v0 + 10));

  v12 = swift_task_alloc(112);
  v0[36] = v12;
  *v12 = v0;
  v12[1] = MLDecisionTreeRegressor.init(delegate:);
  return MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:)(v0[28], v0[26], v17, v19, v9, (v0 + 10));
}

{
  v2 = *(*v1 + 288);
  *(*v1 + 296) = v0;
  v2;
  if (v0)
  {
    v3 = MLDecisionTreeRegressor.init(delegate:);
  }

  else
  {
    v3 = MLDecisionTreeRegressor.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 200);
  outlined init with take of MLClassifierMetrics(*(v0 + 224), *(v0 + 192), type metadata accessor for MLDecisionTreeRegressor);
  v2 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v2 == -1)
  {
    BUG();
  }

  v17 = *(v0 + 280);
  v16 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v18 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
  v15 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 8);
  outlined copy of Result<_RegressorMetrics, Error>(v18, v15, v2);
  outlined destroy of MLDecisionTreeRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v5 = *(v16 + 36);
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v5), *(v3 + v5 + 8), *(v3 + v5 + 16));
  *(v3 + v5) = v18;
  *(v3 + v5 + 8) = v15;
  *(v3 + v5 + 16) = v2 & 1;
  v6 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
  v7 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16);
  v19 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
  outlined copy of MLRegressorMetrics?(v19, v6, v7);

  if (v7 != -1)
  {
    v8 = *(v0 + 192);
    v9 = *(*(v0 + 216) + 40);
    outlined consume of Result<_RegressorMetrics, Error>(*(v8 + v9), *(v8 + v9 + 8), *(v8 + v9 + 16));
    *(v8 + v9) = v19;
    *(v8 + v9 + 8) = v6;
    *(v8 + v9 + 16) = v7 & 1;
  }

  v10 = *(v0 + 264);
  v11 = *(v0 + 256);
  v12 = *(v0 + 232);
  v20 = *(v0 + 208);
  v13 = *(v0 + 224);
  *(v0 + 280);
  v10;
  v11;
  v12;
  v13;
  v20;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 256);
  v7 = *(v0 + 232);
  v6 = *(v0 + 224);
  v5 = *(v0 + 208);

  outlined destroy of MLDecisionTreeRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v1;
  v2;
  v3;
  v7;
  v6;
  v5;
  return (*(v0 + 8))();
}

uint64_t outlined consume of Result<_RegressorMetrics, Error>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  return result;
}

uint64_t partial apply for closure #1 in MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  type metadata accessor for TreeRegressorModel(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t partial apply for closure #1 in MLDecisionTreeRegressor.init(checkpoint:)(uint64_t a1)
{
  type metadata accessor for TreeRegressorModel(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestRegressor.init(checkpoint:)(a1);
}

id sub_E419D()
{
  v1 = v0;
  result = MLDecisionTreeRegressor.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLDecisionTreeRegressor(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v6 = *a2;
    *v3 = *a2;
    v3 = (v6 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    a1[1] = a2[1];
    v5 = a2[2];

    if (v5)
    {
      a1[2] = v5;
      a1[3] = a2[3];
      a1[4] = a2[4];
    }

    else
    {
      a1[4] = a2[4];
      *(a1 + 1) = *(a2 + 1);
    }

    v7 = *(type metadata accessor for TreeRegressorModel(0) + 24);
    v8 = type metadata accessor for BaseTreeRegressorModel(0);
    (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
    v9 = a3[5];
    v10 = *(a2 + v9);
    *(v3 + v9) = v10;
    v11 = a3[6];
    *(v3 + v11) = *(a2 + v11);
    *(v3 + v11 + 8) = *(a2 + v11 + 8);
    *(v3 + a3[7]) = *(a2 + a3[7]);
    v12 = a3[8];
    v13 = v3 + v12;
    v26 = (a2 + v12);
    v14 = *(a2 + v12 + 24);
    v10;

    if (v14)
    {
      *(v13 + 3) = v14;
      v15 = v26;
      (**(v14 - 8))(v13, v26, v14);
    }

    else
    {
      v15 = v26;
      v16 = *v26;
      *(v13 + 1) = v26[1];
      *v13 = v16;
    }

    *(v13 + 2) = v15[2];
    *(v13 + 3) = v15[3];
    v17 = a3[9];
    v18 = *(a2 + v17);
    v19 = *(a2 + v17 + 8);
    v27 = *(a2 + v17 + 16);
    outlined copy of Result<_RegressorMetrics, Error>(v18, v19, v27);
    *(v3 + v17) = v18;
    *(v3 + v17 + 8) = v19;
    *(v3 + v17 + 16) = v27;
    v20 = a3[10];
    v21 = *(a2 + v20);
    v22 = *(a2 + v20 + 8);
    v23 = *(a2 + v20 + 16);
    outlined copy of Result<_RegressorMetrics, Error>(v21, v22, v23);
    *(v3 + v20) = v21;
    *(v3 + v20 + 8) = v22;
    *(v3 + v20 + 16) = v23;
  }

  return v3;
}

void *initializeWithCopy for MLDecisionTreeRegressor(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a2[2];

  if (v4)
  {
    a1[2] = v4;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v5 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v6 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  v7 = a3[5];
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = a3[6];
  *(a1 + v9) = *(a2 + v9);
  *(a1 + v9 + 8) = *(a2 + v9 + 8);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v10 = a3[8];
  v11 = a1 + v10;
  v24 = (a2 + v10);
  v12 = *(a2 + v10 + 24);
  v8;

  if (v12)
  {
    *(v11 + 3) = v12;
    v13 = v24;
    (**(v12 - 8))(v11, v24, v12);
  }

  else
  {
    v13 = v24;
    v14 = *v24;
    *(v11 + 1) = v24[1];
    *v11 = v14;
  }

  *(v11 + 2) = v13[2];
  *(v11 + 3) = v13[3];
  v15 = a3[9];
  v16 = *(a2 + v15);
  v17 = *(a2 + v15 + 8);
  v25 = *(a2 + v15 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v16, v17, v25);
  *(a1 + v15) = v16;
  *(a1 + v15 + 8) = v17;
  *(a1 + v15 + 16) = v25;
  v18 = a3[10];
  v19 = *(a2 + v18);
  v20 = *(a2 + v18 + 8);
  v21 = *(a2 + v18 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v19, v20, v21);
  *(a1 + v18) = v19;
  *(a1 + v18 + 8) = v20;
  *(a1 + v18 + 16) = v21;
  return a1;
}

void *assignWithCopy for MLDecisionTreeRegressor(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v4;
  v5 = a1 + 2;
  v6 = a2 + 2;
  v7 = a1[2];
  v8 = a2[2];
  if (v7)
  {
    if (v8)
    {
      a1[2] = v8;

      v7;
      a1[3] = a2[3];
      v9 = a1[4];
      a1[4] = a2[4];

      v9;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v5 = *v6;
      a1[4] = a2[4];
    }
  }

  else if (v8)
  {
    a1[2] = v8;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *v5 = *v6;
  }

  v10 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v11 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  v12 = a3[5];
  v13 = *(a2 + v12);
  v14 = *(a1 + v12);
  *(a1 + v12) = v13;
  v13;

  v15 = a3[6];
  *(a1 + v15) = *(a2 + v15);
  v16 = *(a1 + v15 + 8);
  *(a1 + v15 + 8) = *(a2 + v15 + 8);

  v16;
  v17 = a3[7];
  v18 = *(a1 + v17);
  *(a1 + v17) = *(a2 + v17);

  v18;
  v19 = a3[8];
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = *(a2 + v19 + 24);
  if (!*(a1 + v19 + 24))
  {
    if (v22)
    {
      *(v20 + 3) = v22;
      (**(v22 - 8))(v20, v21);
      goto LABEL_15;
    }

LABEL_14:
    v25 = *v21;
    *(v20 + 1) = *(v21 + 1);
    *v20 = v25;
    goto LABEL_15;
  }

  v24 = (a1 + v19);
  if (!v22)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_0(v24, (a2 + v19));
LABEL_15:
  *(v20 + 4) = *(v21 + 4);
  *(v20 + 5) = *(v21 + 5);
  *(v20 + 6) = *(v21 + 6);
  *(v20 + 7) = *(v21 + 7);
  v26 = a3[9];
  v27 = *(a2 + v26);
  v28 = *(a2 + v26 + 8);
  v40 = *(a2 + v26 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v27, v28, v40);
  v29 = *(a1 + v26);
  v30 = *(a1 + v26 + 8);
  *(a1 + v26) = v27;
  *(a1 + v26 + 8) = v28;
  v31 = *(a1 + v26 + 16);
  *(a1 + v26 + 16) = v40;
  outlined consume of Result<_RegressorMetrics, Error>(v29, v30, v31);
  v32 = a3[10];
  v33 = *(a2 + v32);
  v34 = *(a2 + v32 + 8);
  v35 = *(a2 + v32 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v33, v34, v35);
  v36 = *(a1 + v32);
  v37 = *(a1 + v32 + 8);
  *(a1 + v32) = v33;
  *(a1 + v32 + 8) = v34;
  v38 = *(a1 + v32 + 16);
  *(a1 + v32 + 16) = v35;
  outlined consume of Result<_RegressorMetrics, Error>(v36, v37, v38);
  return a1;
}

uint64_t initializeWithTake for MLDecisionTreeRegressor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v5 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v5 - 8) + 32))(a1 + v4, a2 + v4, v5);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v6 = a3[8];
  v7 = *(a2 + v6);
  v8 = *(a2 + v6 + 16);
  v9 = *(a2 + v6 + 32);
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  *(a1 + v6 + 32) = v9;
  *(a1 + v6 + 16) = v8;
  *(a1 + v6) = v7;
  v10 = a3[9];
  *(a1 + v10) = *(a2 + v10);
  *(a1 + v10 + 16) = *(a2 + v10 + 16);
  v11 = a3[10];
  *(a1 + v11) = *(a2 + v11);
  *(a1 + v11 + 16) = *(a2 + v11 + 16);
  return a1;
}

void *assignWithTake for MLDecisionTreeRegressor(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a1[1];
  a1[1] = a2[1];
  v6;
  v7 = a1 + 2;
  v8 = a2 + 2;
  v9 = a1[2];
  if (v9)
  {
    v10 = a2[2];
    if (v10)
    {
      a1[2] = v10;
      v9;
      a1[3] = a2[3];
      v11 = a1[4];
      a1[4] = a2[4];
      v11;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v7 = *v8;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v7 = *v8;
  }

  v12 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v13 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v13 - 8) + 40))(a1 + v12, a2 + v12, v13);
  v14 = a3[5];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  v16 = a3[6];
  *(a1 + v16) = *(a2 + v16);
  v17 = *(a1 + v16 + 8);
  *(a1 + v16 + 8) = *(a2 + v16 + 8);
  v17;
  v18 = a3[7];
  v19 = *(a1 + v18);
  *(a1 + v18) = *(a2 + v18);
  v19;
  v20 = a3[8];
  v21 = (a1 + v20);
  if (*(a1 + v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v20));
  }

  v22 = *(a2 + v20);
  v21[1] = *(a2 + v20 + 16);
  *v21 = v22;
  *(a1 + v20 + 32) = *(a2 + v20 + 32);
  *(a1 + v20 + 40) = *(a2 + v20 + 40);
  *(a1 + v20 + 56) = *(a2 + v20 + 56);
  v23 = a3[9];
  v24 = *(a2 + v23 + 16);
  v25 = *(a1 + v23);
  v26 = *(a1 + v23 + 8);
  *(a1 + v23) = *(a2 + v23);
  v27 = *(a1 + v23 + 16);
  *(a1 + v23 + 16) = v24;
  outlined consume of Result<_RegressorMetrics, Error>(v25, v26, v27);
  v28 = a3[10];
  v29 = *(a2 + v28 + 16);
  v30 = *(a1 + v28);
  v31 = *(a1 + v28 + 8);
  *(a1 + v28) = *(a2 + v28);
  v32 = *(a1 + v28 + 16);
  *(a1 + v28 + 16) = v29;
  outlined consume of Result<_RegressorMetrics, Error>(v30, v31, v32);
  return a1;
}

uint64_t sub_E4AE7(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for TreeRegressorModel(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v5);
  }

  if ((*(a1 + *(a3 + 20)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20)) >> 1) + 1;
  }

  return v4;
}

uint64_t sub_E4B61(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for TreeRegressorModel(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLDecisionTreeRegressor(uint64_t a1)
{
  result = type metadata accessor for TreeRegressorModel(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.UnknownObject + 64;
    v3[2] = &unk_340978;
    v3[3] = &value witness table for Builtin.BridgeObject + 64;
    v3[4] = &unk_340990;
    v3[5] = &unk_3409A8;
    v3[6] = &unk_3409A8;
    swift_initStructMetadata(a1, 256, 7, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t sub_E4C4E()
{
  swift_unknownObjectRelease(*(v0 + 16));

  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v5 = v1[6];
  v6 = swift_task_alloc(64);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

uint64_t outlined copy of MLRegressorMetrics?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of Result<_RegressorMetrics, Error>(a1, a2, a3);
  }

  return result;
}

uint64_t SortedSet.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v29 = a1;
  v33 = a4;
  v6 = type metadata accessor for Set(0, a2, a4);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for Set<A>, v6);
  v8 = Array.init<A>(_:)(&v29, a2, v6, WitnessTable);
  LOBYTE(v6) = v8;
  *&v29 = v8;
  v34 = a2;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a2;
  v9 = type metadata accessor for Array(0, a2);
  v35 = swift_getWitnessTable(&protocol conformance descriptor for [A], v9);
  v10 = Sequence.sorted(by:)(partial apply for implicit closure #1 in SortedSet.init(_:), v19, v9, v35);
  v6;
  v36 = v10;
  v32 = v10;
  v26 = v10;

  v11 = swift_getWitnessTable(&protocol conformance descriptor for [A], v9);
  RandomAccessCollection<>.indices.getter(v9, v11, &protocol witness table for Int);
  *v28 = v29;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v13 = lazy protocol witness table accessor for type Int and conformance Int();
  v24 = &protocol witness table for Int;
  v25 = v13;
  v14 = swift_getWitnessTable(&protocol conformance descriptor for <> Range<A>, v12);
  v15 = v35;
  zip<A, B>(_:_:)(&v32, v28, v9, v12, v35, v14);
  v36;
  *v28 = v26;
  *&v28[8] = v27;
  *&v29 = v9;
  *(&v29 + 1) = v12;
  v30 = v15;
  v31 = v14;
  v16 = type metadata accessor for Zip2Sequence(0, &v29);
  v17 = swift_getWitnessTable(&protocol conformance descriptor for Zip2Sequence<A, B>, v16);
  Dictionary.init<A>(uniqueKeysWithValues:)(v28, v34, &type metadata for Int, v16, v33, v17);
  return v36;
}

void *initializeBufferWithCopyOfBuffer for TreeRegressorModel(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *v3 = *a2;
    v3 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    a1[1] = a2[1];
    v6 = a2[2];

    if (v6)
    {
      a1[2] = v6;
      a1[3] = a2[3];
      a1[4] = a2[4];
    }

    else
    {
      a1[4] = a2[4];
      *(a1 + 1) = *(a2 + 1);
    }

    v8 = *(a3 + 24);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = type metadata accessor for BaseTreeRegressorModel(0);
    (*(*(v11 - 8) + 16))(v9, v10, v11);
  }

  return v3;
}

uint64_t destroy for TreeRegressorModel(void *a1, uint64_t a2)
{
  a1[1];
  v3 = a1[2];
  if (v3)
  {
    v3;
    a1[4];
  }

  v4 = a1 + *(a2 + 24);
  v5 = type metadata accessor for BaseTreeRegressorModel(0);
  return (*(*(v5 - 8) + 8))(v4, v5);
}

void *initializeWithCopy for TreeRegressorModel(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a2[2];

  if (v4)
  {
    a1[2] = v4;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v5 = *(a3 + 24);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v8 - 8) + 16))(v6, v7, v8);
  return a1;
}

void *assignWithCopy for TreeRegressorModel(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v4;
  v5 = a1 + 2;
  v6 = a2 + 2;
  v7 = a1[2];
  v8 = a2[2];
  if (v7)
  {
    if (v8)
    {
      a1[2] = v8;

      v7;
      a1[3] = a2[3];
      v9 = a1[4];
      a1[4] = a2[4];

      v9;
    }

    else
    {
      outlined destroy of FeatureVectorizer<Float>.Transformer((a1 + 2));
      *v5 = *v6;
      a1[4] = a2[4];
    }
  }

  else if (v8)
  {
    a1[2] = v8;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *v5 = *v6;
  }

  v10 = *(a3 + 24);
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v13 - 8) + 24))(v11, v12, v13);
  return a1;
}

uint64_t initializeWithTake for TreeRegressorModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a3 + 24);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v6 - 8) + 32))(v4, v5, v6);
  return a1;
}

void *assignWithTake for TreeRegressorModel(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];
  v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v8 = a1[2];
  if (v8)
  {
    v9 = a2[2];
    if (v9)
    {
      a1[2] = v9;
      v8;
      a1[3] = a2[3];
      v10 = a1[4];
      a1[4] = a2[4];
      v10;
    }

    else
    {
      outlined destroy of FeatureVectorizer<Float>.Transformer((a1 + 2));
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v11 = *(a3 + 24);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v14 - 8) + 40))(v12, v13, v14);
  return a1;
}

uint64_t sub_E5397(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*(a1 + 8) & 0xFFFFFFFF00000001) == 0)
    {
      return (*(a1 + 8) >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for BaseTreeRegressorModel(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 24) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_E541F(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseTreeRegressorModel(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 24) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for TreeRegressorModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for TreeRegressorModel;
  if (!type metadata singleton initialization cache for TreeRegressorModel)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for TreeRegressorModel);
  }

  return result;
}

uint64_t type metadata completion function for TreeRegressorModel(uint64_t a1)
{
  v3[0] = &unk_340A38;
  v3[1] = &unk_340A50;
  result = type metadata accessor for BaseTreeRegressorModel(319);
  if (v2 <= 0x3F)
  {
    v3[2] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t TreeRegressorModel.computeMetrics(on:)(uint64_t a1)
{
  v51 = v3;
  v38 = v1;
  v47 = type metadata accessor for AnyColumn(0);
  v48 = *(v47 - 8);
  v4 = *(v48 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v34 = &v34;
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v36 = *(v35 - 8);
  v7 = *(v36 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v37 = &v34;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Double>>);
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v43 = &v34;
  v14 = type metadata accessor for DataFrame(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v44 = &v34;
  v49 = a1;
  result = TreeRegressorModel.applied(to:eventHandler:)(a1, 0, 0);
  if (!v2)
  {
    v42 = 0;
    v41 = v15;
    v40 = v14;
    v46 = v10;
    v20 = *v51;
    v51 = v51[1];
    v21 = v37;
    DataFrame.subscript.getter(v20, v51, &type metadata for Double);
    v50 = 0;
    v22 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
    v23 = v35;
    OptionalColumnProtocol.filled(with:)(&v50, v35, v22);
    (*(v36 + 8))(v21, v23);
    v24 = v34;
    DataFrame.subscript.getter(v20, v51);
    v25 = AnyColumn.convertedToDoubles()();
    (*(v48 + 8))(v24, v47);
    if (!v25)
    {
      BUG();
    }

    v45 = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ContiguousArray<Double>);
    v48 = v26;
    v27 = lazy protocol witness table accessor for type Double and conformance Double();
    v28 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type FilledColumn<Column<Double>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Double>>, &protocol conformance descriptor for FilledColumn<A>);
    v51 = v25;
    v29 = v28;
    v49 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type ContiguousArray<Double> and conformance ContiguousArray<A>, &demangling cache variable for type metadata for ContiguousArray<Double>, &protocol conformance descriptor for ContiguousArray<A>);
    v30 = v43;
    v31 = v26;
    v32 = v39;
    maximumAbsoluteError<A, B, C>(_:_:)(v43, &v45, &type metadata for Double, v39, v31, v27, v29, v49);
    v47 = v50;
    v45 = v51;
    rootMeanSquaredError<A, B, C>(_:_:)(v30, &v45, &type metadata for Double, v32, v48, v27, v29, v49);
    (*(v46 + 8))(v30, v32);
    (*(v41 + 8))(v44, v40);

    result = v50;
    v33 = v38;
    *v38 = v47;
    v33[1] = result;
    *(v33 + 16) = 0;
  }

  return result;
}

uint64_t TreeRegressorModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v49 = v4;
  v6 = v5;
  v45 = a3;
  v46 = a2;
  v7 = v3;
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v34 = *(v35 - 8);
  v8 = *(v34 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v36 = &v34;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  v42 = *(v43 - 8);
  v11 = *(v42 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = v6[2];
  if (!v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, ("ressorModel.swift" + 0x8000000000000000), "CreateML/TreeRegressorModel.swift", 33, 2, 16, 0);
    BUG();
  }

  v15 = v49;
  result = specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(a1, 0, v14, v6[3], v6[4]);
  if (!v15)
  {
    v49 = v7;
    type metadata accessor for TreeRegressorModel(0);
    v17 = BaseTreeRegressorModel.applied(features:eventHandler:)(&v34, v46, v45);
    v46 = 0;
    v45 = &v34;
    v18 = v17;
    DataFrame.init()(&v34);
    v37 = *v6;
    v19 = *(v18 + 16);
    v38 = v6[1];
    if (v19)
    {
      v48 = _swiftEmptyArrayStorage;
      v47 = v19;

      v20 = 0;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
      v21 = v47;
      v22 = v48;
      v23 = *(v18 + 16);
      v24 = 1;
      v25 = v18;
      do
      {
        if (v23 == v20)
        {
          BUG();
        }

        v26 = *(v25 + 4 * v20 + 32);
        v48 = v22;
        v27 = v22[2];
        v28 = v22[3];
        v29 = v27 + 1;
        if (v28 >> 1 <= v27)
        {
          v39 = v25;
          v40 = v23;
          v30 = v24;
          v44 = v26;
          v41 = v27 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 >= 2, v29, v24);
          v29 = v41;
          v26 = v44;
          v24 = v30;
          v23 = v40;
          v21 = v47;
          v25 = v39;
          v22 = v48;
        }

        ++v20;
        v22[2] = v29;
        *&v22[v27 + 4] = v26;
      }

      while (v21 != v20);
    }

    else
    {

      v22 = _swiftEmptyArrayStorage;
    }

    v48 = v22;
    v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v32 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type [Double] and conformance [A], &demangling cache variable for type metadata for [Double], &protocol conformance descriptor for [A]);
    v33 = v36;
    Column.init<A>(name:contents:)(v37, v38, &v48, &type metadata for Double, v31, v32);
    DataFrame.append<A>(column:)(v33, &type metadata for Double);
    (*(v34 + 8))(v33, v35);
    return (*(v42 + 8))(v45, v43);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TreeRegressorModel and conformance TreeRegressorModel()
{
  result = lazy protocol witness table cache variable for type TreeRegressorModel and conformance TreeRegressorModel;
  if (!lazy protocol witness table cache variable for type TreeRegressorModel and conformance TreeRegressorModel)
  {
    v1 = type metadata accessor for TreeRegressorModel(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for TreeRegressorModel, v1);
    lazy protocol witness table cache variable for type TreeRegressorModel and conformance TreeRegressorModel = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D4LL10parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = *(__swift_instantiateConcreteTypeFromMangledName(a2) - 8);
    v5 = ((*(v4 + 80) + 32) & ~*(v4 + 80)) + a1;
    v16 = *(v4 + 72);
    do
    {
      v17 = v3;
      KeyPath = swift_getKeyPath(a3);
      swift_getAtKeyPath(v5, KeyPath);

      v7 = v13;
      v8 = v14;
      v9 = _swiftEmptyArrayStorage[2];
      v10 = v9 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v9)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v10, 1);
        v8 = v14;
        v7 = v13;
      }

      _swiftEmptyArrayStorage[2] = v10;
      v11 = 2 * v9;
      _swiftEmptyArrayStorage[v11 + 4] = v7;
      _swiftEmptyArrayStorage[v11 + 5] = v8;
      v5 += v16;
      v3 = v17 - 1;
    }

    while (v17 != 1);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo12MLMultiArrayC_s0C5SliceVyAEGTt0g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *(*a5)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4))
{
  if ((a4 & 1) == 0)
  {
    v7 = a5(a1, a2, a3, a4);
LABEL_3:
    v8 = v7;
    goto LABEL_10;
  }

  v9 = type metadata accessor for __ContiguousArrayStorageBase(0);
  swift_unknownObjectRetain_n(a1, 2);
  v10 = swift_dynamicCastClass(a1, v9);
  if (!v10)
  {
    swift_unknownObjectRelease(a1);
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = v10[2];

  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (v11 != (a4 >> 1) - a3)
  {
    swift_unknownObjectRelease(a1);
    v7 = a5(a1, a2, a3, a4);
    goto LABEL_3;
  }

  v8 = swift_dynamicCastClass(a1, v9);
  if (!v8)
  {
    swift_unknownObjectRelease(a1);
    v8 = _swiftEmptyArrayStorage;
  }

LABEL_10:
  swift_unknownObjectRelease(a1);
  return v8;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData12FilledColumnVyAH0I0VySSGGAJyALySaySfGGGG_18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGs5NeverOTg5012_sSSSaySfG18j14MLComponents16lm3Vy6n4ML13pq2Vyu20GSSGIgggr_SS_AAtAIs5r68OIegnrzr_TR03_s8a80ML38SoundClassifierTrainingSessionDelegateC13loadg44FrameySay0A12MLComponents16cd4Vy04e4B013gh36zu7GSSGG07F37I00iJ0VKFZALSS_SayZ7GtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v1 = *(*(v78 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v79 = &v76;
  v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  v81 = *(v80 - 8);
  v4 = *(v81 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v83 = &v76;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v77 = &v76;
  v94 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[Float]>>);
  v96 = *(v94 - 8);
  v9 = *(v96 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v88 = &v76;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v95 = *(v12 - 8);
  v13 = *(v95 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v89 = &v76;
  i = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<FilledColumn<Column<String>>, FilledColumn<Column<[Float]>>>);
  v16 = *(*(i - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v90 = &v76;
  v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<FilledColumn<Column<String>>, FilledColumn<Column<[Float]>>>.Iterator);
  v19 = *(*(v82 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v97 = &v76;
  v85 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v86 = a1;
  v22 = dispatch thunk of Sequence.underestimatedCount.getter(v12, v85);
  v23 = v12;
  v84 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[Float]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[Float]>>, &protocol conformance descriptor for FilledColumn<A>);
  v24 = dispatch thunk of Sequence.underestimatedCount.getter(v94, v84);
  if (v24 < v22)
  {
    v22 = v24;
  }

  v93 = _swiftEmptyArrayStorage;
  v25 = 0;
  if (v22 > 0)
  {
    v25 = v22;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
  v87 = v93;
  v26 = v90;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v86, v90, &demangling cache variable for type metadata for Zip2Sequence<FilledColumn<Column<String>>, FilledColumn<Column<[Float]>>>);
  (*(v95 + 32))(v89, v26, v23);
  v95 = v23;
  v27 = v23;
  v28 = v94;
  dispatch thunk of Sequence.makeIterator()(v27, v85);
  (*(v96 + 32))(v88, v26 + *(i + 52), v28);
  v89 = (v97 + *(v82 + 52));
  dispatch thunk of Sequence.makeIterator()(v28, v84);
  v90 = v22;
  if (v22 < 0)
  {
    BUG();
  }

  if (v22)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<String>>>);
    v84 = (v97 + *(v29 + 36));
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[Float]>>>);
    v85 = (v89 + *(v30 + 36));
    v31 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
    v86 = v31;
    do
    {
      dispatch thunk of Collection.endIndex.getter(v95, v31);
      v32 = v84;
      if (*v84 == v91)
      {
        BUG();
      }

      v33 = v95;
      v34 = dispatch thunk of Collection.subscript.read(&v91, v84, v95, v31);
      v96 = *v35;
      i = v35[1];

      v34(&v91, 0);
      dispatch thunk of Collection.formIndex(after:)(v32, v33, v31);
      v36 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[Float]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[Float]>>, &protocol conformance descriptor for FilledColumn<A>);
      v37 = v94;
      dispatch thunk of Collection.endIndex.getter(v94, v36);
      v38 = v85;
      if (*v85 == v91)
      {
        i;
        BUG();
      }

      v88 = dispatch thunk of Collection.subscript.read(&v91, v85, v37, v36);
      v40 = *v39;

      (v88)(&v91, 0);
      dispatch thunk of Collection.formIndex(after:)(v38, v94, v36);
      v91 = v40;
      v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
      v42 = swift_allocObject(v41, 40, 7);
      v42[2] = 1;
      v42[3] = 2;
      v42[4] = v40[2];

      v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
      v44 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
      v45 = v79;
      MLShapedArray.init<A>(scalars:shape:)(&v91, v42, &type metadata for Float, v43, &protocol witness table for Float, v44);
      v91 = v96;
      v92 = i;
      v46 = v83;
      AnnotatedFeature.init(feature:annotation:)(v45, &v91, v78, &type metadata for String);
      v40;
      v47 = v87;
      v93 = v87;
      v48 = v87[2];
      if (v87[3] >> 1 <= v48)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v87[3] >= 2uLL, v48 + 1, 1);
        v47 = v93;
      }

      v47[2] = v48 + 1;
      v49 = *(v81 + 80);
      v87 = v47;
      (*(v81 + 32))(v47 + ((v49 + 32) & ~v49) + *(v81 + 72) * v48, v46, v80);
      v50 = v90 == (&dword_0 + 1);
      v90 = (v90 - 1);
      v51 = v97;
      v31 = v86;
    }

    while (!v50);
  }

  else
  {
    v51 = v97;
  }

  v52 = (*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<String>>>) + 36) + v51);
  v53 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v90 = v52;
  for (i = v53; ; v53 = i)
  {
    dispatch thunk of Collection.endIndex.getter(v95, v53);
    if (*v52 == v91)
    {
      break;
    }

    v54 = v95;
    v55 = dispatch thunk of Collection.subscript.read(&v91, v52, v95, v53);
    v56 = v54;
    v57 = v55;
    v88 = *v58;
    v96 = v58[1];

    v57(&v91, 0);
    dispatch thunk of Collection.formIndex(after:)(v52, v56, i);
    v59 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[Float]>>>) + 36);
    v60 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[Float]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[Float]>>, &protocol conformance descriptor for FilledColumn<A>);
    v61 = v89;
    v62 = v94;
    dispatch thunk of Collection.endIndex.getter(v94, v60);
    if (*(v61 + v59) == v91)
    {
      v96;
      v51 = v97;
      break;
    }

    v63 = v61 + v59;
    v83 = dispatch thunk of Collection.subscript.read(&v91, v63, v62, v60);
    v65 = *v64;

    (v83)(&v91, 0);
    dispatch thunk of Collection.formIndex(after:)(v63, v94, v60);
    v91 = v65;
    v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v67 = swift_allocObject(v66, 40, 7);
    v67[2] = 1;
    v67[3] = 2;
    v67[4] = v65[2];

    v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v69 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
    v70 = v79;
    MLShapedArray.init<A>(scalars:shape:)(&v91, v67, &type metadata for Float, v68, &protocol witness table for Float, v69);
    v91 = v88;
    v92 = v96;
    v71 = v77;
    AnnotatedFeature.init(feature:annotation:)(v70, &v91, v78, &type metadata for String);
    v65;
    v72 = v87;
    v93 = v87;
    v73 = v87[2];
    if (v87[3] >> 1 <= v73)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v87[3] >= 2uLL, v73 + 1, 1);
      v72 = v93;
    }

    v72[2] = v73 + 1;
    v74 = *(v81 + 80);
    v87 = v72;
    (*(v81 + 32))(v72 + ((v74 + 32) & ~v74) + *(v81 + 72) * v73, v71, v80);
    v51 = v97;
    v52 = v90;
  }

  *(v51 + *(v82 + 56)) = 1;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v51, &demangling cache variable for type metadata for Zip2Sequence<FilledColumn<Column<String>>, FilledColumn<Column<[Float]>>>.Iterator);
  return v87;
}

uint64_t SoundClassifierTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = "rt a new session" + 0x8000000000000000;
  v2 = v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  v3 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) = 0;
  v4 = v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
  v5 = type metadata accessor for MLSoundClassifier.Classifier(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
  v7 = type metadata accessor for MLSoundClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_parameters;
  v9 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics;
  v11 = type metadata accessor for MLClassifierMetrics(0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics, 1, 1, v11);
  v12 = v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter;
  v13 = type metadata accessor for TrainingTablePrinter(0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

void *SoundClassifierTrainingSessionDelegate.init(trainingData:featureExtractionOnly:modelParameters:sessionParameters:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v45 = v4;
  v42 = a4;
  v44 = a3;
  v43 = a2;
  v35 = a1;
  v38 = *v5;
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v36 = &v33;
  v10 = *(*(type metadata accessor for MLSoundClassifier.DataSource(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v37 = &v33;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v41 = &v33;
  v5[2] = 0xD000000000000010;
  v5[3] = "rt a new session" + 0x8000000000000000;
  v16 = v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  v17 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v39 = v16;
  v40 = v17;
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) = _swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) = _swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures) = _swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) = _swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels) = &_swiftEmptySetSingleton;
  *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) = 0;
  v18 = v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
  v19 = type metadata accessor for MLSoundClassifier.Classifier(0);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  v20 = v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
  v21 = type metadata accessor for MLSoundClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  __swift_storeEnumTagSinglePayload(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_parameters, 1, 1, v6);
  v22 = v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics;
  v23 = type metadata accessor for MLClassifierMetrics(0);
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  __swift_storeEnumTagSinglePayload(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics, 1, 1, v23);
  v24 = v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter;
  v25 = type metadata accessor for TrainingTablePrinter(0);
  v26 = v35;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  v27 = v37;
  outlined init with copy of MLTrainingSessionParameters(v26, v37, type metadata accessor for MLSoundClassifier.DataSource);
  v28 = v36;
  outlined init with copy of MLTrainingSessionParameters(v44, v36, type metadata accessor for MLSoundClassifier.ModelParameters);
  v29 = v45;
  MLSoundClassifier.PersistentParameters.init(trainingData:modelParameters:)(v27, v28);
  v45 = v29;
  if (v29)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v42, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for MLSoundClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLSoundClassifier.DataSource);
    v5[3];
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles);
    *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
    *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
    *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures);
    *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_parameters, &demangling cache variable for type metadata for MLSoundClassifier.ModelParameters?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics, &demangling cache variable for type metadata for MLClassifierMetrics?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics, &demangling cache variable for type metadata for MLClassifierMetrics?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter, &demangling cache variable for type metadata for TrainingTablePrinter?);
    swift_deallocPartialClassInstance(v5, v38, *(*v5 + 48), *(*v5 + 52));
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for MLSoundClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLSoundClassifier.DataSource);
    v30 = v41;
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v40);
    v31 = v39;
    swift_beginAccess(v39, v34, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v30, v31, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    swift_endAccess(v34);
    outlined init with take of MLClassifierMetrics(v42, v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
    *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) = v43 & 1;
  }

  return v5;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> SoundClassifierTrainingSessionDelegate.setUp()()
{
  v58 = v0;
  v59 = v1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Model?) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v51 = v41;
  v5 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v57 = v41;
  v50 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v8 = *(*(v50 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = v41;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Classifier?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v47 = v41;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v48 = v41;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v19 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v20 = *(*(v19 - 1) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v23 = v59 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v59 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, v42, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, v41, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v41, 1, v19) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v41, v41, type metadata accessor for MLSoundClassifier.PersistentParameters);
  v24 = v58;
  SoundClassifierTrainingSessionDelegate.populateFiles(parameters:)(v41);
  if (v24)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLSoundClassifier.PersistentParameters);
  }

  else
  {
    v56 = 0;
    v58 = *(v59 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels);
    outlined init with copy of MLTrainingSessionParameters(&v41[v19[5]], v57, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v54 = *&v41[v19[8]];
    v55 = *&v41[v19[6]];
    v25 = v19[9];
    v53 = *&v41[v25];
    v60 = v41[v25 + 8];
    v26 = v50;
    v27 = *(v50 + 28);
    v28 = v49;
    v52 = &v49[v27];
    *&v49[v27] = 0;
    *(v28 + v27 + 16) = 0;
    v29 = v26[8];
    *(v28 + v29) = 0;
    v30 = *&v42[v25 + 8];
    *(v28 + v29 + 8) = 1;
    *(v28 + v26[9]) = 32;
    outlined init with copy of MLTrainingSessionParameters(v57, v28, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    *(v28 + v26[5]) = v54;
    *(v28 + v26[6]) = v55;
    v46 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
    v43 = v53;
    v44 = v60;
    v45 = v30;

    v31 = v58;

    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(&v43, v52, &demangling cache variable for type metadata for Any?);
    outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v32 = v48;
    MLSoundClassifier.Classifier.init(labels:parameters:)(v31, v28);
    v33 = type metadata accessor for MLSoundClassifier.Classifier(0);
    v34 = v32;
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
    v35 = v59 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v59 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, &v43, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v34, v35, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
    swift_endAccess(&v43);
    v36 = v35;
    v37 = v47;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, v47, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
    if (__swift_getEnumTagSinglePayload(v37, 1, v33) == 1)
    {
      BUG();
    }

    v38 = v51;
    MLSoundClassifier.Classifier.makeTransformer()();
    outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLSoundClassifier.PersistentParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLSoundClassifier.Classifier);
    v39 = type metadata accessor for MLSoundClassifier.Model(0);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v39);
    v40 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v59;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v59, &v43, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v38, v40, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
    swift_endAccess(&v43);
  }
}

void *SoundClassifierTrainingSessionDelegate.populateFiles(parameters:)(uint64_t a1)
{
  v72 = v1;
  v63 = v2;
  v4 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  trainingData._rawValue = v57;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v70._rawValue = v57;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v69 = v57;
  v11 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v12 = *(*(v11 - 1) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = alloca(v12);
  v16 = alloca(v12);
  result = MLSoundClassifier.DataSource.annotatedFeatures()();
  v72 = v18;
  if (!v18)
  {
    v64 = v57;
    v71 = a1;
    if (result)
    {
      trainingData._rawValue = result;
      v19 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
      v20 = v71;
      outlined init with copy of MLTrainingSessionParameters(v71 + v19[5], v69, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v66 = *(v20 + v19[8]);
      v67 = *(v20 + v19[6]);
      v21 = v19[9];
      v64 = *(v20 + v21);
      LOBYTE(v65) = *(v20 + v21 + 8);
      v71 = *(v20 + v21 + 16);
      v22 = v11[7];
      *&v57[v22] = 0;
      *&v59[v22] = 0;
      v23 = v11[8];
      *&v57[v23] = 0;
      v24 = &v57[v22];
      v57[v23 + 8] = 1;
      *&v57[v11[9]] = 32;
      v26 = v69;
      outlined init with copy of MLTrainingSessionParameters(v69, v57, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      *&v57[v11[5]] = v66;
      *&v57[v11[6]] = v67;
      v61 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
      v58 = v64;
      v59[0] = v65;
      v60 = v71;

      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(&v58, v24, &demangling cache variable for type metadata for Any?);
      outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      rawValue = v70._rawValue;
      outlined init with copy of MLTrainingSessionParameters(v57, v70._rawValue, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLSoundClassifier.ModelParameters);
      LOBYTE(v26) = trainingData._rawValue;
      v27 = MLSoundClassifier.ModelParameters.ValidationData.splitFeatures(trainingData:)(trainingData);
      v72 = v28;
      if (v28)
      {
LABEL_4:
        outlined destroy of MLActivityClassifier.ModelParameters(rawValue, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
        LOBYTE(v29) = v26;
        return v29;
      }

      v32 = *(&v27 + 1);
      v33 = v27;
      outlined destroy of MLActivityClassifier.ModelParameters(rawValue, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v34 = v63;
      v35 = *(v63 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
      *(v63 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures) = v33;
      v35;
      if (!v32)
      {
        v32 = _swiftEmptyArrayStorage;
      }

      v36 = *(v34 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures);
      *(v34 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) = v32;
      v36;
      v37 = &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>;
      v38 = &unk_340B80;
      v39 = trainingData._rawValue;
    }

    else
    {
      v30 = v71;
      v31 = MLSoundClassifier.DataSource.labeledSounds()();
      v43 = v31;
      v70._rawValue = specialized Sequence.flatMap<A>(_:)(v31);
      v72 = 0;
      v43;
      v44 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
      outlined init with copy of MLTrainingSessionParameters(v30 + v44[5], v69, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v67 = *(v30 + v44[8]);
      v62 = *(v30 + v44[6]);
      v45 = v44[9];
      v65 = *(v30 + v45);
      LOBYTE(v66) = *(v30 + v45 + 8);
      v46 = v11[7];
      v47 = v64;
      v48 = &v64[v46];
      *&v64[v46] = 0;
      *(v47 + v46 + 16) = 0;
      v49 = v11[8];
      *(v47 + v49) = 0;
      v50 = *(v30 + v45 + 16);
      *(v47 + v49 + 8) = 1;
      *(v47 + v11[9]) = 32;
      outlined init with copy of MLTrainingSessionParameters(v69, v47, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      *(v47 + v11[5]) = v67;
      *(v47 + v11[6]) = v62;
      v61 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
      v58 = v65;
      v59[0] = v66;
      v60 = v50;

      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(&v58, v48, &demangling cache variable for type metadata for Any?);
      outlined destroy of MLActivityClassifier.ModelParameters(v69, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      rawValue = trainingData._rawValue;
      outlined init with copy of MLTrainingSessionParameters(v47, trainingData._rawValue, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v51 = v47;
      v26 = v70._rawValue;
      outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLSoundClassifier.ModelParameters);
      v52 = MLSoundClassifier.ModelParameters.ValidationData.splitFiles(trainingData:)(v26);
      v72 = v53;
      if (v53)
      {
        goto LABEL_4;
      }

      v54 = *(&v52 + 1);
      v55 = v52;
      outlined destroy of MLActivityClassifier.ModelParameters(rawValue, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      if (!v54)
      {
        v54 = _swiftEmptyArrayStorage;
      }

      v34 = v63;
      v56 = v72;
      specialized SoundClassifierTrainingSessionDelegate.populateFiles<A, B>(training:validation:parameters:)(v55, v54, v71);
      v72 = v56;
      if (v56)
      {
        v55;
        v54;
        LOBYTE(v29) = v70._rawValue;
        return v29;
      }

      v55;
      v54;
      v37 = &demangling cache variable for type metadata for AnnotatedFeature<URL, String>;
      v38 = &unk_340C38;
      v39 = v70._rawValue;
    }

    v40 = v72;
    MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v39, v37, v38);
    v72 = v40;
    v39;
    v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm);
    v29 = *(v34 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels);
    *(v34 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels) = v42;
    return v29;
  }

  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> SoundClassifierTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v94 = v1;
  v92 = v2;
  rawValue = from._rawValue;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Classifier?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v80 = &v73;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Model?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v86 = &v73;
  v89 = type metadata accessor for URL(0);
  v82 = *(v89 - 8);
  v9 = *(v82 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v83 = &v73;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v81 = &v73;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v88 = &v73;
  v17 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v91 = &v73;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v79 = &v73;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v26 = type metadata accessor for MLCheckpoint(0);
  v90 = *(v26 - 8);
  v27 = *(v90 + 8);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v85 = &v73;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v84 = &v73;
  v32 = alloca(v27);
  v33 = alloca(v27);
  specialized BidirectionalCollection.last.getter(rawValue);
  v87 = v26;
  if (__swift_getEnumTagSinglePayload(&v73, 1, v26) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v73, &demangling cache variable for type metadata for MLCheckpoint?);
    v34 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v34, 0, 0);
    *v35 = 0xD00000000000001DLL;
    *(v35 + 8) = "reated." + 0x8000000000000000;
    *(v35 + 16) = 0;
    *(v35 + 32) = 0;
    *(v35 + 48) = 0;
    swift_willThrow();
    return;
  }

  v93 = &v73;
  outlined init with take of MLClassifierMetrics(&v73, &v73, type metadata accessor for MLCheckpoint);
  v36 = v92 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v92 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, v74, 0, 0);
  v37 = v88;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, v88, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v37, 1, v17) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    BUG();
  }

  v38 = v91;
  outlined init with take of MLClassifierMetrics(v37, v91, type metadata accessor for MLSoundClassifier.PersistentParameters);
  v39 = v94;
  SoundClassifierTrainingSessionDelegate.populateFiles(parameters:)(v38);
  v40 = v86;
  if (v39)
  {
    goto LABEL_5;
  }

  v94 = 0;
  v42 = *(v93 + *(v87 + 20));
  if (v42 != 2)
  {
    if (v42 == 1)
    {
      v43 = v93;
      SoundClassifierTrainingSessionDelegate.resumeFeatureExtraction(from:)(v93);
      outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLSoundClassifier.PersistentParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLCheckpoint);
      return;
    }

    v55 = v93;
    v56 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v56, 0, 0);
    *v57 = 0xD00000000000003ELL;
    *(v57 + 8) = "No checkpoints to be resumed." + 0x8000000000000000;
    *(v57 + 16) = 0;
    *(v57 + 32) = 0;
    *(v57 + 48) = 0;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLSoundClassifier.PersistentParameters);
    v41 = v55;
LABEL_6:
    outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLCheckpoint);
    return;
  }

  v78[0] = rawValue;
  v44 = rawValue[2];
  v45 = 1;
  if (!v44)
  {
    v54 = 0;
    goto LABEL_24;
  }

  v46 = v44 - 1;
  v47 = rawValue + ((v90[80] + 32) & ~v90[80]) + v46 * *(v90 + 9);
  v88 = -*(v90 + 9);
  v90 = &loc_308EF - 0x14FFFFFFFF9B9A86;
  while (2)
  {
    rawValue = v46;
    v48 = v38;
    v49 = v40;
    v50 = v85;
    outlined init with copy of MLTrainingSessionParameters(v47, v85, type metadata accessor for MLCheckpoint);
    switch(*(v50 + *(v87 + 20)))
    {
      case 0:
        v51 = 0xEB0000000064657ALL;
        v52 = 0x696C616974696E69;
        goto LABEL_17;
      case 1:
        110;
        outlined destroy of MLActivityClassifier.ModelParameters(v85, type metadata accessor for MLCheckpoint);
        v45 = 0;
        v40 = v49;
        v38 = v48;
        v54 = rawValue;
        goto LABEL_24;
      case 2:
        v51 = 0xE800000000000000;
        v52 = 0x676E696E69617274;
        goto LABEL_17;
      case 3:
        v51 = 0xEA0000000000676ELL;
        v52 = 0x697461756C617665;
        goto LABEL_17;
      case 4:
        v51 = v90;
        v52 = 0x636E657265666E69;
LABEL_17:
        v53 = _stringCompareWithSmolCheck(_:_:expecting:)(v52, v51, 0x6974636172747865, 0xEA0000000000676ELL, 0);
        v51;
        outlined destroy of MLActivityClassifier.ModelParameters(v85, type metadata accessor for MLCheckpoint);
        v54 = rawValue;
        if ((v53 & 1) == 0)
        {
          v47 += v88;
          v46 = rawValue - 1;
          v40 = v86;
          v38 = v91;
          if (!rawValue)
          {
            v54 = 0;
            v45 = 1;
            goto LABEL_24;
          }

          continue;
        }

        v45 = 0;
        v40 = v86;
        v38 = v91;
LABEL_24:
        rawValue = &v73;
        v58 = alloca(24);
        v59 = alloca(32);
        v75 = v78;
        v60 = v79;
        v61 = v94;
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), &v73, v54, v45, v77);
        if (__swift_getEnumTagSinglePayload(v60, 1, v87) == 1)
        {
          v94 = v61;
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
          goto LABEL_28;
        }

        v62 = v60;
        v63 = v84;
        outlined init with take of MLClassifierMetrics(v62, v84, type metadata accessor for MLCheckpoint);
        SoundClassifierTrainingSessionDelegate.resumeFeatureExtraction(from:)(v63);
        outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLCheckpoint);
        if (v61)
        {
LABEL_5:
          outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLSoundClassifier.PersistentParameters);
          v41 = v93;
          goto LABEL_6;
        }

        v94 = 0;
LABEL_28:
        v64 = v83;
        URL.appendingPathComponent(_:)(0x6C65646F6DLL, 0xE500000000000000);
        v65 = v81;
        URL.appendingPathExtension(_:)(6777712, 0xE300000000000000);
        rawValue = *(v82 + 8);
        (rawValue)(v64, v89);
        v66 = v92 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
        swift_beginAccess(v92 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, v78, 0, 0);
        v67 = v80;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v66, v80, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
        v68 = type metadata accessor for MLSoundClassifier.Classifier(0);
        if (__swift_getEnumTagSinglePayload(v67, 1, v68) == 1)
        {
          BUG();
        }

        v69 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLSoundClassifier.Classifier and conformance MLSoundClassifier.Classifier, type metadata accessor for MLSoundClassifier.Classifier, &protocol conformance descriptor for MLSoundClassifier.Classifier);
        v70 = v94;
        UpdatableSupervisedEstimator.readWithOptimizer(from:)(v65, v68, v69);
        (rawValue)(v65, v89);
        outlined destroy of MLActivityClassifier.ModelParameters(v91, type metadata accessor for MLSoundClassifier.PersistentParameters);
        outlined destroy of MLActivityClassifier.ModelParameters(v93, type metadata accessor for MLCheckpoint);
        outlined destroy of MLActivityClassifier.ModelParameters(v67, type metadata accessor for MLSoundClassifier.Classifier);
        if (!v70)
        {
          v71 = type metadata accessor for MLSoundClassifier.Model(0);
          __swift_storeEnumTagSinglePayload(v40, 0, 1, v71);
          v72 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v92;
          swift_beginAccess(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v92, v76, 33, 0);
          outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v40, v72, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
          swift_endAccess(v76);
        }

        return;
    }
  }
}

uint64_t SoundClassifierTrainingSessionDelegate.resumeFeatureExtraction(from:)(uint64_t a1)
{
  v190 = v1;
  v180 = v2;
  v192 = a1;
  v183 = type metadata accessor for CSVType(0);
  v174 = *(v183 - 1);
  v3 = v174[8];
  v4 = alloca(v3);
  v5 = alloca(v3);
  v166 = v146;
  v6 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v152 = v146;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v173 = v146;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Model?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v160 = v146;
  v14 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v168 = v146;
  v158 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v17 = *(*(v158 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v157 = v146;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Classifier?) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v155 = v146;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v156 = v146;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v153 = v146;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v154 = v146;
  v30 = alloca(v25);
  v31 = alloca(v25);
  v175 = v146;
  v32 = alloca(v25);
  v33 = alloca(v25);
  v172 = v146;
  v187 = type metadata accessor for DataFrame(0);
  v184 = *(v187 - 8);
  v34 = v184[8];
  v35 = alloca(v34);
  v36 = alloca(v34);
  v151 = v146;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v161 = v146;
  v39 = alloca(v34);
  v40 = alloca(v34);
  v185 = v146;
  v41 = alloca(v34);
  v42 = alloca(v34);
  v181 = v146;
  v179 = type metadata accessor for URL(0);
  v191 = *(v179 - 8);
  v43 = *(v191 + 64);
  v44 = alloca(v43);
  v45 = alloca(v43);
  v167 = v146;
  v46 = alloca(v43);
  v47 = alloca(v43);
  v188 = v146;
  v48 = alloca(v43);
  v49 = alloca(v43);
  v176 = v146;
  v50 = alloca(v43);
  v51 = alloca(v43);
  v189 = v146;
  v52 = alloca(v43);
  v53 = alloca(v43);
  v186 = v146;
  v54 = alloca(v43);
  v55 = alloca(v43);
  v178 = v146;
  v56 = alloca(v43);
  v57 = alloca(v43);
  v177 = v146;
  v58 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?) - 8) + 64);
  v59 = alloca(v58);
  v60 = alloca(v58);
  v61 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v62 = *(*(v61 - 8) + 64);
  v63 = alloca(v62);
  v64 = alloca(v62);
  v65 = v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, v146, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, v146, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  v159 = v61;
  if (__swift_getEnumTagSinglePayload(v146, 1, v61) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v146, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    BUG();
  }

  v182 = v146;
  outlined init with take of MLClassifierMetrics(v146, v146, type metadata accessor for MLSoundClassifier.PersistentParameters);
  v66 = v178;
  URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
  URL.appendingPathExtension(_:)(7762787, 0xE300000000000000);
  v67 = *(v191 + 8);
  v68 = v179;
  (v67)(v66, v179);
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
  URL.appendingPathExtension(_:)(7762787, 0xE300000000000000);
  v178 = v67;
  (v67)(v66, v68);
  v69 = v189;
  v70 = v177;
  v191 = *(v191 + 16);
  (v191)(v189, v177, v68);
  v71 = v185;
  v72 = v190;
  DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v69, 0, 0, 0, 1);
  if (v72)
  {
    v185 = v72;
    (v191)(v188, v70, v68);
    v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, CSVType)>);
    v190 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
    v74 = *(v190 - 8);
    v75 = *(v74 + 72);
    v76 = *(v74 + 80);
    v77 = (v76 + 32) & ~*(v74 + 80);
    v162 = v73;
    v165 = v77 + 2 * v75;
    v164 = v76 | 7;
    v78 = swift_allocObject(v73, v165, v76 | 7);
    *(v78 + 16) = 2;
    *(v78 + 24) = 4;
    v79 = v78 + v77;
    v80 = v78 + v77 + *(v190 + 48);
    *(v78 + v77) = 0x7365727574616566;
    v163 = v77;
    *(v78 + v77 + 8) = 0xE800000000000000;
    v81 = v174[13];
    v169 = enum case for CSVType.data(_:);
    (v81)(v80, enum case for CSVType.data(_:), v183);
    v82 = v81;
    v83 = &v75[*(v190 + 48) + v79];
    *&v75[v79] = 0x62614C7373616C63;
    v176 = v75;
    *&v75[v79 + 8] = 0xEA00000000006C65;
    v170 = enum case for CSVType.string(_:);
    v84 = v183;
    v85 = v82;
    (v82)(v83, enum case for CSVType.string(_:), v183);
    v192 = Dictionary.init(dictionaryLiteral:)(v78, &type metadata for String, v84, &protocol witness table for String);
    v86 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v189 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v174 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v87 = v166;
    v171 = enum case for CSVType.double(_:);
    v175 = v85;
    (v85)(v166, enum case for CSVType.double(_:), v84);
    v88 = v173;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v86, v189, v174, v87, 1, 1, 0, 44, 0xE100000000000000, 92);
    v89 = v151;
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v188, 0, 0, 0, 1, v192, v88);
    v192 = 0;
    v188 = v184[4];
    (v188)(v181, v89, v187);
    (v191)(v167, v186, v179);
    v93 = swift_allocObject(v162, v165, v164);
    *(v93 + 16) = 2;
    *(v93 + 24) = 4;
    v94 = v163;
    v95 = v93 + v163;
    v96 = v190;
    v97 = v93 + v163 + *(v190 + 48);
    *(v93 + v163) = 0x7365727574616566;
    *(v93 + v94 + 8) = 0xE800000000000000;
    v98 = v175;
    (v175)(v97, v169, v183);
    v99 = v176;
    v100 = &v176[*(v96 + 48) + v95];
    *&v176[v95] = 0x62614C7373616C63;
    *&v99[v95 + 8] = 0xEA00000000006C65;
    v101 = v183;
    v102 = v98;
    v98(v100, v170, v183);
    v103 = v101;
    v191 = Dictionary.init(dictionaryLiteral:)(v93, &type metadata for String, v101, &protocol witness table for String);
    v190 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v189 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v173 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v104 = v166;
    v102(v166, v171, v103);
    v105 = 1;
    v106 = v152;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v190, v189, v173, v104, 1, 1, 0, 44, 0xE100000000000000, 92);
    v107 = v153;
    v108 = v192;
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v167, 0, 0, 0, 1, v191, v106);
    if (v108)
    {
      v108;
    }

    else
    {
      v105 = 0;
    }

    v185;
  }

  else
  {
    v90 = v71;
    v91 = v68;
    v188 = v184[4];
    (v188)(v181, v90, v187);
    v92 = v176;
    (v191)(v176, v186, v91);
    v107 = v175;
    DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v92, 0, 0, 0, 1);
    v105 = 0;
  }

  __swift_storeEnumTagSinglePayload(v107, v105, 1, v187);
  v109 = v172;
  outlined init with take of DataFrame?(v107, v172);
  v110 = static SoundClassifierTrainingSessionDelegate.loadDataFrame(_:)();
  v192 = 0;
  v111 = v179;
  v114 = v180;
  v115 = *(v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
  *(v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures) = v110;
  v115;
  v116 = v154;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v109, v154, &demangling cache variable for type metadata for DataFrame?);
  v117 = v187;
  if (__swift_getEnumTagSinglePayload(v116, 1, v187) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v116, &demangling cache variable for type metadata for DataFrame?);
    v118 = v182;
  }

  else
  {
    v119 = v161;
    (v188)(v161, v116, v117);
    v120 = v192;
    v121 = static SoundClassifierTrainingSessionDelegate.loadDataFrame(_:)();
    v192 = v120;
    v118 = v182;
    if (v120)
    {
      v122 = v119;
      v123 = v184[1];
      v123(v122, v117);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v172, &demangling cache variable for type metadata for DataFrame?);
      v123(v181, v117);
      v112 = v178;
      (v178)(v186, v111);
      v112(v177, v111);
      return outlined destroy of MLActivityClassifier.ModelParameters(v118, type metadata accessor for MLSoundClassifier.PersistentParameters);
    }

    v124 = v119;
    v125 = v121;
    (v184[1])(v124, v117);
    v126 = v180;
    v127 = *(v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures);
    *(v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) = v125;
    v114 = v126;
    v127;
  }

  v191 = *(v114 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels);
  v128 = v159;
  v129 = v168;
  outlined init with copy of MLTrainingSessionParameters(v159[5] + v118, v168, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v185 = *(v118 + v128[8]);
  v189 = *(v118 + v128[6]);
  v130 = v128[9];
  v188 = *(v118 + v130);
  LOBYTE(v190) = *(v118 + v130 + 8);
  v131 = v158;
  v132 = *(v158 + 28);
  v133 = v157;
  v183 = &v157[v132];
  *&v157[v132] = 0;
  *(v133 + v132 + 16) = 0;
  v134 = v131[8];
  *(v133 + v134) = 0;
  v135 = *(v118 + v130 + 16);
  *(v133 + v134 + 8) = 1;
  *(v133 + v131[9]) = 32;
  outlined init with copy of MLTrainingSessionParameters(v129, v133, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  *(v133 + v131[5]) = v185;
  *(v133 + v131[6]) = v189;
  v150 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v147 = v188;
  v148 = v190;
  v149 = v135;

  v136 = v191;

  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(&v147, v183, &demangling cache variable for type metadata for Any?);
  outlined destroy of MLActivityClassifier.ModelParameters(v168, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v137 = v156;
  MLSoundClassifier.Classifier.init(labels:parameters:)(v136, v133);
  v138 = type metadata accessor for MLSoundClassifier.Classifier(0);
  __swift_storeEnumTagSinglePayload(v137, 0, 1, v138);
  v139 = v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
  swift_beginAccess(v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, &v147, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v137, v139, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
  swift_endAccess(&v147);
  v140 = v155;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v139, v155, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
  if (__swift_getEnumTagSinglePayload(v140, 1, v138) == 1)
  {
    BUG();
  }

  v141 = v160;
  MLSoundClassifier.Classifier.makeTransformer()();
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v172, &demangling cache variable for type metadata for DataFrame?);
  (v184[1])(v181, v187);
  v142 = v179;
  v143 = v178;
  (v178)(v186, v179);
  v143(v177, v142);
  outlined destroy of MLActivityClassifier.ModelParameters(v182, type metadata accessor for MLSoundClassifier.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v140, type metadata accessor for MLSoundClassifier.Classifier);
  v144 = type metadata accessor for MLSoundClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v141, 0, 1, v144);
  v145 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v180;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v180, &v147, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v141, v145, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
  return swift_endAccess(&v147);
}

void *static SoundClassifierTrainingSessionDelegate.loadDataFrame(_:)()
{
  v34 = v0;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<FilledColumn<Column<String>>, FilledColumn<Column<[Float]>>>);
  v1 = *(*(v37 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v36 = v33;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v40 = *(v41 - 8);
  v4 = *(v40 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGs5NeverOTg5012_sSSSaySfG18j14MLComponents16lm3Vy6n4ML13pq2Vyu20GSSGIgggr_SS_AAtAIs5r68OIegnrzr_TR03_s8a80ML38SoundClassifierTrainingSessionDelegateC13loadg44FrameySay0A12MLComponents16cd4Vy04e4B013gh36zu7GSSGG07F37I00iJ0VKFZALSS_SayZ7GtXEfU_Tf3nnnpf_nTf1cn_n = v33;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[Float]>>);
  v38 = *(v39 - 8);
  v7 = *(v38 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v48 = v33;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v46 = *(v45 - 8);
  v14 = *(v46 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Data>);
  v42 = *(v43 - 8);
  v17 = *(v42 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v44 = v33;
  DataFrame.subscript.getter(0x7365727574616566, 0xE800000000000000, &type metadata for Data);
  DataFrame.subscript.getter(0x62614C7373616C63, 0xEA00000000006C65, &type metadata for String);
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  v20 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v47 = v33;
  OptionalColumnProtocol.filled(with:)(v33, v10, v20);
  (*(v35 + 8))(v33, v10);
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v22 = type metadata accessor for JSONDecoder(0);
  swift_allocObject(v22, *(v22 + 48), *(v22 + 52));
  v33[0] = JSONDecoder.init()();
  v23 = lazy protocol witness table accessor for type [Float] and conformance <A> [A](&lazy protocol witness table cache variable for type [Float] and conformance <A> [A], &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
  v24 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type JSONDecoder and conformance JSONDecoder, &type metadata accessor for JSONDecoder, &protocol conformance descriptor for JSONDecoder);
  v25 = v34;
  Column.decoded<A, B>(_:using:)(v21, v33, v43, v21, v22, v23, v24);

  if (v25)
  {
    (*(v46 + 8))(v47, v45);
    return (*(v42 + 8))(v44, v43);
  }

  else
  {
    v33[0] = _swiftEmptyArrayStorage;
    v27 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Float]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Float]>, &protocol conformance descriptor for Column<A>);
    v28 = v41;
    v29 = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGs5NeverOTg5012_sSSSaySfG18j14MLComponents16lm3Vy6n4ML13pq2Vyu20GSSGIgggr_SS_AAtAIs5r68OIegnrzr_TR03_s8a80ML38SoundClassifierTrainingSessionDelegateC13loadg44FrameySay0A12MLComponents16cd4Vy04e4B013gh36zu7GSSGG07F37I00iJ0VKFZALSS_SayZ7GtXEfU_Tf3nnnpf_nTf1cn_n;
    OptionalColumnProtocol.filled(with:)(v33, v41, v27);
    (*(v40 + 8))(v29, v28);
    v30 = v36;
    (*(v46 + 16))(v36, v47, v45);
    v31 = v39;
    v32 = v38;
    (*(v38 + 16))(v30 + *(v37 + 52), v48, v39);
    MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGs5NeverOTg5012_sSSSaySfG18j14MLComponents16lm3Vy6n4ML13pq2Vyu20GSSGIgggr_SS_AAtAIs5r68OIegnrzr_TR03_s8a80ML38SoundClassifierTrainingSessionDelegateC13loadg44FrameySay0A12MLComponents16cd4Vy04e4B013gh36zu7GSSGG07F37I00iJ0VKFZALSS_SayZ7GtXEfU_Tf3nnnpf_nTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData12FilledColumnVyAH0I0VySSGGAJyALySaySfGGGG_18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGs5NeverOTg5012_sSSSaySfG18j14MLComponents16lm3Vy6n4ML13pq2Vyu20GSSGIgggr_SS_AAtAIs5r68OIegnrzr_TR03_s8a80ML38SoundClassifierTrainingSessionDelegateC13loadg44FrameySay0A12MLComponents16cd4Vy04e4B013gh36zu7GSSGG07F37I00iJ0VKFZALSS_SayZ7GtXEfU_Tf3nnnpf_nTf1cn_n(v30);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Zip2Sequence<FilledColumn<Column<String>>, FilledColumn<Column<[Float]>>>);
    (*(v32 + 8))(v48, v31);
    (*(v46 + 8))(v47, v45);
    (*(v42 + 8))(v44, v43);
    return MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGs5NeverOTg5012_sSSSaySfG18j14MLComponents16lm3Vy6n4ML13pq2Vyu20GSSGIgggr_SS_AAtAIs5r68OIegnrzr_TR03_s8a80ML38SoundClassifierTrainingSessionDelegateC13loadg44FrameySay0A12MLComponents16cd4Vy04e4B013gh36zu7GSSGG07F37I00iJ0VKFZALSS_SayZ7GtXEfU_Tf3nnnpf_nTf1cn_n;
  }
}

uint64_t specialized SoundClassifierTrainingSessionDelegate.populateFiles<A, B>(training:validation:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *(a3 + *(type metadata accessor for MLSoundClassifier.PersistentParameters(0) + 28));
  ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5 = _s8CreateML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5(a1, v12, a2);
  v6 = ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5;
  v13[0] = ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5;

  specialized MutableCollection<>.sort(by:)(v13, a2);
  if (v3)
  {

    BUG();
  }

  v6;
  v7 = *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles);
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) = v13[0];
  v7;
  v8 = _s8CreateML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5(a2, v12, a2);
  v9 = v8;
  v13[0] = v8;

  specialized MutableCollection<>.sort(by:)(v13, a2);
  v9;
  v10 = *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) = v13[0];
  return v10;
}

uint64_t key path getter for AnnotatedFeature.annotation : AnnotatedFeature<MLShapedArray<Float>, String>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(a4);
  result = AnnotatedFeature.annotation.getter(v6);
  *v5 = v8;
  return result;
}

uint64_t key path setter for AnnotatedFeature.annotation : AnnotatedFeature<MLShapedArray<Float>, String>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a1;
  v7 = a1[1];
  v10[0] = v6;
  v10[1] = v7;

  v8 = __swift_instantiateConcreteTypeFromMangledName(a5);
  return AnnotatedFeature.annotation.setter(v10, v8);
}

void *_s8CreateML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5(uint64_t a1, double a2, uint64_t a3)
{
  v38 = a2;
  v3 = *(*(type metadata accessor for URL(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v30 = v27;
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v39 = *(v40 - 8);
  v6 = *(v39 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v37 = v27;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v41 = v27;
  v28 = a1;

  specialized MutableCollection<>.sort(by:)(&v28, a3);
  v11 = *(v28 + 16);
  if (v11)
  {
    v38 = v38 * 1000.0;
    v12 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v34 = v28;
    v33 = v12;
    v13 = v28 + v12;
    v35 = *(v39 + 16);
    v36 = *(v39 + 72);
    v42 = _swiftEmptyArrayStorage;
    do
    {
      v29 = v11;
      v14 = v40;
      v35(v41, v13, v40);
      v15 = v30;
      AnnotatedFeature.feature.getter(v14);
      objc_allocWithZone(AVAudioFile);
      v16 = @nonobjc AVAudioFile.init(forReading:)(v15);
      v17 = v16;
      if (v16)
      {
        v18 = [v16 length] * 1000.0;
        v31 = v18;
        v19 = [v17 fileFormat];
        v20 = v19;
        [v20 sampleRate];
        v32 = v18;

        if (v31 / v32 >= v38)
        {
          v35(v37, v41, v40);
          if (swift_isUniquelyReferenced_nonNull_native(v42))
          {
            v21 = v42;
          }

          else
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
          }

          v22 = v21[2];
          if (v21[3] >> 1 <= v22)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21[3] >= 2uLL, v22 + 1, 1, v21);
          }

          v21[2] = v22 + 1;
          v42 = v21;
          v23 = v21 + v33 + v36 * v22;
          v24 = v40;
          v25 = v39;
          (*(v39 + 32))(v23, v37, v40);

          (*(v25 + 8))(v41, v24);
        }

        else
        {
          (*(v39 + 8))(v41, v40);
        }
      }

      else
      {
        (*(v39 + 8))(v41, v40);
      }

      v13 += v36;
      v11 = v29 - 1;
    }

    while (v29 != 1);

    return v42;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

Swift::Int_optional __swiftcall SoundClassifierTrainingSessionDelegate.itemCount(phase:)(CreateML::MLPhase phase)
{
  switch(*phase)
  {
    case 0:
    case 4:
      v2.is_nil = 1;
      v2.value = 0;
      return v2;
    case 1:
      v3 = *(*(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) + 16);
      v4 = *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
      v5 = __OFADD__(*(v4 + 16), v3);
      v2.value = *(v4 + 16) + v3;
      if (v5)
      {
        BUG();
      }

      goto LABEL_7;
    case 2:
      v2.value = 1;
      goto LABEL_7;
    case 3:
      v2.value = 0;
LABEL_7:
      v2.is_nil = 0;
      return v2;
  }
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> SoundClassifierTrainingSessionDelegate.extractFeatures(from:)(Swift::Int from)
{
  v51 = v1;
  v50 = v2;
  v52 = from;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 1) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = v50 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v50 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, v44, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v36, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v36, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v36, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    BUG();
  }

  v56 = &v36;
  outlined init with take of MLClassifierMetrics(&v36, &v36, type metadata accessor for MLSoundClassifier.PersistentParameters);
  v11 = *(v50 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles);
  v12 = *(v11 + 16);
  v13 = *(*(v50 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) + 16);
  if (__OFADD__(v13, v12))
  {
    BUG();
  }

  if (v13 + v12 <= v52)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLSoundClassifier.PersistentParameters);
    v25.finished = 1;
    v25._0 = 0;
    return v25;
  }

  v45 = *(v50 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
  v53 = v13 + v12;
  v55 = *(v56 + v6[6]);
  v48 = *(v56 + v6[7]);
  v14 = v6[9];
  v47 = *(v56 + v14);
  LOBYTE(v54) = *(v56 + v14 + 8);
  v15 = v50 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_sessionParameters;
  v16 = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 20) + v15);
  v17 = __OFADD__(v52, v16);
  v18 = v52 + v16;
  v19 = v52 - v12;
  if (v52 >= v12)
  {
    if (v17)
    {
      BUG();
    }

    if (v53 < v18)
    {
      v18 = v53;
    }

    v26 = v18 - v12;
    if (__OFSUB__(v18, v12))
    {
      BUG();
    }

    if (v26 < v19)
    {
      BUG();
    }

    if (v13 < v19)
    {
      BUG();
    }

    if (v19 < 0)
    {
      BUG();
    }

    if (v13 < v26)
    {
      BUG();
    }

    v49 = v18;
    v46 = v52 - v12;
    v27 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>) - 8) + 80);
    v28 = v45;
    v29 = v45 + ((v27 + 32) & ~v27);
    v37[0] = v55;
    v37[1] = v48;
    v37[2] = v12;
    v37[3] = v53;
    v37[4] = v47;
    v38 = v54;
    v30 = type metadata accessor for MLSoundClassifier.FeatureExtractor();
    v54 = swift_allocObject(v30, 88, 7);

    swift_unknownObjectRetain(v28);
    v31 = v51;
    specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(v28, v29, v46, 2 * v26 + 1, v37);
    if (!v31)
    {
      v33 = MLSoundClassifier.FeatureExtractor.extractFeatures()();
      v28;

      v35 = v56;
      v34 = v33;
      goto LABEL_25;
    }

    LOBYTE(v11) = v28;
LABEL_23:
    v32 = v56;
    v11;
    v25._0 = outlined destroy of MLActivityClassifier.ModelParameters(v32, type metadata accessor for MLSoundClassifier.PersistentParameters);
    return v25;
  }

  if (v17)
  {
    BUG();
  }

  if (v12 < v18)
  {
    v18 = v12;
  }

  if (v18 < v52)
  {
    BUG();
  }

  if (v52 < 0)
  {
    BUG();
  }

  v20 = v18;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>) - 8) + 80);
  v39 = v55;
  v40 = v48;
  v49 = v20;
  v55 = 2 * v20 + 1;
  v41 = v53;
  v42 = v47;
  v43 = v54;
  v22 = type metadata accessor for MLSoundClassifier.FeatureExtractor();
  swift_allocObject(v22, 88, 7);

  swift_unknownObjectRetain(v11);
  v23 = v51;
  specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(v11, v11 + ((v21 + 32) & ~v21), v52, v55, &v39);
  if (v23)
  {
    goto LABEL_23;
  }

  v24 = MLSoundClassifier.FeatureExtractor.extractFeatures()();
  v11;

  v34 = v24;
  v35 = v56;
LABEL_25:
  specialized Array.append<A>(contentsOf:)(v34);
  outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLSoundClassifier.PersistentParameters);
  v25._0 = v49 - v52;
  if (__OFSUB__(v49, v52))
  {
    BUG();
  }

  v25.finished = v49 >= v53;
  return v25;
}

uint64_t SoundClassifierTrainingSessionDelegate.train(from:)(uint64_t a1)
{
  v2[28] = v1;
  v2[27] = a1;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Classifier?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[29] = swift_task_alloc(v3);
  v2[30] = swift_task_alloc(v3);
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Model?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[31] = swift_task_alloc(v4);
  v2[32] = swift_task_alloc(v4);
  v5 = type metadata accessor for TrainingTablePrinter(0);
  v2[33] = v5;
  v6 = *(v5 - 8);
  v2[34] = v6;
  v7 = *(v6 + 64);
  v2[35] = v7;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[36] = swift_task_alloc(v8);
  v2[37] = swift_task_alloc(v8);
  v2[38] = swift_task_alloc(v8);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[39] = swift_task_alloc(v9);
  v2[40] = swift_task_alloc(v9);
  v2[41] = swift_task_alloc(v9);
  v2[42] = swift_task_alloc(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  v2[43] = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(SoundClassifierTrainingSessionDelegate.train(from:), 0, 0);
}

{
  v2 = *(*v1 + 464);
  *(*v1 + 472) = a1;
  v2;
  return swift_task_switch(SoundClassifierTrainingSessionDelegate.train(from:), 0, 0);
}

uint64_t SoundClassifierTrainingSessionDelegate.train(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 344);
  v9 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters + *(v7 + 224);
  swift_beginAccess(v9, v7 + 16, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, v8, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  v10 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v8, 1, v10);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  if (v9 == 1)
  {
    BUG();
  }

  v11 = *(v7 + 216);
  v12 = *(v7 + 224);
  v13 = v12 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_sessionParameters;
  v14 = type metadata accessor for MLTrainingSessionParameters(0);
  v15 = *(*(v14 + 20) + v13);
  *(v7 + 352) = v15;
  *(v7 + 184) = v11 + v15;
  *(v7 + 192) = __OFADD__(v11, v15);
  if (__OFADD__(v11, v15))
  {
    BUG();
  }

  v16 = *(v13 + *(v14 + 28));
  *(v7 + 360) = v16;
  *(v7 + 200) = v16 - v11;
  *(v7 + 208) = __OFSUB__(v16, v11);
  if (__OFSUB__(v16, v11))
  {
    BUG();
  }

  v56 = *(v7 + 264);
  v17 = *(v7 + 336);
  v18 = type metadata accessor for EventCollector();
  swift_allocObject(v18, 32, 7);
  v54 = EventCollector.init()();
  *(v7 + 368) = v54;
  v19 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter + v12;
  swift_beginAccess(v19, v7 + 40, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v17, &demangling cache variable for type metadata for TrainingTablePrinter?);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v56);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for TrainingTablePrinter?);
  if (EnumTagSinglePayload == 1)
  {
    v21 = *(v7 + 328);
    v57 = *(v7 + 320);
    v22 = *(v7 + 264);
    static MLSoundClassifier.createTablePrinter(hasValidation:)(*(*(*(v7 + 224) + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) + 16) != 0);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
    swift_beginAccess(v19, v7 + 64, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v21, v19, &demangling cache variable for type metadata for TrainingTablePrinter?);
    swift_endAccess(v7 + 64);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v57, &demangling cache variable for type metadata for TrainingTablePrinter?);
    if (__swift_getEnumTagSinglePayload(v57, 1, v22) == 1)
    {
      BUG();
    }

    v23 = *(v7 + 320);
    TrainingTablePrinter.beginTable()();
    outlined destroy of MLActivityClassifier.ModelParameters(v23, type metadata accessor for TrainingTablePrinter);
  }

  v24 = *(v7 + 264);
  v25 = *(v7 + 312);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v25, &demangling cache variable for type metadata for TrainingTablePrinter?);
  v26 = __swift_getEnumTagSinglePayload(v25, 1, v24);
  v27 = *(v7 + 312);
  if (v26 == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &demangling cache variable for type metadata for TrainingTablePrinter?);
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000027, ("range [0.0, 1.0), but got " + 0x8000000000000000), "CreateML/_SoundClassifierTrainingSessionDelegate.swift", 54, 2, 296, 0);
  }

  else
  {
    v29 = *(v7 + 224);
    outlined init with take of MLClassifierMetrics(v27, *(v7 + 304), type metadata accessor for TrainingTablePrinter);
    v30 = *(v29 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures);
    *(v7 + 376) = v30;
    v31 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier + v29;
    if (*(v30 + 16))
    {
      v58 = v30;
      v32 = *(v7 + 232);
      swift_beginAccess(v31, v7 + 88, 0, 0);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v32, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
      v33 = type metadata accessor for MLSoundClassifier.Classifier(0);
      if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
      {
        BUG();
      }

      v34 = *(v7 + 304);
      v35 = *(v7 + 288);
      v36 = *(v7 + 280);
      v37 = *(v7 + 272);
      v55 = *(*(v7 + 224) + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
      *(v7 + 416) = v55;
      outlined init with copy of MLTrainingSessionParameters(v34, v35, type metadata accessor for TrainingTablePrinter);
      v38 = *(v37 + 80);
      v39 = ~*(v37 + 80) & (v38 + 24);
      v40 = swift_allocObject(&unk_390F70, v39 + v36, v38 | 7);
      *(v7 + 424) = v40;
      *(v40 + 16) = v54;
      outlined init with take of MLClassifierMetrics(v35, v40 + v39, type metadata accessor for TrainingTablePrinter);

      v41 = swift_task_alloc(208);
      *(v7 + 432) = v41;
      *v41 = v7;
      v41[1] = SoundClassifierTrainingSessionDelegate.train(from:);
      return ((&async function pointer to specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:) + async function pointer to specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)))(*(v7 + 248), v55, v58, partial apply for closure #2 in SoundClassifierTrainingSessionDelegate.train(from:), v40, v42);
    }

    else
    {
      v43 = *(v7 + 240);
      swift_beginAccess(v31, v7 + 136, 0, 0);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v43, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
      v44 = type metadata accessor for MLSoundClassifier.Classifier(0);
      if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
      {
        BUG();
      }

      v45 = *(v7 + 304);
      v46 = *(v7 + 296);
      v47 = *(v7 + 280);
      v48 = *(v7 + 272);
      v59 = *(*(v7 + 224) + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
      *(v7 + 384) = v59;
      outlined init with copy of MLTrainingSessionParameters(v45, v46, type metadata accessor for TrainingTablePrinter);
      v49 = *(v48 + 80);
      v50 = ~*(v48 + 80) & (v49 + 24);
      v51 = swift_allocObject(&unk_390F98, v50 + v47, v49 | 7);
      *(v7 + 392) = v51;
      *(v51 + 16) = v54;
      outlined init with take of MLClassifierMetrics(v46, v51 + v50, type metadata accessor for TrainingTablePrinter);

      v52 = swift_task_alloc(208);
      *(v7 + 400) = v52;
      *v52 = v7;
      v52[1] = SoundClassifierTrainingSessionDelegate.train(from:);
      return ((&async function pointer to specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:) + async function pointer to specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:)))(*(v7 + 256), v59, partial apply for closure #1 in SoundClassifierTrainingSessionDelegate.train(from:), v51, v53);
    }
  }
}

uint64_t SoundClassifierTrainingSessionDelegate.train(from:)()
{
  v3 = *(*v1 + 400);
  v4 = *(*v1 + 384);
  v2 = *v1;
  *(*v1 + 408) = v0;
  v3;

  v4;
  if (v0)
  {
    v5 = SoundClassifierTrainingSessionDelegate.train(from:);
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v2 + 240), type metadata accessor for MLSoundClassifier.Classifier);
    v5 = SoundClassifierTrainingSessionDelegate.train(from:);
  }

  return swift_task_switch(v5, 0, 0);
}

{
  v1 = v0[28];
  v2 = v0[32];
  v3 = type metadata accessor for MLSoundClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v1;
  swift_beginAccess(v4, (v0 + 20), 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v2, v4, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
  swift_endAccess((v0 + 20));
  v5 = v0[23];
  v6 = v0[25];
  v7 = v0[33];
  if (v0[44] < v6)
  {
    v6 = v0[44];
  }

  v0[56] = v6;
  v0[57] = v5;
  static os_log_type_t.info.getter(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v9 = swift_allocObject(v8, 72, 7);
  v10 = v9;
  v9[2] = 1;
  v9[3] = 2;
  v9[7] = &type metadata for Int;
  v9[8] = &protocol witness table for Int;
  v9[4] = 3;
  os_log(_:dso:log:type:_:)("event: %lu");
  v10;
  v11 = swift_task_alloc(48);
  v0[58] = v11;
  *v11 = v0;
  v11[1] = SoundClassifierTrainingSessionDelegate.train(from:);
  return SoundClassifierTrainingSessionDelegate.buildMetrics(eventCollector:)(v0[46]);
}

{
  v3 = *(*v1 + 432);
  v4 = *(*v1 + 376);
  v7 = *(*v1 + 416);
  v2 = *v1;
  *(*v1 + 440) = v0;
  v3;

  v4;
  v7;
  if (v0)
  {
    v5 = SoundClassifierTrainingSessionDelegate.train(from:);
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v2 + 232), type metadata accessor for MLSoundClassifier.Classifier);
    v5 = SoundClassifierTrainingSessionDelegate.train(from:);
  }

  return swift_task_switch(v5, 0, 0);
}

{
  v1 = v0[28];
  v2 = v0[31];
  v3 = type metadata accessor for MLSoundClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v1;
  swift_beginAccess(v4, (v0 + 14), 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v2, v4, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
  swift_endAccess((v0 + 14));
  v5 = v0[23];
  v6 = v0[25];
  v7 = v0[33];
  if (v0[44] < v6)
  {
    v6 = v0[44];
  }

  v0[56] = v6;
  v0[57] = v5;
  static os_log_type_t.info.getter(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v9 = swift_allocObject(v8, 72, 7);
  v10 = v9;
  v9[2] = 1;
  v9[3] = 2;
  v9[7] = &type metadata for Int;
  v9[8] = &protocol witness table for Int;
  v9[4] = 3;
  os_log(_:dso:log:type:_:)("event: %lu");
  v10;
  v11 = swift_task_alloc(48);
  v0[58] = v11;
  *v11 = v0;
  v11[1] = SoundClassifierTrainingSessionDelegate.train(from:);
  return SoundClassifierTrainingSessionDelegate.buildMetrics(eventCollector:)(v0[46]);
}

{
  v1 = *(v0 + 472);
  v2 = *(v0 + 344);
  v15 = *(v0 + 336);
  v14 = *(v0 + 328);
  v13 = *(v0 + 320);
  v12 = *(v0 + 312);
  v3 = *(v0 + 304);
  v11 = *(v0 + 296);
  v10 = *(v0 + 288);
  v9 = *(v0 + 256);
  v8 = *(v0 + 248);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  v5 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v1);
  v1;

  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for TrainingTablePrinter);
  v2;
  v15;
  v14;
  v13;
  v12;
  v3;
  v11;
  v10;
  v9;
  v8;
  v7;
  v6;
  return (*(v0 + 8))(*(v0 + 448), v5, *(v0 + 456) >= *(v0 + 360));
}

{
  v6 = *(v0 + 232);
  v1 = *(v0 + 240);
  v2 = *(v0 + 344);
  v3 = *(v0 + 336);
  v13 = *(v0 + 328);
  v12 = *(v0 + 320);
  v11 = *(v0 + 312);
  v4 = *(v0 + 304);
  v10 = *(v0 + 296);
  v9 = *(v0 + 288);
  v8 = *(v0 + 256);
  v7 = *(v0 + 248);

  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for TrainingTablePrinter);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLSoundClassifier.Classifier);
  v2;
  v3;
  v13;
  v12;
  v11;
  v4;
  v10;
  v9;
  v8;
  v7;
  v1;
  v6;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 344);
  v2 = *(v0 + 336);
  v13 = *(v0 + 328);
  v12 = *(v0 + 320);
  v11 = *(v0 + 312);
  v3 = *(v0 + 304);
  v10 = *(v0 + 296);
  v9 = *(v0 + 288);
  v8 = *(v0 + 256);
  v7 = *(v0 + 248);
  v4 = *(v0 + 232);
  v6 = *(v0 + 240);

  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for TrainingTablePrinter);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLSoundClassifier.Classifier);
  v1;
  v2;
  v13;
  v12;
  v11;
  v3;
  v10;
  v9;
  v8;
  v7;
  v6;
  v4;
  return (*(v0 + 8))();
}

uint64_t specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v5[12] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v5[13] = v10;
  v11 = *(v10 - 8);
  v5[14] = v11;
  v5[15] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v5[16] = v12;
  v13 = *(v12 - 8);
  v5[17] = v13;
  v5[18] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v5[19] = v14;
  v5[20] = swift_task_alloc((*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[2] = a2;
  return swift_task_switch(specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:), 0, 0);
}

uint64_t specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:)()
{
  v14 = (v0 + 2);
  v1 = v0[20];
  v2 = v0[6];
  v3 = v0[19];
  v4 = type metadata accessor for MLSoundClassifier.Classifier(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2 + *(v4 + 20), v1, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v1, v3);
  v6 = v0[20];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[11] + 32))(v0[12], v6, v0[10]);
    v7 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifier.fitted<A>(to:eventHandler:)[1]);
    v0[23] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>]);
    v9 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnnotatedFeature<MLShapedArray<Float>, String>] and conformance [A], &demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>], &protocol conformance descriptor for [A]);
    *v7 = v0;
    v7[1] = specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
    return FullyConnectedNetworkClassifier.fitted<A>(to:eventHandler:)(v0[9], v14, v0[4], v0[5], v0[10], v8, v9);
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v6, v0[16]);
    v11 = swift_task_alloc(async function pointer to LogisticRegressionClassifier.fitted<A>(to:eventHandler:)[1]);
    v0[21] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>]);
    v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnnotatedFeature<MLShapedArray<Float>, String>] and conformance [A], &demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>], &protocol conformance descriptor for [A]);
    *v11 = v0;
    v11[1] = specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
    return LogisticRegressionClassifier.fitted<A>(to:eventHandler:)(v0[15], v14, v0[4], v0[5], v0[16], v12, v13);
  }
}

{
  v2 = *(*v1 + 168);
  *(*v1 + 176) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  else
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 184);
  *(*v1 + 192) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  else
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v11 = *(v0 + 112);
  v12 = *(v0 + 104);
  v10 = *(v0 + 160);
  v9 = *(v0 + 96);
  v8 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = *(v0 + 48);
  (*(*(v0 + 136) + 8))(v1, *(v0 + 128));
  outlined init with copy of MLTrainingSessionParameters(v4, v3, type metadata accessor for MLSoundClassifier.ModelParameters);
  v5 = v3 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  (*(v11 + 32))(v5, v2, v12);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v5, v6, 0);
  v10;
  v1;
  v2;
  v9;
  v8;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 160);
  v3 = *(v0 + 120);
  v6 = *(v0 + 72);
  v4 = *(v0 + 96);
  (*(*(v0 + 136) + 8))(v1, *(v0 + 128));
  v2;
  v1;
  v3;
  v4;
  v6;
  return (*(v0 + 8))();
}

{
  v9 = *(v0 + 96);
  v1 = *(v0 + 72);
  v12 = *(v0 + 64);
  v2 = *(v0 + 56);
  v11 = *(v0 + 160);
  v10 = *(v0 + 144);
  v8 = *(v0 + 120);
  v3 = *(v0 + 24);
  v4 = *(v0 + 48);
  (*(*(v0 + 88) + 8))(v9, *(v0 + 80));
  outlined init with copy of MLTrainingSessionParameters(v4, v3, type metadata accessor for MLSoundClassifier.ModelParameters);
  v5 = v3 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  (*(v12 + 32))(v5, v1, v2);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v5, v6, 1);
  v11;
  v10;
  v8;
  v9;
  v1;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 96);
  v6 = *(v0 + 72);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  (*(*(v0 + 88) + 8))(v1, *(v0 + 80));
  v2;
  v3;
  v4;
  v1;
  v6;
  return (*(v0 + 8))();
}

uint64_t specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = v5;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v6[10] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v6[13] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v6[14] = v12;
  v13 = *(v12 - 8);
  v6[15] = v13;
  v6[16] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v6[17] = v14;
  v15 = *(v14 - 8);
  v6[18] = v15;
  v6[19] = swift_task_alloc((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v6[20] = v16;
  v6[21] = swift_task_alloc((*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[2] = a2;
  v6[3] = a3;
  return swift_task_switch(specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:), 0, 0);
}

uint64_t specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)()
{
  v13 = (v0 + 2);
  v12 = (v0 + 3);
  v1 = v0[21];
  v2 = v0[7];
  v3 = v0[20];
  v4 = type metadata accessor for MLSoundClassifier.Classifier(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2 + *(v4 + 20), v1, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v1, v3);
  v6 = v0[21];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[12] + 32))(v0[13], v6, v0[11]);
    v7 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifier.fitted<A, B>(to:validateOn:eventHandler:)[1]);
    v0[24] = v7;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>]);
    v8 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnnotatedFeature<MLShapedArray<Float>, String>] and conformance [A], &demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>], &protocol conformance descriptor for [A]);
    *v7 = v0;
    v7[1] = specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
    retaddr = v8;
    return FullyConnectedNetworkClassifier.fitted<A, B>(to:validateOn:eventHandler:)(v0[10], v13, v12, v0[5], v0[6], v0[11]);
  }

  else
  {
    (*(v0[18] + 32))(v0[19], v6, v0[17]);
    v10 = swift_task_alloc(async function pointer to LogisticRegressionClassifier.fitted<A, B>(to:validateOn:eventHandler:)[1]);
    v0[22] = v10;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>]);
    v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnnotatedFeature<MLShapedArray<Float>, String>] and conformance [A], &demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>], &protocol conformance descriptor for [A]);
    *v10 = v0;
    v10[1] = specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
    retaddr = v11;
    return LogisticRegressionClassifier.fitted<A, B>(to:validateOn:eventHandler:)(v0[16], v13, v12, v0[5], v0[6], v0[17]);
  }
}

{
  v2 = *(*v1 + 176);
  *(*v1 + 184) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  else
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 192);
  *(*v1 + 200) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  else
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v11 = *(v0 + 120);
  v12 = *(v0 + 112);
  v10 = *(v0 + 168);
  v9 = *(v0 + 104);
  v8 = *(v0 + 80);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  (*(*(v0 + 144) + 8))(v1, *(v0 + 136));
  outlined init with copy of MLTrainingSessionParameters(v4, v3, type metadata accessor for MLSoundClassifier.ModelParameters);
  v5 = v3 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  (*(v11 + 32))(v5, v2, v12);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v5, v6, 0);
  v10;
  v1;
  v2;
  v9;
  v8;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 152);
  v2 = *(v0 + 168);
  v3 = *(v0 + 128);
  v6 = *(v0 + 80);
  v4 = *(v0 + 104);
  (*(*(v0 + 144) + 8))(v1, *(v0 + 136));
  v2;
  v1;
  v3;
  v4;
  v6;
  return (*(v0 + 8))();
}

{
  v9 = *(v0 + 104);
  v1 = *(v0 + 80);
  v12 = *(v0 + 72);
  v2 = *(v0 + 64);
  v11 = *(v0 + 168);
  v10 = *(v0 + 152);
  v8 = *(v0 + 128);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  (*(*(v0 + 96) + 8))(v9, *(v0 + 88));
  outlined init with copy of MLTrainingSessionParameters(v4, v3, type metadata accessor for MLSoundClassifier.ModelParameters);
  v5 = v3 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  (*(v12 + 32))(v5, v1, v2);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v5, v6, 1);
  v11;
  v10;
  v8;
  v9;
  v1;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 104);
  v6 = *(v0 + 80);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  (*(*(v0 + 96) + 8))(v1, *(v0 + 88));
  v2;
  v3;
  v4;
  v1;
  v6;
  return (*(v0 + 8))();
}

uint64_t SoundClassifierTrainingSessionDelegate.buildMetrics(eventCollector:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for MetricsKey(0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(SoundClassifierTrainingSessionDelegate.buildMetrics(eventCollector:), 0, 0);
}

uint64_t SoundClassifierTrainingSessionDelegate.buildMetrics(eventCollector:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v25 = *(v0 + 24);
  static MetricsKey.trainingAccuracy.getter();
  ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(v1);
  v5 = v4;
  v6 = v25;
  v26 = *(v2 + 8);
  v26(v1, v6);
  if ((v5 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, isUniquelyReferenced_nonNull_native, *&ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5);
  }

  v8 = *(v0 + 40);
  v9 = *(v0 + 24);
  static MetricsKey.validationAccuracy.getter();
  v27 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(v8);
  v11 = v10;
  v12 = v8;
  v26(v8, v9);
  if ((v11 & 1) == 0)
  {
    v13 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    v12 = 5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(5, v13, *&v27);
  }

  v14 = *(v0 + 40);
  v15 = *(v0 + 24);
  static MetricsKey.trainingLoss.getter(v12);
  v28 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(v14);
  v17 = v16;
  v26(v14, v15);
  if ((v17 & 1) == 0)
  {
    v18 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v18, *&v28);
  }

  v19 = *(v0 + 40);
  v20 = *(v0 + 24);
  static MetricsKey.validationLoss.getter();
  v29 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(v19);
  v22 = v21;
  v26(v19, v20);
  if ((v22 & 1) == 0)
  {
    v23 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(4, v23, *&v29);
  }

  *(v0 + 40);
  return (*(v0 + 8))(_swiftEmptyDictionarySingleton);
}

uint64_t SoundClassifierTrainingSessionDelegate.evaluate(from:)()
{
  v1[31] = v0;
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v1[32] = swift_task_alloc((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v1[33] = v3;
  v1[34] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  v1[35] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?);
  v1[36] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Model?);
  v1[37] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLSoundClassifier.Model(0);
  v1[38] = v7;
  v1[39] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(SoundClassifierTrainingSessionDelegate.evaluate(from:), 0, 0);
}

{
  v1 = *(v0 + 304);
  v2 = *(v0 + 296);
  v3 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + *(v0 + 248);
  swift_beginAccess(v3, v0 + 96, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 296), &demangling cache variable for type metadata for MLSoundClassifier.Model?);
    v4 = *(v0 + 296);
    v5 = *(v0 + 288);
    v6 = *(v0 + 280);
    v13 = *(v0 + 256);
    v7 = *(v0 + 272);
    *(v0 + 312);
    v4;
    v5;
    v6;
    v7;
    v13;
    return (*(v0 + 8))(0, 1);
  }

  else
  {
    v9 = *(v0 + 248);
    outlined init with take of MLClassifierMetrics(*(v0 + 296), *(v0 + 312), type metadata accessor for MLSoundClassifier.Model);
    v10 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
    *(v0 + 320) = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
    v11 = *(v9 + v10);
    *(v0 + 328) = v11;

    v12 = swift_task_alloc(352);
    *(v0 + 336) = v12;
    *v12 = v0;
    v12[1] = SoundClassifierTrainingSessionDelegate.evaluate(from:);
    return ((&async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:) + async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:)))(v11, 0, 0);
  }
}

{
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v53 = *(v0 + 320);
  v3 = *(v0 + 248);
  v51 = *(v0 + 288);
  MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v1, &demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>, &unk_340BB8);
  v1;
  *(v0 + 216) = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm;
  v5 = *(v3 + v53);

  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v5, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>, &unk_340B80);
  v54 = v2;
  v5;
  *(v0 + 224) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  *(v0 + 360) = v7;
  v8 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  *(v0 + 368) = v8;
  ClassificationMetrics.init<A, B>(_:_:)(v0 + 216, v0 + 224, &type metadata for String, v7, v7, &protocol witness table for String, v8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  *(v0 + 376) = v9;
  swift_storeEnumTagMultiPayload(v51, v9, 0);
  v10 = type metadata accessor for MLClassifierMetrics.Contents(0);
  *(v0 + 384) = v10;
  swift_storeEnumTagMultiPayload(v51, v10, 0);
  v11 = type metadata accessor for MLClassifierMetrics(0);
  *(v0 + 392) = v11;
  v56 = v11;
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v11);
  v12 = v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics;
  swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics, v0 + 120, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v51, v12, &demangling cache variable for type metadata for MLClassifierMetrics?);
  swift_endAccess(v0 + 120);
  v13 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles;
  v58 = v3;
  v14 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
  v15 = *(v0 + 248);
  if (*(*(v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) + 16) && !*(*(v15 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) + 16))
  {
    v52 = *(v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
    v50 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
    v28 = *(v0 + 280);
    v49 = *(v0 + 248);
    v29 = v49 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
    swift_beginAccess(v49 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, v0 + 192, 0, 0);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v28, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    v30 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
    if (__swift_getEnumTagSinglePayload(v28, 1, v30) == 1)
    {
      BUG();
    }

    v31 = *(v0 + 280);
    v32 = *(v0 + 272);
    v55 = *(v0 + 256);
    v33 = *(v0 + 264);
    outlined init with copy of MLTrainingSessionParameters(v31 + v30[5], v55, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v47 = *(v31 + v30[8]);
    v48 = *(v31 + v30[6]);
    v34 = v30[9];
    v46 = *(v31 + v34);
    v60 = *(v31 + v34 + 8);
    v35 = *(v31 + v34 + 16);
    v36 = v33[7];
    *(v32 + v36) = 0;
    *(v32 + v36 + 16) = 0;
    v37 = v33[8];
    *(v32 + v37) = 0;
    v45 = v32 + v36;
    *(v32 + v37 + 8) = 1;
    *(v32 + v33[9]) = 32;
    outlined init with copy of MLTrainingSessionParameters(v55, v32, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    *(v32 + v33[5]) = v47;
    *(v32 + v33[6]) = v48;
    *(v0 + 88) = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
    *(v0 + 64) = v46;
    *(v0 + 72) = v60;
    *(v0 + 80) = v35;

    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v0 + 64, v45, &demangling cache variable for type metadata for Any?);
    outlined destroy of MLActivityClassifier.ModelParameters(v55, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLSoundClassifier.PersistentParameters);
    MLSoundClassifier.FeatureExtractor.Configuration.init(parameters:fileCount:)(v32, *(*(v58 + v13) + 16));
    v38 = type metadata accessor for MLSoundClassifier.FeatureExtractor();
    swift_allocObject(v38, 88, 7);

    specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(v52, (v0 + 16));
    if (v54)
    {
      v52;
      v27 = type metadata accessor for MLSoundClassifier.Model;
      outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 312), type metadata accessor for MLSoundClassifier.Model);
      v40 = *(v0 + 296);
      v41 = *(v0 + 288);
      v42 = *(v0 + 280);
      v57 = *(v0 + 256);
      v43 = *(v0 + 272);
      *(v0 + 312);
      v40;
      v41;
      v42;
      v43;
      v26 = v57;
      v57;
      v25 = *(v0 + 8);
      return v25(v26, v27);
    }

    v39 = MLSoundClassifier.FeatureExtractor.extractFeatures()();

    v52;
    v44 = *(v49 + v50);
    *(v49 + v50) = v39;
    v44;
    v14 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
    v15 = *(v0 + 248);
  }

  *(v0 + 400) = v14;
  v16 = *(v15 + v14);
  *(v0 + 408) = v16;
  if (*(v16 + 16))
  {

    v17 = swift_task_alloc(352);
    *(v0 + 416) = v17;
    *v17 = v0;
    v17[1] = SoundClassifierTrainingSessionDelegate.evaluate(from:);
    return ((&async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:) + async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:)))(v16, 0, 0);
  }

  v19 = *(v0 + 288);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 312), type metadata accessor for MLSoundClassifier.Model);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v56);
  v20 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics + v15;
  swift_beginAccess(v20, v0 + 168, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v19, v20, &demangling cache variable for type metadata for MLClassifierMetrics?);
  swift_endAccess(v0 + 168);
  v21 = *(v0 + 296);
  v22 = *(v0 + 288);
  v23 = *(v0 + 280);
  v59 = *(v0 + 256);
  v24 = *(v0 + 272);
  *(v0 + 312);
  v21;
  v22;
  v23;
  v24;
  v59;
  v25 = *(v0 + 8);
  v26 = 1;
  v27 = (&dword_0 + 1);
  return v25(v26, v27);
}

{
  v1 = *(v0 + 432);
  v19 = *(v0 + 400);
  v12 = *(v0 + 392);
  v13 = *(v0 + 384);
  v14 = *(v0 + 376);
  v16 = *(v0 + 368);
  v17 = *(v0 + 360);
  v15 = *(v0 + 312);
  v2 = *(v0 + 248);
  v18 = *(v0 + 288);
  MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v1, &demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>, &unk_340BB8);
  v1;
  *(v0 + 232) = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm;
  v4 = *(v2 + v19);

  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v4, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>, &unk_340B80);
  v4;
  *(v0 + 240) = v5;
  ClassificationMetrics.init<A, B>(_:_:)(v0 + 232, v0 + 240, &type metadata for String, v17, v17, &protocol witness table for String, v16, v16);
  outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLSoundClassifier.Model);
  swift_storeEnumTagMultiPayload(v18, v14, 0);
  swift_storeEnumTagMultiPayload(v18, v13, 0);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v12);
  v6 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics + v2;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics + v2, v0 + 144, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v18, v6, &demangling cache variable for type metadata for MLClassifierMetrics?);
  swift_endAccess(v0 + 144);
  v7 = *(v0 + 296);
  v8 = *(v0 + 288);
  v9 = *(v0 + 280);
  v20 = *(v0 + 256);
  v10 = *(v0 + 272);
  *(v0 + 312);
  v7;
  v8;
  v9;
  v10;
  v20;
  return (*(v0 + 8))(1, 1);
}

{
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 312), type metadata accessor for MLSoundClassifier.Model);
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  v3 = *(v0 + 280);
  v6 = *(v0 + 256);
  v4 = *(v0 + 272);
  *(v0 + 312);
  v1;
  v2;
  v3;
  v4;
  v6;
  return (*(v0 + 8))();
}

{
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 312), type metadata accessor for MLSoundClassifier.Model);
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  v3 = *(v0 + 280);
  v6 = *(v0 + 256);
  v4 = *(v0 + 272);
  *(v0 + 312);
  v1;
  v2;
  v3;
  v4;
  v6;
  return (*(v0 + 8))();
}

uint64_t SoundClassifierTrainingSessionDelegate.evaluate(from:)(uint64_t a1)
{
  v5 = *(*v2 + 336);
  v4 = *v2;
  v4[43] = v1;
  v5;
  v4[41];
  if (v1)
  {
    v6 = SoundClassifierTrainingSessionDelegate.evaluate(from:);
  }

  else
  {
    v4[44] = a1;
    v6 = SoundClassifierTrainingSessionDelegate.evaluate(from:);
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v5 = *(*v2 + 416);
  v4 = *v2;
  v4[53] = v1;
  v5;
  v4[51];
  if (v1)
  {
    v6 = SoundClassifierTrainingSessionDelegate.evaluate(from:);
  }

  else
  {
    v4[54] = a1;
    v6 = SoundClassifierTrainingSessionDelegate.evaluate(from:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t specialized Transformer.prediction<A, B>(from:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = v3;
  v4[6] = a3;
  v4[5] = a2;
  v4[4] = a1;
  v5 = type metadata accessor for MLSoundClassifier.Model(0);
  v4[8] = v5;
  v4[9] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Event(0);
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v4[12] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>);
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v4[15] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v4[16] = v10;
  v11 = *(v10 - 8);
  v4[17] = v11;
  v4[18] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v4[19] = v12;
  v13 = *(v12 - 8);
  v4[20] = v13;
  v4[21] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v4[22] = v14;
  v4[23] = swift_task_alloc((*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v4[24] = v15;
  v16 = *(v15 - 8);
  v4[25] = v16;
  v4[26] = swift_task_alloc((*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v4[27] = v17;
  v18 = *(v17 - 8);
  v4[28] = v18;
  v19 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[29] = swift_task_alloc(v19);
  v4[30] = swift_task_alloc(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  v4[31] = v20;
  v21 = *(v20 - 8);
  v4[32] = v21;
  v4[33] = swift_task_alloc((*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized Transformer.prediction<A, B>(from:eventHandler:), 0, 0);
}

{
  v4[7] = v3;
  v4[6] = a3;
  v4[5] = a2;
  v4[4] = a1;
  v5 = type metadata accessor for MLImageClassifier.Model(0);
  v4[8] = v5;
  v4[9] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Event(0);
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v4[12] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>);
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v4[15] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v4[16] = v10;
  v11 = *(v10 - 8);
  v4[17] = v11;
  v4[18] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v4[19] = v12;
  v13 = *(v12 - 8);
  v4[20] = v13;
  v4[21] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v4[22] = v14;
  v4[23] = swift_task_alloc((*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v4[24] = v15;
  v16 = *(v15 - 8);
  v4[25] = v16;
  v4[26] = swift_task_alloc((*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v4[27] = v17;
  v18 = *(v17 - 8);
  v4[28] = v18;
  v19 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[29] = swift_task_alloc(v19);
  v4[30] = swift_task_alloc(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  v4[31] = v20;
  v21 = *(v20 - 8);
  v4[32] = v21;
  v4[33] = swift_task_alloc((*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized Transformer.prediction<A, B>(from:eventHandler:), 0, 0);
}

uint64_t specialized Transformer.prediction<A, B>(from:eventHandler:)()
{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 272) = v1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, _swiftEmptyArrayStorage);
  if (v1)
  {
    v3 = *(v0 + 256);
    v4 = *(v3 + 80);
    *(v0 + 344) = v4;
    v5 = *(v3 + 16);
    *(v0 + 280) = *(v3 + 72);
    *(v0 + 288) = v5;
    *(v0 + 304) = v2;
    *(v0 + 296) = 0;
    v6 = *(v0 + 264);
    v7 = *(v0 + 248);
    v8 = *(v0 + 32) + ((v4 + 32) & ~v4);

    v5(v6, v8, v7);
    static Task<>.checkCancellation()();
    v13 = *(v0 + 184);
    v26 = *(v0 + 176);
    v14 = *(v0 + 56);
    v15 = *(v0 + 64);
    AnnotatedFeature.feature.getter(*(v0 + 248));
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14 + *(v15 + 20), v13, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v13, v26);
    v17 = *(v0 + 184);
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(v0 + 136) + 32))(*(v0 + 144), v17, *(v0 + 128));
      v18 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
      *(v0 + 328) = v18;
      *v18 = v0;
      v18[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
      return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 160) + 32))(*(v0 + 168), v17, *(v0 + 152));
      v19 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
      *(v0 + 312) = v19;
      *v19 = v0;
      v19[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
      return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 152));
    }
  }

  else
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 232);
    v11 = *(v0 + 208);
    v24 = *(v0 + 184);
    v23 = *(v0 + 168);
    v22 = *(v0 + 144);
    v21 = *(v0 + 120);
    v25 = *(v0 + 72);
    v20 = *(v0 + 96);
    *(v0 + 264);
    v9;
    v10;
    v11;
    v24;
    v23;
    v22;
    v21;
    v20;
    v25;
    return (*(v0 + 8))();
  }
}

{
  v2 = *(*v1 + 312);
  *(*v1 + 320) = v0;
  v2;
  if (v0)
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  else
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 328);
  *(*v1 + 336) = v0;
  v2;
  if (v0)
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  else
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v49 = *(v0 + 320);
  v62 = *(v0 + 304);
  v55 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  (*(v3 + 16))(v2, v1, v4);
  AnnotatedFeature.annotation.getter(v55);
  AnnotatedPrediction.init(prediction:annotation:)(v2, v0 + 16, v4, &type metadata for String);
  v5 = *(v62 + 16);
  v6 = *(v62 + 24);
  v7 = *(v0 + 304);
  if (v6 >> 1 <= v5)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6 >= 2, v5 + 1, 1, *(v0 + 304));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = *(v0 + 40);
  v7[2] = v5 + 1;
  v12 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v5;
  v13 = v7;
  (*(v10 + 32))(v12, v8, v9);
  v63 = v13;
  if (v11)
  {
    v59 = *(v0 + 272);
    v14 = *(v0 + 96);
    v66 = *(v0 + 88);
    v52 = *(v0 + 80);
    v15 = *(v0 + 72);
    v16 = *(v0 + 64);
    v56 = *(v0 + 40);
    v17 = *(v0 + 48);
    outlined init with copy of MLTrainingSessionParameters(*(v0 + 56), v15, type metadata accessor for MLSoundClassifier.Model);

    v47 = String.init<A>(describing:)(v15, v16);
    v45 = v18;
    v46 = v63[2];
    v19 = type metadata accessor for MetricsKey(0);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v21 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v22 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v19, v20, v21);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v47, v45, v46, v59, 0, v22);
    v56(v14);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v56, v17);
    (*(v66 + 8))(v14, v52);
  }

  v23 = *(v0 + 264);
  v67 = *(v0 + 256);
  v24 = *(v0 + 248);
  v25 = *(v0 + 296) + 1;
  v26 = *(v0 + 272);
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  (*(v67 + 8))(v23, v24);
  if (v25 == v26)
  {
    *(v0 + 32);
    v27 = *(v0 + 240);
    v28 = *(v0 + 232);
    v29 = *(v0 + 208);
    v30 = *(v0 + 184);
    v50 = *(v0 + 168);
    v60 = *(v0 + 144);
    v57 = *(v0 + 120);
    v68 = *(v0 + 72);
    v53 = *(v0 + 96);
    *(v0 + 264);
    v27;
    v28;
    v29;
    v30;
    v50;
    v60;
    v57;
    v53;
    v68;
    v31 = *(v0 + 8);
    v32 = v63;
    return v31(v32);
  }

  v33 = *(v0 + 296) + 1;
  *(v0 + 304) = v63;
  *(v0 + 296) = v33;
  (*(v0 + 288))(*(v0 + 264), *(v0 + 32) + ((*(v0 + 344) + 32) & ~*(v0 + 344)) + *(v0 + 280) * v33, *(v0 + 248));
  static Task<>.checkCancellation()();
  if (v49)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v63;
    v34 = *(v0 + 264);
    v35 = *(v0 + 240);
    v36 = *(v0 + 232);
    v48 = *(v0 + 208);
    v51 = *(v0 + 184);
    v61 = *(v0 + 168);
    v58 = *(v0 + 144);
    v54 = *(v0 + 120);
    v69 = *(v0 + 96);
    v64 = *(v0 + 72);
    *(v0 + 32);
    v34;
    v35;
    v36;
    v48;
    v51;
    v61;
    v58;
    v54;
    v69;
    v32 = v64;
    v64;
    v31 = *(v0 + 8);
    return v31(v32);
  }

  v38 = *(v0 + 184);
  v65 = *(v0 + 176);
  v39 = *(v0 + 56);
  v40 = *(v0 + 64);
  AnnotatedFeature.feature.getter(*(v0 + 248));
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39 + *(v40 + 20), v38, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v38, v65);
  v42 = *(v0 + 184);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v0 + 136) + 32))(*(v0 + 144), v42, *(v0 + 128));
    v43 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 328) = v43;
    *v43 = v0;
    v43[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 160) + 32))(*(v0 + 168), v42, *(v0 + 152));
    v44 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 312) = v44;
    *v44 = v0;
    v44[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 152));
  }
}

{
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v49 = *(v0 + 336);
  v62 = *(v0 + 304);
  v55 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  (*(v3 + 16))(v2, v1, v4);
  AnnotatedFeature.annotation.getter(v55);
  AnnotatedPrediction.init(prediction:annotation:)(v2, v0 + 16, v4, &type metadata for String);
  v5 = *(v62 + 16);
  v6 = *(v62 + 24);
  v7 = *(v0 + 304);
  if (v6 >> 1 <= v5)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6 >= 2, v5 + 1, 1, *(v0 + 304));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = *(v0 + 40);
  v7[2] = v5 + 1;
  v12 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v5;
  v13 = v7;
  (*(v10 + 32))(v12, v8, v9);
  v63 = v13;
  if (v11)
  {
    v59 = *(v0 + 272);
    v14 = *(v0 + 96);
    v66 = *(v0 + 88);
    v52 = *(v0 + 80);
    v15 = *(v0 + 72);
    v16 = *(v0 + 64);
    v56 = *(v0 + 40);
    v17 = *(v0 + 48);
    outlined init with copy of MLTrainingSessionParameters(*(v0 + 56), v15, type metadata accessor for MLSoundClassifier.Model);

    v47 = String.init<A>(describing:)(v15, v16);
    v45 = v18;
    v46 = v63[2];
    v19 = type metadata accessor for MetricsKey(0);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v21 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v22 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v19, v20, v21);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v47, v45, v46, v59, 0, v22);
    v56(v14);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v56, v17);
    (*(v66 + 8))(v14, v52);
  }

  v23 = *(v0 + 264);
  v67 = *(v0 + 256);
  v24 = *(v0 + 248);
  v25 = *(v0 + 296) + 1;
  v26 = *(v0 + 272);
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  (*(v67 + 8))(v23, v24);
  if (v25 == v26)
  {
    *(v0 + 32);
    v27 = *(v0 + 240);
    v28 = *(v0 + 232);
    v29 = *(v0 + 208);
    v30 = *(v0 + 184);
    v50 = *(v0 + 168);
    v60 = *(v0 + 144);
    v57 = *(v0 + 120);
    v68 = *(v0 + 72);
    v53 = *(v0 + 96);
    *(v0 + 264);
    v27;
    v28;
    v29;
    v30;
    v50;
    v60;
    v57;
    v53;
    v68;
    v31 = *(v0 + 8);
    v32 = v63;
    return v31(v32);
  }

  v33 = *(v0 + 296) + 1;
  *(v0 + 304) = v63;
  *(v0 + 296) = v33;
  (*(v0 + 288))(*(v0 + 264), *(v0 + 32) + ((*(v0 + 344) + 32) & ~*(v0 + 344)) + *(v0 + 280) * v33, *(v0 + 248));
  static Task<>.checkCancellation()();
  if (v49)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v63;
    v34 = *(v0 + 264);
    v35 = *(v0 + 240);
    v36 = *(v0 + 232);
    v48 = *(v0 + 208);
    v51 = *(v0 + 184);
    v61 = *(v0 + 168);
    v58 = *(v0 + 144);
    v54 = *(v0 + 120);
    v69 = *(v0 + 96);
    v64 = *(v0 + 72);
    *(v0 + 32);
    v34;
    v35;
    v36;
    v48;
    v51;
    v61;
    v58;
    v54;
    v69;
    v32 = v64;
    v64;
    v31 = *(v0 + 8);
    return v31(v32);
  }

  v38 = *(v0 + 184);
  v65 = *(v0 + 176);
  v39 = *(v0 + 56);
  v40 = *(v0 + 64);
  AnnotatedFeature.feature.getter(*(v0 + 248));
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39 + *(v40 + 20), v38, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v38, v65);
  v42 = *(v0 + 184);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v0 + 136) + 32))(*(v0 + 144), v42, *(v0 + 128));
    v43 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 328) = v43;
    *v43 = v0;
    v43[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 160) + 32))(*(v0 + 168), v42, *(v0 + 152));
    v44 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 312) = v44;
    *v44 = v0;
    v44[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 152));
  }
}

{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 272) = v1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, _swiftEmptyArrayStorage);
  if (v1)
  {
    v3 = *(v0 + 256);
    v4 = *(v3 + 80);
    *(v0 + 344) = v4;
    v5 = *(v3 + 16);
    *(v0 + 280) = *(v3 + 72);
    *(v0 + 288) = v5;
    *(v0 + 304) = v2;
    *(v0 + 296) = 0;
    v6 = *(v0 + 264);
    v7 = *(v0 + 248);
    v8 = *(v0 + 32) + ((v4 + 32) & ~v4);

    v5(v6, v8, v7);
    static Task<>.checkCancellation()();
    v13 = *(v0 + 184);
    v14 = *(v0 + 56);
    v15 = *(v0 + 176);
    AnnotatedFeature.feature.getter(*(v0 + 248));
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14, v13, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v13, v15);
    v17 = *(v0 + 184);
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(v0 + 136) + 32))(*(v0 + 144), v17, *(v0 + 128));
      v18 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
      *(v0 + 328) = v18;
      *v18 = v0;
      v18[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
      return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 160) + 32))(*(v0 + 168), v17, *(v0 + 152));
      v19 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
      *(v0 + 312) = v19;
      *v19 = v0;
      v19[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
      return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 152));
    }
  }

  else
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 232);
    v11 = *(v0 + 208);
    v24 = *(v0 + 184);
    v23 = *(v0 + 168);
    v22 = *(v0 + 144);
    v21 = *(v0 + 120);
    v25 = *(v0 + 72);
    v20 = *(v0 + 96);
    *(v0 + 264);
    v9;
    v10;
    v11;
    v24;
    v23;
    v22;
    v21;
    v20;
    v25;
    return (*(v0 + 8))();
  }
}

{
  v2 = *(*v1 + 312);
  *(*v1 + 320) = v0;
  v2;
  if (v0)
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  else
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 328);
  *(*v1 + 336) = v0;
  v2;
  if (v0)
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  else
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v49 = *(v0 + 320);
  v52 = *(v0 + 304);
  v58 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  (*(v3 + 16))(v2, v1, v4);
  AnnotatedFeature.annotation.getter(v58);
  AnnotatedPrediction.init(prediction:annotation:)(v2, v0 + 16, v4, &type metadata for String);
  v5 = *(v52 + 16);
  v6 = *(v52 + 24);
  v7 = *(v0 + 304);
  if (v6 >> 1 <= v5)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6 >= 2, v5 + 1, 1, *(v0 + 304));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = *(v0 + 40);
  v7[2] = v5 + 1;
  v12 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v5;
  v13 = v7;
  (*(v10 + 32))(v12, v8, v9);
  v53 = v13;
  if (v11)
  {
    v62 = *(v0 + 272);
    v14 = *(v0 + 96);
    v65 = *(v0 + 88);
    v55 = *(v0 + 80);
    v15 = *(v0 + 72);
    v16 = *(v0 + 64);
    v59 = *(v0 + 40);
    v17 = *(v0 + 48);
    outlined init with copy of MLTrainingSessionParameters(*(v0 + 56), v15, type metadata accessor for MLImageClassifier.Model);

    v47 = String.init<A>(describing:)(v15, v16);
    v45 = v18;
    v46 = v53[2];
    v19 = type metadata accessor for MetricsKey(0);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v21 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v22 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v19, v20, v21);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v47, v45, v46, v62, 0, v22);
    v59(v14);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v59, v17);
    (*(v65 + 8))(v14, v55);
  }

  v23 = *(v0 + 264);
  v66 = *(v0 + 256);
  v24 = *(v0 + 248);
  v25 = *(v0 + 296) + 1;
  v26 = *(v0 + 272);
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  (*(v66 + 8))(v23, v24);
  if (v25 == v26)
  {
    *(v0 + 32);
    v27 = *(v0 + 240);
    v28 = *(v0 + 232);
    v29 = *(v0 + 208);
    v30 = *(v0 + 184);
    v50 = *(v0 + 168);
    v63 = *(v0 + 144);
    v60 = *(v0 + 120);
    v67 = *(v0 + 72);
    v56 = *(v0 + 96);
    *(v0 + 264);
    v27;
    v28;
    v29;
    v30;
    v50;
    v63;
    v60;
    v56;
    v67;
    v31 = *(v0 + 8);
    v32 = v53;
    return v31(v32);
  }

  v33 = *(v0 + 296) + 1;
  *(v0 + 304) = v53;
  *(v0 + 296) = v33;
  (*(v0 + 288))(*(v0 + 264), *(v0 + 32) + ((*(v0 + 344) + 32) & ~*(v0 + 344)) + *(v0 + 280) * v33, *(v0 + 248));
  static Task<>.checkCancellation()();
  if (v49)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v53;
    v34 = *(v0 + 264);
    v35 = *(v0 + 240);
    v36 = *(v0 + 232);
    v48 = *(v0 + 208);
    v51 = *(v0 + 184);
    v64 = *(v0 + 168);
    v61 = *(v0 + 144);
    v57 = *(v0 + 120);
    v68 = *(v0 + 96);
    v54 = *(v0 + 72);
    *(v0 + 32);
    v34;
    v35;
    v36;
    v48;
    v51;
    v64;
    v61;
    v57;
    v68;
    v32 = v54;
    v54;
    v31 = *(v0 + 8);
    return v31(v32);
  }

  v38 = *(v0 + 184);
  v39 = *(v0 + 56);
  v40 = *(v0 + 176);
  AnnotatedFeature.feature.getter(*(v0 + 248));
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, v38, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v38, v40);
  v42 = *(v0 + 184);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v0 + 136) + 32))(*(v0 + 144), v42, *(v0 + 128));
    v43 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 328) = v43;
    *v43 = v0;
    v43[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 160) + 32))(*(v0 + 168), v42, *(v0 + 152));
    v44 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 312) = v44;
    *v44 = v0;
    v44[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 152));
  }
}

{
  v1 = *(v0 + 304);
  v15 = *(v0 + 264);
  v13 = *(v0 + 256);
  v17 = *(v0 + 248);
  v2 = *(v0 + 208);
  v3 = *(v0 + 200);
  v4 = *(v0 + 192);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  (*(v3 + 8))(v2, v4);
  v1;
  (*(v13 + 8))(v15, v17);
  v5 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = *(v0 + 232);
  v8 = *(v0 + 208);
  v12 = *(v0 + 184);
  v11 = *(v0 + 168);
  v10 = *(v0 + 144);
  v18 = *(v0 + 120);
  v16 = *(v0 + 96);
  v14 = *(v0 + 72);
  *(v0 + 32);
  v5;
  v6;
  v7;
  v8;
  v12;
  v11;
  v10;
  v18;
  v16;
  v14;
  return (*(v0 + 8))();
}

{
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v49 = *(v0 + 336);
  v52 = *(v0 + 304);
  v58 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  (*(v3 + 16))(v2, v1, v4);
  AnnotatedFeature.annotation.getter(v58);
  AnnotatedPrediction.init(prediction:annotation:)(v2, v0 + 16, v4, &type metadata for String);
  v5 = *(v52 + 16);
  v6 = *(v52 + 24);
  v7 = *(v0 + 304);
  if (v6 >> 1 <= v5)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6 >= 2, v5 + 1, 1, *(v0 + 304));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = *(v0 + 40);
  v7[2] = v5 + 1;
  v12 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v5;
  v13 = v7;
  (*(v10 + 32))(v12, v8, v9);
  v53 = v13;
  if (v11)
  {
    v62 = *(v0 + 272);
    v14 = *(v0 + 96);
    v65 = *(v0 + 88);
    v55 = *(v0 + 80);
    v15 = *(v0 + 72);
    v16 = *(v0 + 64);
    v59 = *(v0 + 40);
    v17 = *(v0 + 48);
    outlined init with copy of MLTrainingSessionParameters(*(v0 + 56), v15, type metadata accessor for MLImageClassifier.Model);

    v47 = String.init<A>(describing:)(v15, v16);
    v45 = v18;
    v46 = v53[2];
    v19 = type metadata accessor for MetricsKey(0);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v21 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v22 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v19, v20, v21);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v47, v45, v46, v62, 0, v22);
    v59(v14);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v59, v17);
    (*(v65 + 8))(v14, v55);
  }

  v23 = *(v0 + 264);
  v66 = *(v0 + 256);
  v24 = *(v0 + 248);
  v25 = *(v0 + 296) + 1;
  v26 = *(v0 + 272);
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  (*(v66 + 8))(v23, v24);
  if (v25 == v26)
  {
    *(v0 + 32);
    v27 = *(v0 + 240);
    v28 = *(v0 + 232);
    v29 = *(v0 + 208);
    v30 = *(v0 + 184);
    v50 = *(v0 + 168);
    v63 = *(v0 + 144);
    v60 = *(v0 + 120);
    v67 = *(v0 + 72);
    v56 = *(v0 + 96);
    *(v0 + 264);
    v27;
    v28;
    v29;
    v30;
    v50;
    v63;
    v60;
    v56;
    v67;
    v31 = *(v0 + 8);
    v32 = v53;
    return v31(v32);
  }

  v33 = *(v0 + 296) + 1;
  *(v0 + 304) = v53;
  *(v0 + 296) = v33;
  (*(v0 + 288))(*(v0 + 264), *(v0 + 32) + ((*(v0 + 344) + 32) & ~*(v0 + 344)) + *(v0 + 280) * v33, *(v0 + 248));
  static Task<>.checkCancellation()();
  if (v49)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v53;
    v34 = *(v0 + 264);
    v35 = *(v0 + 240);
    v36 = *(v0 + 232);
    v48 = *(v0 + 208);
    v51 = *(v0 + 184);
    v64 = *(v0 + 168);
    v61 = *(v0 + 144);
    v57 = *(v0 + 120);
    v68 = *(v0 + 96);
    v54 = *(v0 + 72);
    *(v0 + 32);
    v34;
    v35;
    v36;
    v48;
    v51;
    v64;
    v61;
    v57;
    v68;
    v32 = v54;
    v54;
    v31 = *(v0 + 8);
    return v31(v32);
  }

  v38 = *(v0 + 184);
  v39 = *(v0 + 56);
  v40 = *(v0 + 176);
  AnnotatedFeature.feature.getter(*(v0 + 248));
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, v38, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v38, v40);
  v42 = *(v0 + 184);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v0 + 136) + 32))(*(v0 + 144), v42, *(v0 + 128));
    v43 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 328) = v43;
    *v43 = v0;
    v43[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 160) + 32))(*(v0 + 168), v42, *(v0 + 152));
    v44 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 312) = v44;
    *v44 = v0;
    v44[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 152));
  }
}

{
  v1 = *(v0 + 304);
  v15 = *(v0 + 264);
  v13 = *(v0 + 256);
  v17 = *(v0 + 248);
  v2 = *(v0 + 208);
  v3 = *(v0 + 200);
  v4 = *(v0 + 192);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  (*(v3 + 8))(v2, v4);
  v1;
  (*(v13 + 8))(v15, v17);
  v5 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = *(v0 + 232);
  v8 = *(v0 + 208);
  v12 = *(v0 + 184);
  v11 = *(v0 + 168);
  v10 = *(v0 + 144);
  v18 = *(v0 + 120);
  v16 = *(v0 + 96);
  v14 = *(v0 + 72);
  *(v0 + 32);
  v5;
  v6;
  v7;
  v8;
  v12;
  v11;
  v10;
  v18;
  v16;
  v14;
  return (*(v0 + 8))();
}

{
  return specialized Transformer.prediction<A, B>(from:eventHandler:)();
}

{
  return specialized Transformer.prediction<A, B>(from:eventHandler:)();
}

uint64_t key path setter for AnnotatedPrediction.prediction : AnnotatedPrediction<ClassificationDistribution<String>, String>(uint64_t a1)
{
  v9[0] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  (*(v3 + 16))(v9, a1, v2);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>);
  return AnnotatedPrediction.prediction.setter(v9, v7);
}

uint64_t key path getter for ClassificationDistribution.mostLikelyLabel : ClassificationDistribution<String>()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  result = ClassificationDistribution.mostLikelyLabel.getter(v2);
  *v1 = v4;
  return result;
}

Swift::Bool __swiftcall SoundClassifierTrainingSessionDelegate.shouldTransition(from:to:)(CreateML::MLPhase from, CreateML::MLPhase to)
{
  result = 1;
  if (*from == 1 && *to == 2)
  {
    return *(v2 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) ^ 1;
  }

  return result;
}

uint64_t SoundClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t *a1, unsigned __int8 *a2)
{
  v84 = v2;
  v79 = v3;
  v89 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Model?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v87 = &v75;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Classifier?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v85 = &v75;
  LODWORD(v10) = 0;
  v82 = type metadata accessor for CSVWritingOptions(0);
  v78 = *(v82 - 8);
  v11 = *(v78 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v76 = &v75;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v75 = &v75;
  v86 = type metadata accessor for DataFrame(0);
  v81 = *(v86 - 1);
  v16 = *(v81 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v77 = &v75;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v80 = &v75;
  v88 = type metadata accessor for URL(0);
  v21 = *(v88 - 8);
  v22 = *(v21 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v25 = alloca(v22);
  v26 = alloca(v22);
  v27 = alloca(v22);
  v28 = alloca(v22);
  v29 = alloca(v22);
  v30 = alloca(v22);
  v31 = *a2;
  if (v31 == 2)
  {
    URL.appendingPathComponent(_:)(0x6C65646F6DLL, 0xE500000000000000);
    v89 = &v75;
    URL.appendingPathExtension(_:)(6777712, 0xE300000000000000);
    v47 = *(v21 + 8);
    v47(&v75, v88);
    v48 = v79;
    v49 = v79 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v79 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, v91, 0, 0);
    v50 = v85;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v49, v85, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
    v51 = type metadata accessor for MLSoundClassifier.Classifier(0);
    if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
    {
      BUG();
    }

    v86 = v47;
    v52 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v48;
    swift_beginAccess(v52, v90, 0, 0);
    v10 = v87;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, v87, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
    v53 = type metadata accessor for MLSoundClassifier.Model(0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v53) == 1)
    {
      BUG();
    }

    v54 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLSoundClassifier.Classifier and conformance MLSoundClassifier.Classifier, type metadata accessor for MLSoundClassifier.Classifier, &protocol conformance descriptor for MLSoundClassifier.Classifier);
    v55 = v89;
    v56 = v85;
    v57 = v84;
    UpdatableSupervisedEstimator.writeWithOptimizer(_:to:overwrite:)(v10, v89, 1, v51, v54);
    if (!v57)
    {
      v86(v55, v88);
      outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLSoundClassifier.Model);
      outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLSoundClassifier.Classifier);
LABEL_13:
      LOBYTE(v10) = 1;
      return v10;
    }

    v86(v55, v88);
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLSoundClassifier.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLSoundClassifier.Classifier);
  }

  else
  {
    if (v31 != 1)
    {
      return v10;
    }

    v85 = &v75;
    URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
    v87 = &v75;
    URL.appendingPathExtension(_:)(7762787, 0xE300000000000000);
    v32 = *(v21 + 8);
    v33 = v88;
    v32(&v75, v88);
    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
    URL.appendingPathExtension(_:)(7762787, 0xE300000000000000);
    v83 = v32;
    v32(&v75, v33);
    v34 = objc_opt_self(NSFileManager);
    v35 = [v34 defaultManager];
    v36 = v35;
    URL._bridgeToObjectiveC()(v36);
    v38 = v37;
    v91[0] = 0;
    v39 = [(NSURL *)v36 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:v91];

    v40 = v91[0];
    if (v39)
    {
      v41 = *(v79 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
      v91[0];

      v42 = v80;
      static SoundClassifierTrainingSessionDelegate.createJSONEncodedDataFrame(from:)(v41);
      v41;
      v43 = v75;
      CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
      v44 = v86;
      v45 = v84;
      DataFrameProtocol.writeCSV(to:options:)(v87, v43, v86, &protocol witness table for DataFrame);
      if (v45)
      {
        (*(v78 + 8))(v43, v82);
        (*(v81 + 8))(v42, v44);
        v46 = v85;
LABEL_16:
        v68 = v88;
        v10 = v83;
        v83(v46, v88);
        v10(v87, v68);
        return v10;
      }

      v89 = *(v78 + 8);
      (v89)(v43, v82);
      v84 = 0;
      v60 = *(v79 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures);

      v61 = v77;
      static SoundClassifierTrainingSessionDelegate.createJSONEncodedDataFrame(from:)(v60);
      v60;
      v62 = v76;
      CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
      v63 = v85;
      v64 = v84;
      DataFrameProtocol.writeCSV(to:options:)(v85, v62, v86, &protocol witness table for DataFrame);
      if (v64)
      {
        (v89)(v62, v82);
        v65 = *(v81 + 8);
        v66 = v61;
        v67 = v86;
        v65(v66, v86);
        v65(v80, v67);
        v46 = v63;
        goto LABEL_16;
      }

      (v89)(v62, v82);
      v70 = *(v81 + 8);
      v71 = v61;
      v72 = v86;
      v70(v71, v86);
      v70(v80, v72);
      v73 = v63;
      v74 = v88;
      v10 = v83;
      v83(v73, v88);
      v10(v87, v74);
      goto LABEL_13;
    }

    v58 = v91[0];
    _convertNSErrorToError(_:)(v40);

    swift_willThrow();
    v10 = v88;
    v59 = v83;
    v83(v85, v88);
    v59(v87, v10);
  }

  return v10;
}

uint64_t static SoundClassifierTrainingSessionDelegate.createJSONEncodedDataFrame(from:)(uint64_t a1)
{
  v60 = v1;
  v3 = 0;
  v4 = *(*(type metadata accessor for String.Encoding(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v53 = &v49;
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v55 = *(v54 - 8);
  v7 = *(v55 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v56 = &v49;
  v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  v67 = *(v71 - 8);
  v10 = *(v67 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v68 = &v49;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v61 = *(v64 - 8);
  v13 = *(v61 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = alloca(v13);
  v17 = alloca(v13);
  v18 = type metadata accessor for JSONEncoder(0);
  swift_allocObject(v18, *(v18 + 48), *(v18 + 52));
  v19 = a1;
  v66 = JSONEncoder.init()(v18);
  v20 = *(a1 + 16);
  v72 = &v49;
  Column.init(name:capacity:)(0x7365727574616566, 0xE800000000000000, v20, &type metadata for String);
  v65 = &v49;
  Column.init(name:capacity:)(0x62614C7373616C63, 0xEA00000000006C65, v20, &type metadata for String);
  v57 = v20;
  if (v20)
  {
    v21 = v19 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v58 = *(v67 + 16);
    v59 = *(v67 + 72);
    v62 = v19;

    v22 = v71;
    v23 = v68;
    do
    {
      v51 = v21;
      v58(v23, v21, v22);
      v24 = v56;
      AnnotatedFeature.feature.getter(v22);
      v25 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
      v26 = v54;
      v27 = MLShapedArrayProtocol.scalars.getter(v54, v25);
      (*(v55 + 8))(v24, v26);
      v69 = v27;
      v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
      v29 = lazy protocol witness table accessor for type [Float] and conformance <A> [A](&lazy protocol witness table cache variable for type [Float] and conformance <A> [A], &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
      v30 = dispatch thunk of JSONEncoder.encode<A>(_:)(&v69, v28, v29);
      v63 = v3;
      if (v3)
      {
        v27;
        swift_unexpectedError(v63, "CreateML/_SoundClassifierTrainingSessionDelegate.swift", 54, 1, 430);
        BUG();
      }

      v32 = v30;
      v33 = v31;
      v27;
      v34 = v53;
      static String.Encoding.utf8.getter();
      v35 = String.init(data:encoding:)(v32, v33, v34);
      LOBYTE(v34) = v36;
      v69 = v35;
      v70 = v36;
      v52 = v33;
      v37 = v64;
      Column.append(_:)(&v69, v64);
      v34;
      v38 = v68;
      AnnotatedFeature.annotation.getter(v71);
      LOBYTE(v34) = v70;
      v50[0] = v69;
      v50[1] = v70;
      Column.append(_:)(v50, v37);
      outlined consume of Data._Representation(v32, v52);
      v34;
      v22 = v71;
      (*(v67 + 8))(v38, v71);
      v21 = v59 + v51;
      v39 = v57-- == 1;
      v23 = v38;
      v3 = v63;
    }

    while (!v39);
    v62;
  }

  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v41 = *(type metadata accessor for AnyColumn(0) - 8);
  v42 = swift_allocObject(v40, ((*(v41 + 80) + 32) & ~*(v41 + 80)) + 2 * *(v41 + 72), *(v41 + 80) | 7);
  *(v42 + 16) = 2;
  *(v42 + 24) = 4;
  v43 = v64;
  Column.eraseToAnyColumn()(v64);
  v44 = v65;
  Column.eraseToAnyColumn()(v43);
  v69 = v42;
  v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v46 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn], &protocol conformance descriptor for [A]);
  DataFrame.init<A>(columns:)(&v69, v45, v46);

  v47 = *(v61 + 8);
  v47(v44, v43);
  return (v47)(v72, v43);
}

uint64_t static SoundClassifierTrainingSessionDelegate.createDataFrame(from:)(uint64_t a1)
{
  v33 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v36 = v26;
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v34 = *(v38 - 8);
  v6 = *(v34 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *(a1 + 16);
  v40 = v26;
  Column.init(name:capacity:)(0x7365727574616566, 0xE800000000000000, v13, v2);
  v39 = v26;
  Column.init(name:capacity:)(0x62614C7373616C63, 0xEA00000000006C65, v13, &type metadata for String);
  v41 = v9;
  if (v13)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
    v14 = *(v30 - 8);
    v31 = v2;
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v32 = *(v14 + 72);
    v37 = a1;

    v16 = v36;
    do
    {
      v17 = v30;
      AnnotatedFeature.feature.getter(v30);
      Column.append(_:)(v16, v41);
      (*(v29 + 8))(v16, v31);
      AnnotatedFeature.annotation.getter(v17);
      LOBYTE(v17) = v28;
      v26[0] = v27;
      v26[1] = v28;
      Column.append(_:)(v26, v38);
      v17;
      v15 += v32;
      --v13;
    }

    while (v13);
    v37;
    v9 = v41;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v19 = *(type metadata accessor for AnyColumn(0) - 8);
  v20 = swift_allocObject(v18, ((*(v19 + 80) + 32) & ~*(v19 + 80)) + 2 * *(v19 + 72), *(v19 + 80) | 7);
  *(v20 + 16) = 2;
  *(v20 + 24) = 4;
  Column.eraseToAnyColumn()(v9);
  v21 = v38;
  v22 = v39;
  Column.eraseToAnyColumn()(v38);
  v27 = v20;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v24 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn], &protocol conformance descriptor for [A]);
  DataFrame.init<A>(columns:)(&v27, v23, v24);
  (*(v34 + 8))(v22, v21);
  return (*(v35 + 8))(v40, v41);
}

uint64_t SoundClassifierTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
    *v12 = 0xD000000000000030;
    *(v12 + 8) = "Feature Extractor" + 0x8000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 2;
    return swift_willThrow();
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLSoundClassifier.PersistentParameters);
    MLSoundClassifier.PersistentParameters.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLSoundClassifier.PersistentParameters);
  }
}

NSURL *SoundClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1, _BYTE *a2)
{
  v38 = v2;
  v32 = v3;
  v36 = a2;
  v31 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v34 = v29;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v37 = v29;
  v9 = type metadata accessor for URL(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v33 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v14 = *(*(v33 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v35 = v29;
  v17 = alloca(v14);
  v18 = alloca(v14);
  LOBYTE(v36) = *v36;
  (*(v10 + 16))(v29, v31, v9);
  v19 = v38;
  result = MLSoundClassifier.PersistentParameters.init(sessionDirectory:)(v29);
  if (!v19)
  {
    v21 = v36;
    v38 = v29;
    v22 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters + v32;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters + v32, v29, 0, 0);
    v23 = v37;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v22, v37, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    v24 = v23;
    v25 = v33;
    if (__swift_getEnumTagSinglePayload(v24, 1, v33) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
      v26 = v34;
      outlined init with take of MLClassifierMetrics(v38, v34, type metadata accessor for MLSoundClassifier.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
      swift_beginAccess(v22, v30, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v26, v22, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
      return swift_endAccess(v30);
    }

    else
    {
      v27 = v35;
      outlined init with take of MLClassifierMetrics(v37, v35, type metadata accessor for MLSoundClassifier.PersistentParameters);
      v30[0] = v21;
      v28 = v38;
      SoundClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:phase:)(v38, v27, v30);
      outlined destroy of MLActivityClassifier.ModelParameters(v27, type metadata accessor for MLSoundClassifier.PersistentParameters);
      return outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLSoundClassifier.PersistentParameters);
    }
  }

  return result;
}

uint64_t SoundClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:phase:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  *&v131 = a2;
  v5 = *(*(type metadata accessor for MLSoundClassifier.DataSource(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v123 = &v118;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v126 = &v118;
  v128 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v128 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v120 = &v118;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v119 = &v118;
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLSoundClassifier.ModelParameters.ValidationData, MLSoundClassifier.ModelParameters.ValidationData));
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  *&v132 = &v118;
  v19 = *a3;
  *&v133[0] = a1;
  result = MLSoundClassifier.DataSource.labeledSounds()();
  if (v3)
  {
    return result;
  }

  v21 = result;
  v121 = v15;
  v127 = v19;
  v22 = specialized Sequence.flatMap<A>(_:)(result);
  v21;
  v23 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v122 = *(*&v133[0] + v23[7]);
  ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5 = _s8CreateML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5(v22, v122, a2);
  v22;
  v24 = v131;
  v25 = MLSoundClassifier.DataSource.labeledSounds()();
  v26 = v25;
  v27 = specialized Sequence.flatMap<A>(_:)(v25);
  v129 = 0;
  v26;
  v124 = *(v24 + v23[7]);
  v28 = _s8CreateML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5(v27, v124, a2);
  v27;
  LOBYTE(v27) = ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5;
  MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ18CreateMLComponents16AnnotatedFeatureVy10Foundation3URLVSSG_Tt1g5(ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5, v28);
  v27;
  v28;
  if ((MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG_Tt1g5 & 1) == 0)
  {
    v66 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v66, 0, 0);
    *v67 = 1;
    *(v67 + 8) = 0;
    *(v67 + 24) = 0;
    *(v67 + 40) = 0;
    *(v67 + 48) = 4;
    return swift_willThrow();
  }

  ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5 = v23;
  v29 = v23[5];
  v30 = *&v133[0] + v29;
  v31 = v24 + v29;
  v32 = v132;
  v33 = (v132 + *(v121 + 48));
  outlined init with copy of MLTrainingSessionParameters(v30, v132, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v34 = v31;
  v35 = v32;
  outlined init with copy of MLTrainingSessionParameters(v34, v33, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v36 = v128;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v32, v128);
  v38 = v131;
  switch(EnumCaseMultiPayload)
  {
    case 0:
    case 3:
      outlined destroy of MLActivityClassifier.ModelParameters(v33, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      goto LABEL_5;
    case 1:
      v68 = v119;
      outlined init with copy of MLTrainingSessionParameters(v35, v119, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v69 = swift_getEnumCaseMultiPayload(v33, v36);
      v70 = v129;
      if (v69 != 1)
      {
        outlined destroy of MLActivityClassifier.ModelParameters(v68, type metadata accessor for MLSoundClassifier.DataSource);
LABEL_34:
        v97 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v97, 0, 0);
        *v98 = 1;
        *(v98 + 8) = 0;
        *(v98 + 24) = 0;
        *(v98 + 40) = 0;
        *(v98 + 48) = 4;
        swift_willThrow();
        return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for (MLSoundClassifier.ModelParameters.ValidationData, MLSoundClassifier.ModelParameters.ValidationData));
      }

      v71 = v68;
      v72 = v126;
      outlined init with take of MLClassifierMetrics(v71, v126, type metadata accessor for MLSoundClassifier.DataSource);
      v73 = v33;
      v74 = v123;
      v75 = v123;
      outlined init with take of MLClassifierMetrics(v73, v123, type metadata accessor for MLSoundClassifier.DataSource);
      v76 = MLSoundClassifier.DataSource.labeledSounds()();
      if (v70)
      {
        outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for MLSoundClassifier.DataSource);
        v77 = v72;
LABEL_22:
        outlined destroy of MLActivityClassifier.ModelParameters(v77, type metadata accessor for MLSoundClassifier.DataSource);
        v78 = v132;
        return outlined destroy of MLActivityClassifier.ModelParameters(v78, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      }

      v99 = v76;
      v100 = specialized Sequence.flatMap<A>(_:)(v76);
      v99;
      v101 = _s8CreateML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5(v100, v122, v75);
      v100;
      v102 = MLSoundClassifier.DataSource.labeledSounds()();
      v113 = v102;
      v114 = specialized Sequence.flatMap<A>(_:)(v102);
      v129 = 0;
      v113;
      v115 = _s8CreateML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5(v114, v124, v75);
      v114;
      LOBYTE(v114) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ18CreateMLComponents16AnnotatedFeatureVy10Foundation3URLVSSG_Tt1g5(v101, v115);
      v101;
      v115;
      if ((v114 & 1) == 0)
      {
        v116 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v116, 0, 0);
        *v117 = 1;
        *(v117 + 8) = 0;
        *(v117 + 24) = 0;
        *(v117 + 40) = 0;
        *(v117 + 48) = 4;
        swift_willThrow();
        outlined destroy of MLActivityClassifier.ModelParameters(v123, type metadata accessor for MLSoundClassifier.DataSource);
        v77 = v126;
        goto LABEL_22;
      }

      outlined destroy of MLActivityClassifier.ModelParameters(v123, type metadata accessor for MLSoundClassifier.DataSource);
      outlined destroy of MLActivityClassifier.ModelParameters(v126, type metadata accessor for MLSoundClassifier.DataSource);
      v38 = v131;
      v35 = v132;
LABEL_5:
      outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v39 = ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5[6];
      v40 = v133[0];
      v41 = *(*&v133[0] + v39);
      if (v41 != *(v38 + v39))
      {
        v133[0] = *(v38 + v39);
        v86 = Double.description.getter(v41);
        v88 = v87;
        v89 = Double.description.getter(v133[0]);
        v91 = v90;
        v92 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v92, 0, 0);
        strcpy(v93, "Overlap Factor");
        *(v93 + 15) = -18;
        *(v93 + 16) = v86;
LABEL_29:
        *(v93 + 24) = v88;
        *(v93 + 32) = v89;
        *(v93 + 40) = v91;
        *(v93 + 48) = 3;
        return swift_willThrow();
      }

      if (v122 != v124)
      {
        *&v133[0] = Double.description.getter(v122);
        v88 = v94;
        v89 = Double.description.getter(v124);
        v91 = v95;
        v96 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v96, 0, 0);
        *v93 = 0xD000000000000023;
        *(v93 + 8) = "ning checkpoints are supported" + 0x8000000000000000;
        *(v93 + 16) = v133[0];
        goto LABEL_29;
      }

      v42 = ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5[9];
      v43 = *(*&v133[0] + v42);
      v44 = *(*&v133[0] + v42 + 8);
      v45 = *(v38 + v42);
      v46 = *(v38 + v42 + 8);
      *&v132 = v42;
      if (v44)
      {
        v50 = ((v43 == v45) & v46) == 0;
        v47 = v127;
        if (v50)
        {
LABEL_9:
          v133[0] = *(*&v133[0] + v42 + 16);
          v48 = v133[0];
          *&v125 = v43;
          BYTE8(v125) = v44;

          *&v49 = MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();
          v128 = 0xD000000000000015;
          v50 = *&v48 == 0;
          v51 = 0xD000000000000015;
          if (v48 == 0.0)
          {
            v51 = 0xD000000000000012;
          }

          v52 = "Feature Extractor: ";
          if (v50)
          {
            v52 = "Multilayer Perceptron";
          }

          v53 = BYTE8(v49);
          v125 = v49;

          v54._countAndFlagsBits = v51;
          v54._object = (v52 | 0x8000000000000000);
          String.append(_:)(v54);
          SLOBYTE(v133[0]);
          v53;
          v52;
          *v133 = v125;
          v55 = *(v131 + v132);
          v56 = *(v131 + v132 + 8);
          *&v132 = *(v131 + v132 + 16);
          v57 = v132;
          *&v125 = v55;
          BYTE8(v125) = v56;

          *&v58 = MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();
          v59 = v57 == 0;
          v60 = v128;
          if (v59)
          {
            v60 = 0xD000000000000012;
          }

          v61 = BYTE8(v58);
          v62 = "Feature Extractor: ";
          if (v59)
          {
            v62 = "Multilayer Perceptron";
          }

          *&v131 = "on time window size" + 0x8000000000000000;
          v125 = v58;

          v63._countAndFlagsBits = v60;
          v63._object = (v62 | 0x8000000000000000);
          String.append(_:)(v63);
          v132;
          v61;
          v62;
          v132 = v125;
          v64 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v64, 0, 0);
          *v65 = 0xD000000000000011;
          *(v65 + 8) = v131;
          *(v65 + 16) = *v133;
          *(v65 + 32) = v132;
          *(v65 + 48) = 3;
          return swift_willThrow();
        }
      }

      else
      {
        v50 = ((v43 != v45) | v46 & 1) == 0;
        v47 = v127;
        if (!v50)
        {
          goto LABEL_9;
        }
      }

      switch(v47)
      {
        case 0:
          v103 = _stringCompareWithSmolCheck(_:_:expecting:)(0x696C616974696E69, 0xEB0000000064657ALL, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          result = 122;
          if ((v103 & 1) == 0)
          {
            v104 = ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5[8];
            v105 = *(v38 + v104);
            if (*(*&v40 + v104) == v105)
            {
              JUMPOUT(0xF0A06);
            }

            *&v125 = *(*&v40 + v104);
            v106 = lazy protocol witness table accessor for type Int and conformance Int();
            *&v133[0] = BinaryInteger.description.getter(&type metadata for Int, v106);
            *&v131 = v107;
            *&v125 = v105;
            v108 = BinaryInteger.description.getter(&type metadata for Int, v106);
            v110 = v109;
            v111 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v111, 0, 0);
            *v112 = 0x657449202E78614DLL;
            *(v112 + 8) = 0xEF736E6F69746172;
            *(v112 + 16) = v133[0];
            *(v112 + 24) = v131;
            *(v112 + 32) = v108;
            *(v112 + 40) = v110;
            JUMPOUT(0xF0ACALL);
          }

          return result;
        case 1:
          result = 110;
          break;
      }

      return result;
    case 2:
      v79 = v35;
      v80 = v120;
      outlined init with copy of MLTrainingSessionParameters(v79, v120, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v81 = *v80;
      if (swift_getEnumCaseMultiPayload(v33, v36) != 2)
      {
        v81;
        v35 = v132;
        goto LABEL_34;
      }

      v82 = *v33;
      v83 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_Say10Foundation3URLVGTt1g5(v81, *v33);
      v81;
      v82;
      v35 = v132;
      if (v83)
      {
        goto LABEL_5;
      }

      v84 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v84, 0, 0);
      *v85 = 1;
      *(v85 + 8) = 0;
      *(v85 + 24) = 0;
      *(v85 + 40) = 0;
      *(v85 + 48) = 4;
      swift_willThrow();
      v78 = v35;
      return outlined destroy of MLActivityClassifier.ModelParameters(v78, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  }
}

uint64_t SoundClassifierTrainingSessionDelegate.deinit()
{
  *(v0 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles);
  *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
  *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
  *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures);
  *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_parameters, &demangling cache variable for type metadata for MLSoundClassifier.ModelParameters?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics, &demangling cache variable for type metadata for MLClassifierMetrics?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics, &demangling cache variable for type metadata for MLClassifierMetrics?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter, &demangling cache variable for type metadata for TrainingTablePrinter?);
  return v0;
}

uint64_t type metadata accessor for SoundClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for SoundClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for SoundClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for SoundClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for SoundClassifierTrainingSessionDelegate(uint64_t a1)
{
  v9[0] = &unk_340B08;
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v9[1] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLSoundClassifier.PersistentParameters?, type metadata accessor for MLSoundClassifier.PersistentParameters);
    if (v3 <= 0x3F)
    {
      v9[2] = *(result - 8) + 64;
      v9[3] = &value witness table for Builtin.BridgeObject + 64;
      v9[4] = &value witness table for Builtin.BridgeObject + 64;
      v9[5] = &value witness table for Builtin.BridgeObject + 64;
      v9[6] = &value witness table for Builtin.BridgeObject + 64;
      v9[7] = &value witness table for Builtin.BridgeObject + 64;
      v9[8] = &unk_340B20;
      result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLSoundClassifier.Classifier?, type metadata accessor for MLSoundClassifier.Classifier);
      if (v4 <= 0x3F)
      {
        v9[9] = *(result - 8) + 64;
        result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLSoundClassifier.Model?, type metadata accessor for MLSoundClassifier.Model);
        if (v5 <= 0x3F)
        {
          v9[10] = *(result - 8) + 64;
          result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLSoundClassifier.ModelParameters?, type metadata accessor for MLSoundClassifier.ModelParameters);
          if (v6 <= 0x3F)
          {
            v9[11] = *(result - 8) + 64;
            result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLClassifierMetrics?, type metadata accessor for MLClassifierMetrics);
            if (v7 <= 0x3F)
            {
              v10 = *(result - 8) + 64;
              v11 = v10;
              result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for TrainingTablePrinter?, type metadata accessor for TrainingTablePrinter);
              if (v8 <= 0x3F)
              {
                v12 = *(result - 8) + 64;
                result = swift_updateClassMetadata2(a1, 256, 15, v9, a1 + 80);
                if (!result)
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for MLSoundClassifier.PersistentParameters?(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    v4 = a3(255);
    result = type metadata accessor for Optional(a1, v4);
    if (!v5)
    {
      *a2 = result;
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance SoundClassifierTrainingSessionDelegate(Swift::Int a1)
{
  *&v2 = SoundClassifierTrainingSessionDelegate.extractFeatures(from:)(a1);
  if (v5)
  {
    return (*(v1 + 8))(v3, v4, *(&v2 + 1));
  }

  else
  {
    return (*(v1 + 8))(v2, BYTE8(v2));
  }
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate(uint64_t a1)
{
  v2 = swift_task_alloc(480);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return SoundClassifierTrainingSessionDelegate.train(from:)(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = *(*v4 + 16);
  v8 = *v4;
  v7;
  if (!v3)
  {
    v9 = a3;
    v7 = a1;
  }

  return (*(v8 + 8))(v7, a2, v9);
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate()
{
  v1 = swift_task_alloc(448);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return SoundClassifierTrainingSessionDelegate.evaluate(from:)();
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  v4;
  if (!v1)
  {
    v4 = a1;
  }

  return (*(v5 + 8))(v4);
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>) - 8);
  v3 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = (v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>) - 8);
  v3 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

uint64_t specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v23 = v5;
  v7 = v6;
  v25 = a4;
  v22 = a3;
  *(v7 + 72) = &_swiftEmptySetSingleton;
  v9 = objc_allocWithZone(NSLock);
  *(v7 + 80) = [v9 init];
  v10 = a5[1];
  v11 = *(a5 + 25);
  *(v7 + 16) = *a5;
  *(v7 + 32) = v10;
  *(v7 + 41) = v11;
  swift_unknownObjectRetain(a1);
  v24 = a1;
  *(v7 + 64) = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo12MLMultiArrayC_s0C5SliceVyAEGTt0g5Tm(a1, a2, v22, v25, specialized _copyCollectionToContiguousArray<A>(_:));
  if (*a5 < 0.0 || *a5 >= 1.0)
  {
    v25 = *a5;

    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v12._object = "gSessionDelegate.swift" + 0x8000000000000000;
    v12._countAndFlagsBits = 0xD00000000000003ALL;
    String.append(_:)(v12);
    Double.write<A>(to:)(&v20, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v12._countAndFlagsBits = 46;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = v20;
    v14 = v21;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
    v16 = swift_allocObject(v15, 64, 7);
    v16[2] = 1;
    v16[3] = 2;
    v16[7] = &type metadata for String;
    v16[4] = v13;
    v16[5] = v14;

    print(_:separator:terminator:)(v16, 32, 0xE100000000000000, 10, 0xE100000000000000);
    v16;
    v17 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v17, 0, 0);
    *v18 = v13;
    *(v18 + 8) = v14;
    *(v18 + 16) = 0;
    *(v18 + 32) = 0;
    *(v18 + 48) = 0;
    swift_willThrow();
    swift_unknownObjectRelease(v24);
  }

  else
  {
    swift_unknownObjectRelease(v24);
  }

  return v7;
}

uint64_t specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  *(v2 + 72) = &_swiftEmptySetSingleton;
  v5 = objc_allocWithZone(NSLock);
  *(v2 + 80) = [v5 init];
  v6 = a2[1];
  v7 = *(a2 + 25);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v6;
  *(v2 + 41) = v7;
  *(v2 + 64) = a1;
  if (*a2 < 0.0 || *a2 >= 1.0)
  {
    v18 = *a2;

    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v8._object = "gSessionDelegate.swift" + 0x8000000000000000;
    v8._countAndFlagsBits = 0xD00000000000003ALL;
    String.append(_:)(v8);
    Double.write<A>(to:)(&v16, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v8._countAndFlagsBits = 46;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v18 = a1;
    v9 = v16;
    v10 = v17;
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
    v12 = swift_allocObject(v11, 64, 7);
    v12[2] = 1;
    v12[3] = 2;
    v12[7] = &type metadata for String;
    v12[4] = v9;
    v12[5] = v10;

    print(_:separator:terminator:)(v12, 32, 0xE100000000000000, 10, 0xE100000000000000);
    v12;
    v13 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v13, 0, 0);
    *v14 = v9;
    *(v14 + 8) = v10;
    *(v14 + 16) = 0;
    *(v14 + 32) = 0;
    *(v14 + 48) = 0;
    swift_willThrow();
    v18;
  }

  return v3;
}

uint64_t specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;

  while (1)
  {
    while (1)
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {
        v12;
        object = String.Iterator.next()().value._object;
        a2;
        LOBYTE(v4) = object != 0;
        goto LABEL_14;
      }

      countAndFlagsBits = v5.value._countAndFlagsBits;
      v7 = v5.value._object;
      v8 = String.Iterator.next()();
      if (!v8.value._object)
      {
        v7;
LABEL_11:
        a2;
        LODWORD(v4) = 0;
        goto LABEL_13;
      }

      v4 = v8.value._countAndFlagsBits;
      v9 = v8.value._object;
      if (v8.value._countAndFlagsBits ^ countAndFlagsBits | v8.value._object ^ v7)
      {
        break;
      }

      v7;
      v9;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)(countAndFlagsBits, v7, v8.value._countAndFlagsBits, v8.value._object, 1))
    {
      break;
    }

    LODWORD(v4) = _stringCompareWithSmolCheck(_:_:expecting:)(v4, v9, countAndFlagsBits, v7, 1);
    v7;
    v9;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  v7;
  v9;
  a2;
  LOBYTE(v4) = 1;
LABEL_13:
  LOBYTE(object) = v12;
LABEL_14:
  object;
  return v4;
}