void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySdG_Sds5NeverOTg5015_sS2dIgyd_S2ds5d16OIegnrzr_TR011_sF77Iegnr_C58Iegyd_TR40_ss3absyxxSLRzs13SignedNumericRzlFSd_TG5Tf3npf_nTf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v10 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = v1;
  v4 = a1;
  result = _swiftEmptyArrayStorage;
  do
  {
    v6 = *(v4 + 8 * v2 + 32);
    v8 = result;
    v7 = result[2];
    if (result[3] >> 1 <= v7)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v7 + 1, 1);
      v3 = v10;
      v4 = a1;
      result = v8;
    }

    ++v2;
    result[2] = v7 + 1;
    *&result[v7 + 4] = fabs(v6);
  }

  while (v3 != v2);
  return result;
}

uint64_t static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(uint64_t a1, uint64_t a2, int a3)
{
  v27 = v4;
  v32 = a3;
  v20 = v3;
  v25 = type metadata accessor for Tensor(0);
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0);
  v9 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(&v17, *(a2 + 16));
  v26 = v9;
  v10 = v27;
  _MetricUtilities.ConfusionMatrixMeter.valueAsMetricTable(classLabels:)(a2);
  if (v10)
  {
    return (*(v5 + 8))(&v17, v25);
  }

  v27 = &v17;
  v24 = v5;
  if (v32)
  {
    v11 = v30;
    v12 = v31;
    v18 = v30;
    v19 = v31;
    outlined copy of Result<_DataTable, Error>(v30, v31);
    static _MetricUtilities.supplementConfusionMatrixWithMissingClasses(_:classes:)(&v18, a2, v9);
    outlined consume of Result<_DataTable, Error>(v11, v12);
    outlined consume of Result<_DataTable, Error>(v11, v12);
    v30 = v28;
    LOBYTE(v31) = v29;
  }

  static _MetricUtilities.precisionRecall(confusionMatrix:classLabels:)(v27, a2);
  v21 = v28;
  v33 = v29;
  v26 = 1.0 - v26;
  v23 = v30;
  v32 = v31;
  v28 = v30;
  v29 = v31;
  v22 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v14 = v20;
  v15 = v23;
  outlined copy of Result<_DataTable, Error>(v23, v32);
  DataFrame.init(_:)(&v28);
  v28 = v21;
  v29 = v33;
  DataFrame.init(_:)(&v28);
  outlined consume of Result<_DataTable, Error>(v15, v32);
  (*(v24 + 8))(v27, v25);
  *v14 = v26;
  v16 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v14, v16, 1);
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySdGAHG_Sds5NeverOTg5022_sS3dIegyyd_Sd_SdtSds5f68OIegnrzr_TR059_s8CreateML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v25 = v2;
  v26 = *(a2 + 16);
  if (v26 < v2)
  {
    v2 = *(a2 + 16);
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v28 = v2;
  if (v2)
  {

    v4 = 0;
    v5 = 1;
    v6 = v25;
    v7 = v26;
    v8 = v28;
    do
    {
      if (v6 == v4)
      {
        BUG();
      }

      if (v7 == v4)
      {
        BUG();
      }

      v9 = *(a1 + 8 * v4 + 32);
      v10 = *(a2 + 8 * v4 + 32);
      v29 = v3;
      v11 = v3[2];
      v12 = v3[3];
      v13 = v11 + 1;
      if (v12 >> 1 <= v11)
      {
        v14 = v5;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 >= 2, v13, v5);
        v13 = v11 + 1;
        v5 = v14;
        v8 = v28;
        v7 = v26;
        v6 = v25;
        v3 = v29;
      }

      ++v4;
      v3[2] = v13;
      *&v3[v11 + 4] = v9 - v10;
    }

    while (v8 != v4);
  }

  else
  {

    v6 = v25;
    v7 = v26;
    v8 = 0;
  }

  v15 = a1;
  v16 = a2;
  while (v6 != v8)
  {
    if (v6 <= v8)
    {
      BUG();
    }

    v17 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v7 == v8)
    {
      break;
    }

    if (v7 <= v8)
    {
      BUG();
    }

    v18 = *(v15 + 8 * v8 + 32);
    v19 = *(v16 + 8 * v8 + 32);
    v20 = v3[2];
    v21 = v20 + 1;
    if (v3[3] >> 1 <= v20)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v21, 1);
      v7 = v26;
      v6 = v25;
      v16 = a2;
      v15 = a1;
    }

    v3[2] = v21;
    *&v3[v20 + 4] = v18 - v19;
    v8 = v17;
  }

  v22 = v15;
  v16;
  v22;
  return v3;
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v2 = a1;

    v3 = a2;
    v4 = _swiftEmptyArrayStorage;
    v5 = 0;
    v10 = v2;
    do
    {
      if (v5 >= *(v3 + 16))
      {
        BUG();
      }

      if (*(v3 + v5 + 32) == 1)
      {
        v9 = *(v2 + 8 * v5 + 32);
        if (!swift_isUniquelyReferenced_nonNull_native(v4))
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v6 = v4[2];
        if (v4[3] >> 1 <= v6)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v6 + 1, 1, v4);
        }

        v3 = a2;
        v4[2] = v6 + 1;
        v4[v6 + 4] = v9;
        v2 = v10;
      }

      ++v5;
    }

    while (v8 != v5);
    v3;
    v2;
  }

  else
  {
    a2;
    return _swiftEmptyArrayStorage;
  }

  return v4;
}

uint64_t _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:)(uint64_t a1, uint64_t a2)
{
  v29[0] = v2;
  v29[1] = a2;
  v30 = type metadata accessor for FloatingPointRoundingRule(0);
  v3 = *(v30 - 8);
  v4 = v3[8];
  v5 = alloca(v4);
  v6 = alloca(v4);
  v38 = type metadata accessor for ScalarType(0);
  v42 = *(v38 - 8);
  v7 = *(v42 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v41 = type metadata accessor for Tensor(0);
  v33 = *(v41 - 8);
  v10 = *(v33 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v32 = v29;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v39 = v29;
  v15 = alloca(v10);
  v16 = alloca(v10);
  v31 = v29;
  Tensor.argmax(squeezingAxis:)(1);
  static ScalarType.int.getter();
  v40 = enum case for FloatingPointRoundingRule.towardZero(_:);
  v34 = v3[13];
  v17 = v30;
  v34(v29, enum case for FloatingPointRoundingRule.towardZero(_:), v30);
  v37 = v29;
  v18 = v39;
  Tensor.cast(to:roundingRule:)(v29, v29);
  v35 = v3[1];
  v35(v29, v17);
  v36 = *(v42 + 8);
  v36(v29, v38);
  v42 = *(v33 + 8);
  (v42)(v18, v41);
  v19 = v32;
  Tensor.argmax(squeezingAxis:)(1);
  static ScalarType.int.getter();
  v20 = v37;
  v34(v37, v40, v17);
  Tensor.cast(to:roundingRule:)(v29, v20);
  v35(v20, v17);
  v36(v29, v38);
  (v42)(v19, v41);
  v21 = v31;
  v22 = Tensor.scalars<A>(as:)(&type metadata for Int, &type metadata for Int, &protocol witness table for Int);
  v23 = v39;
  v24 = Tensor.scalars<A>(as:)(&type metadata for Int, &type metadata for Int, &protocol witness table for Int);
  LOBYTE(v20) = v24;
  _MetricUtilities.ConfusionMatrixMeter.add(predictedIds:targetIds:)(v22, v24);
  v22;
  v20;
  v25 = v23;
  v26 = v41;
  v27 = v42;
  (v42)(v25, v41);
  return v27(v21, v26);
}

double static _MetricUtilities.rmse(target:prediction:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    _StringGuts.grow(_:)(50);
    0;
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v18._object;
    String.append(_:)(v18);
    object;
    v20._object = "Size of targets " + 0x8000000000000000;
    v20._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v20);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v22 = v21._object;
    String.append(_:)(v21);
    v22;
    v20._countAndFlagsBits = 0x20746F6E206F6420;
    v20._object = 0xED0000686374616DLL;
    String.append(_:)(v20);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000010, ("n matrix dimension" + 0x8000000000000000), "CreateML/_MetricUtilities.swift", 31, 2, 24, 0);
    BUG();
  }

  ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySdGAHG_Sds5NeverOTg5022_sS3dIegyyd_Sd_SdtSds5f68OIegnrzr_TR059_s8CreateML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm(a2, a1);
  a1;
  a2;
  v4 = ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm[2];
  if (v4)
  {
    v23 = v2;
    v5 = 0;
    v25 = ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm;
    v26 = ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm[2];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v6 = v26;
    v7 = ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm;
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage[2];
    v10 = 1;
    do
    {
      v11 = *&v7[v5 + 4];
      v24 = v8;
      v12 = v8[3];
      if (v12 >> 1 <= v9)
      {
        v13 = v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 >= 2, v9 + 1, v10);
        v10 = v13;
        v6 = v26;
        v7 = v25;
        v8 = v24;
      }

      ++v5;
      v8[2] = v9 + 1;
      *&v8[v9++ + 4] = v11 * v11;
    }

    while (v6 != v5);
    v7;
    LODWORD(v2) = v23;
  }

  else
  {
    ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm;
    v8 = _swiftEmptyArrayStorage;
  }

  v14 = v8[2];
  v15 = 0.0;
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v15 = v15 + *&v8[i + 4];
    }
  }

  v8;
  return sqrt(v15 / v2);
}

uint64_t static _MetricUtilities.maximumError(target:prediction:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    _StringGuts.grow(_:)(50);
    0;
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v6._object;
    String.append(_:)(v6);
    object;
    v8._object = "Size of targets " + 0x8000000000000000;
    v8._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v8);
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v10 = v9._object;
    String.append(_:)(v9);
    v10;
    v8._countAndFlagsBits = 0x20746F6E206F6420;
    v8._object = 0xED0000686374616DLL;
    String.append(_:)(v8);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000010, ("n matrix dimension" + 0x8000000000000000), "CreateML/_MetricUtilities.swift", 31, 2, 32, 0);
    BUG();
  }

  ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySdGAHG_Sds5NeverOTg5022_sS3dIegyyd_Sd_SdtSds5f68OIegnrzr_TR059_s8CreateML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm(a2, a1);
  a1;
  a2;
  v3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySdG_Sds5NeverOTg5015_sS2dIgyd_S2ds5d16OIegnrzr_TR011_sF77Iegnr_C58Iegyd_TR40_ss3absyxxSLRzs13SignedNumericRzlFSd_TG5Tf3npf_nTf3nnnpf_nTf1cn_n(ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm);
  ML16_MetricUtilitiesV4rmse6target10predictionJ35SayH19G_AGtFZS2d_Sdtcfu0_Tf3nnnpf_nTf1cn_nTm;
  v4 = specialized Sequence<>.max()(v3);
  v3;
  return v4;
}

uint64_t _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v13 = *(v3 - 8);
  v4 = *(v13 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v14 = &v12;
  *(v2 + 16) = a1;
  v15[0] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v8 = swift_allocObject(v7, 48, 7);
  v8[2] = 2;
  v8[3] = 4;
  v8[4] = a1;
  v8[5] = a1;
  v9 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
  v10 = v14;
  MLShapedArrayProtocol.init(repeating:shape:)(v15, v8, v3, v9);
  (*(v13 + 32))(v2 + OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion, v10, v3);
  return v2;
}

Swift::Void __swiftcall _MetricUtilities.ConfusionMatrixMeter.add(predictedIds:targetIds:)(Swift::OpaquePointer predictedIds, Swift::OpaquePointer targetIds)
{
  rawValue = predictedIds._rawValue;
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v39 = *(v40 - 8);
  v4 = *(v39 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v32 = &v26;
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArraySlice<Int32>);
  v34 = *(v33 - 8);
  v7 = *(v34 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v35 = &v26;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v36 = &v26;
  v43 = targetIds._rawValue;
  v42 = *(targetIds._rawValue + 2);
  if (v42)
  {
    v37 = *(predictedIds._rawValue + 2);
    if (v37)
    {
      v12 = v43[4];
      v13 = OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion + v2;

      v14 = 0;
      v41 = v13;
      swift_beginAccess(v13, v27, 0, 0);
      --v42;
      v38 = predictedIds._rawValue;
      do
      {
        v30 = v14;
        v15 = rawValue[v14 + 4];
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
        v17 = swift_allocObject(v16, 48, 7);
        v17[2] = 2;
        v17[3] = 4;
        v17[4] = v12;
        v31 = v17;
        v17[5] = v15;
        v18 = swift_allocObject(v16, 48, 7);
        v18[2] = 2;
        v18[3] = 4;
        v18[4] = v12;
        v18[5] = v15;
        v19 = v32;
        v20 = v40;
        (*(v39 + 16))(v32, v41, v40);
        v21 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
        v22 = v35;
        MLShapedArrayProtocol.subscript.getter(v18, v20, v21);
        v18;
        (*(v39 + 8))(v19, v20);
        v23 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArraySlice<Int32> and conformance MLShapedArraySlice<A>, &demangling cache variable for type metadata for MLShapedArraySlice<Int32>, &protocol conformance descriptor for MLShapedArraySlice<A>);
        v24 = v33;
        MLShapedArrayProtocol.scalar.getter(v33, v23);
        (*(v34 + 8))(v22, v24);
        if (v29)
        {
          BUG();
        }

        if (__OFADD__(1, v28))
        {
          BUG();
        }

        ++v28;
        v25 = v36;
        MLShapedArraySlice.init(scalar:)(&v28, &type metadata for Int32, &protocol witness table for Int32);
        swift_beginAccess(v41, &v28, 33, 0);
        MLShapedArrayProtocol.subscript.setter(v25, v31, v40, v21);
        swift_endAccess(&v28);
        rawValue = v38;
        if (v42 == v30)
        {
          break;
        }

        v12 = v43[v30 + 5];
        v14 = v30 + 1;
      }

      while (v37 != v30 + 1);
      v38;
      v43;
    }
  }
}

uint64_t *_MetricUtilities.ConfusionMatrixMeter.valueAsMetricTable(classLabels:)(uint64_t a1)
{
  v60 = v1;
  v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArraySlice<Int32>);
  v52 = *(v51 - 8);
  v4 = *(v52 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v53 = &v46;
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v62 = *(v54 - 8);
  v7 = *(v62 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v55 = &v46;
  v10 = *(a1 + 16);
  v65 = v3;
  if (v10 != *(v3 + 16))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000042, ("Utilities.swift" + 0x8000000000000000), "CreateML/_MetricUtilities.swift", 31, 2, 67, 0);
    BUG();
  }

  if (v10)
  {
    v63 = v65 + OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion;
    v59 = a1 + 32;
    v58 = (a1 + 40);
    v11 = 0;
    v73 = _swiftEmptyArrayStorage;
    v71 = _swiftEmptyArrayStorage;
    v72 = _swiftEmptyArrayStorage;
    v64 = v10;
    do
    {
      if (v11 == v10)
      {
        BUG();
      }

      v12 = *(v65 + 16);
      v49 = v12;
      if (v12 < 0)
      {
        BUG();
      }

      v57 = v11 + 1;
      if (v12)
      {
        swift_beginAccess(v63, v48, 0, 0);
        v56 = (v59 + 16 * v11);
        v13 = v58;
        v14 = 0;
        v50 = v11;
        do
        {
          v66 = v13;
          v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v16 = swift_allocObject(v15, 48, 7);
          v16[2] = 2;
          v16[3] = 4;
          v16[4] = v11;
          v61 = v14;
          v16[5] = v14;
          v17 = v55;
          v18 = v54;
          (*(v62 + 16))(v55, v63, v54);
          v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
          v20 = v53;
          MLShapedArrayProtocol.subscript.getter(v16, v18, v19);
          v16;
          (*(v62 + 8))(v17, v18);
          v21 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArraySlice<Int32> and conformance MLShapedArraySlice<A>, &demangling cache variable for type metadata for MLShapedArraySlice<Int32>, &protocol conformance descriptor for MLShapedArraySlice<A>);
          v22 = v51;
          MLShapedArrayProtocol.scalar.getter(v51, v21);
          (*(v52 + 8))(v20, v22);
          if (BYTE4(v68) & 1 | (v68 <= 0))
          {
            v23 = v66;
          }

          else
          {
            v70 = v68;
            v67 = *v56;
            v24 = v56[1];

            if (!swift_isUniquelyReferenced_nonNull_native(v71))
            {
              v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71[2] + 1, 1, v71);
            }

            v23 = v66;
            v25 = v71[2];
            if (v71[3] >> 1 <= v25)
            {
              v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v71[3] >= 2uLL, v25 + 1, 1, v71);
            }

            v26 = v71;
            v71[2] = v25 + 1;
            v27 = 2 * v25;
            v26[v27 + 4] = v67;
            v26[v27 + 5] = v24;
            if (v61 >= v64)
            {
              BUG();
            }

            v28 = *(v23 - 1);
            v29 = *v23;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v73);
            v67 = v29;
            if (!isUniquelyReferenced_nonNull_native)
            {
              v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
            }

            v31 = v73[2];
            if (v73[3] >> 1 <= v31)
            {
              v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v73[3] >= 2uLL, v31 + 1, 1, v73);
            }

            v32 = v73;
            v73[2] = v31 + 1;
            v33 = 2 * v31;
            v32[v33 + 4] = v28;
            v32[v33 + 5] = v67;
            if (!swift_isUniquelyReferenced_nonNull_native(v72))
            {
              v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72[2] + 1, 1, v72);
            }

            v34 = v70;
            v35 = v72[2];
            if (v72[3] >> 1 <= v35)
            {
              v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v72[3] >= 2uLL, v35 + 1, 1, v72);
            }

            v36 = v72;
            v72[2] = v35 + 1;
            v36[v35 + 4] = v34;
          }

          v14 = v61 + 1;
          v13 = v23 + 2;
          v11 = v50;
        }

        while (v49 != v61 + 1);
      }

      v11 = v57;
      v10 = v64;
    }

    while (v57 != v64);
  }

  else
  {
    v73 = _swiftEmptyArrayStorage;
    v71 = _swiftEmptyArrayStorage;
    v72 = _swiftEmptyArrayStorage;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValueConvertible)>);
  inited = swift_initStackObject(v37, v47);
  inited[2] = 3;
  inited[3] = 6;
  inited[4] = 0x7373616C63;
  inited[5] = 0xE500000000000000;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  inited[9] = v39;
  v40 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &demangling cache variable for type metadata for [String]);
  inited[10] = v40;
  inited[6] = v71;
  inited[11] = 0x6574636964657270;
  inited[12] = 0xEF7373616C635F64;
  inited[16] = v39;
  inited[17] = v40;
  inited[13] = v73;
  inited[18] = 0x746E756F63;
  inited[19] = 0xE500000000000000;
  inited[23] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  inited[24] = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], &demangling cache variable for type metadata for [Int]);
  inited[20] = v72;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
  v42 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v41, &protocol witness table for String);
  result = MLDataTable.init(dictionary:)(v42);
  if (!v2)
  {
    result = v68;
    v44 = v69;
    v45 = v60;
    *v60 = v68;
    *(v45 + 8) = v44;
  }

  return result;
}

uint64_t _MetricUtilities.ConfusionMatrixMeter.__deallocating_deinit()
{
  v1 = v0 + OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  (*(*(v2 - 8) + 8))(v1, v2);
  return swift_deallocClassInstance(v0, *(*v0 + 48), *(*v0 + 52));
}

uint64_t type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(uint64_t a1)
{
  result = type metadata singleton initialization cache for _MetricUtilities.ConfusionMatrixMeter;
  if (!type metadata singleton initialization cache for _MetricUtilities.ConfusionMatrixMeter)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for _MetricUtilities.ConfusionMatrixMeter);
  }

  return result;
}

uint64_t type metadata completion function for _MetricUtilities.ConfusionMatrixMeter(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.Int64 + 64;
  result = type metadata accessor for MLShapedArray<Int32>(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    result = swift_updateClassMetadata2(a1, 256, 2, v3, a1 + 80);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MLShapedArray<Int32>(uint64_t a1)
{
  result = lazy cache variable for type metadata for MLShapedArray<Int32>;
  if (!lazy cache variable for type metadata for MLShapedArray<Int32>)
  {
    result = type metadata accessor for MLShapedArray(a1, &type metadata for Int32, &protocol witness table for Int32);
    if (!v2)
    {
      lazy cache variable for type metadata for MLShapedArray<Int32> = result;
    }
  }

  return result;
}

uint64_t static _MetricUtilities.supplementConfusionMatrixWithMissingClasses(_:classes:)(uint64_t a1, uint64_t a2, double a3)
{
  v41 = a2;
  v42 = v3;
  v5 = *(a1 + 8);
  v45 = *a1;
  v4 = v45;
  v6 = v5 & 1;
  v46 = v5 & 1;
  LODWORD(v50) = v5;
  outlined copy of Result<_DataTable, Error>(v45, v5);
  v7._countAndFlagsBits = 0x7373616C63;
  v7._object = 0xE500000000000000;
  MLDataTable.subscript.getter(v7);
  outlined consume of Result<_DataTable, Error>(v45, v46);
  v37 = v48;
  v38 = v49;
  MLUntypedColumn.dropDuplicates()();
  outlined consume of Result<_DataTable, Error>(v48, v49);
  if (v46 || (outlined copy of Result<_DataTable, Error>(v45, 0), _UntypedColumn.type.getter(), outlined consume of Result<_DataTable, Error>(v45, 0), v48 != 2))
  {
    outlined consume of Result<_DataTable, Error>(v45, v46);
    BUG();
  }

  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v45, 0, a3);
  v9 = *(v41 + 16);
  v47 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2];
  if (v47 < v9)
  {
    v43 = 0;
    v46 = v6;
    v39 = v41 + 32;
    v10 = v50;
    v50 = v9;
    outlined copy of Result<_DataTable, Error>(v45, v10);

    v11 = v50;
    v40 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 + 9;
    v12 = 0;
    v44 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    v13 = v47;
    while (1)
    {
      if (v12 == v11)
      {
        BUG();
      }

      v14 = *(v39 + 16 * v12);
      v15 = *(v39 + 16 * v12 + 8);
      if (!v13)
      {
        goto LABEL_11;
      }

      v16 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[4];
      v17 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[5];
      if (v16 == v14 && v17 == v15)
      {
        goto LABEL_15;
      }

      if ((_stringCompareWithSmolCheck(_:_:expecting:)(v16, v17, *(v39 + 16 * v12), *(v39 + 16 * v12 + 8), 0) & 1) == 0)
      {
        break;
      }

LABEL_14:
      v11 = v50;
LABEL_15:
      if (++v12 == v11)
      {
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        v41;
        result = v45;
        v34 = v46;
        v35 = v42;
        *v42 = v45;
        *(v35 + 8) = v34;
        return result;
      }
    }

    if (v13 == 1)
    {
      goto LABEL_11;
    }

    v25 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[6];
    v26 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[7];
    if (v25 == v14 && v26 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)(v25, v26, v14, v15, 0) & 1) != 0)
    {
      goto LABEL_14;
    }

    if (v13 == 2)
    {
LABEL_11:
      v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValueConvertible)>);
      inited = swift_initStackObject(v18, v36);
      inited[2] = 3;
      inited[3] = 6;
      inited[4] = 0x7373616C63;
      inited[5] = 0xE500000000000000;
      inited[9] = &type metadata for String;
      inited[10] = &protocol witness table for String;
      inited[6] = v14;
      inited[7] = v15;
      inited[11] = 0x6574636964657270;
      inited[12] = 0xEF7373616C635F64;
      inited[16] = &type metadata for String;
      inited[17] = &protocol witness table for String;
      inited[13] = v14;
      inited[14] = v15;
      inited[18] = 0x746E756F63;
      inited[19] = 0xE500000000000000;
      inited[23] = &type metadata for Int;
      inited[24] = &protocol witness table for Int;
      inited[20] = 0;
      swift_bridgeObjectRetain_n(v15, 2);
      v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
      v21 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v20, &protocol witness table for String);
      v22 = v43;
      MLDataTable.init(dictionary:)(v21);
      v43 = v22;
      if (v22)
      {
        v43;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003BLL, (" and predictions " + 0x8000000000000000), "CreateML/_MetricUtilities.swift", 31, 2, 95, 0);
        BUG();
      }

      v23 = v48;
      v24 = v49;
      MLDataTable.append(contentsOf:)(&v48);
      outlined consume of Result<_DataTable, Error>(v23, v24);
    }

    else
    {
      v27 = v40;
      v28 = 2;
      while (1)
      {
        if (__OFADD__(1, v28++))
        {
          BUG();
        }

        v30 = *(v27 - 1);
        v31 = *v27;
        if (v30 == v14 && v31 == v15)
        {
          break;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)(v30, v31, v14, v15, 0))
        {
          break;
        }

        v27 += 2;
        if (v28 == v47)
        {
          goto LABEL_11;
        }
      }
    }

    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = v44;
    v13 = v47;
    goto LABEL_14;
  }

  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v32 = v42;
  *v42 = v45;
  *(v32 + 8) = v6;
  return outlined copy of Result<_DataTable, Error>(v4, v50);
}

uint64_t static _MetricUtilities.supplementPrecisionRecallWithMissingClasses(_:classes:)(uint64_t a1, uint64_t a2, double a3)
{
  v41 = a2;
  v42 = v3;
  v5 = *(a1 + 8);
  v47 = *a1;
  v4 = v47;
  v6 = v5 & 1;
  v48 = v5 & 1;
  LODWORD(v50) = v5;
  outlined copy of Result<_DataTable, Error>(v47, v5);
  v7._countAndFlagsBits = 0x7373616C63;
  v7._object = 0xE500000000000000;
  MLDataTable.subscript.getter(v7);
  outlined consume of Result<_DataTable, Error>(v47, v48);
  if (v45 || (outlined copy of Result<_DataTable, Error>(v44, 0), _UntypedColumn.type.getter(), outlined consume of Result<_DataTable, Error>(v44, 0), v47 != 2))
  {
    outlined consume of Result<_DataTable, Error>(v44, v45);
    BUG();
  }

  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v44, 0, a3);
  v9 = *(v41 + 16);
  if (MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2] < v9)
  {
    v46 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2];
    v44 = v47;
    v45 = v6;
    v35 = v41 + 32;
    v49 = v9;
    outlined copy of Result<_DataTable, Error>(v47, v50);
    v36 = "predicted_this_incorrectly" + 0x8000000000000000;
    v37 = "Starting a new session in '" + 0x8000000000000000;
    v38 = "predicted_correctly" + 0x8000000000000000;

    v10 = v49;
    v40 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 + 9;
    v11 = 0;
    v39 = 0xD000000000000016;
    v12 = v46;
    v43 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    while (1)
    {
      if (v11 == v10)
      {
        BUG();
      }

      v13 = *(v35 + 16 * v11);
      v14 = *(v35 + 16 * v11 + 8);
      if (!v12)
      {
        break;
      }

      v15 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[4];
      v16 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[5];
      if (v15 == v13 && v16 == v14)
      {
        goto LABEL_26;
      }

      v50 = v11;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)(v15, v16, v13, v14, 0) & 1) == 0)
      {
        if (v12 != 1)
        {
          v17 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[6];
          v18 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[7];
          if (v17 == v13 && v18 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)(v17, v18, v13, v14, 0) & 1) != 0)
          {
            goto LABEL_25;
          }

          if (v12 != 2)
          {
            v19 = v40;
            v20 = 2;
            do
            {
              if (__OFADD__(1, v20++))
              {
                BUG();
              }

              v22 = *(v19 - 1);
              v23 = *v19;
              if (v22 == v13 && v23 == v14)
              {
                goto LABEL_24;
              }

              if (_stringCompareWithSmolCheck(_:_:expecting:)(v22, v23, v13, v14, 0))
              {
                goto LABEL_24;
              }

              v19 += 2;
            }

            while (v20 != v46);
          }
        }

