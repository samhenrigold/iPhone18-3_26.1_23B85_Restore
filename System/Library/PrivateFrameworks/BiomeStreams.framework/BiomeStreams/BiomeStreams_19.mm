uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AggregationFunction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  lazy protocol witness table accessor for type AggregationFunction.AggregationType and conformance AggregationFunction.AggregationType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11[14] = *(v3 + 193);
    v11[13] = 1;
    lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t static AggregationFunction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static AggregationFunction.AggregationType.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 193);
  v5 = *(a1 + 193);

  return specialized == infix<A>(_:_:)(v5, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AggregationFunction(uint64_t a1, uint64_t a2)
{
  if ((specialized static AggregationFunction.AggregationType.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 193);
  v5 = *(a1 + 193);

  return specialized == infix<A>(_:_:)(v5, v4);
}

uint64_t protocol witness for SQLExpressionNode.expressionString.getter in conformance SQLExpressionConst()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t protocol witness for SQLExpressionNode.returnType.getter in conformance SQLExpressionConst()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t SQLExpression.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  v3 = *(v1 + 72);

  return specialized Array<A>.hash(into:)(a1, v3);
}

Swift::Int SQLExpression.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v2, *(v0 + 72));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SQLExpression()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v2, *(v0 + 72));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SQLExpression(uint64_t a1)
{
  String.hash(into:)();
  v3 = *(v1 + 72);

  return specialized Array<A>.hash(into:)(a1, v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SQLExpression(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v3, *(v1 + 72));
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.CodingKeys and conformance AggregationFunction.AggregationType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.TOTALCodingKeys and conformance AggregationFunction.AggregationType.TOTALCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression()
{
  result = lazy protocol witness table cache variable for type SQLExpression and conformance SQLExpression;
  if (!lazy protocol witness table cache variable for type SQLExpression and conformance SQLExpression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLExpression and conformance SQLExpression);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SQLExpression and conformance SQLExpression;
  if (!lazy protocol witness table cache variable for type SQLExpression and conformance SQLExpression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLExpression and conformance SQLExpression);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.SUMCodingKeys and conformance AggregationFunction.AggregationType.SUMCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MINCodingKeys and conformance AggregationFunction.AggregationType.MINCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.MAXCodingKeys and conformance AggregationFunction.AggregationType.MAXCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.GROUP_CONCATCodingKeys and conformance AggregationFunction.AggregationType.GROUP_CONCATCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNT_STARCodingKeys and conformance AggregationFunction.AggregationType.COUNT_STARCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.COUNTCodingKeys and conformance AggregationFunction.AggregationType.COUNTCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType.AVGCodingKeys and conformance AggregationFunction.AggregationType.AVGCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction.AggregationType and conformance AggregationFunction.AggregationType()
{
  result = lazy protocol witness table cache variable for type AggregationFunction.AggregationType and conformance AggregationFunction.AggregationType;
  if (!lazy protocol witness table cache variable for type AggregationFunction.AggregationType and conformance AggregationFunction.AggregationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction.AggregationType and conformance AggregationFunction.AggregationType);
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSiG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_SiTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSSiIsgnndzo_Tf1nc_n(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t *))
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v50 = a2;
    v51 = 0;
    v7 = 0;
    v56 = a3;
    v10 = a3[8];
    v9 = a3 + 8;
    v8 = v10;
    v11 = 1 << *(v9 - 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v8;
    v14 = (v11 + 63) >> 6;
    while (1)
    {
      if (!v13)
      {
        v16 = v7;
        while (1)
        {
          v7 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v7 >= v14)
          {
            goto LABEL_19;
          }

          v17 = v9[v7];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v13 = (v17 - 1) & v17;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v7 << 6);
      v19 = v56[7];
      v20 = (v56[6] + 16 * v18);
      v21 = v20[1];
      v57[0] = *v20;
      v57[1] = v21;
      v58 = *(v19 + 8 * v18);

      v22 = a4(v57, &v58);
      if (v4)
      {

        return;
      }

      v23 = v22;

      if (v23)
      {
        *(a1 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v24 = __OFADD__(v51++, 1);
        if (v24)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_19:
    if (!v51)
    {
LABEL_47:

      return;
    }

    v25 = v56;
    if (v51 == v56[2])
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
    v26 = static _DictionaryStorage.allocate(capacity:)();
    v27 = v26;
    if (v50)
    {
      v28 = a1;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
      v28 = a1;
    }

    v30 = 0;
    v31 = v26 + 64;
    v32 = v51;
    while (v29)
    {
      v33 = __clz(__rbit64(v29));
      v52 = (v29 - 1) & v29;
LABEL_35:
      v36 = v33 | (v30 << 6);
      v37 = (v25[6] + 16 * v36);
      v38 = *v37;
      v39 = v37[1];
      v55 = *(v25[7] + 8 * v36);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v40 = Hasher._finalize()();
      v41 = -1 << *(v27 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v31 + 8 * (v42 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v41) >> 6;
        v28 = a1;
        while (++v43 != v46 || (v45 & 1) == 0)
        {
          v47 = v43 == v46;
          if (v43 == v46)
          {
            v43 = 0;
          }

          v45 |= v47;
          v48 = *(v31 + 8 * v43);
          if (v48 != -1)
          {
            v44 = __clz(__rbit64(~v48)) + (v43 << 6);
            goto LABEL_45;
          }
        }

        goto LABEL_50;
      }

      v44 = __clz(__rbit64((-1 << v42) & ~*(v31 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v28 = a1;
LABEL_45:
      *(v31 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      v49 = (*(v27 + 48) + 16 * v44);
      *v49 = v38;
      v49[1] = v39;
      *(*(v27 + 56) + 8 * v44) = v55;
      ++*(v27 + 16);
      v24 = __OFSUB__(v32--, 1);
      if (v24)
      {
        goto LABEL_52;
      }

      v25 = v56;
      v29 = v52;
      if (!v32)
      {
        goto LABEL_47;
      }
    }

    v34 = v30;
    while (1)
    {
      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v30 >= v50)
      {
        goto LABEL_47;
      }

      v35 = v28[v30];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_35;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1865F6890](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v5 += 24;

      String.hash(into:)();
      String.hash(into:)();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized static AggregationFunction.AggregationType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AggregationFunction.AggregationType(a1, v46);
  outlined init with copy of AggregationFunction.AggregationType(a2, &v48);
  if (v47 > 3u)
  {
    if (v47 > 5u)
    {
      if (v47 != 6)
      {
        if (v60 == 7)
        {
          v4 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(v52, v56), vorrq_s8(v54, v58)), vorrq_s8(vorrq_s8(v53, v57), vorrq_s8(v55, v59))), vorrq_s8(vorrq_s8(v48, v50), vorrq_s8(v49, v51)));
          if (!*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)))
          {
            outlined destroy of AggregationFunction.AggregationType(v46);
            v3 = 1;
            return v3 & 1;
          }
        }

LABEL_45:
        _s10Foundation4UUIDVSgWOhTm_0(v46, &_s14BiomeSQLParser19AggregationFunctionV0C4TypeO_AEtMd, &_s14BiomeSQLParser19AggregationFunctionV0C4TypeO_AEtMR);
        v3 = 0;
        return v3 & 1;
      }

      outlined init with copy of AggregationFunction.AggregationType(v46, &v39);
      if (v60 != 6)
      {
        goto LABEL_44;
      }
    }

    else if (v47 == 4)
    {
      outlined init with copy of AggregationFunction.AggregationType(v46, &v39);
      if (v60 != 4)
      {
        goto LABEL_44;
      }
    }

    else
    {
      outlined init with copy of AggregationFunction.AggregationType(v46, &v39);
      if (v60 != 5)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_32;
  }

  if (v47 <= 1u)
  {
    if (!v47)
    {
      outlined init with copy of AggregationFunction.AggregationType(v46, &v39);
      if (!v60)
      {
        goto LABEL_32;
      }

      goto LABEL_44;
    }

    outlined init with copy of AggregationFunction.AggregationType(v46, &v39);
    if (v60 != 1)
    {
LABEL_44:
      outlined destroy of SQLExpression(&v39);
      goto LABEL_45;
    }

LABEL_32:
    v17 = v41;
    v18 = v42;
    v19 = v43;
    v20 = v44;
    v15 = v39;
    v16 = v40;
    v35 = v50;
    v36 = v51;
    v37 = v52;
    v38 = v53;
    v33 = v48;
    v34 = v49;
    if (__PAIR128__(v42, v41.u64[1]) == __PAIR128__(v51.u64[0], v50.u64[1]) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (specialized == infix<A>(_:_:)(BYTE8(v18), v36.u8[8]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser19AggregationFunctionV_Tt1g5(v19.i64[0], v37.i64[0]))
    {
      v3 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser7BindingV_Tt1g5(v19.i64[1], v37.i64[1]);
    }

    else
    {
      v3 = 0;
    }

    outlined destroy of SQLExpression(&v33);
    outlined destroy of SQLExpression(&v15);
    goto LABEL_39;
  }

  if (v47 != 2)
  {
    outlined init with copy of AggregationFunction.AggregationType(v46, &v39);
    if (v60 != 3)
    {
      goto LABEL_44;
    }

    goto LABEL_32;
  }

  outlined init with copy of AggregationFunction.AggregationType(v46, &v39);
  if (v60 != 2)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v45, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    goto LABEL_44;
  }

  v35 = v41;
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v33 = v39;
  v34 = v40;
  v29[2] = v50;
  v30 = v51;
  v31 = v52;
  v32 = v53;
  v29[0] = v48;
  v29[1] = v49;
  v28[2] = v45[2];
  v28[3] = v45[3];
  v28[4] = v45[4];
  v28[5] = v45[5];
  v28[0] = v45[0];
  v28[1] = v45[1];
  v27[2] = v56;
  v27[3] = v57;
  v27[4] = v58;
  v27[5] = v59;
  v27[0] = v54;
  v27[1] = v55;
  if (__PAIR128__(v42, v41.u64[1]) == __PAIR128__(v51.u64[0], v50.u64[1]) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (specialized == infix<A>(_:_:)(v36.u8[8], v30.u8[8]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser19AggregationFunctionV_Tt1g5(v37.i64[0], v31.i64[0]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser7BindingV_Tt1g5(v37.i64[1], v31.i64[1]))
  {
    outlined init with copy of PgQuery_Alias?(v28, &v15, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined init with copy of PgQuery_Alias?(v27, &v21, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    if (v16.i64[1])
    {
      outlined init with copy of PgQuery_Alias?(&v15, v10, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      if (*(&v22 + 1))
      {
        v6[2] = v23;
        v7 = v24;
        v8 = v25;
        v9 = v26;
        v6[0] = v21;
        v6[1] = v22;
        if (v11 == __PAIR128__(v24, *(&v23 + 1)) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (specialized == infix<A>(_:_:)(v12, BYTE8(v7)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser19AggregationFunctionV_Tt1g5(v13, v8))
        {
          v3 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser7BindingV_Tt1g5(v14, *(&v8 + 1));
        }

        else
        {
          v3 = 0;
        }

        _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        outlined destroy of SQLExpression(v6);
        outlined destroy of SQLExpression(v29);
        outlined destroy of SQLExpression(&v33);
        outlined destroy of SQLExpression(v10);
        _s10Foundation4UUIDVSgWOhTm_0(&v15, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        goto LABEL_39;
      }

      _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      outlined destroy of SQLExpression(v29);
      outlined destroy of SQLExpression(&v33);
      outlined destroy of SQLExpression(v10);
    }

    else
    {
      _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      outlined destroy of SQLExpression(v29);
      outlined destroy of SQLExpression(&v33);
      if (!*(&v22 + 1))
      {
        _s10Foundation4UUIDVSgWOhTm_0(&v15, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        v3 = 1;
        goto LABEL_39;
      }
    }

    _s10Foundation4UUIDVSgWOhTm_0(&v15, &_s14BiomeSQLParser13SQLExpressionVSg_ADtMd, &_s14BiomeSQLParser13SQLExpressionVSg_ADtMR);
  }

  else
  {
    _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined destroy of SQLExpression(v29);
    outlined destroy of SQLExpression(&v33);
  }

  v3 = 0;
LABEL_39:
  outlined destroy of AggregationFunction.AggregationType(v46);
  return v3 & 1;
}

uint64_t getEnumTagSinglePayload for AggregationFunction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 194))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 192);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AggregationFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 194) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 194) = 0;
    }

    if (a2)
    {
      *(result + 192) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AggregationFunction.AggregationType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 193))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 192);
  if (v3 >= 8)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AggregationFunction.AggregationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 192) = 0;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *(result + 192) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AggregationFunction.AggregationType(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 192) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AggregationFunction.AggregationType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AggregationFunction.AggregationType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for AggregationFunction.AggregationType.AVGCodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AggregationFunction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AggregationFunction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SQLExpression.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLExpression.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for SQLExpressionError(uint64_t a1)
{
  result = type metadata singleton initialization cache for SQLExpressionError;
  if (!type metadata singleton initialization cache for SQLExpressionError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SQLExpressionError(uint64_t a1)
{
  type metadata accessor for (node: PgQuery_Node)(319, &lazy cache variable for type metadata for (node: PgQuery_Node), type metadata accessor for PgQuery_Node);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (node: PgQuery_Node)(319, &lazy cache variable for type metadata for (BOOLExpr: PgQuery_BoolExpr), type metadata accessor for PgQuery_BoolExpr);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (numNotArgExprs: Int)();
      if (v3 <= 0x3F)
      {
        type metadata accessor for (node: PgQuery_Node)(319, &lazy cache variable for type metadata for (aExpr: PgQuery_A_Expr), type metadata accessor for PgQuery_A_Expr);
        if (v4 <= 0x3F)
        {
          type metadata accessor for (node: PgQuery_Node)(319, &lazy cache variable for type metadata for (nullTest: PgQuery_NullTest), type metadata accessor for PgQuery_NullTest);
          if (v5 <= 0x3F)
          {
            type metadata accessor for (op: String, dataType: SQLDataType)(319, &lazy cache variable for type metadata for (op: String, dataType: SQLDataType), &type metadata for SQLDataType, "op dataType ");
            if (v6 <= 0x3F)
            {
              type metadata accessor for (op: String, dataType: SQLDataType)(319, &lazy cache variable for type metadata for (table: String, column: String), MEMORY[0x1E69E6158], "table column ");
              if (v7 <= 0x3F)
              {
                type metadata accessor for (column: String)();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for (function: String, argTypes: [SQLDataType])(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for (op: String, dataType: SQLDataType)(319, &lazy cache variable for type metadata for (column: String, tokenColumn: String), MEMORY[0x1E69E6158], "column tokenColumn ");
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for (numNotArgExprs: Int)()
{
  result = lazy cache variable for type metadata for (numNotArgExprs: Int);
  if (!lazy cache variable for type metadata for (numNotArgExprs: Int))
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &lazy cache variable for type metadata for (numNotArgExprs: Int));
  }

  return result;
}

void type metadata accessor for (node: PgQuery_Node)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for (column: String)()
{
  result = lazy cache variable for type metadata for (column: String);
  if (!lazy cache variable for type metadata for (column: String))
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &lazy cache variable for type metadata for (column: String));
  }

  return result;
}

void type metadata accessor for (function: String, argTypes: [SQLDataType])(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (function: String, argTypes: [SQLDataType]))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14BiomeSQLParser11SQLDataTypeOGMd, &_sSay14BiomeSQLParser11SQLDataTypeOGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (function: String, argTypes: [SQLDataType]));
    }
  }
}

void type metadata accessor for (op: String, dataType: SQLDataType)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

Swift::Int specialized ColumnResolver.init(schemas:)(uint64_t a1)
{
  v200[9] = *MEMORY[0x1E69E9840];
  v188 = *(a1 + 16);
  v187 = a1;
  if (!v188)
  {
    v2 = MEMORY[0x1E69E7CC8];
LABEL_48:
    v53 = *(v2 + 32);
    v10 = v2;
    v2 = ((1 << v53) + 63) >> 6;
    v11 = 8 * v2;
    if ((v53 & 0x3Fu) > 0xD)
    {
      goto LABEL_188;
    }

LABEL_49:
    MEMORY[0x1EEE9AC00](a1, v11);
    v55 = (&v183 - ((v54 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v55, v54);
    v56 = 0;
    v57 = 0;
    v58 = v10;
    v60 = *(v10 + 64);
    v10 += 64;
    v59 = v60;
    v61 = 1 << *(v10 - 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & v59;
    v64 = (v61 + 63) >> 6;
    while (1)
    {
      if (v63)
      {
        v65 = __clz(__rbit64(v63));
        v63 &= v63 - 1;
        v66 = v65 | (v57 << 6);
      }

      else
      {
        v67 = v57;
        do
        {
          v57 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            goto LABEL_182;
          }

          if (v57 >= v64)
          {
            goto LABEL_63;
          }

          v68 = *(v10 + 8 * v57);
          ++v67;
        }

        while (!v68);
        v63 = (v68 - 1) & v68;
        v66 = __clz(__rbit64(v68)) | (v57 << 6);
      }

      if (*(*(v58 + 56) + 8 * v66) >= 2)
      {
        *(v55 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
        v22 = __OFADD__(v56++, 1);
        if (v22)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_63:
    if (v56)
    {
      v10 = v58;
      if (v56 == *(v58 + 16))
      {

        v69 = v58;
      }

      else
      {
        countAndFlagsBits = &v183;
        v196 = v2;
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
        v69 = static _DictionaryStorage.allocate(capacity:)();
        v70 = 0;
        v71 = *v55;
        v72 = v69 + 64;
        v73 = v58;
        do
        {
          if (v71)
          {
            v77 = __clz(__rbit64(v71));
            v71 &= v71 - 1;
          }

          else
          {
            v78 = v70;
            do
            {
              v70 = v78 + 1;
              if (__OFADD__(v78, 1))
              {
                goto LABEL_186;
              }

              if (v70 >= v196)
              {
                goto LABEL_86;
              }

              v79 = v55[v70];
              ++v78;
            }

            while (!v79);
            v77 = __clz(__rbit64(v79));
            v71 = (v79 - 1) & v79;
          }

          v80 = v77 | (v70 << 6);
          v81 = (*(v73 + 48) + 16 * v80);
          v82 = *v81;
          v10 = v81[1];
          v198 = *(*(v73 + 56) + 8 * v80);
          Hasher.init(_seed:)();

          v197 = v82;
          String.hash(into:)();
          v2 = v200;
          v83 = Hasher._finalize()();
          v84 = -1 << *(v69 + 32);
          v85 = v83 & ~v84;
          v86 = v85 >> 6;
          if (((-1 << v85) & ~*(v72 + 8 * (v85 >> 6))) != 0)
          {
            v74 = __clz(__rbit64((-1 << v85) & ~*(v72 + 8 * (v85 >> 6)))) | v85 & 0x7FFFFFFFFFFFFFC0;
            v73 = v58;
          }

          else
          {
            v87 = 0;
            v88 = (63 - v84) >> 6;
            v73 = v58;
            do
            {
              if (++v86 == v88 && (v87 & 1) != 0)
              {
                goto LABEL_187;
              }

              v89 = v86 == v88;
              if (v86 == v88)
              {
                v86 = 0;
              }

              v87 |= v89;
              v90 = *(v72 + 8 * v86);
            }

            while (v90 == -1);
            v74 = __clz(__rbit64(~v90)) + (v86 << 6);
          }

          *(v72 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
          v75 = (*(v69 + 48) + 16 * v74);
          v76 = v198;
          *v75 = v197;
          v75[1] = v10;
          *(*(v69 + 56) + 8 * v74) = v76;
          ++*(v69 + 16);
          --v56;
        }

        while (v56);
      }
    }

    else
    {
      v69 = MEMORY[0x1E69E7CC8];
    }

LABEL_86:

    v91 = v190;
LABEL_87:
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSiG_SSs5NeverOTg5181_s14BiomeSQLParser14ColumnResolver33_B787555787B9EFBBEFB0C9C5225A4FB7LLV7schemasADSayAA6SchemaVG_tKcfcS2S3key_Si5valuet_tcfu_32a168a102879cc1a6a91172b0770f0c91SSAI_SiAJtSSTf3nnnpk_nTf1cn_n(v69);
    v93 = v92;
    v185 = v91;

    v94 = MEMORY[0x1865F6400](*(v93 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v199 = v94;
    v95 = *(v93 + 16);
    if (v95)
    {
      v96 = 0;
      v97 = (v93 + 40);
      do
      {
        if (v96 >= *(v93 + 16))
        {
          goto LABEL_184;
        }

        ++v96;
        v10 = *(v97 - 1);
        v98 = *v97;

        v2 = &v199;
        specialized Set._Variant.insert(_:)(v200, v10, v98);

        v97 += 2;
      }

      while (v95 != v96);
      v99 = v199;
    }

    else
    {
      v99 = v94;
    }

    if (!v188)
    {
      return MEMORY[0x1E69E7CC8];
    }

    v100 = 0;
    v186 = v187 + 32;
    v101 = v99 + 56;
    v102 = MEMORY[0x1E69E7CC8];
    v189 = v99;
    v190 = v99 + 56;
LABEL_96:
    v103 = (v186 + 24 * v100);
    v104 = v103[1];
    v194 = *v103;
    v105 = v103[2];
    v187 = v100 + 1;
    v106 = v105 + 64;
    v107 = 1 << *(v105 + 32);
    if (v107 < 64)
    {
      v108 = ~(-1 << v107);
    }

    else
    {
      v108 = -1;
    }

    v109 = v108 & *(v105 + 64);
    v2 = (v107 + 63) >> 6;
    v196 = v104;

    v197 = v105;
    swift_bridgeObjectRetain_n();
    v110 = 0;
    v192 = v2;
    for (i = v105 + 64; ; v106 = i)
    {
      if (!v109)
      {
        while (1)
        {
          v112 = v110 + 1;
          if (__OFADD__(v110, 1))
          {
            break;
          }

          if (v112 >= v2)
          {

            v100 = v187;
            if (v187 == v188)
            {
              return v102;
            }

            goto LABEL_96;
          }

          v109 = *(v106 + 8 * v112);
          ++v110;
          if (v109)
          {
            goto LABEL_107;
          }
        }

LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v112 = v110;
LABEL_107:
      v113 = __clz(__rbit64(v109)) | (v112 << 6);
      v114 = (*(v197 + 48) + 16 * v113);
      v115 = *v114;
      object = v114[1];
      LODWORD(v198) = *(*(v197 + 56) + v113);
      if (!*(v99 + 16))
      {
        break;
      }

      Hasher.init(_seed:)();

      String.hash(into:)();
      v116 = Hasher._finalize()();
      v117 = -1 << *(v99 + 32);
      v118 = v116 & ~v117;
      if (((*(v101 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118) & 1) == 0)
      {
        goto LABEL_118;
      }

      v10 = ~v117;
      while (1)
      {
        v119 = (*(v99 + 48) + 16 * v118);
        v120 = *v119 == v115 && v119[1] == object;
        if (v120 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v118 = (v118 + 1) & v10;
        if (((*(v101 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118) & 1) == 0)
        {
          goto LABEL_118;
        }
      }

LABEL_128:
      v200[0] = v194;
      v200[1] = v196;

      MEMORY[0x1865F6280](46, 0xE100000000000000);
      MEMORY[0x1865F6280](v115, object);

      v132 = String.lowercased()();
      object = v132._object;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v200[0] = v102;
      v2 = v102;
      v134 = specialized __RawDictionaryStorage.find<A>(_:)(v132._countAndFlagsBits, v132._object);
      v135 = *(v102 + 16);
      v136 = (v11 & 1) == 0;
      v22 = __OFADD__(v135, v136);
      v137 = v135 + v136;
      if (v22)
      {
        goto LABEL_179;
      }

      v10 = v11;
      if (*(v102 + 24) < v137)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v137, isUniquelyReferenced_nonNull_native);
        v102 = v200[0];
        v2 = v200[0];
        v134 = specialized __RawDictionaryStorage.find<A>(_:)(v132._countAndFlagsBits, v132._object);
        if ((v10 & 1) != (v11 & 1))
        {
          goto LABEL_195;
        }

LABEL_133:
        v101 = v190;
        goto LABEL_134;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_133;
      }

      countAndFlagsBits = v134;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      v140 = static _DictionaryStorage.copy(original:)();
      v141 = *(v102 + 16);
      v191 = v140;
      if (v141)
      {
        v142 = v140;
        v143 = (v140 + 64);
        v2 = v102 + 64;
        v144 = ((1 << *(v142 + 32)) + 63) >> 6;
        if (v142 != v102 || v143 >= v2 + 8 * v144)
        {
          memmove(v143, (v102 + 64), 8 * v144);
        }

        v145 = 0;
        v191[2] = *(v102 + 16);
        v146 = 1 << *(v102 + 32);
        v147 = *(v102 + 64);
        if (v146 < 64)
        {
          v148 = ~(-1 << v146);
        }

        else
        {
          v148 = -1;
        }

        v149 = v148 & v147;
        v150 = (v146 + 63) >> 6;
        if ((v148 & v147) != 0)
        {
          do
          {
            v151 = __clz(__rbit64(v149));
            v149 &= v149 - 1;
LABEL_151:
            v154 = v151 | (v145 << 6);
            v155 = (*(v102 + 48) + 16 * v154);
            v157 = *v155;
            v156 = v155[1];
            LOBYTE(v155) = *(*(v102 + 56) + v154);
            v158 = v191;
            v159 = (v191[6] + 16 * v154);
            *v159 = v157;
            v159[1] = v156;
            *(v158[7] + v154) = v155;
          }

          while (v149);
        }

        v152 = v145;
        while (1)
        {
          v145 = v152 + 1;
          if (__OFADD__(v152, 1))
          {
            goto LABEL_193;
          }

          if (v145 >= v150)
          {
            break;
          }

          v153 = *(v2 + 8 * v145);
          ++v152;
          if (v153)
          {
            v151 = __clz(__rbit64(v153));
            v149 = (v153 - 1) & v153;
            goto LABEL_151;
          }
        }

        v99 = v189;
      }

      v134 = countAndFlagsBits;
      v101 = v190;
      v102 = v191;
LABEL_134:
      v109 &= v109 - 1;
      if (v10)
      {
        v111 = v134;

        *(*(v102 + 56) + v111) = v198;
      }

      else
      {
        *(v102 + 8 * (v134 >> 6) + 64) |= 1 << v134;
        *(*(v102 + 48) + 16 * v134) = v132;
        *(*(v102 + 56) + v134) = v198;
        v138 = *(v102 + 16);
        v22 = __OFADD__(v138, 1);
        v139 = v138 + 1;
        if (v22)
        {
          goto LABEL_183;
        }

        *(v102 + 16) = v139;
      }

      v110 = v112;
      v2 = v192;
    }

LABEL_118:
    v121 = String.lowercased()();
    v10 = v121._object;
    v2 = v102;
    v122 = swift_isUniquelyReferenced_nonNull_native();
    v200[0] = v2;
    countAndFlagsBits = v121._countAndFlagsBits;
    v123 = specialized __RawDictionaryStorage.find<A>(_:)(v121._countAndFlagsBits, v121._object);
    v124 = *(v2 + 16);
    v125 = (v11 & 1) == 0;
    v126 = v124 + v125;
    if (__OFADD__(v124, v125))
    {
      goto LABEL_180;
    }

    v127 = v11;
    v191 = v2;
    if (*(v2 + 24) < v126)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v126, v122);
      v102 = v200[0];
      v2 = v200[0];
      v128 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v121._object);
      if ((v127 & 1) != (v11 & 1))
      {
        goto LABEL_195;
      }

      v123 = v128;
      if (v127)
      {
        goto LABEL_122;
      }

LABEL_125:
      *(v102 + 8 * (v123 >> 6) + 64) |= 1 << v123;
      v129 = (*(v102 + 48) + 16 * v123);
      *v129 = countAndFlagsBits;
      v129[1] = v121._object;
      *(*(v102 + 56) + v123) = v198;
      v130 = *(v102 + 16);
      v22 = __OFADD__(v130, 1);
      v131 = v130 + 1;
      if (v22)
      {
        goto LABEL_185;
      }

      *(v102 + 16) = v131;
      goto LABEL_127;
    }

    if (v122)
    {
      v102 = v191;
      if ((v11 & 1) == 0)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      v160 = v191;
      v161 = static _DictionaryStorage.copy(original:)();
      v162 = v160;
      v102 = v161;
      if (v162[2])
      {
        v163 = (v161 + 64);
        v164 = (v162 + 8);
        v165 = ((1 << *(v102 + 32)) + 63) >> 6;
        v183 = v162 + 8;
        if (v102 != v162 || v163 >= &v164[8 * v165])
        {
          memmove(v163, v164, 8 * v165);
        }

        v166 = 0;
        v167 = v191;
        *(v102 + 16) = v191[2];
        v168 = 1 << *(v167 + 32);
        v169 = v167[8];
        if (v168 < 64)
        {
          v170 = ~(-1 << v168);
        }

        else
        {
          v170 = -1;
        }

        v171 = v170 & v169;
        v2 = (v168 + 63) >> 6;
        if (!v171)
        {
          goto LABEL_162;
        }

        while (1)
        {
          v172 = __clz(__rbit64(v171));
          for (j = (v171 - 1) & v171; ; j = (v174 - 1) & v174)
          {
            v175 = v172 | (v166 << 6);
            v176 = (v191[6] + 16 * v175);
            v178 = *v176;
            v177 = v176[1];
            LOBYTE(v176) = *(v191[7] + v175);
            v179 = (*(v102 + 48) + 16 * v175);
            *v179 = v178;
            v179[1] = v177;
            *(*(v102 + 56) + v175) = v176;

            v171 = j;
            if (j)
            {
              break;
            }

LABEL_162:
            v173 = v166;
            do
            {
              v166 = v173 + 1;
              if (__OFADD__(v173, 1))
              {
                goto LABEL_194;
              }

              if (v166 >= v2)
              {
                goto LABEL_169;
              }

              v174 = v183[v166];
              ++v173;
            }

            while (!v174);
            v172 = __clz(__rbit64(v174));
          }
        }
      }

LABEL_169:

      if ((v127 & 1) == 0)
      {
        goto LABEL_125;
      }
    }

LABEL_122:

    *(*(v102 + 56) + v123) = v198;
LABEL_127:
    v99 = v189;
    goto LABEL_128;
  }

  v1 = 0;
  v191 = (a1 + 32);
  v2 = MEMORY[0x1E69E7CC8];
  v3 = MEMORY[0x1E69E7CC8];
LABEL_4:
  v4 = &v191[3 * v1];
  v5 = v4[2];
  v192 = v4[1];
  i = v1 + 1;
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;

  v196 = v5;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v194 = v5 + 64;
  for (countAndFlagsBits = v10; ; v10 = countAndFlagsBits)
  {
    if (!v9)
    {
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_176;
        }

        if (v13 >= v10)
        {
          break;
        }

        v9 = *(v6 + 8 * v13);
        ++v12;
        if (v9)
        {
          goto LABEL_15;
        }
      }

      v1 = i;
      if (i == v188)
      {
        goto LABEL_48;
      }

      goto LABEL_4;
    }

    v13 = v12;
LABEL_15:
    v14 = (*(v196 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v2 + 16);

    v198 = v15;
    if (v17)
    {

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
      v20 = v19;

      if (v20)
      {
        v21 = *(*(v2 + 56) + 8 * v18);
      }

      else
      {
        v21 = 0;
      }

      v15 = v198;
      v6 = v194;
    }

    else
    {
      v21 = 0;
    }

    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_177;
    }

    v197 = v23;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v200[0] = v3;
    v2 = v3;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v25 = *(v3 + 16);
    v26 = (v11 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    object = v11;
    if (*(v3 + 24) >= v27)
    {
      if ((v24 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
        v189 = static _DictionaryStorage.copy(original:)();
        if (*(v3 + 16))
        {
          v34 = (v189 + 64);
          v35 = (v3 + 64);
          v36 = ((1 << *(v189 + 32)) + 63) >> 6;
          v186 = v3 + 64;
          if (v189 != v3 || v34 >= &v35[8 * v36])
          {
            memmove(v34, v35, 8 * v36);
          }

          v37 = 0;
          *(v189 + 16) = *(v3 + 16);
          v38 = 1 << *(v3 + 32);
          v39 = *(v3 + 64);
          if (v38 < 64)
          {
            v40 = ~(-1 << v38);
          }

          else
          {
            v40 = -1;
          }

          v41 = v40 & v39;
          v42 = (v38 + 63) >> 6;
          if ((v40 & v39) != 0)
          {
            do
            {
              v43 = __clz(__rbit64(v41));
              v41 &= v41 - 1;
LABEL_44:
              v46 = v43 | (v37 << 6);
              v47 = (*(v3 + 48) + 16 * v46);
              v49 = *v47;
              v48 = v47[1];
              v50 = *(*(v3 + 56) + 8 * v46);
              v51 = v189;
              v52 = (*(v189 + 48) + 16 * v46);
              *v52 = v49;
              v52[1] = v48;
              *(*(v51 + 56) + 8 * v46) = v50;
            }

            while (v41);
          }

          v44 = v37;
          while (1)
          {
            v37 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
            }

            if (v37 >= v42)
            {
              break;
            }

            v45 = *(v186 + 8 * v37);
            ++v44;
            if (v45)
            {
              v43 = __clz(__rbit64(v45));
              v41 = (v45 - 1) & v45;
              goto LABEL_44;
            }
          }
        }

        v2 = v189;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, v24);
      v2 = v200[0];
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v198, v16);
      if ((object & 1) != (v11 & 1))
      {
LABEL_195:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_196;
      }

      v10 = v29;
      v2 = v200[0];
    }

    v9 &= v9 - 1;
    if (object)
    {

      *(*(v2 + 56) + 8 * v10) = v197;
    }

    else
    {
      *(v2 + 8 * (v10 >> 6) + 64) |= 1 << v10;
      v30 = (*(v2 + 48) + 16 * v10);
      v31 = v197;
      *v30 = v198;
      v30[1] = v16;
      *(*(v2 + 56) + 8 * v10) = v31;
      v32 = *(v2 + 16);
      v22 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v22)
      {
        goto LABEL_181;
      }

      *(v2 + 16) = v33;
    }

    v3 = v2;
    v12 = v13;
  }

LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  v181 = v11;

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v181;
    goto LABEL_49;
  }

  object = swift_slowAlloc();

  v91 = v190;
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSiG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_SiTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSSiIsgnndzo_Tf1nc_n(object, v2, v10, closure #2 in ColumnResolver.init(schemas:));
  v2 = v91;
  if (!v91)
  {
    v69 = v182;

    MEMORY[0x1865F7B70](object, -1, -1);

    goto LABEL_87;
  }

LABEL_196:

  result = MEMORY[0x1865F7B70](object, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized SQLExpression.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000184DEA150 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79546E7275746572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000184DEA170 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73676E69646E6962 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7106931 && a2 == 0xE300000000000000)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized AggregationFunction.AggregationType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 4675137 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x544E554F43 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54535F544E554F43 && a2 == 0xEA00000000005241 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4F435F50554F5247 && a2 == 0xEC0000005441434ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 5783885 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 5130573 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 5068115 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C41544F54 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError()
{
  result = lazy protocol witness table cache variable for type SQLExpressionError and conformance SQLExpressionError;
  if (!lazy protocol witness table cache variable for type SQLExpressionError and conformance SQLExpressionError)
  {
    type metadata accessor for SQLExpressionError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLExpressionError and conformance SQLExpressionError);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1865F7B70);
  }

  return result;
}

uint64_t partial apply for closure #1 in SQLExpressionFuncCall.init(function:schemas:columnResolver:tokenInformation:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(a1, v3[2], v3[3], v3[4], v3[5], a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

{
  return partial apply for closure #1 in SQLExpressioBoolExpr.init(BOOLExpr:schemas:columnResolver:tokenInformation:)(a1, a2, a3);
}

uint64_t outlined init with copy of PgQuery_Node(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PgQuery_Node.OneOf_Node(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t outlined init with take of PgQuery_BitString(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError()
{
  result = lazy protocol witness table cache variable for type SQLParserError and conformance SQLParserError;
  if (!lazy protocol witness table cache variable for type SQLParserError and conformance SQLParserError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLParserError and conformance SQLParserError);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLExpressionAExpr(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLExpressionAExpr(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLExpressioBoolExpr(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for SQLExpressioBoolExpr(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLExpressionNullTest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t storeEnumTagSinglePayload for SQLExpressionNullTest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLExpressionAggregationFunction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 208);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLExpressionAggregationFunction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 208) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLExpressionConst(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SQLExpressionConst(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SQLExpressionInteger(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for SQLExpressionInteger(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SQLExpressionConstString(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF013SQLExpressionH033_B787555787B9EFBBEFB0C9C5225A4FB7LL_psAE_pTg5(void (*a1)(__int128 *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v17;
    v9 = *(type metadata accessor for PgQuery_Node(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(v16, v10, &v15);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v17 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v13 + 1;
      outlined init with take of Aggregation(v16, v6 + 40 * v13 + 32);
      v10 += v11;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF12ResultColumnVsAE_pTg5(void (*a1)(_OWORD *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v23;
    v8 = *(type metadata accessor for PgQuery_Node(0) - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(v22, v9, &v21);
      if (v3)
      {
        break;
      }

      v23 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
        v5 = v23;
      }

      *(v5 + 16) = v12 + 1;
      v13 = (v5 + (v12 << 7));
      v14 = v22[0];
      v15 = v22[1];
      v16 = v22[3];
      v13[4] = v22[2];
      v13[5] = v16;
      v13[2] = v14;
      v13[3] = v15;
      v17 = v22[4];
      v18 = v22[5];
      v19 = v22[7];
      v13[8] = v22[6];
      v13[9] = v19;
      v13[6] = v17;
      v13[7] = v18;
      v9 += v10;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF13SQLExpressionVsAE_pTg5(void (*a1)(_OWORD *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v21;
    v8 = *(type metadata accessor for PgQuery_Node(0) - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(v20, v9, &v19);
      if (v3)
      {
        break;
      }

      v21 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
        v5 = v21;
      }

      *(v5 + 16) = v12 + 1;
      v13 = (v5 + 96 * v12);
      v14 = v20[1];
      v13[2] = v20[0];
      v13[3] = v14;
      v15 = v20[2];
      v16 = v20[3];
      v17 = v20[5];
      v13[6] = v20[4];
      v13[7] = v17;
      v13[4] = v15;
      v13[5] = v16;
      v9 += v10;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLTokenInformation.tokenName(location:)(Swift::Int32 location)
{
  v2 = *&location;
  ScanToken = type metadata accessor for PgQuery_ScanToken(0);
  v4 = *(ScanToken - 8);
  v6 = MEMORY[0x1EEE9AC00](ScanToken - 8, v5);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - v11;
  ParseResult = MEMORY[0x1EEE9AC00](v10, v13);
  v17 = &v32 - v16;
  v18 = *(v1 + 8);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = 0;
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_11;
      }

      outlined init with copy of PgQuery_ScanResult(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v8, type metadata accessor for PgQuery_ScanToken);
      if (*v8 == v2)
      {
        break;
      }

      ++v20;
      ParseResult = outlined destroy of PgQuery_ParseResult(v8, type metadata accessor for PgQuery_ScanToken);
      if (v19 == v20)
      {
        goto LABEL_6;
      }
    }

    outlined init with take of PgQuery_ParseResult(v8, v12, type metadata accessor for PgQuery_ScanToken);
    outlined init with take of PgQuery_ParseResult(v12, v17, type metadata accessor for PgQuery_ScanToken);
    type metadata accessor for SQLTokenInformation(0);
    v28 = String.index(_:offsetBy:)();
    ParseResult = String.index(_:offsetBy:)();
    if (ParseResult >> 14 >= v28 >> 14)
    {
      v29 = String.subscript.getter();
      v26 = MEMORY[0x1865F6210](v29);
      v2 = v30;

      outlined destroy of PgQuery_ParseResult(v17, type metadata accessor for PgQuery_ScanToken);
      goto LABEL_9;
    }

LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_6:
    v21 = (v1 + *(type metadata accessor for SQLTokenInformation(0) + 20));
    v23 = *v21;
    v22 = v21[1];
    v33 = 0;
    v34 = 0xE000000000000000;

    _StringGuts.grow(_:)(28);

    v33 = 0xD00000000000001ALL;
    v34 = 0x8000000184DEA4A0;
    v35 = v2;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865F6280](v24);

    v25 = v33;
    v26 = v34;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v27 = v23;
    *(v27 + 8) = v22;
    *(v27 + 16) = v25;
    *(v27 + 24) = v26;
    *(v27 + 32) = 0;
    swift_willThrow();
LABEL_9:
    ParseResult = v26;
    v15 = v2;
  }

  result._object = v15;
  result._countAndFlagsBits = ParseResult;
  return result;
}

unint64_t SQLParserError.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (v5 <= 4)
  {
    if (*(v0 + 32) > 1u)
    {
      if (v5 != 2)
      {
        if (v5 != 3)
        {
          v13 = 0;
          _StringGuts.grow(_:)(60);
          MEMORY[0x1865F6280](0xD000000000000029, 0x8000000184DEA2B0);
          MEMORY[0x1865F6280](v2, v1);
          MEMORY[0x1865F6280](0x6120687469772022, 0xEE0022203A736772);
          v11 = MEMORY[0x1865F6370](v3, MEMORY[0x1E69E6158]);
          MEMORY[0x1865F6280](v11);

LABEL_25:
          v6 = 34;
          v7 = 0xE100000000000000;
          goto LABEL_26;
        }

        v13 = 0;
        _StringGuts.grow(_:)(53);
        MEMORY[0x1865F6280](0xD000000000000032, 0x8000000184DEA2E0);
        goto LABEL_23;
      }

      _StringGuts.grow(_:)(42);

      v13 = 0x20656C626154;
      MEMORY[0x1865F6280](v2, v1);
      v6 = 0xD000000000000022;
      v7 = 0x8000000184DEA320;
LABEL_26:
      MEMORY[0x1865F6280](v6, v7);
      return v13;
    }

    if (!*(v0 + 32))
    {
      _StringGuts.grow(_:)(29);

      v13 = 0xD000000000000016;
      MEMORY[0x1865F6280](v3, v4);
      MEMORY[0x1865F6280](657954, 0xE300000000000000);
      goto LABEL_12;
    }

    _StringGuts.grow(_:)(29);

    v8 = 0xD00000000000001ALL;
LABEL_22:
    v13 = v8;
LABEL_23:
    v9 = v2;
    v10 = v1;
    goto LABEL_24;
  }

  if (*(v0 + 32) <= 6u)
  {
    _StringGuts.grow(_:)(50);

    v8 = 0xD00000000000002FLL;
    goto LABEL_22;
  }

  if (v5 == 7)
  {
    v13 = 0;
    _StringGuts.grow(_:)(109);
    MEMORY[0x1865F6280](0xD00000000000005CLL, 0x8000000184DEA1B0);
    MEMORY[0x1865F6280](v2, v1);
    MEMORY[0x1865F6280](0x6F73616552202E22, 0xEC00000022203A6ELL);
    v9 = v3;
    v10 = v4;
LABEL_24:
    MEMORY[0x1865F6280](v9, v10);
    goto LABEL_25;
  }

  if (v5 == 8)
  {
    _StringGuts.grow(_:)(33);

    v13 = 0xD00000000000001FLL;
LABEL_12:
    v6 = v2;
    v7 = v1;
    goto LABEL_26;
  }

  if (v3 | v1 | v2 | v4)
  {
    return 0xD000000000000036;
  }

  else
  {
    return 0xD000000000000026;
  }
}

BiomeSQLParser::SQLDataType_optional __swiftcall SQLDataType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SQLDataType.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t SQLDataType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x72656765746E69;
  v3 = 1684632949;
  if (v1 != 6)
  {
    v3 = 1819047278;
  }

  v4 = 1635017060;
  if (v1 != 4)
  {
    v4 = 1852797802;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x676E69727473;
  if (v1 != 2)
  {
    v5 = 1702125924;
  }

  if (*v0)
  {
    v2 = 0x656C62756F64;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

BiomeSQLParser::SQLRawDataType_optional __swiftcall SQLRawDataType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SQLRawDataType.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SQLRawDataType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SQLRawDataType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SQLRawDataType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

BiomeSQLParser::DatabaseCatalog __swiftcall DatabaseCatalog.init(schemas:)(Swift::OpaquePointer schemas)
{
  v35 = v1;
  v3 = *(schemas._rawValue + 2);
  if (!v3)
  {

    v4 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_7;
    }

LABEL_19:
    v12 = MEMORY[0x1E69E7CC8];
    goto LABEL_20;
  }

  v38 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v38;
  v5 = (schemas._rawValue + 48);
  do
  {
    v7 = *(v5 - 2);
    v6 = *(v5 - 1);
    v8 = *v5;
    v10 = *(v38 + 16);
    v9 = *(v38 + 24);
    swift_bridgeObjectRetain_n();

    if (v10 >= v9 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    }

    *(v38 + 16) = v10 + 1;
    v11 = (v38 + 40 * v10);
    v11[4] = v7;
    v11[5] = v6;
    v11[6] = v7;
    v11[7] = v6;
    v11[8] = v8;
    v5 += 3;
    --v3;
  }

  while (v3);

  if (!*(v38 + 16))
  {
    goto LABEL_19;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser6SchemaVGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser6SchemaVGMR);
  v12 = static _DictionaryStorage.allocate(capacity:)();
  v39 = v12;
  v36 = *(v4 + 16);
  if (!v36)
  {
LABEL_20:

    *v35 = v12;
    return result;
  }

  v13 = 0;
  v14 = (v4 + 64);
  while (v13 < *(v4 + 16))
  {
    v15 = *(v14 - 1);
    v16 = *v14;
    v17 = *(v14 - 3);
    v18 = *(v14 - 2);
    v19 = *(v14 - 4);

    if (!v17)
    {
      goto LABEL_20;
    }

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v17);
    v22 = v12[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_22;
    }

    v26 = v21;
    if (v12[3] < v25)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, 1);
      v12 = v39;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v17);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_26;
      }
    }

    if (v26)
    {
      goto LABEL_24;
    }

    v12[(v20 >> 6) + 8] |= 1 << v20;
    v28 = (v12[6] + 16 * v20);
    *v28 = v19;
    v28[1] = v17;
    v29 = (v12[7] + 24 * v20);
    *v29 = v18;
    v29[1] = v15;
    v29[2] = v16;
    v30 = v12[2];
    v24 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v24)
    {
      goto LABEL_23;
    }

    ++v13;
    v12[2] = v31;
    v14 += 5;
    if (v36 == v13)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  v33 = swift_allocError();
  swift_willThrow();
  v37 = v33;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  _StringGuts.grow(_:)(30);
  MEMORY[0x1865F6280](0xD00000000000001BLL, 0x8000000184DDBED0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865F6280](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_26:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_27:

  result.schemas._rawValue = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DatabaseCatalog.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73616D65686373 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DatabaseCatalog.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DatabaseCatalog.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DatabaseCatalog.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser15DatabaseCatalogV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser15DatabaseCatalogV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14BiomeSQLParser6SchemaVGMd, &_sSDySS14BiomeSQLParser6SchemaVGMR);
  lazy protocol witness table accessor for type [String : Schema] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Schema] and conformance <> [A : B], lazy protocol witness table accessor for type Schema and conformance Schema, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v7, v3);
}

uint64_t DatabaseCatalog.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14BiomeSQLParser15DatabaseCatalogV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedDecodingContainerVy14BiomeSQLParser15DatabaseCatalogV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14BiomeSQLParser6SchemaVGMd, &_sSDySS14BiomeSQLParser6SchemaVGMR);
    lazy protocol witness table accessor for type [String : Schema] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Schema] and conformance <> [A : B], lazy protocol witness table accessor for type Schema and conformance Schema, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for PgQuery_ScanToken(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t static Schema.lookup(rangeVar:catalog:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = a1[3];
  v4 = a1[2] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4)
  {
    v5 = 0x8000000184DEA760;
    v6 = 1;
    v7 = 0xD00000000000003ELL;
  }

  else
  {
    v9 = *a2;
    v7 = a1[4];
    v5 = a1[5];
    v10 = *(*a2 + 16);

    if (v10)
    {
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v5);
      if (v12)
      {
        v13 = v11;

        v14 = (*(v9 + 56) + 24 * v13);
        v15 = v14[1];
        v16 = v14[2];
        *a3 = *v14;
        a3[1] = v15;
        a3[2] = v16;
      }
    }

    v6 = 2;
  }

  lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
  swift_allocError();
  *v18 = v7;
  *(v18 + 8) = v5;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  return swift_willThrow();
}

uint64_t static Schema.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_14BiomeSQLParser11SQLDataTypeOTt1g5(v2, v3);
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_14BiomeSQLParser11SQLDataTypeOTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      for (i = (v13 - 1) & v13; ; i = (v8 - 1) & v8)
      {
        v14 = v11 | (v4 << 6);
        v15 = v3;
        v16 = (*(v3 + 48) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(v3 + 56) + v14);
        v20 = v17 == 0;

        if (!v17)
        {
          return v20;
        }

        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
        v23 = v22;

        if ((v23 & 1) == 0)
        {
          return v20;
        }

        v24 = *(*(a2 + 56) + v21);
        if (v24 > 3)
        {
          v25 = 0xE400000000000000;
          if (*(*(a2 + 56) + v21) > 5u)
          {
            if (v24 == 6)
            {
              v26 = 1684632949;
              if (v19 <= 3)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v26 = 1819047278;
              if (v19 <= 3)
              {
LABEL_43:
                if (v19 > 1)
                {
                  if (v19 == 2)
                  {
                    v27 = 0xE600000000000000;
                    v28 = 0x676E69727473;
                  }

                  else
                  {
                    v27 = 0xE400000000000000;
                    v28 = 1702125924;
                  }
                }

                else if (v19)
                {
                  v27 = 0xE600000000000000;
                  v28 = 0x656C62756F64;
                }

                else
                {
                  v27 = 0xE700000000000000;
                  v28 = 0x72656765746E69;
                }

                goto LABEL_52;
              }
            }
          }

          else if (v24 == 4)
          {
            v26 = 1635017060;
            if (v19 <= 3)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v26 = 1852797802;
            if (v19 <= 3)
            {
              goto LABEL_43;
            }
          }
        }

        else if (*(*(a2 + 56) + v21) > 1u)
        {
          if (v24 == 2)
          {
            v25 = 0xE600000000000000;
            v26 = 0x676E69727473;
            if (v19 <= 3)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v25 = 0xE400000000000000;
            v26 = 1702125924;
            if (v19 <= 3)
            {
              goto LABEL_43;
            }
          }
        }

        else if (*(*(a2 + 56) + v21))
        {
          v25 = 0xE600000000000000;
          v26 = 0x656C62756F64;
          if (v19 <= 3)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v25 = 0xE700000000000000;
          v26 = 0x72656765746E69;
          if (v19 <= 3)
          {
            goto LABEL_43;
          }
        }

        v27 = 0xE400000000000000;
        if (v19 > 5)
        {
          if (v19 == 6)
          {
            v28 = 1684632949;
          }

          else
          {
            v28 = 1819047278;
          }
        }

        else if (v19 == 4)
        {
          v28 = 1635017060;
        }

        else
        {
          v28 = 1852797802;
        }

LABEL_52:
        v3 = v15;
        if (v26 == v28 && v25 == v27)
        {

          v8 = i;
          if (!i)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v8 = i;
          if ((v10 & 1) == 0)
          {
            return v20;
          }

          if (!i)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = __clz(__rbit64(v8));
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Schema.CodingKeys()
{
  if (*v0)
  {
    return 0x736E6D756C6F63;
  }

  else
  {
    return 0x6D614E656C626174;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Schema.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Schema.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Schema.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser6SchemaV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser6SchemaV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v11 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v9 - v6;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v10;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14BiomeSQLParser11SQLDataTypeOGMd, &_sSDySS14BiomeSQLParser11SQLDataTypeOGMR);
    lazy protocol witness table accessor for type [String : SQLDataType] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : SQLDataType] and conformance <> [A : B], lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v11 + 8))(v7, v4);
}

uint64_t Schema.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14BiomeSQLParser6SchemaV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedDecodingContainerVy14BiomeSQLParser6SchemaV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14BiomeSQLParser11SQLDataTypeOGMd, &_sSDySS14BiomeSQLParser11SQLDataTypeOGMR);
  v17 = 1;
  lazy protocol witness table accessor for type [String : SQLDataType] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : SQLDataType] and conformance <> [A : B], lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v14 = v16[1];
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Schema(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_14BiomeSQLParser11SQLDataTypeOTt1g5(v2, v3);
}

uint64_t FromClause.init(fromClauseNodes:resources:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v422 = a2;
  v409 = a3;
  v4 = type metadata accessor for SQLTokenInformation(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v367 = &v346 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v373 = &v346 - v9;
  ColumnRef = type metadata accessor for PgQuery_ColumnRef(0);
  v11 = MEMORY[0x1EEE9AC00](ColumnRef, v10);
  v368 = (&v346 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v13);
  v375 = (&v346 - v14);
  String = type metadata accessor for PgQuery_String(0);
  MEMORY[0x1EEE9AC00](String, v15);
  v387 = (&v346 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v396 = type metadata accessor for PgQuery_FuncCall(0);
  v18 = MEMORY[0x1EEE9AC00](v396, v17);
  v371 = &v346 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v378 = &v346 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v383 = &v346 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v385 = &v346 - v28;
  MEMORY[0x1EEE9AC00](v27, v29);
  v392 = &v346 - v30;
  List = type metadata accessor for PgQuery_List(0);
  v32 = MEMORY[0x1EEE9AC00](List, v31);
  v34 = (&v346 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v379 = (&v346 - v37);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v384 = (&v346 - v40);
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v391 = (&v346 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v394 = (&v346 - v46);
  MEMORY[0x1EEE9AC00](v45, v47);
  v399 = (&v346 - v48);
  RangeFunction = type metadata accessor for PgQuery_RangeFunction(0);
  v403 = *(RangeFunction - 8);
  v404 = RangeFunction;
  MEMORY[0x1EEE9AC00](RangeFunction, v50);
  v401 = &v346 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8, v53);
  v402 = &v346 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v56);
  v405 = &v346 - v57;
  v419 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v421 = *(v419 - 8);
  v59 = MEMORY[0x1EEE9AC00](v419, v58);
  v408 = (&v346 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v59, v61);
  v406 = &v346 - v62;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v63 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v64);
  v66 = &v346 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v68 = MEMORY[0x1EEE9AC00](v418, v67);
  v369 = &v346 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1EEE9AC00](v68, v70);
  v370 = &v346 - v72;
  v74 = MEMORY[0x1EEE9AC00](v71, v73);
  v374 = &v346 - v75;
  v77 = MEMORY[0x1EEE9AC00](v74, v76);
  v376 = &v346 - v78;
  v80 = MEMORY[0x1EEE9AC00](v77, v79);
  v377 = &v346 - v81;
  v83 = MEMORY[0x1EEE9AC00](v80, v82);
  v380 = &v346 - v84;
  v86 = MEMORY[0x1EEE9AC00](v83, v85);
  v382 = &v346 - v87;
  v89 = MEMORY[0x1EEE9AC00](v86, v88);
  v386 = &v346 - v90;
  v92 = MEMORY[0x1EEE9AC00](v89, v91);
  v389 = &v346 - v93;
  v95 = MEMORY[0x1EEE9AC00](v92, v94);
  v388 = &v346 - v96;
  v98 = MEMORY[0x1EEE9AC00](v95, v97);
  v390 = &v346 - v99;
  v101 = MEMORY[0x1EEE9AC00](v98, v100);
  v393 = &v346 - v102;
  v104 = MEMORY[0x1EEE9AC00](v101, v103);
  v398 = &v346 - v105;
  v107 = MEMORY[0x1EEE9AC00](v104, v106);
  v397 = &v346 - v108;
  v110 = MEMORY[0x1EEE9AC00](v107, v109);
  v410 = &v346 - v111;
  v113 = MEMORY[0x1EEE9AC00](v110, v112);
  v417 = &v346 - v114;
  v116 = MEMORY[0x1EEE9AC00](v113, v115);
  v415 = &v346 - v117;
  v119 = MEMORY[0x1EEE9AC00](v116, v118);
  v121 = &v346 - v120;
  MEMORY[0x1EEE9AC00](v119, v122);
  v124 = &v346 - v123;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v127 = MEMORY[0x1EEE9AC00](v125 - 8, v126);
  *&v412 = &v346 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v127, v129);
  v131 = &v346 - v130;
  Node = type metadata accessor for PgQuery_Node(0);
  v133 = *(Node - 8);
  v135 = MEMORY[0x1EEE9AC00](Node, v134);
  v137 = MEMORY[0x1EEE9AC00](v135, v136);
  v139 = MEMORY[0x1EEE9AC00](v137, v138);
  v141 = MEMORY[0x1EEE9AC00](v139, &v346 - v140);
  v143 = MEMORY[0x1EEE9AC00](v141, v142);
  v145 = MEMORY[0x1EEE9AC00](v143, v144);
  v147 = MEMORY[0x1EEE9AC00](v145, v146);
  v149 = MEMORY[0x1EEE9AC00](v147, v148);
  v151 = MEMORY[0x1EEE9AC00](v149, v150);
  v153 = MEMORY[0x1EEE9AC00](v151, v152);
  v395 = &v346 - v154;
  v156 = MEMORY[0x1EEE9AC00](v153, v155);
  v158 = MEMORY[0x1EEE9AC00](v156, v157);
  v407 = &v346 - v159;
  v161 = MEMORY[0x1EEE9AC00](v158, v160);
  v173 = (&v346 - v169);
  if (!*(a1 + 16))
  {

    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v181 = 0xD00000000000002FLL;
    *(v181 + 8) = 0x8000000184DEA730;
    *(v181 + 16) = 0;
    *(v181 + 24) = 0;
    *(v181 + 32) = 1;
    swift_willThrow();
    v182 = type metadata accessor for PlanResources;
    v183 = v422;
    return outlined destroy of PgQuery_ParseResult(v183, v182);
  }

  v364 = *(a1 + 16);
  v365 = v66;
  v356 = v167;
  v357 = v168;
  v354 = v165;
  v355 = v166;
  v352 = v34;
  v353 = v164;
  v350 = v162;
  v351 = v163;
  v348 = v171;
  v349 = v172;
  v363 = v133;
  v358 = (*(v133 + 80) + 32) & ~*(v133 + 80);
  v359 = v170;
  v174 = v161;
  v360 = a1 + v358;
  outlined init with copy of PgQuery_ScanResult(a1 + v358, &v346 - v169, type metadata accessor for PgQuery_Node);
  v175 = a1;
  v366 = v63;
  v176 = *(v63 + 56);
  v416 = v131;
  v176(v131, 1, 1, RangeVar);
  v361 = v174;
  v177 = *(v174 + 20);
  v413 = v173;
  outlined init with copy of PgQuery_Alias?(*(v173 + v177) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v124, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v414 = v124;
  outlined init with copy of PgQuery_Alias?(v124, v121, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v179 = v421 + 48;
  v178 = *(v421 + 48);
  v180 = v121;
  if (v178(v121, 1, v419) == 1)
  {

LABEL_9:
    v191 = v422;
    *&v437 = 0;
    *(&v437 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    *&v437 = 0xD00000000000002FLL;
    *(&v437 + 1) = 0x8000000184DEA6A0;
    v192 = v414;
    outlined init with copy of PgQuery_Alias?(v414, v417, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v193 = String.init<A>(describing:)();
    MEMORY[0x1865F6280](v193);

    v194 = v437;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v195 = v194;
    *(v195 + 16) = 0;
    *(v195 + 24) = 0;
    *(v195 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v191, type metadata accessor for PlanResources);
    _s10Foundation4UUIDVSgWOhTm_0(v192, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    _s10Foundation4UUIDVSgWOhTm_0(v416, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    outlined destroy of PgQuery_ParseResult(v413, type metadata accessor for PgQuery_Node);
    return _s10Foundation4UUIDVSgWOhTm_0(v180, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  v362 = v175;
  v184 = v121;
  v185 = v415;
  outlined init with copy of PgQuery_Alias?(v184, v415, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    outlined destroy of PgQuery_ParseResult(v185, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_9;
  }

  v421 = v179;
  v186 = v416;
  _s10Foundation4UUIDVSgWOhTm_0(v416, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with take of PgQuery_ParseResult(v185, v186, type metadata accessor for PgQuery_RangeVar);
  v187 = RangeVar;
  v176(v186, 0, 1, RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v180, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v188 = v412;
  outlined init with copy of PgQuery_Alias?(v186, v412, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v366 + 48))(v188, 1, v187) == 1)
  {

    _s10Foundation4UUIDVSgWOhTm_0(v188, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v189 = 0xD00000000000001CLL;
    *(v189 + 8) = 0x8000000184DEA6D0;
    *(v189 + 16) = 0;
    *(v189 + 24) = 0;
    *(v189 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v422, type metadata accessor for PlanResources);
    _s10Foundation4UUIDVSgWOhTm_0(v414, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v190 = v186;
LABEL_12:
    _s10Foundation4UUIDVSgWOhTm_0(v190, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v182 = type metadata accessor for PgQuery_Node;
    v183 = v413;
    return outlined destroy of PgQuery_ParseResult(v183, v182);
  }

  v197 = v365;
  outlined init with take of PgQuery_ParseResult(v188, v365, type metadata accessor for PgQuery_RangeVar);
  v198 = v422;
  v427[0] = *v422;

  v199 = v411;
  static Schema.lookup(rangeVar:catalog:)(v197, v427, &v437);
  v200 = v199;
  v201 = v362;
  if (v199)
  {

    outlined destroy of PgQuery_ParseResult(v198, type metadata accessor for PlanResources);

    outlined destroy of PgQuery_ParseResult(v197, type metadata accessor for PgQuery_RangeVar);
    _s10Foundation4UUIDVSgWOhTm_0(v414, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v190 = v416;
    goto LABEL_12;
  }

  v347 = v178;

  v202 = v437;
  v203 = v438;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMR);
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_184D29AA0;
  RangeVar = v202;
  *(v204 + 32) = v202;
  *(v204 + 48) = v203;
  v441 = 0u;
  v442 = 0u;
  v439 = 0u;
  v440 = 0u;
  v437 = 0u;
  v438 = 0u;
  v205 = *(v201 + 16);
  v206 = v414;
  if (v205 < v364)
  {
    __break(1u);
    goto LABEL_78;
  }

  v207 = v204;
  v208 = v347;
  if (v364 != 2)
  {

    outlined destroy of PgQuery_ParseResult(v198, type metadata accessor for PlanResources);
    outlined destroy of PgQuery_ParseResult(v197, type metadata accessor for PgQuery_RangeVar);
    _s10Foundation4UUIDVSgWOhTm_0(v206, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    _s10Foundation4UUIDVSgWOhTm_0(v416, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    result = outlined destroy of PgQuery_ParseResult(v413, type metadata accessor for PgQuery_Node);
    goto LABEL_19;
  }

  v412 = xmmword_184D29AA0;
  v209 = v407;
  outlined init with copy of PgQuery_ScanResult(v360 + *(v363 + 72), v407, type metadata accessor for PgQuery_Node);
  v210 = v410;
  outlined init with copy of PgQuery_Alias?(*(v209 + *(v361 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v410, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);

  outlined destroy of PgQuery_ParseResult(v209, type metadata accessor for PgQuery_Node);
  if (v208(v210, 1, v419) == 1)
  {

    outlined destroy of PgQuery_ParseResult(v422, type metadata accessor for PlanResources);
    outlined destroy of PgQuery_ParseResult(v197, type metadata accessor for PgQuery_RangeVar);
    _s10Foundation4UUIDVSgWOhTm_0(v414, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    _s10Foundation4UUIDVSgWOhTm_0(v416, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    outlined destroy of PgQuery_ParseResult(v413, type metadata accessor for PgQuery_Node);
    result = _s10Foundation4UUIDVSgWOhTm_0(v410, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_19:
    v211 = v409;
    *v409 = v207;
    v212 = v440;
    *(v211 + 5) = v439;
    *(v211 + 7) = v212;
    v213 = v442;
    *(v211 + 9) = v441;
    *(v211 + 11) = v213;
    v214 = v438;
    *(v211 + 1) = v437;
    *(v211 + 3) = v214;
    return result;
  }

  v417 = v203;
  v415 = *(&v202 + 1);
  v411 = v207;
  v407 = 0;
  v215 = v406;
  outlined init with take of PgQuery_ParseResult(v410, v406, type metadata accessor for PgQuery_Node.OneOf_Node);
  v216 = v403;
  v217 = v404;
  v218 = *(v403 + 56);
  v219 = v405;
  v218(v405, 1, 1, v404);
  outlined init with copy of PgQuery_ScanResult(v215, v408, type metadata accessor for PgQuery_Node.OneOf_Node);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v221 = v422;
  if (EnumCaseMultiPayload != 182)
  {

    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v224 = 0xD000000000000030;
    *(v224 + 8) = 0x8000000184DEA6F0;
    *(v224 + 16) = 0;
    *(v224 + 24) = 0;
    *(v224 + 32) = 1;
    swift_willThrow();

    outlined destroy of PgQuery_ParseResult(v221, type metadata accessor for PlanResources);
    _s10Foundation4UUIDVSgWOhTm_0(v219, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
    outlined destroy of PgQuery_ParseResult(v215, type metadata accessor for PgQuery_Node.OneOf_Node);
    _s10Foundation4UUIDVSgWOhTm_0(&v437, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined destroy of PgQuery_ParseResult(v365, type metadata accessor for PgQuery_RangeVar);
    _s10Foundation4UUIDVSgWOhTm_0(v414, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    _s10Foundation4UUIDVSgWOhTm_0(v416, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    outlined destroy of PgQuery_ParseResult(v413, type metadata accessor for PgQuery_Node);
    v183 = v408;
    v182 = type metadata accessor for PgQuery_Node.OneOf_Node;
    return outlined destroy of PgQuery_ParseResult(v183, v182);
  }

  _s10Foundation4UUIDVSgWOhTm_0(v219, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  outlined init with take of PgQuery_ParseResult(v408, v219, type metadata accessor for PgQuery_RangeFunction);
  v218(v219, 0, 1, v217);
  v222 = v402;
  outlined init with copy of PgQuery_Alias?(v219, v402, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  v223 = v219;
  if ((*(v216 + 48))(v222, 1, v217) == 1)
  {

    _s10Foundation4UUIDVSgWOhTm_0(v222, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
LABEL_28:
    v233 = v413;
    v234 = v416;
    v235 = v406;
LABEL_57:
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v253 = 0xD000000000000030;
    *(v253 + 8) = 0x8000000184DEA6F0;
    *(v253 + 16) = 0;
    *(v253 + 24) = 0;
    *(v253 + 32) = 1;
    swift_willThrow();

    outlined destroy of PgQuery_ParseResult(v221, type metadata accessor for PlanResources);
    _s10Foundation4UUIDVSgWOhTm_0(v223, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
    outlined destroy of PgQuery_ParseResult(v235, type metadata accessor for PgQuery_Node.OneOf_Node);
    _s10Foundation4UUIDVSgWOhTm_0(&v437, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined destroy of PgQuery_ParseResult(v365, type metadata accessor for PgQuery_RangeVar);
    _s10Foundation4UUIDVSgWOhTm_0(v414, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    _s10Foundation4UUIDVSgWOhTm_0(v234, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v182 = type metadata accessor for PgQuery_Node;
    v183 = v233;
    return outlined destroy of PgQuery_ParseResult(v183, v182);
  }

  v225 = v222;
  v226 = v401;
  outlined init with take of PgQuery_ParseResult(v225, v401, type metadata accessor for PgQuery_RangeFunction);
  v227 = *(v226 + 8);
  if (*(v227 + 16) != 1)
  {

    outlined destroy of PgQuery_ParseResult(v226, type metadata accessor for PgQuery_RangeFunction);
    goto LABEL_28;
  }

  v228 = v359;
  outlined init with copy of PgQuery_ScanResult(v227 + v358, v359, type metadata accessor for PgQuery_Node);
  v198 = *(v228 + *(v361 + 20));
  v200 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  v229 = v397;
  outlined init with copy of PgQuery_Alias?(v198 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v397, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v230 = v347(v229, 1, v419);
  v188 = MEMORY[0x1E69E7CC0];
  if (v230 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v229, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v232 = v398;
    v231 = v399;
  }

  else
  {
    v236 = swift_getEnumCaseMultiPayload() == 225;
    v237 = v229;
    v232 = v398;
    v231 = v399;
    if (v236)
    {
      outlined init with take of PgQuery_ParseResult(v237, v399, type metadata accessor for PgQuery_List);
      goto LABEL_33;
    }

    outlined destroy of PgQuery_ParseResult(v237, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  *v231 = v188;
  UnknownStorage.init()();
LABEL_33:
  v238 = *v231;

  outlined destroy of PgQuery_ParseResult(v231, type metadata accessor for PgQuery_List);
  v239 = *(v238 + 16);

  if (v239 != 2)
  {
    goto LABEL_54;
  }

  outlined init with copy of PgQuery_Alias?(v198 + v200, v232, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v347(v232, 1, v419) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v232, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      v240 = v394;
      outlined init with take of PgQuery_ParseResult(v232, v394, type metadata accessor for PgQuery_List);
      goto LABEL_41;
    }

    outlined destroy of PgQuery_ParseResult(v232, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v240 = v394;
  *v394 = v188;
  UnknownStorage.init()();
LABEL_41:
  v241 = v240;
  v242 = *v240;

  outlined destroy of PgQuery_ParseResult(v241, type metadata accessor for PgQuery_List);
  if (!*(v242 + 16))
  {

LABEL_54:

    outlined destroy of PgQuery_ParseResult(v359, type metadata accessor for PgQuery_Node);

    v252 = v226;
LABEL_55:
    outlined destroy of PgQuery_ParseResult(v252, type metadata accessor for PgQuery_RangeFunction);
LABEL_56:
    v221 = v422;
    v233 = v413;
    v234 = v416;
    v223 = v405;
    v235 = v406;
    goto LABEL_57;
  }

  v243 = v395;
  outlined init with copy of PgQuery_ScanResult(v242 + v358, v395, type metadata accessor for PgQuery_Node);

  v244 = *(v243 + *(v361 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  v245 = v393;
  outlined init with copy of PgQuery_Alias?(v244, v393, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v347(v245, 1, v419) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v245, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v246 = v392;
  }

  else
  {
    v236 = swift_getEnumCaseMultiPayload() == 170;
    v247 = v245;
    v246 = v392;
    if (v236)
    {
      outlined init with take of PgQuery_ParseResult(v247, v392, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_51;
    }

    outlined destroy of PgQuery_ParseResult(v247, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v248 = *(v396 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v246 + v248) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_51:
  outlined destroy of PgQuery_ParseResult(v395, type metadata accessor for PgQuery_Node);
  v249 = *(*(v246 + *(v396 + 20)) + 16);

  outlined destroy of PgQuery_ParseResult(v246, type metadata accessor for PgQuery_FuncCall);
  v250 = *(v249 + 16);

  if (v250 != 1)
  {
    goto LABEL_54;
  }

  v251 = v390;
  outlined init with copy of PgQuery_Alias?(v198 + v200, v390, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v347(v251, 1, v419) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v251, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      v254 = v391;
      outlined init with take of PgQuery_ParseResult(v251, v391, type metadata accessor for PgQuery_List);
      goto LABEL_62;
    }

    outlined destroy of PgQuery_ParseResult(v251, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v254 = v391;
  *v391 = v188;
  UnknownStorage.init()();
LABEL_62:
  v255 = *v254;

  outlined destroy of PgQuery_ParseResult(v254, type metadata accessor for PgQuery_List);
  if (!*(v255 + 16))
  {
LABEL_74:

LABEL_120:

    outlined destroy of PgQuery_ParseResult(v359, type metadata accessor for PgQuery_Node);

    v252 = v401;
    goto LABEL_55;
  }

  v256 = v357;
  outlined init with copy of PgQuery_ScanResult(v255 + v358, v357, type metadata accessor for PgQuery_Node);

  v257 = v388;
  outlined init with copy of PgQuery_Alias?(*(v256 + *(v361 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v388, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v347(v257, 1, v419) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v257, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      v258 = v385;
      outlined init with take of PgQuery_ParseResult(v388, v385, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_71;
    }

    outlined destroy of PgQuery_ParseResult(v388, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v258 = v385;
  UnknownStorage.init()();
  v259 = *(v396 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v258 + v259) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_71:
  outlined destroy of PgQuery_ParseResult(v357, type metadata accessor for PgQuery_Node);
  v260 = *(*(v258 + *(v396 + 20)) + 16);

  outlined destroy of PgQuery_ParseResult(v258, type metadata accessor for PgQuery_FuncCall);
  if (!*(v260 + 16))
  {
    goto LABEL_74;
  }

  v261 = v356;
  outlined init with copy of PgQuery_ScanResult(v260 + v358, v356, type metadata accessor for PgQuery_Node);

  v262 = v389;
  outlined init with copy of PgQuery_Alias?(*(v261 + *(v361 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v389, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v347(v262, 1, v419) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v389, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_79:
    v263 = v387;
    *v387 = 0;
    v263[1] = 0xE000000000000000;
    UnknownStorage.init()();
    goto LABEL_80;
  }

  if (swift_getEnumCaseMultiPayload() != 222)
  {
LABEL_78:
    outlined destroy of PgQuery_ParseResult(v389, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_79;
  }

  outlined init with take of PgQuery_ParseResult(v389, v387, type metadata accessor for PgQuery_String);
LABEL_80:
  outlined destroy of PgQuery_ParseResult(v356, type metadata accessor for PgQuery_Node);
  v264 = v387;
  v266 = *v387;
  v265 = v387[1];

  outlined destroy of PgQuery_ParseResult(v264, type metadata accessor for PgQuery_String);
  if (v266 == 0x6361655F6E6F736ALL && v265 == 0xE900000000000068)
  {
  }

  else
  {
    v267 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v267 & 1) == 0)
    {
LABEL_119:

      goto LABEL_120;
    }
  }

  v268 = v386;
  outlined init with copy of PgQuery_Alias?(v198 + v200, v386, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v347(v268, 1, v419) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v386, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      outlined init with take of PgQuery_ParseResult(v386, v384, type metadata accessor for PgQuery_List);
      goto LABEL_90;
    }

    outlined destroy of PgQuery_ParseResult(v386, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  *v384 = v188;
  UnknownStorage.init()();
LABEL_90:
  v269 = v384;
  v270 = *v384;

  outlined destroy of PgQuery_ParseResult(v269, type metadata accessor for PgQuery_List);
  if (!*(v270 + 16))
  {
LABEL_118:

    goto LABEL_119;
  }

  v271 = v355;
  outlined init with copy of PgQuery_ScanResult(v270 + v358, v355, type metadata accessor for PgQuery_Node);

  v272 = v382;
  outlined init with copy of PgQuery_Alias?(*(v271 + *(v361 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v382, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v347(v272, 1, v419) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v382, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      outlined init with take of PgQuery_ParseResult(v382, v383, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_99;
    }

    outlined destroy of PgQuery_ParseResult(v382, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v273 = *(v396 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v383 + v273) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_99:
  outlined destroy of PgQuery_ParseResult(v355, type metadata accessor for PgQuery_Node);
  v274 = v383;
  v275 = *(*(v383 + *(v396 + 20)) + 24);

  outlined destroy of PgQuery_ParseResult(v274, type metadata accessor for PgQuery_FuncCall);
  v276 = *(v275 + 16);

  if (v276 != 1)
  {
    goto LABEL_119;
  }

  v277 = v380;
  outlined init with copy of PgQuery_Alias?(v198 + v200, v380, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v347(v277, 1, v419) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v380, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      outlined init with take of PgQuery_ParseResult(v380, v379, type metadata accessor for PgQuery_List);
      goto LABEL_106;
    }

    outlined destroy of PgQuery_ParseResult(v380, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  *v379 = v188;
  UnknownStorage.init()();
LABEL_106:
  v278 = v379;
  v279 = *v379;

  outlined destroy of PgQuery_ParseResult(v278, type metadata accessor for PgQuery_List);
  if (!*(v279 + 16))
  {
    goto LABEL_118;
  }

  v280 = v354;
  outlined init with copy of PgQuery_ScanResult(v279 + v358, v354, type metadata accessor for PgQuery_Node);

  v281 = v377;
  outlined init with copy of PgQuery_Alias?(*(v280 + *(v361 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v377, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v347(v281, 1, v419) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v377, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      outlined init with take of PgQuery_ParseResult(v377, v378, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_115;
    }

    outlined destroy of PgQuery_ParseResult(v377, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v282 = *(v396 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v378 + v282) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_115:
  outlined destroy of PgQuery_ParseResult(v354, type metadata accessor for PgQuery_Node);
  v283 = v378;
  v284 = *(*(v378 + *(v396 + 20)) + 24);

  outlined destroy of PgQuery_ParseResult(v283, type metadata accessor for PgQuery_FuncCall);
  if (!*(v284 + 16))
  {
    goto LABEL_118;
  }

  v285 = v353;
  outlined init with copy of PgQuery_ScanResult(v284 + v358, v353, type metadata accessor for PgQuery_Node);

  v286 = v376;
  outlined init with copy of PgQuery_Alias?(*(v285 + *(v361 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v376, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v347(v286, 1, v419) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v376, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 167)
    {
      outlined init with take of PgQuery_ParseResult(v376, v375, type metadata accessor for PgQuery_ColumnRef);
      goto LABEL_125;
    }

    outlined destroy of PgQuery_ParseResult(v376, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v287 = v375;
  *v375 = v188;
  *(v287 + 2) = 0;
  UnknownStorage.init()();
LABEL_125:
  outlined destroy of PgQuery_ParseResult(v353, type metadata accessor for PgQuery_Node);
  v288 = v375;
  v289 = *v375;

  outlined destroy of PgQuery_ParseResult(v288, type metadata accessor for PgQuery_ColumnRef);
  v290 = *(v289 + 16);

  if (v290 != 1)
  {
    goto LABEL_119;
  }

  v291 = v374;
  outlined init with copy of PgQuery_Alias?(v198 + v200, v374, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v347(v291, 1, v419) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v374, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      outlined init with take of PgQuery_ParseResult(v374, v352, type metadata accessor for PgQuery_List);
      goto LABEL_132;
    }

    outlined destroy of PgQuery_ParseResult(v374, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  *v352 = v188;
  UnknownStorage.init()();
LABEL_132:
  v292 = v352;
  v293 = *v352;

  outlined destroy of PgQuery_ParseResult(v292, type metadata accessor for PgQuery_List);
  if (!*(v293 + 16))
  {
LABEL_144:

    (*(v363 + 56))(v373, 1, 1, v361);
LABEL_154:
    outlined destroy of PgQuery_ParseResult(v359, type metadata accessor for PgQuery_Node);

    outlined destroy of PgQuery_ParseResult(v401, type metadata accessor for PgQuery_RangeFunction);
    _s10Foundation4UUIDVSgWOhTm_0(v373, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    goto LABEL_56;
  }

  v294 = v351;
  outlined init with copy of PgQuery_ScanResult(v293 + v358, v351, type metadata accessor for PgQuery_Node);

  v295 = v370;
  outlined init with copy of PgQuery_Alias?(*(v294 + *(v361 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v370, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v347(v295, 1, v419) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v370, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      outlined init with take of PgQuery_ParseResult(v370, v371, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_141;
    }

    outlined destroy of PgQuery_ParseResult(v370, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v296 = *(v396 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v371 + v296) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_141:
  outlined destroy of PgQuery_ParseResult(v351, type metadata accessor for PgQuery_Node);
  v297 = v371;
  v298 = *(*(v371 + *(v396 + 20)) + 24);

  outlined destroy of PgQuery_ParseResult(v297, type metadata accessor for PgQuery_FuncCall);
  if (!*(v298 + 16))
  {
    goto LABEL_144;
  }

  v299 = v350;
  outlined init with copy of PgQuery_ScanResult(v298 + v358, v350, type metadata accessor for PgQuery_Node);

  v300 = v369;
  outlined init with copy of PgQuery_Alias?(*(v299 + *(v361 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v369, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v347(v300, 1, v419) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v369, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 167)
    {
      outlined init with take of PgQuery_ParseResult(v369, v368, type metadata accessor for PgQuery_ColumnRef);
      goto LABEL_149;
    }

    outlined destroy of PgQuery_ParseResult(v369, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v301 = v368;
  *v368 = v188;
  *(v301 + 2) = 0;
  UnknownStorage.init()();
LABEL_149:
  outlined destroy of PgQuery_ParseResult(v350, type metadata accessor for PgQuery_Node);
  v302 = v368;
  v303 = *v368;

  outlined destroy of PgQuery_ParseResult(v302, type metadata accessor for PgQuery_ColumnRef);
  if (*(v303 + 16))
  {
    outlined init with copy of PgQuery_ScanResult(v303 + v358, v373, type metadata accessor for PgQuery_Node);
    v304 = 0;
  }

  else
  {
    v304 = 1;
  }

  v305 = v363;
  v306 = v373;
  v307 = v304;
  v308 = v361;
  (*(v363 + 56))(v373, v307, 1, v361);
  if ((*(v305 + 48))(v306, 1, v308) == 1)
  {

    goto LABEL_154;
  }

  v309 = v348;
  outlined init with take of PgQuery_ParseResult(v373, v348, type metadata accessor for PgQuery_Node);
  outlined init with copy of PgQuery_ScanResult(v309, v349, type metadata accessor for PgQuery_Node);
  v310 = swift_allocObject();
  *(v310 + 16) = v412;
  v311 = v415;
  *(v310 + 32) = RangeVar;
  *(v310 + 40) = v311;
  *(v310 + 48) = v417;
  v312 = type metadata accessor for PlanResources(0);
  outlined init with copy of PgQuery_ScanResult(v422 + *(v312 + 20), v367, type metadata accessor for SQLTokenInformation);

  v314 = v407;
  v315 = specialized ColumnResolver.init(schemas:)(v313);
  if (!v314)
  {
    v317 = v315;
    v318 = v316;

    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v349, v310, v317, v318, v367, v426);
    v319 = 0x65756C6176;

    outlined init with copy of Aggregation(v426, v425);
    outlined init with copy of Aggregation(v425, v427);
    v320 = v428;
    v321 = v429;
    __swift_project_boxed_opaque_existential_1(v427, v428);
    v430 = (*(v321 + 8))(v320, v321);
    v431 = v322;
    v323 = v428;
    v324 = v429;
    __swift_project_boxed_opaque_existential_1(v427, v428);
    (*(v324 + 16))(&v443, v323, v324);
    v432 = v443;
    v325 = v428;
    v326 = v429;
    __swift_project_boxed_opaque_existential_1(v427, v428);
    v433 = (*(v326 + 24))(v325, v326);
    v327 = v428;
    v328 = v429;
    __swift_project_boxed_opaque_existential_1(v427, v428);
    v434 = (*(v328 + 32))(v327, v328);
    v329 = v428;
    v330 = v429;
    __swift_project_boxed_opaque_existential_1(v427, v428);
    v331 = (*(v330 + 40))(v329, v330);
    v333 = v332;
    __swift_destroy_boxed_opaque_existential_1Tm(v425);
    __swift_destroy_boxed_opaque_existential_1Tm(v426);
    outlined destroy of PgQuery_ParseResult(v367, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_ParseResult(v349, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(&v437, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    v435 = v331;
    v436 = v333;
    outlined init with copy of SQLExpression(v427, &v437);
    v334 = v432;
    v423[0] = 0x65756C6176;
    v423[1] = 0xE500000000000000;
    v424 = v432;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
    v335 = static _DictionaryStorage.allocate(capacity:)();

    _s10Foundation4UUIDVSgWOhTm_0(v423, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
    v336 = specialized __RawDictionaryStorage.find<A>(_:)(0x65756C6176, 0xE500000000000000);
    v338 = v337;

    if (v338)
    {
      __break(1u);
    }

    else
    {
      v335[(v336 >> 6) + 8] |= 1 << v336;
      v339 = (v335[6] + 16 * v336);
      *v339 = 0x65756C6176;
      v339[1] = 0xE500000000000000;
      *(v335[7] + v336) = v334;
      v340 = v335[2];
      v341 = __OFADD__(v340, 1);
      v342 = v340 + 1;
      if (!v341)
      {
        v335[2] = v342;
        v338 = *(v411 + 16);
        v319 = v338 + 1;
        if (v338 < *(v411 + 24) >> 1)
        {
LABEL_160:

          outlined destroy of PgQuery_ParseResult(v422, type metadata accessor for PlanResources);
          outlined destroy of PgQuery_ParseResult(v348, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v405, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
          outlined destroy of PgQuery_ParseResult(v406, type metadata accessor for PgQuery_Node.OneOf_Node);
          outlined destroy of PgQuery_ParseResult(v365, type metadata accessor for PgQuery_RangeVar);
          _s10Foundation4UUIDVSgWOhTm_0(v414, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
          _s10Foundation4UUIDVSgWOhTm_0(v416, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
          outlined destroy of SQLExpression(v427);
          v343 = v411;
          *(v411 + 16) = v319;
          v344 = (v343 + 24 * v338);
          v207 = v343;
          v344[4] = 0x6361655F6E6F736ALL;
          v344[5] = 0xE900000000000068;
          v344[6] = v335;
          outlined destroy of PgQuery_ParseResult(v359, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_ParseResult(v413, type metadata accessor for PgQuery_Node);
          result = outlined destroy of PgQuery_ParseResult(v401, type metadata accessor for PgQuery_RangeFunction);
          goto LABEL_19;
        }

LABEL_163:
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v411 = v345;
        goto LABEL_160;
      }
    }

    __break(1u);
    goto LABEL_163;
  }

  swift_bridgeObjectRelease_n();
  outlined destroy of PgQuery_ParseResult(v422, type metadata accessor for PlanResources);
  outlined destroy of PgQuery_ParseResult(v367, type metadata accessor for SQLTokenInformation);
  outlined destroy of PgQuery_ParseResult(v349, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_ParseResult(v348, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v405, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  outlined destroy of PgQuery_ParseResult(v406, type metadata accessor for PgQuery_Node.OneOf_Node);
  _s10Foundation4UUIDVSgWOhTm_0(&v437, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  outlined destroy of PgQuery_ParseResult(v365, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v414, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v416, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined destroy of PgQuery_ParseResult(v359, type metadata accessor for PgQuery_Node);

  outlined destroy of PgQuery_ParseResult(v413, type metadata accessor for PgQuery_Node);
  return outlined destroy of PgQuery_ParseResult(v401, type metadata accessor for PgQuery_RangeFunction);
}

uint64_t specialized Collection.dropFirst(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for PgQuery_ScanToken(0);
    return a2;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance FromClause.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x73616D65686373;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FromClause.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73616D65686373 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000184DEA3E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromClause.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FromClause.CodingKeys and conformance FromClause.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromClause.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FromClause.CodingKeys and conformance FromClause.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FromClause.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser10FromClauseV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser10FromClauseV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FromClause.CodingKeys and conformance FromClause.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v11[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser6SchemaVGMd, &_sSay14BiomeSQLParser6SchemaVGMR);
  lazy protocol witness table accessor for type [Schema] and conformance <A> [A](&lazy protocol witness table cache variable for type [Schema] and conformance <A> [A], &_sSay14BiomeSQLParser6SchemaVGMd, &_sSay14BiomeSQLParser6SchemaVGMR, lazy protocol witness table accessor for type Schema and conformance Schema);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11[6] = 1;
    lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ResultColumn.documentation.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

__n128 ResultColumn.init(expression:alias:documentation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v6;
  v7 = *(a1 + 80);
  *(a6 + 64) = *(a1 + 64);
  *(a6 + 80) = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v9;
  *(a6 + 96) = a2;
  *(a6 + 104) = a3;
  *(a6 + 112) = a4;
  *(a6 + 120) = a5;
  return result;
}

unint64_t ResultColumn.init(node:schemas:tokenInformation:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v199 = a3;
  v198 = a2;
  v190 = a4;
  v192 = type metadata accessor for CharacterSet();
  v181 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192, v5);
  v191 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScanToken = type metadata accessor for PgQuery_ScanToken(0);
  v186 = *(ScanToken - 8);
  v9 = MEMORY[0x1EEE9AC00](ScanToken - 8, v8);
  v185 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v184 = &v179 - v12;
  v182 = type metadata accessor for SQLTokenInformation(0);
  MEMORY[0x1EEE9AC00](v182, v13);
  v187 = &v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v189 = &v179 - v17;
  Node = type metadata accessor for PgQuery_Node(0);
  v188 = *(Node - 8);
  v20 = MEMORY[0x1EEE9AC00](Node, v19);
  v22 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v193 = &v179 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v183 = &v179 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMR);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v32 = (&v179 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v179 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v179 - v38;
  ResTarget = type metadata accessor for PgQuery_ResTarget(0);
  MEMORY[0x1EEE9AC00](ResTarget, v41);
  v195 = &v179 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = Node;
  v43 = *(Node + 20);
  v197 = a1;
  outlined init with copy of PgQuery_Alias?(*(a1 + v43) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v44 - 8) + 48))(v39, 1, v44) == 1)
  {

    _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_18:
    v202._countAndFlagsBits = 0;
    v202._object = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v202._countAndFlagsBits = 0xD000000000000022;
    v202._object = 0x8000000184DEA670;
    v70 = v197;
    outlined init with copy of PgQuery_ScanResult(v197, v22, type metadata accessor for PgQuery_Node);
    v71 = String.init<A>(describing:)();
    MEMORY[0x1865F6280](v71);

    countAndFlagsBits = v202._countAndFlagsBits;
    object = v202._object;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v74 = countAndFlagsBits;
    *(v74 + 8) = object;
    *(v74 + 16) = 0;
    *(v74 + 24) = 0;
    *(v74 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v70, type metadata accessor for PgQuery_Node);
    v75 = type metadata accessor for SQLTokenInformation;
    v76 = &v216;
    return outlined destroy of PgQuery_ParseResult(*(v76 - 32), v75);
  }

  if (swift_getEnumCaseMultiPayload() != 175)
  {

    outlined destroy of PgQuery_ParseResult(v39, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_18;
  }

  v45 = v39;
  v46 = v195;
  ParseResult = outlined init with take of PgQuery_ParseResult(v45, v195, type metadata accessor for PgQuery_ResTarget);
  v49 = *(v46 + *(ResTarget + 20));
  v50 = *(v49 + 24);
  v51 = *(v49 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v50 & 0x2000000000000000) != 0)
  {
    v51 = HIBYTE(v50) & 0xF;
  }

  v180 = *(v46 + *(ResTarget + 20));
  if (!v51)
  {
    v183 = 0;
    v77 = v190;
    *(v190 + 96) = 0;
    *(v77 + 104) = 0;
    v32 = v194;
    v60 = v199;
    goto LABEL_21;
  }

  v52 = *(v199 + 1);
  MEMORY[0x1EEE9AC00](ParseResult, v48);
  v177 = v46;
  result = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ResultColumn.init(node:schemas:tokenInformation:), (&v179 - 4), v52);
  if (v54)
  {
LABEL_93:
    __break(1u);
    return result;
  }

  v194 = result;
  v202._countAndFlagsBits = specialized Collection.dropFirst(_:)(result, v52);
  v202._object = v55;
  v203 = v56;
  v204 = v57;
  v205 = v56;
  v206 = 0;
  v58 = v52;

  while (1)
  {
    specialized EnumeratedSequence.Iterator.next()(v32);
    _s10Foundation4UUIDVSgWObTm_0(v32, v35, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMR);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMR);
    if ((*(*(v59 - 8) + 48))(v35, 1, v59) == 1)
    {

      swift_unknownObjectRelease();
      v86 = *(v180 + 16);
      v85 = *(v180 + 24);
      goto LABEL_29;
    }

    v60 = *v35;
    v61 = *(v59 + 48);
    v62 = *&v35[v61];
    outlined destroy of PgQuery_ParseResult(&v35[v61], type metadata accessor for PgQuery_ScanToken);
    SQLTokenInformation.tokenName(location:)(v62);
    if (v63)
    {

      swift_unknownObjectRelease();
      goto LABEL_31;
    }

    v64 = String.lowercased()();
    v65 = v64._countAndFlagsBits;

    v66 = String.lowercased()();
    v67 = v66._object;
    if (v64._countAndFlagsBits == v66._countAndFlagsBits && v64._object == v66._object)
    {
      break;
    }

    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v69)
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  v89 = v194 + v60;
  if (__OFADD__(v194, v60))
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v90 = __OFADD__(v89, 1);
  v91 = v89 + 1;
  v60 = v199;
  if (v90)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
    v78 = v196;
LABEL_23:
    *(v65 + v60) = static PgQuery_Node._StorageClass.defaultInstance;
    v79 = (v67)(v58, 1, v78);

    v60 = v35;
    v80 = v187;
    if (v79 != 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v58, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    goto LABEL_26;
  }

  if (v91 >= *(v58 + 16))
  {

    v97 = *(v180 + 16);
    v96 = *(v180 + 24);
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v98 = v97;
    *(v98 + 8) = v96;
    *(v98 + 16) = 0;
    *(v98 + 24) = 0;
    *(v98 + 32) = 8;
    swift_willThrow();

LABEL_41:
    swift_unknownObjectRelease();
    outlined destroy of PgQuery_ParseResult(v197, type metadata accessor for PgQuery_Node);
    v88 = v60;
    goto LABEL_42;
  }

  if (v91 < 0)
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  SQLTokenInformation.tokenName(location:)(*(v58 + ((v186[80] + 32) & ~v186[80]) + *(v186 + 9) * v91));
  if (v92)
  {

    goto LABEL_41;
  }

  v194 = 0;
  swift_unknownObjectRelease();
  v202 = String.lowercased()();
  v121 = v180;
  v201[0] = String.lowercased()();
  v122 = type metadata accessor for Locale();
  v123 = v183;
  (*(*(v122 - 8) + 56))(v183, 1, 1, v122);
  v177 = lazy protocol witness table accessor for type String and conformance String();
  v178 = v177;
  StringProtocol.range<A>(of:options:range:locale:)();
  v125 = v124;
  _s10Foundation4UUIDVSgWOhTm_0(v123, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  if (v125)
  {

    v86 = *(v121 + 16);
    v85 = *(v121 + 24);
LABEL_29:
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v87 = v86;
    *(v87 + 8) = v85;
    *(v87 + 16) = 0;
    *(v87 + 24) = 0;
    *(v87 + 32) = 8;
    swift_willThrow();

LABEL_31:
    outlined destroy of PgQuery_ParseResult(v197, type metadata accessor for PgQuery_Node);
    v88 = v199;
LABEL_42:
    outlined destroy of PgQuery_ParseResult(v88, type metadata accessor for SQLTokenInformation);
    goto LABEL_43;
  }

  v126 = String.subscript.getter();
  v128 = v127;
  v130 = v129;
  v132 = v131;

  v133 = MEMORY[0x1865F6210](v126, v128, v130, v132);
  v135 = v134;

  v136 = v190;
  *(v190 + 96) = v133;
  *(v136 + 104) = v135;
  v183 = v135;
  v32 = v194;
  v60 = v199;
  v49 = v121;
LABEL_21:
  v58 = v189;
  outlined init with copy of PgQuery_Alias?(v49 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, v189, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v67 = *(v188 + 48);
  v78 = v196;
  if ((v67)(v58, 1, v196) == 1)
  {
    v35 = v60;
    v65 = v193;
    UnknownStorage.init()();
    v60 = *(v78 + 20);
    if (one-time initialization token for defaultInstance == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_88;
  }

  outlined init with take of PgQuery_ParseResult(v58, v193, type metadata accessor for PgQuery_Node);
  v80 = v187;
LABEL_26:
  outlined init with copy of PgQuery_ScanResult(v60, v80, type metadata accessor for SQLTokenInformation);
  v81 = v198;

  v83 = specialized ColumnResolver.init(schemas:)(v82);
  v65 = v32;
  if (!v32)
  {
    v93 = v83;
    v94 = v84;

    v95 = v193;
    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v193, v81, v93, v94, v80, &v201[0]._countAndFlagsBits);
    v194 = 0;

    outlined init with copy of Aggregation(v201, v200);
    outlined init with copy of Aggregation(v200, &v202);
    v99 = v204;
    v100 = v205;
    __swift_project_boxed_opaque_existential_1(&v202, v204);
    v206 = (*(v100 + 8))(v99, v100);
    v207 = v101;
    v102 = v204;
    v103 = v205;
    __swift_project_boxed_opaque_existential_1(&v202, v204);
    (*(v103 + 16))(&v213, v102, v103);
    v208 = v213;
    v104 = v204;
    v105 = v205;
    __swift_project_boxed_opaque_existential_1(&v202, v204);
    v209 = (*(v105 + 24))(v104, v105);
    v106 = v204;
    v107 = v205;
    __swift_project_boxed_opaque_existential_1(&v202, v204);
    v210 = (*(v107 + 32))(v106, v107);
    v108 = v204;
    v109 = v205;
    __swift_project_boxed_opaque_existential_1(&v202, v204);
    v110 = (*(v109 + 40))(v108, v109);
    v112 = v111;
    __swift_destroy_boxed_opaque_existential_1Tm(v200);
    __swift_destroy_boxed_opaque_existential_1Tm(v201);
    outlined destroy of PgQuery_ParseResult(v80, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_ParseResult(v95, type metadata accessor for PgQuery_Node);
    v211 = v110;
    v212 = v112;
    outlined init with copy of SQLExpression(&v202, v190);
    v113 = *(v60 + 8);
    v35 = v186;
    v32 = v184;
    v114 = v185;
    v198 = *(v113 + 16);
    if (v198)
    {
      v67 = 0;
      v115 = *(v180 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      while (1)
      {
        if (v67 >= *(v113 + 16))
        {
          __break(1u);
          goto LABEL_86;
        }

        v116 = v113;
        v58 = v113 + ((v35[80] + 32) & ~v35[80]);
        v65 = *(v35 + 9);
        outlined init with copy of PgQuery_ScanResult(v58 + v65 * v67, v32, type metadata accessor for PgQuery_ScanToken);
        v117 = *v32;
        result = outlined destroy of PgQuery_ParseResult(v32, type metadata accessor for PgQuery_ScanToken);
        if (v117 == v115)
        {
          break;
        }

        ++v67;
        v60 = v199;
        v113 = v116;
        if (v198 == v67)
        {
          goto LABEL_49;
        }
      }

      v187 = v58;
      v60 = v199;
      if (*(v116 + 16) < v67)
      {
        goto LABEL_92;
      }

      v180 = v116;

      v137 = MEMORY[0x1E69E7CC0];
      v138 = v187;
      if (v67)
      {
        v139 = (v67 - 1);
        v193 = (v181 + 8);
        v140 = v67;
        v184 = (v67 - 1);
        while (v139 < v67)
        {
          outlined init with copy of PgQuery_ScanResult(&v138[--v140 * v65], v114, type metadata accessor for PgQuery_ScanToken);
          if (*(v114 + 16) == 1)
          {
            v142 = *(v114 + 8);
            if (v142 - 39 >= 0x152 && v142 - 378 >= 0x74)
            {
              if (v142 > 0x26)
              {
                goto LABEL_81;
              }

              if (((1 << v142) & 0x1FFFFFFFBFLL) == 0)
              {
                if (((1 << v142) & 0x6000000000) == 0)
                {
                  goto LABEL_81;
                }

                v186 = v137;
                PgQuery_Token.rawValue.getter(v142, 1);
                v143 = String.index(_:offsetBy:)();
                result = String.index(_:offsetBy:)();
                if (result >> 14 < v143 >> 14)
                {
                  goto LABEL_90;
                }

                v144 = String.subscript.getter();
                v145 = MEMORY[0x1865F6210](v144);
                v147 = v146;

                v201[0]._countAndFlagsBits = v145;
                v201[0]._object = v147;
                v148 = v191;
                static CharacterSet.whitespaces.getter();
                v189 = lazy protocol witness table accessor for type String and conformance String();
                v149 = StringProtocol.trimmingCharacters(in:)();
                v151 = v150;
                v188 = *v193;
                (v188)(v148, v192);

                v201[0]._countAndFlagsBits = 10;
                v201[0]._object = 0xE100000000000000;
                MEMORY[0x1EEE9AC00](v152, v153);
                v177 = v201;
                v154 = v194;
                v155 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v179 - 4), v149, v151, &v214);
                v194 = v154;
                v156 = *(v155 + 16);
                if (v156)
                {
                  v213 = MEMORY[0x1E69E7CC0];
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v156, 0);
                  v157 = v213;
                  v183 = v155;
                  v158 = (v155 + 56);
                  do
                  {
                    v198 = v156;
                    v160 = *(v158 - 3);
                    v159 = *(v158 - 2);
                    v161 = v157;
                    v162 = *(v158 - 1);
                    v163 = *v158;

                    v201[0]._countAndFlagsBits = MEMORY[0x1865F6210](v160, v159, v162, v163);
                    v201[0]._object = v164;
                    v165 = v191;
                    static CharacterSet.whitespaces.getter();
                    v157 = v161;
                    v166 = StringProtocol.trimmingCharacters(in:)();
                    v196 = v167;

                    (v188)(v165, v192);

                    v213 = v157;
                    v169 = *(v157 + 16);
                    v168 = *(v157 + 24);
                    if (v169 >= v168 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v168 > 1, v169 + 1, 1);
                      v157 = v213;
                    }

                    *(v157 + 16) = v169 + 1;
                    v170 = v157 + 16 * v169;
                    v171 = v196;
                    *(v170 + 32) = v166;
                    *(v170 + 40) = v171;
                    v158 += 4;
                    v156 = v198 - 1;
                  }

                  while (v198 != 1);

                  v114 = v185;
                }

                else
                {

                  v157 = MEMORY[0x1E69E7CC0];
                }

                v172 = v157;
                v173 = *(v157 + 16);
                v137 = v186;
                v174 = *(v186 + 2);
                if (__OFADD__(v174, v173))
                {
                  goto LABEL_91;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v200[0] = v137;
                if (!isUniquelyReferenced_nonNull_native || v174 + v173 > *(v137 + 24) >> 1)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v137 = v141;
                  v200[0] = v141;
                }

                v60 = v199;
                specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, v173, v172);

                v138 = v187;
                v139 = v184;
              }
            }
          }

          outlined destroy of PgQuery_ParseResult(v114, type metadata accessor for PgQuery_ScanToken);
          if (!v140)
          {
            goto LABEL_82;
          }
        }

        __break(1u);
LABEL_81:
        outlined destroy of PgQuery_ParseResult(v114, type metadata accessor for PgQuery_ScanToken);
      }

LABEL_82:

      if (*(v137 + 16))
      {
        v201[0]._countAndFlagsBits = v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v118 = BidirectionalCollection<>.joined(separator:)();
        v119 = v176;

        outlined destroy of SQLExpression(&v202);
        goto LABEL_51;
      }

      outlined destroy of SQLExpression(&v202);
    }

    else
    {
LABEL_49:
      outlined destroy of SQLExpression(&v202);
    }

    v118 = 0;
    v119 = 0;
LABEL_51:
    outlined destroy of PgQuery_ParseResult(v197, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_ParseResult(v60, type metadata accessor for SQLTokenInformation);
    v120 = v190;
    *(v190 + 112) = v118;
    *(v120 + 120) = v119;
LABEL_43:
    v75 = type metadata accessor for PgQuery_ResTarget;
    v76 = &v215;
    return outlined destroy of PgQuery_ParseResult(*(v76 - 32), v75);
  }

  swift_bridgeObjectRelease_n();
  outlined destroy of PgQuery_ParseResult(v80, type metadata accessor for SQLTokenInformation);
  outlined destroy of PgQuery_ParseResult(v193, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_ParseResult(v197, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_ParseResult(v60, type metadata accessor for SQLTokenInformation);
  outlined destroy of PgQuery_ParseResult(v195, type metadata accessor for PgQuery_ResTarget);
}

uint64_t specialized EnumeratedSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMR);
  result = MEMORY[0x1EEE9AC00](v3, v4);
  v8 = (&v16 - v7);
  v9 = v1[4];
  v10 = v1[3] >> 1;
  if (v9 == v10)
  {
    v11 = *(v6 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v10 || v9 < v1[2])
    {
      __break(1u);
    }

    else
    {
      v17 = v6;
      v13 = v1[1] + *(*(type metadata accessor for PgQuery_ScanToken(0) - 8) + 72) * v9;
      v1[4] = v9 + 1;
      v14 = *(v3 + 48);
      v15 = v1[5];
      *v8 = v15;
      result = outlined init with copy of PgQuery_ScanResult(v13, v8 + v14, type metadata accessor for PgQuery_ScanToken);
      if (!__OFADD__(v15, 1))
      {
        v1[5] = v15 + 1;
        _s10Foundation4UUIDVSgWObTm_0(v8, a1, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMR);
        return (*(v17 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResultColumn.CodingKeys()
{
  v1 = 0x7361696C61;
  if (*v0 != 1)
  {
    v1 = 0x746E656D75636F64;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6973736572707865;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResultColumn.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ResultColumn.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResultColumn.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResultColumn.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResultColumn.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser12ResultColumnV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser12ResultColumnV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v9[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v9[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SelectCore.init(select:resources:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v395 = a2;
  v320 = a3;
  v4 = type metadata accessor for SQLTokenInformation(0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v321 = &v308 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v326 = &v308 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v329 = *(Node - 8);
  v11 = MEMORY[0x1EEE9AC00](Node, v10);
  v323 = &v308 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  i = &v308 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v322 = &v308 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v308 - v21;
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v308 - v25;
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v308 - v28;
  v30 = type metadata accessor for PlanResources(0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v308 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(a1 + *(type metadata accessor for PgQuery_SelectStmt(0) + 20));
  outlined init with copy of PgQuery_ScanResult(v395, v33, type metadata accessor for PlanResources);

  v36 = v330;
  v37 = FromClause.init(fromClauseNodes:resources:)(v35, v33, &v371);
  if (v36)
  {
    outlined destroy of PgQuery_ParseResult(a1, type metadata accessor for PgQuery_SelectStmt);
    return outlined destroy of PgQuery_ParseResult(v395, type metadata accessor for PlanResources);
  }

  v318 = a1;
  v328._countAndFlagsBits = v29;
  v314 = v26;
  v315 = v22;
  v313 = v30;
  v379[4] = v375;
  v379[5] = v376;
  v380 = v377;
  v379[0] = v371;
  v379[1] = v372;
  v379[3] = v374;
  v379[2] = v373;
  v40 = v371;
  v41 = *&v34[OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList];
  MEMORY[0x1EEE9AC00](v37, v38);
  v42 = v395;
  *(&v308 - 2) = v40;
  *(&v308 - 1) = v42;

  NodeVG_AF12ResultColumnVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF12ResultColumnVsAE_pTg5(partial apply for closure #1 in SelectCore.init(select:resources:), (&v308 - 4), v41);
  v317 = 0;
  isUniquelyReferenced_nonNull_native = NodeVG_AF12ResultColumnVsAE_pTg5;
  v311 = v40;
  v312 = v34;
  v324 = 0;

  v394 = isUniquelyReferenced_nonNull_native;
  v45 = *(isUniquelyReferenced_nonNull_native + 16);
  v319 = isUniquelyReferenced_nonNull_native;
  if (v45)
  {
    v330 = isUniquelyReferenced_nonNull_native + 32;

    v46 = 0;
    v47 = MEMORY[0x1E69E7CC8];
    v48 = MEMORY[0x1E69E7CC8];
    countAndFlagsBits = v328._countAndFlagsBits;
    v316 = v45;
    while (1)
    {
      if (v46 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
        goto LABEL_138;
      }

      outlined init with copy of ResultColumn(v330 + (v46 << 7), &v371);
      v50 = v378;
      if (v378)
      {
        if (!*(v375 + 16))
        {
          break;
        }
      }

      v41 = v47;
LABEL_6:
      ++v46;
      outlined destroy of ResultColumn(&v371);
      v47 = v41;
      if (v46 == v45)
      {

        goto LABEL_40;
      }
    }

    v45 = v377;
    LODWORD(v328._object) = BYTE8(v374);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v355 = v47;
    v52 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v50);
    v53 = *(v47 + 16);
    v54 = (v51 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      __break(1u);
      goto LABEL_266;
    }

    countAndFlagsBits = v51;
    if (*(v47 + 24) >= v55)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v41 = v47;
        if (v51)
        {
LABEL_14:

          *(*(v41 + 56) + v52) = v328._object;
LABEL_19:
          v48 = v41;
          isUniquelyReferenced_nonNull_native = v319;
          countAndFlagsBits = v328._countAndFlagsBits;
          v45 = v316;
          goto LABEL_6;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
        v62 = static _DictionaryStorage.copy(original:)();
        v41 = v62;
        if (*(v47 + 16))
        {
          v63 = (v62 + 64);
          v64 = (v47 + 64);
          v65 = ((1 << *(v41 + 32)) + 63) >> 6;
          v309 = v47 + 64;
          if (v41 != v47 || v63 >= &v64[8 * v65])
          {
            memmove(v63, v64, 8 * v65);
          }

          v66 = 0;
          *(v41 + 16) = *(v47 + 16);
          v67 = 1 << *(v47 + 32);
          if (v67 < 64)
          {
            v68 = ~(-1 << v67);
          }

          else
          {
            v68 = -1;
          }

          v69 = v68 & *(v47 + 64);
          isUniquelyReferenced_nonNull_native = (v67 + 63) >> 6;
          if (v69)
          {
            do
            {
              v70 = __clz(__rbit64(v69));
              *&v310 = (v69 - 1) & v69;
LABEL_34:
              v73 = v70 | (v66 << 6);
              v74 = (*(v47 + 48) + 16 * v73);
              v76 = *v74;
              v75 = v74[1];
              LOBYTE(v74) = *(*(v47 + 56) + v73);
              v77 = (*(v41 + 48) + 16 * v73);
              *v77 = v76;
              v77[1] = v75;
              *(*(v41 + 56) + v73) = v74;

              v69 = v310;
            }

            while (v310);
          }

          v71 = v66;
          while (1)
          {
            v66 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              goto LABEL_326;
            }

            if (v66 >= isUniquelyReferenced_nonNull_native)
            {
              break;
            }

            v72 = *(v309 + 8 * v66);
            ++v71;
            if (v72)
            {
              v70 = __clz(__rbit64(v72));
              *&v310 = (v72 - 1) & v72;
              goto LABEL_34;
            }
          }
        }

        if (countAndFlagsBits)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, isUniquelyReferenced_nonNull_native);
      v41 = v355;
      v56 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v50);
      if ((countAndFlagsBits & 1) != (v57 & 1))
      {
        goto LABEL_335;
      }

      v52 = v56;
      if (countAndFlagsBits)
      {
        goto LABEL_14;
      }
    }

    *(v41 + 8 * (v52 >> 6) + 64) |= 1 << v52;
    v58 = (*(v41 + 48) + 16 * v52);
    *v58 = v45;
    v58[1] = v50;
    *(*(v41 + 56) + v52) = v328._object;
    v59 = *(v41 + 16);
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      __break(1u);
LABEL_281:
      *&v371 = v50;
      goto LABEL_284;
    }

    *(v41 + 16) = v61;
    goto LABEL_19;
  }

  v48 = MEMORY[0x1E69E7CC8];
  countAndFlagsBits = v328._countAndFlagsBits;
LABEL_40:
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMR);
  v78 = swift_allocObject();
  v310 = xmmword_184D29AA0;
  *(v78 + 16) = xmmword_184D29AA0;
  strcpy((v78 + 32), "select_alias");
  *(v78 + 45) = 0;
  *(v78 + 46) = -5120;
  *(v78 + 48) = v48;
  *&v371 = v311;

  specialized Array.append<A>(contentsOf:)(v78);
  v330 = v371;
  v79 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v45 = v312;
  outlined init with copy of PgQuery_Alias?(&v312[OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause], countAndFlagsBits, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v41 = v329 + 48;
  v80 = *(v329 + 48);
  v47 = Node;
  v81 = v80(countAndFlagsBits, 1, Node);
  _s10Foundation4UUIDVSgWOhTm_0(countAndFlagsBits, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v329 = v41;
  v328._countAndFlagsBits = v80;
  if (v81 == 1)
  {
    v386 = 0u;
    v385 = 0u;
    v384 = 0u;
    v383 = 0u;
    v382 = 0u;
    v381 = 0u;
    v52 = v324;
    v47 = v395;
    countAndFlagsBits = v319;
    isUniquelyReferenced_nonNull_native = v330;
  }

  else
  {
    v86 = v314;
    outlined init with copy of PgQuery_Alias?(&v45[v79], v314, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v87 = v80(v86, 1, v47);
    v45 = v324;
    isUniquelyReferenced_nonNull_native = v313;
    if (v87 == 1)
    {
      countAndFlagsBits = i;
      UnknownStorage.init()();
      v46 = *(v47 + 20);
      if (one-time initialization token for defaultInstance != -1)
      {
        goto LABEL_321;
      }

      goto LABEL_48;
    }

    countAndFlagsBits = i;
    outlined init with take of PgQuery_ParseResult(v86, i, type metadata accessor for PgQuery_Node);
    v47 = v395;
    v41 = v326;
LABEL_51:
    outlined init with copy of PgQuery_ScanResult(v47 + *(isUniquelyReferenced_nonNull_native + 20), v41, type metadata accessor for SQLTokenInformation);
    isUniquelyReferenced_nonNull_native = v330;

    v91 = specialized ColumnResolver.init(schemas:)(v90);
    if (v45)
    {
      v324 = v45;
      swift_bridgeObjectRelease_n();
      outlined destroy of PgQuery_ParseResult(v41, type metadata accessor for SQLTokenInformation);
      outlined destroy of PgQuery_ParseResult(countAndFlagsBits, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_ParseResult(v318, type metadata accessor for PgQuery_SelectStmt);
      v97 = 0;
      v98 = 0;
      v99 = 0;
      goto LABEL_65;
    }

    v95 = v91;
    v96 = v92;
    v52 = 0;

    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(countAndFlagsBits, isUniquelyReferenced_nonNull_native, v95, v96, v41, &v355);

    outlined init with copy of Aggregation(&v355, v368);
    SQLExpression.init(rootNode:)(v368, &v371);
    __swift_destroy_boxed_opaque_existential_1Tm(&v355);
    outlined destroy of PgQuery_ParseResult(v41, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_ParseResult(countAndFlagsBits, type metadata accessor for PgQuery_Node);
    v383 = v373;
    v384 = v374;
    v385 = v375;
    v386 = v376;
    v381 = v371;
    v382 = v372;
    countAndFlagsBits = v319;
  }

  outlined init with copy of PgQuery_Alias?(&v381, &v371, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  v46 = v318;
  if (*(&v372 + 1))
  {
    v357 = v373;
    v358 = v374;
    v359 = v375;
    v360 = v376;
    v355 = v371;
    v356 = v372;
    v82 = v375;
    if (*(v375 + 16))
    {

      if (*(v82 + 16))
      {
        outlined init with copy of AggregationFunction(v82 + 32, &v371);
        v83 = AggregationFunction.name()();
        outlined destroy of AggregationFunction(&v371);
        lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
        v84 = swift_allocError();
        *v85 = v83;
        *(v85 + 16) = 0;
        *(v85 + 24) = 0;
        *(v85 + 32) = 5;
        v324 = v84;
        swift_willThrow();
        outlined destroy of PgQuery_ParseResult(v46, type metadata accessor for PgQuery_SelectStmt);
        outlined destroy of SQLExpression(&v355);
        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_323;
    }

    v93 = outlined destroy of SQLExpression(&v355);
  }

  else
  {
    v93 = _s10Foundation4UUIDVSgWOhTm_0(&v371, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  }

  v100 = *&v312[OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause];
  MEMORY[0x1EEE9AC00](v93, v94);
  *(&v308 - 2) = isUniquelyReferenced_nonNull_native;
  *(&v308 - 1) = v47;

  NodeVG_AF13SQLExpressionVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF13SQLExpressionVsAE_pTg5(partial apply for closure #3 in SelectCore.init(select:resources:), (&v308 - 4), v100);
  v324 = v52;
  if (v52)
  {

    v102 = v318;
    goto LABEL_63;
  }

  v52 = NodeVG_AF13SQLExpressionVsAE_pTg5;

  v103 = v52;
  v104 = *(v52 + 16);
  v105 = v104 + 1;
  v106 = 96;
  v46 = v318;
  while (--v105)
  {
    v41 = *(v52 + v106);
    v106 += 96;
    if (*(v41 + 16))
    {

      if (*(v41 + 16))
      {
        outlined init with copy of AggregationFunction(v41 + 32, &v371);
        v107 = AggregationFunction.name()();
        outlined destroy of AggregationFunction(&v371);
        lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
        v108 = swift_allocError();
        *v109 = v107;
        *(v109 + 16) = 0;
        *(v109 + 24) = 0;
        *(v109 + 32) = 6;
        v324 = v108;
        swift_willThrow();
        v102 = v46;
LABEL_63:
        outlined destroy of PgQuery_ParseResult(v102, type metadata accessor for PgQuery_SelectStmt);
LABEL_64:
        v98 = 0;
        v99 = 0;
        v97 = 1;
        goto LABEL_65;
      }

LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
      goto LABEL_325;
    }
  }

  if (v104)
  {
    LODWORD(v326) = 0;
    goto LABEL_82;
  }

  v111 = countAndFlagsBits + 32;
  v112 = -*(countAndFlagsBits + 16);
  v113 = -1;
  while (v112 + v113 != -1)
  {
    if (++v113 >= *(countAndFlagsBits + 16))
    {
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      swift_once();
LABEL_48:
      *(countAndFlagsBits + v46) = static PgQuery_Node._StorageClass.defaultInstance;
      v88 = v314;
      v89 = (v328._countAndFlagsBits)(v314, 1, v47);

      v47 = v395;
      v41 = v326;
      if (v89 != 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v88, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      goto LABEL_51;
    }

    v114 = v111 + 128;
    outlined init with copy of ResultColumn(v111, &v371);
    v115 = *(v375 + 16);
    outlined destroy of ResultColumn(&v371);
    v111 = v114;
    v46 = v318;
    if (v115)
    {
      LODWORD(v326) = 0;
      v103 = MEMORY[0x1E69E7CC0];
      goto LABEL_82;
    }
  }

  v103 = 0;
  LODWORD(v326) = 1;
LABEL_82:
  v387 = v103;
  v41 = v315;
  v330 = *(countAndFlagsBits + 16);
  if (v330)
  {
    v116 = 0;
    v328._object = (countAndFlagsBits + 32);
    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v116 >= *(countAndFlagsBits + 16))
      {
        __break(1u);
LABEL_283:
        v52 = MEMORY[0x1E69E7CC0];
        v47 = *(MEMORY[0x1E69E7CC0] + 16);
        *&v371 = MEMORY[0x1E69E7CC0];
        if (v47)
        {
LABEL_284:
          v275 = 0;
          while (v275 < *(v52 + 16))
          {
            v276 = v275 + 1;

            v41 = &v371;
            specialized Array.append<A>(contentsOf:)(v277);
            v275 = v276;
            if (v47 == v276)
            {
              goto LABEL_287;
            }
          }

          goto LABEL_324;
        }

LABEL_287:

        v278 = v371;
        outlined init with copy of PgQuery_Alias?(&v388, &v371, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        if (*(&v372 + 1))
        {
          v279 = v375;

          outlined destroy of SQLExpression(&v371);
        }

        else
        {
          _s10Foundation4UUIDVSgWOhTm_0(&v371, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
          v279 = MEMORY[0x1E69E7CC0];
        }

        *&v371 = v278;
        specialized Array.append<A>(contentsOf:)(v279);
        v280 = v371;
        v326 = *(v371 + 16);
        if (!v326)
        {
LABEL_313:

          outlined destroy of PgQuery_ParseResult(v318, type metadata accessor for PgQuery_SelectStmt);
          outlined init with copy of SelectCore(v379, v320);
          outlined destroy of PgQuery_ParseResult(v395, type metadata accessor for PlanResources);
          return outlined destroy of SelectCore(v379);
        }

        v281 = 0;
        Node = v371 + 32;
        v282 = v330 + 56;
        v283 = v329 + 56;
        while (v281 < *(v280 + 16))
        {
          v284 = v280;
          outlined init with copy of AggregationFunction(Node + 200 * v281, &v371);
          v328 = AggregationFunction.name()();
          v285 = String.lowercased()();
          v286 = v330;
          if (*(v330 + 16))
          {
            Hasher.init(_seed:)();
            String.hash(into:)();
            v287 = Hasher._finalize()();
            v288 = -1 << *(v286 + 32);
            v289 = v287 & ~v288;
            if ((*(v282 + ((v289 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v289))
            {
              v290 = ~v288;
              while (1)
              {
                v291 = *(v330 + 48) + 16 * v289;
                v292 = *v291 == v285._countAndFlagsBits && *(v291 + 8) == v285._object;
                if (v292 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v289 = (v289 + 1) & v290;
                if (((*(v282 + ((v289 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v289) & 1) == 0)
                {
                  goto LABEL_303;
                }
              }

              v301 = "e as any select column's name";
              v302 = 0xD000000000000051;
              goto LABEL_317;
            }
          }

LABEL_303:

          v293 = String.lowercased()();
          if (*(v329 + 16))
          {
            v294 = v329;
            Hasher.init(_seed:)();
            String.hash(into:)();
            v295 = Hasher._finalize()();
            v296 = -1 << *(v294 + 32);
            v297 = v295 & ~v296;
            if ((*(v283 + ((v297 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v297))
            {
              v298 = ~v296;
              do
              {
                v299 = *(v329 + 48) + 16 * v297;
                v300 = *v299 == v293._countAndFlagsBits && *(v299 + 8) == v293._object;
                if (v300 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_316;
                }

                v297 = (v297 + 1) & v298;
              }

              while (((*(v283 + ((v297 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v297) & 1) != 0);
            }
          }

          ++v281;

          outlined destroy of AggregationFunction(&v371);
          v280 = v284;
          if (v281 == v326)
          {
            goto LABEL_313;
          }
        }

LABEL_334:
        __break(1u);
LABEL_335:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      outlined init with copy of ResultColumn(v328._object + 128 * v116, &v371);
      v117 = v378;
      if (v378)
      {
        break;
      }

      outlined destroy of ResultColumn(&v371);
LABEL_85:
      if (++v116 == v330)
      {
        goto LABEL_117;
      }
    }

    v45 = v377;
    v46 = BYTE8(v374);

    v118 = swift_isUniquelyReferenced_nonNull_native();
    *&v355 = isUniquelyReferenced_nonNull_native;
    v119 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v117);
    v121 = *(isUniquelyReferenced_nonNull_native + 16);
    v122 = (v120 & 1) == 0;
    v60 = __OFADD__(v121, v122);
    v123 = v121 + v122;
    if (v60)
    {
      __break(1u);
LABEL_316:

      v301 = "hema column names";
      v302 = 0xD000000000000050;
LABEL_317:
      v303 = v318;
      v304 = v301 | 0x8000000000000000;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      v305 = swift_allocError();
      object = v328._object;
      *v307 = v328._countAndFlagsBits;
      *(v307 + 8) = object;
      *(v307 + 16) = v302;
      *(v307 + 24) = v304;
      *(v307 + 32) = 7;
      v324 = v305;
      swift_willThrow();
      outlined destroy of AggregationFunction(&v371);
      v270 = v303;
      goto LABEL_270;
    }

    v47 = v120;
    if (*(isUniquelyReferenced_nonNull_native + 24) < v123)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v123, v118);
      v124 = v355;
      v119 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v117);
      if ((v47 & 1) != (v125 & 1))
      {
        goto LABEL_335;
      }

      countAndFlagsBits = v319;
      if (v47)
      {
        goto LABEL_92;
      }

LABEL_95:
      *(v124 + 8 * (v119 >> 6) + 64) |= 1 << v119;
      v127 = (*(v124 + 48) + 16 * v119);
      *v127 = v45;
      v127[1] = v117;
      *(*(v124 + 56) + v119) = v46;
      outlined destroy of ResultColumn(&v371);
      v128 = *(v124 + 16);
      v60 = __OFADD__(v128, 1);
      v129 = v128 + 1;
      if (v60)
      {
        __break(1u);
        goto LABEL_319;
      }

      *(v124 + 16) = v129;
      goto LABEL_97;
    }

    if (v118)
    {
      v124 = isUniquelyReferenced_nonNull_native;
      countAndFlagsBits = v319;
      if ((v120 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v309 = v119;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      v130 = static _DictionaryStorage.copy(original:)();
      v124 = v130;
      if (*(isUniquelyReferenced_nonNull_native + 16))
      {
        v131 = (v130 + 64);
        v132 = 1 << *(v124 + 32);
        v314 = (isUniquelyReferenced_nonNull_native + 64);
        v133 = (v132 + 63) >> 6;
        if (v124 != isUniquelyReferenced_nonNull_native || v131 >= &v314[8 * v133])
        {
          memmove(v131, v314, 8 * v133);
        }

        v134 = 0;
        *(v124 + 16) = *(isUniquelyReferenced_nonNull_native + 16);
        v135 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
        if (v135 < 64)
        {
          v136 = ~(-1 << v135);
        }

        else
        {
          v136 = -1;
        }

        i = (v136 & *(isUniquelyReferenced_nonNull_native + 64));
        v137 = (v135 + 63) >> 6;
        v138 = i;
        if (!i)
        {
          goto LABEL_107;
        }

        while (1)
        {
          v139 = __clz(__rbit64(v138));
          for (i = ((v138 - 1) & v138); ; i = ((v141 - 1) & v141))
          {
            v142 = v139 | (v134 << 6);
            v143 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v142);
            v145 = *v143;
            v144 = v143[1];
            LOBYTE(v143) = *(*(isUniquelyReferenced_nonNull_native + 56) + v142);
            v146 = (*(v124 + 48) + 16 * v142);
            *v146 = v145;
            v146[1] = v144;
            *(*(v124 + 56) + v142) = v143;

            v138 = i;
            if (i)
            {
              break;
            }

LABEL_107:
            v140 = v134;
            do
            {
              v134 = v140 + 1;
              if (__OFADD__(v140, 1))
              {
                goto LABEL_333;
              }

              if (v134 >= v137)
              {
                goto LABEL_114;
              }

              v141 = *&v314[8 * v134];
              ++v140;
            }

            while (!v141);
            v139 = __clz(__rbit64(v141));
          }
        }
      }

LABEL_114:

      v119 = v309;
      countAndFlagsBits = v319;
      if ((v47 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

LABEL_92:
    v126 = v119;

    *(*(v124 + 56) + v126) = v46;
    outlined destroy of ResultColumn(&v371);
LABEL_97:
    v47 = v395;
    v46 = v318;
    isUniquelyReferenced_nonNull_native = v124;
    v41 = v315;
    goto LABEL_85;
  }

  isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
LABEL_117:
  v147 = v312;
  v330 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause;
  outlined init with copy of PgQuery_Alias?(&v312[OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause], v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v45 = v328._countAndFlagsBits;
  if ((v328._countAndFlagsBits)(v41, 1, Node) == 1)
  {

    _s10Foundation4UUIDVSgWOhTm_0(v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v388 = 0u;
    v389 = 0u;
    v390 = 0u;
    v391 = 0u;
    v392 = 0u;
    v393 = 0u;
    v52 = v324;
  }

  else
  {
    _s10Foundation4UUIDVSgWOhTm_0(v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v150 = swift_allocObject();
    *(v150 + 16) = v310;
    strcpy((v150 + 32), "select_alias");
    *(v150 + 45) = 0;
    *(v150 + 46) = -5120;
    *(v150 + 48) = isUniquelyReferenced_nonNull_native;
    *&v371 = v311;

    specialized Array.append<A>(contentsOf:)(v150);
    v41 = v371;
    v151 = &v147[v330];
    v152 = v322;
    outlined init with copy of PgQuery_Alias?(v151, v322, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v153 = Node;
    if ((v45)(v152, 1, Node) == 1)
    {
      isUniquelyReferenced_nonNull_native = v323;
      UnknownStorage.init()();
      v46 = *(v153 + 20);
      v52 = v324;
      if (one-time initialization token for defaultInstance != -1)
      {
        goto LABEL_328;
      }

      goto LABEL_124;
    }

    outlined init with take of PgQuery_ParseResult(v152, v323, type metadata accessor for PgQuery_Node);
    v52 = v324;
LABEL_127:
    isUniquelyReferenced_nonNull_native = v321;
    outlined init with copy of PgQuery_ScanResult(v47 + *(v313 + 20), v321, type metadata accessor for SQLTokenInformation);

    v157 = specialized ColumnResolver.init(schemas:)(v156);
    if (v52)
    {
      v324 = v52;
      swift_bridgeObjectRelease_n();
      outlined destroy of PgQuery_ParseResult(isUniquelyReferenced_nonNull_native, type metadata accessor for SQLTokenInformation);
      outlined destroy of PgQuery_ParseResult(v323, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_ParseResult(v318, type metadata accessor for PgQuery_SelectStmt);
      v99 = 0;
      v97 = 1;
      v98 = 1;
      goto LABEL_65;
    }

    v159 = v157;
    v160 = v158;
    v52 = 0;

    v45 = v323;
    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v323, v41, v159, v160, isUniquelyReferenced_nonNull_native, &v355);

    outlined init with copy of Aggregation(&v355, v368);
    SQLExpression.init(rootNode:)(v368, &v371);
    __swift_destroy_boxed_opaque_existential_1Tm(&v355);
    outlined destroy of PgQuery_ParseResult(isUniquelyReferenced_nonNull_native, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_ParseResult(v45, type metadata accessor for PgQuery_Node);
    v390 = v373;
    v391 = v374;
    v392 = v375;
    v393 = v376;
    v388 = v371;
    v389 = v372;
    v46 = v318;
  }

  outlined init with copy of PgQuery_Alias?(&v388, &v371, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  if (*(&v372 + 1))
  {
    v368[2] = v373;
    v368[3] = v374;
    v369 = v375;
    v370 = v376;
    v368[0] = v371;
    v368[1] = v372;
    if (v326)
    {
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      v148 = swift_allocError();
      *v149 = 0u;
      *(v149 + 16) = 0u;
      *(v149 + 32) = 9;
      v324 = v148;
      swift_willThrow();
      outlined destroy of SQLExpression(v368);
      outlined destroy of PgQuery_ParseResult(v46, type metadata accessor for PgQuery_SelectStmt);
      v97 = 1;
      v98 = 1;
      v99 = 1;
      goto LABEL_65;
    }

    isUniquelyReferenced_nonNull_native = v52;
    v161 = MEMORY[0x1E69E7CD0];
    *&v349 = MEMORY[0x1E69E7CD0];
    v162 = *(countAndFlagsBits + 16);
    if (v162)
    {
      v163 = countAndFlagsBits + 32;
      do
      {
        outlined init with copy of ResultColumn(v163, &v371);
        v164 = v378;
        if (v378 && *(v375 + 16))
        {
          v165 = v377;

          v41 = &v349;
          specialized Set._Variant.insert(_:)(&v355, v165, v164);
        }

        outlined destroy of ResultColumn(&v371);
        v163 += 128;
        --v162;
      }

      while (v162);
LABEL_138:
      v161 = v349;
    }

    v46 = v369;
    v52 = isUniquelyReferenced_nonNull_native;
    i = *(v369 + 16);
    if (i)
    {
      v166 = 0;
      v167 = v369 + 32;
      v329 = v161 + 56;
      v45 = MEMORY[0x1E69E7CC0];
      isUniquelyReferenced_nonNull_native = 96;
      v330 = v161;
      v321 = v369;
      v322 = v369 + 32;
      while (1)
      {
        if (v166 >= *(v46 + 16))
        {
          goto LABEL_332;
        }

        v326 = v166;
        outlined init with copy of AggregationFunction(v167 + 200 * v166, &v371);
        outlined init with copy of AggregationFunction.AggregationType(&v371, &v355);
        outlined destroy of AggregationFunction(&v371);
        if (v367 > 3u)
        {
          break;
        }

        if (v367 <= 1u)
        {
          goto LABEL_156;
        }

        if (v367 != 2)
        {
LABEL_159:
          v351 = v357;
          v352 = v358;
          v353 = v359;
          v354 = v360;
          v349 = v355;
          v350 = v356;
          outlined init with copy of SQLExpression(&v349, &v343);
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v45);
          v193 = *(v41 + 16);
          v192 = *(v41 + 24);
          v328._object = (v193 + 1);
          if (v193 >= v192 >> 1)
          {
            v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v192 > 1), v193 + 1, 1, v41);
          }

          outlined destroy of SQLExpression(&v349);
          v179 = v41;
          *(v41 + 16) = v328._object;
          v194 = (v41 + 96 * v193);
          v195 = v344;
          v194[2] = v343;
          v194[3] = v195;
          v196 = v348;
          v198 = v345;
          v197 = v346;
          v194[6] = v347;
          v194[7] = v196;
          v194[4] = v198;
          v194[5] = v197;
          goto LABEL_162;
        }

        v351 = v357;
        v352 = v358;
        v353 = v359;
        v354 = v360;
        v349 = v355;
        v350 = v356;
        v345 = v363;
        v346 = v364;
        v347 = v365;
        v348 = v366;
        v343 = v361;
        v344 = v362;
        outlined init with copy of SQLExpression(&v349, &v337);
        v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v45);
        v170 = *(v168 + 2);
        v169 = *(v168 + 3);
        v41 = v170 + 1;
        if (v170 >= v169 >> 1)
        {
          v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v169 > 1), v170 + 1, 1, v168);
        }

        *(v168 + 2) = v41;
        v171 = &v168[96 * v170];
        v172 = v338;
        *(v171 + 2) = v337;
        *(v171 + 3) = v172;
        v173 = v339;
        v174 = v340;
        v175 = v342;
        *(v171 + 6) = v341;
        *(v171 + 7) = v175;
        *(v171 + 4) = v173;
        *(v171 + 5) = v174;
        outlined init with copy of PgQuery_Alias?(&v343, &v331, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        if (*(&v332 + 1))
        {
          v176 = v47;
          v339 = v333;
          v340 = v334;
          v341 = v335;
          v342 = v336;
          v337 = v331;
          v338 = v332;
          outlined init with copy of SQLExpression(&v337, &v331);
          v177 = *(v168 + 3);
          v178 = v170 + 2;
          if ((v170 + 2) > (v177 >> 1))
          {
            v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v177 > 1), v170 + 2, 1, v168);
          }

          v46 = v321;
          outlined destroy of SQLExpression(&v337);
          _s10Foundation4UUIDVSgWOhTm_0(&v343, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
          outlined destroy of SQLExpression(&v349);
          v179 = v168;
          *(v168 + 2) = v178;
          isUniquelyReferenced_nonNull_native = 96;
          v180 = (v179 + 96 * v41);
          v181 = v332;
          v180[2] = v331;
          v180[3] = v181;
          v182 = v336;
          v184 = v333;
          v183 = v334;
          v180[6] = v335;
          v180[7] = v182;
          v180[4] = v184;
          v180[5] = v183;
          v47 = v176;
LABEL_162:
          v161 = v330;
          goto LABEL_165;
        }

        v41 = &_s14BiomeSQLParser13SQLExpressionVSgMd;
        _s10Foundation4UUIDVSgWOhTm_0(&v343, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        outlined destroy of SQLExpression(&v349);
        _s10Foundation4UUIDVSgWOhTm_0(&v331, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        v46 = v321;
        v179 = v168;
        isUniquelyReferenced_nonNull_native = 96;
LABEL_165:
        Node = *(v179 + 16);
        if (Node)
        {
          v46 = 0;
          v199 = (v179 + 32);
          v328._countAndFlagsBits = v179;
          v323 = (v179 + 32);
          while (1)
          {
            if (v46 >= *(v179 + 16))
            {
              goto LABEL_331;
            }

            v324 = v52;
            outlined init with copy of SQLExpression(&v199[96 * v46], &v355);
            v45 = *(&v359 + 1);
            isUniquelyReferenced_nonNull_native = *(*(&v359 + 1) + 16);
            if (isUniquelyReferenced_nonNull_native)
            {
              break;
            }

LABEL_183:
            ++v46;
            outlined destroy of SQLExpression(&v355);
            v179 = v328._countAndFlagsBits;
            v199 = v323;
            v52 = v324;
            v45 = MEMORY[0x1E69E7CC0];
            isUniquelyReferenced_nonNull_native = 96;
            if (v46 == Node)
            {

              v46 = v321;
              goto LABEL_186;
            }
          }

          v52 = 0;
          v328._object = (*(&v359 + 1) + 32);
          while (v52 < *(v45 + 2))
          {
            if (*(v161 + 16))
            {
              v200 = (v328._object + 24 * v52);
              v202 = *v200;
              v201 = v200[1];
              Hasher.init(_seed:)();
              swift_bridgeObjectRetain_n();
              String.hash(into:)();
              v203 = Hasher._finalize()();
              v204 = -1 << *(v161 + 32);
              v41 = v203 & ~v204;
              if ((*(v329 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
              {
                v205 = ~v204;
                do
                {
                  v206 = (*(v330 + 48) + 16 * v41);
                  v207 = *v206 == v202 && v206[1] == v201;
                  if (v207 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    swift_bridgeObjectRelease_n();

                    v208 = v360;
                    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
                    v209 = swift_allocError();
                    *v210 = v208;
                    *(v210 + 16) = 0;
                    *(v210 + 24) = 0;
                    *(v210 + 32) = 3;
                    v324 = v209;
                    swift_willThrow();

                    outlined destroy of SQLExpression(v368);
                    outlined destroy of SQLExpression(&v355);
                    goto LABEL_269;
                  }

                  v41 = (v41 + 1) & v205;
                }

                while (((*(v329 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0);
              }

              swift_bridgeObjectRelease_n();
              v47 = v395;
              countAndFlagsBits = v319;
              v161 = v330;
            }

            if (++v52 == isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_183;
            }
          }

LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          swift_once();
LABEL_124:
          *(isUniquelyReferenced_nonNull_native + v46) = static PgQuery_Node._StorageClass.defaultInstance;
          v154 = v322;
          v155 = (v45)(v322, 1);

          if (v155 != 1)
          {
            _s10Foundation4UUIDVSgWOhTm_0(v154, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          }

          goto LABEL_127;
        }

LABEL_186:
        v166 = v326 + 1;
        v167 = v322;
        if (v326 + 1 == i)
        {
          goto LABEL_189;
        }
      }

      if (v367 > 5u)
      {
        if (v367 != 6)
        {
          v179 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 1, v45);
          goto LABEL_165;
        }
      }

      else if (v367 == 4)
      {
        goto LABEL_159;
      }

LABEL_156:
      v351 = v357;
      v352 = v358;
      v353 = v359;
      v354 = v360;
      v349 = v355;
      v350 = v356;
      outlined init with copy of SQLExpression(&v349, &v343);
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v45);
      v186 = *(v41 + 16);
      v185 = *(v41 + 24);
      if (v186 >= v185 >> 1)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v185 > 1), v186 + 1, 1, v41);
      }

      outlined destroy of SQLExpression(&v349);
      v179 = v41;
      *(v41 + 16) = v186 + 1;
      v187 = (v41 + 96 * v186);
      v188 = v344;
      v187[2] = v343;
      v187[3] = v188;
      v189 = v348;
      v191 = v345;
      v190 = v346;
      v187[6] = v347;
      v187[7] = v189;
      v187[4] = v191;
      v187[5] = v190;
      v161 = v330;
      v45 = MEMORY[0x1E69E7CC0];
      goto LABEL_165;
    }

LABEL_189:

    outlined destroy of SQLExpression(v368);
  }

  else
  {
    _s10Foundation4UUIDVSgWOhTm_0(&v371, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  }

  v211 = MEMORY[0x1E69E7CD0];
  *&v355 = MEMORY[0x1E69E7CD0];
  v212 = v311;
  v323 = *(v311 + 16);
  if (v323)
  {
    v213 = 0;
    v214 = v311 + 32;
    v322 = v311 + 32;
    do
    {
      v324 = v52;
      if (v213 >= *(v212 + 16))
      {
        goto LABEL_327;
      }

      v215 = v214 + 24 * v213;
      v216 = *(v215 + 8);
      v41 = *(v215 + 16);
      i = v213 + 1;
      v326 = v216;
      v217 = v41 + 64;
      v218 = 1 << *(v41 + 32);
      if (v218 < 64)
      {
        v219 = ~(-1 << v218);
      }

      else
      {
        v219 = -1;
      }

      isUniquelyReferenced_nonNull_native = v219 & *(v41 + 64);
      v46 = (v218 + 63) >> 6;

      swift_bridgeObjectRetain_n();
      v220 = 0;
      Node = v46;
      v328._countAndFlagsBits = v41 + 64;
      v328._object = v41;
      if (isUniquelyReferenced_nonNull_native)
      {
        while (1)
        {
LABEL_201:
          v222 = (*(v41 + 48) + ((v220 << 10) | (16 * __clz(__rbit64(isUniquelyReferenced_nonNull_native)))));
          v223 = v222[1];
          v47 = v355;
          v329 = *v222;
          v224 = String.lowercased()();
          v225 = *(v47 + 16);
          v330 = v223;
          if (v225)
          {
            Hasher.init(_seed:)();

            String.hash(into:)();
            v226 = Hasher._finalize()();
            v227 = -1 << *(v47 + 32);
            v228 = v226 & ~v227;
            if ((*(v47 + 56 + ((v228 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v228))
            {
              v229 = ~v227;
              while (1)
              {
                v230 = *(v47 + 48) + 16 * v228;
                v231 = *v230 == v224._countAndFlagsBits && *(v230 + 8) == v224._object;
                if (v231 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v228 = (v228 + 1) & v229;
                if (((*(v47 + 56 + ((v228 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v228) & 1) == 0)
                {
                  goto LABEL_212;
                }
              }

              lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
              v233 = swift_allocError();
              v234 = v330;
              *v235 = v329;
              *(v235 + 8) = v234;
              *(v235 + 16) = 0xD000000000000027;
              *(v235 + 24) = 0x8000000184DEA4C0;
              *(v235 + 32) = 7;
              v324 = v233;
              swift_willThrow();

              goto LABEL_268;
            }
          }

          else
          {
          }

LABEL_212:
          isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;

          v232 = String.lowercased()();
          v45 = v232._object;

          specialized Set._Variant.insert(_:)(&v371, v232._countAndFlagsBits, v232._object);

          countAndFlagsBits = v319;
          v217 = v328._countAndFlagsBits;
          v41 = v328._object;
          v46 = Node;
          if (!isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_197;
          }
        }
      }

      while (1)
      {
LABEL_197:
        v221 = v220 + 1;
        if (__OFADD__(v220, 1))
        {
          goto LABEL_320;
        }

        if (v221 >= v46)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = *(v217 + 8 * v221);
        ++v220;
        if (isUniquelyReferenced_nonNull_native)
        {
          v220 = v221;
          goto LABEL_201;
        }
      }

      v52 = v324;
      v213 = i;
      v212 = v311;
      v211 = MEMORY[0x1E69E7CD0];
      v214 = v322;
    }

    while (i != v323);
    v330 = v355;
  }

  else
  {
    v330 = MEMORY[0x1E69E7CD0];
  }

  *&v368[0] = v211;
  v41 = *(countAndFlagsBits + 16);
  if (!v41)
  {
    goto LABEL_248;
  }

  v236 = 0;
  v237 = countAndFlagsBits + 32;
  v329 = v330 + 56;
  Node = countAndFlagsBits + 32;
  v328._countAndFlagsBits = v41;
  do
  {
    if (v236 >= *(countAndFlagsBits + 16))
    {
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
      goto LABEL_334;
    }

    outlined init with copy of ResultColumn(v237 + (v236 << 7), &v371);
    v46 = v378;
    if (v378)
    {
      v324 = v52;
      v238 = *&v368[0];
      v328._object = v377;
      v239 = String.lowercased()();
      if (*(v238 + 16))
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v240 = Hasher._finalize()();
        v241 = -1 << *(v238 + 32);
        v242 = v240 & ~v241;
        if ((*(v238 + 56 + ((v242 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v242))
        {
          v243 = ~v241;
          while (1)
          {
            v244 = *(v238 + 48) + 16 * v242;
            v245 = *v244 == v239._countAndFlagsBits && *(v244 + 8) == v239._object;
            if (v245 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v242 = (v242 + 1) & v243;
            if (((*(v238 + 56 + ((v242 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v242) & 1) == 0)
            {
              goto LABEL_234;
            }
          }

          v266 = 0xD000000000000021;

          v267 = "lect alias names";
          goto LABEL_267;
        }
      }

      else
      {
      }

LABEL_234:

      v246 = String.lowercased()();
      v45 = v246._object;
      v247 = v330;
      if (*(v330 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v248 = Hasher._finalize()();
        v249 = -1 << *(v247 + 32);
        v250 = v248 & ~v249;
        countAndFlagsBits = v319;
        if ((*(v329 + ((v250 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v250))
        {
          v251 = ~v249;
          while (1)
          {
            v252 = *(v330 + 48) + 16 * v250;
            v253 = *v252 == v246._countAndFlagsBits && *(v252 + 8) == v246._object;
            if (v253 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v250 = (v250 + 1) & v251;
            if (((*(v329 + ((v250 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v250) & 1) == 0)
            {
              goto LABEL_245;
            }
          }

LABEL_266:

          v267 = "ave the same name";
          v266 = 0xD000000000000043;
LABEL_267:

          lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
          v268 = swift_allocError();
          *v269 = v328._object;
          *(v269 + 8) = v46;
          *(v269 + 16) = v266;
          *(v269 + 24) = v267 | 0x8000000000000000;
          *(v269 + 32) = 7;
          v324 = v268;
          swift_willThrow();
          outlined destroy of ResultColumn(&v371);
LABEL_268:

          goto LABEL_269;
        }
      }

      else
      {
        countAndFlagsBits = v319;
      }

LABEL_245:

      v254 = String.lowercased()();

      specialized Set._Variant.insert(_:)(&v355, v254._countAndFlagsBits, v254._object);

      outlined destroy of ResultColumn(&v371);
      v52 = v324;
      v237 = Node;
      v41 = v328._countAndFlagsBits;
    }

    else
    {
      outlined destroy of ResultColumn(&v371);
    }

    ++v236;
  }

  while (v236 != v41);
  v211 = *&v368[0];
LABEL_248:
  v255 = *(countAndFlagsBits + 16);
  v329 = v211;
  if (!v255)
  {
LABEL_271:
    v324 = v52;
    v46 = v319;
    isUniquelyReferenced_nonNull_native = *(v319 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_283;
    }

    v50 = MEMORY[0x1E69E7CC0];
    *&v355 = MEMORY[0x1E69E7CC0];
    v41 = &v355;
    specialized ContiguousArray.reserveCapacity(_:)(isUniquelyReferenced_nonNull_native);
    v45 = (v46 + 32);
    v52 = v355;
    do
    {
      outlined init with copy of ResultColumn(v45, &v371);
      v46 = v375;

      outlined destroy of ResultColumn(&v371);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = &v355;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 16) + 1, 1);
        v52 = v355;
      }

      countAndFlagsBits = *(v52 + 16);
      v271 = *(v52 + 24);
      v47 = countAndFlagsBits + 1;
      if (countAndFlagsBits >= v271 >> 1)
      {
        v41 = &v355;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v271 > 1), countAndFlagsBits + 1, 1);
        v52 = v355;
      }

      *(v52 + 16) = v47;
      *(v52 + 8 * countAndFlagsBits + 32) = v46;
      v45 += 128;
      --isUniquelyReferenced_nonNull_native;
    }

    while (isUniquelyReferenced_nonNull_native);
    goto LABEL_281;
  }

  v256 = 0;
  countAndFlagsBits += 32;
  v257 = v211 + 56;
  while (2)
  {
    if (v256 >= *(v319 + 16))
    {
      __break(1u);
      goto LABEL_330;
    }

    outlined init with copy of ResultColumn(countAndFlagsBits + (v256 << 7), &v371);
    if (v378)
    {
LABEL_251:
      ++v256;
      outlined destroy of ResultColumn(&v371);
      if (v256 == v255)
      {
        goto LABEL_271;
      }

      continue;
    }

    break;
  }

  v41 = *(&v376 + 1);
  v328._object = v376;
  v258 = String.lowercased()();
  v45 = v258._object;
  v259 = *(v329 + 16);
  v324 = v52;
  if (!v259 || (v328._countAndFlagsBits = v41, v260 = v329, Hasher.init(_seed:)(), String.hash(into:)(), v261 = Hasher._finalize()(), v262 = -1 << *(v260 + 32), v41 = v261 & ~v262, ((*(v257 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0))
  {
LABEL_250:

    v52 = v324;
    goto LABEL_251;
  }

  v263 = ~v262;
  while (1)
  {
    v264 = *(v329 + 48) + 16 * v41;
    v265 = *v264 == v258._countAndFlagsBits && *(v264 + 8) == v258._object;
    if (v265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v41 = (v41 + 1) & v263;
    if (((*(v257 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
    {
      goto LABEL_250;
    }
  }

  lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
  v272 = swift_allocError();
  v273 = v328._countAndFlagsBits;
  *v274 = v328._object;
  *(v274 + 8) = v273;
  *(v274 + 16) = 0xD00000000000003DLL;
  *(v274 + 24) = 0x8000000184DEA4F0;
  *(v274 + 32) = 7;
  v324 = v272;
  swift_willThrow();

  outlined destroy of ResultColumn(&v371);
LABEL_269:
  v270 = v318;
LABEL_270:
  outlined destroy of PgQuery_ParseResult(v270, type metadata accessor for PgQuery_SelectStmt);
  v97 = 1;
  v98 = 1;
  v99 = 1;
  v47 = v395;
LABEL_65:
  outlined destroy of PgQuery_ParseResult(v47, type metadata accessor for PlanResources);
  result = outlined destroy of FromClause(v379);
  if (v97)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(&v381, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  }

  if (v98)
  {
  }

  v110 = v317;
  if (v99)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(&v388, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  }

  if (!v110)
  {
  }

  return result;
}

unint64_t closure #1 in SelectCore.init(select:resources:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for SQLTokenInformation(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Node = type metadata accessor for PgQuery_Node(0);
  MEMORY[0x1EEE9AC00](Node - 8, v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_ScanResult(a1, v18, type metadata accessor for PgQuery_Node);
  v19 = type metadata accessor for PlanResources(0);
  outlined init with copy of PgQuery_ScanResult(a3 + *(v19 + 20), v14, type metadata accessor for SQLTokenInformation);

  result = ResultColumn.init(node:schemas:tokenInformation:)(v18, a2, v14, a5);
  if (v5)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t closure #3 in SelectCore.init(select:resources:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for SQLTokenInformation(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Node = type metadata accessor for PgQuery_Node(0);
  MEMORY[0x1EEE9AC00](Node - 8, v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_ScanResult(a1, v18, type metadata accessor for PgQuery_Node);
  v19 = type metadata accessor for PlanResources(0);
  outlined init with copy of PgQuery_ScanResult(a3 + *(v19 + 20), v14, type metadata accessor for SQLTokenInformation);

  v21 = specialized ColumnResolver.init(schemas:)(v20);
  v23 = v22;

  if (v5)
  {
    outlined destroy of PgQuery_ParseResult(v14, type metadata accessor for SQLTokenInformation);
    result = outlined destroy of PgQuery_ParseResult(v18, type metadata accessor for PgQuery_Node);
    *a4 = v5;
  }

  else
  {
    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v18, a2, v21, v23, v14, v26);

    outlined init with copy of Aggregation(v26, v25);
    SQLExpression.init(rootNode:)(v25, a5);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    outlined destroy of PgQuery_ParseResult(v14, type metadata accessor for SQLTokenInformation);
    return outlined destroy of PgQuery_ParseResult(v18, type metadata accessor for PgQuery_Node);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SelectCore.CodingKeys()
{
  v1 = *v0;
  v2 = 1836020326;
  v3 = 0x794270756F7267;
  v4 = 0x676E69766168;
  if (v1 != 3)
  {
    v4 = 0x7463656C6573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6572656877;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SelectCore.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SelectCore.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SelectCore.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SelectCore.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SelectCore.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser10SelectCoreV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser10SelectCoreV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  lazy protocol witness table accessor for type FromClause and conformance FromClause();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + 200);
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser13SQLExpressionVGMd, &_sSay14BiomeSQLParser13SQLExpressionVGMR);
    lazy protocol witness table accessor for type [Schema] and conformance <A> [A](&lazy protocol witness table cache variable for type [SQLExpression] and conformance <A> [A], &_sSay14BiomeSQLParser13SQLExpressionVGMd, &_sSay14BiomeSQLParser13SQLExpressionVGMR, lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + 304);
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser12ResultColumnVGMd, &_sSay14BiomeSQLParser12ResultColumnVGMR);
    lazy protocol witness table accessor for type [Schema] and conformance <A> [A](&lazy protocol witness table cache variable for type [ResultColumn] and conformance <A> [A], &_sSay14BiomeSQLParser12ResultColumnVGMd, &_sSay14BiomeSQLParser12ResultColumnVGMR, lazy protocol witness table accessor for type ResultColumn and conformance ResultColumn);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void *MaterializedView.init(create:resources:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::String *a3@<X8>)
{
  v85 = a2;
  v75 = a3;
  v81 = type metadata accessor for PlanResources(0);
  MEMORY[0x1EEE9AC00](v81, v4);
  v73 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v83 = &v68 - v8;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  MEMORY[0x1EEE9AC00](SelectStmt, v9);
  v72 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v76 = &v68 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v71 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v14);
  v77 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v68 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v79 = *(RangeVar - 8);
  v80 = RangeVar;
  MEMORY[0x1EEE9AC00](RangeVar, v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v68 - v26;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v29 = *(IntoClause - 8);
  MEMORY[0x1EEE9AC00](IntoClause, v30);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a1 + *(type metadata accessor for PgQuery_CreateTableAsStmt(0) + 20));
  destructiveProjectEnumData for StorableValue();
  if (v34 != 24)
  {
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v39 = 0xD000000000000039;
    *(v39 + 8) = 0x8000000184DEA460;
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    *(v39 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v85, type metadata accessor for PlanResources);
    return outlined destroy of PgQuery_ParseResult(a1, type metadata accessor for PgQuery_CreateTableAsStmt);
  }

  v74 = a1;
  outlined init with copy of PgQuery_Alias?(v33 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into, v27, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v35 = *(v29 + 48);
  v36 = v35(v27, 1, IntoClause);
  v69 = v33;
  if (v36 == 1)
  {
    UnknownStorage.init()();
    v37 = *(IntoClause + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      v67 = *(IntoClause + 20);
      swift_once();
      v37 = v67;
    }

    *&v32[v37] = static PgQuery_IntoClause._StorageClass.defaultInstance;
    v38 = v35(v27, 1, IntoClause);

    if (v38 != 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
    }
  }

  else
  {
    outlined init with take of PgQuery_ParseResult(v27, v32, type metadata accessor for PgQuery_IntoClause);
  }

  outlined init with copy of PgQuery_Alias?(*&v32[*(IntoClause + 20)] + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v41 = v80;
  v42 = *(v79 + 48);
  v43 = v42(v19, 1, v80);
  v44 = v74;
  if (v43 == 1)
  {
    *v23 = 0;
    *(v23 + 1) = 0xE000000000000000;
    *(v23 + 2) = 0;
    *(v23 + 3) = 0xE000000000000000;
    *(v23 + 4) = 0;
    *(v23 + 5) = 0xE000000000000000;
    v23[48] = 0;
    *(v23 + 7) = 0;
    *(v23 + 8) = 0xE000000000000000;
    *(v23 + 18) = 0;
    UnknownStorage.init()();
    v45 = *(v41 + 44);
    Alias = type metadata accessor for PgQuery_Alias(0);
    (*(*(Alias - 8) + 56))(&v23[v45], 1, 1, Alias);
    v47 = v42(v19, 1, v41);
    v48 = v83;
    v49 = v69;
    if (v47 != 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    }
  }

  else
  {
    outlined init with take of PgQuery_ParseResult(v19, v23, type metadata accessor for PgQuery_RangeVar);
    v48 = v83;
    v49 = v69;
  }

  outlined destroy of PgQuery_ParseResult(v32, type metadata accessor for PgQuery_IntoClause);
  v50 = *(v23 + 18);
  outlined destroy of PgQuery_ParseResult(v23, type metadata accessor for PgQuery_RangeVar);
  v51 = v85;
  v52 = SQLTokenInformation.tokenName(location:)(v50);
  if (v53)
  {
    outlined destroy of PgQuery_ParseResult(v51, type metadata accessor for PlanResources);
    return outlined destroy of PgQuery_ParseResult(v44, type metadata accessor for PgQuery_CreateTableAsStmt);
  }

  v54 = v76;
  *v75 = v52;
  object = v52._object;
  outlined init with copy of PgQuery_Alias?(v49 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v55 = *(v71 + 48);
  v56 = Node;
  if ((v55)(v54, 1, Node) == 1)
  {
    v57 = v77;
    UnknownStorage.init()();
    v58 = *(v56 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v57 + v58) = static PgQuery_Node._StorageClass.defaultInstance;
    v59 = v76;
    v60 = v55(v76, 1);

    v48 = v83;
    if (v60 != 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }
  }

  else
  {
    v61 = v54;
    v57 = v77;
    outlined init with take of PgQuery_ParseResult(v61, v77, type metadata accessor for PgQuery_Node);
  }

  outlined init with copy of PgQuery_Alias?(*(v57 + *(Node + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v48, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v62 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v63 = (*(*(v62 - 8) + 48))(v48, 1, v62);
  v64 = v72;
  if (v63 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v48, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_26:
    UnknownStorage.init()();
    v65 = *(SelectStmt + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v64 + v65) = static PgQuery_SelectStmt._StorageClass.defaultInstance;

    goto LABEL_29;
  }

  if (swift_getEnumCaseMultiPayload() != 56)
  {
    outlined destroy of PgQuery_ParseResult(v48, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_26;
  }

  outlined init with take of PgQuery_ParseResult(v48, v64, type metadata accessor for PgQuery_SelectStmt);
LABEL_29:
  outlined destroy of PgQuery_ParseResult(v77, type metadata accessor for PgQuery_Node);
  v66 = v73;
  outlined init with copy of PgQuery_ScanResult(v51, v73, type metadata accessor for PlanResources);
  SelectCore.init(select:resources:)(v64, v66, v84);
  outlined destroy of PgQuery_ParseResult(v51, type metadata accessor for PlanResources);
  outlined destroy of PgQuery_ParseResult(v74, type metadata accessor for PgQuery_CreateTableAsStmt);
  return memcpy(&v75[1], v84, 0x138uLL);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MaterializedView.CodingKeys()
{
  if (*v0)
  {
    return 0x7463656C6573;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MaterializedView.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7463656C6573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MaterializedView.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MaterializedView.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MaterializedView.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser16MaterializedViewV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser16MaterializedViewV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v9[14] = 1;
    lazy protocol witness table accessor for type SelectCore and conformance SelectCore();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t LogicalPlan.sql.getter()
{
  v1 = *(v0 + 336);

  return v1;
}

uint64_t LogicalPlan.documentation.getter()
{
  v1 = *(v0 + 352);

  return v1;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance LogicalPlan.CodingKeys()
{
  v1 = 7106931;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6F437463656C6573;
  }

  if (*v0)
  {
    v1 = 0x746E656D75636F64;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LogicalPlan.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized LogicalPlan.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LogicalPlan.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LogicalPlan.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LogicalPlan.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser11LogicalPlanV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser11LogicalPlanV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of LogicalPlanType(v3, v12);
  if (v12[328] == 1)
  {
    memcpy(v11, v12, sizeof(v11));
    v13 = 2;
    lazy protocol witness table accessor for type MaterializedView and conformance MaterializedView();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined destroy of MaterializedView(v11);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    memcpy(v11, v12, 0x138uLL);
    v13 = 3;
    lazy protocol witness table accessor for type SelectCore and conformance SelectCore();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v2)
    {
      outlined destroy of SelectCore(v11);
LABEL_7:
      v12[0] = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      v12[0] = 1;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      return (*(v6 + 8))(v9, v5);
    }

    outlined destroy of SelectCore(v11);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LogicalPlanType.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6F437463656C6573;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LogicalPlanType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F437463656C6573 && a2 == 0xEA00000000006572;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000184DDC910 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LogicalPlanType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LogicalPlanType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LogicalPlanType.MaterializedViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LogicalPlanType.MaterializedViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LogicalPlanType.MaterializedViewCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LogicalPlanType.SelectCoreCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LogicalPlanType.SelectCoreCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LogicalPlanType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO26MaterializedViewCodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO26MaterializedViewCodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO20SelectCoreCodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO20SelectCoreCodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of LogicalPlanType(v23, v25);
  v15 = (v11 + 8);
  if (v25[328])
  {
    memcpy(v24, v25, sizeof(v24));
    v26 = 1;
    lazy protocol witness table accessor for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type MaterializedView and conformance MaterializedView();
    v16 = v22;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v5, v16);
    outlined destroy of MaterializedView(v24);
  }

  else
  {
    memcpy(v24, v25, 0x138uLL);
    v26 = 0;
    lazy protocol witness table accessor for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type SelectCore and conformance SelectCore();
    v17 = v20;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v19 + 8))(v9, v17);
    outlined destroy of SelectCore(v24);
  }

  return (*v15)(v14, v10);
}

void SQLParseResult.init(sql:)(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ScanResult = type metadata accessor for PgQuery_ScanResult(0);
  MEMORY[0x1EEE9AC00](ScanResult, v6);
  v109 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for CharacterSet();
  v110 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v8);
  v112 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BinaryDecodingOptions();
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v108 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  ParseResult = type metadata accessor for PgQuery_ParseResult(0);
  MEMORY[0x1EEE9AC00](ParseResult, v16);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SQLParseResult(0);
  v20 = *(v19 + 28);
  v111 = a3;
  v21 = (a3 + v20);
  *v21 = a1;
  v21[1] = a2;
  v115 = a1;
  v22 = String.utf8CString.getter();
  v119 = a2;

  pg_query_parse_protobuf(v22 + 32, &v116);
  v23 = v116;
  v24 = *(&v116 + 1);
  v25 = v117;

  if (*(&v25 + 1))
  {
    if (**(&v25 + 1))
    {
      v26 = String.init(cString:)();
      v28 = v27;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      swift_allocError();
      v29 = v119;
      *v30 = v115;
      *(v30 + 8) = v29;
      *(v30 + 16) = v26;
      *(v30 + 24) = v28;
      *(v30 + 32) = 0;
      swift_willThrow();
LABEL_17:

      return;
    }

    goto LABEL_42;
  }

  v104 = v25;
  v105 = v19;
  v106 = v23;
  if (!v24)
  {
    goto LABEL_43;
  }

  v31 = v24;
  v32 = v24;
  v33 = v106;
  v34 = specialized Data.init(bytes:count:)(v31, v106);
  v36 = v35;
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  outlined copy of Data._Representation(v34, v35);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type PgQuery_ParseResult and conformance PgQuery_ParseResult(&lazy protocol witness table cache variable for type PgQuery_ParseResult and conformance PgQuery_ParseResult, type metadata accessor for PgQuery_ParseResult, &protocol conformance descriptor for PgQuery_ParseResult);
  v37 = v114;
  Message.init(serializedData:extensions:partial:options:)();
  if (v37)
  {

    outlined consume of Data._Representation(v34, v36);
    goto LABEL_17;
  }

  v114 = v34;
  v38 = v111;
  outlined init with take of PgQuery_ParseResult(v18, v111, type metadata accessor for PgQuery_ParseResult);
  deparse_protobuf = pg_query_deparse_protobuf(v33, v32);
  if (v40)
  {
    deparse_protobuf = *v40;
    if (*v40)
    {
LABEL_15:
      v52 = String.init(cString:)();
      v54 = v53;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      swift_allocError();
      v56 = v119;
      *v55 = v115;
      *(v55 + 8) = v56;
      *(v55 + 16) = v52;
      *(v55 + 24) = v54;
LABEL_16:
      *(v55 + 32) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v114, v36);
      outlined destroy of PgQuery_ParseResult(v38, type metadata accessor for PgQuery_ParseResult);
      goto LABEL_17;
    }

    __break(1u);
  }

  v100 = v40;
  if (!deparse_protobuf)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v41 = deparse_protobuf;
  v98 = v32;
  v42 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v99 = v41;
  v43 = [v42 initWithCString:v41 encoding:4];
  if (!v43)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v44 = v43;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v101 = v47;
  v48 = String.utf8CString.getter();
  pg_query_split_with_parser((v48 + 32), &v116);
  v49 = v116;
  v50 = DWORD2(v116);
  v51 = v117;

  if (*(&v51 + 1))
  {
    if (!**(&v51 + 1))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    goto LABEL_15;
  }

  v102 = v45;
  v97 = v51;
  v103 = v49;
  if (*(*(v38 + 8) + 16) != v50)
  {

    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    v78 = v119;
    *v55 = v115;
    *(v55 + 8) = v78;
    *(v55 + 16) = 0xD000000000000042;
    *(v55 + 24) = 0x8000000184DEA390;
    goto LABEL_16;
  }

  if ((v50 & 0x80000000) != 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v96 = v36;
  v95 = v50;
  if (v50)
  {
    ++v110;
    v57 = MEMORY[0x1E69E7CC0];
    v58 = v50;
    v59 = v103;
    while (v103)
    {
      v60 = *v59;
      if (!*v59)
      {
        goto LABEL_44;
      }

      v61 = v60[1];
      v62 = *v60;
      v63 = String.index(_:offsetBy:)();
      if (__OFADD__(v62, v61))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (String.index(_:offsetBy:)() >> 14 < v63 >> 14)
      {
        goto LABEL_40;
      }

      v64 = String.subscript.getter();
      v65 = MEMORY[0x1865F6210](v64);
      v67 = v66;

      *&v116 = v65;
      *(&v116 + 1) = v67;
      v68 = v112;
      static CharacterSet.whitespacesAndNewlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v69 = StringProtocol.trimmingCharacters(in:)();
      v70 = v68;
      v71 = v69;
      v73 = v72;
      (*v110)(v70, v113);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v57 = v76;
      }

      v74 = *(v57 + 16);
      if (v74 >= *(v57 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v57 = v77;
      }

      *(v57 + 16) = v74 + 1;
      v75 = v57 + 16 * v74;
      *(v75 + 32) = v71;
      *(v75 + 40) = v73;
      ++v59;
      if (!--v58)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_45;
  }

  v57 = MEMORY[0x1E69E7CC0];
LABEL_34:
  *(v111 + *(v105 + 24)) = v57;
  v79 = v115;
  v80 = String.utf8CString.getter();

  pg_query_scan(v80 + 32, v81);
  v82 = v116;
  v83 = *(&v116 + 1);
  v84 = v117;

  if (*(&v84 + 1))
  {
    if (**(&v84 + 1))
    {

      v85 = String.init(cString:)();
      v87 = v86;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      swift_allocError();
      v88 = v119;
      *v89 = v79;
      *(v89 + 8) = v88;
      *(v89 + 16) = v85;
      *(v89 + 24) = v87;
      *(v89 + 32) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v114, v96);
      outlined destroy of PgQuery_ParseResult(v111, type metadata accessor for PgQuery_ParseResult);

      goto LABEL_17;
    }

    goto LABEL_49;
  }

  v115 = v84;

  if (v83)
  {

    v90 = specialized Data.init(bytes:count:)(v83, v82);
    v92 = v91;
    v118 = 0;
    v116 = 0u;
    v117 = 0u;
    outlined copy of Data._Representation(v90, v91);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type PgQuery_ParseResult and conformance PgQuery_ParseResult(&lazy protocol witness table cache variable for type PgQuery_ScanResult and conformance PgQuery_ScanResult, type metadata accessor for PgQuery_ScanResult, &protocol conformance descriptor for PgQuery_ScanResult);
    v93 = v109;
    Message.init(serializedData:extensions:partial:options:)();
    outlined init with take of PgQuery_ParseResult(v93, v111 + *(v105 + 20), type metadata accessor for PgQuery_ScanResult);
    LODWORD(v116) = v82;
    *(&v116 + 1) = v83;
    v117 = v115;
    pg_query_free_scan_result(&v116);
    *&v116 = v103;
    DWORD2(v116) = v95;
    v117 = v97;
    pg_query_free_split_result(&v116);
    pg_query_free_deparse_result(v99, v100);
    LODWORD(v116) = v106;
    *(&v116 + 1) = v98;
    v117 = v104;
    pg_query_free_protobuf_parse_result(&v116);
    outlined consume of Data._Representation(v114, v96);
    outlined consume of Data._Representation(v90, v92);
    return;
  }

LABEL_50:
  __break(1u);
}

void *SQLParseResult.plans(with:)(uint64_t *a1)
{
  v3 = type metadata accessor for PlanResources(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for SQLTokenInformation(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  v14 = type metadata accessor for SQLParseResult(0);
  outlined init with copy of PgQuery_ScanResult(v1 + v14[5], v12, type metadata accessor for PgQuery_ScanResult);
  v15 = (v1 + v14[7]);
  v16 = *v15;
  v17 = v15[1];
  v18 = &v12[*(v9 + 28)];
  *v18 = v16;
  v18[1] = v17;
  outlined init with copy of PgQuery_ScanResult(v12, v7 + *(v4 + 28), type metadata accessor for SQLTokenInformation);
  *v7 = v13;
  v19 = *(v1 + 8);
  v20 = *(v1 + v14[6]);
  v24 = v12;
  v25 = v7;

  RawStmtVGSaySSGG_AH11LogicalPlanVsAE_pTg504_s14f11SQLParser15hi1_jk7VSSAA11lm3Vs5C33_pIgngrzo_AC_SStAEsAF_pIegnrzr_TRAJSSAOsAE_pIgngrzo_Tf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay14BiomeSQLParser15PgQuery_RawStmtVGSaySSGG_AH11LogicalPlanVsAE_pTg504_s14f11SQLParser15hi1_jk7VSSAA11lm3Vs5C33_pIgngrzo_AC_SStAEsAF_pIegnrzr_TRAJSSAOsAE_pIgngrzo_Tf1cn_n(v19, v20, partial apply for closure #1 in SQLParseResult.plans(with:), v23);

  outlined destroy of PgQuery_ParseResult(v7, type metadata accessor for PlanResources);
  outlined destroy of PgQuery_ParseResult(v12, type metadata accessor for SQLTokenInformation);
  return RawStmtVGSaySSGG_AH11LogicalPlanVsAE_pTg504_s14f11SQLParser15hi1_jk7VSSAA11lm3Vs5C33_pIgngrzo_AC_SStAEsAF_pIegnrzr_TRAJSSAOsAE_pIgngrzo_Tf1cn_n;
}

uint64_t closure #1 in SQLParseResult.plans(with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v127 = a5;
  v139 = a4;
  v120 = a6;
  v121 = a3;
  v119 = a2;
  v145 = a1;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v8 = MEMORY[0x1EEE9AC00](SelectStmt - 8, v7);
  v126 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v136 = &v118 - v11;
  v12 = type metadata accessor for PlanResources(0);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v125 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v124 = &v118 - v17;
  TableAsStmt = type metadata accessor for PgQuery_CreateTableAsStmt(0);
  v20 = MEMORY[0x1EEE9AC00](TableAsStmt - 8, v19);
  v122 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v123 = &v118 - v23;
  v147 = type metadata accessor for CharacterSet();
  v144 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147, v24);
  v146 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScanToken = type metadata accessor for PgQuery_ScanToken(0);
  v27 = *(ScanToken - 8);
  v29 = MEMORY[0x1EEE9AC00](ScanToken - 8, v28);
  v133 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = (&v118 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v118 - v36;
  Node = type metadata accessor for PgQuery_Node(0);
  v39 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v40);
  v42 = &v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = MEMORY[0x1EEE9AC00](v129, v43);
  v128 = &v118 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v131 = &v118 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v132 = &v118 - v51;
  MEMORY[0x1EEE9AC00](v50, v52);
  v138 = &v118 - v53;
  v145 = *&v145[*(type metadata accessor for PgQuery_RawStmt(0) + 20)];
  outlined init with copy of PgQuery_Alias?(&v145[OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmt], v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v54 = *(v39 + 48);
  if ((v54)(v37, 1, Node) == 1)
  {
    UnknownStorage.init()();
    v55 = *(Node + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
LABEL_55:
      v117 = v55;
      swift_once();
      v55 = v117;
    }

    *&v55[v42] = static PgQuery_Node._StorageClass.defaultInstance;
    v56 = (v54)(v37, 1, Node);

    if (v56 != 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }
  }

  else
  {
    outlined init with take of PgQuery_ParseResult(v37, v42, type metadata accessor for PgQuery_Node);
  }

  outlined init with copy of PgQuery_Alias?(*(v42 + *(Node + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v138, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  outlined destroy of PgQuery_ParseResult(v42, type metadata accessor for PgQuery_Node);
  v57 = *(v139 + 8);
  v37 = *(v57 + 16);
  if (!v37)
  {
LABEL_36:
    v93 = 0;
LABEL_37:
    v94 = v132;
    outlined init with copy of PgQuery_Alias?(v138, v132, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v95 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
    if ((*(*(v95 - 8) + 48))(v94, 1, v95) == 1)
    {
      v96 = v94;

LABEL_47:
      v149[0]._countAndFlagsBits = 0;
      v149[0]._object = 0xE000000000000000;
      _StringGuts.grow(_:)(90);
      MEMORY[0x1865F6280](0xD000000000000058, 0x8000000184DEA400);
      v109 = v138;
      outlined init with copy of PgQuery_Alias?(v138, v128, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
      v110 = String.init<A>(describing:)();
      MEMORY[0x1865F6280](v110);

      countAndFlagsBits = v149[0]._countAndFlagsBits;
      object = v149[0]._object;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      swift_allocError();
      *v113 = countAndFlagsBits;
      *(v113 + 8) = object;
      *(v113 + 16) = 0;
      *(v113 + 24) = 0;
      *(v113 + 32) = 1;
      swift_willThrow();
      v108 = v109;
      goto LABEL_48;
    }

    v96 = v94;
    outlined init with copy of PgQuery_Alias?(v94, v131, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 56)
    {
      v104 = v136;
      outlined init with take of PgQuery_ParseResult(v131, v136, type metadata accessor for PgQuery_SelectStmt);
      v105 = v126;
      outlined init with copy of PgQuery_ScanResult(v104, v126, type metadata accessor for PgQuery_SelectStmt);
      v106 = v125;
      outlined init with copy of PgQuery_ScanResult(v127, v125, type metadata accessor for PlanResources);
      v107 = v141;
      SelectCore.init(select:resources:)(v105, v106, v149);
      if (v107)
      {

        v102 = type metadata accessor for PgQuery_SelectStmt;
        v103 = v104;
        goto LABEL_45;
      }

      outlined destroy of PgQuery_ParseResult(v104, type metadata accessor for PgQuery_SelectStmt);
      _s10Foundation4UUIDVSgWOhTm_0(v138, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
      LOBYTE(v149[20]._object) = 0;
    }

    else
    {
      if (EnumCaseMultiPayload != 90)
      {

        outlined destroy of PgQuery_ParseResult(v131, type metadata accessor for PgQuery_Node.OneOf_Node);
        goto LABEL_47;
      }

      v98 = v123;
      outlined init with take of PgQuery_ParseResult(v131, v123, type metadata accessor for PgQuery_CreateTableAsStmt);
      v99 = v122;
      outlined init with copy of PgQuery_ScanResult(v98, v122, type metadata accessor for PgQuery_CreateTableAsStmt);
      v100 = v124;
      outlined init with copy of PgQuery_ScanResult(v127, v124, type metadata accessor for PlanResources);
      v101 = v141;
      MaterializedView.init(create:resources:)(v99, v100, v149);
      if (v101)
      {

        v102 = type metadata accessor for PgQuery_CreateTableAsStmt;
        v103 = v98;
LABEL_45:
        outlined destroy of PgQuery_ParseResult(v103, v102);
        v108 = v138;
LABEL_48:
        _s10Foundation4UUIDVSgWOhTm_0(v108, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
        v114 = v96;
        return _s10Foundation4UUIDVSgWOhTm_0(v114, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
      }

      outlined destroy of PgQuery_ParseResult(v98, type metadata accessor for PgQuery_CreateTableAsStmt);
      _s10Foundation4UUIDVSgWOhTm_0(v138, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
      LOBYTE(v149[20]._object) = 1;
    }

    v115 = v120;
    memcpy(v120, v149, 0x149uLL);
    v116 = v121;
    v115[42] = v119;
    v115[43] = v116;
    v115[44] = v37;
    v115[45] = v93;

    v114 = v96;
    return _s10Foundation4UUIDVSgWOhTm_0(v114, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  v42 = 0;
  v55 = v145;
  v58 = *&v145[OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation];
  v142 = *(v139 + 8);
  while (1)
  {
    if (v42 >= *(v57 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    Node = v57 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v54 = *(v27 + 72);
    outlined init with copy of PgQuery_ScanResult(Node + v54 * v42, v33, type metadata accessor for PgQuery_ScanToken);
    v59 = *v33;
    outlined destroy of PgQuery_ParseResult(v33, type metadata accessor for PgQuery_ScanToken);
    if (v59 >= v58)
    {
      break;
    }

    ++v42;
    v57 = v142;
    if (v37 == v42)
    {
      goto LABEL_35;
    }
  }

  v134 = v54;
  v135 = Node;
  v150 = MEMORY[0x1E69E7CC0];
  result = v142;
  Node = *(v142 + 16);
  v61 = v133;
  if (Node >= v42)
  {
    v62 = v42;

    if (Node != v42)
    {
      v145 = (v144 + 8);
      v42 = v136;
      v130 = Node;
      while (1)
      {
        v140 = v62;
        outlined init with copy of PgQuery_ScanResult(v135 + v62 * v134, v61, type metadata accessor for PgQuery_ScanToken);
        v64 = *(v61 + 8);
        if (*(v61 + 16) != 1 || (v64 - 37) >= 2)
        {
          break;
        }

        PgQuery_Token.rawValue.getter(v64, 1);
        v66 = v139 + *(type metadata accessor for SQLTokenInformation(0) + 20);
        v33 = *v66;
        v37 = *(v66 + 8);
        v27 = String.index(_:offsetBy:)();
        if (String.index(_:offsetBy:)() >> 14 < v27 >> 14)
        {
          goto LABEL_54;
        }

        v67 = String.subscript.getter();
        v68 = MEMORY[0x1865F6210](v67);
        v70 = v69;

        v149[0]._countAndFlagsBits = v68;
        v149[0]._object = v70;
        v71 = v146;
        static CharacterSet.whitespaces.getter();
        v144 = lazy protocol witness table accessor for type String and conformance String();
        v72 = StringProtocol.trimmingCharacters(in:)();
        v74 = v73;
        v143 = *v145;
        v143(v71, v147);

        v149[0]._countAndFlagsBits = 10;
        v149[0]._object = 0xE100000000000000;
        MEMORY[0x1EEE9AC00](v75, v76);
        *(&v118 - 2) = v149;
        v77 = v141;
        v54 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v118 - 4), v72, v74, &v118);
        v78 = *(v54 + 16);
        v141 = v77;
        if (v78)
        {
          v148 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78, 0);
          v79 = v148;
          v137 = v54;
          v80 = (v54 + 56);
          do
          {
            v81 = *(v80 - 3);
            v82 = *(v80 - 2);
            v84 = *(v80 - 1);
            v83 = *v80;

            if (Substring.distance(from:to:)())
            {
              v149[0]._countAndFlagsBits = MEMORY[0x1865F6210](v81, v82, v84, v83);
              v149[0]._object = v85;
              v86 = v146;
              static CharacterSet.whitespaces.getter();
              v87 = StringProtocol.trimmingCharacters(in:)();
              v89 = v88;

              v143(v86, v147);
            }

            else
            {

              v89 = 0xE100000000000000;
              v87 = 10;
            }

            v148 = v79;
            v54 = *(v79 + 16);
            v90 = *(v79 + 24);
            if (v54 >= v90 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v90 > 1, v54 + 1, 1);
              v79 = v148;
            }

            *(v79 + 16) = v54 + 1;
            v91 = v79 + 16 * v54;
            *(v91 + 32) = v87;
            *(v91 + 40) = v89;
            v80 += 4;
            --v78;
          }

          while (v78);

          v42 = v136;
          v61 = v133;
          Node = v130;
        }

        else
        {

          v79 = MEMORY[0x1E69E7CC0];
        }

        v63 = v140 + 1;
        specialized Array.append<A>(contentsOf:)(v79);
        outlined destroy of PgQuery_ParseResult(v61, type metadata accessor for PgQuery_ScanToken);
        v62 = v63;
        if (v63 == Node)
        {
          goto LABEL_32;
        }
      }

      outlined destroy of PgQuery_ParseResult(v61, type metadata accessor for PgQuery_ScanToken);
    }

LABEL_32:

    if (*(v150 + 16))
    {
      v149[0]._countAndFlagsBits = v150;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v37 = BidirectionalCollection<>.joined(separator:)();
      v93 = v92;

      goto LABEL_37;
    }

LABEL_35:
    v37 = 0;
    goto LABEL_36;
  }

  __break(1u);
  return result;
}