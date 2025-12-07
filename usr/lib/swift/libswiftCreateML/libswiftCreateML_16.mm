uint64_t destroy for AnyTreeClassifierModel(void *a1, uint64_t a2)
{
  a1[1];
  v3 = a1[2];
  if (v3)
  {
    v3;
    a1[4];
  }

  v4 = a1 + *(a2 + 24);
  v5 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  return *(a1 + *(a2 + 28));
}

void *initializeWithCopy for AnyTreeClassifierModel(void *a1, void *a2, uint64_t a3)
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
  v6 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  v7 = *(a3 + 28);
  v8 = *(a2 + v7 + 8);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + v7 + 8) = v8;

  return a1;
}

void *assignWithCopy for AnyTreeClassifierModel(void *a1, void *a2, uint64_t a3)
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
  v11 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  v12 = *(a3 + 28);
  v13 = *(a2 + v12 + 8);
  v14 = *(a1 + v12);
  *(a1 + v12) = *(a2 + v12);
  *(a1 + v12 + 8) = v13;

  v14;
  return a1;
}

uint64_t outlined destroy of FeatureVectorizer<Float>.Transformer(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t initializeWithTake for AnyTreeClassifierModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a3 + 24);
  v5 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v5 - 8) + 32))(a1 + v4, a2 + v4, v5);
  v6 = *(a3 + 28);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  *(a1 + v6) = *(a2 + v6);
  return a1;
}

void *assignWithTake for AnyTreeClassifierModel(void *a1, void *a2, uint64_t a3)
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
  v12 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = *(a3 + 28);
  v14 = *(a2 + v13 + 8);
  v15 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + v13 + 8) = v14;
  v15;
  return a1;
}

uint64_t sub_1028D2(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for BaseTreeClassifierModel(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 24) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_10295A(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseTreeClassifierModel(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 24) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for AnyTreeClassifierModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnyTreeClassifierModel;
  if (!type metadata singleton initialization cache for AnyTreeClassifierModel)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for AnyTreeClassifierModel);
  }

  return result;
}

uint64_t type metadata completion function for AnyTreeClassifierModel(uint64_t a1)
{
  v3[0] = &unk_3412D8;
  v3[1] = &unk_3412F0;
  result = type metadata accessor for BaseTreeClassifierModel(319);
  if (v2 <= 0x3F)
  {
    v3[2] = *(result - 8) + 64;
    v3[3] = &unk_341308;
    swift_initStructMetadata(a1, 256, 4, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_SS_TG5s7KeyPathCyAiKGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v11 = a2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>) - 8);
    v4 = ((*(v3 + 80) + 32) & ~*(v3 + 80)) + a1;
    v10 = *(v3 + 72);
    do
    {
      swift_getAtKeyPath(v4, a2);
      v5 = v9;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = v6 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v7 = v6 + 1;
        v5 = v9;
      }

      _swiftEmptyArrayStorage[2] = v7;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v5;
      v4 += v10;
      --v2;
      a2 = v11;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_Si_TG5s7KeyPathCyAiKGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v13 = *(a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>) - 8);
    v5 = ((*(v4 + 80) + 32) & ~*(v4 + 80)) + a1;
    v14 = *(v4 + 72);
    v12 = a2;
    do
    {
      swift_getAtKeyPath(v5, a2);
      v6 = v15;
      v7 = _swiftEmptyArrayStorage[2];
      v8 = v7 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v7)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v8, 1);
        v8 = v7 + 1;
        v6 = v15;
      }

      _swiftEmptyArrayStorage[2] = v8;
      v9 = 2 * v7;
      _swiftEmptyArrayStorage[v9 + 4] = v6;
      LOBYTE(_swiftEmptyArrayStorage[v9 + 5]) = v16 & 1;
      v5 += v14;
      v10 = v13-- == 1;
      a2 = v12;
    }

    while (!v10);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t AnyTreeClassifierModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v25 = v4;
  v24 = a3;
  v21 = a2;
  v23 = v3;
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v26 = v5;
  v10 = *(v5 + 16);
  if (!v10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, ("ressorModel.swift" + 0x8000000000000000), "CreateML/AnyTreeClassifierModel.swift", 37, 2, 29, 0);
    BUG();
  }

  result = specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(a1, 0, v10, *(v26 + 24), *(v26 + 32));
  if (!v25)
  {
    v25 = v6;
    v12 = type metadata accessor for AnyTreeClassifierModel(0);
    v13 = BaseTreeClassifierModel.applied(features:eventHandler:)(&v21, v21, v24);
    v14 = v13;
    v24 = &v21;
    v15 = *(v12 + 28);
    v16 = *(v26 + v15);
    v17 = alloca(32);
    v18 = alloca(32);
    v19 = *(v26 + v15 + 8) == 0;
    v23 = v26;
    v24 = v16;
    if (v19)
    {
      MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5(partial apply for closure #1 in AnyTreeClassifierModel.applied(to:eventHandler:), &v21, v13);
      v14;
      specialized AnyTreeClassifierModel.buildDataFrame<A>(_:)(MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5);
    }

    else
    {
      MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_AHySSGs5NeverOTg5(partial apply for closure #2 in AnyTreeClassifierModel.applied(to:eventHandler:), &v21, v13);
      v14;
      specialized AnyTreeClassifierModel.buildDataFrame<A>(_:)(MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5);
    }

    MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5;
    return (*(v25 + 8))(v24, v22);
  }

  return result;
}

uint64_t closure #1 in AnyTreeClassifierModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  return ClassificationDistribution.map<A>(_:)(partial apply for closure #1 in AnyTreeClassifierModel.convertDistribution(_:labels:), v5, v3, &type metadata for Int, &protocol witness table for Int);
}

uint64_t specialized AnyTreeClassifierModel.buildDataFrame<A>(_:)(uint64_t a1)
{
  v28[4] = v1;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v29 = *(v31 - 8);
  v4 = *(v29 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = v28;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<ClassificationDistribution<Int>>);
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v33 = v28;
  v34 = *v2;
  v10 = v2[1];
  v38 = v34;
  v39 = v10;

  v11._countAndFlagsBits = 0x6C696261626F7250;
  v11._object = 0xEB00000000797469;
  String.append(_:)(v11);
  v36 = v38;
  v37 = v39;
  v35 = a1;
  v38 = a1;

  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ClassificationDistribution<Int>]);
  v14 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [ClassificationDistribution<Int>] and conformance [A], &demangling cache variable for type metadata for [ClassificationDistribution<Int>]);
  Column.init<A>(name:contents:)(v36, v37, &v38, v12, v13, v14);
  v28[2] = &type metadata for Int;
  v28[3] = &protocol witness table for Int;
  KeyPath = swift_getKeyPath(&unk_341388);

  MLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_Si_TG5s7KeyPathCyAiKGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_Si_TG5s7KeyPathCyAiKGTf1cn_n(v35, KeyPath);

  v38 = MLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_Si_TG5s7KeyPathCyAiKGTf1cn_n;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int?]);
  v18 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [Int?] and conformance [A], &demangling cache variable for type metadata for [Int?]);
  Column.init<A>(name:contents:)(v34, v10, &v38, &type metadata for Int, v17, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v20 = *(type metadata accessor for AnyColumn(0) - 8);
  v21 = swift_allocObject(v19, ((*(v20 + 80) + 32) & ~*(v20 + 80)) + 2 * *(v20 + 72), *(v20 + 80) | 7);
  *(v21 + 16) = 2;
  *(v21 + 24) = 4;
  v22 = v31;
  Column.eraseToAnyColumn()(v31);
  v23 = v32;
  v24 = v33;
  Column.eraseToAnyColumn()(v32);
  v38 = v21;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v26 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn]);
  DataFrame.init<A>(columns:)(&v38, v25, v26);
  (*(v29 + 8))(v40, v22);
  return (*(v30 + 8))(v24, v23);
}

{
  v28[4] = v1;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v29 = *(v31 - 8);
  v4 = *(v29 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = v28;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<ClassificationDistribution<String>>);
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v33 = v28;
  v34 = *v2;
  v10 = v2[1];
  v38 = v34;
  v39 = v10;

  v11._countAndFlagsBits = 0x6C696261626F7250;
  v11._object = 0xEB00000000797469;
  String.append(_:)(v11);
  v36 = v38;
  v37 = v39;
  v35 = a1;
  v38 = a1;

  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ClassificationDistribution<String>]);
  v14 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [ClassificationDistribution<String>] and conformance [A], &demangling cache variable for type metadata for [ClassificationDistribution<String>]);
  Column.init<A>(name:contents:)(v36, v37, &v38, v12, v13, v14);
  v28[2] = &type metadata for String;
  v28[3] = &protocol witness table for String;
  KeyPath = swift_getKeyPath(&unk_341388);

  MLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_SS_TG5s7KeyPathCyAiKGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_SS_TG5s7KeyPathCyAiKGTf1cn_n(v35, KeyPath);

  v38 = MLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_SS_TG5s7KeyPathCyAiKGTf1cn_n;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String?]);
  v18 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String?] and conformance [A], &demangling cache variable for type metadata for [String?]);
  Column.init<A>(name:contents:)(v34, v10, &v38, &type metadata for String, v17, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v20 = *(type metadata accessor for AnyColumn(0) - 8);
  v21 = swift_allocObject(v19, ((*(v20 + 80) + 32) & ~*(v20 + 80)) + 2 * *(v20 + 72), *(v20 + 80) | 7);
  *(v21 + 16) = 2;
  *(v21 + 24) = 4;
  v22 = v31;
  Column.eraseToAnyColumn()(v31);
  v23 = v32;
  v24 = v33;
  Column.eraseToAnyColumn()(v32);
  v38 = v21;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v26 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn]);
  DataFrame.init<A>(columns:)(&v38, v25, v26);
  (*(v29 + 8))(v40, v22);
  return (*(v30 + 8))(v24, v23);
}

uint64_t closure #2 in AnyTreeClassifierModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  return ClassificationDistribution.map<A>(_:)(partial apply for closure #1 in AnyTreeClassifierModel.convertDistribution(_:labels:), v5, v3, &type metadata for String, &protocol witness table for String);
}

uint64_t closure #1 in AnyTreeClassifierModel.convertDistribution(_:labels:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Classification<Int>);
  Classification.label.getter(v3);
  if (v5[0] < 0 || v5[0] >= v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000029, ("ClassifierModel.swift" + 0x8000000000000000), "CreateML/AnyTreeClassifierModel.swift", 37, 2, 47, 0);
    BUG();
  }

  Classification.label.getter(v3);
  if (v5[0] >= v2)
  {
    BUG();
  }

  v5[0] = *(a2 + 8 * v5[0] + 32);
  Classification.probability.getter(v3);
  return Classification.init(label:probability:)(v5, &type metadata for Int, &protocol witness table for Int);
}

{
  v2 = *(a2 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Classification<Int>);
  Classification.label.getter(v3);
  if (v6[0] < 0 || v6[0] >= v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000029, ("ClassifierModel.swift" + 0x8000000000000000), "CreateML/AnyTreeClassifierModel.swift", 37, 2, 57, 0);
    BUG();
  }

  Classification.label.getter(v3);
  if (v6[0] >= v2)
  {
    BUG();
  }

  v4 = *(a2 + 16 * v6[0] + 40);
  v6[0] = *(a2 + 16 * v6[0] + 32);
  v6[1] = v4;

  Classification.probability.getter(v3);
  return Classification.init(label:probability:)(v6, &type metadata for String, &protocol witness table for String);
}

uint64_t AnyTreeClassifierModel.computeMetrics(on:)(uint64_t a1)
{
  v14[0] = v1;
  v4 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v15 = v14;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v20 = v14;
  v17 = type metadata accessor for DataFrame(0);
  v16 = *(v17 - 8);
  v9 = *(v16 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v14[1] = a1;
  result = AnyTreeClassifierModel.applied(to:eventHandler:)(a1, 0, 0);
  if (!v2)
  {
    v18 = *v3;
    v19 = v3[1];
    DataFrame.subscript.getter(v18, v19);
    v13 = v15;
    DataFrame.subscript.getter(v18, v19);
    AnyClassificationMetrics.init(_:_:)(v20, v13);
    return (*(v16 + 8))(v14, v17);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyTreeClassifierModel and conformance AnyTreeClassifierModel()
{
  result = lazy protocol witness table cache variable for type AnyTreeClassifierModel and conformance AnyTreeClassifierModel;
  if (!lazy protocol witness table cache variable for type AnyTreeClassifierModel and conformance AnyTreeClassifierModel)
  {
    v1 = type metadata accessor for AnyTreeClassifierModel(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for AnyTreeClassifierModel, v1);
    lazy protocol witness table cache variable for type AnyTreeClassifierModel and conformance AnyTreeClassifierModel = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in AnyTreeClassifierModel.convertDistribution(_:labels:)(uint64_t a1)
{
  return closure #1 in AnyTreeClassifierModel.convertDistribution(_:labels:)(a1, *(v1 + 16));
}

{
  return closure #1 in AnyTreeClassifierModel.convertDistribution(_:labels:)(a1, *(v1 + 16));
}

uint64_t _UntypedColumn.__allocating_init<A>(_:)(uint64_t *a1, uint64_t a2, void *a3, double a4)
{
  v6 = swift_allocObject(v4, 24, 7);
  _UntypedColumn.init<A>(_:)(a1, a2, a3, a4);
  return v6;
}

uint64_t _UntypedColumn.init<A>(_:)(uint64_t *a1, uint64_t a2, void *a3, double a4)
{
  v86 = v4;
  v72 = v5;
  v78 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v83 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v73 = *(AssociatedTypeWitness - 8);
  v10 = *(v73 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v82 = &v69;
  v13 = tc_v1_flex_list_create(0);
  if (!v13)
  {
    BUG();
  }

  v14 = v13;
  v15 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v15, v70);
  *(inited + 16) = v14;
  v85 = inited;
  *(inited + 24) = 1;
  v17 = v78;
  v75 = v6;
  (*(v6 + 16))(&v69, v78, a2);
  v18 = v83;
  dispatch thunk of Sequence.makeIterator()(a2, v83);
  v74 = a2;
  v19 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v18, a2, AssociatedTypeWitness, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v71 = AssociatedConformanceWitness;
  LOBYTE(AssociatedConformanceWitness) = 6;
  v84 = AssociatedConformanceWitness;
  for (i = v19; ; i = AssociatedTypeWitness)
  {
    dispatch thunk of IteratorProtocol.next()(i, v71);
    v22 = v79;
    v23 = v80;
    v24 = v81;
    v25 = v81 == 6;
    v76 = v80;
    v83 = v79;
    if (v81 >= 6u)
    {
      break;
    }

    v25 = v84 == 6;
    if (v84 == 6)
    {
      switch(v81)
      {
        case 0u:
          goto LABEL_8;
        case 1u:
          goto LABEL_22;
        case 2u:
          goto LABEL_17;
        case 3u:
          goto LABEL_20;
        case 4u:
          goto LABEL_15;
        case 5u:
          goto LABEL_26;
        default:
          goto LABEL_11;
      }
    }

    v26 = v74;
    switch(v81)
    {
      case 0u:
        if (v84)
        {
          goto LABEL_31;
        }

LABEL_8:
        v27 = v86;
        v28 = specialized handling<A, B>(_:_:)(v79);
        if (v27)
        {
          v67 = 100;
          goto LABEL_45;
        }

        v29 = v28;
        v86 = 0;
        if (!v28)
        {
          BUG();
        }

        v30 = v24;
        v84 = 0;
        v31 = type metadata accessor for CMLFeatureValue();
        swift_allocObject(v31, 25, 7);
        v32 = CMLFeatureValue.init(rawValue:ownsValue:)(v29, 1);
        v33 = v83;
        v34 = v76;
        v35 = v24;
        goto LABEL_13;
      case 1u:
        if (v84 != 1)
        {
          goto LABEL_31;
        }

LABEL_22:
        a4 = *&v79;
        v27 = v86;
        v47 = specialized handling<A, B>(_:_:)();
        if (v27)
        {
          v67 = 153;
LABEL_45:
          v68 = v27;
LABEL_46:
          swift_unexpectedError(v68, "CreateML/MLDataValueConvertible.swift", 37, 1, v67);
          BUG();
        }

        v48 = v47;
        v86 = 0;
        if (!v47)
        {
          BUG();
        }

        v30 = v24;
        v49 = type metadata accessor for CMLFeatureValue();
        swift_allocObject(v49, 25, 7);
        v32 = CMLFeatureValue.init(rawValue:ownsValue:)(v48, 1);
        outlined consume of MLDataValue?(v83, v76, v24);
        LOBYTE(v39) = 1;
        goto LABEL_27;
      case 2u:
        if (v84 != 2)
        {
          goto LABEL_31;
        }

LABEL_17:
        v40 = v79;
        v41 = v80;
        v84 = type metadata accessor for CMLFeatureValue();
        v42 = v23;
        v30 = v24;
        outlined copy of MLDataValue(v40, v42, v24);

        v43 = v86;
        v44 = CMLFeatureValue.__allocating_init(_:)(v40, v41);
        v86 = v43;
        if (v43)
        {
          v67 = 170;
          v68 = v86;
          goto LABEL_46;
        }

        v32 = v44;
        outlined consume of MLDataValue?(v83, v41, v24);
        LOBYTE(v39) = 2;
        goto LABEL_27;
      case 3u:
        if (v84 != 3)
        {
          goto LABEL_31;
        }

LABEL_20:
        v45 = v79;
        v87 = v81;
        outlined copy of MLDataValue(v79, v80, v81);

        v32 = MLDataValue.SequenceType.featureValue.getter(a4);

        v46 = v23;
        v30 = v87;
        outlined consume of MLDataValue?(v45, v46, v87);
        LOBYTE(v39) = 3;
        goto LABEL_27;
      case 4u:
        if (v84 != 4)
        {
          goto LABEL_31;
        }

LABEL_15:
        v36 = v79;
        v37 = v80;
        v87 = v81;
        outlined copy of MLDataValue(v79, v80, v81);

        v32 = MLDataValue.DictionaryType.featureValue.getter(v22, v37);
        v79;
        v38 = v23;
        v30 = v87;
        outlined consume of MLDataValue?(v36, v38, v87);
        LOBYTE(v39) = 4;
        goto LABEL_27;
      case 5u:
        if (v84 != 5)
        {
LABEL_31:
          v53 = v79;
          v54 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v54, 0, 0);
          *v55 = 0xD000000000000027;
          *(v55 + 8) = "Invalid labelColumn." + 0x8000000000000000;
          *(v55 + 16) = 0;
          *(v55 + 32) = 0;
          *(v55 + 48) = 1;
          swift_willThrow();

          outlined consume of MLDataValue?(v53, v76, v24);
          (*(v75 + 8))(v78, v26);
          (*(v73 + 8))(v82, AssociatedTypeWitness);
          goto LABEL_32;
        }

LABEL_26:
        v50 = v79;
        v87 = v81;
        outlined copy of MLDataValue(v79, v80, v81);
        v22;
        v32 = MLDataValue.MultiArrayType.featureValue.getter();

        v51 = v23;
        v30 = v87;
        outlined consume of MLDataValue?(v50, v51, v87);
        LOBYTE(v39) = 5;
LABEL_27:
        v84 = v39;
        break;
      default:
        goto LABEL_11;
    }

LABEL_28:
    v52 = v86;
    CMLSequence.append(_:)(v32);
    v86 = v52;
    if (v52)
    {

      outlined consume of MLDataValue?(v83, v76, v30);
      (*(v75 + 8))(v78, v74);
      (*(v73 + 8))(v82, AssociatedTypeWitness);
      goto LABEL_32;
    }

    outlined consume of MLDataValue?(v83, v76, v30);
    v17 = v78;
  }

LABEL_11:
  if (v25)
  {
    v87 = v81;
    type metadata accessor for CMLFeatureValue();
    v32 = CMLFeatureValue.__allocating_init()();
    v33 = v83;
    v34 = v23;
    v30 = v87;
    v35 = 6;
LABEL_13:
    outlined consume of MLDataValue?(v33, v34, v35);
    goto LABEL_28;
  }

  (*(v73 + 8))(v82, AssociatedTypeWitness);
  v59 = v85;
  v60 = v86;
  v61 = specialized handling<A, B>(_:_:)(*(v85 + 16));
  if (v60)
  {
    swift_setDeallocating(v59);
    v62 = CMLFeatureValue.deinit();
    swift_deallocClassInstance(v62, 25, 7);
    (*(v75 + 8))(v17, v74);
LABEL_32:
    v56 = type metadata accessor for _UntypedColumn();
    v57 = v72;
    swift_deallocPartialClassInstance(v72, v56, 24, 7);
  }

  else
  {
    v63 = v61;
    if (!v61)
    {
      BUG();
    }

    swift_setDeallocating(v59);
    v64 = CMLFeatureValue.deinit();
    swift_deallocClassInstance(v64, 25, 7);
    v65 = type metadata accessor for CMLColumn();
    v66 = swift_allocObject(v65, 24, 7);
    *(v66 + 16) = v63;
    (*(v75 + 8))(v78, v74);
    v57 = v72;
    *(v72 + 16) = v66;
  }

  return v57;
}

uint64_t _UntypedColumn.__allocating_init<A>(_:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject(v4, 24, 7);
  _UntypedColumn.init<A>(_:)(a1, a2, a3, a4);
  return v6;
}

uint64_t _UntypedColumn.init<A>(_:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = v4;
  v59 = v5;
  v50 = a4;
  v61 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v49 = *(AssociatedTypeWitness - 8);
  v9 = *(v49 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v47 = v46;
  v52 = AssociatedTypeWitness;
  v12 = *(*(type metadata accessor for Optional(0, AssociatedTypeWitness) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v48 = v46;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  AssociatedConformanceWitness = a3;
  v55 = a2;
  v56 = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v51 = *(v56 - 8);
  v19 = *(v51 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v22 = tc_v1_flex_list_create(0);
  if (!v22)
  {
    BUG();
  }

  v23 = v22;
  v24 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v24, v46);
  *(inited + 16) = v23;
  v57 = inited;
  *(inited + 24) = 1;
  v26 = v55;
  v60 = v15;
  (*(v15 + 16))(v46, v61, v55);
  v54 = v46;
  v27 = AssociatedConformanceWitness;
  dispatch thunk of Sequence.makeIterator()(v26, AssociatedConformanceWitness);
  v28 = v56;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v27, v26, v56, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  while (1)
  {
    v29 = v48;
    dispatch thunk of IteratorProtocol.next()(v28, AssociatedConformanceWitness);
    v30 = v52;
    if (__swift_getEnumTagSinglePayload(v29, 1, v52) == 1)
    {
      break;
    }

    v31 = v29;
    v32 = v47;
    v33 = v49;
    (*(v49 + 32))(v47, v31, v30);
    v34 = MLDataValueConvertible.featureValue.getter(v30, v50);
    v35 = v53;
    CMLSequence.append(_:)(v34);
    if (v35)
    {

      (*(v60 + 8))(v61, v55);
      (*(v33 + 8))(v32, v52);
      v39 = v54;
      v40 = v56;
      v41 = v51;
      goto LABEL_9;
    }

    v53 = 0;
    (*(v33 + 8))(v32, v52);

    v26 = v55;
    v28 = v56;
  }

  (*(v51 + 8))(v54, v28);
  (*(v50 + 8))(v30);
  v36 = 0x5060403020100uLL >> (8 * v62);
  type metadata accessor for CMLColumn();
  v37 = v53;
  v38 = CMLColumn.__allocating_init(_:type:)(v57, v36);
  if (v37)
  {
    v39 = v61;
    v40 = v26;
    v41 = v60;
LABEL_9:
    (*(v41 + 8))(v39, v40);
    v42 = v59;
    v43 = type metadata accessor for _UntypedColumn();
    swift_deallocPartialClassInstance(v42, v43, 24, 7);
    return v42;
  }

  v45 = v38;
  (*(v60 + 8))(v61, v26);
  v42 = v59;
  *(v59 + 16) = v45;
  return v42;
}

uint64_t _UntypedColumn.init(repeating:count:)(__int128 *a1, uint64_t a2)
{
  v8 = *a1;
  v9 = *(a1 + 16);
  v3 = MLDataValue.featureValue.getter(a1, a2, *a1);
  outlined consume of MLDataValue(v8, *(&v8 + 1), v9);
  if (a2 < 0)
  {
    BUG();
  }

  v4 = specialized handling<A, B, C>(_:_:_:)(*(v3 + 16), a2);
  if (!v4)
  {
    BUG();
  }

  v5 = type metadata accessor for CMLColumn();
  v6 = swift_allocObject(v5, 24, 7);
  *(v6 + 16) = v4;
  *(v2 + 16) = v6;
  return v2;
}

uint64_t _UntypedColumn.__allocating_init<A>(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject(v4, 24, 7);
  _UntypedColumn.init<A>(repeating:count:)(a1, a2, a3, a4);
  return v7;
}

uint64_t _UntypedColumn.init<A>(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MLDataValueConvertible.featureValue.getter(a3, a4);
  if (a2 < 0)
  {
    BUG();
  }

  v7 = specialized handling<A, B, C>(_:_:_:)(*(v6 + 16), a2);
  if (!v7)
  {
    BUG();
  }

  v8 = type metadata accessor for CMLColumn();
  v9 = swift_allocObject(v8, 24, 7);
  *(v9 + 16) = v7;
  (*(*(a3 - 8) + 8))(a1, a3);
  result = v4;
  *(v4 + 16) = v9;
  return result;
}

uint64_t _UntypedColumn.init(_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 | a2) < 0)
  {
    BUG();
  }

  v3 = specialized handling<A, B, C>(_:_:_:)(a1, a2);
  if (!v3)
  {
    BUG();
  }

  v4 = type metadata accessor for CMLColumn();
  v5 = swift_allocObject(v4, 24, 7);
  *(v5 + 16) = v3;
  *(v2 + 16) = v5;
  return v2;
}

{
  v3 = __OFADD__(1, a2);
  v4 = a2 + 1;
  if (v3)
  {
    BUG();
  }

  if ((a1 | v4) < 0)
  {
    BUG();
  }

  v5 = specialized handling<A, B, C>(_:_:_:)(a1, v4);
  if (!v5)
  {
    BUG();
  }

  v6 = type metadata accessor for CMLColumn();
  v7 = swift_allocObject(v6, 24, 7);
  *(v7 + 16) = v5;
  *(v2 + 16) = v7;
  return v2;
}

uint64_t _UntypedColumn.appending(contentsOf:)(uint64_t a1)
{
  v3 = *(v2 + 16);
  v4 = CMLColumn.type.getter();
  v5 = *(a1 + 16);
  if (v4 == CMLColumn.type.getter())
  {
    type metadata accessor for CMLColumn();

    result = CMLColumn.__allocating_init(concatenating:and:)(v3, v5);
    if (!v1)
    {
      v7 = result;
      v8 = type metadata accessor for _UntypedColumn();
      result = swift_allocObject(v8, 24, 7);
      *(result + 16) = v7;
    }
  }

  else
  {
    v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
    *v10 = 0xD000000000000034;
    *(v10 + 8) = " \nValues:        [" + 0x8000000000000000;
    *(v10 + 16) = 0;
    *(v10 + 32) = 0;
    *(v10 + 48) = 1;
    return swift_willThrow();
  }

  return result;
}

unint64_t _UntypedColumn.type.getter()
{
  v1 = v0;
  result = 0x5060403020100uLL >> (8 * CMLColumn.type.getter());
  *v1 = result;
  return result;
}

uint64_t static _UntypedColumn.performRightScalar(op:a:b:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = *a3;
  v15 = *a3;
  v16 = *(a3 + 8);
  v17 = *(a3 + 16);
  outlined copy of MLDataValue(*a3, v16, v17);
  v7 = MLDataValue.featureValue.getter(v6, v16, a4);
  outlined consume of MLDataValue(v15, v16, v17);
  switch(a1)
  {
    case 0:
      v8 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "+", *(v7 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v8)
      {
        BUG();
      }

      goto LABEL_33;
    case 1:
      v8 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "-", *(v7 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v8)
      {
        BUG();
      }

      goto LABEL_33;
    case 2:
      v8 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "/", *(v7 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v8)
      {
        BUG();
      }

      goto LABEL_33;
    case 3:
      v8 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "*", *(v7 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v8)
      {
        BUG();
      }

      goto LABEL_33;
    case 4:
      v8 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "==", *(v7 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v8)
      {
        BUG();
      }

      goto LABEL_33;
    case 5:
      v8 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "!=", *(v7 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v8)
      {
        BUG();
      }

      goto LABEL_33;
    case 6:
      v8 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "<", *(v7 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v8)
      {
        BUG();
      }

      goto LABEL_33;
    case 7:
      v8 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), ">", *(v7 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v8)
      {
        BUG();
      }

      goto LABEL_33;
    case 8:
      v8 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), "<=", *(v7 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v8)
      {
        BUG();
      }

      goto LABEL_33;
    case 9:
      v8 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(a2 + 16) + 16), ">=", *(v7 + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v8)
      {
        BUG();
      }

LABEL_33:
      v18 = v8;

      v12 = type metadata accessor for CMLColumn();
      v13 = swift_allocObject(v12, 24, 7);
      *(v13 + 16) = v18;
      v14 = type metadata accessor for _UntypedColumn();
      result = swift_allocObject(v14, 24, 7);
      *(result + 16) = v13;
      break;
    default:
      v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
      *v10 = 0xD000000000000017;
      *(v10 + 8) = "h columns must match" + 0x8000000000000000;
      *(v10 + 16) = 0;
      *(v10 + 32) = 0;
      *(v10 + 48) = 1;
      swift_willThrow();
LABEL_31:

      break;
  }

  return result;
}

uint64_t static _UntypedColumn.performLeftScalar(op:a:b:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *a2;
  v17 = *(a2 + 16);
  v8 = *(a2 + 8);
  outlined copy of MLDataValue(v7, v8, v17);
  v9 = MLDataValue.featureValue.getter(v7, v8, a4);
  outlined consume of MLDataValue(v7, v8, v17);
  switch(a1)
  {
    case 0:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v9 + 16), "+", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 1:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v9 + 16), "-", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 2:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v9 + 16), "/", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 3:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v9 + 16), "*", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 4:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v9 + 16), "==", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 5:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v9 + 16), "!=", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 6:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v9 + 16), "<", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 7:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v9 + 16), ">", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 8:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v9 + 16), "<=", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

      goto LABEL_33;
    case 9:
      v10 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v9 + 16), ">=", *(*(a3 + 16) + 16));
      if (v4)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        BUG();
      }