LABEL_23:
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValueConvertible)>);
        inited = swift_initStackObject(v24, v34);
        *(inited + 16) = 7;
        *(inited + 24) = 14;
        strcpy((inited + 32), "actual_count");
        *(inited + 45) = 0;
        *(inited + 46) = -5120;
        *(inited + 72) = &type metadata for Int;
        *(inited + 80) = &protocol witness table for Int;
        *(inited + 48) = 0;
        *(inited + 88) = 0x7373616C63;
        *(inited + 96) = 0xE500000000000000;
        *(inited + 128) = &type metadata for String;
        *(inited + 136) = &protocol witness table for String;
        *(inited + 104) = v13;
        *(inited + 112) = v14;
        *(inited + 144) = v39;
        *(inited + 152) = v36;
        *(inited + 184) = &type metadata for Int;
        *(inited + 192) = &protocol witness table for Int;
        *(inited + 160) = 0;
        *(inited + 200) = 0x6F69736963657270;
        *(inited + 208) = 0xE90000000000006ELL;
        *(inited + 240) = &type metadata for Double;
        *(inited + 248) = &protocol witness table for Double;
        *(inited + 216) = 0;
        *(inited + 256) = 0x6C6C61636572;
        *(inited + 264) = 0xE600000000000000;
        *(inited + 296) = &type metadata for Double;
        *(inited + 304) = &protocol witness table for Double;
        *(inited + 272) = 0x7FF8000000000000;
        *(inited + 312) = 0xD000000000000013;
        *(inited + 320) = v37;
        *(inited + 352) = &type metadata for Int;
        *(inited + 360) = &protocol witness table for Int;
        *(inited + 328) = 0;
        *(inited + 368) = 0xD00000000000001ALL;
        *(inited + 376) = v38;
        *(inited + 408) = &type metadata for Int;
        *(inited + 416) = &protocol witness table for Int;
        *(inited + 384) = 0;

        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
        v27 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v26, &protocol witness table for String);
        MLDataTable.init(dictionary:)(v27);
        v28 = v47;
        v29 = v48;
        MLDataTable.append(contentsOf:)(&v47);
        outlined consume of Result<_DataTable, Error>(v28, v29);
LABEL_24:
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = v43;
        v12 = v46;
      }

LABEL_25:
      v10 = v49;
      v11 = v50;
LABEL_26:
      if (++v11 == v10)
      {
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        v41;
        result = v44;
        v31 = v45;
        v32 = v42;
        *v42 = v44;
        *(v32 + 8) = v31;
        return result;
      }
    }

    v50 = v11;
    goto LABEL_23;
  }

  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v33 = v42;
  *v42 = v47;
  *(v33 + 8) = v6;
  return outlined copy of Result<_DataTable, Error>(v4, v50);
}

uint64_t _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(int a1)
{
  v76 = a1;
  v74 = v1;
  v61 = type metadata accessor for FloatingPointRoundingRule(0);
  v62 = *(v61 - 8);
  v3 = *(v62 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v63 = v60;
  v71 = type metadata accessor for ScalarType(0);
  v70 = *(v71 - 8);
  v6 = *(v70 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v72 = v60;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v65 = v60;
  v77 = type metadata accessor for Tensor(0);
  v64 = *(v77 - 8);
  v12 = *(v64 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v66 = v60;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v68 = v60;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v67 = v60;
  v19 = alloca(v12);
  v20 = alloca(v12);
  v69 = v60;
  v21 = alloca(v12);
  v22 = alloca(v12);
  v73 = v60;
  v23 = alloca(v12);
  v24 = alloca(v12);
  v78 = v60;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  type metadata accessor for MLMultiArray();
  v30 = OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion + v2;
  swift_beginAccess(OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion + v2, v60, 0, 0);
  (*(v26 + 16))(v60, v30, v25);
  v31 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
  v32 = MLMultiArray.init<A>(_:)(v60, v25, v31);
  v33 = type metadata accessor for ComputeDevice(0);
  v34 = v65;
  __swift_storeEnumTagSinglePayload(v65, 1, 1, v33);
  v35 = v32;
  v36 = v73;
  v75 = v35;
  Tensor.init(_:device:)(v75, v34);
  v37 = v72;
  (*(v70 + 104))(v72, enum case for ScalarType.float32(_:), v71);
  v38 = v63;
  v39 = v61;
  v40 = v62;
  (*(v62 + 104))(v63, enum case for FloatingPointRoundingRule.towardZero(_:), v61);
  Tensor.cast(to:roundingRule:)(v37, v38);
  (*(v40 + 8))(v38, v39);
  v41 = v36;
  v42 = v64;
  (*(v70 + 8))(v72, v71);
  v43 = *(v42 + 8);
  v43(v41, v77);
  if (v76)
  {
    v44 = Tensor.rank.getter();
    if (v44 < 0)
    {
      BUG();
    }

    v45 = specialized Sequence.reversed()(0, v44);
    v46 = v45;
    v47 = v69;
    Tensor.transposed(permutation:)(v45);
    v46;
    v48 = v68;
    Tensor.sum(squeezingAxes:)(&outlined read-only object #0 of _MetricUtilities.ConfusionMatrixMeter.value(normalized:));
    v49 = v66;
    Tensor.init(floatLiteral:)(1.0e-12);
    v50 = v67;
    static Tensor.+ infix(_:_:)(v48, v49);
    v51 = v49;
    v52 = v77;
    v43(v51, v77);
    v43(v48, v52);
    v53 = v73;
    static Tensor./ infix(_:_:)(v47, v50);
    v43(v50, v52);
    v54 = v53;
    v43(v47, v52);
    v55 = Tensor.rank.getter();
    if (v55 < 0)
    {
      BUG();
    }

    v56 = specialized Sequence.reversed()(0, v55);
    v57 = v56;
    Tensor.transposed(permutation:)(v56);

    v57;
    v58 = v77;
    v43(v54, v77);
    return (v43)(v78, v58);
  }

  else
  {

    return (*(v42 + 32))(v74, v78, v77);
  }
}

double static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for Tensor(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = alloca(v8);
  v12 = alloca(v8);
  v13 = alloca(v8);
  v14 = alloca(v8);
  if (a2 < 0)
  {
    BUG();
  }

  v24[0] = 0;
  v24[1] = a2;
  v22 = v6;
  v23 = a2;
  v21 = &v21;
  v25 = v7;
  v15 = type metadata accessor for ComputeDevice(0);
  __swift_storeEnumTagSinglePayload(&v21, 1, 1, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v17 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Tensor.init<A>(oneHotAtIndices:depth:onValue:offValue:on:)(v24, v23, &v21, v16, v17, 1.0, 0.0);
  static Tensor.* infix(_:_:)(v26, &v21);
  Tensor.sum()();
  v18 = *(v25 + 8);
  v19 = v22;
  v18(&v21, v22);
  Tensor.scalar<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v18(&v21, v19);
  LODWORD(v25) = v24[0];
  Tensor.sum()();
  Tensor.scalar<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v18(&v21, v19);
  *&v26 = (*&v25 / (*v24 + 1.0e-12));
  v18(v21, v19);
  return *&v26;
}

uint64_t type metadata accessor for MLMultiArray()
{
  result = lazy cache variable for type metadata for MLMultiArray;
  if (!lazy cache variable for type metadata for MLMultiArray)
  {
    v1 = objc_opt_self(MLMultiArray);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for MLMultiArray = result;
  }

  return result;
}

uint64_t *static _MetricUtilities.precisionRecall(confusionMatrix:classLabels:)(uint64_t a1, uint64_t a2)
{
  v109 = a1;
  v95 = v2;
  v4 = type metadata accessor for Tensor(0);
  v93 = *(v4 - 8);
  v5 = *(v93 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v97 = &v88;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v100 = &v88;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v103 = &v88;
  v12 = alloca(v5);
  v13 = alloca(v5);
  v104 = &v88;
  v14 = alloca(v5);
  v15 = alloca(v5);
  v98 = &v88;
  v16 = alloca(v5);
  v17 = alloca(v5);
  v105 = &v88;
  v18 = alloca(v5);
  v19 = alloca(v5);
  v99 = &v88;
  v20 = alloca(v5);
  v21 = alloca(v5);
  v94 = *(a2 + 16);
  if (v94)
  {
    v112 = v4;
    v101 = &v88;

    v96 = a2;
    v22 = (a2 + 40);
    v23 = _swiftEmptyArrayStorage;
    v24 = 0;
    v107 = _swiftEmptyArrayStorage;
    v106 = _swiftEmptyArrayStorage;
    v102 = _swiftEmptyArrayStorage;
    do
    {
      v110 = v23;
      v90 = *(v22 - 1);
      v92 = v22;
      v25 = *v22;
      v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<TensorRangeExpression?>);
      v111 = v24;
      v27 = swift_allocObject(v26, 72, 7);
      v27[2] = 1;
      v27[3] = 2;
      v27[7] = &type metadata for Int;
      v27[8] = &protocol witness table for Int;
      v27[4] = v24;
      v91 = v25;

      v28 = v99;
      Tensor.subscript.getter(v27);
      v27;
      v29 = swift_allocObject(v26, 72, 7);
      LOBYTE(v27) = v29;
      v29[2] = 1;
      v29[3] = 2;
      v29[7] = &type metadata for Int;
      v29[8] = &protocol witness table for Int;
      v29[4] = v111;
      Tensor.subscript.getter(v29);
      v27;
      v108 = *(v93 + 8);
      v30 = v28;
      v31 = v112;
      v108(v30, v112);
      Tensor.sum(alongAxes:)(&outlined read-only object #0 of static _MetricUtilities.precisionRecall(confusionMatrix:classLabels:));
      v115 = v26;
      v32 = swift_allocObject(v26, 72, 7);
      LOBYTE(v27) = v32;
      v32[2] = 1;
      v32[3] = 2;
      v32[7] = &type metadata for Int;
      v32[8] = &protocol witness table for Int;
      v32[4] = 0;
      v33 = v98;
      Tensor.subscript.getter(v32);
      v27;
      v108(v33, v31);
      v34 = swift_allocObject(v26, 72, 7);
      LOBYTE(v27) = v34;
      v34[2] = 1;
      v34[3] = 2;
      v34[7] = &type metadata for Int;
      v34[8] = &protocol witness table for Int;
      v34[4] = v111;
      v35 = v104;
      Tensor.subscript.getter(v34);
      v27;
      v36 = v31;
      v37 = v31;
      v38 = v108;
      v108(v35, v37);
      v39 = v105;
      v40 = v103;
      static Tensor./ infix(_:_:)(v105, v103);
      v38(v40, v36);
      v38(v39, v36);
      v41 = swift_allocObject(v115, 72, 7);
      LOBYTE(v36) = v41;
      v41[2] = 1;
      v41[3] = 2;
      v41[7] = &type metadata for Int;
      v41[8] = &protocol witness table for Int;
      v42 = v111;
      v41[4] = v111;
      v43 = v99;
      Tensor.subscript.getter(v41);
      v36;
      v44 = swift_allocObject(v115, 72, 7);
      LOBYTE(v36) = v44;
      v44[2] = 1;
      v44[3] = 2;
      v44[7] = &type metadata for Int;
      v44[8] = &protocol witness table for Int;
      v44[4] = v42;
      Tensor.subscript.getter(v44);
      v36;
      v108(v43, v112);
      v45 = v98;
      Tensor.sum(alongAxes:)(&outlined read-only object #1 of static _MetricUtilities.precisionRecall(confusionMatrix:classLabels:));
      v46 = v115;
      v47 = swift_allocObject(v115, 72, 7);
      LOBYTE(v36) = v47;
      v47[2] = 1;
      v47[3] = 2;
      v47[7] = &type metadata for Int;
      v47[8] = &protocol witness table for Int;
      v47[4] = v111;
      Tensor.subscript.getter(v47);
      v36;
      v48 = v45;
      v49 = v108;
      v108(v48, v112);
      v50 = swift_allocObject(v46, 72, 7);
      LOBYTE(v36) = v50;
      v50[2] = 1;
      v50[3] = 2;
      v50[7] = &type metadata for Int;
      v50[8] = &protocol witness table for Int;
      v50[4] = 0;
      v51 = v104;
      Tensor.subscript.getter(v50);
      v36;
      v52 = v112;
      v49(v51, v112);
      v53 = v105;
      v54 = v103;
      static Tensor./ infix(_:_:)(v105, v103);
      v49(v54, v52);
      v49(v53, v52);
      v55 = swift_allocObject(v115, 72, 7);
      v55[2] = 1;
      v55[3] = 2;
      v55[7] = &type metadata for Int;
      v55[8] = &protocol witness table for Int;
      v55[4] = v111;
      v56 = v99;
      Tensor.subscript.getter(v55);
      v55;
      Tensor.sum()();
      v49(v56, v112);
      v57 = v102;
      if (!swift_isUniquelyReferenced_nonNull_native(v102))
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
      }

      v58 = v57[2];
      v59 = v97;
      if (v57[3] >> 1 <= v58)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57[3] >= 2uLL, v58 + 1, 1, v57);
      }

      v57[2] = v58 + 1;
      v60 = 2 * v58;
      v57[v60 + 4] = v90;
      v102 = v57;
      v57[v60 + 5] = v91;
      Tensor.scalar<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
      LODWORD(v115) = v113;
      v61 = v107;
      if (!swift_isUniquelyReferenced_nonNull_native(v107))
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
      }

      v62 = v61[2];
      if (v61[3] >> 1 <= v62)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61[3] >= 2uLL, v62 + 1, 1, v61);
      }

      v63 = *&v115;
      v61[2] = v62 + 1;
      v107 = v61;
      *&v61[v62 + 4] = v63;
      Tensor.scalar<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
      LODWORD(v115) = v113;
      v64 = v106;
      if (!swift_isUniquelyReferenced_nonNull_native(v106))
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
      }

      v65 = v64[2];
      if (v64[3] >> 1 <= v65)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v64[3] >= 2uLL, v65 + 1, 1, v64);
      }

      v66 = *&v115;
      v64[2] = v65 + 1;
      v106 = v64;
      *&v64[v65 + 4] = v66;
      Tensor.scalar<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
      v67 = _mm_cvtsi32_si128(v113);
      if ((_mm_cvtsi128_si32(v67) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        BUG();
      }

      if (*v67.i32 <= -9.2233731e18)
      {
        BUG();
      }

      if (*v67.i32 >= 9.223372e18)
      {
        BUG();
      }

      LODWORD(v115) = v67.i32[0];
      v68 = v110;
      if (!swift_isUniquelyReferenced_nonNull_native(v110))
      {
        v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68[2] + 1, 1, v68);
      }

      v69 = v68[2];
      v70 = *&v115;
      if (v68[3] >> 1 <= v69)
      {
        v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68[3] >= 2uLL, v69 + 1, 1, v68);
        v70 = *&v115;
        v68 = v77;
      }

      v110 = v68;
      v71 = v111 + 1;
      v68[2] = v69 + 1;
      v72 = v71;
      v68[v69 + 4] = v70;
      v73 = v59;
      v74 = v112;
      v75 = v108;
      v108(v73, v112);
      v75(v100, v74);
      v76 = v74;
      v23 = v110;
      v75(v101, v76);
      v22 = v92 + 2;
      v24 = v72;
    }

    while (v94 != v72);
    v96;
    v78 = v102;
  }

  else
  {
    v78 = _swiftEmptyArrayStorage;
    v107 = _swiftEmptyArrayStorage;
    v106 = _swiftEmptyArrayStorage;
    v110 = _swiftEmptyArrayStorage;
  }

  v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValueConvertible)>);
  inited = swift_initStackObject(v79, v89);
  *(inited + 16) = 4;
  *(inited + 24) = 8;
  *(inited + 32) = 0x7373616C63;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  *(inited + 80) = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &demangling cache variable for type metadata for [String]);
  *(inited + 48) = v78;
  *(inited + 88) = 0x6F69736963657270;
  *(inited + 96) = 0xE90000000000006ELL;
  v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  *(inited + 128) = v81;
  v82 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [Double] and conformance <A> [A], &demangling cache variable for type metadata for [Double]);
  *(inited + 136) = v82;
  *(inited + 104) = v107;
  *(inited + 144) = 0x6C6C61636572;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 184) = v81;
  *(inited + 192) = v82;
  *(inited + 160) = v106;
  strcpy((inited + 200), "actual_count");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  *(inited + 248) = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], &demangling cache variable for type metadata for [Int]);
  *(inited + 216) = v110;
  v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
  v84 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v83, &protocol witness table for String);
  result = MLDataTable.init(dictionary:)(v84);
  if (!v3)
  {
    result = v113;
    v86 = v114;
    v87 = v95;
    *v95 = v113;
    *(v87 + 8) = v86;
  }

  return result;
}

uint64_t _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:weights:)(void (*a1)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  v58 = v3;
  v63 = a3;
  v66 = a2;
  v69 = a1;
  v67 = type metadata accessor for FloatingPointRoundingRule(0);
  v64 = *(v67 - 8);
  v4 = *(v64 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v53 = &v52;
  v68 = type metadata accessor for ScalarType(0);
  v65 = *(v68 - 8);
  v7 = *(v65 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v54 = &v52;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = type metadata accessor for Tensor(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = alloca(v15);
  v19 = alloca(v15);
  v70 = &v52;
  v20 = alloca(v15);
  v21 = alloca(v15);
  outlined init with copy of Tensor?(v63, &v52);
  if (__swift_getEnumTagSinglePayload(&v52, 1, v13) == 1)
  {
    outlined destroy of Tensor?(&v52);
    return _MetricUtilities.ConfusionMatrixMeter.add(predicted:target:)(v69, v66);
  }

  else
  {
    v59 = &v52;
    v56 = v14;
    (*(v14 + 32))(&v52, &v52, v13);
    v60 = &v52;
    Tensor.argmax(squeezingAxis:)(1);
    v23 = v54;
    static ScalarType.int.getter();
    v61 = enum case for FloatingPointRoundingRule.towardZero(_:);
    v24 = v64;
    v55 = *(v64 + 104);
    v25 = v53;
    v62 = v13;
    v26 = v67;
    v55(v53);
    v27 = v60;
    Tensor.cast(to:roundingRule:)(v23, v25);
    v64 = *(v24 + 8);
    (v64)(v25, v26);
    v65 = *(v65 + 8);
    (v65)(v23, v68);
    v28 = *(v56 + 8);
    v29 = v62;
    v28(v27, v62);
    v69 = v28;
    v30 = v70;
    v63 = Tensor.scalars<A>(as:)(&type metadata for Int, &type metadata for Int, &protocol witness table for Int);
    v28(v30, v29);
    v31 = v60;
    Tensor.argmax(squeezingAxis:)(1);
    static ScalarType.int.getter();
    v32 = v67;
    (v55)(v25, v61, v67);
    Tensor.cast(to:roundingRule:)(v23, v25);
    (v64)(v25, v32);
    (v65)(v23, v68);
    v33 = v31;
    v34 = v62;
    v35 = v69;
    v69(v33, v62);
    v36 = v70;
    v66 = Tensor.scalars<A>(as:)(&type metadata for Int, &type metadata for Int, &protocol witness table for Int);
    v35(v36, v34);
    v37 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
    v38 = *(v37 + 16);
    if (v38)
    {
      v57 = _swiftEmptyArrayStorage;
      v39 = 0;
      v68 = v37;
      v70 = v38;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
      v40 = v70;
      v41 = v68;
      v42 = v57;
      v43 = v57[2];
      v44 = 1;
      do
      {
        v45 = *(v41 + 4 * v39 + 32);
        v57 = v42;
        v46 = v42[3];
        if (v46 >> 1 <= v43)
        {
          v47 = v44;
          *&v67 = v45;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v46 >= 2, v43 + 1, v44);
          v45 = *&v67;
          v44 = v47;
          v40 = v70;
          v41 = v68;
          v42 = v57;
        }

        v39 = (v39 + 1);
        v42[2] = v43 + 1;
        *(v42 + v43++ + 32) = v45 == 1.0;
      }

      while (v40 != v39);
      v41;
    }

    else
    {
      v37;
      v42 = _swiftEmptyArrayStorage;
    }

    v48 = v63;
    v49 = specialized Sequence.compactMap<A>(_:)(v63, v42);
    v48;

    v50 = v66;
    v51 = specialized Sequence.compactMap<A>(_:)(v66, v42);
    v42;
    v50;
    _MetricUtilities.ConfusionMatrixMeter.add(predictedIds:targetIds:)(v49, v51);
    v49;
    v51;
    return (v69)(v59, v62);
  }
}

void *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, void *a2, char *a3)
{
  result = a2;
  if (&__src[8 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, 8 * a2);
  }

  return result;
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2, a3);
}

{
  result = a2;
  if (&__src[4 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, 4 * a2);
  }

  return result;
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2, a3);
}

void *specialized Sequence.reversed()(uint64_t a1, uint64_t a2)
{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v3 = v2[2];
  if (v3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = v3 - 1;
    v7 = 0;
    v11 = v5;
    do
    {
      if (v7 != v6)
      {
        v8 = v2[2];
        if (v7 >= v8)
        {
          BUG();
        }

        if (v6 >= v8)
        {
          BUG();
        }

        v9 = v2[v7 + 4];
        v10 = v2[v6 + 4];
        if (!swift_isUniquelyReferenced_nonNull_native(v2))
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        }

        v2[v7 + 4] = v10;
        v2[v6 + 4] = v9;
        v5 = v11;
      }

      ++v7;
      --v6;
    }

    while (v5 != v7);
  }

  return v2;
}

int64_t *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v2 <= 0)
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v4 = swift_allocObject(v3, 8 * v2 + 32, 7);
    v5 = (_swift_stdlib_malloc_size(v4) - 32);
    v4[2] = v2;
    v4[3] = 2 * (v5 / 8);
  }

  if (specialized Sequence._copySequenceContents(initializing:)(v7, v4 + 4, v2, a1, a2) != v2)
  {
    BUG();
  }

  return v4;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(int64_t *a1, int64_t *a2, unint64_t a3, int64_t a4, int64_t a5)
{
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
LABEL_6:
    v5 = a4;
    goto LABEL_7;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  if (a5 == a4)
  {
LABEL_5:
    a3 = 0;
    goto LABEL_6;
  }

  if (a5 < a4)
  {
    BUG();
  }

  if (a5 <= a4)
  {
    BUG();
  }

  v5 = a4 + 1;
  *a2 = a4;
  if (a3 != 1)
  {
    if (v5 == a5)
    {
      a3 = 1;
      v5 = a5;
    }

    else
    {
      if (v5 >= a5)
      {
        BUG();
      }

      a2[1] = v5;
      if (a3 == 2)
      {
        v5 = a4 + 2;
      }

      else
      {
        v7 = 2;
        while (1)
        {
          if (v7 >= a3)
          {
            BUG();
          }

          v8 = v7 + 1;
          if (__OFADD__(1, v7))
          {
            BUG();
          }

          if (!(v7 + a4 - a5))
          {
            break;
          }

          if ((a4 + v7) >= a5)
          {
            BUG();
          }

          a2[v7] = a4 + v7;
          ++v7;
          if (v8 == a3)
          {
            v5 = a4 + v8;
            goto LABEL_7;
          }
        }

        v5 = a5;
        a3 = a5 - a4;
      }
    }
  }

LABEL_7:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v5;
  return a3;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3);
    *a1 = result;
  }

  return result;
}

uint64_t destroy for MLActivityClassifier.PersistentParameters(uint64_t a1)
{
  outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
  v1 = *(a1 + 24);
  if (v1 != -1)
  {
    outlined consume of Result<_DataTable, Error>(*(a1 + 16), v1);
  }

  return *(a1 + 32);
}

uint64_t initializeWithCopy for MLActivityClassifier.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  outlined copy of Result<_DataTable, Error>(*a2, v3);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = (a2 + 16);
  v5 = *(a2 + 24);
  if (v5 == -1)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 16) = *v4;
  }

  else
  {
    v6 = *v4;
    outlined copy of Result<_DataTable, Error>(*v4, v5);
    *(a1 + 16) = v6;
    *(a1 + 24) = v5 & 1;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for MLActivityClassifier.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Result<_DataTable, Error>(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of Result<_DataTable, Error>(v6, v7);
  v8 = (a1 + 16);
  v9 = (a2 + 16);
  v10 = *(a2 + 24);
  if (*(a1 + 24) == 0xFF)
  {
    if (v10 == -1)
    {
      *(a1 + 24) = *(a2 + 24);
      *v8 = *v9;
    }

    else
    {
      v14 = *v9;
      outlined copy of Result<_DataTable, Error>(*v9, v10);
      *(a1 + 16) = v14;
      *(a1 + 24) = v10 & 1;
    }
  }

  else if (v10 == -1)
  {
    outlined destroy of MLDataTable(a1 + 16);
    *v8 = *v9;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v11 = *v9;
    outlined copy of Result<_DataTable, Error>(*v9, v10);
    v12 = *(a1 + 16);
    *(a1 + 16) = v11;
    v13 = *(a1 + 24);
    *(a1 + 24) = v10 & 1;
    outlined consume of Result<_DataTable, Error>(v12, v13);
  }

  v15 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  v15;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for MLActivityClassifier.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of Result<_DataTable, Error>(v5, v6);
  v7 = (a1 + 16);
  v8 = (a2 + 16);
  v9 = *(a1 + 24);
  if (v9 == -1)
  {
    *(a1 + 24) = *(a2 + 24);
    *v7 = *v8;
  }

  else
  {
    v10 = *(a2 + 24);
    if (v10 == -1)
    {
      outlined destroy of MLDataTable(a1 + 16);
      *v7 = *v8;
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      v11 = *(a1 + 16);
      *(a1 + 16) = *v8;
      *(a1 + 24) = v10 & 1;
      outlined consume of Result<_DataTable, Error>(v11, v9);
    }
  }

  v12 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  v12;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLActivityClassifier.PersistentParameters(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 32) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 32) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLActivityClassifier.PersistentParameters(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 64) = 0;
    }

    if (a2)
    {
      *(a1 + 32) = 2 * (a2 - 1);
    }
  }
}

