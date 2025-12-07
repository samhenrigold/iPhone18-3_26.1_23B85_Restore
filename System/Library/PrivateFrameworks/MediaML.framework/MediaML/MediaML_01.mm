uint64_t WifiModel.train(dataFrame:)(double a1)
{
  v16 = *v2;
  v13 = (*v2 + 16);
  v14 = (*v2 + 304);
  v15 = (*v2 + 360);
  *(v16 + 304) = *v2;
  *(v16 + 776) = a1;
  *(v16 + 784) = v1;

  if (v1)
  {
    v10 = v13[47];

    return MEMORY[0x2822009F8](WifiModel.train(dataFrame:), v10);
  }

  else
  {
    v3 = v13[47];
    *v15 = a1;
    v11 = (*(*v3 + 168) + **(*v3 + 168));
    v4 = swift_task_alloc();
    v13[97] = v4;
    *v4 = *v14;
    v4[1] = WifiModel.train(dataFrame:);
    v5 = v13[94];
    v6 = v13[78];
    v7 = v13[75];
    v8 = v13[73];

    return v11(v6, v7, v8, v5);
  }
}

{
  v7 = *v2;
  v6 = *v2 + 16;
  *(v7 + 304) = *v2;
  *(v7 + 800) = a1;
  *(v7 + 808) = v1;

  if (v1)
  {
    v3 = *(v6 + 376);
    v4 = WifiModel.train(dataFrame:);
  }

  else
  {
    v3 = *(v6 + 376);
    v4 = WifiModel.train(dataFrame:);
  }

  return MEMORY[0x2822009F8](v4, v3);
}

void *closure #1 in WifiModel.train(dataFrame:)(uint64_t a1)
{
  v54 = partial apply for implicit closure #1 in closure #1 in WifiModel.train(dataFrame:);
  v55 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  v56 = closure #1 in OSLogArguments.append(_:)partial apply;
  v57 = closure #1 in OSLogArguments.append(_:)partial apply;
  v58 = closure #1 in OSLogArguments.append(_:)partial apply;
  v81 = 0;
  v79 = 0;
  v59 = 0;
  v60 = 0;
  v61 = type metadata accessor for Logger();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v65 = &v20 - v64;
  v69 = type metadata accessor for MetricsKey();
  v66 = *(v69 - 8);
  v67 = v69 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69, v3);
  v71 = &v20 - v68;
  v81 = a1;
  v72 = Event.metrics.getter();
  static MetricsKey.validationError.getter();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
  v4 = lazy protocol witness table accessor for type MetricsKey and conformance MetricsKey();
  MEMORY[0x259C87380](v80, v71, v72, v69, v70, v4);

  if (v80[3])
  {
    if (swift_dynamicCast())
    {
      v50 = v73;
      v51 = 0;
    }

    else
    {
      v50 = 0;
      v51 = 1;
    }

    v49 = v51;
    v48 = v50;
    result = (*(v66 + 8))(v71, v69);
    v52 = v48;
    v53 = v49;
  }

  else
  {
    (*(v66 + 8))(v71, v69);
    result = outlined destroy of Sendable?(v80);
    v52 = 0;
    v53 = 1;
  }

  v47 = v52;
  if ((v53 & 1) == 0)
  {
    v46 = v47;
    v6 = v65;
    v32 = v47;
    v79 = v47;
    v7 = WifiModel.logger.unsafeMutableAddressor();
    (*(v62 + 16))(v6, v7, v61);
    v35 = 7;
    v36 = swift_allocObject();
    *(v36 + 16) = v32;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    v33 = 17;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v34 = 32;
    v8 = swift_allocObject();
    v9 = v36;
    v37 = v8;
    *(v8 + 16) = v54;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v37;
    v41 = v10;
    *(v10 + 16) = v55;
    *(v10 + 24) = v11;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v40 = _allocateUninitializedArray<A>(_:)();
    v42 = v12;

    v13 = v38;
    v14 = v42;
    *v42 = v56;
    v14[1] = v13;

    v15 = v39;
    v16 = v42;
    v42[2] = v57;
    v16[3] = v15;

    v17 = v41;
    v18 = v42;
    v42[4] = v58;
    v18[5] = v17;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v44, v45))
    {
      v19 = v59;
      v25 = static UnsafeMutablePointer.allocate(capacity:)();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v24 = 0;
      v26 = createStorage<A>(capacity:type:)(0, v23, v23);
      v27 = createStorage<A>(capacity:type:)(v24, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v28 = &v78;
      v78 = v25;
      v29 = &v77;
      v77 = v26;
      v30 = &v76;
      v76 = v27;
      serialize(_:at:)(0, &v78);
      serialize(_:at:)(1, v28);
      v74 = v56;
      v75 = v38;
      closure #1 in osLogInternal(_:log:type:)(&v74, v28, v29, v30);
      v31 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v74 = v57;
        v75 = v39;
        closure #1 in osLogInternal(_:log:type:)(&v74, &v78, &v77, &v76);
        v22 = 0;
        v74 = v58;
        v75 = v41;
        closure #1 in osLogInternal(_:log:type:)(&v74, &v78, &v77, &v76);
        _os_log_impl(&dword_2586A4000, v44, v45, "Validation error: %f", v25, 0xCu);
        v21 = 0;
        destroyStorage<A>(_:count:)(v26, 0, v23);
        destroyStorage<A>(_:count:)(v27, v21, MEMORY[0x277D84F70] + 8);
        MEMORY[0x259C87730](v25, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v44);
    return (*(v62 + 8))(v65, v61);
  }

  return result;
}

uint64_t implicit closure #6 in WifiModel.train(dataFrame:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML9WifiModel_parametersURL;
  v2 = type metadata accessor for URL();
  return (*(*(v2 - 8) + 16))(a2, a1 + v4);
}

uint64_t WifiModel.getMAPE<A>(data:transformer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = v4;
  v5[18] = a4;
  v5[17] = a3;
  v5[16] = a2;
  v5[15] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[12] = 0;
  v5[14] = 0;
  v6 = type metadata accessor for Logger();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v5[24] = swift_task_alloc();
  v7 = type metadata accessor for DataFrame();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  v5[28] = v8;
  v5[29] = *(v8 - 8);
  v5[30] = swift_task_alloc();
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v11;

  return (MEMORY[0x2822009F8])(WifiModel.getMAPE<A>(data:transformer:));
}

uint64_t WifiModel.getMAPE<A>(data:transformer:)()
{
  v31 = *(v0 + 240);
  v30 = *(v0 + 232);
  v32 = *(v0 + 224);
  v1 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 48) = -1.0;
  v2 = OBJC_IVAR____TtC7MediaML9WifiModel_targetColumnID;
  v3 = *(v30 + 16);
  *(v0 + 248) = v3;
  *(v0 + 256) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v31, v1 + v2);
  v33._countAndFlagsBits = ColumnID.name.getter();
  v33._object = v4;
  v5 = *(v30 + 8);
  *(v0 + 264) = v5;
  *(v0 + 272) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v31, v32);
  v34 = DataFrame.containsColumn(_:)(v33);

  if (v34)
  {
    v6 = swift_task_alloc();
    *(v29 + 280) = v6;
    *v6 = *(v29 + 16);
    v6[1] = WifiModel.getMAPE<A>(data:transformer:);
    v7 = *(v29 + 216);
    v8 = *(v29 + 144);
    v9 = *(v29 + 136);
    v10 = *(v29 + 120);

    return MEMORY[0x282115068](v7, v10, 0, 0, v9, v8);
  }

  else
  {
    v11 = *(v29 + 176);
    v25 = *(v29 + 160);
    v24 = *(v29 + 168);
    v12 = WifiModel.logger.unsafeMutableAddressor();
    (*(v24 + 16))(v11, v12, v25);
    v27 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v28 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v27, v26))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v21 = createStorage<A>(capacity:type:)(0, v19, v19);
      v22 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v29 + 56) = buf;
      *(v29 + 64) = v21;
      *(v29 + 72) = v22;
      serialize(_:at:)(0, (v29 + 56));
      serialize(_:at:)(0, (v29 + 56));
      *(v29 + 80) = v28;
      v23 = swift_task_alloc();
      v23[2] = v29 + 56;
      v23[3] = v29 + 64;
      v23[4] = v29 + 72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, v27, v26, "No target column in data frame", buf, 2u);
      destroyStorage<A>(_:count:)(v21, 0, v19);
      destroyStorage<A>(_:count:)(v22, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
    }

    v17 = *(v29 + 176);
    v18 = *(v29 + 160);
    v16 = *(v29 + 168);
    MEMORY[0x277D82BD8](v27);
    (*(v16 + 8))(v17, v18);

    v13 = *(*(v29 + 16) + 8);
    v14.n128_u64[0] = -1.0;

    return v13(v14);
  }
}

{
  v5 = *v1;
  v5[2] = *v1;
  v5[36] = v0;

  if (v0)
  {
    v2 = v5[19];
    v3 = WifiModel.getMAPE<A>(data:transformer:);
  }

  else
  {
    v2 = v5[19];
    v3 = WifiModel.getMAPE<A>(data:transformer:);
  }

  return MEMORY[0x2822009F8](v3, v2);
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);
  v2.n128_u64[0] = v4;

  return v1(v2);
}

void *WifiModel.getMAPE<A>(data:transformer:)()
{
  v1 = v0[36];
  v19 = v0[33];
  v2 = v0[31];
  v20 = v0[30];
  v18 = v0[28];
  v0[2] = v0;
  v2();
  DataFrame.subscript.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  lazy protocol witness table accessor for type Column<Double> and conformance Column<A>();
  v21 = Array.init<A>(_:)();
  v19(v20, v18);
  v0[11] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdSgGMd, &_sSaySdSgGMR);
  lazy protocol witness table accessor for type [Double?] and conformance [A]();
  result = Sequence.compactMap<A>(_:)();
  v22._rawValue = result;
  if (!v1)
  {
    v13 = *(v17 + 33);
    v11 = *(v17 + 31);
    v14 = *(v17 + 30);
    v12 = *(v17 + 28);
    v10 = *(v17 + 19);
    outlined destroy of [Double?](v17 + 11);
    *(v17 + 12) = v22;
    v11(v14, v10 + OBJC_IVAR____TtC7MediaML9WifiModel_targetColumnID, v12);
    DataFrame.subscript.getter();
    v15 = Array.init<A>(_:)();
    v13(v14, v12);
    *(v17 + 13) = v15;
    yRealList = Sequence.compactMap<A>(_:)();
    v7 = *(v17 + 27);
    v8 = *(v17 + 25);
    v6 = *(v17 + 26);
    outlined destroy of [Double?](v17 + 13);
    *(v17 + 14) = yRealList;
    v9 = meanAbsolutePercentageError(yRealList:yPredList:)(yRealList, v22);
    v17[6] = v9;

    (*(v6 + 8))(v7, v8);

    v4.n128_f64[0] = v9;
    v5 = *(*(v17 + 2) + 8);

    return v5(v4);
  }

  return result;
}

uint64_t closure #1 in WifiModel.getMAPE<A>(data:transformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) & 1;
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t closure #2 in WifiModel.getMAPE<A>(data:transformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) & 1;
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

Swift::Void __swiftcall WifiModel.readModelFile()()
{
  v25 = MEMORY[0x277CC50C0];
  v6[27] = partial apply for implicit closure #1 in WifiModel.readModelFile();
  v6[28] = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  v6[29] = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  v6[30] = closure #1 in OSLogArguments.append(_:)partial apply;
  v6[31] = closure #1 in OSLogArguments.append(_:)partial apply;
  v6[32] = partial apply for closure #1 in OSLogArguments.append(_:);
  v39 = 0;
  v30 = 0;
  v6[33] = 0;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = v7 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v11 = v6 - v10;
  v20 = type metadata accessor for URL();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v12 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v1);
  v28 = v6 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  v15 = *(v27 - 8);
  v13 = v27 - 8;
  v14 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27, v2);
  v16 = v6 - v14;
  v39 = v19;
  (*(v15 + 16))(v6 - v14, v19 + OBJC_IVAR____TtC7MediaML9WifiModel_estimator);
  (*(v17 + 16))(v28, v19 + OBJC_IVAR____TtC7MediaML9WifiModel_parametersURL, v20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMd, &_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMR);
  v21 = v36;
  v37 = v3;
  v38 = lazy protocol witness table accessor for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMd, &_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMR);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents20BoostedTreeRegressorVySdGMd, &_s18CreateMLComponents20BoostedTreeRegressorVySdGMR);
  v24 = lazy protocol witness table accessor for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>();
  v4 = lazy protocol witness table accessor for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>();
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v34 = v4;
  v35 = MEMORY[0x277D83A28];
  swift_getOpaqueTypeConformance2();
  SupervisedTabularEstimator.read(from:)();
  v29 = 0;
  v5 = v19;
  (*(v17 + 8))(v28, v20);
  (*(v15 + 8))(v16, v27);
  (*(*v5 + 128))(v36);
}

uint64_t WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v12 = v10;
  v30 = v12;
  *(v11 + 400) = v12;
  *(v11 + 392) = a10;
  *(v11 + 384) = a9;
  *(v11 + 376) = a8;
  *(v11 + 368) = a7;
  *(v11 + 360) = a6;
  *(v11 + 352) = a5;
  *(v11 + 344) = a4;
  *(v11 + 336) = a3;
  *(v11 + 328) = a2;
  *(v11 + 320) = a1;
  *(v11 + 224) = v11;
  *(v11 + 176) = 0;
  *(v11 + 184) = 0;
  *(v11 + 192) = 0;
  *(v11 + 200) = 0;
  *(v11 + 232) = 0;
  *(v11 + 240) = 0;
  *(v11 + 248) = 0;
  *(v11 + 256) = 0;
  *(v11 + 264) = 0;
  *(v11 + 272) = 0;
  *(v11 + 280) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  *(v11 + 408) = v14;
  *(v11 + 416) = *(v14 - 8);
  *(v11 + 424) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  *(v11 + 432) = v15;
  *(v11 + 440) = *(v15 - 8);
  *(v11 + 448) = swift_task_alloc();
  v16 = type metadata accessor for DataFrame();
  *(v11 + 456) = v16;
  v20 = *(v16 - 8);
  *(v11 + 464) = v20;
  *(v11 + 472) = *(v20 + 64);
  *(v11 + 480) = swift_task_alloc();
  *(v11 + 488) = swift_task_alloc();
  *(v11 + 496) = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  *(v11 + 504) = v17;
  *(v11 + 512) = *(v17 - 8);
  *(v11 + 520) = swift_task_alloc();
  *(v11 + 528) = swift_task_alloc();
  v18 = type metadata accessor for DispatchTime();
  *(v11 + 536) = v18;
  v21 = *(v18 - 8);
  *(v11 + 544) = v21;
  *(v11 + 552) = *(v21 + 64);
  *(v11 + 560) = swift_task_alloc();
  *(v11 + 568) = swift_task_alloc();
  *(v11 + 576) = swift_task_alloc();
  *(v11 + 584) = swift_task_alloc();
  *(v11 + 176) = a1;
  *(v11 + 184) = a2;
  *(v11 + 192) = a3;
  *(v11 + 200) = a4;
  *(v11 + 232) = a5;
  *(v11 + 240) = a6;
  *(v11 + 248) = a7;
  *(v11 + 256) = a8;
  *(v11 + 264) = a9;
  *(v11 + 272) = a10;
  *(v11 + 280) = v30;

  return MEMORY[0x2822009F8](WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:), v30);
}

uint64_t WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)()
{
  v1 = v0[50];
  v0[28] = v0;
  v2 = static DispatchTime.now()();
  (*(*v1 + 120))(v2);
  v76 = v0[5] == 0;
  outlined destroy of Transformer?((v77 + 16));
  if (v76)
  {
    v3 = *(v77 + 528);
    v72 = *(v77 + 504);
    v71 = *(v77 + 512);
    v4 = WifiModel.logger.unsafeMutableAddressor();
    (*(v71 + 16))(v3, v4, v72);
    v74 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v75 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v74, v73))
    {
      v67 = static UnsafeMutablePointer.allocate(capacity:)();
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v68 = createStorage<A>(capacity:type:)(0, v66, v66);
      v69 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v77 + 288) = v67;
      *(v77 + 296) = v68;
      *(v77 + 304) = v69;
      serialize(_:at:)(0, (v77 + 288));
      serialize(_:at:)(0, (v77 + 288));
      *(v77 + 312) = v75;
      v70 = swift_task_alloc();
      v70[2] = v77 + 288;
      v70[3] = v77 + 296;
      v70[4] = v77 + 304;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, v74, v73, "Reading wifi model from disk...", v67, 2u);
      destroyStorage<A>(_:count:)(v68, 0, v66);
      destroyStorage<A>(_:count:)(v69, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v67, MEMORY[0x277D84B78]);
    }

    v64 = *(v77 + 528);
    v65 = *(v77 + 504);
    v5 = *(v77 + 400);
    v63 = *(v77 + 512);
    MEMORY[0x277D82BD8](v74);
    v6 = (*(v63 + 8))(v64, v65);
    (*(*v5 + 176))(v6);
  }

  v7 = *(v77 + 400);
  v61 = *(v77 + 392);
  v59 = *(v77 + 384);
  v58 = *(v77 + 376);
  v56 = *(v77 + 368);
  v55 = *(v77 + 360);
  v54 = *(v77 + 352);
  v53 = *(v77 + 344);
  v51 = *(v77 + 336);
  v49 = *(v77 + 328);
  v47 = *(v77 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SayypSgGtMd, &_sSS_SayypSgGtMR);
  _allocateUninitializedArray<A>(_:)();
  v62 = v8;
  v9 = kMediaML_ssid.unsafeMutableAddressor();
  outlined init with copy of String(v9, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  _allocateUninitializedArray<A>(_:)();
  v48 = v10;

  v50 = MEMORY[0x277D837D0];
  v48[3] = MEMORY[0x277D837D0];
  *v48 = v47;
  v48[1] = v49;
  _finalizeUninitializedArray<A>(_:)();
  v62[2] = v11;
  v12 = kMediaML_appName.unsafeMutableAddressor();
  outlined init with copy of String(v12, v62 + 3);
  _allocateUninitializedArray<A>(_:)();
  v52 = v13;

  v52[3] = v50;
  *v52 = v51;
  v52[1] = v53;
  _finalizeUninitializedArray<A>(_:)();
  v62[5] = v14;
  v15 = kMediaML_hourOfDay.unsafeMutableAddressor();
  outlined init with copy of String(v15, v62 + 6);
  _allocateUninitializedArray<A>(_:)();
  v57 = MEMORY[0x277D83B88];
  v16[3] = MEMORY[0x277D83B88];
  *v16 = v54;
  _finalizeUninitializedArray<A>(_:)();
  v62[8] = v17;
  v18 = kMediaML_dayOfWeek.unsafeMutableAddressor();
  outlined init with copy of String(v18, v62 + 9);
  _allocateUninitializedArray<A>(_:)();
  v19[3] = v57;
  *v19 = v55;
  _finalizeUninitializedArray<A>(_:)();
  v62[11] = v20;
  v21 = kMediaML_rssi.unsafeMutableAddressor();
  outlined init with copy of String(v21, v62 + 12);
  _allocateUninitializedArray<A>(_:)();
  v22[3] = v57;
  *v22 = v56;
  _finalizeUninitializedArray<A>(_:)();
  v62[14] = v23;
  v24 = kMediaML_noise.unsafeMutableAddressor();
  outlined init with copy of String(v24, v62 + 15);
  _allocateUninitializedArray<A>(_:)();
  v25[3] = v57;
  *v25 = v58;
  _finalizeUninitializedArray<A>(_:)();
  v62[17] = v26;
  v27 = kMediaML_txRate.unsafeMutableAddressor();
  outlined init with copy of String(v27, v62 + 18);
  _allocateUninitializedArray<A>(_:)();
  v60 = MEMORY[0x277D839F8];
  v28[3] = MEMORY[0x277D839F8];
  *v28 = v59;
  _finalizeUninitializedArray<A>(_:)();
  v62[20] = v29;
  v30 = kMediaML_rxRate.unsafeMutableAddressor();
  outlined init with copy of String(v30, v62 + 21);
  _allocateUninitializedArray<A>(_:)();
  v31[3] = v60;
  *v31 = v61;
  _finalizeUninitializedArray<A>(_:)();
  v62[23] = v32;
  _finalizeUninitializedArray<A>(_:)();
  v33 = DataFrame.init(dictionaryLiteral:)();
  (*(*v7 + 120))(v33);
  if (*(v77 + 160))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents11Transformer_pMd, &_s18CreateMLComponents11Transformer_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents18TabularTransformer_pMd, &_s18CreateMLComponents18TabularTransformer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v77 + 96) = 0;
      *(v77 + 104) = 0;
      *(v77 + 112) = 0;
      *(v77 + 120) = 0;
      *(v77 + 128) = 0;
    }
  }

  else
  {
    outlined destroy of Transformer?((v77 + 136));
    *(v77 + 96) = 0;
    *(v77 + 104) = 0;
    *(v77 + 112) = 0;
    *(v77 + 120) = 0;
    *(v77 + 128) = 0;
  }

  if (*(v77 + 120))
  {
    outlined init with take of TabularTransformer((v77 + 96), (v77 + 56));
    v45 = *(v77 + 80);
    v46 = *(v77 + 88);
    __swift_project_boxed_opaque_existential_1((v77 + 56), v45);
    v34 = swift_task_alloc();
    *(v77 + 592) = v34;
    *v34 = *(v77 + 224);
    v34[1] = WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:);
    v35 = *(v77 + 496);
    v36 = *(v77 + 488);

    return MEMORY[0x282115068](v36, v35, 0, 0, v45, v46);
  }

  else
  {
    v43 = *(v77 + 584);
    v44 = *(v77 + 536);
    v41 = *(v77 + 496);
    v40 = *(v77 + 456);
    v42 = *(v77 + 544);
    v39 = *(v77 + 464);
    outlined destroy of TabularTransformer?((v77 + 96));
    (*(v39 + 8))(v41, v40);
    (*(v42 + 8))(v43, v44);

    v37 = *(*(v77 + 224) + 8);

    return v37(0, 0);
  }
}

{
  v5 = *v1;
  v5[28] = *v1;
  v5[75] = v0;

  if (v0)
  {
    v2 = v5[50];
    v3 = WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:);
  }

  else
  {
    v2 = v5[50];
    v3 = WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:);
  }

  return MEMORY[0x2822009F8](v3, v2);
}

{
  v73 = v0;
  v45 = v0[73];
  v44 = v0[72];
  v50 = v0[71];
  v52 = v0[70];
  v47 = v0[69];
  v48 = v0[68];
  v53 = v0[67];
  v1 = v0[65];
  v35 = v0[64];
  v36 = v0[63];
  v37 = v0[61];
  v41 = v0[60];
  v38 = v0[59];
  v39 = v0[58];
  v42 = v0[57];
  v43 = v0[50];
  v0[28] = v0;
  static DispatchTime.now()();
  v2 = WifiModel.logger.unsafeMutableAddressor();
  (*(v35 + 16))(v1, v2, v36);
  (*(v39 + 16))(v41, v37, v42);

  v40 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v55 = swift_allocObject();
  (*(v39 + 32))(v55 + v40, v41, v42);
  *(v55 + ((v40 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v43;
  v46 = *(v48 + 16);
  v46(v50, v44, v53);
  v46(v52, v45, v53);
  v3 = *(v48 + 80);
  v49 = (v3 + 16) & ~v3;
  v51 = (v49 + v47 + v3) & ~v3;
  v57 = swift_allocObject();
  v54 = *(v48 + 32);
  v54(v57 + v49, v50, v53);
  v54(v57 + v51, v52, v53);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v56 = swift_allocObject();
  *(v56 + 16) = partial apply for implicit closure #1 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:);
  *(v56 + 24) = v55;
  v61 = swift_allocObject();
  *(v61 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  *(v61 + 24) = v56;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v58 = swift_allocObject();
  *(v58 + 16) = partial apply for implicit closure #2 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:);
  *(v58 + 24) = v57;
  v64 = swift_allocObject();
  *(v64 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  *(v64 + 24) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v65 = v4;

  *v65 = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[1] = v59;

  v65[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[3] = v60;

  v65[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[5] = v61;

  v65[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[7] = v62;

  v65[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[9] = v63;

  v65[10] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[11] = v64;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v66, v67))
  {
    v5 = *(v34 + 600);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v32 = createStorage<A>(capacity:type:)(0, v30, v30);
    v33 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v68 = buf;
    v69 = v32;
    v70 = v33;
    serialize(_:at:)(0, &v68);
    serialize(_:at:)(2, &v68);
    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v59;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    if (v5)
    {
    }

    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v60;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v61;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v63;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v64;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    _os_log_impl(&dword_2586A4000, v66, v67, "Finished prediction with wifi model. Predicted value = %f Time taken = %f [ns]", buf, 0x16u);
    destroyStorage<A>(_:count:)(v32, 0, v30);
    destroyStorage<A>(_:count:)(v33, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v19 = *(v34 + 520);
  v20 = *(v34 + 504);
  v24 = *(v34 + 448);
  v23 = *(v34 + 432);
  v26 = *(v34 + 424);
  v27 = *(v34 + 408);
  v21 = *(v34 + 400);
  v18 = *(v34 + 512);
  v22 = *(v34 + 440);
  v25 = *(v34 + 416);
  MEMORY[0x277D82BD8](v66);
  (*(v18 + 8))(v19, v20);
  (*(v22 + 16))(v24, v21 + OBJC_IVAR____TtC7MediaML9WifiModel_targetColumnID, v23);
  DataFrame.subscript.getter();
  Column.subscript.getter();
  v28 = *(v34 + 208);
  v29 = *(v34 + 216);
  (*(v25 + 8))(v26, v27);
  if (v29)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v15 = *(v34 + 584);
  v9 = *(v34 + 576);
  v16 = *(v34 + 536);
  v12 = *(v34 + 496);
  v11 = *(v34 + 488);
  v13 = *(v34 + 456);
  v8 = *(v34 + 544);
  v10 = *(v34 + 464);
  (*(*(v34 + 440) + 8))(*(v34 + 448), *(v34 + 432));
  v17 = *(v8 + 8);
  v17(v9, v16);
  v14 = *(v10 + 8);
  v14(v11, v13);
  __swift_destroy_boxed_opaque_existential_1((v34 + 56));
  v14(v12, v13);
  v17(v15, v16);

  v7 = *(*(v34 + 224) + 8);

  return v7(v28, v29 & 1);
}

{
  v7 = v0[73];
  v5 = v0[68];
  v6 = v0[67];
  v8 = v0[62];
  v3 = v0[58];
  v4 = v0[57];
  v0[28] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  (*(v3 + 8))(v8, v4);
  (*(v5 + 8))(v7, v6);

  v1 = *(*(v9 + 224) + 8);

  return v1();
}

double implicit closure #1 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v6 = "Fatal error";
  v7 = "Unexpectedly found nil while unwrapping an Optional value";
  v8 = "MediaML/MLModel.swift";
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v9 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v2);
  v18 = &v4 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v13 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v10);
  v15 = &v4 - v13;
  (*(v14 + 16))();
  DataFrame.subscript.getter();
  Column.subscript.getter();
  v20 = v22;
  v21 = v23;
  (*(v16 + 8))(v18, v19);
  if (v21)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = v20;
  }

  v4 = v5;
  (*(v14 + 8))(v15, v11);
  return v4;
}

unint64_t implicit closure #2 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)()
{
  v2 = DispatchTime.uptimeNanoseconds.getter();
  v0 = DispatchTime.uptimeNanoseconds.getter();
  result = v2;
  if (v2 < v0)
  {
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    return Double.init<A>(_:)();
  }

  return result;
}

uint64_t WifiModel.deinit()
{
  outlined destroy of Transformer?((v0 + 112));
  v5 = OBJC_IVAR____TtC7MediaML9WifiModel_parametersURL;
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + v5);
  v6 = OBJC_IVAR____TtC7MediaML9WifiModel_targetColumnID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  (*(*(v2 - 8) + 8))(v0 + v6);
  v7 = OBJC_IVAR____TtC7MediaML9WifiModel_estimator;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  (*(*(v3 - 8) + 8))(v0 + v7);
  swift_defaultActor_destroy();
  return v8;
}

uint64_t CellularModel.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static CellularModel.logger);
}

uint64_t static CellularModel.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = CellularModel.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t variable initialization expression of CellularModel.targetColumnID()
{
  kMediaML_throughputTrue.unsafeMutableAddressor();

  return ColumnID.init(_:_:)();
}

uint64_t CellularModel.targetColumnID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML13CellularModel_targetColumnID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

void variable initialization expression of CellularModel.model(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
}

uint64_t key path getter for CellularModel.model : CellularModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  v7 = v4;
  (*(*v4 + 120))(v2);
  memcpy(a2, v6, 0x28uLL);
}

uint64_t key path setter for CellularModel.model : CellularModel(void *a1, uint64_t *a2)
{
  outlined init with copy of Transformer?(a1, v5);
  v4 = *a2;

  (*(*v4 + 128))(v5);
}

uint64_t CellularModel.model.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7MediaML13CellularModel_model);
  swift_beginAccess();
  outlined init with copy of Transformer?(v3, a1);
  return swift_endAccess();
}