LABEL_33:
      v18 = v10;

      v14 = type metadata accessor for CMLColumn();
      v15 = swift_allocObject(v14, 24, 7);
      *(v15 + 16) = v18;
      v16 = type metadata accessor for _UntypedColumn();
      result = swift_allocObject(v16, 24, 7);
      *(result + 16) = v15;
      break;
    default:
      v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
      *v12 = 0xD000000000000017;
      *(v12 + 8) = "h columns must match" + 0x8000000000000000;
      *(v12 + 16) = 0;
      *(v12 + 32) = 0;
      *(v12 + 48) = 1;
      swift_willThrow();
LABEL_31:

      break;
  }

  return result;
}

char _UntypedColumn.valueAtIndex(index:)(uint64_t a1, double a2)
{
  v3 = v2;
  if (a1 < 0 || (v2 = CMLColumn.size.getter(), v2 <= a1))
  {
    *v3 = 0;
    *(v3 + 16) = 6;
  }

  else
  {
    v4 = CMLColumn.value(at:)(a1);
    LOBYTE(v2) = MLDataValue.init(_:)(v4, a2);
  }

  return v2;
}

uint64_t _UntypedColumn.description.getter()
{
  _UntypedColumn.type.getter();
  switch(v39)
  {
    case 0:
      v0 = 0xE300000000000000;
      v1._countAndFlagsBits = 7630409;
      break;
    case 1:
      v1._countAndFlagsBits = 0x656C62756F44;
      goto LABEL_7;
    case 2:
      v1._countAndFlagsBits = 0x676E69727453;
LABEL_7:
      v0 = 0xE600000000000000;
      break;
    case 3:
      v0 = 0xE800000000000000;
      v1._countAndFlagsBits = 0x65636E6575716553;
      break;
    case 4:
      v0 = 0xEA00000000007972;
      v1._countAndFlagsBits = 0x616E6F6974636944;
      break;
    case 5:
      v1._countAndFlagsBits = 0x72724169746C754DLL;
      v0 = 0xEA00000000007961;
      break;
    case 6:
      v1._countAndFlagsBits = 0x676E697373694DLL;
      v0 = 0xE700000000000000;
      break;
  }

  v41._countAndFlagsBits = 0x70795465756C6156;
  v41._object = 0xEB00000000203A65;
  v1._object = v0;
  String.append(_:)(v1);
  v0;
  object = v41._object;

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = "CreateML/_UntypedColumn.swift" + 0x8000000000000000;
  String.append(_:)(v3);
  object;
  v4 = _mm_loadu_si128(&v41).u64[0];
  v40 = v4;
  v5 = CMLColumn.size.getter();
  v6 = 10;
  if (v5 < 10)
  {
    v6 = v5;
  }

  v35 = v6;
  if (v5 < 0)
  {
    BUG();
  }

  if (v5)
  {
    v36 = v5;
    v7 = 0;
    do
    {
      if (v7)
      {
        v8._countAndFlagsBits = 8236;
        v8._object = 0xE200000000000000;
        String.append(_:)(v8);
      }

      _UntypedColumn.valueAtIndex(index:)(v7, *&v4);
      countAndFlagsBits = v41._countAndFlagsBits;
      v10 = v41._object;
      switch(v42)
      {
        case 0:
          v11 = lazy protocol witness table accessor for type Int and conformance Int();
          v12._countAndFlagsBits = BinaryInteger.description.getter(&type metadata for Int, v11);
          v13 = v12._object;
          String.append(_:)(v12);
          v15 = v13;
          goto LABEL_25;
        case 1:
          v4 = v41._countAndFlagsBits;
          v22._countAndFlagsBits = Double.description.getter(*&v41._countAndFlagsBits);
          v23 = v22._object;
          String.append(_:)(v22);
          v15 = v23;
LABEL_25:
          v15;
          break;
        case 2:

          v16._countAndFlagsBits = countAndFlagsBits;
          v16._object = v10;
          String.append(_:)(v16);
          outlined consume of MLDataValue(countAndFlagsBits, v10, 2);
          outlined consume of MLDataValue(countAndFlagsBits, v10, 2);
          break;
        case 3:
          v41._object = closure #1 in MLDataValue.SequenceType.description.getter;
          v42 = 0;
          outlined copy of MLDataValue(v41._countAndFlagsBits, v10, 3u);
          swift_retain_n(countAndFlagsBits, 2);
          v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<MLDataValue.SequenceType, String>);
          v18 = lazy protocol witness table accessor for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>();
          v37 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v17, v18);
          v20 = v19;

          v41._countAndFlagsBits = 91;
          v41._object = 0xE100000000000000;
          v21._countAndFlagsBits = v37;
          v21._object = v20;
          String.append(_:)(v21);
          v20;
          LOBYTE(v20) = v41._object;

          v21._countAndFlagsBits = 93;
          v21._object = 0xE100000000000000;
          String.append(_:)(v21);
          v20;
          outlined consume of MLDataValue(countAndFlagsBits, v10, 3);
          String.append(_:)(v41);
          JUMPOUT(0x1051BFLL);
        case 4:
          v14 = lazy protocol witness table accessor for type MLDataValue and conformance MLDataValue();

          Dictionary.description.getter(countAndFlagsBits, &type metadata for MLDataValue, &type metadata for MLDataValue, v14);
          outlined consume of MLDataValue(countAndFlagsBits, v10, 4);
          JUMPOUT(0x105076);
        case 5:
          v24 = v41._countAndFlagsBits;
          v25 = v24;
          v26 = [v25 description];
          v27 = v26;
          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)(v27);
          v29 = v28;

          outlined consume of MLDataValue(countAndFlagsBits, v10, 5);
          v30._countAndFlagsBits = v38;
          v30._object = v29;
          String.append(_:)(v30);
          JUMPOUT(0x10527CLL);
        case 6:
          v31._countAndFlagsBits = 0x676E697373694DLL;
          v31._object = 0xE700000000000000;
          String.append(_:)(v31);
          break;
      }

      ++v7;
    }

    while (v35 != v7);
    if (v36 >= 11)
    {
      v32._countAndFlagsBits = 0x2E2E2E202CLL;
      v32._object = 0xE500000000000000;
      String.append(_:)(v32);
    }
  }

  v33._countAndFlagsBits = 93;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  return v40;
}

uint64_t _UntypedColumn.map(_:skipUndefined:outputType:)(uint64_t a1, uint64_t a2, char a3, _BYTE *a4)
{
  v4 = CMLColumn.apply(transform:type:skipUndefined:)(a1, a2, 0x5060403020100uLL >> (8 * *a4), a3);
  v5 = type metadata accessor for _UntypedColumn();
  result = swift_allocObject(v5, 24, 7);
  *(result + 16) = v4;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType()
{
  result = lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType;
  if (!lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.SequenceType, &type metadata for MLDataValue.SequenceType);
    lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType;
  if (!lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.SequenceType, &type metadata for MLDataValue.SequenceType);
    lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType;
  if (!lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.SequenceType, &type metadata for MLDataValue.SequenceType);
    lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType;
  if (!lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.SequenceType, &type metadata for MLDataValue.SequenceType);
    lazy protocol witness table cache variable for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType = result;
  }

  return result;
}

char MLActivityClassifier.ModelParameters.init(validationData:batchSize:maximumIterations:predictionWindowSize:)(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v9 = v7;
  v18 = *a1;
  v21 = *(a1 + 8);
  *v7 = 0;
  *(v7 + 8) = -1;
  v11 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v20 = v11[6];
  v12 = v11[7];
  v19 = v11[8];
  v13 = v9 + v11[5];
  v14 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  swift_storeEnumTagMultiPayload(v13, v14, 2);
  outlined consume of MLDataTable?(*v9, *(v9 + 8));
  *v9 = v18;
  *(v9 + 8) = v21;
  *(v9 + v12) = a2;
  *(v9 + v12 + 8) = a3 & 1;
  *(v9 + v20) = a4;
  *(v9 + v20 + 8) = a5 & 1;
  *(v9 + v19) = a6;
  result = a7 & 1;
  *(v9 + v19 + 8) = a7 & 1;
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.init(validation:batchSize:maximumIterations:predictionWindowSize:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v9 = v7;
  *v7 = 0;
  *(v7 + 8) = -1;
  v11 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v17 = v11[6];
  v12 = v11[7];
  v16 = v11[8];
  outlined init with take of MLClassifierMetrics(a1, v9 + v11[5], type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
  *(v9 + v12) = a2;
  *(v9 + v12 + 8) = a3 & 1;
  *(v9 + v17) = a4;
  *(v9 + v17 + 8) = a5 & 1;
  result = a6;
  *(v9 + v16) = a6;
  *(v9 + v16 + 8) = a7 & 1;
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.description.getter()
{
  strcpy(v17, "Batch Size: ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  v22 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v1 = v22[7];
  v2 = *(v0 + v1 + 8);
  v19._countAndFlagsBits = *(v0 + v1);
  LOBYTE(v19._object) = v2;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
  v3._countAndFlagsBits = String.init<A>(describing:)(&v19, v18);
  object = v3._object;
  String.append(_:)(v3);
  object;
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v19._object;
  v19._countAndFlagsBits = 0xD000000000000010;
  v19._object = "ansformer have different types." + 0x8000000000000000;
  v6 = v22[6];
  v7 = *(v0 + v6);
  LOBYTE(v6) = *(v0 + v6 + 8);
  v20 = v7;
  v21 = v6;
  v8._countAndFlagsBits = String.init<A>(describing:)(&v20, v18);
  v9 = v8._object;
  String.append(_:)(v8);
  v9;
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v10 = v19._object;
  String.append(_:)(v19);
  v10;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v19._object;
  v19._countAndFlagsBits = 0xD000000000000013;
  v19._object = "ported." + 0x8000000000000000;
  v11 = v22[8];
  v12 = *(v0 + v11);
  LOBYTE(v11) = *(v0 + v11 + 8);
  v20 = v12;
  v21 = v11;
  v13._countAndFlagsBits = String.init<A>(describing:)(&v20, v18);
  v14 = v13._object;
  String.append(_:)(v13);
  v14;
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v15 = v19._object;
  String.append(_:)(v19);
  v15;
  return v17[0];
}

uint64_t MLActivityClassifier.ModelParameters.validationData.getter()
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *v0 = *v1;
  *(v0 + 8) = v3;
  return outlined copy of MLDataTable?(v2, v3);
}

uint64_t MLActivityClassifier.ModelParameters.validationData.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = outlined consume of MLDataTable?(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  return outlined init with copy of MLActivityClassifier.ModelParameters.Validation(v1 + *(v3 + 20), v2);
}

uint64_t key path setter for MLActivityClassifier.ModelParameters.validation : MLActivityClassifier.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLActivityClassifier.ModelParameters.Validation(a1, v6);
  return MLActivityClassifier.ModelParameters.validation.setter(v6);
}

void (*MLActivityClassifier.ModelParameters.validation.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0) - 8) + 64);
  *(a1 + 8) = malloc(v3);
  v4 = malloc(v3);
  *(a1 + 16) = v4;
  v5 = *(type metadata accessor for MLActivityClassifier.ModelParameters(0) + 20);
  *(a1 + 24) = v5;
  outlined init with copy of MLActivityClassifier.ModelParameters.Validation(v1 + v5, v4);
  return MLActivityClassifier.ModelParameters.validation.modify;
}

void MLActivityClassifier.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1 + *(a1 + 24);
  if (a2)
  {
    outlined init with copy of MLActivityClassifier.ModelParameters.Validation(v3, v2);
    outlined assign with take of MLActivityClassifier.ModelParameters.Validation(v2, v4);
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v3, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
  }

  else
  {
    outlined assign with take of MLActivityClassifier.ModelParameters.Validation(v3, v4);
  }

  free(v3);
  free(v2);
}

uint64_t MLActivityClassifier.ModelParameters.maximumIterations.setter(uint64_t a1, char a2)
{
  result = *(type metadata accessor for MLActivityClassifier.ModelParameters(0) + 24);
  *(v2 + result) = a1;
  *(v2 + result + 8) = a2 & 1;
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.batchSize.setter(uint64_t a1, char a2)
{
  result = *(type metadata accessor for MLActivityClassifier.ModelParameters(0) + 28);
  *(v2 + result) = a1;
  *(v2 + result + 8) = a2 & 1;
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.predictionWindowSize.setter(uint64_t a1, char a2)
{
  result = *(type metadata accessor for MLActivityClassifier.ModelParameters(0) + 32);
  *(v2 + result) = a1;
  *(v2 + result + 8) = a2 & 1;
  return result;
}

char MLActivityClassifier.ModelParameters.init(validationData:batchSize:maximumIterations:predictionWindowSize:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v9 = v7;
  *v7 = 0;
  *(v7 + 8) = -1;
  v11 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v19 = v11[6];
  v12 = v11[7];
  v18 = v11[8];
  v13 = v9 + v11[5];
  outlined init with take of MLClassifierMetrics(a1, v13, type metadata accessor for MLActivityClassifier.DataSource);
  v14 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  swift_storeEnumTagMultiPayload(v13, v14, 1);
  *(v9 + v12) = a2;
  *(v9 + v12 + 8) = a3 & 1;
  *(v9 + v19) = a4;
  *(v9 + v19 + 8) = a5 & 1;
  *(v9 + v18) = a6;
  result = a7 & 1;
  *(v9 + v18 + 8) = a7 & 1;
  return result;
}

uint64_t MLActivityClassifier.ModelParameters.generateTables(trainingData:featureColumns:labelColumn:recordingFileColumn:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t *a6, __m128 xmm0_0, void *a7, void *a8)
{
  v57 = v9;
  v58 = a6;
  v56 = a5;
  v49 = a4;
  v50 = a2;
  v51 = a1;
  v12 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v52 = *a3;
  v59 = *(a3 + 8);
  v16 = *(v10 + 8);
  if (v16 == 0xFF)
  {
    goto LABEL_7;
  }

  v55 = *v10;
  v17 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  outlined init with copy of MLActivityClassifier.ModelParameters.Validation(v10 + *(v17 + 20), &v46);
  if (swift_getEnumCaseMultiPayload(&v46, v12) != 2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(&v46, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
LABEL_7:
    type metadata accessor for MLActivityClassifier.ModelParameters(0);
    v53 = v52;
    LOBYTE(v54) = v59 & 1;
    MLActivityClassifier.ModelParameters.Validation.generateTables(trainingData:featureColumns:labelColumn:recordingFileColumn:)(v51, v50, &v53, v49, v56, v58, a7, a8);
    return v45;
  }

  v18 = v55;
  outlined copy of Result<_DataTable, Error>(v55, v16);
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(&v46, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
  v47 = v18;
  LOBYTE(v48) = v16 & 1;
  v19 = v57;
  validateAndConvertRawDataToInternalData(_:featureColumns:labelColumn:recordingFileColumn:)(&v47, v49, v56, v58, a7, a8, xmm0_0);
  if (v19)
  {
    v20 = v18;
    v21 = v16;
    return outlined consume of MLDataTable?(v20, v21);
  }

  LODWORD(v58) = v16;
  v23 = v53;
  LOBYTE(v57) = v54;
  if (v54)
  {
    outlined copy of Result<_DataTable, Error>(v53, 1);
    v24 = tc_v1_flex_list_create(0);
    if (!v24)
    {
      BUG();
    }

    v25 = v24;
    outlined consume of Result<_DataTable, Error>(v23, 1);
    v26 = type metadata accessor for CMLSequence();
    v27 = swift_allocObject(v26, 25, 7);
    *(v27 + 16) = v25;
    *(v27 + 24) = 1;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v53, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v23, 0);
    v27 = v53;
  }

  v28 = CMLSequence.size.getter();
  v29 = specialized RandomAccessCollection<>.distance(from:to:)(0, v28);
  v27;
  if (v29)
  {
    v56 = v23;
    if (v57)
    {
      outlined copy of Result<_DataTable, Error>(v23, 1);
      v30 = tc_v1_flex_list_create(0);
      if (!v30)
      {
        BUG();
      }

      v31 = v30;
      v32 = type metadata accessor for CMLSequence();
      v33 = swift_allocObject(v32, 25, 7);
      *(v33 + 16) = v31;
      *(v33 + 24) = 1;
      outlined consume of Result<_DataTable, Error>(v23, 1);
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(v23, 0);
      _DataTable.columnNames.getter();
      outlined consume of Result<_DataTable, Error>(v23, 0);
      v33 = v47;
    }

    v53 = 0x6C6562616CLL;
    v54 = 0xE500000000000000;
    v36 = alloca(24);
    v37 = alloca(32);
    v48 = &v53;
    v38 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v46, v33);

    if ((v38 & 1) == 0)
    {
      v43 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v43, 0, 0);
      *v44 = 0xD000000000000030;
      *(v44 + 8) = "Prediction Window: " + 0x8000000000000000;
      *(v44 + 16) = 0;
      *(v44 + 32) = 0;
      *(v44 + 48) = 1;
      swift_willThrow();
      outlined consume of Result<_DataTable, Error>(v56, v57);
      v20 = v55;
      v21 = v58;
      return outlined consume of MLDataTable?(v20, v21);
    }

    v34 = v55;
    v35 = v58;
    v23 = v56;
  }

  else
  {
    v34 = v55;
    v35 = v58;
  }

  outlined consume of MLDataTable?(v34, v35);
  v39 = v51;
  v40 = v52;
  *v51 = v52;
  v41 = v59;
  *(v39 + 8) = v59 & 1;
  v42 = v50;
  *v50 = v23;
  *(v42 + 8) = v57;
  return outlined copy of Result<_DataTable, Error>(v40, v41);
}

uint64_t MLActivityClassifier.ModelParameters.Validation.generateTables(trainingData:featureColumns:labelColumn:recordingFileColumn:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, void *a7, void *a8)
{
  v49 = v8;
  v46 = a6;
  v47 = a5;
  v48 = a4;
  v50 = a2;
  v51 = a1;
  v11 = *(*(type metadata accessor for MLActivityClassifier.DataSource.Columns(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v45 = &v38;
  v14 = *(*(type metadata accessor for MLActivityClassifier.DataSource(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v53 = &v38;
  v17 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v52 = *a3;
  v21 = *(a3 + 8);
  outlined init with copy of MLActivityClassifier.ModelParameters.Validation(v9, &v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v38, v17);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of MLClassifierMetrics(&v38, v53, type metadata accessor for MLActivityClassifier.DataSource);
      v23 = v45;
      v24 = v49;
      MLActivityClassifier.DataSource.gatherData(featureColumns:labelColumn:recordingFileColumn:)(v48, v47, v46, a7, a8);
      if (v24)
      {
        return outlined destroy of MLActivityClassifier.ModelParameters.Validation(v53, type metadata accessor for MLActivityClassifier.DataSource);
      }

      else
      {
        MLActivityClassifier.DataSource.Columns.convertToTuriCore()();
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v23, type metadata accessor for MLActivityClassifier.DataSource.Columns);
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v53, type metadata accessor for MLActivityClassifier.DataSource);
        v32 = v43;
        v33 = BYTE8(v43);
        v34 = v51;
        v35 = v52;
        *v51 = v52;
        *(v34 + 8) = v21 & 1;
        v36 = v50;
        *v50 = v32;
        *(v36 + 8) = v33;
        return outlined copy of Result<_DataTable, Error>(v35, v21);
      }
    }

    else
    {
      v29 = v51;
      v30 = v52;
      *v51 = v52;
      *(v29 + 8) = v21 & 1;
      v31 = v50;
      *v50 = 0;
      *(v31 + 8) = -1;
      return outlined copy of Result<_DataTable, Error>(v30, v21);
    }
  }

  else
  {
    v41 = v52;
    v42 = v21 & 1;
    v43 = v38;
    v44 = v39;
    MLDataTable.randomSplit(strategy:)(&v38, &v39, &v43);
    result = v38;
    v25 = BYTE8(v38);
    v26 = v40;
    v27 = v51;
    *v51 = v39;
    *(v27 + 8) = v26;
    v28 = v50;
    *v50 = result;
    *(v28 + 8) = v25;
  }

  return result;
}

uint64_t MLActivityClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLActivityClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t outlined init with copy of MLActivityClassifier.ModelParameters.Validation(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of MLActivityClassifier.ModelParameters.Validation(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.ModelParameters(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) == 0)
  {
    v6 = *(a2 + 8);
    if (v6 == -1)
    {
      *(a1 + 8) = *(a2 + 8);
      *a1 = *a2;
    }

    else
    {
      v7 = *a2;
      outlined copy of Result<_DataTable, Error>(*a2, v6);
      *a1 = v7;
      *(a1 + 8) = v6 & 1;
    }

    v31 = a3;
    v9 = a3[5];
    v10 = (a1 + v9);
    v11 = a2 + v9;
    v12 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    if (swift_getEnumCaseMultiPayload(v11, v12) != 1)
    {
      memcpy(v10, v11, *(*(v12 - 8) + 64));
      v21 = v31;
LABEL_15:
      v24 = v21[6];
      *(a1 + v24 + 8) = *(a2 + v24 + 8);
      *(a1 + v24) = *(a2 + v24);
      v25 = v21[7];
      *(a1 + v25) = *(a2 + v25);
      *(a1 + v25 + 8) = *(a2 + v25 + 8);
      v26 = v21[8];
      *(a1 + v26) = *(a2 + v26);
      *(a1 + v26 + 8) = *(a2 + v26 + 8);
      return v3;
    }

    v28 = v12;
    v29 = type metadata accessor for MLActivityClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v11, v29);
    v30 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v22 = type metadata accessor for DataFrame(0);
      v14 = v10;
      (*(*(v22 - 8) + 16))(v10, v11, v22);
    }

    else
    {
      v14 = v10;
      if (EnumCaseMultiPayload != 1)
      {
        v21 = v31;
        v23 = type metadata accessor for URL(0);
        (*(*(v23 - 8) + 16))(v14, v11, v23);
        goto LABEL_14;
      }

      v15 = type metadata accessor for URL(0);
      (*(*(v15 - 8) + 16))(v10, v11, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
      v17 = v16[12];
      *&v10[v17] = *&v11[v17];
      *&v10[v17 + 8] = *&v11[v17 + 8];
      v18 = v16[16];
      *&v10[v18] = *&v11[v18];
      *&v10[v18 + 8] = *&v11[v18 + 8];
      v19 = v16[20];
      *&v10[v19] = *&v11[v19];
      *&v10[v19 + 8] = *&v11[v19 + 8];
      v20 = v16[24];
      *&v10[v20] = *&v11[v20];
      *&v10[v20 + 8] = *&v11[v20 + 8];
    }

    v21 = v31;
LABEL_14:
    swift_storeEnumTagMultiPayload(v14, v29, v30);
    swift_storeEnumTagMultiPayload(v14, v28, 1);
    goto LABEL_15;
  }

  v8 = *a2;
  *v3 = *a2;
  v3 = (v8 + ((v4 + 16) & ~v4));

  return v3;
}

uint64_t destroy for MLActivityClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    outlined consume of Result<_DataTable, Error>(*a1, v2);
  }

  v3 = *(a2 + 20) + a1;
  v4 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  result = swift_getEnumCaseMultiPayload(v3, v4);
  if (result == 1)
  {
    v6 = type metadata accessor for MLActivityClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(v3, v6);
    switch(result)
    {
      case 2:
        v7 = type metadata accessor for DataFrame(0);
        return (*(*(v7 - 8) + 8))(v3, v7);
      case 1:
        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 8))(v3, v8);
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        *(v3 + v9[12] + 8);
        *(v3 + v9[16] + 8);
        *(v3 + v9[20] + 8);
        return *(v3 + v9[24] + 8);
      case 0:
        v7 = type metadata accessor for URL(0);
        return (*(*(v7 - 8) + 8))(v3, v7);
    }
  }

  return result;
}

uint64_t initializeWithCopy for MLActivityClassifier.ModelParameters(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *(a2 + 8);
  if (v4 == -1)
  {
    *(a1 + 8) = *(a2 + 8);
    *a1 = *a2;
  }

  else
  {
    v5 = *a2;
    outlined copy of Result<_DataTable, Error>(*a2, v4);
    *a1 = v5;
    *(a1 + 8) = v4 & 1;
  }

  v27 = a3;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = a2 + v6;
  v9 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  if (swift_getEnumCaseMultiPayload(v8, v9) == 1)
  {
    v24 = v9;
    v25 = type metadata accessor for MLActivityClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v25);
    v26 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v18 = type metadata accessor for DataFrame(0);
      (*(*(v18 - 8) + 16))(v7, v8, v18);
      v11 = v27;
    }

    else
    {
      v11 = v27;
      if (EnumCaseMultiPayload == 1)
      {
        v12 = type metadata accessor for URL(0);
        (*(*(v12 - 8) + 16))(v7, v8, v12);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        v14 = v13[12];
        *&v7[v14] = *&v8[v14];
        *&v7[v14 + 8] = *&v8[v14 + 8];
        v15 = v13[16];
        *&v7[v15] = *&v8[v15];
        *&v7[v15 + 8] = *&v8[v15 + 8];
        v16 = v13[20];
        *&v7[v16] = *&v8[v16];
        *&v7[v16 + 8] = *&v8[v16 + 8];
        v17 = v13[24];
        *&v7[v17] = *&v8[v17];
        *&v7[v17 + 8] = *&v8[v17 + 8];
      }

      else
      {
        v19 = type metadata accessor for URL(0);
        (*(*(v19 - 8) + 16))(v7, v8, v19);
      }
    }

    swift_storeEnumTagMultiPayload(v7, v25, v26);
    swift_storeEnumTagMultiPayload(v7, v24, 1);
  }

  else
  {
    memcpy(v7, v8, *(*(v9 - 8) + 64));
    v11 = v27;
  }

  v20 = v11[6];
  *(a1 + v20 + 8) = *(a2 + v20 + 8);
  *(a1 + v20) = *(a2 + v20);
  v21 = v11[7];
  *(a1 + v21) = *(a2 + v21);
  *(a1 + v21 + 8) = *(a2 + v21 + 8);
  v22 = v11[8];
  *(a1 + v22) = *(a2 + v22);
  *(a1 + v22 + 8) = *(a2 + v22 + 8);
  return a1;
}