NSURL *MLActivityClassifier.PersistentParameters.init(sessionDirectory:)(uint64_t a1)
{
  v65 = v2;
  v59 = v1;
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v63 = &v58;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v64 = &v58;
  v10 = alloca(v5);
  v11 = alloca(v5);
  URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
  v12 = v65;
  v13 = Data.init(contentsOf:options:)(&v58, 0);
  v65 = v12;
  if (v12)
  {
    v15 = *(v4 + 8);
    v16 = 0;
    (v15)(a1, v3);
    (v15)(&v58, v3);
    goto LABEL_21;
  }

  v71 = a1;
  v17 = *(v4 + 8);
  v18 = v14;
  v19 = v13;
  v66 = v17;
  v17(&v58, v3);
  v20 = objc_opt_self(NSPropertyListSerialization);
  v68 = v19;
  v67 = v18;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v114[0] = 0;
  v22 = [v20 propertyListWithData:isa options:0 format:0 error:v114];
  v23 = v22;

  v24 = v114[0];
  v15 = v3;
  if (!v23)
  {
    v36 = v24;
    _convertNSErrorToError(_:)(v24);

    swift_willThrow();
    v16 = 0;
    outlined consume of Data._Representation(v68, v67);
    v66(v71, v3);
    goto LABEL_21;
  }

  _bridgeAnyObjectToAny(_:)(v23);
  swift_unknownObjectRelease(v23);
  outlined init with copy of Any(v131, v114);
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(__src, v114, &type metadata for Any + 8, v25, 6))
  {
    v15 = "parameters.plist" + 0x8000000000000000;
    v37 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v16 = 0;
    swift_allocError(&type metadata for MLCreateError, v37, 0, 0);
    *v38 = 0xD000000000000037;
    *(v38 + 8) = "parameters.plist" + 0x8000000000000000;
    *(v38 + 16) = 0;
    *(v38 + 32) = 0;
    *(v38 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v68, v67);
    v66(v71, v3);
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1Tm(v131);
    goto LABEL_21;
  }

  v26 = *&__src[0];
  specialized Dictionary.subscript.getter(0xD000000000000012, (" precision recall." + 0x8000000000000000), *&__src[0]);
  if (!v115)
  {
    v26;
    outlined destroy of Any?(v114);
LABEL_19:
    v15 = "labeled_directories" + 0x8000000000000000;
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    *v40 = 0xD00000000000003FLL;
    *(v40 + 8) = "labeled_directories" + 0x8000000000000000;
    *(v40 + 16) = 0;
    *(v40 + 32) = 0;
    *(v40 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v68, v67);
    v66(v71, v3);
    v16 = 0;
    goto LABEL_20;
  }

  v69 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  if (!swift_dynamicCast(__src, v114, &type metadata for Any + 8, v27, 6))
  {
    v69;
    goto LABEL_19;
  }

  v28 = *&__src[0];

  v29 = v69;
  specialized Dictionary.subscript.getter(0xD000000000000011, ("featureColumnNames" + 0x8000000000000000), v69);
  v70 = v28;
  if (!v115)
  {
    v42 = v29;
    v43 = v15;
    v28;
    v44 = v42;
LABEL_28:
    v44;
    v46 = v114;
LABEL_29:
    outlined destroy of Any?(v46);
LABEL_30:
    v31 = v71;
    goto LABEL_31;
  }

  v30 = swift_dynamicCast(__src, v114, &type metadata for Any + 8, &type metadata for Int, 6);
  v31 = v71;
  if (!v30)
  {
    v43 = v15;
    v70;
    v45 = v69;
LABEL_26:
    v45;
LABEL_31:
    v47 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v47, 0, 0);
    *v48 = 0xD00000000000003FLL;
    *(v48 + 8) = "labeled_directories" + 0x8000000000000000;
    *(v48 + 16) = 0;
    *(v48 + 32) = 0;
    *(v48 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v68, v67);
    v66(v31, v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v131);
    v16 = 1;
    LOBYTE(v15) = v70;
    goto LABEL_21;
  }

  v61 = *&__src[0];
  v32 = v69;
  specialized Dictionary.subscript.getter(0x7A69536863746162, 0xE900000000000065, v69);
  if (!v115)
  {
    v43 = v15;
    v70;
    v44 = v32;
    goto LABEL_28;
  }

  if (!swift_dynamicCast(__src, v114, &type metadata for Any + 8, &type metadata for Int, 6))
  {
    v43 = v15;
    v70;
    v69;
    goto LABEL_30;
  }

  *&v62 = *&__src[0];
  v33 = v69;
  specialized Dictionary.subscript.getter(0xD000000000000014, ("maximumIterations" + 0x8000000000000000), v69);
  v33;
  if (!v130)
  {
    v43 = v15;
    v70;
    v46 = v129;
    goto LABEL_29;
  }

  v34 = swift_dynamicCast(&v73, v129, &type metadata for Any + 8, &type metadata for Int, 6);
  v31 = v71;
  if (!v34)
  {
    v43 = v15;
    v45 = v70;
    goto LABEL_26;
  }

  v69 = v15;
  *(&v62 + 1) = v73;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  v16 = 1;
  LOBYTE(__src[0]) = 1;
  *(&__src[0] + 1) = 44;
  __src[1] = 0xE100000000000000;
  *&__src[2] = 0xE000000000000000;
  *(&__src[2] + 1) = 92;
  *&__src[3] = 0xE100000000000000;
  BYTE8(__src[3]) = 1;
  *&__src[4] = 34;
  *(&__src[4] + 1) = 0xE100000000000000;
  LOBYTE(__src[5]) = 1;
  *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  *&__src[6] = 10;
  *(&__src[6] + 1) = 0xE100000000000000;
  __src[7] = 0;
  LOBYTE(__src[8]) = 1;
  *(&__src[8] + 1) = 0;
  __dst[0] = 1;
  LOBYTE(v114[0]) = 1;
  v114[1] = &stru_20 + 12;
  v114[2] = 0xE100000000000000;
  v115 = 0;
  v116 = 0xE000000000000000;
  v117 = 92;
  v118 = 0xE100000000000000;
  v119 = 1;
  v120 = 34;
  v121 = 0xE100000000000000;
  v122 = 1;
  v123 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  v124 = 10;
  v125 = 0xE100000000000000;
  v126 = 0;
  v127 = 1;
  v128 = 0;
  outlined retain of MLDataTable.ParsingOptions(__src);
  outlined release of MLDataTable.ParsingOptions(v114);
  memcpy(__dst, __src, sizeof(__dst));
  v35 = v65;
  MLDataTable.init(contentsOf:options:)(v64, __dst);
  if (!v35)
  {
    v72 = v112;
    v60 = v111;
    LODWORD(v64) = v112;
    outlined copy of Result<_DataTable, Error>(v111, v112);
    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
    LOBYTE(v92[0]) = 1;
    *(&v92[0] + 1) = 44;
    v92[1] = 0xE100000000000000;
    *&v92[2] = 0xE000000000000000;
    *(&v92[2] + 1) = 92;
    *&v92[3] = 0xE100000000000000;
    BYTE8(v92[3]) = 1;
    *&v92[4] = 34;
    *(&v92[4] + 1) = 0xE100000000000000;
    LOBYTE(v92[5]) = 1;
    *(&v92[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    *&v92[6] = 10;
    *(&v92[6] + 1) = 0xE100000000000000;
    v92[7] = 0;
    LOBYTE(v92[8]) = 1;
    *(&v92[8] + 1) = 0;
    v89[0] = 1;
    v93[0] = 1;
    v94 = 44;
    v95 = 0xE100000000000000;
    v96 = 0;
    v97 = 0xE000000000000000;
    v98 = 92;
    v99 = 0xE100000000000000;
    v100 = 1;
    v101 = 34;
    v102 = 0xE100000000000000;
    v103 = 1;
    v104 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v105 = 10;
    v106 = 0xE100000000000000;
    v107 = 0;
    v108 = 1;
    v109 = 0;
    outlined retain of MLDataTable.ParsingOptions(v92);
    outlined release of MLDataTable.ParsingOptions(v93);
    memcpy(v89, v92, sizeof(v89));
    MLDataTable.init(contentsOf:options:)(v63, v89);
    v65 = 0;
    outlined consume of Data._Representation(v68, v67);
    v49 = v90;
    v50 = v91;
    v66(v71, v69);
    __swift_destroy_boxed_opaque_existential_1Tm(v131);
    outlined copy of MLDataTable?(v49, v50);
    outlined consume of MLDataTable?(0, 255);
    v51 = v60;
    *&v76 = v60;
    v63 = v49;
    BYTE8(v76) = v64;
    *&v77 = v49;
    BYTE8(v77) = v50;
    LOBYTE(v49) = v50;
    v52 = v70;
    *&v78 = v70;
    *(&v78 + 1) = v61;
    v79 = v62;
    outlined retain of MLActivityClassifier.PersistentParameters(&v76);
    v52;
    v53 = v63;
    outlined consume of MLDataTable?(v63, v49);
    outlined consume of Result<_DataTable, Error>(v51, v64);
    v54 = v76;
    v55 = v77;
    v56 = v78;
    v57 = v59;
    v59[3] = v79;
    v57[2] = v56;
    v57[1] = v55;
    *v57 = v54;
    v80 = v51;
    v81 = v72;
    *v82 = *v75;
    *&v82[3] = *&v75[3];
    v83 = v53;
    v84 = v49;
    *v85 = *v74;
    *&v85[3] = *&v74[3];
    v86 = v70;
    v87 = v61;
    v88 = v62;
    outlined release of MLActivityClassifier.PersistentParameters(&v80);
    return __stack_chk_guard;
  }

  outlined consume of Data._Representation(v68, v67);
  LOBYTE(v15) = v70;
  v70;
  v66(v71, v69);
  __swift_destroy_boxed_opaque_existential_1Tm(v131);
LABEL_21:
  outlined consume of MLDataTable?(0, 255);
  if (v16)
  {
    v15;
  }

  return __stack_chk_guard;
}

uint64_t MLActivityClassifier.PersistentParameters.init(trainingData:validationData:featureColumnNames:labelColumnName:recordingFileColumn:modelParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a3;
  v41 = v8;
  a5;
  a7;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *a2;
  v14 = *(a2 + 8);
  v46 = v12 & 1;
  v43 = v12;
  outlined copy of Result<_DataTable, Error>(v11, v12);
  v42 = v13;
  outlined copy of MLDataTable?(v13, v14);
  outlined consume of MLDataTable?(0, 255);
  v15 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v16 = v15[6];
  if (*(a8 + v16 + 8))
  {
    v17 = 10;
  }

  else
  {
    v17 = *(a8 + v16);
  }

  v44 = v17;
  v18 = v15[7];
  if (*(a8 + v18 + 8))
  {
    v19 = 32;
  }

  else
  {
    v19 = *(a8 + v18);
  }

  *&v45 = v19;
  v20 = v15[8];
  if (*(a8 + v20 + 8))
  {
    v21 = 100;
  }

  else
  {
    v21 = *(a8 + v20);
  }

  *(&v45 + 1) = v21;
  v22 = v40;

  outlined destroy of MLActivityClassifier.ModelParameters(a8);
  *&v36 = v11;
  BYTE8(v36) = v12 & 1;
  v23 = v42;
  *&v37 = v42;
  BYTE8(v37) = v14;
  *&v38 = v40;
  *(&v38 + 1) = v44;
  v39 = v45;
  outlined retain of MLActivityClassifier.PersistentParameters(&v36);
  v22;
  outlined consume of MLDataTable?(v23, v14);
  outlined consume of Result<_DataTable, Error>(v11, v43);
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v41;
  v41[3] = v39;
  v27[2] = v26;
  v27[1] = v25;
  *v27 = v24;
  v29 = v11;
  v30 = v46;
  v31 = v23;
  v32 = v14;
  v33 = v22;
  v34 = v44;
  v35 = v45;
  return outlined release of MLActivityClassifier.PersistentParameters(&v29);
}

NSURL *MLActivityClassifier.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v32 = v1;
  v37 = a1;
  v40 = type metadata accessor for URL(0);
  v38 = *(v40 - 8);
  v3 = *(v38 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v35 = &v31;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v33 = &v31;
  v8 = alloca(v3);
  v9 = alloca(v3);
  v42 = &v31;
  v34 = *v2;
  v43 = *(v2 + 8);
  v36 = *(v2 + 16);
  v44 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v39 = *(v2 + 48);
  v41 = *(v2 + 56);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v12, v47);
  inited[2] = 4;
  inited[3] = 8;
  inited[4] = 0xD000000000000012;
  inited[5] = " precision recall." + 0x8000000000000000;
  inited[9] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  inited[6] = v10;
  inited[10] = 0xD000000000000011;
  inited[11] = "featureColumnNames" + 0x8000000000000000;
  inited[15] = &type metadata for Int;
  inited[12] = v11;
  inited[16] = 0x7A69536863746162;
  inited[17] = 0xE900000000000065;
  inited[21] = &type metadata for Int;
  inited[18] = v39;
  inited[22] = 0xD000000000000014;
  inited[23] = "maximumIterations" + 0x8000000000000000;
  inited[27] = &type metadata for Int;
  inited[24] = v41;

  LOBYTE(inited) = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v14 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  inited;
  v45 = 0;
  v16 = [v14 dataWithPropertyList:isa format:200 options:0 error:&v45];
  v17 = v16;

  v18 = v45;
  if (v17)
  {
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v17);
    v41 = v20;

    v21 = v42;
    URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
    v22 = v21;
    v23 = v41;
    v24 = v32;
    Data.write(to:options:)(v22, 0, v19, v41);
    if (v24)
    {
      (*(v38 + 8))(v42, v40);
      outlined consume of Data._Representation(v19, v23);
    }

    else
    {
      v39 = v19;
      v26 = v42;
      v42 = *(v38 + 8);
      (v42)(v26, v40);
      v45 = v34;
      LOBYTE(v46) = v43 & 1;
      outlined copy of Result<_DataTable, Error>(v34, v43);
      v27 = v33;
      URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
      MLDataTable.write(to:)(v27);
      (v42)(v27, v40);
      outlined consume of Result<_DataTable, Error>(v45, v46);
      v28 = v39;
      if (v44 == -1)
      {
        outlined consume of Data._Representation(v39, v41);
      }

      else
      {
        v45 = v36;
        LOBYTE(v46) = v44 & 1;
        outlined copy of MLDataTable?(v36, v44);
        v29 = v35;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
        MLDataTable.write(to:)(v29);
        outlined consume of Data._Representation(v28, v41);
        (v42)(v29, v40);
        outlined consume of Result<_DataTable, Error>(v45, v46);
      }
    }
  }

  else
  {
    v25 = v18;
    _convertNSErrorToError(_:)(v18);

    swift_willThrow();
  }

  return __stack_chk_guard;
}

uint64_t outlined destroy of MLActivityClassifier.ModelParameters(uint64_t a1)
{
  v1 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML23MLRandomForestRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML23ijk3V15lm76V13configuration10validationAE0A12MLComponents24BoostedTreeConfigurationV_11c7Data0O5e12VSgtcfcAE010N21O0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(uint64_t a1)
{
  v21 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v19 = &v17;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v17, &demangling cache variable for type metadata for DataFrame?);
  if (__swift_getEnumTagSinglePayload(&v17, 1, v2) == 1)
  {
    v9 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
    v10 = v21;
    v11 = 1;
    v12 = v9;
  }

  else
  {
    v13 = v19;
    v14 = v18;
    (*(v18 + 32))(v19, &v17, v2);
    v15 = v21;
    (*(v14 + 16))(v21, v13, v2);
    v20 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v15, v20, 2);
    (*(v14 + 8))(v13, v2);
    v10 = v15;
    v11 = 0;
    v12 = v20;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t MLRandomForestRegressor.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v18 = a4;
  v19 = a3;
  v9 = v8;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v10 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 104) = 0;
  *(v9 + 88) = 0;
  *(v9 + 32) = a2;
  *(v9 + 40) = v19;
  *(v9 + 48) = v23;
  *(v9 + 56) = v22;
  *(v9 + 64) = v18;
  *(v9 + 72) = v21;
  *(v9 + 80) = v20;
  outlined init with copy of MLRandomForestRegressor.ModelParameters.ValidationData(a1, &v16);
  v17[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(&v16, boxed_opaque_existential_0);
  outlined assign with take of Any?(v17, v9);
  return outlined destroy of MLRandomForestRegressor.ModelParameters.ValidationData(a1);
}

uint64_t MLRandomForestRegressor.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v6, &demangling cache variable for type metadata for Any?);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t MLRandomForestRegressor.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)(double a1, double a2, double a3, double a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a5;
  *(v8 + 16) = 0;
  *v8 = 0;
  *(v8 + 104) = 0;
  v10 = *(a5 + 8);
  *(v8 + 88) = 0;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
  *(v8 + 64) = a8;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  v12 = v9;
  v13 = v10;
  return MLRandomForestRegressor.ModelParameters.validationData.setter(&v12);
}

uint64_t MLRandomForestRegressor.ModelParameters.init(configuration:validation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLRandomForestRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v18 = v15;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 88) = 0;
  *(v3 + 104) = 0;
  *(v3 + 32) = BoostedTreeConfiguration.maximumDepth.getter();
  *(v3 + 40) = BoostedTreeConfiguration.maximumIterations.getter(0);
  *(v3 + 48) = BoostedTreeConfiguration.minimumLossReduction.getter();
  *(v3 + 56) = BoostedTreeConfiguration.minimumChildWeight.getter();
  *(v3 + 64) = BoostedTreeConfiguration.randomSeed.getter();
  *(v3 + 72) = BoostedTreeConfiguration.rowSubsample.getter();
  *(v3 + 80) = BoostedTreeConfiguration.columnSubsample.getter();
  v17 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML23MLRandomForestRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML23ijk3V15lm76V13configuration10validationAE0A12MLComponents24BoostedTreeConfigurationV_11c7Data0O5e12VSgtcfcAE010N21O0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(a2);
  if (__swift_getEnumTagSinglePayload(v15, 1, v7) == 1)
  {
    v11 = v18;
    swift_storeEnumTagMultiPayload(v18, v7, 3);
    if (__swift_getEnumTagSinglePayload(v15, 1, v7) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v15, &demangling cache variable for type metadata for MLRandomForestRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    v11 = v18;
    outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(v15, v18);
  }

  v16[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(v11, boxed_opaque_existential_0);
  outlined assign with take of Any?(v16, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for DataFrame?);
  v13 = type metadata accessor for BoostedTreeConfiguration(0);
  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t MLRandomForestRegressor.ModelParameters.description.getter()
{
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v0._object;
  String.append(_:)(v0);
  object;
  v2._object = 0xE100000000000000;
  v2._countAndFlagsBits = 10;
  String.append(_:)(v2);
  _StringGuts.grow(_:)(19);
  0;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v4 = v3._object;
  String.append(_:)(v3);
  v4;
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v2._countAndFlagsBits = 0xD000000000000010;
  v2._object = "ansformer have different types." + 0x8000000000000000;
  String.append(_:)(v2);
  ("ansformer have different types." + 0x8000000000000000);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v2._object = "Max Iterations: " + 0x8000000000000000;
  v2._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v5 = v13._object;
  String.append(_:)(v13);
  v5;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v2._object = "Min Loss Reduction: " + 0x8000000000000000;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v6 = v13._object;
  String.append(_:)(v13);
  v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v13._object;
  strcpy(&v13, "Random Seed: ");
  HIWORD(v13._object) = -4864;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v8 = v7._object;
  String.append(_:)(v7);
  v8;
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v9 = v13._object;
  String.append(_:)(v13);
  v9;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v2._countAndFlagsBits = 0x7362755320776F52;
  v2._object = 0xEF203A656C706D61;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v10 = v13._object;
  String.append(_:)(v13);
  v10;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v2._object = "Min Child Weight: " + 0x8000000000000000;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v11 = v13._object;
  String.append(_:)(v13);
  v11;
  return 0x747065442078614DLL;
}

uint64_t MLRandomForestRegressor.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v9, &demangling cache variable for type metadata for Any?);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLRandomForestRegressor.ModelParameters.ValidationData.table.getter(a1);
  return outlined destroy of MLRandomForestRegressor.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLRandomForestRegressor.ModelParameters.validationData : MLRandomForestRegressor.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLRandomForestRegressor.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLRandomForestRegressor.ModelParameters.validationData : MLRandomForestRegressor.ModelParameters(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLRandomForestRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLRandomForestRegressor.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
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
  outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18);
}

uint64_t (*MLRandomForestRegressor.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLRandomForestRegressor.ModelParameters.validationData.getter(a2);
  return MLRandomForestRegressor.ModelParameters.validationData.modify;
}

uint64_t MLRandomForestRegressor.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v6 = *a1;
  v7 = v3;
  if ((a2 & 1) == 0)
  {
    return MLRandomForestRegressor.ModelParameters.validationData.setter(&v6);
  }

  v4 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLRandomForestRegressor.ModelParameters.validationData.setter(&v6);
  return outlined consume of MLDataTable?(v2, v4);
}

uint64_t key path setter for MLRandomForestRegressor.ModelParameters.validation : MLRandomForestRegressor.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLRandomForestRegressor.ModelParameters.ValidationData(a1, v6);
  return MLRandomForestRegressor.ModelParameters.validation.setter(v6);
}

uint64_t MLRandomForestRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1);
}

uint64_t outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLRandomForestRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

void (*MLRandomForestRegressor.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, (v2 + 2), &demangling cache variable for type metadata for Any?);
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLRandomForestRegressor.ModelParameters.validation.modify;
}

void MLRandomForestRegressor.ModelParameters.validation.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[19];
  v4 = (*a1)[18];
  v8 = (*a1)[16];
  v5 = (*a1)[17];
  if (a2)
  {
    outlined init with copy of MLRandomForestRegressor.ModelParameters.ValidationData(v3, v4);
    v2[11] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(v4, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v8);
    outlined destroy of MLRandomForestRegressor.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLRandomForestRegressor.ModelParameters.ValidationData(v3, v7);
    outlined assign with take of Any?((v2 + 12), v8);
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t MLRandomForestRegressor.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLRandomForestRegressor.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t initializeWithCopy for MLRandomForestRegressor.ModelParameters(uint64_t a1, __int128 *a2)
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
  *(a1 + 64) = a2[4];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = a2[6];
  return a1;
}

uint64_t assignWithCopy for MLRandomForestRegressor.ModelParameters(uint64_t a1, __int128 *a2)
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
  *(a1 + 64) = a2[4];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = a2[6];
  return a1;
}

uint64_t assignWithTake for MLRandomForestRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v2 = *a2;
  *(a1 + 16) = a2[1];
  *a1 = v2;
  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 13);
  return a1;
}

uint64_t static Conv2D.loadLayer(from:layerName:)(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v119[0] = v6;
  v119[1] = v5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v128 = v119;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v131 = v119;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v134 = COERCE_DOUBLE(v119);
  v137 = type metadata accessor for Tensor(0);
  v126 = *(v137 - 8);
  v17 = *(v126 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v127 = v119;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v130 = v119;
  v132 = type metadata accessor for TensorShape(0);
  v133 = *(v132 - 8);
  v22 = *(v133 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v135 = COERCE_DOUBLE(v119);
  v25 = alloca(v22);
  v26 = alloca(v22);
  v125 = v119;
  v145 = *&a2;
  v143 = *&a2;
  v144 = a3;

  v27._countAndFlagsBits = 0x7468676965772ELL;
  v27._object = 0xE700000000000000;
  String.append(_:)(v27);
  v28 = v144;
  *&v29 = COERCE_DOUBLE(specialized Dictionary.subscript.getter(*&v143, v144, a1));
  v28;
  if (*&v29 == 0.0)
  {
    v143 = 0.0;
    v144 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);
    v64 = v144;

    v64;
    v143 = v145;
    v144 = a3;
    v65._object = "predictionWindowSize" + 0x8000000000000000;
    v65._countAndFlagsBits = 0xD000000000000025;
LABEL_27:
    String.append(_:)(v65);
    v71 = v143;
    v72 = v144;
    v73 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v73, 0, 0);
    *v74 = v71;
    *(v74 + 8) = v72;
    *(v74 + 16) = 0;
    *(v74 + 32) = 0;
    *(v74 + 48) = 2;
    return swift_willThrow();
  }

  v142 = v29;
  v141 = a1;
  v143 = v145;
  v144 = a3;

  v30._countAndFlagsBits = 0x2E7468676965772ELL;
  v30._object = 0xED00006570616873;
  String.append(_:)(v30);
  v31 = v144;
  v32 = v141;
  *&v33 = COERCE_DOUBLE(specialized Dictionary.subscript.getter(*&v143, v144, v141));
  v31;
  if (*&v33 == 0.0)
  {
    v142;
    v143 = 0.0;
    v144 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v66 = v144;

    v66;
    v143 = v145;
    v144 = a3;
    v65._object = "d in state dictionary" + 0x8000000000000000;
    v65._countAndFlagsBits = 0xD00000000000002BLL;
    goto LABEL_27;
  }

  v140 = *&v33;
  v143 = v145;
  v144 = a3;
  v139 = a3;

  v34._countAndFlagsBits = 0x736564697274732ELL;
  v34._object = 0xE800000000000000;
  String.append(_:)(v34);
  v35 = v144;
  v36 = specialized Dictionary.subscript.getter(*&v143, v144, v32);
  LOBYTE(v34._countAndFlagsBits) = v35;
  v37 = LOBYTE(v140);
  v34._countAndFlagsBits;
  v38 = v142;
  if (!v36)
  {
LABEL_23:
    v37;
    v38;
    v143 = 0.0;
    v144 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v67 = v144;
    v68 = v139;

    v67;
    v143 = v145;
    v144 = v68;
    v69 = "t found in state dictionary";
LABEL_26:
    v65._object = (v69 | 0x8000000000000000);
    v65._countAndFlagsBits = 0xD000000000000026;
    goto LABEL_27;
  }

  if (*(v36 + 16) != 2)
  {
    v36;
    goto LABEL_23;
  }

  v143 = v145;
  v39 = v139;
  v144 = v139;

  v40._countAndFlagsBits = 0x676E69646461702ELL;
  v40._object = 0xE800000000000000;
  String.append(_:)(v40);
  v41 = v144;
  v42 = specialized Dictionary.subscript.getter(*&v143, v144, v141);
  v41;
  if (!v42)
  {
LABEL_25:
    v36;
    SLOBYTE(v140);
    v142;
    v143 = 0.0;
    v144 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v70 = v144;

    v70;
    v143 = v145;
    v144 = v39;
    v69 = "nd in state dictionary";
    goto LABEL_26;
  }

  if (*(v42 + 16) != 2)
  {
    v42;
    goto LABEL_25;
  }

  v136 = v42;
  v143 = v145;
  v144 = v39;

  v43._countAndFlagsBits = 0x6F6974616C69642ELL;
  v43._object = 0xEA0000000000736ELL;
  String.append(_:)(v43);
  v44 = v144;
  v45 = specialized Dictionary.subscript.getter(*&v143, v144, v141);
  v44;
  v46 = v45;
  v47 = v45 == 0;
  v48 = v142;
  v49 = LOBYTE(v140);
  if (v47)
  {
LABEL_29:
    v136;
    v36;
    v49;
    v48;
    v143 = 0.0;
    v144 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);
    v76 = v144;

    v76;
    v143 = v145;
    v144 = v39;
    v65._object = "nd in state dictionary" + 0x8000000000000000;
    v65._countAndFlagsBits = 0xD000000000000028;
    goto LABEL_27;
  }

  if (*(v46 + 16) != 2)
  {
    v46;
    goto LABEL_29;
  }

  v129 = v46;
  v143 = v145;
  v144 = v39;

  v50._object = 0xEB00000000746E75;
  v50._countAndFlagsBits = 0x6F4370756F72672ELL;
  String.append(_:)(v50);
  v51 = v144;
  v52 = specialized Dictionary.subscript.getter(*&v143, v144, v141);
  v51;
  v53 = v52;
  v54 = LOBYTE(v140);
  v55 = v142;
  if (!v53)
  {
LABEL_31:
    v129;
    v136;
    v36;
    v54;
    v55;
    v143 = 0.0;
    v144 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v77 = v144;

    v77;
    v143 = v145;
    v144 = v39;
    v65._object = "ound in state dictionary" + 0x8000000000000000;
    v65._countAndFlagsBits = 0xD000000000000029;
    goto LABEL_27;
  }

  if (*(v53 + 16) != 1)
  {
    v53;
    goto LABEL_31;
  }

  v121 = v53;
  v56 = *(*&v140 + 16);
  v120 = v36;
  if (v56)
  {
    v143 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    v57 = 0;
    v138 = v56;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56, 0);
    v58 = v138;
    v59 = v143;
    a4 = -9.223372036854778e18;
    a5 = 9.223372036854776e18;
    do
    {
      v60 = *(*&v140 + 8 * v57 + 32);
      if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        BUG();
      }

      if (v60 <= -9.223372036854778e18)
      {
        BUG();
      }

      if (v60 >= 9.223372036854776e18)
      {
        BUG();
      }

      v143 = v59;
      v61 = *(*&v59 + 16);
      v62 = *(*&v59 + 24);
      v63 = v61 + 1;
      if (v62 >> 1 <= v61)
      {
        v123 = *(*&v59 + 16);
        v122 = v60;
        v124 = v61 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v62 >= 2, v63, 1);
        v63 = v124;
        v61 = v123;
        v60 = v122;
        a5 = 9.223372036854776e18;
        a4 = -9.223372036854778e18;
        v58 = v138;
        v59 = v143;
      }

      ++v57;
      *(*&v59 + 16) = v63;
      *(*&v59 + 8 * v61 + 32) = v60;
    }

    while (v58 != v57);
    SLOBYTE(v140);
  }

  else
  {
    SLOBYTE(v140);
    v59 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  }

  v78 = v125;
  TensorShape.init(_:)(*&v59);
  v79 = *&v134;
  v80 = v132;
  v140 = *(v133 + 16);
  (*&v140)(*&v134, v78, v132, a4, a5);
  __swift_storeEnumTagSinglePayload(v79, 0, 1, v80);
  LOBYTE(v80) = v142;
  Array<A>.floatTensor(shape:)(v79, v142, a4, a5);
  v80;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v79, &demangling cache variable for type metadata for TensorShape?);
  v81 = v131;
  __swift_storeEnumTagSinglePayload(v131, 1, 1, v137);
  v143 = v145;
  v144 = v39;

  v82._countAndFlagsBits = 0x736169622ELL;
  v82._object = 0xE500000000000000;
  String.append(_:)(v82);
  LOBYTE(v78) = v144;
  v83 = v141;
  *&v84 = COERCE_DOUBLE(specialized Dictionary.subscript.getter(*&v143, v144, v141));
  LOBYTE(v82._countAndFlagsBits) = v78;
  v85 = v137;
  v82._countAndFlagsBits;
  v142 = v84;
  if (*&v84 != 0.0)
  {
    v143 = v145;
    v144 = v139;

    v86._countAndFlagsBits = 0x68732E736169622ELL;
    v86._object = 0xEB00000000657061;
    String.append(_:)(v86);
    v87 = v144;
    *&v88 = COERCE_DOUBLE(specialized Dictionary.subscript.getter(*&v143, v144, v83));
    v87;
    if (*&v88 == 0.0)
    {
      v142;
      v85 = v137;
    }

    else
    {
      v89 = v88;
      v90 = *(v88 + 16);
      if (*&v90 == 0.0)
      {
        v88;
        v94 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
      }

      else
      {
        v143 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
        v91 = 0;
        v141 = v89;
        v145 = *&v90;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90, 0);
        v92 = v145;
        v93 = v141;
        v94 = v143;
        a4 = -9.223372036854778e18;
        a5 = 9.223372036854776e18;
        v95 = 1;
        do
        {
          v96 = *(v93 + 8 * v91 + 32);
          if ((*&v96 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            BUG();
          }

          if (v96 <= -9.223372036854778e18)
          {
            BUG();
          }

          if (v96 >= 9.223372036854776e18)
          {
            BUG();
          }

          v143 = v94;
          v97 = *(*&v94 + 16);
          v98 = *(*&v94 + 24);
          v99 = v97 + 1;
          if (v98 >> 1 <= v97)
          {
            v100 = v95;
            *&v139 = v96;
            v138 = v97 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v98 >= 2, v99, v95);
            v99 = v138;
            v96 = *&v139;
            v95 = v100;
            a5 = 9.223372036854776e18;
            a4 = -9.223372036854778e18;
            v92 = v145;
            v93 = v141;
            v94 = v143;
          }

          ++v91;
          *(*&v94 + 16) = v99;
          *(*&v94 + 8 * v97 + 32) = v96;
        }

        while (*&v92 != v91);
        v93;
      }

      v101 = v135;
      TensorShape.init(_:)(*&v94);
      v102 = *&v134;
      v103 = v132;
      (*&v140)(*&v134, COERCE_DOUBLE(*&v101), v132, a4, a5);
      __swift_storeEnumTagSinglePayload(v102, 0, 1, v103);
      v104 = v128;
      LOBYTE(v101) = v142;
      Array<A>.floatTensor(shape:)(v102, v142, a4, a5);
      SLOBYTE(v101);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v102, &demangling cache variable for type metadata for TensorShape?);
      (*(v133 + 8))(COERCE_DOUBLE(*&v135), v103);
      v81 = v131;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v131, &demangling cache variable for type metadata for Tensor?);
      v85 = v137;
      __swift_storeEnumTagSinglePayload(v104, 0, 1, v137);
      outlined init with take of Tensor?(v104, v81);
    }
  }

  (*(v126 + 16))(v127, v130, v85);
  v105 = v128;
  outlined init with copy of Tensor?(v81, v128);
  v106 = *(v120 + 16);
  if (!v106)
  {
    BUG();
  }

  v107 = *(v120 + 32);
  if ((*&v107 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v107 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v107 >= 9.223372036854776e18)
  {
    BUG();
  }

  v134 = *(v120 + 32);
  if (v106 == 1)
  {
    BUG();
  }

  v145 = *(v120 + 40);
  v108 = v145;
  v120;
  if ((*&v108 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v145 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v145 >= 9.223372036854776e18)
  {
    BUG();
  }

  v109 = *(v136 + 16);
  if (!v109)
  {
    BUG();
  }

  v110 = *(v136 + 32);
  if ((*&v110 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v110 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v110 >= 9.223372036854776e18)
  {
    BUG();
  }

  v135 = *(v136 + 32);
  if (v109 == 1)
  {
    BUG();
  }

  v141 = *(v136 + 40);
  v111 = v141;
  v136;
  if ((v111 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (*&v141 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (*&v141 >= 9.223372036854776e18)
  {
    BUG();
  }

  v112 = *(v129 + 16);
  if (!v112)
  {
    BUG();
  }

  v113 = *(v129 + 32);
  if ((*&v113 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v113 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v113 >= 9.223372036854776e18)
  {
    BUG();
  }

  v140 = *(v129 + 32);
  if (v112 == 1)
  {
    BUG();
  }

  v142 = *(v129 + 40);
  v114 = v142;
  v129;
  if ((v114 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (*&v142 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (*&v142 >= 9.223372036854776e18)
  {
    BUG();
  }

  if (!*(v121 + 16))
  {
    BUG();
  }

  v139 = *(v121 + 32);
  v115 = v139;
  v121;
  if ((v115 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  v116 = v137;
  v117 = v134;
  v118 = v135;
  if (*&v139 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (*&v139 >= 9.223372036854776e18)
  {
    BUG();
  }

  Conv2D.init(weight:bias:stride:padding:dilation:groupCount:)(v127, v105, v134, v145, v135, *&v141, v140, *&v142, *&v139);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v131, &demangling cache variable for type metadata for Tensor?);
  (*(v126 + 8))(v130, v116, v117, 9.223372036854776e18, v118);
  return (*(v133 + 8))(v125, v132);
}

uint64_t outlined init with copy of Tensor?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

BOOL AnalyticsReporter.init()()
{
  v0 = objc_opt_self(NSUserDefaults);
  v1 = [v0 standardUserDefaults];
  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 BOOLForKey:v3];

  return v4 != 0;
}

Swift::Bool __swiftcall AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML::ModelType model, Swift::String metricName, Swift::Float quantity)
{
  v22 = quantity;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, NSObject)>);
  inited = swift_initStackObject(v3, v21);
  inited[2].super.super.isa = &dword_4;
  inited[3].super.super.isa = &dword_8;
  inited[4].super.super.isa = 0x6574616C706D6554;
  inited[5].super.super.isa = 0xE800000000000000;
  ModelType.description.getter(model);
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v6;
  inited[6].super.super.isa = v7;
  inited[7].super.super.isa = 0x614E63697274654DLL;
  inited[8].super.super.isa = 0xEA0000000000656DLL;
  inited[9].super.super.isa = String._bridgeToObjectiveC()();
  inited[10].super.super.isa = 0x797469746E617551;
  inited[11].super.super.isa = 0xE800000000000000;
  *&v8 = LODWORD(v22);
  inited[12].super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
  inited[13].super.super.isa = 0x656C646E7542;
  inited[14].super.super.isa = 0xE600000000000000;
  v9 = objc_opt_self(NSBundle);
  v10 = [v9 mainBundle];
  v11 = v10;
  outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v11);
  v13 = "found in state dictionary" + 0x8000000000000000;
  if (v12)
  {
    LOBYTE(v13) = v12;
  }

  v14 = String._bridgeToObjectiveC()();
  v13;
  inited[15].super.super.isa = v14;
  v15 = type metadata accessor for NSObject();
  v16 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v15, &protocol witness table for String);
  v17 = v16;
  v18._object = "ml.parameter_setting" + 0x8000000000000000;
  v18._countAndFlagsBits = 0xD00000000000001FLL;
  v19 = AnalyticsReporter.analyticsSendEventWrapper(_:_:)(v18, v16);
  v17;
  return v19;
}

Swift::Bool __swiftcall AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML::ModelType model, Swift::String metricName, Swift::Int quantity)
{
  v21 = quantity;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, NSObject)>);
  inited = swift_initStackObject(v3, v20);
  inited[2].super.super.isa = &dword_4;
  inited[3].super.super.isa = &dword_8;
  inited[4].super.super.isa = 0x6574616C706D6554;
  inited[5].super.super.isa = 0xE800000000000000;
  ModelType.description.getter(model);
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v6;
  inited[6].super.super.isa = v7;
  inited[7].super.super.isa = 0x614E63697274654DLL;
  inited[8].super.super.isa = 0xEA0000000000656DLL;
  inited[9].super.super.isa = String._bridgeToObjectiveC()();
  inited[10].super.super.isa = 0x797469746E617551;
  inited[11].super.super.isa = 0xE800000000000000;
  inited[12].super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  inited[13].super.super.isa = 0x656C646E7542;
  inited[14].super.super.isa = 0xE600000000000000;
  v8 = objc_opt_self(NSBundle);
  v9 = [v8 mainBundle];
  v10 = v9;
  outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v10);
  v12 = "found in state dictionary" + 0x8000000000000000;
  if (v11)
  {
    LOBYTE(v12) = v11;
  }

  v13 = String._bridgeToObjectiveC()();
  v12;
  inited[15].super.super.isa = v13;
  v14 = type metadata accessor for NSObject();
  v15 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v14, &protocol witness table for String);
  v16 = v15;
  v17._object = "ml.parameter_setting" + 0x8000000000000000;
  v17._countAndFlagsBits = 0xD00000000000001FLL;
  v18 = AnalyticsReporter.analyticsSendEventWrapper(_:_:)(v17, v15);
  v16;
  return v18;
}