void *CellularModel.model.setter(void *a1)
{
  outlined init with copy of Transformer?(a1, v5);
  v3 = (v1 + OBJC_IVAR____TtC7MediaML13CellularModel_model);
  swift_beginAccess();
  outlined assign with take of Transformer?(v5, v3);
  swift_endAccess();
  return outlined destroy of Transformer?(a1);
}

uint64_t variable initialization expression of CellularModel.cellParametersURL@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v12 = type metadata accessor for URL();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v1);
  v2 = &v5 - v6;
  v11 = &v5 - v6;
  v3 = mediaMLModelDirectory.unsafeMutableAddressor();
  (*(v9 + 16))(v2, v3, v12);
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cellParameters.pkg", 0x12uLL, 1)._object;
  URL.appendingPathComponent(_:)();

  return (*(v9 + 8))(v11, v12);
}

uint64_t CellularModel.cellParametersURL.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML13CellularModel_cellParametersURL;
  v2 = type metadata accessor for URL();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t CellularModel.estimator.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML13CellularModel_estimator;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t CellularModel.__allocating_init()()
{
  v3 = v0;
  *(v0 + 16) = v0;
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = CellularModel.__allocating_init();

  return CellularModel.init()();
}

uint64_t CellularModel.__allocating_init()(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t CellularModel.init()()
{
  v1[8] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v2 = type metadata accessor for Logger();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](CellularModel.init(), 0);
}

{
  v1 = v0[14];
  v5 = v0[13];
  v6 = v0[12];
  v8 = v0[8];
  v0[2] = v0;
  v0[3] = v8;
  swift_defaultActor_initialize();
  kMediaML_throughputTrue.unsafeMutableAddressor();

  ColumnID.init(_:_:)();
  v2 = (v8 + OBJC_IVAR____TtC7MediaML13CellularModel_model);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;
  v3 = mediaMLModelDirectory.unsafeMutableAddressor();
  (*(v5 + 16))(v1, v3, v6);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cellParameters.pkg", 0x12uLL, 1);
  URL.appendingPathComponent(_:)();

  (*(v5 + 8))(v1, v6);
  v7 = OBJC_IVAR____TtC7MediaML13CellularModel_estimator;
  CellModelGuts.init()();
  CellModelGuts.estimator.getter(v8 + v7);

  return MEMORY[0x2822009F8](CellularModel.init(), v8);
}

{
  v1 = v0[11];
  v15 = v0[10];
  v16 = v0[9];
  v0[2] = v0;
  v2 = CellularModel.logger.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  v18 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v18, v17))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v14 + 32) = buf;
    *(v14 + 40) = v11;
    *(v14 + 48) = v12;
    serialize(_:at:)(0, (v14 + 32));
    serialize(_:at:)(0, (v14 + 32));
    *(v14 + 56) = v19;
    v13 = swift_task_alloc();
    v13[2] = v14 + 32;
    v13[3] = v14 + 40;
    v13[4] = v14 + 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2586A4000, v18, v17, "New Cell Model created", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v14 + 88);
  v7 = *(v14 + 72);
  v6 = *(v14 + 80);
  MEMORY[0x277D82BD8](v18);
  (*(v6 + 8))(v8, v7);

  v3 = *(*(v14 + 16) + 8);
  v4 = *(v14 + 64);

  return v3(v4);
}

uint64_t CellularModel.getMAPE<A>(data:transformer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = v4;
  v5[18] = a4;
  v5[17] = a3;
  v5[16] = a2;
  v5[15] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[12] = 0;
  v5[14] = 0;
  v6 = type metadata accessor for Logger();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v5[24] = swift_task_alloc();
  v7 = type metadata accessor for DataFrame();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  v5[28] = v8;
  v5[29] = *(v8 - 8);
  v5[30] = swift_task_alloc();
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v11;

  return (MEMORY[0x2822009F8])(CellularModel.getMAPE<A>(data:transformer:));
}

uint64_t CellularModel.getMAPE<A>(data:transformer:)()
{
  v31 = *(v0 + 240);
  v30 = *(v0 + 232);
  v32 = *(v0 + 224);
  v1 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 48) = -1.0;
  v2 = OBJC_IVAR____TtC7MediaML13CellularModel_targetColumnID;
  v3 = *(v30 + 16);
  *(v0 + 248) = v3;
  *(v0 + 256) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v31, v1 + v2);
  v33._countAndFlagsBits = ColumnID.name.getter();
  v33._object = v4;
  v5 = *(v30 + 8);
  *(v0 + 264) = v5;
  *(v0 + 272) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v31, v32);
  v34 = DataFrame.containsColumn(_:)(v33);

  if (v34)
  {
    v6 = swift_task_alloc();
    *(v29 + 280) = v6;
    *v6 = *(v29 + 16);
    v6[1] = CellularModel.getMAPE<A>(data:transformer:);
    v7 = *(v29 + 216);
    v8 = *(v29 + 144);
    v9 = *(v29 + 136);
    v10 = *(v29 + 120);

    return MEMORY[0x282115068](v7, v10, 0, 0, v9, v8);
  }

  else
  {
    v11 = *(v29 + 176);
    v25 = *(v29 + 160);
    v24 = *(v29 + 168);
    v12 = CellularModel.logger.unsafeMutableAddressor();
    (*(v24 + 16))(v11, v12, v25);
    v27 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v28 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v27, v26))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v21 = createStorage<A>(capacity:type:)(0, v19, v19);
      v22 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v29 + 56) = buf;
      *(v29 + 64) = v21;
      *(v29 + 72) = v22;
      serialize(_:at:)(0, (v29 + 56));
      serialize(_:at:)(0, (v29 + 56));
      *(v29 + 80) = v28;
      v23 = swift_task_alloc();
      v23[2] = v29 + 56;
      v23[3] = v29 + 64;
      v23[4] = v29 + 72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, v27, v26, "No target column in data frame", buf, 2u);
      destroyStorage<A>(_:count:)(v21, 0, v19);
      destroyStorage<A>(_:count:)(v22, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
    }

    v17 = *(v29 + 176);
    v18 = *(v29 + 160);
    v16 = *(v29 + 168);
    MEMORY[0x277D82BD8](v27);
    (*(v16 + 8))(v17, v18);

    v13 = *(*(v29 + 16) + 8);
    v14.n128_u64[0] = -1.0;

    return v13(v14);
  }
}

{
  v5 = *v1;
  v5[2] = *v1;
  v5[36] = v0;

  if (v0)
  {
    v2 = v5[19];
    v3 = CellularModel.getMAPE<A>(data:transformer:);
  }

  else
  {
    v2 = v5[19];
    v3 = CellularModel.getMAPE<A>(data:transformer:);
  }

  return MEMORY[0x2822009F8](v3, v2);
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);
  v2.n128_u64[0] = v4;

  return v1(v2);
}

void *CellularModel.getMAPE<A>(data:transformer:)()
{
  v1 = v0[36];
  v19 = v0[33];
  v2 = v0[31];
  v20 = v0[30];
  v18 = v0[28];
  v0[2] = v0;
  v2();
  DataFrame.subscript.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  lazy protocol witness table accessor for type Column<Double> and conformance Column<A>();
  v21 = Array.init<A>(_:)();
  v19(v20, v18);
  v0[11] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdSgGMd, &_sSaySdSgGMR);
  lazy protocol witness table accessor for type [Double?] and conformance [A]();
  result = Sequence.compactMap<A>(_:)();
  v22._rawValue = result;
  if (!v1)
  {
    v13 = *(v17 + 33);
    v11 = *(v17 + 31);
    v14 = *(v17 + 30);
    v12 = *(v17 + 28);
    v10 = *(v17 + 19);
    outlined destroy of [Double?](v17 + 11);
    *(v17 + 12) = v22;
    v11(v14, v10 + OBJC_IVAR____TtC7MediaML13CellularModel_targetColumnID, v12);
    DataFrame.subscript.getter();
    v15 = Array.init<A>(_:)();
    v13(v14, v12);
    *(v17 + 13) = v15;
    yRealList = Sequence.compactMap<A>(_:)();
    v7 = *(v17 + 27);
    v8 = *(v17 + 25);
    v6 = *(v17 + 26);
    outlined destroy of [Double?](v17 + 13);
    *(v17 + 14) = yRealList;
    v9 = meanAbsolutePercentageError(yRealList:yPredList:)(yRealList, v22);
    v17[6] = v9;

    (*(v6 + 8))(v7, v8);

    v4.n128_f64[0] = v9;
    v5 = *(*(v17 + 2) + 8);

    return v5(v4);
  }

  return result;
}

uint64_t closure #1 in CellularModel.getMAPE<A>(data:transformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) & 1;
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t closure #2 in CellularModel.getMAPE<A>(data:transformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) & 1;
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t CellularModel.train(traindata_url:)(uint64_t a1, uint64_t a2)
{
  v3[18] = v2;
  v3[17] = a2;
  v3[16] = a1;
  v3[13] = v3;
  v3[14] = 0;
  v3[15] = 0;
  type metadata accessor for CSVReadingOptions();
  v3[19] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = type metadata accessor for DataFrame();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v3[14] = a2;
  v3[15] = v8;

  return (MEMORY[0x2822009F8])(CellularModel.train(traindata_url:));
}

uint64_t CellularModel.train(traindata_url:)()
{
  v1 = v0[21];
  v7 = v0[19];
  v0[13] = v0;
  (*(v1 + 16))();
  default argument 3 of DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)();
  default argument 4 of DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v7);
  DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)();
  v5 = (*(**(v6 + 144) + 168) + **(**(v6 + 144) + 168));
  v2 = swift_task_alloc();
  *(v6 + 208) = v2;
  *v2 = *(v6 + 104);
  v2[1] = CellularModel.train(traindata_url:);
  v3 = *(v6 + 200);

  return v5(v6 + 16, v3);
}

{
  v5 = *v1;
  v5[13] = *v1;
  v5[27] = v0;

  if (v0)
  {
    v2 = v5[18];
    v3 = CellularModel.train(traindata_url:);
  }

  else
  {
    v2 = v5[18];
    v3 = CellularModel.train(traindata_url:);
  }

  return MEMORY[0x2822009F8](v3, v2);
}

{
  v1 = v0[24];
  __dst = v0[16];
  v0[13] = v0;
  (*(v1 + 8))();
  memcpy(__dst, v0 + 2, 0x51uLL);

  v2 = *(v0[13] + 8);

  return v2();
}

{
  v1 = v0[25];
  v2 = v0[24];
  v3 = v0[23];
  v0[13] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = *(v0[13] + 8);

  return v4();
}

uint64_t CellularModel.train(dataFrame:)(uint64_t a1, uint64_t a2)
{
  v3[49] = v2;
  v3[48] = a2;
  v3[47] = a1;
  v3[50] = *v2;
  v3[38] = v3;
  v3[39] = 0;
  v3[40] = 0;
  v3[45] = 0;
  v3[46] = 0;
  v4 = type metadata accessor for URL();
  v3[51] = v4;
  v3[52] = *(v4 - 8);
  v3[53] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[54] = v5;
  v3[55] = *(v5 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v6 = type metadata accessor for AnyColumnSlice();
  v3[60] = v6;
  v3[61] = *(v6 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v7 = type metadata accessor for DataFrame.Rows();
  v3[65] = v7;
  v3[66] = *(v7 - 8);
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData0B5FrameVSgMd, &_s11TabularData0B5FrameVSgMR);
  v3[69] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  v3[70] = v8;
  v3[71] = *(v8 - 8);
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMd, &_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMR);
  v3[74] = v9;
  v3[75] = *(v9 - 8);
  v3[76] = swift_task_alloc();
  v10 = type metadata accessor for DataFrame();
  v3[77] = v10;
  v3[78] = *(v10 - 8);
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v11 = type metadata accessor for DataFrame.Slice();
  v3[81] = v11;
  v3[82] = *(v11 - 8);
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[39] = a2;
  v3[40] = v2;

  return MEMORY[0x2822009F8](CellularModel.train(dataFrame:), v2);
}

uint64_t CellularModel.train(dataFrame:)()
{
  v58 = v0;
  v51 = v0[85];
  v53 = v0[84];
  v56 = v0[83];
  v52 = v0[82];
  v54 = v0[81];
  v0[38] = v0;
  DataFrameProtocol.randomSplit(by:seed:)();
  v55 = *(v52 + 16);
  v55(v56, v51, v54);
  DataFrame.init(_:)();
  v55(v56, v53, v54);
  DataFrame.init(_:)();
  if (DataFrame.Slice.shape.getter() > 0 && DataFrame.Slice.shape.getter() > 0)
  {
    v41 = *(v50 + 632);
    v42 = *(v50 + 616);
    v1 = *(v50 + 584);
    v2 = *(v50 + 560);
    v43 = *(v50 + 552);
    v40 = *(v50 + 624);
    v44 = *(v50 + 400);
    v3 = *(v50 + 392) + OBJC_IVAR____TtC7MediaML13CellularModel_estimator;
    v4 = *(v50 + 568) + 16;
    v5 = *v4;
    *(v50 + 688) = *v4;
    *(v50 + 696) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v1, v3, v2);
    (*(v40 + 16))(v43, v41, v42);
    (*(v40 + 56))(v43, 0, 1, v42);
    v6 = swift_allocObject();
    *(v50 + 704) = v6;
    *(v6 + 16) = v44;
    v48 = v6;
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMd, &_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMR);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents20BoostedTreeRegressorVySdGMd, &_s18CreateMLComponents20BoostedTreeRegressorVySdGMR);
    v47 = lazy protocol witness table accessor for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>();
    v7 = lazy protocol witness table accessor for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>();
    *(v50 + 264) = v45;
    *(v50 + 272) = v46;
    *(v50 + 280) = v47;
    *(v50 + 288) = v7;
    *(v50 + 296) = MEMORY[0x277D83A28];
    v49 = *(swift_getOpaqueTypeConformance2() + 8);
    *(v50 + 712) = v49;
    v8 = swift_task_alloc();
    *(v50 + 720) = v8;
    *v8 = *(v50 + 304);
    v8[1] = CellularModel.train(dataFrame:);
    v9 = *(v50 + 640);
    v10 = *(v50 + 608);
    v11 = *(v50 + 560);
    v12 = *(v50 + 552);

    return MEMORY[0x2821152A0](v10, v9, v12, partial apply for closure #1 in CellularModel.train(dataFrame:), v48, v11, v49);
  }

  else
  {
    v13 = *(v50 + 448);
    v36 = *(v50 + 432);
    v35 = *(v50 + 440);
    v14 = CellularModel.logger.unsafeMutableAddressor();
    (*(v35 + 16))(v13, v14, v36);
    oslog = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v39 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v37))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v32 = createStorage<A>(capacity:type:)(0, v30, v30);
      v33 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v50 + 328) = buf;
      *(v50 + 336) = v32;
      *(v50 + 344) = v33;
      serialize(_:at:)(0, (v50 + 328));
      serialize(_:at:)(0, (v50 + 328));
      *(v50 + 352) = v39;
      v34 = swift_task_alloc();
      v34[2] = v50 + 328;
      v34[3] = v50 + 336;
      v34[4] = v50 + 344;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, oslog, v37, "Cell: Training or validation data is empty", buf, 2u);
      destroyStorage<A>(_:count:)(v32, 0, v30);
      destroyStorage<A>(_:count:)(v33, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
    }

    v27 = *(v50 + 680);
    v26 = *(v50 + 672);
    v28 = *(v50 + 648);
    v22 = *(v50 + 640);
    v21 = *(v50 + 632);
    v23 = *(v50 + 616);
    v18 = *(v50 + 448);
    v19 = *(v50 + 432);
    v25 = *(v50 + 656);
    v20 = *(v50 + 624);
    v17 = *(v50 + 440);
    MEMORY[0x277D82BD8](oslog);
    (*(v17 + 8))(v18, v19);
    memset(v57, 0, 80);
    LOBYTE(v57[10]) = 1;
    v24 = *(v20 + 8);
    v24(v21, v23);
    v24(v22, v23);
    v29 = *(v25 + 8);
    v29(v26, v28);
    v29(v27, v28);
    memcpy((v50 + 16), v57, 0x51uLL);
    memcpy(*(v50 + 376), (v50 + 16), 0x51uLL);

    v15 = *(*(v50 + 304) + 8);

    return v15();
  }
}