uint64_t assignWithCopy for MLActivityClassifier.ModelParameters(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = *(a2 + 8);
  if (*(a1 + 8) == 0xFF)
  {
    if (v6 == -1)
    {
      *(a1 + 8) = *(a2 + 8);
      *a1 = *a2;
    }

    else
    {
      v10 = *a2;
      outlined copy of Result<_DataTable, Error>(*a2, v6);
      *a1 = v10;
      *(a1 + 8) = v6 & 1;
    }
  }

  else if (v6 == -1)
  {
    outlined destroy of MLDataTable(a1);
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v7 = *a2;
    outlined copy of Result<_DataTable, Error>(*a2, v6);
    v8 = *a1;
    *a1 = v7;
    v9 = *(a1 + 8);
    *(a1 + 8) = v6 & 1;
    outlined consume of Result<_DataTable, Error>(v8, v9);
  }

  if (a1 != a2)
  {
    v31 = a3;
    v11 = a3[5];
    v12 = (a1 + v11);
    v13 = a2 + v11;
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v12, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
    v14 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    if (swift_getEnumCaseMultiPayload(v13, v14) == 1)
    {
      v28 = v14;
      v29 = type metadata accessor for MLActivityClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v13, v29);
      v30 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload == 2)
      {
        v22 = type metadata accessor for DataFrame(0);
        (*(*(v22 - 8) + 16))(v12, v13, v22);
        a3 = v31;
      }

      else
      {
        a3 = v31;
        if (EnumCaseMultiPayload == 1)
        {
          v16 = type metadata accessor for URL(0);
          (*(*(v16 - 8) + 16))(v12, v13, v16);
          v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
          v18 = v17[12];
          *&v12[v18] = *&v13[v18];
          *&v12[v18 + 8] = *&v13[v18 + 8];
          v19 = v17[16];
          *&v12[v19] = *&v13[v19];
          *&v12[v19 + 8] = *&v13[v19 + 8];
          v20 = v17[20];
          *&v12[v20] = *&v13[v20];
          *&v12[v20 + 8] = *&v13[v20 + 8];
          v21 = v17[24];
          *&v12[v21] = *&v13[v21];
          *&v12[v21 + 8] = *&v13[v21 + 8];
        }

        else
        {
          v23 = type metadata accessor for URL(0);
          (*(*(v23 - 8) + 16))(v12, v13, v23);
        }
      }

      swift_storeEnumTagMultiPayload(v12, v29, v30);
      swift_storeEnumTagMultiPayload(v12, v28, 1);
    }

    else
    {
      memcpy(v12, v13, *(*(v14 - 8) + 64));
      a3 = v31;
    }
  }

  v24 = a3[6];
  *(a1 + v24 + 8) = *(a2 + v24 + 8);
  *(a1 + v24) = *(a2 + v24);
  v25 = a3[7];
  *(a1 + v25) = *(a2 + v25);
  *(a1 + v25 + 8) = *(a2 + v25 + 8);
  v26 = a3[8];
  *(a1 + v26) = *(a2 + v26);
  *(a1 + v26 + 8) = *(a2 + v26 + 8);
  return a1;
}

uint64_t initializeWithTake for MLActivityClassifier.ModelParameters(uint64_t a1, uint64_t a2, int *a3)
{
  *(a1 + 8) = *(a2 + 8);
  *a1 = *a2;
  v3 = a3[5];
  v4 = (a1 + v3);
  v5 = (a2 + v3);
  v6 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  if (swift_getEnumCaseMultiPayload(v5, v6) == 1)
  {
    v18 = v6;
    v19 = type metadata accessor for MLActivityClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v5, v19);
    v20 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v12 = type metadata accessor for DataFrame(0);
      v8 = v4;
      (*(*(v12 - 8) + 32))(v4, v5, v12);
    }

    else
    {
      v8 = v4;
      if (EnumCaseMultiPayload != 1)
      {
        v11 = a3;
        v13 = type metadata accessor for URL(0);
        (*(*(v13 - 8) + 32))(v8, v5, v13);
        goto LABEL_9;
      }

      v9 = type metadata accessor for URL(0);
      (*(*(v9 - 8) + 32))(v4, v5, v9);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
      *&v4[v10[12]] = *&v5[v10[12]];
      *&v4[v10[16]] = *&v5[v10[16]];
      *&v4[v10[20]] = *&v5[v10[20]];
      *&v4[v10[24]] = *&v5[v10[24]];
    }

    v11 = a3;
LABEL_9:
    swift_storeEnumTagMultiPayload(v8, v19, v20);
    swift_storeEnumTagMultiPayload(v8, v18, 1);
    goto LABEL_10;
  }

  memcpy(v4, v5, *(*(v6 - 8) + 64));
  v11 = a3;
LABEL_10:
  v14 = v11[6];
  *(a1 + v14 + 8) = *(a2 + v14 + 8);
  *(a1 + v14) = *(a2 + v14);
  v15 = v11[7];
  *(a1 + v15) = *(a2 + v15);
  *(a1 + v15 + 8) = *(a2 + v15 + 8);
  v16 = v11[8];
  *(a1 + v16) = *(a2 + v16);
  *(a1 + v16 + 8) = *(a2 + v16 + 8);
  return a1;
}

uint64_t assignWithTake for MLActivityClassifier.ModelParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a1 + 8);
  if (v5 == -1)
  {
    *(a1 + 8) = *(a2 + 8);
    *a1 = *a2;
  }

  else
  {
    v6 = *(a2 + 8);
    if (v6 == -1)
    {
      outlined destroy of MLDataTable(a1);
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
    }

    else
    {
      v7 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v6 & 1;
      outlined consume of Result<_DataTable, Error>(v7, v5);
    }
  }

  if (a1 != a2)
  {
    v25 = a3;
    v8 = a3[5];
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v9, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
    v11 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    if (swift_getEnumCaseMultiPayload(v10, v11) == 1)
    {
      v22 = v11;
      v23 = type metadata accessor for MLActivityClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v10, v23);
      v24 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload == 2)
      {
        v16 = type metadata accessor for DataFrame(0);
        v13 = v9;
        (*(*(v16 - 8) + 32))(v9, v10, v16);
      }

      else
      {
        v13 = v9;
        if (EnumCaseMultiPayload != 1)
        {
          a3 = v25;
          v17 = type metadata accessor for URL(0);
          (*(*(v17 - 8) + 32))(v13, v10, v17);
          goto LABEL_15;
        }

        v14 = type metadata accessor for URL(0);
        (*(*(v14 - 8) + 32))(v9, v10, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        *&v9[v15[12]] = *&v10[v15[12]];
        *&v9[v15[16]] = *&v10[v15[16]];
        *&v9[v15[20]] = *&v10[v15[20]];
        *&v9[v15[24]] = *&v10[v15[24]];
      }

      a3 = v25;
LABEL_15:
      swift_storeEnumTagMultiPayload(v13, v23, v24);
      swift_storeEnumTagMultiPayload(v13, v22, 1);
      goto LABEL_16;
    }

    memcpy(v9, v10, *(*(v11 - 8) + 64));
    a3 = v25;
  }

LABEL_16:
  v18 = a3[6];
  *(a1 + v18 + 8) = *(a2 + v18 + 8);
  *(a1 + v18) = *(a2 + v18);
  v19 = a3[7];
  *(a1 + v19) = *(a2 + v19);
  *(a1 + v19 + 8) = *(a2 + v19 + 8);
  v20 = a3[8];
  *(a1 + v20) = *(a2 + v20);
  *(a1 + v20 + 8) = *(a2 + v20 + 8);
  return a1;
}

uint64_t sub_106DC4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v3 = *(a1 + 8);
    v4 = v3 < 2u;
    LOBYTE(result) = ~v3;
    if (v4)
    {
      LOBYTE(result) = 0;
    }

    return result;
  }

  else
  {
    v7 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 20) + a1, a2, v7);
  }
}

uint64_t sub_106E41(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 253)
  {
    *(a1 + 8) = ~a2;
  }

  else
  {
    v5 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 20) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLActivityClassifier.ModelParameters(uint64_t a1)
{
  v3[0] = "\t";
  result = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    v3[2] = &unk_3414A0;
    v3[3] = &unk_3414A0;
    v3[4] = &unk_3414A0;
    swift_initStructMetadata(a1, 256, 5, v3, a1 + 16);
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLActivityClassifier.ModelParameters.Validation(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(v4 + 64));
    }

    v7 = type metadata accessor for MLActivityClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v7);
    if (EnumCaseMultiPayload == 2)
    {
      v17 = type metadata accessor for DataFrame(0);
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 16))(__dst, __src, v9);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        v11 = v10[12];
        *&__dst[v11] = *&__src[v11];
        *&__dst[v11 + 8] = *&__src[v11 + 8];
        v12 = v10[16];
        *&__dst[v12] = *&__src[v12];
        *&__dst[v12 + 8] = *&__src[v12 + 8];
        v13 = v10[20];
        *&__dst[v13] = *&__src[v13];
        *&__dst[v13 + 8] = *&__src[v13 + 8];
        v14 = v10[24];
        *&__dst[v14] = *&__src[v14];
        *&__dst[v14 + 8] = *&__src[v14 + 8];

LABEL_11:
        swift_storeEnumTagMultiPayload(__dst, v7, EnumCaseMultiPayload);
        swift_storeEnumTagMultiPayload(__dst, a3, 1);
        return v3;
      }

      v17 = type metadata accessor for URL(0);
    }

    (*(*(v17 - 8) + 16))(__dst, __src, v17);
    goto LABEL_11;
  }

  v15 = *__src;
  *v3 = *__src;
  v3 = (v15 + ((v5 + 16) & ~v5));

  return v3;
}

uint64_t destroy for MLActivityClassifier.ModelParameters.Validation(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 1)
  {
    v3 = type metadata accessor for MLActivityClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 2:
        v4 = type metadata accessor for DataFrame(0);
        return (*(*(v4 - 8) + 8))(a1, v4);
      case 1:
        v5 = type metadata accessor for URL(0);
        (*(*(v5 - 8) + 8))(a1, v5);
        v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        *(a1 + v6[12] + 8);
        *(a1 + v6[16] + 8);
        *(a1 + v6[20] + 8);
        return *(a1 + v6[24] + 8);
      case 0:
        v4 = type metadata accessor for URL(0);
        return (*(*(v4 - 8) + 8))(a1, v4);
    }
  }

  return result;
}

char *initializeWithCopy for MLActivityClassifier.ModelParameters.Validation(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLActivityClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
  if (EnumCaseMultiPayload == 2)
  {
    v13 = type metadata accessor for DataFrame(0);
LABEL_8:
    (*(*(v13 - 8) + 16))(__dst, __src, v13);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v13 = type metadata accessor for URL(0);
    goto LABEL_8;
  }

  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 16))(__dst, __src, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
  v8 = v7[12];
  *&__dst[v8] = *&__src[v8];
  *&__dst[v8 + 8] = *&__src[v8 + 8];
  v9 = v7[16];
  *&__dst[v9] = *&__src[v9];
  *&__dst[v9 + 8] = *&__src[v9 + 8];
  v10 = v7[20];
  *&__dst[v10] = *&__src[v10];
  *&__dst[v10 + 8] = *&__src[v10 + 8];
  v11 = v7[24];
  *&__dst[v11] = *&__src[v11];
  *&__dst[v11 + 8] = *&__src[v11 + 8];

LABEL_9:
  swift_storeEnumTagMultiPayload(__dst, v4, EnumCaseMultiPayload);
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithCopy for MLActivityClassifier.ModelParameters.Validation(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLActivityClassifier.ModelParameters.Validation(__dst, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLActivityClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
  if (EnumCaseMultiPayload == 2)
  {
    v13 = type metadata accessor for DataFrame(0);
LABEL_9:
    (*(*(v13 - 8) + 16))(__dst, __src, v13);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v13 = type metadata accessor for URL(0);
    goto LABEL_9;
  }

  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 16))(__dst, __src, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
  v8 = v7[12];
  *&__dst[v8] = *&__src[v8];
  *&__dst[v8 + 8] = *&__src[v8 + 8];
  v9 = v7[16];
  *&__dst[v9] = *&__src[v9];
  *&__dst[v9 + 8] = *&__src[v9 + 8];
  v10 = v7[20];
  *&__dst[v10] = *&__src[v10];
  *&__dst[v10 + 8] = *&__src[v10 + 8];
  v11 = v7[24];
  *&__dst[v11] = *&__src[v11];
  *&__dst[v11 + 8] = *&__src[v11 + 8];

LABEL_10:
  swift_storeEnumTagMultiPayload(__dst, v4, EnumCaseMultiPayload);
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *initializeWithTake for MLActivityClassifier.ModelParameters.Validation(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLActivityClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
  if (EnumCaseMultiPayload == 2)
  {
    v9 = type metadata accessor for DataFrame(0);
LABEL_8:
    (*(*(v9 - 8) + 32))(__dst, __src, v9);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v9 = type metadata accessor for URL(0);
    goto LABEL_8;
  }

  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 32))(__dst, __src, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
  *&__dst[v7[12]] = *&__src[v7[12]];
  *&__dst[v7[16]] = *&__src[v7[16]];
  *&__dst[v7[20]] = *&__src[v7[20]];
  *&__dst[v7[24]] = *&__src[v7[24]];
LABEL_9:
  swift_storeEnumTagMultiPayload(__dst, v4, EnumCaseMultiPayload);
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithTake for MLActivityClassifier.ModelParameters.Validation(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLActivityClassifier.ModelParameters.Validation(__dst, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLActivityClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
  if (EnumCaseMultiPayload == 2)
  {
    v9 = type metadata accessor for DataFrame(0);
LABEL_9:
    (*(*(v9 - 8) + 32))(__dst, __src, v9);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v9 = type metadata accessor for URL(0);
    goto LABEL_9;
  }

  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 32))(__dst, __src, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
  *&__dst[v7[12]] = *&__src[v7[12]];
  *&__dst[v7[16]] = *&__src[v7[16]];
  *&__dst[v7[20]] = *&__src[v7[20]];
  *&__dst[v7[24]] = *&__src[v7[24]];
LABEL_10:
  swift_storeEnumTagMultiPayload(__dst, v4, EnumCaseMultiPayload);
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

uint64_t type metadata completion function for MLActivityClassifier.ModelParameters.Validation(uint64_t a1)
{
  v5[0] = &unk_3414C8;
  result = type metadata accessor for MLActivityClassifier.DataSource(319);
  if (v4 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 2, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t outlined destroy of MLActivityClassifier.ModelParameters.Validation(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *assignWithCopy for MLDecisionTreeRegressor.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLDecisionTreeRegressor.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLDecisionTreeRegressor.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLDecisionTreeRegressor.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  }

  return result;
}

void *assignWithTake for MLDecisionTreeRegressor.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLDecisionTreeRegressor.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLDecisionTreeRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_341500;
  v5[1] = &unk_341518;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.ValidationData.table.getter(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v29 = &v25;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v28 = &v25;
  v10 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLDecisionTreeRegressor.ModelParameters.ValidationData(v2, &v25);
  result = swift_getEnumCaseMultiPayload(&v25, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      result = v25;
      v15 = v26;
      goto LABEL_7;
    case 2:
      v16 = v28;
      v17 = v27;
      (*(v27 + 32))(v28, &v25, v4);
      v18 = v29;
      *a1.i64 = (*(v17 + 16))(v29, v16, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v18, 1, a1);
      (*(v17 + 8))(v16, v4);
      result = v30;
      v15 = v31;
LABEL_7:
      *v3 = result;
      *(v3 + 8) = v15;
      break;
    case 3:
      v19 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v21 = empty;
      v22 = type metadata accessor for CMLTable();
      v23 = swift_allocObject(v22, 24, 7);
      *(v23 + 16) = v21;
      v24 = type metadata accessor for _DataTable();
      swift_allocObject(v24, 40, 7);
      result = _DataTable.init(impl:)(v23);
      *v19 = result;
      *(v19 + 8) = 0;
      break;
  }

  return result;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *, uint64_t *, uint64_t))
{
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = &v44;
  v47 = type metadata accessor for DataFrame.Slice(0);
  v46 = *(v47 - 8);
  v8 = *(v46 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v44;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v50 = &v44;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v48 = &v44;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v51 = &v44;
  v20 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLDecisionTreeRegressor.ModelParameters.ValidationData(v3, &v44);
  switch(swift_getEnumCaseMultiPayload(&v44, v20))
  {
    case 0u:
      v57 = v4;
      v24 = v51;
      v25 = v50;
      DataFrame.randomSplit(strategy:)(v51, v50, &v44);
      v26 = v46;
      v27 = v52;
      v28 = v25;
      v29 = v47;
      v56 = *(v46 + 16);
      v56(v52, v28, v47);
      DataFrame.init(_:)(v27);
      v30 = v48;
      outlined init with copy of DataFrame.Slice?(v24, v48);
      v31 = v29;
      if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
      {
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
        (*(v26 + 8))(v50, v29);
      }

      else
      {
        v41 = v52;
        (*(v26 + 32))(v52, v30, v31);
        v42 = v49;
        v56(v49, v41, v31);
        DataFrame.init(_:)(v42);
        v43 = *(v26 + 8);
        v43(v41, v31);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
        v43(v50, v31);
      }

      return outlined destroy of DataFrame.Slice?(v51);
    case 1u:
      v36 = v44;
      v37 = v45;
      (*(v57 + 16))(v54, v56, v4);
      v44 = v36;
      v45 = v37;
      v38 = v55;
      DataFrame.init(_:)(&v44);
      v34 = v38;
      goto LABEL_10;
    case 2u:
      v32 = *(v57 + 32);
      v32(v53, &v44, v4);
      if (DataFrameProtocol.isEmpty.getter(v4, &protocol witness table for DataFrame))
      {
        v33 = v57;
        (*(v57 + 8))(v53, v4);
        (*(v33 + 16))(v54, v56, v4);
LABEL_7:
        v34 = v55;
        v35 = 1;
      }

      else
      {
        (*(v57 + 16))(v54, v56, v4);
        v39 = v55;
        v32(v55, v53, v4);
        v34 = v39;
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v4);
    case 3u:
      (*(v57 + 16))(v54, v56, v4);
      goto LABEL_7;
  }
}

char *initializeBufferWithCopyOfBuffer for MLWordTagger.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *__src;
    *v3 = *__src;
    v3 = (v10 + ((v5 + 16) & ~v5));

    return v3;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      *__dst = *__src;

      swift_storeEnumTagMultiPayload(__dst, a3, 3);
      return v3;
    case 2:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 16))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
      v13 = *(v12 + 48);
      *&__dst[v13] = *&__src[v13];
      *&__dst[v13 + 8] = *&__src[v13 + 8];
      v14 = *(v12 + 64);
      *&__dst[v14] = *&__src[v14];
      *&__dst[v14 + 8] = *&__src[v14 + 8];

      swift_storeEnumTagMultiPayload(__dst, a3, 2);
      return v3;
    case 1:
      v8 = *__src;
      v9 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v9);
      *__dst = v8;
      __dst[8] = v9;
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = *(__src + 3);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = *(__src + 5);

      swift_storeEnumTagMultiPayload(__dst, a3, 1);
      return v3;
  }

  return memcpy(__dst, __src, *(v4 + 64));
}

uint64_t destroy for MLWordTagger.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result != 3)
  {
    if (result == 2)
    {
      v4 = type metadata accessor for DataFrame(0);
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
      *(a1 + *(v5 + 48) + 8);
      v2 = (*(v5 + 64) + a1 + 8);
    }

    else
    {
      if (result != 1)
      {
        return result;
      }

      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      v2 = (a1 + 40);
    }
  }

  return *v2;
}

char *initializeWithCopy for MLWordTagger.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      *__dst = *__src;

      swift_storeEnumTagMultiPayload(__dst, a3, 3);
      return __dst;
    case 2:
      v7 = type metadata accessor for DataFrame(0);
      (*(*(v7 - 8) + 16))(__dst, __src, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
      v9 = *(v8 + 48);
      *&__dst[v9] = *&__src[v9];
      *&__dst[v9 + 8] = *&__src[v9 + 8];
      v10 = *(v8 + 64);
      *&__dst[v10] = *&__src[v10];
      *&__dst[v10 + 8] = *&__src[v10 + 8];

      swift_storeEnumTagMultiPayload(__dst, a3, 2);
      return __dst;
    case 1:
      v5 = *__src;
      v6 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v6);
      *__dst = v5;
      __dst[8] = v6;
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = *(__src + 3);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = *(__src + 5);

      swift_storeEnumTagMultiPayload(__dst, a3, 1);
      return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

char *assignWithCopy for MLWordTagger.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLWordTagger.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      *__dst = *__src;

      swift_storeEnumTagMultiPayload(__dst, a3, 3);
      return __dst;
    case 2:
      v7 = type metadata accessor for DataFrame(0);
      (*(*(v7 - 8) + 16))(__dst, __src, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
      v9 = *(v8 + 48);
      *&__dst[v9] = *&__src[v9];
      *&__dst[v9 + 8] = *&__src[v9 + 8];
      v10 = *(v8 + 64);
      *&__dst[v10] = *&__src[v10];
      *&__dst[v10 + 8] = *&__src[v10 + 8];

      swift_storeEnumTagMultiPayload(__dst, a3, 2);
      return __dst;
    case 1:
      v5 = *__src;
      v6 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v6);
      *__dst = v5;
      __dst[8] = v6;
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = *(__src + 3);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = *(__src + 5);

      swift_storeEnumTagMultiPayload(__dst, a3, 1);
      return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t outlined destroy of MLWordTagger.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t type metadata accessor for MLWordTagger.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLWordTagger.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLWordTagger.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLWordTagger.ModelParameters.ValidationData);
  }

  return result;
}

char *initializeWithTake for MLWordTagger.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 2)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for DataFrame(0);
  (*(*(v4 - 8) + 32))(__dst, __src, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
  *&__dst[*(v5 + 48)] = *&__src[*(v5 + 48)];
  *&__dst[*(v5 + 64)] = *&__src[*(v5 + 64)];
  swift_storeEnumTagMultiPayload(__dst, a3, 2);
  return __dst;
}

char *assignWithTake for MLWordTagger.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLWordTagger.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
    *&__dst[*(v5 + 48)] = *&__src[*(v5 + 48)];
    *&__dst[*(v5 + 64)] = *&__src[*(v5 + 64)];
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLWordTagger.ModelParameters.ValidationData(uint64_t a1)
{
  v6[0] = &unk_341550;
  v6[1] = &unk_341568;
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3(v5, *(result - 8) + 64, &unk_341580, &unk_341580);
    v6[2] = v5;
    v6[3] = &value witness table for Builtin.BridgeObject + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 4, v6, v3, v4);
    return 0;
  }

  return result;
}