Swift::Bool __swiftcall AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML::ModelType model, Swift::String parameterName, Swift::String parameterValue)
{
  object = parameterValue._object;
  countAndFlagsBits = parameterValue._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, NSObject)>);
  inited = swift_initStackObject(v3, v20);
  *(inited + 16) = 4;
  *(inited + 24) = 8;
  *(inited + 32) = 0x6574616C706D6554;
  *(inited + 40) = 0xE800000000000000;
  ModelType.description.getter(model);
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v6;
  *(inited + 48) = v7;
  strcpy((inited + 56), "ParameterName");
  *(inited + 70) = -4864;
  *(inited + 72) = String._bridgeToObjectiveC()();
  strcpy((inited + 80), "ParameterValue");
  *(inited + 95) = -18;
  *(inited + 96) = String._bridgeToObjectiveC()();
  *(inited + 104) = 0x656C646E7542;
  *(inited + 112) = 0xE600000000000000;
  v8 = objc_opt_self(NSBundle);
  v9 = [v8 mainBundle];
  v10 = v9;
  outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v10);
  v12 = "found in state dictionary" + 0x8000000000000000;
  if (v11)
  {
    LOBYTE(v12) = v11;
  }

  v13 = String._bridgeToObjectiveC()();
  v12;
  *(inited + 120) = v13;
  v14 = type metadata accessor for NSObject();
  v15 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v14, &protocol witness table for String);
  v16 = v15;
  v17._object = "ml.template_used" + 0x8000000000000000;
  v17._countAndFlagsBits = 0xD000000000000024;
  v18 = AnalyticsReporter.analyticsSendEventWrapper(_:_:)(v17, v15);
  v16;
  return v18;
}

Swift::Bool __swiftcall AnalyticsReporter.analyticsSendEventWrapper(_:_:)(Swift::String a1, Swift::OpaquePointer a2)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = swift_allocObject(&unk_390AE8, 24, 7);
  v4[2]._rawValue = a2._rawValue;
  aBlock[4] = partial apply for closure #1 in AnalyticsReporter.analyticsSendEventWrapper(_:_:);
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_2;
  v5 = _Block_copy(aBlock);

  LOBYTE(a2._rawValue) = AnalyticsSendEventLazy(v3, v5);
  _Block_release(v5);

  return a2._rawValue;
}

uint64_t AnalyticsReporter.reportTemplateUsed(model:mode:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  v25 = ModelType.description.getter(a1._countAndFlagsBits);
  v26 = v2;
  if (LOBYTE(a1._object) != 2)
  {
    a1._countAndFlagsBits = 0x636E797341202D20;
    if (a1._object)
    {
      a1._countAndFlagsBits = 0x68636E7953202D20;
    }

    v3 = 0xEF73756F6E6F7268;
    if (a1._object)
    {
      v3 = 0xEE0073756F6E6F72;
    }

    a1._object = v3;
    String.append(_:)(a1);
    v3;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, NSObject)>);
  inited = swift_initStackObject(v4, v24);
  inited[2] = 3;
  inited[3] = 6;
  inited[4] = 0x6574616C706D6554;
  inited[5] = 0xE800000000000000;
  ModelType.description.getter(countAndFlagsBits);
  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  v7;
  inited[6] = v8;
  inited[7] = 0x656C646E7542;
  inited[8] = 0xE600000000000000;
  v9 = objc_opt_self(NSBundle);
  v10 = [v9 mainBundle];
  v11 = v10;
  outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v11);
  v13 = "found in state dictionary" + 0x8000000000000000;
  if (v12)
  {
    LOBYTE(v13) = v12;
  }

  v14 = String._bridgeToObjectiveC()();
  v13;
  inited[9] = v14;
  inited[10] = 0x6574616C706D6554;
  inited[11] = 0xEF65736F62726556;
  v15 = v26;
  v16 = String._bridgeToObjectiveC()();
  v15;
  inited[12] = v16;
  v17 = type metadata accessor for NSObject();
  v18 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v17, &protocol witness table for String);
  v19 = v18;
  v20._object = "@NSDictionary8@?0" + 0x8000000000000000;
  v20._countAndFlagsBits = 0xD000000000000020;
  LOBYTE(v21) = AnalyticsReporter.analyticsSendEventWrapper(_:_:)(v20, v18);
  v22 = v21;
  v19;
  return v22;
}

Swift::Bool __swiftcall AnalyticsReporter.reportEventDuration(model:task:startTime:)(CreateML::ModelType model, Swift::String task, Swift::Double startTime)
{
  v22 = CFAbsoluteTimeGetCurrent() - startTime;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, NSObject)>);
  inited = swift_initStackObject(v3, v21);
  inited[2].super.super.isa = &dword_4;
  inited[3].super.super.isa = &dword_8;
  inited[4].super.super.isa = 0x6574616C706D6554;
  inited[5].super.super.isa = 0xE800000000000000;
  ModelType.description.getter(model);
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v6;
  inited[6].super.super.isa = v7;
  inited[7].super.super.isa = 1802723668;
  inited[8].super.super.isa = 0xE400000000000000;
  inited[9].super.super.isa = String._bridgeToObjectiveC()();
  inited[10].super.super.isa = 0x6E6F697461727544;
  inited[11].super.super.isa = 0xE800000000000000;
  v8 = v22;
  inited[12].super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
  inited[13].super.super.isa = 0x656C646E7542;
  inited[14].super.super.isa = 0xE600000000000000;
  v9 = objc_opt_self(NSBundle);
  v10 = [v9 mainBundle];
  v11 = v10;
  outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v11);
  v13 = "found in state dictionary" + 0x8000000000000000;
  if (v12)
  {
    LOBYTE(v13) = v12;
  }

  v14 = String._bridgeToObjectiveC()();
  v13;
  inited[15].super.super.isa = v14;
  v15 = type metadata accessor for NSObject();
  v16 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v15, &protocol witness table for String);
  v17 = v16;
  v18._object = "Indeterminate bundle" + 0x8000000000000000;
  v18._countAndFlagsBits = 0xD000000000000021;
  v19 = AnalyticsReporter.analyticsSendEventWrapper(_:_:)(v18, v16);
  v17;
  return v19;
}

uint64_t outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(id a1)
{
  v1 = [a1 bundleIdentifier];
  v2 = v1;

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v2);

  return v3;
}

uint64_t block_destroy_helper_2()
{
}

{
  return block_destroy_helper_8();
}

uint64_t _s11TabularData0B5FrameV8CreateMLE10findColumn11defaultName4type5whereS2S_xmSbxSgXEtKlFSayypSgG_Tt0g503_s8d23ML16MLObjectDetectorV10b35SourceO24gatherAnnotatedFileNames07a5E00E5C22VyKFSbSayypSgGSgXEfU0_Tf1ncn_n(Swift::String a1, uint64_t a2)
{
  v104 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any?]>);
  v118 = *(v4 - 8);
  v5 = *(v118 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v117 = &v101;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v113 = &v101;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v106 = &v101;
  v12 = alloca(v5);
  v13 = alloca(v5);
  v105 = &v101;
  v127 = type metadata accessor for AnyColumn(0);
  v123 = *(v127 - 8);
  v14 = *(v123 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v125 = &v101;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v121 = &v101;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v116 = &v101;
  v111._countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v21 = DataFrame.indexOfColumn(_:)(a1);
  v115 = v4;
  v119 = a2;
  if (v21.is_nil)
  {
    goto LABEL_5;
  }

  value = v21.value;
  v23 = DataFrame.columns.getter(a1._countAndFlagsBits);
  if (value < 0)
  {
    BUG();
  }

  if (value >= *(v23 + 16))
  {
    BUG();
  }

  v24 = v123;
  v25 = ((*(v123 + 80) + 32) & ~*(v123 + 80)) + v23 + *(v123 + 72) * value;
  v26 = v116;
  v128 = v23;
  v27 = v127;
  (*(v123 + 16))(v116, v25, v127);
  v28 = v128;
  v128;
  v29 = AnyColumn.wrappedElementType.getter(v28);
  (*(v24 + 8))(v26, v27);
  a1._countAndFlagsBits = &demangling cache variable for type metadata for [Any?];
  if (v29 == __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]))
  {

    return v111._countAndFlagsBits;
  }

  else
  {
LABEL_5:
    if (DataFrame.shape.getter(a1._countAndFlagsBits) <= 0)
    {
      v61 = "not in Data Table." + 0x8000000000000000;
      v62 = 0xD00000000000001ALL;
    }

    else
    {
      v30 = DataFrame.columns.getter(a1._countAndFlagsBits);
      v120 = *(v30 + 16);
      v126 = _swiftEmptyArrayStorage;
      v31 = 0;
      v32 = v127;
      v33 = v123;
      v122 = v30;
      while (v120 != v31)
      {
        if (v31 >= *(v30 + 16))
        {
          BUG();
        }

        v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v124 = *(v33 + 72);
        v35 = v34 + v30 + v31 * v124;
        v36 = v31;
        v37 = v121;
        (*(v33 + 16))(v121, v35, v32);
        v128 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
        v38 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for [Any?]);
        if (v38 == v128)
        {
          v128 = v36;
          v40 = v127;
          v114 = *(v33 + 32);
          v114(v125, v37, v127);
          v41 = v126;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v126);
          v111._object = v41;
          if (isUniquelyReferenced_nonNull_native)
          {
            v43 = v40;
          }

          else
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1);
            v43 = v127;
            v41 = v111._object;
          }

          v44 = v128;
          v45 = v34;
          v46 = v124;
          v47 = v41[2];
          v48 = v47 + 1;
          if (v41[3] >> 1 <= v47)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41[3] >= 2uLL, v48, 1);
            v46 = v124;
            v44 = v128;
            v43 = v127;
            v41 = v111._object;
          }

          v31 = v44 + 1;
          v41[2] = v48;
          v126 = v41;
          v49 = v41 + v45 + v46 * v47;
          v50 = v43;
          (v114)(v49, v125);
          v32 = v50;
          v33 = v123;
          v30 = v122;
        }

        else
        {
          v39 = v127;
          (*(v33 + 8))(v37, v127);
          v32 = v39;
          v30 = v122;
          v31 = v36 + 1;
        }
      }

      v30;
      v51 = v126;
      v52 = v126[2];
      if (v52)
      {
        v111._object = _swiftEmptyArrayStorage;
        v120 = v52;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
        v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
        v53 = v111._object;
        v54 = v51 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
        v122 = *(v33 + 16);
        v124 = *(v33 + 72);
        do
        {
          v55 = v116;
          v128 = v54;
          v56 = v127;
          v122(v116, v54, v127);
          AnyColumn.assumingType<A>(_:)(v121, v121);
          (*(v123 + 8))(v55, v56);
          v111._object = v53;
          v57 = v53[2];
          if (v53[3] >> 1 <= v57)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v53[3] >= 2uLL, v57 + 1, 1);
            v53 = v111._object;
          }

          v53[2] = v57 + 1;
          v58 = v53 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v57;
          v59 = v115;
          (*(v118 + 32))(v58, v117, v115);
          v54 = &v124[v128];
          --v120;
        }

        while (v120);
        v125 = v53;
        v60 = v126;
      }

      else
      {
        v60 = v126;

        v125 = _swiftEmptyArrayStorage;
        v59 = v115;
      }

      v63 = DataFrame.shape.getter(v60) * 0.2;
      if (COERCE__INT64(fabs(v63)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        BUG();
      }

      if (v63 <= -9.223372036854778e18)
      {
        BUG();
      }

      if (v63 >= 9.223372036854776e18)
      {
        BUG();
      }

      v64 = DataFrame.shape.getter(v60);
      v65 = 10;
      if (v64 < 10)
      {
        v65 = v64;
      }

      if (v65 <= v63)
      {
        v65 = v63;
      }

      v119 = v65;
      if (v65 < 0)
      {
        BUG();
      }

      v66 = v125;
      v67 = v113;
      if (v65)
      {
        v121 = v125[2];
        v120 = 0;
        v68 = 0;
        v116 = (&type metadata for Any + 8);
        while (1)
        {
          if (__OFADD__(1, v68++))
          {
            BUG();
          }

          if (v121)
          {
            break;
          }

LABEL_70:
          v120 = v68;
          if (v68 == v119)
          {
            goto LABEL_71;
          }
        }

        v117 = v68;
        v70 = v118;
        v122 = (v66 + ((*(v118 + 80) + 32) & ~*(v118 + 80)));

        v124 = *(v70 + 16);
        v123 = *(v70 + 72);
        v71 = 0;
        while (1)
        {
          (v124)(v67, v122 + v71 * v123, v59);
          v72 = v59;
          Column.subscript.getter(v120, v59);
          v73 = v101;
          if (v101)
          {
            v127 = v71;
            v74 = *(v101 + 16);
            *&v107[0] = _swiftEmptyArrayStorage;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74, 0);
            v75 = *&v107[0];
            v128 = v73;
            if (v74)
            {
              v76 = v73 + 32;
              while (1)
              {
                outlined init with copy of Any?(v76, &v111._object);
                v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
                v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
                if (!swift_dynamicCast(&v108, &v111._object, v77, v78, 6))
                {
                  break;
                }

                v79 = v108;
                *&v107[0] = v75;
                v80 = v75[2];
                v81 = v75[3];
                v82 = (v80 + 1);
                if (v81 >> 1 <= v80)
                {
                  v126 = (v80 + 1);
                  v114 = v108;
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v81 >= 2, v82, 1);
                  v82 = v126;
                  v79 = v114;
                  v75 = *&v107[0];
                }

                v75[2] = v82;
                v75[v80 + 4] = v79;
                v76 += 32;
                if (!--v74)
                {
                  v59 = v115;
                  goto LABEL_49;
                }
              }

              v128;

              v72 = v115;
            }

            else
            {
              if (*(*&v107[0] + 16))
              {
                v59 = v72;
LABEL_49:
                v83 = v75[4];

                if (*(v83 + 16) && (v84 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C6562616CLL, 0xE500000000000000), (v85 & 1) != 0))
                {
                  outlined init with copy of Any(*(v83 + 56) + 32 * v84, v107);
                  outlined init with take of Any(v107, &v111._object);
                  if (*(v83 + 16))
                  {
                    v86 = specialized __RawDictionaryStorage.find<A>(_:)(0x616E6964726F6F63, 0xEB00000000736574);
                    if (v87)
                    {
                      outlined init with copy of Any(*(v83 + 56) + 32 * v86, &v108);
                    }

                    else
                    {
                      v109 = 0;
                      v108 = 0;
                    }
                  }

                  else
                  {
                    v109 = 0;
                    v108 = 0;
                  }

                  v83;
                  if (*(&v109 + 1))
                  {
                    outlined init with take of Any(&v108, v107);
                    outlined init with take of Any(&v111._object, &v108);
                    v89 = v116;
                    if (swift_dynamicCast(&v102, &v108, v116, &type metadata for String, 6))
                    {
                      v103;
                      outlined init with take of Any(v107, &v108);
                      v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
                      if (swift_dynamicCast(&v102, &v108, v89, v90, 6))
                      {
                        v95 = v102;
                        v128;
                        v95;
                        v96 = v125;
                        v125;
                        v97 = *(v118 + 32);
                        v98 = v106;
                        v97(v106, v113, v59);
                        v96;
                        v99 = v105;
                        v97(v105, v98, v59);
                        v62 = Column.name.getter(v59);
                        (*(v118 + 8))(v99, v59);
                        return v62;
                      }
                    }

                    else
                    {
                      __swift_destroy_boxed_opaque_existential_1Tm(v107);
                    }
                  }

                  else
                  {
                    __swift_destroy_boxed_opaque_existential_1Tm(&v111._object);
                    outlined destroy of Any?(&v108);
                  }

                  v88 = v128;
                }

                else
                {
                  v128;
                  v88 = v83;
                }

                v88;
                v71 = v127;
                goto LABEL_68;
              }

              v128;
            }

            v71 = v127;
          }

          v59 = v72;
LABEL_68:
          ++v71;
          v67 = v113;
          (*(v118 + 8))(v113, v59);
          if (v71 == v121)
          {
            v91 = v125;
            v125;
            v66 = v91;
            v68 = v117;
            goto LABEL_70;
          }
        }
      }

LABEL_71:
      v66;
      v111._object = 0;
      v112 = 0xE000000000000000;
      _StringGuts.grow(_:)(166);
      v92._object = "Annotations file is empty." + 0x8000000000000000;
      v92._countAndFlagsBits = 0xD000000000000098;
      String.append(_:)(v92);
      v92._countAndFlagsBits = v111._countAndFlagsBits;
      v92._object = object;
      String.append(_:)(v92);
      v92._countAndFlagsBits = 0x2E316567616D693ALL;
      v92._object = 0xEC0000002E67706ALL;
      String.append(_:)(v92);
      v62 = v111._object;
      v61 = v112;
    }

    v93 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v93, 0, 0);
    *v94 = v62;
    *(v94 + 8) = v61;
    *(v94 + 16) = 0;
    *(v94 + 32) = 0;
    *(v94 + 48) = 1;
    swift_willThrow();
  }

  return v62;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> DataFrame.flattenNestedArrays(in:shape:)(Swift::String in, Swift::OpaquePointer shape)
{
  *&v66 = v2;
  rawValue = shape._rawValue;
  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any?]>);
  v69 = *(v53 - 8);
  v4 = *(v69 + 8);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v54 = &v51;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any]>);
  v62 = *(v52 - 1);
  v7 = *(v62 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v64 = &v51;
  v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v56 = *(v63 - 8);
  v10 = *(v56 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v55 = &v51;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v70 = &v51;
  v59 = type metadata accessor for AnyColumn(0);
  v60 = *(v59 - 8);
  v15 = *(v60 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v58 = &v51;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v57 = &v51;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v67._countAndFlagsBits = in._countAndFlagsBits;
  v22 = v3;
  DataFrame.subscript.getter(in._countAndFlagsBits, in._object);
  v23 = AnyColumn.wrappedElementType.getter(in._countAndFlagsBits);
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
  v67._object = &v51;
  v65 = v22;
  if (v23 == v24)
  {
    DataFrame.subscript.getter(v67._countAndFlagsBits, in._object, v24);
    v69 = &v51;
    v33 = alloca(24);
    v34 = alloca(32);
    v52 = rawValue;
    v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
    v36 = v52;
    v37 = v66;
    Column.mapNonNil<A>(_:)(partial apply for closure #1 in DataFrame.flattenNestedArrays(in:shape:), &v51, v52, v35);
    if (v37)
    {
      v38 = v64;
      v39 = v36;
      v40 = v62;
LABEL_9:
      (*(v40 + 1))(v38, v39);
      goto LABEL_13;
    }

    object = in._object;
    *&v66 = 0;
    (*(v62 + 8))(v64, v36);
    v48 = v57;
    v49 = v63;
    Column.eraseToAnyColumn()(v63);
LABEL_12:
    (*(v56 + 8))(v70, v49);
    v50 = object;

    DataFrame.subscript.setter(v48, v67._countAndFlagsBits, v50);
    goto LABEL_13;
  }

  object = in._object;
  v25 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for [Any]);
  v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
  if (v25 == v26)
  {
    v41 = v54;
    DataFrame.subscript.getter(v67._countAndFlagsBits, object, v26);
    v70 = &v51;
    v42 = alloca(24);
    v43 = alloca(32);
    v52 = rawValue;
    v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
    v45 = v55;
    v46 = v53;
    v47 = v66;
    Column.mapNonNil<A>(_:)(partial apply for closure #2 in DataFrame.flattenNestedArrays(in:shape:), &v51, v53, v44);
    if (v47)
    {
      v38 = v41;
      v39 = v46;
      v40 = v69;
      goto LABEL_9;
    }

    *&v66 = 0;
    (*(v69 + 1))(v41, v46);
    v48 = v58;
    v49 = v63;
    Column.eraseToAnyColumn()(v63);
    v70 = v45;
    goto LABEL_12;
  }

  v27 = AnyColumn.wrappedElementType.getter(&demangling cache variable for type metadata for [Any?]);
  v28 = v27 == __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v29 = object;
  if (!v28)
  {
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(73);
    v30._countAndFlagsBits = 0x27206E6D756C6F43;
    v30._object = 0xE800000000000000;
    String.append(_:)(v30);
    v30._countAndFlagsBits = v67._countAndFlagsBits;
    v30._object = v29;
    String.append(_:)(v30);
    v30._object = "ml.disableAnalyticsLogging" + 0x8000000000000000;
    v30._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v30);
    v66 = v51;
    v31 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v31, 0, 0);
    *v32 = v66;
    *(v32 + 16) = 0;
    *(v32 + 32) = 0;
    *(v32 + 48) = 1;
    swift_willThrow();
  }

LABEL_13:
  (*(v60 + 8))(v67._object, v59);
}

uint64_t closure #1 in DataFrame.flattenNestedArrays(in:shape:)(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  v6 = *a1;

  result = a3(a2, v6);
  if (!v4)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
    return __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t CMLParameters.setValidation(table:)(uint64_t *a1, unsigned __int8 a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    swift_willThrow();
    return swift_errorRetain(v2);
  }

  else
  {
    v4 = *(v2 + 16);

    CMLParameters.add(key:table:)(a2, v4);
  }
}