{
  v17 = *v1;
  v15 = (*v1 + 16);
  v16 = (*v1 + 304);
  *(v17 + 304) = *v1;
  *(v17 + 728) = v0;

  if (v0)
  {
    v8 = v15[47];

    return MEMORY[0x2822009F8](CellularModel.train(dataFrame:), v8);
  }

  else
  {
    v12 = v15[71];
    v10 = v15[69];
    v11 = v15[68];
    v9 = v15[67];
    v13 = v15[47];
    outlined consume of (@escaping @callee_guaranteed @Sendable (@in_guaranteed Event) -> ())?(partial apply for closure #1 in CellularModel.train(dataFrame:), v15[86]);
    outlined destroy of DataFrame?(v9);
    v2 = *(v10 + 8);
    v15[90] = v2;
    v15[91] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v2(v12, v11);
    v14 = (*(*v13 + 152) + **(*v13 + 152));
    v3 = swift_task_alloc();
    v15[92] = v3;
    v15[93] = lazy protocol witness table accessor for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>();
    *v3 = *v16;
    v3[1] = CellularModel.train(dataFrame:);
    v4 = v15[78];
    v5 = v15[74];
    v6 = v15[72];

    return v14(v4, v5, v6);
  }
}

{
  v166 = v0;
  validationMAPE = *(v0 + 792);
  trainingMAPE = *(v0 + 768);
  v100 = *(v0 + 544);
  v103 = *(v0 + 536);
  v99 = *(v0 + 528);
  v101 = *(v0 + 520);
  v107 = *(v0 + 512);
  v114 = *(v0 + 504);
  v109 = *(v0 + 496);
  v105 = *(v0 + 488);
  v112 = *(v0 + 480);
  v111 = *(v0 + 472);
  v124 = *(v0 + 440);
  v125 = *(v0 + 432);
  *(v0 + 304) = v0;
  *(v0 + 368) = validationMAPE;
  interfaceType = *kMediaML_InterfaceType_Cellular.unsafeMutableAddressor();
  DataFrame.Slice.rows.getter();
  trainingRowCount = DataFrame.Rows.count.getter();
  v102 = *(v99 + 8);
  v102(v100, v101);
  DataFrame.Slice.rows.getter();
  validationRowCount = DataFrame.Rows.count.getter();
  v102(v103, v101);
  v1 = kMediaML_carrier.unsafeMutableAddressor();
  countAndFlagsBits = v1->_countAndFlagsBits;
  object = v1->_object;

  MEMORY[0x259C87130](countAndFlagsBits, object);
  AnyColumnSlice.distinct()();
  v113 = *(v105 + 8);
  v113(v114, v112);

  carrierCount = AnyColumnSlice.count.getter();
  v113(v107, v112);
  v2 = kMediaML_appName.unsafeMutableAddressor();
  v108 = v2->_countAndFlagsBits;
  v110 = v2->_object;

  MEMORY[0x259C87130](v108, v110);
  AnyColumnSlice.distinct()();
  v113(v109, v112);

  appNameCount = AnyColumnSlice.count.getter();
  v113(v114, v112);
  trainingDate = getDateInEpoch()();
  ssidCount = default argument 4 of ModelStats.init(interfaceType:trainingRowCount:validationRowCount:carrierCount:ssidCount:appNameCount:sessionIDCount:trainingMAPE:validationMAPE:trainingDate:)();
  v3 = default argument 6 of ModelStats.init(interfaceType:trainingRowCount:validationRowCount:carrierCount:ssidCount:appNameCount:sessionIDCount:trainingMAPE:validationMAPE:trainingDate:)();
  ModelStats.init(interfaceType:trainingRowCount:validationRowCount:carrierCount:ssidCount:appNameCount:sessionIDCount:trainingMAPE:validationMAPE:trainingDate:)((v0 + 104), interfaceType, trainingRowCount, validationRowCount, carrierCount, ssidCount, appNameCount, v3, trainingMAPE, validationMAPE, trainingDate);
  memcpy((v0 + 184), (v0 + 104), 0x50uLL);
  v4 = CellularModel.logger.unsafeMutableAddressor();
  v126 = *(v124 + 16);
  v126(v111, v4, v125);
  v127 = swift_allocObject();
  memcpy((v127 + 16), (v0 + 104), 0x50uLL);
  v129 = swift_allocObject();
  memcpy((v129 + 16), (v0 + 104), 0x50uLL);
  v131 = swift_allocObject();
  memcpy((v131 + 16), (v0 + 104), 0x50uLL);
  v133 = swift_allocObject();
  memcpy((v133 + 16), (v0 + 104), 0x50uLL);
  oslog = Logger.logObject.getter();
  v149 = static os_log_type_t.info.getter();
  v135 = swift_allocObject();
  *(v135 + 16) = 0;
  v136 = swift_allocObject();
  *(v136 + 16) = 8;
  v128 = swift_allocObject();
  *(v128 + 16) = partial apply for implicit closure #2 in CellularModel.train(dataFrame:);
  *(v128 + 24) = v127;
  v137 = swift_allocObject();
  *(v137 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v137 + 24) = v128;
  v138 = swift_allocObject();
  *(v138 + 16) = 0;
  v139 = swift_allocObject();
  *(v139 + 16) = 8;
  v130 = swift_allocObject();
  *(v130 + 16) = partial apply for implicit closure #3 in CellularModel.train(dataFrame:);
  *(v130 + 24) = v129;
  v140 = swift_allocObject();
  *(v140 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v140 + 24) = v130;
  v141 = swift_allocObject();
  *(v141 + 16) = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = 8;
  v132 = swift_allocObject();
  *(v132 + 16) = partial apply for implicit closure #4 in CellularModel.train(dataFrame:);
  *(v132 + 24) = v131;
  v143 = swift_allocObject();
  *(v143 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  *(v143 + 24) = v132;
  v144 = swift_allocObject();
  *(v144 + 16) = 0;
  v145 = swift_allocObject();
  *(v145 + 16) = 8;
  v134 = swift_allocObject();
  *(v134 + 16) = partial apply for implicit closure #5 in CellularModel.train(dataFrame:);
  *(v134 + 24) = v133;
  v146 = swift_allocObject();
  *(v146 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  *(v146 + 24) = v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v147 = v5;

  *v147 = closure #1 in OSLogArguments.append(_:)partial apply;
  v147[1] = v135;

  v147[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v147[3] = v136;

  v147[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v147[5] = v137;

  v147[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v147[7] = v138;

  v147[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v147[9] = v139;

  v147[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v147[11] = v140;

  v147[12] = closure #1 in OSLogArguments.append(_:)partial apply;
  v147[13] = v141;

  v147[14] = closure #1 in OSLogArguments.append(_:)partial apply;
  v147[15] = v142;

  v147[16] = closure #1 in OSLogArguments.append(_:)partial apply;
  v147[17] = v143;

  v147[18] = closure #1 in OSLogArguments.append(_:)partial apply;
  v147[19] = v144;

  v147[20] = closure #1 in OSLogArguments.append(_:)partial apply;
  v147[21] = v145;

  v147[22] = closure #1 in OSLogArguments.append(_:)partial apply;
  v147[23] = v146;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v149))
  {
    v6 = *(v98 + 800);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v96 = createStorage<A>(capacity:type:)(0, v94, v94);
    v97 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v161 = buf;
    v162 = v96;
    v163 = v97;
    serialize(_:at:)(0, &v161);
    serialize(_:at:)(4, &v161);
    v164 = closure #1 in OSLogArguments.append(_:)partial apply;
    v165 = v135;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    if (v6)
    {
    }

    v164 = closure #1 in OSLogArguments.append(_:)partial apply;
    v165 = v136;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v165 = v137;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = closure #1 in OSLogArguments.append(_:)partial apply;
    v165 = v138;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = closure #1 in OSLogArguments.append(_:)partial apply;
    v165 = v139;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v165 = v140;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = closure #1 in OSLogArguments.append(_:)partial apply;
    v165 = v141;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = closure #1 in OSLogArguments.append(_:)partial apply;
    v165 = v142;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = closure #1 in OSLogArguments.append(_:)partial apply;
    v165 = v143;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = closure #1 in OSLogArguments.append(_:)partial apply;
    v165 = v144;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = closure #1 in OSLogArguments.append(_:)partial apply;
    v165 = v145;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = closure #1 in OSLogArguments.append(_:)partial apply;
    v165 = v146;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    _os_log_impl(&dword_2586A4000, oslog, v149, "Cell model stats: trainingRowCount: %ld, validationRowCount: %ld trainingMAPE:%f, validationMAPE: %f", buf, 0x2Au);
    destroyStorage<A>(_:count:)(v96, 0, v94);
    destroyStorage<A>(_:count:)(v97, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);

    v93 = 0;
  }

  else
  {

    v93 = *(v98 + 800);
  }

  v92 = *(v98 + 792);
  v89 = *(v98 + 472);
  v90 = *(v98 + 432);
  v88 = *(v98 + 440);
  MEMORY[0x277D82BD8](oslog);
  v91 = *(v88 + 8);
  v91(v89, v90);
  if (v92 >= 0.7)
  {
    v52 = *(v98 + 792);
    v11 = *(v98 + 456);
    v51 = *(v98 + 432);
    v12 = CellularModel.logger.unsafeMutableAddressor();
    v126(v11, v12, v51);
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v54 = swift_allocObject();
    *(v54 + 16) = partial apply for implicit closure #7 in CellularModel.train(dataFrame:);
    *(v54 + 24) = v53;
    v58 = swift_allocObject();
    *(v58 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
    *(v58 + 24) = v54;
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v55 = swift_allocObject();
    *(v55 + 16) = implicit closure #8 in CellularModel.train(dataFrame:);
    *(v55 + 24) = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
    *(v61 + 24) = v55;
    _allocateUninitializedArray<A>(_:)();
    v62 = v13;

    *v62 = closure #1 in OSLogArguments.append(_:)partial apply;
    v62[1] = v56;

    v62[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v62[3] = v57;

    v62[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v62[5] = v58;

    v62[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v62[7] = v59;

    v62[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v62[9] = v60;

    v62[10] = closure #1 in OSLogArguments.append(_:)partial apply;
    v62[11] = v61;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v63, v64))
    {
      v48 = static UnsafeMutablePointer.allocate(capacity:)();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v49 = createStorage<A>(capacity:type:)(0, v47, v47);
      v50 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v151 = v48;
      v152 = v49;
      v153 = v50;
      serialize(_:at:)(0, &v151);
      serialize(_:at:)(2, &v151);
      v154 = closure #1 in OSLogArguments.append(_:)partial apply;
      v155 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v154, &v151, &v152, &v153);
      if (v93)
      {
      }

      v154 = closure #1 in OSLogArguments.append(_:)partial apply;
      v155 = v57;
      closure #1 in osLogInternal(_:log:type:)(&v154, &v151, &v152, &v153);
      v154 = closure #1 in OSLogArguments.append(_:)partial apply;
      v155 = v58;
      closure #1 in osLogInternal(_:log:type:)(&v154, &v151, &v152, &v153);
      v154 = closure #1 in OSLogArguments.append(_:)partial apply;
      v155 = v59;
      closure #1 in osLogInternal(_:log:type:)(&v154, &v151, &v152, &v153);
      v154 = closure #1 in OSLogArguments.append(_:)partial apply;
      v155 = v60;
      closure #1 in osLogInternal(_:log:type:)(&v154, &v151, &v152, &v153);
      v154 = closure #1 in OSLogArguments.append(_:)partial apply;
      v155 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v154, &v151, &v152, &v153);
      _os_log_impl(&dword_2586A4000, v63, v64, "Cell model not updated. Validation MAPE %f exceeds modelMAPEThreshold %f. ", v48, 0x16u);
      destroyStorage<A>(_:count:)(v49, 0, v47);
      destroyStorage<A>(_:count:)(v50, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v48, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v45 = *(v98 + 456);
    v46 = *(v98 + 432);
    MEMORY[0x277D82BD8](v63);
    v91(v45, v46);
    goto LABEL_18;
  }

  v87 = *(v98 + 424);
  v86 = *(v98 + 408);
  v84 = *(v98 + 392);
  v85 = *(v98 + 416);
  (*(v98 + 688))(*(v98 + 576), v84 + OBJC_IVAR____TtC7MediaML13CellularModel_estimator, v92);
  (*(v85 + 16))(v87, v84 + OBJC_IVAR____TtC7MediaML13CellularModel_cellParametersURL, v86);
  default argument 2 of SupervisedTabularEstimator.write(_:to:overwrite:)();
  SupervisedTabularEstimator.write(_:to:overwrite:)();
  if (!v93)
  {
    v73 = *(v98 + 736);
    v71 = *(v98 + 576);
    v72 = *(v98 + 560);
    v8 = *(v98 + 464);
    v74 = *(v98 + 432);
    v75 = *(v98 + 392);
    (*(*(v98 + 416) + 8))(*(v98 + 424), *(v98 + 408));
    v73(v71, v72);
    v9 = CellularModel.logger.unsafeMutableAddressor();
    v126(v8, v9, v74);

    v76 = swift_allocObject();
    *(v76 + 16) = partial apply for implicit closure #6 in CellularModel.train(dataFrame:);
    *(v76 + 24) = v75;

    log = Logger.logObject.getter();
    v83 = static os_log_type_t.info.getter();
    v78 = swift_allocObject();
    *(v78 + 16) = 32;
    v79 = swift_allocObject();
    *(v79 + 16) = 8;
    v77 = swift_allocObject();
    *(v77 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
    *(v77 + 24) = v76;
    v80 = swift_allocObject();
    *(v80 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v80 + 24) = v77;
    _allocateUninitializedArray<A>(_:)();
    v81 = v10;

    *v81 = closure #1 in OSLogArguments.append(_:)partial apply;
    v81[1] = v78;

    v81[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v81[3] = v79;

    v81[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v81[5] = v80;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v83))
    {
      v68 = static UnsafeMutablePointer.allocate(capacity:)();
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v69 = createStorage<A>(capacity:type:)(0, v67, v67);
      v70 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v156 = v68;
      v157 = v69;
      v158 = v70;
      serialize(_:at:)(2, &v156);
      serialize(_:at:)(1, &v156);
      v159 = closure #1 in OSLogArguments.append(_:)partial apply;
      v160 = v78;
      closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
      v159 = closure #1 in OSLogArguments.append(_:)partial apply;
      v160 = v79;
      closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
      v159 = closure #1 in OSLogArguments.append(_:)partial apply;
      v160 = v80;
      closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
      _os_log_impl(&dword_2586A4000, log, v83, "Updated cell model written to: %s", v68, 0xCu);
      destroyStorage<A>(_:count:)(v69, 0, v67);
      destroyStorage<A>(_:count:)(v70, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v68, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v65 = *(v98 + 464);
    v66 = *(v98 + 432);
    MEMORY[0x277D82BD8](log);
    v91(v65, v66);
LABEL_18:
    v42 = *(v98 + 680);
    v41 = *(v98 + 672);
    v43 = *(v98 + 648);
    v37 = *(v98 + 640);
    v36 = *(v98 + 632);
    v38 = *(v98 + 616);
    v32 = *(v98 + 608);
    v34 = *(v98 + 592);
    v40 = *(v98 + 656);
    v35 = *(v98 + 624);
    v33 = *(v98 + 600);
    memcpy(v150, (v98 + 184), 0x50uLL);
    v150[80] = 0;
    (*(v33 + 8))(v32, v34);
    v39 = *(v35 + 8);
    v39(v36, v38);
    v39(v37, v38);
    v44 = *(v40 + 8);
    v44(v41, v43);
    v44(v42, v43);
    memcpy((v98 + 16), v150, 0x51uLL);
    memcpy(*(v98 + 376), (v98 + 16), 0x51uLL);

    v14 = *(*(v98 + 304) + 8);

    return v14();
  }

  v18 = *(v98 + 736);
  v29 = *(v98 + 680);
  v28 = *(v98 + 672);
  v30 = *(v98 + 648);
  v24 = *(v98 + 640);
  v23 = *(v98 + 632);
  v25 = *(v98 + 616);
  v20 = *(v98 + 608);
  v21 = *(v98 + 592);
  v16 = *(v98 + 576);
  v17 = *(v98 + 560);
  v27 = *(v98 + 656);
  v22 = *(v98 + 624);
  v19 = *(v98 + 600);
  (*(*(v98 + 416) + 8))(*(v98 + 424), *(v98 + 408));
  v18(v16, v17);
  (*(v19 + 8))(v20, v21);
  v26 = *(v22 + 8);
  v26(v23, v25);
  v26(v24, v25);
  v31 = *(v27 + 8);
  v31(v28, v30);
  v31(v29, v30);

  v15 = *(*(v98 + 304) + 8);

  return v15();
}

{
  v1 = v0[88];
  v15 = v0[85];
  v14 = v0[84];
  v13 = v0[82];
  v16 = v0[81];
  v10 = v0[80];
  v9 = v0[79];
  v8 = v0[78];
  v11 = v0[77];
  v7 = v0[73];
  v5 = v0[71];
  v6 = v0[70];
  v4 = v0[69];
  v0[38] = v0;
  outlined consume of (@escaping @callee_guaranteed @Sendable (@in_guaranteed Event) -> ())?(partial apply for closure #1 in CellularModel.train(dataFrame:), v1);
  outlined destroy of DataFrame?(v4);
  (*(v5 + 8))(v7, v6);
  v12 = *(v8 + 8);
  v12(v9, v11);
  v12(v10, v11);
  v17 = *(v13 + 8);
  v17(v14, v16);
  v17(v15, v16);

  v2 = *(v0[38] + 8);

  return v2();
}

{
  v13 = v0[85];
  v12 = v0[84];
  v11 = v0[82];
  v14 = v0[81];
  v8 = v0[80];
  v7 = v0[79];
  v6 = v0[78];
  v9 = v0[77];
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v0[38] = v0;
  (*(v2 + 8))(v1, v3);
  v10 = *(v6 + 8);
  v10(v7, v9);
  v10(v8, v9);
  v15 = *(v11 + 8);
  v15(v12, v14);
  v15(v13, v14);

  v4 = *(v0[38] + 8);

  return v4();
}

{
  v13 = v0[85];
  v12 = v0[84];
  v11 = v0[82];
  v14 = v0[81];
  v8 = v0[80];
  v7 = v0[79];
  v6 = v0[78];
  v9 = v0[77];
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v0[38] = v0;
  (*(v2 + 8))(v1, v3);
  v10 = *(v6 + 8);
  v10(v7, v9);
  v10(v8, v9);
  v15 = *(v11 + 8);
  v15(v12, v14);
  v15(v13, v14);

  v4 = *(v0[38] + 8);

  return v4();
}

uint64_t CellularModel.train(dataFrame:)(double a1)
{
  v16 = *v2;
  v13 = (*v2 + 16);
  v14 = (*v2 + 304);
  v15 = (*v2 + 360);
  *(v16 + 304) = *v2;
  *(v16 + 768) = a1;
  *(v16 + 776) = v1;

  if (v1)
  {
    v10 = v13[47];

    return MEMORY[0x2822009F8](CellularModel.train(dataFrame:), v10);
  }

  else
  {
    v3 = v13[47];
    *v15 = a1;
    v11 = (*(*v3 + 152) + **(*v3 + 152));
    v4 = swift_task_alloc();
    v13[96] = v4;
    *v4 = *v14;
    v4[1] = CellularModel.train(dataFrame:);
    v5 = v13[93];
    v6 = v13[77];
    v7 = v13[74];
    v8 = v13[72];

    return v11(v6, v7, v8, v5);
  }
}

{
  v7 = *v2;
  v6 = *v2 + 16;
  *(v7 + 304) = *v2;
  *(v7 + 792) = a1;
  *(v7 + 800) = v1;

  if (v1)
  {
    v3 = *(v6 + 376);
    v4 = CellularModel.train(dataFrame:);
  }

  else
  {
    v3 = *(v6 + 376);
    v4 = CellularModel.train(dataFrame:);
  }

  return MEMORY[0x2822009F8](v4, v3);
}

void *closure #1 in CellularModel.train(dataFrame:)(uint64_t a1)
{
  v54 = partial apply for implicit closure #1 in closure #1 in CellularModel.train(dataFrame:);
  v55 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  v56 = closure #1 in OSLogArguments.append(_:)partial apply;
  v57 = closure #1 in OSLogArguments.append(_:)partial apply;
  v58 = closure #1 in OSLogArguments.append(_:)partial apply;
  v81 = 0;
  v79 = 0;
  v59 = 0;
  v60 = 0;
  v61 = type metadata accessor for Logger();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v65 = &v20 - v64;
  v69 = type metadata accessor for MetricsKey();
  v66 = *(v69 - 8);
  v67 = v69 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69, v3);
  v71 = &v20 - v68;
  v81 = a1;
  v72 = Event.metrics.getter();
  static MetricsKey.validationError.getter();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
  v4 = lazy protocol witness table accessor for type MetricsKey and conformance MetricsKey();
  MEMORY[0x259C87380](v80, v71, v72, v69, v70, v4);

  if (v80[3])
  {
    if (swift_dynamicCast())
    {
      v50 = v73;
      v51 = 0;
    }

    else
    {
      v50 = 0;
      v51 = 1;
    }

    v49 = v51;
    v48 = v50;
    result = (*(v66 + 8))(v71, v69);
    v52 = v48;
    v53 = v49;
  }

  else
  {
    (*(v66 + 8))(v71, v69);
    result = outlined destroy of Sendable?(v80);
    v52 = 0;
    v53 = 1;
  }

  v47 = v52;
  if ((v53 & 1) == 0)
  {
    v46 = v47;
    v6 = v65;
    v32 = v47;
    v79 = v47;
    v7 = CellularModel.logger.unsafeMutableAddressor();
    (*(v62 + 16))(v6, v7, v61);
    v35 = 7;
    v36 = swift_allocObject();
    *(v36 + 16) = v32;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    v33 = 17;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v34 = 32;
    v8 = swift_allocObject();
    v9 = v36;
    v37 = v8;
    *(v8 + 16) = v54;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v37;
    v41 = v10;
    *(v10 + 16) = v55;
    *(v10 + 24) = v11;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v40 = _allocateUninitializedArray<A>(_:)();
    v42 = v12;

    v13 = v38;
    v14 = v42;
    *v42 = v56;
    v14[1] = v13;

    v15 = v39;
    v16 = v42;
    v42[2] = v57;
    v16[3] = v15;

    v17 = v41;
    v18 = v42;
    v42[4] = v58;
    v18[5] = v17;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v44, v45))
    {
      v19 = v59;
      v25 = static UnsafeMutablePointer.allocate(capacity:)();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v24 = 0;
      v26 = createStorage<A>(capacity:type:)(0, v23, v23);
      v27 = createStorage<A>(capacity:type:)(v24, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v28 = &v78;
      v78 = v25;
      v29 = &v77;
      v77 = v26;
      v30 = &v76;
      v76 = v27;
      serialize(_:at:)(0, &v78);
      serialize(_:at:)(1, v28);
      v74 = v56;
      v75 = v38;
      closure #1 in osLogInternal(_:log:type:)(&v74, v28, v29, v30);
      v31 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v74 = v57;
        v75 = v39;
        closure #1 in osLogInternal(_:log:type:)(&v74, &v78, &v77, &v76);
        v22 = 0;
        v74 = v58;
        v75 = v41;
        closure #1 in osLogInternal(_:log:type:)(&v74, &v78, &v77, &v76);
        _os_log_impl(&dword_2586A4000, v44, v45, "Validation error: %f", v25, 0xCu);
        v21 = 0;
        destroyStorage<A>(_:count:)(v26, 0, v23);
        destroyStorage<A>(_:count:)(v27, v21, MEMORY[0x277D84F70] + 8);
        MEMORY[0x259C87730](v25, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v44);
    return (*(v62 + 8))(v65, v61);
  }

  return result;
}

uint64_t implicit closure #6 in CellularModel.train(dataFrame:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML13CellularModel_cellParametersURL;
  v2 = type metadata accessor for URL();
  return (*(*(v2 - 8) + 16))(a2, a1 + v4);
}

Swift::Void __swiftcall CellularModel.readModelFile()()
{
  v25 = MEMORY[0x277CC50C0];
  v6[27] = partial apply for implicit closure #1 in CellularModel.readModelFile();
  v6[28] = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  v6[29] = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  v6[30] = closure #1 in OSLogArguments.append(_:)partial apply;
  v6[31] = closure #1 in OSLogArguments.append(_:)partial apply;
  v6[32] = closure #1 in OSLogArguments.append(_:)partial apply;
  v39 = 0;
  v30 = 0;
  v6[33] = 0;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = v7 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v11 = v6 - v10;
  v20 = type metadata accessor for URL();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v12 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v1);
  v28 = v6 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  v15 = *(v27 - 8);
  v13 = v27 - 8;
  v14 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27, v2);
  v16 = v6 - v14;
  v39 = v19;
  (*(v15 + 16))(v6 - v14, v19 + OBJC_IVAR____TtC7MediaML13CellularModel_estimator);
  (*(v17 + 16))(v28, v19 + OBJC_IVAR____TtC7MediaML13CellularModel_cellParametersURL, v20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMd, &_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMR);
  v21 = v36;
  v37 = v3;
  v38 = lazy protocol witness table accessor for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMd, &_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMR);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents20BoostedTreeRegressorVySdGMd, &_s18CreateMLComponents20BoostedTreeRegressorVySdGMR);
  v24 = lazy protocol witness table accessor for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>();
  v4 = lazy protocol witness table accessor for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>();
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v34 = v4;
  v35 = MEMORY[0x277D83A28];
  swift_getOpaqueTypeConformance2();
  SupervisedTabularEstimator.read(from:)();
  v29 = 0;
  v5 = v19;
  (*(v17 + 8))(v28, v20);
  (*(v15 + 8))(v16, v27);
  (*(*v5 + 128))(v36);
}

uint64_t CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v8;
  v27 = v12;
  v9[50] = v12;
  v9[49] = v30;
  v9[48] = v29;
  v9[47] = a8;
  v9[46] = a7;
  v9[45] = a6;
  v9[44] = a5;
  v9[43] = a4;
  v9[42] = a3;
  v9[41] = a2;
  v9[40] = a1;
  v9[28] = v9;
  v9[22] = 0;
  v9[23] = 0;
  v9[24] = 0;
  v9[25] = 0;
  v9[29] = 0;
  v9[30] = 0;
  v9[31] = 0;
  v9[32] = 0;
  v9[33] = 0;
  v9[34] = 0;
  v9[35] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v9[51] = v14;
  v9[52] = *(v14 - 8);
  v9[53] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  v9[54] = v15;
  v9[55] = *(v15 - 8);
  v9[56] = swift_task_alloc();
  v16 = type metadata accessor for DataFrame();
  v9[57] = v16;
  v20 = *(v16 - 8);
  v9[58] = v20;
  v9[59] = *(v20 + 64);
  v9[60] = swift_task_alloc();
  v9[61] = swift_task_alloc();
  v9[62] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v9[63] = v17;
  v9[64] = *(v17 - 8);
  v9[65] = swift_task_alloc();
  v9[66] = swift_task_alloc();
  v18 = type metadata accessor for DispatchTime();
  v9[67] = v18;
  v21 = *(v18 - 8);
  v9[68] = v21;
  v9[69] = *(v21 + 64);
  v9[70] = swift_task_alloc();
  v9[71] = swift_task_alloc();
  v9[72] = swift_task_alloc();
  v9[73] = swift_task_alloc();
  v9[22] = a1;
  v9[23] = a2;
  v9[24] = a3;
  v9[25] = a4;
  v9[29] = a5;
  v9[30] = a6;
  v9[31] = a7;
  v9[32] = a8;
  v9[33] = v29;
  v9[34] = v30;
  v9[35] = v27;

  return MEMORY[0x2822009F8](CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:), v27);
}

uint64_t CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)()
{
  v1 = v0[50];
  v0[28] = v0;
  v2 = static DispatchTime.now()();
  (*(*v1 + 120))(v2);
  v75 = v0[5] == 0;
  outlined destroy of Transformer?((v76 + 16));
  if (v75)
  {
    v3 = *(v76 + 528);
    v71 = *(v76 + 504);
    v70 = *(v76 + 512);
    v4 = CellularModel.logger.unsafeMutableAddressor();
    (*(v70 + 16))(v3, v4, v71);
    v73 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v74 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v73, v72))
    {
      v66 = static UnsafeMutablePointer.allocate(capacity:)();
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v67 = createStorage<A>(capacity:type:)(0, v65, v65);
      v68 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v76 + 288) = v66;
      *(v76 + 296) = v67;
      *(v76 + 304) = v68;
      serialize(_:at:)(0, (v76 + 288));
      serialize(_:at:)(0, (v76 + 288));
      *(v76 + 312) = v74;
      v69 = swift_task_alloc();
      v69[2] = v76 + 288;
      v69[3] = v76 + 296;
      v69[4] = v76 + 304;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, v73, v72, "Reading cell model from disk...", v66, 2u);
      destroyStorage<A>(_:count:)(v67, 0, v65);
      destroyStorage<A>(_:count:)(v68, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v66, MEMORY[0x277D84B78]);
    }

    v63 = *(v76 + 528);
    v64 = *(v76 + 504);
    v5 = *(v76 + 400);
    v62 = *(v76 + 512);
    MEMORY[0x277D82BD8](v73);
    v6 = (*(v62 + 8))(v63, v64);
    (*(*v5 + 176))(v6);
  }

  v7 = *(v76 + 400);
  v60 = *(v76 + 392);
  v58 = *(v76 + 384);
  v57 = *(v76 + 376);
  v56 = *(v76 + 368);
  v55 = *(v76 + 360);
  v54 = *(v76 + 352);
  v53 = *(v76 + 344);
  v51 = *(v76 + 336);
  v49 = *(v76 + 328);
  v47 = *(v76 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SayypSgGtMd, &_sSS_SayypSgGtMR);
  _allocateUninitializedArray<A>(_:)();
  v61 = v8;
  v9 = kMediaML_carrier.unsafeMutableAddressor();
  outlined init with copy of String(v9, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  _allocateUninitializedArray<A>(_:)();
  v48 = v10;

  v50 = MEMORY[0x277D837D0];
  v48[3] = MEMORY[0x277D837D0];
  *v48 = v47;
  v48[1] = v49;
  _finalizeUninitializedArray<A>(_:)();
  v61[2] = v11;
  v12 = kMediaML_appName.unsafeMutableAddressor();
  outlined init with copy of String(v12, v61 + 3);
  _allocateUninitializedArray<A>(_:)();
  v52 = v13;

  v52[3] = v50;
  *v52 = v51;
  v52[1] = v53;
  _finalizeUninitializedArray<A>(_:)();
  v61[5] = v14;
  v15 = kMediaML_binnedRssi.unsafeMutableAddressor();
  outlined init with copy of String(v15, v61 + 6);
  _allocateUninitializedArray<A>(_:)();
  v59 = MEMORY[0x277D83B88];
  v16[3] = MEMORY[0x277D83B88];
  *v16 = v54;
  _finalizeUninitializedArray<A>(_:)();
  v61[8] = v17;
  v18 = kMediaML_binnedRsrp.unsafeMutableAddressor();
  outlined init with copy of String(v18, v61 + 9);
  _allocateUninitializedArray<A>(_:)();
  v19[3] = v59;
  *v19 = v55;
  _finalizeUninitializedArray<A>(_:)();
  v61[11] = v20;
  v21 = kMediaML_binnedRsrq.unsafeMutableAddressor();
  outlined init with copy of String(v21, v61 + 12);
  _allocateUninitializedArray<A>(_:)();
  v22[3] = v59;
  *v22 = v56;
  _finalizeUninitializedArray<A>(_:)();
  v61[14] = v23;
  v24 = kMediaML_binnedRscp.unsafeMutableAddressor();
  outlined init with copy of String(v24, v61 + 15);
  _allocateUninitializedArray<A>(_:)();
  v25[3] = v59;
  *v25 = v57;
  _finalizeUninitializedArray<A>(_:)();
  v61[17] = v26;
  v27 = kMediaML_binnedSnr.unsafeMutableAddressor();
  outlined init with copy of String(v27, v61 + 18);
  _allocateUninitializedArray<A>(_:)();
  v28[3] = v59;
  *v28 = v58;
  _finalizeUninitializedArray<A>(_:)();
  v61[20] = v29;
  v30 = kMediaML_bars.unsafeMutableAddressor();
  outlined init with copy of String(v30, v61 + 21);
  _allocateUninitializedArray<A>(_:)();
  v31[3] = v59;
  *v31 = v60;
  _finalizeUninitializedArray<A>(_:)();
  v61[23] = v32;
  _finalizeUninitializedArray<A>(_:)();
  v33 = DataFrame.init(dictionaryLiteral:)();
  (*(*v7 + 120))(v33);
  if (*(v76 + 160))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents11Transformer_pMd, &_s18CreateMLComponents11Transformer_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents18TabularTransformer_pMd, &_s18CreateMLComponents18TabularTransformer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v76 + 96) = 0;
      *(v76 + 104) = 0;
      *(v76 + 112) = 0;
      *(v76 + 120) = 0;
      *(v76 + 128) = 0;
    }
  }

  else
  {
    outlined destroy of Transformer?((v76 + 136));
    *(v76 + 96) = 0;
    *(v76 + 104) = 0;
    *(v76 + 112) = 0;
    *(v76 + 120) = 0;
    *(v76 + 128) = 0;
  }

  if (*(v76 + 120))
  {
    outlined init with take of TabularTransformer((v76 + 96), (v76 + 56));
    v45 = *(v76 + 80);
    v46 = *(v76 + 88);
    __swift_project_boxed_opaque_existential_1((v76 + 56), v45);
    v34 = swift_task_alloc();
    *(v76 + 592) = v34;
    *v34 = *(v76 + 224);
    v34[1] = CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:);
    v35 = *(v76 + 496);
    v36 = *(v76 + 488);

    return MEMORY[0x282115068](v36, v35, 0, 0, v45, v46);
  }

  else
  {
    v43 = *(v76 + 584);
    v44 = *(v76 + 536);
    v41 = *(v76 + 496);
    v40 = *(v76 + 456);
    v42 = *(v76 + 544);
    v39 = *(v76 + 464);
    outlined destroy of TabularTransformer?((v76 + 96));
    (*(v39 + 8))(v41, v40);
    (*(v42 + 8))(v43, v44);

    v37 = *(*(v76 + 224) + 8);

    return v37(0, 0);
  }
}

{
  v5 = *v1;
  v5[28] = *v1;
  v5[75] = v0;

  if (v0)
  {
    v2 = v5[50];
    v3 = CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:);
  }

  else
  {
    v2 = v5[50];
    v3 = CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:);
  }

  return MEMORY[0x2822009F8](v3, v2);
}