uint64_t MLWordTagger.ModelParameters.ValidationData.createValidationData(trainingData:tokenColumnName:labelColumnName:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  to_8._countAndFlagsBits = a4;
  v99 = a3;
  v109._object = v5;
  to = a2;
  v110._object = v6;
  v115 = v7;
  to_8._object = a5;
  v110._countAndFlagsBits = a1;
  v107 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v108 = *(v107 - 8);
  v8 = *(v108 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v102 = &v92;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v105 = &v92;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v103 = &v92;
  v15 = alloca(v8);
  v16 = alloca(v8);
  v106 = &v92;
  v17 = type metadata accessor for DataFrame(0);
  v111 = *(v17 - 8);
  v18 = *(v111 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v113 = &v92;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v114._object = &v92;
  _ = type metadata accessor for DataFrame.Slice(0);
  v23 = *(_ - 1);
  v24 = *(v23 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v97 = &v92;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v98 = &v92;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v114._countAndFlagsBits = &v92;
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v96 = &v92;
  v34 = alloca(v31);
  v35 = alloca(v31);
  v109._countAndFlagsBits = &v92;
  v36 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  outlined init with copy of MLWordTagger.ModelParameters.ValidationData(v115, &v92);
  switch(swift_getEnumCaseMultiPayload(&v92, v36))
  {
    case 0u:
      countAndFlagsBits = v109._countAndFlagsBits;
      DataFrame.randomSplit(strategy:)(v109._countAndFlagsBits, v114._countAndFlagsBits, &v92);
      v41 = v96;
      outlined init with copy of DataFrame.Slice?(countAndFlagsBits, v96);
      v42 = _;
      if (__swift_getEnumTagSinglePayload(v41, 1, _) == 1)
      {
        (*(v23 + 8))(v114._countAndFlagsBits, v42);
        outlined destroy of DataFrame.Slice?(v109._countAndFlagsBits);
        outlined destroy of DataFrame.Slice?(v41);
        goto LABEL_4;
      }

      v112 = v17;
      (*(v111 + 8))(v110._countAndFlagsBits, v17);
      (*(v23 + 32))(v98, v41, v42);
      v67 = v42;
      v115 = *(v23 + 16);
      v68 = v97;
      (v115)(v97, v114._countAndFlagsBits, v42);
      DataFrame.init(_:)(v68);
      v69 = v98;
      (v115)(v68, v98, v67);
      DataFrame.init(_:)(v68);
      v70 = *(v23 + 8);
      v70(v69, v67);
      v70(v114._countAndFlagsBits, v67);
      outlined destroy of DataFrame.Slice?(v109._countAndFlagsBits);
      object = v109._object;
      v44 = 0;
      v45 = v112;
      return __swift_storeEnumTagSinglePayload(object, v44, 1, v45);
    case 1u:
      v112 = v17;
      v50 = v93;
      v51 = v94;
      v115 = v95;
      v52 = v96;
      v53 = v97;
      LOBYTE(v93) = v93 & 1;
      v113 = v92;
      LODWORD(v114._countAndFlagsBits) = v50;
      outlined copy of Result<_DataTable, Error>(v92, v50);
      v54 = v114._object;
      DataFrame.init(_:)(&v92);
      v110._countAndFlagsBits = v51;
      v109._countAndFlagsBits = v52;
      v55 = v110._object;
      static MLWordTagger.validateDataFrame(_:tokenColumnName:labelColumnName:)(v54, v51, v115, v52, v53);
      if (v55)
      {
        (*(v111 + 8))(v114._object, v112);
        outlined consume of Result<_DataTable, Error>(v113, v114._countAndFlagsBits);
        v53;
        v56 = v115;
        return v56;
      }

      _ = v53;
      static MLWordTagger.createTextColumn(_:name:context:)(v114._object, v110._countAndFlagsBits, v115, 0x6E656B6F54, 0xE500000000000000);
      v72 = v114._object;
      v73 = _;
      static MLWordTagger.createTextColumn(_:name:context:)(v114._object, v109._countAndFlagsBits, _, 0x6C6562614CLL, 0xE500000000000000);
      DataFrame.init()(v72);
      v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v110._object = 0;
      DataFrame.append<A>(column:)(v106, v77);
      DataFrame.append<A>(column:)(v103, v77);
      v78._countAndFlagsBits = v109._countAndFlagsBits;
      v78._object = v73;
      DataFrame.renameColumn(_:to:)(v78, to_8);
      v73;
      v78._countAndFlagsBits = v110._countAndFlagsBits;
      LOBYTE(v73) = v115;
      v78._object = v115;
      v79._countAndFlagsBits = to;
      v79._object = v99;
      DataFrame.renameColumn(_:to:)(v78, v79);
      v73;
      outlined consume of Result<_DataTable, Error>(v113, v114._countAndFlagsBits);
      v80 = *(v108 + 8);
      v81 = v107;
      v80(v103, v107);
      v80(v106, v81);
      v82 = v112;
      (*(v111 + 8))(v114._object, v112);
      v83 = v109._object;
      v84 = v82;
      return __swift_storeEnumTagSinglePayload(v83, 0, 1, v84);
    case 2u:
      v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
      v58 = *(v57 + 48);
      v59 = *(&v92 + v58);
      v60 = *(&v92 + v58 + 8);
      v61 = *(v57 + 64);
      v114._countAndFlagsBits = *(&v92 + v61);
      v115 = *(&v92 + v61 + 8);
      v62 = v113;
      v63 = v60;
      (*(v111 + 32))(v113, &v92, v17);
      v110._countAndFlagsBits = v59;
      v64 = v59;
      v65 = v115;
      v114._object = v63;
      v66 = v110._object;
      static MLWordTagger.validateDataFrame(_:tokenColumnName:labelColumnName:)(v62, v64, v63, v114._countAndFlagsBits, v115);
      if (v66)
      {
        (*(v111 + 8))(v113, v17);
        v114._object;
        v56 = v65;
        return v56;
      }

      else
      {
        v112 = v17;
        static MLWordTagger.createTextColumn(_:name:context:)(v113, v110._countAndFlagsBits, v114._object, 0x6E656B6F54, 0xE500000000000000);
        v74 = v113;
        v75 = v114._countAndFlagsBits;
        v76 = v115;
        static MLWordTagger.createTextColumn(_:name:context:)(v113, v114._countAndFlagsBits, v115, 0x6C6562614CLL, 0xE500000000000000);
        v110._object = 0;
        v85 = v109._object;
        DataFrame.init()(v74);
        v86 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        DataFrame.append<A>(column:)(v105, v86);
        DataFrame.append<A>(column:)(v102, v86);
        v87._countAndFlagsBits = v75;
        v87._object = v76;
        DataFrame.renameColumn(_:to:)(v87, to_8);
        v76;
        v87._countAndFlagsBits = v110._countAndFlagsBits;
        LOBYTE(v76) = v114._object;
        v87._object = v114._object;
        v88._countAndFlagsBits = to;
        v88._object = v99;
        DataFrame.renameColumn(_:to:)(v87, v88);
        v76;
        v89 = *(v108 + 8);
        v90 = v107;
        v89(v102, v107);
        v89(v105, v90);
        v91 = v112;
        (*(v111 + 8))(v113, v112);
        v83 = v85;
        v84 = v91;
        return __swift_storeEnumTagSinglePayload(v83, 0, 1, v84);
      }

    case 3u:
      v46 = v17;
      v47 = v92;
      v48 = v109._object;
      v49 = v110._object;
      static MLWordTagger.generateTextDataFrame(_:tokenColumn:labelColumn:)(v92, to, v99, to_8._countAndFlagsBits, to_8._object);
      if (!v49)
      {
        __swift_storeEnumTagSinglePayload(v48, 0, 1, v46);
      }

      v56 = v47;
      return v56;
    case 4u:
LABEL_4:
      object = v109._object;
      v44 = 1;
      v45 = v17;
      return __swift_storeEnumTagSinglePayload(object, v44, 1, v45);
  }
}

uint64_t MLWordTagger.ModelParameters.ValidationData.init(_:tokenColumn:labelColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v8 = *(a1 + 8);
  if (v8 == -1)
  {
    a3;
    v7;
    *v6 = 0;
    *(v6 + 16) = 256;
    v14 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
    return swift_storeEnumTagMultiPayload(v6, v14, 0);
  }

  else
  {
    v17 = *a1;
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = v8 & 1;
    outlined copy of Result<_DataTable, Error>(*a1, v10);
    v12 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v17, v11);
    if (v12)
    {
      *v6 = v9;
      *(v6 + 8) = v11;
      *(v6 + 16) = a2;
      *(v6 + 24) = a3;
      *(v6 + 32) = a4;
      *(v6 + 40) = a5;
      v13 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
      v16 = 1;
    }

    else
    {
      outlined consume of MLDataTable?(v9, v10);
      a3;
      a5;
      v13 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
      v16 = 4;
    }

    return swift_storeEnumTagMultiPayload(v6, v13, v16);
  }
}

uint64_t MLWordTagger.ModelParameters.ValidationData.table.getter(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v33 = &v30;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v34 = &v30;
  v10 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLWordTagger.ModelParameters.ValidationData(v2, &v30);
  result = swift_getEnumCaseMultiPayload(&v30, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      v15 = v30;
      v16 = v31;
      v17 = v35;
      v33;
      result = v17;
      *v3 = v15;
      *(v3 + 8) = v16;
      break;
    case 2:
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, tokenColumn: String, labelColumn: String));
      *(&v30 + *(v24 + 48) + 8);
      *(&v30 + *(v24 + 64) + 8);
      v25 = v34;
      v26 = v32;
      (*(v32 + 32))(v34, &v30, v4);
      v27 = v33;
      *a1.i64 = (*(v26 + 16))(v33, v25, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v27, 0, a1);
      (*(v26 + 8))(v34, v4);
      goto LABEL_8;
    case 3:
      v28 = v30;
      static MLWordTagger.generateTextTable(_:tokenColumn:labelColumn:)(v30, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
      v28;
LABEL_8:
      result = v35;
      v29 = v36;
      *v3 = v35;
      *(v3 + 8) = v29;
      break;
    case 4:
      v18 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v20 = empty;
      v21 = type metadata accessor for CMLTable();
      v22 = swift_allocObject(v21, 24, 7);
      *(v22 + 16) = v20;
      v23 = type metadata accessor for _DataTable();
      swift_allocObject(v23, 40, 7);
      result = _DataTable.init(impl:)(v22);
      *v18 = result;
      *(v18 + 8) = 0;
      break;
  }

  return result;
}

uint64_t outlined init with copy of MLWordTagger.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with copy of DataFrame.Slice?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t specialized BidirectionalCollection.last.getter()
{
  v0 = 0;
  v1 = type metadata accessor for TensorShape(0);
  v2 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
  if ((dispatch thunk of Collection.isEmpty.getter(v1, v2) & 1) == 0)
  {
    dispatch thunk of Collection.endIndex.getter(v1, v2);
    v3 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
    dispatch thunk of BidirectionalCollection.index(before:)(v8, v1, v3);
    v4 = dispatch thunk of Collection.subscript.read(v8, v7, v1, v2);
    v0 = *v5;
    v4(v8, 0);
  }

  return v0;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = type metadata accessor for MLCheckpoint(0);
    outlined init with copy of MLActivityClassifier.Model(((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + a1 + *(*(v4 - 8) + 72) * (v3 - 1), v2, type metadata accessor for MLCheckpoint);
    return __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  }

  else
  {
    v6 = type metadata accessor for MLCheckpoint(0);
    return __swift_storeEnumTagSinglePayload(v2, 1, 1, v6);
  }
}

{
  return specialized BidirectionalCollection.last.getter(a1, &type metadata accessor for NeuralNetwork.Layer);
}

{
  return specialized BidirectionalCollection.last.getter(a1, &type metadata accessor for Model);
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = String.index(before:)((v2 << 16) + 4 * ((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) + 7, a1, a2);
  return String.subscript.getter(v3, a1, a2);
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a2(0);
    (*(*(v5 - 8) + 16))(v3, ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + a1 + *(*(v5 - 8) + 72) * (v4 - 1), v5);
    return __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
  }

  else
  {
    v7 = a2(0);
    return __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  }
}

uint64_t specialized Zip2Sequence.Iterator.next()()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v1 = *(v0 + 8);
  if (v1 == *(*v0 + 16))
  {
    goto LABEL_5;
  }

  if (v1 >= *(*v0 + 16))
  {
    BUG();
  }

  v2 = *(*v0 + 8 * v1 + 32);
  *(v0 + 8) = v1 + 1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v4 == *(v3 + 16))
  {
LABEL_5:
    *(v0 + 32) = 1;
    return 0;
  }

  if (v4 >= *(v3 + 16))
  {
    BUG();
  }

  *(v0 + 24) = v4 + 1;

  return v2;
}

{
  v2 = v0;
  v3 = type metadata accessor for Tensor(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  if (*(v1 + 32) == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Tensor, Tensor));
    return __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
  }

  v10 = *v1;
  v11 = v1[1];
  if (v11 != *(*v1 + 16))
  {
    if (v11 >= *(*v1 + 16))
    {
      BUG();
    }

    v23 = v2;
    v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v13 = *(v4 + 16);
    v24 = *(v4 + 72);
    v14 = v11 * v24;
    v1[1] = v11 + 1;
    v22 = v13;
    v13(&v22, v12 + v10 + v14, v3);
    v15 = v1[2];
    v16 = v1[3];
    if (v16 != *(v15 + 16))
    {
      if (v16 >= *(v15 + 16))
      {
        BUG();
      }

      v20 = v12 + v15 + v16 * v24;
      v1[3] = v16 + 1;
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Tensor, Tensor));
      v21 = v23 + *(v24 + 48);
      (*(v4 + 32))(v23, &v22, v3);
      v22(v21, v20, v3);
      v17 = v23;
      v18 = 0;
      v19 = v24;
      return __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
    }

    (*(v4 + 8))(&v22, v3);
    v2 = v23;
  }

  *(v1 + 32) = 1;
  v17 = v2;
  v18 = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Tensor, Tensor));
  return __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
}

uint64_t MLActivityClassifier.evaluation(on:featureColumns:labelColumn:recordingFileColumn:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), void *a3, void *a4, void (*a5)(unint64_t *, uint64_t), void *a6, __m128 a7)
{
  v263 = a4;
  v262 = a3;
  v255 = v7;
  v257 = a2;
  v258 = v8;
  v260 = a6;
  v237 = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v220 = v200;
  v212 = type metadata accessor for TensorShape(0);
  v232 = *(v212 - 8);
  v12 = *(v232 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v213 = v200;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v214 = v200;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v210 = v200;
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Tensor, Tensor)?) - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v211 = v200;
  v204 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  v22 = *(*(v204 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v205 = v200;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v206 = v200;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v207 = v200;
  v253 = type metadata accessor for Tensor(0);
  v254 = *(v253 - 8);
  v30 = v254[8];
  v31 = alloca(v30);
  v32 = alloca(v30);
  v215 = v200;
  v33 = alloca(v30);
  v34 = alloca(v30);
  v231 = v200;
  v35 = alloca(v30);
  v36 = alloca(v30);
  v240 = v200;
  v37 = alloca(v30);
  v38 = alloca(v30);
  v239 = v200;
  v39 = alloca(v30);
  v40 = alloca(v30);
  v230 = v200;
  v41 = alloca(v30);
  v42 = alloca(v30);
  v250 = v200;
  v43 = alloca(v30);
  v44 = alloca(v30);
  v208 = v200;
  v45 = alloca(v30);
  v46 = alloca(v30);
  v249 = v200;
  v47 = alloca(v30);
  v48 = alloca(v30);
  v244 = v200;
  v229 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v49 = *(*(v229 - 8) + 64);
  v50 = alloca(v49);
  v51 = alloca(v49);
  v201 = v200;
  v52 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LSTM.State?) - 8) + 64);
  v53 = alloca(v52);
  v54 = alloca(v52);
  v202 = v200;
  v209 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State, Tensor));
  v55 = *(*(v209 - 8) + 64);
  v56 = alloca(v55);
  v57 = alloca(v55);
  v227 = v200;
  v261 = type metadata accessor for WeightedDataSample(0);
  v58 = *(*(v261 - 8) + 64);
  v59 = alloca(v58);
  v60 = alloca(v58);
  v228 = v200;
  v61 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for WeightedDataSample?) - 8) + 64);
  v62 = alloca(v61);
  v63 = alloca(v61);
  v203 = v200;
  v243 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  v64 = *(*(v243 - 8) + 64);
  v65 = alloca(v64);
  v66 = alloca(v64);
  v241 = v200;
  v218 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>.PrefetchMode);
  v219 = *(v218 - 8);
  v67 = *(v219 + 64);
  v68 = alloca(v67);
  v69 = alloca(v67);
  v216 = v200;
  v245 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>);
  v70 = *(v245 - 8);
  v71 = *(v70 + 64);
  v72 = alloca(v71);
  v73 = alloca(v71);
  v217 = v200;
  v74 = alloca(v71);
  v75 = alloca(v71);
  v246 = v200;
  v76 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v77 = alloca(v76);
  v78 = alloca(v76);
  v242 = v200;
  v79 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.DataBatcher?) - 8) + 64);
  v80 = alloca(v79);
  v81 = alloca(v79);
  v251 = v200;
  v82 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v83 = *(*(v82 - 8) + 64);
  v84 = alloca(v83);
  v85 = alloca(v83);
  v86 = *(*(type metadata accessor for MLActivityClassifier.Configuration(0) - 8) + 64);
  v87 = alloca(v86);
  v88 = alloca(v86);
  v256 = v200;
  v238 = type metadata accessor for MLActivityClassifier.Model(0);
  v89 = *(*(v238 - 8) + 64);
  v90 = alloca(v89);
  v91 = alloca(v89);
  v92 = *(a1 + 8);
  v234 = *a1;
  v235 = v92;
  validateAndConvertRawDataToInternalData(_:featureColumns:labelColumn:recordingFileColumn:)(&v234, v257, v262, v263, v237, v260, a7);
  v263 = v82;
  v247 = v200;
  v248 = v70;
  v93 = v222;
  LODWORD(v82) = v223;
  outlined init with copy of MLActivityClassifier.Model(v258, v200, type metadata accessor for MLActivityClassifier.Model);
  v94 = v256;
  outlined init with copy of MLActivityClassifier.Model(&v200[*(v238 + 64)], v256, type metadata accessor for MLActivityClassifier.Configuration);
  v222 = v93;
  LOBYTE(v223) = v82 & 1;
  v252 = v93;
  v259 = v82;
  outlined copy of Result<_DataTable, Error>(v93, v82);
  v95 = v242;
  DataFrame.init(_:)(&v222);
  v257 = v94[8];
  v258 = v200;
  v96 = v94[9];
  v260 = v94[6];
  v97 = v94[7];
  v262 = v94[4];
  v98 = v94[5];

  MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:)(v95, v257, v96, v260, v97, v98, v262, 0, 1);
  v99 = v251;
  __swift_storeEnumTagSinglePayload(v251, 0, 1, v263);
  outlined init with take of MLClassifierMetrics(v99, v247, type metadata accessor for MLActivityClassifier.DataBatcher);
  v100 = *&v258[*(v238 + 60)];
  v101 = v256;
  v102 = MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(v256, v100);
  v221 = 0;
  v233 = v100;
  v234 = v102;
  v106 = v101;
  v262 = *(v101 + 24);
  v263 = v102;
  v107 = type metadata accessor for ShuffleSampler(0);
  v108 = *(v101 + 8);
  LODWORD(v106) = *(v106 + 16);

  v109 = ShuffleSampler.__allocating_init(seed:)(v108, v106);
  v225 = v107;
  v226 = &protocol witness table for ShuffleSampler;
  v222 = v109;
  v110 = v216;
  (*(v219 + 104))(v216, enum case for Dataset.PrefetchMode.serial<A, B>(_:), v218);
  v260 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [WeightedDataSample]);
  v111 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [WeightedDataSample] and conformance [A], &demangling cache variable for type metadata for [WeightedDataSample], &protocol conformance descriptor for [A]);
  v112 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
  v113 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
  v114 = v217;
  Dataset.init<>(samples:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)(&v234, v262, &v222, 0, v110, 0, 0, v260, v261, v111, v112, v113);
  v263;
  v115 = v245;
  (*(v248 + 32))(v246, v114, v245);
  v116 = v241;
  Dataset.makeIterator()(v115);
  v117 = *(v243 + 44);
  v242 = *(v116 + v117);
  v243 = *(v116 + v117 + 8);
  v251 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator and conformance Batches<A>.Iterator, &demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator, &protocol conformance descriptor for Batches<A>.Iterator);
  v263 = _swiftEmptyArrayStorage;
  v262 = _swiftEmptyArrayStorage;
  while (1)
  {
    v118 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator);
    dispatch thunk of IteratorProtocol.next()(v118, v251);
    v119 = v222;
    v120 = v201;
    v121 = v202;
    v122 = v203;
    if (v222)
    {
      v234 = v222;
      v242(&v234);
      v119;
      v123 = v122;
      v124 = 0;
    }

    else
    {
      v123 = v203;
      v124 = 1;
    }

    __swift_storeEnumTagSinglePayload(v123, v124, 1, v261);
    v125 = v229;
    if (__swift_getEnumTagSinglePayload(v122, 1, v261) == 1)
    {
      break;
    }

    v126 = v122;
    v127 = v228;
    outlined init with take of MLClassifierMetrics(v126, v228, type metadata accessor for WeightedDataSample);
    v128 = type metadata accessor for LSTM.State(0);
    __swift_storeEnumTagSinglePayload(v121, 1, 1, v128);
    v129 = v120 + *(v125 + 48);
    outlined init with take of LSTM.State?(v121, v120);
    v257 = v254[2];
    v257(v129, v127, v253);
    v130 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v131 = v227;
    Layer.callAsFunction(_:)(v120, v238, v130);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v120, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
    v132 = v131 + *(v209 + 48);
    v133 = v205;
    outlined init with copy of (label: Tensor, weight: Tensor?)(v127 + *(v261 + 20), v205);
    v134 = v133 + *(v204 + 48);
    v135 = v208;
    v136 = v253;
    v260 = v254[4];
    (v260)(v208, v133, v253);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v134, &demangling cache variable for type metadata for Tensor?);
    v137 = v206;
    __swift_storeEnumTagSinglePayload(v206, 1, 1, v136);
    v138 = v207;
    v139 = v132;
    v140 = v244;
    static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:)(v244, v249, v207, v139, v135, v137);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v137, &demangling cache variable for type metadata for Tensor?);
    v237 = v254[1];
    v237(v135, v136);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v138, &demangling cache variable for type metadata for Tensor?);
    v257(v250, v140, v136);
    if (!swift_isUniquelyReferenced_nonNull_native(v263))
    {
      v263 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v263[2] + 1, 1, v263);
    }

    v141 = v230;
    v142 = v263[2];
    v143 = v254;
    if (v263[3] >> 1 <= v142)
    {
      v263 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v263[3] >= 2uLL, v142 + 1, 1, v263);
    }

    v144 = v263;
    v263[2] = v142 + 1;
    v145 = (*(v143 + 80) + 32) & ~*(v143 + 80);
    v146 = v143[9];
    v147 = v144 + v146 * v142 + v145;
    v148 = v253;
    (v260)(v147, v250, v253);
    v257(v141, v249, v148);
    if (!swift_isUniquelyReferenced_nonNull_native(v262))
    {
      v262 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v262[2] + 1, 1, v262);
    }

    v149 = v262[2];
    if (v262[3] >> 1 <= v149)
    {
      v262 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v262[3] >= 2uLL, v149 + 1, 1, v262);
    }

    v150 = v262;
    v262[2] = v149 + 1;
    v151 = v150 + v145 + v146 * v149;
    v152 = v253;
    (v260)(v151, v141, v253);
    v153 = v237;
    v237(v249, v152);
    v153(v244, v152);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v227, &demangling cache variable for type metadata for (LSTM.State, Tensor));
    outlined destroy of MLActivityClassifier.ModelParameters(v228, type metadata accessor for WeightedDataSample);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v241, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  v154 = *(v233 + 2);
  v155 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  swift_allocObject(v155, *(v155 + 48), *(v155 + 52));
  v156 = v221;
  v157 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v154);
  if (v156)
  {
    v156;
    v263;
    v262;
    v158 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v159 = swift_allocError(&type metadata for MLCreateError, v158, 0, 0);
    v160._countAndFlagsBits = 0xD000000000000010;
    v160._object = "om the given data table." + 0x8000000000000000;
    static MLCreateError.metricNotFound(metric:)(v160);
LABEL_24:
    outlined consume of Result<_DataTable, Error>(v252, v259);
    (*(v248 + 8))(v246, v245);
    outlined destroy of MLActivityClassifier.ModelParameters(v247, type metadata accessor for MLActivityClassifier.DataBatcher);
    outlined destroy of MLActivityClassifier.ModelParameters(v256, type metadata accessor for MLActivityClassifier.Configuration);
    v103 = v255;
    *v255 = v159;
    v104 = type metadata accessor for MLClassifierMetrics.Contents(0);
    swift_storeEnumTagMultiPayload(v103, v104, 2);
    return outlined destroy of MLActivityClassifier.ModelParameters(v258, type metadata accessor for MLActivityClassifier.Model);
  }

  v244 = 0;
  v250 = v157;
  v222 = v263;
  v223 = 0;
  v224 = v262;
  v225 = 0;
  LOBYTE(v226) = 0;

  while (1)
  {
    v161 = v211;
    specialized Zip2Sequence.Iterator.next()();
    v162 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Tensor, Tensor));
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v161, 1, v162);
    v164 = v210;
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    v165 = v161 + *(v162 + 48);
    v166 = v254[4];
    v167 = v161;
    v168 = v253;
    v166(v239, v167, v253);
    v166(v240, v165, v168);
    v249 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v169 = v249;
    v170 = swift_allocObject(v249, 48, 7);
    v170[2] = 2;
    v170[3] = 4;
    v170[4] = -1;
    Tensor.shape.getter(v169, 48, v171);
    v172 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
    v173 = v212;
    v261 = v172;
    if (dispatch thunk of Collection.isEmpty.getter(v212, v172))
    {
      (*(v232 + 8))(v164, v173);
      BUG();
    }

    v174 = v261;
    dispatch thunk of Collection.endIndex.getter(v173, v261);
    v257 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
    dispatch thunk of BidirectionalCollection.index(before:)(&v234, v173, v257);
    v175 = dispatch thunk of Collection.subscript.read(&v234, v236, v173, v174);
    v177 = *v176;
    v175(&v234, 0);
    v178 = *(v232 + 8);
    v178(v164, v173);
    v170[5] = v177;
    v179 = v214;
    TensorShape.init(_:)(v170);
    Tensor.reshaped(to:)(v179);
    v260 = v178;
    v178(v179, v173);
    v180 = v249;
    v181 = swift_allocObject(v249, 48, 7);
    v181[2] = 2;
    v181[3] = 4;
    v181[4] = -1;
    v182 = v213;
    Tensor.shape.getter(v180, 48, v183);
    if (dispatch thunk of Collection.isEmpty.getter(v173, v261))
    {
      (v260)(v182, v173);
      BUG();
    }

    dispatch thunk of Collection.endIndex.getter(v173, v261);
    dispatch thunk of BidirectionalCollection.index(before:)(&v234, v173, v257);
    v184 = dispatch thunk of Collection.subscript.read(&v234, v236, v173, v261);
    v261 = *v185;
    v184(&v234, 0);
    v186 = v182;
    v187 = v260;
    (v260)(v186, v173);
    v181[5] = v261;
    TensorShape.init(_:)(v181);
    v188 = v215;
    Tensor.reshaped(to:)(v179);
    v187(v179, v173);
    v189 = v231;
    _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:)(v231, v188);
    v190 = v254[1];
    v191 = v188;
    v192 = v253;
    v190(v191, v253);
    v190(v189, v192);
    v190(v240, v192);
    v190(v239, v192);
  }

  v222;
  v193 = v224;
  v263;
  v262;
  v193;
  v194 = v220;
  v195 = v244;
  static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(v250, v233, 0);
  if (v195)
  {
    v195;
    v196 = type metadata accessor for MLClassifierMetrics(0);
    __swift_storeEnumTagSinglePayload(v194, 1, 1, v196);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v194, &demangling cache variable for type metadata for MLClassifierMetrics?);
    v197 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v159 = swift_allocError(&type metadata for MLCreateError, v197, 0, 0);
    v198._countAndFlagsBits = 0xD000000000000012;
    v198._object = "confusion matrix" + 0x8000000000000000;
    static MLCreateError.metricNotFound(metric:)(v198);

    goto LABEL_24;
  }

  outlined consume of Result<_DataTable, Error>(v252, v259);

  v199 = type metadata accessor for MLClassifierMetrics(0);
  __swift_storeEnumTagSinglePayload(v194, 0, 1, v199);
  (*(v248 + 8))(v246, v245);
  outlined destroy of MLActivityClassifier.ModelParameters(v247, type metadata accessor for MLActivityClassifier.DataBatcher);
  outlined destroy of MLActivityClassifier.ModelParameters(v256, type metadata accessor for MLActivityClassifier.Configuration);
  outlined destroy of MLActivityClassifier.ModelParameters(v258, type metadata accessor for MLActivityClassifier.Model);
  return outlined init with take of MLClassifierMetrics(v194, v255, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLActivityClassifier.evaluation(on:featureColumns:labelColumn:recordingFileColumn:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4, void *a5, void *a6, __m128 a7)
{
  v20 = v7;
  v10 = a5;
  v22 = a3;
  MLActivityClassifier.DataSource.labeledSensorData(featureColumns:labelColumn:recordingFileColumn:)(a2, a3, a4, a5, a6, a7);
  v17 = v18;
  v21 = v19;
  v11 = v22;
  if (!a4)
  {
    v11 = 0x6C6562616CLL;
  }

  v12 = 0xE500000000000000;
  if (a4)
  {
    v12 = a4;
  }

  v22 = v12;
  if (!a6)
  {
    v10 = 0x6E6964726F636572;
  }

  v13 = 0xED0000656C694667;
  if (a6)
  {
    v13 = a6;
  }

  v14 = v10;
  v15 = v22;
  MLActivityClassifier.evaluation(on:featureColumns:labelColumn:recordingFileColumn:)(&v18, a2, v11, v22, v14, v13, a7);
  v13;
  v15;
  return outlined consume of Result<_DataTable, Error>(v17, v21);
}

uint64_t specialized Sequence<>.makeDataset(configuration:)(uint64_t a1, uint64_t a2)
{
  v16[2] = v2;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>.PrefetchMode);
  v20 = *(v19 - 8);
  v3 = *(v20 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v18 = v15;
  v16[0] = a2;
  v17 = *(a1 + 24);
  v6 = type metadata accessor for ShuffleSampler(0);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);

  v9 = ShuffleSampler.__allocating_init(seed:)(v7, v8);
  v15[3] = v6;
  v15[4] = &protocol witness table for ShuffleSampler;
  v15[0] = v9;
  v10 = v18;
  (*(v20 + 104))(v18, enum case for Dataset.PrefetchMode.serial<A, B>(_:), v19);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [WeightedDataSample]);
  v20 = type metadata accessor for WeightedDataSample(0);
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [WeightedDataSample] and conformance [A], &demangling cache variable for type metadata for [WeightedDataSample], &protocol conformance descriptor for [A]);
  v12 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
  v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
  return Dataset.init<>(samples:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)(v16, v17, v15, 0, v10, 0, 0, v19, v20, v11, v12, v13);
}

uint64_t outlined init with copy of (label: Tensor, weight: Tensor?)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (label: Tensor, weight: Tensor?));
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with copy of MLActivityClassifier.Model(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3(0);
  (*(*(v3 - 8) + 16))(a2, a1, v3);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.DataSource(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v6 = *a2;
    *v3 = *a2;
    v3 = (v6 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = type metadata accessor for URL(0);
    (*(*(v5 - 8) + 16))(a1, a2, v5);
  }

  return v3;
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  (*(*(v2 - 8) + 16))(a1, a2, v2);
  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  (*(*(v2 - 8) + 24))(a1, a2, v2);
  return a1;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  (*(*(v2 - 8) + 32))(a1, a2, v2);
  return a1;
}

uint64_t assignWithTake for MLFewShotSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  (*(*(v2 - 8) + 40))(a1, a2, v2);
  return a1;
}

uint64_t type metadata accessor for MLFewShotSoundClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLFewShotSoundClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLFewShotSoundClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLFewShotSoundClassifier.DataSource);
  }

  return result;
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.DataSource(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8);
    swift_initEnumMetadataSingleCase(a1, 256, v3 + 64);
    *(*(a1 - 8) + 84) = *(v3 + 84);
    return 0;
  }

  return result;
}