uint64_t CMLParameters.setOptions(dictionary:)(uint64_t a1)
{
  type metadata accessor for CMLFeatureValue();

  result = CMLFeatureValue.__allocating_init(_:)(a1);
  if (!v1)
  {
    CMLParameters.add(key:featureValue:)(6, result);
  }

  return result;
}

NSURL *MLImageClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v56 = v2;
  v48 = v3;
  v55 = a2;
  v54 = a1;
  v4 = *(*(type metadata accessor for MLImageClassifier.Model(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v51 = v43;
  v53 = type metadata accessor for Model(0);
  v52 = *(v53 - 8);
  v7 = *(v52 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v47 = v43;
  v10 = *(*(type metadata accessor for MLImageClassifier.FeatureExtractorType(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v50 = v43;
  v13 = *(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = type metadata accessor for URL(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  qmemcpy(v46, v55, sizeof(v46));
  v21 = v56;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v54, 0x616C436567616D49, 0xEF72656966697373, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v21)
  {
    v49 = 0;
    v56 = v43;
    v55 = v16;
    v54 = v17;
    v23 = v48;
    MLImageClassifier.ModelParameters.algorithm.getter();
    v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType));
    *&v43[*(v24 + 48)];
    outlined init with take of MLImageClassifier.FeatureExtractorType(v43, v50);
    v25 = type metadata accessor for MLImageClassifier(0);
    outlined init with copy of MLImageClassifier.Model(v23 + *(v25 + 32), v51);
    v26 = *&v46[8];
    if (*&v46[8])
    {
      v27 = *v46;
      v28 = *&v46[16];
      v29 = *&v46[24];
      v30 = *&v46[32];
      v31 = *&v46[48];
      v32 = *&v46[56];
      v33 = *&v46[64];
    }

    else
    {
      v34 = NSFullUserName();
      v35 = v34;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)(v35);
      v26 = v36;

      v29 = "RandomForestRegressor" + 0x8000000000000000;
      *v44 = v27;
      *&v44[8] = v26;
      *&v44[16] = 0xD000000000000033;
      *&v44[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v44[32] = 0;
      *&v44[48] = 49;
      *&v44[56] = 0xE100000000000000;
      *&v44[64] = 0;
      *v45 = v27;
      *&v45[8] = v26;
      *&v45[16] = 0xD000000000000033;
      *&v45[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v45[32] = 0;
      *&v45[48] = 49;
      *&v45[56] = 0xE100000000000000;
      *&v45[64] = 0;
      outlined retain of MLModelMetadata(v44);
      outlined release of MLModelMetadata(v45);
      v32 = 0xE100000000000000;
      v31 = 49;
      v30 = 0;
      v28 = 0xD000000000000033;
      v33 = 0;
    }

    *v45 = v27;
    *&v45[8] = v26;
    *&v45[16] = v28;
    *&v45[24] = v29;
    *&v45[32] = v30;
    *&v45[48] = v31;
    *&v45[56] = v32;
    *&v45[64] = v33;
    outlined retain of MLModelMetadata?(v46);
    v37 = v47;
    v38 = v50;
    v39 = v51;
    v40 = v49;
    MLImageClassifier.Model.export(metadata:featureExtractorType:)(v45, v50);
    qmemcpy(v44, v45, sizeof(v44));
    outlined release of MLModelMetadata(v44);
    outlined destroy of MLActivityClassifier.ModelParameters(v39, type metadata accessor for MLImageClassifier.Model);
    if (v40)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLImageClassifier.FeatureExtractorType);
      return (*(v54 + 8))(v56, v55);
    }

    else
    {
      Model.write(to:)(v56);
      v41 = v37;
      v42 = v54;
      (*(v52 + 8))(v41, v53);
      outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLImageClassifier.FeatureExtractorType);
      return (*(v42 + 8))(v56, v55);
    }
  }

  return result;
}

uint64_t outlined init with take of MLImageClassifier.FeatureExtractorType(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with copy of MLImageClassifier.Model(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLImageClassifier.Model(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLImageClassifier.write(toFile:metadata:)(Swift::String string, const void *a2)
{
  v10[0] = v2;
  v10[1] = v3;
  v11 = a2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v12 = v10;
  result = static _ValidationUtilities.validateWriteLocation(atPath:defaultName:)(string, 0x616C436567616D49, 0xEF72656966697373);
  if (!v2)
  {
    MLImageClassifier.write(to:metadata:)(v12, v11);
    return (*(v5 + 8))(v12, v4);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CategoricalLookupTable(uint64_t *a1, uint64_t *a2)
{
  return initializeBufferWithCopyOfBuffer for CategoricalLookupTable(a1, a2);
}

{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t *assignWithCopy for CategoricalLookupTable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;

  v2;
  v3 = a1[1];
  a1[1] = a2[1];

  v3;
  return a1;
}

void *assignWithTake for CategoricalLookupTable(void *a1, _OWORD *a2)
{
  *a1;
  v3 = a1[1];
  *a1 = *a2;
  v3;
  return a1;
}

uint64_t getEnumTagSinglePayload for CategoricalLookupTable(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : *a1 >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for CategoricalLookupTable(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 16) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 16) = 0;
    }

    if (a2)
    {
      *a1 = 2 * (a2 - 1);
    }
  }
}

uint64_t outlined assign with take of MLSoundClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t type metadata accessor for MLSoundClassifier.ModelParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSoundClassifier.ModelParameters;
  if (!type metadata singleton initialization cache for MLSoundClassifier.ModelParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSoundClassifier.ModelParameters);
  }

  return result;
}

uint64_t MLSoundClassifier.ModelParameters.maxIterations.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 20);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLSoundClassifier.ModelParameters.overlapFactor.setter(double a1)
{
  result = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 24);
  *(v1 + result) = a1;
  return result;
}

char MLSoundClassifier.ModelParameters.algorithm.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  outlined init with copy of Any?(v1 + *(v3 + 28), v8);
  if (!v9)
  {
    outlined destroy of Any?(v8);
    goto LABEL_5;
  }

  if (!swift_dynamicCast(&v10, v8, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_5:
    v5 = 1;
    v4 = 1;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = v10;
  v5 = v11;
  v6 = v12;
LABEL_6:
  *v2 = v4;
  result = v5 & 1;
  *(v2 + 8) = result;
  *(v2 + 16) = v6;
  return result;
}

uint64_t key path getter for MLSoundClassifier.ModelParameters.algorithm : MLSoundClassifier.ModelParameters()
{
  v1 = v0;
  MLSoundClassifier.ModelParameters.algorithm.getter();
  result = v3;
  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = v5;
  return result;
}

uint64_t key path setter for MLSoundClassifier.ModelParameters.algorithm : MLSoundClassifier.ModelParameters(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = a1[2];
  v5 = v1;
  v6 = v2;
  v7 = v3;

  return MLSoundClassifier.ModelParameters.algorithm.setter(&v5);
}

uint64_t MLSoundClassifier.ModelParameters.algorithm.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v10 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  return outlined assign with take of Any?(&v7, v1 + *(v5 + 28));
}

void (*MLSoundClassifier.ModelParameters.algorithm.modify(void *a1))(int **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v2 = malloc(0x60uLL);
  *a1 = v2;
  *(v2 + 10) = v1;
  v3 = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 28);
  *(v2 + 22) = v3;
  outlined init with copy of Any?(v1 + v3, v2);
  if (!*(v2 + 3))
  {
    outlined destroy of Any?(v2);
    goto LABEL_5;
  }

  if (!swift_dynamicCast(v2 + 56, v2, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_5:
    v5 = 1;
    v4 = 1;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = *(v2 + 7);
  v5 = *(v2 + 64);
  v6 = *(v2 + 9);
LABEL_6:
  *(v2 + 4) = v4;
  *(v2 + 40) = v5 & 1;
  *(v2 + 6) = v6;
  return MLSoundClassifier.ModelParameters.algorithm.modify;
}

void MLSoundClassifier.ModelParameters.algorithm.modify(int **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *(*a1 + 4);
  v8 = *(*a1 + 40);
  v9 = *(*a1 + 6);
  v10 = v6[10] + *(v6 + 22);
  v6[3] = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  *v6 = v7;
  *(v6 + 8) = v8;
  v6[2] = v9;
  if (a2)
  {

    outlined assign with take of Any?(v6, v10);
    v6[6];
  }

  else
  {
    outlined assign with take of Any?(v6, v10);
  }

  free(v6);
}

double MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter()
{
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  outlined init with copy of Any?(v0 + *(v1 + 28), v6);
  if (v7)
  {
    if (swift_dynamicCast(&v8, v6, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
    {
      v2 = v8;
      v3 = v9;
      v10;
      if (!v3 && v2 == 1)
      {
        return 0.975;
      }
    }
  }

  else
  {
    outlined destroy of Any?(v6);
  }

  v4 = *(v1 + 32);
  if (!*(v0 + v4 + 8))
  {
    return *(v0 + v4);
  }

  return 0.975;
}

uint64_t MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.setter(double a1)
{
  result = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 32);
  *(v1 + result) = a1;
  *(v1 + result + 8) = 0;
  return result;
}

uint64_t (*MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  *a1 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  return MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.modify;
}

uint64_t MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 32);
  *(v2 + result) = v1;
  *(v2 + result + 8) = 0;
  return result;
}

uint64_t MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:algorithm:)(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v15 = a4;
  v5 = v4;
  v16 = *a3;
  v18 = *(a3 + 8);
  v17 = a3[2];
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v7 = v6[7];
  *(v5 + v7 + 16) = 0;
  *(v5 + v7) = 0;
  v8 = v6[8];
  *(v5 + v8) = 0;
  v9 = v5 + v7;
  *(v5 + v8 + 8) = 1;
  *(v5 + v6[9]) = 32;
  outlined init with copy of MLSoundClassifier.ModelParameters.ValidationData(a1, v5);
  *(v5 + v6[5]) = a2;
  *(v5 + v6[6]) = v15;
  v14 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v11 = v16;
  v12 = v18;
  v13 = v17;
  outlined assign with take of Any?(&v11, v9);
  return outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(a1);
}

uint64_t MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v6 = v5[7];
  *(v4 + v6 + 16) = 0;
  *(v4 + v6) = 0;
  v7 = v5[8];
  *(v4 + v7) = 0;
  *(v4 + v7 + 8) = 1;
  *(v4 + v5[9]) = 32;
  outlined init with take of MLSoundClassifier.ModelParameters.ValidationData(a1, v4);
  *(v4 + v5[5]) = a2;
  result = v5[6];
  *(v4 + result) = a3;
  return result;
}

uint64_t outlined init with take of MLSoundClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:algorithm:featureExtractionTimeWindowSize:)(uint64_t a1, uint64_t a2, uint64_t *a3, double a4, double a5)
{
  v32 = a5;
  v27 = a4;
  v30 = a2;
  v6 = v5;
  v28 = *a3;
  v33 = *(a3 + 8);
  v29 = a3[2];
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v8 = v7[7];
  *(v6 + v8 + 16) = 0;
  *(v6 + v8) = 0;
  *&v9 = v7[8];
  *(v6 + *&v9) = 0;
  v10 = v6 + v8;
  *(v6 + *&v9 + 8) = 1;
  *(v6 + v7[9]) = 32;
  v31 = a1;
  outlined init with copy of MLSoundClassifier.ModelParameters.ValidationData(a1, v6);
  *(v6 + v7[5]) = v30;
  *(v6 + v7[6]) = v27;
  v26 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v23 = v28;
  LOBYTE(v24) = v33;
  v25 = v29;
  outlined assign with take of Any?(&v23, v10);
  v11 = v32;
  *(v6 + *&v9) = v32;
  *(v6 + *&v9 + 8) = 0;
  if (v11 < 0.5)
  {
    v23 = 0;
    v32 = v9;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(108);
    v12._object = ". Clamping it to " + 0x8000000000000000;
    v12._countAndFlagsBits = 0xD000000000000056;
    String.append(_:)(v12);
    Double.write<A>(to:)(&v23, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v12._object = "ximum supported value " + 0x8000000000000000;
    v12._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v12);
    Double.write<A>(to:)(&v23, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v12._countAndFlagsBits = 46;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = v23;
    v14 = v24;
    v15 = static os_log_type_t.default.getter(46);
    v12._countAndFlagsBits = v13;
    v12._object = v14;
    log(_:type:)(v12, v15);
    v14;
    outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(v31);
    result = 0x3FE0000000000000;
LABEL_5:
    v22 = v32;
    *(v6 + *&v32) = result;
    *(v6 + *&v22 + 8) = 0;
    return result;
  }

  v17 = v31;
  if (v11 > 15.0)
  {
    v23 = 0;
    v32 = v9;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(108);
    v18._object = "r MLShapedArray<Double> values." + 0x8000000000000000;
    v18._countAndFlagsBits = 0xD000000000000056;
    String.append(_:)(v18);
    Double.write<A>(to:)(&v23, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v18._object = "ximum supported value " + 0x8000000000000000;
    v18._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v18);
    Double.write<A>(to:)(&v23, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v18._countAndFlagsBits = 46;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19 = v23;
    v20 = v24;
    v21 = static os_log_type_t.default.getter(46);
    v18._countAndFlagsBits = v19;
    v18._object = v20;
    log(_:type:)(v18, v21);
    v20;
    outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(v17);
    result = 0x402E000000000000;
    goto LABEL_5;
  }

  return outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(v31);
}

Swift::Int MLSoundClassifier.ModelParameters.FeaturePrintType.hashValue.getter()
{
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLSoundClassifier.ModelParameters.validate()()
{
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  outlined init with copy of Any?(v0 + *(v1 + 28), &v5);
  if (!v8)
  {
    outlined destroy of Any?(&v5);
    goto LABEL_5;
  }

  if (!swift_dynamicCast(&v9, &v5, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_5:
    v3 = 1;
    v2 = 1;
    v4 = 0;
    goto LABEL_6;
  }

  v2 = v9;
  v3 = v10;
  v4 = v11;
LABEL_6:
  v5 = v2;
  v6 = v3 & 1;
  v7 = v4;
  MLSoundClassifier.ModelParameters.ModelAlgorithmType.validate()();
  v7;
}

unint64_t MLSoundClassifier.ModelParameters.description.getter()
{
  _StringGuts.grow(_:)(19);
  0;
  v21 = 0xD000000000000010;
  v22 = "ansformer have different types." + 0x8000000000000000;
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v2 = *(v0 + *(v1 + 20));
  v20 = v0;
  v17 = v2;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v3._object;
  String.append(_:)(v3);
  object;
  v5._object = 0xE100000000000000;
  v5._countAndFlagsBits = 10;
  String.append(_:)(v5);
  v25 = 0xD000000000000010;
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v5._object = "nimum supported value " + 0x8000000000000000;
  v5._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v5);
  Double.write<A>(to:)(&v21, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6 = v21;
  v7 = v22;
  v21 = v25;
  v22 = "ansformer have different types." + 0x8000000000000000;

  v5._countAndFlagsBits = v6;
  v5._object = v7;
  String.append(_:)(v5);
  ("ansformer have different types." + 0x8000000000000000);
  v7;
  v25 = v21;
  v8 = v22;
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v22;
  outlined init with copy of Any?(v0 + *(v1 + 28), &v21);
  if (!v24)
  {
    outlined destroy of Any?(&v21);
    goto LABEL_5;
  }

  if (!swift_dynamicCast(&v17, &v21, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_5:
    v10 = 1;
    v9 = 1;
    v11 = 0;
    goto LABEL_6;
  }

  v9 = v17;
  v10 = v18;
  v11 = v19;
LABEL_6:
  v21 = v9;
  LOBYTE(v22) = v10 & 1;
  v23 = v11;
  v12 = MLSoundClassifier.ModelParameters.ModelAlgorithmType.description.getter();
  v14 = v13;
  v23;
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);
  v14;
  v21 = v25;
  v22 = v8;

  v15._countAndFlagsBits = 0xD000000000000010;
  v15._object = "Overlap factor: " + 0x8000000000000000;
  String.append(_:)(v15);
  v8;
  ("Overlap factor: " + 0x8000000000000000);
  return v21;
}

unint64_t MLSoundClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLSoundClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLSoundClassifier.ModelParameters.FeaturePrintType and conformance MLSoundClassifier.ModelParameters.FeaturePrintType()
{
  result = lazy protocol witness table cache variable for type MLSoundClassifier.ModelParameters.FeaturePrintType and conformance MLSoundClassifier.ModelParameters.FeaturePrintType;
  if (!lazy protocol witness table cache variable for type MLSoundClassifier.ModelParameters.FeaturePrintType and conformance MLSoundClassifier.ModelParameters.FeaturePrintType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLSoundClassifier.ModelParameters.FeaturePrintType, &type metadata for MLSoundClassifier.ModelParameters.FeaturePrintType);
    lazy protocol witness table cache variable for type MLSoundClassifier.ModelParameters.FeaturePrintType and conformance MLSoundClassifier.ModelParameters.FeaturePrintType = result;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLSoundClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v4 = __dst;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *__src;
    *v4 = *__src;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v7);
    if (EnumCaseMultiPayload == 2)
    {
      *__dst = *__src;

      swift_storeEnumTagMultiPayload(__dst, v7, 2);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v9 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v9))
      {
        case 0u:
          v10 = type metadata accessor for URL(0);
          (*(*(v10 - 8) + 16))(__dst, __src, v10);
          v11 = v9;
          v12 = 0;
          goto LABEL_15;
        case 1u:
          v22 = type metadata accessor for URL(0);
          (*(*(v22 - 8) + 16))(__dst, __src, v22);
          v31 = 1;
          goto LABEL_14;
        case 2u:
          *__dst = *__src;

          v31 = 2;
LABEL_14:
          v12 = v31;
          v11 = v9;
          goto LABEL_15;
        case 3u:
          v33 = v9;
          v20 = *__src;
          v32 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v32);
          *__dst = v20;
          __dst[8] = v32;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          v21 = *(__src + 4);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = v21;
          __dst[80] = __src[80];

          v30 = 3;
          goto LABEL_12;
        case 4u:
          v14 = type metadata accessor for DataFrame(0);
          (*(*(v14 - 8) + 16))(__dst, __src, v14);
          v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v16 = v15[12];
          *&__dst[v16] = *&__src[v16];
          *&__dst[v16 + 8] = *&__src[v16 + 8];
          v17 = v15[16];
          *&__dst[v17] = *&__src[v17];
          v33 = v9;
          *&__dst[v17 + 8] = *&__src[v17 + 8];
          v18 = v15[20];
          __dst[v18 + 32] = __src[v18 + 32];
          v19 = *&__src[v18];
          *&__dst[v18 + 16] = *&__src[v18 + 16];
          *&__dst[v18] = v19;

          v30 = 4;
LABEL_12:
          v12 = v30;
          v11 = v33;
LABEL_15:
          swift_storeEnumTagMultiPayload(__dst, v11, v12);
          swift_storeEnumTagMultiPayload(__dst, v7, 1);
          break;
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    *&__dst[a3[5]] = *&__src[a3[5]];
    *&__dst[a3[6]] = *&__src[a3[6]];
    v23 = a3[7];
    v24 = &__dst[v23];
    v25 = &__src[v23];
    v26 = *&__src[v23 + 24];
    if (v26)
    {
      *(v24 + 3) = v26;
      (**(v26 - 8))(v24, v25);
    }

    else
    {
      v27 = *v25;
      *(v24 + 1) = *(v25 + 1);
      *v24 = v27;
    }

    v28 = a3[8];
    v4[v28 + 8] = __src[v28 + 8];
    *&v4[v28] = *&__src[v28];
    *&v4[a3[9]] = *&__src[a3[9]];
  }

  return v4;
}

uint64_t destroy for MLSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a1, v3);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v7 = *a1;
LABEL_6:
    v7;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v5 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(a1, v5))
    {
      case 0u:
      case 1u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 8))(a1, v6);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        v7 = *(a1 + 40);
        goto LABEL_6;
      case 4u:
        v9 = type metadata accessor for DataFrame(0);
        (*(*(v9 - 8) + 8))(a1, v9);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(a1 + *(v10 + 48) + 8);
        v7 = *(a1 + *(v10 + 64) + 8);
        goto LABEL_6;
      default:
        break;
    }
  }

  result = *(a2 + 28);
  if (*(a1 + result + 24))
  {
    return __swift_destroy_boxed_opaque_existential_1Tm((result + a1));
  }

  return result;
}

char *initializeWithCopy for MLSoundClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
  if (EnumCaseMultiPayload == 2)
  {
    *__dst = *__src;

    swift_storeEnumTagMultiPayload(__dst, v6, 2);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v8))
    {
      case 0u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 16))(__dst, __src, v9);
        v10 = v8;
        v11 = 0;
        goto LABEL_13;
      case 1u:
        v20 = type metadata accessor for URL(0);
        (*(*(v20 - 8) + 16))(__dst, __src, v20);
        v29 = 1;
        goto LABEL_12;
      case 2u:
        *__dst = *__src;

        v29 = 2;
LABEL_12:
        v11 = v29;
        v10 = v8;
        goto LABEL_13;
      case 3u:
        v31 = v8;
        v18 = *__src;
        v30 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v30);
        *__dst = v18;
        __dst[8] = v30;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        v19 = *(__src + 4);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = v19;
        __dst[80] = __src[80];

        v28 = 3;
        goto LABEL_10;
      case 4u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 16))(__dst, __src, v12);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v14 = v13[12];
        *&__dst[v14] = *&__src[v14];
        *&__dst[v14 + 8] = *&__src[v14 + 8];
        v15 = v13[16];
        *&__dst[v15] = *&__src[v15];
        v31 = v8;
        *&__dst[v15 + 8] = *&__src[v15 + 8];
        v16 = v13[20];
        __dst[v16 + 32] = __src[v16 + 32];
        v17 = *&__src[v16];
        *&__dst[v16 + 16] = *&__src[v16 + 16];
        *&__dst[v16] = v17;

        v28 = 4;
LABEL_10:
        v11 = v28;
        v10 = v31;
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v10, v11);
        swift_storeEnumTagMultiPayload(__dst, v6, 1);
        break;
    }
  }

  else
  {
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  v21 = a3[7];
  v22 = &__dst[v21];
  v23 = &__src[v21];
  v24 = *&__src[v21 + 24];
  if (v24)
  {
    *(v22 + 3) = v24;
    (**(v24 - 8))(v22, v23);
  }

  else
  {
    v25 = *v23;
    *(v22 + 1) = *(v23 + 1);
    *v22 = v25;
  }

  v26 = a3[8];
  __dst[v26 + 8] = __src[v26 + 8];
  *&__dst[v26] = *&__src[v26];
  *&__dst[a3[9]] = *&__src[a3[9]];
  return __dst;
}

char *assignWithCopy for MLSoundClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(__dst);
    v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v5);
    if (EnumCaseMultiPayload == 2)
    {
      *__dst = *__src;

      swift_storeEnumTagMultiPayload(__dst, v5, 2);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v7))
      {
        case 0u:
          v8 = type metadata accessor for URL(0);
          (*(*(v8 - 8) + 16))(__dst, __src, v8);
          v9 = v7;
          v10 = 0;
          goto LABEL_14;
        case 1u:
          v19 = type metadata accessor for URL(0);
          (*(*(v19 - 8) + 16))(__dst, __src, v19);
          v28 = 1;
          goto LABEL_13;
        case 2u:
          *__dst = *__src;

          v28 = 2;
LABEL_13:
          v10 = v28;
          v9 = v7;
          goto LABEL_14;
        case 3u:
          v30 = v7;
          v17 = *__src;
          v29 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v29);
          *__dst = v17;
          __dst[8] = v29;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          v18 = *(__src + 4);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = v18;
          __dst[80] = __src[80];

          v27 = 3;
          goto LABEL_11;
        case 4u:
          v11 = type metadata accessor for DataFrame(0);
          (*(*(v11 - 8) + 16))(__dst, __src, v11);
          v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v13 = v12[12];
          *&__dst[v13] = *&__src[v13];
          *&__dst[v13 + 8] = *&__src[v13 + 8];
          v14 = v12[16];
          *&__dst[v14] = *&__src[v14];
          v30 = v7;
          *&__dst[v14 + 8] = *&__src[v14 + 8];
          v15 = v12[20];
          __dst[v15 + 32] = __src[v15 + 32];
          v16 = *&__src[v15];
          *&__dst[v15 + 16] = *&__src[v15 + 16];
          *&__dst[v15] = v16;

          v27 = 4;
LABEL_11:
          v10 = v27;
          v9 = v30;
LABEL_14:
          swift_storeEnumTagMultiPayload(__dst, v9, v10);
          swift_storeEnumTagMultiPayload(__dst, v5, 1);
          break;
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  v20 = a3[7];
  v21 = &__dst[v20];
  v22 = &__src[v20];
  v23 = *&__src[v20 + 24];
  if (!*&__dst[v20 + 24])
  {
    if (v23)
    {
      *(v21 + 3) = v23;
      (**(v23 - 8))(v21, v22);
      goto LABEL_22;
    }

LABEL_21:
    v24 = *v22;
    *(v21 + 1) = *(v22 + 1);
    *v21 = v24;
    goto LABEL_22;
  }

  if (!v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&__dst[v20]);
    goto LABEL_21;
  }

  __swift_assign_boxed_opaque_existential_0(&__dst[v20], &__src[v20]);
LABEL_22:
  v25 = a3[8];
  __dst[v25 + 8] = __src[v25 + 8];
  *&__dst[v25] = *&__src[v25];
  *&__dst[a3[9]] = *&__src[a3[9]];
  return __dst;
}

_BYTE *initializeWithTake for MLSoundClassifier.ModelParameters(_BYTE *__dst, _BYTE *__src, int *a3)
{
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
  {
    v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
    if (EnumCaseMultiPayload == 4)
    {
      v12 = type metadata accessor for DataFrame(0);
      (*(*(v12 - 8) + 32))(__dst, __src, v12);
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&__dst[v13[12]] = *&__src[v13[12]];
      *&__dst[v13[16]] = *&__src[v13[16]];
      v14 = v13[20];
      v15 = *&__src[v14 + 16];
      *&__dst[v14] = *&__src[v14];
      *&__dst[v14 + 16] = v15;
      __dst[v14 + 32] = __src[v14 + 32];
      v20 = 4;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(__dst, __src, *(*(v6 - 8) + 64));
          goto LABEL_12;
        }

        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 32))(__dst, __src, v8);
        v9 = v6;
        v10 = 0;
LABEL_10:
        swift_storeEnumTagMultiPayload(__dst, v9, v10);
LABEL_12:
        swift_storeEnumTagMultiPayload(__dst, v5, 1);
        goto LABEL_13;
      }

      v11 = type metadata accessor for URL(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v20 = 1;
    }

    v10 = v20;
    v9 = v6;
    goto LABEL_10;
  }

  memcpy(__dst, __src, *(*(v5 - 8) + 64));
LABEL_13:
  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  v16 = a3[7];
  v17 = *&__src[v16];
  *&__dst[v16 + 16] = *&__src[v16 + 16];
  *&__dst[v16] = v17;
  v18 = a3[8];
  *&__dst[v18] = *&__src[v18];
  __dst[v18 + 8] = __src[v18 + 8];
  *&__dst[a3[9]] = *&__src[a3[9]];
  return __dst;
}

char *assignWithTake for MLSoundClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(__dst);
    v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) != 1)
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
      goto LABEL_14;
    }

    v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
    if (EnumCaseMultiPayload == 4)
    {
      v12 = type metadata accessor for DataFrame(0);
      (*(*(v12 - 8) + 32))(__dst, __src, v12);
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&__dst[v13[12]] = *&__src[v13[12]];
      *&__dst[v13[16]] = *&__src[v13[16]];
      v14 = v13[20];
      v15 = *&__src[v14 + 16];
      *&__dst[v14] = *&__src[v14];
      *&__dst[v14 + 16] = v15;
      __dst[v14 + 32] = __src[v14 + 32];
      v21 = 4;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(__dst, __src, *(*(v6 - 8) + 64));
          goto LABEL_13;
        }

        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 32))(__dst, __src, v8);
        v9 = v6;
        v10 = 0;