{
  v73 = v0;
  v45 = v0[73];
  v44 = v0[72];
  v50 = v0[71];
  v52 = v0[70];
  v47 = v0[69];
  v48 = v0[68];
  v53 = v0[67];
  v1 = v0[65];
  v35 = v0[64];
  v36 = v0[63];
  v37 = v0[61];
  v41 = v0[60];
  v38 = v0[59];
  v39 = v0[58];
  v42 = v0[57];
  v43 = v0[50];
  v0[28] = v0;
  static DispatchTime.now()();
  v2 = CellularModel.logger.unsafeMutableAddressor();
  (*(v35 + 16))(v1, v2, v36);
  (*(v39 + 16))(v41, v37, v42);

  v40 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v55 = swift_allocObject();
  (*(v39 + 32))(v55 + v40, v41, v42);
  *(v55 + ((v40 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v43;
  v46 = *(v48 + 16);
  v46(v50, v44, v53);
  v46(v52, v45, v53);
  v3 = *(v48 + 80);
  v49 = (v3 + 16) & ~v3;
  v51 = (v49 + v47 + v3) & ~v3;
  v57 = swift_allocObject();
  v54 = *(v48 + 32);
  v54(v57 + v49, v50, v53);
  v54(v57 + v51, v52, v53);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v56 = swift_allocObject();
  *(v56 + 16) = partial apply for implicit closure #1 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:);
  *(v56 + 24) = v55;
  v61 = swift_allocObject();
  *(v61 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  *(v61 + 24) = v56;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v58 = swift_allocObject();
  *(v58 + 16) = partial apply for implicit closure #2 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:);
  *(v58 + 24) = v57;
  v64 = swift_allocObject();
  *(v64 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  *(v64 + 24) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v65 = v4;

  *v65 = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[1] = v59;

  v65[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[3] = v60;

  v65[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[5] = v61;

  v65[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[7] = v62;

  v65[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[9] = v63;

  v65[10] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[11] = v64;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v66, v67))
  {
    v5 = *(v34 + 600);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v32 = createStorage<A>(capacity:type:)(0, v30, v30);
    v33 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v68 = buf;
    v69 = v32;
    v70 = v33;
    serialize(_:at:)(0, &v68);
    serialize(_:at:)(2, &v68);
    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v59;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    if (v5)
    {
    }

    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v60;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v61;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v63;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v64;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    _os_log_impl(&dword_2586A4000, v66, v67, "Finished prediction with cell model. Predicted value = %f Time taken = %f [ns]", buf, 0x16u);
    destroyStorage<A>(_:count:)(v32, 0, v30);
    destroyStorage<A>(_:count:)(v33, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v19 = *(v34 + 520);
  v20 = *(v34 + 504);
  v24 = *(v34 + 448);
  v23 = *(v34 + 432);
  v26 = *(v34 + 424);
  v27 = *(v34 + 408);
  v21 = *(v34 + 400);
  v18 = *(v34 + 512);
  v22 = *(v34 + 440);
  v25 = *(v34 + 416);
  MEMORY[0x277D82BD8](v66);
  (*(v18 + 8))(v19, v20);
  (*(v22 + 16))(v24, v21 + OBJC_IVAR____TtC7MediaML13CellularModel_targetColumnID, v23);
  DataFrame.subscript.getter();
  Column.subscript.getter();
  v28 = *(v34 + 208);
  v29 = *(v34 + 216);
  (*(v25 + 8))(v26, v27);
  if (v29)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v15 = *(v34 + 584);
  v9 = *(v34 + 576);
  v16 = *(v34 + 536);
  v12 = *(v34 + 496);
  v11 = *(v34 + 488);
  v13 = *(v34 + 456);
  v8 = *(v34 + 544);
  v10 = *(v34 + 464);
  (*(*(v34 + 440) + 8))(*(v34 + 448), *(v34 + 432));
  v17 = *(v8 + 8);
  v17(v9, v16);
  v14 = *(v10 + 8);
  v14(v11, v13);
  __swift_destroy_boxed_opaque_existential_1((v34 + 56));
  v14(v12, v13);
  v17(v15, v16);

  v7 = *(*(v34 + 224) + 8);

  return v7(v28, v29 & 1);
}

{
  v7 = v0[73];
  v5 = v0[68];
  v6 = v0[67];
  v8 = v0[62];
  v3 = v0[58];
  v4 = v0[57];
  v0[28] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  (*(v3 + 8))(v8, v4);
  (*(v5 + 8))(v7, v6);

  v1 = *(*(v9 + 224) + 8);

  return v1();
}

double implicit closure #1 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v6 = "Fatal error";
  v7 = "Unexpectedly found nil while unwrapping an Optional value";
  v8 = "MediaML/MLModel.swift";
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v9 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v2);
  v18 = &v4 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v13 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v10);
  v15 = &v4 - v13;
  (*(v14 + 16))();
  DataFrame.subscript.getter();
  Column.subscript.getter();
  v20 = v22;
  v21 = v23;
  (*(v16 + 8))(v18, v19);
  if (v21)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = v20;
  }

  v4 = v5;
  (*(v14 + 8))(v15, v11);
  return v4;
}

unint64_t implicit closure #2 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)()
{
  v2 = DispatchTime.uptimeNanoseconds.getter();
  v0 = DispatchTime.uptimeNanoseconds.getter();
  result = v2;
  if (v2 < v0)
  {
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    return Double.init<A>(_:)();
  }

  return result;
}

uint64_t CellularModel.deinit()
{
  v5 = OBJC_IVAR____TtC7MediaML13CellularModel_targetColumnID;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  (*(*(v1 - 8) + 8))(v0 + v5);
  outlined destroy of Transformer?((v0 + OBJC_IVAR____TtC7MediaML13CellularModel_model));
  v6 = OBJC_IVAR____TtC7MediaML13CellularModel_cellParametersURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v6);
  v7 = OBJC_IVAR____TtC7MediaML13CellularModel_estimator;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  (*(*(v3 - 8) + 8))(v0 + v7);
  swift_defaultActor_destroy();
  return v8;
}

uint64_t closure #1 in osLogInternal(_:log:type:)partial apply(uint64_t (**a1)(uint64_t, uint64_t, uint64_t))
{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

uint64_t outlined consume of (@escaping @callee_guaranteed @Sendable (@in_guaranteed Event) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined destroy of DataFrame?(uint64_t a1)
{
  v3 = type metadata accessor for DataFrame();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>()
{
  v2 = lazy protocol witness table cache variable for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>;
  if (!lazy protocol witness table cache variable for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMd, &_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>;
  if (!lazy protocol witness table cache variable for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMd, &_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1, a2);
  v10 = v7 - v7[0];
  v4();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSS_11TabularData7CSVTypeOt_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR);
      v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR);
    return v2;
  }

  return result;
}

uint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(uint64_t a1)
{
  v29 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR);
  v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v29, v1);
  v32 = &v16 - v31;
  if (specialized Array.count.getter(v2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11TabularData7CSVTypeOGMd, &_ss18_DictionaryStorageCySS11TabularData7CSVTypeOGMR);
    v28 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v27 = MEMORY[0x277D84F98];

    v28 = v27;
  }

  v25 = v28;

  result = specialized Array._getCount()(v29);
  v26 = result;
  if (result)
  {
    v24 = &v32[*(v30 + 48)];
    if (v26 <= 0)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; ; i = v21)
      {
        v20 = i;
        IsNativeType = specialized Array._hoistableIsNativeTypeChecked()();
        specialized Array._getElement(_:wasNativeTypeChecked:matchingSubscriptCheck:)(v20, IsNativeType & 1, v29, v32);
        v21 = v20 + 1;
        result = specialized __RawDictionaryStorage.find<A>(_:)(*v32, *(v32 + 1));
        v22 = result;
        if (v5)
        {
          break;
        }

        v6 = v25;
        v7 = v22;
        v8 = v32;
        *(v25 + 64 + 8 * (v22 / 0x40)) |= 1 << ((v22 % 0x40) & 0x3F);
        v9 = (*(v6 + 48) + 16 * v7);
        v10 = *v8;
        v11 = *(v8 + 1);
        *v9 = v10;
        v9[1] = v11;
        v17 = *(v6 + 56);
        v18 = *(type metadata accessor for CSVType() - 8);
        result = (*(v18 + 32))(v17 + v22 * *(v18 + 72), v24);
        v12 = *(v25 + 16);
        v19 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_17;
        }

        v14 = v21;
        v15 = v26;
        *(v25 + 16) = v19;
        if (v14 == v15)
        {
          goto LABEL_14;
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_14:

    return v25;
  }

  return result;
}

Swift::Int default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS_Tt1gq5(inited, 10);
  v6 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v6[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("#N/A", 4uLL, 1);
  v6[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("#N/A N/A", 8uLL, 1);
  v6[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("#NA", 3uLL, 1);
  v6[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("N/A", 3uLL, 1);
  v6[5] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NA", 2uLL, 1);
  v6[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NULL", 4uLL, 1);
  v6[7] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("n/a", 3uLL, 1);
  v6[8] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nil", 3uLL, 1);
  v6[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("null", 4uLL, 1);
  specialized _finalizeUninitializedArray<A>(_:)();
  v7 = v2;
  if (specialized Array._getCount()(v2))
  {
    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(v7);
  }

  v4 = MEMORY[0x277D84FA0];

  return v4;
}

Swift::Int default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS_Tt1gq5(inited, 4);
  v6 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("1", 1uLL, 1);
  v6[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("True", 4uLL, 1);
  v6[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TRUE", 4uLL, 1);
  v6[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("true", 4uLL, 1);
  specialized _finalizeUninitializedArray<A>(_:)();
  v7 = v2;
  if (specialized Array._getCount()(v2))
  {
    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(v7);
  }

  v4 = MEMORY[0x277D84FA0];

  return v4;
}

Swift::Int default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS_Tt1gq5(inited, 4);
  v6 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("0", 1uLL, 1);
  v6[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("False", 5uLL, 1);
  v6[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FALSE", 5uLL, 1);
  v6[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("false", 5uLL, 1);
  specialized _finalizeUninitializedArray<A>(_:)();
  v7 = v2;
  if (specialized Array._getCount()(v2))
  {
    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(v7);
  }

  v4 = MEMORY[0x277D84FA0];

  return v4;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(uint64_t a1)
{
  if (specialized Array.count.getter(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v20 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v19 = MEMORY[0x277D84FA0];

    v20 = v19;
  }

  v18 = specialized Array._getCount()(a1);
  if (!v18)
  {

    return v20;
  }

  v17 = 0;
  while (2)
  {
    IsNativeType = specialized Array._hoistableIsNativeTypeChecked()();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v17, IsNativeType & 1, a1);
    result = specialized Array._getElement(_:wasNativeTypeChecked:matchingSubscriptCheck:)(v17, IsNativeType & 1, a1);
    v15 = result;
    v16 = v2;
    if (!__OFADD__(v17, 1))
    {
      Hasher.init(_seed:)();
      memcpy(__dst, v23, sizeof(__dst));
      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = (1 << (*(v20 + 32) & 0x3F)) - 1;
      for (i = result & v12; (*(v20 + 56 + 8 * (i / 0x40)) & (1 << ((i % 0x40) & 0x3F))) != 0; i = (i + 1) & v12)
      {
        v4 = (*(v20 + 48) + 16 * i);
        v9 = *v4;
        v10 = v4[1];

        v11 = MEMORY[0x259C87470](v9, v10, v15, v16);

        result = v11;
        if (v11)
        {

          goto LABEL_20;
        }
      }

      *(v20 + 56 + 8 * (i / 0x40)) |= 1 << ((i % 0x40) & 0x3F);
      v5 = (*(v20 + 48) + 16 * i);
      *v5 = v15;
      v5[1] = v16;
      v6 = *(v20 + 16);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_26;
      }

      *(v20 + 16) = v8;
LABEL_20:
      if (v17 + 1 != v18)
      {
        ++v17;
        continue;
      }

      return v20;
    }

    break;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized Array._hoistableIsNativeTypeChecked()()
{
  return 1;
}

{
  return 1;
}

uint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(uint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (result < *(a3 + 16))
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Array._getElement(_:wasNativeTypeChecked:matchingSubscriptCheck:)(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a3 + 32 + 16 * a1);

    return v4;
  }

  else
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)(a1, a3);
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t specialized _ArrayBuffer._getElementSlowPath(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = static String._createEmpty(withInitialCapacity:)(82);
    v9 = v2;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Down-casted Array element failed to match the target type\nExpected ", 0x43uLL, 1)._countAndFlagsBits;
    MEMORY[0x259C874A0](countAndFlagsBits);

    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("String", 6uLL, 1)._countAndFlagsBits;
    MEMORY[0x259C874A0](v4);

    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" but found ", 0xBuLL, 1)._countAndFlagsBits;
    MEMORY[0x259C874A0](v5);

    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    MEMORY[0x259C874A0](v6);

    MEMORY[0x259C87440](v8, v9);
    _assertionFailure(_:_:flags:)();
    __break(1u);
  }

  outlined destroy of String(v10);
  return v7;
}

uint64_t static String._createEmpty(withInitialCapacity:)(Swift::Int a1)
{

  if (a1 > 15)
  {
    _StringGuts.grow(_:)(a1);
  }

  return 0;
}

char *specialized Array._getElement(_:wasNativeTypeChecked:matchingSubscriptCheck:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (a2)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR);
    return outlined init with copy of (String, CSVType)((a3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + a1 * *(*(v5 - 8) + 72)), a4);
  }

  else
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)(a1, a3);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR);
    if (*(*(result - 1) + 64) == 8)
    {
      v10 = v6;
      outlined init with copy of (String, CSVType)(&v10, a4);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  memcpy(__dst, v7, sizeof(__dst));
  String.hash(into:)();
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v2);
}

uint64_t specialized _ArrayBuffer._getElementSlowPath(_:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v21 = a2;
  v22 = "Fatal error";
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR);
  v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20](v23, v2);
  v26 = v11 - v25;
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v23 >= *(v21 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * v23);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v29 = v20;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v4 = static String._createEmpty(withInitialCapacity:)(82);
    v13 = &v27;
    v27 = v4;
    v28 = v5;
    v12 = 1;
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Down-casted Array element failed to match the target type\nExpected ", 0x43uLL, 1);
    v11[0] = v6._object;
    MEMORY[0x259C874A0](v6._countAndFlagsBits);

    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("(String, CSVType)", 0x11uLL, v12 & 1);
    v11[1] = v7._object;
    MEMORY[0x259C874A0](v7._countAndFlagsBits);

    v19 = 11;
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" but found ", 0xBuLL, v12 & 1);
    object = v8._object;
    MEMORY[0x259C874A0](v8._countAndFlagsBits);

    swift_getObjectType();
    v18 = 0;
    v9 = _typeName(_:qualified:)();
    v15 = v10;
    MEMORY[0x259C874A0](v9);

    v16 = v27;
    v17 = v28;

    MEMORY[0x259C87440](v16, v17);
    _assertionFailure(_:_:flags:)();
    __break(1u);
  }

  outlined destroy of (String, CSVType)(v26);
  return v20;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = (1 << (*(v3 + 32) & 0x3F)) - 1;
  for (i = a3 & v13; (*(v12 + 64 + 8 * (i / 0x40)) & (1 << ((i % 0x40) & 0x3F))) != 0; i = (i + 1) & v13)
  {
    v4 = (*(v12 + 48) + 16 * i);
    v7 = *v4;
    v8 = v4[1];

    v9 = MEMORY[0x259C87470](v7, v8, a1, a2);

    if (v9)
    {
      return i;
    }
  }

  return i;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x277D82BE0](v2);
  swift_unknownObjectRelease();
  return v2;
}

{
  return a1();
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for URL();
  v1 = lazy protocol witness table accessor for type URL and conformance URL();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  v2 = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type URL and conformance URL);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Column<Double> and conformance Column<A>()
{
  v2 = lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>;
  if (!lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Double?] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Double?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Double?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdSgGMd, &_sSaySdSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Double?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

void *__swift_deallocate_boxed_opaque_existential_1(void *result)
{
  v1 = result[3];
  v2 = *(*(v1 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return MEMORY[0x259C88020](*result, ((v2 + 16) & ~v2) + *(*(v1 - 8) + 64), v2 | 7);
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t **, uint64_t))
{
  v9 = a4(a1, a2, a3);
  v8 = *a1;
  MEMORY[0x277D82BE0](v9);
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  if (v9)
  {
    MEMORY[0x277D82BD8](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (!*a2)
  {
    return MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BE0](v9);
  *v5 = v9;
  result = MEMORY[0x277D82BD8](v9);
  *a2 = v5 + 1;
  return result;
}

void *outlined destroy of TabularTransformer?(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

double partial apply for implicit closure #1 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)()
{
  v4 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v2 = *(v0 + ((v1 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return implicit closure #1 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)(v0 + v1, v2);
}

unint64_t partial apply for implicit closure #2 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)()
{
  type metadata accessor for DispatchTime();

  return implicit closure #2 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for URL();
  v1 = lazy protocol witness table accessor for type URL and conformance URL();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v1 = lazy protocol witness table accessor for type [String : Any] and conformance [A : B]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

uint64_t closure #1 in OSLogArguments.append(_:)partial apply(uint64_t *a1, uint64_t **a2, uint64_t a3)
{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

double partial apply for implicit closure #1 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)()
{
  v4 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v2 = *(v0 + ((v1 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return implicit closure #1 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)(v0 + v1, v2);
}

unint64_t partial apply for implicit closure #2 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)()
{
  type metadata accessor for DispatchTime();

  return implicit closure #2 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)();
}

uint64_t getEnumTagSinglePayload for ModelStats(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 80))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelStats(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3)
    {
      *(result + 80) = 1;
    }
  }

  else if (a3)
  {
    *(result + 80) = 0;
  }

  return result;
}

uint64_t type metadata accessor for WifiModel(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for WifiModel;
  if (!type metadata singleton initialization cache for WifiModel)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t type metadata completion function for WifiModel(uint64_t a1)
{
  updated = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    updated = type metadata accessor for ColumnID<Double>(319);
    if (v2 <= 0x3F)
    {
      updated = type metadata accessor for <<opaque return type of UpdatableTabularEstimator.appending<A>(_:)>>.0(319);
      if (v3 <= 0x3F)
      {
        updated = swift_updateClassMetadata2();
        if (!updated)
        {
          return 0;
        }
      }
    }
  }

  return updated;
}

unint64_t type metadata accessor for ColumnID<Double>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for ColumnID<Double>;
  if (!lazy cache variable for type metadata for ColumnID<Double>)
  {
    v4 = type metadata accessor for ColumnID();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for ColumnID<Double>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for <<opaque return type of UpdatableTabularEstimator.appending<A>(_:)>>.0(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for <<opaque return type of UpdatableTabularEstimator.appending<A>(_:)>>.0;
  if (!lazy cache variable for type metadata for <<opaque return type of UpdatableTabularEstimator.appending<A>(_:)>>.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMd, &_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents20BoostedTreeRegressorVySdGMd, &_s18CreateMLComponents20BoostedTreeRegressorVySdGMR);
    lazy protocol witness table accessor for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>();
    lazy protocol witness table accessor for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v5 = OpaqueTypeMetadata2;
    if (!v1)
    {
      v2 = OpaqueTypeMetadata2;
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of UpdatableTabularEstimator.appending<A>(_:)>>.0);
      return v2;
    }
  }

  return v5;
}

uint64_t type metadata accessor for CellularModel(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for CellularModel;
  if (!type metadata singleton initialization cache for CellularModel)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t type metadata completion function for CellularModel(uint64_t a1)
{
  updated = type metadata accessor for ColumnID<Double>(319);
  if (v1 <= 0x3F)
  {
    updated = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      updated = type metadata accessor for <<opaque return type of UpdatableTabularEstimator.appending<A>(_:)>>.0(319);
      if (v3 <= 0x3F)
      {
        updated = swift_updateClassMetadata2();
        if (!updated)
        {
          return 0;
        }
      }
    }
  }

  return updated;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  v2 = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type MetricsKey and conformance MetricsKey()
{
  v2 = lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey;
  if (!lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey)
  {
    type metadata accessor for MetricsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey);
    return WitnessTable;
  }

  return v2;
}

void *outlined destroy of Sendable?(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

char *outlined init with copy of (String, CSVType)(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);

  *(a2 + 1) = v4;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR) + 48);
  v2 = type metadata accessor for CSVType();
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  return a2;
}

uint64_t outlined destroy of (String, CSVType)(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR) + 48);
  v1 = type metadata accessor for CSVType();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t one-time initialization function for dbPath()
{
  v12 = type metadata accessor for URL();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v12, v0);
  v2 = &v5 - v5;
  v11 = &v5 - v5;
  v6 = dbPath;
  __swift_allocate_value_buffer(v1, dbPath);
  v7 = __swift_project_value_buffer(v12, v6);
  v3 = mediaMLDataDirectory.unsafeMutableAddressor();
  (*(v9 + 16))(v2, v3, v12);
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rawdata.db", 0xAuLL, 1)._object;
  URL.appendingPathComponent(_:isDirectory:)();

  return (*(v9 + 8))(v11, v12);
}

uint64_t dbPath.unsafeMutableAddressor()
{
  if (one-time initialization token for dbPath != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  return __swift_project_value_buffer(v0, dbPath);
}

uint64_t WiFiDataPointForWriting.sessionID.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t WiFiDataPointForWriting.appName.getter()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t WiFiDataPointForWriting.bucketedSSID.getter()
{
  v2 = *(v0 + 40);

  return v2;
}

void __swiftcall WiFiDataPointForWriting.init(sessionID:timestamp:appName:bucketedSSID:hour:dow:rssi:cca:snr:noise:txRate:rxRate:throughputTrue:)(MediaML::WiFiDataPointForWriting *__return_ptr retstr, Swift::String sessionID, Swift::Double timestamp, Swift::String appName, Swift::String bucketedSSID, Swift::Int hour, Swift::Int dow, Swift::Int rssi, Swift::Int cca, Swift::Int snr, Swift::Int noise, Swift::Double txRate, Swift::Double rxRate, Swift::Double throughputTrue)
{
  __src[0] = sessionID;
  *&__src[1]._countAndFlagsBits = timestamp;
  *&__src[1]._object = appName;
  *&__src[2]._object = bucketedSSID;
  __src[3]._object = hour;
  __src[4]._countAndFlagsBits = dow;
  __src[4]._object = rssi;
  __src[5]._countAndFlagsBits = cca;
  __src[5]._object = snr;
  __src[6]._countAndFlagsBits = noise;
  *&__src[6]._object = txRate;
  *&__src[7]._countAndFlagsBits = rxRate;
  *&__src[7]._object = throughputTrue;
  memcpy(retstr, __src, sizeof(MediaML::WiFiDataPointForWriting));
}

uint64_t CellDataPointForWriting.sessionID.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t CellDataPointForWriting.appName.getter()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t CellDataPointForWriting.carrier.getter()
{
  v2 = *(v0 + 40);

  return v2;
}

void __swiftcall CellDataPointForWriting.init(sessionID:timestamp:appName:carrier:hour:dow:rssi:rsrp:rscp:rsrq:snr:bars:throughputTrue:)(MediaML::CellDataPointForWriting *__return_ptr retstr, Swift::String sessionID, Swift::Double timestamp, Swift::String appName, Swift::String carrier, Swift::Int hour, Swift::Int dow, Swift::Int rssi, Swift::Int rsrp, Swift::Int rscp, Swift::Int rsrq, Swift::Double snr, Swift::Int bars, Swift::Double throughputTrue)
{
  __src[0] = sessionID;
  *&__src[1]._countAndFlagsBits = timestamp;
  *&__src[1]._object = appName;
  *&__src[2]._object = carrier;
  __src[3]._object = hour;
  __src[4]._countAndFlagsBits = dow;
  __src[4]._object = rssi;
  __src[5]._countAndFlagsBits = rsrp;
  __src[5]._object = rscp;
  __src[6]._countAndFlagsBits = rsrq;
  *&__src[6]._object = snr;
  __src[7]._countAndFlagsBits = bars;
  *&__src[7]._object = throughputTrue;
  memcpy(retstr, __src, sizeof(MediaML::CellDataPointForWriting));
}

uint64_t WiFiDataPointForPrediciton.appName.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t WiFiDataPointForPrediciton.bucketedSSID.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

void __swiftcall WiFiDataPointForPrediciton.init(appName:bucketedSSID:hour:dow:rssi:noise:txRate:rxRate:)(MediaML::WiFiDataPointForPrediciton *__return_ptr retstr, Swift::String appName, Swift::String bucketedSSID, Swift::Int hour, Swift::Int dow, Swift::Int rssi, Swift::Int noise, Swift::Double txRate, Swift::Double rxRate)
{
  __src[0] = appName;
  __src[1] = bucketedSSID;
  __src[2]._countAndFlagsBits = hour;
  __src[2]._object = dow;
  __src[3]._countAndFlagsBits = rssi;
  __src[3]._object = noise;
  *&__src[4]._countAndFlagsBits = txRate;
  *&__src[4]._object = rxRate;
  memcpy(retstr, __src, sizeof(MediaML::WiFiDataPointForPrediciton));
}

uint64_t CellDataPointForPrediction.appName.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t CellDataPointForPrediction.carrier.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

void __swiftcall CellDataPointForPrediction.init(appName:carrier:binnedRssi:binnedRsrp:binnedRscp:binnedRsrq:binnedSnr:bars:)(MediaML::CellDataPointForPrediction *__return_ptr retstr, Swift::String appName, Swift::String carrier, Swift::Int binnedRssi, Swift::Int binnedRsrp, Swift::Int binnedRscp, Swift::Int binnedRsrq, Swift::Int binnedSnr, Swift::Int bars)
{
  __src[0] = appName;
  __src[1] = carrier;
  __src[2]._countAndFlagsBits = binnedRssi;
  __src[2]._object = binnedRsrp;
  __src[3]._countAndFlagsBits = binnedRscp;
  __src[3]._object = binnedRsrq;
  __src[4]._countAndFlagsBits = binnedSnr;
  __src[4]._object = bars;
  memcpy(retstr, __src, sizeof(MediaML::CellDataPointForPrediction));
}

uint64_t DataWriter.database.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 112);

  swift_endAccess();
  return v2;
}

uint64_t DataWriter.database.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 112) = a1;

  swift_endAccess();
}

uint64_t DataWriter.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static DataWriter.logger);
}

uint64_t static DataWriter.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = DataWriter.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t DataWriter.__allocating_init()()
{
  v3 = v0;
  *(v0 + 16) = v0;
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = DataWriter.__allocating_init();

  return DataWriter.init()();
}

uint64_t DataWriter.__allocating_init()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v8 = v3 + 16;

  if (v1)
  {
    v5 = *(*v8 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v8 + 8);
  }

  return v5(v4);
}

uint64_t DataWriter.init()()
{
  v1[9] = v0;
  v1[10] = *v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[4] = 0;
  v2 = type metadata accessor for Logger();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  type metadata accessor for SQLiteDB.Location(0);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](DataWriter.init(), 0);
}

{
  v8 = v0[15];
  v4 = v0[9];
  v0[2] = v0;
  v0[3] = v4;
  swift_defaultActor_initialize();
  *(v4 + 120) = 1;
  type metadata accessor for SQLiteDB();
  v5 = dbPath.unsafeMutableAddressor();
  v7 = type metadata accessor for URL();
  v6 = *(v7 - 8);
  (*(v6 + 16))(v8, v5);
  (*(v6 + 56))(v8, 0, 1, v7);
  *(v3[9] + 112) = SQLiteDB.__allocating_init(_:)(v8);
  v1 = swift_task_alloc();
  v3[16] = v1;
  *v1 = v3[2];
  v1[1] = DataWriter.init();

  return DataWriter.createTables()();
}

{
  v9 = *v1;
  v9[2] = *v1;
  v9[17] = v0;

  if (v0)
  {
    v6 = v9[9];

    v9[19] = lazy protocol witness table accessor for type DataWriter and conformance DataWriter();
    if (v6)
    {
      swift_getObjectType();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
    }

    else
    {
      v5 = 0;
    }

    v2 = v5;
    v3 = DataWriter.init();
  }

  else
  {
    v8 = v9[9];

    v9[18] = lazy protocol witness table accessor for type DataWriter and conformance DataWriter();
    if (v8)
    {
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
    }

    else
    {
      v7 = 0;
    }

    v2 = v7;
    v3 = DataWriter.init();
  }

  return MEMORY[0x2822009F8](v3, v2);
}

{
  v1 = v0[14];
  v16 = v0[12];
  v17 = v0[11];
  v0[2] = v0;
  swift_unknownObjectRelease();
  v2 = DataWriter.logger.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    v3 = *(v15 + 136);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 40) = buf;
    *(v15 + 48) = v12;
    *(v15 + 56) = v13;
    serialize(_:at:)(0, (v15 + 40));
    serialize(_:at:)(0, (v15 + 40));
    *(v15 + 64) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 40;
    v14[3] = v15 + 48;
    v14[4] = v15 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&dword_2586A4000, v19, v18, "DataWriter created successfully!", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = *(v15 + 112);
  v8 = *(v15 + 88);
  v7 = *(v15 + 96);
  MEMORY[0x277D82BD8](v19);
  (*(v7 + 8))(v9, v8);

  v5 = *(*(v15 + 16) + 8);
  v6 = *(v15 + 72);

  return v5(v6);
}