char *MLFewShotSoundClassifier.DataSource.extractFeatures(with:)(void *a1)
{
  v29 = v1;
  v24 = v2;
  v23 = a1;
  v25 = type metadata accessor for UTType(0);
  v26 = *(v25 - 8);
  v3 = *(v26 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for URL(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = &v22;
  v11 = *(*(type metadata accessor for MLFewShotSoundClassifier.DataSource(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLFewShotSoundClassifier.DataSource(v24, &v22);
  v28 = v6;
  v14 = v6;
  v15 = v27;
  (*(v27 + 32))(&v22, &v22, v14);
  static UTType.audio.getter();
  v16 = v29;
  v17 = static _FileUtilities.readableFiles(at:type:)(&v22, &v22);
  if (v16)
  {
    (*(v26 + 8))(&v22, v25);
    (*(v15 + 8))(&v22, v28);
  }

  else
  {
    v29 = &v22;
    v19 = v17;
    (*(v26 + 8))(&v22, v25);
    if (v19[2])
    {
      v10 = MLFewShotSoundClassifier.DataSource.extractFeatures(with:from:)(v23, v19);
      (*(v27 + 8))(v29, v28);
      v19;
    }

    else
    {
      v19;
      v10 = "om the given data source." + 0x8000000000000000;
      v20 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v20, 0, 0);
      *v21 = 0xD00000000000002ELL;
      *(v21 + 8) = "om the given data source." + 0x8000000000000000;
      *(v21 + 16) = 0;
      *(v21 + 32) = 0;
      *(v21 + 48) = 2;
      swift_willThrow();
      (*(v27 + 8))(v29, v28);
    }
  }

  return v10;
}

uint64_t outlined init with copy of MLFewShotSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLFewShotSoundClassifier.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

unint64_t MLFewShotSoundClassifier.DataSource.extractFeatures(with:from:)(void *a1, id *a2)
{
  v93 = v2;
  v103 = a2;
  v102 = a1;
  v100 = type metadata accessor for DispatchTimeInterval(0);
  v89 = *(v100 - 8);
  v3 = *(v89 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v94 = v86;
  v88 = type metadata accessor for DispatchTime(0);
  v90 = *(v88 - 8);
  v6 = *(v90 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v95 = v86;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v91 = v86;
  v101 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency(0);
  v104 = *(v101 - 1);
  v11 = *(v104 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v96 = v86;
  v14 = type metadata accessor for OS_dispatch_queue.Attributes(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = *(*(type metadata accessor for DispatchQoS(0) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v98 = v86;
  v92 = dispatch_semaphore_create(0);
  isa = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.default.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  v99 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [OS_dispatch_queue.Attributes]);
  v22 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)(aBlock, v21, v22, v14, v99);
  v23 = v96;
  (*(v104 + 104))(v96, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v101);
  v101 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(0xD00000000000003DLL, ("o files provided for training." + 0x8000000000000000), v98, v86, v23, 0);
  v24 = swift_allocObject(&unk_391040, 24, 7);
  *(v24 + 16) = 0;
  v25 = swift_allocObject(&unk_391068, 24, 7);
  *(v25 + 16) = 0;
  v96 = objc_opt_self(SNKShotFeaturizer);
  type metadata accessor for URL(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  URL._bridgeToObjectiveC()(isa);
  v98 = v26;
  v27 = swift_allocObject(&unk_391090, 40, 7);
  v27[2] = v24;
  v27[3] = v25;
  v28 = v92;
  v27[4] = v92;
  aBlock[4] = partial apply for closure #1 in MLFewShotSoundClassifier.DataSource.extractFeatures(with:from:);
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed SNKShotFeaturizationResult?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_4;
  v99 = _Block_copy(aBlock);
  v103 = v24;

  v104 = v25;

  v102 = v28;

  v29 = isa;
  v30 = v98;
  v31 = v99;
  v32 = [v96 featurizeFiles:isa hallucinatorModelURL:v98 queue:v101 completionHandler:v99];
  v33 = v32;
  _Block_release(v31);
  swift_unknownObjectRelease(v33);

  static DispatchTime.now()();
  v34 = v94;
  *v94 = 600;
  v35 = v89;
  (*(v89 + 104))(v34, enum case for DispatchTimeInterval.seconds(_:), v100);
  v36 = v91;
  DispatchTime.advanced(by:)(v34);
  (*(v35 + 8))(v94, v100);
  v37 = *(v90 + 8);
  v38 = v88;
  v37(v95, v88);
  v39 = OS_dispatch_semaphore.wait(timeout:)(v36);
  v37(v36, v38);
  if (v39)
  {
    v40 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v40, 0, 0);
    *v41 = 0xD00000000000001ELL;
    *(v41 + 8) = "lt8@NSError16" + 0x8000000000000000;
    *(v41 + 16) = 0;
    *(v41 + 32) = 0;
    *(v41 + 48) = 2;
    swift_willThrow();

LABEL_16:

LABEL_21:

    return v39;
  }

  v39 = v103;
  v42 = v103 + 2;
  swift_beginAccess((v103 + 2), aBlock, 0, 0);
  if (!*v42)
  {
    v71 = (v104 + 16);
    swift_beginAccess(v104 + 16, v86, 0, 0);
    v72 = *v71;
    if (*v71)
    {
      swift_willThrow();
      swift_errorRetain(v72);
    }

    else
    {
      v78 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v78, 0, 0);
      *v79 = 0xD000000000000029;
      *(v79 + 8) = "timed out retrieving features." + 0x8000000000000000;
      *(v79 + 16) = 0;
      *(v79 + 32) = 0;
      *(v79 + 48) = 2;
      swift_willThrow();
    }

    goto LABEL_16;
  }

  v39 = *v42;
  v43 = [v39 trainingDataEmbeddings];
  v44 = v43;
  v45 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v44, v45);

  v49 = specialized Array._getCount()(v46, v45, v47, v48);
  v46;
  if (!v49)
  {
    v73 = "trieved features." + 0x8000000000000000;
    v74 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v74, 0, 0);
    v76 = 0xD000000000000036;
LABEL_13:
    *v75 = v76;
    *(v75 + 8) = v73;
    *(v75 + 16) = 0;
    *(v75 + 32) = 0;
    *(v75 + 48) = 2;
LABEL_20:
    swift_willThrow();

    goto LABEL_21;
  }

  v50 = [v39 trainingDataLabels];
  v51 = v50;
  v100 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v52 = v100;
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v51, v100);

  v56 = specialized Array._getCount()(v53, v52, v54, v55);
  v53;
  if (!v56)
  {
    v73 = "s in retrieved features." + 0x8000000000000000;
    v77 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v77, 0, 0);
    v76 = 0xD000000000000031;
    goto LABEL_13;
  }

  v57 = [v39 validationDataEmbeddings];
  v58 = v57;
  v59 = v45;
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v58, v45);

  v63 = specialized Array._getCount()(v60, v59, v61, v62);
  v60;
  if (!v63)
  {
    v80 = "retrieved features." + 0x8000000000000000;
    v81 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v81, 0, 0);
    v83 = 0xD000000000000038;
LABEL_19:
    *v82 = v83;
    *(v82 + 8) = v80;
    *(v82 + 16) = 0;
    *(v82 + 32) = 0;
    *(v82 + 48) = 2;
    goto LABEL_20;
  }

  v64 = [v39 validationDataLabels];
  v65 = v64;
  v66 = v100;
  v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v65, v100);

  v70 = specialized Array._getCount()(v67, v66, v68, v69);
  v67;
  if (!v70)
  {
    v80 = "rown from Sound Analysis." + 0x8000000000000000;
    v84 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v84, 0, 0);
    v83 = 0xD000000000000033;
    goto LABEL_19;
  }

  return v39;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    v1 = type metadata accessor for OS_dispatch_queue.Attributes(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for OS_dispatch_queue.Attributes, v1);
    lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [OS_dispatch_queue.Attributes]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A] = result;
  }

  return result;
}

Swift::Int closure #1 in MLFewShotSoundClassifier.DataSource.extractFeatures(with:from:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  v13 = a4 + 16;
  swift_beginAccess(a3 + 16, v10, 1, 0);
  v7 = *(a3 + 16);
  *(a3 + 16) = a1;
  a1;

  swift_beginAccess(v13, v11, 1, 0);
  v8 = *(a4 + 16);
  *(a4 + 16) = a2;
  swift_errorRetain(a2);
  v8;
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10B8D3()
{

  return swift_deallocObject(v0, 40, 7);
}

void thunk for @escaping @callee_guaranteed (@guaranteed SNKShotFeaturizationResult?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);

  v4 = a2;
  v5 = a3;
  v6(a2, a3);
}

uint64_t *initializeBufferWithCopyOfBuffer for MLImageClassifier.Model(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v4 = *(*(v3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v2 = *a2;
    v2 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(a2, v3) == 1)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
      (*(*(v5 - 8) + 16))(a1, a2, v5);
      v6 = 1;
      v7 = v3;
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v7 = v3;
      v6 = 0;
    }

    swift_storeEnumTagMultiPayload(a1, v7, v6);
  }

  return v2;
}

uint64_t destroy for MLImageClassifier.Model(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a1, v2);
  v4 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v4 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(v4);
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t initializeWithCopy for MLImageClassifier.Model(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
  v5 = EnumCaseMultiPayload == 1;
  v6 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
  (*(*(v7 - 8) + 16))(a1, a2, v7);
  swift_storeEnumTagMultiPayload(a1, v3, v5);
  return a1;
}

uint64_t assignWithCopy for MLImageClassifier.Model(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(a1);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
    v5 = EnumCaseMultiPayload == 1;
    v6 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v6 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload(a1, v3, v5);
  }

  return a1;
}

uint64_t initializeWithTake for MLImageClassifier.Model(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
  v5 = EnumCaseMultiPayload == 1;
  v6 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
  (*(*(v7 - 8) + 32))(a1, a2, v7);
  swift_storeEnumTagMultiPayload(a1, v3, v5);
  return a1;
}

uint64_t assignWithTake for MLImageClassifier.Model(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(a1);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
    v5 = EnumCaseMultiPayload == 1;
    v6 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v6 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload(a1, v3, v5);
  }

  return a1;
}

uint64_t type metadata accessor for MLImageClassifier.Model(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLImageClassifier.Model;
  if (!type metadata singleton initialization cache for MLImageClassifier.Model)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLImageClassifier.Model);
  }

  return result;
}

uint64_t type metadata completion function for MLImageClassifier.Model(uint64_t a1)
{
  v4 = v1;
  result = type metadata accessor for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(319);
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 1, &v4, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(uint64_t a1)
{
  result = lazy cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>;
  if (!lazy cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
    result = type metadata accessor for Either(a1, v2, v3, v4);
    if (!v5)
    {
      lazy cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>> = result;
    }
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay20MLModelSpecification5ModelVG_Sis5NeverOTg5032_s8CreateML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = *(type metadata accessor for Model(0) - 8);
    v3 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + a1;
    v9 = *(v2 + 72);
    do
    {
      v8 = v1;
      v4 = Model.specificationVersion.getter();
      v5 = _swiftEmptyArrayStorage[2];
      v6 = v5 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v5)
      {
        v10 = v4;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6, 1);
        v4 = v10;
      }

      _swiftEmptyArrayStorage[2] = v6;
      _swiftEmptyArrayStorage[v5 + 4] = v4;
      v3 += v9;
      v1 = v8 - 1;
    }

    while (v8 != 1);
  }

  return _swiftEmptyArrayStorage;
}

void MLImageClassifier.Model.export(metadata:featureExtractorType:)(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v23 = *a1;
  v24 = a1[1];
  v26 = a1[2];
  v5 = a1[3];
  v30 = *(a1 + 2);
  v25 = a1[6];
  v6 = a1[7];
  v29 = a1[8];
  MLImageClassifier.Model.createPipelineModel(featureExtractorType:)(a2);
  if (!v3)
  {
    v28 = 0;

    Model.modelDescription.setter(v26, v5);

    Model.versionString.setter(v25, v6);

    Model.author.setter(v23, v24);
    countAndFlagsBits = v30._countAndFlagsBits;
    if (!v30._object)
    {
      countAndFlagsBits = 0;
    }

    object = 0xE000000000000000;
    if (v30._object)
    {
      object = v30._object;
    }

    Model.license.setter(countAndFlagsBits, object);
    if (v29)
    {
      v9 = v29;
    }

    else
    {
      v9 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
    }

    Model.metadata.setter(v9);
    v30 = getOSVersion()();
    v29 = Model.metadata.modify(v21);
    v27 = v4;
    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v10);
    v22 = *v11;
    *v11 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30._countAndFlagsBits, v30._object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
    *v11 = v22;
    v29(v21, 0);
    v13 = Model.nestedModels.getter();
    v14 = v13;
    v15 = v28;
    ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay20MLModelSpecification5ModelVG_Sis5NeverOTg5032_s8CreateML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n(v13);
    v28 = v15;
    v14;
    v17 = specialized Sequence<>.max()(ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n);
    v19 = v18;
    ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n;
    v20 = 1;
    if ((v19 & 1) == 0)
    {
      v20 = v17;
    }

    Model.specificationVersion.setter(v20);
  }
}

uint64_t MLImageClassifier.Model.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a2;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v5[12] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v5[13] = v10;
  v5[14] = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.Model.applied(to:eventHandler:), 0, 0);
}

uint64_t MLImageClassifier.Model.applied(to:eventHandler:)()
{
  v1 = v0[14];
  v2 = v0[13];
  outlined init with copy of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(v0[6], v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v1, v2);
  v4 = v0[14];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[8] + 32))(v0[9], v4, v0[7]);
    v5 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    v0[17] = v5;
    *v5 = v0;
    v5[1] = MLImageClassifier.Model.applied(to:eventHandler:);
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(v0[2], v0[3], v0[4], v0[5], v0[7]);
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v4, v0[10]);
    v7 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    v0[15] = v7;
    *v7 = v0;
    v7[1] = MLImageClassifier.Model.applied(to:eventHandler:);
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(v0[2], v0[3], v0[4], v0[5], v0[10]);
  }
}

{
  v2 = *(*v1 + 120);
  *(*v1 + 128) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Model.applied(to:eventHandler:);
  }

  else
  {
    v3 = MLImageClassifier.Model.applied(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 112);
  (*(*(v0 + 88) + 8))(v1, *(v0 + 80));
  v3;
  v1;
  v2;
  return (*(v0 + 8))();
}

{
  v2 = *(*v1 + 136);
  *(*v1 + 144) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Model.applied(to:eventHandler:);
  }

  else
  {
    v3 = MLImageClassifier.Model.applied(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  (*(*(v0 + 64) + 8))(v1, *(v0 + 56));
  v2;
  v3;
  v1;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 112);
  (*(*(v0 + 88) + 8))(v1, *(v0 + 80));
  v3;
  v1;
  v2;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  (*(*(v0 + 64) + 8))(v1, *(v0 + 56));
  v2;
  v3;
  v1;
  return (*(v0 + 8))();
}

uint64_t protocol witness for Transformer.applied(to:eventHandler:) in conformance MLImageClassifier.Model(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc(160);
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = protocol witness for SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:) in conformance MLImageClassifier.Classifier;
  return MLImageClassifier.Model.applied(to:eventHandler:)(a1, a2, a3, a4);
}

uint64_t lazy protocol witness table accessor for type MLImageClassifier.Model and conformance MLImageClassifier.Model()
{
  result = lazy protocol witness table cache variable for type MLImageClassifier.Model and conformance MLImageClassifier.Model;
  if (!lazy protocol witness table cache variable for type MLImageClassifier.Model and conformance MLImageClassifier.Model)
  {
    v1 = type metadata accessor for MLImageClassifier.Model(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLImageClassifier.Model, v1);
    lazy protocol witness table cache variable for type MLImageClassifier.Model and conformance MLImageClassifier.Model = result;
  }

  return result;
}

uint64_t outlined init with copy of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:)(uint64_t a1)
{
  v2[48] = v1;
  v2[47] = a1;
  v3 = type metadata accessor for Model(0);
  v2[49] = v3;
  v4 = *(v3 - 8);
  v2[50] = v4;
  v2[51] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:), 0, 0);
}

{
  v5 = *(*v2 + 416);
  v4 = *v2;
  *(*v2 + 424) = v1;
  v5;
  if (v1)
  {
    v6 = MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:);
  }

  else
  {
    *(v4 + 432) = a1;
    v6 = MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:)()
{
  v8 = *(v0 + 376);
  v1 = NSFullUserName();
  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v2);
  v5 = v4;

  *(v0 + 88) = v3;
  *(v0 + 96) = v5;
  *(v0 + 104) = 0xD000000000000033;
  *(v0 + 112) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 136) = 49;
  *(v0 + 144) = 0xE100000000000000;
  *(v0 + 152) = 0;
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = 0xD000000000000033;
  *(v0 + 40) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 64) = 49;
  *(v0 + 72) = 0xE100000000000000;
  *(v0 + 80) = 0;
  outlined retain of MLModelMetadata((v0 + 88));
  outlined release of MLModelMetadata((v0 + 16));
  qmemcpy((v0 + 160), (v0 + 88), 0x48uLL);
  MLImageClassifier.Model.export(metadata:featureExtractorType:)((v0 + 160), v8);
  qmemcpy((v0 + 304), (v0 + 160), 0x48uLL);
  outlined release of MLModelMetadata((v0 + 304));
  type metadata accessor for MLModel();
  v6 = swift_task_alloc(208);
  *(v0 + 416) = v6;
  *v6 = v0;
  v6[1] = MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:);
  return static MLModel.compile(_:)(*(v0 + 408));
}

{
  v1 = *(v0 + 408);
  (*(*(v0 + 400) + 8))(v1, *(v0 + 392));
  v1;
  return (*(v0 + 8))(*(v0 + 432));
}

{
  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v0 + 408);
  return (*(v0 + 8))();
}

void MLImageClassifier.Model.createPipelineModel(featureExtractorType:)(uint64_t a1)
{
  v73 = a1;
  v65 = v1;
  v60 = type metadata accessor for ModelKind(0);
  v59 = *(v60 - 8);
  v3 = *(v59 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v61 = &v58;
  v70 = type metadata accessor for FeatureDescription(0);
  v75 = *(v70 - 8);
  v6 = *(v75 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v67 = &v58;
  v68 = type metadata accessor for FeatureType(0);
  v66 = *(v68 - 8);
  v9 = *(v66 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v62 = &v58;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v69 = &v58;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureDescription?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v58 = &v58;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v76 = &v58;
  v19 = type metadata accessor for Model(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v74 = &v58;
  v24 = alloca(v21);
  v25 = alloca(v21);
  MLImageClassifier.Model.createFeatureExtractorModel(_:)(v73);
  if (!v2)
  {
    v77 = &v58;
    v71 = v20;
    v72 = v19;
    MLImageClassifier.Model.createClassifierModel()();
    v73 = 0;
    v26 = Model.outputs.getter();
    v27 = v26;
    v28 = v76;
    specialized Collection.first.getter(v26);
    v27;
    v29 = v70;
    if (__swift_getEnumTagSinglePayload(v28, 1, v70) == 1)
    {
      BUG();
    }

    v63 = FeatureDescription.name.getter();
    v64 = v30;
    v76 = *(v75 + 8);
    (v76)(v28, v29);
    v31 = Model.inputs.getter();
    v32 = v58;
    specialized Collection.first.getter(v31);
    v31;
    if (__swift_getEnumTagSinglePayload(v32, 1, v29) == 1)
    {
      BUG();
    }

    v33 = v69;
    FeatureDescription.type.getter();
    (v76)(v32, v29);
    v34 = v62;
    (*(v66 + 16))(v62, v33, v68);
    v35 = v67;
    FeatureDescription.init(name:type:description:)(v63, v64, v34, 0, 0xE000000000000000);
    v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
    v37 = v75;
    v38 = *(v75 + 80);
    v39 = (v38 + 32) & ~*(v75 + 80);
    v40 = swift_allocObject(v36, v39 + *(v75 + 72), v38 | 7);
    *(v40 + 16) = 1;
    *(v40 + 24) = 2;
    (*(v37 + 16))(v40 + v39, v35, v70);
    Model.outputs.setter(v40);
    v41 = Model.outputs.getter();
    Model.inputs.setter(v41);
    Model.init()();
    Model.specificationVersion.setter(1);
    v42 = Model.inputs.getter();
    Model.inputs.setter(v42);
    v43 = Model.outputs.getter();
    Model.outputs.setter(v43);
    v44 = Model.predictedFeatureName.getter();
    Model.predictedFeatureName.setter(v44, v45);
    v46 = Model.predictedProbabilitiesName.getter();
    Model.predictedProbabilitiesName.setter(v46, v47);
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
    v49 = v71;
    v75 = *(v71 + 72);
    v50 = *(v71 + 80);
    v51 = (v50 + 32) & ~*(v71 + 80);
    v52 = swift_allocObject(v48, v51 + 2 * v75, v50 | 7);
    *(v52 + 16) = 2;
    *(v52 + 24) = 4;
    v53 = v52 + v51;
    v54 = *(v49 + 16);
    v55 = v72;
    v54(v53, v77, v72);
    v54(v75 + v53, v74, v55);
    v56 = v61;
    PipelineClassifierConfiguration.init(models:names:)(v52, _swiftEmptyArrayStorage);
    (*(v59 + 104))(v56, enum case for ModelKind.pipelineClassifier(_:), v60);
    Model.kind.setter(v56);
    (v76)(v67, v70);
    (*(v66 + 8))(v69, v68);
    v57 = *(v71 + 8);
    v57(v74, v55);
    v57(v77, v55);
  }
}

void MLImageClassifier.Model.createFeatureExtractorModel(_:)(uint64_t a1)
{
  v11 = v2;
  v12 = v1;
  v3 = *(*(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLImageClassifier.FeatureExtractorType(a1, &v11);
  if (swift_getEnumCaseMultiPayload(&v11, v6) == 1)
  {
    outlined init with take of MLImageClassifier.CustomFeatureExtractor(&v11, &v11);
    MLImageClassifier.CustomFeatureExtractor.buildModel()();
    outlined destroy of MLImageClassifier.CustomFeatureExtractor(&v11);
  }

  else
  {
    if (v12)
    {
      v10 = 2;
    }

    else
    {
      v10 = v11;
    }

    MLImageClassifier.Model.createScenePrintFeatureExtractorModel(revision:)(v10);
  }
}

void MLImageClassifier.Model.createScenePrintFeatureExtractorModel(revision:)(uint64_t a1)
{
  v49 = a1;
  v55 = v1;
  v48 = type metadata accessor for ImageFeaturePrint(0);
  v2 = *(v48 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v61 = v47;
  v50 = type metadata accessor for URL.DirectoryHint(0);
  v51 = *(v50 - 8);
  v6 = *(v51 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v52 = v47;
  v64 = type metadata accessor for UUID(0);
  v53 = *(v64 - 8);
  v9 = *(v53 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v54 = v47;
  v62 = type metadata accessor for URL(0);
  v59 = *(v62 - 8);
  v12 = *(v59 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v56 = v47;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v58 = v47;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v65 = v47;
  v19 = alloca(v12);
  v20 = alloca(v12);
  v63 = v47;
  v21 = objc_opt_self(NSFileManager);
  v22 = [v21 defaultManager];
  v23 = v22;
  NSFileManager.createTemporaryModelDirectory()();

  if (!v24)
  {
    v60 = v2;
    v25 = [v21 defaultManager];
    v26 = v25;
    NSFileManager.temporaryModelDirectory.getter();

    v27 = v54;
    UUID.init()();
    v28 = UUID.uuidString.getter();
    v30 = v29;
    v57 = v29;
    (*(v53 + 8))(v27, v64);
    v47[0] = v28;
    v47[1] = v30;
    v64 = 0;
    v31 = v52;
    v32 = v50;
    v33 = v51;
    (*(v51 + 104))(v52, enum case for URL.DirectoryHint.inferFromPath(_:), v50);
    v34 = lazy protocol witness table accessor for type String and conformance String();
    v35 = v58;
    URL.appending<A>(component:directoryHint:)(v47, v31, &type metadata for String, v34);
    (*(v33 + 8))(v31, v32);
    v57;
    v36 = *(v59 + 8);
    v37 = v62;
    (v36)(v35, v62);
    v38 = v63;
    v39 = v65;
    URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
    (v36)(v39, v37);
    v40 = objc_allocWithZone(CIContext);
    v41 = [v40 init];
    ImageFeaturePrint.init(revision:cropAndScale:context:)(v49, 0, v41);
    v42 = v48;
    v43 = v64;
    Transformer.export(to:)(v38, v48, &protocol witness table for ImageFeaturePrint);
    if (v43)
    {
      (*(v60 + 8))(v61, v42);
      (v36)(v63, v62);
    }

    else
    {
      v65 = v36;
      (*(v60 + 8))(v61, v42);
      v44 = v56;
      v45 = v63;
      v46 = v62;
      (*(v59 + 16))(v56, v63, v62);
      Model.init(contentsOf:)(v44);
      $defer #1 () in MLImageClassifier.Model.createScenePrintFeatureExtractorModel(revision:)();
      (v65)(v45, v46);
    }
  }
}

void MLImageClassifier.Model.createClassifierModel()()
{
  v84 = v1;
  v64 = v2;
  v79 = v0;
  v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v73 = *(v74 - 8);
  v3 = *(v73 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v75 = v63;
  v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v76 = *(v77 - 8);
  v6 = *(v76 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v78 = v63;
  v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v9 = *(*(v66 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v65 = v63;
  v87 = type metadata accessor for URL.DirectoryHint(0);
  v67 = *(v87 - 1);
  v12 = *(v67 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v68 = v63;
  v70 = type metadata accessor for UUID(0);
  v71 = *(v70 - 8);
  v15 = *(v71 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v72 = v63;
  v86 = type metadata accessor for URL(0);
  v83 = *(v86 - 8);
  v18 = *(v83 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = alloca(v18);
  v22 = alloca(v18);
  v23 = alloca(v18);
  v24 = alloca(v18);
  v69 = v63;
  v25 = alloca(v18);
  v26 = alloca(v18);
  v85 = v63;
  v27 = objc_opt_self(NSFileManager);
  v28 = [v27 defaultManager];
  v29 = v28;
  NSFileManager.createTemporaryModelDirectory()();

  if (!v30)
  {
    v82 = v63;
    v84 = 0;
    v31 = [v27 defaultManager];
    v32 = v31;
    v80 = v63;
    NSFileManager.temporaryModelDirectory.getter();

    v33 = v72;
    UUID.init()();
    v34 = UUID.uuidString.getter();
    v36 = v35;
    v81 = v35;
    (*(v71 + 8))(v33, v70);
    v63[0] = v34;
    v63[1] = v36;
    v37 = v68;
    v38 = v67;
    (*(v67 + 104))(v68, enum case for URL.DirectoryHint.inferFromPath(_:), v87);
    v39 = lazy protocol witness table accessor for type String and conformance String();
    v40 = v69;
    v41 = v80;
    URL.appending<A>(component:directoryHint:)(v63, v37, &type metadata for String, v39);
    (*(v38 + 8))(v37, v87);
    v81;
    v42 = *(v83 + 8);
    v43 = v86;
    (v42)(v41, v86);
    URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
    v87 = v42;
    (v42)(v40, v43);
    v44 = v65;
    outlined init with copy of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(v64, v65);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v44, v66);
    v46 = v85;
    if (EnumCaseMultiPayload == 1)
    {
      v47 = v75;
      v48 = v44;
      v49 = v74;
      v50 = v73;
      (*(v73 + 32))(v75, v48, v74);
      v51 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FullyConnectedNetworkClassifierModel<Float, String> and conformance FullyConnectedNetworkClassifierModel<A, B>, &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>, &protocol conformance descriptor for FullyConnectedNetworkClassifierModel<A, B>);
      v52 = v84;
      Transformer.export(to:)(v46, v49, v51);
      if (v52)
      {
        (*(v50 + 8))(v47, v49);
LABEL_7:
        v59 = v86;
        v60 = v85;
LABEL_11:
        (v87)(v60, v59);
        return;
      }

      (*(v50 + 8))(v47, v49);
    }

    else
    {
      v53 = v78;
      v54 = v44;
      v55 = v77;
      v56 = v76;
      (*(v76 + 32))(v78, v54, v77);
      v57 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LogisticRegressionClassifierModel<Float, String> and conformance LogisticRegressionClassifierModel<A, B>, &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>, &protocol conformance descriptor for LogisticRegressionClassifierModel<A, B>);
      v58 = v84;
      Transformer.export(to:)(v46, v55, v57);
      if (v58)
      {
        (*(v56 + 8))(v53, v55);
        goto LABEL_7;
      }

      (*(v56 + 8))(v53, v55);
    }

    v59 = v86;
    v61 = v82;
    v62 = v85;
    (*(v83 + 16))(v82, v85, v86);
    Model.init(contentsOf:)(v61);
    $defer #1 () in MLImageClassifier.Model.createScenePrintFeatureExtractorModel(revision:)();
    v60 = v62;
    goto LABEL_11;
  }
}

NSURL *$defer #1 () in MLImageClassifier.Model.createScenePrintFeatureExtractorModel(revision:)()
{
  v0 = objc_opt_self(NSFileManager);
  v1 = [v0 defaultManager];
  v2 = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v10 = 0;
  v5 = [(NSURL *)v2 removeItemAtURL:v3 error:&v10];

  v6 = v10;
  if (v5)
  {
    return v10;
  }

  v8 = v10;
  v9 = _convertNSErrorToError(_:)(v6);

  swift_willThrow();
  v9;
  return __stack_chk_guard;
}

uint64_t outlined destroy of MLImageClassifier.CustomFeatureExtractor(uint64_t a1)
{
  v1 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SGD<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(&protocol conformance descriptor for SGD<A>, a2);
  *(a1 + 8) = result;
  return result;
}

_BYTE *assignWithCopy for MLRandomForestClassifier.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLRandomForestClassifier.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLRandomForestClassifier.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLRandomForestClassifier.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLRandomForestClassifier.ModelParameters.ValidationData);
  }

  return result;
}

void *assignWithTake for MLRandomForestClassifier.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLRandomForestClassifier.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLRandomForestClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_341680;
  v5[1] = &unk_341698;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLRandomForestClassifier.ModelParameters.ValidationData.asTable()(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v29 = &v25;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v28 = &v25;
  v10 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLRandomForestClassifier.ModelParameters.ValidationData(v2, &v25);
  result = swift_getEnumCaseMultiPayload(&v25, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      result = v25;
      v15 = v26;
      goto LABEL_7;
    case 2:
      v16 = v28;
      v17 = v27;
      (*(v27 + 32))(v28, &v25, v4);
      v18 = v29;
      *a1.i64 = (*(v17 + 16))(v29, v16, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v18, 1, a1);
      (*(v17 + 8))(v16, v4);
      result = v30;
      v15 = v31;
LABEL_7:
      *v3 = result;
      *(v3 + 8) = v15;
      break;
    case 3:
      v19 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v21 = empty;
      v22 = type metadata accessor for CMLTable();
      v23 = swift_allocObject(v22, 24, 7);
      *(v23 + 16) = v21;
      v24 = type metadata accessor for _DataTable();
      swift_allocObject(v24, 40, 7);
      result = _DataTable.init(impl:)(v23);
      *v19 = result;
      *(v19 + 8) = 0;
      break;
  }

  return result;
}

uint64_t MLRandomForestClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *, uint64_t *, uint64_t))
{
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = &v44;
  v47 = type metadata accessor for DataFrame.Slice(0);
  v46 = *(v47 - 8);
  v8 = *(v46 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v44;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v50 = &v44;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v48 = &v44;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v51 = &v44;
  v20 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLRandomForestClassifier.ModelParameters.ValidationData(v3, &v44);
  switch(swift_getEnumCaseMultiPayload(&v44, v20))
  {
    case 0u:
      v57 = v4;
      v24 = v51;
      v25 = v50;
      DataFrame.randomSplit(strategy:)(v51, v50, &v44);
      v26 = v46;
      v27 = v52;
      v28 = v25;
      v29 = v47;
      v56 = *(v46 + 16);
      v56(v52, v28, v47);
      DataFrame.init(_:)(v27);
      v30 = v48;
      outlined init with copy of DataFrame.Slice?(v24, v48);
      v31 = v29;
      if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
      {
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
        (*(v26 + 8))(v50, v29);
      }

      else
      {
        v41 = v52;
        (*(v26 + 32))(v52, v30, v31);
        v42 = v49;
        v56(v49, v41, v31);
        DataFrame.init(_:)(v42);
        v43 = *(v26 + 8);
        v43(v41, v31);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
        v43(v50, v31);
      }

      return outlined destroy of DataFrame.Slice?(v51);
    case 1u:
      v36 = v44;
      v37 = v45;
      (*(v57 + 16))(v54, v56, v4);
      v44 = v36;
      v45 = v37;
      v38 = v55;
      DataFrame.init(_:)(&v44);
      v34 = v38;
      goto LABEL_10;
    case 2u:
      v32 = *(v57 + 32);
      v32(v53, &v44, v4);
      if (DataFrameProtocol.isEmpty.getter(v4, &protocol witness table for DataFrame))
      {
        v33 = v57;
        (*(v57 + 8))(v53, v4);
        (*(v33 + 16))(v54, v56, v4);
LABEL_7:
        v34 = v55;
        v35 = 1;
      }

      else
      {
        (*(v57 + 16))(v54, v56, v4);
        v39 = v55;
        v32(v55, v53, v4);
        v34 = v39;
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v4);
    case 3u:
      (*(v57 + 16))(v54, v56, v4);
      goto LABEL_7;
  }
}

uint64_t outlined init with copy of MLRandomForestClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLLinearRegressor.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Any?(v1, &v9);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLLinearRegressor.ModelParameters.ValidationData.asTable()(a1);
  return outlined destroy of MLLinearRegressor.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLLinearRegressor.ModelParameters.validationData : MLLinearRegressor.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLLinearRegressor.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLLinearRegressor.ModelParameters.validationData : MLLinearRegressor.ModelParameters(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLLinearRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLLinearRegressor.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *a1;
  v8 = *(a1 + 8);
  v15 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13 + 1);
  if (v8 == 0xFF)
  {
    v13 = 0;
    v14 = 256;
  }

  else
  {
    v16 = v7;
    v9 = v8;
    v10 = v8 & 1;
    v17 = v10;
    v21 = v9;
    outlined copy of Result<_DataTable, Error>(v7, v9);
    v20 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v16, v17);
    if (v20)
    {
      *&v13 = v7;
      BYTE8(v13) = v10;
      v12 = 1;
    }

    else
    {
      outlined consume of MLDataTable?(v7, v21);
      v12 = 3;
    }

    v2 = v12;
  }

  swift_storeEnumTagMultiPayload(&v13, v3, v2);
  outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18);
}

uint64_t MLLinearRegressor.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Any?(v1, &v6);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t outlined destroy of MLLinearRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t (*MLLinearRegressor.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLLinearRegressor.ModelParameters.validationData.getter(a2);
  return MLLinearRegressor.ModelParameters.validationData.modify;
}

uint64_t MLLinearRegressor.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v6 = *a1;
  v7 = v3;
  if ((a2 & 1) == 0)
  {
    return MLLinearRegressor.ModelParameters.validationData.setter(&v6);
  }

  v4 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLLinearRegressor.ModelParameters.validationData.setter(&v6);
  return outlined consume of MLDataTable?(v2, v4);
}

uint64_t outlined copy of MLDataTable?(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of Result<_DataTable, Error>(a1, a2);
  }

  return result;
}

uint64_t key path setter for MLLinearRegressor.ModelParameters.validation : MLLinearRegressor.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLLinearRegressor.ModelParameters.ValidationData(a1, v6);
  return MLLinearRegressor.ModelParameters.validation.setter(v6);
}

uint64_t MLLinearRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1);
}

void (*MLLinearRegressor.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Any?(v1, (v2 + 2));
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLLinearRegressor.ModelParameters.validation.modify;
}

void MLLinearRegressor.ModelParameters.validation.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[19];
  v4 = (*a1)[18];
  v8 = (*a1)[16];
  v5 = (*a1)[17];
  if (a2)
  {
    outlined init with copy of MLLinearRegressor.ModelParameters.ValidationData(v3, v4);
    v2[11] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(v4, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v8);
    outlined destroy of MLLinearRegressor.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(v3, v7);
    outlined assign with take of Any?((v2 + 12), v8);
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t MLLinearRegressor.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a2;
  v9 = v7;
  v10 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 32) = v21;
  *(v9 + 40) = v20;
  *(v9 + 48) = v19;
  *(v9 + 56) = v18;
  *(v9 + 64) = v17;
  *(v9 + 72) = a3 & 1;
  outlined init with copy of MLLinearRegressor.ModelParameters.ValidationData(a1, v16);
  v16[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(v16, boxed_opaque_existential_0);
  outlined assign with take of Any?(v16, v9);
  return outlined destroy of MLLinearRegressor.ModelParameters.ValidationData(a1);
}

uint64_t MLLinearRegressor.ModelParameters.init(validationData:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(uint64_t *a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  *(v7 + 16) = 0;
  *v7 = 0;
  *(v7 + 32) = a2;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 72) = a3 & 1;
  v11 = v8;
  v12 = v9;
  return MLLinearRegressor.ModelParameters.validationData.setter(&v11);
}

unint64_t MLLinearRegressor.ModelParameters.description.getter()
{
  _StringGuts.grow(_:)(19);
  0;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v1._object;
  String.append(_:)(v1);
  object;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v3._object = 0xEC000000203A7974;
  v3._countAndFlagsBits = 0x6C616E655020314CLL;
  String.append(_:)(v3);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4 = v13._object;
  String.append(_:)(v13);
  v4;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x6C616E655020324CLL;
  v3._object = 0xEC000000203A7974;
  String.append(_:)(v3);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v5 = v13._object;
  String.append(_:)(v13);
  v5;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x7A69532070657453;
  v3._object = 0xEB00000000203A65;
  String.append(_:)(v3);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v6 = v13._object;
  String.append(_:)(v13);
  v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v3._object = "ml.actionClassifier" + 0x8000000000000000;
  v3._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v3);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v3._countAndFlagsBits = 10;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v7 = v13._object;
  String.append(_:)(v13);
  v7;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v13._object;
  v13._countAndFlagsBits = 0xD000000000000013;
  v8 = *(v0 + 72);
  v9._countAndFlagsBits = 0x65736C6166;
  if (v8)
  {
    v9._countAndFlagsBits = 1702195828;
  }

  v13._object = "Convergence Threshold: " + 0x8000000000000000;
  v9._object = ((v8 ^ 1u | 0xFFFFFFFFFFFFFFE4) << 56);
  String.append(_:)(v9);
  0;
  v10._countAndFlagsBits = 10;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11 = v13._object;
  String.append(_:)(v13);
  v11;
  return 0xD000000000000010;
}

unint64_t MLLinearRegressor.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLLinearRegressor.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t initializeWithCopy for MLLinearRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 3);
  if (v2)
  {
    *(a1 + 24) = v2;
    (**(v2 - 8))(a1, a2);
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = a2[1];
    *a1 = v3;
  }

  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithCopy for MLLinearRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (v2)
    {
      *(a1 + 24) = v2;
      (**(v2 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v3 = *a2;
    *(a1 + 16) = a2[1];
    *a1 = v3;
    goto LABEL_8;
  }

  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(a1, a2);
LABEL_8:
  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithTake for MLLinearRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v2 = *a2;
  *(a1 + 16) = a2[1];
  *a1 = v2;
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLLinearRegressor.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 & 0xFFFFFFFF00000001;
      v5 = (v3 >> 1) - 1;
      v6 = -1;
      if (v5 >= 0)
      {
        v6 = v5;
      }

      v2 = v4 != 0 ? -1 : v6;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLLinearRegressor.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    *(a1 + 72) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 73) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = 2 * a2;
    }
  }
}