LABEL_11:
        swift_storeEnumTagMultiPayload(__dst, v9, v10);
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v5, 1);
        goto LABEL_14;
      }

      v11 = type metadata accessor for URL(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v21 = 1;
    }

    v10 = v21;
    v9 = v6;
    goto LABEL_11;
  }

LABEL_14:
  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  v16 = a3[7];
  v17 = &__dst[v16];
  if (*&__dst[v16 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&__dst[v16]);
  }

  v18 = *&__src[v16];
  *(v17 + 1) = *&__src[v16 + 16];
  *v17 = v18;
  v19 = a3[8];
  *&__dst[v19] = *&__src[v19];
  __dst[v19 + 8] = __src[v19 + 8];
  *&__dst[a3[9]] = *&__src[a3[9]];
  return __dst;
}

uint64_t sub_D6318(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v5);
  }

  v7 = -1;
  if (((*(a1 + *(a3 + 28) + 24) >> 1) - 1) >= 0)
  {
    v7 = (*(a1 + *(a3 + 28) + 24) >> 1) - 1;
  }

  v8 = v7 + 1;
  if ((*(a1 + *(a3 + 28) + 24) & 0xFFFFFFFF00000001) == 0)
  {
    return v8;
  }

  return v4;
}

uint64_t sub_D639E(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 28);
  *(a1 + result + 24) = 2 * a2;
  return result;
}

uint64_t type metadata completion function for MLSoundClassifier.ModelParameters(uint64_t a1)
{
  result = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.Int64 + 64;
    v3[2] = &value witness table for Builtin.Int64 + 64;
    v3[3] = " ";
    v3[4] = &unk_3403D0;
    v3[5] = &value witness table for Builtin.Int64 + 64;
    swift_initStructMetadata(a1, 256, 6, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MLSoundClassifier.ModelParameters.FeaturePrintType(_BYTE *a1, int a2, int a3)
{
  if (a3)
  {
    v3 = a3 + 1;
    LODWORD(result) = 1;
    if (v3 >= 0x100)
    {
      LODWORD(result) = 2 * (v3 >= &loc_10000) + 2;
    }
  }

  else
  {
    LODWORD(result) = 0;
  }

  result = result;
  if (a2)
  {
    switch(result)
    {
      case 0:
        return result;
      case 1:
        *a1 = a2;
        return result;
      case 2:
        *a1 = a2;
        return result;
      case 3:
        goto LABEL_16;
      case 4:
        *a1 = a2;
        return result;
    }
  }

  switch(result)
  {
    case 0:
      return result;
    case 1:
      *a1 = 0;
      break;
    case 2:
      *a1 = 0;
      break;
    case 3:
LABEL_16:
      BUG();
    case 4:
      *a1 = 0;
      break;
  }

  return result;
}

uint64_t MLDataTable.rows.getter()
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *v0 = *v1;
  *(v0 + 8) = v3;
  return outlined copy of Result<_DataTable, Error>(v2, v3);
}

uint64_t *MLDataTable.Rows.subscript.getter(uint64_t a1)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    v4 = v1;
    outlined copy of Result<_DataTable, Error>(v3, 1);
    v5 = tc_v1_flex_list_create(0);
    if (!v5)
    {
      BUG();
    }

    v6 = v5;
    v7 = type metadata accessor for CMLSequence();
    v8 = swift_allocObject(v7, 25, 7);
    *(v8 + 16) = v6;
    *(v8 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v3, 1);
    v9 = tc_v1_flex_list_create(0);
    if (!v9)
    {
      BUG();
    }

    v10 = v9;
    result = swift_allocObject(v7, 25, 7);
    result[2] = v10;
    *(result + 24) = 1;
    *v4 = v8;
    v4[1] = _swiftEmptyDictionarySingleton;
    v4[2] = result;
  }

  else
  {
    if (a1 < 0)
    {
      BUG();
    }

    v18 = v1;
    v12 = *(*(v3 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(v3, 0);

    v13 = specialized handling<A, B, C>(_:_:_:)(v12, a1);
    if (!v13)
    {
      BUG();
    }

    v14 = type metadata accessor for CMLSequence();
    v15 = swift_allocObject(v14, 25, 7);
    *(v15 + 16) = v13;
    *(v15 + 24) = 1;

    outlined copy of Result<_DataTable, Error>(v3, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v3, 0);
    outlined copy of Result<_DataTable, Error>(v3, 0);
    v16 = _DataTable.columnIndexes.getter();
    outlined consume of Result<_DataTable, Error>(v3, 0);
    outlined consume of Result<_DataTable, Error>(v3, 0);
    result = v18;
    *v18 = v17;
    v18[1] = v16;
    v18[2] = v15;
  }

  return result;
}

Swift::Int MLDataTable.Rows.endIndex.getter()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  outlined copy of Result<_DataTable, Error>(*v0, v4);
  v1 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v3, v4);
  return v1;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance MLDataTable.Rows(uint64_t *a1)
{
  v3 = v1;
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v2, *(v2 + 8));
  *v3 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance MLDataTable.Rows(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance MLDataTable.Rows(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, *v3, *(v3 + 8));
  *v4 = result;
  return result;
}

Swift::Int protocol witness for Collection.endIndex.getter in conformance MLDataTable.Rows(uint64_t a1)
{
  v2 = v1;
  result = MLDataTable.Rows.endIndex.getter();
  *v2 = result;
  return result;
}

uint64_t protocol witness for Collection.subscript.read in conformance MLDataTable.Rows(uint64_t a1)
{
  v1 = *(a1 + 8);

  v1;
}

uint64_t protocol witness for Collection.indices.getter in conformance MLDataTable.Rows()
{
  v2 = v0;
  result = specialized RandomAccessCollection<>.indices.getter(*v1, *(v1 + 8));
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance MLDataTable.Rows(Swift::Int *a1, Swift::Int a2, Swift::Int *a3)
{
  v5 = v3;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4, *(v4 + 8));
  *v5 = result;
  *(v5 + 8) = v7 & 1;
  return result;
}

{
  return protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance MLDataTable.Rows(a1, a2, a3);
}

void protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataTable.Rows(uint64_t *a1, uint64_t *a2)
{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, a1[1], *a2, a2[1]);
}

Swift::Int protocol witness for Collection.index(after:) in conformance MLDataTable.Rows(Swift::Int *a1)
{
  v3 = v1;
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v2, *(v2 + 8));
  *v3 = result;
  return result;
}

Swift::Int protocol witness for Collection.formIndex(after:) in conformance MLDataTable.Rows(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance MLDataTable.Rows()
{
  v2 = *(v1 + 8);
  *result = *v1;
  *(result + 8) = v2;
  *(result + 16) = 0;
  return result;
}

uint64_t MLDataTable.Rows.description.getter(double a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v52 = *v1;
  outlined copy of Result<_DataTable, Error>(*v1, v3);
  outlined copy of Result<_DataTable, Error>(v2, v3);
  v4 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v52, v3);
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4, v2, v3);
  outlined consume of Result<_DataTable, Error>(v2, v3);
  v47 = v5;
  v6 = 0x2020203A7379654BLL;
  if (v5 <= 0)
  {
    v6 = 0x2020203A79654BLL;
  }

  v48 = v6;
  v53 = v2;
  v54 = v3;
  outlined copy of Result<_DataTable, Error>(v2, v3);
  outlined copy of Result<_DataTable, Error>(v2, v3);
  v7 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v2, v3);
  v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7, v2, v3);
  v50 = v2;
  outlined consume of Result<_DataTable, Error>(v2, v3);
  v9 = 10;
  if (v8 < 10)
  {
    v9 = v8;
  }

  if (v8 < 0)
  {
    BUG();
  }

  v55 = v3;
  if (v8)
  {
    v10 = 0;
    v51 = v3;
    v46 = v9;
    do
    {
      if (v10 == v9)
      {
        BUG();
      }

      if (v10)
      {
        outlined copy of Result<_DataTable, Error>(v50, v55);
        v11 = v10;
        MLDataTable.Rows.subscript.getter(v10);
        outlined consume of Result<_DataTable, Error>(v50, v55);
        v54;

        v12 = MLDataTable.Row.Values.description.getter(a1);
        v14 = v13;

        v15._countAndFlagsBits = v12;
        v15._object = v14;
        String.append(_:)(v15);
        v14;
        v53 = 0x2020202020200A20;
        v54 = 32;

        v15._countAndFlagsBits = 32;
        v15._object = 0xE100000000000000;
        String.append(_:)(v15);
        32;
        v15._countAndFlagsBits = 0x2020202020200A20;
        v15._object = 0xEA00000000002020;
        String.append(_:)(v15);
        32;
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(v50, v55);
        MLDataTable.Rows.subscript.getter(0);
        outlined consume of Result<_DataTable, Error>(v50, v55);

        v54;

        v16 = CMLSequence.size.getter();
        v17 = specialized RandomAccessCollection<>.distance(from:to:)(0, v16);

        v18 = CMLSequence.size.getter();
        v19 = specialized RandomAccessCollection<>.distance(from:to:)(0, v18);

        if (v19 < 0)
        {
          BUG();
        }

        v20 = CMLSequence.size.getter();
        v21 = specialized RandomAccessCollection<>.distance(from:to:)(0, v20);
        v53;
        if (v17 < 0 || v21 < v17)
        {
          BUG();
        }

        if (v17)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
          v22 = 0;
          v45 = v17;
          do
          {
            CMLSequence.value(at:)(v22);
            v23 = CMLFeatureValue.stringValue()();
            countAndFlagsBits = v23._countAndFlagsBits;
            object = v23._object;

            if (v24)
            {
              swift_unexpectedError(v24, "CreateML/MLDataTable.ColumnNames.swift", 38, 1, 59);
              BUG();
            }

            v26 = _swiftEmptyArrayStorage[2];
            v27 = v26 + 1;
            if (_swiftEmptyArrayStorage[3] >> 1 <= v26)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v26 + 1, 1);
              v27 = v26 + 1;
            }

            ++v22;
            _swiftEmptyArrayStorage[2] = v27;
            v28 = 2 * v26;
            _swiftEmptyArrayStorage[v28 + 4] = countAndFlagsBits;
            _swiftEmptyArrayStorage[v28 + 5] = object;
          }

          while (v45 != v22);
        }

        v29 = Array.description.getter(_swiftEmptyArrayStorage, &type metadata for String);
        v31 = v30;

        _swiftEmptyArrayStorage;
        v32._countAndFlagsBits = v29;
        v32._object = v31;
        String.append(_:)(v32);
        v31;
        if (v47 <= 0)
        {
          v37._countAndFlagsBits = 0x203A65756C61560ALL;
          v37._object = 0xE800000000000000;
          String.append(_:)(v37);
        }

        else
        {
          outlined copy of Result<_DataTable, Error>(v50, v55);
          MLDataTable.Rows.subscript.getter(0);
          outlined consume of Result<_DataTable, Error>(v50, v55);
          v54;

          v33 = MLDataTable.Row.Values.description.getter(a1);
          v35 = v34;

          v36._countAndFlagsBits = v33;
          v36._object = v35;
          String.append(_:)(v36);
          v35;
          v36._countAndFlagsBits = 0x3A7365756C61560ALL;
          v36._object = 0xE900000000000020;
          String.append(_:)(v36);
          32;
        }

        v11 = 0;
      }

      v38 = v11 + 1;
      v9 = v46;
      v39 = v38 == v46;
      v10 = v38;
      v3 = v51;
    }

    while (!v39);
  }

  v40 = v9;
  outlined copy of Result<_DataTable, Error>(v50, v55);
  outlined copy of Result<_DataTable, Error>(v50, v55);
  v41 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v50, v3);
  v42 = specialized RandomAccessCollection<>.distance(from:to:)(0, v41, v50, v55);
  outlined consume of Result<_DataTable, Error>(v50, v55);
  if (v40 < v42)
  {
    v43._countAndFlagsBits = 0x2E2E2E202CLL;
    v43._object = 0xE500000000000000;
    String.append(_:)(v43);
  }

  return v48;
}

uint64_t MLDataTable.Rows.debugDescription.getter(double a1)
{
  v2 = *v1;
  v5 = *(v1 + 8);
  outlined copy of Result<_DataTable, Error>(*v1, v5);
  v3 = MLDataTable.Rows.description.getter(a1);
  outlined consume of Result<_DataTable, Error>(v2, v5);
  return v3;
}

uint64_t MLDataTable.Rows.playgroundDescription.getter(double a1)
{
  v3 = v1;
  v4 = *v2;
  v10 = *(v2 + 8);
  outlined copy of Result<_DataTable, Error>(*v2, v10);
  v5 = MLDataTable.Rows.description.getter(a1);
  v7 = v6;
  outlined consume of Result<_DataTable, Error>(v4, v10);
  objc_allocWithZone(NSAttributedString);
  v8 = @nonobjc NSAttributedString.init(string:attributes:)(v5, v7, 0);
  result = type metadata accessor for NSAttributedString();
  v3[3] = result;
  *v3 = v8;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLDataTable.Rows and conformance MLDataTable.Rows()
{
  result = lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows;
  if (!lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Rows, &type metadata for MLDataTable.Rows);
    lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows;
  if (!lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Rows, &type metadata for MLDataTable.Rows);
    lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows;
  if (!lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Rows, &type metadata for MLDataTable.Rows);
    lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows;
  if (!lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Rows, &type metadata for MLDataTable.Rows);
    lazy protocol witness table cache variable for type MLDataTable.Rows and conformance MLDataTable.Rows = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<MLDataTable.Rows> and conformance <> Slice<A>(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Slice<MLDataTable.Rows>);
    a2();
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLDataTable.Rows(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  outlined copy of Result<_DataTable, Error>(*a2, v3);
  *a1 = v2;
  *(a1 + 8) = v3;
  return a1;
}

uint64_t assignWithCopy for MLDataTable.Rows(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Result<_DataTable, Error>(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of Result<_DataTable, Error>(v5, v6);
  return a1;
}

uint64_t assignWithTake for MLDataTable.Rows(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  outlined consume of Result<_DataTable, Error>(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLDataTable.Rows(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 8) >= 2u)
      {
        v2 = *(a1 + 8) ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLDataTable.Rows(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *a1 = a2 - 255;
    *(a1 + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(a1 + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(a1 + 9) = 0;
    }

    if (a2)
    {
      *(a1 + 8) = -a2;
    }
  }
}

uint64_t _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML30MLLogisticRegressionClassifierV_s5Error_pTt1g503_s8c4ML30efg80V12handleResult33_66687B25F10324110578427E448BFE6CLL_7session7fulfillys0G0Oyyts5H55_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZACyKXEfU_AE08Logisticfg8TrainingW8DelegateCTf1nc_n(uint64_t a1)
{
  v10 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLLogisticRegressionClassifier, Error>);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = alloca(v3);
  v7 = alloca(v3);

  MLLogisticRegressionClassifier.init(delegate:)(a1);
  swift_storeEnumTagMultiPayload(v9, v2, 0);
  outlined init with take of DataFrame?(v9, v9, &demangling cache variable for type metadata for Result<MLLogisticRegressionClassifier, Error>);
  outlined init with take of DataFrame?(v9, v10, &demangling cache variable for type metadata for Result<MLLogisticRegressionClassifier, Error>);
}

void MLLogisticRegressionClassifier.predictions(from:)(uint64_t a1)
{
  v20 = v2;
  v19 = v1;
  v5 = type metadata accessor for DataFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v17 = &v15;
  v10 = *(type metadata accessor for MLLogisticRegressionClassifier(0) + 28);
  v16 = v3;
  v11._rawValue = *(v3 + v10);
  v18 = a1;
  DataFrame.validateContainsColumns(_:context:)(v11, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v20 = v6;
    v13 = v17;
    v14 = v16;
    MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(v18, 0, 0);
    DataFrame.subscript.getter(*v14, v14[1]);
    (*(v20 + 8))(v13, v5);
  }
}

uint64_t type metadata accessor for MLLogisticRegressionClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLogisticRegressionClassifier;
  if (!type metadata singleton initialization cache for MLLogisticRegressionClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLogisticRegressionClassifier);
  }

  return result;
}

uint64_t *MLLogisticRegressionClassifier.predictions(from:)(uint64_t a1, __m128 a2)
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
  MLLogisticRegressionClassifier.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

uint64_t MLLogisticRegressionClassifier.evaluation(on:)(uint64_t a1)
{
  v4 = v1;
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v9 = *(v8 + 28);
  v28 = v2;
  v10._rawValue = *(v2 + v9);
  v27 = a1;
  DataFrame.validateContainsColumns(_:context:)(v10, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (v11)
  {
    goto LABEL_6;
  }

  v29 = &v25;
  v30 = v4;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v12, v26);
  inited[2] = 1;
  inited[3] = 2;
  v14 = *(v8 + 24);
  v15 = *(v28 + v14 + 8);
  inited[4] = *(v28 + v14);
  inited[5] = v15;

  v16 = v27;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
  if (v11)
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v4 = v30;
LABEL_6:
    *v4 = v11;
    v18 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v19 = 2;
    v20 = v4;
    v21 = v18;
    return swift_storeEnumTagMultiPayload(v20, v21, v19);
  }

  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v17 = v29;
  MLLogisticRegressionClassifier.Model.computeMetrics(on:)(v16);
  v23 = v17;
  v24 = v30;
  outlined init with take of MLClassifierMetrics(v23, v30, type metadata accessor for AnyClassificationMetrics);
  v20 = v24;
  v21 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v19 = 0;
  return swift_storeEnumTagMultiPayload(v20, v21, v19);
}

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
  MLLogisticRegressionClassifier.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

NSURL *MLLogisticRegressionClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v43 = v3;
  v48 = a2;
  v49 = a1;
  v4 = *(*(type metadata accessor for MLLogisticRegressionClassifier.Model(0) - 8) + 64);
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
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v49, 0xD00000000000001CLL, ("Algorithm type: " + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v44 = 0;
    v50 = &v33;
    v47 = v7;
    v48 = v11;
    v49 = v12;
    outlined init with copy of MLTrainingSessionParameters(v43, v45, type metadata accessor for MLLogisticRegressionClassifier.Model);
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
    outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for MLLogisticRegressionClassifier.Model);
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

uint64_t MLLogisticRegressionClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
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
  MLLogisticRegressionClassifier.write(to:metadata:)(v16, v16);
  return (*(v24 + 8))(v16, v10);
}

unint64_t MLLogisticRegressionClassifier.debugDescription.getter()
{
  v1 = v0;
  v25._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v25._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v25._countAndFlagsBits = MLLogisticRegressionClassifier.ModelParameters.description.getter();
  v7 = v6;
  v22._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v22._object = v8;
  v9 = *(v5 + 40);
  v10 = v7;
  outlined init with copy of MLTrainingSessionParameters(v1 + v9, &v20, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v7) = swift_getEnumCaseMultiPayload(&v20, v25._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v20, type metadata accessor for MLClassifierMetrics.Contents);
  v25._object = MLClassifierMetrics.description.getter();
  v12 = v11;
  v23 = 0xD000000000000029;
  v24 = "LogisticRegressionClassifier" + 0x8000000000000000;
  v13._countAndFlagsBits = v25._countAndFlagsBits;
  v25._countAndFlagsBits = v10;
  v13._object = v10;
  String.append(_:)(v13);
  v21._countAndFlagsBits = 0xD00000000000001ELL;
  v21._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  object = v22._object;
  String.append(_:)(v22);
  v15 = v21._object;
  String.append(_:)(v21);
  v15;
  if (v7 > 1)
  {
    v18 = object;
  }

  else
  {
    v21._countAndFlagsBits = 0xD000000000000020;
    v21._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v16._countAndFlagsBits = v25._object;
    v16._object = v12;
    String.append(_:)(v16);
    v17 = v21._object;
    String.append(_:)(v21);
    object;
    v18 = v12;
    LOBYTE(v12) = v17;
  }

  v18;
  v12;
  v25._countAndFlagsBits;
  return v23;
}

NSAttributedString MLLogisticRegressionClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLLogisticRegressionClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

void MLLogisticRegressionClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLLogisticRegressionClassifier(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLLogisticRegressionClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLLogisticRegressionClassifier(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLLogisticRegressionClassifier.targetColumn.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLLogisticRegressionClassifier(0) + 24));

  return v1;
}

uint64_t MLLogisticRegressionClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLLogisticRegressionClassifier(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLLogisticRegressionClassifier.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLLogisticRegressionClassifier(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLLogisticRegressionClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLLogisticRegressionClassifier(0);
  return outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLLogisticRegressionClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLLogisticRegressionClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLLogisticRegressionClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLLogisticRegressionClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 40), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t static MLLogisticRegressionClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLLogisticRegressionClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLLogisticRegressionClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v42 = a5;
  v39 = a4;
  v38 = a3;
  v35 = a2;
  v43 = a1;
  v7 = v5;
  v41 = v5;
  v36 = *(type metadata accessor for MLLogisticRegressionClassifier.Model(0) - 8);
  v34 = *(v36 + 64);
  v8 = alloca(v34);
  v9 = alloca(v34);
  v37 = &v33;
  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v45 = *(v44 - 8);
  v10 = *(v45 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v46 = *(v13 + 36);
  v40 = v13;
  v14 = v46 + v7;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v33);
  (*(v45 + 8))(&v33, v44);
  v15 = v41;
  *(v41 + v46) = 0;
  v44 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v45 = v14;
  v16 = v14;
  v17 = v15;
  swift_storeEnumTagMultiPayload(v16, v44, 1);
  v18 = *(v13 + 40);
  v19 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v20 = swift_allocError(&type metadata for MLCreateError, v19, 0, 0);
  *v21 = 0xD0000000000000C0;
  *(v21 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v21 + 16) = 0;
  *(v21 + 32) = 0;
  *(v21 + 48) = 0;
  *(v17 + v18) = v20;
  v46 = v17 + v18;
  swift_storeEnumTagMultiPayload(v17 + v18, v44, 2);
  v22 = v40;
  *(v17 + *(v40 + 28)) = v39;
  v23 = *(v22 + 24);
  *(v17 + v23) = v35;
  *(v17 + v23 + 8) = v38;
  v24 = v37;
  outlined init with copy of MLTrainingSessionParameters(v43, v37, type metadata accessor for MLLogisticRegressionClassifier.Model);
  v25 = *(v36 + 80);
  v26 = ~*(v36 + 80) & (v25 + 16);
  v27 = swift_allocObject(&unk_390D20, v26 + v34, v25 | 7);
  outlined init with take of MLClassifierMetrics(v24, v27 + v26, type metadata accessor for MLLogisticRegressionClassifier.Model);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLLogisticRegressionClassifier.init(_:targetColumn:featureColumns:parameters:), v27);
  v29 = v28;

  if (v6)
  {
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v42);
    outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLLogisticRegressionClassifier.Model);
    v39;
    v38;
    outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLClassifierMetrics);
  }

  else
  {
    v31 = v40;
    v32 = v41;
    *(v41 + *(v40 + 20)) = v29;
    result = outlined init with take of MLClassifierMetrics(v43, v32, type metadata accessor for MLLogisticRegressionClassifier.Model);
    qmemcpy((v32 + *(v31 + 32)), v42, 0x49uLL);
  }

  return result;
}

uint64_t closure #1 in MLLogisticRegressionClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