{
  v31 = v0;
  v0[2] = v0;
  swift_unknownObjectRelease();
  v16 = v0[17];
  v1 = v0[13];
  v14 = v0[12];
  v15 = v0[11];
  MEMORY[0x259C87ED0]();
  v0[4] = v16;
  v2 = DataWriter.logger.unsafeMutableAddressor();
  (*(v14 + 16))(v1, v2, v15);
  MEMORY[0x259C87ED0](v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = 64;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for implicit closure #1 in DataWriter.init();
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = _s2os18OSLogInterpolationV06appendC0_7privacy10attributesys5Error_pyXA_AA0B7PrivacyVSStFSo8NSObjectCycfu_TA_0;
  *(v19 + 24) = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = _s2os18OSLogInterpolationV06appendC0_7privacy10attributesySo8NSObjectCyXA_AA0B7PrivacyVSStFAHSgycfu_TA_0;
  *(v22 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v23 = v3;

  *v23 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
  v23[1] = v20;

  v23[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[3] = v21;

  v23[4] = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_0;
  v23[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v24, v25))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(1, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v26 = buf;
    v27 = v11;
    v28 = v12;
    serialize(_:at:)(2, &v26);
    serialize(_:at:)(1, &v26);
    v29 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
    v30 = v20;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v21;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    v29 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_0;
    v30 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    _os_log_impl(&dword_2586A4000, v24, v25, "DataWrite creation failed with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v11, 1, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v7 = v13[13];
  v8 = v13[11];
  v6 = v13[12];
  MEMORY[0x277D82BD8](v24);
  (*(v6 + 8))(v7, v8);
  swift_willThrow();
  MEMORY[0x259C87EC0](v16);

  v4 = *(v13[2] + 8);

  return v4();
}

uint64_t DataWriter.createTables()()
{
  v1[80] = v0;
  v1[58] = v1;
  v1[59] = 0;
  v1[56] = 0;
  v1[57] = 0;
  v1[60] = 0;
  v1[62] = 0;
  v1[63] = 0;
  v1[65] = 0;
  v1[66] = 0;
  v1[68] = 0;
  v1[70] = 0;
  type metadata accessor for SQLiteDB.Location(0);
  v1[81] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[82] = v2;
  v1[83] = *(v2 - 8);
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[86] = v3;
  v1[87] = *(v3 - 8);
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[59] = v0;

  return (MEMORY[0x2822009F8])(DataWriter.createTables());
}

{
  countAndFlagsBits = v0[40]._countAndFlagsBits;
  v0[29]._countAndFlagsBits = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CREATE TABLE IF NOT EXISTS admin (\n\tversion INTEGER NOT NULL\n);\n\nCREATE TABLE IF NOT EXISTS processedwifi (\n\tsession_id TEXT NOT NULL,\n\tapp_name TEXT NOT NULL,\n\tssid TEXT NOT NULL,\n\thour INT NOT NULL,\n\tdow INT NOT NULL,\n\trssi INT NOT NULL,\n\tnoise INT NOT NULL,\n\ttx_rate DOUBLE NOT NULL,\n\trx_rate DOUBLE NOT NULL,\n\tthroughput_true DOUBLE NOT NULL\n);\n\nCREATE TABLE IF NOT EXISTS wifi (\n\tsession_id TEXT NOT NULL,\n\ttimestamp DOUBLE NOT NULL,\n\tapp_name TEXT NOT NULL,\n\tssid TEXT NOT NULL,\n\thour INT NOT NULL,\n\tdow INT NOT NULL,\n\trssi INT NOT NULL,\n\tcca INT NOT NULL,\n\tnoise INT NOT NULL,\n\tsnr INT NOT NULL,\n\ttx_rate DOUBLE NOT NULL,\n\trx_rate DOUBLE NOT NULL,\n\tthroughput_true DOUBLE NOT NULL\n);\n\nCREATE TABLE IF NOT EXISTS cell (\n\tsession_id TEXT NOT NULL,\n\ttimestamp DOUBLE NOT NULL,\n\tapp_name TEXT NOT NULL,\n\tcarrier TEXT NOT NULL,\n\thour INT NOT NULL,\n\tdow INT NOT NULL,\n\trssi INT NOT NULL,\n\trsrp INT NOT NULL,\n\trscp INT NOT NULL,\n\trsrq INT NOT NULL,\n\tsnr INT NOT NULL,\n\tbars INT NOT NULL,\n\tthroughput_true DOUBLE NOT NULL\n);\n\nCREATE TABLE IF NOT EXISTS processedcell (\n\tcarrier TEXT NOT NULL,\n\tapp_name TEXT NOT NULL,\n\tbinned_rssi INT NOT NULL,\n\tbinned_rsrp INT NOT NULL,\n\tbinned_rscp INT NOT NULL,\n\tbinned_rsrq INT NOT NULL,\n\tbinned_snr INT NOT NULL,\n\tbars INT NOT NULL,\n\tcount INT NOT NULL,\n\tthroughput_true DOUBLE NOT NULL\n);\n\nCREATE TABLE IF NOT EXISTS modelStats (\n\tinterfaceType Int NOT NULL,\n\ttrainingRowCount Int NOT NULL,\n\tvalidationRowCount INT NOT NULL,\n\tcarrierCount INT NOT NULL,\n\tssidCount INT NOT NULL,\n\tappNameCount INT NOT NULL,\n\tsessionIDCount INT NOT NULL,\n\ttrainingMAPE DOUBLE NOT NULL,\n\tvalidationMAPE DOUBLE NOT NULL,\n\ttrainingDate INT NOT NULL\n);\n\nCREATE TABLE IF NOT EXISTS wifiStdDev (\n\tapp_name TEXT NOT NULL,\n\tssid TEXT NOT NULL,\n\tthroughput_stddev DOUBLE NOT NULL,\n\ttraining_date INT NOT NULL\n);\n\nCREATE TABLE IF NOT EXISTS cellStdDev (\n\tapp_name TEXT NOT NULL,\n\tcarrier TEXT NOT NULL,\n\tbars INT NOT NULL,\n\tthroughput_stddev DOUBLE NOT NULL,\n\ttraining_date INT NOT NULL\n);", 0x7DFuLL, 1);
  v0[46] = v1;
  v0[28] = v1;
  swift_beginAccess();
  v4 = *(countAndFlagsBits + 112);
  v0[47]._countAndFlagsBits = v4;

  swift_endAccess();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4);
}

{
  v1 = *(v0 + 736);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 760) = v2;
  if (v2)
  {
    v3 = *(v7 + 640);
    v4 = DataWriter.createTables();
  }

  else
  {
    v6 = *(v7 + 640);

    v3 = v6;
    v4 = DataWriter.createTables();
  }

  return MEMORY[0x2822009F8](v4, v3);
}

{
  v2 = *(v0 + 640);
  *(v0 + 464) = v0;
  swift_beginAccess();
  v3 = *(v2 + 112);
  *(v0 + 768) = v3;

  swift_endAccess();
  *(v0 + 776) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT COUNT(*) from wifi", 0x19uLL, 1);

  return MEMORY[0x2822009F8](DataWriter.createTables(), v3);
}

{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[95];
  v0[58] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #1 in DataWriter.createTables());
  v0[99] = v3;
  if (v3)
  {
    v4 = *(v8 + 640);
    v5 = DataWriter.createTables();
  }

  else
  {
    v7 = *(v8 + 640);

    v4 = v7;
    v5 = DataWriter.createTables();
  }

  return MEMORY[0x2822009F8](v5, v4);
}

{
  v0[58] = v0;
  v26 = v0[61];
  v0[63] = v26;
  if (v26 < *MAX_ALLOWED_RAW_DATASIZE.unsafeMutableAddressor())
  {
    *(v25 + 904) = *(v25 + 792);
    v7 = *(v25 + 640);
    swift_beginAccess();
    v8 = *(v7 + 112);
    *(v25 + 912) = v8;

    swift_endAccess();
    *(v25 + 920) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT COUNT(*) from cell", 0x19uLL, 1);
    v5 = v8;
    v6 = DataWriter.createTables();
  }

  else
  {
    v1 = *(v25 + 728);
    v21 = *(v25 + 688);
    v20 = *(v25 + 696);
    v2 = DataWriter.logger.unsafeMutableAddressor();
    (*(v20 + 16))(v1, v2, v21);
    v23 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v24 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v23, v22))
    {
      v3 = *(v25 + 792);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v17 = createStorage<A>(capacity:type:)(0, v15, v15);
      v18 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v25 + 608) = buf;
      *(v25 + 616) = v17;
      *(v25 + 624) = v18;
      serialize(_:at:)(0, (v25 + 608));
      serialize(_:at:)(0, (v25 + 608));
      *(v25 + 632) = v24;
      v19 = swift_task_alloc();
      v19[2] = v25 + 608;
      v19[3] = v25 + 616;
      v19[4] = v25 + 624;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v3)
      {
      }

      _os_log_impl(&dword_2586A4000, v23, v22, "Wifi raw data too large, deleting...", buf, 2u);
      destroyStorage<A>(_:count:)(v17, 0, v15);
      destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);

      v14 = 0;
    }

    else
    {

      v14 = *(v25 + 792);
    }

    *(v25 + 800) = v14;
    v10 = *(v25 + 728);
    v11 = *(v25 + 688);
    v12 = *(v25 + 640);
    v9 = *(v25 + 696);
    MEMORY[0x277D82BD8](v23);
    (*(v9 + 8))(v10, v11);
    swift_beginAccess();
    v13 = *(v12 + 112);
    *(v25 + 808) = v13;

    swift_endAccess();
    *(v25 + 816) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM wifi", 0x10uLL, 1);
    v5 = v13;
    v6 = DataWriter.createTables();
  }

  return MEMORY[0x2822009F8](v6, v5);
}

{
  v1 = *(v0 + 816);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 832) = v2;
  if (v2)
  {
    v3 = *(v7 + 640);
    v4 = DataWriter.createTables();
  }

  else
  {
    v6 = *(v7 + 640);

    v3 = v6;
    v4 = DataWriter.createTables();
  }

  return MEMORY[0x2822009F8](v4, v3);
}

{
  countAndFlagsBits = v0[40]._countAndFlagsBits;
  v0[29]._countAndFlagsBits = v0;
  swift_beginAccess();
  v3 = *(countAndFlagsBits + 112);
  v0[52]._object = v3;

  swift_endAccess();
  v0[53] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);

  return MEMORY[0x2822009F8](DataWriter.createTables(), v3);
}

{
  v1 = *(v0 + 848);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 864) = v2;
  if (v2)
  {
    v3 = *(v7 + 640);
    v4 = DataWriter.createTables();
  }

  else
  {
    v6 = *(v7 + 640);

    v3 = v6;
    v4 = DataWriter.createTables();
  }

  return MEMORY[0x2822009F8](v4, v3);
}

{
  countAndFlagsBits = v0[40]._countAndFlagsBits;
  v0[29]._countAndFlagsBits = v0;
  swift_beginAccess();
  v3 = *(countAndFlagsBits + 112);
  v0[54]._object = v3;

  swift_endAccess();
  v0[55] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pragma wal_checkpoint(truncate)", 0x1FuLL, 1);

  return MEMORY[0x2822009F8](DataWriter.createTables(), v3);
}

{
  v1 = *(v0 + 880);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 896) = v2;
  if (v2)
  {
    v3 = *(v7 + 640);
    v4 = DataWriter.createTables();
  }

  else
  {
    v6 = *(v7 + 640);

    v3 = v6;
    v4 = DataWriter.createTables();
  }

  return MEMORY[0x2822009F8](v4, v3);
}

{
  *(v0 + 464) = v0;
  *(v0 + 904) = *(v0 + 896);
  v2 = *(v0 + 640);
  swift_beginAccess();
  v3 = *(v2 + 112);
  *(v0 + 912) = v3;

  swift_endAccess();
  *(v0 + 920) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT COUNT(*) from cell", 0x19uLL, 1);

  return MEMORY[0x2822009F8](DataWriter.createTables(), v3);
}

{
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[113];
  v0[58] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #2 in DataWriter.createTables());
  v0[117] = v3;
  if (v3)
  {
    v4 = *(v8 + 640);
    v5 = DataWriter.createTables();
  }

  else
  {
    v7 = *(v8 + 640);

    v4 = v7;
    v5 = DataWriter.createTables();
  }

  return MEMORY[0x2822009F8](v5, v4);
}

{
  v0[58] = v0;
  v26 = v0[64];
  v0[66] = v26;
  if (v26 < *MAX_ALLOWED_RAW_DATASIZE.unsafeMutableAddressor())
  {
    *(v25 + 1048) = *(v25 + 936);
    v7 = *(v25 + 640);
    swift_beginAccess();
    v8 = *(v7 + 112);
    *(v25 + 1056) = v8;

    swift_endAccess();
    *(v25 + 1064) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT version FROM admin", 0x19uLL, 1);
    v5 = v8;
    v6 = DataWriter.createTables();
  }

  else
  {
    v1 = *(v25 + 720);
    v21 = *(v25 + 688);
    v20 = *(v25 + 696);
    v2 = DataWriter.logger.unsafeMutableAddressor();
    (*(v20 + 16))(v1, v2, v21);
    v23 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v24 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v23, v22))
    {
      v3 = *(v25 + 936);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v17 = createStorage<A>(capacity:type:)(0, v15, v15);
      v18 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v25 + 576) = buf;
      *(v25 + 584) = v17;
      *(v25 + 592) = v18;
      serialize(_:at:)(0, (v25 + 576));
      serialize(_:at:)(0, (v25 + 576));
      *(v25 + 600) = v24;
      v19 = swift_task_alloc();
      v19[2] = v25 + 576;
      v19[3] = v25 + 584;
      v19[4] = v25 + 592;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v3)
      {
      }

      _os_log_impl(&dword_2586A4000, v23, v22, "Cell raw data too large, deleting...", buf, 2u);
      destroyStorage<A>(_:count:)(v17, 0, v15);
      destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);

      v14 = 0;
    }

    else
    {

      v14 = *(v25 + 936);
    }

    *(v25 + 944) = v14;
    v10 = *(v25 + 720);
    v11 = *(v25 + 688);
    v12 = *(v25 + 640);
    v9 = *(v25 + 696);
    MEMORY[0x277D82BD8](v23);
    (*(v9 + 8))(v10, v11);
    swift_beginAccess();
    v13 = *(v12 + 112);
    *(v25 + 952) = v13;

    swift_endAccess();
    *(v25 + 960) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM cell", 0x10uLL, 1);
    v5 = v13;
    v6 = DataWriter.createTables();
  }

  return MEMORY[0x2822009F8](v6, v5);
}

{
  v1 = *(v0 + 960);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 976) = v2;
  if (v2)
  {
    v3 = *(v7 + 640);
    v4 = DataWriter.createTables();
  }

  else
  {
    v6 = *(v7 + 640);

    v3 = v6;
    v4 = DataWriter.createTables();
  }

  return MEMORY[0x2822009F8](v4, v3);
}

{
  countAndFlagsBits = v0[40]._countAndFlagsBits;
  v0[29]._countAndFlagsBits = v0;
  swift_beginAccess();
  v3 = *(countAndFlagsBits + 112);
  v0[61]._object = v3;

  swift_endAccess();
  v0[62] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);

  return MEMORY[0x2822009F8](DataWriter.createTables(), v3);
}

{
  v1 = *(v0 + 992);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 1008) = v2;
  if (v2)
  {
    v3 = *(v7 + 640);
    v4 = DataWriter.createTables();
  }

  else
  {
    v6 = *(v7 + 640);

    v3 = v6;
    v4 = DataWriter.createTables();
  }

  return MEMORY[0x2822009F8](v4, v3);
}

{
  countAndFlagsBits = v0[40]._countAndFlagsBits;
  v0[29]._countAndFlagsBits = v0;
  swift_beginAccess();
  v3 = *(countAndFlagsBits + 112);
  v0[63]._object = v3;

  swift_endAccess();
  v0[64] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pragma wal_checkpoint(truncate)", 0x1FuLL, 1);

  return MEMORY[0x2822009F8](DataWriter.createTables(), v3);
}

{
  v1 = *(v0 + 1024);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 1040) = v2;
  if (v2)
  {
    v3 = *(v7 + 640);
    v4 = DataWriter.createTables();
  }

  else
  {
    v6 = *(v7 + 640);

    v3 = v6;
    v4 = DataWriter.createTables();
  }

  return MEMORY[0x2822009F8](v4, v3);
}

{
  *(v0 + 464) = v0;
  *(v0 + 1048) = *(v0 + 1040);
  v2 = *(v0 + 640);
  swift_beginAccess();
  v3 = *(v2 + 112);
  *(v0 + 1056) = v3;

  swift_endAccess();
  *(v0 + 1064) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT version FROM admin", 0x19uLL, 1);

  return MEMORY[0x2822009F8](DataWriter.createTables(), v3);
}

{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[131];
  v0[58] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #3 in DataWriter.createTables());
  v0[135] = v3;
  if (v3)
  {
    v4 = *(v8 + 640);
    v5 = DataWriter.createTables();
  }

  else
  {
    v7 = *(v8 + 640);

    v4 = v7;
    v5 = DataWriter.createTables();
  }

  return MEMORY[0x2822009F8](v5, v4);
}

{
  v42 = v0;
  v41[1] = *MEMORY[0x277D85DE8];
  v1 = v0[80];
  v0[58] = v0;
  v36 = v0[67];
  v0[68] = v36;
  if (v36 == *(v1 + 120))
  {

    v9 = *(v35[58] + 8);

    return v9();
  }

  else
  {
    v2 = v35[89];
    v21 = v35[86];
    v24 = v35[80];
    v20 = v35[87];
    v3 = DataWriter.logger.unsafeMutableAddressor();
    v4 = *(v20 + 16);
    v35[136] = v4;
    v35[137] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v4(v2, v3, v21);
    v22 = swift_allocObject();
    *(v22 + 16) = v36;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for implicit closure #1 in DataWriter.createTables();
    *(v23 + 24) = v22;
    v28 = swift_allocObject();
    *(v28 + 16) = _sSiIegd_SiIegr_TRTA_2;
    *(v28 + 24) = v23;
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = partial apply for implicit closure #2 in DataWriter.createTables();
    *(v25 + 24) = v24;
    v31 = swift_allocObject();
    *(v31 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v31 + 24) = v25;
    v35[138] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v32 = v5;

    *v32 = closure #1 in OSLogArguments.append(_:)partial apply;
    v32[1] = v26;

    v32[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v32[3] = v27;

    v32[4] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
    v32[5] = v28;

    v32[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v32[7] = v29;

    v32[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v32[9] = v30;

    v32[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v32[11] = v31;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v33, v34))
    {
      v6 = v35[135];
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v18 = createStorage<A>(capacity:type:)(0, v16, v16);
      v19 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v37 = buf;
      v40 = v18;
      v41[0] = v19;
      serialize(_:at:)(0, &v37);
      serialize(_:at:)(2, &v37);
      v38 = closure #1 in OSLogArguments.append(_:)partial apply;
      v39 = v26;
      closure #1 in osLogInternal(_:log:type:)(&v38, &v37, &v40, v41);
      if (v6)
      {
      }

      v38 = closure #1 in OSLogArguments.append(_:)partial apply;
      v39 = v27;
      closure #1 in osLogInternal(_:log:type:)(&v38, &v37, &v40, v41);
      v38 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
      v39 = v28;
      closure #1 in osLogInternal(_:log:type:)(&v38, &v37, &v40, v41);
      v38 = closure #1 in OSLogArguments.append(_:)partial apply;
      v39 = v29;
      closure #1 in osLogInternal(_:log:type:)(&v38, &v37, &v40, v41);
      v38 = closure #1 in OSLogArguments.append(_:)partial apply;
      v39 = v30;
      closure #1 in osLogInternal(_:log:type:)(&v38, &v37, &v40, v41);
      v38 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v39 = v31;
      closure #1 in osLogInternal(_:log:type:)(&v38, &v37, &v40, v41);
      _os_log_impl(&dword_2586A4000, v33, v34, "DB Version mis-match %ld != %ld, deleting old DB...", buf, 0x16u);
      destroyStorage<A>(_:count:)(v18, 0, v16);
      destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);

      v15 = 0;
    }

    else
    {

      v15 = v35[135];
    }

    v35[139] = v15;
    v11 = v35[89];
    v12 = v35[86];
    v13 = v35[80];
    v10 = v35[87];
    MEMORY[0x277D82BD8](v33);
    v8 = *(v10 + 8);
    v35[140] = v8;
    v35[141] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v11, v12);
    swift_beginAccess();
    v14 = *(v13 + 112);
    v35[142] = v14;

    swift_endAccess();

    return MEMORY[0x2822009F8](DataWriter.createTables(), v14);
  }
}

{
  v2 = *(v0 + 640);
  *(v0 + 464) = v0;
  SQLiteDB.close()();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v2);
}

{
  v35 = v0[85];
  v1 = v0[84];
  v32 = v0[83];
  v33 = v0[82];
  v0[58] = v0;
  v38 = [objc_opt_self() defaultManager];
  v2 = dbPath.unsafeMutableAddressor();
  v31 = *(v32 + 16);
  v31(v1, v2, v33);
  URL.deletingLastPathComponent()();
  v34 = *(v32 + 8);
  v34(v1, v33);
  URL._bridgeToObjectiveC()(v3);
  v37 = v4;
  v34(v35, v33);
  v0[69] = 0;
  v39 = [v38 removeItemAtURL:v37 error:v0 + 69];
  v36 = v0[69];
  MEMORY[0x277D82BE0](v36);
  MEMORY[0x277D82BD8](0);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  if (v39)
  {
    v5 = v30[85];
    v25 = v30[82];
    v28 = [objc_opt_self() defaultManager];
    v6 = mediaMLDataDirectory.unsafeMutableAddressor();
    v31(v5, v6, v25);
    URL._bridgeToObjectiveC()(v7);
    v27 = v8;
    v34(v5, v25);
    v30[71] = 0;
    v29 = [v28 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:v30 + 71];
    v26 = v30[71];
    MEMORY[0x277D82BE0](v26);
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    if (v29)
    {
      v9 = v30[139];
      v22 = v30[82];
      v23 = v30[81];
      v21 = v30[83];
      type metadata accessor for SQLiteDB();
      v10 = dbPath.unsafeMutableAddressor();
      v31(v23, v10, v22);
      (*(v21 + 56))(v23, 0, 1, v22);
      v24 = SQLiteDB.__allocating_init(_:)(v23);
      v30[143] = v9;
      if (!v9)
      {
        v19 = v30[80];
        swift_beginAccess();
        *(v19 + 112) = v24;

        swift_endAccess();
        swift_beginAccess();
        v20 = *(v19 + 112);
        v30[144] = v20;

        swift_endAccess();
        v11 = v20;
        v12 = DataWriter.createTables();

        return MEMORY[0x2822009F8](v12, v11);
      }

      v16 = v9;
    }

    else
    {
      v14 = _convertNSErrorToError(_:)();
      MEMORY[0x277D82BD8](v26);
      swift_willThrow();
      v16 = v14;
    }
  }

  else
  {
    v15 = _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](v36);
    swift_willThrow();
    v16 = v15;
  }

  v30[155] = v16;
  v17 = v30[80];
  MEMORY[0x259C87ED0]();
  v30[70] = v16;
  swift_beginAccess();
  v18 = *(v17 + 112);
  v30[156] = v18;

  swift_endAccess();
  v11 = v18;
  v12 = DataWriter.createTables();

  return MEMORY[0x2822009F8](v12, v11);
}

{
  v1 = *(v0 + 736);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 1160) = v2;
  if (v2)
  {
    v3 = *(v7 + 640);
    v4 = DataWriter.createTables();
  }

  else
  {
    v6 = *(v7 + 640);

    v3 = v6;
    v4 = DataWriter.createTables();
  }

  return MEMORY[0x2822009F8](v4, v3);
}

{
  v3 = *(v0 + 640);
  *(v0 + 464) = v0;
  swift_beginAccess();
  v2 = *(v3 + 112);
  *(v0 + 1168) = v2;

  swift_endAccess();
  *(v0 + 1176) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO admin (version) VALUES (?)", 0x26uLL, 1);

  return MEMORY[0x2822009F8](DataWriter.createTables(), v2);
}

{
  v1 = v0[148];
  v2 = v0[147];
  v3 = v0[145];
  v0[58] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, partial apply for closure #4 in DataWriter.createTables());
  v0[149] = v3;
  if (v3)
  {
    v4 = *(v8 + 640);
    v5 = DataWriter.createTables();
  }

  else
  {
    v7 = *(v8 + 640);

    v4 = v7;
    v5 = DataWriter.createTables();
  }

  return MEMORY[0x2822009F8](v5, v4);
}

{
  v30 = v0;
  v29[3] = *MEMORY[0x277D85DE8];
  v16 = v0[136];
  v1 = v0[88];
  v15 = v0[86];
  v17 = v0[80];
  v0[58] = v0;
  v2 = DataWriter.logger.unsafeMutableAddressor();
  v16(v1, v2, v15);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for implicit closure #3 in DataWriter.createTables();
  *(v18 + 24) = v17;
  v21 = swift_allocObject();
  *(v21 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v21 + 24) = v18;
  _allocateUninitializedArray<A>(_:)();
  v22 = v3;

  *v22 = closure #1 in OSLogArguments.append(_:)partial apply;
  v22[1] = v19;

  v22[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v22[3] = v20;

  v22[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v22[5] = v21;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v23, v24))
  {
    v4 = v14[149];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v25 = buf;
    v28 = v12;
    v29[0] = v13;
    serialize(_:at:)(0, &v25);
    serialize(_:at:)(1, &v25);
    v26 = closure #1 in OSLogArguments.append(_:)partial apply;
    v27 = v19;
    closure #1 in osLogInternal(_:log:type:)(&v26, &v25, &v28, v29);
    if (v4)
    {
    }

    v26 = closure #1 in OSLogArguments.append(_:)partial apply;
    v27 = v20;
    closure #1 in osLogInternal(_:log:type:)(&v26, &v25, &v28, v29);
    v26 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v27 = v21;
    closure #1 in osLogInternal(_:log:type:)(&v26, &v25, &v28, v29);
    _os_log_impl(&dword_2586A4000, v23, v24, "Created new DB with version=%ld", buf, 0xCu);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = v14[140];
  v7 = v14[88];
  v8 = v14[86];
  MEMORY[0x277D82BD8](v23);
  v9(v7, v8);

  v6 = *(v14[58] + 8);

  return v6();
}

{
  v2 = v0[95];
  v3 = v0[80];
  v0[58] = v0;

  MEMORY[0x259C87ED0](v2);
  v0[60] = v2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v0[150] = v4;

  swift_endAccess();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4);
}

{
  v2 = *(v0 + 640);
  *(v0 + 464) = v0;
  SQLiteDB.close()();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v2);
}

{
  v2 = *(v0 + 640);
  *(v0 + 464) = v0;
  SQLiteDB.close()();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v2);
}

{
  v0[58] = v0;

  v2 = v0[99];
  v0[151] = v2;
  v3 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[62] = v2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v0[152] = v4;

  swift_endAccess();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4);
}

{
  v0[58] = v0;

  v2 = v0[104];
  v0[151] = v2;
  v3 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[62] = v2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v0[152] = v4;

  swift_endAccess();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4);
}

{
  v0[58] = v0;

  v2 = v0[108];
  v0[151] = v2;
  v3 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[62] = v2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v0[152] = v4;

  swift_endAccess();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4);
}

{
  v0[58] = v0;

  v2 = v0[112];
  v0[151] = v2;
  v3 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[62] = v2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v0[152] = v4;

  swift_endAccess();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4);
}

{
  v2 = *(v0 + 640);
  *(v0 + 464) = v0;
  SQLiteDB.close()();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v2);
}

{
  v0[58] = v0;

  v2 = v0[117];
  v0[153] = v2;
  v3 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[65] = v2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v0[154] = v4;

  swift_endAccess();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4);
}

{
  v0[58] = v0;

  v2 = v0[122];
  v0[153] = v2;
  v3 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[65] = v2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v0[154] = v4;

  swift_endAccess();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4);
}

{
  v0[58] = v0;

  v2 = v0[126];
  v0[153] = v2;
  v3 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[65] = v2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v0[154] = v4;

  swift_endAccess();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4);
}

{
  v0[58] = v0;

  v2 = v0[130];
  v0[153] = v2;
  v3 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[65] = v2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v0[154] = v4;

  swift_endAccess();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4);
}

{
  *(v0 + 464) = v0;

  v1 = *(*(v0 + 464) + 8);

  return v1();
}

{
  v2 = *(v0 + 640);
  *(v0 + 464) = v0;
  SQLiteDB.close()();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v2);
}

{
  v0[58] = v0;

  v2 = v0[145];
  v0[155] = v2;
  v3 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[70] = v2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v0[156] = v4;

  swift_endAccess();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4);
}

{
  v0[58] = v0;

  v2 = v0[149];
  v0[155] = v2;
  v3 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[70] = v2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v0[156] = v4;

  swift_endAccess();

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4);
}

uint64_t DataWriter.createTables()(uint64_t a1)
{
  v4 = *(v1 + 760);
  *(v1 + 464) = v1;
  swift_willThrow();
  MEMORY[0x259C87EC0](v4);

  v2 = *(*(v1 + 464) + 8);

  return v2();
}

{
  v4 = *(v1 + 1208);
  *(v1 + 464) = v1;
  swift_willThrow();
  MEMORY[0x259C87EC0](v4);

  v2 = *(*(v1 + 464) + 8);

  return v2();
}

{
  v4 = *(v1 + 1224);
  *(v1 + 464) = v1;
  swift_willThrow();
  MEMORY[0x259C87EC0](v4);

  v2 = *(*(v1 + 464) + 8);

  return v2();
}

{
  v4 = *(v1 + 1240);
  *(v1 + 464) = v1;
  swift_willThrow();
  MEMORY[0x259C87EC0](v4);

  v2 = *(*(v1 + 464) + 8);

  return v2();
}

uint64_t DataWriter.writeRawDataForWiFi(data:)(void *__src)
{
  v2[56] = v1;
  v2[55] = __src;
  v2[53] = v2;
  v2[54] = 0;
  memcpy(v2 + 18, __src, 0x80uLL);
  memcpy(v2 + 2, v2 + 18, 0x80uLL);
  v2[54] = v4;

  return (MEMORY[0x2822009F8])(DataWriter.writeRawDataForWiFi(data:));
}

uint64_t DataWriter.writeRawDataForWiFi(data:)()
{
  countAndFlagsBits = v0[28]._countAndFlagsBits;
  object = v0[27]._object;
  v0[26]._object = v0;
  swift_beginAccess();
  v5 = *(countAndFlagsBits + 112);
  v0[28]._object = v5;

  swift_endAccess();
  v0[29] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO wifi (session_id, timestamp, app_name, ssid, hour, dow, rssi, cca, noise, snr, tx_rate, rx_rate, throughput_true) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 0xACuLL, 1);
  outlined init with copy of WiFiDataPointForWriting(object, &v0[17]._countAndFlagsBits);
  v1 = swift_task_alloc();
  v0[30]._countAndFlagsBits = v1;
  *(v1 + 16) = object;

  return MEMORY[0x2822009F8](DataWriter.writeRawDataForWiFi(data:), v5);
}

{
  v1 = v0[59];
  v2 = v0[58];
  v0[53] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, partial apply for closure #1 in DataWriter.writeRawDataForWiFi(data:));
  v0[61] = 0;
  v5 = *(v6 + 448);
  v4 = *(v6 + 440);

  outlined destroy of WiFiDataPointForWriting(v4);

  return MEMORY[0x2822009F8](DataWriter.writeRawDataForWiFi(data:), v5);
}

{
  *(v0 + 424) = v0;
  return (*(*(v0 + 424) + 8))();
}

{
  v3 = *(v0 + 440);
  *(v0 + 424) = v0;

  outlined destroy of WiFiDataPointForWriting(v3);

  v1 = *(*(v0 + 424) + 8);

  return v1();
}