uint64_t static MLSoundClassifier.VGGishFeatureExtractor.buildSoundAnalysisPreprocessingSpec()()
{
  v44 = v0;
  v33 = type metadata accessor for ModelKind(0);
  v34 = *(v33 - 8);
  v1 = *(v34 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v35 = &v32;
  v45 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v51 = *(v45 - 8);
  v4 = *(v51 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v47 = &v32;
  v7 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v43 = type metadata accessor for FeatureDescription(0);
  v46 = *(v43 - 8);
  v10 = *(v46 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v50 = &v32;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v49 = &v32;
  Model.init()();
  Model.specificationVersion.setter(4);
  v36 = "Feature embedding for VGGish" + 0x8000000000000000;
  Model.predictedFeatureName.setter(0xD000000000000011, ("Feature embedding for VGGish" + 0x8000000000000000));
  Model.modelDescription.setter(0xD000000000000027, ("be a neural network, got " + 0x8000000000000000));
  FeatureDescription.init()();
  FeatureDescription.name.setter(0x6D61536F69647561, 0xEC00000073656C70);
  FeatureDescription.featureDescription.setter(0xD000000000000024, ("reprocessing for VGGish" + 0x8000000000000000));
  v48 = enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:);
  v37 = *(v51 + 104);
  v15 = v47;
  v16 = v45;
  v37(v47, enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:), v45);
  v38 = &v32;
  static FeatureType.shapedArray(dataType:shape:optional:)(v15, &outlined read-only object #0 of static MLSoundClassifier.VGGishFeatureExtractor.buildSoundAnalysisPreprocessingSpec(), 0);
  v51 = *(v51 + 8);
  (v51)(v15, v16);
  FeatureDescription.type.setter(&v32);
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v17 = v46;
  v18 = *(v46 + 80);
  v19 = (v18 + 32) & ~*(v46 + 80);
  v41 = v19 + *(v46 + 72);
  v39 = v18 | 7;
  v20 = swift_allocObject(v40, v41, v18 | 7);
  *(v20 + 16) = 1;
  *(v20 + 24) = 2;
  v42 = *(v17 + 16);
  v42(v20 + v19, v49, v43);
  Model.inputs.setter(v20);
  FeatureDescription.init()();
  FeatureDescription.name.setter(0xD000000000000011, v36);
  v21 = v47;
  v22 = v45;
  v37(v47, v48, v45);
  v23 = v38;
  static FeatureType.shapedArray(dataType:shape:optional:)(v21, &outlined read-only object #1 of static MLSoundClassifier.VGGishFeatureExtractor.buildSoundAnalysisPreprocessingSpec(), 0);
  (v51)(v21, v22);
  v24 = v50;
  FeatureDescription.type.setter(v23);
  v25 = swift_allocObject(v40, v41, v39);
  *(v25 + 16) = 1;
  *(v25 + 24) = 2;
  v26 = v25 + v19;
  v27 = v43;
  v42(v26, v24, v43);
  Model.outputs.setter(v25);
  v28 = v35;
  SoundAnalysisPreprocessorKind.VGGishParameters.init()();
  LODWORD(v25) = enum case for SoundAnalysisPreprocessorKind.vggish(_:);
  v29 = type metadata accessor for SoundAnalysisPreprocessorKind(0);
  (*(*(v29 - 8) + 104))(v28, v25, v29);
  (*(v34 + 104))(v28, enum case for ModelKind.soundPreprocessor(_:), v33);
  Model.kind.setter(v28);
  v30 = *(v46 + 8);
  v30(v50, v27);
  return (v30)(v49, v27);
}

void static MLSoundClassifier.VGGishFeatureExtractor.buildFeatureEmbeddingNeuralNetworkSpec(outputName:)(uint64_t a1, uint64_t a2)
{
  *&v124 = v3;
  v122 = a2;
  v119 = a1;
  v125 = v2;
  v106 = type metadata accessor for ModelKind(0);
  v107 = *(v106 - 8);
  v4 = *(v107 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v108 = v96;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v98 = v96;
  v109 = type metadata accessor for NeuralNetwork(0);
  v110 = *(v109 - 8);
  v9 = *(v110 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v123 = v96;
  v120 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v114 = *(v120 - 8);
  v12 = *(v114 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v121 = v96;
  v15 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v105 = v96;
  v116 = type metadata accessor for FeatureDescription(0);
  v18 = *(v116 - 8);
  v19 = *(v18 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v118 = v96;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v117 = v96;
  v24 = type metadata accessor for URL(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v126 = v96;
  v29 = alloca(v26);
  v30 = alloca(v26);
  v31 = v96;
  v32._object = "h feature from audio samples" + 0x8000000000000000;
  v32._countAndFlagsBits = 0xD000000000000018;
  v33 = v124;
  static BundleUtilities.getMLModelURL(at:)(v32);
  if (v33)
  {
    return;
  }

  v115 = v18;
  v34 = v126;
  *&v124 = 0;
  (*(v25 + 16))(v126, v96, v24);
  v35 = v124;
  Model.init(contentsOf:)(v34);
  *&v124 = v35;
  if (v35)
  {
LABEL_19:
    (*(v25 + 8))(v31, v24);
    return;
  }

  v113 = v96;
  v112 = v24;
  v111 = v25;
  Model.specificationVersion.setter(4);
  v36 = v122;

  Model.predictedFeatureName.setter(v119, v36);
  Model.modelDescription.setter(0xD00000000000001CLL, ("SNVGGEmbeddingExtractor8" + 0x8000000000000000));
  FeatureDescription.init()();
  v104 = "Feature embedding for VGGish" + 0x8000000000000000;
  FeatureDescription.name.setter(0xD000000000000011, ("Feature embedding for VGGish" + 0x8000000000000000));
  LODWORD(v126) = enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:);
  v37 = v114;
  v99 = *(v114 + 104);
  v38 = v121;
  v39 = v120;
  v99(v121, enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:), v120);
  v40 = v105;
  static FeatureType.shapedArray(dataType:shape:optional:)(v38, &outlined read-only object #0 of static MLSoundClassifier.VGGishFeatureExtractor.buildFeatureEmbeddingNeuralNetworkSpec(outputName:), 0);
  v114 = *(v37 + 8);
  (v114)(v38, v39);
  v41 = v117;
  FeatureDescription.type.setter(v40);
  v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v42 = v115;
  v43 = *(v115 + 80);
  v44 = (v43 + 32) & ~*(v115 + 80);
  v102 = v44 + *(v115 + 72);
  v100 = v43 | 7;
  v45 = swift_allocObject(v101, v102, v43 | 7);
  *(v45 + 16) = 1;
  *(v45 + 24) = 2;
  v103 = *(v42 + 16);
  v103(v45 + v44, v41, v116);
  Model.inputs.setter(v45);
  FeatureDescription.init()();
  v46 = v122;

  FeatureDescription.name.setter(v119, v46);
  v47 = v121;
  v48 = v120;
  v99(v121, v126, v120);
  v49 = v105;
  static FeatureType.shapedArray(dataType:shape:optional:)(v47, &outlined read-only object #1 of static MLSoundClassifier.VGGishFeatureExtractor.buildFeatureEmbeddingNeuralNetworkSpec(outputName:), 0);
  (v114)(v47, v48);
  v50 = v118;
  FeatureDescription.type.setter(v49);
  v51 = swift_allocObject(v101, v102, v100);
  *(v51 + 16) = 1;
  *(v51 + 24) = 2;
  v103(v51 + v44, v50, v116);
  Model.outputs.setter(v51);
  v52 = v98;
  Model.kind.getter();
  v53 = v52;
  v54 = v52;
  v55 = v106;
  v56 = v107;
  v57 = (*(v107 + 88))(v54, v106);
  if (v57 != enum case for ModelKind.neuralNetwork(_:))
  {
    *&v124 = *(v56 + 8);
    (v124)(v53, v55);
    *&v97[0] = 0;
    *(&v97[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v88._object = "preprocessedAudio" + 0x8000000000000000;
    v88._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v88);
    v89 = v108;
    Model.kind.getter();
    _print_unlocked<A, B>(_:_:)(v89, v97, v55, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    (v124)(v89, v55);
    v88._countAndFlagsBits = 0x64616574736E6920;
    v88._object = 0xE90000000000002ELL;
    String.append(_:)(v88);
    v124 = v97[0];
    v90 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v91 = swift_allocError(&type metadata for MLCreateError, v90, 0, 0);
    *v92 = v124;
    *(v92 + 16) = 0;
    *(v92 + 32) = 0;
    *(v92 + 48) = 2;
    *&v124 = v91;
    swift_willThrow();
    v93 = *(v115 + 8);
    v94 = v116;
    v93(v118, v116);
    v93(v117, v94);
    v95 = type metadata accessor for Model(0);
    (*(*(v95 - 8) + 8))(v125, v95);
    v25 = v111;
    v24 = v112;
    v31 = v113;
    goto LABEL_19;
  }

  LODWORD(v120) = v57;
  (*(v56 + 96))(v53, v55);
  (*(v110 + 32))(v123, v53, v109);
  v126 = NeuralNetwork.layers.modify(v97);
  v59 = v58;
  v60 = *v58;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v58);
  *v59 = v60;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v60 = specialized _ArrayBuffer._consumeAndCreateNew()(v60);
    *v59 = v60;
  }

  if (!*(v60 + 16))
  {
    BUG();
  }

  v121 = *(type metadata accessor for NeuralNetwork.Layer(0) - 8);
  v62 = NeuralNetwork.Layer.inputNames.modify(v96);
  v64 = v63;
  v65 = *v63;
  v66 = swift_isUniquelyReferenced_nonNull_native(*v63);
  *v64 = v65;
  if (!v66)
  {
    v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v65);
    *v64 = v65;
  }

  if (!v65[2])
  {
    BUG();
  }

  v67 = v65[5];
  v65[4] = 0xD000000000000011;
  v65[5] = v104;
  v67;
  v62(v96, 0);
  (v126)(v97, 0);
  v68 = NeuralNetwork.layers.getter();
  v69 = *(v68 + 16);
  v68;

  v126 = NeuralNetwork.layers.modify(v97);
  v71 = v70;
  v72 = *v70;
  v73 = swift_isUniquelyReferenced_nonNull_native(*v70);
  *v71 = v72;
  if (!v73)
  {
    v72 = specialized _ArrayBuffer._consumeAndCreateNew()(v72);
    *v71 = v72;
  }

  if (!v69)
  {
    BUG();
  }

  if (v69 > *(v72 + 16))
  {
    BUG();
  }

  v74 = NeuralNetwork.Layer.outputNames.modify(v96);
  v76 = v75;
  v77 = *v75;
  v78 = swift_isUniquelyReferenced_nonNull_native(*v75);
  *v76 = v77;
  if (!v78)
  {
    v77 = specialized _ArrayBuffer._consumeAndCreateNew()(v77);
    *v76 = v77;
  }

  v79 = v122;
  v80 = v123;
  if (!v77[2])
  {
    BUG();
  }

  v81 = v77[5];
  v77[4] = v119;
  v77[5] = v79;
  v81;
  v74(v96, 0);
  (v126)(v97, 0);
  v82 = v108;
  v83 = v80;
  v84 = v109;
  v85 = v110;
  (*(v110 + 16))(v108, v83, v109);
  (*(v107 + 104))(v82, v120, v106);
  Model.kind.setter(v82);
  (*(v85 + 8))(v123, v84);
  v86 = *(v115 + 8);
  v87 = v116;
  v86(v118, v116);
  v86(v117, v87);
  (*(v111 + 8))(v113, v112);
}

uint64_t static MLSoundClassifier.VGGishFeatureExtractor.buildCoreMLSpec(outputName:)(uint64_t a1, uint64_t a2)
{
  v42 = v3;
  v4 = v2;
  v34 = type metadata accessor for ModelKind(0);
  v33 = *(v34 - 8);
  v5 = *(v33 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v35 = &v33;
  v41 = type metadata accessor for Model(0);
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v38 = &v33;
  v11 = alloca(v8);
  v12 = alloca(v8);
  Model.init()();
  Model.specificationVersion.setter(4);

  v40 = a1;
  Model.predictedFeatureName.setter(a1, a2);
  v37 = v4;
  Model.modelDescription.setter(0xD00000000000002CLL, ("in retrieved features." + 0x8000000000000000));
  v13 = v42;
  static MLSoundClassifier.VGGishFeatureExtractor.buildSoundAnalysisPreprocessingSpec()();
  if (v13)
  {
    return (*(v39 + 8))(v37, v41);
  }

  v14 = v39;
  static MLSoundClassifier.VGGishFeatureExtractor.buildFeatureEmbeddingNeuralNetworkSpec(outputName:)(v40, a2);
  v42 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
  v40 = *(v14 + 72);
  v17 = *(v14 + 80);
  v18 = (v17 + 32) & ~*(v14 + 80);
  v19 = swift_allocObject(v16, v18 + 2 * v40, v17 | 7);
  v36 = &v33;
  v20 = v19;
  *(v19 + 16) = 2;
  *(v19 + 24) = 4;
  v21 = v19 + v18;
  v22 = *(v14 + 16);
  v23 = v41;
  v22(v21, &v33, v41);
  v24 = v40 + v21;
  v25 = v38;
  v22(v24, v38, v23);
  v26 = v35;
  PipelineClassifierConfiguration.init(models:names:)(v20, _swiftEmptyArrayStorage);
  (*(v33 + 104))(v26, enum case for ModelKind.pipelineClassifier(_:), v34);
  Model.kind.setter(v26);
  v27 = v36;
  v28 = Model.inputs.getter();
  Model.inputs.setter(v28);
  v29 = Model.outputs.getter();
  Model.outputs.setter(v29);
  v30 = *(v39 + 8);
  v31 = v25;
  v32 = v41;
  v30(v31, v41);
  return (v30)(v27, v32);
}

uint64_t *initializeBufferWithCopyOfBuffer for MLLinearRegressor.PersistentParameters(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for DataFrame(0);
    v18 = *(*(v6 - 8) + 16);
    v18(a1, a2, v6);
    v7 = a3[5];
    __dst = a1 + v7;
    v8 = a2 + v7;
    if (__swift_getEnumTagSinglePayload(v8, 1, v6))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(__dst, v8, *(*(v9 - 8) + 64));
    }

    else
    {
      v18(__dst, v8, v6);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
    }

    v11 = a3[6];
    *(a1 + v11) = *(a2 + v11);
    *(a1 + v11 + 8) = *(a2 + v11 + 8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v12 = a3[8];
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(a2 + v12 + 24);

    if (v15)
    {
      *(v13 + 3) = v15;
      (**(v15 - 8))(v13, v14, v15);
    }

    else
    {
      v16 = *v14;
      *(v13 + 1) = *(v14 + 1);
      *v13 = v16;
    }

    *(v13 + 2) = *(v14 + 2);
    *(v13 + 3) = *(v14 + 3);
    *(v13 + 8) = *(v14 + 8);
    v13[72] = v14[72];
  }

  return v3;
}

uint64_t destroy for MLLinearRegressor.PersistentParameters(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for DataFrame(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v4 = a1 + a2[5];
  if (!__swift_getEnumTagSinglePayload(v4, 1, v2))
  {
    v3(v4, v2);
  }

  *(a1 + a2[6] + 8);
  *(a1 + a2[7]);
  result = a2[8];
  if (*(a1 + result + 24))
  {
    return __swift_destroy_boxed_opaque_existential_1Tm((result + a1));
  }

  return result;
}

char *initializeWithCopy for MLLinearRegressor.PersistentParameters(char *a1, char *a2, int *a3)
{
  v4 = type metadata accessor for DataFrame(0);
  v15 = *(*(v4 - 8) + 16);
  v15(a1, a2, v4);
  v5 = a3[5];
  __dst = &a1[v5];
  v6 = &a2[v5];
  if (__swift_getEnumTagSinglePayload(v6, 1, v4))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v6, *(*(v7 - 8) + 64));
  }

  else
  {
    v15(__dst, v6, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  }

  v8 = a3[6];
  *&a1[v8] = *&a2[v8];
  *&a1[v8 + 8] = *&a2[v8 + 8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v9 = a3[8];
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *&a2[v9 + 24];

  if (v12)
  {
    *(v10 + 3) = v12;
    (**(v12 - 8))(v10, v11, v12);
  }

  else
  {
    v13 = *v11;
    *(v10 + 1) = *(v11 + 1);
    *v10 = v13;
  }

  *(v10 + 2) = *(v11 + 2);
  *(v10 + 3) = *(v11 + 3);
  *(v10 + 8) = *(v11 + 8);
  v10[72] = v11[72];
  return a1;
}

uint64_t assignWithCopy for MLLinearRegressor.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  v25 = *(v5 - 8);
  v24 = *(v25 + 24);
  v24(a1, a2, v5);
  v23 = a3;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v7, 1, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (a3)
  {
    if (EnumTagSinglePayload)
    {
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
LABEL_6:
      memcpy(v7, v8, v11);
      goto LABEL_9;
    }

    (*(v25 + 16))(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  else
  {
    if (EnumTagSinglePayload)
    {
      (*(v25 + 8))(v7, v5, v10, v24);
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      goto LABEL_6;
    }

    v24(v7, v8, v5);
  }

LABEL_9:
  v12 = v23[6];
  *(a1 + v12) = *(a2 + v12);
  v13 = *(a1 + v12 + 8);
  *(a1 + v12 + 8) = *(a2 + v12 + 8);

  v13;
  v14 = v23[7];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  v15;
  v16 = v23[8];
  v17 = a1 + v16;
  v18 = (a2 + v16);
  v19 = *(a2 + v16 + 24);
  if (!*(a1 + v16 + 24))
  {
    if (v19)
    {
      *(v17 + 24) = v19;
      (**(v19 - 8))(v17, v18);
      goto LABEL_16;
    }

LABEL_15:
    v21 = *v18;
    *(v17 + 16) = v18[1];
    *v17 = v21;
    goto LABEL_16;
  }

  v20 = (a1 + v16);
  if (!v19)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    goto LABEL_15;
  }

  __swift_assign_boxed_opaque_existential_0(v20, (a2 + v16));
LABEL_16:
  *(v17 + 32) = *(v18 + 4);
  *(v17 + 40) = *(v18 + 5);
  *(v17 + 48) = *(v18 + 6);
  *(v17 + 56) = *(v18 + 7);
  *(v17 + 64) = *(v18 + 8);
  *(v17 + 72) = *(v18 + 72);
  return a1;
}

uint64_t assignWithTake for MLLinearRegressor.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  v22 = *(v5 - 8);
  v21 = *(v22 + 40);
  v21(a1, a2, v5);
  v20 = a3;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v7, 1, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (a3)
  {
    if (EnumTagSinglePayload)
    {
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
LABEL_6:
      memcpy(v7, v8, v11);
      goto LABEL_9;
    }

    (*(v22 + 32))(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  else
  {
    if (EnumTagSinglePayload)
    {
      (*(v22 + 8))(v7, v5, v10, v21);
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      goto LABEL_6;
    }

    v21(v7, v8, v5);
  }

LABEL_9:
  v12 = v20[6];
  *(a1 + v12) = *(a2 + v12);
  v13 = *(a1 + v12 + 8);
  *(a1 + v12 + 8) = *(a2 + v12 + 8);
  v13;
  v14 = v20[7];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);
  v15;
  v16 = v20[8];
  v17 = (a1 + v16);
  if (*(a1 + v16 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v16));
  }

  v18 = *(a2 + v16);
  v17[1] = *(a2 + v16 + 16);
  *v17 = v18;
  *(a1 + v16 + 32) = *(a2 + v16 + 32);
  *(a1 + v16 + 40) = *(a2 + v16 + 40);
  *(a1 + v16 + 56) = *(a2 + v16 + 56);
  *(a1 + v16 + 72) = *(a2 + v16 + 72);
  return a1;
}

uint64_t sub_1101B5(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for DataFrame(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v4 = *(a3 + 20) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + *(a3 + 24) + 8) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 24) + 8) >> 1) + 1;
  }

  return result;
}

uint64_t sub_110249(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for DataFrame(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v6 = *(a4 + 20) + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  result = *(a4 + 24);
  *(a1 + result + 8) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata accessor for MLLinearRegressor.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLinearRegressor.PersistentParameters;
  if (!type metadata singleton initialization cache for MLLinearRegressor.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLinearRegressor.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLLinearRegressor.PersistentParameters(uint64_t a1)
{
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for DataFrame?(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = &unk_341788;
      v4[3] = &value witness table for Builtin.BridgeObject + 64;
      v4[4] = &unk_3417A0;
      swift_initStructMetadata(a1, 256, 5, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for DataFrame?(uint64_t a1)
{
  result = lazy cache variable for type metadata for DataFrame?;
  if (!lazy cache variable for type metadata for DataFrame?)
  {
    v2 = type metadata accessor for DataFrame(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for DataFrame? = result;
    }
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML17MLLinearRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML17ij13V20Persistentl48V16sessionDirectoryAE10Foundation3URLV_tKcfcAC05k5F0V14md3O07c5M00M5E17VcAMmcfu_AmPcfu0_AOXMtTf1ncn_n(uint64_t a1)
{
  v19 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of DataFrame?(a1, &v16);
  if (__swift_getEnumTagSinglePayload(&v16, 1, v2) == 1)
  {
    v9 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
    v10 = v19;
    v11 = 1;
    v12 = v9;
  }

  else
  {
    v13 = v17;
    (*(v17 + 32))(&v16, &v16, v2);
    v14 = v19;
    (*(v13 + 16))(v19, &v16, v2);
    v18 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v14, v18, 2);
    (*(v13 + 8))(&v16, v2);
    v10 = v14;
    v11 = 0;
    v12 = v18;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

NSURL *MLLinearRegressor.PersistentParameters.init(sessionDirectory:)(uint64_t *a1)
{
  v151 = v2;
  v4 = v1;
  v129 = type metadata accessor for CSVType(0);
  v117 = *(v129 - 8);
  v5 = *(v117 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v128 = &v115;
  v8 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v116 = &v115;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v119 = &v115;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v139 = &v115;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v132 = &v115;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v148 = &v115;
  v21 = type metadata accessor for DataFrame(0);
  v131 = *(v21 - 8);
  v22 = *(v131 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v130 = &v115;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v138 = &v115;
  v141 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v27 = *(*(v141 - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v134 = &v115;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v115 = &v115;
  v32 = alloca(v27);
  v33 = alloca(v27);
  v143 = &v115;
  v156 = type metadata accessor for URL(0);
  v150 = *(v156 - 8);
  v34 = *(v150 + 8);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v127 = &v115;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v133 = &v115;
  v39 = alloca(v34);
  v40 = alloca(v34);
  v118 = &v115;
  v41 = alloca(v34);
  v42 = alloca(v34);
  v135 = &v115;
  v43 = alloca(v34);
  v44 = alloca(v34);
  v142 = &v115;
  v45 = alloca(v34);
  v46 = alloca(v34);
  v137 = &v115;
  v47 = alloca(v34);
  v48 = alloca(v34);
  v136 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v49 = *(v136 + 20);
  v147 = v4;
  v126 = v4 + v49;
  v140 = v21;
  __swift_storeEnumTagSinglePayload(v4 + v49, 1, 1, v21);
  URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
  v50 = v151;
  v51 = Data.init(contentsOf:options:)(&v115, 0);
  v151 = v50;
  if (v50)
  {
    v53 = *(v150 + 1);
    v54 = v156;
    v53(a1, v156);
    v53(&v115, v54);
LABEL_37:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v126, &demangling cache variable for type metadata for DataFrame?);
    return __stack_chk_guard;
  }

  v55 = v51;
  v56 = v52;
  v149 = a1;
  v57 = v156;
  v144 = *(v150 + 1);
  v144(&v115, v156);
  v58 = objc_opt_self(NSPropertyListSerialization);
  v59.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v146 = v55;
  isa = v59.super.isa;
  v145 = v56;
  v158[0] = 0;
  v61 = [v58 propertyListWithData:v59.super.isa options:0 format:0 error:v158];
  v62 = v61;

  v63 = v158[0];
  if (!v62)
  {
    v89 = v63;
    _convertNSErrorToError(_:)(v63);

    swift_willThrow();
    outlined consume of Data._Representation(v146, v145);
    v144(v149, v57);
    goto LABEL_37;
  }

  _bridgeAnyObjectToAny(_:)(v62);
  swift_unknownObjectRelease(v62);
  outlined init with copy of Any(v160, v158);
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, v64, 6))
  {
    v90 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v90, 0, 0);
    *v91 = 0xD000000000000037;
    *(v91 + 8) = "parameters.plist" + 0x8000000000000000;
    *(v91 + 16) = 0;
    *(v91 + 32) = 0;
    *(v91 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v146, v145);
    v92 = v149;
    v93 = v156;
LABEL_36:
    v144(v92, v93);
    __swift_destroy_boxed_opaque_existential_1Tm(v160);
    goto LABEL_37;
  }

  v65 = v157[0];
  specialized Dictionary.subscript.getter(0x746567726174, 0xE600000000000000, v157[0]);
  if (!v159)
  {
    v65;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v158, &demangling cache variable for type metadata for Any?);
LABEL_26:
    v67 = v156;
LABEL_35:
    v96 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v96, 0, 0);
    *v97 = 0xD000000000000034;
    *(v97 + 8) = "ad training parameters." + 0x8000000000000000;
    *(v97 + 16) = 0;
    *(v97 + 32) = 0;
    *(v97 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v146, v145);
    v92 = v149;
    v93 = v67;
    goto LABEL_36;
  }

  v155 = v65;
  v66 = swift_dynamicCast(v157, v158, &type metadata for Any + 8, &type metadata for String, 6);
  v67 = v156;
  if (!v66)
  {
    v94 = v155;
LABEL_28:
    v94;
    goto LABEL_35;
  }

  v120 = v157[0];
  v68 = v157[1];
  v69 = v155;
  specialized Dictionary.subscript.getter(0xD000000000000010, ("training parameters." + 0x8000000000000000), v155);
  if (!v159)
  {
    v95 = v68;
LABEL_31:
    v95;
    v69;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v158, &demangling cache variable for type metadata for Any?);
LABEL_34:
    v67 = v156;
    goto LABEL_35;
  }

  v153 = v68;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, v70, 6))
  {
LABEL_33:
    v153;
    v155;
    goto LABEL_34;
  }

  v71 = v157[0];
  v69 = v155;
  specialized Dictionary.subscript.getter(0x617265744978616DLL, 0xED0000736E6F6974, v155);
  if (!v159)
  {
    v71;
    v95 = v153;
    goto LABEL_31;
  }

  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, &type metadata for Int, 6))
  {
    v71;
    goto LABEL_33;
  }

  v152 = v71;
  v121 = v157[0];
  v72 = v155;
  specialized Dictionary.subscript.getter(0x746C616E6550316CLL, 0xE900000000000079, v155);
  v67 = v156;
  if (!v159)
  {
    goto LABEL_39;
  }

  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, &type metadata for Double, 6))
  {
    v152;
    v153;
    v72;
    goto LABEL_35;
  }

  v122 = v157[0];
  specialized Dictionary.subscript.getter(0x746C616E6550326CLL, 0xE900000000000079, v72);
  if (!v159)
  {
LABEL_39:
    v152;
    v153;
    v72;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v158, &demangling cache variable for type metadata for Any?);
    goto LABEL_35;
  }

  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, &type metadata for Double, 6))
  {
    goto LABEL_41;
  }

  v123 = v157[0];
  specialized Dictionary.subscript.getter(0x657A695370657473, 0xE800000000000000, v155);
  if (!v159)
  {
LABEL_42:
    v152;
    v153;
    v155;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v158, &demangling cache variable for type metadata for Any?);
    goto LABEL_35;
  }

  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, &type metadata for Double, 6))
  {
LABEL_41:
    v152;
    v153;
    v94 = v155;
    goto LABEL_28;
  }

  v124 = v157[0];
  specialized Dictionary.subscript.getter(0xD000000000000014, ("oating-point numbers." + 0x8000000000000000), v155);
  if (!v159)
  {
    goto LABEL_42;
  }

  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, &type metadata for Double, 6))
  {
    v152;
    v153;
    v99 = v155;
LABEL_46:
    v99;
    goto LABEL_26;
  }

  v125 = v157[0];
  v73 = v155;
  specialized Dictionary.subscript.getter(0xD000000000000010, ("convergenceThreshold" + 0x8000000000000000), v155);
  v73;
  if (!v159)
  {
    v152;
    v153;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v158, &demangling cache variable for type metadata for Any?);
    goto LABEL_26;
  }

  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, &type metadata for Bool, 6))
  {
    v152;
    v99 = v153;
    goto LABEL_46;
  }

  v154 = v157[0];
  v74 = v136;
  v75 = *(v136 + 24);
  v76 = v147;
  *(v147 + v75) = v120;
  *(v76 + v75 + 8) = v153;
  *(v76 + *(v74 + 28)) = v152;
  v77 = v143;
  *v143 = 0;
  *(v77 + 16) = 256;
  swift_storeEnumTagMultiPayload(v77, v141, 0);
  v78 = *(v74 + 32);
  v155 = v76 + v78;
  *(v76 + v78 + 16) = 0;
  *(v76 + v78) = 0;
  *(v76 + v78 + 32) = 10;
  *(v76 + v78 + 40) = _mm_loadh_ps(&qword_33FD10);
  *(v76 + v78 + 56) = xmmword_33FD20;
  *(v76 + v78 + 72) = 1;
  v79 = v115;
  outlined init with copy of MLLinearRegressor.ModelParameters.ValidationData(v77, v115);
  v159 = v141;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v158);
  outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(v79, boxed_opaque_existential_0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v158, v155, &demangling cache variable for type metadata for Any?);
  outlined destroy of MLLinearRegressor.ModelParameters.ValidationData(v77);
  *(v76 + v78 + 32) = v121;
  *(v76 + v78 + 40) = v122;
  *(v76 + v78 + 48) = v123;
  *(v76 + v78 + 56) = v124;
  *(v76 + v78 + 64) = v125;
  *(v76 + v78 + 72) = v154;
  v81 = v137;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
  v82 = v135;
  v150 = *(v150 + 2);
  v150(v135, v81, v156);
  v83 = v151;
  DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v82, 0, 0, 0, 1);
  v143 = v83;
  if (v83)
  {
    v150(v127, v137, v156);
    v151 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(_swiftEmptyArrayStorage);
    v148 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v84 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v85 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v86 = *(v117 + 104);
    v87 = v128;
    LODWORD(v135) = enum case for CSVType.double(_:);
    v138 = v86;
    (v86)(v128, enum case for CSVType.double(_:), v129);
    v88 = v116;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v148, v84, v85, v87, 1, 1, 0, 44, 0xE100000000000000, 92);
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v127, 0, 0, 0, 1, v151, v88);
    v151 = 0;
    (*(v131 + 32))(v147, v130, v140);
    v150(v133, v142, v156);
    v150 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(_swiftEmptyArrayStorage);
    v147 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v136 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v103 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v104 = v128;
    (v138)(v128, v135, v129);
    v105 = 1;
    v106 = v119;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v147, v136, v103, v104, 1, 1, 0, 44, 0xE100000000000000, 92);
    v107 = v151;
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v133, 0, 0, 0, 1, v150, v106);
    if (v107)
    {
      v107;
    }

    else
    {
      v105 = 0;
    }

    v143;
    v108 = v132;
    __swift_storeEnumTagSinglePayload(v132, v105, 1, v140);
    v148 = v108;
  }

  else
  {
    (*(v131 + 32))(v147, v138, v140);
    v100 = v118;
    v150(v118, v142, v156);
    v101 = 1;
    v102 = v143;
    DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v100, 0, 0, 0, 1);
    if (v102)
    {
      v102;
    }

    else
    {
      v101 = 0;
    }

    __swift_storeEnumTagSinglePayload(v148, v101, 1, v140);
  }

  v109 = v126;
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v148, v126, &demangling cache variable for type metadata for DataFrame?);
  v110 = v139;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML17MLLinearRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML17ij13V20Persistentl48V16sessionDirectoryAE10Foundation3URLV_tKcfcAC05k5F0V14md3O07c5M00M5E17VcAMmcfu_AmPcfu0_AOXMtTf1ncn_n(v109);
  if (__swift_getEnumTagSinglePayload(v110, 1, v141) == 1)
  {
    v111 = v141;
    swift_storeEnumTagMultiPayload(v134, v141, 3);
    if (__swift_getEnumTagSinglePayload(v139, 1, v111) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v139, &demangling cache variable for type metadata for MLLinearRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(v139, v134);
  }

  v159 = v141;
  v112 = __swift_allocate_boxed_opaque_existential_0(v158);
  outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(v134, v112);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v158, v155, &demangling cache variable for type metadata for Any?);
  outlined consume of Data._Representation(v146, v145);
  v113 = v156;
  v114 = v144;
  v144(v149, v156);
  v114(v142, v113);
  v114(v137, v113);
  __swift_destroy_boxed_opaque_existential_1Tm(v160);
  return __stack_chk_guard;
}