uint64_t MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v193 = a4;
  _ = a3;
  v7 = v5;
  v173 = v5;
  v187._countAndFlagsBits = a2;
  v183 = v6;
  v189 = a5;
  v188 = a1;
  v8 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v166 = v151;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v163 = v151;
  v13 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v167 = v151;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v164 = v151;
  v161 = *(type metadata accessor for MLLogisticRegressionClassifier.Model(0) - 8);
  v18 = *(v161 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v169 = v151;
  v160 = v18;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v185 = v151;
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v157 = v151;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v156 = v151;
  v168 = type metadata accessor for AnyColumn(0);
  v29 = *(*(v168 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v175 = v151;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v179 = v151;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v178 = v151;
  v36 = *(*(type metadata accessor for MLLogisticRegressionClassifier.Classifier(0) - 8) + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v184 = v151;
  v192 = type metadata accessor for DataFrame(0);
  v182 = *(v192 - 8);
  v39 = *(v182 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v172 = v151;
  v42 = alloca(v39);
  v43 = alloca(v39);
  v171 = v151;
  v44 = alloca(v39);
  v45 = alloca(v39);
  v162 = v151;
  v46 = alloca(v39);
  v47 = alloca(v39);
  v174 = v151;
  v186 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v48 = *(*(v186 - 8) + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v191 = v151;
  v176 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v51 = *(*(v176 - 8) + 64);
  v52 = alloca(v51);
  v53 = alloca(v51);
  v165 = v151;
  v54 = alloca(v51);
  v55 = alloca(v51);
  v158 = v151;
  v56 = alloca(v51);
  v57 = alloca(v51);
  v155 = v151;
  v58 = alloca(v51);
  v59 = alloca(v51);
  v187._object = v151;
  v180 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v177 = *(v180 - 8);
  v60 = *(v177 + 64);
  v61 = alloca(v60);
  v62 = alloca(v60);
  v181 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v63 = *(v181 + 9);
  v64 = v7 + v63;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v151);
  (*(v177 + 8))(v151, v180);
  v65 = v173;
  *(v173 + v63) = 0;
  v66 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v177 = v64;
  swift_storeEnumTagMultiPayload(v64, v66, 1);
  v67 = *(v181 + 10);
  v180 = v65 + v67;
  v159 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v68 = swift_allocError(&type metadata for MLCreateError, v159, 0, 0);
  *v69 = 0xD0000000000000C0;
  *(v69 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v69 + 16) = 0;
  *(v69 + 32) = 0;
  *(v69 + 48) = 0;
  *(v65 + v67) = v68;
  v170 = v66;
  swift_storeEnumTagMultiPayload(v180, v66, 2);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v189 + 8, &v153, &demangling cache variable for type metadata for Any?);
  if (!v154)
  {
    BUG();
  }

  object = v187._object;
  v71 = (v187._object + *(v176 + 48));
  outlined init with take of Any(&v153, v152);
  swift_dynamicCast(v191, v152, &type metadata for Any + 8, v186, 7);
  v72 = v188;
  v73 = v183;
  MLLogisticRegressionClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(object, v71, v188);
  if (v73)
  {
    _;
    v193;
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v189);
    (*(v182 + 8))(v72, v192);
    v74 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData;
    v75 = v191;
LABEL_4:
    outlined destroy of MLActivityClassifier.ModelParameters(v75, v74);
LABEL_6:
    outlined destroy of MLActivityClassifier.ModelParameters(v177, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v180, type metadata accessor for MLClassifierMetrics);
  }

  v183 = v71;
  outlined destroy of MLActivityClassifier.ModelParameters(v191, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  v76 = v193;
  v77 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(object, v187._countAndFlagsBits, _, v193);
  v191 = 0;
  v186 = v77;
  v76;
  v79 = object;
  v80 = v155;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v79, v155, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v81 = v80 + *(v176 + 48);
  v82 = v192;
  if (__swift_getEnumTagSinglePayload(v81, 1, v192) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v81, &demangling cache variable for type metadata for DataFrame?);
    v193 = *(v182 + 8);
    v193(v80, v82);
    v83 = v82;
  }

  else
  {
    v89 = v81;
    v90 = v182;
    (*(v182 + 32))(v174, v89, v82);
    v193 = *(v90 + 8);
    v193(v80, v82);
    v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    inited = swift_initStackObject(v91, v151);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = v187._countAndFlagsBits;
    inited[5] = _;

    DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(("Algorithm type: " + 0x8000000000000000), 0xD00000000000001CLL));
    if (v93)
    {
      swift_setDeallocating(inited);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      _;
      v186;
      outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v189);
      v94 = v192;
      v95 = v193;
      v193(v188, v192);
      v95(v174, v94);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v187._object, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      goto LABEL_6;
    }

    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v104 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
    v105 = swift_allocObject(v104, 48, 7);
    v105[2] = 2;
    v105[3] = 4;
    v105[4] = &type metadata for String;
    v105[5] = &type metadata for Int;
    v106._countAndFlagsBits = v187._countAndFlagsBits;
    v106._object = _;
    v107 = v174;
    DataFrame.validateColumnTypes(_:_:context:)(v106, v105, __PAIR128__(("Algorithm type: " + 0x8000000000000000), 0xD00000000000001CLL));
    if (v108)
    {
      _;
      v186;
      v105;
      outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v189);
      v109 = v107;
      v110 = v192;
      v111 = v193;
      v193(v188, v192);
      v111(v109, v110);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v187._object, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      goto LABEL_6;
    }

    v191 = 0;
    v113 = v107;
    v114 = v192;
    v193(v113, v192);
    LOBYTE(v113) = v105;
    v83 = v114;
    v113;
  }

  DataFrame.subscript.getter(v187._countAndFlagsBits, _);
  v84 = v158;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v187._object, v158, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v85 = v157;
  outlined init with take of DataFrame?(v84 + *(v176 + 48), v157, &demangling cache variable for type metadata for DataFrame?);
  v86 = v83;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v85, 1, v83);
  v88 = v156;
  if (EnumTagSinglePayload == 1)
  {
    v193(v84, v86);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v85, &demangling cache variable for type metadata for DataFrame?);
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v168);
  }

  else
  {
    DataFrame.subscript.getter(v187._countAndFlagsBits, _);
    v96 = v85;
    v97 = v193;
    v193(v96, v86);
    __swift_storeEnumTagSinglePayload(v88, 0, 1, v168);
    v97(v84, v86);
  }

  v98 = v88;
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(v189, v152);
  v99 = _;

  v100 = v186;

  v101 = v184;
  v102 = v191;
  MLLogisticRegressionClassifier.Classifier.init(trainingLabelsColumn:validationLabelsColumn:annotationColumnName:featureColumnNames:parameters:)(v178, v98, v187._countAndFlagsBits, v99, v100, v152);
  v191 = v102;
  if (v102)
  {
    v99;
    v100;
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v189);
    v193(v188, v192);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v187._object, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    goto LABEL_6;
  }

  if (*(*(v101 + 104) + 16) <= 1uLL)
  {
    _;
    v186;
    swift_allocError(&type metadata for MLCreateError, v159, 0, 0);
    *v112 = 0xD000000000000027;
    *(v112 + 8) = "onClassifier\n\nParameters\n" + 0x8000000000000000;
    *(v112 + 16) = 0;
    *(v112 + 32) = 0;
    *(v112 + 48) = 0;
    swift_willThrow();
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v189);
    v193(v188, v192);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v187._object, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v74 = type metadata accessor for MLLogisticRegressionClassifier.Classifier;
    v75 = v101;
    goto LABEL_4;
  }

  v103 = v185;
  MLLogisticRegressionClassifier.Classifier.fitted(to:validateOn:eventHandler:)(v187._object, v183, 0, 0);
  v115 = v181;
  v116 = *(v181 + 6);
  v117 = v173;
  *(v173 + v116) = v187._countAndFlagsBits;
  *(v117 + v116 + 8) = _;
  v183 = v117 + v115[8];
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(v189, v183);
  *(v117 + v115[7]) = v186;
  outlined init with copy of MLTrainingSessionParameters(v103, v169, type metadata accessor for MLLogisticRegressionClassifier.Model);
  v118 = *(v161 + 80);
  v119 = ~*(v161 + 80) & (v118 + 16);
  v120 = swift_allocObject(&unk_390CC0, v119 + v160, v118 | 7);
  outlined init with take of MLClassifierMetrics(v169, v120 + v119, type metadata accessor for MLLogisticRegressionClassifier.Model);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:), v120);
  v122 = v121;

  v123 = *(v181 + 5);
  v181 = v122;
  *(v117 + v123) = v122;
  outlined init with copy of MLTrainingSessionParameters(v185, v117, type metadata accessor for MLLogisticRegressionClassifier.Model);
  v124 = v162;
  MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(v187._object, 0, 0);
  v191 = 0;
  v126 = *v185;
  v127 = v185[1];
  DataFrame.subscript.getter(*v185, v127);
  v178 = v126;
  v128 = v126;
  v187._countAndFlagsBits = v127;
  v129 = v187._object;
  DataFrame.subscript.getter(v128, v127);
  v130 = v163;
  AnyClassificationMetrics.init(_:_:)(v179, v175);
  v131 = v124;
  v132 = v192;
  v193(v131, v192);
  v133 = v164;
  outlined init with take of MLClassifierMetrics(v130, v164, type metadata accessor for AnyClassificationMetrics);
  swift_storeEnumTagMultiPayload(v133, v170, 0);
  outlined assign with take of MLClassifierMetrics(v133, v177);
  v134 = v165;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v129, v165, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v135 = v134 + *(v176 + 48);
  if (__swift_getEnumTagSinglePayload(v135, 1, v132) == 1)
  {
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v189);
    v136 = v192;
    v137 = v193;
    v193(v188, v192);
    outlined destroy of MLActivityClassifier.ModelParameters(v185, type metadata accessor for MLLogisticRegressionClassifier.Model);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v187._object, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    outlined destroy of MLActivityClassifier.ModelParameters(v184, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v135, &demangling cache variable for type metadata for DataFrame?);
    return (v137)(v134, v136);
  }

  else
  {
    v138 = v171;
    v139 = v135;
    v140 = v192;
    (*(v182 + 32))(v171, v139, v192);
    v141 = v193;
    v193(v134, v140);
    v142 = v191;
    MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(v138, 0, 0);
    if (v142)
    {
      outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v189);
      v143 = v192;
      v141(v188, v192);
      v141(v138, v143);
      v125 = v184;
      outlined destroy of MLActivityClassifier.ModelParameters(v185, type metadata accessor for MLLogisticRegressionClassifier.Model);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v187._object, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      outlined destroy of MLActivityClassifier.ModelParameters(v125, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
      outlined destroy of MLActivityClassifier.ModelParameters(v173, type metadata accessor for MLLogisticRegressionClassifier.Model);
      v186;
      _;

      outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v183);
      goto LABEL_6;
    }

    v193 = v141;
    v144 = v178;
    v191 = 0;
    DataFrame.subscript.getter(v178, v187._countAndFlagsBits);
    v145 = v175;
    DataFrame.subscript.getter(v144, v187._countAndFlagsBits);
    v146 = v166;
    AnyClassificationMetrics.init(_:_:)(v179, v145);
    v147 = v192;
    v148 = v193;
    v193(v172, v192);
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v189);
    v148(v188, v147);
    v148(v171, v147);
    outlined destroy of MLActivityClassifier.ModelParameters(v185, type metadata accessor for MLLogisticRegressionClassifier.Model);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v187._object, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v149 = v146;
    v150 = v167;
    outlined init with take of MLClassifierMetrics(v149, v167, type metadata accessor for AnyClassificationMetrics);
    swift_storeEnumTagMultiPayload(v150, v170, 0);
    outlined destroy of MLActivityClassifier.ModelParameters(v184, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
    return outlined assign with take of MLClassifierMetrics(v150, v180);
  }
}

uint64_t closure #1 in MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
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
  return swift_task_switch(closure #1 in MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
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
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(a5, &v11);
  MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLLogisticRegressionClassifier.ModelParameters(a5);
}

uint64_t MLLogisticRegressionClassifier.init(checkpoint:)(uint64_t a1)
{
  v76 = v2;
  v94 = a1;
  v3 = v1;
  v90 = v1;
  v82 = *(type metadata accessor for MLLogisticRegressionClassifier.Model(0) - 8);
  v4 = *(v82 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v80 = v74;
  v81 = v4;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v93 = v74;
  v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Double, Int>.Configuration);
  v78 = *(v77 - 8);
  v9 = *(v78 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v79 = v74;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v83 = v74;
  v89 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v14 = *(*(v89 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v85 = v74;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v91 = v74;
  v84 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
  v19 = *(*(v84 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v92 = v74;
  v95 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v87 = *(v95 - 8);
  v22 = *(v87 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v25 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v88 = *(v25 + 36);
  v26 = v3 + v88;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v74);
  (*(v87 + 8))(v74, v95);
  v27 = v90;
  *(v90 + v88) = 0;
  v95 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v87 = v26;
  swift_storeEnumTagMultiPayload(v26, v95, 1);
  v86 = v25;
  v28 = *(v25 + 40);
  v29 = v27 + v28;
  v30 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v31 = swift_allocError(&type metadata for MLCreateError, v30, 0, 0);
  *v32 = 0xD0000000000000C0;
  *(v32 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v32 + 16) = 0;
  *(v32 + 32) = 0;
  *(v32 + 48) = 0;
  *(v90 + v28) = v31;
  v88 = v29;
  swift_storeEnumTagMultiPayload(v29, v95, 2);
  switch(*(v94 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v95 = v30;
      v33 = 0x696C616974696E69;
      v34 = 0xEB0000000064657ALL;
      break;
    case 1:
      v95 = v30;
      v33 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0;
      v35 = v92;
      v36 = v91;
      goto LABEL_9;
    case 3:
      v95 = v30;
      v33 = 0x697461756C617665;
LABEL_7:
      v34 = 0xEA0000000000676ELL;
      break;
    case 4:
      v95 = v30;
      v34 = 0xEB00000000676E69;
      v33 = 0x636E657265666E69;
      break;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)(v33, v34, 0x676E696E69617274, 0xE800000000000000, 0);
  v34;
  v38 = (v37 & 1) == 0;
  v35 = v92;
  v36 = v91;
  if (v38)
  {
    swift_allocError(&type metadata for MLCreateError, v95, 0, 0);
    *v55 = 0xD000000000000049;
    *(v55 + 8) = "ds at least two labels." + 0x8000000000000000;
    *(v55 + 16) = 0;
    *(v55 + 32) = 0;
    *(v55 + 48) = 0;
    swift_willThrow();
    v53 = type metadata accessor for MLCheckpoint;
    v54 = v94;
  }

  else
  {
LABEL_9:
    *v35 = 0;
    *(v35 + 8) = 0xE000000000000000;
    *(v35 + 16) = _swiftEmptyArrayStorage;
    *v36 = 0;
    *(v36 + 16) = 256;
    v39 = v89;
    swift_storeEnumTagMultiPayload(v36, v89, 0);
    v95 = v35 + 32;
    *(v35 + 48) = 0;
    *(v35 + 32) = 0;
    *(v35 + 24) = 10;
    *(v35 + 64) = _mm_loadh_ps(&qword_33FD10);
    *(v35 + 80) = xmmword_33FD20;
    *(v35 + 96) = 1;
    v40 = v36;
    v41 = v85;
    outlined init with copy of MLTrainingSessionParameters(v40, v85, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
    v75 = v39;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v74);
    outlined init with take of MLClassifierMetrics(v41, boxed_opaque_existential_0, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
    outlined assign with take of Any?(v74, v95);
    outlined destroy of MLActivityClassifier.ModelParameters(v91, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
    *(v35 + 104) = _swiftEmptyArrayStorage;
    *(v35 + 112) = 1;
    *(v35 + 120) = _swiftEmptyArrayStorage;
    *(v35 + 128) = 0xD000000000000013;
    *(v35 + 136) = "raining samples." + 0x8000000000000000;
    v43 = lazy protocol witness table accessor for type Double and conformance Double();
    v44 = v83;
    LogisticRegressionClassifier.Configuration.init()(&type metadata for Double, &type metadata for Int, &protocol witness table for Double, v43, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int);
    v45 = v79;
    v46 = v44;
    v47 = v77;
    v48 = v78;
    (*(v78 + 16))(v79, v46, v77);
    BaseLogisticRegressionClassifier.init(configuration:)(v45);
    (*(v48 + 8))(v83, v47);
    v49 = lazy protocol witness table accessor for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier();
    v50 = v93;
    v51 = v94;
    v52 = v76;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v94, v84, v49);
    if (!v52)
    {
      v56 = v80;
      outlined init with copy of MLTrainingSessionParameters(v50, v80, type metadata accessor for MLLogisticRegressionClassifier.Model);
      v57 = *(v82 + 80);
      v58 = ~*(v82 + 80) & (v57 + 16);
      v59 = swift_allocObject(&unk_390CE8, v58 + v81, v57 | 7);
      outlined init with take of MLClassifierMetrics(v56, v59 + v58, type metadata accessor for MLLogisticRegressionClassifier.Model);
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLLogisticRegressionClassifier.init(checkpoint:), v59);
      v61 = v60;

      v62 = v86;
      v63 = v90;
      *(v90 + *(v86 + 20)) = v61;
      outlined init with copy of MLTrainingSessionParameters(v93, v63, type metadata accessor for MLLogisticRegressionClassifier.Model);
      v64 = v91;
      *v91 = 0;
      *(v64 + 16) = 256;
      swift_storeEnumTagMultiPayload(v64, v89, 0);
      v65 = *(v62 + 32) + v63 + 8;
      *(v65 + 16) = 0;
      *v65 = 0;
      v66 = _mm_loadh_ps(&qword_33FD10);
      *(v65 - 8) = 10;
      *(v65 + 32) = v66;
      *(v65 + 48) = xmmword_33FD20;
      *(v65 + 64) = 1;
      v67 = v85;
      outlined init with copy of MLTrainingSessionParameters(v64, v85, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
      v75 = v89;
      v68 = __swift_allocate_boxed_opaque_existential_0(v74);
      outlined init with take of MLClassifierMetrics(v67, v68, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
      outlined assign with take of Any?(v74, v65);
      outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
      v69 = v86;
      v70 = *(v86 + 24);
      v71 = v90;
      *(v90 + v70) = 0;
      *(v71 + v70 + 8) = 0xE000000000000000;
      v72 = v71;
      outlined destroy of MLActivityClassifier.ModelParameters(v94, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v93, type metadata accessor for MLLogisticRegressionClassifier.Model);
      outlined destroy of MLActivityClassifier.ModelParameters(v92, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
      result = *(v69 + 28);
      *(v72 + result) = _swiftEmptyArrayStorage;
      return result;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLCheckpoint);
    v53 = type metadata accessor for MLLogisticRegressionClassifier.Classifier;
    v54 = v35;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v54, v53);
  outlined destroy of MLActivityClassifier.ModelParameters(v87, type metadata accessor for MLClassifierMetrics);
  return outlined destroy of MLActivityClassifier.ModelParameters(v88, type metadata accessor for MLClassifierMetrics);
}

uint64_t closure #1 in MLLogisticRegressionClassifier.init(checkpoint:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

void *static MLLogisticRegressionClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v13 = static MLLogisticRegressionClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLLogisticRegressionClassifier>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

__int128 *static MLLogisticRegressionClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v12 = static MLLogisticRegressionClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLLogisticRegressionClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLLogisticRegressionClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

__int128 *static MLLogisticRegressionClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = static MLLogisticRegressionClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLLogisticRegressionClassifier>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

__int128 *static MLLogisticRegressionClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = v6;
  v57 = a6;
  v49 = a4;
  v50 = a3;
  v51 = a2;
  v58 = a1;
  v8 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v54 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v55 = &v44;
  v59 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v13 = *(*(v59 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v60 = &v44;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v56 = &v44;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v61 = &v44;
  v52 = a5;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a5 + 8, &v44, &demangling cache variable for type metadata for Any?);
  if (!v45)
  {
    BUG();
  }

  v53 = v16;
  v24 = v61;
  v25 = (v61 + *(v16 + 48));
  v26 = &v46;
  outlined init with take of Any(&v44, &v46);
  swift_dynamicCast(&v44, &v46, &type metadata for Any + 8, v59, 7);
  v27 = v62;
  MLLogisticRegressionClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v24, v25, v58);
  outlined destroy of MLActivityClassifier.ModelParameters(&v44, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  if (!v27)
  {
    v28 = v61;
    v29 = v56;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, v56, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v30 = v53;
    v62 = v29 + *(v53 + 48);
    v31 = v28;
    v32 = v60;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v60, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v33 = v32 + *(v30 + 48);
    outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(v52, &v46);
    outlined init with copy of MLTrainingSessionParameters(v57, v55, type metadata accessor for MLTrainingSessionParameters);
    v34 = type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate(0);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v59 = v34;
    v58 = swift_allocObject(v34, v35, v36);
    v37 = v49;

    v38 = v50;

    v39 = LogisticRegressionClassifierTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:modelParameters:sessionParameters:)(v56, v33, v51, v38, v37, &v46, v55);
    v40 = type metadata accessor for DataFrame(0);
    (*(*(v40 - 8) + 8))(v60, v40);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for DataFrame?);
    v47 = v59;
    v48 = &protocol witness table for LogisticRegressionClassifierTrainingSessionDelegate;
    *&v46 = v39;
    v41 = v54;
    outlined init with copy of MLTrainingSessionParameters(v57, v54, type metadata accessor for MLTrainingSessionParameters);
    v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>);
    swift_allocObject(v42, *(v42 + 48), *(v42 + 52));

    v26 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v46, v41, 8);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  }

  return v26;
}

uint64_t static MLLogisticRegressionClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = LogisticRegressionClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for LogisticRegressionClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 8);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLLogisticRegressionClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *))
{
  v16 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLLogisticRegressionClassifier, Error>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  if (a2)
  {
    v14[0] = a1;
    swift_storeEnumTagMultiPayload(v14, v6, 1);
    swift_errorRetain(a1);
    v16(v14);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v14);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v11 = type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate(0);
    swift_dynamicCast(&v15, v14, v10, v11, 7);
    v12 = v15;

    _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML30MLLogisticRegressionClassifierV_s5Error_pTt1g503_s8c4ML30efg80V12handleResult33_66687B25F10324110578427E448BFE6CLL_7session7fulfillys0G0Oyyts5H55_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZACyKXEfU_AE08Logisticfg8TrainingW8DelegateCTf1nc_n(v12);
    v16(v14);
  }

  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14, &demangling cache variable for type metadata for Result<MLLogisticRegressionClassifier, Error>);
}

uint64_t MLLogisticRegressionClassifier.init(delegate:)(uint64_t a1)
{
  v62 = a1;
  v60 = v1;
  v59 = type metadata accessor for MLClassifierMetrics(0);
  v3 = *(*(v59 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v57 = v46;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = v46;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v55 = v46;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v52 = v46;
  v61 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v14 = *(*(v61 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v53 = v46;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v20 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v21 = *(*(v20 - 1) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v24 = v62 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v62 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters, v48, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, v46, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v46, 1, v20) == 1)
  {
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v46, v46, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(&v46[v20[8]], v51);
  v25 = v20[6];
  v54 = *&v46[v25];
  v26 = *&v46[v25 + 8];
  v27 = v20[7];
  v58 = v46;
  v28 = *&v46[v27];
  v29 = v62 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
  swift_beginAccess(v62 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model, v49, 0, 0);
  v30 = v52;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v52, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
  v31 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    BUG();
  }

  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(v51, v47);

  v32 = v26;
  v33 = v53;
  MLLogisticRegressionClassifier.init(_:targetColumn:featureColumns:parameters:)(v30, v54, v32, v28, v47);
  if (v2)
  {

    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v51);
    return outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
  }

  else
  {
    v35 = v33;
    v36 = v60;
    outlined init with take of MLClassifierMetrics(v35, v60, type metadata accessor for MLLogisticRegressionClassifier);
    v37 = v62;
    v38 = v62 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics;
    swift_beginAccess(v62 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics, v47, 0, 0);
    v39 = v38;
    v40 = v55;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, v55, &demangling cache variable for type metadata for MLClassifierMetrics?);
    if (__swift_getEnumTagSinglePayload(v40, 1, v59) == 1)
    {
      BUG();
    }

    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v51);
    outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
    outlined assign with take of MLClassifierMetrics(v40, v36 + *(v61 + 36));
    v41 = v37 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics;
    swift_beginAccess(v37 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics, v50, 0, 0);
    v42 = v41;
    v43 = v56;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, v56, &demangling cache variable for type metadata for MLClassifierMetrics?);

    if (__swift_getEnumTagSinglePayload(v43, 1, v59) == 1)
    {
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v43, &demangling cache variable for type metadata for MLClassifierMetrics?);
    }

    else
    {
      v44 = v43;
      v45 = v57;
      outlined init with take of MLClassifierMetrics(v44, v57, type metadata accessor for MLClassifierMetrics);
      return outlined assign with take of MLClassifierMetrics(v45, *(v61 + 40) + v60);
    }
  }
}

uint64_t partial apply for closure #1 in MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t outlined assign with take of MLClassifierMetrics(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLClassifierMetrics(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier()
{
  result = lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier;
  if (!lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier)
  {
    v1 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLLogisticRegressionClassifier.Classifier, v1);
    lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier;
  if (!lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier)
  {
    v1 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLLogisticRegressionClassifier.Classifier, v1);
    lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in MLLogisticRegressionClassifier.init(checkpoint:)(uint64_t a1)
{
  type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLLogisticRegressionClassifier.init(checkpoint:)(a1);
}

id sub_DABCD()
{
  v1 = v0;
  result = MLLogisticRegressionClassifier.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLLogisticRegressionClassifier(void *a1, void *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
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

    v8 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
    (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
    v11 = *(v8 + 28);
    v12 = *(a2 + v11 + 8);
    *(a1 + v11) = *(a2 + v11);
    *(a1 + v11 + 8) = v12;
    v13 = a3[5];
    v52 = *(a2 + v13);
    *(a1 + v13) = v52;
    v14 = a3[6];
    *(a1 + v14) = *(a2 + v14);
    *(a1 + v14 + 8) = *(a2 + v14 + 8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v15 = a3[8];
    v62 = a1 + v15;
    v57 = a2 + v15;
    v16 = (a2 + v15 + 8);
    v59 = (a1 + v15 + 8);
    *(a1 + v15) = *(a2 + v15);
    v17 = *(a2 + v15 + 32);

    v52;

    if (v17)
    {
      *(v62 + 4) = v17;
      (**(v17 - 8))(v59, v16, v17);
    }

    else
    {
      v18 = *v16;
      v59[1] = v16[1];
      *v59 = v18;
    }

    *(v62 + 40) = *(v57 + 40);
    *(v62 + 56) = *(v57 + 56);
    v62[72] = v57[72];
    v19 = a3[9];
    v20 = (a1 + v19);
    v21 = (a2 + v19);
    v58 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v21, v58);
    if (EnumCaseMultiPayload == 2)
    {
      v27 = v20;
      v28 = *v21;
      swift_errorRetain(*v21);
      *v27 = v28;
      v20 = v27;
      EnumCaseMultiPayload = 2;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v20 = *v21;
      v53 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v60 = v20;
      v23 = v53[5];
      v51 = v60 + v23;
      v24 = type metadata accessor for DataFrame(0);
      v54 = *(*(v24 - 8) + 16);
      v25 = v21 + v23;
      v20 = v60;
      v54(v51, v25, v24);
      v26 = v24;
      EnumCaseMultiPayload = 1;
      v54(v60 + v53[6], v21 + v53[6], v26);
    }

    else
    {
      v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v29 = swift_getEnumCaseMultiPayload(v21, v63);
      v61 = v29 == 1;
      v30 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v29 == 1)
      {
        v30 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v31 = __swift_instantiateConcreteTypeFromMangledName(v30);
      (*(*(v31 - 8) + 16))(v20, v21, v31);
      swift_storeEnumTagMultiPayload(v20, v63, v61);
    }

    swift_storeEnumTagMultiPayload(v20, v58, EnumCaseMultiPayload);
    v32 = a3[10];
    v33 = (v4 + v32);
    v34 = (a2 + v32);
    v35 = swift_getEnumCaseMultiPayload(v34, v58);
    if (v35 == 2)
    {
      v40 = *v34;
      swift_errorRetain(v40);
      *v33 = v40;
      v50 = 2;
    }

    else
    {
      if (v35 != 1)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v45 = swift_getEnumCaseMultiPayload(v34, v44);
        v46 = v45 == 1;
        v47 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v45 == 1)
        {
          v47 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v48 = __swift_instantiateConcreteTypeFromMangledName(v47);
        (*(*(v48 - 8) + 16))(v33, v34, v48);
        swift_storeEnumTagMultiPayload(v33, v44, v46);
        v42 = v33;
        v43 = v58;
        v41 = 0;
        goto LABEL_24;
      }

      *v33 = *v34;
      v56 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v36 = *(v56 + 20);
      v64 = v33 + v36;
      v37 = type metadata accessor for DataFrame(0);
      v38 = v34 + v36;
      v39 = *(*(v37 - 8) + 16);
      v39(v64, v38, v37);
      v39(v33 + *(v56 + 24), v34 + *(v56 + 24), v37);
      v50 = 1;
    }

    v41 = v50;
    v42 = v33;
    v43 = v58;
LABEL_24:
    swift_storeEnumTagMultiPayload(v42, v43, v41);
    return v4;
  }

  v7 = *a2;
  *v4 = *a2;
  v4 = (v7 + ((v5 + 16) & ~v5));

  return v4;
}

uint64_t destroy for MLLogisticRegressionClassifier(void *a1, int *a2)
{
  a1[1];
  v4 = a1[2];
  if (v4)
  {
    v4;
    a1[4];
  }

  v5 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v6 = a1 + *(v5 + 24);
  v7 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v7 - 8) + 8))(v6, v7);
  *(a1 + *(v5 + 28));

  *(a1 + a2[6] + 8);
  *(a1 + a2[7]);
  v8 = a2[8];
  if (*(a1 + v8 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v8 + 8));
  }

  v9 = (a1 + a2[9]);
  v10 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v10);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v9;
      break;
    case 1:
      v30 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v14 = v9 + *(v30 + 20);
      v29 = v10;
      v15 = type metadata accessor for DataFrame(0);
      v16 = v14;
      v17 = *(*(v15 - 8) + 8);
      v17(v16, v15);
      v18 = v15;
      v10 = v29;
      v17(v9 + *(v30 + 24), v18);
      break;
    case 0:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v9, v12) == 1)
      {
        v13 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v13 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v19 = __swift_instantiateConcreteTypeFromMangledName(v13);
      (*(*(v19 - 8) + 8))(v9, v19);
      break;
  }

  v20 = (a1 + a2[10]);
  result = swift_getEnumCaseMultiPayload(v20, v10);
  switch(result)
  {
    case 2:
      return *v20;
    case 1:
      v24 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v25 = v20 + *(v24 + 20);
      v26 = type metadata accessor for DataFrame(0);
      v27 = *(*(v26 - 8) + 8);
      v27(v25, v26);
      return (v27)(v20 + *(v24 + 24), v26);
    case 0:
      v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v20, v22) == 1)
      {
        v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledName(v23);
      return (*(*(v28 - 8) + 8))(v20, v28);
  }

  return result;
}

void *initializeWithCopy for MLLogisticRegressionClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a2[2];

  if (v3)
  {
    a1[2] = v3;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v4 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  v7 = *(v4 + 28);
  v8 = *(a2 + v7 + 8);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + v7 + 8) = v8;
  v9 = a3[5];
  v46 = *(a2 + v9);
  *(a1 + v9) = v46;
  v10 = a3[6];
  *(a1 + v10) = *(a2 + v10);
  *(a1 + v10 + 8) = *(a2 + v10 + 8);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v11 = a3[8];
  v12 = a1 + v11;
  v50 = a2 + v11;
  v13 = (a2 + v11 + 8);
  v14 = (a1 + v11 + 8);
  *(a1 + v11) = *(a2 + v11);
  v15 = *(a2 + v11 + 32);

  v46;

  if (v15)
  {
    *(v12 + 4) = v15;
    (**(v15 - 8))(v14, v13, v15);
  }

  else
  {
    v16 = *v13;
    v14[1] = v13[1];
    *v14 = v16;
  }

  *(v12 + 40) = *(v50 + 40);
  *(v12 + 56) = *(v50 + 56);
  v12[72] = v50[72];
  v17 = a3[9];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v51 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v19, v51);
  if (EnumCaseMultiPayload == 2)
  {
    v25 = *v19;
    swift_errorRetain(*v19);
    *v18 = v25;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *v18 = *v19;
    v52 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v21 = *(v52 + 20);
    v47 = v18 + v21;
    v22 = type metadata accessor for DataFrame(0);
    v23 = v19 + v21;
    v24 = *(*(v22 - 8) + 16);
    v24(v47, v23, v22);
    v24(v18 + *(v52 + 24), v19 + *(v52 + 24), v22);
  }

  else
  {
    v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v26 = swift_getEnumCaseMultiPayload(v19, v53);
    v27 = v26 == 1;
    v28 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v26 == 1)
    {
      v28 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledName(v28);
    (*(*(v29 - 8) + 16))(v18, v19, v29);
    swift_storeEnumTagMultiPayload(v18, v53, v27);
  }

  swift_storeEnumTagMultiPayload(v18, v51, EnumCaseMultiPayload);
  v30 = a3[10];
  v31 = (a1 + v30);
  v32 = (a2 + v30);
  v33 = swift_getEnumCaseMultiPayload(a2 + v30, v51);
  if (v33 == 2)
  {
    v38 = *v32;
    swift_errorRetain(v38);
    *v31 = v38;
  }

  else if (v33 == 1)
  {
    *v31 = *v32;
    v55 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v34 = *(v55 + 20);
    v49 = v31 + v34;
    v35 = type metadata accessor for DataFrame(0);
    v36 = v32 + v34;
    v37 = *(*(v35 - 8) + 16);
    v37(v49, v36, v35);
    v37(v31 + *(v55 + 24), v32 + *(v55 + 24), v35);
  }

  else
  {
    v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v39 = v32;
    v40 = swift_getEnumCaseMultiPayload(v32, v56);
    v41 = v40 == 1;
    v42 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v40 == 1)
    {
      v42 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledName(v42);
    (*(*(v43 - 8) + 16))(v31, v39, v43);
    swift_storeEnumTagMultiPayload(v31, v56, v41);
  }

  swift_storeEnumTagMultiPayload(v31, v51, v33);
  return a1;
}