uint64_t closure #1 in DataWriter.writeRawDataForWiFi(data:)(uint64_t a1, __int128 *a2)
{
  v14[3] = a1;
  v14[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MediaML11SQLBindable_pMd, &_s7MediaML11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v10 = v3;
  v27 = *a2;
  outlined init with copy of String(&v27, v14);
  v7 = MEMORY[0x277D837D0];
  *(v10 + 24) = MEMORY[0x277D837D0];
  *(v10 + 32) = &protocol witness table for String;
  *v10 = v27;
  v26 = *(a2 + 2);
  v9 = MEMORY[0x277D839F8];
  *(v10 + 64) = MEMORY[0x277D839F8];
  *(v10 + 72) = &protocol witness table for Double;
  *(v10 + 40) = v26;
  v25 = *(a2 + 24);
  outlined init with copy of String(&v25, &v13);
  *(v10 + 104) = v7;
  *(v10 + 112) = &protocol witness table for String;
  *(v10 + 80) = v25;
  v24 = *(a2 + 40);
  outlined init with copy of String(&v24, &v12);
  *(v10 + 144) = v7;
  *(v10 + 152) = &protocol witness table for String;
  *(v10 + 120) = v24;
  v23 = *(a2 + 7);
  v4 = MEMORY[0x277D83B88];
  *(v10 + 184) = MEMORY[0x277D83B88];
  *(v10 + 192) = &protocol witness table for Int;
  *(v10 + 160) = v23;
  v22 = *(a2 + 8);
  *(v10 + 224) = v4;
  *(v10 + 232) = &protocol witness table for Int;
  *(v10 + 200) = v22;
  v21 = *(a2 + 9);
  *(v10 + 264) = v4;
  *(v10 + 272) = &protocol witness table for Int;
  *(v10 + 240) = v21;
  v20 = *(a2 + 10);
  *(v10 + 304) = v4;
  *(v10 + 312) = &protocol witness table for Int;
  *(v10 + 280) = v20;
  v19 = *(a2 + 12);
  *(v10 + 344) = v4;
  *(v10 + 352) = &protocol witness table for Int;
  *(v10 + 320) = v19;
  v18 = *(a2 + 11);
  *(v10 + 384) = v4;
  *(v10 + 392) = &protocol witness table for Int;
  *(v10 + 360) = v18;
  v17 = *(a2 + 13);
  *(v10 + 424) = v9;
  *(v10 + 432) = &protocol witness table for Double;
  *(v10 + 400) = v17;
  v16 = *(a2 + 14);
  *(v10 + 464) = v9;
  *(v10 + 472) = &protocol witness table for Double;
  *(v10 + 440) = v16;
  v15 = *(a2 + 15);
  *(v10 + 504) = v9;
  *(v10 + 512) = &protocol witness table for Double;
  *(v10 + 480) = v15;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v11)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t DataWriter.writeRawDataForCell(data:)(void *__src)
{
  v2[56] = v1;
  v2[55] = __src;
  v2[53] = v2;
  v2[54] = 0;
  memcpy(v2 + 18, __src, 0x80uLL);
  memcpy(v2 + 2, v2 + 18, 0x80uLL);
  v2[54] = v4;

  return (MEMORY[0x2822009F8])(DataWriter.writeRawDataForCell(data:));
}

uint64_t DataWriter.writeRawDataForCell(data:)()
{
  countAndFlagsBits = v0[28]._countAndFlagsBits;
  object = v0[27]._object;
  v0[26]._object = v0;
  swift_beginAccess();
  v5 = *(countAndFlagsBits + 112);
  v0[28]._object = v5;

  swift_endAccess();
  v0[29] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO cell (session_id, timestamp, app_name, carrier, hour, dow, rssi, rsrp, rscp, rsrq, snr, bars, throughput_true) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 0xA9uLL, 1);
  outlined init with copy of CellDataPointForWriting(object, &v0[17]._countAndFlagsBits);
  v1 = swift_task_alloc();
  v0[30]._countAndFlagsBits = v1;
  *(v1 + 16) = object;

  return MEMORY[0x2822009F8](DataWriter.writeRawDataForCell(data:), v5);
}

{
  v1 = v0[59];
  v2 = v0[58];
  v0[53] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, partial apply for closure #1 in DataWriter.writeRawDataForCell(data:));
  v0[61] = 0;
  v5 = *(v6 + 448);
  v4 = *(v6 + 440);

  outlined destroy of CellDataPointForWriting(v4);

  return MEMORY[0x2822009F8](DataWriter.writeRawDataForCell(data:), v5);
}

{
  *(v0 + 424) = v0;
  return (*(*(v0 + 424) + 8))();
}

{
  v3 = *(v0 + 440);
  *(v0 + 424) = v0;

  outlined destroy of CellDataPointForWriting(v3);

  v1 = *(*(v0 + 424) + 8);

  return v1();
}

uint64_t closure #1 in DataWriter.writeRawDataForCell(data:)(uint64_t a1, __int128 *a2)
{
  v14[3] = a1;
  v14[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MediaML11SQLBindable_pMd, &_s7MediaML11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v10 = v3;
  v27 = *a2;
  outlined init with copy of String(&v27, v14);
  v7 = MEMORY[0x277D837D0];
  *(v10 + 24) = MEMORY[0x277D837D0];
  *(v10 + 32) = &protocol witness table for String;
  *v10 = v27;
  v26 = *(a2 + 2);
  v9 = MEMORY[0x277D839F8];
  *(v10 + 64) = MEMORY[0x277D839F8];
  *(v10 + 72) = &protocol witness table for Double;
  *(v10 + 40) = v26;
  v25 = *(a2 + 24);
  outlined init with copy of String(&v25, &v13);
  *(v10 + 104) = v7;
  *(v10 + 112) = &protocol witness table for String;
  *(v10 + 80) = v25;
  v24 = *(a2 + 40);
  outlined init with copy of String(&v24, &v12);
  *(v10 + 144) = v7;
  *(v10 + 152) = &protocol witness table for String;
  *(v10 + 120) = v24;
  v23 = *(a2 + 7);
  v4 = MEMORY[0x277D83B88];
  *(v10 + 184) = MEMORY[0x277D83B88];
  *(v10 + 192) = &protocol witness table for Int;
  *(v10 + 160) = v23;
  v22 = *(a2 + 8);
  *(v10 + 224) = v4;
  *(v10 + 232) = &protocol witness table for Int;
  *(v10 + 200) = v22;
  v21 = *(a2 + 9);
  *(v10 + 264) = v4;
  *(v10 + 272) = &protocol witness table for Int;
  *(v10 + 240) = v21;
  v20 = *(a2 + 10);
  *(v10 + 304) = v4;
  *(v10 + 312) = &protocol witness table for Int;
  *(v10 + 280) = v20;
  v19 = *(a2 + 11);
  *(v10 + 344) = v4;
  *(v10 + 352) = &protocol witness table for Int;
  *(v10 + 320) = v19;
  v18 = *(a2 + 12);
  *(v10 + 384) = v4;
  *(v10 + 392) = &protocol witness table for Int;
  *(v10 + 360) = v18;
  v17 = *(a2 + 13);
  *(v10 + 424) = v9;
  *(v10 + 432) = &protocol witness table for Double;
  *(v10 + 400) = v17;
  v16 = *(a2 + 14);
  *(v10 + 464) = v4;
  *(v10 + 472) = &protocol witness table for Int;
  *(v10 + 440) = v16;
  v15 = *(a2 + 15);
  *(v10 + 504) = v9;
  *(v10 + 512) = &protocol witness table for Double;
  *(v10 + 480) = v15;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v11)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t DataWriter.readModelStatsFromDB()()
{
  v1[9] = v0;
  v1[5] = v1;
  v1[6] = 0;
  v1[8] = 0;
  v1[6] = v0;
  return MEMORY[0x2822009F8](DataWriter.readModelStatsFromDB(), v0);
}

{
  v2 = *(v0 + 72);
  *(v0 + 40) = v0;
  swift_beginAccess();
  v3 = *(v2 + 112);
  *(v0 + 80) = v3;

  swift_endAccess();
  *(v0 + 88) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT interfaceType, trainingRowCount, validationRowCount, carrierCount, ssidCount, appNameCount, sessionIDCount, trainingMAPE, validationMAPE, trainingDate FROM modelStats LIMIT 2", 0xB5uLL, 1);

  return MEMORY[0x2822009F8](DataWriter.readModelStatsFromDB(), v3);
}

{
  v4 = v0[12];
  v5 = v0[11];
  v0[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
  SQLiteDB.withStatement<A>(sql:handler:)(v5, v4, closure #1 in DataWriter.readModelStatsFromDB());
  v0[13] = 0;
  v2 = *(v3 + 72);

  return MEMORY[0x2822009F8](DataWriter.readModelStatsFromDB(), v2);
}

{
  *(v0 + 40) = v0;
  return (*(*(v0 + 40) + 8))(*(v0 + 56));
}

{
  v1 = v0[13];
  v0[5] = v0;

  MEMORY[0x259C87ED0](v1);
  v0[8] = v1;
  swift_willThrow();
  MEMORY[0x259C87EC0](v1);
  v2 = *(*(v4 + 40) + 8);

  return v2();
}

double closure #1 in DataWriter.readModelStatsFromDB()@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9[0] = 0;
  v9[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  _allocateUninitializedArray<A>(_:)();
  v9[0] = Dictionary.init(dictionaryLiteral:)();
  v8 = v9;
  (*(*a1 + 144))(partial apply for closure #1 in closure #1 in DataWriter.readModelStatsFromDB(), v7);
  if (!v6)
  {
    v4 = v9[0];

    *a2 = v4;
  }

  return outlined destroy of [String : Any](v9);
}

uint64_t closure #1 in closure #1 in DataWriter.readModelStatsFromDB()(uint64_t a1, uint64_t a2)
{
  SQLiteDB.Row.get<A>(at:)(0, a1, MEMORY[0x277D837D0], &protocol witness table for String);
  if (v31)
  {
    v16 = MEMORY[0x277D83B88];
    SQLiteDB.Row.get<A>(at:)(1, a1, MEMORY[0x277D83B88], &protocol witness table for Int);
    SQLiteDB.Row.get<A>(at:)(2, a1, v16, &protocol witness table for Int);
    SQLiteDB.Row.get<A>(at:)(3, a1, v16, &protocol witness table for Int);
    SQLiteDB.Row.get<A>(at:)(4, a1, v16, &protocol witness table for Int);
    SQLiteDB.Row.get<A>(at:)(5, a1, v16, &protocol witness table for Int);
    SQLiteDB.Row.get<A>(at:)(6, a1, v16, &protocol witness table for Int);
    v17 = MEMORY[0x277D839F8];
    SQLiteDB.Row.get<A>(at:)(7, a1, MEMORY[0x277D839F8], &protocol witness table for Double);
    SQLiteDB.Row.get<A>(at:)(8, a1, v17, &protocol witness table for Double);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    _allocateUninitializedArray<A>(_:)();
    v18 = v6;
    v7 = kMediaML_trainingRowCount.unsafeMutableAddressor();
    outlined init with copy of String(v7, v18);
    v18[5] = v16;
    v18[2] = v30;
    v8 = kMediaML_validationRowCount.unsafeMutableAddressor();
    outlined init with copy of String(v8, v18 + 6);
    v18[11] = v16;
    v18[8] = v29;
    v9 = kMediaML_carrier.unsafeMutableAddressor();
    outlined init with copy of String(v9, v18 + 12);
    v18[17] = v16;
    v18[14] = v28;
    v10 = kMediaML_ssid.unsafeMutableAddressor();
    outlined init with copy of String(v10, v18 + 18);
    v18[23] = v16;
    v18[20] = v27;
    v11 = kMediaML_appNameCount.unsafeMutableAddressor();
    outlined init with copy of String(v11, v18 + 24);
    v18[29] = v16;
    v18[26] = v26;
    v12 = kMediaML_sessionIDCount.unsafeMutableAddressor();
    outlined init with copy of String(v12, v18 + 30);
    v18[35] = v16;
    v18[32] = v25;
    v13 = kMediaML_trainingMAPE.unsafeMutableAddressor();
    outlined init with copy of String(v13, v18 + 36);
    v18[41] = v17;
    v18[38] = v24;
    v14 = kMediaML_validationMAPE.unsafeMutableAddressor();
    outlined init with copy of String(v14, v18 + 42);
    v18[47] = v17;
    v18[44] = v23;
    _finalizeUninitializedArray<A>(_:)();
    Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    Dictionary.subscript.setter();
  }

  else
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("interfaceType is missing", 0x18uLL, 1);
    SQLError.init(code:desc:)();
    v21 = v2;
    v19 = v3;
    v20 = v4;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = v21;
    *(v5 + 8) = v19;
    *(v5 + 16) = v20;
    return swift_willThrow();
  }
}

uint64_t DataWriter.readWiFiStdDev(appName:ssid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[24] = v4;
  v5[23] = a4;
  v5[22] = a3;
  v5[21] = a2;
  v5[20] = a1;
  v5[15] = v5;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v5[8] = 0;
  v5[16] = 0;
  v5[18] = 0;
  v5[19] = 0;
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = a3;
  v5[8] = a4;
  v5[16] = v4;
  return MEMORY[0x2822009F8](DataWriter.readWiFiStdDev(appName:ssid:), v4);
}

uint64_t DataWriter.readWiFiStdDev(appName:ssid:)()
{
  v7 = v0[24];
  v11 = v0[23];
  v10 = v0[22];
  v9 = v0[21];
  v8 = v0[20];
  v0[15] = v0;
  swift_beginAccess();
  v14 = *(v7 + 112);
  v0[25] = v14;

  swift_endAccess();
  v0[9] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v0[10] = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\tSELECT AVG(throughput_stddev) FROM wifiStdDev WHERE app_name LIKE '", 0x44uLL, 1)._countAndFlagsBits;
  MEMORY[0x259C879F0](countAndFlagsBits);

  v0[11] = v8;
  v0[12] = v9;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("' AND ssid LIKE '", 0x11uLL, 1)._countAndFlagsBits;
  MEMORY[0x259C879F0](v3);

  v0[13] = v10;
  v0[14] = v11;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("'", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x259C879F0](v4);

  v13 = v0[9];
  v12 = v0[10];

  outlined destroy of DefaultStringInterpolation((v0 + 9));
  v0[26] = MEMORY[0x259C87440](v13, v12);
  v0[27] = v5;

  return MEMORY[0x2822009F8](DataWriter.readWiFiStdDev(appName:ssid:), v14);
}

{
  v1 = v0[27];
  v2 = v0[26];
  v0[15] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #1 in DataWriter.readWiFiStdDev(appName:ssid:));
  v0[28] = 0;
  v4 = *(v5 + 192);

  return MEMORY[0x2822009F8](DataWriter.readWiFiStdDev(appName:ssid:), v4);
}

{
  v0[15] = v0;
  v0[19] = v0[17];
  return (*(v0[15] + 8))();
}

{
  v1 = v0[28];
  v0[15] = v0;

  MEMORY[0x259C87ED0](v1);
  v0[18] = v1;
  swift_willThrow();
  MEMORY[0x259C87EC0](v1);
  v2 = *(*(v5 + 120) + 8);
  v3.n128_u64[0] = v6;

  return v2(v3);
}

uint64_t closure #1 in DataWriter.readWiFiStdDev(appName:ssid:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[1] = a1;
  (*(*a1 + 160))(v7, MEMORY[0x277D839F8], &protocol witness table for Double);
  if (v2)
  {
    MEMORY[0x259C87EC0](v2);
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = v7[0];
    v5 = 0;
  }

  result = 0;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t DataWriter.readCellStdDev(appName:carrier:bars:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = v5;
  v6[26] = a5;
  v6[25] = a4;
  v6[24] = a3;
  v6[23] = a2;
  v6[22] = a1;
  v6[15] = v6;
  v6[5] = 0;
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[16] = 0;
  v6[17] = 0;
  v6[20] = 0;
  v6[21] = 0;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  v6[8] = a4;
  v6[16] = a5;
  v6[17] = v5;
  return MEMORY[0x2822009F8](DataWriter.readCellStdDev(appName:carrier:bars:), v5);
}

uint64_t DataWriter.readCellStdDev(appName:carrier:bars:)()
{
  v8 = v0[27];
  v13 = v0[26];
  v12 = v0[25];
  v11 = v0[24];
  v10 = v0[23];
  v9 = v0[22];
  v0[15] = v0;
  swift_beginAccess();
  v16 = *(v8 + 112);
  v0[28] = v16;

  swift_endAccess();
  v0[9] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v0[10] = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT AVG(throughput_stddev) FROM cellStdDev WHERE app_name LIKE '", 0x43uLL, 1)._countAndFlagsBits;
  MEMORY[0x259C879F0](countAndFlagsBits);

  v0[11] = v9;
  v0[12] = v10;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("' AND carrier LIKE '", 0x14uLL, 1)._countAndFlagsBits;
  MEMORY[0x259C879F0](v3);

  v0[13] = v11;
  v0[14] = v12;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("' AND bars LIKE ", 0x10uLL, 1)._countAndFlagsBits;
  MEMORY[0x259C879F0](v4);

  v0[19] = v13;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x259C879F0](v5);

  v15 = v0[9];
  v14 = v0[10];

  outlined destroy of DefaultStringInterpolation((v0 + 9));
  v0[29] = MEMORY[0x259C87440](v15, v14);
  v0[30] = v6;

  return MEMORY[0x2822009F8](DataWriter.readCellStdDev(appName:carrier:bars:), v16);
}

{
  v1 = v0[30];
  v2 = v0[29];
  v0[15] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #1 in DataWriter.readCellStdDev(appName:carrier:bars:));
  v0[31] = 0;
  v4 = *(v5 + 216);

  return MEMORY[0x2822009F8](DataWriter.readCellStdDev(appName:carrier:bars:), v4);
}

{
  v0[15] = v0;
  v0[21] = v0[18];
  return (*(v0[15] + 8))();
}

{
  v1 = v0[31];
  v0[15] = v0;

  MEMORY[0x259C87ED0](v1);
  v0[20] = v1;
  swift_willThrow();
  MEMORY[0x259C87EC0](v1);
  v2 = *(*(v5 + 120) + 8);
  v3.n128_u64[0] = v6;

  return v2(v3);
}

uint64_t closure #1 in DataWriter.readCellStdDev(appName:carrier:bars:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[1] = a1;
  (*(*a1 + 160))(v7, MEMORY[0x277D839F8], &protocol witness table for Double);
  if (v2)
  {
    MEMORY[0x259C87EC0](v2);
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = v7[0];
    v5 = 0;
  }

  result = 0;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t closure #1 in DataWriter.createTables()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[1] = a1;
  (*(*a1 + 160))(v7, MEMORY[0x277D83B88], &protocol witness table for Int);
  if (v2)
  {
    MEMORY[0x259C87EC0](v2);
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = v7[0];
    v5 = 0;
  }

  result = 0;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t closure #2 in DataWriter.createTables()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[1] = a1;
  (*(*a1 + 160))(v7, MEMORY[0x277D83B88], &protocol witness table for Int);
  if (v2)
  {
    MEMORY[0x259C87EC0](v2);
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = v7[0];
    v5 = 0;
  }

  result = 0;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t closure #3 in DataWriter.createTables()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[1] = a1;
  (*(*a1 + 160))(v7, MEMORY[0x277D83B88], &protocol witness table for Int);
  if (v2)
  {
    MEMORY[0x259C87EC0](v2);
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = v7[0];
    v5 = 0;
  }

  result = 0;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t closure #4 in DataWriter.createTables()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MediaML11SQLBindable_pMd, &_s7MediaML11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = *(a2 + 120);
  v4[3] = MEMORY[0x277D83B88];
  v4[4] = &protocol witness table for Int;
  *v4 = v3;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v8)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t DataWriter.deinit()
{

  swift_defaultActor_destroy();
  return v1;
}

uint64_t MediaML.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static MediaML.logger);
}

uint64_t static MediaML.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MediaML.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t MediaML.dataWriter.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 112);

  swift_endAccess();
  return v2;
}

uint64_t MediaML.dataWriter.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 112) = a1;

  swift_endAccess();
}

uint64_t MediaML.wifiModel.getter()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t MediaML.cellModel.getter()
{
  v2 = *(v0 + 128);

  return v2;
}

uint64_t MediaML.ensureDataWriter()()
{
  v1[16] = v0;
  v1[8] = v1;
  v1[9] = 0;
  v1[15] = 0;
  v2 = type metadata accessor for Logger();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[9] = v4;

  return (MEMORY[0x2822009F8])(MediaML.ensureDataWriter());
}

{
  v20 = v0[16];
  v0[8] = v0;
  swift_beginAccess();
  v21 = *(v20 + 112);

  swift_endAccess();
  v0[10] = v21;
  if (v0[10])
  {
    outlined destroy of DataWriter?((v19 + 80));
    v1 = *(v19 + 160);
    v15 = *(v19 + 136);
    v14 = *(v19 + 144);
    v2 = MediaML.logger.unsafeMutableAddressor();
    (*(v14 + 16))(v1, v2, v15);
    v17 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v18 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v17, v16))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v11 = createStorage<A>(capacity:type:)(0, v9, v9);
      v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v19 + 88) = buf;
      *(v19 + 96) = v11;
      *(v19 + 104) = v12;
      serialize(_:at:)(0, (v19 + 88));
      serialize(_:at:)(0, (v19 + 88));
      *(v19 + 112) = v18;
      v13 = swift_task_alloc();
      v13[2] = v19 + 88;
      v13[3] = v19 + 96;
      v13[4] = v19 + 104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, v17, v16, "DataWriter already initialized", buf, 2u);
      destroyStorage<A>(_:count:)(v11, 0, v9);
      destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
    }

    v7 = *(v19 + 160);
    v8 = *(v19 + 136);
    v6 = *(v19 + 144);
    MEMORY[0x277D82BD8](v17);
    (*(v6 + 8))(v7, v8);

    v5 = *(*(v19 + 64) + 8);

    return v5();
  }

  else
  {
    outlined destroy of DataWriter?((v19 + 80));
    type metadata accessor for DataWriter();
    v3 = swift_task_alloc();
    *(v19 + 168) = v3;
    *v3 = *(v19 + 64);
    v3[1] = MediaML.ensureDataWriter();

    return DataWriter.__allocating_init()();
  }
}

{
  v4 = v0[22];
  v3 = v0[16];
  v0[8] = v0;
  swift_beginAccess();
  *(v3 + 112) = v4;

  swift_endAccess();

  v1 = *(v0[8] + 8);

  return v1();
}

{
  v32 = v0;
  v17 = v0[23];
  v1 = v0[19];
  v15 = v0[18];
  v16 = v0[17];
  v0[8] = v0;
  MEMORY[0x259C87ED0]();
  v0[15] = v17;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  MEMORY[0x259C87ED0](v17);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = 64;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for implicit closure #1 in MediaML.ensureDataWriter();
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v20 + 24) = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v23 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v24 = v3;

  *v24 = closure #1 in OSLogArguments.append(_:)partial apply;
  v24[1] = v21;

  v24[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v24[3] = v22;

  v24[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v24[5] = v23;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v25, v26))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(1, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v27 = buf;
    v28 = v12;
    v29 = v13;
    serialize(_:at:)(2, &v27);
    serialize(_:at:)(1, &v27);
    v30 = closure #1 in OSLogArguments.append(_:)partial apply;
    v31 = v21;
    closure #1 in osLogInternal(_:log:type:)(&v30, &v27, &v28, &v29);
    v30 = closure #1 in OSLogArguments.append(_:)partial apply;
    v31 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v30, &v27, &v28, &v29);
    v30 = closure #1 in OSLogArguments.append(_:)partial apply;
    v31 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v30, &v27, &v28, &v29);
    _os_log_impl(&dword_2586A4000, v25, v26, "Failed to create DataWriter with error %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v12, 1, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = v14[23];
  v7 = v14[19];
  v8 = v14[17];
  v6 = v14[18];
  MEMORY[0x277D82BD8](v25);
  (*(v6 + 8))(v7, v8);
  MEMORY[0x259C87EC0](v9);
  MEMORY[0x259C87EC0](v9);

  v4 = *(v14[8] + 8);

  return v4();
}

uint64_t MediaML.ensureDataWriter()(uint64_t a1)
{
  v6 = *v2;
  v6[8] = *v2;
  v6[22] = a1;
  v6[23] = v1;

  if (v1)
  {
    v3 = v6[16];
    v4 = MediaML.ensureDataWriter();
  }

  else
  {
    v3 = v6[16];
    v4 = MediaML.ensureDataWriter();
  }

  return MEMORY[0x2822009F8](v4, v3);
}

uint64_t MediaML.writeWifiData(data:)(uint64_t a1)
{
  v2[137] = v1;
  v2[136] = a1;
  v2[110] = v2;
  v2[111] = 0;
  v2[112] = 0;
  v2[115] = 0;
  v2[74] = 0;
  v2[75] = 0;
  v2[116] = 0;
  v2[80] = 0;
  v2[81] = 0;
  v2[86] = 0;
  v2[87] = 0;
  v2[117] = 0;
  v2[118] = 0;
  v2[119] = 0;
  v2[120] = 0;
  v2[121] = 0;
  v2[122] = 0;
  v2[123] = 0;
  v2[124] = 0;
  v2[100] = 0;
  v2[101] = 0;
  v2[102] = 0;
  v2[103] = 0;
  v2[125] = 0;
  v3 = type metadata accessor for Logger();
  v2[138] = v3;
  v2[139] = *(v3 - 8);
  v2[140] = swift_task_alloc();
  v2[141] = swift_task_alloc();
  v4 = type metadata accessor for Calendar.Component();
  v2[142] = v4;
  v2[143] = *(v4 - 8);
  v2[144] = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  v2[145] = v5;
  v2[146] = *(v5 - 8);
  v2[147] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[148] = v6;
  v2[149] = *(v6 - 8);
  v2[150] = swift_task_alloc();
  v2[111] = a1;
  v2[112] = v8;

  return (MEMORY[0x2822009F8])(MediaML.writeWifiData(data:));
}