NSURL *MLLinearRegressor.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v64 = v1;
  v55 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v61 = &v50;
  v59 = type metadata accessor for CSVWritingOptions(0);
  v56 = *(v59 - 8);
  v6 = *(v56 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v54 = &v50;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v51 = &v50;
  v63 = type metadata accessor for URL(0);
  v65 = *(v63 - 8);
  v11 = *(v65 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v57 = &v50;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v52 = &v50;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v58 = &v50;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v18, v67);
  *(inited + 16) = 8;
  *(inited + 24) = 16;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  v20 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v21 = v20[6];
  v22 = *(v2 + v21);
  v62 = *(v2 + v21 + 8);
  v23 = v62;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v22;
  *(inited + 56) = v23;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = "training parameters." + 0x8000000000000000;
  v24 = *(v2 + v20[7]);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  *(inited + 96) = v24;
  strcpy((inited + 128), "maxIterations");
  *(inited + 142) = -4864;
  v53 = v20;
  v25 = v20[8];
  v26 = *(v2 + v25 + 32);
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v26;
  *(inited + 176) = 0x746C616E6550316CLL;
  *(inited + 184) = 0xE900000000000079;
  v27 = *(v2 + v25 + 40);
  *(inited + 216) = &type metadata for Double;
  *(inited + 192) = v27;
  *(inited + 224) = 0x746C616E6550326CLL;
  *(inited + 232) = 0xE900000000000079;
  v28 = *(v2 + v25 + 48);
  *(inited + 264) = &type metadata for Double;
  *(inited + 240) = v28;
  *(inited + 272) = 0x657A695370657473;
  *(inited + 280) = 0xE800000000000000;
  v29 = *(v2 + v25 + 56);
  *(inited + 312) = &type metadata for Double;
  *(inited + 288) = v29;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = "oating-point numbers." + 0x8000000000000000;
  v30 = *(v2 + v25 + 64);
  *(inited + 360) = &type metadata for Double;
  *(inited + 336) = v30;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = "convergenceThreshold" + 0x8000000000000000;
  v50 = v2;
  LOBYTE(v25) = *(v2 + v25 + 72);
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = v25;

  LOBYTE(inited) = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v31 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  inited;
  v66 = 0;
  v33 = [v31 dataWithPropertyList:isa format:200 options:0 error:&v66];
  v34 = v33;

  v35 = v66;
  if (v34)
  {
    v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v34);
    v37 = v36;

    v38 = v58;
    URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
    v39 = v62;
    v60 = v37;
    v40 = v64;
    Data.write(to:options:)(v38, 0, v62, v37);
    if (v40)
    {
      (*(v65 + 8))(v38, v63);
      outlined consume of Data._Representation(v39, v60);
    }

    else
    {
      v64 = *(v65 + 8);
      v64(v38, v63);
      v42 = v52;
      URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
      v43 = v51;
      CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
      v65 = type metadata accessor for DataFrame(0);
      v44 = v50;
      DataFrameProtocol.writeCSV(to:options:)(v42, v43, v65, &protocol witness table for DataFrame);
      v58 = *(v56 + 8);
      v58(v43, v59);
      v64(v42, v63);
      v45 = v53[5] + v44;
      v46 = v61;
      outlined init with copy of DataFrame?(v45, v61);
      if (__swift_getEnumTagSinglePayload(v46, 1, v65) == 1)
      {
        outlined consume of Data._Representation(v62, v60);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v46, &demangling cache variable for type metadata for DataFrame?);
      }

      else
      {
        v48 = v57;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
        v49 = v54;
        CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
        DataFrameProtocol.writeCSV(to:options:)(v48, v49, v65, &protocol witness table for DataFrame);
        outlined consume of Data._Representation(v62, v60);
        v58(v49, v59);
        v64(v57, v63);
        (*(*(v65 - 8) + 8))(v61);
      }
    }
  }

  else
  {
    v41 = v35;
    _convertNSErrorToError(_:)(v35);

    swift_willThrow();
  }

  return __stack_chk_guard;
}

uint64_t outlined init with copy of MLLinearRegressor.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with copy of DataFrame?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

double MLRegressorMetrics.rootMeanSquaredError.getter()
{
  if (*(v0 + 16))
  {
    return -1.0;
  }

  else
  {
    return *(v0 + 8);
  }
}

uint64_t MLRegressorMetrics.init(maximumError:rootMeanSquaredError:)(double a1, double a2)
{
  *result = a1;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

uint64_t MLRegressorMetrics.description.getter()
{
  if (*(v0 + 16))
  {
    return 0xD000000000000038;
  }

  v2 = *v0;
  if (*v0 < 0.0 || *(v0 + 8) < 0.0)
  {
    return 0xD000000000000038;
  }

  v13 = *(v0 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v4 = swift_allocObject(v3, 72, 7);
  *(v4 + 2) = 1;
  *(v4 + 3) = 2;
  *(v4 + 7) = &type metadata for Double;
  *(v4 + 8) = &protocol witness table for Double;
  v4[4] = v2;
  v14 = String.init(format:_:)(0xD000000000000010, ("root mean squared error." + 0x8000000000000000), v4);
  v6 = v5;
  v7 = swift_allocObject(v3, 72, 7);
  v7[2] = 1;
  v7[3] = 2;
  v7[7] = &type metadata for Double;
  v7[8] = &protocol witness table for Double;
  v7[4] = v13;
  v8 = String.init(format:_:)(0xD00000000000001ELL, ("Max error: %.2f\n" + 0x8000000000000000), v7);
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);
  v6;
  v10;
  return v14;
}

uint64_t MLRegressorMetrics.error.getter()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v1 = *v0;
  swift_errorRetain(*v0);
  return v1;
}

double MLRegressorMetrics.maximumError.getter()
{
  if (v0[16])
  {
    return -1.0;
  }

  else
  {
    return *v0;
  }
}

uint64_t MLRegressorMetrics.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3)
  {
    swift_errorRetain(*&v1);
  }

  else if (v1 >= 0.0 && v2 >= 0.0)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v5 = swift_allocObject(v15, 72, 7);
    *(v5 + 16) = 1;
    *(v5 + 24) = 2;
    *(v5 + 56) = &type metadata for Double;
    *(v5 + 64) = &protocol witness table for Double;
    *(v5 + 32) = v1;
    v14 = String.init(format:_:)(0xD000000000000010, ("root mean squared error." + 0x8000000000000000), v5);
    v7 = v6;
    v8 = swift_allocObject(v15, 72, 7);
    *(v8 + 16) = 1;
    *(v8 + 24) = 2;
    *(v8 + 56) = &type metadata for Double;
    *(v8 + 64) = &protocol witness table for Double;
    *(v8 + 32) = v2;
    v9 = String.init(format:_:)(0xD00000000000001ELL, ("Max error: %.2f\n" + 0x8000000000000000), v8);
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);
    v7;
    v11;
    outlined consume of Result<_RegressorMetrics, Error>(*&v1, *&v2, 0);
    return v14;
  }

  outlined consume of Result<_RegressorMetrics, Error>(*&v1, *&v2, v3);
  return 0xD000000000000038;
}

uint64_t MLRegressorMetrics.playgroundDescription.getter()
{
  v10 = v0;
  v2 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(*v1, v8, v9);
  v3 = MLRegressorMetrics.description.getter();
  v5 = v4;
  outlined consume of Result<_RegressorMetrics, Error>(v2, v8, v9);
  objc_allocWithZone(NSAttributedString);
  v6 = @nonobjc NSAttributedString.init(string:attributes:)(v3, v5, 0);
  result = type metadata accessor for NSAttributedString();
  v10[3] = result;
  *v10 = v6;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLRegressorMetrics(uint64_t a1, uint64_t *a2)
{
  return initializeBufferWithCopyOfBuffer for MLRegressorMetrics(a1, a2);
}

{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(*a2, v3, v4);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithCopy for MLRegressorMetrics(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of Result<_RegressorMetrics, Error>(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for MLRegressorMetrics(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of Result<_RegressorMetrics, Error>(v4, v5, v6);
  return a1;
}

uint64_t MLRecommender.ModelParameters.init(algorithm:threshold:maxCount:nearestItems:maxSimilarityIterations:)(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  v6 = v5;
  v7 = *a1;
  v14 = *a3;
  v15 = *(a3 + 8);
  v8 = type metadata accessor for MLRecommender.ModelParameters(0);
  v9 = v6 + v8[7];
  v10 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = v8[8];
  *(v6 + v11) = 0;
  *(v6 + v11 + 8) = -1;
  *v6 = v7;
  *(v6 + 8) = a5;
  *(v6 + 16) = a2;
  outlined consume of MLDataTable?(*(v6 + v11), *(v6 + v11 + 8));
  *(v6 + v11) = v14;
  *(v6 + v11 + 8) = v15;
  result = v8[9];
  *(v6 + result) = a4;
  return result;
}

uint64_t type metadata accessor for MLRecommender.ModelParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLRecommender.ModelParameters;
  if (!type metadata singleton initialization cache for MLRecommender.ModelParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLRecommender.ModelParameters);
  }

  return result;
}

uint64_t MLRecommender.ModelParameters.init(algorithm:threshold:maxCount:nearestItemsDataFrame:maxSimilarityIterations:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v7 = *a1;
  v8 = type metadata accessor for MLRecommender.ModelParameters(0);
  v9 = v6 + v8[7];
  v10 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = v8[8];
  *(v6 + v11) = 0;
  *(v6 + v11 + 8) = -1;
  *v6 = v7;
  *(v6 + 8) = a5;
  *(v6 + 16) = a2;
  outlined assign with take of DataFrame?(a3, v9);
  result = v8[9];
  *(v6 + result) = a4;
  return result;
}

char MLRecommender.ModelParameters.algorithm.setter(char *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t MLRecommender.ModelParameters.nearestItemsDataFrame.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLRecommender.ModelParameters(0);
  return outlined init with copy of DataFrame?(v1 + *(v3 + 28), v2);
}

uint64_t MLRecommender.ModelParameters.nearestItems.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLRecommender.ModelParameters(0) + 32);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  *v2 = v4;
  *(v2 + 8) = v5;
  return outlined copy of MLDataTable?(v4, v5);
}

uint64_t MLRecommender.ModelParameters.nearestItems.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(type metadata accessor for MLRecommender.ModelParameters(0) + 32);
  result = outlined consume of MLDataTable?(*(v1 + v4), *(v1 + v4 + 8));
  *(v1 + v4) = v2;
  *(v1 + v4 + 8) = v3;
  return result;
}

uint64_t MLRecommender.ModelParameters.maxSimilarityIterations.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLRecommender.ModelParameters(0) + 36);
  *(v1 + result) = a1;
  return result;
}

Swift::Int MLRecommender.SimilarityType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type MLRecommender.SimilarityType and conformance MLRecommender.SimilarityType()
{
  result = lazy protocol witness table cache variable for type MLRecommender.SimilarityType and conformance MLRecommender.SimilarityType;
  if (!lazy protocol witness table cache variable for type MLRecommender.SimilarityType and conformance MLRecommender.SimilarityType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLRecommender.SimilarityType, &type metadata for MLRecommender.SimilarityType);
    lazy protocol witness table cache variable for type MLRecommender.SimilarityType and conformance MLRecommender.SimilarityType = result;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLRecommender.ModelParameters(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 1);
    v6 = a3[7];
    __dst = (a1 + v6);
    v7 = a2 + v6;
    v8 = type metadata accessor for DataFrame(0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(__dst, v7, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(*(v8 - 8) + 16))(__dst, v7, v8);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v8);
    }

    __dsta = a3;
    v11 = a3[8];
    v12 = a1 + v11;
    v13 = a2 + v11;
    v14 = *(a2 + v11 + 8);
    if (v14 == -1)
    {
      *(v12 + 8) = v13[8];
      *v12 = *v13;
    }

    else
    {
      v15 = *v13;
      outlined copy of Result<_DataTable, Error>(*v13, v14);
      *v12 = v15;
      *(v12 + 8) = v14 & 1;
    }

    *(a1 + __dsta[9]) = *(a2 + __dsta[9]);
  }

  return v3;
}

uint64_t destroy for MLRecommender.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 28);
  v3 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v2, 1, v3))
  {
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  result = *(a2 + 32);
  v5 = *(a1 + result + 8);
  if (v5 != -1)
  {
    return outlined consume of Result<_DataTable, Error>(*(a1 + result), v5);
  }

  return result;
}

uint64_t initializeWithCopy for MLRecommender.ModelParameters(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = a3[7];
  v4 = (a1 + v3);
  v5 = (a2 + v3);
  v6 = type metadata accessor for DataFrame(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v4, v5, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 16))(v4, v5, v6);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  }

  v8 = a3[8];
  v9 = a1 + v8;
  v10 = (a2 + v8);
  v11 = *(a2 + v8 + 8);
  if (v11 == -1)
  {
    *(v9 + 8) = *(v10 + 8);
    *v9 = *v10;
  }

  else
  {
    v12 = *v10;
    outlined copy of Result<_DataTable, Error>(*v10, v11);
    *v9 = v12;
    *(v9 + 8) = v11 & 1;
  }

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t assignWithCopy for MLRecommender.ModelParameters(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = a3[7];
  v5 = a1 + v4;
  v6 = (a2 + v4);
  v7 = type metadata accessor for DataFrame(0);
  __dst = v5;
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v5, 1, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (v5)
  {
    if (EnumTagSinglePayload)
    {
      v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v10 = __dst;
LABEL_6:
      memcpy(v10, v6, v9);
      goto LABEL_9;
    }

    (*(*(v7 - 8) + 16))(__dst, v6, v7);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v7);
  }

  else
  {
    v11 = *(v7 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v11 + 8))(__dst, v7);
      v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v10 = __dst;
      goto LABEL_6;
    }

    (*(v11 + 24))(__dst, v6, v7);
  }

