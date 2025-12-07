uint64_t protocol witness for CodingKey.stringValue.getter in conformance AggregationFunction.CodingKeys()
{
  if (*v0)
  {
    return 0x79546E7275746572;
  }

  else
  {
    return 0x7461676572676761;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AggregationFunction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461676572676761 && a2 == 0xEF657079546E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79546E7275746572 && a2 == 0xEA00000000006570)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AggregationFunction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AggregationFunction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AggregationFunction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser19AggregationFunctionV10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type AggregationFunction.CodingKeys and conformance AggregationFunction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  lazy protocol witness table accessor for type AggregationFunction.AggregationType and conformance AggregationFunction.AggregationType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + 193);
    v10[13] = 1;
    lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
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
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t protocol witness for SQLExpressionNode.returnType.getter in conformance SQLExpressionConst()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v1);
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
  result = MEMORY[0x259C33090](v3);
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
        outlined destroy of URL?(v46, &_s14BiomeSQLParser19AggregationFunctionV0C4TypeO_AEtMd, &_s14BiomeSQLParser19AggregationFunctionV0C4TypeO_AEtMR);
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
    outlined destroy of URL?(v45, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
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

        outlined destroy of URL?(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        outlined destroy of URL?(v28, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        outlined destroy of SQLExpression(v6);
        outlined destroy of SQLExpression(v29);
        outlined destroy of SQLExpression(&v33);
        outlined destroy of SQLExpression(v10);
        outlined destroy of URL?(&v15, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        goto LABEL_39;
      }

      outlined destroy of URL?(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      outlined destroy of URL?(v28, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      outlined destroy of SQLExpression(v29);
      outlined destroy of SQLExpression(&v33);
      outlined destroy of SQLExpression(v10);
    }

    else
    {
      outlined destroy of URL?(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      outlined destroy of URL?(v28, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      outlined destroy of SQLExpression(v29);
      outlined destroy of SQLExpression(&v33);
      if (!*(&v22 + 1))
      {
        outlined destroy of URL?(&v15, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        v3 = 1;
        goto LABEL_39;
      }
    }

    outlined destroy of URL?(&v15, &_s14BiomeSQLParser13SQLExpressionVSg_ADtMd, &_s14BiomeSQLParser13SQLExpressionVSg_ADtMR);
  }

  else
  {
    outlined destroy of URL?(v27, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined destroy of URL?(v28, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined destroy of SQLExpression(v29);
    outlined destroy of SQLExpression(&v33);
  }

  v3 = 0;
LABEL_39:
  outlined destroy of AggregationFunction.AggregationType(v46);
  return v3 & 1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLExpression(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for SQLExpression(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14BiomeSQLParser19AggregationFunctionV0C4TypeO(uint64_t a1)
{
  if ((*(a1 + 192) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 192) & 7;
  }
}

__n128 __swift_memcpy194_8(uint64_t a1, uint64_t a2)
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
              type metadata accessor for (op: String, dataType: SQLDataType)(319, &lazy cache variable for type metadata for (table: String, column: String), MEMORY[0x277D837D0], "table column ");
              if (v7 <= 0x3F)
              {
                type metadata accessor for (column: String)();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for (function: String, argTypes: [SQLDataType])(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for (op: String, dataType: SQLDataType)(319, &lazy cache variable for type metadata for (column: String, tokenColumn: String), MEMORY[0x277D837D0], "column tokenColumn ");
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
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &lazy cache variable for type metadata for (numNotArgExprs: Int));
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
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (column: String));
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
  v203[9] = *MEMORY[0x277D85DE8];
  v191 = *(a1 + 16);
  v190 = a1;
  if (!v191)
  {
    v2 = MEMORY[0x277D84F98];
LABEL_48:
    v54 = *(v2 + 32);
    v10 = v2;
    v2 = (((1 << v54) + 63) >> 6);
    if ((v54 & 0x3Fu) > 0xD)
    {
      goto LABEL_188;
    }

LABEL_49:
    MEMORY[0x28223BE20](a1);
    v56 = (&v186 - ((v55 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v56, v55);
    v57 = 0;
    v58 = 0;
    v59 = v10;
    v61 = *(v10 + 64);
    v10 += 64;
    v60 = v61;
    v62 = 1 << *(v10 - 32);
    v63 = -1;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    v64 = v63 & v60;
    v65 = (v62 + 63) >> 6;
    while (1)
    {
      if (v64)
      {
        v66 = __clz(__rbit64(v64));
        v64 &= v64 - 1;
        v67 = v66 | (v58 << 6);
      }

      else
      {
        v68 = v58;
        do
        {
          v58 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            goto LABEL_182;
          }

          if (v58 >= v65)
          {
            goto LABEL_63;
          }

          v69 = *(v10 + 8 * v58);
          ++v68;
        }

        while (!v69);
        v64 = (v69 - 1) & v69;
        v67 = __clz(__rbit64(v69)) | (v58 << 6);
      }

      if (*(*(v59 + 56) + 8 * v67) >= 2)
      {
        *(v56 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
        v21 = __OFADD__(v57++, 1);
        if (v21)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_63:
    if (v57)
    {
      v10 = v59;
      if (v57 == *(v59 + 16))
      {

        v70 = v59;
      }

      else
      {
        countAndFlagsBits = &v186;
        v199 = v2;
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
        v70 = static _DictionaryStorage.allocate(capacity:)();
        v71 = 0;
        v72 = *v56;
        v73 = v70 + 64;
        v74 = v59;
        do
        {
          if (v72)
          {
            v78 = __clz(__rbit64(v72));
            v72 &= v72 - 1;
          }

          else
          {
            v79 = v71;
            do
            {
              v71 = v79 + 1;
              if (__OFADD__(v79, 1))
              {
                goto LABEL_186;
              }

              if (v71 >= v199)
              {
                goto LABEL_86;
              }

              v80 = v56[v71];
              ++v79;
            }

            while (!v80);
            v78 = __clz(__rbit64(v80));
            v72 = (v80 - 1) & v80;
          }

          v81 = v78 | (v71 << 6);
          v82 = (*(v74 + 48) + 16 * v81);
          v83 = *v82;
          v10 = v82[1];
          v201 = *(*(v74 + 56) + 8 * v81);
          Hasher.init(_seed:)();

          v200 = v83;
          String.hash(into:)();
          v2 = v203;
          v84 = Hasher._finalize()();
          v85 = -1 << *(v70 + 32);
          v86 = v84 & ~v85;
          v87 = v86 >> 6;
          if (((-1 << v86) & ~*(v73 + 8 * (v86 >> 6))) != 0)
          {
            v75 = __clz(__rbit64((-1 << v86) & ~*(v73 + 8 * (v86 >> 6)))) | v86 & 0x7FFFFFFFFFFFFFC0;
            v74 = v59;
          }

          else
          {
            v88 = 0;
            v89 = (63 - v85) >> 6;
            v74 = v59;
            do
            {
              if (++v87 == v89 && (v88 & 1) != 0)
              {
                goto LABEL_187;
              }

              v90 = v87 == v89;
              if (v87 == v89)
              {
                v87 = 0;
              }

              v88 |= v90;
              v91 = *(v73 + 8 * v87);
            }

            while (v91 == -1);
            v75 = __clz(__rbit64(~v91)) + (v87 << 6);
          }

          *(v73 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v75;
          v76 = (*(v70 + 48) + 16 * v75);
          v77 = v201;
          *v76 = v200;
          v76[1] = v10;
          *(*(v70 + 56) + 8 * v75) = v77;
          ++*(v70 + 16);
          --v57;
        }

        while (v57);
      }
    }

    else
    {
      v70 = MEMORY[0x277D84F98];
    }

LABEL_86:

    v92 = v193;
LABEL_87:
    v93 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSiG_SSs5NeverOTg5181_s14BiomeSQLParser14ColumnResolver33_B787555787B9EFBBEFB0C9C5225A4FB7LLV7schemasADSayAA6SchemaVG_tKcfcS2S3key_Si5valuet_tcfu_32a168a102879cc1a6a91172b0770f0c91SSAI_SiAJtSSTf3nnnpk_nTf1cn_n(v70);
    v188 = v92;

    v94 = MEMORY[0x259C32D20](*(v93 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    v202 = v94;
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

        v2 = &v202;
        specialized Set._Variant.insert(_:)(v203, v10, v98);

        v97 += 2;
      }

      while (v95 != v96);
      v99 = v202;
    }

    else
    {
      v99 = v94;
    }

    if (!v191)
    {
      return MEMORY[0x277D84F98];
    }

    v100 = 0;
    v189 = v190 + 32;
    v101 = v99 + 56;
    v102 = MEMORY[0x277D84F98];
    v192 = v99;
    v193 = (v99 + 56);
LABEL_96:
    v103 = (v189 + 24 * v100);
    v104 = v103[1];
    v197 = *v103;
    v105 = v103[2];
    v190 = v100 + 1;
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
    v2 = ((v107 + 63) >> 6);
    v199 = v104;

    v200 = v105;
    swift_bridgeObjectRetain_n();
    v110 = 0;
    v195 = v2;
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

            v100 = v190;
            if (v190 == v191)
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
      v114 = (*(v200 + 48) + 16 * v113);
      v115 = *v114;
      object = v114[1];
      LODWORD(v201) = *(*(v200 + 56) + v113);
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
      v203[0] = v197;
      v203[1] = v199;

      MEMORY[0x259C32B90](46, 0xE100000000000000);
      MEMORY[0x259C32B90](v115, object);

      v134 = String.lowercased()();
      object = v134._object;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v203[0] = v102;
      v2 = v102;
      v136 = specialized __RawDictionaryStorage.find<A>(_:)(v134._countAndFlagsBits, v134._object);
      v138 = *(v102 + 16);
      v139 = (v137 & 1) == 0;
      v21 = __OFADD__(v138, v139);
      v140 = v138 + v139;
      if (v21)
      {
        goto LABEL_179;
      }

      v10 = v137;
      if (*(v102 + 24) < v140)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v140, isUniquelyReferenced_nonNull_native);
        v102 = v203[0];
        v2 = v203[0];
        v136 = specialized __RawDictionaryStorage.find<A>(_:)(v134._countAndFlagsBits, v134._object);
        if ((v10 & 1) != (v141 & 1))
        {
          goto LABEL_195;
        }

LABEL_133:
        v101 = v193;
        goto LABEL_134;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_133;
      }

      countAndFlagsBits = v136;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      v144 = static _DictionaryStorage.copy(original:)();
      v145 = *(v102 + 16);
      v194 = v144;
      if (v145)
      {
        v146 = v144;
        v147 = (v144 + 64);
        v2 = (v102 + 64);
        v148 = ((1 << *(v146 + 32)) + 63) >> 6;
        if (v146 != v102 || v147 >= &v2[v148])
        {
          memmove(v147, (v102 + 64), 8 * v148);
        }

        v149 = 0;
        v194[2] = *(v102 + 16);
        v150 = 1 << *(v102 + 32);
        v151 = *(v102 + 64);
        if (v150 < 64)
        {
          v152 = ~(-1 << v150);
        }

        else
        {
          v152 = -1;
        }

        v153 = v152 & v151;
        v154 = (v150 + 63) >> 6;
        if ((v152 & v151) != 0)
        {
          do
          {
            v155 = __clz(__rbit64(v153));
            v153 &= v153 - 1;
LABEL_151:
            v158 = v155 | (v149 << 6);
            v159 = (*(v102 + 48) + 16 * v158);
            v161 = *v159;
            v160 = v159[1];
            LOBYTE(v159) = *(*(v102 + 56) + v158);
            v162 = v194;
            v163 = (v194[6] + 16 * v158);
            *v163 = v161;
            v163[1] = v160;
            *(v162[7] + v158) = v159;
          }

          while (v153);
        }

        v156 = v149;
        while (1)
        {
          v149 = v156 + 1;
          if (__OFADD__(v156, 1))
          {
            goto LABEL_193;
          }

          if (v149 >= v154)
          {
            break;
          }

          v157 = v2[v149];
          ++v156;
          if (v157)
          {
            v155 = __clz(__rbit64(v157));
            v153 = (v157 - 1) & v157;
            goto LABEL_151;
          }
        }

        v99 = v192;
      }

      v136 = countAndFlagsBits;
      v101 = v193;
      v102 = v194;
LABEL_134:
      v109 &= v109 - 1;
      if (v10)
      {
        v111 = v136;

        *(*(v102 + 56) + v111) = v201;
      }

      else
      {
        *(v102 + 8 * (v136 >> 6) + 64) |= 1 << v136;
        *(*(v102 + 48) + 16 * v136) = v134;
        *(*(v102 + 56) + v136) = v201;
        v142 = *(v102 + 16);
        v21 = __OFADD__(v142, 1);
        v143 = v142 + 1;
        if (v21)
        {
          goto LABEL_183;
        }

        *(v102 + 16) = v143;
      }

      v110 = v112;
      v2 = v195;
    }

LABEL_118:
    v121 = String.lowercased()();
    v10 = v121._object;
    v2 = v102;
    v122 = swift_isUniquelyReferenced_nonNull_native();
    v203[0] = v2;
    countAndFlagsBits = v121._countAndFlagsBits;
    v124 = specialized __RawDictionaryStorage.find<A>(_:)(v121._countAndFlagsBits, v121._object);
    v125 = v2[2];
    v126 = (v123 & 1) == 0;
    v127 = v125 + v126;
    if (__OFADD__(v125, v126))
    {
      goto LABEL_180;
    }

    v128 = v123;
    v194 = v2;
    if (v2[3] < v127)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v127, v122);
      v102 = v203[0];
      v2 = v203[0];
      v129 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v121._object);
      if ((v128 & 1) != (v130 & 1))
      {
        goto LABEL_195;
      }

      v124 = v129;
      if (v128)
      {
        goto LABEL_122;
      }

LABEL_125:
      *(v102 + 8 * (v124 >> 6) + 64) |= 1 << v124;
      v131 = (*(v102 + 48) + 16 * v124);
      *v131 = countAndFlagsBits;
      v131[1] = v121._object;
      *(*(v102 + 56) + v124) = v201;
      v132 = *(v102 + 16);
      v21 = __OFADD__(v132, 1);
      v133 = v132 + 1;
      if (v21)
      {
        goto LABEL_185;
      }

      *(v102 + 16) = v133;
      goto LABEL_127;
    }

    if (v122)
    {
      v102 = v194;
      if ((v123 & 1) == 0)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      v164 = v194;
      v165 = static _DictionaryStorage.copy(original:)();
      v166 = v164;
      v102 = v165;
      if (v166[2])
      {
        v167 = (v165 + 64);
        v168 = (v166 + 8);
        v169 = ((1 << *(v102 + 32)) + 63) >> 6;
        v186 = v166 + 8;
        if (v102 != v166 || v167 >= &v168[8 * v169])
        {
          memmove(v167, v168, 8 * v169);
        }

        v170 = 0;
        v171 = v194;
        *(v102 + 16) = v194[2];
        v172 = 1 << *(v171 + 32);
        v173 = v171[8];
        if (v172 < 64)
        {
          v174 = ~(-1 << v172);
        }

        else
        {
          v174 = -1;
        }

        v175 = v174 & v173;
        v2 = ((v172 + 63) >> 6);
        if (!v175)
        {
          goto LABEL_162;
        }

        while (1)
        {
          v176 = __clz(__rbit64(v175));
          for (j = (v175 - 1) & v175; ; j = (v178 - 1) & v178)
          {
            v179 = v176 | (v170 << 6);
            v180 = (v194[6] + 16 * v179);
            v182 = *v180;
            v181 = v180[1];
            LOBYTE(v180) = *(v194[7] + v179);
            v183 = (*(v102 + 48) + 16 * v179);
            *v183 = v182;
            v183[1] = v181;
            *(*(v102 + 56) + v179) = v180;

            v175 = j;
            if (j)
            {
              break;
            }

LABEL_162:
            v177 = v170;
            do
            {
              v170 = v177 + 1;
              if (__OFADD__(v177, 1))
              {
                goto LABEL_194;
              }

              if (v170 >= v2)
              {
                goto LABEL_169;
              }

              v178 = v186[v170];
              ++v177;
            }

            while (!v178);
            v176 = __clz(__rbit64(v178));
          }
        }
      }

LABEL_169:

      if ((v128 & 1) == 0)
      {
        goto LABEL_125;
      }
    }

LABEL_122:

    *(*(v102 + 56) + v124) = v201;
LABEL_127:
    v99 = v192;
    goto LABEL_128;
  }

  v1 = 0;
  v194 = (a1 + 32);
  v2 = MEMORY[0x277D84F98];
  v3 = MEMORY[0x277D84F98];
LABEL_4:
  v4 = &v194[3 * v1];
  v5 = v4[2];
  v195 = v4[1];
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

  v199 = v5;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  v197 = v5 + 64;
  for (countAndFlagsBits = v10; ; v10 = countAndFlagsBits)
  {
    if (!v9)
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_176;
        }

        if (v12 >= v10)
        {
          break;
        }

        v9 = *(v6 + 8 * v12);
        ++v11;
        if (v9)
        {
          goto LABEL_15;
        }
      }

      v1 = i;
      if (i == v191)
      {
        goto LABEL_48;
      }

      goto LABEL_4;
    }

    v12 = v11;
LABEL_15:
    v13 = (*(v199 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    v14 = *v13;
    v15 = v13[1];
    v16 = v2[2];

    v201 = v14;
    if (v16)
    {

      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
      v19 = v18;

      if (v19)
      {
        v20 = *(v2[7] + 8 * v17);
      }

      else
      {
        v20 = 0;
      }

      v14 = v201;
      v6 = v197;
    }

    else
    {
      v20 = 0;
    }

    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_177;
    }

    v200 = v22;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v203[0] = v3;
    v2 = v3;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v25 = *(v3 + 16);
    v26 = (v24 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    object = v24;
    if (*(v3 + 24) >= v27)
    {
      if ((v23 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
        v192 = static _DictionaryStorage.copy(original:)();
        if (*(v3 + 16))
        {
          v35 = (v192 + 64);
          v36 = (v3 + 64);
          v37 = ((1 << *(v192 + 32)) + 63) >> 6;
          v189 = v3 + 64;
          if (v192 != v3 || v35 >= &v36[8 * v37])
          {
            memmove(v35, v36, 8 * v37);
          }

          v38 = 0;
          *(v192 + 16) = *(v3 + 16);
          v39 = 1 << *(v3 + 32);
          v40 = *(v3 + 64);
          if (v39 < 64)
          {
            v41 = ~(-1 << v39);
          }

          else
          {
            v41 = -1;
          }

          v42 = v41 & v40;
          v43 = (v39 + 63) >> 6;
          if ((v41 & v40) != 0)
          {
            do
            {
              v44 = __clz(__rbit64(v42));
              v42 &= v42 - 1;
LABEL_44:
              v47 = v44 | (v38 << 6);
              v48 = (*(v3 + 48) + 16 * v47);
              v50 = *v48;
              v49 = v48[1];
              v51 = *(*(v3 + 56) + 8 * v47);
              v52 = v192;
              v53 = (*(v192 + 48) + 16 * v47);
              *v53 = v50;
              v53[1] = v49;
              *(*(v52 + 56) + 8 * v47) = v51;
            }

            while (v42);
          }

          v45 = v38;
          while (1)
          {
            v38 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
            }

            if (v38 >= v43)
            {
              break;
            }

            v46 = *(v189 + 8 * v38);
            ++v45;
            if (v46)
            {
              v44 = __clz(__rbit64(v46));
              v42 = (v46 - 1) & v46;
              goto LABEL_44;
            }
          }
        }

        v2 = v192;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, v23);
      v2 = v203[0];
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v201, v15);
      if ((object & 1) != (v30 & 1))
      {
LABEL_195:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_196;
      }

      v10 = v29;
      v2 = v203[0];
    }

    v9 &= v9 - 1;
    if (object)
    {

      *(v2[7] + 8 * v10) = v200;
    }

    else
    {
      v2[(v10 >> 6) + 8] |= 1 << v10;
      v31 = (v2[6] + 16 * v10);
      v32 = v200;
      *v31 = v201;
      v31[1] = v15;
      *(v2[7] + 8 * v10) = v32;
      v33 = v2[2];
      v21 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v21)
      {
        goto LABEL_181;
      }

      v2[2] = v34;
    }

    v3 = v2;
    v11 = v12;
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

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_49;
  }

  object = swift_slowAlloc();

  v92 = v193;
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSiG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_SiTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSSiIsgnndzo_Tf1nc_n(object, v2, v10, closure #2 in ColumnResolver.init(schemas:));
  v2 = v92;
  if (!v92)
  {
    v70 = v185;

    MEMORY[0x259C33C60](object, -1, -1);

    goto LABEL_87;
  }

LABEL_196:

  result = MEMORY[0x259C33C60](object, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized SQLExpression.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002553B6650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79546E7275746572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002553B6670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

  return MEMORY[0x2821FE8E8](v0, 56, 7);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
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

uint64_t getEnumTagSinglePayload for Binding(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for Binding(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
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

uint64_t storeEnumTagSinglePayload for SQLExpressionConstString(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v17 = MEMORY[0x277D84F90];
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
      outlined init with take of SQLExpressionNode(v16, v6 + 40 * v13 + 32);
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
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v23 = MEMORY[0x277D84F90];
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
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
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
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v21 = MEMORY[0x277D84F90];
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
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
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
  v5 = MEMORY[0x28223BE20](ScanToken - 8);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  ParseResult = MEMORY[0x28223BE20](v8);
  v14 = &v29 - v13;
  v15 = *(v1 + 8);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_11;
      }

      outlined init with copy of PgQuery_ScanResult(v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, v7, type metadata accessor for PgQuery_ScanToken);
      if (*v7 == v2)
      {
        break;
      }

      ++v17;
      ParseResult = outlined destroy of PgQuery_ParseResult(v7, type metadata accessor for PgQuery_ScanToken);
      if (v16 == v17)
      {
        goto LABEL_6;
      }
    }

    outlined init with take of PgQuery_ParseResult(v7, v10, type metadata accessor for PgQuery_ScanToken);
    outlined init with take of PgQuery_ParseResult(v10, v14, type metadata accessor for PgQuery_ScanToken);
    type metadata accessor for SQLTokenInformation(0);
    v25 = String.index(_:offsetBy:)();
    ParseResult = String.index(_:offsetBy:)();
    if (ParseResult >> 14 >= v25 >> 14)
    {
      v26 = String.subscript.getter();
      v23 = MEMORY[0x259C32B00](v26);
      v2 = v27;

      outlined destroy of PgQuery_ParseResult(v14, type metadata accessor for PgQuery_ScanToken);
      goto LABEL_9;
    }

LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_6:
    v18 = (v1 + *(type metadata accessor for SQLTokenInformation(0) + 20));
    v20 = *v18;
    v19 = v18[1];
    v30 = 0;
    v31 = 0xE000000000000000;

    _StringGuts.grow(_:)(28);

    v30 = 0xD00000000000001ALL;
    v31 = 0x80000002553B6A20;
    v32 = v2;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x259C32B90](v21);

    v22 = v30;
    v23 = v31;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v24 = v20;
    *(v24 + 8) = v19;
    *(v24 + 16) = v22;
    *(v24 + 24) = v23;
    *(v24 + 32) = 0;
    swift_willThrow();
LABEL_9:
    ParseResult = v23;
    v12 = v2;
  }

  result._object = v12;
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
          MEMORY[0x259C32B90](0xD000000000000029, 0x80000002553B67B0);
          MEMORY[0x259C32B90](v2, v1);
          MEMORY[0x259C32B90](0x6120687469772022, 0xEE0022203A736772);
          v11 = MEMORY[0x259C32CC0](v3, MEMORY[0x277D837D0]);
          MEMORY[0x259C32B90](v11);

LABEL_25:
          v6 = 34;
          v7 = 0xE100000000000000;
          goto LABEL_26;
        }

        v13 = 0;
        _StringGuts.grow(_:)(53);
        MEMORY[0x259C32B90](0xD000000000000032, 0x80000002553B67E0);
        goto LABEL_23;
      }

      _StringGuts.grow(_:)(42);

      v13 = 0x20656C626154;
      MEMORY[0x259C32B90](v2, v1);
      v6 = 0xD000000000000022;
      v7 = 0x80000002553B6820;
LABEL_26:
      MEMORY[0x259C32B90](v6, v7);
      return v13;
    }

    if (!*(v0 + 32))
    {
      _StringGuts.grow(_:)(29);

      v13 = 0xD000000000000016;
      MEMORY[0x259C32B90](v3, v4);
      MEMORY[0x259C32B90](657954, 0xE300000000000000);
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
    MEMORY[0x259C32B90](0xD00000000000005CLL, 0x80000002553B66B0);
    MEMORY[0x259C32B90](v2, v1);
    MEMORY[0x259C32B90](0x6F73616552202E22, 0xEC00000022203A6ELL);
    v9 = v3;
    v10 = v4;
LABEL_24:
    MEMORY[0x259C32B90](v9, v10);
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

void protocol witness for RawRepresentable.rawValue.getter in conformance SQLDataType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x72656765746E69;
  v5 = 1684632949;
  if (v2 != 6)
  {
    v5 = 1819047278;
  }

  v6 = 1635017060;
  if (v2 != 4)
  {
    v6 = 1852797802;
  }

  if (*v1 <= 5u)
  {
    v5 = v6;
  }

  v7 = 0xE600000000000000;
  v8 = 0x676E69727473;
  if (v2 != 2)
  {
    v8 = 1702125924;
    v7 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x656C62756F64;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 3u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v9;
  a1[1] = v3;
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

uint64_t SQLRawDataType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x52454745544E49;
  v3 = 1415071060;
  v4 = 1112493122;
  if (v1 != 3)
  {
    v4 = 1280070990;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1279346002;
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

void protocol witness for RawRepresentable.rawValue.getter in conformance SQLRawDataType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x52454745544E49;
  v5 = 1415071060;
  v6 = 1112493122;
  if (v2 != 3)
  {
    v6 = 1280070990;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 1279346002;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

BiomeSQLParser::DatabaseCatalog __swiftcall DatabaseCatalog.init(schemas:)(Swift::OpaquePointer schemas)
{
  v35 = v1;
  v3 = *(schemas._rawValue + 2);
  if (!v3)
  {

    v4 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_7;
    }

LABEL_19:
    v12 = MEMORY[0x277D84F98];
    goto LABEL_20;
  }

  v38 = MEMORY[0x277D84F90];
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
  MEMORY[0x259C32B90](0xD00000000000001BLL, 0x80000002553B68D0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x259C32B90](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792, 0);
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

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DatabaseCatalog.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DatabaseCatalog.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser15DatabaseCatalogV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser15DatabaseCatalogV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14BiomeSQLParser6SchemaVGMd, &_sSDySS14BiomeSQLParser6SchemaVGMR);
  lazy protocol witness table accessor for type [String : Schema] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Schema] and conformance <> [A : B], lazy protocol witness table accessor for type Schema and conformance Schema, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v6, v3);
}

uint64_t DatabaseCatalog.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14BiomeSQLParser15DatabaseCatalogV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedDecodingContainerVy14BiomeSQLParser15DatabaseCatalogV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type DatabaseCatalog.CodingKeys and conformance DatabaseCatalog.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14BiomeSQLParser6SchemaVGMd, &_sSDySS14BiomeSQLParser6SchemaVGMR);
    lazy protocol witness table accessor for type [String : Schema] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Schema] and conformance <> [A : B], lazy protocol witness table accessor for type Schema and conformance Schema, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
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

uint64_t Schema.tableName.getter()
{
  v1 = *v0;

  return v1;
}

BiomeSQLParser::Schema __swiftcall Schema.init(tableName:columns:)(Swift::String tableName, Swift::OpaquePointer columns)
{
  *v2 = tableName;
  *(v2 + 16) = columns;
  result.tableName = tableName;
  result.columns = columns;
  return result;
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
    v5 = 0x80000002553B6CE0;
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

uint64_t static Schema.JSONEach(with:)@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v13[0] = 0x65756C6176;
  v13[1] = 0xE500000000000000;
  v14 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
  v4 = static _DictionaryStorage.allocate(capacity:)();

  outlined destroy of URL?(v13, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x65756C6176, 0xE500000000000000);
  v7 = v6;

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v4[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v4[6] + 16 * v5);
    *v9 = 0x65756C6176;
    v9[1] = 0xE500000000000000;
    *(v4[7] + v5) = v3;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      v4[2] = v12;
      *a2 = 0x6361655F6E6F736ALL;
      a2[1] = 0xE900000000000068;
      a2[2] = v4;
      return result;
    }
  }

  __break(1u);
  return result;
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

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Schema.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Schema.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser6SchemaV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser6SchemaV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14BiomeSQLParser11SQLDataTypeOGMd, &_sSDySS14BiomeSQLParser11SQLDataTypeOGMR);
    lazy protocol witness table accessor for type [String : SQLDataType] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : SQLDataType] and conformance <> [A : B], lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v6, v4);
}