uint64_t MediaML.writeWifiData(data:)()
{
  v88 = v0[137];
  v0[110] = v0;
  swift_beginAccess();
  v89 = *(v88 + 112);

  swift_endAccess();
  v0[113] = v89;
  if (v0[113])
  {
    outlined destroy of DataWriter?((v87 + 904));
    Date.init()();
    v86 = *kMediaML_throughputTrue.unsafeMutableAddressor();

    *(v87 + 544) = v86;
    MEMORY[0x259C87380]();
    outlined destroy of String(v87 + 544);
    if (!*(v87 + 200))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    outlined init with take of Any(v87 + 176, v87 + 144);
    swift_dynamicCast();
    throughputTrue = *(v87 + 912);
    *(v87 + 920) = throughputTrue;
    v85 = *kMediaML_sessionID.unsafeMutableAddressor();

    *(v87 + 560) = v85;
    MEMORY[0x259C87380]();
    outlined destroy of String(v87 + 560);
    if (*(v87 + 232))
    {
      if (swift_dynamicCast())
      {
        v82 = *(v87 + 864);
        v83 = *(v87 + 872);
      }

      else
      {
        v82 = 0;
        v83 = 0;
      }

      v80 = v82;
      v81 = v83;
    }

    else
    {
      outlined destroy of Any?((v87 + 208));
      v80 = 0;
      v81 = 0;
    }

    *(v87 + 576) = v80;
    *(v87 + 584) = v81;
    if (*(v87 + 584))
    {
      v90 = *(v87 + 576);
    }

    else
    {
      v90 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v87 + 584))
      {
        outlined destroy of String?(v87 + 576);
      }
    }

    *(v87 + 1208) = v90._object;
    *(v87 + 592) = v90;
    Date.timeIntervalSince1970.getter();
    timestamp = v3;
    *(v87 + 928) = v3;
    v79 = *kMediaML_appName.unsafeMutableAddressor();

    *(v87 + 608) = v79;
    MEMORY[0x259C87380]();
    outlined destroy of String(v87 + 608);
    if (*(v87 + 264))
    {
      v4 = swift_dynamicCast();
      if (v4)
      {
        v76 = *(v87 + 848);
        v77 = *(v87 + 856);
      }

      else
      {
        v76 = 0;
        v77 = 0;
      }

      v74 = v76;
      v75 = v77;
    }

    else
    {
      outlined destroy of Any?((v87 + 240));
      v74 = 0;
      v75 = 0;
    }

    *(v87 + 624) = v74;
    *(v87 + 632) = v75;
    if (*(v87 + 632))
    {
      v91 = *(v87 + 624);
    }

    else
    {
      v91 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v87 + 632))
      {
        outlined destroy of String?(v87 + 624);
      }
    }

    *(v87 + 1216) = v91._object;
    *(v87 + 640) = v91;
    v73 = *kMediaML_ssid.unsafeMutableAddressor();

    *(v87 + 656) = v73;
    MEMORY[0x259C87380]();
    outlined destroy of String(v87 + 656);
    if (*(v87 + 296))
    {
      v5 = swift_dynamicCast();
      if (v5)
      {
        v71 = *(v87 + 832);
        v72 = *(v87 + 840);
      }

      else
      {
        v71 = 0;
        v72 = 0;
      }

      v69 = v71;
      v70 = v72;
    }

    else
    {
      outlined destroy of Any?((v87 + 272));
      v69 = 0;
      v70 = 0;
    }

    *(v87 + 672) = v69;
    *(v87 + 680) = v70;
    if (*(v87 + 680))
    {
      v92 = *(v87 + 672);
    }

    else
    {
      v92 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v87 + 680))
      {
        outlined destroy of String?(v87 + 672);
      }
    }

    v64 = *(v87 + 1176);
    v65 = *(v87 + 1160);
    v63 = *(v87 + 1152);
    v61 = *(v87 + 1136);
    v58 = *(v87 + 1168);
    v57 = *(v87 + 1144);
    *(v87 + 1224) = v92._object;
    *(v87 + 688) = v92;
    static Calendar.current.getter();
    v60 = *(v57 + 104);
    v60(v63, *MEMORY[0x277CC9980], v61);
    hour = Calendar.component(_:from:)();
    v62 = *(v57 + 8);
    v62(v63, v61);
    v66 = *(v58 + 8);
    v66(v64, v65);
    *(v87 + 936) = hour;
    static Calendar.current.getter();
    v60(v63, *MEMORY[0x277CC99B8], v61);
    dow = Calendar.component(_:from:)();
    v62(v63, v61);
    v66(v64, v65);
    *(v87 + 944) = dow;
    v68 = *kMediaML_rssi.unsafeMutableAddressor();

    *(v87 + 704) = v68;
    MEMORY[0x259C87380]();
    outlined destroy of String(v87 + 704);
    if (*(v87 + 328))
    {
      v6 = swift_dynamicCast();
      if (v6)
      {
        v55 = *(v87 + 1080);
        v56 = 0;
      }

      else
      {
        v55 = 0;
        v56 = 1;
      }

      v53 = v55;
      v54 = v56;
    }

    else
    {
      outlined destroy of Any?((v87 + 304));
      v53 = 0;
      v54 = 1;
    }

    rssi = (v54 & 1) != 0 ? 0 : v53;
    *(v87 + 952) = rssi;
    v51 = *kMediaML_cca.unsafeMutableAddressor();

    *(v87 + 720) = v51;
    MEMORY[0x259C87380]();
    outlined destroy of String(v87 + 720);
    if (*(v87 + 360))
    {
      if (swift_dynamicCast())
      {
        v49 = *(v87 + 1072);
        v50 = 0;
      }

      else
      {
        v49 = 0;
        v50 = 1;
      }

      v47 = v49;
      v48 = v50;
    }

    else
    {
      outlined destroy of Any?((v87 + 336));
      v47 = 0;
      v48 = 1;
    }

    cca = (v48 & 1) != 0 ? 0 : v47;
    *(v87 + 960) = cca;
    v45 = *kMediaML_snr.unsafeMutableAddressor();

    *(v87 + 736) = v45;
    MEMORY[0x259C87380]();
    outlined destroy of String(v87 + 736);
    if (*(v87 + 392))
    {
      if (swift_dynamicCast())
      {
        v43 = *(v87 + 1064);
        v44 = 0;
      }

      else
      {
        v43 = 0;
        v44 = 1;
      }

      v41 = v43;
      v42 = v44;
    }

    else
    {
      outlined destroy of Any?((v87 + 368));
      v41 = 0;
      v42 = 1;
    }

    snr = (v42 & 1) != 0 ? 0 : v41;
    *(v87 + 968) = snr;
    v39 = *kMediaML_noise.unsafeMutableAddressor();

    *(v87 + 752) = v39;
    MEMORY[0x259C87380]();
    outlined destroy of String(v87 + 752);
    if (*(v87 + 424))
    {
      if (swift_dynamicCast())
      {
        v37 = *(v87 + 1056);
        v38 = 0;
      }

      else
      {
        v37 = 0;
        v38 = 1;
      }

      v35 = v37;
      v36 = v38;
    }

    else
    {
      outlined destroy of Any?((v87 + 400));
      v35 = 0;
      v36 = 1;
    }

    noise = (v36 & 1) != 0 ? 0 : v35;
    *(v87 + 976) = noise;
    v33 = *kMediaML_rxRate.unsafeMutableAddressor();

    *(v87 + 768) = v33;
    MEMORY[0x259C87380]();
    outlined destroy of String(v87 + 768);
    if (*(v87 + 456))
    {
      if (swift_dynamicCast())
      {
        v31 = *(v87 + 1048);
        v32 = 0;
      }

      else
      {
        v31 = 0.0;
        v32 = 1;
      }

      v29 = v31;
      v30 = v32;
    }

    else
    {
      outlined destroy of Any?((v87 + 432));
      v29 = 0.0;
      v30 = 1;
    }

    v28 = (v30 & 1) != 0 ? 0.0 : v29;
    *(v87 + 984) = v28;
    v27 = *kMediaML_txRate.unsafeMutableAddressor();

    *(v87 + 784) = v27;
    MEMORY[0x259C87380]();
    outlined destroy of String(v87 + 784);
    if (*(v87 + 488))
    {
      if (swift_dynamicCast())
      {
        v25 = *(v87 + 1040);
        v26 = 0;
      }

      else
      {
        v25 = 0.0;
        v26 = 1;
      }

      v23 = v25;
      v24 = v26;
    }

    else
    {
      outlined destroy of Any?((v87 + 464));
      v23 = 0.0;
      v24 = 1;
    }

    v22 = (v24 & 1) != 0 ? 0.0 : v23;
    *(v87 + 992) = v22;
    if (rssi >= *rssiBucket_low_medium_boundary.unsafeMutableAddressor())
    {
      if (rssi >= *rssiBucket_low_medium_boundary.unsafeMutableAddressor() && rssi < *rssiBucket_medium_high_boundary.unsafeMutableAddressor())
      {
        v17 = *rssiBucket_medium.unsafeMutableAddressor();

        *(v87 + 800) = v17;
        v18 = v17;
      }

      else
      {
        v16 = *rssiBucket_high.unsafeMutableAddressor();

        *(v87 + 800) = v16;
        v18 = v16;
      }

      v21 = v18;
    }

    else
    {
      v20 = *rssiBucket_low.unsafeMutableAddressor();

      *(v87 + 800) = v20;
      v21 = v20;
    }

    v14 = *(v87 + 1096);
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_", 1uLL, 1)._countAndFlagsBits;
    v11 = MEMORY[0x259C87450](v92._countAndFlagsBits, v92._object, countAndFlagsBits);
    v12 = v8;

    bucketedSSID._countAndFlagsBits = MEMORY[0x259C87450](v11, v12, v21._countAndFlagsBits, v21._object);
    bucketedSSID._object = v9;
    *(v87 + 1232) = v9;

    *(v87 + 816) = bucketedSSID;

    WiFiDataPointForWriting.init(sessionID:timestamp:appName:bucketedSSID:hour:dow:rssi:cca:snr:noise:txRate:rxRate:throughputTrue:)((v87 + 16), v90, timestamp, v91, bucketedSSID, hour, dow, rssi, cca, snr, noise, v22, v28, throughputTrue);
    swift_beginAccess();
    v15 = *(v14 + 112);
    *(v87 + 1240) = v15;

    swift_endAccess();
    if (v15)
    {
      v10 = swift_task_alloc();
      *(v87 + 1248) = v10;
      *v10 = *(v87 + 880);
      v10[1] = MediaML.writeWifiData(data:);

      return DataWriter.writeRawDataForWiFi(data:)((v87 + 16));
    }

    else
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  else
  {
    outlined destroy of DataWriter?((v87 + 904));

    v1 = *(*(v87 + 880) + 8);

    return v1();
  }
}

{
  v7 = *v1;
  v6 = *v1 + 16;
  *(v7 + 880) = *v1;
  *(v7 + 1256) = v0;

  if (v0)
  {
    v2 = *(v6 + 1080);
    v3 = MediaML.writeWifiData(data:);
  }

  else
  {
    v5 = *(v6 + 1080);

    v2 = v5;
    v3 = MediaML.writeWifiData(data:);
  }

  return MEMORY[0x2822009F8](v3, v2);
}

{
  v1 = v0[141];
  v18 = v0[139];
  v19 = v0[138];
  v0[110] = v0;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v18 + 16))(v1, v2, v19);
  v21 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v21, v20))
  {
    v3 = *(v17 + 1256);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(0, v12, v12);
    v15 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v17 + 1008) = buf;
    *(v17 + 1016) = v14;
    *(v17 + 1024) = v15;
    serialize(_:at:)(0, (v17 + 1008));
    serialize(_:at:)(0, (v17 + 1008));
    *(v17 + 1032) = v22;
    v16 = swift_task_alloc();
    v16[2] = v17 + 1008;
    v16[3] = v17 + 1016;
    v16[4] = v17 + 1024;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&dword_2586A4000, v21, v20, "WiFi Data write to disk finished", buf, 2u);
    destroyStorage<A>(_:count:)(v14, 0, v12);
    destroyStorage<A>(_:count:)(v15, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v7 = *(v17 + 1128);
  v8 = *(v17 + 1104);
  v6 = *(v17 + 1112);
  MEMORY[0x277D82BD8](v21);
  (*(v6 + 8))(v7, v8);
  v10 = *(v17 + 1200);
  v11 = *(v17 + 1184);
  v9 = *(v17 + 1192);
  outlined destroy of WiFiDataPointForWriting((v17 + 16));

  outlined destroy of String(v17 + 800);

  (*(v9 + 8))(v10, v11);

  v5 = *(*(v17 + 880) + 8);

  return v5();
}

{
  v35 = v0;
  v20 = v0[157];
  v1 = v0[140];
  v18 = v0[139];
  v19 = v0[138];
  v0[110] = v0;

  MEMORY[0x259C87ED0](v20);
  v0[125] = v20;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v18 + 16))(v1, v2, v19);
  MEMORY[0x259C87ED0](v20);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = 64;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #11 in MediaML.writeWifiData(data:);
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v26 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v27 = v3;

  *v27 = closure #1 in OSLogArguments.append(_:)partial apply;
  v27[1] = v24;

  v27[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v27[3] = v25;

  v27[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v27[5] = v26;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v28, v29))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(1, v13, v13);
    v16 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v30 = buf;
    v31 = v15;
    v32 = v16;
    serialize(_:at:)(2, &v30);
    serialize(_:at:)(1, &v30);
    v33 = closure #1 in OSLogArguments.append(_:)partial apply;
    v34 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = closure #1 in OSLogArguments.append(_:)partial apply;
    v34 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = closure #1 in OSLogArguments.append(_:)partial apply;
    v34 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_2586A4000, v28, v29, "Failed to write wifi data with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v15, 1, v13);
    destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = v17[157];
  v7 = v17[140];
  v8 = v17[138];
  v6 = v17[139];
  MEMORY[0x277D82BD8](v28);
  (*(v6 + 8))(v7, v8);
  MEMORY[0x259C87EC0](v9);
  MEMORY[0x259C87EC0](v9);
  v11 = v17[150];
  v12 = v17[148];
  v10 = v17[149];
  outlined destroy of WiFiDataPointForWriting(v17 + 2);

  outlined destroy of String((v17 + 100));

  (*(v10 + 8))(v11, v12);

  v4 = *(v17[110] + 8);

  return v4();
}

uint64_t MediaML.writeCellData(data:)(uint64_t a1)
{
  *(v2 + 1112) = v1;
  *(v2 + 1104) = a1;
  *(v2 + 944) = v2;
  *(v2 + 952) = 0;
  *(v2 + 960) = 0;
  *(v2 + 984) = 0;
  *(v2 + 576) = 0;
  *(v2 + 584) = 0;
  *(v2 + 608) = 0;
  *(v2 + 616) = 0;
  *(v2 + 992) = 0;
  *(v2 + 640) = 0;
  *(v2 + 648) = 0;
  *(v2 + 1000) = 0;
  *(v2 + 1008) = 0;
  *(v2 + 848) = 0;
  *(v2 + 856) = 0;
  *(v2 + 864) = 0;
  *(v2 + 872) = 0;
  *(v2 + 880) = 0;
  *(v2 + 888) = 0;
  *(v2 + 896) = 0;
  *(v2 + 904) = 0;
  *(v2 + 912) = 0;
  *(v2 + 920) = 0;
  *(v2 + 928) = 0;
  *(v2 + 936) = 0;
  *(v2 + 1016) = 0;
  v3 = type metadata accessor for Logger();
  *(v2 + 1120) = v3;
  *(v2 + 1128) = *(v3 - 8);
  *(v2 + 1136) = swift_task_alloc();
  *(v2 + 1144) = swift_task_alloc();
  v4 = type metadata accessor for Calendar.Component();
  *(v2 + 1152) = v4;
  *(v2 + 1160) = *(v4 - 8);
  *(v2 + 1168) = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  *(v2 + 1176) = v5;
  *(v2 + 1184) = *(v5 - 8);
  *(v2 + 1192) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v2 + 1200) = v6;
  *(v2 + 1208) = *(v6 - 8);
  *(v2 + 1216) = swift_task_alloc();
  *(v2 + 952) = a1;
  *(v2 + 960) = v8;

  return (MEMORY[0x2822009F8])(MediaML.writeCellData(data:));
}

uint64_t MediaML.writeCellData(data:)()
{
  v73 = v0[139];
  v0[118] = v0;
  swift_beginAccess();
  v74 = *(v73 + 112);

  swift_endAccess();
  v0[121] = v74;
  if (v0[121])
  {
    outlined destroy of DataWriter?((v72 + 968));
    Date.init()();
    v71 = *kMediaML_throughputTrue.unsafeMutableAddressor();

    *(v72 + 544) = v71;
    MEMORY[0x259C87380]();
    outlined destroy of String(v72 + 544);
    if (!*(v72 + 200))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    outlined init with take of Any(v72 + 176, v72 + 144);
    swift_dynamicCast();
    throughputTrue = *(v72 + 976);
    *(v72 + 984) = throughputTrue;
    v70 = *kMediaML_sessionID.unsafeMutableAddressor();

    *(v72 + 560) = v70;
    MEMORY[0x259C87380]();
    outlined destroy of String(v72 + 560);
    if (*(v72 + 232))
    {
      if (swift_dynamicCast())
      {
        v67 = *(v72 + 832);
        v68 = *(v72 + 840);
      }

      else
      {
        v67 = 0;
        v68 = 0;
      }

      v65 = v67;
      v66 = v68;
    }

    else
    {
      outlined destroy of Any?((v72 + 208));
      v65 = 0;
      v66 = 0;
    }

    *(v72 + 1224) = v66;
    *(v72 + 576) = v65;
    *(v72 + 584) = v66;
    v64 = *kMediaML_carrier.unsafeMutableAddressor();

    *(v72 + 592) = v64;
    MEMORY[0x259C87380]();
    outlined destroy of String(v72 + 592);
    if (*(v72 + 264))
    {
      if (swift_dynamicCast())
      {
        v62 = *(v72 + 816);
        v63 = *(v72 + 824);
      }

      else
      {
        v62 = 0;
        v63 = 0;
      }

      v60 = v62;
      v61 = v63;
    }

    else
    {
      outlined destroy of Any?((v72 + 240));
      v60 = 0;
      v61 = 0;
    }

    *(v72 + 1232) = v61;
    *(v72 + 608) = v60;
    *(v72 + 616) = v61;
    Date.timeIntervalSince1970.getter();
    timestamp = v3;
    *(v72 + 992) = v3;
    v59 = *kMediaML_appName.unsafeMutableAddressor();

    *(v72 + 624) = v59;
    MEMORY[0x259C87380]();
    outlined destroy of String(v72 + 624);
    if (*(v72 + 296))
    {
      if (swift_dynamicCast())
      {
        v56 = *(v72 + 800);
        v57 = *(v72 + 808);
      }

      else
      {
        v56 = 0;
        v57 = 0;
      }

      v54 = v56;
      v55 = v57;
    }

    else
    {
      outlined destroy of Any?((v72 + 272));
      v54 = 0;
      v55 = 0;
    }

    *(v72 + 1240) = v55;
    v49 = *(v72 + 1192);
    v50 = *(v72 + 1176);
    v48 = *(v72 + 1168);
    v46 = *(v72 + 1152);
    v43 = *(v72 + 1184);
    v42 = *(v72 + 1160);
    *(v72 + 640) = v54;
    *(v72 + 648) = v55;
    static Calendar.current.getter();
    v45 = *(v42 + 104);
    v45(v48, *MEMORY[0x277CC9980], v46);
    hour = Calendar.component(_:from:)();
    v47 = *(v42 + 8);
    v47(v48, v46);
    v51 = *(v43 + 8);
    v51(v49, v50);
    *(v72 + 1000) = hour;
    static Calendar.current.getter();
    v45(v48, *MEMORY[0x277CC99B8], v46);
    dow = Calendar.component(_:from:)();
    v47(v48, v46);
    v51(v49, v50);
    *(v72 + 1008) = dow;
    v53 = *kMediaML_rssi.unsafeMutableAddressor();

    *(v72 + 656) = v53;
    MEMORY[0x259C87380]();
    outlined destroy of String(v72 + 656);
    if (*(v72 + 328))
    {
      if (swift_dynamicCast())
      {
        v40 = *(v72 + 1096);
        v41 = 0;
      }

      else
      {
        v40 = 0;
        v41 = 1;
      }

      v38 = v40;
      v39 = v41;
    }

    else
    {
      outlined destroy of Any?((v72 + 304));
      v38 = 0;
      v39 = 1;
    }

    *(v72 + 848) = v38;
    *(v72 + 856) = v39 & 1;
    v37 = *kMediaML_rsrp.unsafeMutableAddressor();

    *(v72 + 672) = v37;
    MEMORY[0x259C87380]();
    outlined destroy of String(v72 + 672);
    if (*(v72 + 360))
    {
      if (swift_dynamicCast())
      {
        v35 = *(v72 + 1088);
        v36 = 0;
      }

      else
      {
        v35 = 0;
        v36 = 1;
      }

      v33 = v35;
      v34 = v36;
    }

    else
    {
      outlined destroy of Any?((v72 + 336));
      v33 = 0;
      v34 = 1;
    }

    *(v72 + 864) = v33;
    *(v72 + 872) = v34 & 1;
    v32 = *kMediaML_rsrq.unsafeMutableAddressor();

    *(v72 + 688) = v32;
    MEMORY[0x259C87380]();
    outlined destroy of String(v72 + 688);
    if (*(v72 + 392))
    {
      if (swift_dynamicCast())
      {
        v30 = *(v72 + 1080);
        v31 = 0;
      }

      else
      {
        v30 = 0;
        v31 = 1;
      }

      v28 = v30;
      v29 = v31;
    }

    else
    {
      outlined destroy of Any?((v72 + 368));
      v28 = 0;
      v29 = 1;
    }

    *(v72 + 880) = v28;
    *(v72 + 888) = v29 & 1;
    v27 = *kMediaML_rscp.unsafeMutableAddressor();

    *(v72 + 704) = v27;
    MEMORY[0x259C87380]();
    outlined destroy of String(v72 + 704);
    if (*(v72 + 424))
    {
      if (swift_dynamicCast())
      {
        v25 = *(v72 + 1072);
        v26 = 0;
      }

      else
      {
        v25 = 0;
        v26 = 1;
      }

      v23 = v25;
      v24 = v26;
    }

    else
    {
      outlined destroy of Any?((v72 + 400));
      v23 = 0;
      v24 = 1;
    }

    *(v72 + 896) = v23;
    *(v72 + 904) = v24 & 1;
    v22 = *kMediaML_snr.unsafeMutableAddressor();

    *(v72 + 720) = v22;
    MEMORY[0x259C87380]();
    outlined destroy of String(v72 + 720);
    if (*(v72 + 456))
    {
      if (swift_dynamicCast())
      {
        v20 = *(v72 + 1064);
        v21 = 0;
      }

      else
      {
        v20 = 0.0;
        v21 = 1;
      }

      v18 = v20;
      v19 = v21;
    }

    else
    {
      outlined destroy of Any?((v72 + 432));
      v18 = 0.0;
      v19 = 1;
    }

    *(v72 + 912) = v18;
    *(v72 + 920) = v19 & 1;
    v17 = *kMediaML_bars.unsafeMutableAddressor();

    *(v72 + 736) = v17;
    MEMORY[0x259C87380]();
    outlined destroy of String(v72 + 736);
    if (*(v72 + 488))
    {
      if (swift_dynamicCast())
      {
        v15 = *(v72 + 1056);
        v16 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 1;
      }

      v13 = v15;
      v14 = v16;
    }

    else
    {
      outlined destroy of Any?((v72 + 464));
      v13 = 0;
      v14 = 1;
    }

    *(v72 + 928) = v13;
    *(v72 + 936) = v14 & 1;

    *(v72 + 752) = v65;
    *(v72 + 760) = v66;
    if (*(v72 + 760))
    {
      v75 = *(v72 + 752);
    }

    else
    {
      v75 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v72 + 760))
      {
        outlined destroy of String?(v72 + 752);
      }
    }

    *(v72 + 768) = v54;
    *(v72 + 776) = v55;
    if (*(v72 + 776))
    {
      v76 = *(v72 + 768);
    }

    else
    {
      v76 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v72 + 776))
      {
        outlined destroy of String?(v72 + 768);
      }
    }

    *(v72 + 784) = v60;
    *(v72 + 792) = v61;
    if (*(v72 + 792))
    {
      v77 = *(v72 + 784);
    }

    else
    {
      v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v72 + 792))
      {
        outlined destroy of String?(v72 + 784);
      }
    }

    rssi = (v39 & 1) != 0 ? 0 : v38;
    rsrp = (v34 & 1) != 0 ? 0 : v33;
    rscp = (v24 & 1) != 0 ? 0 : v23;
    rsrq = (v29 & 1) != 0 ? 0 : v28;
    v8 = (v19 & 1) != 0 ? 0.0 : v18;
    bars = (v14 & 1) != 0 ? 0 : v13;
    v5 = *(v72 + 1112);
    CellDataPointForWriting.init(sessionID:timestamp:appName:carrier:hour:dow:rssi:rsrp:rscp:rsrq:snr:bars:throughputTrue:)((v72 + 16), v75, timestamp, v76, v77, hour, dow, rssi, rsrp, rscp, rsrq, v8, bars, throughputTrue);
    swift_beginAccess();
    v6 = *(v5 + 112);
    *(v72 + 1248) = v6;

    swift_endAccess();
    if (v6)
    {
      v4 = swift_task_alloc();
      *(v72 + 1256) = v4;
      *v4 = *(v72 + 944);
      v4[1] = MediaML.writeCellData(data:);

      return DataWriter.writeRawDataForCell(data:)((v72 + 16));
    }

    else
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  else
  {
    outlined destroy of DataWriter?((v72 + 968));

    v1 = *(*(v72 + 944) + 8);

    return v1();
  }
}

{
  v7 = *v1;
  v6 = *v1 + 16;
  *(v7 + 944) = *v1;
  *(v7 + 1264) = v0;

  if (v0)
  {
    v2 = *(v6 + 1096);
    v3 = MediaML.writeCellData(data:);
  }

  else
  {
    v5 = *(v6 + 1096);

    v2 = v5;
    v3 = MediaML.writeCellData(data:);
  }

  return MEMORY[0x2822009F8](v3, v2);
}

{
  v1 = v0[143];
  v18 = v0[141];
  v19 = v0[140];
  v0[118] = v0;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v18 + 16))(v1, v2, v19);
  v21 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v21, v20))
  {
    v3 = *(v17 + 1264);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(0, v12, v12);
    v15 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v17 + 1024) = buf;
    *(v17 + 1032) = v14;
    *(v17 + 1040) = v15;
    serialize(_:at:)(0, (v17 + 1024));
    serialize(_:at:)(0, (v17 + 1024));
    *(v17 + 1048) = v22;
    v16 = swift_task_alloc();
    v16[2] = v17 + 1024;
    v16[3] = v17 + 1032;
    v16[4] = v17 + 1040;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&dword_2586A4000, v21, v20, "Cell Data write to disk finished", buf, 2u);
    destroyStorage<A>(_:count:)(v14, 0, v12);
    destroyStorage<A>(_:count:)(v15, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v7 = *(v17 + 1144);
  v8 = *(v17 + 1120);
  v6 = *(v17 + 1128);
  MEMORY[0x277D82BD8](v21);
  (*(v6 + 8))(v7, v8);
  v10 = *(v17 + 1216);
  v11 = *(v17 + 1200);
  v9 = *(v17 + 1208);
  outlined destroy of CellDataPointForWriting((v17 + 16));

  (*(v9 + 8))(v10, v11);

  v5 = *(*(v17 + 944) + 8);

  return v5();
}

{
  v35 = v0;
  v20 = v0[158];
  v1 = v0[142];
  v18 = v0[141];
  v19 = v0[140];
  v0[118] = v0;

  MEMORY[0x259C87ED0](v20);
  v0[127] = v20;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v18 + 16))(v1, v2, v19);
  MEMORY[0x259C87ED0](v20);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = 64;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #10 in MediaML.writeCellData(data:);
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v26 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v27 = v3;

  *v27 = closure #1 in OSLogArguments.append(_:)partial apply;
  v27[1] = v24;

  v27[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v27[3] = v25;

  v27[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v27[5] = v26;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v28, v29))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(1, v13, v13);
    v16 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v30 = buf;
    v31 = v15;
    v32 = v16;
    serialize(_:at:)(2, &v30);
    serialize(_:at:)(1, &v30);
    v33 = closure #1 in OSLogArguments.append(_:)partial apply;
    v34 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = closure #1 in OSLogArguments.append(_:)partial apply;
    v34 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = closure #1 in OSLogArguments.append(_:)partial apply;
    v34 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_2586A4000, v28, v29, "Failed to write cell data with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v15, 1, v13);
    destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = v17[158];
  v7 = v17[142];
  v8 = v17[140];
  v6 = v17[141];
  MEMORY[0x277D82BD8](v28);
  (*(v6 + 8))(v7, v8);
  MEMORY[0x259C87EC0](v9);
  MEMORY[0x259C87EC0](v9);
  v11 = v17[152];
  v12 = v17[150];
  v10 = v17[151];
  outlined destroy of CellDataPointForWriting(v17 + 2);

  (*(v10 + 8))(v11, v12);

  v4 = *(v17[118] + 8);

  return v4();
}

uint64_t MediaML.writeData(data:)(uint64_t a1)
{
  v2[22] = v1;
  v2[21] = a1;
  v2[14] = v2;
  v2[15] = 0;
  v2[16] = 0;
  v2[17] = 0;
  v2[18] = 0;
  v3 = type metadata accessor for Logger();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[15] = a1;
  v2[16] = v5;

  return (MEMORY[0x2822009F8])(MediaML.writeData(data:));
}