LABEL_9:
  v12 = a3[8];
  v13 = a1 + v12;
  v14 = v12 + a2;
  v15 = *(v12 + a2 + 8);
  if (*(a1 + v12 + 8) == 0xFF)
  {
    if (v15 == -1)
    {
      *(v13 + 8) = *(v14 + 8);
      *v13 = *v14;
    }

    else
    {
      v19 = *v14;
      outlined copy of Result<_DataTable, Error>(v19, v15);
      *v13 = v19;
      *(v13 + 8) = v15 & 1;
    }
  }

  else if (v15 == -1)
  {
    outlined destroy of MLDataTable(a1 + v12);
    *v13 = *v14;
    *(v13 + 8) = *(v14 + 8);
  }

  else
  {
    v16 = *v14;
    outlined copy of Result<_DataTable, Error>(v16, v15);
    v17 = *v13;
    *v13 = v16;
    v18 = *(v13 + 8);
    *(v13 + 8) = v15 & 1;
    outlined consume of Result<_DataTable, Error>(v17, v18);
  }

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t initializeWithTake for MLRecommender.ModelParameters(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = a3[7];
  __dst = (a1 + v4);
  v5 = (a2 + v4);
  v6 = type metadata accessor for DataFrame(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v5, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(__dst, v5, v6);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
  }

  v8 = a3[8];
  *(a1 + v8 + 8) = *(a2 + v8 + 8);
  *(a1 + v8) = *(a2 + v8);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t assignWithTake for MLRecommender.ModelParameters(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = a3[7];
  v5 = a1 + v4;
  v6 = (a2 + v4);
  v7 = type metadata accessor for DataFrame(0);
  __dst = v5;
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v5, 1, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (v5)
  {
    if (EnumTagSinglePayload)
    {
      v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v10 = __dst;
LABEL_6:
      memcpy(v10, v6, v9);
      goto LABEL_9;
    }

    (*(*(v7 - 8) + 32))(__dst, v6, v7);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v7);
  }

  else
  {
    v11 = *(v7 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v11 + 8))(__dst, v7);
      v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v10 = __dst;
      goto LABEL_6;
    }

    (*(v11 + 40))(__dst, v6, v7);
  }

LABEL_9:
  v12 = a3[8];
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(a1 + v12 + 8);
  if (v15 == -1)
  {
    *(v13 + 8) = *(v14 + 8);
    *v13 = *v14;
  }

  else
  {
    v16 = *(a2 + v12 + 8);
    if (v16 == -1)
    {
      outlined destroy of MLDataTable(v13);
      *v13 = *v14;
      *(v13 + 8) = *(v14 + 8);
    }

    else
    {
      v17 = *v13;
      *v13 = *v14;
      *(v13 + 8) = v16 & 1;
      outlined consume of Result<_DataTable, Error>(v17, v15);
    }
  }

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t sub_112E63(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v3 = *a1;
    result = 0;
    if (v3 >= 3)
    {
      return v3 - 2;
    }
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    return __swift_getEnumTagSinglePayload(&a1[*(a3 + 28)], a2, v6);
  }

  return result;
}

uint64_t sub_112ED2(_BYTE *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 253)
  {
    *a1 = a2 + 2;
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    return __swift_storeEnumTagSinglePayload(&a1[*(a4 + 28)], a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLRecommender.ModelParameters(uint64_t a1)
{
  v3[0] = &unk_341920;
  v3[1] = &value witness table for Builtin.Int64 + 64;
  v3[2] = &value witness table for Builtin.Int64 + 64;
  result = type metadata accessor for DataFrame?(319);
  if (v2 <= 0x3F)
  {
    v3[3] = *(result - 8) + 64;
    v3[4] = &unk_341938;
    v3[5] = &value witness table for Builtin.Int64 + 64;
    swift_initStructMetadata(a1, 256, 6, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLRecommender.ModelAlgorithmType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xFE)
    {
      goto LABEL_13;
    }

    v2 = a2 + 2;
    v3 = 1;
    if (v2 >= 0xFF00)
    {
      v3 = 2 * (v2 >= 0xFFFF00) + 2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = v3 == 2 ? *(a1 + 1) : a1[1];
    }

    if (v4)
    {
      v5 = *a1 + (v4 << 8) - 3;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 3;
      v8 = v6 < 3;
      v5 = -1;
      if (!v8)
      {
        v5 = v7;
      }
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

{
  return getEnumTagSinglePayload for MLRecommender.SimilarityType(a1, a2);
}

uint64_t storeEnumTagSinglePayload for MLRecommender.ModelAlgorithmType(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFE)
  {
    v4 = a3 + 2;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFD)
  {
    v5 = a2 - 254;
    v6 = (v5 >> 8) + 1;
    *a1 = v5;
    result = result;
    switch(result)
    {
      case 0:
        return result;
      case 1:
        a1[1] = v6;
        break;
      case 2:
        *(a1 + 1) = v6;
        break;
      case 3:
LABEL_16:
        BUG();
      case 4:
        *(a1 + 1) = v6;
        break;
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 0:
        goto LABEL_11;
      case 1:
        a1[1] = 0;
        goto LABEL_11;
      case 2:
        *(a1 + 1) = 0;
        goto LABEL_11;
      case 3:
        goto LABEL_16;
      case 4:
        *(a1 + 1) = 0;
LABEL_11:
        if (a2)
        {
          *a1 = a2 + 2;
        }

        break;
    }
  }

  return result;
}

{
  return storeEnumTagSinglePayload for MLRecommender.SimilarityType(a1, a2, a3);
}

uint64_t LabelEncoder<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  v19 = a4;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  dispatch thunk of Encoder.singleValueContainer()(v6, v7);
  v17 = a2;
  v8 = v14;
  v9 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  v10 = type metadata accessor for Array(0, v19);
  v16 = v18;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v10);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)(&v17, v10, WitnessTable, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t LabelEncoder<>.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = v5;
  v22 = a5;
  v21 = a4;
  v23 = a3;
  v25 = a2;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  dispatch thunk of Decoder.singleValueContainer()(v6, v7);
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v26 = a1;
    v8 = v17;
    v24 = v18;
    __swift_project_boxed_opaque_existential_0Tm(v16, v17);
    v9 = type metadata accessor for Array(0, v25);
    v19 = v21;
    WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v9);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)(v9, v9, WitnessTable, v8, v24);
    v12 = swift_getWitnessTable(&protocol conformance descriptor for [A], v9);
    v13 = v25;
    v14 = v22;
    v15 = Set.init<A>(_:)(v20, v25, v9, v22, v12);
    v6 = SortedSet.init(_:)(v15, v13, v23, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  return v6;
}

uint64_t protocol witness for Decodable.init(from:) in conformance <> LabelEncoder<A>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  result = LabelEncoder<>.init(from:)(a1, a2[2], a2[3], *(a3 - 8), a2[4]);
  if (!v4)
  {
    *v5 = result;
    v5[1] = v7;
  }

  return result;
}

unint64_t MLSoundClassifier.ModelParameters.ClassifierType.description.getter()
{
  result = 0xD000000000000015;
  if (!*v0)
  {
    return 0xD000000000000012;
  }

  return result;
}

BOOL static MLSoundClassifier.ModelParameters.ClassifierType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v2, v3);
  }

  else
  {
    if (v3)
    {
      return 0;
    }

    swift_bridgeObjectRelease_n(0, 2);
    return 1;
  }
}

void MLSoundClassifier.ModelParameters.ClassifierType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    Hasher._combine(_:)(1uLL);
    specialized Array<A>.hash(into:)(a1, v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int MLSoundClassifier.ModelParameters.ClassifierType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    specialized Array<A>.hash(into:)(v3, v1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLSoundClassifier.ModelParameters.ClassifierType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)(a1);
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    specialized Array<A>.hash(into:)(v4, v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = *(a2 + 8 * i + 32);
      Hasher._combine(_:)(v4);
    }
  }
}

uint64_t lazy protocol witness table accessor for type MLSoundClassifier.ModelParameters.ClassifierType and conformance MLSoundClassifier.ModelParameters.ClassifierType()
{
  result = lazy protocol witness table cache variable for type MLSoundClassifier.ModelParameters.ClassifierType and conformance MLSoundClassifier.ModelParameters.ClassifierType;
  if (!lazy protocol witness table cache variable for type MLSoundClassifier.ModelParameters.ClassifierType and conformance MLSoundClassifier.ModelParameters.ClassifierType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLSoundClassifier.ModelParameters.ClassifierType, &type metadata for MLSoundClassifier.ModelParameters.ClassifierType);
    lazy protocol witness table cache variable for type MLSoundClassifier.ModelParameters.ClassifierType and conformance MLSoundClassifier.ModelParameters.ClassifierType = result;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLSoundClassifier.ModelParameters.ClassifierType(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for MLSoundClassifier.ModelParameters.ClassifierType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;

  v2;
  return a1;
}

uint64_t *assignWithTake for MLSoundClassifier.ModelParameters.ClassifierType(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  v3;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLSoundClassifier.ModelParameters.ClassifierType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  result = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : (*a1 >> 1);
  if ((result + 1) < 2)
  {
    return 0;
  }

  return result;
}

void storeEnumTagSinglePayload for MLSoundClassifier.ModelParameters.ClassifierType(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 8) = 0;
    }

    if (a2)
    {
      *a1 = 2 * a2;
    }
  }
}

uint64_t getEnumTag for MLSoundClassifier.ModelParameters.ClassifierType(void *a1)
{
  result = 0;
  if ((*a1 & 0xFFFFFFFF00000001) == 0)
  {
    return (*a1 >> 1) + 1;
  }

  return result;
}

void destructiveInjectEnumTag for MLSoundClassifier.ModelParameters.ClassifierType(uint64_t *a1, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v2 = 2 * (a2 - 1);
  }

  *a1 = v2;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v18 = type metadata accessor for FeatureDescription(0);
  v19 = *(v18 - 8);
  v2 = *(v19 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v22 = v1;
  v23 = _swiftEmptyArrayStorage;
  v20 = v5;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v23;
  v7 = (a1 + 56);
  v21 = &v14;
  do
  {
    v16 = v7;
    v15 = v6;
    v17 = *(v7 - 3);
    v8 = *(v7 - 2);
    v9 = *(v7 - 1);
    v10 = *v7;

    outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v9, v10);
    ColumnDescriptor.featureDescription.getter(v17, v8, v9, v10);
    v11 = v8;
    v6 = v15;
    v11;
    outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v9, v10);
    v23 = v6;
    v12 = v6[2];
    if (v6[3] >> 1 <= v12)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v12 + 1, 1);
      v6 = v23;
    }

    v6[2] = v12 + 1;
    (*(v19 + 32))(v6 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v12, v21, v18);
    v7 = v16 + 32;
    --v20;
  }

  while (v20);
  return v6;
}

void TreeRegressorModel.export(internalMetadata:)()
{
  v109 = v1;
  v101 = v0;
  v89 = type metadata accessor for ModelKind(0);
  v88 = *(v89 - 8);
  v3 = *(v88 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v90 = &v81;
  v92 = type metadata accessor for FeatureType(0);
  v91 = *(v92 - 8);
  v6 = *(v91 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v93 = &v81;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Model?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v94 = &v81;
  v97 = type metadata accessor for Model(0);
  v98 = *(v97 - 8);
  v12 = *(v98 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v104 = &v81;
  v100 = type metadata accessor for URL.DirectoryHint(0);
  v83 = *(v100 - 8);
  v15 = *(v83 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v84 = &v81;
  v18 = type metadata accessor for UUID(0);
  v85 = *(v18 - 8);
  v19 = *(v85 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v86 = &v81;
  v102 = type metadata accessor for URL(0);
  v103 = *(v102 - 8);
  v22 = *(v103 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v87 = &v81;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v107 = &v81;
  v27 = alloca(v22);
  v28 = alloca(v22);
  v106 = &v81;
  v29 = alloca(v22);
  v30 = alloca(v22);
  v31 = v2[2];
  if (!v31)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, ("ressorModel.swift" + 0x8000000000000000), "CreateML/TreeRegressorModel+CoreML.swift", 40, 2, 11, 0);
    BUG();
  }

  v32 = v109;
  v33 = specialized FeatureVectorizer.Transformer.exportEncoders()(v2[2], v2[3], v2[4]);
  if (!v32)
  {
    v95 = v31;
    v99 = v2;
    v109 = v33;
    v105 = &v81;
    v34 = objc_opt_self(NSFileManager);
    v35 = [v34 defaultManager];
    v36 = v35;
    NSFileManager.createTemporaryModelDirectory()();
    if (v37)
    {
      v109;
    }

    else
    {

      v38 = [v34 defaultManager];
      v39 = v38;
      NSFileManager.temporaryModelDirectory.getter();

      v108 = 0;
      v40 = v86;
      UUID.init()();
      v41 = UUID.uuidString.getter();
      v43 = v42;
      v96 = v42;
      (*(v85 + 8))(v40, v18);
      v82[0] = v41;
      v82[1] = v43;
      v44 = v84;
      v45 = v100;
      v46 = v83;
      (*(v83 + 104))(v84, enum case for URL.DirectoryHint.inferFromPath(_:), v100);
      v47 = lazy protocol witness table accessor for type String and conformance String();
      v48 = v107;
      URL.appending<A>(component:directoryHint:)(v82, v44, &type metadata for String, v47);
      (*(v46 + 8))(v44, v45);
      v96;
      v49 = *(v103 + 8);
      v50 = v102;
      v49(v48, v102);
      v51 = v105;
      v52 = v106;
      URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
      v49(v52, v50);
      type metadata accessor for TreeRegressorModel(0);
      v53 = v108;
      BaseTreeRegressorModel.export(to:)(v51);
      if (v53)
      {
        v49(v105, v102);
        v109;
      }

      else
      {
        v106 = v49;
        v54 = v87;
        (*(v103 + 16))(v87, v105, v102);
        Model.init(contentsOf:)(v54);
        v108 = 0;
        v55 = v94;
        specialized BidirectionalCollection.last.getter(v109);
        v56 = v97;
        if (__swift_getEnumTagSinglePayload(v55, 1, v97) == 1)
        {
          BUG();
        }

        v57 = Model.outputs.getter();
        v103 = *(v98 + 8);
        (v103)(v55, v56);
        Model.inputs.setter(v57);
        v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
        v59 = *(type metadata accessor for FeatureDescription(0) - 8);
        v60 = swift_allocObject(v58, ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72), *(v59 + 80) | 7);
        *(v60 + 16) = 1;
        *(v60 + 24) = 2;
        v61 = *v99;
        v107 = v99[1];

        v62 = v93;
        FeatureType.DoubleParameters.init(optional:)(0);
        (*(v91 + 104))(v62, enum case for FeatureType.double(_:), v92);
        v100 = v61;
        FeatureDescription.init(name:type:description:)(v61, v107, v62, 0, 0xE000000000000000);
        v63 = v104;
        Model.outputs.setter(v60);
        v64 = v107;

        Model.predictedFeatureName.setter(v61, v64);
        v65 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
        Model.metadata.setter(v65);
        Model.init()();
        Model.specificationVersion.setter(1);
        v66 = v95;

        v67 = v108;
        ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n(v66);
        v108 = v67;
        v66;
        Model.inputs.setter(ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n);
        v69 = v63;
        v70 = Model.outputs.getter();
        Model.outputs.setter(v70);
        v71 = v107;

        Model.predictedFeatureName.setter(v100, v71);
        v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
        v73 = *(v98 + 80);
        v74 = (v73 + 32) & ~*(v98 + 80);
        v75 = v98;
        v76 = swift_allocObject(v72, v74 + *(v98 + 72), v73 | 7);
        *(v76 + 16) = 1;
        *(v76 + 24) = 2;
        v77 = v69;
        v78 = v97;
        (*(v75 + 16))(v76 + v74, v77, v97);
        v82[0] = v109;
        specialized Array.append<A>(contentsOf:)(v76);
        v79 = v90;
        PipelineRegressorConfiguration.init(models:names:)(v82[0], _swiftEmptyArrayStorage);
        (*(v88 + 104))(v79, enum case for ModelKind.pipelineRegressor(_:), v89);
        Model.kind.setter(v79);
        (v103)(v104, v78);
        v80 = v105;
        $defer #1 () in TreeRegressorModel.export(internalMetadata:)();
        (v106)(v80, v102);
      }
    }
  }
}

NSURL *$defer #1 () in TreeRegressorModel.export(internalMetadata:)()
{
  v0 = objc_opt_self(NSFileManager);
  v1 = [v0 defaultManager];
  v2 = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v10 = 0;
  v5 = [(NSURL *)v2 removeItemAtURL:v3 error:&v10];

  v6 = v10;
  if (v5)
  {
    return v10;
  }

  v8 = v10;
  v9 = _convertNSErrorToError(_:)(v6);

  swift_willThrow();
  v9;
  return __stack_chk_guard;
}

uint64_t TreeClassifierTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  v3 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  DataFrame.init()(v2);
  v4 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData;
  v5 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
  v7 = type metadata accessor for AnyTreeClassifier(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  v9 = type metadata accessor for AnyTreeClassifierModel(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics;
  v11 = type metadata accessor for AnyClassificationMetrics(0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, 1, 1, v11);
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

uint64_t *TreeClassifierTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v103 = v7;
  v107 = a6;
  v111 = a5;
  v113 = a4;
  v115 = a3;
  v106 = a2;
  v114 = a1;
  v112 = *v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v96 = &v87;
  v109 = type metadata accessor for BoostedTreeConfiguration(0);
  v108 = *(v109 - 8);
  v12 = *(v108 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v99 = &v87;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v95 = &v87;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifier?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v105 = &v87;
  v101 = type metadata accessor for AnyColumn(0);
  v90 = *(v101 - 8);
  v21 = *(v90 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v97 = &v87;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v91 = &v87;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v92 = &v87;
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v98 = &v87;
  v32 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v104 = &v87;
  v36 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  v93 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  v94 = v32;
  __swift_storeEnumTagSinglePayload(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters, 1, 1, v32);
  DataFrame.init()(v36);
  v37 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData;
  v110 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v110);
  v38 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
  v100 = type metadata accessor for AnyTreeClassifier(0);
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v100);
  v39 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  v40 = type metadata accessor for AnyTreeClassifierModel(0);
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v40);
  v41 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics;
  v42 = type metadata accessor for AnyClassificationMetrics(0);
  v43 = v41;
  v44 = v114;
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v42);
  v45 = v113;
  __swift_storeEnumTagSinglePayload(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, 1, 1, v42);
  v46 = v111;
  v47 = v103;
  v48 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v44, v115, v45, v111);
  v103 = v47;
  if (v47)
  {
    v45;
    v46;
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
    (*(v108 + 8))(v107, v109);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v106, &demangling cache variable for type metadata for DataFrame?);
    v49 = v110;
    v50 = *(*(v110 - 8) + 8);
    v50(v44, v110);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    v50(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData, v49);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData, &demangling cache variable for type metadata for DataFrame?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, &demangling cache variable for type metadata for AnyTreeClassifier?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics, &demangling cache variable for type metadata for AnyClassificationMetrics?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, &demangling cache variable for type metadata for AnyClassificationMetrics?);
    swift_deallocPartialClassInstance(v8, v112, *(*v8 + 48), *(*v8 + 52));
  }

  else
  {
    v112 = v48;
    v46;
    v51 = v44;
    v111 = v8;
    v52 = v104;
    v102 = *(v110 - 8);
    (*(v102 + 16))(v104, v51);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v106, v98, &demangling cache variable for type metadata for DataFrame?);
    v53 = v94;
    (*(v108 + 16))(v52 + v94[8], v107, v109);
    v54 = v52 + v53[5];
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v110);

    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v98, v54, &demangling cache variable for type metadata for DataFrame?);
    v55 = v53[6];
    v56 = v115;
    *(v52 + v55) = v115;
    *(v52 + v55 + 8) = v45;
    *(v52 + v53[7]) = v112;
    v57 = v52;
    v58 = v92;
    outlined init with copy of PersistentParametersForTreeBasedMethods(v57, v92, type metadata accessor for PersistentParametersForTreeBasedMethods);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v53);
    v59 = v93;
    swift_beginAccess(v93, &v88, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v58, v59, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    swift_endAccess(&v88);
    outlined init with copy of PersistentParametersForTreeBasedMethods(a7, v111 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
    v60 = v91;
    DataFrame.subscript.getter(v56, v113);
    v61 = AnyColumn.wrappedElementType.getter(v56);
    v62 = *(v90 + 8);
    v62(v60, v101);
    if (swift_dynamicCastMetatype(v61, &type metadata for String))
    {
      v63 = v95;
      DataFrame.subscript.getter(v115, v113, &type metadata for String);
      v64 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_11TabularData6ColumnVySSGTt0g5(v63);
      v65 = v112;
      v66 = v112;

      v67 = v99;
      BoostedTreeConfiguration.init()(v66);
      v68 = v105;
      AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v64, v115, v113, v65, v67);
      outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
      (*(v108 + 8))(v107, v109);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v106, &demangling cache variable for type metadata for DataFrame?);
      (*(v102 + 8))(v114, v110);
      outlined destroy of MLActivityClassifier.ModelParameters(v104, type metadata accessor for PersistentParametersForTreeBasedMethods);
      __swift_storeEnumTagSinglePayload(v68, 0, 1, v100);
      v69 = v111;
      v70 = v111 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
      swift_beginAccess(v111 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, &v88, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v68, v70, &demangling cache variable for type metadata for AnyTreeClassifier?);
      swift_endAccess(&v88);
      return v69;
    }

    else
    {
      v71 = v112;
      if (!swift_dynamicCastMetatype(v61, &type metadata for Int))
      {
        v88 = 0;
        v89 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);
        v89;
        v88 = 0xD000000000000023;
        v89 = "rt a new session." + 0x8000000000000000;
        v81 = v97;
        v82 = v113;
        DataFrame.subscript.getter(v115, v113);
        v82;
        v83 = AnyColumn.wrappedElementType.getter(v82);
        v62(v81, v101);
        v84._countAndFlagsBits = _typeName(_:qualified:)(v83, 0);
        object = v84._object;
        String.append(_:)(v84);
        object;
        v86._countAndFlagsBits = 46;
        v86._object = 0xE100000000000000;
        String.append(_:)(v86);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v88, v89, "CreateML/TreeClassifierTrainingSessionDelegate.swift", 52, 2, 73, 0);
        BUG();
      }

      v72 = v96;
      v73 = v113;
      DataFrame.subscript.getter(v115, v113, &type metadata for Int);
      v74 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSiSg_11TabularData6ColumnVySiGTt0g5(v72);
      v75 = v71;
      v76 = v71;

      v77 = v99;
      BoostedTreeConfiguration.init()(v76);
      AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v74, v115, v73, v75, v77);
      outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
      (*(v108 + 8))(v107, v109);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v106, &demangling cache variable for type metadata for DataFrame?);
      (*(v102 + 8))(v114, v110);
      outlined destroy of MLActivityClassifier.ModelParameters(v104, type metadata accessor for PersistentParametersForTreeBasedMethods);
      v78 = v105;
      __swift_storeEnumTagSinglePayload(v105, 0, 1, v100);
      v8 = v111;
      v79 = v111 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
      swift_beginAccess(v111 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, &v88, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v78, v79, &demangling cache variable for type metadata for AnyTreeClassifier?);
      swift_endAccess(&v88);
    }
  }

  return v8;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> TreeClassifierTrainingSessionDelegate.setUp()()
{
  v86 = v0;
  v84 = type metadata accessor for BaseTreeClassifierModel(0);
  v83 = *(v84 - 8);
  v2 = *(v83 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v85 = &v78;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v82 = &v78;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v88 = &v78;
  v95 = type metadata accessor for BoostedTreeConfiguration(0);
  v94 = *(v95 - 8);
  v11 = *(v94 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v96 = &v78;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v91 = &v78;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v87 = &v78;
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifier?) - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v89 = &v78;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v90 = &v78;
  v99 = type metadata accessor for AnyColumn(0);
  v80 = *(v99 - 8);
  v24 = *(v80 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v81 = &v78;
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v30 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v98 = &v78;
  v34 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters, v79, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v34, &v78, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v100 = v30;
  if (__swift_getEnumTagSinglePayload(&v78, 1, v30) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v78, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    BUG();
  }

  v35 = v98;
  outlined init with take of MLClassifierMetrics(&v78, v98, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v36 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
  swift_beginAccess(v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData, v93, 33, 0);
  v37 = type metadata accessor for DataFrame(0);
  (*(*(v37 - 8) + 24))(v36, v35, v37);
  swift_endAccess(v93);
  v38 = v35 + *(v100 + 20);
  v92 = v1;
  v39 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData;
  swift_beginAccess(v39, v93, 33, 0);
  outlined assign with copy of DataFrame?(v38, v39);
  swift_endAccess(v93);
  v40 = *(v100 + 24);
  v41 = *(v35 + v40);
  v42 = *(v35 + v40 + 8);
  swift_beginAccess(v36, v93, 32, 0);
  v43 = v81;
  v97 = v41;
  v101 = v42;
  DataFrame.subscript.getter(v41, v42);
  swift_endAccess(v93);
  v44 = AnyColumn.wrappedElementType.getter(v93);
  (*(v80 + 8))(v43, v99);
  v45 = swift_dynamicCastMetatype(v44, &type metadata for String);
  v46 = v100;
  if (v45)
  {
    swift_beginAccess(v36, v93, 32, 0);
    v47 = v87;
    DataFrame.subscript.getter(v97, v101, &type metadata for String);
    swift_endAccess(v93);
    v99 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_11TabularData6ColumnVySSGTt0g5(v47);
    v48 = *(v98 + *(v46 + 28));
    v49 = v101;

    v50 = v91;
    BoostedTreeConfiguration.init()(v48);
    v51 = v90;
    AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v99, v97, v49, v48, v50);
    v101 = type metadata accessor for AnyTreeClassifier(0);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v101);
    v52 = v92;
    v53 = v92 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v92 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, v93, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v51, v53, &demangling cache variable for type metadata for AnyTreeClassifier?);
    swift_endAccess(v93);
    v54 = v52;
    v55 = v98;
  }

  else
  {
    v56 = v97;
    if (!swift_dynamicCastMetatype(v44, &type metadata for Int))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001ELL, ("essionDelegate.swift" + 0x8000000000000000), "CreateML/TreeClassifierTrainingSessionDelegate.swift", 52, 2, 101, 0);
      BUG();
    }

    swift_beginAccess(v36, v93, 32, 0);
    v57 = v88;
    DataFrame.subscript.getter(v56, v101, &type metadata for Int);
    swift_endAccess(v93);
    v99 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSiSg_11TabularData6ColumnVySiGTt0g5(v57);
    v55 = v98;
    v58 = *(v98 + *(v100 + 28));

    v59 = v91;
    BoostedTreeConfiguration.init()(v58);
    v60 = v90;
    AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v99, v97, v101, v58, v59);
    v61 = v60;
    v101 = type metadata accessor for AnyTreeClassifier(0);
    __swift_storeEnumTagSinglePayload(v60, 0, 1, v101);
    v54 = v92;
    v62 = v92 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v92 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, v93, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v61, v62, &demangling cache variable for type metadata for AnyTreeClassifier?);
    swift_endAccess(v93);
  }

  v63 = *(v100 + 32) + v55;
  v64 = v95;
  v100 = *(v94 + 16);
  (v100)(v96, v63, v95);
  v65 = v54 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
  swift_beginAccess(v54 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, v93, 33, 0);
  type metadata accessor for AnyTreeClassifier(0);
  if (__swift_getEnumTagSinglePayload(v65, 1, v101) == 1)
  {
    BUG();
  }

  v66 = v91;
  v67 = v96;
  (v100)(v91, v96, v64);
  BaseTreeClassifier.configuration.setter(v66);
  (*(v94 + 8))(v67, v95);
  swift_endAccess(v93);
  v68 = v89;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, v89, &demangling cache variable for type metadata for AnyTreeClassifier?);
  if (__swift_getEnumTagSinglePayload(v68, 1, v101) == 1)
  {
    BUG();
  }

  v96 = *v68;
  v69 = *(v68 + 8);
  v70 = *(v68 + 24);
  LOBYTE(v95) = *(v68 + 32);
  v94 = v70;
  v71 = *(v70 + 16);

  v72 = v85;
  v73 = v86;
  BaseTreeClassifier.makeTransformer(classCount:featureCount:)(v71, 0);
  v100 = v73;
  if (v73)
  {
    v69;
    swift_unexpectedError(v100, "CreateML/AnyTreeClassifier.swift", 32, 1, 170);
    BUG();
  }

  v74 = v82;
  *v82 = v96;
  *(v74 + 8) = v69;
  v75 = type metadata accessor for AnyTreeClassifierModel(0);
  *(v74 + 32) = 0;
  *(v74 + 16) = 0;
  (*(v83 + 32))(v74 + *(v75 + 24), v72, v84);
  v76 = *(v75 + 28);
  *(v74 + v76) = v94;
  *(v74 + v76 + 8) = v95 & 1;

  outlined destroy of MLActivityClassifier.ModelParameters(v98, type metadata accessor for PersistentParametersForTreeBasedMethods);
  outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for AnyTreeClassifier);
  __swift_storeEnumTagSinglePayload(v74, 0, 1, v75);
  v77 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + v92;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + v92, v93, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v74, v77, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  swift_endAccess(v93);
}