void *assignWithCopy for MLLogisticRegressionClassifier(void *a1, void *a2, int *a3)
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
      v9 = a2;
      a1[3] = a2[3];
      v10 = a1[4];
      a1[4] = a2[4];

      v10;
      goto LABEL_9;
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
    *v5 = *v6;
    a1[4] = a2[4];
  }

  else
  {
    if (v8)
    {
      a1[2] = v8;
      v9 = a2;
      a1[3] = a2[3];
      a1[4] = a2[4];

      goto LABEL_9;
    }

    a1[4] = a2[4];
    *v5 = *v6;
  }

  v9 = a2;
LABEL_9:
  v11 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v12 = *(v11 + 24);
  v13 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v13 - 8) + 24))(a1 + v12, &v9[v12], v13);
  v14 = *(v11 + 28);
  v15 = v9[v14 + 8];
  v16 = *(a1 + v14);
  *(a1 + v14) = *&v9[v14];
  *(a1 + v14 + 8) = v15;

  v16;
  v17 = a3[5];
  v18 = *&v9[v17];
  v19 = *(a1 + v17);
  *(a1 + v17) = v18;
  v18;

  v20 = a3[6];
  *(a1 + v20) = *&v9[v20];
  v21 = *(a1 + v20 + 8);
  *(a1 + v20 + 8) = *&v9[v20 + 8];

  v21;
  v22 = a3[7];
  v23 = *(a1 + v22);
  *(a1 + v22) = *&v9[v22];

  v23;
  v24 = a3[8];
  v25 = a1 + v24;
  v26 = v9;
  v27 = &v9[v24];
  v28 = v26 + v24 + 8;
  v29 = (a1 + v24 + 8);
  *(a1 + v24) = *(v26 + v24);
  v30 = *(v26 + v24 + 32);
  if (*(a1 + v24 + 32))
  {
    if (v30)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + v24 + 8), v28);
      goto LABEL_16;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v24 + 8));
  }

  else if (v30)
  {
    *(v25 + 4) = v30;
    (**(v30 - 8))(v29, v28);
    goto LABEL_16;
  }

  v31 = *v28;
  v29[1] = *(v28 + 16);
  *v29 = v31;
LABEL_16:
  *(v25 + 5) = *(v27 + 5);
  *(v25 + 6) = *(v27 + 6);
  *(v25 + 7) = *(v27 + 7);
  *(v25 + 8) = *(v27 + 8);
  v25[72] = v27[72];
  v32 = a2;
  if (a1 != a2)
  {
    v33 = a3[9];
    v34 = (a1 + v33);
    v35 = (a2 + v33);
    outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLClassifierMetrics.Contents);
    v36 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v35, v36);
    v61 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v41 = *v35;
      swift_errorRetain(v41);
      *v34 = v41;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v34 = *v35;
      v66 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v63 = v36;
      v38 = *(v66 + 20);
      v59 = v34 + v38;
      v60 = type metadata accessor for DataFrame(0);
      v39 = *(*(v60 - 8) + 16);
      v40 = v35 + v38;
      v36 = v63;
      v39(v59, v40, v60);
      v39(v34 + *(v66 + 24), v35 + *(v66 + 24), v60);
      v32 = a2;
    }

    else
    {
      v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v42 = swift_getEnumCaseMultiPayload(v35, v64);
      v67 = v42 == 1;
      v43 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v42 == 1)
      {
        v43 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v44 = __swift_instantiateConcreteTypeFromMangledName(v43);
      (*(*(v44 - 8) + 16))(v34, v35, v44);
      swift_storeEnumTagMultiPayload(v34, v64, v67);
    }

    swift_storeEnumTagMultiPayload(v34, v36, v61);
    v45 = a3[10];
    v46 = (a1 + v45);
    v47 = (v32 + v45);
    outlined destroy of MLActivityClassifier.ModelParameters(a1 + v45, type metadata accessor for MLClassifierMetrics.Contents);
    v48 = swift_getEnumCaseMultiPayload(v47, v36);
    if (v48 == 2)
    {
      v53 = *v47;
      swift_errorRetain(v53);
      *v46 = v53;
    }

    else
    {
      v70 = v48;
      if (v48 == 1)
      {
        *v46 = *v47;
        v62 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v49 = *(v62 + 20);
        v68 = v46 + v49;
        v65 = v36;
        v50 = type metadata accessor for DataFrame(0);
        v72 = *(*(v50 - 8) + 16);
        v51 = v47 + v49;
        v48 = 1;
        v72(v68, v51, v50);
        v52 = v50;
        v36 = v65;
        v72(v46 + *(v62 + 24), v47 + *(v62 + 24), v52);
      }

      else
      {
        v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v54 = swift_getEnumCaseMultiPayload(v47, v73);
        v55 = v54 == 1;
        v56 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v54 == 1)
        {
          v56 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v57 = __swift_instantiateConcreteTypeFromMangledName(v56);
        (*(*(v57 - 8) + 16))(v46, v47, v57);
        swift_storeEnumTagMultiPayload(v46, v73, v55);
        v48 = v70;
      }
    }

    swift_storeEnumTagMultiPayload(v46, v36, v48);
  }

  return a1;
}

uint64_t initializeWithTake for MLLogisticRegressionClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v5 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v6 = *(v5 + 24);
  v7 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = *(v5 + 28);
  *(a1 + v8 + 8) = *(a2 + v8 + 8);
  *(a1 + v8) = *(a2 + v8);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  qmemcpy((a1 + a3[8]), (a2 + a3[8]), 0x49uLL);
  v47 = a3;
  v9 = a3[9];
  v10 = (v9 + a1);
  v11 = (a2 + v9);
  v12 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v11, v12);
  if (EnumCaseMultiPayload == 1)
  {
    *v10 = *v11;
    v45 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v21 = *(v45 + 20);
    v46 = &v10[v21];
    v51 = v12;
    v22 = type metadata accessor for DataFrame(0);
    v23 = &v11[v21];
    v24 = *(*(v22 - 8) + 32);
    v24(v46, v23, v22);
    v25 = v22;
    v12 = v51;
    v24(&v10[*(v45 + 24)], &v11[*(v45 + 24)], v25);
    v20 = 1;
    v18 = v10;
    v19 = v51;
LABEL_7:
    swift_storeEnumTagMultiPayload(v18, v19, v20);
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v14 = swift_getEnumCaseMultiPayload(v11, v50);
    v15 = v14 == 1;
    v16 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v14 == 1)
    {
      v16 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledName(v16);
    (*(*(v17 - 8) + 32))(v10, v11, v17);
    swift_storeEnumTagMultiPayload(v10, v50, v15);
    v18 = v10;
    v19 = v12;
    v20 = 0;
    goto LABEL_7;
  }

  memcpy(v10, v11, *(*(v12 - 8) + 64));
LABEL_9:
  v26 = v47[10];
  v27 = (a1 + v26);
  v28 = (v26 + a2);
  v29 = swift_getEnumCaseMultiPayload(v28, v12);
  if (v29 == 1)
  {
    *v27 = *v28;
    v39 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v52 = v12;
    v40 = *(v39 + 20);
    v48 = &v27[v40];
    v41 = type metadata accessor for DataFrame(0);
    v42 = &v28[v40];
    v43 = *(*(v41 - 8) + 32);
    v43(v48, v42, v41);
    v43(&v27[*(v39 + 24)], &v28[*(v39 + 24)], v41);
    v38 = 1;
    v36 = v27;
    v37 = v52;
  }

  else
  {
    if (v29)
    {
      memcpy(v27, v28, *(*(v12 - 8) + 64));
      return a1;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v31 = swift_getEnumCaseMultiPayload(v28, v30);
    v32 = v12;
    v33 = v31 == 1;
    v34 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v31 == 1)
    {
      v34 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledName(v34);
    (*(*(v35 - 8) + 32))(v27, v28, v35);
    swift_storeEnumTagMultiPayload(v27, v30, v33);
    v36 = v27;
    v37 = v32;
    v38 = 0;
  }

  swift_storeEnumTagMultiPayload(v36, v37, v38);
  return a1;
}

void *assignWithTake for MLLogisticRegressionClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];
  v4;
  v5 = a1 + 2;
  v6 = a2 + 2;
  v7 = a1[2];
  if (v7)
  {
    v8 = a2[2];
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
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
      *v5 = *v6;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v5 = *v6;
  }

  v10 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = *(v10 + 28);
  v14 = *(a2 + v13 + 8);
  v15 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + v13 + 8) = v14;
  v15;
  v16 = a3[5];
  v17 = *(a1 + v16);
  *(a1 + v16) = *(a2 + v16);

  v18 = a3[6];
  *(a1 + v18) = *(a2 + v18);
  v19 = *(a1 + v18 + 8);
  *(a1 + v18 + 8) = *(a2 + v18 + 8);
  v19;
  v20 = a3[7];
  v21 = *(a1 + v20);
  *(a1 + v20) = *(a2 + v20);
  v21;
  v22 = a3[8];
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = (a2 + v22 + 8);
  v26 = (a1 + v22 + 8);
  *(a1 + v22) = *(a2 + v22);
  if (*(a1 + v22 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v22 + 8));
  }

  v27 = *v25;
  v26[1] = v25[1];
  *v26 = v27;
  *(v23 + 40) = *(v24 + 40);
  *(v23 + 56) = *(v24 + 56);
  v23[72] = v24[72];
  v28 = a2;
  if (a1 == a2)
  {
    return a1;
  }

  v29 = a3[9];
  v30 = (a1 + v29);
  v31 = (a2 + v29);
  outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLClassifierMetrics.Contents);
  v71 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v31, v71);
  if (EnumCaseMultiPayload == 1)
  {
    *v30 = *v31;
    v66 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v41 = *(v66 + 20);
    v64 = v30 + v41;
    v42 = type metadata accessor for DataFrame(0);
    v43 = *(*(v42 - 8) + 32);
    v44 = v31 + v41;
    v45 = v42;
    v43(v64, v44);
    (v43)(v30 + *(v66 + 24), v31 + *(v66 + 24), v45);
    v28 = a2;
    v40 = 1;
    v37 = v30;
    v38 = v71;
    v39 = v71;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v46 = v31;
      v38 = v71;
      memcpy(v30, v46, *(*(v71 - 8) + 64));
      goto LABEL_17;
    }

    v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v33 = swift_getEnumCaseMultiPayload(v31, v65);
    v34 = v33 == 1;
    v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v33 == 1)
    {
      v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledName(v35);
    (*(*(v36 - 8) + 32))(v30, v31, v36);
    swift_storeEnumTagMultiPayload(v30, v65, v34);
    v37 = v30;
    v38 = v71;
    v39 = v71;
    v40 = 0;
  }

  swift_storeEnumTagMultiPayload(v37, v39, v40);
LABEL_17:
  v47 = a3[10];
  v48 = a1 + v47;
  v49 = v28 + v47;
  outlined destroy of MLActivityClassifier.ModelParameters(a1 + v47, type metadata accessor for MLClassifierMetrics.Contents);
  v50 = swift_getEnumCaseMultiPayload(v49, v38);
  if (v50 == 1)
  {
    *v48 = *v49;
    v70 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v59 = *(v70 + 20);
    v68 = &v48[v59];
    v60 = type metadata accessor for DataFrame(0);
    v61 = &v49[v59];
    v62 = *(*(v60 - 8) + 32);
    v62(v68, v61, v60);
    v62(&v48[*(v70 + 24)], &v49[*(v70 + 24)], v60);
    v58 = 1;
    v56 = v48;
    v57 = v71;
  }

  else
  {
    if (v50)
    {
      memcpy(v48, v49, *(*(v38 - 8) + 64));
      return a1;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v52 = swift_getEnumCaseMultiPayload(v49, v51);
    v53 = v52 == 1;
    v54 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v52 == 1)
    {
      v54 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v55 = __swift_instantiateConcreteTypeFromMangledName(v54);
    (*(*(v55 - 8) + 32))(v48, v49, v55);
    swift_storeEnumTagMultiPayload(v48, v51, v53);
    v56 = v48;
    v57 = v71;
    v58 = 0;
  }

  swift_storeEnumTagMultiPayload(v56, v57, v58);
  return a1;
}

uint64_t sub_DC1CA(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLClassifierMetrics(0);
    v4 = *(a3 + 36) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + *(a3 + 20)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20)) >> 1) + 1;
  }

  return result;
}

uint64_t sub_DC257(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    if (a3 == 0x7FFFFFFF)
    {
      result = *(a4 + 20);
      *(a1 + result) = 2 * (a2 - 1);
      return result;
    }

    v7 = type metadata accessor for MLClassifierMetrics(0);
    v6 = *(a4 + 36) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLLogisticRegressionClassifier(uint64_t a1)
{
  result = type metadata accessor for MLLogisticRegressionClassifier.Model(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &value witness table for Builtin.UnknownObject + 64;
    v4[2] = &unk_340780;
    v4[3] = &value witness table for Builtin.BridgeObject + 64;
    v4[4] = &unk_340798;
    result = type metadata accessor for MLClassifierMetrics.Contents(319);
    if (v3 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      v6 = v5;
      swift_initStructMetadata(a1, 256, 7, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v11 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v1 = *(v11 - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 16);
  v4 = *(v1 + 64);
  v5 = v3 + v0;
  *(v0 + v3 + 8);
  v6 = *(v0 + v3 + 16);
  if (v6)
  {
    v6;
    *(v5 + 32);
  }

  v7 = v4 + v3;
  v8 = v5 + *(v11 + 24);
  v9 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v9 - 8) + 8))(v8, v9);
  *(v5 + *(v11 + 28));
  return swift_deallocObject(v0, v7, v2 | 7);
}

uint64_t partial apply for closure #1 in MLLogisticRegressionClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLLogisticRegressionClassifier.init(_:targetColumn:featureColumns:parameters:)(a1);
}

Class static MLWordTagger.buildOptions(_:)(uint64_t a1)
{
  v42 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for AnyHashable, &type metadata for Any + 8, &protocol witness table for AnyHashable);
  if (!*(a1 + 104))
  {
    if (!kNLPMaximumIterationsKey)
    {
      BUG();
    }

    v1 = *(a1 + 96);
    *&v37 = kNLPMaximumIterationsKey;
    v2 = type metadata accessor for CFStringRef(0);
    v3 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
    AnyHashable.init<A>(_:)(&v37, v2, v3);
    v38 = &type metadata for Int;
    *&v37 = v1;
    outlined init with take of Any(&v37, v34);
    v4 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v42);
    v40 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v35, isUniquelyReferenced_nonNull_native);
    v42 = v40;
    outlined destroy of AnyHashable(v35);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = NLModelConfigurationOptionsKeyLanguage;
    *&v37 = NLModelConfigurationOptionsKeyLanguage;
    v39 = type metadata accessor for NLModelConfigurationOptionsKey(0);
    v41 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
    v8 = v6;
    v7;
    AnyHashable.init<A>(_:)(&v37, v39, v41);
    v38 = type metadata accessor for NLLanguage(0);
    *&v37 = v8;
    outlined init with take of Any(&v37, v34);
    v39 = v8;
    v9 = v42;
    v10 = swift_isUniquelyReferenced_nonNull_native(v42);
    v40 = v9;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v35, v10);
    v42 = v40;
    outlined destroy of AnyHashable(v35);
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 16) == 0;
  v39 = *a1;
  v13 = NLModelConfigurationOptionsKeyRevision;
  if (v12)
  {
    *&v37 = NLModelConfigurationOptionsKeyRevision;
    v21 = type metadata accessor for NLModelConfigurationOptionsKey(0);
    v22 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
    v13;
    v41 = v21;
    v23 = v21;
    v24 = v22;
    AnyHashable.init<A>(_:)(&v37, v23, v22);
    if (v11)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(v35);
      outlined destroy of AnyHashable(v35);
      outlined destroy of Any?(&v37);
    }

    else
    {
      v38 = &type metadata for Int;
      *&v37 = v39;
      outlined init with take of Any(&v37, v34);
      v25 = v42;
      v26 = swift_isUniquelyReferenced_nonNull_native(v42);
      v40 = v25;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v35, v26);
      v42 = v40;
      outlined destroy of AnyHashable(v35);
    }

    *&v37 = NLModelConfigurationOptionsKeyUseCRF;
    NLModelConfigurationOptionsKeyUseCRF;
    AnyHashable.init<A>(_:)(&v37, v41, v24);
    v38 = &type metadata for Bool;
    LOBYTE(v37) = 1;
    outlined init with take of Any(&v37, v34);
  }

  else
  {
    *&v37 = NLModelConfigurationOptionsKeyRevision;
    v14 = type metadata accessor for NLModelConfigurationOptionsKey(0);
    v41 = v14;
    v33 = v11;
    v15 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
    v36 = v15;
    v13;
    AnyHashable.init<A>(_:)(&v37, v14, v15);
    v38 = &type metadata for Int;
    *&v37 = v33;
    outlined init with take of Any(&v37, v34);
    v16 = v42;
    v17 = swift_isUniquelyReferenced_nonNull_native(v42);
    v40 = v16;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v35, v17);
    v42 = v40;
    outlined destroy of AnyHashable(v35);
    *&v37 = NLModelConfigurationOptionsKeyUseTransfer;
    NLModelConfigurationOptionsKeyUseTransfer;
    AnyHashable.init<A>(_:)(&v37, v41, v36);
    v38 = &type metadata for Bool;
    LOBYTE(v37) = 1;
    outlined init with take of Any(&v37, v34);
    v18 = v42;
    v19 = swift_isUniquelyReferenced_nonNull_native(v42);
    v40 = v18;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v35, v19);
    v42 = v40;
    outlined destroy of AnyHashable(v35);
    *&v37 = NLModelConfigurationOptionsKeyEmbeddingType;
    if ((v39 & 0xFE) != 0)
    {
      NLModelConfigurationOptionsKeyEmbeddingType;
      AnyHashable.init<A>(_:)(&v37, v41, v36);
      v20 = &NLModelEmbeddingTypeContextual;
    }

    else
    {
      NLModelConfigurationOptionsKeyEmbeddingType;
      AnyHashable.init<A>(_:)(&v37, v41, v36);
      v20 = &NLModelEmbeddingTypeDynamic;
    }

    v27 = *v20;
    v38 = type metadata accessor for NLModelEmbeddingType(0);
    *&v37 = v27;
    outlined init with take of Any(&v37, v34);
    v27;
  }

  v28 = v42;
  v29 = swift_isUniquelyReferenced_nonNull_native(v42);
  v40 = v28;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v35, v29);
  v30 = v40;
  outlined destroy of AnyHashable(v35);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v30;
  return isa;
}

void *implicit closure #1 in closure #1 in closure #3 in static MLWordTagger.createWordTaggerModel<A, B>(trainingExamples:validatingExamples:modelParameters:)(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * a2);
  v2;
  return v2;
}

uint64_t closure #1 in FeatureMatrixBuilder.fillArray(from:size:column:)(id *a1)
{
  v2 = v1;
  v3 = *a1;
  MLShapedArray.init(_:)(v3, &type metadata for Double, &protocol witness table for Double);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  return __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
}

uint64_t FeatureMatrixBuilder.fillArray<A, B>(_:descriptor:size:row:column:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v76 = v13;
  v64 = v14;
  v69 = a6;
  v70 = a3;
  v71._countAndFlagsBits = a2;
  v83 = a1;
  v65 = *(a11 - 8);
  v15 = *(v65 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v66 = &v60;
  v67 = *(a9 + 16);
  v18 = *(*(v67 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  *&v78 = &v60;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2(255, &type metadata for Int, a11, 0, 0);
  v21 = *(*(type metadata accessor for Optional(0, TupleTypeMetadata2) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v81 = &v60;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for PartialRangeFrom<Int>);
  v25 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>();
  v26 = *(a12 + 8);
  *&v61 = v24;
  *(&v61 + 1) = a10;
  v62 = v25;
  v63 = v26;
  v74 = type metadata accessor for Zip2Sequence(0, &v61);
  v27 = *(*(v74 - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v75 = &v60;
  v73 = v24;
  *&v61 = v24;
  *(&v61 + 1) = a10;
  v71._object = v25;
  v62 = v25;
  v72 = v26;
  v63 = v26;
  v79 = type metadata accessor for Zip2Sequence.Iterator(0, &v61);
  v77 = *(v79 - 8);
  v30 = *(v77 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v33 = &v60;
  v34 = dispatch thunk of Collection.count.getter(a10, a12);
  if (v34 == v69)
  {
    *&v61 = 0;
    zip<A, B>(_:_:)(&v61, v83, v73, a10, v71._object, v72);
    Zip2Sequence.makeIterator()(v74);
    v35 = TupleTypeMetadata2;
    v36 = v81;
    v68 = &v60;
    while (1)
    {
      Zip2Sequence.Iterator.next()(v79);
      if (__swift_getEnumTagSinglePayload(v36, 1, v35) == 1)
      {
        break;
      }

      v37 = v35;
      v38 = a8 + *v36;
      if (__OFADD__(a8, *v36))
      {
        BUG();
      }

      v39 = v66;
      (*(v65 + 32))(v66, &v36[*(v37 + 48)], a11);
      v40 = *(a9 + 24);
      v41 = v39;
      v42 = v67;
      dispatch thunk of FloatingPoint.init<A>(_:)(v41, a11, a13, v67, *(v40 + 16));
      v43 = v40;
      v36 = v81;
      v44 = type metadata accessor for DenseMatrix(0, v42, v43);
      v33 = v68;
      v45 = v38;
      v35 = TupleTypeMetadata2;
      DenseMatrix.subscript.setter(v78, a7, v45, v44);
    }

    return (*(v77 + 8))(v33, v79);
  }

  else
  {
    v46 = v69;
    *&v61 = 0;
    *(&v61 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(73);
    v47._object = "es a training checkpoint." + 0x8000000000000000;
    v47._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v47);
    v82 = v46;
    v48 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v50 = v49;
    v47._countAndFlagsBits = v48;
    v47._object = v49;
    String.append(_:)(v47);
    v50;
    v47._countAndFlagsBits = 0x61656620726F6620;
    v47._object = 0xEE00272065727574;
    String.append(_:)(v47);
    v51 = v70;

    v47._countAndFlagsBits = v71._countAndFlagsBits;
    v47._object = v51;
    String.append(_:)(v47);
    v51;
    v47._object = "Expected arrays with size " + 0x8000000000000000;
    v47._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v47);
    v82 = dispatch thunk of Collection.count.getter(a10, a12);
    v52 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    LOBYTE(v51) = v53;
    v47._countAndFlagsBits = v52;
    v47._object = v53;
    String.append(_:)(v47);
    v51;
    v47._countAndFlagsBits = 0x20776F7220746120;
    v47._object = 0xE800000000000000;
    String.append(_:)(v47);
    v82 = a7;
    v54 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v56 = v55;
    v47._countAndFlagsBits = v54;
    v47._object = v55;
    String.append(_:)(v47);
    v56;
    v47._countAndFlagsBits = 46;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    v78 = v61;
    v57 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v57, 0, 0);
    *v58 = v78;
    *(v58 + 16) = 0;
    *(v58 + 32) = 0;
    *(v58 + 48) = 0;
    return swift_willThrow();
  }
}

{
  v76 = v13;
  v64 = v14;
  v69 = a6;
  v70 = a3;
  v71._countAndFlagsBits = a2;
  v83 = a1;
  v65 = *(a11 - 8);
  v15 = *(v65 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v66 = &v60;
  v67 = *(a9 + 16);
  v18 = *(*(v67 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  *&v78 = &v60;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2(255, &type metadata for Int, a11, 0, 0);
  v21 = *(*(type metadata accessor for Optional(0, TupleTypeMetadata2) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v81 = &v60;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for PartialRangeFrom<Int>);
  v25 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>();
  v26 = *(a12 + 8);
  *&v61 = v24;
  *(&v61 + 1) = a10;
  v62 = v25;
  v63 = v26;
  v74 = type metadata accessor for Zip2Sequence(0, &v61);
  v27 = *(*(v74 - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v75 = &v60;
  v73 = v24;
  *&v61 = v24;
  *(&v61 + 1) = a10;
  v71._object = v25;
  v62 = v25;
  v72 = v26;
  v63 = v26;
  v79 = type metadata accessor for Zip2Sequence.Iterator(0, &v61);
  v77 = *(v79 - 8);
  v30 = *(v77 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v33 = &v60;
  v34 = dispatch thunk of Collection.count.getter(a10, a12);
  if (v34 == v69)
  {
    *&v61 = 0;
    zip<A, B>(_:_:)(&v61, v83, v73, a10, v71._object, v72);
    Zip2Sequence.makeIterator()(v74);
    v35 = TupleTypeMetadata2;
    v36 = v81;
    v68 = &v60;
    while (1)
    {
      Zip2Sequence.Iterator.next()(v79);
      if (__swift_getEnumTagSinglePayload(v36, 1, v35) == 1)
      {
        break;
      }

      v37 = v35;
      v38 = a8 + *v36;
      if (__OFADD__(a8, *v36))
      {
        BUG();
      }

      v39 = v66;
      (*(v65 + 32))(v66, &v36[*(v37 + 48)], a11);
      v40 = *(a9 + 24);
      v41 = v39;
      v42 = v67;
      dispatch thunk of BinaryFloatingPoint.init<A>(_:)(v41, a11, a13, v67, v40);
      v43 = v40;
      v36 = v81;
      v44 = type metadata accessor for DenseMatrix(0, v42, v43);
      v33 = v68;
      v45 = v38;
      v35 = TupleTypeMetadata2;
      DenseMatrix.subscript.setter(v78, a7, v45, v44);
    }

    return (*(v77 + 8))(v33, v79);
  }

  else
  {
    v46 = v69;
    *&v61 = 0;
    *(&v61 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(73);
    v47._object = "es a training checkpoint." + 0x8000000000000000;
    v47._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v47);
    v82 = v46;
    v48 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v50 = v49;
    v47._countAndFlagsBits = v48;
    v47._object = v49;
    String.append(_:)(v47);
    v50;
    v47._countAndFlagsBits = 0x61656620726F6620;
    v47._object = 0xEE00272065727574;
    String.append(_:)(v47);
    v51 = v70;

    v47._countAndFlagsBits = v71._countAndFlagsBits;
    v47._object = v51;
    String.append(_:)(v47);
    v51;
    v47._object = "Expected arrays with size " + 0x8000000000000000;
    v47._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v47);
    v82 = dispatch thunk of Collection.count.getter(a10, a12);
    v52 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    LOBYTE(v51) = v53;
    v47._countAndFlagsBits = v52;
    v47._object = v53;
    String.append(_:)(v47);
    v51;
    v47._countAndFlagsBits = 0x20776F7220746120;
    v47._object = 0xE800000000000000;
    String.append(_:)(v47);
    v82 = a7;
    v54 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v56 = v55;
    v47._countAndFlagsBits = v54;
    v47._object = v55;
    String.append(_:)(v47);
    v56;
    v47._countAndFlagsBits = 46;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    v78 = v61;
    v57 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v57, 0, 0);
    *v58 = v78;
    *(v58 + 16) = 0;
    *(v58 + 32) = 0;
    *(v58 + 48) = 0;
    return swift_willThrow();
  }
}