uint64_t MediaML.writeData(data:)()
{
  v0[7]._countAndFlagsBits = v0;
  v9 = *kMediaML_interfaceType.unsafeMutableAddressor();

  v0[5] = v9;
  MEMORY[0x259C87380]();
  outlined destroy of String(&v0[5]);
  if (v0[2]._object)
  {
    if (swift_dynamicCast())
    {
      v6 = v8[20];
      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    v4 = v6;
    v5 = v7;
  }

  else
  {
    outlined destroy of Any?(v8 + 2);
    v4 = 0;
    v5 = 1;
  }

  v8[26] = v4;
  if (v5)
  {

    v3 = *(v8[14] + 8);

    return v3();
  }

  else
  {
    v8[17] = v4;
    v1 = swift_task_alloc();
    v8[27] = v1;
    *v1 = v8[14];
    v1[1] = MediaML.writeData(data:);

    return MediaML.ensureDataWriter()();
  }
}

{
  v2 = *(*v0 + 176);
  *(*v0 + 112) = *v0;

  return MEMORY[0x2822009F8](MediaML.writeData(data:), v2);
}

{
  v48 = v0;
  v29 = v0[26];
  v1 = v0[25];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[21];
  v0[14] = v0;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v25 + 16))(v1, v2, v26);

  v28 = swift_allocObject();
  *(v28 + 16) = v27;

  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in MediaML.writeData(data:);
  *(v30 + 24) = v28;

  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_0;
  *(v31 + 24) = v30;
  v36 = swift_allocObject();
  *(v36 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_1;
  *(v36 + 24) = v31;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #2 in MediaML.writeData(data:);
  *(v33 + 24) = v32;
  v39 = swift_allocObject();
  *(v39 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v39 + 24) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v40 = v3;

  *v40 = closure #1 in OSLogArguments.append(_:)partial apply;
  v40[1] = v34;

  v40[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v40[3] = v35;

  v40[4] = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
  v40[5] = v36;

  v40[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v40[7] = v37;

  v40[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v40[9] = v38;

  v40[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v40[11] = v39;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v41, v42))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = createStorage<A>(capacity:type:)(0, v20, v20);
    v23 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v43 = buf;
    v44 = v22;
    v45 = v23;
    serialize(_:at:)(2, &v43);
    serialize(_:at:)(2, &v43);
    v46 = closure #1 in OSLogArguments.append(_:)partial apply;
    v47 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    v46 = closure #1 in OSLogArguments.append(_:)partial apply;
    v47 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    v46 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
    v47 = v36;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    v46 = closure #1 in OSLogArguments.append(_:)partial apply;
    v47 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    v46 = closure #1 in OSLogArguments.append(_:)partial apply;
    v47 = v38;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    v46 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v47 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    _os_log_impl(&dword_2586A4000, v41, v42, "Got data to write to SQL %s for interface=%ld", buf, 0x16u);
    destroyStorage<A>(_:count:)(v22, 0, v20);
    destroyStorage<A>(_:count:)(v23, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v17 = *(v24 + 200);
  v18 = *(v24 + 184);
  v16 = *(v24 + 192);
  MEMORY[0x277D82BD8](v41);
  (*(v16 + 8))(v17, v18);
  v19 = *kMediaML_throughputTrue.unsafeMutableAddressor();

  *(v24 + 96) = v19;
  MEMORY[0x259C87380]();
  outlined destroy of String(v24 + 96);
  if (*(v24 + 72))
  {
    if (swift_dynamicCast())
    {
      v14 = *(v24 + 152);
      v15 = 0;
    }

    else
    {
      v14 = 0.0;
      v15 = 1;
    }

    v12 = v14;
    v13 = v15;
  }

  else
  {
    outlined destroy of Any?((v24 + 48));
    v12 = 0.0;
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_22;
  }

  *(v24 + 144) = v12;
  if (v12 <= 0.0)
  {
    goto LABEL_22;
  }

  v11 = *(v24 + 208);
  if (v11 == *kMediaML_InterfaceType_WiFi.unsafeMutableAddressor())
  {
    v4 = swift_task_alloc();
    *(v24 + 224) = v4;
    *v4 = *(v24 + 112);
    v4[1] = MediaML.writeData(data:);
    v5 = *(v24 + 168);

    return MediaML.writeWifiData(data:)(v5);
  }

  v10 = *(v24 + 208);
  if (v10 != *kMediaML_InterfaceType_Cellular.unsafeMutableAddressor())
  {
LABEL_22:

    v9 = *(*(v24 + 112) + 8);

    return v9();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v24 + 232) = v7;
    *v7 = *(v24 + 112);
    v7[1] = MediaML.writeData(data:);
    v8 = *(v24 + 168);

    return MediaML.writeCellData(data:)(v8);
  }
}

{
  v3 = *v0;
  *(v3 + 112) = *v0;

  v1 = *(*(v3 + 112) + 8);

  return v1();
}

{
  v3 = *v0;
  *(v3 + 112) = *v0;

  v1 = *(*(v3 + 112) + 8);

  return v1();
}

uint64_t implicit closure #1 in MediaML.writeData(data:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t MediaML.validateWifiDataForPrediction(data:)(uint64_t a1)
{
  v220 = a1;
  v262 = 0;
  v261 = 0;
  v207 = 0;
  v208 = type metadata accessor for Logger();
  v209 = *(v208 - 8);
  v210 = v209;
  v215 = *(v209 + 64);
  v2 = MEMORY[0x28223BE20](v220, v208);
  v217 = (v215 + 15) & 0xFFFFFFFFFFFFFFF0;
  v211 = &v39 - v217;
  v3 = MEMORY[0x28223BE20](v2, &v39 - v217);
  v212 = &v39 - v217;
  v4 = MEMORY[0x28223BE20](v3, &v39 - v217);
  v213 = &v39 - v217;
  v5 = MEMORY[0x28223BE20](v4, &v39 - v217);
  v214 = &v39 - v217;
  v6 = MEMORY[0x28223BE20](v5, &v39 - v217);
  v216 = &v39 - v217;
  v7 = MEMORY[0x28223BE20](v6, &v39 - v217);
  v218 = &v39 - v217;
  v262 = v7;
  v261 = v1;
  v219 = *kMediaML_ssid.unsafeMutableAddressor();

  v259 = v219;
  v221 = &v259;
  MEMORY[0x259C87380](v260);
  outlined destroy of String(v221);
  if (v260[3])
  {
    if (swift_dynamicCast())
    {
      v205 = v222;
      v206 = v223;
    }

    else
    {
      v205 = 0;
      v206 = 0;
    }

    v203 = v205;
    v204 = v206;
  }

  else
  {
    outlined destroy of Any?(v260);
    v203 = 0;
    v204 = 0;
  }

  v202 = v204;
  if (v204)
  {
    v201 = v202;

    v199 = *kMediaML_appName.unsafeMutableAddressor();

    v254 = v199;
    v200 = &v254;
    MEMORY[0x259C87380](v255);
    outlined destroy of String(v200);
    if (v255[3])
    {
      if (swift_dynamicCast())
      {
        v197 = v224;
        v198 = v225;
      }

      else
      {
        v197 = 0;
        v198 = 0;
      }

      v195 = v197;
      v196 = v198;
    }

    else
    {
      outlined destroy of Any?(v255);
      v195 = 0;
      v196 = 0;
    }

    v194 = v196;
    if (v196)
    {
      v193 = v194;

      v191 = *kMediaML_rssi.unsafeMutableAddressor();

      v249 = v191;
      v192 = &v249;
      MEMORY[0x259C87380](v250);
      outlined destroy of String(v192);
      if (v250[3])
      {
        if (swift_dynamicCast())
        {
          v189 = v226;
          v190 = 0;
        }

        else
        {
          v189 = 0;
          v190 = 1;
        }

        v187 = v189;
        v188 = v190;
      }

      else
      {
        outlined destroy of Any?(v250);
        v187 = 0;
        v188 = 1;
      }

      if (v188)
      {
        v23 = v213;
        v24 = MediaML.logger.unsafeMutableAddressor();
        (*(v210 + 16))(v23, v24, v208);
        v100 = Logger.logObject.getter();
        v97 = v100;
        v99 = static os_log_type_t.error.getter();
        v98 = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v101 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v100, v99))
        {
          v25 = v207;
          v88 = static UnsafeMutablePointer.allocate(capacity:)();
          v84 = v88;
          v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v86 = 0;
          v89 = createStorage<A>(capacity:type:)(0, v85, v85);
          v87 = v89;
          v90 = createStorage<A>(capacity:type:)(v86, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v248 = v88;
          v247 = v89;
          v246 = v90;
          v91 = 0;
          v92 = &v248;
          serialize(_:at:)(0, &v248);
          serialize(_:at:)(v91, v92);
          v245[4] = v101;
          v93 = &v39;
          MEMORY[0x28223BE20](&v39, v26);
          v94 = &v39 - 6;
          *(&v39 - 4) = v27;
          *(&v39 - 3) = &v247;
          *(&v39 - 2) = &v246;
          v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v96 = v25;
          if (v25)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_2586A4000, v97, v98, "rssi in data dictionary is not of expected type Int", v84, 2u);
            v82 = 0;
            destroyStorage<A>(_:count:)(v87, 0, v85);
            destroyStorage<A>(_:count:)(v90, v82, MEMORY[0x277D84F70] + 8);
            MEMORY[0x259C87730](v84, MEMORY[0x277D84B78]);

            v83 = v96;
          }
        }

        else
        {

          v83 = v207;
        }

        v81 = v83;

        (*(v210 + 8))(v213, v208);
        v165 = 0;
        v166 = v81;
      }

      else
      {
        v185 = *kMediaML_noise.unsafeMutableAddressor();

        v244 = v185;
        v186 = &v244;
        MEMORY[0x259C87380](v245);
        outlined destroy of String(v186);
        if (v245[3])
        {
          if (swift_dynamicCast())
          {
            v183 = v227;
            v184 = 0;
          }

          else
          {
            v183 = 0;
            v184 = 1;
          }

          v181 = v183;
          v182 = v184;
        }

        else
        {
          outlined destroy of Any?(v245);
          v181 = 0;
          v182 = 1;
        }

        if (v182)
        {
          v18 = v214;
          v19 = MediaML.logger.unsafeMutableAddressor();
          (*(v210 + 16))(v18, v19, v208);
          v121 = Logger.logObject.getter();
          v118 = v121;
          v120 = static os_log_type_t.error.getter();
          v119 = v120;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v122 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v121, v120))
          {
            v20 = v207;
            v109 = static UnsafeMutablePointer.allocate(capacity:)();
            v105 = v109;
            v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v107 = 0;
            v110 = createStorage<A>(capacity:type:)(0, v106, v106);
            v108 = v110;
            v111 = createStorage<A>(capacity:type:)(v107, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v243 = v109;
            v242 = v110;
            v241 = v111;
            v112 = 0;
            v113 = &v243;
            serialize(_:at:)(0, &v243);
            serialize(_:at:)(v112, v113);
            v240[4] = v122;
            v114 = &v39;
            MEMORY[0x28223BE20](&v39, v21);
            v115 = &v39 - 6;
            *(&v39 - 4) = v22;
            *(&v39 - 3) = &v242;
            *(&v39 - 2) = &v241;
            v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
            lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
            Sequence.forEach(_:)();
            v117 = v20;
            if (v20)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&dword_2586A4000, v118, v119, "noise in data dictionary is not of expected type Double", v105, 2u);
              v103 = 0;
              destroyStorage<A>(_:count:)(v108, 0, v106);
              destroyStorage<A>(_:count:)(v111, v103, MEMORY[0x277D84F70] + 8);
              MEMORY[0x259C87730](v105, MEMORY[0x277D84B78]);

              v104 = v117;
            }
          }

          else
          {

            v104 = v207;
          }

          v102 = v104;

          (*(v210 + 8))(v214, v208);
          v165 = 0;
          v166 = v102;
        }

        else
        {
          v179 = *kMediaML_rxRate.unsafeMutableAddressor();

          v239 = v179;
          v180 = &v239;
          MEMORY[0x259C87380](v240);
          outlined destroy of String(v180);
          if (v240[3])
          {
            if (swift_dynamicCast())
            {
              v177 = v228;
              v178 = 0;
            }

            else
            {
              v177 = 0;
              v178 = 1;
            }

            v175 = v177;
            v176 = v178;
          }

          else
          {
            outlined destroy of Any?(v240);
            v175 = 0;
            v176 = 1;
          }

          v174 = v175;
          if (v176)
          {
            v13 = v216;
            v14 = MediaML.logger.unsafeMutableAddressor();
            (*(v210 + 16))(v13, v14, v208);
            v142 = Logger.logObject.getter();
            v139 = v142;
            v141 = static os_log_type_t.error.getter();
            v140 = v141;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
            v143 = _allocateUninitializedArray<A>(_:)();
            if (os_log_type_enabled(v142, v141))
            {
              v15 = v207;
              v130 = static UnsafeMutablePointer.allocate(capacity:)();
              v126 = v130;
              v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v128 = 0;
              v131 = createStorage<A>(capacity:type:)(0, v127, v127);
              v129 = v131;
              v132 = createStorage<A>(capacity:type:)(v128, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              v238 = v130;
              v237 = v131;
              v236 = v132;
              v133 = 0;
              v134 = &v238;
              serialize(_:at:)(0, &v238);
              serialize(_:at:)(v133, v134);
              v235[4] = v143;
              v135 = &v39;
              MEMORY[0x28223BE20](&v39, v16);
              v136 = &v39 - 6;
              *(&v39 - 4) = v17;
              *(&v39 - 3) = &v237;
              *(&v39 - 2) = &v236;
              v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
              lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
              Sequence.forEach(_:)();
              v138 = v15;
              if (v15)
              {
                __break(1u);
              }

              else
              {
                _os_log_impl(&dword_2586A4000, v139, v140, "rxRate in data dictionary is not of expected type Double", v126, 2u);
                v124 = 0;
                destroyStorage<A>(_:count:)(v129, 0, v127);
                destroyStorage<A>(_:count:)(v132, v124, MEMORY[0x277D84F70] + 8);
                MEMORY[0x259C87730](v126, MEMORY[0x277D84B78]);

                v125 = v138;
              }
            }

            else
            {

              v125 = v207;
            }

            v123 = v125;

            (*(v210 + 8))(v216, v208);
            v165 = 0;
            v166 = v123;
          }

          else
          {
            v172 = *kMediaML_txRate.unsafeMutableAddressor();

            v234 = v172;
            v173 = &v234;
            MEMORY[0x259C87380](v235);
            outlined destroy of String(v173);
            if (v235[3])
            {
              if (swift_dynamicCast())
              {
                v170 = v229;
                v171 = 0;
              }

              else
              {
                v170 = 0;
                v171 = 1;
              }

              v168 = v170;
              v169 = v171;
            }

            else
            {
              outlined destroy of Any?(v235);
              v168 = 0;
              v169 = 1;
            }

            v167 = v168;
            if (v169)
            {
              v8 = v218;
              v9 = MediaML.logger.unsafeMutableAddressor();
              (*(v210 + 16))(v8, v9, v208);
              v163 = Logger.logObject.getter();
              v160 = v163;
              v162 = static os_log_type_t.error.getter();
              v161 = v162;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
              v164 = _allocateUninitializedArray<A>(_:)();
              if (os_log_type_enabled(v163, v162))
              {
                v10 = v207;
                v151 = static UnsafeMutablePointer.allocate(capacity:)();
                v147 = v151;
                v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v149 = 0;
                v152 = createStorage<A>(capacity:type:)(0, v148, v148);
                v150 = v152;
                v153 = createStorage<A>(capacity:type:)(v149, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                v233 = v151;
                v232 = v152;
                v231 = v153;
                v154 = 0;
                v155 = &v233;
                serialize(_:at:)(0, &v233);
                serialize(_:at:)(v154, v155);
                v230 = v164;
                v156 = &v39;
                MEMORY[0x28223BE20](&v39, v11);
                v157 = &v39 - 6;
                *(&v39 - 4) = v12;
                *(&v39 - 3) = &v232;
                *(&v39 - 2) = &v231;
                v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
                lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
                Sequence.forEach(_:)();
                v159 = v10;
                if (v10)
                {
                  __break(1u);
                }

                else
                {
                  _os_log_impl(&dword_2586A4000, v160, v161, "txRate in data dictionary is not of expected type Double", v147, 2u);
                  v145 = 0;
                  destroyStorage<A>(_:count:)(v150, 0, v148);
                  destroyStorage<A>(_:count:)(v153, v145, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x259C87730](v147, MEMORY[0x277D84B78]);

                  v146 = v159;
                }
              }

              else
              {

                v146 = v207;
              }

              v144 = v146;

              (*(v210 + 8))(v218, v208);
              v165 = 0;
              v166 = v144;
            }

            else
            {
              v165 = 1;
              v166 = v207;
            }
          }
        }
      }
    }

    else
    {
      v28 = v212;
      v29 = MediaML.logger.unsafeMutableAddressor();
      (*(v210 + 16))(v28, v29, v208);
      v79 = Logger.logObject.getter();
      v76 = v79;
      v78 = static os_log_type_t.error.getter();
      v77 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v80 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v79, v78))
      {
        v30 = v207;
        v67 = static UnsafeMutablePointer.allocate(capacity:)();
        v63 = v67;
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v65 = 0;
        v68 = createStorage<A>(capacity:type:)(0, v64, v64);
        v66 = v68;
        v69 = createStorage<A>(capacity:type:)(v65, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v253 = v67;
        v252 = v68;
        v251 = v69;
        v70 = 0;
        v71 = &v253;
        serialize(_:at:)(0, &v253);
        serialize(_:at:)(v70, v71);
        v250[4] = v80;
        v72 = &v39;
        MEMORY[0x28223BE20](&v39, v31);
        v73 = &v39 - 6;
        *(&v39 - 4) = v32;
        *(&v39 - 3) = &v252;
        *(&v39 - 2) = &v251;
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v75 = v30;
        if (v30)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2586A4000, v76, v77, "appName in data dictionary is not of expected type String", v63, 2u);
          v61 = 0;
          destroyStorage<A>(_:count:)(v66, 0, v64);
          destroyStorage<A>(_:count:)(v69, v61, MEMORY[0x277D84F70] + 8);
          MEMORY[0x259C87730](v63, MEMORY[0x277D84B78]);

          v62 = v75;
        }
      }

      else
      {

        v62 = v207;
      }

      v60 = v62;

      (*(v210 + 8))(v212, v208);
      v165 = 0;
      v166 = v60;
    }
  }

  else
  {
    v33 = v211;
    v34 = MediaML.logger.unsafeMutableAddressor();
    (*(v210 + 16))(v33, v34, v208);
    v58 = Logger.logObject.getter();
    v55 = v58;
    v57 = static os_log_type_t.error.getter();
    v56 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v59 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v58, v57))
    {
      v35 = v207;
      v46 = static UnsafeMutablePointer.allocate(capacity:)();
      v42 = v46;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v44 = 0;
      v47 = createStorage<A>(capacity:type:)(0, v43, v43);
      v45 = v47;
      v48 = createStorage<A>(capacity:type:)(v44, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v258 = v46;
      v257 = v47;
      v256 = v48;
      v49 = 0;
      v50 = &v258;
      serialize(_:at:)(0, &v258);
      serialize(_:at:)(v49, v50);
      v255[5] = v59;
      v51 = &v39;
      MEMORY[0x28223BE20](&v39, v36);
      v52 = &v39 - 6;
      *(&v39 - 4) = v37;
      *(&v39 - 3) = &v257;
      *(&v39 - 2) = &v256;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v54 = v35;
      if (v35)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2586A4000, v55, v56, "ssid in data dictionary is not of expected type String", v42, 2u);
        v40 = 0;
        destroyStorage<A>(_:count:)(v45, 0, v43);
        destroyStorage<A>(_:count:)(v48, v40, MEMORY[0x277D84F70] + 8);
        MEMORY[0x259C87730](v42, MEMORY[0x277D84B78]);

        v41 = v54;
      }
    }

    else
    {

      v41 = v207;
    }

    v39 = v41;

    (*(v210 + 8))(v211, v208);
    v165 = 0;
    v166 = v39;
  }

  return v165;
}

void *MediaML.prepareWifiDataForPrediction(data:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v85 = a1;
  v56 = "Fatal error";
  v57 = "Unexpectedly found nil while unwrapping an Optional value";
  v58 = "MediaML/MediaML.swift";
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v114 = 0;
  v115 = 0;
  v109 = 0;
  v104 = 0;
  v99 = 0;
  v94 = 0.0;
  v89 = 0.0;
  v88 = 0;
  v87 = 0;
  v60 = 0;
  v75 = type metadata accessor for Calendar.Component();
  v67 = *(v75 - 8);
  v68 = v75 - 8;
  v59 = (v67[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v78 = v13 - v59;
  v80 = type metadata accessor for Calendar();
  v69 = *(v80 - 8);
  v70 = v80 - 8;
  v61 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60, v3);
  v79 = v13 - v61;
  v62 = type metadata accessor for Date();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v85, v4);
  v74 = v13 - v65;
  v125 = v13 - v65;
  v124 = v5;
  v123 = v66;
  Date.init()();
  static Calendar.current.getter();
  v6 = *MEMORY[0x277CC9980];
  v73 = v67[13];
  v72 = v67 + 13;
  v73(v78, v6, v75);
  v7 = Calendar.component(_:from:)();
  v8 = v79;
  v71 = v7;
  v77 = v67[1];
  v76 = v67 + 1;
  v77(v78, v75);
  v82 = *(v69 + 8);
  v81 = v69 + 8;
  v82(v8, v80);
  v122 = v71;
  static Calendar.current.getter();
  v73(v78, *MEMORY[0x277CC99B8], v75);
  v83 = Calendar.component(_:from:)();
  v77(v78, v75);
  v82(v79, v80);
  v121 = v83;
  v84 = *kMediaML_ssid.unsafeMutableAddressor();

  v86 = &v118;
  v118 = v84;
  MEMORY[0x259C87380](v119);
  outlined destroy of String(v86);
  if (!v119[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v48 = v120;
  outlined init with take of Any(v119, v120);
  v53 = MEMORY[0x277D84F70] + 8;
  v52 = MEMORY[0x277D837D0];
  swift_dynamicCast();
  v49 = v116;
  v50 = v117;
  v114 = v116;
  v115 = v117;
  v51 = *kMediaML_appName.unsafeMutableAddressor();

  v54 = &v111;
  v111 = v51;
  MEMORY[0x259C87380](v112);
  outlined destroy of String(v54);
  if (!v112[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v42 = v113;
  outlined init with take of Any(v112, v113);
  v46 = MEMORY[0x277D84F70] + 8;
  v45 = MEMORY[0x277D837D0];
  swift_dynamicCast();
  v43 = v110;
  v109 = v110;
  v44 = *kMediaML_rssi.unsafeMutableAddressor();

  v47 = &v106;
  v106 = v44;
  MEMORY[0x259C87380](v107);
  outlined destroy of String(v47);
  if (!v107[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v37 = v108;
  outlined init with take of Any(v107, v108);
  v40 = MEMORY[0x277D84F70] + 8;
  swift_dynamicCast();
  v38 = v105;
  v104 = v105;
  v39 = *kMediaML_noise.unsafeMutableAddressor();

  v41 = &v101;
  v101 = v39;
  MEMORY[0x259C87380](v102);
  outlined destroy of String(v41);
  if (!v102[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v32 = v103;
  outlined init with take of Any(v102, v103);
  v35 = MEMORY[0x277D84F70] + 8;
  swift_dynamicCast();
  v33 = v100;
  v99 = v100;
  v34 = *kMediaML_rxRate.unsafeMutableAddressor();

  v36 = &v96;
  v96 = v34;
  MEMORY[0x259C87380](v97);
  outlined destroy of String(v36);
  if (!v97[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v27 = v98;
  outlined init with take of Any(v97, v98);
  v30 = MEMORY[0x277D84F70] + 8;
  swift_dynamicCast();
  v28 = v95;
  v94 = v95;
  v29 = *kMediaML_txRate.unsafeMutableAddressor();

  v31 = &v91;
  v91 = v29;
  MEMORY[0x259C87380](v92);
  outlined destroy of String(v31);
  if (!v92[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v25 = v93;
  outlined init with take of Any(v92, v93);
  swift_dynamicCast();
  v26 = v90;
  v89 = v90;
  if (v38 >= *rssiBucket_low_medium_boundary.unsafeMutableAddressor())
  {
    if (v38 >= *rssiBucket_low_medium_boundary.unsafeMutableAddressor() && v38 < *rssiBucket_medium_high_boundary.unsafeMutableAddressor())
    {
      v20 = *rssiBucket_medium.unsafeMutableAddressor();

      v88 = v20;
      v21 = v20;
    }

    else
    {
      v19 = *rssiBucket_high.unsafeMutableAddressor();

      v88 = v19;
      v21 = v19;
    }

    v24 = v21;
  }

  else
  {
    v23 = *rssiBucket_low.unsafeMutableAddressor();

    v88 = v23;
    v24 = v23;
  }

  v15 = v24;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_", 1uLL, 1);
  v13[1] = v9._object;
  v14 = MEMORY[0x259C87450](v49, v50, v9._countAndFlagsBits);
  v16 = v10;

  v17._countAndFlagsBits = MEMORY[0x259C87450](v14, v16, v15._countAndFlagsBits, v15._object);
  v17._object = v11;

  v87 = v17;
  v18 = &v126;
  WiFiDataPointForPrediciton.init(appName:bucketedSSID:hour:dow:rssi:noise:txRate:rxRate:)(&v126, v43, v17, v71, v83, v38, v33, v26, v28);
  outlined destroy of String(&v88);

  (*(v63 + 8))(v74, v62);
  return memcpy(v55, v18, 0x50uLL);
}

uint64_t MediaML.validateCellDataForPrediction(data:)(uint64_t a1)
{
  v82 = a1;
  v100 = 0;
  v99 = 0;
  v73 = 0;
  v74 = type metadata accessor for Logger();
  v75 = *(v74 - 8);
  v76 = v75;
  v77 = *(v75 + 64);
  v2 = MEMORY[0x28223BE20](v82, v74);
  v79 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  v78 = &v15 - v79;
  v3 = MEMORY[0x28223BE20](v2, &v15 - v79);
  v80 = &v15 - v79;
  v100 = v3;
  v99 = v1;
  v81 = *kMediaML_carrier.unsafeMutableAddressor();

  v97 = v81;
  v83 = &v97;
  MEMORY[0x259C87380](v98);
  outlined destroy of String(v83);
  if (v98[3])
  {
    if (swift_dynamicCast())
    {
      v71 = v84;
      v72 = v85;
    }

    else
    {
      v71 = 0;
      v72 = 0;
    }

    v69 = v71;
    v70 = v72;
  }

  else
  {
    outlined destroy of Any?(v98);
    v69 = 0;
    v70 = 0;
  }

  v68 = v70;
  if (v70)
  {
    v67 = v68;

    v65 = *kMediaML_appName.unsafeMutableAddressor();

    v92 = v65;
    v66 = &v92;
    MEMORY[0x259C87380](v93);
    outlined destroy of String(v66);
    if (v93[3])
    {
      if (swift_dynamicCast())
      {
        v63 = v86;
        v64 = v87;
      }

      else
      {
        v63 = 0;
        v64 = 0;
      }

      v61 = v63;
      v62 = v64;
    }

    else
    {
      outlined destroy of Any?(v93);
      v61 = 0;
      v62 = 0;
    }

    v60 = v62;
    if (v62)
    {
      v59 = v60;

      v57 = 1;
      v58 = v73;
    }

    else
    {
      v4 = v80;
      v5 = MediaML.logger.unsafeMutableAddressor();
      (*(v76 + 16))(v4, v5, v74);
      v55 = Logger.logObject.getter();
      v52 = v55;
      v54 = static os_log_type_t.error.getter();
      v53 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v56 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v55, v54))
      {
        v6 = v73;
        v43 = static UnsafeMutablePointer.allocate(capacity:)();
        v39 = v43;
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v41 = 0;
        v44 = createStorage<A>(capacity:type:)(0, v40, v40);
        v42 = v44;
        v45 = createStorage<A>(capacity:type:)(v41, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v91 = v43;
        v90 = v44;
        v89 = v45;
        v46 = 0;
        v47 = &v91;
        serialize(_:at:)(0, &v91);
        serialize(_:at:)(v46, v47);
        v88 = v56;
        v48 = &v15;
        MEMORY[0x28223BE20](&v15, v7);
        v49 = &v15 - 6;
        *(&v15 - 4) = v8;
        *(&v15 - 3) = &v90;
        *(&v15 - 2) = &v89;
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v51 = v6;
        if (v6)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2586A4000, v52, v53, "appName in data dictionary is not of expected type String", v39, 2u);
          v37 = 0;
          destroyStorage<A>(_:count:)(v42, 0, v40);
          destroyStorage<A>(_:count:)(v45, v37, MEMORY[0x277D84F70] + 8);
          MEMORY[0x259C87730](v39, MEMORY[0x277D84B78]);

          v38 = v51;
        }
      }

      else
      {

        v38 = v73;
      }

      v36 = v38;

      (*(v76 + 8))(v80, v74);
      v57 = 0;
      v58 = v36;
    }
  }

  else
  {
    v9 = v78;
    v10 = MediaML.logger.unsafeMutableAddressor();
    (*(v76 + 16))(v9, v10, v74);
    v34 = Logger.logObject.getter();
    v31 = v34;
    v33 = static os_log_type_t.error.getter();
    v32 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v35 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v34, v33))
    {
      v11 = v73;
      v22 = static UnsafeMutablePointer.allocate(capacity:)();
      v18 = v22;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v20 = 0;
      v23 = createStorage<A>(capacity:type:)(0, v19, v19);
      v21 = v23;
      v24 = createStorage<A>(capacity:type:)(v20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v96 = v22;
      v95 = v23;
      v94 = v24;
      v25 = 0;
      v26 = &v96;
      serialize(_:at:)(0, &v96);
      serialize(_:at:)(v25, v26);
      v93[5] = v35;
      v27 = &v15;
      MEMORY[0x28223BE20](&v15, v12);
      v28 = &v15 - 6;
      *(&v15 - 4) = v13;
      *(&v15 - 3) = &v95;
      *(&v15 - 2) = &v94;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v30 = v11;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2586A4000, v31, v32, "carrier in data dictionary is not of expected type String", v18, 2u);
        v16 = 0;
        destroyStorage<A>(_:count:)(v21, 0, v19);
        destroyStorage<A>(_:count:)(v24, v16, MEMORY[0x277D84F70] + 8);
        MEMORY[0x259C87730](v18, MEMORY[0x277D84B78]);

        v17 = v30;
      }
    }

    else
    {

      v17 = v73;
    }

    v15 = v17;

    (*(v76 + 8))(v78, v74);
    v57 = 0;
    v58 = v15;
  }

  return v57;
}