uint64_t Schema.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14BiomeSQLParser6SchemaV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedDecodingContainerVy14BiomeSQLParser6SchemaV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type Schema.CodingKeys and conformance Schema.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14BiomeSQLParser11SQLDataTypeOGMd, &_sSDySS14BiomeSQLParser11SQLDataTypeOGMR);
  v16 = 1;
  lazy protocol witness table accessor for type [String : SQLDataType] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : SQLDataType] and conformance <> [A : B], lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
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
  v365 = a2;
  v352 = a3;
  v4 = type metadata accessor for SQLTokenInformation(0);
  MEMORY[0x28223BE20](v4 - 8);
  v310 = &v289 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v316 = &v289 - v7;
  ColumnRef = type metadata accessor for PgQuery_ColumnRef(0);
  v8 = MEMORY[0x28223BE20](ColumnRef);
  v311 = (&v289 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v318 = (&v289 - v10);
  String = type metadata accessor for PgQuery_String(0);
  MEMORY[0x28223BE20](String);
  v330 = (&v289 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v339 = type metadata accessor for PgQuery_FuncCall(0);
  v12 = MEMORY[0x28223BE20](v339);
  v314 = &v289 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v321 = &v289 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v326 = &v289 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v328 = &v289 - v19;
  MEMORY[0x28223BE20](v18);
  v335 = &v289 - v20;
  List = type metadata accessor for PgQuery_List(0);
  v21 = MEMORY[0x28223BE20](List);
  v23 = (&v289 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v21);
  v322 = (&v289 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v327 = (&v289 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v334 = (&v289 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v337 = (&v289 - v31);
  MEMORY[0x28223BE20](v30);
  v342 = (&v289 - v32);
  RangeFunction = type metadata accessor for PgQuery_RangeFunction(0);
  v346 = *(RangeFunction - 8);
  v347 = RangeFunction;
  MEMORY[0x28223BE20](RangeFunction);
  v344 = &v289 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v345 = &v289 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v348 = &v289 - v38;
  v362 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v364 = *(v362 - 8);
  v39 = MEMORY[0x28223BE20](v362);
  v351 = (&v289 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v39);
  v349 = &v289 - v41;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v42 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v44 = &v289 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v45 = MEMORY[0x28223BE20](v361);
  v312 = &v289 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v313 = &v289 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v317 = &v289 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v319 = &v289 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v320 = &v289 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v323 = &v289 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v325 = &v289 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v329 = &v289 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v332 = &v289 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v331 = &v289 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v333 = &v289 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v336 = &v289 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v341 = &v289 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v340 = &v289 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v353 = &v289 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v360 = &v289 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v358 = &v289 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v81 = &v289 - v80;
  MEMORY[0x28223BE20](v79);
  v83 = &v289 - v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v85 = MEMORY[0x28223BE20](v84 - 8);
  *&v355 = &v289 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v88 = &v289 - v87;
  Node = type metadata accessor for PgQuery_Node(0);
  v90 = *(Node - 8);
  v91 = MEMORY[0x28223BE20](Node);
  v92 = MEMORY[0x28223BE20](v91);
  v93 = MEMORY[0x28223BE20](v92);
  v94 = MEMORY[0x28223BE20](v93);
  v95 = MEMORY[0x28223BE20](v94);
  v96 = MEMORY[0x28223BE20](v95);
  v97 = MEMORY[0x28223BE20](v96);
  v98 = MEMORY[0x28223BE20](v97);
  v99 = MEMORY[0x28223BE20](v98);
  v100 = MEMORY[0x28223BE20](v99);
  v338 = &v289 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v103 = MEMORY[0x28223BE20](v102);
  v350 = &v289 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v117 = (&v289 - v113);
  if (!*(a1 + 16))
  {

    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v125 = 0xD00000000000002FLL;
    *(v125 + 8) = 0x80000002553B6CB0;
    *(v125 + 16) = 0;
    *(v125 + 24) = 0;
    *(v125 + 32) = 1;
    swift_willThrow();
    v126 = type metadata accessor for PlanResources;
    v127 = v365;
    return outlined destroy of PgQuery_ParseResult(v127, v126);
  }

  v307 = *(a1 + 16);
  v308 = v44;
  v299 = v111;
  v300 = v112;
  v297 = v109;
  v298 = v110;
  v295 = v23;
  v296 = v108;
  v293 = v106;
  v294 = v107;
  v291 = v115;
  v292 = v116;
  v306 = v90;
  v301 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v302 = v114;
  v118 = v105;
  v303 = a1 + v301;
  outlined init with copy of PgQuery_ScanResult(a1 + v301, &v289 - v113, type metadata accessor for PgQuery_Node);
  v119 = a1;
  v309 = v42;
  v120 = *(v42 + 56);
  v359 = v88;
  v120(v88, 1, 1, RangeVar);
  v304 = v118;
  v121 = *(v118 + 20);
  v356 = v117;
  outlined init with copy of PgQuery_Alias?(*(v117 + v121) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v83, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v357 = v83;
  outlined init with copy of PgQuery_Alias?(v83, v81, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v123 = v364 + 48;
  v122 = *(v364 + 48);
  v124 = v81;
  if (v122(v81, 1, v362) == 1)
  {

LABEL_9:
    v135 = v365;
    *&v380 = 0;
    *(&v380 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    *&v380 = 0xD00000000000002FLL;
    *(&v380 + 1) = 0x80000002553B6C20;
    v136 = v357;
    outlined init with copy of PgQuery_Alias?(v357, v360, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v137 = String.init<A>(describing:)();
    MEMORY[0x259C32B90](v137);

    v138 = v380;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v139 = v138;
    *(v139 + 16) = 0;
    *(v139 + 24) = 0;
    *(v139 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v135, type metadata accessor for PlanResources);
    outlined destroy of URL?(v136, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined destroy of URL?(v359, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    outlined destroy of PgQuery_ParseResult(v356, type metadata accessor for PgQuery_Node);
    return outlined destroy of URL?(v124, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  v305 = v119;
  v128 = v81;
  v129 = v358;
  outlined init with copy of PgQuery_Alias?(v128, v358, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    outlined destroy of PgQuery_ParseResult(v129, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_9;
  }

  v364 = v123;
  v130 = v359;
  outlined destroy of URL?(v359, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with take of PgQuery_ParseResult(v129, v130, type metadata accessor for PgQuery_RangeVar);
  v131 = RangeVar;
  v120(v130, 0, 1, RangeVar);
  outlined destroy of URL?(v124, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v132 = v355;
  outlined init with copy of PgQuery_Alias?(v130, v355, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v309 + 48))(v132, 1, v131) == 1)
  {

    outlined destroy of URL?(v132, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v133 = 0xD00000000000001CLL;
    *(v133 + 8) = 0x80000002553B6C50;
    *(v133 + 16) = 0;
    *(v133 + 24) = 0;
    *(v133 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v365, type metadata accessor for PlanResources);
    outlined destroy of URL?(v357, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v134 = v130;
LABEL_12:
    outlined destroy of URL?(v134, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v126 = type metadata accessor for PgQuery_Node;
    v127 = v356;
    return outlined destroy of PgQuery_ParseResult(v127, v126);
  }

  v141 = v308;
  outlined init with take of PgQuery_ParseResult(v132, v308, type metadata accessor for PgQuery_RangeVar);
  v142 = v365;
  v370[0] = *v365;

  v143 = v354;
  static Schema.lookup(rangeVar:catalog:)(v141, v370, &v380);
  v144 = v143;
  v145 = v305;
  if (v143)
  {

    outlined destroy of PgQuery_ParseResult(v142, type metadata accessor for PlanResources);

    outlined destroy of PgQuery_ParseResult(v141, type metadata accessor for PgQuery_RangeVar);
    outlined destroy of URL?(v357, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v134 = v359;
    goto LABEL_12;
  }

  v290 = v122;

  v146 = v380;
  v147 = v381;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMR);
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_2552FE080;
  RangeVar = v146;
  *(v148 + 32) = v146;
  *(v148 + 48) = v147;
  v384 = 0u;
  v385 = 0u;
  v382 = 0u;
  v383 = 0u;
  v380 = 0u;
  v381 = 0u;
  v149 = *(v145 + 16);
  v150 = v357;
  if (v149 < v307)
  {
    __break(1u);
    goto LABEL_78;
  }

  v151 = v148;
  v152 = v290;
  if (v307 != 2)
  {

    outlined destroy of PgQuery_ParseResult(v142, type metadata accessor for PlanResources);
    outlined destroy of PgQuery_ParseResult(v141, type metadata accessor for PgQuery_RangeVar);
    outlined destroy of URL?(v150, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined destroy of URL?(v359, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    result = outlined destroy of PgQuery_ParseResult(v356, type metadata accessor for PgQuery_Node);
    goto LABEL_19;
  }

  v355 = xmmword_2552FE080;
  v153 = v350;
  outlined init with copy of PgQuery_ScanResult(v303 + *(v306 + 72), v350, type metadata accessor for PgQuery_Node);
  v154 = v353;
  outlined init with copy of PgQuery_Alias?(*(v153 + *(v304 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v353, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);

  outlined destroy of PgQuery_ParseResult(v153, type metadata accessor for PgQuery_Node);
  if (v152(v154, 1, v362) == 1)
  {

    outlined destroy of PgQuery_ParseResult(v365, type metadata accessor for PlanResources);
    outlined destroy of PgQuery_ParseResult(v141, type metadata accessor for PgQuery_RangeVar);
    outlined destroy of URL?(v357, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined destroy of URL?(v359, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    outlined destroy of PgQuery_ParseResult(v356, type metadata accessor for PgQuery_Node);
    result = outlined destroy of URL?(v353, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_19:
    v155 = v352;
    *v352 = v151;
    v156 = v383;
    *(v155 + 5) = v382;
    *(v155 + 7) = v156;
    v157 = v385;
    *(v155 + 9) = v384;
    *(v155 + 11) = v157;
    v158 = v381;
    *(v155 + 1) = v380;
    *(v155 + 3) = v158;
    return result;
  }

  v360 = v147;
  v358 = *(&v146 + 1);
  v354 = v151;
  v350 = 0;
  v159 = v349;
  outlined init with take of PgQuery_ParseResult(v353, v349, type metadata accessor for PgQuery_Node.OneOf_Node);
  v160 = v346;
  v161 = v347;
  v162 = *(v346 + 56);
  v163 = v348;
  v162(v348, 1, 1, v347);
  outlined init with copy of PgQuery_ScanResult(v159, v351, type metadata accessor for PgQuery_Node.OneOf_Node);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v165 = v365;
  if (EnumCaseMultiPayload != 182)
  {

    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v168 = 0xD000000000000030;
    *(v168 + 8) = 0x80000002553B6C70;
    *(v168 + 16) = 0;
    *(v168 + 24) = 0;
    *(v168 + 32) = 1;
    swift_willThrow();

    outlined destroy of PgQuery_ParseResult(v165, type metadata accessor for PlanResources);
    outlined destroy of URL?(v163, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
    outlined destroy of PgQuery_ParseResult(v159, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined destroy of URL?(&v380, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined destroy of PgQuery_ParseResult(v308, type metadata accessor for PgQuery_RangeVar);
    outlined destroy of URL?(v357, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined destroy of URL?(v359, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    outlined destroy of PgQuery_ParseResult(v356, type metadata accessor for PgQuery_Node);
    v127 = v351;
    v126 = type metadata accessor for PgQuery_Node.OneOf_Node;
    return outlined destroy of PgQuery_ParseResult(v127, v126);
  }

  outlined destroy of URL?(v163, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  outlined init with take of PgQuery_ParseResult(v351, v163, type metadata accessor for PgQuery_RangeFunction);
  v162(v163, 0, 1, v161);
  v166 = v345;
  outlined init with copy of PgQuery_Alias?(v163, v345, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  v167 = v163;
  if ((*(v160 + 48))(v166, 1, v161) == 1)
  {

    outlined destroy of URL?(v166, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
LABEL_28:
    v177 = v356;
    v178 = v359;
    v179 = v349;
LABEL_57:
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v197 = 0xD000000000000030;
    *(v197 + 8) = 0x80000002553B6C70;
    *(v197 + 16) = 0;
    *(v197 + 24) = 0;
    *(v197 + 32) = 1;
    swift_willThrow();

    outlined destroy of PgQuery_ParseResult(v165, type metadata accessor for PlanResources);
    outlined destroy of URL?(v167, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
    outlined destroy of PgQuery_ParseResult(v179, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined destroy of URL?(&v380, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    outlined destroy of PgQuery_ParseResult(v308, type metadata accessor for PgQuery_RangeVar);
    outlined destroy of URL?(v357, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined destroy of URL?(v178, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v126 = type metadata accessor for PgQuery_Node;
    v127 = v177;
    return outlined destroy of PgQuery_ParseResult(v127, v126);
  }

  v169 = v166;
  v170 = v344;
  outlined init with take of PgQuery_ParseResult(v169, v344, type metadata accessor for PgQuery_RangeFunction);
  v171 = *(v170 + 8);
  if (*(v171 + 16) != 1)
  {

    outlined destroy of PgQuery_ParseResult(v170, type metadata accessor for PgQuery_RangeFunction);
    goto LABEL_28;
  }

  v172 = v302;
  outlined init with copy of PgQuery_ScanResult(v171 + v301, v302, type metadata accessor for PgQuery_Node);
  v142 = *(v172 + *(v304 + 20));
  v144 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  v173 = v340;
  outlined init with copy of PgQuery_Alias?(v142 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v340, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v174 = v290(v173, 1, v362);
  v132 = MEMORY[0x277D84F90];
  if (v174 == 1)
  {
    outlined destroy of URL?(v173, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v176 = v341;
    v175 = v342;
  }

  else
  {
    v180 = swift_getEnumCaseMultiPayload() == 225;
    v181 = v173;
    v176 = v341;
    v175 = v342;
    if (v180)
    {
      outlined init with take of PgQuery_ParseResult(v181, v342, type metadata accessor for PgQuery_List);
      goto LABEL_33;
    }

    outlined destroy of PgQuery_ParseResult(v181, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  *v175 = v132;
  UnknownStorage.init()();
LABEL_33:
  v182 = *v175;

  outlined destroy of PgQuery_ParseResult(v175, type metadata accessor for PgQuery_List);
  v183 = *(v182 + 16);

  if (v183 != 2)
  {
    goto LABEL_54;
  }

  outlined init with copy of PgQuery_Alias?(v142 + v144, v176, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v290(v176, 1, v362) == 1)
  {
    outlined destroy of URL?(v176, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      v184 = v337;
      outlined init with take of PgQuery_ParseResult(v176, v337, type metadata accessor for PgQuery_List);
      goto LABEL_41;
    }

    outlined destroy of PgQuery_ParseResult(v176, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v184 = v337;
  *v337 = v132;
  UnknownStorage.init()();
LABEL_41:
  v185 = v184;
  v186 = *v184;

  outlined destroy of PgQuery_ParseResult(v185, type metadata accessor for PgQuery_List);
  if (!*(v186 + 16))
  {

LABEL_54:

    outlined destroy of PgQuery_ParseResult(v302, type metadata accessor for PgQuery_Node);

    v196 = v170;
LABEL_55:
    outlined destroy of PgQuery_ParseResult(v196, type metadata accessor for PgQuery_RangeFunction);
LABEL_56:
    v165 = v365;
    v177 = v356;
    v178 = v359;
    v167 = v348;
    v179 = v349;
    goto LABEL_57;
  }

  v187 = v338;
  outlined init with copy of PgQuery_ScanResult(v186 + v301, v338, type metadata accessor for PgQuery_Node);

  v188 = *(v187 + *(v304 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  v189 = v336;
  outlined init with copy of PgQuery_Alias?(v188, v336, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v290(v189, 1, v362) == 1)
  {
    outlined destroy of URL?(v189, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v190 = v335;
  }

  else
  {
    v180 = swift_getEnumCaseMultiPayload() == 170;
    v191 = v189;
    v190 = v335;
    if (v180)
    {
      outlined init with take of PgQuery_ParseResult(v191, v335, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_51;
    }

    outlined destroy of PgQuery_ParseResult(v191, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v192 = *(v339 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v190 + v192) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_51:
  outlined destroy of PgQuery_ParseResult(v338, type metadata accessor for PgQuery_Node);
  v193 = *(*(v190 + *(v339 + 20)) + 16);

  outlined destroy of PgQuery_ParseResult(v190, type metadata accessor for PgQuery_FuncCall);
  v194 = *(v193 + 16);

  if (v194 != 1)
  {
    goto LABEL_54;
  }

  v195 = v333;
  outlined init with copy of PgQuery_Alias?(v142 + v144, v333, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v290(v195, 1, v362) == 1)
  {
    outlined destroy of URL?(v195, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      v198 = v334;
      outlined init with take of PgQuery_ParseResult(v195, v334, type metadata accessor for PgQuery_List);
      goto LABEL_62;
    }

    outlined destroy of PgQuery_ParseResult(v195, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v198 = v334;
  *v334 = v132;
  UnknownStorage.init()();
LABEL_62:
  v199 = *v198;

  outlined destroy of PgQuery_ParseResult(v198, type metadata accessor for PgQuery_List);
  if (!*(v199 + 16))
  {
LABEL_74:

LABEL_120:

    outlined destroy of PgQuery_ParseResult(v302, type metadata accessor for PgQuery_Node);

    v196 = v344;
    goto LABEL_55;
  }

  v200 = v300;
  outlined init with copy of PgQuery_ScanResult(v199 + v301, v300, type metadata accessor for PgQuery_Node);

  v201 = v331;
  outlined init with copy of PgQuery_Alias?(*(v200 + *(v304 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v331, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v290(v201, 1, v362) == 1)
  {
    outlined destroy of URL?(v201, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      v202 = v328;
      outlined init with take of PgQuery_ParseResult(v331, v328, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_71;
    }

    outlined destroy of PgQuery_ParseResult(v331, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v202 = v328;
  UnknownStorage.init()();
  v203 = *(v339 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v202 + v203) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_71:
  outlined destroy of PgQuery_ParseResult(v300, type metadata accessor for PgQuery_Node);
  v204 = *(*(v202 + *(v339 + 20)) + 16);

  outlined destroy of PgQuery_ParseResult(v202, type metadata accessor for PgQuery_FuncCall);
  if (!*(v204 + 16))
  {
    goto LABEL_74;
  }

  v205 = v299;
  outlined init with copy of PgQuery_ScanResult(v204 + v301, v299, type metadata accessor for PgQuery_Node);

  v206 = v332;
  outlined init with copy of PgQuery_Alias?(*(v205 + *(v304 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v332, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v290(v206, 1, v362) == 1)
  {
    outlined destroy of URL?(v332, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_79:
    v207 = v330;
    *v330 = 0;
    v207[1] = 0xE000000000000000;
    UnknownStorage.init()();
    goto LABEL_80;
  }

  if (swift_getEnumCaseMultiPayload() != 222)
  {
LABEL_78:
    outlined destroy of PgQuery_ParseResult(v332, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_79;
  }

  outlined init with take of PgQuery_ParseResult(v332, v330, type metadata accessor for PgQuery_String);
LABEL_80:
  outlined destroy of PgQuery_ParseResult(v299, type metadata accessor for PgQuery_Node);
  v208 = v330;
  v210 = *v330;
  v209 = v330[1];

  outlined destroy of PgQuery_ParseResult(v208, type metadata accessor for PgQuery_String);
  if (v210 == 0x6361655F6E6F736ALL && v209 == 0xE900000000000068)
  {
  }

  else
  {
    v211 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v211 & 1) == 0)
    {
LABEL_119:

      goto LABEL_120;
    }
  }

  v212 = v329;
  outlined init with copy of PgQuery_Alias?(v142 + v144, v329, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v290(v212, 1, v362) == 1)
  {
    outlined destroy of URL?(v329, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      outlined init with take of PgQuery_ParseResult(v329, v327, type metadata accessor for PgQuery_List);
      goto LABEL_90;
    }

    outlined destroy of PgQuery_ParseResult(v329, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  *v327 = v132;
  UnknownStorage.init()();
LABEL_90:
  v213 = v327;
  v214 = *v327;

  outlined destroy of PgQuery_ParseResult(v213, type metadata accessor for PgQuery_List);
  if (!*(v214 + 16))
  {
LABEL_118:

    goto LABEL_119;
  }

  v215 = v298;
  outlined init with copy of PgQuery_ScanResult(v214 + v301, v298, type metadata accessor for PgQuery_Node);

  v216 = v325;
  outlined init with copy of PgQuery_Alias?(*(v215 + *(v304 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v325, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v290(v216, 1, v362) == 1)
  {
    outlined destroy of URL?(v325, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      outlined init with take of PgQuery_ParseResult(v325, v326, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_99;
    }

    outlined destroy of PgQuery_ParseResult(v325, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v217 = *(v339 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v326 + v217) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_99:
  outlined destroy of PgQuery_ParseResult(v298, type metadata accessor for PgQuery_Node);
  v218 = v326;
  v219 = *(*(v326 + *(v339 + 20)) + 24);

  outlined destroy of PgQuery_ParseResult(v218, type metadata accessor for PgQuery_FuncCall);
  v220 = *(v219 + 16);

  if (v220 != 1)
  {
    goto LABEL_119;
  }

  v221 = v323;
  outlined init with copy of PgQuery_Alias?(v142 + v144, v323, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v290(v221, 1, v362) == 1)
  {
    outlined destroy of URL?(v323, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      outlined init with take of PgQuery_ParseResult(v323, v322, type metadata accessor for PgQuery_List);
      goto LABEL_106;
    }

    outlined destroy of PgQuery_ParseResult(v323, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  *v322 = v132;
  UnknownStorage.init()();
LABEL_106:
  v222 = v322;
  v223 = *v322;

  outlined destroy of PgQuery_ParseResult(v222, type metadata accessor for PgQuery_List);
  if (!*(v223 + 16))
  {
    goto LABEL_118;
  }

  v224 = v297;
  outlined init with copy of PgQuery_ScanResult(v223 + v301, v297, type metadata accessor for PgQuery_Node);

  v225 = v320;
  outlined init with copy of PgQuery_Alias?(*(v224 + *(v304 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v320, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v290(v225, 1, v362) == 1)
  {
    outlined destroy of URL?(v320, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      outlined init with take of PgQuery_ParseResult(v320, v321, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_115;
    }

    outlined destroy of PgQuery_ParseResult(v320, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v226 = *(v339 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v321 + v226) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_115:
  outlined destroy of PgQuery_ParseResult(v297, type metadata accessor for PgQuery_Node);
  v227 = v321;
  v228 = *(*(v321 + *(v339 + 20)) + 24);

  outlined destroy of PgQuery_ParseResult(v227, type metadata accessor for PgQuery_FuncCall);
  if (!*(v228 + 16))
  {
    goto LABEL_118;
  }

  v229 = v296;
  outlined init with copy of PgQuery_ScanResult(v228 + v301, v296, type metadata accessor for PgQuery_Node);

  v230 = v319;
  outlined init with copy of PgQuery_Alias?(*(v229 + *(v304 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v319, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v290(v230, 1, v362) == 1)
  {
    outlined destroy of URL?(v319, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 167)
    {
      outlined init with take of PgQuery_ParseResult(v319, v318, type metadata accessor for PgQuery_ColumnRef);
      goto LABEL_125;
    }

    outlined destroy of PgQuery_ParseResult(v319, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v231 = v318;
  *v318 = v132;
  *(v231 + 2) = 0;
  UnknownStorage.init()();
LABEL_125:
  outlined destroy of PgQuery_ParseResult(v296, type metadata accessor for PgQuery_Node);
  v232 = v318;
  v233 = *v318;

  outlined destroy of PgQuery_ParseResult(v232, type metadata accessor for PgQuery_ColumnRef);
  v234 = *(v233 + 16);

  if (v234 != 1)
  {
    goto LABEL_119;
  }

  v235 = v317;
  outlined init with copy of PgQuery_Alias?(v142 + v144, v317, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v290(v235, 1, v362) == 1)
  {
    outlined destroy of URL?(v317, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      outlined init with take of PgQuery_ParseResult(v317, v295, type metadata accessor for PgQuery_List);
      goto LABEL_132;
    }

    outlined destroy of PgQuery_ParseResult(v317, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  *v295 = v132;
  UnknownStorage.init()();
LABEL_132:
  v236 = v295;
  v237 = *v295;

  outlined destroy of PgQuery_ParseResult(v236, type metadata accessor for PgQuery_List);
  if (!*(v237 + 16))
  {
LABEL_144:

    (*(v306 + 56))(v316, 1, 1, v304);
LABEL_154:
    outlined destroy of PgQuery_ParseResult(v302, type metadata accessor for PgQuery_Node);

    outlined destroy of PgQuery_ParseResult(v344, type metadata accessor for PgQuery_RangeFunction);
    outlined destroy of URL?(v316, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    goto LABEL_56;
  }

  v238 = v294;
  outlined init with copy of PgQuery_ScanResult(v237 + v301, v294, type metadata accessor for PgQuery_Node);

  v239 = v313;
  outlined init with copy of PgQuery_Alias?(*(v238 + *(v304 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v313, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v290(v239, 1, v362) == 1)
  {
    outlined destroy of URL?(v313, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      outlined init with take of PgQuery_ParseResult(v313, v314, type metadata accessor for PgQuery_FuncCall);
      goto LABEL_141;
    }

    outlined destroy of PgQuery_ParseResult(v313, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  UnknownStorage.init()();
  v240 = *(v339 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v314 + v240) = static PgQuery_FuncCall._StorageClass.defaultInstance;

LABEL_141:
  outlined destroy of PgQuery_ParseResult(v294, type metadata accessor for PgQuery_Node);
  v241 = v314;
  v242 = *(*(v314 + *(v339 + 20)) + 24);

  outlined destroy of PgQuery_ParseResult(v241, type metadata accessor for PgQuery_FuncCall);
  if (!*(v242 + 16))
  {
    goto LABEL_144;
  }

  v243 = v293;
  outlined init with copy of PgQuery_ScanResult(v242 + v301, v293, type metadata accessor for PgQuery_Node);

  v244 = v312;
  outlined init with copy of PgQuery_Alias?(*(v243 + *(v304 + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v312, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if (v290(v244, 1, v362) == 1)
  {
    outlined destroy of URL?(v312, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 167)
    {
      outlined init with take of PgQuery_ParseResult(v312, v311, type metadata accessor for PgQuery_ColumnRef);
      goto LABEL_149;
    }

    outlined destroy of PgQuery_ParseResult(v312, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  v245 = v311;
  *v311 = v132;
  *(v245 + 2) = 0;
  UnknownStorage.init()();
LABEL_149:
  outlined destroy of PgQuery_ParseResult(v293, type metadata accessor for PgQuery_Node);
  v246 = v311;
  v247 = *v311;

  outlined destroy of PgQuery_ParseResult(v246, type metadata accessor for PgQuery_ColumnRef);
  if (*(v247 + 16))
  {
    outlined init with copy of PgQuery_ScanResult(v247 + v301, v316, type metadata accessor for PgQuery_Node);
    v248 = 0;
  }

  else
  {
    v248 = 1;
  }

  v249 = v306;
  v250 = v316;
  v251 = v248;
  v252 = v304;
  (*(v306 + 56))(v316, v251, 1, v304);
  if ((*(v249 + 48))(v250, 1, v252) == 1)
  {

    goto LABEL_154;
  }

  v253 = v291;
  outlined init with take of PgQuery_ParseResult(v316, v291, type metadata accessor for PgQuery_Node);
  outlined init with copy of PgQuery_ScanResult(v253, v292, type metadata accessor for PgQuery_Node);
  v254 = swift_allocObject();
  *(v254 + 16) = v355;
  v255 = v358;
  *(v254 + 32) = RangeVar;
  *(v254 + 40) = v255;
  *(v254 + 48) = v360;
  v256 = type metadata accessor for PlanResources(0);
  outlined init with copy of PgQuery_ScanResult(v365 + *(v256 + 20), v310, type metadata accessor for SQLTokenInformation);

  v258 = v350;
  v259 = specialized ColumnResolver.init(schemas:)(v257);
  if (!v258)
  {
    v261 = v259;
    v262 = v260;

    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v292, v254, v261, v262, v310, v369);
    v263 = 0x65756C6176;

    outlined init with copy of VirtualTable.Module(v369, v368);
    outlined init with copy of VirtualTable.Module(v368, v370);
    v264 = v371;
    v265 = v372;
    __swift_project_boxed_opaque_existential_0(v370, v371);
    v373 = (*(v265 + 8))(v264, v265);
    v374 = v266;
    v267 = v371;
    v268 = v372;
    __swift_project_boxed_opaque_existential_0(v370, v371);
    (*(v268 + 16))(&v386, v267, v268);
    v375 = v386;
    v269 = v371;
    v270 = v372;
    __swift_project_boxed_opaque_existential_0(v370, v371);
    v376 = (*(v270 + 24))(v269, v270);
    v271 = v371;
    v272 = v372;
    __swift_project_boxed_opaque_existential_0(v370, v371);
    v377 = (*(v272 + 32))(v271, v272);
    v273 = v371;
    v274 = v372;
    __swift_project_boxed_opaque_existential_0(v370, v371);
    v275 = (*(v274 + 40))(v273, v274);
    v277 = v276;
    __swift_destroy_boxed_opaque_existential_0(v368);
    __swift_destroy_boxed_opaque_existential_0(v369);
    outlined destroy of PgQuery_ParseResult(v310, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_ParseResult(v292, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(&v380, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    v378 = v275;
    v379 = v277;
    outlined init with copy of SQLExpression(v370, &v380);
    v278 = v375;
    v366[0] = 0x65756C6176;
    v366[1] = 0xE500000000000000;
    v367 = v375;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
    v279 = static _DictionaryStorage.allocate(capacity:)();

    outlined destroy of URL?(v366, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
    v280 = specialized __RawDictionaryStorage.find<A>(_:)(0x65756C6176, 0xE500000000000000);
    v282 = v281;

    if (v282)
    {
      __break(1u);
    }

    else
    {
      v279[(v280 >> 6) + 8] |= 1 << v280;
      v284 = (v279[6] + 16 * v280);
      *v284 = 0x65756C6176;
      v284[1] = 0xE500000000000000;
      *(v279[7] + v280) = v278;
      v285 = v279[2];
      v286 = __OFADD__(v285, 1);
      v283 = v285 + 1;
      if (!v286)
      {
        v279[2] = v283;
        v282 = *(v354 + 2);
        v283 = *(v354 + 3);
        v263 = v282 + 1;
        if (v282 < v283 >> 1)
        {
LABEL_160:

          outlined destroy of PgQuery_ParseResult(v365, type metadata accessor for PlanResources);
          outlined destroy of PgQuery_ParseResult(v291, type metadata accessor for PgQuery_Node);
          outlined destroy of URL?(v348, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
          outlined destroy of PgQuery_ParseResult(v349, type metadata accessor for PgQuery_Node.OneOf_Node);
          outlined destroy of PgQuery_ParseResult(v308, type metadata accessor for PgQuery_RangeVar);
          outlined destroy of URL?(v357, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
          outlined destroy of URL?(v359, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
          outlined destroy of SQLExpression(v370);
          v287 = v354;
          *(v354 + 2) = v263;
          v288 = &v287[24 * v282];
          v151 = v287;
          *(v288 + 4) = 0x6361655F6E6F736ALL;
          *(v288 + 5) = 0xE900000000000068;
          *(v288 + 6) = v279;
          outlined destroy of PgQuery_ParseResult(v302, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_ParseResult(v356, type metadata accessor for PgQuery_Node);
          result = outlined destroy of PgQuery_ParseResult(v344, type metadata accessor for PgQuery_RangeFunction);
          goto LABEL_19;
        }

LABEL_163:
        v354 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v283 > 1), v263, 1, v354);
        goto LABEL_160;
      }
    }

    __break(1u);
    goto LABEL_163;
  }

  swift_bridgeObjectRelease_n();
  outlined destroy of PgQuery_ParseResult(v365, type metadata accessor for PlanResources);
  outlined destroy of PgQuery_ParseResult(v310, type metadata accessor for SQLTokenInformation);
  outlined destroy of PgQuery_ParseResult(v292, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_ParseResult(v291, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v348, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  outlined destroy of PgQuery_ParseResult(v349, type metadata accessor for PgQuery_Node.OneOf_Node);
  outlined destroy of URL?(&v380, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  outlined destroy of PgQuery_ParseResult(v308, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v357, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  outlined destroy of URL?(v359, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined destroy of PgQuery_ParseResult(v302, type metadata accessor for PgQuery_Node);

  outlined destroy of PgQuery_ParseResult(v356, type metadata accessor for PgQuery_Node);
  return outlined destroy of PgQuery_ParseResult(v344, type metadata accessor for PgQuery_RangeFunction);
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

  else if (a1 == 0xD000000000000012 && 0x80000002553B6940 == a2)
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

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromClause.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FromClause.CodingKeys and conformance FromClause.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FromClause.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser10FromClauseV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser10FromClauseV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type FromClause.CodingKeys and conformance FromClause.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser6SchemaVGMd, &_sSay14BiomeSQLParser6SchemaVGMR);
  lazy protocol witness table accessor for type [Schema] and conformance <A> [A](&lazy protocol witness table cache variable for type [Schema] and conformance <A> [A], &_sSay14BiomeSQLParser6SchemaVGMd, &_sSay14BiomeSQLParser6SchemaVGMR, lazy protocol witness table accessor for type Schema and conformance Schema);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[6] = 1;
    lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ResultColumn.alias.getter()
{
  v1 = *(v0 + 96);

  return v1;
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
  v185 = a3;
  v184 = a2;
  v176 = a4;
  v178 = type metadata accessor for CharacterSet();
  v167 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v177 = &v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScanToken = type metadata accessor for PgQuery_ScanToken(0);
  v172 = *(ScanToken - 8);
  v7 = MEMORY[0x28223BE20](ScanToken - 8);
  v171 = &v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v170 = &v165 - v9;
  v168 = type metadata accessor for SQLTokenInformation(0);
  MEMORY[0x28223BE20](v168);
  v173 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v175 = &v165 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v174 = *(Node - 8);
  v14 = MEMORY[0x28223BE20](Node);
  v16 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v179 = &v165 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v169 = &v165 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = (&v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = &v165 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v165 - v27;
  ResTarget = type metadata accessor for PgQuery_ResTarget(0);
  MEMORY[0x28223BE20](ResTarget);
  v181 = &v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = Node;
  v31 = *(Node + 20);
  v183 = a1;
  outlined init with copy of PgQuery_Alias?(*(a1 + v31) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v28, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v32 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v32 - 8) + 48))(v28, 1, v32) == 1)
  {

    outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_18:
    v188._countAndFlagsBits = 0;
    v188._object = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v188._countAndFlagsBits = 0xD000000000000022;
    v188._object = 0x80000002553B6BF0;
    v57 = v183;
    outlined init with copy of PgQuery_ScanResult(v183, v16, type metadata accessor for PgQuery_Node);
    v58 = String.init<A>(describing:)();
    MEMORY[0x259C32B90](v58);

    countAndFlagsBits = v188._countAndFlagsBits;
    object = v188._object;
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v61 = countAndFlagsBits;
    *(v61 + 8) = object;
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    *(v61 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v57, type metadata accessor for PgQuery_Node);
    v62 = type metadata accessor for SQLTokenInformation;
    v63 = &v201;
    return outlined destroy of PgQuery_ParseResult(*(v63 - 32), v62);
  }

  if (swift_getEnumCaseMultiPayload() != 175)
  {

    outlined destroy of PgQuery_ParseResult(v28, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_18;
  }

  v33 = v28;
  v34 = v181;
  ParseResult = outlined init with take of PgQuery_ParseResult(v33, v181, type metadata accessor for PgQuery_ResTarget);
  v36 = *(v34 + *(ResTarget + 20));
  v37 = *(v36 + 24);
  v38 = *(v36 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v37 & 0x2000000000000000) != 0)
  {
    v38 = HIBYTE(v37) & 0xF;
  }

  v166 = *(v34 + *(ResTarget + 20));
  if (!v38)
  {
    v169 = 0;
    v64 = v176;
    *(v176 + 96) = 0;
    *(v64 + 104) = 0;
    v23 = v180;
    v47 = v185;
    goto LABEL_21;
  }

  v39 = *(v185 + 1);
  MEMORY[0x28223BE20](ParseResult);
  v163 = v34;
  result = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ResultColumn.init(node:schemas:tokenInformation:), (&v165 - 4), v39);
  if (v41)
  {
LABEL_93:
    __break(1u);
    return result;
  }

  v180 = result;
  v188._countAndFlagsBits = specialized Collection.dropFirst(_:)(result, v39);
  v188._object = v42;
  v189 = v43;
  v190 = v44;
  v191 = v43;
  v192 = 0;
  v45 = v39;

  while (1)
  {
    specialized EnumeratedSequence.Iterator.next()(v23);
    outlined init with take of (PgQuery_RawStmt, String)(v23, v25, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtSgMR);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMR);
    if ((*(*(v46 - 8) + 48))(v25, 1, v46) == 1)
    {

      swift_unknownObjectRelease();
      v73 = *(v166 + 16);
      v72 = *(v166 + 24);
      goto LABEL_29;
    }

    v47 = *v25;
    v48 = *(v46 + 48);
    v49 = *&v25[v48];
    outlined destroy of PgQuery_ParseResult(&v25[v48], type metadata accessor for PgQuery_ScanToken);
    SQLTokenInformation.tokenName(location:)(v49);
    if (v50)
    {

      swift_unknownObjectRelease();
      goto LABEL_31;
    }

    v51 = String.lowercased()();
    v52 = v51._countAndFlagsBits;

    v53 = String.lowercased()();
    v54 = v53._object;
    if (v51._countAndFlagsBits == v53._countAndFlagsBits && v51._object == v53._object)
    {
      break;
    }

    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v56)
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  v76 = v180 + v47;
  if (__OFADD__(v180, v47))
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v77 = __OFADD__(v76, 1);
  v78 = v76 + 1;
  v47 = v185;
  if (v77)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
    v65 = v182;
LABEL_23:
    *(v52 + v47) = static PgQuery_Node._StorageClass.defaultInstance;
    v66 = (v54)(v45, 1, v65);

    v47 = v25;
    v67 = v173;
    if (v66 != 1)
    {
      outlined destroy of URL?(v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    goto LABEL_26;
  }

  if (v78 >= *(v45 + 16))
  {

    v84 = *(v166 + 16);
    v83 = *(v166 + 24);
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v85 = v84;
    *(v85 + 8) = v83;
    *(v85 + 16) = 0;
    *(v85 + 24) = 0;
    *(v85 + 32) = 8;
    swift_willThrow();

LABEL_41:
    swift_unknownObjectRelease();
    outlined destroy of PgQuery_ParseResult(v183, type metadata accessor for PgQuery_Node);
    v75 = v47;
    goto LABEL_42;
  }

  if (v78 < 0)
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

  SQLTokenInformation.tokenName(location:)(*(v45 + ((v172[80] + 32) & ~v172[80]) + *(v172 + 9) * v78));
  if (v79)
  {

    goto LABEL_41;
  }

  v180 = 0;
  swift_unknownObjectRelease();
  v188 = String.lowercased()();
  v108 = v166;
  v187[0] = String.lowercased()();
  v109 = type metadata accessor for Locale();
  v110 = v169;
  (*(*(v109 - 8) + 56))(v169, 1, 1, v109);
  v163 = lazy protocol witness table accessor for type String and conformance String();
  v164 = v163;
  StringProtocol.range<A>(of:options:range:locale:)();
  v112 = v111;
  outlined destroy of URL?(v110, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  if (v112)
  {

    v73 = *(v108 + 16);
    v72 = *(v108 + 24);
LABEL_29:
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v74 = v73;
    *(v74 + 8) = v72;
    *(v74 + 16) = 0;
    *(v74 + 24) = 0;
    *(v74 + 32) = 8;
    swift_willThrow();

LABEL_31:
    outlined destroy of PgQuery_ParseResult(v183, type metadata accessor for PgQuery_Node);
    v75 = v185;
LABEL_42:
    outlined destroy of PgQuery_ParseResult(v75, type metadata accessor for SQLTokenInformation);
    goto LABEL_43;
  }

  v113 = String.subscript.getter();
  v115 = v114;
  v117 = v116;
  v119 = v118;

  v120 = MEMORY[0x259C32B00](v113, v115, v117, v119);
  v122 = v121;

  v123 = v176;
  *(v176 + 96) = v120;
  *(v123 + 104) = v122;
  v169 = v122;
  v23 = v180;
  v47 = v185;
  v36 = v108;
LABEL_21:
  v45 = v175;
  outlined init with copy of PgQuery_Alias?(v36 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, v175, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v54 = *(v174 + 48);
  v65 = v182;
  if ((v54)(v45, 1, v182) == 1)
  {
    v25 = v47;
    v52 = v179;
    UnknownStorage.init()();
    v47 = *(v65 + 20);
    if (one-time initialization token for defaultInstance == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_88;
  }

  outlined init with take of PgQuery_ParseResult(v45, v179, type metadata accessor for PgQuery_Node);
  v67 = v173;
LABEL_26:
  outlined init with copy of PgQuery_ScanResult(v47, v67, type metadata accessor for SQLTokenInformation);
  v68 = v184;

  v70 = specialized ColumnResolver.init(schemas:)(v69);
  v52 = v23;
  if (!v23)
  {
    v80 = v70;
    v81 = v71;

    v82 = v179;
    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v179, v68, v80, v81, v67, &v187[0]._countAndFlagsBits);
    v180 = 0;

    outlined init with copy of VirtualTable.Module(v187, v186);
    outlined init with copy of VirtualTable.Module(v186, &v188);
    v86 = v190;
    v87 = v191;
    __swift_project_boxed_opaque_existential_0(&v188, v190);
    v192 = (*(v87 + 8))(v86, v87);
    v193 = v88;
    v89 = v190;
    v90 = v191;
    __swift_project_boxed_opaque_existential_0(&v188, v190);
    (*(v90 + 16))(&v199, v89, v90);
    v194 = v199;
    v91 = v190;
    v92 = v191;
    __swift_project_boxed_opaque_existential_0(&v188, v190);
    v195 = (*(v92 + 24))(v91, v92);
    v93 = v190;
    v94 = v191;
    __swift_project_boxed_opaque_existential_0(&v188, v190);
    v196 = (*(v94 + 32))(v93, v94);
    v95 = v190;
    v96 = v191;
    __swift_project_boxed_opaque_existential_0(&v188, v190);
    v97 = (*(v96 + 40))(v95, v96);
    v99 = v98;
    __swift_destroy_boxed_opaque_existential_0(v186);
    __swift_destroy_boxed_opaque_existential_0(v187);
    outlined destroy of PgQuery_ParseResult(v67, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_ParseResult(v82, type metadata accessor for PgQuery_Node);
    v197 = v97;
    v198 = v99;
    outlined init with copy of SQLExpression(&v188, v176);
    v100 = *(v47 + 8);
    v25 = v172;
    v23 = v170;
    v101 = v171;
    v184 = *(v100 + 16);
    if (v184)
    {
      v54 = 0;
      v102 = *(v166 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      while (1)
      {
        if (v54 >= *(v100 + 16))
        {
          __break(1u);
          goto LABEL_86;
        }

        v103 = v100;
        v45 = v100 + ((v25[80] + 32) & ~v25[80]);
        v52 = *(v25 + 9);
        outlined init with copy of PgQuery_ScanResult(v45 + v52 * v54, v23, type metadata accessor for PgQuery_ScanToken);
        v104 = *v23;
        result = outlined destroy of PgQuery_ParseResult(v23, type metadata accessor for PgQuery_ScanToken);
        if (v104 == v102)
        {
          break;
        }

        ++v54;
        v47 = v185;
        v100 = v103;
        if (v184 == v54)
        {
          goto LABEL_49;
        }
      }

      v173 = v45;
      v47 = v185;
      if (*(v103 + 16) < v54)
      {
        goto LABEL_92;
      }

      v166 = v103;

      v124 = MEMORY[0x277D84F90];
      v125 = v173;
      if (v54)
      {
        v126 = (v54 - 1);
        v179 = (v167 + 8);
        v127 = v54;
        v170 = (v54 - 1);
        while (v126 < v54)
        {
          outlined init with copy of PgQuery_ScanResult(&v125[--v127 * v52], v101, type metadata accessor for PgQuery_ScanToken);
          if (*(v101 + 16) == 1)
          {
            v129 = *(v101 + 8);
            if (v129 - 39 >= 0x152 && v129 - 378 >= 0x74)
            {
              if (v129 > 0x26)
              {
                goto LABEL_81;
              }

              if (((1 << v129) & 0x1FFFFFFFBFLL) == 0)
              {
                if (((1 << v129) & 0x6000000000) == 0)
                {
                  goto LABEL_81;
                }

                v172 = v124;
                PgQuery_Token.rawValue.getter(v129, 1);
                v130 = String.index(_:offsetBy:)();
                result = String.index(_:offsetBy:)();
                if (result >> 14 < v130 >> 14)
                {
                  goto LABEL_90;
                }

                v131 = String.subscript.getter();
                v132 = MEMORY[0x259C32B00](v131);
                v134 = v133;

                v187[0]._countAndFlagsBits = v132;
                v187[0]._object = v134;
                v135 = v177;
                static CharacterSet.whitespaces.getter();
                v175 = lazy protocol witness table accessor for type String and conformance String();
                v136 = StringProtocol.trimmingCharacters(in:)();
                v138 = v137;
                v174 = *v179;
                (v174)(v135, v178);

                v187[0]._countAndFlagsBits = 10;
                v187[0]._object = 0xE100000000000000;
                MEMORY[0x28223BE20](v139);
                v163 = v187;
                v140 = v180;
                v141 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v165 - 4), v136, v138);
                v180 = v140;
                v142 = *(v141 + 16);
                if (v142)
                {
                  v199 = MEMORY[0x277D84F90];
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v142, 0);
                  v143 = v199;
                  v169 = v141;
                  v144 = (v141 + 56);
                  do
                  {
                    v184 = v142;
                    v146 = *(v144 - 3);
                    v145 = *(v144 - 2);
                    v147 = v143;
                    v148 = *(v144 - 1);
                    v149 = *v144;

                    v187[0]._countAndFlagsBits = MEMORY[0x259C32B00](v146, v145, v148, v149);
                    v187[0]._object = v150;
                    v151 = v177;
                    static CharacterSet.whitespaces.getter();
                    v143 = v147;
                    v152 = StringProtocol.trimmingCharacters(in:)();
                    v182 = v153;

                    (v174)(v151, v178);

                    v199 = v143;
                    v155 = *(v143 + 16);
                    v154 = *(v143 + 24);
                    if (v155 >= v154 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v154 > 1), v155 + 1, 1);
                      v143 = v199;
                    }

                    *(v143 + 16) = v155 + 1;
                    v156 = v143 + 16 * v155;
                    v157 = v182;
                    *(v156 + 32) = v152;
                    *(v156 + 40) = v157;
                    v144 += 4;
                    v142 = v184 - 1;
                  }

                  while (v184 != 1);

                  v101 = v171;
                }

                else
                {

                  v143 = MEMORY[0x277D84F90];
                }

                v158 = v143;
                v159 = *(v143 + 16);
                v124 = v172;
                v160 = *(v172 + 2);
                if (__OFADD__(v160, v159))
                {
                  goto LABEL_91;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v186[0] = v124;
                if (!isUniquelyReferenced_nonNull_native || v160 + v159 > *(v124 + 24) >> 1)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v124 = v128;
                  v186[0] = v128;
                }

                v47 = v185;
                specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, v159, v158);

                v125 = v173;
                v126 = v170;
              }
            }
          }

          outlined destroy of PgQuery_ParseResult(v101, type metadata accessor for PgQuery_ScanToken);
          if (!v127)
          {
            goto LABEL_82;
          }
        }

        __break(1u);
LABEL_81:
        outlined destroy of PgQuery_ParseResult(v101, type metadata accessor for PgQuery_ScanToken);
      }

LABEL_82:

      if (*(v124 + 16))
      {
        v187[0]._countAndFlagsBits = v124;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v105 = BidirectionalCollection<>.joined(separator:)();
        v106 = v162;

        outlined destroy of SQLExpression(&v188);
        goto LABEL_51;
      }

      outlined destroy of SQLExpression(&v188);
    }

    else
    {
LABEL_49:
      outlined destroy of SQLExpression(&v188);
    }

    v105 = 0;
    v106 = 0;
LABEL_51:
    outlined destroy of PgQuery_ParseResult(v183, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_ParseResult(v47, type metadata accessor for SQLTokenInformation);
    v107 = v176;
    *(v176 + 112) = v105;
    *(v107 + 120) = v106;
LABEL_43:
    v62 = type metadata accessor for PgQuery_ResTarget;
    v63 = &v200;
    return outlined destroy of PgQuery_ParseResult(*(v63 - 32), v62);
  }

  swift_bridgeObjectRelease_n();
  outlined destroy of PgQuery_ParseResult(v67, type metadata accessor for SQLTokenInformation);
  outlined destroy of PgQuery_ParseResult(v179, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_ParseResult(v183, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_ParseResult(v47, type metadata accessor for SQLTokenInformation);
  outlined destroy of PgQuery_ParseResult(v181, type metadata accessor for PgQuery_ResTarget);
}

uint64_t specialized EnumeratedSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMR);
  result = MEMORY[0x28223BE20](v3);
  v7 = (&v15 - v6);
  v8 = v1[4];
  v9 = v1[3] >> 1;
  if (v8 == v9)
  {
    v10 = *(v5 + 56);

    return v10(a1, 1, 1, v3);
  }

  else
  {
    if (v8 >= v9 || v8 < v1[2])
    {
      __break(1u);
    }

    else
    {
      v16 = v5;
      v12 = v1[1] + *(*(type metadata accessor for PgQuery_ScanToken(0) - 8) + 72) * v8;
      v1[4] = v8 + 1;
      v13 = *(v3 + 48);
      v14 = v1[5];
      *v7 = v14;
      result = outlined init with copy of PgQuery_ScanResult(v12, v7 + v13, type metadata accessor for PgQuery_ScanToken);
      if (!__OFADD__(v14, 1))
      {
        v1[5] = v14 + 1;
        outlined init with take of (PgQuery_RawStmt, String)(v7, a1, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMd, &_sSi6offset_14BiomeSQLParser17PgQuery_ScanTokenV7elementtMR);
        return (*(v16 + 56))(a1, 0, 1, v3);
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

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResultColumn.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResultColumn.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser12ResultColumnV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser12ResultColumnV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type ResultColumn.CodingKeys and conformance ResultColumn.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t SelectCore.init(select:resources:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v384 = a2;
  v309 = a3;
  v4 = type metadata accessor for SQLTokenInformation(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v310 = &v297 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v315 = &v297 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v318 = *(Node - 8);
  v8 = MEMORY[0x28223BE20](Node);
  v312 = &v297 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  i = &v297 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v311 = &v297 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v297 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v297 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v297 - v20;
  v22 = type metadata accessor for PlanResources(0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v297 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(a1 + *(type metadata accessor for PgQuery_SelectStmt(0) + 20));
  outlined init with copy of PgQuery_ScanResult(v384, v24, type metadata accessor for PlanResources);

  v27 = v319;
  v28 = FromClause.init(fromClauseNodes:resources:)(v26, v24, &v360);
  if (v27)
  {
    outlined destroy of PgQuery_ParseResult(a1, type metadata accessor for PgQuery_SelectStmt);
    return outlined destroy of PgQuery_ParseResult(v384, type metadata accessor for PlanResources);
  }

  v307 = a1;
  v317._countAndFlagsBits = v21;
  v303 = v19;
  v304 = v16;
  v302 = v22;
  v368[4] = v364;
  v368[5] = v365;
  v369 = v366;
  v368[0] = v360;
  v368[1] = v361;
  v368[3] = v363;
  v368[2] = v362;
  v30 = v360;
  v31 = *&v25[OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList];
  MEMORY[0x28223BE20](v28);
  v32 = v384;
  *(&v297 - 2) = v30;
  *(&v297 - 1) = v32;

  NodeVG_AF12ResultColumnVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF12ResultColumnVsAE_pTg5(partial apply for closure #1 in SelectCore.init(select:resources:), (&v297 - 4), v31);
  v306 = 0;
  isUniquelyReferenced_nonNull_native = NodeVG_AF12ResultColumnVsAE_pTg5;
  v300 = v30;
  v301 = v25;
  v313 = 0;

  v383 = isUniquelyReferenced_nonNull_native;
  v35 = *(isUniquelyReferenced_nonNull_native + 16);
  v308 = isUniquelyReferenced_nonNull_native;
  if (v35)
  {
    v319 = isUniquelyReferenced_nonNull_native + 32;

    v36 = 0;
    v37 = MEMORY[0x277D84F98];
    v38 = MEMORY[0x277D84F98];
    countAndFlagsBits = v317._countAndFlagsBits;
    v305 = v35;
    while (1)
    {
      if (v36 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
        goto LABEL_138;
      }

      outlined init with copy of ResultColumn(v319 + (v36 << 7), &v360);
      v40 = v367;
      if (v367)
      {
        if (!*(v364 + 16))
        {
          break;
        }
      }

      v31 = v37;
LABEL_6:
      ++v36;
      outlined destroy of ResultColumn(&v360);
      v37 = v31;
      if (v36 == v35)
      {

        goto LABEL_40;
      }
    }

    v35 = v366;
    LODWORD(v317._object) = BYTE8(v363);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v344 = v37;
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v40);
    v43 = *(v37 + 16);
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      __break(1u);
      goto LABEL_266;
    }

    countAndFlagsBits = v41;
    if (*(v37 + 24) >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v37;
        if (v41)
        {
LABEL_14:

          *(*(v31 + 56) + v42) = v317._object;
LABEL_19:
          v38 = v31;
          isUniquelyReferenced_nonNull_native = v308;
          countAndFlagsBits = v317._countAndFlagsBits;
          v35 = v305;
          goto LABEL_6;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
        v52 = static _DictionaryStorage.copy(original:)();
        v31 = v52;
        if (*(v37 + 16))
        {
          v53 = (v52 + 64);
          v54 = (v37 + 64);
          v55 = ((1 << *(v31 + 32)) + 63) >> 6;
          v298 = v37 + 64;
          if (v31 != v37 || v53 >= &v54[8 * v55])
          {
            memmove(v53, v54, 8 * v55);
          }

          v56 = 0;
          *(v31 + 16) = *(v37 + 16);
          v57 = 1 << *(v37 + 32);
          if (v57 < 64)
          {
            v58 = ~(-1 << v57);
          }

          else
          {
            v58 = -1;
          }

          v59 = v58 & *(v37 + 64);
          isUniquelyReferenced_nonNull_native = (v57 + 63) >> 6;
          if (v59)
          {
            do
            {
              v60 = __clz(__rbit64(v59));
              *&v299 = (v59 - 1) & v59;
LABEL_34:
              v63 = v60 | (v56 << 6);
              v64 = (*(v37 + 48) + 16 * v63);
              v66 = *v64;
              v65 = v64[1];
              LOBYTE(v64) = *(*(v37 + 56) + v63);
              v67 = (*(v31 + 48) + 16 * v63);
              *v67 = v66;
              v67[1] = v65;
              *(*(v31 + 56) + v63) = v64;

              v59 = v299;
            }

            while (v299);
          }

          v61 = v56;
          while (1)
          {
            v56 = v61 + 1;
            if (__OFADD__(v61, 1))
            {
              goto LABEL_326;
            }

            if (v56 >= isUniquelyReferenced_nonNull_native)
            {
              break;
            }

            v62 = *(v298 + 8 * v56);
            ++v61;
            if (v62)
            {
              v60 = __clz(__rbit64(v62));
              *&v299 = (v62 - 1) & v62;
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
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, isUniquelyReferenced_nonNull_native);
      v31 = v344;
      v46 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v40);
      if ((countAndFlagsBits & 1) != (v47 & 1))
      {
        goto LABEL_335;
      }

      v42 = v46;
      if (countAndFlagsBits)
      {
        goto LABEL_14;
      }
    }

    *(v31 + 8 * (v42 >> 6) + 64) |= 1 << v42;
    v48 = (*(v31 + 48) + 16 * v42);
    *v48 = v35;
    v48[1] = v40;
    *(*(v31 + 56) + v42) = v317._object;
    v49 = *(v31 + 16);
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (v50)
    {
      __break(1u);
LABEL_281:
      *&v360 = v40;
      goto LABEL_284;
    }

    *(v31 + 16) = v51;
    goto LABEL_19;
  }

  v38 = MEMORY[0x277D84F98];
  countAndFlagsBits = v317._countAndFlagsBits;
LABEL_40:
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMR);
  v68 = swift_allocObject();
  v299 = xmmword_2552FE080;
  *(v68 + 16) = xmmword_2552FE080;
  strcpy((v68 + 32), "select_alias");
  *(v68 + 45) = 0;
  *(v68 + 46) = -5120;
  *(v68 + 48) = v38;
  *&v360 = v300;

  specialized Array.append<A>(contentsOf:)(v68);
  v319 = v360;
  v69 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v35 = v301;
  outlined init with copy of PgQuery_Alias?(&v301[OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause], countAndFlagsBits, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v31 = v318 + 48;
  v70 = *(v318 + 48);
  v37 = Node;
  v71 = v70(countAndFlagsBits, 1, Node);
  outlined destroy of URL?(countAndFlagsBits, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v318 = v31;
  v317._countAndFlagsBits = v70;
  if (v71 == 1)
  {
    v375 = 0u;
    v374 = 0u;
    v373 = 0u;
    v372 = 0u;
    v371 = 0u;
    v370 = 0u;
    v42 = v313;
    v37 = v384;
    countAndFlagsBits = v308;
    isUniquelyReferenced_nonNull_native = v319;
  }

  else
  {
    v76 = v303;
    outlined init with copy of PgQuery_Alias?(&v35[v69], v303, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v77 = v70(v76, 1, v37);
    v35 = v313;
    isUniquelyReferenced_nonNull_native = v302;
    if (v77 == 1)
    {
      countAndFlagsBits = i;
      UnknownStorage.init()();
      v36 = *(v37 + 20);
      if (one-time initialization token for defaultInstance != -1)
      {
        goto LABEL_321;
      }

      goto LABEL_48;
    }

    countAndFlagsBits = i;
    outlined init with take of PgQuery_ParseResult(v76, i, type metadata accessor for PgQuery_Node);
    v37 = v384;
    v31 = v315;
LABEL_51:
    outlined init with copy of PgQuery_ScanResult(v37 + *(isUniquelyReferenced_nonNull_native + 20), v31, type metadata accessor for SQLTokenInformation);
    isUniquelyReferenced_nonNull_native = v319;

    v81 = specialized ColumnResolver.init(schemas:)(v80);
    if (v35)
    {
      v313 = v35;
      swift_bridgeObjectRelease_n();
      outlined destroy of PgQuery_ParseResult(v31, type metadata accessor for SQLTokenInformation);
      outlined destroy of PgQuery_ParseResult(countAndFlagsBits, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_ParseResult(v307, type metadata accessor for PgQuery_SelectStmt);
      v86 = 0;
      v87 = 0;
      v88 = 0;
      goto LABEL_65;
    }

    v84 = v81;
    v85 = v82;
    v42 = 0;

    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(countAndFlagsBits, isUniquelyReferenced_nonNull_native, v84, v85, v31, &v344);

    outlined init with copy of VirtualTable.Module(&v344, v357);
    SQLExpression.init(rootNode:)(v357, &v360);
    __swift_destroy_boxed_opaque_existential_0(&v344);
    outlined destroy of PgQuery_ParseResult(v31, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_ParseResult(countAndFlagsBits, type metadata accessor for PgQuery_Node);
    v372 = v362;
    v373 = v363;
    v374 = v364;
    v375 = v365;
    v370 = v360;
    v371 = v361;
    countAndFlagsBits = v308;
  }

  outlined init with copy of PgQuery_Alias?(&v370, &v360, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  v36 = v307;
  if (*(&v361 + 1))
  {
    v346 = v362;
    v347 = v363;
    v348 = v364;
    v349 = v365;
    v344 = v360;
    v345 = v361;
    v72 = v364;
    if (*(v364 + 16))
    {

      if (*(v72 + 16))
      {
        outlined init with copy of AggregationFunction(v72 + 32, &v360);
        v73 = AggregationFunction.name()();
        outlined destroy of AggregationFunction(&v360);
        lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
        v74 = swift_allocError();
        *v75 = v73;
        *(v75 + 16) = 0;
        *(v75 + 24) = 0;
        *(v75 + 32) = 5;
        v313 = v74;
        swift_willThrow();
        outlined destroy of PgQuery_ParseResult(v36, type metadata accessor for PgQuery_SelectStmt);
        outlined destroy of SQLExpression(&v344);
        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_323;
    }

    v83 = outlined destroy of SQLExpression(&v344);
  }

  else
  {
    v83 = outlined destroy of URL?(&v360, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  }

  v89 = *&v301[OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause];
  MEMORY[0x28223BE20](v83);
  *(&v297 - 2) = isUniquelyReferenced_nonNull_native;
  *(&v297 - 1) = v37;

  NodeVG_AF13SQLExpressionVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF13SQLExpressionVsAE_pTg5(partial apply for closure #3 in SelectCore.init(select:resources:), (&v297 - 4), v89);
  v313 = v42;
  if (v42)
  {

    v91 = v307;
    goto LABEL_63;
  }

  v42 = NodeVG_AF13SQLExpressionVsAE_pTg5;

  v92 = v42;
  v93 = *(v42 + 16);
  v94 = v93 + 1;
  v95 = 96;
  v36 = v307;
  while (--v94)
  {
    v31 = *(v42 + v95);
    v95 += 96;
    if (*(v31 + 16))
    {

      if (*(v31 + 16))
      {
        outlined init with copy of AggregationFunction(v31 + 32, &v360);
        v96 = AggregationFunction.name()();
        outlined destroy of AggregationFunction(&v360);
        lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
        v97 = swift_allocError();
        *v98 = v96;
        *(v98 + 16) = 0;
        *(v98 + 24) = 0;
        *(v98 + 32) = 6;
        v313 = v97;
        swift_willThrow();
        v91 = v36;
LABEL_63:
        outlined destroy of PgQuery_ParseResult(v91, type metadata accessor for PgQuery_SelectStmt);
LABEL_64:
        v87 = 0;
        v88 = 0;
        v86 = 1;
        goto LABEL_65;
      }

LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
      goto LABEL_325;
    }
  }

  if (v93)
  {
    LODWORD(v315) = 0;
    goto LABEL_82;
  }

  v100 = countAndFlagsBits + 32;
  v101 = -*(countAndFlagsBits + 16);
  v102 = -1;
  while (v101 + v102 != -1)
  {
    if (++v102 >= *(countAndFlagsBits + 16))
    {
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      swift_once();
LABEL_48:
      *(countAndFlagsBits + v36) = static PgQuery_Node._StorageClass.defaultInstance;
      v78 = v303;
      v79 = (v317._countAndFlagsBits)(v303, 1, v37);

      v37 = v384;
      v31 = v315;
      if (v79 != 1)
      {
        outlined destroy of URL?(v78, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      goto LABEL_51;
    }

    v103 = v100 + 128;
    outlined init with copy of ResultColumn(v100, &v360);
    v104 = *(v364 + 16);
    outlined destroy of ResultColumn(&v360);
    v100 = v103;
    v36 = v307;
    if (v104)
    {
      LODWORD(v315) = 0;
      v92 = MEMORY[0x277D84F90];
      goto LABEL_82;
    }
  }

  v92 = 0;
  LODWORD(v315) = 1;
LABEL_82:
  v376 = v92;
  v31 = v304;
  v319 = *(countAndFlagsBits + 16);
  if (v319)
  {
    v105 = 0;
    v317._object = (countAndFlagsBits + 32);
    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
    while (1)
    {
      if (v105 >= *(countAndFlagsBits + 16))
      {
        __break(1u);
LABEL_283:
        v42 = MEMORY[0x277D84F90];
        v37 = *(MEMORY[0x277D84F90] + 16);
        *&v360 = MEMORY[0x277D84F90];
        if (v37)
        {
LABEL_284:
          v264 = 0;
          while (v264 < *(v42 + 16))
          {
            v265 = v264 + 1;

            v31 = &v360;
            specialized Array.append<A>(contentsOf:)(v266);
            v264 = v265;
            if (v37 == v265)
            {
              goto LABEL_287;
            }
          }

          goto LABEL_324;
        }

LABEL_287:

        v267 = v360;
        outlined init with copy of PgQuery_Alias?(&v377, &v360, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        if (*(&v361 + 1))
        {
          v268 = v364;

          outlined destroy of SQLExpression(&v360);
        }

        else
        {
          outlined destroy of URL?(&v360, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
          v268 = MEMORY[0x277D84F90];
        }

        *&v360 = v267;
        specialized Array.append<A>(contentsOf:)(v268);
        v269 = v360;
        v315 = *(v360 + 16);
        if (!v315)
        {
LABEL_313:

          outlined destroy of PgQuery_ParseResult(v307, type metadata accessor for PgQuery_SelectStmt);
          outlined init with copy of SelectCore(v368, v309);
          outlined destroy of PgQuery_ParseResult(v384, type metadata accessor for PlanResources);
          return outlined destroy of SelectCore(v368);
        }

        v270 = 0;
        Node = v360 + 32;
        v271 = v319 + 56;
        v272 = v318 + 56;
        while (v270 < *(v269 + 16))
        {
          v273 = v269;
          outlined init with copy of AggregationFunction(Node + 200 * v270, &v360);
          v317 = AggregationFunction.name()();
          v274 = String.lowercased()();
          v275 = v319;
          if (*(v319 + 16))
          {
            Hasher.init(_seed:)();
            String.hash(into:)();
            v276 = Hasher._finalize()();
            v277 = -1 << *(v275 + 32);
            v278 = v276 & ~v277;
            if ((*(v271 + ((v278 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v278))
            {
              v279 = ~v277;
              while (1)
              {
                v280 = *(v319 + 48) + 16 * v278;
                v281 = *v280 == v274._countAndFlagsBits && *(v280 + 8) == v274._object;
                if (v281 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v278 = (v278 + 1) & v279;
                if (((*(v271 + ((v278 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v278) & 1) == 0)
                {
                  goto LABEL_303;
                }
              }

              v290 = "e as any select column's name";
              v291 = 0xD000000000000051;
              goto LABEL_317;
            }
          }

LABEL_303:

          v282 = String.lowercased()();
          if (*(v318 + 16))
          {
            v283 = v318;
            Hasher.init(_seed:)();
            String.hash(into:)();
            v284 = Hasher._finalize()();
            v285 = -1 << *(v283 + 32);
            v286 = v284 & ~v285;
            if ((*(v272 + ((v286 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v286))
            {
              v287 = ~v285;
              do
              {
                v288 = *(v318 + 48) + 16 * v286;
                v289 = *v288 == v282._countAndFlagsBits && *(v288 + 8) == v282._object;
                if (v289 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_316;
                }

                v286 = (v286 + 1) & v287;
              }

              while (((*(v272 + ((v286 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v286) & 1) != 0);
            }
          }

          ++v270;

          outlined destroy of AggregationFunction(&v360);
          v269 = v273;
          if (v270 == v315)
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

      outlined init with copy of ResultColumn(v317._object + 128 * v105, &v360);
      v106 = v367;
      if (v367)
      {
        break;
      }

      outlined destroy of ResultColumn(&v360);
LABEL_85:
      if (++v105 == v319)
      {
        goto LABEL_117;
      }
    }

    v35 = v366;
    v36 = BYTE8(v363);

    v107 = swift_isUniquelyReferenced_nonNull_native();
    *&v344 = isUniquelyReferenced_nonNull_native;
    v108 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v106);
    v110 = *(isUniquelyReferenced_nonNull_native + 16);
    v111 = (v109 & 1) == 0;
    v50 = __OFADD__(v110, v111);
    v112 = v110 + v111;
    if (v50)
    {
      __break(1u);
LABEL_316:

      v290 = "hema column names";
      v291 = 0xD000000000000050;
LABEL_317:
      v292 = v307;
      v293 = v290 | 0x8000000000000000;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      v294 = swift_allocError();
      object = v317._object;
      *v296 = v317._countAndFlagsBits;
      *(v296 + 8) = object;
      *(v296 + 16) = v291;
      *(v296 + 24) = v293;
      *(v296 + 32) = 7;
      v313 = v294;
      swift_willThrow();
      outlined destroy of AggregationFunction(&v360);
      v259 = v292;
      goto LABEL_270;
    }

    v37 = v109;
    if (*(isUniquelyReferenced_nonNull_native + 24) < v112)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v112, v107);
      v113 = v344;
      v108 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v106);
      if ((v37 & 1) != (v114 & 1))
      {
        goto LABEL_335;
      }

      countAndFlagsBits = v308;
      if (v37)
      {
        goto LABEL_92;
      }

LABEL_95:
      *(v113 + 8 * (v108 >> 6) + 64) |= 1 << v108;
      v116 = (*(v113 + 48) + 16 * v108);
      *v116 = v35;
      v116[1] = v106;
      *(*(v113 + 56) + v108) = v36;
      outlined destroy of ResultColumn(&v360);
      v117 = *(v113 + 16);
      v50 = __OFADD__(v117, 1);
      v118 = v117 + 1;
      if (v50)
      {
        __break(1u);
        goto LABEL_319;
      }

      *(v113 + 16) = v118;
      goto LABEL_97;
    }

    if (v107)
    {
      v113 = isUniquelyReferenced_nonNull_native;
      countAndFlagsBits = v308;
      if ((v109 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v298 = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      v119 = static _DictionaryStorage.copy(original:)();
      v113 = v119;
      if (*(isUniquelyReferenced_nonNull_native + 16))
      {
        v120 = (v119 + 64);
        v121 = 1 << *(v113 + 32);
        v303 = (isUniquelyReferenced_nonNull_native + 64);
        v122 = (v121 + 63) >> 6;
        if (v113 != isUniquelyReferenced_nonNull_native || v120 >= &v303[8 * v122])
        {
          memmove(v120, v303, 8 * v122);
        }

        v123 = 0;
        *(v113 + 16) = *(isUniquelyReferenced_nonNull_native + 16);
        v124 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
        if (v124 < 64)
        {
          v125 = ~(-1 << v124);
        }

        else
        {
          v125 = -1;
        }

        i = (v125 & *(isUniquelyReferenced_nonNull_native + 64));
        v126 = (v124 + 63) >> 6;
        v127 = i;
        if (!i)
        {
          goto LABEL_107;
        }

        while (1)
        {
          v128 = __clz(__rbit64(v127));
          for (i = ((v127 - 1) & v127); ; i = ((v130 - 1) & v130))
          {
            v131 = v128 | (v123 << 6);
            v132 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v131);
            v134 = *v132;
            v133 = v132[1];
            LOBYTE(v132) = *(*(isUniquelyReferenced_nonNull_native + 56) + v131);
            v135 = (*(v113 + 48) + 16 * v131);
            *v135 = v134;
            v135[1] = v133;
            *(*(v113 + 56) + v131) = v132;

            v127 = i;
            if (i)
            {
              break;
            }

LABEL_107:
            v129 = v123;
            do
            {
              v123 = v129 + 1;
              if (__OFADD__(v129, 1))
              {
                goto LABEL_333;
              }

              if (v123 >= v126)
              {
                goto LABEL_114;
              }

              v130 = *&v303[8 * v123];
              ++v129;
            }

            while (!v130);
            v128 = __clz(__rbit64(v130));
          }
        }
      }

LABEL_114:

      v108 = v298;
      countAndFlagsBits = v308;
      if ((v37 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

LABEL_92:
    v115 = v108;

    *(*(v113 + 56) + v115) = v36;
    outlined destroy of ResultColumn(&v360);
LABEL_97:
    v37 = v384;
    v36 = v307;
    isUniquelyReferenced_nonNull_native = v113;
    v31 = v304;
    goto LABEL_85;
  }

  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
LABEL_117:
  v136 = v301;
  v319 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause;
  outlined init with copy of PgQuery_Alias?(&v301[OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause], v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v35 = v317._countAndFlagsBits;
  if ((v317._countAndFlagsBits)(v31, 1, Node) == 1)
  {

    outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v377 = 0u;
    v378 = 0u;
    v379 = 0u;
    v380 = 0u;
    v381 = 0u;
    v382 = 0u;
    v42 = v313;
  }

  else
  {
    outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v139 = swift_allocObject();
    *(v139 + 16) = v299;
    strcpy((v139 + 32), "select_alias");
    *(v139 + 45) = 0;
    *(v139 + 46) = -5120;
    *(v139 + 48) = isUniquelyReferenced_nonNull_native;
    *&v360 = v300;

    specialized Array.append<A>(contentsOf:)(v139);
    v31 = v360;
    v140 = &v136[v319];
    v141 = v311;
    outlined init with copy of PgQuery_Alias?(v140, v311, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v142 = Node;
    if ((v35)(v141, 1, Node) == 1)
    {
      isUniquelyReferenced_nonNull_native = v312;
      UnknownStorage.init()();
      v36 = *(v142 + 20);
      v42 = v313;
      if (one-time initialization token for defaultInstance != -1)
      {
        goto LABEL_328;
      }

      goto LABEL_124;
    }

    outlined init with take of PgQuery_ParseResult(v141, v312, type metadata accessor for PgQuery_Node);
    v42 = v313;
LABEL_127:
    isUniquelyReferenced_nonNull_native = v310;
    outlined init with copy of PgQuery_ScanResult(v37 + *(v302 + 20), v310, type metadata accessor for SQLTokenInformation);

    v146 = specialized ColumnResolver.init(schemas:)(v145);
    if (v42)
    {
      v313 = v42;
      swift_bridgeObjectRelease_n();
      outlined destroy of PgQuery_ParseResult(isUniquelyReferenced_nonNull_native, type metadata accessor for SQLTokenInformation);
      outlined destroy of PgQuery_ParseResult(v312, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_ParseResult(v307, type metadata accessor for PgQuery_SelectStmt);
      v88 = 0;
      v86 = 1;
      v87 = 1;
      goto LABEL_65;
    }

    v148 = v146;
    v149 = v147;
    v42 = 0;

    v35 = v312;
    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v312, v31, v148, v149, isUniquelyReferenced_nonNull_native, &v344);

    outlined init with copy of VirtualTable.Module(&v344, v357);
    SQLExpression.init(rootNode:)(v357, &v360);
    __swift_destroy_boxed_opaque_existential_0(&v344);
    outlined destroy of PgQuery_ParseResult(isUniquelyReferenced_nonNull_native, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_ParseResult(v35, type metadata accessor for PgQuery_Node);
    v379 = v362;
    v380 = v363;
    v381 = v364;
    v382 = v365;
    v377 = v360;
    v378 = v361;
    v36 = v307;
  }

  outlined init with copy of PgQuery_Alias?(&v377, &v360, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  if (*(&v361 + 1))
  {
    v357[2] = v362;
    v357[3] = v363;
    v358 = v364;
    v359 = v365;
    v357[0] = v360;
    v357[1] = v361;
    if (v315)
    {
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      v137 = swift_allocError();
      *v138 = 0u;
      *(v138 + 16) = 0u;
      *(v138 + 32) = 9;
      v313 = v137;
      swift_willThrow();
      outlined destroy of SQLExpression(v357);
      outlined destroy of PgQuery_ParseResult(v36, type metadata accessor for PgQuery_SelectStmt);
      v86 = 1;
      v87 = 1;
      v88 = 1;
      goto LABEL_65;
    }

    isUniquelyReferenced_nonNull_native = v42;
    v150 = MEMORY[0x277D84FA0];
    *&v338 = MEMORY[0x277D84FA0];
    v151 = *(countAndFlagsBits + 16);
    if (v151)
    {
      v152 = countAndFlagsBits + 32;
      do
      {
        outlined init with copy of ResultColumn(v152, &v360);
        v153 = v367;
        if (v367 && *(v364 + 16))
        {
          v154 = v366;

          v31 = &v338;
          specialized Set._Variant.insert(_:)(&v344, v154, v153);
        }

        outlined destroy of ResultColumn(&v360);
        v152 += 128;
        --v151;
      }

      while (v151);
LABEL_138:
      v150 = v338;
    }

    v36 = v358;
    v42 = isUniquelyReferenced_nonNull_native;
    i = *(v358 + 16);
    if (i)
    {
      v155 = 0;
      v156 = v358 + 32;
      v318 = v150 + 56;
      v35 = MEMORY[0x277D84F90];
      isUniquelyReferenced_nonNull_native = 96;
      v319 = v150;
      v310 = v358;
      v311 = v358 + 32;
      while (1)
      {
        if (v155 >= *(v36 + 16))
        {
          goto LABEL_332;
        }

        v315 = v155;
        outlined init with copy of AggregationFunction(v156 + 200 * v155, &v360);
        outlined init with copy of AggregationFunction.AggregationType(&v360, &v344);
        outlined destroy of AggregationFunction(&v360);
        if (v356 > 3u)
        {
          break;
        }

        if (v356 <= 1u)
        {
          goto LABEL_156;
        }

        if (v356 != 2)
        {
LABEL_159:
          v340 = v346;
          v341 = v347;
          v342 = v348;
          v343 = v349;
          v338 = v344;
          v339 = v345;
          outlined init with copy of SQLExpression(&v338, &v332);
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v35);
          v182 = *(v31 + 16);
          v181 = *(v31 + 24);
          v317._object = (v182 + 1);
          if (v182 >= v181 >> 1)
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v181 > 1), v182 + 1, 1, v31);
          }

          outlined destroy of SQLExpression(&v338);
          v168 = v31;
          *(v31 + 16) = v317._object;
          v183 = (v31 + 96 * v182);
          v184 = v333;
          v183[2] = v332;
          v183[3] = v184;
          v185 = v337;
          v187 = v334;
          v186 = v335;
          v183[6] = v336;
          v183[7] = v185;
          v183[4] = v187;
          v183[5] = v186;
          goto LABEL_162;
        }

        v340 = v346;
        v341 = v347;
        v342 = v348;
        v343 = v349;
        v338 = v344;
        v339 = v345;
        v334 = v352;
        v335 = v353;
        v336 = v354;
        v337 = v355;
        v332 = v350;
        v333 = v351;
        outlined init with copy of SQLExpression(&v338, &v326);
        v157 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v35);
        v159 = *(v157 + 2);
        v158 = *(v157 + 3);
        v31 = v159 + 1;
        if (v159 >= v158 >> 1)
        {
          v157 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v158 > 1), v159 + 1, 1, v157);
        }

        *(v157 + 2) = v31;
        v160 = &v157[96 * v159];
        v161 = v327;
        *(v160 + 2) = v326;
        *(v160 + 3) = v161;
        v162 = v328;
        v163 = v329;
        v164 = v331;
        *(v160 + 6) = v330;
        *(v160 + 7) = v164;
        *(v160 + 4) = v162;
        *(v160 + 5) = v163;
        outlined init with copy of PgQuery_Alias?(&v332, &v320, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        if (*(&v321 + 1))
        {
          v165 = v37;
          v328 = v322;
          v329 = v323;
          v330 = v324;
          v331 = v325;
          v326 = v320;
          v327 = v321;
          outlined init with copy of SQLExpression(&v326, &v320);
          v166 = *(v157 + 3);
          v167 = v159 + 2;
          if ((v159 + 2) > (v166 >> 1))
          {
            v157 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v159 + 2, 1, v157);
          }

          v36 = v310;
          outlined destroy of SQLExpression(&v326);
          outlined destroy of URL?(&v332, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
          outlined destroy of SQLExpression(&v338);
          v168 = v157;
          *(v157 + 2) = v167;
          isUniquelyReferenced_nonNull_native = 96;
          v169 = (v168 + 96 * v31);
          v170 = v321;
          v169[2] = v320;
          v169[3] = v170;
          v171 = v325;
          v173 = v322;
          v172 = v323;
          v169[6] = v324;
          v169[7] = v171;
          v169[4] = v173;
          v169[5] = v172;
          v37 = v165;
LABEL_162:
          v150 = v319;
          goto LABEL_165;
        }

        v31 = &_s14BiomeSQLParser13SQLExpressionVSgMd;
        outlined destroy of URL?(&v332, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        outlined destroy of SQLExpression(&v338);
        outlined destroy of URL?(&v320, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        v36 = v310;
        v168 = v157;
        isUniquelyReferenced_nonNull_native = 96;
LABEL_165:
        Node = *(v168 + 16);
        if (Node)
        {
          v36 = 0;
          v188 = (v168 + 32);
          v317._countAndFlagsBits = v168;
          v312 = (v168 + 32);
          while (1)
          {
            if (v36 >= *(v168 + 16))
            {
              goto LABEL_331;
            }

            v313 = v42;
            outlined init with copy of SQLExpression(&v188[96 * v36], &v344);
            v35 = *(&v348 + 1);
            isUniquelyReferenced_nonNull_native = *(*(&v348 + 1) + 16);
            if (isUniquelyReferenced_nonNull_native)
            {
              break;
            }

LABEL_183:
            ++v36;
            outlined destroy of SQLExpression(&v344);
            v168 = v317._countAndFlagsBits;
            v188 = v312;
            v42 = v313;
            v35 = MEMORY[0x277D84F90];
            isUniquelyReferenced_nonNull_native = 96;
            if (v36 == Node)
            {

              v36 = v310;
              goto LABEL_186;
            }
          }

          v42 = 0;
          v317._object = (*(&v348 + 1) + 32);
          while (v42 < *(v35 + 2))
          {
            if (*(v150 + 16))
            {
              v189 = (v317._object + 24 * v42);
              v191 = *v189;
              v190 = v189[1];
              Hasher.init(_seed:)();
              swift_bridgeObjectRetain_n();
              String.hash(into:)();
              v192 = Hasher._finalize()();
              v193 = -1 << *(v150 + 32);
              v31 = v192 & ~v193;
              if ((*(v318 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
              {
                v194 = ~v193;
                do
                {
                  v195 = (*(v319 + 48) + 16 * v31);
                  v196 = *v195 == v191 && v195[1] == v190;
                  if (v196 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    swift_bridgeObjectRelease_n();

                    v197 = v349;
                    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
                    v198 = swift_allocError();
                    *v199 = v197;
                    *(v199 + 16) = 0;
                    *(v199 + 24) = 0;
                    *(v199 + 32) = 3;
                    v313 = v198;
                    swift_willThrow();

                    outlined destroy of SQLExpression(v357);
                    outlined destroy of SQLExpression(&v344);
                    goto LABEL_269;
                  }

                  v31 = (v31 + 1) & v194;
                }

                while (((*(v318 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
              }

              swift_bridgeObjectRelease_n();
              v37 = v384;
              countAndFlagsBits = v308;
              v150 = v319;
            }

            if (++v42 == isUniquelyReferenced_nonNull_native)
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
          *(isUniquelyReferenced_nonNull_native + v36) = static PgQuery_Node._StorageClass.defaultInstance;
          v143 = v311;
          v144 = (v35)(v311, 1);

          if (v144 != 1)
          {
            outlined destroy of URL?(v143, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          }

          goto LABEL_127;
        }

LABEL_186:
        v155 = v315 + 1;
        v156 = v311;
        if (v315 + 1 == i)
        {
          goto LABEL_189;
        }
      }

      if (v356 > 5u)
      {
        if (v356 != 6)
        {
          v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 1, v35);
          goto LABEL_165;
        }
      }

      else if (v356 == 4)
      {
        goto LABEL_159;
      }

LABEL_156:
      v340 = v346;
      v341 = v347;
      v342 = v348;
      v343 = v349;
      v338 = v344;
      v339 = v345;
      outlined init with copy of SQLExpression(&v338, &v332);
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v35);
      v175 = *(v31 + 16);
      v174 = *(v31 + 24);
      if (v175 >= v174 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v174 > 1), v175 + 1, 1, v31);
      }

      outlined destroy of SQLExpression(&v338);
      v168 = v31;
      *(v31 + 16) = v175 + 1;
      v176 = (v31 + 96 * v175);
      v177 = v333;
      v176[2] = v332;
      v176[3] = v177;
      v178 = v337;
      v180 = v334;
      v179 = v335;
      v176[6] = v336;
      v176[7] = v178;
      v176[4] = v180;
      v176[5] = v179;
      v150 = v319;
      v35 = MEMORY[0x277D84F90];
      goto LABEL_165;
    }

LABEL_189:

    outlined destroy of SQLExpression(v357);
  }

  else
  {
    outlined destroy of URL?(&v360, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  }

  v200 = MEMORY[0x277D84FA0];
  *&v344 = MEMORY[0x277D84FA0];
  v201 = v300;
  v312 = *(v300 + 16);
  if (v312)
  {
    v202 = 0;
    v203 = v300 + 32;
    v311 = v300 + 32;
    do
    {
      v313 = v42;
      if (v202 >= *(v201 + 16))
      {
        goto LABEL_327;
      }

      v204 = v203 + 24 * v202;
      v205 = *(v204 + 8);
      v31 = *(v204 + 16);
      i = v202 + 1;
      v315 = v205;
      v206 = v31 + 64;
      v207 = 1 << *(v31 + 32);
      if (v207 < 64)
      {
        v208 = ~(-1 << v207);
      }

      else
      {
        v208 = -1;
      }

      isUniquelyReferenced_nonNull_native = v208 & *(v31 + 64);
      v36 = (v207 + 63) >> 6;

      swift_bridgeObjectRetain_n();
      v209 = 0;
      Node = v36;
      v317._countAndFlagsBits = v31 + 64;
      v317._object = v31;
      if (isUniquelyReferenced_nonNull_native)
      {
        while (1)
        {
LABEL_201:
          v211 = (*(v31 + 48) + ((v209 << 10) | (16 * __clz(__rbit64(isUniquelyReferenced_nonNull_native)))));
          v212 = v211[1];
          v37 = v344;
          v318 = *v211;
          v213 = String.lowercased()();
          v214 = *(v37 + 16);
          v319 = v212;
          if (v214)
          {
            Hasher.init(_seed:)();

            String.hash(into:)();
            v215 = Hasher._finalize()();
            v216 = -1 << *(v37 + 32);
            v217 = v215 & ~v216;
            if ((*(v37 + 56 + ((v217 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v217))
            {
              v218 = ~v216;
              while (1)
              {
                v219 = *(v37 + 48) + 16 * v217;
                v220 = *v219 == v213._countAndFlagsBits && *(v219 + 8) == v213._object;
                if (v220 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v217 = (v217 + 1) & v218;
                if (((*(v37 + 56 + ((v217 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v217) & 1) == 0)
                {
                  goto LABEL_212;
                }
              }

              lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
              v222 = swift_allocError();
              v223 = v319;
              *v224 = v318;
              *(v224 + 8) = v223;
              *(v224 + 16) = 0xD000000000000027;
              *(v224 + 24) = 0x80000002553B6A40;
              *(v224 + 32) = 7;
              v313 = v222;
              swift_willThrow();

              goto LABEL_268;
            }
          }

          else
          {
          }

LABEL_212:
          isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;

          v221 = String.lowercased()();
          v35 = v221._object;

          specialized Set._Variant.insert(_:)(&v360, v221._countAndFlagsBits, v221._object);

          countAndFlagsBits = v308;
          v206 = v317._countAndFlagsBits;
          v31 = v317._object;
          v36 = Node;
          if (!isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_197;
          }
        }
      }

      while (1)
      {
LABEL_197:
        v210 = v209 + 1;
        if (__OFADD__(v209, 1))
        {
          goto LABEL_320;
        }

        if (v210 >= v36)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = *(v206 + 8 * v210);
        ++v209;
        if (isUniquelyReferenced_nonNull_native)
        {
          v209 = v210;
          goto LABEL_201;
        }
      }

      v42 = v313;
      v202 = i;
      v201 = v300;
      v200 = MEMORY[0x277D84FA0];
      v203 = v311;
    }

    while (i != v312);
    v319 = v344;
  }

  else
  {
    v319 = MEMORY[0x277D84FA0];
  }

  *&v357[0] = v200;
  v31 = *(countAndFlagsBits + 16);
  if (!v31)
  {
    goto LABEL_248;
  }

  v225 = 0;
  v226 = countAndFlagsBits + 32;
  v318 = v319 + 56;
  Node = countAndFlagsBits + 32;
  v317._countAndFlagsBits = v31;
  do
  {
    if (v225 >= *(countAndFlagsBits + 16))
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

    outlined init with copy of ResultColumn(v226 + (v225 << 7), &v360);
    v36 = v367;
    if (v367)
    {
      v313 = v42;
      v227 = *&v357[0];
      v317._object = v366;
      v228 = String.lowercased()();
      if (*(v227 + 16))
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v229 = Hasher._finalize()();
        v230 = -1 << *(v227 + 32);
        v231 = v229 & ~v230;
        if ((*(v227 + 56 + ((v231 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v231))
        {
          v232 = ~v230;
          while (1)
          {
            v233 = *(v227 + 48) + 16 * v231;
            v234 = *v233 == v228._countAndFlagsBits && *(v233 + 8) == v228._object;
            if (v234 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v231 = (v231 + 1) & v232;
            if (((*(v227 + 56 + ((v231 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v231) & 1) == 0)
            {
              goto LABEL_234;
            }
          }

          v255 = 0xD000000000000021;

          v256 = "lect alias names";
          goto LABEL_267;
        }
      }

      else
      {
      }

LABEL_234:

      v235 = String.lowercased()();
      v35 = v235._object;
      v236 = v319;
      if (*(v319 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v237 = Hasher._finalize()();
        v238 = -1 << *(v236 + 32);
        v239 = v237 & ~v238;
        countAndFlagsBits = v308;
        if ((*(v318 + ((v239 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v239))
        {
          v240 = ~v238;
          while (1)
          {
            v241 = *(v319 + 48) + 16 * v239;
            v242 = *v241 == v235._countAndFlagsBits && *(v241 + 8) == v235._object;
            if (v242 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v239 = (v239 + 1) & v240;
            if (((*(v318 + ((v239 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v239) & 1) == 0)
            {
              goto LABEL_245;
            }
          }

LABEL_266:

          v256 = "ave the same name";
          v255 = 0xD000000000000043;
LABEL_267:

          lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
          v257 = swift_allocError();
          *v258 = v317._object;
          *(v258 + 8) = v36;
          *(v258 + 16) = v255;
          *(v258 + 24) = v256 | 0x8000000000000000;
          *(v258 + 32) = 7;
          v313 = v257;
          swift_willThrow();
          outlined destroy of ResultColumn(&v360);
LABEL_268:

          goto LABEL_269;
        }
      }

      else
      {
        countAndFlagsBits = v308;
      }

LABEL_245:

      v243 = String.lowercased()();

      specialized Set._Variant.insert(_:)(&v344, v243._countAndFlagsBits, v243._object);

      outlined destroy of ResultColumn(&v360);
      v42 = v313;
      v226 = Node;
      v31 = v317._countAndFlagsBits;
    }

    else
    {
      outlined destroy of ResultColumn(&v360);
    }

    ++v225;
  }

  while (v225 != v31);
  v200 = *&v357[0];
LABEL_248:
  v244 = *(countAndFlagsBits + 16);
  v318 = v200;
  if (!v244)
  {
LABEL_271:
    v313 = v42;
    v36 = v308;
    isUniquelyReferenced_nonNull_native = *(v308 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_283;
    }

    v40 = MEMORY[0x277D84F90];
    *&v344 = MEMORY[0x277D84F90];
    v31 = &v344;
    specialized ContiguousArray.reserveCapacity(_:)(isUniquelyReferenced_nonNull_native);
    v35 = (v36 + 32);
    v42 = v344;
    do
    {
      outlined init with copy of ResultColumn(v35, &v360);
      v36 = v364;

      outlined destroy of ResultColumn(&v360);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = &v344;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 16) + 1, 1);
        v42 = v344;
      }

      countAndFlagsBits = *(v42 + 16);
      v260 = *(v42 + 24);
      v37 = countAndFlagsBits + 1;
      if (countAndFlagsBits >= v260 >> 1)
      {
        v31 = &v344;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v260 > 1), countAndFlagsBits + 1, 1);
        v42 = v344;
      }

      *(v42 + 16) = v37;
      *(v42 + 8 * countAndFlagsBits + 32) = v36;
      v35 += 128;
      --isUniquelyReferenced_nonNull_native;
    }

    while (isUniquelyReferenced_nonNull_native);
    goto LABEL_281;
  }

  v245 = 0;
  countAndFlagsBits += 32;
  v246 = v200 + 56;
  while (2)
  {
    if (v245 >= *(v308 + 16))
    {
      __break(1u);
      goto LABEL_330;
    }

    outlined init with copy of ResultColumn(countAndFlagsBits + (v245 << 7), &v360);
    if (v367)
    {
LABEL_251:
      ++v245;
      outlined destroy of ResultColumn(&v360);
      if (v245 == v244)
      {
        goto LABEL_271;
      }

      continue;
    }

    break;
  }

  v31 = *(&v365 + 1);
  v317._object = v365;
  v247 = String.lowercased()();
  v35 = v247._object;
  v248 = *(v318 + 16);
  v313 = v42;
  if (!v248 || (v317._countAndFlagsBits = v31, v249 = v318, Hasher.init(_seed:)(), String.hash(into:)(), v250 = Hasher._finalize()(), v251 = -1 << *(v249 + 32), v31 = v250 & ~v251, ((*(v246 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0))
  {
LABEL_250:

    v42 = v313;
    goto LABEL_251;
  }

  v252 = ~v251;
  while (1)
  {
    v253 = *(v318 + 48) + 16 * v31;
    v254 = *v253 == v247._countAndFlagsBits && *(v253 + 8) == v247._object;
    if (v254 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v31 = (v31 + 1) & v252;
    if (((*(v246 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
    {
      goto LABEL_250;
    }
  }

  lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
  v261 = swift_allocError();
  v262 = v317._countAndFlagsBits;
  *v263 = v317._object;
  *(v263 + 8) = v262;
  *(v263 + 16) = 0xD00000000000003DLL;
  *(v263 + 24) = 0x80000002553B6A70;
  *(v263 + 32) = 7;
  v313 = v261;
  swift_willThrow();

  outlined destroy of ResultColumn(&v360);
LABEL_269:
  v259 = v307;
LABEL_270:
  outlined destroy of PgQuery_ParseResult(v259, type metadata accessor for PgQuery_SelectStmt);
  v86 = 1;
  v87 = 1;
  v88 = 1;
  v37 = v384;
LABEL_65:
  outlined destroy of PgQuery_ParseResult(v37, type metadata accessor for PlanResources);
  result = outlined destroy of FromClause(v368);
  if (v86)
  {
    result = outlined destroy of URL?(&v370, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  }

  if (v87)
  {
  }

  v99 = v306;
  if (v88)
  {
    result = outlined destroy of URL?(&v377, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  }

  if (!v99)
  {
  }

  return result;
}

unint64_t closure #1 in SelectCore.init(select:resources:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for SQLTokenInformation(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Node = type metadata accessor for PgQuery_Node(0);
  MEMORY[0x28223BE20](Node - 8);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_ScanResult(a1, v16, type metadata accessor for PgQuery_Node);
  v17 = type metadata accessor for PlanResources(0);
  outlined init with copy of PgQuery_ScanResult(a3 + *(v17 + 20), v13, type metadata accessor for SQLTokenInformation);

  result = ResultColumn.init(node:schemas:tokenInformation:)(v16, a2, v13, a5);
  if (v5)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t closure #3 in SelectCore.init(select:resources:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for SQLTokenInformation(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Node = type metadata accessor for PgQuery_Node(0);
  MEMORY[0x28223BE20](Node - 8);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_ScanResult(a1, v16, type metadata accessor for PgQuery_Node);
  v17 = type metadata accessor for PlanResources(0);
  outlined init with copy of PgQuery_ScanResult(a3 + *(v17 + 20), v13, type metadata accessor for SQLTokenInformation);

  v19 = specialized ColumnResolver.init(schemas:)(v18);
  v21 = v20;

  if (v5)
  {
    outlined destroy of PgQuery_ParseResult(v13, type metadata accessor for SQLTokenInformation);
    result = outlined destroy of PgQuery_ParseResult(v16, type metadata accessor for PgQuery_Node);
    *a4 = v5;
  }

  else
  {
    buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v16, a2, v19, v21, v13, v24);

    outlined init with copy of VirtualTable.Module(v24, v23);
    SQLExpression.init(rootNode:)(v23, a5);
    __swift_destroy_boxed_opaque_existential_0(v24);
    outlined destroy of PgQuery_ParseResult(v13, type metadata accessor for SQLTokenInformation);
    return outlined destroy of PgQuery_ParseResult(v16, type metadata accessor for PgQuery_Node);
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

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SelectCore.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SelectCore.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser10SelectCoreV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser10SelectCoreV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type SelectCore.CodingKeys and conformance SelectCore.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  lazy protocol witness table accessor for type FromClause and conformance FromClause();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 200);
    v11 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser13SQLExpressionVGMd, &_sSay14BiomeSQLParser13SQLExpressionVGMR);
    lazy protocol witness table accessor for type [Schema] and conformance <A> [A](&lazy protocol witness table cache variable for type [SQLExpression] and conformance <A> [A], &_sSay14BiomeSQLParser13SQLExpressionVGMd, &_sSay14BiomeSQLParser13SQLExpressionVGMR, lazy protocol witness table accessor for type SQLExpression and conformance SQLExpression);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 304);
    v11 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser12ResultColumnVGMd, &_sSay14BiomeSQLParser12ResultColumnVGMR);
    lazy protocol witness table accessor for type [Schema] and conformance <A> [A](&lazy protocol witness table cache variable for type [ResultColumn] and conformance <A> [A], &_sSay14BiomeSQLParser12ResultColumnVGMd, &_sSay14BiomeSQLParser12ResultColumnVGMR, lazy protocol witness table accessor for type ResultColumn and conformance ResultColumn);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MaterializedView.name.getter()
{
  v1 = *v0;

  return v1;
}

void *MaterializedView.init(create:resources:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::String *a3@<X8>)
{
  v76 = a2;
  v66 = a3;
  v72 = type metadata accessor for PlanResources(0);
  MEMORY[0x28223BE20](v72);
  v64 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v59 - v6;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  MEMORY[0x28223BE20](SelectStmt);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v59 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v62 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v59 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v70 = *(RangeVar - 8);
  v71 = RangeVar;
  MEMORY[0x28223BE20](RangeVar);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v59 - v18;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v21 = *(IntoClause - 8);
  MEMORY[0x28223BE20](IntoClause);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + *(type metadata accessor for PgQuery_CreateTableAsStmt(0) + 20));
  ResultSetCursor.columns.modify();
  if (v25 != 24)
  {
    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    *v30 = 0xD000000000000039;
    *(v30 + 8) = 0x80000002553B69E0;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *(v30 + 32) = 1;
    swift_willThrow();
    outlined destroy of PgQuery_ParseResult(v76, type metadata accessor for PlanResources);
    return outlined destroy of PgQuery_ParseResult(a1, type metadata accessor for PgQuery_CreateTableAsStmt);
  }

  v65 = a1;
  outlined init with copy of PgQuery_Alias?(v24 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into, v19, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v26 = *(v21 + 48);
  v27 = v26(v19, 1, IntoClause);
  v60 = v24;
  if (v27 == 1)
  {
    UnknownStorage.init()();
    v28 = *(IntoClause + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      v58 = *(IntoClause + 20);
      swift_once();
      v28 = v58;
    }

    *&v23[v28] = static PgQuery_IntoClause._StorageClass.defaultInstance;
    v29 = v26(v19, 1, IntoClause);

    if (v29 != 1)
    {
      outlined destroy of URL?(v19, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
    }
  }

  else
  {
    outlined init with take of PgQuery_ParseResult(v19, v23, type metadata accessor for PgQuery_IntoClause);
  }

  outlined init with copy of PgQuery_Alias?(*&v23[*(IntoClause + 20)] + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v32 = v71;
  v33 = *(v70 + 48);
  v34 = v33(v13, 1, v71);
  v35 = v65;
  if (v34 == 1)
  {
    *v16 = 0;
    *(v16 + 1) = 0xE000000000000000;
    *(v16 + 2) = 0;
    *(v16 + 3) = 0xE000000000000000;
    *(v16 + 4) = 0;
    *(v16 + 5) = 0xE000000000000000;
    v16[48] = 0;
    *(v16 + 7) = 0;
    *(v16 + 8) = 0xE000000000000000;
    *(v16 + 18) = 0;
    UnknownStorage.init()();
    v36 = *(v32 + 44);
    Alias = type metadata accessor for PgQuery_Alias(0);
    (*(*(Alias - 8) + 56))(&v16[v36], 1, 1, Alias);
    v38 = v33(v13, 1, v32);
    v39 = v74;
    v40 = v60;
    if (v38 != 1)
    {
      outlined destroy of URL?(v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    }
  }

  else
  {
    outlined init with take of PgQuery_ParseResult(v13, v16, type metadata accessor for PgQuery_RangeVar);
    v39 = v74;
    v40 = v60;
  }

  outlined destroy of PgQuery_ParseResult(v23, type metadata accessor for PgQuery_IntoClause);
  v41 = *(v16 + 18);
  outlined destroy of PgQuery_ParseResult(v16, type metadata accessor for PgQuery_RangeVar);
  v42 = v76;
  v43 = SQLTokenInformation.tokenName(location:)(v41);
  if (v44)
  {
    outlined destroy of PgQuery_ParseResult(v42, type metadata accessor for PlanResources);
    return outlined destroy of PgQuery_ParseResult(v35, type metadata accessor for PgQuery_CreateTableAsStmt);
  }

  v45 = v67;
  *v66 = v43;
  object = v43._object;
  outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v46 = *(v62 + 48);
  v47 = Node;
  if ((v46)(v45, 1, Node) == 1)
  {
    v48 = v68;
    UnknownStorage.init()();
    v49 = *(v47 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v48 + v49) = static PgQuery_Node._StorageClass.defaultInstance;
    v50 = v67;
    v51 = v46(v67, 1);

    v39 = v74;
    if (v51 != 1)
    {
      outlined destroy of URL?(v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }
  }

  else
  {
    v52 = v45;
    v48 = v68;
    outlined init with take of PgQuery_ParseResult(v52, v68, type metadata accessor for PgQuery_Node);
  }

  outlined init with copy of PgQuery_Alias?(*(v48 + *(Node + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v53 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v54 = (*(*(v53 - 8) + 48))(v39, 1, v53);
  v55 = v63;
  if (v54 == 1)
  {
    outlined destroy of URL?(v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_26:
    UnknownStorage.init()();
    v56 = *(SelectStmt + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v55 + v56) = static PgQuery_SelectStmt._StorageClass.defaultInstance;

    goto LABEL_29;
  }

  if (swift_getEnumCaseMultiPayload() != 56)
  {
    outlined destroy of PgQuery_ParseResult(v39, type metadata accessor for PgQuery_Node.OneOf_Node);
    goto LABEL_26;
  }

  outlined init with take of PgQuery_ParseResult(v39, v55, type metadata accessor for PgQuery_SelectStmt);
LABEL_29:
  outlined destroy of PgQuery_ParseResult(v68, type metadata accessor for PgQuery_Node);
  v57 = v64;
  outlined init with copy of PgQuery_ScanResult(v42, v64, type metadata accessor for PlanResources);
  SelectCore.init(select:resources:)(v55, v57, v75);
  outlined destroy of PgQuery_ParseResult(v42, type metadata accessor for PlanResources);
  outlined destroy of PgQuery_ParseResult(v65, type metadata accessor for PgQuery_CreateTableAsStmt);
  return memcpy(&v66[1], v75, 0x138uLL);
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

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MaterializedView.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MaterializedView.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser16MaterializedViewV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser16MaterializedViewV10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type MaterializedView.CodingKeys and conformance MaterializedView.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    lazy protocol witness table accessor for type SelectCore and conformance SelectCore();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
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

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LogicalPlan.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LogicalPlan.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser11LogicalPlanV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser11LogicalPlanV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type LogicalPlan.CodingKeys and conformance LogicalPlan.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of LogicalPlanType(v3, v11);
  if (v11[328] == 1)
  {
    memcpy(v10, v11, sizeof(v10));
    v12 = 2;
    lazy protocol witness table accessor for type MaterializedView and conformance MaterializedView();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined destroy of MaterializedView(v10);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    memcpy(v10, v11, 0x138uLL);
    v12 = 3;
    lazy protocol witness table accessor for type SelectCore and conformance SelectCore();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v2)
    {
      outlined destroy of SelectCore(v10);
LABEL_7:
      v11[0] = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      v11[0] = 1;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      return (*(v6 + 8))(v8, v5);
    }

    outlined destroy of SelectCore(v10);
  }

  return (*(v6 + 8))(v8, v5);
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

  else if (a1 == 0xD000000000000010 && 0x80000002553B6960 == a2)
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

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LogicalPlanType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LogicalPlanType.MaterializedViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LogicalPlanType.MaterializedViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
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

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LogicalPlanType.SelectCoreCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LogicalPlanType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO26MaterializedViewCodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO26MaterializedViewCodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO20SelectCoreCodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO20SelectCoreCodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser15LogicalPlanTypeO10CodingKeys33_53FFB03555E1B5F278E35EF6B4945B73LLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type LogicalPlanType.CodingKeys and conformance LogicalPlanType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of LogicalPlanType(v20, v22);
  v12 = (v9 + 8);
  if (v22[328])
  {
    memcpy(v21, v22, sizeof(v21));
    v23 = 1;
    lazy protocol witness table accessor for type LogicalPlanType.MaterializedViewCodingKeys and conformance LogicalPlanType.MaterializedViewCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type MaterializedView and conformance MaterializedView();
    v13 = v19;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v18 + 8))(v4, v13);
    outlined destroy of MaterializedView(v21);
  }

  else
  {
    memcpy(v21, v22, 0x138uLL);
    v23 = 0;
    lazy protocol witness table accessor for type LogicalPlanType.SelectCoreCodingKeys and conformance LogicalPlanType.SelectCoreCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type SelectCore and conformance SelectCore();
    v14 = v17;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v16 + 8))(v7, v14);
    outlined destroy of SelectCore(v21);
  }

  return (*v12)(v11, v8);
}

void SQLParseResult.init(sql:)(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ScanResult = type metadata accessor for PgQuery_ScanResult(0);
  MEMORY[0x28223BE20](ScanResult);
  v103 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for CharacterSet();
  v104 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BinaryDecodingOptions();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v102 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  ParseResult = type metadata accessor for PgQuery_ParseResult(0);
  MEMORY[0x28223BE20](ParseResult);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SQLParseResult(0);
  v15 = *(v14 + 28);
  v105 = a3;
  v16 = (a3 + v15);
  *v16 = a1;
  v16[1] = a2;
  v109 = a1;
  v17 = String.utf8CString.getter();
  v113 = a2;

  pg_query_parse_protobuf(v17 + 32, &v110);
  v18 = v110;
  v19 = *(&v110 + 1);
  v20 = v111;

  if (*(&v20 + 1))
  {
    if (**(&v20 + 1))
    {
      v21 = String.init(cString:)();
      v23 = v22;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      swift_allocError();
      v24 = v113;
      *v25 = v109;
      *(v25 + 8) = v24;
      *(v25 + 16) = v21;
      *(v25 + 24) = v23;
      *(v25 + 32) = 0;
      swift_willThrow();
LABEL_17:

      return;
    }

    goto LABEL_42;
  }

  v98 = v20;
  v99 = v14;
  v100 = v18;
  if (!v19)
  {
    goto LABEL_43;
  }

  v26 = v19;
  v27 = v19;
  v28 = v100;
  v29 = specialized Data.init(bytes:count:)(v26, v100);
  v31 = v30;
  v112 = 0;
  v110 = 0u;
  v111 = 0u;
  outlined copy of Data._Representation(v29, v30);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type PgQuery_ParseResult and conformance PgQuery_ParseResult(&lazy protocol witness table cache variable for type PgQuery_ParseResult and conformance PgQuery_ParseResult, type metadata accessor for PgQuery_ParseResult, &protocol conformance descriptor for PgQuery_ParseResult);
  v32 = v108;
  Message.init(serializedData:extensions:partial:options:)();
  if (v32)
  {

    outlined consume of Data._Representation(v29, v31);
    goto LABEL_17;
  }

  v108 = v29;
  v33 = v105;
  outlined init with take of PgQuery_ParseResult(v13, v105, type metadata accessor for PgQuery_ParseResult);
  deparse_protobuf = pg_query_deparse_protobuf(v28, v27);
  if (v35)
  {
    deparse_protobuf = *v35;
    if (*v35)
    {
LABEL_15:
      v47 = String.init(cString:)();
      v49 = v48;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      swift_allocError();
      v51 = v113;
      *v50 = v109;
      *(v50 + 8) = v51;
      *(v50 + 16) = v47;
      *(v50 + 24) = v49;
LABEL_16:
      *(v50 + 32) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v108, v31);
      outlined destroy of PgQuery_ParseResult(v33, type metadata accessor for PgQuery_ParseResult);
      goto LABEL_17;
    }

    __break(1u);
  }

  v94 = v35;
  if (!deparse_protobuf)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v36 = deparse_protobuf;
  v92 = v27;
  v37 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v93 = v36;
  v38 = [v37 initWithCString:v36 encoding:4];
  if (!v38)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v39 = v38;
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v95 = v42;
  v43 = String.utf8CString.getter();
  pg_query_split_with_parser((v43 + 32), &v110);
  v44 = v110;
  v45 = DWORD2(v110);
  v46 = v111;

  if (*(&v46 + 1))
  {
    if (!**(&v46 + 1))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    goto LABEL_15;
  }

  v96 = v40;
  v91 = v46;
  v97 = v44;
  if (*(*(v33 + 8) + 16) != v45)
  {

    lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
    swift_allocError();
    v73 = v113;
    *v50 = v109;
    *(v50 + 8) = v73;
    *(v50 + 16) = 0xD000000000000042;
    *(v50 + 24) = 0x80000002553B68F0;
    goto LABEL_16;
  }

  if ((v45 & 0x80000000) != 0)
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

  v90 = v31;
  v89 = v45;
  if (v45)
  {
    ++v104;
    v52 = MEMORY[0x277D84F90];
    v53 = v45;
    v54 = v97;
    while (v97)
    {
      v55 = *v54;
      if (!*v54)
      {
        goto LABEL_44;
      }

      v56 = v55[1];
      v57 = *v55;
      v58 = String.index(_:offsetBy:)();
      if (__OFADD__(v57, v56))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (String.index(_:offsetBy:)() >> 14 < v58 >> 14)
      {
        goto LABEL_40;
      }

      v59 = String.subscript.getter();
      v60 = MEMORY[0x259C32B00](v59);
      v62 = v61;

      *&v110 = v60;
      *(&v110 + 1) = v62;
      v63 = v106;
      static CharacterSet.whitespacesAndNewlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v64 = StringProtocol.trimmingCharacters(in:)();
      v65 = v63;
      v66 = v64;
      v68 = v67;
      (*v104)(v65, v107);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v52 = v71;
      }

      v69 = *(v52 + 16);
      if (v69 >= *(v52 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v52 = v72;
      }

      *(v52 + 16) = v69 + 1;
      v70 = v52 + 16 * v69;
      *(v70 + 32) = v66;
      *(v70 + 40) = v68;
      ++v54;
      if (!--v53)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_45;
  }

  v52 = MEMORY[0x277D84F90];
LABEL_34:
  *(v105 + *(v99 + 24)) = v52;
  v74 = v109;
  v75 = String.utf8CString.getter();

  pg_query_scan(v75 + 32);
  v76 = v110;
  v77 = *(&v110 + 1);
  v78 = v111;

  if (*(&v78 + 1))
  {
    if (**(&v78 + 1))
    {

      v79 = String.init(cString:)();
      v81 = v80;
      lazy protocol witness table accessor for type SQLParserError and conformance SQLParserError();
      swift_allocError();
      v82 = v113;
      *v83 = v74;
      *(v83 + 8) = v82;
      *(v83 + 16) = v79;
      *(v83 + 24) = v81;
      *(v83 + 32) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v108, v90);
      outlined destroy of PgQuery_ParseResult(v105, type metadata accessor for PgQuery_ParseResult);

      goto LABEL_17;
    }

    goto LABEL_49;
  }

  v109 = v78;

  if (v77)
  {

    v84 = specialized Data.init(bytes:count:)(v77, v76);
    v86 = v85;
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    outlined copy of Data._Representation(v84, v85);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type PgQuery_ParseResult and conformance PgQuery_ParseResult(&lazy protocol witness table cache variable for type PgQuery_ScanResult and conformance PgQuery_ScanResult, type metadata accessor for PgQuery_ScanResult, &protocol conformance descriptor for PgQuery_ScanResult);
    v87 = v103;
    Message.init(serializedData:extensions:partial:options:)();
    outlined init with take of PgQuery_ParseResult(v87, v105 + *(v99 + 20), type metadata accessor for PgQuery_ScanResult);
    LODWORD(v110) = v76;
    *(&v110 + 1) = v77;
    v111 = v109;
    pg_query_free_scan_result(&v110);
    *&v110 = v97;
    DWORD2(v110) = v89;
    v111 = v91;
    pg_query_free_split_result(&v110);
    pg_query_free_deparse_result(v93, v94);
    LODWORD(v110) = v100;
    *(&v110 + 1) = v92;
    v111 = v98;
    pg_query_free_protobuf_parse_result(&v110);
    outlined consume of Data._Representation(v108, v90);
    outlined consume of Data._Representation(v84, v86);
    return;
  }

LABEL_50:
  __break(1u);
}